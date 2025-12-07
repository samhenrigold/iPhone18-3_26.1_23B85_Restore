@interface MPSGraphDepthwiseConvolution2DOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphDepthwiseConvolution2DOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v63 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphDepthwiseConvolution2DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphDepthwiseConvolutionOps.mm");
  v11 = nameCopy;
  v62 = 260;
  v61[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v61);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0xA8u, 0);
  if (v11)
  {
    v16 = v11;
    uTF8String = [v11 UTF8String];
    v18 = strlen(uTF8String);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v18;
    if (v18)
    {
      memmove(__dst, uTF8String, v18);
    }

    v20 = __dst + v19;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 21;
    qmemcpy(__dst, "mps.depthwise_conv_2d", 21);
    v20 = &__dst[0].__r_.__value_.__s.__data_[21];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v57, v13, v14);
  v21 = v57.__r_.__value_.__r.__words[0];
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v57;
  }

  v22 = 1;
  HIBYTE(v62) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v61[0] = v21;
    v22 = 3;
  }

  LOBYTE(v62) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v61);
  v50 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
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

  builderCopy = builder;
  if (v53 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  strideInX = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc strideInX];
  strideInY = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc strideInY];
  dilationRateInX = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc dilationRateInX];
  v48 = v11;
  dilationRateInY = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc dilationRateInY];
  paddingLeft = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingLeft];
  paddingRight = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingRight];
  paddingTop = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingTop];
  v47 = paddingLeft;
  paddingBottom = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingBottom];
  v45 = dilationRateInY;
  v32 = strideInX;
  paddingStyle = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingStyle];
  dataLayout = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc dataLayout];
  weightsLayout = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc weightsLayout];
  v54 = v50;
  Context = mlir::Attribute::getContext(&v54);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id, Context);
  if ((v38 & 1) == 0)
  {
    v59 = 1283;
    v57.__r_.__value_.__r.__words[2] = "mps.depthwise_conv_2d";
    v58 = 21;
    v56 = 259;
    llvm::operator+(&v57, &v55, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v61, v50, v37);
  mlir::mps::DepthwiseConv2DOp::build(builderCopy, v61, *v24, v24[1], v32, strideInY, dilationRateInX, v45, v47, paddingRight, paddingTop, paddingBottom, __SPAIR64__(dataLayout, paddingStyle), weightsLayout);
  v39 = mlir::OpBuilder::create(builderCopy, v61);
  v40 = *(*(v39 + 6) + 16);
  mlir::OperationState::~OperationState(v61);
  if (v40 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0;
  }

  v51 = v41 - 16;
  mlir::Value::getDefiningOp(&v51);
  DefiningOp = mlir::Value::getDefiningOp(&v51);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  v35 = tensorCopy;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v12 = [inputTensors objectAtIndexedSubscript:0];

  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  inputTensors = self->super.super._inputTensors;
  if (v12 == tensorCopy)
  {
    v27 = [(NSArray *)inputTensors objectAtIndexedSubscript:0];
    v28 = MEMORY[0x1E696AEC0];
    name = [(MPSGraphOperation *)self name];
    v30 = [v28 stringWithFormat:@"%@/%@/depthwiseConvolution2DDataGradient/shapeOp", nameCopy, name];
    v19 = [WeakRetained shapeOfTensor:v27 name:v30];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
    desc = self->super._desc;
    v32 = MEMORY[0x1E696AEC0];
    name2 = [(MPSGraphOperation *)self name];
    v25 = gradientCopy;
    v26 = [v32 stringWithFormat:@"%@/%@/depthwiseConvolution2DDataGradient", nameCopy, name2];
    [v20 depthwiseConvolution2DDataGradientWithIncomingGradientTensor:gradientCopy weightsTensor:v21 outputShapeTensor:v19 descriptor:desc name:v26];
  }

  else
  {
    v15 = [(NSArray *)inputTensors objectAtIndexedSubscript:1];
    v16 = MEMORY[0x1E696AEC0];
    name3 = [(MPSGraphOperation *)self name];
    v18 = [v16 stringWithFormat:@"%@/%@/convolutionTranspose2DDataGradient/shapeOp", nameCopy, name3];
    v19 = [WeakRetained shapeOfTensor:v15 name:v18];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    v22 = self->super._desc;
    v23 = MEMORY[0x1E696AEC0];
    name2 = [(MPSGraphOperation *)self name];
    v25 = gradientCopy;
    v26 = [v23 stringWithFormat:@"%@/%@/convolution2DWeightsGradient", nameCopy, name2];
    [v20 depthwiseConvolution2DWeightsGradientWithIncomingGradientTensor:gradientCopy sourceTensor:v21 outputShapeTensor:v19 descriptor:v22 name:v26];
  }
  v33 = ;

  return v33;
}

@end