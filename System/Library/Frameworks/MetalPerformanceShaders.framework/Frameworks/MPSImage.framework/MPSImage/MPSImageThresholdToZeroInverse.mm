@interface MPSImageThresholdToZeroInverse
- (MPSImageThresholdToZeroInverse)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageThresholdToZeroInverse)initWithDevice:(id)device;
- (MPSImageThresholdToZeroInverse)initWithDevice:(id)device thresholdValue:(float)thresholdValue linearGrayColorTransform:(const float *)transform;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageThresholdToZeroInverse

- (MPSImageThresholdToZeroInverse)initWithDevice:(id)device thresholdValue:(float)thresholdValue linearGrayColorTransform:(const float *)transform
{
  v9.receiver = self;
  v9.super_class = MPSImageThresholdToZeroInverse;
  result = [(MPSUnaryImageKernel *)&v9 initWithDevice:device];
  if (result)
  {
    result->filterInfo.threshold_value = thresholdValue;
    if (transform)
    {
      result->filterInfo.matrix[0] = *transform;
      result->filterInfo.matrix[1] = transform[1];
      v8 = transform[2];
    }

    else
    {
      v8 = 0.114;
      *result->filterInfo.matrix = 0x3F1645A23E991687;
    }

    result->filterInfo.matrix[2] = v8;
    result->super._checkFlags |= 2u;
    result->super._encode = sub_239977C78;
    result->super._encodeData = result;
  }

  return result;
}

- (MPSImageThresholdToZeroInverse)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v19.receiver = self;
  v19.super_class = MPSImageThresholdToZeroInverse;
  v5 = [(MPSUnaryImageKernel *)&v19 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->super._checkFlags |= 2u;
    v5->super._encode = sub_239977C78;
    v5->super._encodeData = v5;
    objc_msgSend_decodeFloatForKey_(aDecoder, v6, @"MPSImageThreshold.threshold");
    v7->filterInfo.threshold_value = v8;
    objc_msgSend_decodeFloatForKey_(aDecoder, v9, @"MPSImageThreshold.max");
    v7->filterInfo.max_value = v10;
    objc_msgSend_decodeFloatForKey_(aDecoder, v11, @"MPSImageThreshold.matrixR");
    v7->filterInfo.matrix[0] = v12;
    objc_msgSend_decodeFloatForKey_(aDecoder, v13, @"MPSImageThreshold.matrixG");
    v7->filterInfo.matrix[1] = v14;
    objc_msgSend_decodeFloatForKey_(aDecoder, v15, @"MPSImageThreshold.matrixB");
    v7->filterInfo.matrix[2] = v16;
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v18 = objc_opt_class();
    NSStringFromClass(v18);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v15.receiver = self;
  v15.super_class = MPSImageThresholdToZeroInverse;
  [(MPSUnaryImageKernel *)&v15 encodeWithCoder:?];
  selfCopy = (selfCopy + 208);
  LODWORD(v5) = selfCopy->super.super.super.isa;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSImageThreshold.threshold", v5);
  LODWORD(v7) = HIDWORD(selfCopy->super.super.super.isa);
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"MPSImageThreshold.max", v7);
  LODWORD(v9) = selfCopy->super.super._options;
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"MPSImageThreshold.matrixR", v9);
  LODWORD(v11) = HIDWORD(selfCopy->super.super._options);
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"MPSImageThreshold.matrixG", v11);
  LODWORD(v13) = selfCopy->super.super._verbosityLevel;
  objc_msgSend_encodeFloat_forKey_(coder, v14, @"MPSImageThreshold.matrixB", v13);
}

- (MPSImageThresholdToZeroInverse)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return MEMORY[0x2821F9670](self, sel_initWithDevice_thresholdValue_linearGrayColorTransform_, device);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSImageThresholdToZeroInverse;
  result = [(MPSUnaryImageKernel *)&v7 copyWithZone:zone device:device];
  if (result)
  {
    v6 = self->filterInfo.matrix[2];
    *(result + 13) = *&self->filterInfo.threshold_value;
    *(result + 56) = v6;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSImageThresholdToZeroInverse;
  v4 = [(MPSUnaryImageKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tthreshold: %f\n\ttransform: {%f %f %f}", v4, self->filterInfo.threshold_value, self->filterInfo.matrix[0], self->filterInfo.matrix[1], self->filterInfo.matrix[2]);
}

@end