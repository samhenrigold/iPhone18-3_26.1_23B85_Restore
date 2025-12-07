@interface MPSGraphDepthwiseConvolution2DDataGradientOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphDepthwiseConvolution2DDataGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v64 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphDepthwiseConvolution2DDataGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphDepthwiseConvolutionOps.mm");
  v11 = nameCopy;
  v63 = 260;
  v62[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v62);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0xEBu, 0);
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
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v58, v17, v18);
  v20 = v58.__r_.__value_.__r.__words[0];
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v58;
  }

  v21 = 1;
  HIBYTE(v63) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v62[0] = v20;
    v21 = 3;
  }

  LOBYTE(v63) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v62);
  v51 = mlir::NameLoc::get(v22, v13);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
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

  builderCopy = builder;
  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  v23 = *values;
  v24 = *(values + 1) - *values;
  if (v24 <= 8 || v24 == 16)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  strideInX = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc strideInX];
  strideInY = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc strideInY];
  dilationRateInX = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc dilationRateInX];
  v49 = v11;
  dilationRateInY = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc dilationRateInY];
  paddingLeft = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingLeft];
  paddingRight = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingRight];
  paddingTop = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingTop];
  v47 = paddingRight;
  v48 = paddingLeft;
  paddingBottom = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingBottom];
  v32 = dilationRateInY;
  v33 = strideInX;
  paddingStyle = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingStyle];
  dataLayout = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc dataLayout];
  weightsLayout = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc weightsLayout];
  v55 = v51;
  Context = mlir::Attribute::getContext(&v55);
  v38 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id, Context);
  if ((v39 & 1) == 0)
  {
    v60 = 1283;
    v58.__r_.__value_.__r.__words[2] = "mps.depthwise_conv_2d_data_gradient";
    v59 = 35;
    v57 = 259;
    llvm::operator+(&v58, &v56, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v62, v51, v38);
  mlir::mps::DepthwiseConv2DDataGradientOp::build(builderCopy, v62, *v23, v23[1], v23[2], v33, strideInY, dilationRateInX, v32, v48, v47, paddingTop, paddingBottom, __SPAIR64__(dataLayout, paddingStyle), weightsLayout);
  v40 = mlir::OpBuilder::create(builderCopy, v62);
  v41 = *(*(v40 + 6) + 16);
  mlir::OperationState::~OperationState(v62);
  if (v41 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0;
  }

  v52 = v42 - 16;
  mlir::Value::getDefiningOp(&v52);
  DefiningOp = mlir::Value::getDefiningOp(&v52);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  v30 = tensorCopy;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v13 = [inputTensors objectAtIndexedSubscript:0];

  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
  if (v13 == tensorCopy)
    v20 = {;
    desc = self->super._desc;
    v28 = MEMORY[0x1E696AEC0];
    name = [(MPSGraphOperation *)self name];
    name3 = [v28 stringWithFormat:@"%@/%@/depthwiseConvolution2DDataGradient", nameCopy, name];
    v26 = [WeakRetained depthwiseConvolution2DWithSourceTensor:gradientCopy weightsTensor:v20 descriptor:desc name:name3];
  }

  else
    v15 = {;
    v16 = MEMORY[0x1E696AEC0];
    name2 = [(MPSGraphOperation *)self name];
    v18 = [v16 stringWithFormat:@"%@/%@/depthwiseConvolution2DDataGradient/shapeOp", nameCopy, name2];
    v19 = [WeakRetained shapeOfTensor:v15 name:v18];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    name = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    v22 = self->super._desc;
    v23 = MEMORY[0x1E696AEC0];
    name3 = [(MPSGraphOperation *)self name];
    v25 = [v23 stringWithFormat:@"%@/%@/depthwiseConvolution2DWeightsGradient", nameCopy, name3];
    v26 = [v20 depthwiseConvolution2DWeightsGradientWithIncomingGradientTensor:name sourceTensor:gradientCopy outputShapeTensor:v19 descriptor:v22 name:v25];

    WeakRetained = v19;
  }

  return v26;
}

@end