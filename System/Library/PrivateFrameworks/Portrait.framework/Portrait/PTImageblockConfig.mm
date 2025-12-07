@interface PTImageblockConfig
+ ($3CC19D079FD0B010EE84973AA846B91B)adjustScissorRectToImageBlocks:(SEL)blocks imageBlockSize:(id *)size;
- (PTImageblockConfig)initWithPTTexture:(id)texture;
- (PTImageblockConfig)initWithPTTexture:(id)texture outRect:;
- (PTImageblockConfig)initWithPTTexture:(id)texture scissorRect:(id *)rect;
- (PTImageblockConfig)initWithTexture:(id)texture;
- (PTImageblockConfig)initWithTextureSize:(PTImageblockConfig *)self scissorRect:(SEL)rect outRect:(id *)outRect imageblockSize:(unint64_t)size;
- (__n128)scissorRectOffset;
@end

@implementation PTImageblockConfig

- (PTImageblockConfig)initWithTexture:(id)texture
{
  memset(v10, 0, sizeof(v10));
  textureCopy = texture;
  pixelFormat = [textureCopy pixelFormat];
  v6 = objc_msgSend_device(textureCopy);
  v7 = [PTMetalTextureUtil macroBlockSizeForPixelFormat:pixelFormat device:v6];

  LOWORD(pixelFormat) = [textureCopy width];
  LOWORD(v6) = [textureCopy height];

  LOWORD(v9) = pixelFormat;
  HIWORD(v9) = v6;
  return [(PTImageblockConfig *)self initWithTextureSize:v9 scissorRect:v10 outRect:v7 imageblockSize:0.0];
}

- (PTImageblockConfig)initWithPTTexture:(id)texture
{
  memset(v8, 0, sizeof(v8));
  textureCopy = texture;
  LOWORD(v7) = [textureCopy width];
  HIWORD(v7) = [textureCopy height];
  imageBlockSize = [textureCopy imageBlockSize];

  return [(PTImageblockConfig *)self initWithTextureSize:v7 scissorRect:v8 outRect:imageBlockSize imageblockSize:0.0];
}

- (PTImageblockConfig)initWithPTTexture:(id)texture scissorRect:(id *)rect
{
  textureCopy = texture;
  LOWORD(v10) = [textureCopy width];
  HIWORD(v10) = [textureCopy height];
  imageBlockSize = [textureCopy imageBlockSize];

  v8 = *&rect->var2;
  v11[0] = *&rect->var0;
  v11[1] = v8;
  return [(PTImageblockConfig *)self initWithTextureSize:v10 scissorRect:v11 outRect:imageBlockSize imageblockSize:0.0];
}

- (PTImageblockConfig)initWithPTTexture:(id)texture outRect:
{
  v4 = v3;
  memset(v10, 0, sizeof(v10));
  textureCopy = texture;
  LOWORD(v9) = [textureCopy width];
  HIWORD(v9) = [textureCopy height];
  imageBlockSize = [textureCopy imageBlockSize];

  return [(PTImageblockConfig *)self initWithTextureSize:v9 scissorRect:v10 outRect:imageBlockSize imageblockSize:v4];
}

- (PTImageblockConfig)initWithTextureSize:(PTImageblockConfig *)self scissorRect:(SEL)rect outRect:(id *)outRect imageblockSize:(unint64_t)size
{
  v6 = v4;
  v7 = v5;
  outRectCopy = outRect;
  v30.receiver = self;
  v30.super_class = PTImageblockConfig;
  v10 = [(PTImageblockConfig *)&v30 init];
  v11 = v10;
  if (v10)
  {
    v10->_imageblockSize = v6;
    v10->_threadsPerGroup.width = v6;
    v10->_threadsPerGroup.height = v6;
    v10->_threadsPerGroup.depth = 1;
    if (*(size + 16) && *(size + 24))
    {
      objc_msgSend_adjustScissorRectToImageBlocks_imageBlockSize_(PTImageblockConfig, *size, *(size + 8), *(size + 16), *(size + 24));
      v12 = vmovn_s64(0);
      *&v11->_scissorRectOffset[2] = v12.i16[2];
      *v11->_scissorRectOffset = v12.i16[0];
      v13 = 0u;
    }

    else
    {
      v14 = vmovl_u16(v7);
      v15 = vextq_s8(v14, v14, 8uLL).u64[0];
      v16 = vceqz_s32(v15);
      if (vorr_s8(v16, vdup_lane_s32(v16, 1)).u8[0])
      {
        v10->_threads.width = outRectCopy;
        v10->_threads.height = HIWORD(outRectCopy);
LABEL_9:
        v11->_threads.depth = 1;
        v28 = v11;
        goto LABEL_10;
      }

      v17 = vand_s8(vdup_n_s32(v6), 0xFFFF0000FFFFLL);
      v18 = v17.u32[1];
      v19 = vand_s8(*v14.i8, 0xFFFF0000FFFFLL);
      v20 = v17.i32[0];
      v17.i32[0] = v19.i32[0] % v17.i32[0];
      v17.i32[1] = v19.i32[1] % v17.i32[1];
      v21 = vneg_s32(v17);
      *&v10->_anon_c[2] = v21.i16[2];
      *v10->_anon_c = v21.i16[0];
      v22 = vsub_s32(*v14.i8, v17);
      *&v10->_anon_c[6] = v22.i16[2];
      *&v10->_anon_c[4] = v22.i16[0];
      v23 = vadd_s32(vadd_s32(vdup_n_s32(v6 - 1), v15), v17);
      v24 = vand_s8(v23, 0xFFFF0000FFFFLL);
      v24.i32[0] %= v20;
      v24.i32[1] %= v18;
      v25 = vsub_s32(v23, v24);
      v26.i64[0] = v25.u32[0];
      v26.i64[1] = v25.u32[1];
      v27.i64[0] = 0xFFFFLL;
      v27.i64[1] = 0xFFFFLL;
      v13 = vandq_s8(v26, v27);
    }

    *&v11->_threads.width = v13;
    goto LABEL_9;
  }

LABEL_10:

  return v11;
}

+ ($3CC19D079FD0B010EE84973AA846B91B)adjustScissorRectToImageBlocks:(SEL)blocks imageBlockSize:(id *)size
{
  v5 = vand_s8(vdup_n_s32(a5), 0xFFFF0000FFFFLL);
  v6 = vand_s8(vmovn_s64(*&size->var0), 0xFFFF0000FFFFLL);
  v6.i32[0] %= v5.i32[0];
  v7 = v6.i32[1] % v5.i32[1];
  v8 = size->var1 - v7;
  retstr->var0 = size->var0 - v6.u32[0];
  retstr->var1 = v8;
  v9 = (size->var3 + a5 - 1 + v7) / a5 * a5;
  retstr->var2 = (size->var2 + a5 - 1 + v6.u32[0]) / a5 * a5;
  retstr->var3 = v9;
  return result;
}

- (__n128)scissorRectOffset
{
  LOWORD(v1) = *(self + 8);
  WORD2(v1) = *(self + 10);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

@end