@interface MPSGraphReductionAndOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphReductionAndOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v48 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(v37, "[MPSGraphReductionAndOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphReductionOps.mm");
  v11 = nameCopy;
  v47 = 260;
  v46[0] = v37;
  StringAttr = mlir::Builder::getStringAttr(builder, v46);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0xE6u, 0);
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
    *(&__dst[0].__r_.__value_.__s + 23) = 17;
    __dst[0].__r_.__value_.__s.__data_[16] = 100;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.reduction_and";
    v20 = &__dst[0].__r_.__value_.__s.__data_[17];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &__p, v13, v14);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v22 = 1;
  HIBYTE(v47) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v46[0] = p_p;
    v22 = 3;
  }

  LOBYTE(v47) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v46);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
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

  if (v38 < 0)
  {
    operator delete(v37[0]);
    v26 = *values;
    v25 = *(values + 1);
    if (v25 - *values >= 9)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v26 = *values;
    v25 = *(values + 1);
    if (v25 - *values >= 9)
    {
LABEL_18:
      v27 = v26[1];
      goto LABEL_23;
    }
  }

  v27 = 0;
LABEL_23:
  if (v25 == v26)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v39 = v24;
  Context = mlir::Attribute::getContext(&v39);
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionAndOp,void>::id, Context);
  if ((v30 & 1) == 0)
  {
    v44 = 1283;
    __p.__r_.__value_.__r.__words[2] = "mps.reduction_and";
    v43 = 17;
    v41 = 259;
    llvm::operator+(&__p, &v40, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v46, v24, v29);
  mlir::mps::ReductionAndOp::build(builder, v46, *v26, v27, 1);
  v31 = mlir::OpBuilder::create(builder, v46);
  v32 = *(*(v31 + 6) + 16);
  mlir::OperationState::~OperationState(v46);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionAndOp,void>::id)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  v36 = v33 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v36);

  return DefiningOp;
}

@end