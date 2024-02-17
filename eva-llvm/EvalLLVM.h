/**
 * Eva to LLVM IR compiler.
 */

#ifndef EvaLLVM_h
#define EvaLLVM_h

#include <string>
#include <memory>

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"


class EvaLLVM {
	public:
	EvaLLVM() {

	}

	void exec(const std::string& program) {
		// Parse the program

		// Compile to LLVM IR

		// Save module IR to file

	}

	private:
	std::unique_ptr<llvm::LLVMContext> ctx;
	std::unique_ptr<llvm::Module> module;
	std::unique_ptr<llvm::IRBuilder> builder;
};

#endif