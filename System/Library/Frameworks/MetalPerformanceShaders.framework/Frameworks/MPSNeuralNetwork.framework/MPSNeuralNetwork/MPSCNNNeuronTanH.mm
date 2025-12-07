@interface MPSCNNNeuronTanH
- (MPSCNNNeuronTanH)initWithDevice:(id)device a:(float)a b:(float)b;
- (MPSCNNNeuronTanH)initWithDevice:(id)device neuronDescriptor:(id)descriptor;
- (MPSCNNNeuronTanH)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array;
@end

@implementation MPSCNNNeuronTanH

- (MPSCNNNeuronTanH)initWithDevice:(id)device a:(float)a b:(float)b
{
  v6.receiver = self;
  v6.super_class = MPSCNNNeuronTanH;
  return [MPSCNNNeuron privateInitWithDevice:sel_privateInitWithDevice_a_b_c_type_ a:device b:5 c:? type:?];
}

- (MPSCNNNeuronTanH)initWithDevice:(id)device neuronDescriptor:(id)descriptor
{
  objc_msgSend_init(self, a2, device, descriptor, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNNeuron.mm", 0x651, @"Cannot call this initializer on this class.\n", v8, v9, v10, v11);
  }

  return 0;
}

- (MPSCNNNeuronTanH)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array
{
  objc_msgSend_init(self, a2, device, descriptor, array, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNNeuron.mm", 0x65A, @"Cannot call this initializer on this class.\n", v8, v9, v10, v11);
  }

  return 0;
}

@end