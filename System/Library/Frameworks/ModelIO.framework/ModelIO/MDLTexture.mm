@interface MDLTexture
+ (MDLTexture)irradianceTextureCubeWithTexture:(MDLTexture *)texture name:(NSString *)name dimensions:(vector_int2)dimensions;
+ (MDLTexture)irradianceTextureCubeWithTexture:(MDLTexture *)texture name:(NSString *)name dimensions:(vector_int2)dimensions roughness:(float)roughness;
+ (MDLTexture)textureCubeWithImagesNamed:(NSArray *)names;
+ (MDLTexture)textureCubeWithImagesNamed:(NSArray *)names bundle:(NSBundle *)bundleOrNil;
+ (MDLTexture)textureNamed:(NSString *)name;
+ (MDLTexture)textureNamed:(NSString *)name assetResolver:(id)resolver;
+ (MDLTexture)textureNamed:(NSString *)name bundle:(NSBundle *)bundleOrNil;
+ (MDLTexture)textureWithData:(id)data offset:(unint64_t)offset size:(unint64_t)size;
+ (MDLTexture)textureWithURL:(id)l;
+ (MDLTexture)textureWithURL:(id)l offset:(unint64_t)offset size:(unint64_t)size;
+ (id)_textureCubeWithSingleImageNamed:(id)named bundle:(id)bundle;
+ (id)textureFromResource:(id)resource;
+ (id)textureResourceNamed:(id)named assetResolver:(id)resolver;
- (BOOL)hasAlphaValues;
- (BOOL)writeToURL:(NSURL *)URL level:(NSUInteger)level;
- (BOOL)writeToURL:(NSURL *)nsurl type:(CFStringRef)type level:(NSUInteger)level;
- (CGImageRef)imageFromTextureAtLevel:(NSUInteger)level;
- (MDLTexture)init;
- (MDLTexture)initWithData:(NSData *)pixelData topLeftOrigin:(BOOL)topLeftOrigin name:(NSString *)name dimensions:(vector_int2)dimensions rowStride:(NSInteger)rowStride channelCount:(NSUInteger)channelCount channelEncoding:(MDLTextureChannelEncoding)channelEncoding isCube:(BOOL)isCube;
- (NSData)texelDataWithBottomLeftOriginAtMipLevel:(NSInteger)level create:(BOOL)create;
- (NSData)texelDataWithTopLeftOriginAtMipLevel:(NSInteger)level create:(BOOL)create;
- (NSUInteger)mipLevelCount;
- (id)allocateDataAtLevel:(int64_t)level;
- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector;
- (void)clearTexelData;
- (void)loadDataWithBottomLeftOriginAtMipLevel:(int64_t)level create:(BOOL)create selector:(SEL)selector;
- (void)loadDataWithTopLeftOriginAtMipLevel:(int64_t)level create:(BOOL)create selector:(SEL)selector;
- (void)setTexelDataWithBottomLeftOrigin:(id)origin atMipLevel:(int64_t)level;
- (void)setTexelDataWithTopLeftOrigin:(id)origin atMipLevel:(int64_t)level;
@end

@implementation MDLTexture

- (void)clearTexelData
{
  v3 = 14;
  do
  {
    v4 = self->_topLeftOriginData[0];
    self->_topLeftOriginData[0] = 0;

    self->_textureData.topLeftBytesForMip[0] = 0;
    v5 = self->_bottomLeftOriginData[0];
    self->_bottomLeftOriginData[0] = 0;

    self->_textureData.bottomLeftBytesForMip[0] = 0;
    self = (self + 8);
    --v3;
  }

  while (v3);
}

