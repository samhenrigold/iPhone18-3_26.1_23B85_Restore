@interface MPSExternalCNNPoolingAverage
- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options sourceTexture:(id)texture sourceInfo:(id *)info destinationTexture:(id)destinationTexture destinationInfo:(id *)destinationInfo zeroPadSizeX:(unint64_t)self0 zeroPadSizeY:(unint64_t)self1;
@end

@implementation MPSExternalCNNPoolingAverage

- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options sourceTexture:(id)texture sourceInfo:(id *)info destinationTexture:(id)destinationTexture destinationInfo:(id *)destinationInfo zeroPadSizeX:(unint64_t)self0 zeroPadSizeY:(unint64_t)self1
{
  v13 = MTLReportFailureTypeEnabled();
  v20 = *MEMORY[0x277CD72E0];
  if (v13)
  {
    v21 = objc_opt_class();
    v27 = NSStringFromClass(v21);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Plugin/MPSCNNKernelPlugin.mm", 0x1C4, @"[%@ encodeToCommandBuffer:computeCommandEncoder:options:sourceTexture:sourceInfo:destinationTexture:destinationInfo:zeroPadSizeX:zeroPadSizeY:]  Error: The device driver has failed to override this method\n", v22, v23, v24, v25);
  }

  objc_msgSend_doesNotRecognizeSelector_(*(&self->super.super.super.isa + v20), v14, a2, v15, v16, v17, v18, v19, v27);
  return 0;
}

@end