@interface CFXVFXRenderTargetInfo
- (CFXVFXRenderTargetInfo)init;
- (int64_t)sampleCount;
- (unint64_t)colorPixelFormatAtIndex:(int64_t)index;
- (unint64_t)depthPixelFormat;
- (unint64_t)stencilPixelFormat;
@end

@implementation CFXVFXRenderTargetInfo

- (CFXVFXRenderTargetInfo)init
{
  v3.receiver = self;
  v3.super_class = CFXVFXRenderTargetInfo;
  return [(CFXVFXRenderTargetInfo *)&v3 init];
}

- (int64_t)sampleCount
{
  v4 = objc_msgSend_descriptor(self, a2, v2);
  v7 = objc_msgSend_colorAttachments(v4, v5, v6);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 0);
  v12 = objc_msgSend_texture(v9, v10, v11);
  v15 = objc_msgSend_descriptor(self, v13, v14);
  if (v12)
  {
    v18 = objc_msgSend_colorAttachments(v15, v16, v17);
    v20 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, 0);
  }

  else
  {
    v20 = objc_msgSend_depthAttachment(v15, v16, v17);
  }

  v23 = objc_msgSend_texture(v20, v21, v22);

  return objc_msgSend_sampleCount(v23, v24, v25);
}

- (unint64_t)depthPixelFormat
{
  v3 = objc_msgSend_descriptor(self, a2, v2);
  v6 = objc_msgSend_depthAttachment(v3, v4, v5);
  v9 = objc_msgSend_texture(v6, v7, v8);

  return objc_msgSend_pixelFormat(v9, v10, v11);
}

- (unint64_t)stencilPixelFormat
{
  v3 = objc_msgSend_descriptor(self, a2, v2);
  v6 = objc_msgSend_stencilAttachment(v3, v4, v5);
  v9 = objc_msgSend_texture(v6, v7, v8);

  return objc_msgSend_pixelFormat(v9, v10, v11);
}

- (unint64_t)colorPixelFormatAtIndex:(int64_t)index
{
  v4 = objc_msgSend_descriptor(self, a2, index);
  v7 = objc_msgSend_colorAttachments(v4, v5, v6);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, index);
  v12 = objc_msgSend_texture(v9, v10, v11);

  return objc_msgSend_pixelFormat(v12, v13, v14);
}

@end