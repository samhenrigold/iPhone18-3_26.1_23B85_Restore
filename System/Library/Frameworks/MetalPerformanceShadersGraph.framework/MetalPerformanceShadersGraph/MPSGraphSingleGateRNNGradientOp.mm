@interface MPSGraphSingleGateRNNGradientOp
- (MPSGraphSingleGateRNNGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphSingleGateRNNGradientOp

- (MPSGraphSingleGateRNNGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
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
  v54 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphSingleGateRNNGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRNNOps.mm");
  v12 = nameCopy;
  v53 = 260;
  v52[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v52);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x178u, 0);
  if (!v12)
  {
    operator new();
  }

  v15 = v12;
  uTF8String = [v12 UTF8String];
  v17 = strlen(uTF8String);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v17;
  if (v17)
  {
    memmove(&__dst, uTF8String, v17);
  }

  __dst.__r_.__value_.__s.__data_[v20] = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v48, v18, v19);
  v21 = v48.__r_.__value_.__r.__words[0];
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v48;
  }

  v22 = 1;
  HIBYTE(v53) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v52[0] = v21;
    v22 = 3;
  }

  LOBYTE(v53) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v52);
  v24 = mlir::NameLoc::get(v23, v14);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_15:

  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  activation = [(MPSGraphSingleGateRNNDescriptor *)self->super._desc activation];
  if (activation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v26 = 1;
  }

  else
  {
    v26 = activation;
  }

  desc = self->super._desc;
  hasInitState = desc->_hasInitState;
  v30 = *values;
  v29 = *(values + 1);
  if (hasInitState != 1)
  {
    v31 = 0;
    v32 = 3;
    hasMask = desc->_hasMask;
    v34 = v29 - v30;
    if (!hasMask)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if ((v29 - v30) < 0x19)
  {
    goto LABEL_37;
  }

  v31 = v30[3];
  v32 = 4;
  v33 = desc->_hasMask;
  v34 = v29 - v30;
  if (v33)
  {
LABEL_25:
    if (v32 < v34 >> 3)
    {
      v35 = v30[v32];
      goto LABEL_27;
    }

LABEL_37:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_23:
  v35 = 0;
LABEL_27:
  if (v29 == v30 || v34 < 9 || v34 == 16)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v45 = v24;
  Context = mlir::Attribute::getContext(&v45);
  v38 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SingleGateRNNGradientOp,void>::id, Context);
  if ((v39 & 1) == 0)
  {
    v50 = 1283;
    v48.__r_.__value_.__r.__words[2] = "mps.singlegate_rnn_gradient";
    v49 = 27;
    v47 = 259;
    llvm::operator+(&v48, &v46, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v52, v24, v38);
  mlir::mps::SingleGateRNNGradientOp::build(builder, v52, *v30, v30[1], v30[2], v26, hasInitState, v31, v35);
  v40 = mlir::OpBuilder::create(builder, v52);
  v41 = *(*(v40 + 6) + 16);
  mlir::OperationState::~OperationState(v52);
  if (v41 != &mlir::detail::TypeIDResolver<mlir::mps::SingleGateRNNGradientOp,void>::id)
  {
    v40 = 0;
  }

  return v40;
}

@end