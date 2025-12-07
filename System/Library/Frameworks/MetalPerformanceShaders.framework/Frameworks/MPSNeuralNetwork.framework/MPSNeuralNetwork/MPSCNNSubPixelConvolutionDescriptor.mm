@interface MPSCNNSubPixelConvolutionDescriptor
- (void)setSubPixelScaleFactor:(NSUInteger)subPixelScaleFactor;
@end

@implementation MPSCNNSubPixelConvolutionDescriptor

- (void)setSubPixelScaleFactor:(NSUInteger)subPixelScaleFactor
{
  outputFeatureChannels = self->super._outputFeatureChannels;
  v4 = subPixelScaleFactor * subPixelScaleFactor;
  if (outputFeatureChannels % (subPixelScaleFactor * subPixelScaleFactor))
  {
    v5 = subPixelScaleFactor;
    selfCopy = self;
    v7 = MTLReportFailureTypeEnabled();
    outputFeatureChannels = selfCopy->super._outputFeatureChannels;
    if (v7)
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x2AD, @"outputFeatureChannels (%lu) in convolution descriptor must be multiple of scaleFactor*scaleFactor=%lu becuase these values are rearragned in scaleFactor x scaleFactor pixel block by sub pixel convolution with each pixel having outputFeatureChannels/(scaleFactor*scaleFactor) channels\n", v8, v9, v10, v11);
      self = selfCopy;
      outputFeatureChannels = selfCopy->super._outputFeatureChannels;
    }

    else
    {
      self = selfCopy;
    }

    subPixelScaleFactor = v5;
    if (self->super._groups < 2)
    {
      goto LABEL_4;
    }
  }

  else if (self->super._groups < 2)
  {
LABEL_4:
    self->super._subPixelScaleFactor = subPixelScaleFactor;
    return;
  }

  if (((outputFeatureChannels / v4) & 3) == 0)
  {
    goto LABEL_4;
  }

  selfCopy2 = self;
  v13 = subPixelScaleFactor;
  v14 = MTLReportFailureTypeEnabled();
  subPixelScaleFactor = v13;
  v19 = v14;
  self = selfCopy2;
  if (!v19)
  {
    goto LABEL_4;
  }

  MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x2B3, @"When number of groups (%lu) is greater than 1, number of feature channel in upsampled output image (outputFeatureChannels/(scaleFactor*scaleFactor)) (%lu) must be multiple of 4\n", v15, v16, v17, v18);
  selfCopy2->super._subPixelScaleFactor = v13;
}

@end