- (BOOL)hasAlphaValues
{
  if (self->_textureData.channelCount >= 4)
  {
    if (*self->_anon_118)
    {
      v4 = HIDWORD(*self->_anon_118) == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && *&self->_anon_118[8] && ((v5 = self->_topLeftOriginData[0]) != 0 || self->_bottomLeftOriginData[0]))
    {
      if (self->_alphaValuesSet)
      {
        return self->_hasAlphaValues;
      }

      else
      {
        v7 = v5;
        v19 = objc_msgSend_bytes(v7, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14);
        if (!v19)
        {
          v20 = self->_bottomLeftOriginData[0];
          v19 = objc_msgSend_bytes(v20, v21, v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
        }

        v32 = *self->_anon_118;
        if (SHIDWORD(v32) < 1)
        {
          v2 = 0;
        }

        else
        {
          v33 = 0;
          do
          {
            if (v32 < 1)
            {
              v2 = 0;
            }

            else
            {
              v34 = 1;
              v35 = v19;
              do
              {
                v36 = *v35++;
                v37 = HIBYTE(v36);
                v2 = HIBYTE(v36) != 255;
                if (v34 >= v32)
                {
                  break;
                }

                ++v34;
              }

              while (v37 >= 0xFF);
            }

            if (++v33 >= HIDWORD(v32))
            {
              break;
            }

            v19 += *&self->_anon_118[8];
          }

          while (!v2);
        }

        self->_hasAlphaValues = v2;
        self->_alphaValuesSet = 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }

  return v2;
}

- (id)allocateDataAtLevel:(int64_t)level
{
  v3.i32[0] = 0;
  v4.i32[1] = HIDWORD(*self->_anon_118);
  v4.i32[0] = 1;
  v5 = vbsl_s8(vdup_lane_s32(vcgt_s32(v3, *self->_anon_118), 0), v4, *self->_anon_118);
  v6 = vbsl_s8(vdup_lane_s32(vcgt_s32(v3, vdup_lane_s32(v5, 1)), 0), (v5.u32[0] | 0x100000000), v5);
  if (v6.i32[0] >> level <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6.i32[0] >> level;
  }

  if (v6.i32[1] >> level <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6.i32[1] >> level;
  }

  channelCount = self->_textureData.channelCount;
  v10 = sub_239F6B868(self->_channelEncoding) / 8;
  v11 = objc_alloc(MEMORY[0x277CBEB28]);
  v22 = objc_msgSend_initWithLength_(v11, v12, v10 * channelCount * v8 * v7, v13, v18, v19, v20, v21, v14, v15, v16, v17);

  return v22;
}

- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector
{
  levelCopy = level;
  v14 = objc_msgSend_allocateDataAtLevel_(self, a2, level, selector, v8, v9, v10, v11, v4, v5, v6, v7);
  channelCount = self->_textureData.channelCount;
  v23 = sub_239F6B868(self->_channelEncoding) & 0xFFFFFFF8;
  if (channelCount == 4 && v23 == 8)
  {
    v24.n128_u32[0] = 0;
    v25.n128_u64[0] = *self->_anon_118;
    v27 = 1;
    v28 = v25;
    v28.n128_u32[0] = 1;
    v25.n128_u64[0] = vbsl_s8(vdup_lane_s32(vcgt_s32(v24.n128_u64[0], v25.n128_u64[0]), 0), v28.n128_u64[0], v25.n128_u64[0]);
    v29 = v25;
    v29.n128_u32[1] = 1;
    v24.n128_u64[0] = vbsl_s8(vdup_lane_s32(vcgt_s32(v24.n128_u64[0], vdup_lane_s32(v25.n128_u64[0], 1)), 0), v29.n128_u64[0], v25.n128_u64[0]);
    if (v24.n128_i32[0] >> levelCopy <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v24.n128_i32[0] >> levelCopy;
    }

    v31 = v24.n128_i32[1] >> levelCopy;
    v32 = &self->_topLeftOriginData[levelCopy + 13];
    while (1)
    {
      v33 = __OFSUB__(levelCopy--, 1);
      if (levelCopy < 0 != v33)
      {
        break;
      }

      v27 *= 2;
      v34 = *(v32 - 14);
      if (v34)
      {
        v54 = v34;
        v66 = objc_msgSend_bytes(v54, v55, v56, v57, v62, v63, v64, v65, v58, v59, v60, v61);
        v67 = v14;
        v79 = objc_msgSend_bytes(v67, v68, v69, v70, v75, v76, v77, v78, v71, v72, v73, v74);
        v80 = 0;
        if (v31 <= 1)
        {
          v81 = 1;
        }

        else
        {
          v81 = v31;
        }

        do
        {
          v82 = v66;
          v83 = v30;
          do
          {
            *v79++ = *v82;
            v82 += v27;
            --v83;
          }

          while (v83);
          ++v80;
          v66 += 4 * v27 * v30 * v27;
        }

        while (v80 != v81);
        break;
      }

      if (*v32--)
      {
        v36 = objc_msgSend_bytes(0, v16, v17, v18, v24, v25, v29, v28, v19, v20, v21, v22);
        v37 = v14;
        v49 = objc_msgSend_bytes(v37, v38, v39, v40, v45, v46, v47, v48, v41, v42, v43, v44);
        v50 = 0;
        if (v31 <= 1)
        {
          v51 = 1;
        }

        else
        {
          v51 = v31;
        }

        do
        {
          v52 = v36;
          v53 = v30;
          do
          {
            *v49++ = *v52;
            v52 += v27;
            --v53;
          }

          while (v53);
          ++v50;
          v36 += 4 * v27 * v30 * v27;
        }

        while (v50 != v51);
        break;
      }
    }
  }

  return v14;
}

- (MDLTexture)init
{
  v18.receiver = self;
  v18.super_class = MDLTexture;
  v2 = [(MDLTexture *)&v18 init];
  v14 = v2;
  if (v2)
  {
    objc_msgSend_clearTexelData(v2, v3, v4, v5, v10, v11, v12, v13, v6, v7, v8, v9);
    name = v14->_name;
    v14->_name = &stru_284D18478;

    v16 = v14;
  }

  return v14;
}

- (MDLTexture)initWithData:(NSData *)pixelData topLeftOrigin:(BOOL)topLeftOrigin name:(NSString *)name dimensions:(vector_int2)dimensions rowStride:(NSInteger)rowStride channelCount:(NSUInteger)channelCount channelEncoding:(MDLTextureChannelEncoding)channelEncoding isCube:(BOOL)isCube
{
  v11 = channelCount;
  v15 = topLeftOrigin;
  v17 = pixelData;
  v18 = name;
  v76.receiver = self;
  v76.super_class = MDLTexture;
  v19 = [(MDLTexture *)&v76 init];
  v31 = v19;
  if (v19)
  {
    objc_msgSend_clearTexelData(v19, v20, v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    if (v18)
    {
      v42 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v32, v18, v33, v38, v39, v40, v41, v34, v35, v36, v37);
    }

    else
    {
      v42 = &stru_284D18478;
    }

    v43 = v31->_name;
    v31->_name = &v42->isa;

    v44 = v17;
    v45 = v44;
    if (v15)
    {
      v46 = v31->_topLeftOriginData[0];
      v31->_topLeftOriginData[0] = v44;

      v47 = v45;
      v59 = objc_msgSend_bytes(v47, v48, v49, v50, v55, v56, v57, v58, v51, v52, v53, v54);
      v60 = 16;
    }

    else
    {
      v61 = v31->_bottomLeftOriginData[0];
      v31->_bottomLeftOriginData[0] = v44;

      v62 = v45;
      v59 = objc_msgSend_bytes(v62, v63, v64, v65, v70, v71, v72, v73, v66, v67, v68, v69);
      v60 = 144;
    }

    *(&v31->super.isa + v60) = v59;
    *v31->_anon_118 = dimensions;
    *&v31->_anon_118[8] = rowStride;
    v31->_textureData.channelCount = v11;
    v31->_channelEncoding = channelEncoding;
    v31->_anon_118[16] = isCube;
    v74 = v31;
  }

  return v31;
}

- (NSUInteger)mipLevelCount
{
  result = 0;
  bottomLeftOriginData = self->_bottomLeftOriginData;
  do
  {
    if (!*(bottomLeftOriginData - 14) && !*bottomLeftOriginData)
    {
      break;
    }

    ++result;
    ++bottomLeftOriginData;
  }

  while (result != 14);
  return result;
}

+ (id)_textureCubeWithSingleImageNamed:(id)named bundle:(id)bundle
{
  namedCopy = named;
  bundleCopy = bundle;
  v108 = namedCopy;
  v13 = sub_239F6C144(namedCopy, bundleCopy);
  if (v13 || (objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v7, namedCopy, v8, v14, v15, v16, v17, v9, v10, v11, v12), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = CGImageSourceCreateWithURL(v13, 0);
    v19 = v18;
    if (v18)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v18, 0, 0);
      if (ImageAtIndex)
      {

        Width = CGImageGetWidth(ImageAtIndex);
        Height = CGImageGetHeight(ImageAtIndex);
        cf = ImageAtIndex;
        if (Height <= Width)
        {
          v66 = [self alloc];
          v67.n128_u64[0] = __PAIR64__(Width, Height);
          isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v66, v68, 0, 1, v67, v69, v70, v71, namedCopy, 4 * Height, 4, 1, 1);
          v72 = 0;
          if (Height < 0)
          {
            v73 = 1;
          }

          else
          {
            v73 = Height;
          }

          while (CGImageSourceGetCount(v19) > v72)
          {
            if (v72)
            {
              v74 = CGImageSourceCreateImageAtIndex(v19, v72, 0);
            }

            else
            {
              v74 = CFRetain(cf);
            }

            v75 = v74;
            if (v73 >> v72 <= 1)
            {
              v76 = 1;
            }

            else
            {
              v76 = (v73 >> v72);
            }

            DeviceRGB = CGColorSpaceCreateDeviceRGB();
            v87 = objc_msgSend_texelDataWithTopLeftOriginAtMipLevel_create_(isCube, v78, v72, 1, v83, v84, v85, v86, v79, v80, v81, v82);
            v88 = v87;
            v100 = objc_msgSend_bytes(v88, v89, v90, v91, v96, v97, v98, v99, v92, v93, v94, v95);
            v101 = CGBitmapContextCreate(v100, v76, (6 * v76), 8uLL, (4 * v76), DeviceRGB, 1u);
            CFRelease(DeviceRGB);

            CGContextSetBlendMode(v101, kCGBlendModeCopy);
            v102 = 0;
            v103 = 5 * v76;
            v104 = 6;
            do
            {
              v113.origin.x = v102;
              v113.origin.y = 0.0;
              v113.size.width = v76;
              v113.size.height = v76;
              v105 = CGImageCreateWithImageInRect(v75, v113);
              v114.origin.y = v103;
              v114.origin.x = 0.0;
              v114.size.width = v76;
              v114.size.height = v76;
              CGContextDrawImage(v101, v114, v105);
              CGImageRelease(v105);
              v102 += v76;
              v103 -= v76;
              --v104;
            }

            while (v104);
            CGContextRelease(v101);
            CGImageRelease(v75);
            ++v72;
          }
        }

        else
        {
          v23 = [self alloc];
          v24.n128_u64[0] = __PAIR64__(Height, Width);
          isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v23, v25, 0, 1, v24, v26, v27, v28, namedCopy, 4 * Width, 4, 1, 1);
          v29.i32[0] = 0;
          v30 = 0;
          v31.i32[0] = Width;
          v32 = vbsl_s8(vdup_lane_s32(vcgt_s32(v29, v31), 0), __PAIR64__(Height, 1), __PAIR64__(Height, Width));
          v33 = vbsl_s8(vdup_lane_s32(vcgt_s32(v29, vdup_lane_s32(v32, 1)), 0), (v32.u32[0] | 0x100000000), v32);
          v34 = v33.i32[1];
          v35 = v33.i32[0];
          while (CGImageSourceGetCount(v19) > v30)
          {
            if (v30)
            {
              v36 = CGImageSourceCreateImageAtIndex(v19, v30, 0);
            }

            else
            {
              v36 = CFRetain(cf);
            }

            v37 = v36;
            if (v35 >> v30 <= 1)
            {
              v38 = 1;
            }

            else
            {
              v38 = (v35 >> v30);
            }

            if (v34 >> v30 <= 1)
            {
              v39 = 1;
            }

            else
            {
              v39 = (v34 >> v30);
            }

            v40 = CGColorSpaceCreateDeviceRGB();
            v50 = objc_msgSend_texelDataWithTopLeftOriginAtMipLevel_create_(isCube, v41, v30, 1, v46, v47, v48, v49, v42, v43, v44, v45);
            v51 = v50;
            v63 = objc_msgSend_bytes(v51, v52, v53, v54, v59, v60, v61, v62, v55, v56, v57, v58);
            v64 = CGBitmapContextCreate(v63, v38, v39, 8uLL, (4 * v38), v40, 1u);
            CFRelease(v40);

            CGContextSetBlendMode(v64, kCGBlendModeCopy);
            v112.size.width = v38;
            v112.size.height = v39;
            v112.origin.x = 0.0;
            v112.origin.y = 0.0;
            CGContextDrawImage(v64, v112, v37);
            CGContextRelease(v64);
            CFRelease(v37);
            ++v30;
          }
        }

        v65 = isCube;
        CFRelease(cf);
        CFRelease(v19);
        goto LABEL_34;
      }

      CFRelease(v19);
    }
  }

  v65 = 0;
