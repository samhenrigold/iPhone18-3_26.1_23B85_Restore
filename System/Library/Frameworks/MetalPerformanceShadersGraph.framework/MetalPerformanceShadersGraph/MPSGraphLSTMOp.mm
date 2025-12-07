@interface MPSGraphLSTMOp
- (MPSGraphLSTMOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphLSTMOp

- (MPSGraphLSTMOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
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
  v74 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphLSTMOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRNNOps.mm");
  v11 = nameCopy;
  v73 = 260;
  v72[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v72);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x1BDu, 0);
  if (v11)
  {
    v16 = v11;
    v17 = v11;
    uTF8String = [v11 UTF8String];
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

    v11 = v17;
    p_size = (&__dst + v20);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x6D74736C2E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v68, v13, v14);
  v22 = v68.__r_.__value_.__r.__words[0];
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v68;
  }

  v23 = 1;
  HIBYTE(v73) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v72[0] = v22;
    v23 = 3;
  }

  LOBYTE(v73) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v72);
  v25 = mlir::NameLoc::get(v24, v15);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
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

  if (v64 < 0)
  {
    operator delete(__p[0]);
  }

  training = [(MPSGraphLSTMDescriptor *)self->super._desc training];
  inputGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc inputGateActivation];
  if (inputGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v28 = 1;
  }

  else
  {
    v28 = inputGateActivation;
  }

  forgetGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc forgetGateActivation];
  if (forgetGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v30 = 1;
  }

  else
  {
    v30 = forgetGateActivation;
  }

  cellGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc cellGateActivation];
  if (cellGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v32 = 1;
  }

  else
  {
    v32 = cellGateActivation;
  }

  outputGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc outputGateActivation];
  if (outputGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v34 = 1;
  }

  else
  {
    v34 = outputGateActivation;
  }

  v62 = v34;
  activation = [(MPSGraphLSTMDescriptor *)self->super._desc activation];
  v36 = activation;
  v57 = v11;
  v37 = activation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu);
  desc = self->super._desc;
  if (v37)
  {
    v39 = 1;
  }

  else
  {
    v39 = v36;
  }

  builderCopy = builder;
  v59 = v32;
  v60 = v30;
  v58 = v28;
  if (!desc->_hasInitState)
  {
    v40 = 0;
    v41 = 2;
    if (!desc->_hasInitCell)
    {
      goto LABEL_36;
    }

LABEL_41:
    if (v41 >= (*(values + 1) - *values) >> 3)
    {
      goto LABEL_54;
    }

    v42 = *(*values + 8 * v41++);
    if (desc->_hasMask)
    {
      goto LABEL_37;
    }

LABEL_43:
    v43 = 0;
    if (!desc->_hasPeephole)
    {
      goto LABEL_39;
    }

    goto LABEL_44;
  }

  if (*(values + 1) - *values < 0x11uLL)
  {
    goto LABEL_54;
  }

  v40 = *(*values + 16);
  v41 = 3;
  if (desc->_hasInitCell)
  {
    goto LABEL_41;
  }

LABEL_36:
  v42 = 0;
  if (!desc->_hasMask)
  {
    goto LABEL_43;
  }

LABEL_37:
  if (v41 >= (*(values + 1) - *values) >> 3)
  {
    goto LABEL_54;
  }

  v43 = *(*values + 8 * v41++);
  if (!desc->_hasPeephole)
  {
LABEL_39:
    v44 = v39;
    v45 = 0;
    goto LABEL_46;
  }

