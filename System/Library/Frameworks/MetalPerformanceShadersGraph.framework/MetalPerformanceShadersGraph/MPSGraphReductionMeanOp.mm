@interface MPSGraphReductionMeanOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphReductionMeanOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc(v29, "[MPSGraphReductionMeanOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphReductionOps.mm");
  v11 = nameCopy;
  v34 = 260;
  v33[0] = v29;
  StringAttr = mlir::Builder::getStringAttr(builder, v33);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x11Au, 0);
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
    *(&__dst.__r_.__value_.__s + 23) = 18;
    LOWORD(__dst.__r_.__value_.__r.__words[2]) = 28257;
    *&__dst.__r_.__value_.__l.__data_ = *"mps.reduction_mean";
    v19 = &__dst.__r_.__value_.__s.__data_[18];
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &__p, v13, v14);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v21 = 1;
  HIBYTE(v34) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v33[0] = p_p;
    v21 = 3;
  }

  LOBYTE(v34) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v33);
  v23 = mlir::NameLoc::get(v22, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v29[0]);
      v24 = *values;
      v25 = *(values + 1);
      if (v25 - *values >= 9)
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

  if (v30 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v24 = *values;
  v25 = *(values + 1);
  if (v25 - *values >= 9)
  {
LABEL_18:
    v26 = v24[1];
    goto LABEL_23;
  }

LABEL_22:
  v26 = 0;
LABEL_23:
  v33[0] = v26;
  if (v25 == v24)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  __p.__r_.__value_.__s.__data_[0] = 1;
  __dst.__r_.__value_.__r.__words[0] = (mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::Value &,mlir::Value &,BOOL>(builder, v23, v24, v33, &__p) - 16);
  DefiningOp = mlir::Value::getDefiningOp(&__dst);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  v12 = objc_loadWeakRetained(&self->super.super._graph);
  v31 = tensorCopy;
  v13 = [v12 shapeOfTensor:tensorCopy name:@"ShapeForReductionGrad"];
  v32 = [v12 broadcastTensor:gradientCopy toShapeTensor:v13 name:@"Broadcast to input shape"];

  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  axes = self->super._axes;
  if (nameCopy)
  {
    v16 = [nameCopy stringByAppendingFormat:@"/dimSize"];
  }

  else
  {
    v16 = @"meanGrad/dimSize";
  }

  v17 = [WeakRetained dimensionSizeOfTensor:tensorCopy axes:axes name:v16];
  if (nameCopy)
  {

    v18 = objc_loadWeakRetained(&self->super.super._graph);
    v19 = [nameCopy stringByAppendingFormat:@"/reductionProduct"];
  }

  else
  {

    v18 = objc_loadWeakRetained(&self->super.super._graph);
    v19 = @"meanGrad/reductionProduct";
  }

  v20 = [v18 reductionProductWithTensor:v17 axis:0 name:v19];
  if (nameCopy)
  {
  }

  v21 = objc_loadWeakRetained(&self->super.super._graph);
  dataType = [gradientCopy dataType];
  if (nameCopy)
  {
    v23 = [nameCopy stringByAppendingFormat:@"/cast"];
  }

  else
  {
    v23 = @"meanGrad/cast";
  }

  v24 = [v21 castTensor:v20 toType:dataType name:v23];
  if (nameCopy)
  {

    v25 = objc_loadWeakRetained(&self->super.super._graph);
    v26 = [nameCopy stringByAppendingString:@"/reciprocal"];
  }

  else
  {

    v25 = objc_loadWeakRetained(&self->super.super._graph);
    v26 = @"meanGrad/reciprocal";
  }

  v27 = [v25 reciprocalWithTensor:v24 name:v26];
  if (nameCopy)
  {
  }

  v28 = objc_loadWeakRetained(&self->super.super._graph);
  v29 = [v28 multiplicationWithPrimaryTensor:v32 secondaryTensor:v27 name:nameCopy];

  return v29;
}

@end