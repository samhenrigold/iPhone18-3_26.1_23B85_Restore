@interface MPSGraphConvolution2DWeightsGradientOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphConvolution2DWeightsGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v65 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphConvolution2DWeightsGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphConvolutionOps.mm");
  v11 = nameCopy;
  v64 = 260;
  v63[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v63);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x19Cu, 0);
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
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v59, v17, v18);
  v20 = v59.__r_.__value_.__r.__words[0];
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v59;
  }

  v21 = 1;
  HIBYTE(v64) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v63[0] = v20;
    v21 = 3;
  }

  LOBYTE(v64) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v63);
  v52 = mlir::NameLoc::get(v22, v13);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
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
  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  v50 = v11;
  v23 = *values;
  v24 = *(values + 1) - *values;
  if (v24 <= 8 || v24 == 16)
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
  v49 = paddingLeft;
  paddingTop = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingTop];
  v47 = dilationRateInY;
  paddingBottom = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingBottom];
  v33 = dilationRateInX;
  v46 = strideInY;
  paddingStyle = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingStyle];
  dataLayout = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc dataLayout];
  weightsLayout = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc weightsLayout];
  v56 = v52;
  Context = mlir::Attribute::getContext(&v56);
  v38 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DWeightsGradientOp,void>::id, Context);
  if ((v39 & 1) == 0)
  {
    v61 = 1283;
    v59.__r_.__value_.__r.__words[2] = "mps.conv_2d_weights_gradient";
    v60 = 28;
    v58 = 259;
    llvm::operator+(&v59, &v57, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v63, v52, v38);
  mlir::mps::Conv2DWeightsGradientOp::build(builderCopy, v63, *v23, v23[1], v23[2], groups, strideInX, v46, v33, v47, v49, paddingRight, paddingTop, paddingBottom, __SPAIR64__(dataLayout, paddingStyle), weightsLayout);
  v40 = mlir::OpBuilder::create(builderCopy, v63);
  v41 = *(*(v40 + 6) + 16);
  mlir::OperationState::~OperationState(v63);
  if (v41 == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DWeightsGradientOp,void>::id)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0;
  }

  v53 = v42 - 16;
  mlir::Value::getDefiningOp(&v53);
  DefiningOp = mlir::Value::getDefiningOp(&v53);

  return DefiningOp;
}

@end