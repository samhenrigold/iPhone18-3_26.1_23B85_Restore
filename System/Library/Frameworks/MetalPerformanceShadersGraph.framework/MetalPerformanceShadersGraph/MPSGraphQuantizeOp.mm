@interface MPSGraphQuantizeOp
- (MPSGraphQuantizeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dataType:(unsigned int)type axis:(id)axis name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphQuantizeOp

- (MPSGraphQuantizeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dataType:(unsigned int)type axis:(id)axis name:(id)name
{
  *(&self->_dataType + 1) = type;
  objc_storeStrong(&self->_axis, axis);
  nameCopy = name;
  dependenciesCopy = dependencies;
  tensorsCopy = tensors;
  graphCopy = graph;
  v17 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v17;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  MLIRElementType = getMLIRElementType(*builder, *(&self->_dataType + 1));
  v34 = 0;
  v35 = mlir::TypeAttr::get(MLIRElementType);
  if (self->_axis)
  {
    IntegerType = mlir::Builder::getIntegerType(builder, 32, 1);
    v34 = mlir::IntegerAttr::get(IntegerType, [(NSNumber *)self->_axis intValue]);
  }

  mpsFileLoc(v32, "[MPSGraphQuantizeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphQuantizationOps.mm");
  v14 = nameCopy;
  v39 = 260;
  v38[0] = v32;
  StringAttr = mlir::Builder::getStringAttr(builder, v38);
  v18 = mlir::FileLineColLoc::get(StringAttr, 0x41u, 0);
  if (v14)
  {
    uTF8String = [v14 UTF8String];
    v20 = strlen(uTF8String);
    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v21 = v20;
    if (v20 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v20;
    if (v20)
    {
      memmove(&__dst, uTF8String, v20);
    }

    v22 = &__dst + v21;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 12;
    LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1702521204;
    __dst.__r_.__value_.__r.__words[0] = *"mps.quantize";
    v22 = &__dst.__r_.__value_.__s.__data_[12];
  }

  *v22 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &__p, v16, v17);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v24 = 1;
  HIBYTE(v39) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v38[0] = p_p;
    v24 = 3;
  }

  LOBYTE(v39) = v24;
  v25 = mlir::Builder::getStringAttr(builder, v38);
  v26 = mlir::NameLoc::get(v25, v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:

      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      operator delete(v32[0]);
      v27 = *values;
      v28 = *(values + 1);
      v29 = v28 - *values;
      if (v29 == 16)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v33 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v27 = *values;
  v28 = *(values + 1);
  v29 = v28 - *values;
  if (v29 == 16)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (v28 == v27 || v29 <= 8)
  {
LABEL_27:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v38[0] = (mlir::OpBuilder::create<mlir::mps::QuantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr &,mlir::IntegerAttr &>(builder, v26, v27, v27 + 1, v27 + 2, &v35, &v34) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v38);

  return DefiningOp;
}

@end