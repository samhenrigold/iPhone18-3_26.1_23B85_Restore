@interface MPSCNNLossNode
+ (MPSCNNLossNode)nodeWithSource:(MPSNNImageNode *)source lossDescriptor:(MPSCNNLossDescriptor *)descriptor;
- (MPSCNNLossNode)initWithSource:(MPSNNImageNode *)source lossDescriptor:(MPSCNNLossDescriptor *)descriptor;
- (MPSNNGradientFilterNode)gradientFilterWithSources:(NSArray *)gradientImages;
- (id)trainingGraphWithSourceGradient:(id)gradient nodeHandler:(id)handler;
- (void)dealloc;
@end

@implementation MPSCNNLossNode

+ (MPSCNNLossNode)nodeWithSource:(MPSNNImageNode *)source lossDescriptor:(MPSCNNLossDescriptor *)descriptor
{
  v6 = [self alloc];
  v12 = objc_msgSend_initWithSource_lossDescriptor_(v6, v7, source, descriptor, v8, v9, v10, v11);

  return v12;
}

- (MPSCNNLossNode)initWithSource:(MPSNNImageNode *)source lossDescriptor:(MPSCNNLossDescriptor *)descriptor
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (descriptor)
  {
    v7 = [MPSNNLabelsNode alloc];
    v14 = objc_msgSend_initWithParent_(v7, v8, 0, v9, v10, v11, v12, v13);
    v37[0] = source;
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v37, 1, v16, v17, v18, v19);
    v36 = v14;
    v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, &v36, 1, v22, v23, v24, v25);
    v35.receiver = self;
    v35.super_class = MPSCNNLossNode;
    v27 = [(MPSNNFilterNode *)&v35 initWithSourceImages:v20 sourceStates:v26 paddingPolicy:0];
    v28 = descriptor;
    result = v27;
    v27->_descriptor = v28;
    v27->_labels = v14;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v30 = objc_opt_class();
      NSStringFromClass(v30);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MetalPerformanceShaders/MPSNNLossNode.mm", 0x2E, @"[%@ initWithSource:labels:lossDescriptor:] descriptor may not be nil", v31, v32, v33, v34);
    }

    return 0;
  }

  return result;
}

- (MPSNNGradientFilterNode)gradientFilterWithSources:(NSArray *)gradientImages
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MetalPerformanceShaders/MPSNNLossNode.mm", 0x40, @"[%@ gradientFilterWithSources:] Error: the MPSNNLoss filter doesn't have a corresponding loss gradient filter.\n\tIt produces the gradient directly as its MPSImage destination and consequently acts as its own gradient filter.", v4, v5, v6, v7);
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNLossNode;
  [(MPSNNFilterNode *)&v3 dealloc];
}

- (id)trainingGraphWithSourceGradient:(id)gradient nodeHandler:(id)handler
{
  gradientCopy = gradient;
  v25[1] = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_resultImage(self, a2, gradient, handler, v4, v5, v6, v7);
  if (gradientCopy)
  {
    if (v11 != gradientCopy && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MetalPerformanceShaders/MPSNNLossNode.mm", 0x59, @"Error: loss nodes do not have a separate gradient pass. The gradient image must either be nil or lossNode.resultImage.", v14, v15, v16, v17);
    }
  }

  else
  {
    gradientCopy = v11;
  }

  v18 = *(objc_msgSend_objectAtIndexedSubscript_(self->super._sourceImages, v12, 0, v13, v14, v15, v16, v17) + 16);
  if (v18)
  {

    return MEMORY[0x2821F9670](v18, sel_trainingGraphWithSourceGradient_nodeHandler_, gradientCopy, handler, v20, v21, v22, v23);
  }

  else
  {
    v25[0] = self;
    return objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v25, 1, v20, v21, v22, v23);
  }
}

@end