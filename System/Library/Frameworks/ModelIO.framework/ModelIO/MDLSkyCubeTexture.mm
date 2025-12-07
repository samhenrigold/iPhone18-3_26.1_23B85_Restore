@interface MDLSkyCubeTexture
- (MDLSkyCubeTexture)initWithName:(NSString *)name channelEncoding:(MDLTextureChannelEncoding)channelEncoding textureDimensions:(vector_int2)textureDimensions turbidity:(float)turbidity sunElevation:(float)sunElevation sunAzimuth:(float)sunAzimuth upperAtmosphereScattering:(float)upperAtmosphereScattering groundAlbedo:(float)groundAlbedo;
- (void)dealloc;
- (void)setGroundColor:(CGColorRef)groundColor;
- (void)updateTexture;
@end

@implementation MDLSkyCubeTexture

- (void)setGroundColor:(CGColorRef)groundColor
{
  v5 = self->_groundColor;
  if (v5)
  {
    CGColorRelease(v5);
  }

  self->_groundColor = CGColorCreateCopy(groundColor);
}

- (MDLSkyCubeTexture)initWithName:(NSString *)name channelEncoding:(MDLTextureChannelEncoding)channelEncoding textureDimensions:(vector_int2)textureDimensions turbidity:(float)turbidity sunElevation:(float)sunElevation sunAzimuth:(float)sunAzimuth upperAtmosphereScattering:(float)upperAtmosphereScattering groundAlbedo:(float)groundAlbedo
{
  v48 = *textureDimensions.i8;
  v17 = name;
  v49.receiver = self;
  v49.super_class = MDLSkyCubeTexture;
  v18 = [(MDLTexture *)&v49 init];
  v30 = v18;
  if (v18)
  {
    objc_msgSend_clearTexelData(v18, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    if (v17)
    {
      v41 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v31, v17, v32, v37, v38, v39, v40, v33, v34, v35, v36);
    }

    else
    {
      v41 = &stru_284D18478;
    }

    v42 = v30[1];
    v30[1] = v41;

    if (channelEncoding > (MDLTextureChannelEncodingFloat16|MDLTextureChannelEncodingUint8))
    {
      if (channelEncoding != MDLTextureChannelEncodingFloat32 && channelEncoding != MDLTextureChannelEncodingFloat16SR)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (channelEncoding == MDLTextureChannelEncodingUInt8)
      {
LABEL_16:
        v30[70].i32[0] = 1050201276;
        v44 = &unk_239F9EBD8;
        v45 = vld1_dup_f32(v44);
        v45.f32[0] = (turbidity * 3.0) + 1.0;
        v30[73] = v45;
        v43 = 4;
        channelEncoding = MDLTextureChannelEncodingUInt8;
        goto LABEL_18;
      }

      if (channelEncoding != MDLTextureChannelEncodingFloat16)
      {
LABEL_15:
        NSLog(&cfstr_OnlyUint8AndFl.isa, v48);
        goto LABEL_16;
      }
    }

    if ((channelEncoding & 0xFFFFFFFFFFFFFDFFLL) == 0x102)
    {
      v30[70].i32[0] = 1055439407;
      v30[73] = 0x467A000040800000;
      v43 = 8;
    }

    else if (channelEncoding == MDLTextureChannelEncodingFloat32)
    {
      v30[70].i32[0] = 1055439407;
      v30[73] = 0x467A000040800000;
      v43 = 16;
    }

    else
    {
      v43 = 4;
    }

LABEL_18:
    v46.i32[0] = v48;
    v30[36] = (v43 * v48);
    v46.i32[1] = 6 * DWORD1(v48);
    v30[35] = v46;
    v30[34].i32[0] = 4;
    v30[37].i8[0] = 1;
    v30[38] = channelEncoding;
    v30[67].f32[1] = turbidity;
    v30[68].f32[0] = sunElevation;
    v30[69].f32[0] = upperAtmosphereScattering;
    v30[69].f32[1] = groundAlbedo;
    v30[68].f32[1] = sunAzimuth;
    v30[75] = CGColorCreate(0, 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  sky = self->_sky;
  if (sky)
  {
    v4 = sub_239EB93A0(sky);
    MEMORY[0x23EE802C0](v4, 0x10A0C401EE0EB22);
  }

  self->_sky = 0;
  groundColor = self->_groundColor;
  if (groundColor)
  {
    CFRelease(groundColor);
    self->_groundColor = 0;
  }

  v6.receiver = self;
  v6.super_class = MDLSkyCubeTexture;
  [(MDLSkyCubeTexture *)&v6 dealloc];
}

- (void)updateTexture
{
  v3 = self->_groundAlbedo + 0.298437;
  sky = self->_sky;
  sky->var12 = v3;
  v5 = self->_groundAlbedo + 0.298437;
  sky->var13 = v5;
  v6 = self->_groundAlbedo + 0.298437;
  sky->var14 = v6;
  v7 = self->_gamma + -0.139942;
  sky->var15 = v7;
  *&sky->var16 = xmmword_239F9EB60;
  sky->var19 = *self->_highDynamicRangeCompression;
  sky->var20 = *&self->_highDynamicRangeCompression[4];
  sky->var21 = self->_exposure + 1.25;
  v8 = self->_contrast + 4.4;
  sky->var22 = v8;
  sky->var23 = self->_brightness + 1.0;
  sky->var0 = *(&self->super._hasAlphaValues + 2) * 4.5;
  v9 = (1.0 - self->_turbidity) * 3.14159265;
  sky->var2 = v9;
  sky->var1 = self->_sunAzimuth * 1.25;
  sky->var3 = self->_sunElevation;
  sky->var4 = self->_upperAtmosphereScattering + self->_upperAtmosphereScattering;
  NumberOfComponents = CGColorGetNumberOfComponents(self->_groundColor);
  Components = CGColorGetComponents(self->_groundColor);
  if (NumberOfComponents <= 2)
  {
    if (NumberOfComponents != 1)
    {
      if (NumberOfComponents == 2)
      {
        for (i = 0; i != 3; ++i)
        {
          v13 = *Components;
          *(&self->_sky->var8 + (i & 3)) = v13;
        }

        v14 = Components[1];
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    for (j = 0; j != 3; ++j)
    {
      v19 = *Components;
      *(&self->_sky->var8 + (j & 3)) = v19;
    }

LABEL_20:
    v14 = 0.0;
LABEL_21:
    self->_sky->var11 = v14;
    goto LABEL_22;
  }

  if (NumberOfComponents == 3)
  {
    for (k = 0; k != 3; ++k)
    {
      v21 = Components[k];
      *(&self->_sky->var8 + (k & 3)) = v21;
    }

    goto LABEL_20;
  }

  if (NumberOfComponents != 4)
  {
LABEL_12:
    for (m = 0; m != 4; ++m)
    {
      *(&self->_sky->var8 + (m & 3)) = 0;
    }

    goto LABEL_22;
  }

  for (n = 0; n != 4; ++n)
  {
    v16 = Components[n];
    *(&self->_sky->var8 + (n & 3)) = v16;
  }

LABEL_22:
  v22 = *&self->super._anon_118[8] * *&self->super._anon_118[4];
  v23 = objc_alloc(MEMORY[0x277CBEB28]);
  v34 = objc_msgSend_initWithLength_(v23, v24, 6 * (v22 / 6), v25, v30, v31, v32, v33, v26, v27, v28, v29);
  if (v34)
  {
    v63 = v34;
    objc_storeStrong(self->super._topLeftOriginData, v34);
    v35 = self->super._topLeftOriginData[0];
    self->super._textureData.topLeftBytesForMip[0] = objc_msgSend_bytes(v35, v36, v37, v38, v43, v44, v45, v46, v39, v40, v41, v42);
    v47 = malloc_type_malloc(16 * HIDWORD(*self->super._anon_118) * *self->super._anon_118, 0x1000040451B5BE8uLL);
    if (v47)
    {
      v48 = v63;
      v60 = objc_msgSend_mutableBytes(v63, v49, v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
      channelEncoding = self->super._channelEncoding;
      switch(channelEncoding)
      {
        case 258:
          v62 = 1;
          break;
        case 260:
          v62 = 3;
          break;
        case 770:
          v62 = 2;
          break;
        default:
          v62 = 0;
          break;
      }

      sub_239EB9B34(self->_sky, 0, 1, *self->super._anon_118, HIDWORD(*self->super._anon_118) / 6, v47, v62, v60);
    }
  }

  MEMORY[0x2821F96F8]();
}

@end