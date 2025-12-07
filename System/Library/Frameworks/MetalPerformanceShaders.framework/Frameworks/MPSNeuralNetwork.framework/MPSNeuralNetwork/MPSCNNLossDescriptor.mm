@interface MPSCNNLossDescriptor
+ (MPSCNNLossDescriptor)cnnLossDescriptorWithType:(MPSCNNLossType)lossType reductionType:(MPSCNNReductionType)reductionType;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)dealloc;
- (void)setDelta:(float)delta;
- (void)setEpsilon:(float)epsilon;
- (void)setLabelSmoothing:(float)labelSmoothing;
- (void)setNumberOfClasses:(NSUInteger)numberOfClasses;
@end

@implementation MPSCNNLossDescriptor

- (void)setLabelSmoothing:(float)labelSmoothing
{
  if (labelSmoothing < 0.0 || labelSmoothing > 1.0)
  {
    selfCopy = self;
    v14 = labelSmoothing;
    v15 = MTLReportFailureTypeEnabled();
    labelSmoothing = v14;
    v16 = v15;
    self = selfCopy;
    if (v16)
    {
      v17 = objc_opt_class();
      NSStringFromClass(v17);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNLoss.mm", 0xFD, @"[%@ setLabelSmoothing...] labelSmoothing must be in the range [0.0f, 1.0f]", v18, v19, v20, v21);
      self = selfCopy;
      labelSmoothing = v14;
    }
  }

  if (self->_lossType - 4 <= 0xFFFFFFFD && (v4 = self, v5 = labelSmoothing, v6 = MTLReportFailureTypeEnabled(), labelSmoothing = v5, v7 = v6, self = v4, v7))
  {
    v8 = objc_opt_class();
    NSStringFromClass(v8);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNLoss.mm", 0xFE, @"[%@ setLabelSmoothing...] labelSmoothing parameter is valid only for the following loss type(s): MPSCNNLossTypeSoftMaxCrossEntropy, MPSCNNLossTypeSigmoidCrossEntropy", v9, v10, v11, v12);
    v4->_labelSmoothing = v5;
  }

  else
  {
    self->_labelSmoothing = labelSmoothing;
  }
}

- (void)setNumberOfClasses:(NSUInteger)numberOfClasses
{
  if (!numberOfClasses)
  {
    selfCopy = self;
    v4 = MTLReportFailureTypeEnabled();
    numberOfClasses = 0;
    v5 = v4;
    self = selfCopy;
    if (v5)
    {
      v6 = objc_opt_class();
      NSStringFromClass(v6);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNLoss.mm", 0x105, @"[%@ setNumberOfClasses...] number of classes must be greater than 0", v7, v8, v9, v10);
      self = selfCopy;
      numberOfClasses = 0;
    }
  }

  if (self->_lossType == 2 || (v11 = self, v12 = numberOfClasses, v13 = MTLReportFailureTypeEnabled(), numberOfClasses = v12, v14 = v13, self = v11, !v14))
  {
    self->_numberOfClasses = numberOfClasses;
  }

  else
  {
    v15 = objc_opt_class();
    NSStringFromClass(v15);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNLoss.mm", 0x106, @"[%@ setNumberOfClasses...] number of classes parameter is valid only for the following loss type(s): MPSCNNLossTypeSoftMaxCrossEntropy", v16, v17, v18, v19);
    v11->_numberOfClasses = v12;
  }
}

- (void)setEpsilon:(float)epsilon
{
  if (self->_lossType == 8)
  {
    self->_epsilon = epsilon;
  }

  else
  {
    v5 = MTLReportFailureTypeEnabled();
    v6 = epsilon;
    v7 = v5;
    selfCopy2 = self;
    if (v7)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNLoss.mm", 0x10D, @"[%@ setEpsion...] epsilon parameter is valid only for the following loss type(s): MPSCNNLossTypeLog", v10, v11, v12, v13);
      selfCopy2 = self;
      v6 = epsilon;
    }

    selfCopy2->_epsilon = v6;
  }
}

- (void)setDelta:(float)delta
{
  if (self->_lossType == 6)
  {
    self->_delta = delta;
  }

  else
  {
    v5 = MTLReportFailureTypeEnabled();
    v6 = delta;
    v7 = v5;
    selfCopy2 = self;
    if (v7)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNLoss.mm", 0x114, @"[%@ setDelta...] delta parameter is valid only for the following loss type(s): MPSCNNLossTypeHuber", v10, v11, v12, v13);
      selfCopy2 = self;
      v6 = delta;
    }

    selfCopy2->_delta = v6;
  }
}

+ (MPSCNNLossDescriptor)cnnLossDescriptorWithType:(MPSCNNLossType)lossType reductionType:(MPSCNNReductionType)reductionType
{
  if (lossType >= MPSCNNLossTypeCount)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v8 = objc_opt_class();
      NSStringFromClass(v8);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNLoss.mm", 0x11E, @"[%@ cnnLossDescriptorWithType:reductionType:...] invalid loss type (%lu)", v9, v10, v11, v12);
    }

    return 0;
  }

  else if (reductionType >= MPSCNNReductionTypeCount)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v14 = objc_opt_class();
      NSStringFromClass(v14);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNLoss.mm", 0x120, @"[%@ cnnLossDescriptorWithType:reductionType:...] invalid reduction type (%lu)", v15, v16, v17, v18);
    }

    return 0;
  }

  else
  {
    result = objc_opt_new();
    if (result)
    {
      result->_lossType = lossType;
      result->_reductionType = reductionType;
      result->_reduceAcrossBatch = 0;
      *&result->_weight = 1065353216;
      result->_numberOfClasses = 1;
      *&result->_epsilon = 0x3F80000033D6BF95;
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  result = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8, v9, v10, v11);
  if (result)
  {
    *(result + 1) = *&self->_lossType;
    *(result + 16) = self->_reduceAcrossBatch;
    *(result + 5) = LODWORD(self->_weight);
    *(result + 6) = LODWORD(self->_labelSmoothing);
    *(result + 4) = self->_numberOfClasses;
    *(result + 10) = LODWORD(self->_epsilon);
    *(result + 11) = LODWORD(self->_delta);
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSCNNLossDescriptor;
  [(MPSCNNLossDescriptor *)&v2 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSCNNLossDescriptor;
  v4 = [(MPSCNNLossDescriptor *)&v12 debugDescription];
  if (self->_reduceAcrossBatch)
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tlossType: %d\treductionType: %d across batches: %s\tweight: %f\tlabelSmoothing: %f\tnumberOfClasses: %lu\tepsilon: %f\tdelta: %f", v6, v7, v8, v9, v10, v4, self->_lossType, self->_reductionType, "YES", self->_weight, self->_labelSmoothing, self->_numberOfClasses, self->_epsilon, self->_delta);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tlossType: %d\treductionType: %d across batches: %s\tweight: %f\tlabelSmoothing: %f\tnumberOfClasses: %lu\tepsilon: %f\tdelta: %f", v6, v7, v8, v9, v10, v4, self->_lossType, self->_reductionType, "NO", self->_weight, self->_labelSmoothing, self->_numberOfClasses, self->_epsilon, self->_delta);
  }
}

@end