@interface MPSGraphInitRandomPhiloxStateOp
- (MPSGraphInitRandomPhiloxStateOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies counterLow:(unint64_t)low counterHigh:(unint64_t)high key:(unint64_t)key name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphInitRandomPhiloxStateOp

- (MPSGraphInitRandomPhiloxStateOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies counterLow:(unint64_t)low counterHigh:(unint64_t)high key:(unint64_t)key name:(id)name
{
  self->_counterLow = low;
  self->_counterHigh = high;
  self->_key = key;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v47 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphInitRandomPhiloxStateOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRandomOps.mm");
  v11 = nameCopy;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v42);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0xB1u, 0);
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
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v46, v17, v18);
  v20 = v46.__r_.__value_.__r.__words[0];
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v46;
  }

  v21 = 1;
  HIBYTE(v43) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v20;
    v21 = 3;
  }

  LOBYTE(v43) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v42);
  v23 = mlir::NameLoc::get(v22, v13);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
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

  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  v46.__r_.__value_.__r.__words[0] = 1;
  IntegerType = mlir::Builder::getIntegerType(builder, 64, 1);
  v25 = mlir::RankedTensorType::get(&v46, 1, IntegerType, 0);
  if (v25)
  {
    v26 = v25;
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
    v25 = v26;
  }

  else
  {
    v27 = 0;
  }

  counterLow = self->_counterLow;
  __dst.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, &counterLow, 8);
  v42[0] = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(builder, v23, &__dst) - 16);
  counterLow = 1;
  v28 = mlir::Builder::getIntegerType(builder, 64, 1);
  v29 = mlir::RankedTensorType::get(&counterLow, 1, v28, 0);
  if (v29)
  {
    v30 = v29;
    v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
    v29 = v30;
  }

  else
  {
    v31 = 0;
  }

  counterHigh = self->_counterHigh;
  v46.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v29, v31, &counterHigh, 8);
  __dst.__r_.__value_.__r.__words[0] = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(builder, v23, &v46) - 16);
  counterHigh = 1;
  v32 = mlir::Builder::getIntegerType(builder, 64, 1);
  v33 = mlir::RankedTensorType::get(&counterHigh, 1, v32, 0);
  if (v33)
  {
    v34 = v33;
    v35 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
    v33 = v34;
  }

  else
  {
    v35 = 0;
  }

  key = self->_key;
  counterLow = mlir::DenseElementsAttr::getFromRawBuffer(v33, v35, &key, 8);
  v46.__r_.__value_.__r.__words[0] = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(builder, v23, &counterLow) - 16);
  counterLow = (mlir::OpBuilder::create<mlir::mps::InitRandomPhiloxStateOp,mlir::Value &,mlir::Value &,mlir::Value &>(builder, v23, v42, &__dst, &v46) - 16);
  DefiningOp = mlir::Value::getDefiningOp(&counterLow);

  return DefiningOp;
}

@end