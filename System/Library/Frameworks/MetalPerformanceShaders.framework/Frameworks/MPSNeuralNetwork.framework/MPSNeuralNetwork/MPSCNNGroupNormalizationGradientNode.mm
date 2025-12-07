@interface MPSCNNGroupNormalizationGradientNode
+ (MPSCNNGroupNormalizationGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState;
- (MPSCNNGroupNormalizationGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter;
- (MPSCNNGroupNormalizationGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState;
@end

@implementation MPSCNNGroupNormalizationGradientNode

+ (MPSCNNGroupNormalizationGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState
{
  v8 = [self alloc];
  v13 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_(v8, v9, sourceGradient, sourceImage, gradientState, v10, v11, v12);

  return v13;
}

- (MPSCNNGroupNormalizationGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState
{
  v21[1] = *MEMORY[0x277D85DE8];
  v21[0] = sourceGradient;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v21, 1, gradientState, v5, v6, v7);
  v20 = sourceImage;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v20, 1, v13, v14, v15, v16);
  v19.receiver = self;
  v19.super_class = MPSCNNGroupNormalizationGradientNode;
  result = [(MPSNNGradientFilterNode *)&v19 initWithGradientImages:v11 sourceImages:v17 gradientState:gradientState paddingPolicy:0];
  if (result)
  {
    result->_trainingStyle = 2;
  }

  return result;
}

- (MPSCNNGroupNormalizationGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13.receiver = self;
    v13.super_class = MPSCNNGroupNormalizationGradientNode;
    return [(MPSNNGradientFilterNode *)&v13 initWithGradientImages:images forwardFilter:filter];
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v8 = objc_opt_class();
      NSStringFromClass(v8);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSCNNNormalizationNodes.mm", 0x358, @"[%@ initWithGradientImages:forwardFilter:] Errr: filter is not a MPSCNNSpatialNormalizationNode", v9, v10, v11, v12);
    }

    return 0;
  }
}

@end