LABEL_44:
  if (v41 >= (*(values + 1) - *values) >> 3)
  {
LABEL_54:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v44 = v39;
  v45 = *(*values + 8 * v41);
LABEL_46:
  v46 = training;
  forgetGateLast = [(MPSGraphLSTMDescriptor *)desc forgetGateLast];
  v48 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v49 = forgetGateLast;
  v65 = v25;
  Context = mlir::Attribute::getContext(&v65);
  v51 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LSTMOp,void>::id, Context);
  if ((v52 & 1) == 0)
  {
    v70 = 1283;
    v68.__r_.__value_.__r.__words[2] = "mps.lstm";
    v69 = 8;
    v67 = 259;
    llvm::operator+(&v68, &v66, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v72, v25, v51);
  mlir::mps::LSTMOp::build(builderCopy, v72, *v48, v48[1], v58, v60, v59, v62, v44, v49, v46, v40, v42, v43, v45, 0);
  v53 = mlir::OpBuilder::create(builderCopy, v72);
  v54 = *(*(v53 + 6) + 16);
  mlir::OperationState::~OperationState(v72);
  if (v54 != &mlir::detail::TypeIDResolver<mlir::mps::LSTMOp,void>::id)
  {
    v53 = 0;
  }

  return v53;
}

- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name
{
  tensorsCopy = tensors;
  gradientsCopy = gradients;
  nameCopy = name;
  if ([gradientsCopy count])
  {
    v44 = self->super._desc;
    if (![(MPSGraphLSTMDescriptor *)v44 training])
    {
      v11 = [(MPSGraphLSTMDescriptor *)self->super._desc copy];

      v44 = v11;
      [(MPSGraphLSTMDescriptor *)v11 setTraining:1];
    }

    desc = self->super._desc;
    if (desc->_hasInitState)
    {
      v13 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:2];
      desc = self->super._desc;
      v14 = 3;
      v42 = v13;
      if (!desc->_hasInitCell)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v42 = 0;
      v14 = 2;
      if (!desc->_hasInitCell)
      {
LABEL_6:
        v43 = 0;
        if (desc->_hasMask)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    v17 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:v14];
    ++v14;
    desc = self->super._desc;
    v43 = v17;
    if (desc->_hasMask)
    {
LABEL_7:
      v15 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:v14++];
      if (!self->super._desc->_hasPeephole)
      {
LABEL_8:
        v41 = 0;
        goto LABEL_16;
      }

LABEL_15:
      v41 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:v14];
LABEL_16:
      v39 = nameCopy;
      WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
      v40 = v15;
      v19 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
      v20 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
      v21 = [WeakRetained LSTMWithSourceTensor:v19 recurrentWeight:v20 inputWeight:0 bias:0 initState:v42 initCell:v43 mask:v15 peephole:v41 descriptor:v44 name:@"fwd"];

      if ([gradientsCopy count] < 2 || (objc_msgSend(gradientsCopy, "objectAtIndexedSubscript:", 1), v22 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v22, (isKindOfClass & 1) != 0))
      {
        v38 = 0;
      }

      else
      {
        v38 = [gradientsCopy objectAtIndexedSubscript:1];
      }

      v24 = objc_loadWeakRetained(&self->super.super._graph);
      v25 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
      v26 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
      v27 = [gradientsCopy objectAtIndexedSubscript:0];
      v28 = [v21 objectAtIndexedSubscript:2];
      v29 = v21;
      v30 = [v21 objectAtIndexedSubscript:1];
      v31 = [v24 LSTMGradientsWithSourceTensor:v25 recurrentWeight:v26 sourceGradient:v27 zState:v28 cellOutputFwd:v30 stateGradient:0 cellGradient:v38 inputWeight:0 bias:0 initState:v42 initCell:v43 mask:v40 peephole:v41 descriptor:v44 name:v39];

      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tensorsCopy, "count")}];
      for (i = 0; i < [tensorsCopy count]; ++i)
      {
        null = [MEMORY[0x1E695DFB0] null];
        v34 = [tensorsCopy objectAtIndexedSubscript:i];
        objc_opt_class();
        v35 = objc_opt_isKindOfClass();

        if ((v35 & 1) == 0)
        {
          v36 = [v31 objectAtIndexedSubscript:i];

          null = v36;
        }

        [v16 addObject:null];
      }

      nameCopy = v39;
      goto LABEL_26;
    }

LABEL_14:
    v15 = 0;
    if (!desc->_hasPeephole)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = 0;
LABEL_26:

  return v16;
}

@end