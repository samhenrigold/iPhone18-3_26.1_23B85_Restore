@interface MPSGraphMatrixInverseOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphMatrixInverseOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v44 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphMatrixInverseOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphInverseOps.mm");
  v11 = nameCopy;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v42);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x1Du, 0);
  if (v11)
  {
    v16 = v11;
    uTF8String = [v11 UTF8String];
    v18 = strlen(uTF8String);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v18;
    if (v18)
    {
      memmove(__dst, uTF8String, v18);
    }

    v20 = __dst + v19;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 18;
    LOWORD(__dst[0].__r_.__value_.__r.__words[2]) = 25971;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.matrix_inverse";
    v20 = &__dst[0].__r_.__value_.__s.__data_[18];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v38, v13, v14);
  v21 = v38.__r_.__value_.__r.__words[0];
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v38;
  }

  v22 = 1;
  HIBYTE(v43) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v21;
    v22 = 3;
  }

  LOBYTE(v43) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v42);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst[0].__r_.__value_.__l.__data_);
LABEL_16:

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = *values;
  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v35 = v24;
  Context = mlir::Attribute::getContext(&v35);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatrixInverseOp,void>::id, Context);
  if ((v28 & 1) == 0)
  {
    v40 = 1283;
    v38.__r_.__value_.__r.__words[2] = "mps.matrix_inverse";
    v39 = 18;
    v37 = 259;
    llvm::operator+(&v38, &v36, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v42, v24, v27);
  mlir::mps::MatrixInverseOp::build(builder, v42, *v25);
  v29 = mlir::OpBuilder::create(builder, v42);
  v30 = *(*(v29 + 6) + 16);
  mlir::OperationState::~OperationState(v42);
  if (v30 == &mlir::detail::TypeIDResolver<mlir::mps::MatrixInverseOp,void>::id)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

@end