LABEL_34:

  return v65;
}

+ (MDLTexture)textureWithURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy && (v6 = CGImageSourceCreateWithURL(lCopy, 0), (v7 = v6) != 0) && (ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, 0), CFRelease(v7), ImageAtIndex))
  {
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(ImageAtIndex);
    v11 = objc_alloc(MEMORY[0x277CBEB28]);
    v12 = 4 * Width;
    v23 = objc_msgSend_initWithLength_(v11, v13, Height * v12, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v25 = v23;
    v37 = objc_msgSend_bytes(v25, v26, v27, v28, v33, v34, v35, v36, v29, v30, v31, v32);
    v38 = CGBitmapContextCreate(v37, Width, Height, 8uLL, v12, DeviceRGB, 1u);
    CFRelease(DeviceRGB);
    CGContextSetBlendMode(v38, kCGBlendModeCopy);
    v48.size.width = Width;
    v48.size.height = Height;
    v48.origin.x = 0.0;
    v48.origin.y = 0.0;
    CGContextDrawImage(v38, v48, ImageAtIndex);
    CGContextRelease(v38);
    CFRelease(ImageAtIndex);
    v39 = [self alloc];
    v40.n128_u64[0] = __PAIR64__(Height, Width);
    isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v39, v41, v23, 1, v40, v42, v43, v44, 0, v12, 4, 1, 0);
  }

  else
  {
    isCube = 0;
  }

  return isCube;
}

+ (MDLTexture)textureWithURL:(id)l offset:(unint64_t)offset size:(unint64_t)size
{
  lCopy = l;
  v8 = [MDLMemoryMappedData alloc];
  v17 = objc_msgSend_initWithURL_offset_length_(v8, v9, lCopy, offset, v13, v14, v15, v16, size, v10, v11, v12);
  v29 = objc_msgSend_dataNoCopy(v17, v18, v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);
  v30 = v29;
  if (!v29)
  {
    goto LABEL_5;
  }

  v31 = CGImageSourceCreateWithData(v29, 0);
  isCube = v31;
  if (!v31)
  {
    goto LABEL_6;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v31, 0, 0);
  CFRelease(isCube);
  if (ImageAtIndex)
  {
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(ImageAtIndex);
    v36 = objc_alloc(MEMORY[0x277CBEB28]);
    v37 = 4 * Width;
    v48 = objc_msgSend_initWithLength_(v36, v38, Height * v37, v39, v44, v45, v46, v47, v40, v41, v42, v43);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v50 = v48;
    v62 = objc_msgSend_bytes(v50, v51, v52, v53, v58, v59, v60, v61, v54, v55, v56, v57);
    v63 = CGBitmapContextCreate(v62, Width, Height, 8uLL, v37, DeviceRGB, 1u);
    CFRelease(DeviceRGB);
    CGContextSetBlendMode(v63, kCGBlendModeCopy);
    v73.size.width = Width;
    v73.size.height = Height;
    v73.origin.x = 0.0;
    v73.origin.y = 0.0;
    CGContextDrawImage(v63, v73, ImageAtIndex);
    CGContextRelease(v63);
    CFRelease(ImageAtIndex);
    v64 = [self alloc];
    v65.n128_u64[0] = __PAIR64__(Height, Width);
    isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v64, v66, v48, 1, v65, v67, v68, v69, 0, v37, 4, 1, 0);
  }

  else
  {
LABEL_5:
    isCube = 0;
  }

