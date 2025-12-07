@interface MPSGraphDequantizeOp
- (MPSGraphDequantizeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dataType:(unsigned int)type axis:(id)axis name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphDequantizeOp

- (MPSGraphDequantizeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dataType:(unsigned int)type axis:(id)axis name:(id)name
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
  v22 = 0;
  v23 = mlir::TypeAttr::get(MLIRElementType);
  if (self->_axis)
  {
    IntegerType = mlir::Builder::getIntegerType(builder, 32, 1);
    v22 = mlir::IntegerAttr::get(IntegerType, [(NSNumber *)self->_axis intValue]);
  }

  mpsFileLoc(&__p, "[MPSGraphDequantizeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphQuantizationOps.mm");
  v14 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::DequantizeOp>(table, builder, &__p, 0x74u, nameCopy);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v15 = *values;
    v16 = *(values + 1);
    v17 = v16 - *values;
    if (v17 == 24)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = *values;
    v16 = *(values + 1);
    v17 = v16 - *values;
    if (v17 == 24)
    {
LABEL_5:
      v18 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr &,mlir::IntegerAttr &>(builder, v14, v15, v15 + 1, v15 + 2, &v23, &v22);
      goto LABEL_10;
    }
  }

  if (v16 == v15 || v17 <= 0x1F)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v18 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr &,mlir::IntegerAttr &>(builder, v14, v15, v15 + 1, v15 + 2, v15 + 3, &v23, &v22);
LABEL_10:
  v19 = v18;

  return v19;
}

@end