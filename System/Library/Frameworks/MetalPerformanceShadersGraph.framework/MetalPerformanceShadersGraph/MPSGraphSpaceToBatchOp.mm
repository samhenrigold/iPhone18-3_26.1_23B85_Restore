@interface MPSGraphSpaceToBatchOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphSpaceToBatchOp

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v11 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:1];
  v12 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:2];
  v13 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:3];
  pixelShuffleOrder = self->_pixelShuffleOrder;
  v15 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v17 = [v15 stringWithFormat:@"%@/%@/spaceToBatchGradient", nameCopy, name];
  v18 = [WeakRetained batchToSpaceTensor:gradientCopy spatialAxesTensor:v11 batchAxisTensor:v12 blockDimensionsTensor:v13 usePixelShuffleOrder:pixelShuffleOrder name:v17];

  return v18;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v47 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphSpaceToBatchOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm");
  v12 = nameCopy;
  v46 = 260;
  v45[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v45);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x490u, 0);
  if (v12)
  {
    v17 = v12;
    uTF8String = [v12 UTF8String];
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

    *(&__dst[0].__r_.__value_.__s + 23) = v19;
    if (v19)
    {
      memmove(__dst, uTF8String, v19);
    }

    v21 = __dst + v20;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 18;
    LOWORD(__dst[0].__r_.__value_.__r.__words[2]) = 26723;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.space_to_batch";
    v21 = &__dst[0].__r_.__value_.__s.__data_[18];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v41, v14, v15);
  v22 = v41.__r_.__value_.__r.__words[0];
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v41;
  }

  v23 = 1;
  HIBYTE(v46) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v45[0] = v22;
    v23 = 3;
  }

  LOBYTE(v46) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v45);
  v25 = mlir::NameLoc::get(v24, v16);
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

  v26 = *values;
  if (*(values + 1) - *values < 0x20uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v38 = v25;
  Context = mlir::Attribute::getContext(&v38);
  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SpaceToBatchOp,void>::id, Context);
  if ((v29 & 1) == 0)
  {
    v43 = 1283;
    v41.__r_.__value_.__r.__words[2] = "mps.space_to_batch";
    v42 = 18;
    v40 = 259;
    llvm::operator+(&v41, &v39, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v45, v25, v28);
  mlir::mps::SpaceToBatchOp::build(builder, v45, *v26, v26[1], v26[2], v26[3], self->_pixelShuffleOrder);
  v30 = mlir::OpBuilder::create(builder, v45);
  v31 = *(*(v30 + 6) + 16);
  mlir::OperationState::~OperationState(v45);
  if (v31 == &mlir::detail::TypeIDResolver<mlir::mps::SpaceToBatchOp,void>::id)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  v35 = v32 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v35);

  return DefiningOp;
}

@end