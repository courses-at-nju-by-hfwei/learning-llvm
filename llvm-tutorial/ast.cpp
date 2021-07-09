//
// Created by hengxin on 7/9/21.
//

#include <string>
#include <utility>
#include <memory>
#include <vector>

// ExpressionAST: Base class for all expression nodes
class ExpressionAST {
    public:
    virtual ~ExpressionAST() {}
};

// NumberExpressionAST: Expression class for numeric literals like "1.0"
class NumberExpressionAST : public ExpressionAST {
    double  val;

    public:
    explicit NumberExpressionAST(double val) : val(val) {}
};

// VariableExpressionAST: Expression class for referencing a variable, like "a"
class VariableExpressionAST : public ExpressionAST {
    std::string name;

    public:
    explicit VariableExpressionAST(std::string name) : name(std::move(name)) {}
};

// BinaryExpressionAST: Expression class for binary operator
class BinaryExpressionAST : public ExpressionAST {
    char op;
    std::unique_ptr<ExpressionAST> LHS, RHS;

    public:
    BinaryExpressionAST(char op, std::unique_ptr<ExpressionAST> LHS,
                                 std::unique_ptr<ExpressionAST> RHS) :
                                 op(op), LHS(std::move(LHS)), RHS(std::move(RHS)) {}
};

// CallExpressionAST: Expression class for function calls
class CallExpressionAST : public ExpressionAST {
    std::string callee;
    std::vector<std::unique_ptr<ExpressionAST>> args;

    public:
    CallExpressionAST(std::string callee, std::vector<std::unique_ptr<ExpressionAST>> args)
        : callee(std::move(callee)), args(std::move(args)) {}
};

// PrototypeAST: this class represents the prototype for a function,
// which captures its name and its argument names.
class PrototypeAST {
    std::string name;
    std::vector<std::string> args;

    public:
    PrototypeAST(std::string  name, std::vector<std::string> args)
        : name(std::move(name)), args(std::move(args)) {}
};

// FunctionAST: This class represents a function definition itself
class FunctionAST {
    std::unique_ptr<PrototypeAST> prototype;
    std::unique_ptr<ExpressionAST> body;

    public:
    FunctionAST(std::unique_ptr<PrototypeAST> prototype,
                std::unique_ptr<ExpressionAST> body)
                : prototype(std::move(prototype)), body(std::move(body)) {}
};