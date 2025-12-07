@interface MPSGraphSplitOp
- (MPSGraphSplitOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dimension:(int64_t)dimension numSplits:(unint64_t)splits name:(id)name;
- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphSplitOp

- (MPSGraphSplitOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dimension:(int64_t)dimension numSplits:(unint64_t)splits name:(id)name
{
  self->_dimensionIndex = dimension;
  self->_numSplits = splits;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v51 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(v40, "[MPSGraphSplitOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm");
  v12 = nameCopy;
  v50 = 260;
  v49[0] = v40;
  StringAttr = mlir::Builder::getStringAttr(builder, v49);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x5E8u, 0);
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
    __dst.__r_.__value_.__s.__data_[8] = 116;
    __dst.__r_.__value_.__r.__words[0] = *"mps.split";
    v21 = &__dst.__r_.__value_.__s.__data_[9];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &__p, v14, v15);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v23 = 1;
  HIBYTE(v50) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v49[0] = p_p;
    v23 = 3;
  }

  LOBYTE(v50) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v49);
  v25 = mlir::NameLoc::get(v24, v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
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

  if (v41 < 0)
  {
    operator delete(v40[0]);
    v27 = *values;
    v26 = *(values + 1);
    v28 = v26 - *values;
    if (v28 == 24)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v27 = *values;
    v26 = *(values + 1);
    v28 = v26 - *values;
    if (v28 == 24)
    {
LABEL_18:
      v42 = v25;
      Context = mlir::Attribute::getContext(&v42);
      v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SplitOp,void>::id, Context);
      if ((v31 & 1) == 0)
      {
        v47 = 1283;
        __p.__r_.__value_.__r.__words[2] = "mps.split";
        v46 = 9;
        v44 = 259;
        llvm::operator+(&__p, v43, &__dst);
        llvm::report_fatal_error(&__dst, 1);
      }

      mlir::OperationState::OperationState(v49, v25, v30);
      mlir::mps::SplitOp::build(builder, v49, *v27, v27[1], v27[2], 0);
      v32 = mlir::OpBuilder::create(builder, v49);
      goto LABEL_27;
    }
  }

  if (v26 == v27 || v28 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  IntegerType = mlir::Builder::getIntegerType(builder, 32, 0);
  v34 = mlir::IntegerAttr::get(IntegerType, self->_numSplits);
  v42 = v25;
  v35 = mlir::Attribute::getContext(&v42);
  v36 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SplitOp,void>::id, v35);
  if ((v37 & 1) == 0)
  {
    v47 = 1283;
    __p.__r_.__value_.__r.__words[2] = "mps.split";
    v46 = 9;
    v44 = 259;
    llvm::operator+(&__p, v43, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v49, v25, v36);
  mlir::mps::SplitOp::build(builder, v49, *v27, v27[1], 0, v34);
  v32 = mlir::OpBuilder::create(builder, v49);
LABEL_27:
  if (*(*(v32 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SplitOp,void>::id)
  {
    v38 = v32;
  }

  else
  {
    v38 = 0;
  }

  mlir::OperationState::~OperationState(v49);

  return v38;
}

- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name
{
  tensorsCopy = tensors;
  gradientsCopy = gradients;
  nameCopy = name;
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tensorsCopy, "count")}];
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  dimensionIndex = self->_dimensionIndex;
  v14 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v16 = [v14 stringWithFormat:@"%@/%@/concat", nameCopy, name];
  v17 = [WeakRetained concatTensors:gradientsCopy dimension:dimensionIndex name:v16];
  [v11 addObject:v17];

  while (1)
  {

    v18 = [v11 count];
    if (v18 > [tensorsCopy count])
    {
      break;
    }

    WeakRetained = [MEMORY[0x1E695DFB0] null];
    [v11 addObject:WeakRetained];
  }

  return v11;
}

@end