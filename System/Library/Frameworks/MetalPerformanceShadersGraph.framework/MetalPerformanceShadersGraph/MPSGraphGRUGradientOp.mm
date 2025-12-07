@interface MPSGraphGRUGradientOp
- (MPSGraphGRUGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphGRUGradientOp

- (MPSGraphGRUGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  descriptorCopy = descriptor;
  nameCopy = name;
  v17 = [descriptorCopy copy];
  desc = self->super._desc;
  self->super._desc = v17;

  v19 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];
  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v65 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphGRUGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRNNOps.mm");
  v11 = nameCopy;
  v64 = 260;
  v63[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v63);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x34Bu, 0);
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
    *(&__dst[0].__r_.__value_.__s + 23) = 16;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.gru_gradient";
    v20 = &__dst[0].__r_.__value_.__s.__data_[16];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v59, v13, v14);
  v21 = v59.__r_.__value_.__r.__words[0];
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v59;
  }

  v22 = 1;
  HIBYTE(v64) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v63[0] = v21;
    v22 = 3;
  }

  LOBYTE(v64) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v63);
  v53 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
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

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  updateGateActivation = [(MPSGraphGRUDescriptor *)self->super._desc updateGateActivation];
  if (updateGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v25 = 1;
  }

  else
  {
    v25 = updateGateActivation;
  }

  resetGateActivation = [(MPSGraphGRUDescriptor *)self->super._desc resetGateActivation];
  if (resetGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v27 = 1;
  }

  else
  {
    v27 = resetGateActivation;
  }

  outputGateActivation = [(MPSGraphGRUDescriptor *)self->super._desc outputGateActivation];
  v29 = outputGateActivation;
  v30 = outputGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu);
  desc = self->super._desc;
  if (v30)
  {
    v32 = 1;
  }

  else
  {
    v32 = v29;
  }

  builderCopy = builder;
  if (desc->_hasInitState)
  {
    if (*(values + 1) - *values < 0x21uLL)
    {
      goto LABEL_49;
    }

    v33 = *(*values + 32);
    v34 = 5;
    if (!desc->_hasMask)
    {
LABEL_30:
      v51 = 0;
      if (desc->_hasBias2)
      {
        goto LABEL_31;
      }

LABEL_36:
      v35 = v32;
      v36 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v33 = 0;
    v34 = 4;
    if (!desc->_hasMask)
    {
      goto LABEL_30;
    }
  }

  if (v34 >= (*(values + 1) - *values) >> 3)
  {
LABEL_49:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v51 = *(*values + 8 * v34++);
  if (!desc->_hasBias2)
  {
    goto LABEL_36;
  }

LABEL_31:
  if (v34 >= (*(values + 1) - *values) >> 3)
  {
    goto LABEL_49;
  }

  v35 = v32;
  v36 = *(*values + 8 * v34);
LABEL_37:
  v50 = v11;
  resetGateFirst = [(MPSGraphGRUDescriptor *)desc resetGateFirst];
  v38 = *values;
  v39 = *(values + 1) - *values;
  if (!v39 || (v39 >> 3) <= 1 || v39 == 16 || (v39 >> 3) <= 3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v40 = resetGateFirst;
  resetAfter = [(MPSGraphGRUDescriptor *)self->super._desc resetAfter];
  flipZ = [(MPSGraphGRUDescriptor *)self->super._desc flipZ];
  v56 = v53;
  Context = mlir::Attribute::getContext(&v56);
  v44 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GRUGradientOp,void>::id, Context);
  if ((v45 & 1) == 0)
  {
    v61 = 1283;
    v59.__r_.__value_.__r.__words[2] = "mps.gru_gradient";
    v60 = 16;
    v58 = 259;
    llvm::operator+(&v59, &v57, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v63, v53, v44);
  mlir::mps::GRUGradientOp::build(builderCopy, v63, *v38, v38[1], v38[2], v38[3], v25, v27, v35, v40, resetAfter, flipZ, v33, v51, v36);
  v46 = mlir::OpBuilder::create(builderCopy, v63);
  v47 = *(*(v46 + 6) + 16);
  mlir::OperationState::~OperationState(v63);
  if (v47 != &mlir::detail::TypeIDResolver<mlir::mps::GRUGradientOp,void>::id)
  {
    v46 = 0;
  }

  return v46;
}

@end