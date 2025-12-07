@interface MPSCNNMultiaryKernel
- (MPSCNNMultiaryKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNMultiaryKernel)initWithDevice:(id)device;
- (MPSCNNMultiaryKernel)initWithDevice:(id)device sourceCount:(NSUInteger)sourceCount;
- (MPSImageDescriptor)destinationImageDescriptorForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates;
- (MPSImageEdgeMode)edgeModeAtIndex:(NSUInteger)index;
- (MPSOffset)offsetAtIndex:(SEL)index;
- (MPSState)resultStateForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSStateBatch)resultStateBatchForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MPSStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MTLRegion)clipRect;
- (NSUInteger)dilationRateXatIndex:(NSUInteger)index;
- (NSUInteger)dilationRateYatIndex:(NSUInteger)index;
- (NSUInteger)kernelHeightAtIndex:(NSUInteger)index;
- (NSUInteger)kernelWidthAtIndex:(NSUInteger)index;
- (NSUInteger)sourceFeatureChannelMaxCountAtIndex:(NSUInteger)index;
- (NSUInteger)sourceFeatureChannelOffsetAtIndex:(NSUInteger)index;
- (NSUInteger)strideInPixelsXatIndex:(NSUInteger)index;
- (NSUInteger)strideInPixelsYatIndex:(NSUInteger)index;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images destinationStates:(id *)states destinationStateIsTemporary:(BOOL)temporary;
- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images sourceStates:(id)states;
- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images destinationState:(id *)state destinationStateIsTemporary:(BOOL)temporary;
- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inState:(id)state;
- (void)copyToGradientState:(id)state sourceImages:(id)images sourceStates:(id)states destinationImage:(id)image;
- (void)dealloc;
- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages;
- (void)encodeInternalBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages clipRect:(id *)rect;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inState:(id)state destinationImage:(id)image;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRect:(MTLRegion *)clipRect;
- (void)setDilationRateX:(NSUInteger)dilationRate atIndex:(NSUInteger)index;
- (void)setDilationRateY:(NSUInteger)dilationRate atIndex:(NSUInteger)index;
- (void)setEdgeMode:(MPSImageEdgeMode)edgeMode atIndex:(NSUInteger)index;
- (void)setKernelHeight:(NSUInteger)height atIndex:(NSUInteger)index;
- (void)setKernelWidth:(NSUInteger)width atIndex:(NSUInteger)index;
- (void)setOffset:(MPSOffset *)offset atIndex:(NSUInteger)index;
- (void)setOffset:(id *)offset;
- (void)setSourceFeatureChannelMaxCount:(NSUInteger)count atIndex:(NSUInteger)index;
- (void)setSourceFeatureChannelOffset:(NSUInteger)offset atIndex:(NSUInteger)index;
- (void)setStrideInPixelsX:(NSUInteger)stride atIndex:(NSUInteger)index;
- (void)setStrideInPixelsY:(NSUInteger)stride atIndex:(NSUInteger)index;
@end

@implementation MPSCNNMultiaryKernel

- (MPSCNNMultiaryKernel)initWithDevice:(id)device sourceCount:(NSUInteger)sourceCount
{
  v6.receiver = self;
  v6.super_class = MPSCNNMultiaryKernel;
  v4 = [(MPSKernel *)&v6 initWithDevice:device];
  if (v4)
  {
    is_mul_ok(v4->_srcCount, 0x60uLL);
    operator new[]();
  }

  return 0;
}

- (MPSCNNMultiaryKernel)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v5 = objc_opt_class();
    NSStringFromClass(v5);
    NSStringFromSelector(a2);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x3D, @"[%@ %@] Error: method not available. Use -initWithDevice:sourceCount: instead.", v6, v7, v8, v9);
  }

  return 0;
}

- (void)dealloc
{
  srcInfo = self->_srcInfo;
  if (srcInfo)
  {
    MEMORY[0x23EE7D120](srcInfo, 0x1000C80565EDBD2);
  }

  self->_srcInfo = 0;

  self->_destinationImageAllocator = 0;
  self->_padding = 0;
  v4.receiver = self;
  v4.super_class = MPSCNNMultiaryKernel;
  [(MPSKernel *)&v4 dealloc];
}

- (MPSOffset)offsetAtIndex:(SEL)index
{
  if ((*(&self->x + *MEMORY[0x277CD7378]) & 1) == 0 && self[4].x <= index)
  {
    selfCopy = self;
    v5 = retstr;
    indexCopy = index;
    v8 = MTLReportFailureTypeEnabled();
    index = indexCopy;
    retstr = v5;
    v9 = v8;
    self = selfCopy;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(index);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x5B, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v11, v12, v13, v14);
      self = selfCopy;
      index = indexCopy;
      retstr = v5;
    }
  }

  *retstr = *(self[3].z + 96 * index);
  return self;
}

- (void)setOffset:(MPSOffset *)offset atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v7 = offset;
    v8 = index;
    v10 = MTLReportFailureTypeEnabled();
    index = v8;
    offset = v7;
    v11 = v10;
    self = selfCopy;
    if (v11)
    {
      v12 = objc_opt_class();
      NSStringFromClass(v12);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x74, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v13, v14, v15, v16);
      self = selfCopy;
      index = v8;
      offset = v7;
    }
  }

  v4 = &self->_srcInfo[index];
  z = offset->z;
  *&v4->var0.var0 = *&offset->x;
  v4->var0.var2 = z;
}

- (void)setOffset:(id *)offset
{
  srcInfo = self->_srcInfo;
  var2 = offset->var2;
  *&srcInfo->var0.var0 = *&offset->var0;
  srcInfo->var0.var2 = var2;
}

- (NSUInteger)sourceFeatureChannelOffsetAtIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = selfCopy;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x96, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v10, v11, v12, v13);
      self = selfCopy;
      index = v5;
    }
  }

  return self->_srcInfo[index].var1;
}

- (void)setSourceFeatureChannelOffset:(NSUInteger)offset atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = offset;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    offset = v5;
    v9 = v8;
    self = selfCopy;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0xB8, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v11, v12, v13, v14);
      self = selfCopy;
      index = v6;
      offset = v5;
    }
  }

  self->_srcInfo[index].var1 = offset;
}

- (NSUInteger)sourceFeatureChannelMaxCountAtIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = selfCopy;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0xD2, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v10, v11, v12, v13);
      self = selfCopy;
      index = v5;
    }
  }

  return self->_srcInfo[index].var2;
}

- (void)setSourceFeatureChannelMaxCount:(NSUInteger)count atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = count;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    count = v5;
    v9 = v8;
    self = selfCopy;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0xEE, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v11, v12, v13, v14);
      self = selfCopy;
      index = v6;
      count = v5;
    }
  }

  self->_srcInfo[index].var2 = count;
}

- (MPSImageEdgeMode)edgeModeAtIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = selfCopy;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x109, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v10, v11, v12, v13);
      self = selfCopy;
      index = v5;
    }
  }

  return self->_srcInfo[index].var9;
}

- (void)setEdgeMode:(MPSImageEdgeMode)edgeMode atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = edgeMode;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    edgeMode = v5;
    v9 = v8;
    self = selfCopy;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x125, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v11, v12, v13, v14);
      self = selfCopy;
      index = v6;
      edgeMode = v5;
    }
  }

  self->_srcInfo[index].var9 = edgeMode;
}

- (NSUInteger)kernelWidthAtIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = selfCopy;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x13C, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v10, v11, v12, v13);
      self = selfCopy;
      index = v5;
    }
  }

  return self->_srcInfo[index].var3;
}

- (void)setKernelWidth:(NSUInteger)width atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = width;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    width = v5;
    v9 = v8;
    self = selfCopy;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x155, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v11, v12, v13, v14);
      self = selfCopy;
      index = v6;
      width = v5;
    }
  }

  self->_srcInfo[index].var3 = width;
}

- (NSUInteger)kernelHeightAtIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = selfCopy;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x16D, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v10, v11, v12, v13);
      self = selfCopy;
      index = v5;
    }
  }

  return self->_srcInfo[index].var4;
}

- (void)setKernelHeight:(NSUInteger)height atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = height;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    height = v5;
    v9 = v8;
    self = selfCopy;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x186, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v11, v12, v13, v14);
      self = selfCopy;
      index = v6;
      height = v5;
    }
  }

  self->_srcInfo[index].var4 = height;
}

- (NSUInteger)strideInPixelsXatIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = selfCopy;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x19C, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v10, v11, v12, v13);
      self = selfCopy;
      index = v5;
    }
  }

  return self->_srcInfo[index].var5;
}

- (void)setStrideInPixelsX:(NSUInteger)stride atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = stride;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    stride = v5;
    v9 = v8;
    self = selfCopy;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x1B3, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v11, v12, v13, v14);
      self = selfCopy;
      index = v6;
      stride = v5;
    }
  }

  self->_srcInfo[index].var5 = stride;
}

- (NSUInteger)strideInPixelsYatIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = selfCopy;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x1C9, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v10, v11, v12, v13);
      self = selfCopy;
      index = v5;
    }
  }

  return self->_srcInfo[index].var6;
}

- (void)setStrideInPixelsY:(NSUInteger)stride atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = stride;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    stride = v5;
    v9 = v8;
    self = selfCopy;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x1E0, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v11, v12, v13, v14);
      self = selfCopy;
      index = v6;
      stride = v5;
    }
  }

  self->_srcInfo[index].var6 = stride;
}

