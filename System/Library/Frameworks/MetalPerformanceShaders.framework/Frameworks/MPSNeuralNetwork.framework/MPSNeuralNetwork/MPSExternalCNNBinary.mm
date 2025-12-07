@interface MPSExternalCNNBinary
- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options primaryTexture:(id)texture primaryInfo:(id *)info secondaryTexture:(id)secondaryTexture secondaryInfo:(id *)secondaryInfo destinationTexture:(id)self0 destinationInfo:(id *)self1;
@end

@implementation MPSExternalCNNBinary

- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options primaryTexture:(id)texture primaryInfo:(id *)info secondaryTexture:(id)secondaryTexture secondaryInfo:(id *)secondaryInfo destinationTexture:(id)self0 destinationInfo:(id *)self1
{
  if (MTLReportFailureTypeEnabled())
  {
    v19 = objc_opt_class();
    v25 = NSStringFromClass(v19);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Plugin/MPSCNNKernelPlugin.mm", 0xD1, @"[%@ encodeToCommandBuffer:computeCommandEncoder:primaryTexture:primaryInfo:secondaryTexture:secondaryInfo:destinationTexture:destinationInfo:]  Error: The device driver has failed to override this method\n", v20, v21, v22, v23);
  }

  objc_msgSend_doesNotRecognizeSelector_(self, v13, a2, v14, v15, v16, v17, v18, v25);
  return 0;
}

@end