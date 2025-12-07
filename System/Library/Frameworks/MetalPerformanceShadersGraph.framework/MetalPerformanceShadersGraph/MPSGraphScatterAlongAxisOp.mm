@interface MPSGraphScatterAlongAxisOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphScatterAlongAxisOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v48 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphScatterAlongAxisOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphScatterOps.mm");
  v12 = nameCopy;
  v47 = 260;
  v46[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v46);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x15Eu, 0);
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
    *(&__dst[0].__r_.__value_.__s + 23) = 22;
    qmemcpy(__dst, "mps.scatter_along_axis", 22);
    v21 = &__dst[0].__r_.__value_.__s.__data_[22];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v42, v14, v15);
  v22 = v42.__r_.__value_.__r.__words[0];
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v42;
  }

  v23 = 1;
  HIBYTE(v47) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v46[0] = v22;
    v23 = 3;
  }

  LOBYTE(v47) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v46);
  v25 = mlir::NameLoc::get(v24, v16);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
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

  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = *values;
  if (*(values + 1) - *values < 0x20uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  mode = self->_mode;
  v39 = v25;
  Context = mlir::Attribute::getContext(&v39);
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterAlongAxisOp,void>::id, Context);
  if ((v30 & 1) == 0)
  {
    v44 = 1283;
    v42.__r_.__value_.__r.__words[2] = "mps.scatter_along_axis";
    v43 = 22;
    v41 = 259;
    llvm::operator+(&v42, &v40, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v46, v25, v29);
  mlir::mps::ScatterAlongAxisOp::build(builder, v46, *v26, v26[1], v26[2], v26[3], mode);
  v31 = mlir::OpBuilder::create(builder, v46);
  v32 = *(*(v31 + 6) + 16);
  mlir::OperationState::~OperationState(v46);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::mps::ScatterAlongAxisOp,void>::id)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  v36 = v33 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v36);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v13 = [inputTensors objectAtIndexedSubscript:0];
  if (v13 == tensorCopy)
  {
    mode = self->_mode;

    if (!mode)
    {
      v18 = gradientCopy;
      goto LABEL_8;
    }
  }

  else
  {
  }

  inputTensors2 = [(MPSGraphOperation *)self inputTensors];
  v16 = [inputTensors2 objectAtIndexedSubscript:1];
  if (v16 != tensorCopy)
  {

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v17 = self->_mode;

  if (v17)
  {
    goto LABEL_7;
  }

  v20 = gradientCopy;
  inputTensors3 = [(MPSGraphOperation *)self inputTensors];
  v22 = [inputTensors3 objectAtIndexedSubscript:2];

  inputTensors4 = [(MPSGraphOperation *)self inputTensors];
  v24 = [inputTensors4 objectAtIndexedSubscript:3];

  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v26 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v28 = [v26 stringWithFormat:@"%@/%@/gatherAlongAxis", nameCopy, name];
  v18 = [WeakRetained gatherAlongAxisTensor:v24 withUpdatesTensor:v20 indicesTensor:v22 name:v28];

LABEL_8:

  return v18;
}

@end