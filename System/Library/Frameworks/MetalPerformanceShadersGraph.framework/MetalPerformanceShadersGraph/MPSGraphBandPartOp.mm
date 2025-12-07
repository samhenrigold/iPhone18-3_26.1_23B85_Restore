@interface MPSGraphBandPartOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphBandPartOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v48 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphBandPartOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphLinearAlgebraOps.mm");
  v11 = nameCopy;
  v47 = 260;
  v46[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v46);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x2Au, 0);
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
    qmemcpy(&__dst, "mps.band_part", 13);
    v20 = &__dst.__r_.__value_.__s.__data_[13];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v42, v13, v14);
  v21 = v42.__r_.__value_.__r.__words[0];
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v42;
  }

  v22 = 1;
  HIBYTE(v47) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v46[0] = v21;
    v22 = 3;
  }

  LOBYTE(v47) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v46);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
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

  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = *values;
  v25 = *(values + 1);
  v27 = v25 - *values;
  if (v27 == 16 || v25 == v26 || v27 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v39 = v24;
  Context = mlir::Attribute::getContext(&v39);
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BandPartOp,void>::id, Context);
  if ((v30 & 1) == 0)
  {
    v44 = 1283;
    v42.__r_.__value_.__r.__words[2] = "mps.band_part";
    v43 = 13;
    v41 = 259;
    llvm::operator+(&v42, &v40, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v46, v24, v29);
  mlir::mps::BandPartOp::build(builder, v46, *v26, v26[1], v26[2]);
  v31 = mlir::OpBuilder::create(builder, v46);
  v32 = *(*(v31 + 6) + 16);
  mlir::OperationState::~OperationState(v46);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::mps::BandPartOp,void>::id)
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

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v12 = [inputTensors objectAtIndexedSubscript:1];
  inputTensors2 = [(MPSGraphOperation *)self inputTensors];
  v14 = [inputTensors2 objectAtIndexedSubscript:2];
  v15 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v17 = [v15 stringWithFormat:@"%@/%@/bandpart", nameCopy, name];
  v18 = [WeakRetained bandPartWithTensor:gradientCopy numLowerTensor:v12 numUpperTensor:v14 name:v17];

  return v18;
}

@end