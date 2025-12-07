@interface MPSGraphPruningOp
- (MPSGraphPruningOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies shape:(id)shape descriptor:(id)descriptor name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphPruningOp

- (MPSGraphPruningOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies shape:(id)shape descriptor:(id)descriptor name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  shapeCopy = shape;
  nameCopy = name;
  v16 = [(MPSGraphPruningDescriptor *)self->_pruningDesc copy];
  pruningDesc = self->_pruningDesc;
  self->_pruningDesc = v16;

  objc_storeStrong(&self->_shape, shape);
  v18 = [MPSGraphPruningOp alloc];
  v19 = [(MPSGraphOperation *)v18 initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  return v19;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v11 = [WeakRetained prunedGradientTensorWithDescriptor:self->_pruningDesc inputTensor:tensorCopy gradientTensor:gradientCopy shape:self->_shape name:0];

  return v11;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v60 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphPruningOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPruningOps.mm");
  v12 = nameCopy;
  v58 = 260;
  v57[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v57);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x8Fu, 0);
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
    __dst.__r_.__value_.__s.__data_[8] = 101;
    __dst.__r_.__value_.__r.__words[0] = *"mps.prune";
    v21 = &__dst.__r_.__value_.__s.__data_[9];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v53, v14, v15);
  v22 = v53.__r_.__value_.__r.__words[0];
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v53;
  }

  v23 = 1;
  HIBYTE(v58) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v57[0] = v22;
    v23 = 3;
  }

  LOBYTE(v58) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v57);
  v25 = mlir::NameLoc::get(v24, v16);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
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

  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = *values;
  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  pruningMetric = [(MPSGraphPruningDescriptor *)self->_pruningDesc pruningMetric];
  pruningStructure = [(MPSGraphPruningDescriptor *)self->_pruningDesc pruningStructure];
  [(MPSGraphPruningDescriptor *)self->_pruningDesc sparsity];
  v33 = llvm::detail::IEEEFloat::IEEEFloat(v57, v32, v29, v30, v31);
  v34 = llvm::APFloatBase::IEEEsingle(v33);
  llvm::APFloat::Storage::Storage(&v56, v57, v34);
  llvm::detail::IEEEFloat::~IEEEFloat(v57);
  v50 = v25;
  Context = mlir::Attribute::getContext(&v50);
  v36 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PruningOp,void>::id, Context);
  if ((v37 & 1) == 0)
  {
    v55 = 1283;
    v53.__r_.__value_.__r.__words[2] = "mps.prune";
    v54 = 9;
    v52 = 259;
    llvm::operator+(&v53, &v51, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v57, v25, v36);
  v38 = *v26;
  v39 = v56.n128_u64[0];
  v41 = llvm::APFloatBase::PPCDoubleDouble(v40);
  if (v41 == v39)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&__dst.__r_.__value_.__r.__words[1], &v56);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&__dst.__r_.__value_.__l.__size_, &v56);
  }

  mlir::mps::PruningOp::build(builder, v57, v38, pruningMetric, pruningStructure, &__dst);
  if (v41 == __dst.__r_.__value_.__l.__size_)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__dst.__r_.__value_.__r.__words[1]);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&__dst.__r_.__value_.__r.__words[1]);
  }

  v42 = mlir::OpBuilder::create(builder, v57);
  v43 = *(*(v42 + 6) + 16);
  mlir::OperationState::~OperationState(v57);
  if (v43 == &mlir::detail::TypeIDResolver<mlir::mps::PruningOp,void>::id)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  v47 = v44 - 16;
  if (v41 == v56.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v56);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v56);
  }

  DefiningOp = mlir::Value::getDefiningOp(&v47);

  return DefiningOp;
}

@end