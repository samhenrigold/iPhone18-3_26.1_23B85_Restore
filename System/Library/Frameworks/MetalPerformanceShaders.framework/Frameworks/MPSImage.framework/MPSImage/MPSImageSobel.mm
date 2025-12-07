@interface MPSImageSobel
- (MPSImageSobel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageSobel)initWithDevice:(id)device;
- (MPSImageSobel)initWithDevice:(id)device linearGrayColorTransform:(const float *)transform;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageSobel

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v13 = *a4;
  v12.receiver = self;
  v12.super_class = MPSImageSobel;
  result = [(MPSRegion *)&v12 sourceRegionForDestinationSize:&v13];
  __asm { FMOV            V1.2D, #-1.0 }

  *&retstr->origin.x = vaddq_f64(*&retstr->origin.x, _Q1);
  __asm { FMOV            V1.2D, #2.0 }

  *&retstr->size.width = vaddq_f64(*&retstr->size.width, _Q1);
  return result;
}

- (MPSImageSobel)initWithDevice:(id)device
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0x3F1645A23E991687;
  v5 = 1038710997;
  return objc_msgSend_initWithDevice_linearGrayColorTransform_(self, a2, device, &v4);
}

- (MPSImageSobel)initWithDevice:(id)device linearGrayColorTransform:(const float *)transform
{
  v8.receiver = self;
  v8.super_class = MPSImageSobel;
  result = [(MPSUnaryImageKernel *)&v8 initWithDevice:device];
  if (result)
  {
    if (transform)
    {
      v6 = transform[2];
      *result->_colVec = *transform;
      result->_colVec[2] = v6;
      result->super._checkFlags |= 2u;
      result->super._encode = sub_23994F288;
      result->super._encodeData = result;
    }

    else
    {
      v7 = result;
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      return 0;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v11.receiver = self;
  v11.super_class = MPSImageSobel;
  [(MPSUnaryImageKernel *)&v11 encodeWithCoder:?];
  selfCopy = (selfCopy + 208);
  LODWORD(v5) = selfCopy->super.super.super.isa;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSImageSobel.transformR", v5);
  LODWORD(v7) = HIDWORD(selfCopy->super.super.super.isa);
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"MPSImageSobel.transformG", v7);
  LODWORD(v9) = selfCopy->super.super._options;
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"MPSImageSobel.transformB", v9);
}

- (MPSImageSobel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v15.receiver = self;
  v15.super_class = MPSImageSobel;
  v5 = [(MPSUnaryImageKernel *)&v15 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_decodeFloatForKey_(aDecoder, v6, @"MPSImageSobel.transformR");
    v7->_colVec[0] = v8;
    objc_msgSend_decodeFloatForKey_(aDecoder, v9, @"MPSImageSobel.transformG");
    v7->_colVec[1] = v10;
    objc_msgSend_decodeFloatForKey_(aDecoder, v11, @"MPSImageSobel.transformB");
    v7->_colVec[2] = v12;
    v7->super._checkFlags |= 2u;
    v7->super._encode = sub_23994F288;
    v7->super._encodeData = v7;
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v14 = objc_opt_class();
    NSStringFromClass(v14);
    MTLReportFailure();
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSImageSobel;
  result = [(MPSUnaryImageKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 52) = LODWORD(self->_colVec[0]);
    *(result + 53) = LODWORD(self->_colVec[1]);
    *(result + 54) = LODWORD(self->_colVec[2]);
  }

  return result;
}

@end