LABEL_6:

  return isCube;
}

+ (MDLTexture)textureWithData:(id)data offset:(unint64_t)offset size:(unint64_t)size
{
  dataCopy = data;
  v9 = MEMORY[0x277CBEA90];
  v10 = dataCopy;
  v22 = objc_msgSend_bytes(v10, v11, v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v32 = objc_msgSend_dataWithBytes_length_(v9, v23, v22 + offset, size, v28, v29, v30, v31, v24, v25, v26, v27);
  v33 = CGImageSourceCreateWithData(v32, 0);
  isCube = v33;
  if (v33)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v33, 0, 0);
    CFRelease(isCube);
    if (ImageAtIndex)
    {
      selfCopy = self;
      Width = CGImageGetWidth(ImageAtIndex);
      Height = CGImageGetHeight(ImageAtIndex);
      v38 = malloc_type_malloc(Height * (4 * Width), 0xD2E2BB23uLL);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v40 = CGBitmapContextCreate(v38, Width, Height, 8uLL, 4 * Width, DeviceRGB, 1u);
      CFRelease(DeviceRGB);
      CGContextSetBlendMode(v40, kCGBlendModeCopy);
      v60.size.width = Width;
      v60.size.height = Height;
      v60.origin.x = 0.0;
      v60.origin.y = 0.0;
      CGContextDrawImage(v40, v60, ImageAtIndex);
      CGContextRelease(v40);
      v41 = objc_alloc(MEMORY[0x277CBEB28]);
      v50 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v41, v42, v38, Height * (4 * Width), v46, v47, v48, v49, 1, v43, v44, v45);
      CFRelease(ImageAtIndex);
      v51 = [selfCopy alloc];
      v52.n128_u64[0] = __PAIR64__(Height, Width);
      isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v51, v53, v50, 1, v52, v54, v55, v56, 0, 4 * Width, 4, 1, 0);
    }

    else
    {
      isCube = 0;
    }
  }

  return isCube;
}

+ (id)textureResourceNamed:(id)named assetResolver:(id)resolver
{
  namedCopy = named;
  resolverCopy = resolver;
  v17 = objc_msgSend_resolveAssetNamed_(resolverCopy, v7, namedCopy, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = resolverCopy;
    v163[0] = 0;
    v163[1] = 0;
    v164 = 0;
    v19 = namedCopy;
    v31 = objc_msgSend_UTF8String(v19, v20, v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    sub_239E552A0(&v157, v31);
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathInner();
    v41 = v161;
    *v163 = v161;
    v164 = v162;
    v162 = 0;
    v161 = 0uLL;
    if (v160 < 0)
    {
      operator delete(__p);
    }

    if (v158 < 0)
    {
      operator delete(v157);
    }

    if (v164 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v163, v33, v41, v38, v39, v40, v34, v35, v36, v37);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v163[0], v33, v41, v38, v39, v40, v34, v35, v36, v37);
    }
    v42 = ;
    v54 = objc_msgSend_pathExtension(v42, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);
    v66 = objc_msgSend_lowercaseString(v54, v55, v56, v57, v62, v63, v64, v65, v58, v59, v60, v61);

    if ((objc_msgSend_isEqualToString_(v66, v67, @"jpg", v68, v73, v74, v75, v76, v69, v70, v71, v72) & 1) == 0 && (objc_msgSend_isEqualToString_(v66, v77, @"png", v78, v83, v84, v85, v86, v79, v80, v81, v82) & 1) == 0 && (objc_msgSend_isEqualToString_(v66, v77, @"jpeg", v78, v83, v84, v85, v86, v79, v80, v81, v82) & 1) == 0)
    {
      NSLog(&cfstr_WarningUnsuppo.isa, v66);
    }

    v87 = objc_msgSend_resolveInsideArchiveWithAssetNamed_(v18, v77, namedCopy, v78, v83, v84, v85, v86, v79, v80, v81, v82);
    v98 = objc_msgSend_objectAtIndexedSubscript_(v87, v88, 0, v89, v94, v95, v96, v97, v90, v91, v92, v93);
    v110 = objc_msgSend_longValue(v98, v99, v100, v101, v106, v107, v108, v109, v102, v103, v104, v105);

    v121 = objc_msgSend_objectAtIndexedSubscript_(v87, v111, 1, v112, v117, v118, v119, v120, v113, v114, v115, v116);
    v133 = objc_msgSend_longValue(v121, v122, v123, v124, v129, v130, v131, v132, v125, v126, v127, v128);

    v134 = [MDLMemoryMappedData alloc];
    v143 = objc_msgSend_initWithURL_offset_length_(v134, v135, v17, v110, v139, v140, v141, v142, v133, v136, v137, v138);
    v155 = objc_msgSend_dataNoCopy(v143, v144, v145, v146, v151, v152, v153, v154, v147, v148, v149, v150);

    if (SHIBYTE(v164) < 0)
    {
      operator delete(v163[0]);
    }
  }

  else
  {
    NSLog(&cfstr_NeedsMdlassetL.isa);
    v155 = 0;
  }

  return v155;
}

