@interface VFXRenderToTextureFinalAttachmentProvider
- (BOOL)isEqual:(id)equal;
- (VFXRenderToTextureFinalAttachmentProvider)initWithTexture:(id)texture;
- (id)textureForAttachment:(id)attachment withDescriptor:(id)descriptor;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation VFXRenderToTextureFinalAttachmentProvider

- (VFXRenderToTextureFinalAttachmentProvider)initWithTexture:(id)texture
{
  v23.receiver = self;
  v23.super_class = VFXRenderToTextureFinalAttachmentProvider;
  v4 = [(VFXRenderToTextureFinalAttachmentProvider *)&v23 init];
  if (v4)
  {
    textureCopy = texture;
    v4->_texture = textureCopy;
    v4->_finalAttachementIdentifier = RGResourceIdentifierFinalColor(textureCopy);
    v4->_drawableDescriptor = objc_alloc_init(VFXTextureAttachmentDescriptor);
    v8 = objc_msgSend_width(v4->_texture, v6, v7);
    objc_msgSend_setWidth_(v4->_drawableDescriptor, v9, v8);
    v12 = objc_msgSend_height(v4->_texture, v10, v11);
    objc_msgSend_setHeight_(v4->_drawableDescriptor, v13, v12);
    v16 = objc_msgSend_pixelFormat(v4->_texture, v14, v15);
    objc_msgSend_setPixelFormat_(v4->_drawableDescriptor, v17, v16);
    v20 = objc_msgSend_arrayLength(v4->_texture, v18, v19);
    objc_msgSend_setArrayLength_(v4->_drawableDescriptor, v21, v20);
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = objc_msgSend_finalColorDescriptor(self, v5, v6);
  v11 = objc_msgSend_finalColorDescriptor(equal, v8, v9);

  return objc_msgSend_isEqual_(v7, v10, v11);
}

- (unint64_t)hash
{
  v3 = objc_msgSend_finalColorDescriptor(self, a2, v2);

  return objc_msgSend_hash(v3, v4, v5);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXRenderToTextureFinalAttachmentProvider;
  [(VFXRenderToTextureFinalAttachmentProvider *)&v3 dealloc];
}

- (id)textureForAttachment:(id)attachment withDescriptor:(id)descriptor
{
  finalAttachementIdentifier = self->_finalAttachementIdentifier;
  v6 = RGResourceIdentifierMake(attachment);
  if (RGResourceIdentifierMatch(finalAttachementIdentifier, v6))
  {
    return self->_texture;
  }

  else
  {
    return 0;
  }
}

@end