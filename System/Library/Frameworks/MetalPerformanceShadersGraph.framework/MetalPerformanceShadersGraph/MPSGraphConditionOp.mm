@interface MPSGraphConditionOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphConditionOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v46 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphConditionOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphControlFlowOps.mm");
  v11 = nameCopy;
  v44 = 260;
  v43[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v43);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x95u, 0);
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
    *(&__dst.__r_.__value_.__s + 23) = 13;
    qmemcpy(&__dst, "scf.condition", 13);
    v20 = &__dst.__r_.__value_.__s.__data_[13];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v40, v13, v14);
  v21 = v40.__r_.__value_.__r.__words[0];
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v40;
  }

  v22 = 1;
  HIBYTE(v44) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v43[0] = v21;
    v22 = 3;
  }

  LOBYTE(v44) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v43);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
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

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v25 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value &>(builder, v24, *values);
  v26 = *values;
  v27 = *(values + 1);
  v37 = v24;
  Context = mlir::Attribute::getContext(&v37);
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id, Context);
  if ((v30 & 1) == 0)
  {
    v42 = 1283;
    v40.__r_.__value_.__r.__words[2] = "scf.condition";
    v41 = 13;
    v39 = 259;
    llvm::operator+(&v40, &v38, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v43, v24, v29);
  mlir::ValueRange::ValueRange(&__dst, v26 + 8, ((v27 - v26) >> 3) - 1);
  mlir::pdl_interp::ReplaceOp::build(builder, v43, (v25 - 16), __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  v31 = mlir::OpBuilder::create(builder, v43);
  v32 = *(*(v31 + 6) + 16);
  mlir::OperationState::~OperationState(v43);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

@end