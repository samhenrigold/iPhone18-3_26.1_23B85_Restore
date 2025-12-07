@interface VFXViewConfiguration
- (VFXViewConfiguration)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VFXViewConfiguration

- (void)dealloc
{
  objc_msgSend_setColorSpaceName_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = VFXViewConfiguration;
  [(VFXViewConfiguration *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v5 = objc_msgSend_colorSpaceName(self, a2, coder);
  objc_msgSend_encodeObject_forKey_(coder, v6, v5, @"colorSpaceName");
  v9 = objc_msgSend_pixelFormat(self, v7, v8);
  objc_msgSend_encodeInteger_forKey_(coder, v10, v9, @"pixelFormat");
  v13 = objc_msgSend_wantsExtendedDynamicRange(self, v11, v12);
  objc_msgSend_encodeBool_forKey_(coder, v14, v13, @"hdr");
  v18 = objc_msgSend_additiveWritesToAlpha(self, v15, v16);

  objc_msgSend_encodeBool_forKey_(coder, v17, v18, @"additiveAlpha");
}

- (VFXViewConfiguration)initWithCoder:(id)coder
{
  v19.receiver = self;
  v19.super_class = VFXViewConfiguration;
  v4 = [(VFXViewConfiguration *)&v19 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"colorSpaceName");
    objc_msgSend_setColorSpaceName_(v4, v8, v7);
    v10 = objc_msgSend_decodeIntegerForKey_(coder, v9, @"pixelFormat");
    objc_msgSend_setPixelFormat_(v4, v11, v10);
    v13 = objc_msgSend_decodeBoolForKey_(coder, v12, @"hdr");
    objc_msgSend_setWantsExtendedDynamicRange_(v4, v14, v13);
    v16 = objc_msgSend_decodeBoolForKey_(coder, v15, @"additiveAlpha");
    objc_msgSend_setAdditiveWritesToAlpha_(v4, v17, v16);
  }

  return v4;
}

@end