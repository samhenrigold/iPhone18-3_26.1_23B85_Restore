@interface MPSGraphStridedSliceGradientOp
- (MPSGraphStridedSliceGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies startMask:(unsigned int)mask endMask:(unsigned int)endMask shrinkAxisMask:(unsigned int)axisMask endIsSize:(BOOL)size name:(id)self0;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphStridedSliceGradientOp

- (MPSGraphStridedSliceGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies startMask:(unsigned int)mask endMask:(unsigned int)endMask shrinkAxisMask:(unsigned int)axisMask endIsSize:(BOOL)size name:(id)self0
{
  self->_begin_mask = mask;
  self->_end_mask = endMask;
  self->_shrink_axis_mask = axisMask;
  self->_end_is_size = size;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v47 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphStridedSliceGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm");
  v11 = nameCopy;
  v46 = 260;
  v45[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v45);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x251u, 0);
  if (!v11)
  {
    operator new();
  }

  v14 = v11;
  uTF8String = [v11 UTF8String];
  v16 = strlen(uTF8String);
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v16;
  if (v16)
  {
    memmove(&__dst, uTF8String, v16);
  }

  __dst.__r_.__value_.__s.__data_[v19] = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v41, v17, v18);
  v20 = v41.__r_.__value_.__r.__words[0];
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v41;
  }

  v21 = 1;
  HIBYTE(v46) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v45[0] = v20;
    v21 = 3;
  }

  LOBYTE(v46) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v45);
  v23 = mlir::NameLoc::get(v22, v13);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
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

  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = *values;
  v25 = *(values + 1) - *values;
  if (!v25 || (v25 >> 3) < 2 || v25 == 16 || v25 == 32 || (v25 >> 3) <= 3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v38 = v23;
  Context = mlir::Attribute::getContext(&v38);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceGradientOp,void>::id, Context);
  if ((v28 & 1) == 0)
  {
    v43 = 1283;
    v41.__r_.__value_.__r.__words[2] = "mps.strided_slice_gradient";
    v42 = 26;
    v40 = 259;
    llvm::operator+(&v41, &v39, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v45, v23, v27);
  mlir::mps::StridedSliceGradientOp::build(builder, v45, *v24, v24[1], v24[2], v24[3], v24[4], self->_begin_mask, self->_end_mask, self->_shrink_axis_mask, self->_end_is_size);
  v29 = mlir::OpBuilder::create(builder, v45);
  v30 = *(*(v29 + 6) + 16);
  mlir::OperationState::~OperationState(v45);
  if (v30 == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceGradientOp,void>::id)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  v35 = v31 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v35);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  gradientCopy = gradient;
  nameCopy = name;
  end_is_size = self->_end_is_size;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:2];
  if (end_is_size)
    v12 = {;
    v13 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:3];
    v14 = [WeakRetained sliceTensor:gradientCopy startTensor:v12 sizeTensor:v13 squeezeMask:self->_shrink_axis_mask name:nameCopy];
  }

  else
    v12 = {;
    v13 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:3];
    v15 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:4];
    LODWORD(v17) = self->_shrink_axis_mask;
    v14 = [WeakRetained sliceTensor:gradientCopy startTensor:v12 endTensor:v13 strideTensor:v15 startMask:self->_begin_mask endMask:self->_end_mask squeezeMask:v17 name:nameCopy];
  }

  return v14;
}

@end