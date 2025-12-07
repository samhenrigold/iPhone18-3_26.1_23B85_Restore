@interface MPSGraphAvgPool4DGradientOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphAvgPool4DGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v15 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(&__p, "[MPSGraphAvgPool4DGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm");
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolAvgGradientOp>(table, builder, &__p, 0x2B8u, nameCopy);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(values + 1) - *values > 8uLL)
  {
    kernelSizes = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
    nsArrayToAttr(kernelSizes, builder);
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

@end