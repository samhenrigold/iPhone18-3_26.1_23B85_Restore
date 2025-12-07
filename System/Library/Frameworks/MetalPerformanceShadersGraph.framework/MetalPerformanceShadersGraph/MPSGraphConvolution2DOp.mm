@interface MPSGraphConvolution2DOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphConvolution2DOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v64 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphConvolution2DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphConvolutionOps.mm");
  v11 = nameCopy;
  v63 = 260;
  v62[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v62);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x118u, 0);
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

    *(&__dst.__r_.__value_.__s + 23) = v18;
    if (v18)
    {
      memmove(&__dst, uTF8String, v18);
    }

    v20 = &__dst + v19;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 11;
    *(__dst.__r_.__value_.__r.__words + 7) = 1681022838;
    __dst.__r_.__value_.__r.__words[0] = *"mps.conv_2d";
    v20 = &__dst.__r_.__value_.__s.__data_[11];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v58, v13, v14);
  v21 = v58.__r_.__value_.__r.__words[0];
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v58;
  }

  v22 = 1;
  HIBYTE(v63) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v62[0] = v21;
    v22 = 3;
  }

  LOBYTE(v63) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v62);
  v51 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  builderCopy = builder;
  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  v49 = v11;
  v24 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  groups = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc groups];
  strideInX = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc strideInX];
  strideInY = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc strideInY];
  dilationRateInX = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc dilationRateInX];
  dilationRateInY = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc dilationRateInY];
  paddingLeft = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingLeft];
  paddingRight = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingRight];
  paddingTop = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingTop];
  v46 = paddingLeft;
  paddingBottom = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingBottom];
  v32 = dilationRateInY;
  v45 = dilationRateInX;
  paddingStyle = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingStyle];
  dataLayout = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc dataLayout];
  weightsLayout = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc weightsLayout];
  v55 = v51;
  Context = mlir::Attribute::getContext(&v55);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id, Context);
  if ((v38 & 1) == 0)
  {
    v60 = 1283;
    v58.__r_.__value_.__r.__words[2] = "mps.conv_2d";
    v59 = 11;
    v57 = 259;
    llvm::operator+(&v58, &v56, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v62, v51, v37);
  mlir::mps::Conv2DOp::build(builderCopy, v62, *v24, v24[1], groups, strideInX, strideInY, v45, v32, v46, paddingRight, paddingTop, paddingBottom, __SPAIR64__(dataLayout, paddingStyle), weightsLayout);
  v39 = mlir::OpBuilder::create(builderCopy, v62);
  v40 = *(*(v39 + 6) + 16);
  mlir::OperationState::~OperationState(v62);
  if (v40 == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0;
  }

  v52 = v41 - 16;
  mlir::Value::getDefiningOp(&v52);
  DefiningOp = mlir::Value::getDefiningOp(&v52);

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
    v30 = [v28 stringWithFormat:@"%@/%@/convolutionTranspose2DDataGradient/shapeOp", nameCopy, name];
    v19 = [WeakRetained shapeOfTensor:v27 name:v30];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
    desc = self->super._desc;
    v32 = MEMORY[0x1E696AEC0];
    name2 = [(MPSGraphOperation *)self name];
    v25 = gradientCopy;
    v26 = [v32 stringWithFormat:@"%@/%@/convolution2DDataGradient", nameCopy, name2];
    [v20 convolution2DDataGradientWithIncomingGradientTensor:gradientCopy weightsTensor:v21 outputShapeTensor:v19 forwardConvolutionDescriptor:desc name:v26];
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
    [v20 convolution2DWeightsGradientWithIncomingGradientTensor:gradientCopy sourceTensor:v21 outputShapeTensor:v19 forwardConvolutionDescriptor:v22 name:v26];
  }
  v33 = ;

  return v33;
}

@end