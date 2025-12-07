@interface MPSImageScale
- (MPSImageScale)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageScale)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
- (void)setScaleTransform:(const MPSScaleTransform *)scaleTransform;
@end

@implementation MPSImageScale

- (MPSImageScale)initWithDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSImageScale;
  result = [(MPSUnaryImageKernel *)&v5 initWithDevice:device];
  if (result)
  {
    result->_scaleTransform = 0;
    result->super._checkFlags |= 0x4000u;
    v4 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&result->_transformStorage.scaleX = v4;
    *&result->_transformStorage.translateX = v4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSImageScale;
  result = [(MPSUnaryImageKernel *)&v8 copyWithZone:zone device:device];
  if (result)
  {
    if (self->_scaleTransform)
    {
      v6 = result + 208;
    }

    else
    {
      v6 = 0;
    }

    *(result + 30) = v6;
    v7 = *&self->_transformStorage.translateX;
    *(result + 13) = *&self->_transformStorage.scaleX;
    *(result + 14) = v7;
  }

  return result;
}

- (MPSImageScale)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v23.receiver = self;
  v23.super_class = MPSImageScale;
  v5 = [(MPSUnaryImageKernel *)&v23 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_scaleTransform = 0;
    v5->super._checkFlags |= 0x4000u;
    p_transformStorage = &v5->_transformStorage;
    v9 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v5->_transformStorage.scaleX = v9;
    *&v5->_transformStorage.translateX = v9;
    if (objc_msgSend_containsValueForKey_(aDecoder, v6, @"MPSImageScaleScaleX"))
    {
      objc_msgSend_decodeDoubleForKey_(aDecoder, v10, @"MPSImageScaleScaleX");
      p_transformStorage->scaleX = v16;
      v7->_scaleTransform = p_transformStorage;
      if (!objc_msgSend_containsValueForKey_(aDecoder, v17, @"MPSImageScaleScaleY"))
      {
LABEL_5:
        if (!objc_msgSend_containsValueForKey_(aDecoder, v11, @"MPSImageScaleTranslateX"))
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }
    }

    else if (!objc_msgSend_containsValueForKey_(aDecoder, v10, @"MPSImageScaleScaleY"))
    {
      goto LABEL_5;
    }

    objc_msgSend_decodeDoubleForKey_(aDecoder, v11, @"MPSImageScaleScaleY");
    v7->_transformStorage.scaleY = v18;
    v7->_scaleTransform = p_transformStorage;
    if (!objc_msgSend_containsValueForKey_(aDecoder, v19, @"MPSImageScaleTranslateX"))
    {
LABEL_6:
      if (!objc_msgSend_containsValueForKey_(aDecoder, v12, @"MPSImageScaleTranslateY"))
      {
        return v7;
      }

      goto LABEL_14;
    }

LABEL_13:
    objc_msgSend_decodeDoubleForKey_(aDecoder, v12, @"MPSImageScaleTranslateX");
    v7->_transformStorage.translateX = v20;
    v7->_scaleTransform = p_transformStorage;
    if (!objc_msgSend_containsValueForKey_(aDecoder, v21, @"MPSImageScaleTranslateY"))
    {
      return v7;
    }

LABEL_14:
    objc_msgSend_decodeDoubleForKey_(aDecoder, v13, @"MPSImageScaleTranslateY");
    v7->_transformStorage.translateY = v22;
    v7->_scaleTransform = p_transformStorage;
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v15 = objc_opt_class();
    NSStringFromClass(v15);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v10.receiver = self;
  v10.super_class = MPSImageScale;
  [(MPSUnaryImageKernel *)&v10 encodeWithCoder:?];
  scaleTransform = self->_scaleTransform;
  if (scaleTransform)
  {
    objc_msgSend_encodeDouble_forKey_(coder, v5, @"MPSImageScaleScaleX", scaleTransform->scaleX);
    objc_msgSend_encodeDouble_forKey_(coder, v7, @"MPSImageScaleScaleY", self->_scaleTransform->scaleY);
    objc_msgSend_encodeDouble_forKey_(coder, v8, @"MPSImageScaleTranslateX", self->_scaleTransform->translateX);
    objc_msgSend_encodeDouble_forKey_(coder, v9, @"MPSImageScaleTranslateY", self->_scaleTransform->translateY);
  }
}

- (void)setScaleTransform:(const MPSScaleTransform *)scaleTransform
{
  if (scaleTransform)
  {
    v3 = *&scaleTransform->translateX;
    *&self->_transformStorage.scaleX = *&scaleTransform->scaleX;
    *&self->_transformStorage.translateX = v3;
    self->_scaleTransform = &self->_transformStorage;
  }

  else
  {
    self->_scaleTransform = 0;
  }
}

@end