@interface MPSNNConcatenationGradientNode
+ (MPSNNConcatenationGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)gradientSourceNode sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState;
- (MPSNNConcatenationGradientNode)initWithSourceGradient:(MPSNNImageNode *)gradientSourceNode sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState;
@end

@implementation MPSNNConcatenationGradientNode

+ (MPSNNConcatenationGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)gradientSourceNode sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState
{
  v8 = objc_alloc(objc_opt_class());
  v13 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_(v8, v9, gradientSourceNode, sourceImage, gradientState, v10, v11, v12);

  return v13;
}

- (MPSNNConcatenationGradientNode)initWithSourceGradient:(MPSNNImageNode *)gradientSourceNode sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState
{
  v51[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_9;
    }

    v48 = objc_opt_class();
    NSStringFromClass(v48);
    v38 = @"[%@ initWithSourceGradient:sourceImage:gradientState:] Error: the gradient state was not produced by a MPSNNConcatenationNode.";
    v39 = 278;
    goto LABEL_8;
  }

  v16 = objc_msgSend_sourceImages(gradientState->super._parent, v9, v10, v11, v12, v13, v14, v15);
  v24 = objc_msgSend_count(v16, v17, v18, v19, v20, v21, v22, v23);
  if (!v24)
  {
LABEL_6:
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_9:

      return 0;
    }

    v33 = objc_opt_class();
    NSStringFromClass(v33);
    v38 = @"[%@ initWithSourceGradient:sourceImage:gradientState:] Error: the sourceImage provided was not among the input images to the MPSNNConcatenationNode";
    v39 = 290;
LABEL_8:
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNConcatenationNode.mm", v39, v38, v34, v35, v36, v37);
    goto LABEL_9;
  }

  v31 = v24;
  v32 = 0;
  while (objc_msgSend_objectAtIndexedSubscript_(v16, v25, v32, v26, v27, v28, v29, v30) != sourceImage)
  {
    if (v31 == ++v32)
    {
      goto LABEL_6;
    }
  }

  v51[0] = gradientSourceNode;
  v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, v51, 1, v27, v28, v29, v30);
  v50 = sourceImage;
  v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, &v50, 1, v43, v44, v45, v46);
  v49.receiver = self;
  v49.super_class = MPSNNConcatenationGradientNode;
  result = [(MPSNNGradientFilterNode *)&v49 initWithGradientImages:v41 sourceImages:v47 gradientState:gradientState paddingPolicy:0];
  if (result)
  {
    result->_sourceIndex = v32;
  }

  return result;
}

@end