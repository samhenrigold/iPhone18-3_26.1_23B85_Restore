@interface MPSGraphScatterNDOp
- (MPSGraphScatterNDOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies batchDimensions:(unint64_t)dimensions mode:(int64_t)mode name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphScatterNDOp

- (MPSGraphScatterNDOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies batchDimensions:(unint64_t)dimensions mode:(int64_t)mode name:(id)name
{
  self->_batchDims = dimensions;
  self->_mode = mode;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v50 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphScatterNDOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphScatterOps.mm");
  v12 = nameCopy;
  v49 = 260;
  v48[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v48);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x31u, 0);
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
    *(&__dst.__r_.__value_.__s + 23) = 14;
    qmemcpy(&__dst, "mps.scatter_nd", 14);
    v21 = &__dst.__r_.__value_.__s.__data_[14];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v44, v14, v15);
  v22 = v44.__r_.__value_.__r.__words[0];
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v44;
  }

  v23 = 1;
  HIBYTE(v49) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v48[0] = v22;
    v23 = 3;
  }

  LOBYTE(v49) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v48);
  v25 = mlir::NameLoc::get(v24, v16);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
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

  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  v27 = *values;
  v26 = *(values + 1);
  v28 = v26 - *values;
  if (v28 == 16 || v26 == v27 || v28 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  mode = self->_mode;
  v41 = v25;
  Context = mlir::Attribute::getContext(&v41);
  v31 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterNDOp,void>::id, Context);
  if ((v32 & 1) == 0)
  {
    v46 = 1283;
    v44.__r_.__value_.__r.__words[2] = "mps.scatter_nd";
    v45 = 14;
    v43 = 259;
    llvm::operator+(&v44, &v42, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v48, v25, v31);
  mlir::mps::ScatterNDOp::build(builder, v48, *v27, v27[1], v27[2], self->_batchDims, mode);
  v33 = mlir::OpBuilder::create(builder, v48);
  v34 = *(*(v33 + 6) + 16);
  mlir::OperationState::~OperationState(v48);
  if (v34 == &mlir::detail::TypeIDResolver<mlir::mps::ScatterNDOp,void>::id)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  v38 = v35 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v38);

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

  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  batchDims = self->_batchDims;
  v25 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v27 = [v25 stringWithFormat:@"%@/%@/gatherND", nameCopy, name];
  v18 = [WeakRetained gatherNDWithUpdatesTensor:v20 indicesTensor:v22 batchDimensions:batchDims name:v27];

LABEL_8:

  return v18;
}

@end