- (NSUInteger)dilationRateXatIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = selfCopy;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x1F5, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v10, v11, v12, v13);
      self = selfCopy;
      index = v5;
    }
  }

  return self->_srcInfo[index].var7;
}

- (void)setDilationRateX:(NSUInteger)dilationRate atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = dilationRate;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    dilationRate = v5;
    v9 = v8;
    self = selfCopy;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x20B, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v11, v12, v13, v14);
      self = selfCopy;
      index = v6;
      dilationRate = v5;
    }
  }

  self->_srcInfo[index].var7 = dilationRate;
}

- (NSUInteger)dilationRateYatIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = selfCopy;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x220, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v10, v11, v12, v13);
      self = selfCopy;
      index = v5;
    }
  }

  return self->_srcInfo[index].var8;
}

- (void)setDilationRateY:(NSUInteger)dilationRate atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    selfCopy = self;
    v5 = dilationRate;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    dilationRate = v5;
    v9 = v8;
    self = selfCopy;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x236, @"[%@ %@] Error: invalid index: %lu.  This filter has %lu sources.\n", v11, v12, v13, v14);
      self = selfCopy;
      index = v6;
      dilationRate = v5;
    }
  }

  self->_srcInfo[index].var8 = dilationRate;
}

- (MPSCNNMultiaryKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v14.receiver = self;
  v14.super_class = MPSCNNMultiaryKernel;
  v11 = [(MPSKernel *)&v14 initWithCoder:aDecoder device:device];
  if (v11)
  {
    v12 = objc_msgSend_decodeIntForKey_(aDecoder, v5, @"MPSCNNMultiaryKernel.srcCount", v6, v7, v8, v9, v10);
    v11->_srcCount = v12;
    is_mul_ok(v12, 0x60uLL);
    operator new[]();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v119.receiver = self;
  v119.super_class = MPSCNNMultiaryKernel;
  [(MPSKernel *)&v119 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_srcCount, @"MPSCNNMultiaryKernel.srcCount", v6, v7, v8, v9);
  v10 = 96 * self->_srcCount;
  v11 = malloc_type_malloc(v10, 0x1000040565EDBD2uLL);
  if (v11)
  {
    v16 = v11;
    if (self->_srcCount)
    {
      v17 = 0;
      p_var4 = &self->_srcInfo->var4;
      v19 = v11 + 3;
      do
      {
        v20 = vrev64q_s8(p_var4[-2]);
        v21 = vrev64q_s8(p_var4[-1]);
        v22 = vrev64q_s8(*p_var4);
        v23 = vrev64q_s8(p_var4[1]);
        v24 = vrev64q_s8(p_var4[2]);
        v19[-3] = vrev64q_s8(p_var4[-3]);
        v19[-2] = v20;
        v19[-1] = v21;
        *v19 = v22;
        v19[1] = v23;
        v19[2] = v24;
        ++v17;
        p_var4 += 6;
        v19 += 6;
      }

      while (v17 < self->_srcCount);
    }

    objc_msgSend_encodeBytes_length_forKey_(coder, v12, v11, v10, @"MPSCNNMultiaryKernel.srcDataKeyv1", v13, v14, v15);
    free(v16);
    objc_msgSend_encodeInteger_forKey_(coder, v25, self->_clipRect.origin.x, @"MPSCNNMultiaryKernel.clipRect.origin.x", v26, v27, v28, v29);
    objc_msgSend_encodeInteger_forKey_(coder, v30, self->_clipRect.origin.y, @"MPSCNNMultiaryKernel.clipRect.origin.y", v31, v32, v33, v34);
    objc_msgSend_encodeInteger_forKey_(coder, v35, self->_clipRect.origin.z, @"MPSCNNMultiaryKernel.clipRect.origin.z", v36, v37, v38, v39);
    objc_msgSend_encodeInteger_forKey_(coder, v40, self->_clipRect.size.width, @"MPSCNNMultiaryKernel.clipRect.size.x", v41, v42, v43, v44);
    objc_msgSend_encodeInteger_forKey_(coder, v45, self->_clipRect.size.height, @"MPSCNNMultiaryKernel.clipRect.size.y", v46, v47, v48, v49);
    objc_msgSend_encodeInteger_forKey_(coder, v50, self->_clipRect.size.depth, @"MPSCNNMultiaryKernel.clipRect.size.z", v51, v52, v53, v54);
    objc_msgSend_encodeInteger_forKey_(coder, v55, self->_destinationFeatureChannelOffset, @"MPSCNNMultiaryKernel.destinationFeatureChannelOffset", v56, v57, v58, v59);
    objc_msgSend_encodeBool_forKey_(coder, v60, self->_isBackwards, @"MPSCNNMultiaryKernel.isBackwards", v61, v62, v63, v64);
    objc_msgSend_encodeBool_forKey_(coder, v65, self->_supportsBroadcasting, @"MPSCNNMultiaryKernel.supportsBroadcasting", v66, v67, v68, v69);
    objc_msgSend_encodeInt64_forKey_(coder, v70, self->_checkFlags, @"MPSCNNMultiaryKernel.checkFlags", v71, v72, v73, v74);
    padding = self->_padding;
    v76 = objc_autoreleasePoolPush();
    v77 = objc_opt_class();
    if (v77)
    {
      v78 = NSStringFromClass(v77);
      v85 = objc_msgSend_cStringUsingEncoding_(v78, v79, 1, v80, v81, v82, v83, v84);
      if (v85)
      {
        v86 = v85;
        v87 = strlen(v85);
        if (v87)
        {
          objc_msgSend_encodeBytes_length_forKey_(coder, v88, v86, v87 + 1, @"MPSCNNMultiaryKernel.paddingType", v89, v90, v91);
          objc_msgSend_encodeObject_forKey_(coder, v92, padding, @"MPSCNNMultiaryKernel.paddingData", v93, v94, v95, v96);
        }
      }
    }

    objc_autoreleasePoolPop(v76);
    destinationImageAllocator = self->_destinationImageAllocator;
    v98 = objc_autoreleasePoolPush();
    v99 = objc_opt_class();
    if (v99)
    {
      v100 = NSStringFromClass(v99);
      v107 = objc_msgSend_cStringUsingEncoding_(v100, v101, 1, v102, v103, v104, v105, v106);
      if (v107)
      {
        v108 = v107;
        v109 = strlen(v107);
        if (v109)
        {
          objc_msgSend_encodeBytes_length_forKey_(coder, v110, v108, v109 + 1, @"MPSCNNMultiaryKernel.allocatorType", v111, v112, v113);
          objc_msgSend_encodeObject_forKey_(coder, v114, destinationImageAllocator, @"MPSCNNMultiaryKernel.allocatorData", v115, v116, v117, v118);
        }
      }
    }

    objc_autoreleasePoolPop(v98);
  }
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSCNNMultiaryKernel;
  v5 = [(MPSKernel *)&v8 copyWithZone:zone device:device];
  if (v5)
  {
    srcCount = self->_srcCount;
    v5[12] = srcCount;
    is_mul_ok(srcCount, 0x60uLL);
    operator new[]();
  }

  return 0;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inState:(id)state destinationImage:(id)image
{
  v52[1] = *MEMORY[0x277D85DE8];
  v12 = objc_autoreleasePoolPush();
  v20 = objc_msgSend_count(images, v13, v14, v15, v16, v17, v18, v19);
  v33 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v21, v20, v22, v23, v24, v25, v26);
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      v52[0] = objc_msgSend_objectAtIndexedSubscript_(images, v27, i, v28, v29, v30, v31, v32);
      v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v52, 1, v36, v37, v38, v39);
      objc_msgSend_setObject_atIndexedSubscript_(v33, v41, v40, i, v42, v43, v44, v45);
    }
  }

  if (state)
  {
    stateCopy = state;
    state = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, &stateCopy, 1, v29, v30, v31, v32);
  }

  imageCopy = image;
  v46 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, &imageCopy, 1, v29, v30, v31, v32);
  objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self, v47, encoder, buffer, v33, state, v46, v48);
  objc_autoreleasePoolPop(v12);
}

- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inState:(id)state
{
  v38[1] = *MEMORY[0x277D85DE8];
  if (state)
  {
    v38[0] = state;
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v38, 1, images, state, v6, v7);
    v19 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v14, images, v13, v15, v16, v17, v18);
  }

  else
  {
    v19 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, a2, images, 0, images, 0, v6, v7);
  }

  v24 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v24))
  {
    if (!v19)
    {
      return 0;
    }
  }

  else if (!v19)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v25 = objc_opt_class();
      NSStringFromClass(v25);
      v30 = @"[%@ encodeToCommandBuffer:sourceImage:] Unable to create MPSImageDescriptor for destination.  Encode failed.\n";
      v31 = 890;
LABEL_13:
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", v31, v30, v26, v27, v28, v29);
      return 0;
    }

    return 0;
  }

  v32 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self->_destinationImageAllocator, v20, buffer, v19, self, v21, v22, v23);
  v35 = v32;
  if (*(&self->super.super.isa + v24))
  {
    if (!v32)
    {
      return v35;
    }

LABEL_16:
    objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceImages_inState_destinationImage_(self, v33, encoder, buffer, images, state, v32, v34);
    return v35;
  }

  if (v32)
  {
    goto LABEL_16;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v36 = objc_opt_class();
    NSStringFromClass(v36);
    v30 = @"[%@ encodeToCommandBuffer:sourceImage:] Unable to create MPSImage for destination.  Encode failed.\n";
    v31 = 898;
    goto LABEL_13;
  }

  return 0;
}

- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images sourceStates:(id)states
{
  v13 = objc_msgSend_count(images, a2, encoder, buffer, images, states, v6, v7);
  v20 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v14, v13, v15, v16, v17, v18, v19);
  v27 = v20;
  if (v13 && v20)
  {
    for (i = 0; i != v13; ++i)
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(images, v21, i, v22, v23, v24, v25, v26);
      v36 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, 0, v31, v32, v33, v34, v35);
      objc_msgSend_setObject_atIndexedSubscript_(v27, v37, v36, i, v38, v39, v40, v41);
    }
  }

  v42 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v21, v27, states, v23, v24, v25, v26);
  v49 = v42;
  v50 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v50))
  {
    if (!v42)
    {
      return 0;
    }
  }

  else if (!v42)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v51 = objc_opt_class();
      NSStringFromClass(v51);
      v56 = @"[%@ encodeToCommandBuffer:sourceImage:] Unable to create MPSImageDescriptor for destination.  Encode failed.\n";
      v57 = 972;
LABEL_19:
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", v57, v56, v52, v53, v54, v55);
      return 0;
    }

    return 0;
  }

  v58 = objc_msgSend_objectAtIndexedSubscript_(images, v43, 0, v44, v45, v46, v47, v48);
  v66 = objc_msgSend_count(v58, v59, v60, v61, v62, v63, v64, v65);
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v70 = objc_msgSend_imageBatchForCommandBuffer_imageDescriptor_kernel_count_(self->_destinationImageAllocator, v67, buffer, v49, self, v66, v68, v69)) == 0)
  {
    v71 = objc_alloc(MEMORY[0x277CBEB18]);
    v70 = objc_msgSend_initWithCapacity_(v71, v72, v66, v73, v74, v75, v76, v77);
    if (v66)
    {
      for (j = 0; j != v66; ++j)
      {
        v83 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self->_destinationImageAllocator, v78, buffer, v49, self, v79, v80, v81);
        objc_msgSend_setObject_atIndexedSubscript_(v70, v84, v83, j, v85, v86, v87, v88);
      }
    }
  }

  if (*(&self->super.super.isa + v50))
  {
    if (!v70)
    {
      return v70;
    }

LABEL_22:
    v90 = objc_autoreleasePoolPush();
    objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self, v91, encoder, buffer, images, states, v70, v92);
    objc_autoreleasePoolPop(v90);
    return v70;
  }

  if (v70)
  {
    goto LABEL_22;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v89 = objc_opt_class();
    NSStringFromClass(v89);
    v56 = @"[%@ encodeToCommandBuffer:sourceImage:] Unable to create MPSImage for destination.  Encode failed.\n";
    v57 = 993;
    goto LABEL_19;
  }

  return 0;
}

- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images destinationState:(id *)state destinationStateIsTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  v14 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, a2, images, 0, images, state, temporary, v7);
  v19 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v19))
  {
    if (!v14)
    {
      return 0;
    }
  }

  else if (!v14)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v20 = objc_opt_class();
      NSStringFromClass(v20);
      v25 = @"[%@ encodeToCommandBuffer:sourceImage:] Unable to create MPSImageDescriptor for destination.  Encode failed.\n";
      v26 = 1054;
LABEL_10:
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", v26, v25, v21, v22, v23, v24);
      return 0;
    }

    return 0;
  }

  v27 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self->_destinationImageAllocator, v15, buffer, v14, self, v16, v17, v18);
  v32 = v27;
  if (*(&self->super.super.isa + v19))
  {
    if (!v27)
    {
      return v32;
    }
  }

  else if (!v27)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v33 = objc_opt_class();
      NSStringFromClass(v33);
      v25 = @"[%@ encodeToCommandBuffer:sourceImage:] Unable to create MPSImage for destination.  Encode failed.\n";
      v26 = 1062;
      goto LABEL_10;
    }

    return 0;
  }

  if (temporaryCopy)
  {
    v34 = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImages_sourceStates_destinationImage_(self, v28, buffer, images, 0, v27, v30, v31);
  }

  else
  {
    v34 = objc_msgSend_resultStateForSourceImages_sourceStates_destinationImage_(self, v28, images, 0, v27, v29, v30, v31);
  }

  v37 = v34;
  objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceImages_inState_destinationImage_(self, v35, encoder, buffer, images, v34, v32, v36);
  if (state)
  {
    *state = v37;
  }

  return v32;
}

- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images destinationStates:(id *)states destinationStateIsTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  v11 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v11) & 1) == 0 && self->_clipRect.origin.z && MTLReportFailureTypeEnabled())
  {
    v94 = objc_opt_class();
    v99 = NSStringFromClass(v94);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x46C, @"[%@ encodeBatchToCommandBuffer...] Error: convenience methods that return a image batch must have clipRect.origin.z = 0.  We can't return empty batch nodes in a NSArray.", v95, v96, v97, v98);
  }

  v12 = objc_msgSend_count(images, a2, encoder, buffer, images, states, temporary, v7, v99);
  v20 = objc_msgSend_count(images, v13, v14, v15, v16, v17, v18, v19);
  v27 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v21, v20, v22, v23, v24, v25, v26);
  v34 = v27;
  if (v20 && v27)
  {
    for (i = 0; i != v20; ++i)
    {
      v36 = objc_msgSend_objectAtIndexedSubscript_(images, v28, i, v29, v30, v31, v32, v33);
      v43 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, 0, v38, v39, v40, v41, v42);
      objc_msgSend_setObject_atIndexedSubscript_(v34, v44, v43, i, v45, v46, v47, v48);
    }
  }

  v49 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v28, v34, 0, v30, v31, v32, v33);
  v50 = v49;
  if (*(&self->super.super.isa + v11))
  {
    if (!v49)
    {
      return 0;
    }
  }

  else if (!v49)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v51 = objc_opt_class();
      NSStringFromClass(v51);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x475, @"[%@ encodeToCommandBuffer:sourceImage:] Unable to create MPSImageDescriptor for destination.  Encode failed.\n", v52, v53, v54, v55);
    }

    return 0;
  }

  destinationImageAllocator = self->_destinationImageAllocator;
  if (objc_opt_respondsToSelector())
  {
    v67 = objc_msgSend_imageBatchForCommandBuffer_imageDescriptor_kernel_count_(destinationImageAllocator, v57, buffer, v50, self, v12, v61, v62);
    goto LABEL_14;
  }

  v67 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v57, v12, v58, v59, v60, v61, v62);
  if (!v67)
  {
    return v67;
  }

  if (v12)
  {
    for (j = 0; j != v12; ++j)
    {
      v69 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(destinationImageAllocator, v63, buffer, v50, self, v64, v65, v66, v100);
      objc_msgSend_setObject_atIndexedSubscript_(v67, v70, v69, j, v71, v72, v73, v74);
      if ((*(&self->super.super.isa + v11) & 1) == 0)
      {
        objc_msgSend_objectAtIndexedSubscript_(v67, v63, j, v75, v76, v64, v65, v66);
        if (!objc_msgSend_objectAtIndexedSubscript_(v67, v77, j, v78, v79, v80, v81, v82))
        {
          if (MTLReportFailureTypeEnabled())
          {
            v83 = objc_opt_class();
            v100 = NSStringFromClass(v83);
            MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Binaries/MetalPerformanceShaders/install/Symbols/BuiltProducts/MPSCore.framework/PrivateHeaders/Internal/MPSImageInternal.h", 0x203, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:] Unable to create MPSImage for destination.  Encode failed.\n", v84, v85, v86, v87);
          }
        }
      }
    }

LABEL_14:
    if (!v67)
    {
      return v67;
    }
  }

  if (temporaryCopy)
  {
    v88 = objc_msgSend_temporaryResultStateBatchForCommandBuffer_sourceImages_sourceStates_destinationImage_(self, v63, buffer, images, 0, v67, v65, v66);
  }

  else
  {
    v88 = objc_msgSend_resultStateBatchForSourceImages_sourceStates_destinationImage_(self, v63, images, 0, v67, v64, v65, v66);
  }

  v89 = v88;
  v90 = objc_autoreleasePoolPush();
  objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self, v91, encoder, buffer, images, v89, v67, v92);
  objc_autoreleasePoolPop(v90);
  if (states)
  {
    *states = v89;
  }

  return v67;
}

