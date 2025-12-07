@interface MPSGraphHermiteanToRealFFTOp
- (MPSGraphHermiteanToRealFFTOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphHermiteanToRealFFTOp

- (MPSGraphHermiteanToRealFFTOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  descriptorCopy = descriptor;
  nameCopy = name;
  v17 = [descriptorCopy copy];
  desc = self->_desc;
  self->_desc = v17;

  v19 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];
  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v48 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphHermiteanToRealFFTOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphFourierTransformOps.mm");
  v12 = nameCopy;
  v47 = 260;
  v46[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v46);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xD0u, 0);
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
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v42, v18, v19);
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
  v24 = mlir::NameLoc::get(v23, v14);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
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

  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  inverse = [(MPSGraphFFTDescriptor *)self->_desc inverse];
  scalingMode = [(MPSGraphFFTDescriptor *)self->_desc scalingMode];
  if (scalingMode == MPSGraphFFTScalingModeUnitary)
  {
    v27 = 2;
  }

  else
  {
    v27 = scalingMode == MPSGraphFFTScalingModeSize;
  }

  roundToOddHermitean = [(MPSGraphFFTDescriptor *)self->_desc roundToOddHermitean];
  v29 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = roundToOddHermitean;
  v39 = v24;
  Context = mlir::Attribute::getContext(&v39);
  v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::HermiteanToRealFFTOp,void>::id, Context);
  if ((v33 & 1) == 0)
  {
    v44 = 1283;
    v42.__r_.__value_.__r.__words[2] = "mps.hermitean_to_real_fft";
    v43 = 25;
    v41 = 259;
    llvm::operator+(&v42, &v40, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v46, v24, v32);
  mlir::mps::HermiteanToRealFFTOp::build(builder, v46, *v29, v29[1], v27, inverse, v30);
  v34 = mlir::OpBuilder::create(builder, v46);
  v35 = *(*(v34 + 6) + 16);
  mlir::OperationState::~OperationState(v46);
  if (v35 != &mlir::detail::TypeIDResolver<mlir::mps::HermiteanToRealFFTOp,void>::id)
  {
    v34 = 0;
  }

  return v34;
}

@end