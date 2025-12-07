@interface MPSGraphLSTMGradientOp
- (MPSGraphLSTMGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphLSTMGradientOp

- (MPSGraphLSTMGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
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
  v72 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphLSTMGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRNNOps.mm");
  v10 = nameCopy;
  v71 = 260;
  v70[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v70);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x25Bu, 0);
  if (v10)
  {
    v15 = v10;
    uTF8String = [v10 UTF8String];
    v17 = strlen(uTF8String);
    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v17;
    if (v17)
    {
      memmove(__dst, uTF8String, v17);
    }

    v19 = __dst + v18;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 17;
    __dst[0].__r_.__value_.__s.__data_[16] = 116;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.lstm_gradient";
    v19 = &__dst[0].__r_.__value_.__s.__data_[17];
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v66, v12, v13);
  v20 = v66.__r_.__value_.__r.__words[0];
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v66;
  }

  v21 = 1;
  HIBYTE(v71) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v70[0] = v20;
    v21 = 3;
  }

  LOBYTE(v71) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v70);
  v59 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
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

  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  inputGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc inputGateActivation];
  if (inputGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v24 = 1;
  }

  else
  {
    v24 = inputGateActivation;
  }

  forgetGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc forgetGateActivation];
  if (forgetGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v26 = 1;
  }

  else
  {
    v26 = forgetGateActivation;
  }

  cellGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc cellGateActivation];
  if (cellGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v28 = 1;
  }

  else
  {
    v28 = cellGateActivation;
  }

  outputGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc outputGateActivation];
  if (outputGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v30 = 1;
  }

  else
  {
    v30 = outputGateActivation;
  }

  activation = [(MPSGraphLSTMDescriptor *)self->super._desc activation];
  v32 = activation;
  v33 = activation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu);
  desc = self->super._desc;
  if (v33)
  {
    v35 = 1;
  }

  else
  {
    v35 = v32;
  }

  if (desc->_hasInitState)
  {
    valuesCopy2 = values;
    if (*(values + 1) - *values < 0x21uLL)
    {
      goto LABEL_57;
    }

    v37 = *(*values + 32);
    v38 = 5;
    if (!desc->_hasInitCell)
    {
LABEL_36:
      v39 = 0;
      if (desc->_hasMask)
      {
        goto LABEL_37;
      }

LABEL_45:
      v40 = 0;
      if (!desc->_hasPeephole)
      {
        goto LABEL_39;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v37 = 0;
    v38 = 4;
    valuesCopy2 = values;
    if (!desc->_hasInitCell)
    {
      goto LABEL_36;
    }
  }

  if (v38 >= (valuesCopy2[1] - *valuesCopy2) >> 3)
  {
    goto LABEL_57;
  }

  v39 = *(*valuesCopy2 + 8 * v38++);
  if (!desc->_hasMask)
  {
    goto LABEL_45;
  }

LABEL_37:
  if (v38 >= (valuesCopy2[1] - *valuesCopy2) >> 3)
  {
    goto LABEL_57;
  }

  v40 = *(*valuesCopy2 + 8 * v38++);
  if (!desc->_hasPeephole)
  {
LABEL_39:
    v56 = 0;
    v57 = v24;
    v58 = v26;
    if (desc->_hasCellGradient)
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

LABEL_46:
  if (v38 >= (valuesCopy2[1] - *valuesCopy2) >> 3)
  {
    goto LABEL_57;
  }

  v56 = *(*valuesCopy2 + 8 * v38++);
  v57 = v24;
  v58 = v26;
  if (desc->_hasCellGradient)
  {
LABEL_40:
    if (v38 < (valuesCopy2[1] - *valuesCopy2) >> 3)
    {
      v41 = v37;
      v42 = v35;
      v43 = v30;
      v44 = *(*valuesCopy2 + 8 * v38);
      goto LABEL_49;
    }

LABEL_57:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_48:
  v41 = v37;
  v42 = v35;
  v43 = v30;
  v44 = 0;
LABEL_49:
  v55 = v10;
  forgetGateLast = [(MPSGraphLSTMDescriptor *)desc forgetGateLast];
  v46 = *values;
  if (*(values + 1) - *values < 0x20uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v47 = forgetGateLast;
  v63 = v59;
  Context = mlir::Attribute::getContext(&v63);
  v49 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LSTMGradientOp,void>::id, Context);
  if ((v50 & 1) == 0)
  {
    v68 = 1283;
    v66.__r_.__value_.__r.__words[2] = "mps.lstm_gradient";
    v67 = 17;
    v65 = 259;
    llvm::operator+(&v66, &v64, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v70, v59, v49);
  mlir::mps::LSTMGradientOp::build(builder, v70, *v46, v46[1], v46[2], v46[3], v57, v58, v28, v43, v42, v47, v41, v39, v40, v56, 0, v44);
  v51 = mlir::OpBuilder::create(builder, v70);
  v52 = *(*(v51 + 6) + 16);
  mlir::OperationState::~OperationState(v70);
  if (v52 != &mlir::detail::TypeIDResolver<mlir::mps::LSTMGradientOp,void>::id)
  {
    v51 = 0;
  }

  return v51;
}

@end