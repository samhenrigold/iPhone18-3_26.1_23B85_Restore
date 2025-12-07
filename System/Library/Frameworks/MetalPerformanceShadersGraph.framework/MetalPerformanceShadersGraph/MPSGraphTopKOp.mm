@interface MPSGraphTopKOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphTopKOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v47 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphTopKOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTopKOps.mm");
  v12 = nameCopy;
  v46 = 260;
  v45[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v45);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x3Bu, 0);
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
    *(&__dst.__r_.__value_.__s + 23) = 9;
    __dst.__r_.__value_.__s.__data_[8] = 107;
    __dst.__r_.__value_.__r.__words[0] = *"mps.top_k";
    v21 = &__dst.__r_.__value_.__s.__data_[9];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v41, v14, v15);
  v22 = v41.__r_.__value_.__r.__words[0];
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v41;
  }

  v23 = 1;
  HIBYTE(v46) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v45[0] = v22;
    v23 = 3;
  }

  LOBYTE(v46) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v45);
  v25 = mlir::NameLoc::get(v24, v16);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
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

  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v27 = *values;
  v26 = *(values + 1);
  v28 = v26 - *values;
  if (v28 == 16 || v26 == v27 || v28 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  smallest = self->super._smallest;
  v38 = v25;
  Context = mlir::Attribute::getContext(&v38);
  v31 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TopKOp,void>::id, Context);
  if ((v32 & 1) == 0)
  {
    v43 = 1283;
    v41.__r_.__value_.__r.__words[2] = "mps.top_k";
    v42 = 9;
    v40 = 259;
    llvm::operator+(&v41, &v39, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v45, v25, v31);
  mlir::mps::TopKOp::build(builder, v45, *v27, v27[1], v27[2], smallest);
  v33 = mlir::OpBuilder::create(builder, v45);
  v34 = *(*(v33 + 6) + 16);
  mlir::OperationState::~OperationState(v45);
  if (v34 != &mlir::detail::TypeIDResolver<mlir::mps::TopKOp,void>::id)
  {
    v33 = 0;
  }

  return v33;
}

- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name
{
  tensorsCopy = tensors;
  gradientsCopy = gradients;
  nameCopy = name;
  v21 = tensorsCopy;
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tensorsCopy, "count")}];
  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  v13 = [gradientsCopy objectAtIndexedSubscript:0];
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v15 = [inputTensors objectAtIndexedSubscript:0];
  inputTensors2 = [(MPSGraphOperation *)self inputTensors];
  v17 = [inputTensors2 objectAtIndexedSubscript:1];
  v18 = [WeakRetained topKWithGradientTensor:v13 source:v15 kTensor:v17 name:nameCopy];

  [v11 addObject:v18];
  null = [MEMORY[0x1E695DFB0] null];
  [v11 addObject:null];

  return v11;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  if (index)
  {
    v13 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
    inputTensors = [(MPSGraphOperation *)self inputTensors];
    v16 = [inputTensors objectAtIndexedSubscript:1];
    v13 = [WeakRetained topKWithGradientTensor:gradientCopy source:tensorCopy kTensor:v16 name:nameCopy];
  }

  return v13;
}

@end