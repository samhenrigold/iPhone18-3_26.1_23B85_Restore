@interface MPSGraphStridedSliceOp
- (MPSGraphStridedSliceOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies startMask:(unsigned int)mask endMask:(unsigned int)endMask shrinkAxisMask:(unsigned int)axisMask endIsSize:(BOOL)size name:(id)self0;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphStridedSliceOp

- (MPSGraphStridedSliceOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies startMask:(unsigned int)mask endMask:(unsigned int)endMask shrinkAxisMask:(unsigned int)axisMask endIsSize:(BOOL)size name:(id)self0
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
  mpsFileLoc(__p, "[MPSGraphStridedSliceOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm");
  v11 = nameCopy;
  v46 = 260;
  v45[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v45);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x208u, 0);
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
    *(&__dst[0].__r_.__value_.__s + 23) = 17;
    __dst[0].__r_.__value_.__s.__data_[16] = 101;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.strided_slice";
    v20 = &__dst[0].__r_.__value_.__s.__data_[17];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v41, v13, v14);
  v21 = v41.__r_.__value_.__r.__words[0];
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v41;
  }

  v22 = 1;
  HIBYTE(v46) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v45[0] = v21;
    v22 = 3;
  }

  LOBYTE(v46) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v45);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
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

  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = *values;
  if (*(values + 1) - *values < 0x20uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v38 = v24;
  Context = mlir::Attribute::getContext(&v38);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id, Context);
  if ((v28 & 1) == 0)
  {
    v43 = 1283;
    v41.__r_.__value_.__r.__words[2] = "mps.strided_slice";
    v42 = 17;
    v40 = 259;
    llvm::operator+(&v41, &v39, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v45, v24, v27);
  mlir::mps::StridedSliceOp::build(builder, v45, *v25, v25[1], v25[2], v25[3], self->_begin_mask, self->_end_mask, self->_shrink_axis_mask, self->_end_is_size);
  v29 = mlir::OpBuilder::create(builder, v45);
  v30 = *(*(v29 + 6) + 16);
  mlir::OperationState::~OperationState(v45);
  if (v30 == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
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
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v13 = [WeakRetained shapeOfTensor:tensorCopy name:@"in shape"];

  end_is_size = self->_end_is_size;
  v15 = objc_loadWeakRetained(&self->super._graph);
  v16 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:1];
  [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:2];
  if (end_is_size)
    v17 = {;
    v18 = [v15 sliceGradientTensor:gradientCopy fwdInShapeTensor:v13 startTensor:v16 sizeTensor:v17 squeezeMask:self->_shrink_axis_mask name:nameCopy];
  }

  else
    v17 = {;
    v19 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:3];
    v18 = [v15 sliceGradientTensor:gradientCopy fwdInShapeTensor:v13 startTensor:v16 endTensor:v17 strideTensor:v19 startMask:self->_begin_mask endMask:*&self->_end_mask squeezeMask:nameCopy name:?];
  }

  return v18;
}

@end