+ (MDLTexture)textureNamed:(NSString *)name assetResolver:(id)resolver
{
  v5 = name;
  v6 = resolver;
  v17 = objc_msgSend_resolveAssetNamed_(v6, v7, v5, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v6;
    v185[0] = 0;
    v185[1] = 0;
    v186 = 0;
    v29 = v5;
    v41 = objc_msgSend_UTF8String(v29, v30, v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);
    sub_239E552A0(&v179, v41);
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathInner();
    v51 = v183;
    *v185 = v183;
    v186 = v184;
    v184 = 0;
    v183 = 0uLL;
    if (v182 < 0)
    {
      operator delete(__p);
    }

    if (v180 < 0)
    {
      operator delete(v179);
    }

    if (v186 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v185, v43, v51, v48, v49, v50, v44, v45, v46, v47);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v185[0], v43, v51, v48, v49, v50, v44, v45, v46, v47);
    }
    v52 = ;
    v64 = objc_msgSend_pathExtension(v52, v53, v54, v55, v60, v61, v62, v63, v56, v57, v58, v59);
    v76 = objc_msgSend_lowercaseString(v64, v65, v66, v67, v72, v73, v74, v75, v68, v69, v70, v71);

    if ((objc_msgSend_isEqualToString_(v76, v77, @"jpg", v78, v83, v84, v85, v86, v79, v80, v81, v82) & 1) == 0 && (objc_msgSend_isEqualToString_(v76, v87, @"png", v88, v93, v94, v95, v96, v89, v90, v91, v92) & 1) == 0 && (objc_msgSend_isEqualToString_(v76, v87, @"jpeg", v88, v93, v94, v95, v96, v89, v90, v91, v92) & 1) == 0)
    {
      NSLog(&cfstr_WarningUnsuppo.isa, v76);
    }

    v97 = objc_msgSend_resolveInsideArchiveWithAssetNamed_(v28, v87, v5, v88, v93, v94, v95, v96, v89, v90, v91, v92);
    v108 = v97;
    if (v97)
    {
      v109 = objc_msgSend_objectAtIndexedSubscript_(v97, v98, 0, v99, v104, v105, v106, v107, v100, v101, v102, v103);
      v121 = objc_msgSend_longValue(v109, v110, v111, v112, v117, v118, v119, v120, v113, v114, v115, v116);

      v132 = objc_msgSend_objectAtIndexedSubscript_(v108, v122, 1, v123, v128, v129, v130, v131, v124, v125, v126, v127);
      v144 = objc_msgSend_longValue(v132, v133, v134, v135, v140, v141, v142, v143, v136, v137, v138, v139);

      v156 = objc_msgSend_data(v28, v145, v146, v147, v152, v153, v154, v155, v148, v149, v150, v151);

      if (v156)
      {
        v168 = objc_msgSend_data(v28, v157, v158, v159, v164, v165, v166, v167, v160, v161, v162, v163);
        v177 = objc_msgSend_textureWithData_offset_size_(MDLTexture, v169, v168, v121, v173, v174, v175, v176, v144, v170, v171, v172);
      }

      else
      {
        v177 = objc_msgSend_textureWithURL_offset_size_(MDLTexture, v157, v17, v121, v164, v165, v166, v167, v144, v161, v162, v163);
      }
    }

    else
    {
      v177 = 0;
    }

    if (SHIBYTE(v186) < 0)
    {
      operator delete(v185[0]);
    }
  }

  else
  {
    v177 = objc_msgSend_textureWithURL_(MDLTexture, v18, v17, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  }

  return v177;
}

+ (id)textureFromResource:(id)resource
{
  resourceCopy = resource;
  v5 = CGImageSourceCreateWithData(resourceCopy, 0);
  v6 = v5;
  if (v5 && (ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, 0), CFRelease(v6), ImageAtIndex))
  {
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(ImageAtIndex);
    v10 = objc_alloc(MEMORY[0x277CBEB28]);
    v11 = 4 * Width;
    v22 = objc_msgSend_initWithLength_(v10, v12, Height * v11, v13, v18, v19, v20, v21, v14, v15, v16, v17);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v24 = v22;
    v36 = objc_msgSend_bytes(v24, v25, v26, v27, v32, v33, v34, v35, v28, v29, v30, v31);
    v37 = CGBitmapContextCreate(v36, Width, Height, 8uLL, v11, DeviceRGB, 1u);
    CFRelease(DeviceRGB);
    CGContextSetBlendMode(v37, kCGBlendModeCopy);
    v47.size.width = Width;
    v47.size.height = Height;
    v47.origin.x = 0.0;
    v47.origin.y = 0.0;
    CGContextDrawImage(v37, v47, ImageAtIndex);
    CGContextRelease(v37);
    CFRelease(ImageAtIndex);
    v38 = [self alloc];
    v39.n128_u64[0] = __PAIR64__(Height, Width);
    isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v38, v40, v22, 1, v39, v41, v42, v43, 0, v11, 4, 1, 0);
  }

  else
  {
    isCube = 0;
  }

  return isCube;
}

