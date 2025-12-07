@interface MPSGraphSingleGateRNNOp
- (MPSGraphSingleGateRNNOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphSingleGateRNNOp

- (MPSGraphSingleGateRNNOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
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
  v53 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphSingleGateRNNOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRNNOps.mm");
  v12 = nameCopy;
  v52 = 260;
  v51[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v51);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x110u, 0);
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

    *(&__dst[0].__r_.__value_.__s + 23) = v19;
    if (v19)
    {
      memmove(__dst, uTF8String, v19);
    }

    v21 = __dst + v20;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 18;
    LOWORD(__dst[0].__r_.__value_.__r.__words[2]) = 28270;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.singlegate_rnn";
    v21 = &__dst[0].__r_.__value_.__s.__data_[18];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v47, v14, v15);
  v22 = v47.__r_.__value_.__r.__words[0];
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v47;
  }

  v23 = 1;
  HIBYTE(v52) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v51[0] = v22;
    v23 = 3;
  }

  LOBYTE(v52) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v51);
  v25 = mlir::NameLoc::get(v24, v16);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
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

  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  training = [(MPSGraphSingleGateRNNDescriptor *)self->super._desc training];
  activation = [(MPSGraphSingleGateRNNDescriptor *)self->super._desc activation];
  if (activation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v28 = 1;
  }

  else
  {
    v28 = activation;
  }

  desc = self->super._desc;
  v31 = *values;
  v30 = *(values + 1);
  if (!desc->_hasInitState)
  {
    v32 = 0;
    v33 = 2;
    if (!desc->_hasMask)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if ((v30 - v31) < 0x11)
  {
    goto LABEL_37;
  }

  v32 = v31[2];
  v33 = 3;
  if (desc->_hasMask)
  {
LABEL_26:
    v35 = v30 - v31;
    if (v33 < v30 - v31)
    {
      v34 = v31[v33];
      goto LABEL_28;
    }

LABEL_37:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_24:
  v34 = 0;
  v35 = v30 - v31;
LABEL_28:
  if (v30 == v31 || v35 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v44 = v25;
  Context = mlir::Attribute::getContext(&v44);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SingleGateRNNOp,void>::id, Context);
  if ((v38 & 1) == 0)
  {
    v49 = 1283;
    v47.__r_.__value_.__r.__words[2] = "mps.singlegate_rnn";
    v48 = 18;
    v46 = 259;
    llvm::operator+(&v47, &v45, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v51, v25, v37);
  mlir::mps::SingleGateRNNOp::build(builder, v51, *v31, v31[1], v28, training, v32, v34);
  v39 = mlir::OpBuilder::create(builder, v51);
  v40 = *(*(v39 + 6) + 16);
  mlir::OperationState::~OperationState(v51);
  if (v40 != &mlir::detail::TypeIDResolver<mlir::mps::SingleGateRNNOp,void>::id)
  {
    v39 = 0;
  }

  return v39;
}

- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name
{
  tensorsCopy = tensors;
  gradientsCopy = gradients;
  nameCopy = name;
  if ([gradientsCopy count])
  {
    v11 = self->super._desc;
    if (![(MPSGraphSingleGateRNNDescriptor *)v11 training])
    {
      v12 = [(MPSGraphSingleGateRNNDescriptor *)self->super._desc copy];

      v11 = v12;
      [(MPSGraphSingleGateRNNDescriptor *)v12 setTraining:1];
    }

    if (v11->_hasInitState)
    {
      v34 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:2];
      v13 = 3;
      v31 = nameCopy;
      if (!v11->_hasMask)
      {
LABEL_6:
        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v34 = 0;
      v13 = 2;
      v31 = nameCopy;
      if (!v11->_hasMask)
      {
        goto LABEL_6;
      }
    }

    v14 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:v13];
LABEL_12:
    WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
    v33 = gradientsCopy;
    v17 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    v18 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
    v32 = [WeakRetained singleGateRNNWithSourceTensor:v17 recurrentWeight:v18 inputWeight:0 bias:0 initState:v34 mask:v14 descriptor:v11 name:0];

    v19 = objc_loadWeakRetained(&self->super.super._graph);
    v20 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
    v22 = [v33 objectAtIndexedSubscript:0];
    v23 = [v32 objectAtIndexedSubscript:1];
    v24 = [v19 singleGateRNNGradientsWithSourceTensor:v20 recurrentWeight:v21 sourceGradient:v22 zState:v23 inputWeight:0 bias:0 initState:v34 mask:v14 descriptor:v11 name:0];

    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tensorsCopy, "count")}];
    for (i = 0; i < [tensorsCopy count]; ++i)
    {
      null = [MEMORY[0x1E695DFB0] null];
      v27 = [tensorsCopy objectAtIndexedSubscript:i];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v29 = [v24 objectAtIndexedSubscript:i];

        null = v29;
      }

      [v15 addObject:null];
    }

    gradientsCopy = v33;
    nameCopy = v31;
    goto LABEL_18;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = 0;
LABEL_18:

  return v15;
}

@end