- (void)encodeInternalBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages clipRect:(id *)rect
{
  rectCopy = rect;
  imagesCopy = images;
  bufferCopy = buffer;
  v255 = *MEMORY[0x277D85DE8];
  srcCount = self->_srcCount;
  v14 = objc_msgSend_count(images, a2, encoder, buffer, images, states, destinationImages, rect);
  if (srcCount >= v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = srcCount;
  }

  v234 = objc_msgSend_retainedReferences(bufferCopy, v15, v16, v17, v18, v19, v20, v21);
  v231 = imagesCopy;
  v232 = bufferCopy;
  v233 = v22;
  v224 = rectCopy;
  encoderCopy = encoder;
  if (v22 < 9)
  {
    v36 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v23, v22, v24, v25, v26, v27, v28);
    v29 = v254;
    if (!v22)
    {
      v228 = 1;
      goto LABEL_25;
    }
  }

  else
  {
    v29 = malloc_type_calloc(v22, 0x30uLL, 0x1080040A9DF19A3uLL);
    v36 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v30, v22, v31, v32, v33, v34, v35);
  }

  v44 = v36;
  v45 = 0;
  v220 = v29;
  context = v36;
  do
  {
    while (1)
    {
      v46 = &self->_srcInfo[v45];
      v47 = vmovn_s64(*&v46->var0.var0);
      v48 = vmovn_s64(*&v46->var3);
      v49 = vmovn_s64(*&v46->var7);
      LOWORD(v46) = v47.i16[2];
      v50 = v47.i16[0];
      v51 = vmls_s32(v47, vshr_n_u32(vand_s8(v48, 0xFFFF0000FFFFLL), 1uLL), v49);
      v52 = &v29[48 * v45];
      *(v52 + 1) = v51.i16[2];
      *v52 = v51.i16[0];
      *(v52 + 5) = v48.i16[2];
      *(v52 + 4) = v48.i16[0];
      *(v52 + 7) = v46;
      *(v52 + 1) = 0;
      *(v52 + 6) = v50;
      v53 = vmovn_s64(*&self->_srcInfo[v45].var5);
      *(v52 + 9) = v53.i16[2];
      *(v52 + 8) = v53.i16[0];
      *(v52 + 11) = v49.i16[2];
      *(v52 + 10) = v49.i16[0];
      *(v52 + 13) = 0;
      v54 = &self->_srcInfo[v45];
      *(v52 + 12) = v54->var1;
      *(v52 + 15) = 0;
      *(v52 + 14) = v54->var0.var2;
      *(v52 + 4) = 0;
      *(v52 + 10) = 0;
      checkFlags = self->_checkFlags;
      v56 = objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v37, v45, v38, v39, v40, v41, v42);
      v63 = imagesCopy;
      v64 = v56;
      if ((checkFlags & 0x2000) == 0)
      {
        break;
      }

      objc_msgSend_setObject_atIndexedSubscript_(v44, v57, v56, v45++, v59, v60, v61, v62);
      imagesCopy = v231;
      if (v45 == v22)
      {
        goto LABEL_24;
      }
    }

    v65 = objc_msgSend_objectAtIndexedSubscript_(v63, v57, v45, v58, v59, v60, v61, v62);
    v72 = objc_msgSend_objectAtIndexedSubscript_(v65, v66, 0, v67, v68, v69, v70, v71);
    v80 = *(v72 + *MEMORY[0x277CD72F8]);
    if (v80 >= *(v52 + 12))
    {
      v81 = *(v52 + 12);
    }

    else
    {
      v81 = *(v72 + *MEMORY[0x277CD72F8]);
    }

    var2 = v80 - v81;
    if (v80 - v81 >= self->_srcInfo[v45].var2)
    {
      var2 = self->_srcInfo[v45].var2;
    }

    v229 = var2;
    v83 = objc_msgSend_count(v64, v73, v74, v75, v76, v77, v78, v79);
    if (v83)
    {
      v90 = v83;
      if (v81 || v229 < *(objc_msgSend_objectAtIndexedSubscript_(v64, v84, 0, v85, v86, v87, v88, v89) + *MEMORY[0x277CD72F8]))
      {
        v91 = objc_msgSend_objectAtIndexedSubscript_(v64, v84, 0, v85, v86, v87, v88, v89);
        v95 = sub_239D44850(bufferCopy, encoderCopy, v91, v81, v229, v92, v93, v94);
        if (v95 != objc_msgSend_objectAtIndexedSubscript_(v64, v96, 0, v97, v98, v99, v100, v101))
        {
          v108 = malloc_type_malloc(8 * v90, 0x80040B8603338uLL);
          *v108 = v95;
          if (v90 != 1)
          {
            for (i = 1; i != v90; ++i)
            {
              v110 = objc_msgSend_objectAtIndexedSubscript_(v64, v102, i, v103, v104, v105, v106, v107);
              v108[i] = sub_239D44850(v232, encoderCopy, v110, v81, v229, v111, v112, v113);
            }
          }

          v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v102, v108, v90, v104, v105, v106, v107);
          free(v108);
          bufferCopy = v232;
          v44 = context;
        }
      }
    }

    objc_msgSend_setObject_atIndexedSubscript_(v44, v84, v64, v45, v86, v87, v88, v89);
    *(v52 + 12) = 0;
    v22 = v233;
    v29 = v220;
    ++v45;
    imagesCopy = v231;
  }

  while (v45 != v233);
LABEL_24:
  v228 = 0;
  rectCopy = v224;
LABEL_25:
  destinationFeatureChannelOffset = self->_destinationFeatureChannelOffset;
  v115 = objc_msgSend_maxBatchSize(self, v37, v43, v38, v39, v40, v41, v42);
  v242 = 0u;
  v243 = 0u;
  v244 = 0;
  v241 = 0u;
  v236 = rectCopy->var1.var2;
  v237 = v115;
  v238 = rectCopy->var0.var2;
  v239 = v22;
  v221 = v29;
  v240 = v29;
  v116 = vmovn_s64(*&rectCopy->var0.var0);
  LOWORD(v117) = v116.i16[0];
  WORD1(v117) = v116.i16[2];
  HIDWORD(v117) = (destinationFeatureChannelOffset >> 2);
  v118 = vmovn_s64(*&rectCopy->var1.var0);
  LOWORD(v119) = v118.i16[0];
  HIWORD(v119) = v118.i16[2];
  *&v242 = v117;
  *(&v242 + 1) = v119;
  v243 = 0uLL;
  v120 = *&rectCopy->var0.var0;
  v121 = *&rectCopy->var0.var2;
  v247 = *&rectCopy->var1.var1;
  v245 = v120;
  v246 = v121;
  v248 = destinationFeatureChannelOffset;
  if (v236)
  {
    v122 = v115;
    v123 = 0;
    v230 = 0;
    v219 = (v29 + 32);
    v222 = v115;
    do
    {
      contexta = objc_autoreleasePoolPush();
      if (v122 >= rectCopy->var1.var2 - v123)
      {
        v130 = rectCopy->var1.var2 - v123;
      }

      else
      {
        v130 = v122;
      }

      if ((v228 & 1) == 0)
      {
        v181 = 0;
        v182 = 16;
        v183 = v219;
        v184 = 15;
        do
        {
          v185 = objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v124, v181, v125, v126, v127, v128, v129, v219);
          v189 = sub_239D42A38(v185, bufferCopy, *(&self->_srcInfo->var0.var0 + v182) + v123, v130, v183 + 2, v186, v187, v188);
          *v183 = v189;
          *&v240[2 * v184] = v130;
          if (v189)
          {
            v191 = v234;
          }

          else
          {
            v191 = 1;
          }

          if ((v191 & 1) == 0)
          {
            v192 = v189;
            v193 = objc_msgSend_userDictionary(bufferCopy, v124, v190, v125, v126, v127, v128, v129);
            v200 = objc_msgSend_objectForKey_(v193, v194, @"_MPSCommandBufferRetainListKey", v195, v196, v197, v198, v199);
            if (!v200)
            {
              v207 = objc_alloc_init(MEMORY[0x277CBEB18]);
              objc_msgSend_setObject_forKey_(v193, v208, v207, @"_MPSCommandBufferRetainListKey", v209, v210, v211, v212);

              v249 = MEMORY[0x277D85DD0];
              v250 = 3221225472;
              v251 = sub_239D44B70;
              v252 = &unk_278B28F28;
              v253 = @"_MPSCommandBufferRetainListKey";
              objc_msgSend_addCompletedHandler_(v232, v213, &v249, v214, v215, v216, v217, v218);
              v200 = v207;
              imagesCopy = v231;
            }

            objc_msgSend_addObject_(v200, v201, v192, v202, v203, v204, v205, v206);
            bufferCopy = v232;
          }

          ++v181;
          v184 += 24;
          v183 += 12;
          v182 += 96;
          v22 = v233;
        }

        while (v233 != v181);
      }

      v235 = 0;
      rectCopy = v224;
      v131 = sub_239D42A38(destinationImages, bufferCopy, v224->var0.var2 + v123, v130, &v235, v127, v128, v129);
      v237 = v130;
      v238 = v123;
      *(&v241 + 1) = v131;
      LODWORD(v241) = v235;
      HIWORD(v242) = v130;
      WORD4(v243) = v230;
      if (v131)
      {
        v139 = v234;
      }

      else
      {
        v139 = 1;
      }

      if ((v139 & 1) == 0)
      {
        v140 = v131;
        v141 = objc_msgSend_userDictionary(bufferCopy, v132, v133, v134, v135, v136, v137, v138);
        v148 = objc_msgSend_objectForKey_(v141, v142, @"_MPSCommandBufferRetainListKey", v143, v144, v145, v146, v147);
        if (!v148)
        {
          v155 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v141, v156, v155, @"_MPSCommandBufferRetainListKey", v157, v158, v159, v160);

          v249 = MEMORY[0x277D85DD0];
          v250 = 3221225472;
          v251 = sub_239D44B70;
          v252 = &unk_278B28F28;
          v253 = @"_MPSCommandBufferRetainListKey";
          objc_msgSend_addCompletedHandler_(v232, v161, &v249, v162, v163, v164, v165, v166);
          v148 = v155;
          v22 = v233;
        }

        objc_msgSend_addObject_(v148, v149, v140, v150, v151, v152, v153, v154, v219);
        bufferCopy = v232;
      }

      (self->_batchEncode)(self->_encodeData, encoderCopy, bufferCopy, &v236);
      if ((v228 & 1) == 0)
      {
        v173 = 0;
        v174 = 16;
        do
        {
          v175 = objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v167, v173, v168, v169, v170, v171, v172, v219);
          objc_msgSend_subarrayWithRange_(v175, v176, *(&self->_srcInfo->var0.var0 + v174) + v123, v130, v177, v178, v179, v180);
          MPSDecrementReadCount();
          ++v173;
          v174 += 96;
        }

        while (v22 != v173);
      }

      objc_autoreleasePoolPop(contexta);
      v122 = v222;
      v123 += v222;
      ++v230;
    }

    while (v123 < v224->var1.var2);
  }

  if (v221 != v254)
  {
    free(v221);
  }
}

- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages
{
  destinationImagesCopy = destinationImages;
  selfCopy = self;
  srcCount = self->_srcCount;
  v12 = objc_msgSend_count(images, a2, encoder, buffer, images, states, destinationImages, v7);
  if (srcCount >= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = srcCount;
  }

  v402 = *MEMORY[0x277CD7378];
  v411 = selfCopy;
  v409 = v19;
  if ((*(&selfCopy->super.super.isa + v402) & 1) == 0)
  {
    if (!buffer)
    {
      v346 = MTLReportFailureTypeEnabled();
      v19 = v409;
      if (v346)
      {
        v347 = objc_opt_class();
        v390 = NSStringFromClass(v347);
        v394 = NSStringFromSelector(a2);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x520, @"[%@ %@] commandBuffer may not be nil]", v348, v349, v350, v351);
        v19 = v409;
      }
    }

    if (!images)
    {
      v352 = MTLReportFailureTypeEnabled();
      v19 = v409;
      if (v352)
      {
        v353 = objc_opt_class();
        v390 = NSStringFromClass(v353);
        v394 = NSStringFromSelector(a2);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x521, @"[%@ %@] source may not be nil", v354, v355, v356, v357);
        v19 = v409;
      }
    }

    if (destinationImagesCopy)
    {
      p_checkFlags = &selfCopy->_checkFlags;
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v358 = objc_opt_class();
        v390 = NSStringFromClass(v358);
        v394 = NSStringFromSelector(a2);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x522, @"[%@ %@] destination may not be nil", v359, v360, v361, v362);
      }

      p_checkFlags = &selfCopy->_checkFlags;
      if ((selfCopy->_checkFlags & 0x1000) == 0 && MTLReportFailureTypeEnabled())
      {
        v363 = objc_opt_class();
        v390 = NSStringFromClass(v363);
        v394 = NSStringFromSelector(a2);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x523, @"[%@ %@] Error: destination may not be nil", v364, v365, v366, v367);
      }

      v19 = v409;
    }

    v21 = *MEMORY[0x277CD7348];
    if ((*(&selfCopy->super.super.isa + v402) & ~*(&selfCopy->super.super.isa + v21)) != 0)
    {
      v368 = MTLReportFailureTypeEnabled();
      v19 = v409;
      if (v368)
      {
        v369 = objc_opt_class();
        v370 = NSStringFromClass(v369);
        v394 = NSStringFromSelector(a2);
        v395 = *(&selfCopy->super.super.isa + v402) & ~*(&selfCopy->super.super.isa + v21);
        v390 = v370;
        MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x524, @"[%@ %@] options flag(s) 0x%16.16lx is unknown or invalid for use with this filter", v371, v372, v373, v374);
        v19 = v409;
      }
    }

    if (v19)
    {
      v22 = 0;
      for (i = 0; i != v19; ++i)
      {
        if (selfCopy->_srcInfo[v22].var0.var2 < 0)
        {
          v30 = MTLReportFailureTypeEnabled();
          v19 = v409;
          if (v30)
          {
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            v394 = NSStringFromSelector(a2);
            v395 = i;
            v390 = v32;
            selfCopy = v411;
            MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x528, @"[%@ %@] the offset.z of source %lu may not be negative", v33, v34, v35, v36);
            v19 = v409;
          }
        }

        if ((*(p_checkFlags + 2) & 4) == 0 && selfCopy->_srcInfo[v22].var9 >= 2)
        {
          v24 = MTLReportFailureTypeEnabled();
          v19 = v409;
          if (v24)
          {
            v25 = objc_opt_class();
            v390 = NSStringFromClass(v25);
            v394 = NSStringFromSelector(a2);
            selfCopy = v411;
            MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x52B, @"[%@ %@]: the filter edge mode for source image must be MPSImageEdgeModeZero or MPSImageEdgeModeClamp for this filter.", v26, v27, v28, v29);
            v19 = v409;
          }
        }

        ++v22;
      }
    }
  }

  bufferCopy = buffer;
  if (destinationImagesCopy)
  {
    v37 = objc_msgSend_objectAtIndexedSubscript_(destinationImagesCopy, v13, 0, v14, v15, v16, v17, v18);
    v45 = objc_msgSend_width(v37, v38, v39, v40, v41, v42, v43, v44);
    v52 = objc_msgSend_objectAtIndexedSubscript_(destinationImagesCopy, v46, 0, v47, v48, v49, v50, v51);
    v60 = objc_msgSend_height(v52, v53, v54, v55, v56, v57, v58, v59);
    v68 = objc_msgSend_count(destinationImagesCopy, v61, v62, v63, v64, v65, v66, v67);
  }

  else
  {
    v68 = 0;
    v60 = 0;
    v45 = 0;
  }

  memset(&v415, 0, sizeof(v415));
  v414.width = v45;
  v414.height = v60;
  v406 = v60;
  v414.depth = v68;
  v69 = *&selfCopy->_clipRect.origin.z;
  *&v413.origin.x = *&selfCopy->_clipRect.origin.x;
  *&v413.origin.z = v69;
  *&v413.size.height = *&selfCopy->_clipRect.size.height;
  MPSGetEffectiveClipRegion(&v415, &v414, &v413);
  v76 = objc_msgSend_objectAtIndexedSubscript_(images, v70, 0, v71, v72, v73, v74, v75);
  v83 = objc_msgSend_objectAtIndexedSubscript_(v76, v77, 0, v78, v79, v80, v81, v82);
  v408 = objc_msgSend_featureChannels(v83, v84, v85, v86, v87, v88, v89, v90);
  v97 = objc_msgSend_objectAtIndexedSubscript_(destinationImagesCopy, v91, 0, v92, v93, v94, v95, v96);
  v407 = objc_msgSend_featureChannels(v97, v98, v99, v100, v101, v102, v103, v104);
  if ((*(&selfCopy->super.super.isa + v402) & 1) == 0)
  {
    objc_msgSend_count(destinationImagesCopy, v105, v106, v107, v108, v109, v110, v111);
    v112 = v415.size.depth + v415.origin.z;
    if (v112 > objc_msgSend_count(destinationImagesCopy, v113, v114, v115, v116, v117, v118, v119) && MTLReportFailureTypeEnabled())
    {
      v375 = objc_opt_class();
      v376 = NSStringFromClass(v375);
      v377 = NSStringFromSelector(a2);
      z = v415.origin.z;
      depth = v415.size.depth;
      v397 = objc_msgSend_count(destinationImagesCopy, v379, v380, v381, v382, v383, v384, v385);
      v394 = v377;
      v395 = z;
      v390 = v376;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x546, @"[%@ %@] Error invalid operation: the clipRect.origin.z(%lu) + clipRect.size.depth(%lu) > destinationImages.count(%lu)", v386, v387, v388, v389);
    }

    if (v409)
    {
      v126 = 16;
      v127 = v409;
      do
      {
        objc_msgSend_count(images, v105, v120, v121, v122, v123, v124, v125, v390, v394, v395, depth, v397);
        v128 = v415.size.depth + *(&v411->_srcInfo->var0.var0 + v126);
        if (v128 > objc_msgSend_count(images, v129, v130, v131, v132, v133, v134, v135) && MTLReportFailureTypeEnabled())
        {
          v136 = objc_opt_class();
          v137 = NSStringFromClass(v136);
          v138 = NSStringFromSelector(a2);
          v139 = *(&v411->_srcInfo->var0.var0 + v126);
          depth = v415.size.depth;
          v397 = objc_msgSend_count(images, v140, v141, v142, v143, v144, v145, v146);
          v394 = v138;
          v395 = v139;
          v390 = v137;
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x54D, @"[%@ %@] Error invalid operation: the clipRect.origin.z(%lu) + clipRect.size.depth(%lu) > destinationImages.count(%lu)", v147, v148, v149, v150);
        }

        v126 += 96;
        --v127;
      }

      while (v127);
      selfCopy = v411;
      if (v415.size.depth)
      {
        v151 = 0;
        v152 = MEMORY[0x277CD7320];
        v403 = destinationImagesCopy;
        do
        {
          v153 = objc_msgSend_objectAtIndexedSubscript_(destinationImagesCopy, v105, v415.origin.z + v151, v121, v122, v123, v124, v125, v390, v394, v395);
          v160 = objc_msgSend_objectAtIndexedSubscript_(images, v154, 0, v155, v156, v157, v158, v159);
          v167 = objc_msgSend_objectAtIndexedSubscript_(v160, v161, selfCopy->_srcInfo->var0.var2 + v151, v162, v163, v164, v165, v166);
          v168 = 0;
          v405 = *(v167 + *MEMORY[0x277CD7330]);
          v404 = *(v167 + *MEMORY[0x277CD7308]);
          v410 = *(v167 + *MEMORY[0x277CD72F8]);
          do
          {
            v169 = objc_msgSend_objectAtIndexedSubscript_(images, v105, v168, v121, v122, v123, v124, v125, v390);
            v183 = objc_msgSend_objectAtIndexedSubscript_(v169, v170, v411->_srcInfo[v168].var0.var2 + v151, v171, v172, v173, v174, v175);
            v184 = *&v183[*MEMORY[0x277CD7330]];
            v185 = *&v183[*MEMORY[0x277CD7308]];
            if (*&v183[*MEMORY[0x277CD7310]] != 1 && MTLReportFailureTypeEnabled())
            {
              v237 = objc_opt_class();
              v391 = NSStringFromClass(v237);
              v394 = NSStringFromSelector(a2);
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x55E, @"[%@ %@] each of the individual source images in a batch must have numberOfImages = 1\n", v238, v239, v240, v241);
            }

            if ((v411->_checkFlags & 0x4000) == 0 && (v184 != v405 || v185 != v404))
            {
              if (MTLReportFailureTypeEnabled())
              {
                v298 = objc_opt_class();
                v391 = NSStringFromClass(v298);
                v394 = NSStringFromSelector(a2);
                MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x563, @"[%@ %@] error: all source image sizes must match\n", v299, v300, v301, v302);
              }
            }

            if (v408 != v410 && MTLReportFailureTypeEnabled())
            {
              v242 = objc_opt_class();
              v391 = NSStringFromClass(v242);
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x566, @"[%@ encode...] error: all source number of feature channels must match\n", v243, v244, v245, v246);
            }

            objc_msgSend_numberOfImages(v153, v176, v177, v178, v179, v180, v181, v182, v391);
            if (objc_msgSend_numberOfImages(v153, v187, v188, v189, v190, v191, v192, v193) != 1 && MTLReportFailureTypeEnabled())
            {
              v247 = objc_opt_class();
              v392 = NSStringFromClass(v247);
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x56A, @"[%@ encode...] each of the individual destination images in a batch must have numberOfImages = 1\n", v248, v249, v250, v251);
            }

            if (v45 == objc_msgSend_width(v153, v194, v195, v196, v197, v198, v199, v200, v392))
            {
              objc_msgSend_height(v153, v201, v202, v203, v204, v205, v206, v207);
            }

            if ((v45 != objc_msgSend_width(v153, v201, v202, v203, v204, v205, v206, v207) || v406 != objc_msgSend_height(v153, v208, v209, v210, v211, v212, v213, v214)) && MTLReportFailureTypeEnabled())
            {
              v232 = objc_opt_class();
              v393 = NSStringFromClass(v232);
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x56F, @"[%@ encode...] error: all destination image sizes must match\n", v233, v234, v235, v236);
            }

            objc_msgSend_featureChannels(v153, v215, v216, v217, v218, v219, v220, v221, v393);
            if (v407 != objc_msgSend_featureChannels(v153, v222, v223, v224, v225, v226, v227, v228) && MTLReportFailureTypeEnabled())
            {
              v252 = objc_opt_class();
              v390 = NSStringFromClass(v252);
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x573, @"[%@ encode...] error: all destination number of feature channels must match\n", v253, v254, v255, v256);
            }

            if ((v153[*v152 + 56] & 1) != 0 && !*&v153[*MEMORY[0x277CD7490]] && MTLReportFailureTypeEnabled())
            {
              v271 = objc_opt_class();
              v272 = NSStringFromClass(v271);
              v394 = NSStringFromSelector(a2);
              v395 = objc_msgSend_debugDescription(v153, v273, v274, v275, v276, v277, v278, v279);
              v390 = v272;
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x578, @"[%@ %@] Error: the destination image texture is temporary and has a readCount of 0.\n\tIts texel storage is probably in use for another texture now.\n%@\n", v280, v281, v282, v283);
            }

            if ((v183[*v152 + 56] & 1) != 0 && !*&v183[*MEMORY[0x277CD7490]] && MTLReportFailureTypeEnabled())
            {
              v284 = objc_opt_class();
              v285 = NSStringFromClass(v284);
              v394 = NSStringFromSelector(a2);
              v395 = objc_msgSend_debugDescription(v183, v286, v287, v288, v289, v290, v291, v292);
              v390 = v285;
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x57D, @"[%@ %@] Error: the source image texture is temporary and has a readCount of 0.\n\tIts texel storage is probably in use for another texture now.\n%@\n", v293, v294, v295, v296);
            }

            v229 = &v183[*v152];
            if ((v229[7] & 2) == 0)
            {
              v230 = v409;
              atomic_load_explicit(v229, memory_order_acquire);
              v231 = &v183[*v152];
              if ((v231[56] & 2) == 0)
              {
                goto LABEL_61;
              }

              do
              {
LABEL_60:
                v231 = *(v231 + 5);
              }

              while ((v231[56] & 2) != 0);
              goto LABEL_61;
            }

            v230 = v409;
            do
            {
              v229 = v229[5];
            }

            while ((v229[7] & 2) != 0);
            atomic_load_explicit(v229, memory_order_acquire);
            v231 = &v183[*v152];
            if ((v231[56] & 2) != 0)
            {
              goto LABEL_60;
            }

