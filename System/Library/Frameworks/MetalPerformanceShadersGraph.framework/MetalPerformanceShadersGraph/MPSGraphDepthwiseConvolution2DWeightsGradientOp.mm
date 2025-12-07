@interface MPSGraphDepthwiseConvolution2DWeightsGradientOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphDepthwiseConvolution2DWeightsGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v64 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphDepthwiseConvolution2DWeightsGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphDepthwiseConvolutionOps.mm");
  v11 = nameCopy;
  v63 = 260;
  v62[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v62);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x12Cu, 0);
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
  v38 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DWeightsGradientOp,void>::id, Context);
  if ((v39 & 1) == 0)
  {
    v60 = 1283;
    v58.__r_.__value_.__r.__words[2] = "mps.depthwise_conv_2d_weights_gradient";
    v59 = 38;
    v57 = 259;
    llvm::operator+(&v58, &v56, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v62, v51, v38);
  mlir::mps::DepthwiseConv2DWeightsGradientOp::build(builderCopy, v62, *v23, v23[1], v23[2], v33, strideInY, dilationRateInX, v32, v48, v47, paddingTop, paddingBottom, __SPAIR64__(dataLayout, paddingStyle), weightsLayout);
  v40 = mlir::OpBuilder::create(builderCopy, v62);
  v41 = *(*(v40 + 6) + 16);
  mlir::OperationState::~OperationState(v62);
  if (v41 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DWeightsGradientOp,void>::id)
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

@end