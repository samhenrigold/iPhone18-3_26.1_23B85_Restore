@interface MPSNDArrayBinaryPrimaryGradientKernel
- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf primarySourceArray:(MPSNDArray *)primarySourceArray secondarySourceArray:(MPSNDArray *)secondarySourceArray sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state;
- (MPSNDArrayBinaryPrimaryGradientKernel)initWithCoder:(NSCoder *)coder device:(id)device;
- (MPSNDArrayBinaryPrimaryGradientKernel)initWithDevice:(id)device;
- (void)encodeToCommandBuffer:(id)cmdBuf primarySourceArray:(MPSNDArray *)primarySourceArray secondarySourceArray:(MPSNDArray *)secondarySourceArray sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state destinationArray:(MPSNDArray *)destination;
@end

@implementation MPSNDArrayBinaryPrimaryGradientKernel

- (MPSNDArrayBinaryPrimaryGradientKernel)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayBinaryPrimaryGradientKernel;
  return [(MPSNDArrayMultiaryGradientKernel *)&v4 initWithDevice:device sourceCount:2 sourceGradientIndex:0];
}

- (MPSNDArrayBinaryPrimaryGradientKernel)initWithCoder:(NSCoder *)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayBinaryPrimaryGradientKernel;
  return [(MPSNDArrayMultiaryGradientKernel *)&v5 initWithCoder:coder device:device];
}

- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf primarySourceArray:(MPSNDArray *)primarySourceArray secondarySourceArray:(MPSNDArray *)secondarySourceArray sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = primarySourceArray;
  v9[1] = secondarySourceArray;
  v8.receiver = self;
  v8.super_class = MPSNDArrayBinaryPrimaryGradientKernel;
  return -[MPSNDArrayMultiaryGradientKernel encodeToCommandBuffer:sourceArrays:sourceGradient:gradientState:](&v8, sel_encodeToCommandBuffer_sourceArrays_sourceGradient_gradientState_, cmdBuf, [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2], gradient, state);
}

- (void)encodeToCommandBuffer:(id)cmdBuf primarySourceArray:(MPSNDArray *)primarySourceArray secondarySourceArray:(MPSNDArray *)secondarySourceArray sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state destinationArray:(MPSNDArray *)destination
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = primarySourceArray;
  v9[1] = secondarySourceArray;
  v8.receiver = self;
  v8.super_class = MPSNDArrayBinaryPrimaryGradientKernel;
  -[MPSNDArrayMultiaryGradientKernel encodeToCommandBuffer:sourceArrays:sourceGradient:gradientState:destinationArray:](&v8, sel_encodeToCommandBuffer_sourceArrays_sourceGradient_gradientState_destinationArray_, cmdBuf, [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2], gradient, state, destination);
}

@end