@interface MPSGraphMaxPooling2DGradientOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphMaxPooling2DGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v17 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(&__p, "[MPSGraphMaxPooling2DGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm");
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolMaxGradientOp>(table, builder, &__p, 0x19Fu, nameCopy);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kernelWidth = [(MPSGraphPooling2DOpDescriptor *)self->super._desc kernelWidth];
  kernelHeight = [(MPSGraphPooling2DOpDescriptor *)self->super._desc kernelHeight];
  dataLayout = [(MPSGraphPooling2DOpDescriptor *)self->super._desc dataLayout];
  xyValTo4dAttr(kernelWidth, kernelHeight, dataLayout, builder, v13);
}

@end