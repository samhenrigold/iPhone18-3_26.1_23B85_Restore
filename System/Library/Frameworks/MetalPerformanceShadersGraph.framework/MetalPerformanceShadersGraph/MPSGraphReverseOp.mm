@interface MPSGraphReverseOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphReverseOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc(v30, "[MPSGraphReverseOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm");
  v11 = nameCopy;
  v35 = 260;
  v34[0] = v30;
  StringAttr = mlir::Builder::getStringAttr(builder, v34);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0xC18u, 0);
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
    *(&__dst.__r_.__value_.__s + 23) = 11;
    *(__dst.__r_.__value_.__r.__words + 7) = 1702064741;
    __dst.__r_.__value_.__r.__words[0] = *"mps.reverse";
    v19 = &__dst.__r_.__value_.__s.__data_[11];
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &__p, v13, v14);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v21 = 1;
  HIBYTE(v35) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v34[0] = p_p;
    v21 = 3;
  }

  LOBYTE(v35) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v34);
  v23 = mlir::NameLoc::get(v22, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v30[0]);
      v24 = *values;
      v25 = *(values + 1);
      v26 = v25 - *values;
      if (v26 == 8)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v31 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v24 = *values;
  v25 = *(values + 1);
  v26 = v25 - *values;
  if (v26 == 8)
  {
LABEL_18:
    v27 = mlir::OpBuilder::create<mlir::mps::ReverseOp,mlir::Value &>(builder, v23, v24);
    goto LABEL_25;
  }

LABEL_22:
  if (v25 == v24 || v26 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = mlir::OpBuilder::create<mlir::mps::ReverseOp,mlir::Value &,mlir::Value &>(builder, v23, v24, v24 + 1);
LABEL_25:
  v34[0] = (v27 - 16);
  DefiningOp = mlir::Value::getDefiningOp(v34);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  gradientCopy = gradient;
  nameCopy = name;
  if (index)
  {
    v11 = 0;
  }

  else
  {
    v12 = [(NSArray *)self->super._inputTensors count];
    WeakRetained = objc_loadWeakRetained(&self->super._graph);
    v14 = WeakRetained;
    if (v12 < 2)
    {
      v11 = [WeakRetained reverseTensor:gradientCopy name:nameCopy];
    }

    else
    {
      v15 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:1];
      v11 = [v14 reverseTensor:gradientCopy axesTensor:v15 name:nameCopy];
    }
  }

  return v11;
}

@end