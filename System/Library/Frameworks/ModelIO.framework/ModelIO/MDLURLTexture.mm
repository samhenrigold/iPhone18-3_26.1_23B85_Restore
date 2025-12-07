@interface MDLURLTexture
- (MDLURLTexture)initWithURL:(NSURL *)URL name:(NSString *)name;
- (void)setURL:(NSURL *)URL;
@end

@implementation MDLURLTexture

- (MDLURLTexture)initWithURL:(NSURL *)URL name:(NSString *)name
{
  v6 = URL;
  v7 = name;
  v23.receiver = self;
  v23.super_class = MDLURLTexture;
  v14 = [(MDLTexture *)&v23 init];
  if (v14)
  {
    if (v7)
    {
      v19 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v8, v7, v9, v15, v16, v17, v18, v10, v11, v12, v13);
      v20 = v14->super._name;
      v14->super._name = v19;
    }

    objc_msgSend_setURL_(v14, v8, v6, v9, v15, v16, v17, v18, v10, v11, v12, v13);
    v21 = v14;
  }

  return v14;
}

- (void)setURL:(NSURL *)URL
{
  url = URL;
  objc_storeStrong(&self->_url, URL);
  if (url)
  {
    v5 = CGImageSourceCreateWithURL(url, 0);
    v6 = v5;
    if (v5)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, 0);
      CFRelease(v6);
      if (ImageAtIndex)
      {
        Width = CGImageGetWidth(ImageAtIndex);
        Height = CGImageGetHeight(ImageAtIndex);
        *self->super._anon_118 = __PAIR64__(Height, Width);
        if (Height / 6 == Width)
        {
          self->super._anon_118[16] = 1;
        }

        v10 = objc_alloc(MEMORY[0x277CBEB28]);
        v11.n128_u64[0] = *self->super._anon_118;
        v21 = objc_msgSend_initWithLength_(v10, v12, 4 * v11.n128_u32[1] * v11.n128_u32[0], v13, v11, v18, v19, v20, v14, v15, v16, v17);
        v22 = self->super._bottomLeftOriginData[0];
        self->super._bottomLeftOriginData[0] = v21;

        v23 = self->super._bottomLeftOriginData[0];
        self->super._textureData.bottomLeftBytesForMip[0] = objc_msgSend_bytes(v23, v24, v25, v26, v31, v32, v33, v34, v27, v28, v29, v30);
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v36 = self->super._bottomLeftOriginData[0];
        v48 = objc_msgSend_bytes(v36, v37, v38, v39, v44, v45, v46, v47, v40, v41, v42, v43);
        v49 = CGBitmapContextCreate(v48, *self->super._anon_118, HIDWORD(*self->super._anon_118), 8uLL, (4 * *self->super._anon_118), DeviceRGB, 1u);
        CFRelease(DeviceRGB);
        CGContextSetBlendMode(v49, kCGBlendModeCopy);
        v50 = *self->super._anon_118;
        v53.size.width = v50;
        v53.size.height = SHIDWORD(v50);
        v53.origin.x = 0.0;
        v53.origin.y = 0.0;
        CGContextDrawImage(v49, v53, ImageAtIndex);
        CGContextRelease(v49);
        CFRelease(ImageAtIndex);
        *&self->super._anon_118[8] = (4 * *self->super._anon_118);
        self->super._textureData.channelCount = 4;
        self->super._channelEncoding = 1;
      }
    }
  }
}

@end