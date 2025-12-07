@interface MPSSVGFDefaultTextureAllocator
- (MPSSVGFDefaultTextureAllocator)initWithDevice:(id)device;
- (id)textureWithPixelFormat:(MTLPixelFormat)pixelFormat width:(NSUInteger)width height:(NSUInteger)height;
- (void)dealloc;
- (void)returnTexture:(id)texture;
@end

@implementation MPSSVGFDefaultTextureAllocator

- (MPSSVGFDefaultTextureAllocator)initWithDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSSVGFDefaultTextureAllocator;
  v4 = [(MPSSVGFDefaultTextureAllocator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_device = device;
    v4->_textures = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5->_allocatedTextureCount = 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSSVGFDefaultTextureAllocator;
  [(MPSSVGFDefaultTextureAllocator *)&v3 dealloc];
}

- (id)textureWithPixelFormat:(MTLPixelFormat)pixelFormat width:(NSUInteger)width height:(NSUInteger)height
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  textures = self->_textures;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(textures, a2, &v30, v34, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v31;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v31 != v14)
      {
        objc_enumerationMutation(textures);
      }

      v16 = *(*(&v30 + 1) + 8 * v15);
      if (objc_msgSend_width(v16, v11, v12) == width && objc_msgSend_height(v16, v11, v12) == height && objc_msgSend_pixelFormat(v16, v11, v12) == pixelFormat)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(textures, v11, &v30, v34, 16);
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    if (!v16)
    {
      goto LABEL_14;
    }

    v17 = v16;
    objc_msgSend_removeObject_(self->_textures, v18, v16);
    v19 = v16;
  }

  else
  {
LABEL_14:
    v20 = objc_alloc_init(MEMORY[0x277CD7058]);
    objc_msgSend_setWidth_(v20, v21, width);
    objc_msgSend_setHeight_(v20, v22, height);
    objc_msgSend_setTextureType_(v20, v23, 2);
    objc_msgSend_setPixelFormat_(v20, v24, pixelFormat);
    objc_msgSend_setUsage_(v20, v25, 7);
    objc_msgSend_setStorageMode_(v20, v26, 2);
    device = self->_device;
    ++self->_allocatedTextureCount;
    v19 = objc_msgSend_newTextureWithDescriptor_(device, v28, v20);
  }

  return v19;
}

- (void)returnTexture:(id)texture
{
  objc_msgSend_indexOfObject_(self->_textures, a2, texture);
  if (objc_msgSend_indexOfObject_(self->_textures, v5, texture) != 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_239E21D3C(texture, v6);
  }

  textures = self->_textures;

  objc_msgSend_addObject_(textures, v6, texture);
}

@end