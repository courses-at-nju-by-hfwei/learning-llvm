//
// Created by hengxin on 7/8/21.
//

#include <string>
#include <iostream>

enum Token {
    tok_eof = -1,

    tok_def = -2,
    tok_extern = -3,

    tok_identifier = -4,
    tok_number = -5
};

static std::string IdentifierStr;
static double NumVal;

static int gettok() {
    static int lastChar = ' ';

    // skip whitespace
    while (isspace(lastChar)) {
        lastChar = getchar();
    }

    // recognize identifiers and specific keywords
    if (isalpha(lastChar)) {    // identifier: [a-zA-Z][a-zA-Z0-9]*
        IdentifierStr = lastChar;

        while (isalnum(lastChar = getchar())) {
            IdentifierStr += lastChar;
        }

        // keyword "def"
        if (IdentifierStr == "def") {
            return tok_def;
        }
        // keyword "extern"
        if (IdentifierStr == "extern") {
            return  tok_extern;
        }

        // identifier that is not a keyword
        return tok_identifier;
    }

    // Number: [0-9.]+
    if (isdigit(lastChar) || lastChar == '.') {
        std::string numStr = "";
        do {
            numStr += lastChar;
            lastChar = getchar();
        } while (isdigit(lastChar) || lastChar == '.');

        NumVal = strtod(numStr.c_str(), 0);

        return tok_number;
    }

    // Comment
    if (lastChar == '#') {
        // skip to the end of the line
        do {
            lastChar = getchar();
        } while (lastChar != EOF && lastChar != '\n' && lastChar != '\r');

        // return the next token
        if (lastChar != EOF) {
            return gettok();
        }
    }

    if (lastChar == EOF) {
        return tok_eof;
    }

    int thisChar = lastChar;
    lastChar = getchar();
    return thisChar;
}

int main() {
    while (true) {
        int token = gettok();
        std::cout << "The token is: " << token << std::endl;
    }
}