LABEL_61:
            if (!atomic_load_explicit(v231, memory_order_acquire))
            {
              v257 = MTLReportFailureTypeEnabled();
              v230 = v409;
              if (v257)
              {
                v258 = objc_opt_class();
                v259 = NSStringFromClass(v258);
                v394 = NSStringFromSelector(a2);
                v395 = objc_msgSend_debugDescription(v183, v260, v261, v262, v263, v264, v265, v266);
                v390 = v259;
                MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x582, @"[%@ %@] Error: the source image texture is uninitialized.\n\tThis typically means that nothing has written to it yet, and its contents are undefined.\n%@\n", v267, v268, v269, v270);
                v230 = v409;
              }
            }

            ++v168;
          }

          while (v168 != v230);
          ++v151;
          destinationImagesCopy = v403;
          selfCopy = v411;
        }

        while (v151 < v415.size.depth);
      }
    }

    else if (v415.size.depth)
    {
      v303 = 0;
      do
      {
        objc_msgSend_objectAtIndexedSubscript_(destinationImagesCopy, v105, v303 + v415.origin.z, v121, v122, v123, v124, v125, v390, v394, v395, depth, v397);
        v310 = objc_msgSend_objectAtIndexedSubscript_(images, v304, 0, v305, v306, v307, v308, v309);
        objc_msgSend_objectAtIndexedSubscript_(v310, v311, v303 + selfCopy->_srcInfo->var0.var2, v312, v313, v314, v315, v316);
        ++v303;
      }

      while (v303 < v415.size.depth);
    }
  }

  if (images)
  {
    if (encoder)
    {
      v413 = v415;
      objc_msgSend_encodeInternalBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_clipRect_(selfCopy, v105, encoder, bufferCopy, images, states, destinationImagesCopy, &v413);
    }

    else
    {
      v317 = objc_alloc(MEMORY[0x277CD7210]);
      v329 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v317, v318, bufferCopy, 0, v319, v320, v321, v322);
      v414.width = v329;
      v414.height = selfCopy;
      if ((*(&selfCopy->super.super.isa + v402) & 0x18) != 0)
      {
        v330 = *(&selfCopy->super.super.isa + *MEMORY[0x277CD7360]);
        if (v330 || (v331 = objc_opt_class(), v332 = NSStringFromClass(v331), objc_msgSend_setLabel_(selfCopy, v333, v332, v334, v335, v336, v337, v338), (v330 = v332) != 0))
        {
          objc_msgSend_setLabel_(v329, v323, v330, v324, v325, v326, v327, v328, v390);
        }
      }

      v413 = v415;
      objc_msgSend_encodeInternalBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_clipRect_(selfCopy, v323, v329, bufferCopy, images, states, destinationImagesCopy, &v413, v390);
      objc_msgSend_endEncoding(v329, v339, v340, v341, v342, v343, v344, v345);
    }
  }
}

- (MPSState)resultStateForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v9 = [MPSNNMultiaryGradientState alloc];
  v19 = objc_msgSend_initWithSourceCount_(v9, v10, self->_srcCount, v11, v12, v13, v14, v15);
  if (v19)
  {
    objc_msgSend_copyToGradientState_sourceImages_sourceStates_destinationImage_(self, v16, v19, sourceImages, sourceStates, destinationImage, v17, v18);
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v29 = objc_msgSend_stringWithFormat_(v20, v23, @"created by %@", v24, v25, v26, v27, v28, v22);
      objc_msgSend_setLabel_(v19, v30, v29, v31, v32, v33, v34, v35);
    }
  }

  return v19;
}

