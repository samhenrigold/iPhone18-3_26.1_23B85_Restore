@interface MPSGraphFlatten2DOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphFlatten2DOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc(v28, "[MPSGraphFlatten2DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm");
  v11 = nameCopy;
  v33 = 260;
  v32[0] = v28;
  StringAttr = mlir::Builder::getStringAttr(builder, v32);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0xC3Fu, 0);
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
    *(&__dst.__r_.__value_.__s + 23) = 14;
    qmemcpy(&__dst, "mps.flatten_2d", 14);
    v19 = &__dst.__r_.__value_.__s.__data_[14];
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
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v28[0]);
      v24 = *values;
      v25 = *(values + 1) - *values;
      if (!v25)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v29 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v24 = *values;
  v25 = *(values + 1) - *values;
  if (!v25)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v25 <= 8)
  {
    goto LABEL_24;
  }

  v32[0] = (mlir::OpBuilder::create<mlir::mps::Flatten2DOp,mlir::Value &,mlir::Value &>(builder, v23, v24, v24 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v32);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v13 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v15 = [v13 stringWithFormat:@"%@/%@/flatten2d/shapeOp", nameCopy, name];
  v16 = [WeakRetained shapeOfTensor:tensorCopy name:v15];

  v17 = objc_loadWeakRetained(&self->super._graph);
  v18 = MEMORY[0x1E696AEC0];
  name2 = [(MPSGraphOperation *)self name];
  v20 = [v18 stringWithFormat:@"%@/%@/reshape", nameCopy, name2];
  v21 = [v17 reshapeTensor:gradientCopy withShapeTensor:v16 name:v20];

  return v21;
}

@end