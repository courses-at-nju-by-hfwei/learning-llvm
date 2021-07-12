//
// Created by hengxin on 7/10/21.
//

#include <memory>
#include <map>
#include "lexer.cpp"
#include "ast.cpp"

static int currentToken;
static int getNextToken() {
    return currentToken = getToken();
}

std::unique_ptr<ExpressionAST> logError(const char *str) {
    fprintf(stderr, "LogError: %s\n", str);
    return nullptr;
}

std::unique_ptr<PrototypeAST> logErrorPrototype(const char *str) {
    logError(str);
    return nullptr;
}

/**
 * numberexpression ::= number
 * @return
 */
static std::unique_ptr<ExpressionAST> parseNumberExpression() {
    auto result = std::make_unique<NumberExpressionAST>(NumVal);
    getNextToken();
    return std::move(result);
}

static std::unique_ptr<ExpressionAST> ParseExpression();

/**
 * parenthesisexpression ::= '(' expression ')'
 * @return
 */
static std::unique_ptr<ExpressionAST> parseParenthesisExpression() {
    getNextToken(); // consume '('

    auto expression = ParseExpression();
    if (!expression) {
        return nullptr;
    }

    if (currentToken != ')') {
        return logError("Expected ')'");
    }

    getNextToken(); // consume ')'

    return expression;
}

/**
 * identifierexpression ::= identifier | identifier '(' expression ')'
 * @return
 */
static std::unique_ptr<ExpressionAST> parseIdentifierExpression() {
    std::string id = IdentifierStr;

    getNextToken(); // consume identifier

    if (currentToken != '(') { // simple variable ref.
        return std::make_unique<VariableExpressionAST>(id);
    }

    getNextToken(); // consume '('

    std::vector<std::unique_ptr<ExpressionAST>> args;
    if (currentToken != ')') {
        while (true) {
            if (auto arg = ParseExpression()) {
                args.push_back(std::move(arg));
            } else {
                return nullptr;
            }

            if (currentToken == ')') {
                break;
            }

            if (currentToken != ',') {
                return logError("Expected ')' or ',' in argument list.");
            }
            getNextToken();
        }
    }

    getNextToken(); // consume ')'

    return std::make_unique<CallExpressionAST>(id, std::move(args));
}

/**
 * primary ::= identifierexpression | numberexpression | parenthesisexpression
 * @return
 */
static std::unique_ptr<ExpressionAST> ParsePrimary() {
    switch (currentToken) {
        case tok_identifier:
            return parseIdentifierExpression();
        case tok_number:
            return parseNumberExpression();
        case '(':
            return parseParenthesisExpression();
        default:
            return logError("Unknown token when expecting an expression.");
    }
}

static std::map<char, int> BinaryOpPrecedence;

static int GetTokenPrecedence() {
    switch (currentToken) {
        case '<':
        case '>':
            return 10;
        case '+':
        case '-':
            return 20;
        case '*':
        case '/':
            return 40;
        default:
            return -1;
    }
}

static std::unique_ptr<ExpressionAST> ParseBinaryOpRHS(
        int precedence, std::unique_ptr<ExpressionAST> LHS) {
    while (true) {
        int tokenPrecedence = GetTokenPrecedence();
        if (tokenPrecedence < precedence) {
            return LHS;
        }

        int binOp = currentToken;
        getNextToken(); // eat binOp

        // parse the primary expression after binOp
        auto RHS = ParsePrimary();
        if (!RHS) {
            return nullptr;
        }

        int nextPrecedence = GetTokenPrecedence();
        if (precedence < nextPrecedence) {
            RHS = ParseBinaryOpRHS(tokenPrecedence + 1, std::move(RHS));
            if (!RHS) {
                return nullptr;
            }
        }

        // merge LHS/RHS: create an AST node
        LHS = std::make_unique<BinaryExpressionAST>(binOp,
                                                    std::move(LHS), std::move(RHS));
    }
}

static std::unique_ptr<ExpressionAST> ParseExpression() {
    auto LHS = ParsePrimary();
    if (!LHS) {
        return nullptr;
    }

    return ParseBinaryOpRHS(0, std::move(LHS));
}
