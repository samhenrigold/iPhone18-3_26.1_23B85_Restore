@interface MPSImageArithmetic
- (MPSImageArithmetic)initWithCoder:(id)coder device:(id)device;
- (MPSImageArithmetic)initWithDevice:(id)device;
- (MPSImageArithmetic)initWithDevice:(id)device arithmeticType:(int)type;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setPrimaryStrideInPixels:(MTLSize *)primaryStrideInPixels;
- (void)setSecondaryStrideInPixels:(MTLSize *)secondaryStrideInPixels;
@end

@implementation MPSImageArithmetic

- (void)setPrimaryStrideInPixels:(MTLSize *)primaryStrideInPixels
{
  if (primaryStrideInPixels->width >= 2)
  {
    selfCopy = self;
    v5 = primaryStrideInPixels;
    v6 = MTLReportFailureTypeEnabled();
    primaryStrideInPixels = v5;
    v7 = v6;
    self = selfCopy;
    if (v7)
    {
      v8 = objc_opt_class();
      NSStringFromClass(v8);
      MTLReportFailure();
      self = selfCopy;
      primaryStrideInPixels = v5;
    }
  }

  if (primaryStrideInPixels->height >= 2)
  {
    selfCopy2 = self;
    v10 = primaryStrideInPixels;
    v11 = MTLReportFailureTypeEnabled();
    primaryStrideInPixels = v10;
    v12 = v11;
    self = selfCopy2;
    if (v12)
    {
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      MTLReportFailure();
      self = selfCopy2;
      primaryStrideInPixels = v10;
    }
  }

  if (primaryStrideInPixels->depth >= 2)
  {
    selfCopy3 = self;
    v15 = primaryStrideInPixels;
    v16 = MTLReportFailureTypeEnabled();
    primaryStrideInPixels = v15;
    v17 = v16;
    self = selfCopy3;
    if (v17)
    {
      v18 = objc_opt_class();
      NSStringFromClass(v18);
      MTLReportFailure();
      self = selfCopy3;
      primaryStrideInPixels = v15;
    }
  }

  depth = primaryStrideInPixels->depth;
  *&self->_primaryStrideInPixels.width = *&primaryStrideInPixels->width;
  self->_primaryStrideInPixels.depth = depth;
}

- (void)setSecondaryStrideInPixels:(MTLSize *)secondaryStrideInPixels
{
  if (secondaryStrideInPixels->width >= 2)
  {
    selfCopy = self;
    v5 = secondaryStrideInPixels;
    v6 = MTLReportFailureTypeEnabled();
    secondaryStrideInPixels = v5;
    v7 = v6;
    self = selfCopy;
    if (v7)
    {
      v8 = objc_opt_class();
      NSStringFromClass(v8);
      MTLReportFailure();
      self = selfCopy;
      secondaryStrideInPixels = v5;
    }
  }

  if (secondaryStrideInPixels->height >= 2)
  {
    selfCopy2 = self;
    v10 = secondaryStrideInPixels;
    v11 = MTLReportFailureTypeEnabled();
    secondaryStrideInPixels = v10;
    v12 = v11;
    self = selfCopy2;
    if (v12)
    {
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      MTLReportFailure();
      self = selfCopy2;
      secondaryStrideInPixels = v10;
    }
  }

  if (secondaryStrideInPixels->depth >= 2)
  {
    selfCopy3 = self;
    v15 = secondaryStrideInPixels;
    v16 = MTLReportFailureTypeEnabled();
    secondaryStrideInPixels = v15;
    v17 = v16;
    self = selfCopy3;
    if (v17)
    {
      v18 = objc_opt_class();
      NSStringFromClass(v18);
      MTLReportFailure();
      self = selfCopy3;
      secondaryStrideInPixels = v15;
    }
  }

  depth = secondaryStrideInPixels->depth;
  *&self->_secondaryStrideInPixels.width = *&secondaryStrideInPixels->width;
  self->_secondaryStrideInPixels.depth = depth;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSImageArithmetic;
  [(MPSKernel *)&v2 dealloc];
}

- (MPSImageArithmetic)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSImageArithmetic)initWithDevice:(id)device arithmeticType:(int)type
{
  v8.receiver = self;
  v8.super_class = MPSImageArithmetic;
  result = [(MPSBinaryImageKernel *)&v8 initWithDevice:device];
  if (result)
  {
    result->_primaryScale = 1.0;
    result->_secondaryScale = 1.0;
    result->_bias = 0.0;
    result->_minimumValue = -INFINITY;
    result->_maximumValue = INFINITY;
    v6 = vdupq_n_s64(1uLL);
    *&result->_primaryStrideInPixels.width = v6;
    result->_primaryStrideInPixels.depth = 1;
    *&result->_secondaryStrideInPixels.width = v6;
    result->_secondaryStrideInPixels.depth = 1;
    if (type >= 4)
    {
      v7 = result;
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      return 0;
    }

    else
    {
      result->_arithmeticType = type;
      result->super._encode = sub_2399526E4;
      result->super._encodeData = result;
      result->super._checkFlags = 2561;
    }
  }

  return result;
}

