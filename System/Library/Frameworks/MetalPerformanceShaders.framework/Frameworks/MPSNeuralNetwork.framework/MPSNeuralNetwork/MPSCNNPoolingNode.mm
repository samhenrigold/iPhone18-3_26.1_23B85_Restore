@interface MPSCNNPoolingNode
+ (MPSCNNPoolingNode)nodeWithSource:(MPSNNImageNode *)sourceNode filterSize:(NSUInteger)size;
+ (MPSCNNPoolingNode)nodeWithSource:(MPSNNImageNode *)sourceNode filterSize:(NSUInteger)size stride:(NSUInteger)stride;
- (MPSCNNPoolingNode)initWithSource:(MPSNNImageNode *)sourceNode kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY;
- (void)newFilterNode;
@end

@implementation MPSCNNPoolingNode

+ (MPSCNNPoolingNode)nodeWithSource:(MPSNNImageNode *)sourceNode filterSize:(NSUInteger)size
{
  v6 = [self alloc];
  v12 = objc_msgSend_initWithSource_filterSize_(v6, v7, sourceNode, size, v8, v9, v10, v11);

  return v12;
}

+ (MPSCNNPoolingNode)nodeWithSource:(MPSNNImageNode *)sourceNode filterSize:(NSUInteger)size stride:(NSUInteger)stride
{
  v8 = [self alloc];
  v13 = objc_msgSend_initWithSource_filterSize_stride_(v8, v9, sourceNode, size, stride, v10, v11, v12);

  return v13;
}

- (MPSCNNPoolingNode)initWithSource:(MPSNNImageNode *)sourceNode kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (!kernelWidth)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v15 = objc_opt_class();
      NSStringFromClass(v15);
      v20 = @"[%@ initWithSource:kernelWidth:kernelHeight:strideInPixelsX:strideInPixelsY]: kernelWidth may not be 0";
      v21 = 50;
LABEL_10:
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSCNNPoolingNodes.mm", v21, v20, v16, v17, v18, v19);
    }

LABEL_11:

    return 0;
  }

  if (!kernelHeight)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v22 = objc_opt_class();
      NSStringFromClass(v22);
      v20 = @"[%@ initWithSource:kernelWidth:kernelHeight:strideInPixelsX:strideInPixelsY]: kernelHeight may not be 0";
      v21 = 51;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v24[0] = sourceNode;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v24, 1, kernelHeight, strideInPixelsX, strideInPixelsY, v7);
  v23.receiver = self;
  v23.super_class = MPSCNNPoolingNode;
  result = [(MPSNNFilterNode *)&v23 initWithSourceImages:v13 sourceStates:0 paddingPolicy:0];
  if (result)
  {
    result->_kernelWidth = kernelWidth;
    result->_kernelHeight = kernelHeight;
    result->_strideInPixelsX = strideInPixelsX;
    result->_strideInPixelsY = strideInPixelsY;
  }

  return result;
}

- (void)newFilterNode
{
  if (MTLReportFailureTypeEnabled())
  {
    v2 = objc_opt_class();
    NSStringFromClass(v2);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSCNNPoolingNodes.mm", 0x5C, @"MPS internal error: Need to override newFilterNodeForDevice for %@\n", v3, v4, v5, v6);
  }

  return 0;
}

@end