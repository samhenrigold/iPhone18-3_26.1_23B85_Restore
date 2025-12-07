@interface MPSCNNDepthWiseConvolutionDescriptor
- (MPSCNNDepthWiseConvolutionDescriptor)init;
- (MPSCNNDepthWiseConvolutionDescriptor)initWithKernelWidth:(unint64_t)width kernelHeight:(unint64_t)height inputFeatureChannels:(unint64_t)channels outputFeatureChannels:(unint64_t)featureChannels;
- (id)debugDescription;
@end

@implementation MPSCNNDepthWiseConvolutionDescriptor

- (MPSCNNDepthWiseConvolutionDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSCNNDepthWiseConvolutionDescriptor;
  result = [(MPSCNNConvolutionDescriptor *)&v3 init];
  if (result)
  {
    result->super._depthWiseConvolution = 1;
  }

  return result;
}

- (MPSCNNDepthWiseConvolutionDescriptor)initWithKernelWidth:(unint64_t)width kernelHeight:(unint64_t)height inputFeatureChannels:(unint64_t)channels outputFeatureChannels:(unint64_t)featureChannels
{
  v13.receiver = self;
  v13.super_class = MPSCNNDepthWiseConvolutionDescriptor;
  result = [(MPSCNNConvolutionDescriptor *)&v13 initWithKernelWidth:width kernelHeight:height inputFeatureChannels:channels outputFeatureChannels:featureChannels];
  if (result)
  {
    if (result->super._outputFeatureChannels % result->super._inputFeatureChannels)
    {
      v7 = result;
      v12 = MTLReportFailureTypeEnabled();
      result = v7;
      if (v12)
      {
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x2DA, @"outputFeatureChannels (%lu) in convolution descriptor must be multiple of _inputFeatureChannels (%lu)\n", v8, v9, v10, v11);
        result = v7;
      }
    }

    result->super._depthWiseConvolution = 1;
  }

  return result;
}

- (id)debugDescription
{
  v20.receiver = self;
  v20.super_class = MPSCNNDepthWiseConvolutionDescriptor;
  v3 = [(MPSCNNConvolutionDescriptor *)&v20 debugDescription];
  v4 = MEMORY[0x277CCACA8];
  v12 = objc_msgSend_channelMultiplier(self, v5, v6, v7, v8, v9, v10, v11);
  return objc_msgSend_stringWithFormat_(v4, v13, @"%@\n\tchannelMultiplier:    %lu\n", v14, v15, v16, v17, v18, v3, v12);
}

@end