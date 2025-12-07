@interface MPSCNNBinaryFullyConnected
- (MPSCNNBinaryFullyConnected)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNBinaryFullyConnected)initWithDevice:(id)device;
- (MPSCNNBinaryFullyConnected)initWithDevice:(id)device convolutionData:(id)convolutionData outputBiasTerms:(const float *)outputBiasTerms outputScaleTerms:(const float *)outputScaleTerms inputBiasTerms:(const float *)inputBiasTerms inputScaleTerms:(const float *)inputScaleTerms type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags;
- (MPSCNNBinaryFullyConnected)initWithDevice:(id)device convolutionData:(id)convolutionData scaleValue:(float)scaleValue type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags;
- (MPSCNNBinaryFullyConnected)initWithDeviceImpl:(id)impl convolutionDescriptor:(id)descriptor kernelWeights:(const unsigned int *)weights outputBiasTerms:(const float *)terms outputScaleTerms:(const float *)scaleTerms inputBiasTerms:(const float *)biasTerms inputScaleTerms:(const float *)inputScaleTerms type:(unint64_t)self0 flags:(unint64_t)self1;
- (MPSCNNBinaryFullyConnected)initWithDeviceImpl:(id)impl convolutionDescriptor:(id)descriptor kernelWeights:(const unsigned int *)weights scaleValue:(float)value type:(unint64_t)type flags:(unint64_t)flags;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNBinaryFullyConnected

- (MPSCNNBinaryFullyConnected)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryConvolution.mm", 0x74B, @"Please initialize the %@ class with initWithDevice:convolutionDescriptor:kernelWeights:biasTerms\n", v4, v5, v6, v7);
  }

  return 0;
}

- (MPSCNNBinaryFullyConnected)initWithDeviceImpl:(id)impl convolutionDescriptor:(id)descriptor kernelWeights:(const unsigned int *)weights scaleValue:(float)value type:(unint64_t)type flags:(unint64_t)flags
{
  result = objc_msgSend_initWithDeviceImpl_convolutionDescriptor_kernelWeights_outputBiasTerms_outputScaleTerms_inputBiasTerms_inputScaleTerms_type_flags_(self, a2, impl, descriptor, weights, 0, 0, 0, 0, type, flags);
  if (result)
  {
    result->super._outputScaleValue = value;
  }

  return result;
}

- (MPSCNNBinaryFullyConnected)initWithDevice:(id)device convolutionData:(id)convolutionData scaleValue:(float)scaleValue type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags
{
  if (!objc_msgSend_load(convolutionData, a2, device, convolutionData, type, flags, v7, v8))
  {
    return 0;
  }

  v21 = objc_msgSend_descriptor(convolutionData, v14, v15, v16, v17, v18, v19, v20);
  v29 = objc_msgSend_weights(convolutionData, v22, v23, v24, v25, v26, v27, v28);
  v37 = objc_msgSend_biasTerms(convolutionData, v30, v31, v32, v33, v34, v35, v36);
  v39 = objc_msgSend_initWithDeviceImpl_convolutionDescriptor_kernelWeights_outputBiasTerms_outputScaleTerms_inputBiasTerms_inputScaleTerms_type_flags_(self, v38, device, v21, v29, v37, 0, 0, 0, type, flags);
  objc_msgSend_purge(convolutionData, v40, v41, v42, v43, v44, v45, v46);
  return v39;
}

