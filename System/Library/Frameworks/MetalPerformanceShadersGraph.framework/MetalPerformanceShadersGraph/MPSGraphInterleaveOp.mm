@interface MPSGraphInterleaveOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphInterleaveOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v44 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphInterleaveOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm");
  v12 = nameCopy;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v42);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x627u, 0);
  if (v12)
  {
    v17 = v12;
    uTF8String = [v12 UTF8String];
    v19 = strlen(uTF8String);
    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v20 = v19;
    if (v19 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v19;
    if (v19)
    {
      memmove(&__dst, uTF8String, v19);
    }

    v21 = &__dst + v20;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 15;
    qmemcpy(&__dst, "mpsx.interleave", 15);
    v21 = &__dst.__r_.__value_.__s.__data_[15];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v38, v14, v15);
  v22 = v38.__r_.__value_.__r.__words[0];
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v38;
  }

  v23 = 1;
  HIBYTE(v43) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v22;
    v23 = 3;
  }

  LOBYTE(v43) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v42);
  v25 = mlir::NameLoc::get(v24, v16);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
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

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = *values;
  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v35 = v25;
  Context = mlir::Attribute::getContext(&v35);
  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::InterleaveOp,void>::id, Context);
  if ((v29 & 1) == 0)
  {
    v40 = 1283;
    v38.__r_.__value_.__r.__words[2] = "mpsx.interleave";
    v39 = 15;
    v37 = 259;
    llvm::operator+(&v38, &v36, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v42, v25, v28);
  mlir::mpsx::InterleaveOp::build(builder, v42, *v26, self->_interleaveFactor);
  v30 = mlir::OpBuilder::create(builder, v42);
  v31 = *(*(v30 + 6) + 16);
  mlir::OperationState::~OperationState(v42);
  if (v31 != &mlir::detail::TypeIDResolver<mlir::mpsx::InterleaveOp,void>::id)
  {
    v30 = 0;
  }

  return v30;
}

@end