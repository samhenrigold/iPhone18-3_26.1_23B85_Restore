@interface MPSCNNInstanceNormalizationNode
+ (MPSCNNInstanceNormalizationNode)nodeWithSource:(MPSNNImageNode *)source dataSource:(id)dataSource;
- (MPSCNNInstanceNormalizationNode)initWithSource:(MPSNNImageNode *)source dataSource:(id)dataSource;
- (void)dealloc;
@end

@implementation MPSCNNInstanceNormalizationNode

+ (MPSCNNInstanceNormalizationNode)nodeWithSource:(MPSNNImageNode *)source dataSource:(id)dataSource
{
  v6 = [self alloc];
  v12 = objc_msgSend_initWithSource_dataSource_(v6, v7, source, dataSource, v8, v9, v10, v11);

  return v12;
}

- (MPSCNNInstanceNormalizationNode)initWithSource:(MPSNNImageNode *)source dataSource:(id)dataSource
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (dataSource)
  {
    v20[0] = source;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v20, 1, v4, v5, v6, v7);
    v19.receiver = self;
    v19.super_class = MPSCNNInstanceNormalizationNode;
    result = [(MPSNNFilterNode *)&v19 initWithSourceImages:v10 sourceStates:0 paddingPolicy:0];
    if (result)
    {
      v12 = result;
      v13 = dataSource;
      result = v12;
      v12->_dataSource = v13;
      v12->_trainingStyle = 2;
    }
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v14 = objc_opt_class();
      NSStringFromClass(v14);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSCNNNormalizationNodes.mm", 0x210, @"[%@ initWithSource:dataSource:] dataSource may not be NULL", v15, v16, v17, v18);
    }

    return 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNInstanceNormalizationNode;
  [(MPSNNFilterNode *)&v3 dealloc];
}

@end