- (MPSStateBatch)resultStateBatchForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v8 = destinationImage;
  v20 = objc_msgSend_count(destinationImage, a2, sourceImages, sourceStates, destinationImage, v5, v6, v7);
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!sourceImages && MTLReportFailureTypeEnabled())
    {
      v214 = objc_opt_class();
      v219 = NSStringFromClass(v214);
      v221 = NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x5CE, @"[%@ %@:sourceStates:] Error: sourceImages may not be NULL", v215, v216, v217, v218);
    }

    if (sourceStates && objc_msgSend_count(sourceStates, v13, v14, v15, v16, v17, v18, v19))
    {
      v21 = 0;
      do
      {
        v22 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v13, v21, v15, v16, v17, v18, v19, v219, v221);
        objc_msgSend_count(v22, v23, v24, v25, v26, v27, v28, v29);
        v36 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v30, v21, v31, v32, v33, v34, v35);
        if (objc_msgSend_count(v36, v37, v38, v39, v40, v41, v42, v43) < v20 && MTLReportFailureTypeEnabled())
        {
          v51 = objc_opt_class();
          v220 = NSStringFromClass(v51);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x5D6, @"[%@ resultStateBatchForSourceImages:sourceStates:] Error: if sourceStates is non-NULL, there must be at least as many source states as source images", v52, v53, v54, v55);
        }

        ++v21;
      }

      while (v21 < objc_msgSend_count(sourceStates, v44, v45, v46, v47, v48, v49, v50, v220));
    }
  }

  if (!v20)
  {
    return 0;
  }

  v56 = objc_msgSend_count(sourceImages, v13, v14, v15, v16, v17, v18, v19);
  v57 = 0x277CBE000uLL;
  v64 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v58, v56, v59, v60, v61, v62, v63);
  v72 = v64;
  if (v56 && v64)
  {
    for (i = 0; i != v56; ++i)
    {
      v74 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v65, i, v67, v68, v69, v70, v71, v219);
      v81 = objc_msgSend_objectAtIndexedSubscript_(v74, v75, 0, v76, v77, v78, v79, v80);
      objc_msgSend_setObject_atIndexedSubscript_(v72, v82, v81, i, v83, v84, v85, v86);
    }
  }

  if (sourceStates)
  {
    v87 = objc_msgSend_count(sourceStates, v65, v66, v67, v68, v69, v70, v71);
    v94 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v88, v87, v89, v90, v91, v92, v93);
    if (v94 && v87)
    {
      for (j = 0; j != v87; ++j)
      {
        v96 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v65, j, v67, v68, v69, v70, v71, v219);
        v103 = objc_msgSend_objectAtIndexedSubscript_(v96, v97, 0, v98, v99, v100, v101, v102);
        objc_msgSend_setObject_atIndexedSubscript_(v94, v104, v103, j, v105, v106, v107, v108);
      }
    }
  }

  else
  {
    v94 = 0;
  }

  v109 = objc_msgSend_objectAtIndexedSubscript_(v8, v65, 0, v67, v68, v69, v70, v71, v219);
  v114 = objc_msgSend_resultStateForSourceImages_sourceStates_destinationImage_(self, v110, v72, v94, v109, v111, v112, v113);
  if (!v114)
  {
    return 0;
  }

  v115 = v114;
  v116 = objc_alloc(MEMORY[0x277CBEB18]);
  v123 = objc_msgSend_initWithCapacity_(v116, v117, v20, v118, v119, v120, v121, v122);
  v129 = v123;
  if (v123)
  {
    objc_msgSend_setObject_atIndexedSubscript_(v123, v124, v115, 0, v125, v126, v127, v128);
    if (objc_msgSend_isResultStateReusedAcrossBatch(self, v130, v131, v132, v133, v134, v135, v136))
    {
      if (v20 != 1)
      {
        if (v20 <= 2)
        {
          v144 = 2;
        }

        else
        {
          v144 = v20;
        }

        for (k = 1; k != v144; ++k)
        {
          objc_msgSend_setObject_atIndexedSubscript_(v129, v137, v115, k, v140, v141, v142, v143);
        }
      }

      return v129;
    }

    if (v20 == 1)
    {
      return v129;
    }

    v147 = 2;
    if (v20 > 2)
    {
      v147 = v20;
    }

    v222 = v147;
    for (m = 1; m != v222; ++m)
    {
      v161 = objc_msgSend_count(sourceImages, v137, v138, v139, v140, v141, v142, v143);
      v168 = objc_msgSend_arrayWithCapacity_(*(v57 + 2840), v162, v161, v163, v164, v165, v166, v167);
      v176 = v168;
      if (v161 && v168)
      {
        for (n = 0; n != v161; ++n)
        {
          v178 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v169, n, v171, v172, v173, v174, v175);
          v185 = objc_msgSend_objectAtIndexedSubscript_(v178, v179, m, v180, v181, v182, v183, v184);
          objc_msgSend_setObject_atIndexedSubscript_(v176, v186, v185, n, v187, v188, v189, v190);
        }
      }

      if (sourceStates)
      {
        v191 = objc_msgSend_count(sourceStates, v169, v170, v171, v172, v173, v174, v175);
        v149 = objc_msgSend_arrayWithCapacity_(*(v57 + 2840), v192, v191, v193, v194, v195, v196, v197);
        if (v149 && v191)
        {
          selfCopy = self;
          v199 = v8;
          for (ii = 0; ii != v191; ++ii)
          {
            v201 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v169, ii, v171, v172, v173, v174, v175);
            v208 = objc_msgSend_objectAtIndexedSubscript_(v201, v202, m, v203, v204, v205, v206, v207);
            objc_msgSend_setObject_atIndexedSubscript_(v149, v209, v208, ii, v210, v211, v212, v213);
          }

          v8 = v199;
          self = selfCopy;
          v57 = 0x277CBE000;
          v150 = objc_msgSend_objectAtIndexedSubscript_(v8, v169, m, v171, v172, v173, v174, v175);
          goto LABEL_41;
        }
      }

      else
      {
        v149 = 0;
      }

      v150 = objc_msgSend_objectAtIndexedSubscript_(v8, v169, m, v171, v172, v173, v174, v175);
LABEL_41:
      v155 = objc_msgSend_resultStateForSourceImages_sourceStates_destinationImage_(self, v151, v176, v149, v150, v152, v153, v154);
      objc_msgSend_setObject_atIndexedSubscript_(v129, v156, v155, m, v157, v158, v159, v160);
    }
  }

  return v129;
}

- (MPSState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v10 = [MPSNNMultiaryGradientState alloc];
  v20 = objc_msgSend_initWithSourceCount_(v10, v11, self->_srcCount, v12, v13, v14, v15, v16);
  if (v20)
  {
    objc_msgSend_copyToGradientState_sourceImages_sourceStates_destinationImage_(self, v17, v20, sourceImage, sourceStates, destinationImage, v18, v19);
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v30 = objc_msgSend_stringWithFormat_(v21, v24, @"created by %@", v25, v26, v27, v28, v29, v23);
      objc_msgSend_setLabel_(v20, v31, v30, v32, v33, v34, v35, v36);
    }
  }

  return v20;
}

- (MPSStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v19 = objc_msgSend_count(sourceImage, a2, commandBuffer, sourceImage, sourceStates, destinationImage, v6, v7);
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v243 = objc_opt_class();
      v253 = NSStringFromClass(v243);
      v255 = NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x617, @"[%@ %@] Error: command buffer may not be NULL", v244, v245, v246, v247);
    }

    if (!sourceImage && MTLReportFailureTypeEnabled())
    {
      v248 = objc_opt_class();
      v253 = NSStringFromClass(v248);
      v255 = NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x61B, @"[%@ %@] Error: sourceImage batch may not be NULL", v249, v250, v251, v252);
    }

    if (!sourceStates)
    {
      if (v19)
      {
        v61 = objc_autoreleasePoolPush();
        goto LABEL_29;
      }

      return 0;
    }

    if (objc_msgSend_count(sourceStates, v12, v13, v14, v15, v16, v17, v18))
    {
      v26 = 0;
      do
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v20, v26, v21, v22, v23, v24, v25, v253, v255);
        objc_msgSend_count(v27, v28, v29, v30, v31, v32, v33, v34);
        v41 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v35, v26, v36, v37, v38, v39, v40);
        if (objc_msgSend_count(v41, v42, v43, v44, v45, v46, v47, v48) < v19 && MTLReportFailureTypeEnabled())
        {
          v56 = objc_opt_class();
          v254 = NSStringFromClass(v56);
          v256 = NSStringFromSelector(a2);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x622, @"[%@ %@] Error: if sourceStates is non-NULL, there must be at least as many source states as source images", v57, v58, v59, v60);
        }

        ++v26;
      }

      while (v26 < objc_msgSend_count(sourceStates, v49, v50, v51, v52, v53, v54, v55, v254, v256));
    }
  }

  if (!v19)
  {
    return 0;
  }

  v61 = objc_autoreleasePoolPush();
  if (!sourceStates)
  {
LABEL_29:
    context = v61;
    v158 = objc_msgSend_count(sourceImage, v62, v63, v64, v65, v66, v67, v68, v253, v255);
    v165 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v159, v158, v160, v161, v162, v163, v164);
    v115 = v165;
    v143 = 0;
    LOBYTE(v130) = 1;
    if (v158 && v165)
    {
      for (i = 0; i != v158; ++i)
      {
        v167 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v137, i, v138, v139, v140, v141, v142);
        v174 = objc_msgSend_objectAtIndexedSubscript_(v167, v168, 0, v169, v170, v171, v172, v173);
        objc_msgSend_setObject_atIndexedSubscript_(v115, v175, v174, i, v176, v177, v178, v179);
      }

      v143 = 0;
      v70 = 0;
      v85 = 0;
      LOBYTE(v130) = 1;
    }

    else
    {
      v70 = 0;
      v85 = 0;
    }

    goto LABEL_35;
  }

  v69 = v61;
  v70 = objc_msgSend_count(sourceStates, v62, v63, v64, v65, v66, v67, v68);
  v77 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v71, v70, v72, v73, v74, v75, v76);
  if (!v77)
  {
    v202 = v69;
    goto LABEL_42;
  }

  v85 = v77;
  context = v69;
  if (v70)
  {
    for (j = 0; j != v70; ++j)
    {
      v87 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v78, j, v80, v81, v82, v83, v84, v253, v255);
      v94 = objc_msgSend_objectAtIndexedSubscript_(v87, v88, 0, v89, v90, v91, v92, v93);
      objc_msgSend_setObject_atIndexedSubscript_(v85, v95, v94, j, v96, v97, v98, v99);
    }
  }

  v100 = objc_msgSend_count(sourceImage, v78, v79, v80, v81, v82, v83, v84, v253, v255);
  v107 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v101, v100, v102, v103, v104, v105, v106);
  v115 = v107;
  if (v100 && v107)
  {
    for (k = 0; k != v100; ++k)
    {
      v117 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v108, k, v110, v111, v112, v113, v114);
      v124 = objc_msgSend_objectAtIndexedSubscript_(v117, v118, 0, v119, v120, v121, v122, v123);
      objc_msgSend_setObject_atIndexedSubscript_(v115, v125, v124, k, v126, v127, v128, v129);
    }
  }

  v130 = objc_msgSend_count(sourceStates, v108, v109, v110, v111, v112, v113, v114);
  v143 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v131, v130, v132, v133, v134, v135, v136);
  if (!v143)
  {
    goto LABEL_26;
  }

  if (v130)
  {
    for (m = 0; m != v130; ++m)
    {
      v145 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v137, m, v138, v139, v140, v141, v142);
      v152 = objc_msgSend_objectAtIndexedSubscript_(v145, v146, 0, v147, v148, v149, v150, v151);
      objc_msgSend_setObject_atIndexedSubscript_(v143, v153, v152, m, v154, v155, v156, v157);
    }

