@interface MPSNDArrayUnaryGradientKernel
- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf sourceArray:(MPSNDArray *)sourceArray sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state;
- (MPSNDArrayUnaryGradientKernel)initWithCoder:(NSCoder *)coder device:(id)device;
- (MPSNDArrayUnaryGradientKernel)initWithDevice:(id)device;
- (void)encodeToCommandBuffer:(id)cmdBuf sourceArray:(MPSNDArray *)sourceArray sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state destinationArray:(MPSNDArray *)destination;
@end

@implementation MPSNDArrayUnaryGradientKernel

- (MPSNDArrayUnaryGradientKernel)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayUnaryGradientKernel;
  return [(MPSNDArrayMultiaryGradientKernel *)&v4 initWithDevice:device sourceCount:1 sourceGradientIndex:0];
}

- (MPSNDArrayUnaryGradientKernel)initWithCoder:(NSCoder *)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayUnaryGradientKernel;
  return [(MPSNDArrayMultiaryGradientKernel *)&v5 initWithCoder:coder device:device];
}

- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf sourceArray:(MPSNDArray *)sourceArray sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = sourceArray;
  v7.receiver = self;
  v7.super_class = MPSNDArrayUnaryGradientKernel;
  return -[MPSNDArrayMultiaryGradientKernel encodeToCommandBuffer:sourceArrays:sourceGradient:gradientState:](&v7, sel_encodeToCommandBuffer_sourceArrays_sourceGradient_gradientState_, cmdBuf, [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1], gradient, state);
}

- (void)encodeToCommandBuffer:(id)cmdBuf sourceArray:(MPSNDArray *)sourceArray sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state destinationArray:(MPSNDArray *)destination
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = sourceArray;
  v7.receiver = self;
  v7.super_class = MPSNDArrayUnaryGradientKernel;
  -[MPSNDArrayMultiaryGradientKernel encodeToCommandBuffer:sourceArrays:sourceGradient:gradientState:destinationArray:](&v7, sel_encodeToCommandBuffer_sourceArrays_sourceGradient_gradientState_destinationArray_, cmdBuf, [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1], gradient, state, destination);
}

@end