+ (MDLTexture)textureNamed:(NSString *)name bundle:(NSBundle *)bundleOrNil
{
  v6 = name;
  v14 = bundleOrNil;
  if (v6 && objc_msgSend_length(v6, v7, v8, v9, v15, v16, v17, v18, v10, v11, v12, v13))
  {
    if (!v14)
    {
      v14 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    }

    v36 = sub_239F6C144(v6, v14);
    if (v36)
    {
      v41 = objc_msgSend_textureWithURL_(self, v30, v36, v31, v37, v38, v39, v40, v32, v33, v34, v35);
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

+ (MDLTexture)textureNamed:(NSString *)name
{
  v11 = objc_msgSend_textureNamed_bundle_(self, a2, name, 0, v7, v8, v9, v10, v3, v4, v5, v6);

  return v11;
}

+ (MDLTexture)textureCubeWithImagesNamed:(NSArray *)names bundle:(NSBundle *)bundleOrNil
{
  v117 = *MEMORY[0x277D85DE8];
  v6 = names;
  v7 = bundleOrNil;
  if (objc_msgSend_count(v6, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14) == 1)
  {
    v30 = objc_msgSend_firstObject(v6, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    isCube = objc_msgSend__textureCubeWithSingleImageNamed_bundle_(self, v31, v30, v7, v36, v37, v38, v39, v32, v33, v34, v35);
  }

  else
  {
    v41 = 0;
    v42 = 0uLL;
    v115 = 0u;
    v116 = 0u;
    *image = 0u;
    do
    {
      v43 = objc_msgSend_objectAtIndexedSubscript_(v6, v19, v41, v21, v42, v27, v28, v29, v22, v23, v24, v25);
      v44 = sub_239F6C144(v43, v7);

      if (!v44)
      {
        v55 = MEMORY[0x277CBEBC0];
        v56 = objc_msgSend_objectAtIndexedSubscript_(v6, v45, v41, v46, v51, v52, v53, v54, v47, v48, v49, v50);
        v44 = objc_msgSend_fileURLWithPath_(v55, v57, v56, v58, v63, v64, v65, v66, v59, v60, v61, v62);
      }

      v67 = CGImageSourceCreateWithURL(v44, 0);
      v68 = v67;
      if (v67)
      {
        image[v41] = CGImageSourceCreateImageAtIndex(v67, 0, 0);
        CFRelease(v68);
      }

      ++v41;
    }

    while (v41 != 6);
    v69 = image[0];
    Width = CGImageGetWidth(image[0]);
    Height = CGImageGetHeight(v69);
    v72 = objc_alloc(MEMORY[0x277CBEB28]);
    v73 = 4 * Width;
    v30 = objc_msgSend_initWithLength_(v72, v74, v73 * 6 * Height, v75, v80, v81, v82, v83, v76, v77, v78, v79);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v85 = v30;
    v97 = objc_msgSend_bytes(v85, v86, v87, v88, v93, v94, v95, v96, v89, v90, v91, v92);
    v98 = CGBitmapContextCreate(v97, Width, 6 * Height, 8uLL, v73, DeviceRGB, 1u);
    CFRelease(DeviceRGB);
    selfCopy = self;
    CGContextSetBlendMode(v98, kCGBlendModeCopy);
    v99 = 0;
    v100.n128_u32[0] = Width;
    v100.n128_u32[1] = 6 * Height;
    v112 = v100;
    v101 = Width;
    v102 = 30 * Height;
    do
    {
      v119.origin.y = (v102 / 6);
      v119.origin.x = 0.0;
      v119.size.width = v101;
      v119.size.height = Height;
      CGContextDrawImage(v98, v119, image[v99]);
      v102 -= 6 * Height;
      ++v99;
    }

    while (v99 != 6);
    CGContextRelease(v98);
    for (i = 0; i != 6; ++i)
    {
      v104 = image[i];
      if (v104)
      {
        CFRelease(v104);
        image[i] = 0;
      }
    }

    v105 = [selfCopy alloc];
    isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v105, v106, v30, 1, v112, v107, v108, v109, 0, v73, 4, 1, 1);
  }

  v110 = isCube;

  return v110;
}

+ (MDLTexture)textureCubeWithImagesNamed:(NSArray *)names
{
  v3 = names;
  v15 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v25 = objc_msgSend_textureCubeWithImagesNamed_bundle_(MDLTexture, v16, v3, v15, v21, v22, v23, v24, v17, v18, v19, v20);

  return v25;
}

- (void)loadDataWithTopLeftOriginAtMipLevel:(int64_t)level create:(BOOL)create selector:(SEL)selector
{
  if (level <= 13)
  {
    topLeftOriginData = self->_topLeftOriginData;
    if (self->_topLeftOriginData[level])
    {
      v15 = 1;
    }

    else
    {
      v15 = !create;
    }

    if (!v15)
    {
      v16 = objc_msgSend_generateDataAtLevel_selector_(self, a2, level, selector, v8, v9, v10, v11, selector, v5, v6, v7);
      v17 = topLeftOriginData[level];
      topLeftOriginData[level] = v16;

      v18 = topLeftOriginData[level];
      self->_textureData.topLeftBytesForMip[level] = objc_msgSend_bytes(v18, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    }
  }
}

- (void)loadDataWithBottomLeftOriginAtMipLevel:(int64_t)level create:(BOOL)create selector:(SEL)selector
{
  if (level <= 13)
  {
    bottomLeftOriginData = self->_bottomLeftOriginData;
    if (self->_bottomLeftOriginData[level])
    {
      v15 = 1;
    }

    else
    {
      v15 = !create;
    }

    if (!v15)
    {
      v16 = objc_msgSend_generateDataAtLevel_selector_(self, a2, level, selector, v8, v9, v10, v11, selector, v5, v6, v7);
      v17 = bottomLeftOriginData[level];
      bottomLeftOriginData[level] = v16;

      v18 = bottomLeftOriginData[level];
      self->_textureData.bottomLeftBytesForMip[level] = objc_msgSend_bytes(v18, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    }
  }
}

- (NSData)texelDataWithTopLeftOriginAtMipLevel:(NSInteger)level create:(BOOL)create
{
  topLeftOriginData = self->_topLeftOriginData;
  if (!self->_topLeftOriginData[level])
  {
    v13 = &self->super.isa + level;
    v14 = v13[53];
    if (v14)
    {
      v7.n128_u32[0] = 0;
      v15.i32[1] = HIDWORD(*self->_anon_118);
      v15.i32[0] = 1;
      v16 = vbsl_s8(vdup_lane_s32(vcgt_s32(v7.n128_u64[0], *self->_anon_118), 0), v15, *self->_anon_118);
      v7.n128_u64[0] = vmax_s32(vshl_s32(vbsl_s8(vdup_lane_s32(vcgt_s32(v7.n128_u64[0], vdup_lane_s32(v16, 1)), 0), (v16.u32[0] | 0x100000000), v16), vneg_s32(vdup_n_s32(level))), 0x100000001);
      v35 = v7;
      channelCount = self->_textureData.channelCount;
      v18 = sub_239F6B868(self->_channelEncoding);
      v19 = sub_239F6DB60(v14, v18 / 8 * channelCount * v35.n128_u32[0], v35);
      v20 = topLeftOriginData[level];
      topLeftOriginData[level] = v19;

      v21 = topLeftOriginData[level];
      v13[2] = objc_msgSend_bytes(v21, v22, v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);
    }

    else
    {
      objc_msgSend_loadDataWithTopLeftOriginAtMipLevel_create_selector_(self, a2, level, create, v7, v8, v9, v10, a2, v4, v5, v6);
    }
  }

  v33 = topLeftOriginData[level];

  return v33;
}

- (NSData)texelDataWithBottomLeftOriginAtMipLevel:(NSInteger)level create:(BOOL)create
{
  bottomLeftOriginData = self->_bottomLeftOriginData;
  if (!self->_bottomLeftOriginData[level])
  {
    topLeftOriginData = self->_topLeftOriginData;
    v15 = self->_topLeftOriginData[level];
    if (v15)
    {
      v7.n128_u32[0] = 0;
      v16.i32[1] = HIDWORD(*self->_anon_118);
      v16.i32[0] = 1;
      v17 = vbsl_s8(vdup_lane_s32(vcgt_s32(v7.n128_u64[0], *self->_anon_118), 0), v16, *self->_anon_118);
      v7.n128_u64[0] = vmax_s32(vshl_s32(vbsl_s8(vdup_lane_s32(vcgt_s32(v7.n128_u64[0], vdup_lane_s32(v17, 1)), 0), (v17.u32[0] | 0x100000000), v17), vneg_s32(vdup_n_s32(level))), 0x100000001);
      v36 = v7;
      channelCount = self->_textureData.channelCount;
      v19 = sub_239F6B868(self->_channelEncoding);
      v20 = sub_239F6DB60(v15, v19 / 8 * channelCount * v36.n128_u32[0], v36);
      v21 = bottomLeftOriginData[level];
      bottomLeftOriginData[level] = v20;

      v22 = topLeftOriginData[level];
      self->_textureData.bottomLeftBytesForMip[level] = objc_msgSend_bytes(v22, v23, v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);
    }

    else
    {
      objc_msgSend_loadDataWithBottomLeftOriginAtMipLevel_create_selector_(self, a2, level, create, v7, v8, v9, v10, a2, v4, v5, v6);
    }
  }

  v34 = bottomLeftOriginData[level];

  return v34;
}

- (void)setTexelDataWithBottomLeftOrigin:(id)origin atMipLevel:(int64_t)level
{
  originCopy = origin;
  v7 = (&self->super.isa + level);
  objc_storeStrong(v7 + 53, origin);
  v8 = v7[53];
  v7[18] = objc_msgSend_bytes(v8, v9, v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v20 = v7[39];
  v7[39] = 0;

  v7[2] = 0;
}

- (void)setTexelDataWithTopLeftOrigin:(id)origin atMipLevel:(int64_t)level
{
  originCopy = origin;
  v7 = &self->super.isa + level;
  v8 = v7[53];
  v7[53] = 0;

  v7[18] = 0;
  v9 = v7[39];
  v7[39] = originCopy;
  v10 = originCopy;

  v11 = v10;
  v23 = objc_msgSend_bytes(v11, v12, v13, v14, v19, v20, v21, v22, v15, v16, v17, v18);

  v7[2] = v23;
}

- (BOOL)writeToURL:(NSURL *)URL level:(NSUInteger)level
{
  v6 = URL;
  v18 = objc_msgSend_pathExtension(v6, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);
  v30 = objc_msgSend_lowercaseString(v18, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);

  if (objc_msgSend_isEqualToString_(v30, v31, @"jpeg", v32, v37, v38, v39, v40, v33, v34, v35, v36) & 1) != 0 || (objc_msgSend_isEqualToString_(v30, v41, @"jpg", v42, v47, v48, v49, v50, v43, v44, v45, v46))
  {
    v52 = MEMORY[0x277CC20C8];
LABEL_8:
    v56 = objc_msgSend_writeToURL_type_(self, v41, v6, *v52, v47, v48, v49, v50, v43, v44, v45, v46);
    goto LABEL_9;
  }

  if ((objc_msgSend_isEqualToString_(v30, v41, @"gif", v51, v47, v48, v49, v50, v43, v44, v45, v46) & 1) != 0 || (objc_msgSend_isEqualToString_(v30, v41, @"tiff", v53, v47, v48, v49, v50, v43, v44, v45, v46) & 1) != 0 || objc_msgSend_isEqualToString_(v30, v41, @"tif", v54, v47, v48, v49, v50, v43, v44, v45, v46))
  {
    v52 = MEMORY[0x277CC2180];
    goto LABEL_8;
  }

  if (objc_msgSend_isEqualToString_(v30, v41, @"exr", v55, v47, v48, v49, v50, v43, v44, v45, v46))
  {
    v56 = objc_msgSend_writeToURL_type_(self, v59, v6, @"com.ilm.openexr-image", v64, v65, v66, v67, v60, v61, v62, v63);
  }

  else
  {
    v56 = objc_msgSend_writeToURL_type_level_(self, v59, v6, *MEMORY[0x277CC2120], v64, v65, v66, v67, level, v61, v62, v63);
  }

LABEL_9:
  v57 = v56;

  return v57;
}

- (BOOL)writeToURL:(NSURL *)nsurl type:(CFStringRef)type level:(NSUInteger)level
{
  v8 = nsurl;
  v19 = objc_msgSend_imageFromTextureAtLevel_(self, v9, level, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  if (v19)
  {
    v20 = v8;
    v21 = CGImageDestinationCreateWithURL(v20, type, 1uLL, 0);
    v22 = v21;
    if (v21)
    {
      CGImageDestinationAddImage(v21, v19, 0);
      LOBYTE(v19) = CGImageDestinationFinalize(v22);
      CFRelease(v22);
      if (v20)
      {
        CFRelease(v20);
      }
    }

    else
    {
      if (v20)
      {
        CFRelease(v20);
      }

      LOBYTE(v19) = 0;
    }
  }

  return v19;
}

- (CGImageRef)imageFromTextureAtLevel:(NSUInteger)level
{
  v12 = level;
  v14 = objc_msgSend_texelDataWithTopLeftOrigin_(self, a2, level, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v26 = v14;
  channelCount = self->_textureData.channelCount;
  if (!channelCount)
  {
    goto LABEL_29;
  }

  v28 = channelCount > 4 || v14 == 0;
  if (v28 || !objc_msgSend_length(v14, v15, v16, v17, v22, v23, v24, v25, v18, v19, v20, v21))
  {
    goto LABEL_29;
  }

  if (self->_textureData.channelCount < 2)
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
    v31 = 0;
    channelEncoding = self->_channelEncoding;
  }

  else
  {
    DeviceGray = CGColorSpaceCreateDeviceRGB();
    channelEncoding = self->_channelEncoding;
    if (channelEncoding == 1)
    {
      v31 = 16385;
    }

    else
    {
      v31 = 1;
    }
  }

  if (channelEncoding != 770)
  {
    if (channelEncoding == 260)
    {
      v32 = 8448;
      goto LABEL_17;
    }

    if (channelEncoding != 258)
    {
      goto LABEL_18;
    }
  }

  v32 = 4352;
LABEL_17:
  v31 |= v32;
LABEL_18:
  v40 = sub_239F6B868(channelEncoding);
  v44.n128_u32[0] = 0;
  v42.n128_u64[0] = *self->_anon_118;
  v41 = v42;
  v41.n128_u32[0] = 1;
  v42.n128_u64[0] = vbsl_s8(vdup_lane_s32(vcgt_s32(v44.n128_u64[0], v42.n128_u64[0]), 0), v41.n128_u64[0], v42.n128_u64[0]);
  v43 = v42;
  v43.n128_u32[1] = 1;
  v44.n128_u64[0] = vbsl_s8(vdup_lane_s32(vcgt_s32(v44.n128_u64[0], vdup_lane_s32(v42.n128_u64[0], 1)), 0), v43.n128_u64[0], v42.n128_u64[0]);
  if (v44.n128_i32[0] >> v12 <= 1)
  {
    v45 = 1;
  }

  else
  {
    v45 = (v44.n128_i32[0] >> v12);
  }

  if (v44.n128_i32[1] >> v12 <= 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = (v44.n128_i32[1] >> v12);
  }

  v47 = self->_textureData.channelCount;
  if (objc_msgSend_length(v26, v33, v34, v35, v44, v42, v43, v41, v36, v37, v38, v39) != v45 * (v47 * v40 / 8) * v46)
  {
    CGColorSpaceRelease(DeviceGray);
LABEL_29:
    Image = 0;
    goto LABEL_30;
  }

  v48 = v26;
  v60 = objc_msgSend_bytes(v48, v49, v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
  v61 = CGBitmapContextCreate(v60, v45, v46, v40, (v45 * v40 * self->_textureData.channelCount + (v45 * v40 * self->_textureData.channelCount < 0 ? 7 : 0)) >> 3, DeviceGray, v31);
  Image = CGBitmapContextCreateImage(v61);
  CGColorSpaceRelease(DeviceGray);
  if (v61)
  {
    CGContextRelease(v61);
  }

  CFAutorelease(Image);
LABEL_30:

  return Image;
}

+ (MDLTexture)irradianceTextureCubeWithTexture:(MDLTexture *)texture name:(NSString *)name dimensions:(vector_int2)dimensions
{
  v100 = *dimensions.i8;
  v6 = texture;
  v7 = name;
  if (v100.n128_u32[0] == v100.n128_u32[1] && (v8 = log2f(v100.n128_i32[0]), 1 << v8 == v100.n128_u32[0]))
  {
    v9 = v8;
    v10 = [MDLTexture alloc];
    v11 = v100;
    v11.n128_u32[1] = 6 * v100.n128_u32[0];
    isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v10, v12, 0, 1, v11, v13, v14, v15, v7, 4 * v100.n128_u32[0], 4, 1, 1);
    v28 = objc_msgSend_texelDataWithTopLeftOrigin(v6, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23);
    v97 = v7;
    v29 = v28;
    v41 = objc_msgSend_bytes(v29, v30, v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);

    v42 = 0;
    v43 = 4 * v100.n128_u32[0] * 6 * v100.n128_u32[0];
    v44 = 4;
    v98 = vdupq_n_s32(0x437F0000u);
    v99 = isCube;
    do
    {
      __p = 0;
      v102 = 0;
      v103 = 0;
      sub_239F6F6D8(&__p, 6 * v100.n128_u32[0] * v100.n128_u32[1]);
      v46 = 0;
      for (i = 0; i != 6; ++i)
      {
        sub_239F6F158(v6, v41, i, v42 * (1.0 / v9), v100, v45, v44, __p + v46);
        v46 += 16 * v100.n128_u32[0] * v100.n128_u32[1];
      }

      v48 = objc_alloc(MEMORY[0x277CBEB28]);
      v59 = objc_msgSend_initWithCapacity_(v48, v49, v43, v50, v55, v56, v57, v58, v51, v52, v53, v54);
      v60 = v99;
      objc_msgSend_setLength_(v59, v61, v43, v62, v67, v68, v69, v70, v63, v64, v65, v66);
      v71 = v59;
      v83 = objc_msgSend_bytes(v71, v72, v73, v74, v79, v80, v81, v82, v75, v76, v77, v78);
      if (v100.n128_u32[0] * v100.n128_u32[1])
      {
        v91 = 0;
        if ((6 * v100.n128_u32[0] * v100.n128_u32[1]) <= 1)
        {
          v92 = 1;
        }

        else
        {
          v92 = 6 * v100.n128_u32[0] * v100.n128_u32[1];
        }

        do
        {
          v89 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(*(__p + v91), v98), 0), v98);
          *v83 = v89.n128_f32[0];
          v90.n128_u32[0] = v89.n128_u32[1];
          v83[1] = v89.n128_f32[1];
          v89.n128_u32[0] = v89.n128_u32[2];
          v83[2] = v89.n128_f32[2];
          v83[3] = -1;
          v83 += 4;
          ++v91;
        }

        while (v92 != v91);
      }

      objc_msgSend_setTexelDataWithTopLeftOrigin_atMipLevel_(v99, v84, v59, v42, v89, v90, v98, 0, v85, v86, v87, v88);
      v93 = v100.n128_u32[0];
      if (v100.n128_u32[0] != 1)
      {
        ++v42;
        v44 *= 2;
      }

      v95 = v100;
      if (v100.n128_u32[0] != 1)
      {
        HIDWORD(v94) = v100.n128_u32[1] / 2;
        LODWORD(v94) = v100.n128_u32[0] / 2;
        v95.n128_f64[0] = v94;
      }

      v100 = v95;

      if (__p)
      {
        v102 = __p;
        operator delete(__p);
      }
    }

    while (v93 != 1);
    v7 = v97;
  }

  else
  {
    v60 = 0;
  }

  return v60;
}

+ (MDLTexture)irradianceTextureCubeWithTexture:(MDLTexture *)texture name:(NSString *)name dimensions:(vector_int2)dimensions roughness:(float)roughness
{
  v88 = *dimensions.i8;
  v8 = texture;
  v9 = name;
  if (v88.n128_u32[0] == v88.n128_u32[1] && (v17.n128_f32[0] = log2f(v88.n128_i32[0]), 1 << v17.n128_f32[0] == v88.n128_u32[0]))
  {
    v21 = objc_msgSend_texelDataWithTopLeftOrigin(v8, v10, v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    v22 = v21;
    v34 = objc_msgSend_bytes(v22, v23, v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);

    __p = 0;
    v90 = 0;
    v91 = 0;
    sub_239F6F6D8(&__p, 6 * v88.n128_u32[0] * v88.n128_u32[0]);
    v36 = 0;
    v37 = 0;
    v38 = v88;
    v38.n128_u32[1] = 6 * v88.n128_u32[0];
    v87 = v38;
    do
    {
      sub_239F6F158(v8, v34, v37++, roughness, v88, v35, 1024, __p + v36);
      v36 += 16 * v88.n128_u32[0] * v88.n128_u32[0];
    }

    while (v37 != 6);
    v39 = objc_alloc(MEMORY[0x277CBEB28]);
    v40 = 4 * v88.n128_u32[0] * 6 * v88.n128_u32[0];
    v51 = objc_msgSend_initWithCapacity_(v39, v41, v40, v42, v47, v48, v49, v50, v43, v44, v45, v46);
    objc_msgSend_setLength_(v51, v52, v40, v53, v58, v59, v60, v61, v54, v55, v56, v57);
    v62 = v51;
    v74 = objc_msgSend_bytes(v62, v63, v64, v65, v70, v71, v72, v73, v66, v67, v68, v69);
    if (v88.n128_u32[0])
    {
      v75 = 0;
      if (6 * (v88.n128_u32[0] * v88.n128_u32[0]) <= 1)
      {
        v76 = 1;
      }

      else
      {
        v76 = 6 * v88.n128_u32[0] * v88.n128_u32[0];
      }

      v77 = 16 * v76;
      v78 = vdupq_n_s32(0x437F0000u);
      do
      {
        v79 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(*(__p + v75), v78), 0), v78);
        *v74 = v79.f32[0];
        v74[1] = v79.f32[1];
        v74[2] = v79.f32[2];
        v74[3] = -1;
        v74 += 4;
        v75 += 16;
      }

      while (v77 != v75);
    }

    v80 = [MDLTexture alloc];
    isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v80, v81, v51, 1, v87, v82, v83, v84, v9, 4 * v88.n128_u32[0], 4, 1, 1);

    if (__p)
    {
      v90 = __p;
      operator delete(__p);
    }
  }

  else
  {
    isCube = 0;
  }

  return isCube;
}

@end