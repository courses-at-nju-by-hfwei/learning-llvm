//
// Created by hengxin on 7/10/21.
//

#include <memory>
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

static std::unique_ptr<ExpressionAST> parsePrimary() {
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