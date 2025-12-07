@interface MPSGraphDequantizeLUTOp
- (MPSGraphDequantizeLUTOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies axis:(id)axis name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphDequantizeLUTOp

- (MPSGraphDequantizeLUTOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies axis:(id)axis name:(id)name
{
  objc_storeStrong(&self->_axis, axis);
  nameCopy = name;
  dependenciesCopy = dependencies;
  tensorsCopy = tensors;
  graphCopy = graph;
  v16 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v16;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  v32 = 0;
  if (self->_axis)
  {
    IntegerType = mlir::Builder::getIntegerType(builder, 32, 1);
    v32 = mlir::IntegerAttr::get(IntegerType, [(NSNumber *)self->_axis intValue]);
  }

  mpsFileLoc(v30, "[MPSGraphDequantizeLUTOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphQuantizationOps.mm");
  v13 = nameCopy;
  v36 = 260;
  v35[0] = v30;
  StringAttr = mlir::Builder::getStringAttr(builder, v35);
  v17 = mlir::FileLineColLoc::get(StringAttr, 0xAAu, 0);
  if (v13)
  {
    uTF8String = [v13 UTF8String];
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
    *(&__dst.__r_.__value_.__s + 23) = 18;
    LOWORD(__dst.__r_.__value_.__r.__words[2]) = 29813;
    *&__dst.__r_.__value_.__l.__data_ = *"mps.dequantize_lut";
    v21 = &__dst.__r_.__value_.__s.__data_[18];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &__p, v15, v16);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v23 = 1;
  HIBYTE(v36) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v35[0] = p_p;
    v23 = 3;
  }

  LOBYTE(v36) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v35);
  v25 = mlir::NameLoc::get(v24, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:

      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      operator delete(v30[0]);
      v26 = *values;
      v27 = *(values + 1) - *values;
      if (!v27)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v31 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v26 = *values;
  v27 = *(values + 1) - *values;
  if (!v27)
  {
LABEL_26:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_24:
  if (v27 <= 8)
  {
    goto LABEL_26;
  }

  v35[0] = (mlir::OpBuilder::create<mlir::mps::DequantizeLUTOp,mlir::Value &,mlir::Value &,mlir::IntegerAttr &>(builder, v25, v26, v26 + 1, &v32) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v35);

  return DefiningOp;
}

@end