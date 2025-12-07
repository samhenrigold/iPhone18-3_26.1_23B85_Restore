@interface MPSExternalCNNUnary
- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options pluginOptions:(unint64_t)pluginOptions sourceTexture:(id)texture sourceInfo:(id *)info destinationTexture:(id)destinationTexture destinationInfo:(id *)self0;
- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options sourceTexture:(id)texture sourceInfo:(id *)info destinationTexture:(id)destinationTexture destinationInfo:(id *)destinationInfo;
@end

@implementation MPSExternalCNNUnary

- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options sourceTexture:(id)texture sourceInfo:(id *)info destinationTexture:(id)destinationTexture destinationInfo:(id *)destinationInfo
{
  if (MTLReportFailureTypeEnabled())
  {
    v17 = objc_opt_class();
    v23 = NSStringFromClass(v17);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Plugin/MPSCNNKernelPlugin.mm", 0x1A, @"[%@ encodeToCommandBuffer:computeCommandEncoder:options:sourceTexture:sourceInfo:destinationTexture:destinationInfo:]  Error: The device driver has failed to override this method\n", v18, v19, v20, v21);
  }

  objc_msgSend_doesNotRecognizeSelector_(self, v11, a2, v12, v13, v14, v15, v16, v23);
  return 0;
}

- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options pluginOptions:(unint64_t)pluginOptions sourceTexture:(id)texture sourceInfo:(id *)info destinationTexture:(id)destinationTexture destinationInfo:(id *)self0
{
  if (MTLReportFailureTypeEnabled())
  {
    v18 = objc_opt_class();
    v24 = NSStringFromClass(v18);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Plugin/MPSCNNKernelPlugin.mm", 0x28, @"[%@ encodeToCommandBuffer:computeCommandEncoder:options:sourceTexture:sourceInfo:destinationTexture:destinationInfo:]  Error: The device driver has failed to override this method\n", v19, v20, v21, v22);
  }

  objc_msgSend_doesNotRecognizeSelector_(self, v12, a2, v13, v14, v15, v16, v17, v24);
  return 0;
}

@end