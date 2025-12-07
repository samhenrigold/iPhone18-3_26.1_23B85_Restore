@interface MPSGraphCastOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphCastOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc(v30, "[MPSGraphCastOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm");
  v11 = nameCopy;
  v35 = 260;
  v34[0] = v30;
  StringAttr = mlir::Builder::getStringAttr(builder, v34);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x347u, 0);
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

    p_size = (&__dst + v18);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x747361632E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
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
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    operator delete(__dst.__r_.__value_.__l.__data_);

    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }

LABEL_16:

  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_21:
  operator delete(v30[0]);
LABEL_17:
  MLIRElementType = getMLIRElementType(*builder, self->_destType);
  valuesCopy = values;
  v25 = *values;
  if (valuesCopy[1] == v25)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  __dst.__r_.__value_.__r.__words[0] = mlir::TypeAttr::get(MLIRElementType);
  v34[0] = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(builder, v23, v25, &__dst) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v34);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  dataType = [tensorCopy dataType];
  v14 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v16 = [v14 stringWithFormat:@"%@/%@/castGradient", nameCopy, name];
  v17 = [WeakRetained castTensor:gradientCopy toType:dataType name:v16];

  return v17;
}

@end