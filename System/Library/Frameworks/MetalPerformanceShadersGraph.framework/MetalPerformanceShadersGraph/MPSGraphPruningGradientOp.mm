@interface MPSGraphPruningGradientOp
- (MPSGraphPruningGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies shape:(id)shape descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphPruningGradientOp

- (MPSGraphPruningGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies shape:(id)shape descriptor:(id)descriptor name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  shapeCopy = shape;
  nameCopy = name;
  v16 = [(MPSGraphPruningDescriptor *)self->_pruningDesc copy];
  pruningDesc = self->_pruningDesc;
  self->_pruningDesc = v16;

  objc_storeStrong(&self->_shape, shape);
  v18 = [MPSGraphPruningGradientOp alloc];
  v19 = [(MPSGraphOperation *)v18 initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v63 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphPruningGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPruningOps.mm");
  v12 = nameCopy;
  v61 = 260;
  v60[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v60);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x52u, 0);
  if (v12)
  {
    v17 = v12;
    v18 = v12;
    uTF8String = [v12 UTF8String];
    v20 = strlen(uTF8String);
    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v21 = v20;
    if (v20 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v20;
    if (v20)
    {
      memmove(__dst, uTF8String, v20);
    }

    v22 = __dst + v21;
    v12 = v18;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 18;
    LOWORD(__dst[0].__r_.__value_.__r.__words[2]) = 29806;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.prune_gradient";
    v22 = &__dst[0].__r_.__value_.__s.__data_[18];
  }

  *v22 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v56, v14, v15);
  v23 = v56.__r_.__value_.__r.__words[0];
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v56;
  }

  v24 = 1;
  HIBYTE(v61) = 1;
  if (v23->__r_.__value_.__s.__data_[0])
  {
    v60[0] = v23;
    v24 = 3;
  }

  LOBYTE(v61) = v24;
  v25 = mlir::Builder::getStringAttr(builder, v60);
  v26 = mlir::NameLoc::get(v25, v16);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
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

  if (v52 < 0)
  {
    operator delete(__p[0]);
  }

  v27 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  pruningMetric = [(MPSGraphPruningDescriptor *)self->_pruningDesc pruningMetric];
  pruningStructure = [(MPSGraphPruningDescriptor *)self->_pruningDesc pruningStructure];
  v49 = v12;
  [(MPSGraphPruningDescriptor *)self->_pruningDesc sparsity];
  v34 = llvm::detail::IEEEFloat::IEEEFloat(v60, v33, v30, v31, v32);
  v35 = llvm::APFloatBase::IEEEsingle(v34);
  llvm::APFloat::Storage::Storage(&v59, v60, v35);
  llvm::detail::IEEEFloat::~IEEEFloat(v60);
  v53 = v26;
  Context = mlir::Attribute::getContext(&v53);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PruningGradientOp,void>::id, Context);
  if ((v38 & 1) == 0)
  {
    v58 = 1283;
    v56.__r_.__value_.__r.__words[2] = "mps.prune_gradient";
    v57 = 18;
    v55 = 259;
    llvm::operator+(&v56, &v54, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v60, v26, v37);
  v39 = *v27;
  v40 = v27[1];
  v41 = v59.n128_u64[0];
  v43 = llvm::APFloatBase::PPCDoubleDouble(v42);
  if (v43 == v41)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&__dst[0].__r_.__value_.__r.__words[1], &v59);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&__dst[0].__r_.__value_.__l.__size_, &v59);
  }

  mlir::mps::PruningGradientOp::build(builder, v60, v39, v40, pruningMetric, pruningStructure, __dst);
  if (v43 == __dst[0].__r_.__value_.__l.__size_)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__dst[0].__r_.__value_.__r.__words[1]);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&__dst[0].__r_.__value_.__r.__words[1]);
  }

  v44 = mlir::OpBuilder::create(builder, v60);
  v45 = *(*(v44 + 6) + 16);
  mlir::OperationState::~OperationState(v60);
  if (v45 == &mlir::detail::TypeIDResolver<mlir::mps::PruningGradientOp,void>::id)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  v50 = v46 - 16;
  if (v43 == v59.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v59);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v59);
  }

  DefiningOp = mlir::Value::getDefiningOp(&v50);

  return DefiningOp;
}

@end