- (MPSImageArithmetic)initWithCoder:(id)coder device:(id)device
{
  v26.receiver = self;
  v26.super_class = MPSImageArithmetic;
  v5 = [(MPSBinaryImageKernel *)&v26 initWithCoder:coder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_decodeFloatForKey_(coder, v6, @"MPSArithmetic.primaryScale");
    v7->_primaryScale = v8;
    objc_msgSend_decodeFloatForKey_(coder, v9, @"MPSArithmetic.secondaryScale");
    v7->_secondaryScale = v10;
    objc_msgSend_decodeFloatForKey_(coder, v11, @"MPSArithmetic.bias");
    v7->_bias = v12;
    objc_msgSend_decodeFloatForKey_(coder, v13, @"MPSArithmetic.minimumValue");
    v7->_minimumValue = v14;
    objc_msgSend_decodeFloatForKey_(coder, v15, @"MPSArithmetic.maximumValue");
    v7->_maximumValue = v16;
    v7->_primaryStrideInPixels.width = objc_msgSend_decodeInt64ForKey_(coder, v17, @"MPSArithmetic.primaryStrideInPixelsX");
    v7->_primaryStrideInPixels.height = objc_msgSend_decodeInt64ForKey_(coder, v18, @"MPSArithmetic.primaryStrideInPixelsY");
    v7->_primaryStrideInPixels.depth = objc_msgSend_decodeInt64ForKey_(coder, v19, @"MPSArithmetic.primaryStrideInPixelsZ");
    v7->_secondaryStrideInPixels.width = objc_msgSend_decodeInt64ForKey_(coder, v20, @"MPSArithmetic.secondaryStrideInPixelsX");
    v7->_secondaryStrideInPixels.height = objc_msgSend_decodeInt64ForKey_(coder, v21, @"MPSArithmetic.secondaryStrideInPixelsY");
    v7->_secondaryStrideInPixels.depth = objc_msgSend_decodeInt64ForKey_(coder, v22, @"MPSArithmetic.secondaryStrideInPixelsZ");
    v7->_arithmeticType = objc_msgSend_decodeInt64ForKey_(coder, v23, @"MPSArithmetic.arithmeticType");
    v7->super._encode = sub_2399526E4;
    v7->super._encodeData = v7;
    v7->super._checkFlags = 2561;
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v25 = objc_opt_class();
    NSStringFromClass(v25);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v22.receiver = self;
  v22.super_class = MPSImageArithmetic;
  [(MPSBinaryImageKernel *)&v22 encodeWithCoder:?];
  *&v5 = self->_primaryScale;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSArithmetic.primaryScale", v5);
  *&v7 = self->_secondaryScale;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"MPSArithmetic.secondaryScale", v7);
  *&v9 = self->_bias;
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"MPSArithmetic.bias", v9);
  *&v11 = self->_minimumValue;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"MPSArithmetic.minimumValue", v11);
  *&v13 = self->_maximumValue;
  objc_msgSend_encodeFloat_forKey_(coder, v14, @"MPSArithmetic.maximumValue", v13);
  objc_msgSend_encodeInt64_forKey_(coder, v15, self->_primaryStrideInPixels.width, @"MPSArithmetic.primaryStrideInPixelsX");
  objc_msgSend_encodeInt64_forKey_(coder, v16, self->_primaryStrideInPixels.height, @"MPSArithmetic.primaryStrideInPixelsY");
  objc_msgSend_encodeInt64_forKey_(coder, v17, self->_primaryStrideInPixels.depth, @"MPSArithmetic.primaryStrideInPixelsZ");
  objc_msgSend_encodeInt64_forKey_(coder, v18, self->_secondaryStrideInPixels.width, @"MPSArithmetic.secondaryStrideInPixelsX");
  objc_msgSend_encodeInt64_forKey_(coder, v19, self->_secondaryStrideInPixels.height, @"MPSArithmetic.secondaryStrideInPixelsY");
  objc_msgSend_encodeInt64_forKey_(coder, v20, self->_secondaryStrideInPixels.depth, @"MPSArithmetic.secondaryStrideInPixelsZ");
  objc_msgSend_encodeInt64_forKey_(coder, v21, self->_arithmeticType, @"MPSArithmetic.arithmeticType");
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSImageArithmetic;
  result = [(MPSBinaryImageKernel *)&v8 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 58) = LODWORD(self->_primaryScale);
    *(result + 59) = LODWORD(self->_secondaryScale);
    *(result + 60) = LODWORD(self->_bias);
    *(result + 61) = LODWORD(self->_minimumValue);
    *(result + 62) = LODWORD(self->_maximumValue);
    depth = self->_primaryStrideInPixels.depth;
    *(result + 16) = *&self->_primaryStrideInPixels.width;
    *(result + 34) = depth;
    v7 = self->_secondaryStrideInPixels.depth;
    *(result + 280) = *&self->_secondaryStrideInPixels.width;
    *(result + 37) = v7;
    *(result + 76) = self->_arithmeticType;
    *(result + 26) = sub_2399526E4;
    *(result + 27) = self;
    *(result + 50) = 2561;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSImageArithmetic;
  v4 = [(MPSBinaryImageKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tprimaryScale: %f\n \tsecondaryScale: %f\n \tbias: %f\n \tminmumValue: %f\n \tmaximumValue: %f\n \tprimaryStrideInPixelsX: %lu\n \tprimaryStrideInPixelsY: %lu\n \tprimaryStrideInPixelsZ: %lu\n \tsecondaryStrideInPixelsX: %lu\n \tsecondaryStrideInPixelsY: %lu\n \tsecondaryStrideInPixelsZ: %lu\n \tarithmeticType: %lu", v4, self->_primaryScale, self->_secondaryScale, self->_bias, self->_minimumValue, self->_maximumValue, self->_primaryStrideInPixels.width, self->_primaryStrideInPixels.height, self->_primaryStrideInPixels.depth, self->_secondaryStrideInPixels.width, self->_secondaryStrideInPixels.height, self->_secondaryStrideInPixels.depth, self->_arithmeticType);
}

@end