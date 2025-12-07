@interface VFXShaderCacheConfiguration
- (VFXShaderCacheConfiguration)init;
- (VFXShaderCacheConfiguration)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VFXShaderCacheConfiguration

- (VFXShaderCacheConfiguration)init
{
  v9.receiver = self;
  v9.super_class = VFXShaderCacheConfiguration;
  v2 = [(VFXShaderCacheConfiguration *)&v9 init];
  v4 = v2;
  if (v2)
  {
    objc_msgSend_setUsesMultisampling_(v2, v3, 1);
    objc_msgSend_setName_(v4, v5, @"default");
    objc_msgSend_setGpuFamily_(v4, v6, 1008);
    objc_msgSend_setPixelFormat_(v4, v7, 81);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXShaderCacheConfiguration;
  [(VFXShaderCacheConfiguration *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt_forKey_(coder, a2, LODWORD(self->_pixelFormat), @"pixelFormat");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_name, @"name");
  objc_msgSend_encodeInt_forKey_(coder, v6, LODWORD(self->_gpuFamily), @"gpuFamily");
  objc_msgSend_encodeBool_forKey_(coder, v7, self->_usesMultisampling, @"usesMultisampling");
  additiveWritesToAlpha = self->_additiveWritesToAlpha;

  objc_msgSend_encodeBool_forKey_(coder, v8, additiveWritesToAlpha, @"additiveWritesToAlpha");
}

- (VFXShaderCacheConfiguration)initWithCoder:(id)coder
{
  v22.receiver = self;
  v22.super_class = VFXShaderCacheConfiguration;
  v5 = [(VFXShaderCacheConfiguration *)&v22 init];
  if (v5)
  {
    v6 = objc_msgSend_decodeIntForKey_(coder, v4, @"pixelFormat");
    objc_msgSend_setPixelFormat_(v5, v7, v6);
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"name");
    objc_msgSend_setName_(v5, v11, v10);
    v13 = objc_msgSend_decodeIntForKey_(coder, v12, @"gpuFamily");
    objc_msgSend_setGpuFamily_(v5, v14, v13);
    v16 = objc_msgSend_decodeBoolForKey_(coder, v15, @"usesMultisampling");
    objc_msgSend_setUsesMultisampling_(v5, v17, v16);
    v19 = objc_msgSend_decodeBoolForKey_(coder, v18, @"additiveWritesToAlpha");
    objc_msgSend_setAdditiveWritesToAlpha_(v5, v20, v19);
  }

  return v5;
}

@end