LABEL_26:
    LOBYTE(v130) = 0;
  }

LABEL_35:
  v180 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v137, 0, v138, v139, v140, v141, v142);
  v184 = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImages_sourceStates_destinationImage_(self, v181, commandBuffer, v115, v143, v180, v182, v183);
  if (!v184 || (v185 = v184, (v186 = malloc_type_malloc(8 * v19, 0x80040B8603338uLL)) == 0))
  {
    v202 = context;
LABEL_42:
    objc_autoreleasePoolPop(v202);
    return 0;
  }

  v194 = v186;
  if (!objc_msgSend_isResultStateReusedAcrossBatch(self, v187, v188, v189, v190, v191, v192, v193))
  {
    *v194 = v185;
    if (v19 >= 2)
    {
      if (v70)
      {
        v204 = v130;
      }

      else
      {
        v204 = 1;
      }

      for (n = 1; n != v19; ++n)
      {
        if ((v204 & 1) == 0)
        {
          v217 = 0;
          do
          {
            v218 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v195, v217, v196, v197, v198, v199, v200);
            v225 = objc_msgSend_objectAtIndexedSubscript_(v218, v219, n, v220, v221, v222, v223, v224);
            objc_msgSend_setObject_atIndexedSubscript_(v85, v226, v225, n, v227, v228, v229, v230);
            ++v217;
          }

          while (v70 != v217);
        }

        v206 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v195, n, v196, v197, v198, v199, v200);
        v213 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v207, n, v208, v209, v210, v211, v212);
        v194[n] = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImages_sourceStates_destinationImage_(self, v214, commandBuffer, v206, v85, v213, v215, v216);
      }
    }

    goto LABEL_59;
  }

  if (v19 < 4)
  {
    v201 = 0;
LABEL_57:
    v234 = v19 - v201;
    v235 = &v194[v201];
    do
    {
      *v235++ = v185;
      --v234;
    }

    while (v234);
    goto LABEL_59;
  }

  v201 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v231 = vdupq_n_s64(v185);
  v232 = (v194 + 2);
  v233 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v232[-1] = v231;
    *v232 = v231;
    v232 += 2;
    v233 -= 4;
  }

  while (v233);
  if (v19 != v201)
  {
    goto LABEL_57;
  }

LABEL_59:
  v236 = objc_alloc(MEMORY[0x277CBEA60]);
  v242 = objc_msgSend_initWithObjects_count_(v236, v237, v194, v19, v238, v239, v240, v241);
  free(v194);
  objc_autoreleasePoolPop(context);

  return v242;
}

- (void)copyToGradientState:(id)state sourceImages:(id)images sourceStates:(id)states destinationImage:(id)image
{
  imageCopy = image;
  stateCopy = state;
  memcpy(*(state + 7), self->_srcInfo, 96 * self->_srcCount);
  v15 = MEMORY[0x277CD7330];
  v16 = MEMORY[0x277CD7308];
  v17 = MEMORY[0x277CD7310];
  if (self->_srcCount)
  {
    v18 = 0;
    v19 = 0;
    selfCopy = self;
    do
    {
      v20 = stateCopy;
      v21 = v17;
      v22 = v15;
      v23 = *(objc_msgSend_objectAtIndexedSubscript_(images, v9, v19, v10, v11, v12, v13, v14, imageCopy) + *v15);
      v30 = *(objc_msgSend_objectAtIndexedSubscript_(images, v24, v19, v25, v26, v27, v28, v29) + *v16);
      v37 = objc_msgSend_objectAtIndexedSubscript_(images, v31, v19, v32, v33, v34, v35, v36);
      v17 = v21;
      stateCopy = v20;
      v38 = *(v37 + *v17);
      v39 = (*(v20 + 8) + v18);
      *v39 = v23;
      v39[1] = v30;
      v15 = v22;
      self = selfCopy;
      v39[2] = v38;
      ++v19;
      v18 += 24;
    }

    while (v19 < selfCopy->_srcCount);
  }

  v41 = *&self->_clipRect.origin.z;
  v40 = *&self->_clipRect.size.height;
  *(stateCopy + 72) = *&self->_clipRect.origin.x;
  *(stateCopy + 88) = v41;
  *(stateCopy + 104) = v40;
  v42 = *&imageCopy[*v16];
  v43 = *&imageCopy[*v17];
  *(stateCopy + 15) = *&imageCopy[*v15];
  *(stateCopy + 16) = v42;
  *(stateCopy + 17) = v43;
  *(stateCopy + 18) = *&imageCopy[*MEMORY[0x277CD72F8]];
  *(stateCopy + 19) = self->_destinationFeatureChannelOffset;
  *(stateCopy + 20) = self->_padding;
  *(stateCopy + 21) = objc_msgSend_maxBatchSize(self, v44, v45, v46, v47, v48, v49, v50);
  stateCopy[176] = self->_isBackwards;
  stateCopy[177] = objc_msgSend_isResultStateReusedAcrossBatch(self, v51, v52, v53, v54, v55, v56, v57);
  *(stateCopy + 45) = 123928;
}

- (MPSImageDescriptor)destinationImageDescriptorForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && !self->_padding && MTLReportFailureTypeEnabled())
  {
    v42 = objc_opt_class();
    v52 = NSStringFromClass(v42);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x68A, @"[%@ destinationImageDescriptorForSourceImages:sourceStates:updateOffset:] no padding method set. Can not compute result.", v43, v44, v45, v46);
  }

  v11 = objc_msgSend_paddingMethod(self->_padding, a2, sourceImages, sourceStates, v4, v5, v6, v7, v52);
  v23 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_paddingMethod_(self, v12, sourceImages, sourceStates, v11, v13, v14, v15);
  if (sourceStates)
  {
    v24 = objc_msgSend_count(sourceStates, v16, v17, v18, v19, v20, v21, v22);
    if (v24)
    {
      v31 = v24;
      for (i = 0; i != v31; ++i)
      {
        v33 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v25, i, v26, v27, v28, v29, v30);
        v23 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(v33, v34, sourceImages, sourceStates, self, v23, v35, v36);
      }
    }
  }

  if (!v23 || (v11 & 0x4000) == 0)
  {
    return v23;
  }

  objc_opt_respondsToSelector();
  if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v47 = objc_opt_class();
    NSStringFromClass(v47);
    MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNMultiaryKernel.mm", 0x6A0, @"[%@ destinationImageDescriptorForSourceImages:sourceStates:updateOffset:] the object padding method %p does not respond to the destinationImageDescriptorForSourceImages:sourceStates:forKernel:suggestedDescriptor: selector", v48, v49, v50, v51);
  }

  padding = self->_padding;

  return objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(padding, v38, sourceImages, sourceStates, self, v23, v39, v40);
}

- (MTLRegion)clipRect
{
  v3 = *&self[2].size.width;
  *&retstr->origin.x = *&self[2].origin.y;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[2].size.depth;
  return self;
}

- (void)setClipRect:(MTLRegion *)clipRect
{
  v4 = *&clipRect->origin.z;
  v3 = *&clipRect->size.height;
  *&self->_clipRect.origin.x = *&clipRect->origin.x;
  *&self->_clipRect.origin.z = v4;
  *&self->_clipRect.size.height = v3;
}

@end