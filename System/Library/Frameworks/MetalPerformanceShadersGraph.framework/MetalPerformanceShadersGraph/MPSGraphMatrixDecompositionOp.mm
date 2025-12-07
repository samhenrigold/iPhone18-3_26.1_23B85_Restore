@interface MPSGraphMatrixDecompositionOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphMatrixDecompositionOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v43 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphMatrixDecompositionOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMatrixDecompositionOps.mm");
  v11 = nameCopy;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v41);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x35u, 0);
  if (!v11)
  {
    operator new();
  }

  v14 = v11;
  uTF8String = [v11 UTF8String];
  v16 = strlen(uTF8String);
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v16;
  if (v16)
  {
    memmove(&__dst, uTF8String, v16);
  }

  __dst.__r_.__value_.__s.__data_[v19] = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v37, v17, v18);
  v20 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v37;
  }

  v21 = 1;
  HIBYTE(v42) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v20;
    v21 = 3;
  }

  LOBYTE(v42) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v41);
  v23 = mlir::NameLoc::get(v22, v13);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_15:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = *values;
  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v23;
  Context = mlir::Attribute::getContext(&v34);
  v26 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatrixDecompositionLUOp,void>::id, Context);
  if ((v27 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.matrix_decomposition_lu";
    v38 = 27;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v23, v26);
  mlir::mps::MatrixDecompositionLUOp::build(builder, v41, *v24);
  v28 = mlir::OpBuilder::create(builder, v41);
  v29 = *(*(v28 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v29 == &mlir::detail::TypeIDResolver<mlir::mps::MatrixDecompositionLUOp,void>::id)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

@end