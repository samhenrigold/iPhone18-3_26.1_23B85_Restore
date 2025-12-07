@interface MPSGraphYieldOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphYieldOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v43 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphYieldOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphControlFlowOps.mm");
  v11 = nameCopy;
  v41 = 260;
  v40[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v40);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0xB3u, 0);
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

    *(&__dst.__r_.__value_.__s + 23) = v18;
    if (v18)
    {
      memmove(&__dst, uTF8String, v18);
    }

    v20 = &__dst + v19;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 9;
    __dst.__r_.__value_.__s.__data_[8] = 100;
    __dst.__r_.__value_.__r.__words[0] = *"scf.yield";
    v20 = &__dst.__r_.__value_.__s.__data_[9];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v37, v13, v14);
  v21 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v37;
  }

  v22 = 1;
  HIBYTE(v41) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v40[0] = v21;
    v22 = 3;
  }

  LOBYTE(v41) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v40);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v34 = v24;
  Context = mlir::Attribute::getContext(&v34);
  v26 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id, Context);
  if ((v27 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "scf.yield";
    v38 = 9;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v40, v24, v26);
  mlir::ValueRange::ValueRange(&__dst, *values, (*(values + 1) - *values) >> 3);
  mlir::func::ReturnOp::build(builder, v40, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  v28 = mlir::OpBuilder::create(builder, v40);
  v29 = *(*(v28 + 6) + 16);
  mlir::OperationState::~OperationState(v40);
  if (v29 == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
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