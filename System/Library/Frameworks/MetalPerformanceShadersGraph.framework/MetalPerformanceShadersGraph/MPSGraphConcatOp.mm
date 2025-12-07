@interface MPSGraphConcatOp
- (MPSGraphConcatOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dimension:(int64_t)dimension interleave:(BOOL)interleave name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphConcatOp

- (MPSGraphConcatOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dimension:(int64_t)dimension interleave:(BOOL)interleave name:(id)name
{
  self->_dimensionIndex = dimension;
  self->_interleave = interleave;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc(v28, "[MPSGraphConcatOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm");
  v11 = nameCopy;
  v33 = 260;
  v32[0] = v28;
  StringAttr = mlir::Builder::getStringAttr(builder, v32);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x2E9u, 0);
  if (v11)
  {
    uTF8String = [v11 UTF8String];
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

    *(&__dst.__r_.__value_.__s + 23) = v17;
    if (v17)
    {
      memmove(&__dst, uTF8String, v17);
    }

    v19 = &__dst + v18;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 10;
    LOWORD(__dst.__r_.__value_.__r.__words[1]) = 29793;
    __dst.__r_.__value_.__r.__words[0] = *"mps.concat";
    v19 = &__dst.__r_.__value_.__s.__data_[10];
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &__p, v13, v14);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v21 = 1;
  HIBYTE(v33) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v32[0] = p_p;
    v21 = 3;
  }

  LOBYTE(v33) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v32);
  v23 = mlir::NameLoc::get(v22, v15);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    operator delete(__dst.__r_.__value_.__l.__data_);

    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    operator delete(v28[0]);
    goto LABEL_17;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_19;
  }

LABEL_16:

  if (v29 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v24 = *(values + 1);
  v32[0] = *(v24 - 8);
  *(values + 1) = v24 - 8;
  __dst.__r_.__value_.__r.__words[0] = (mlir::OpBuilder::create<mlir::mps::ConcatOp,std::vector<mlir::Value> &,mlir::Value&,BOOL &>(builder, v23, values, v32, &self->_interleave) - 16);
  DefiningOp = mlir::Value::getDefiningOp(&__dst);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v13 = [inputTensors count] - 1;

  if (v13 != index)
  {
    inputTensors2 = [(MPSGraphOperation *)self inputTensors];
    v15 = [inputTensors2 objectAtIndexedSubscript:0];
    shape = [v15 shape];
    [shape count];

    operator new();
  }

  return 0;
}

@end