- (MPSCNNBinaryFullyConnected)initWithDeviceImpl:(id)impl convolutionDescriptor:(id)descriptor kernelWeights:(const unsigned int *)weights outputBiasTerms:(const float *)terms outputScaleTerms:(const float *)scaleTerms inputBiasTerms:(const float *)biasTerms inputScaleTerms:(const float *)inputScaleTerms type:(unint64_t)self0 flags:(unint64_t)self1
{
  if (*(descriptor + 8) != 1)
  {
    selfCopy = self;
    biasTermsCopy = biasTerms;
    scaleTermsCopy = scaleTerms;
    termsCopy = terms;
    weightsCopy = weights;
    descriptorCopy = descriptor;
    v18 = MTLReportFailureTypeEnabled();
    descriptor = descriptorCopy;
    weights = weightsCopy;
    terms = termsCopy;
    scaleTerms = scaleTermsCopy;
    biasTerms = biasTermsCopy;
    v19 = v18;
    self = selfCopy;
    if (v19)
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryConvolution.mm", 0x786, @"Number of groups for inner product should be 1", weightsCopy, termsCopy, scaleTermsCopy, biasTermsCopy);
      self = selfCopy;
      descriptor = descriptorCopy;
      weights = weightsCopy;
      terms = termsCopy;
      scaleTerms = scaleTermsCopy;
      biasTerms = biasTermsCopy;
    }
  }

  if (*(descriptor + 6) != 1)
  {
    selfCopy2 = self;
    biasTermsCopy2 = biasTerms;
    scaleTermsCopy2 = scaleTerms;
    termsCopy2 = terms;
    weightsCopy2 = weights;
    descriptorCopy2 = descriptor;
    v26 = MTLReportFailureTypeEnabled();
    descriptor = descriptorCopy2;
    weights = weightsCopy2;
    terms = termsCopy2;
    scaleTerms = scaleTermsCopy2;
    biasTerms = biasTermsCopy2;
    v27 = v26;
    self = selfCopy2;
    if (v27)
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryConvolution.mm", 0x787, @"strideX for inner product should be 1", weightsCopy2, termsCopy2, scaleTermsCopy2, biasTermsCopy2);
      self = selfCopy2;
      descriptor = descriptorCopy2;
      weights = weightsCopy2;
      terms = termsCopy2;
      scaleTerms = scaleTermsCopy2;
      biasTerms = biasTermsCopy2;
    }
  }

  if (*(descriptor + 7) != 1)
  {
    selfCopy3 = self;
    biasTermsCopy3 = biasTerms;
    scaleTermsCopy3 = scaleTerms;
    termsCopy3 = terms;
    weightsCopy3 = weights;
    v33 = MTLReportFailureTypeEnabled();
    self = selfCopy3;
    if (v33)
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryConvolution.mm", 0x788, @"strideY for inner product should be 1", weightsCopy3, termsCopy3, scaleTermsCopy3, biasTermsCopy3);
      self = selfCopy3;
    }
  }

  v34.receiver = self;
  v34.super_class = MPSCNNBinaryFullyConnected;
  result = [MPSCNNBinaryConvolution initWithDeviceImpl:sel_initWithDeviceImpl_convolutionDescriptor_kernelWeights_outputBiasTerms_outputScaleTerms_inputBiasTerms_inputScaleTerms_type_flags_ convolutionDescriptor:inputScaleTerms kernelWeights:type outputBiasTerms:flags outputScaleTerms:? inputBiasTerms:? inputScaleTerms:? type:? flags:?];
  if (result)
  {
    result->super.super._encode = sub_239D70B04;
    result->super.super._encodeData = result;
  }

  return result;
}

- (MPSCNNBinaryFullyConnected)initWithDevice:(id)device convolutionData:(id)convolutionData outputBiasTerms:(const float *)outputBiasTerms outputScaleTerms:(const float *)outputScaleTerms inputBiasTerms:(const float *)inputBiasTerms inputScaleTerms:(const float *)inputScaleTerms type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags
{
  v13 = outputBiasTerms;
  if (!objc_msgSend_load(convolutionData, a2, device, convolutionData, outputBiasTerms, outputScaleTerms, inputBiasTerms, inputScaleTerms))
  {
    return 0;
  }

  v24 = objc_msgSend_descriptor(convolutionData, v17, v18, v19, v20, v21, v22, v23);
  v39 = objc_msgSend_weights(convolutionData, v25, v26, v27, v28, v29, v30, v31);
  if (!v13)
  {
    v13 = objc_msgSend_biasTerms(convolutionData, v32, v33, v34, v35, v36, v37, v38);
  }

  v40 = objc_msgSend_initWithDeviceImpl_convolutionDescriptor_kernelWeights_outputBiasTerms_outputScaleTerms_inputBiasTerms_inputScaleTerms_type_flags_(self, v32, device, v24, v39, v13, outputScaleTerms, inputBiasTerms, inputScaleTerms, type, flags);
  objc_msgSend_purge(convolutionData, v41, v42, v43, v44, v45, v46, v47);
  return v40;
}

- (MPSCNNBinaryFullyConnected)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSCNNBinaryFullyConnected;
  result = [(MPSCNNBinaryConvolution *)&v11 initWithCoder:aDecoder device:device];
  if (result)
  {
    if (*(&result->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      result->super.super._encode = sub_239D70B04;
      result->super.super._encodeData = result;
    }

    else
    {
      v5 = result;
      if (MTLReportFailureTypeEnabled())
      {
        v6 = objc_opt_class();
        NSStringFromClass(v6);
        MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryConvolution.mm", 0x7BE, @"[%@ initWithCoder:device:] Failed: unsupported file version.", v7, v8, v9, v10);
      }

      return 0;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSCNNBinaryFullyConnected;
  [(MPSCNNBinaryConvolution *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSCNNBinaryFullyConnected;
  result = [(MPSCNNBinaryConvolution *)&v5 copyWithZone:zone device:device];
  *(result + 36) = sub_239D70B04;
  *(result + 38) = result;
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSCNNBinaryFullyConnected;
  [(MPSCNNBinaryConvolution *)&v2 dealloc];
}

@end