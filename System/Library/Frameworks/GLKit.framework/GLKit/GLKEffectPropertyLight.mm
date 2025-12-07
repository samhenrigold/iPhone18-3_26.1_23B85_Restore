@interface GLKEffectPropertyLight
+ (void)setStaticMasksWithVshRoot:(id)root fshRoot:(id)fshRoot;
- (GLKBigInt_s)allFshMasks;
- (GLKBigInt_s)allVshMasks;
- (GLKEffectPropertyLight)initWithTransform:(id)transform lightingType:(int)type firstLight:(unsigned __int8)light;
- (GLKVector3)spotDirection;
- (GLKVector4)ambientColor;
- (GLKVector4)diffuseColor;
- (GLKVector4)position;
- (GLKVector4)specularColor;
- (_GLKVector3)normalizedSpotDirectionEye;
- (_GLKVector4)positionEye;
- (id)description;
- (unsigned)isAttenuated;
- (void)bind;
- (void)dealloc;
- (void)initializeMasks;
- (void)setAmbientColor:(GLKVector4)ambientColor;
- (void)setConstantAttenuation:(GLfloat)constantAttenuation;
- (void)setDiffuseColor:(GLKVector4)diffuseColor;
- (void)setEnabled:(GLBOOLean)enabled;
- (void)setGLDefaults;
- (void)setLightIndex:(int)index;
- (void)setLightingType:(int)type;
- (void)setLinearAttenuation:(GLfloat)linearAttenuation;
- (void)setNormalizedSpotDirectionEye:(_GLKVector3)eye;
- (void)setPosition:(GLKVector4)position;
- (void)setPositionEye:(_GLKVector4)eye;
- (void)setQuadraticAttenuation:(GLfloat)quadraticAttenuation;
- (void)setShaderBindings;
- (void)setSpecularColor:(GLKVector4)specularColor;
- (void)setSpotCutoff:(GLfloat)spotCutoff;
- (void)setSpotDirection:(GLKVector3)spotDirection;
- (void)setSpotExponent:(GLfloat)spotExponent;
- (void)setTransform:(GLKEffectPropertyTransform *)transform;
@end

@implementation GLKEffectPropertyLight

- (GLKEffectPropertyLight)initWithTransform:(id)transform lightingType:(int)type firstLight:(unsigned __int8)light
{
  v11.receiver = self;
  v11.super_class = GLKEffectPropertyLight;
  v8 = [(GLKEffectProperty *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GLKEffectPropertyLight *)v8 setTransform:transform];
    v9->_enabled = 0;
    v9->_quadraticAttenuationLoc = -1;
    v9->_linearAttenuationLoc = -1;
    v9->_constantAttenuationLoc = -1;
    v9->_spotCutoffLoc = -1;
    v9->_spotExponentLoc = -1;
    v9->_normalizedSpotDirectionEyeLoc = -1;
    v9->_specularLoc = -1;
    v9->_diffuseLoc = -1;
    v9->_ambientTermLoc = -1;
    v9->_ambientLoc = -1;
    v9->_positionEyeLoc = -1;
    v9->_normalizeLoc = -1;
    v9->_lightIndex = -1;
    v9->_lightingType = type;
    v9->_effectDirtyUniforms = 0;
    v9->_firstLight = light;
    [(GLKEffectPropertyLight *)v9 setGLDefaults];
  }

  return v9;
}

- (void)setGLDefaults
{
  self->_position = xmmword_2389150D0;
  self->_positionEye = xmmword_2389150D0;
  v4 = 0.0;
  LODWORD(v2) = 1.0;
  [(GLKEffectPropertyLight *)self setAmbientColor:0.0, 0.0, 0.0, v2];
  if (self->_firstLight)
  {
    v4 = 1.0;
  }

  LODWORD(v8) = 1.0;
  *&v5 = v4;
  *&v6 = v4;
  *&v7 = v4;
  [(GLKEffectPropertyLight *)self setDiffuseColor:v5, v6, v7, v8];
  LODWORD(v9) = 1.0;
  *&v10 = v4;
  *&v11 = v4;
  *&v12 = v4;
  [(GLKEffectPropertyLight *)self setSpecularColor:v10, v11, v12, v9];
  *&self->_spotDirection.x = 0;
  self->_spotDirection.z = -1.0;
  *&self->_normalizedSpotDirectionEye.x = 0;
  self->_normalizedSpotDirectionEye.z = -1.0;
  self->_spotExponent = 0.0;
  self->_spotCutoff = 3.1416;
  self->_spotCutoffDegrees = 180.0;
  self->_constantAttenuation = 1.0;
  self->_linearAttenuation = 0.0;
  self->_quadraticAttenuation = 0.0;
}

- (void)initializeMasks
{
  *self->super._prv = [*(self->super._prv + 4) vshMask];
  *(self->super._prv + 2) = [*(self->super._prv + 4) fshMask];
  *&v3 = _setMasks(self).u64[0];
  v4 = *(self->super._prv + 4);
  if (v4)
  {
    _lightStateChanged(v4);
    _vPositionEyeMask(*(self->super._prv + 4));
    _normalizedNormalsMask(*(self->super._prv + 4));
    _modelviewMatrixMask(*(self->super._prv + 4));
  }

  [(GLKEffectProperty *)self setMasksInitialized:1, v3];
}

- (void)setShaderBindings
{
  v5 = *MEMORY[0x277D85DE8];
  params = 0;
  glGetIntegerv(0x8B8Du, &params);
  snprintf(__str, 0x3FuLL, "light_positionEye[%d]", self->_lightIndex);
  self->_positionEyeLoc = glGetUniformLocation(params, __str);
  snprintf(__str, 0x3FuLL, "light_ambientColor[%d]", self->_lightIndex);
  self->_ambientLoc = glGetUniformLocation(params, __str);
  snprintf(__str, 0x3FuLL, "light_diffuseColor[%d]", self->_lightIndex);
  self->_diffuseLoc = glGetUniformLocation(params, __str);
  snprintf(__str, 0x3FuLL, "light_specularColor[%d]", self->_lightIndex);
  self->_specularLoc = glGetUniformLocation(params, __str);
  snprintf(__str, 0x3FuLL, "light_normalizedSpotDirectionEye[%d]", self->_lightIndex);
  self->_normalizedSpotDirectionEyeLoc = glGetUniformLocation(params, __str);
  snprintf(__str, 0x3FuLL, "light_spotExponent[%d]", self->_lightIndex);
  self->_spotExponentLoc = glGetUniformLocation(params, __str);
  snprintf(__str, 0x3FuLL, "light_spotCutoffAngle[%d]", self->_lightIndex);
  self->_spotCutoffLoc = glGetUniformLocation(params, __str);
  snprintf(__str, 0x3FuLL, "light_constantAttenuation[%d]", self->_lightIndex);
  self->_constantAttenuationLoc = glGetUniformLocation(params, __str);
  snprintf(__str, 0x3FuLL, "light_linearAttenuation[%d]", self->_lightIndex);
  self->_linearAttenuationLoc = glGetUniformLocation(params, __str);
  snprintf(__str, 0x3FuLL, "light_quadraticAttenuation[%d]", self->_lightIndex);
  self->_quadraticAttenuationLoc = glGetUniformLocation(params, __str);
  snprintf(__str, 0x3FuLL, "ambientTerm[%d]", self->_lightIndex);
  self->_ambientTermLoc = glGetUniformLocation(params, __str);
  self->_normalizeLoc = glGetUniformLocation(params, "normalizeNormal");
  [(GLKEffectPropertyLight *)self dirtyAllUniforms];
}

- (void)setTransform:(GLKEffectPropertyTransform *)transform
{
  if (transform)
  {
    v5 = self->_transform;
    if (v5 != transform)
    {

      self->_transform = transform;
    }
  }
}

- (void)setSpotDirection:(GLKVector3)spotDirection
{
  p_spotDirection = &self->_spotDirection;
  self->_spotDirection.x = x;
  self->_spotDirection.y = y;
  self->_spotDirection.z = z;
  transform = self->_transform;
  if (transform)
  {
    objc_msgSend_normalMatrix(transform, a2, *&spotDirection.x, *&spotDirection.v[2]);
    x = p_spotDirection->x;
    y = p_spotDirection->y;
    z = p_spotDirection->z;
    v9 = v19;
    v10 = v21;
    v11 = v23;
    v12 = v20;
    v13 = v22;
    v14 = v24;
  }

  else
  {
    v11 = 0;
    v14 = 0.0;
    v13 = 0.0;
    v12 = 0.0;
    v9 = 0;
    v10 = 0;
  }

  v15 = vmul_n_f32(v10, y);
  v16 = ((y * v13) + (v12 * x)) + (v14 * z);
  v17 = vmla_n_f32(vmla_n_f32(v15, v9, x), v11, z);
  v18 = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(v17, v17).i32[1]) + (v17.f32[0] * v17.f32[0])) + (v16 * v16));
  *&self->_normalizedSpotDirectionEye.x = vmul_n_f32(v17, v18);
  self->_normalizedSpotDirectionEye.z = v16 * v18;
  [(GLKEffectProperty *)self setDirtyUniforms:[(GLKEffectProperty *)self dirtyUniforms]| 0x4000000000];
}

- (void)setSpecularColor:(GLKVector4)specularColor
{
  v8.i64[0] = __PAIR64__(LODWORD(v5), LODWORD(v4));
  v8.i64[1] = __PAIR64__(LODWORD(v7), LODWORD(v6));
  v9 = vceqq_f32(v8, self->_specularColor);
  *v9.i8 = vand_s8(*&vextq_s8(v9, v9, 8uLL), vand_s8(*v9.i8, 0x100000001));
  if (!vand_s8(vdup_lane_s32(*v9.i8, 1), *v9.i8).u32[0])
  {
    self->_specularColor.x = v4;
    self->_specularColor.y = v5;
    self->_specularColor.z = v6;
    self->_specularColor.w = v7;
    v11 = [(GLKEffectProperty *)self dirtyUniforms:*&specularColor.x]| 0x2000000000;

    [(GLKEffectProperty *)self setDirtyUniforms:v11];
  }
}

- (void)setDiffuseColor:(GLKVector4)diffuseColor
{
  v8.i64[0] = __PAIR64__(LODWORD(v5), LODWORD(v4));
  v8.i64[1] = __PAIR64__(LODWORD(v7), LODWORD(v6));
  v9 = vceqq_f32(v8, self->_diffuseColor);
  *v9.i8 = vand_s8(*&vextq_s8(v9, v9, 8uLL), vand_s8(*v9.i8, 0x100000001));
  if (!vand_s8(vdup_lane_s32(*v9.i8, 1), *v9.i8).u32[0])
  {
    self->_diffuseColor.x = v4;
    self->_diffuseColor.y = v5;
    self->_diffuseColor.z = v6;
    self->_diffuseColor.w = v7;
    v11 = [(GLKEffectProperty *)self dirtyUniforms:*&diffuseColor.x]| 0x100000000;

    [(GLKEffectProperty *)self setDirtyUniforms:v11];
  }
}

- (void)setAmbientColor:(GLKVector4)ambientColor
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  v8 = vceqq_f32(v7, self->_ambientColor);
  *v8.i8 = vand_s8(*&vextq_s8(v8, v8, 8uLL), vand_s8(*v8.i8, 0x100000001));
  if (!vand_s8(vdup_lane_s32(*v8.i8, 1), *v8.i8).u32[0])
  {
    self->_ambientColor.x = v3;
    self->_ambientColor.y = v4;
    self->_ambientColor.z = v5;
    self->_ambientColor.w = v6;
    [(GLKEffectProperty *)self setDirtyUniforms:[(GLKEffectProperty *)self dirtyUniforms:*&ambientColor.x]| 0x40000000];
    effectDirtyUniforms = self->_effectDirtyUniforms;
    if (effectDirtyUniforms)
    {
      *effectDirtyUniforms |= 0x40000000uLL;
    }
  }
}

- (void)setPosition:(GLKVector4)position
{
  v7 = v4;
  transform = self->_transform;
  if (transform)
  {
    v46 = v5;
    v48 = v6;
    v42 = v3;
    v44 = v4;
    objc_msgSend_modelviewMatrix(transform, a2, *&position.x, *&position.v[2]);
    v3 = v42;
    v7 = v44;
    v5 = v46;
    v6 = v48;
    v10 = v50;
    v11 = v51;
    v12 = v52;
    v13 = v53;
  }

  else
  {
    v13 = 0uLL;
    v12 = 0uLL;
    v11 = 0uLL;
    v10 = 0uLL;
  }

  v14 = vaddq_f32(vaddq_f32(vmulq_n_f32(v10, v3), vmulq_n_f32(v11, v7)), vaddq_f32(vmulq_n_f32(v12, v5), vmulq_n_f32(v13, v6)));
  if (v14.f32[3] == 0.0)
  {
    v15 = vmulq_f32(v14, v14);
    v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
    *v15.f32 = vpadd_f32(*v15.f32, *v15.f32);
    v15.f32[0] = 1.0 / sqrtf(v15.f32[0]);
    v16 = vdupq_lane_s32(*v15.f32, 0);
  }

  else
  {
    v17 = vdupq_laneq_s32(v14, 3);
    v18 = vrecpeq_f32(v17);
    v19 = vmulq_f32(v18, vrecpsq_f32(v17, v18));
    v16 = vmulq_f32(vrecpsq_f32(v17, v19), v19);
  }

  v20 = vmulq_f32(v14, v16);
  if (v20.x != self->_positionEye.x || v20.y != self->_positionEye.y || v20.z != self->_positionEye.z || v20.w != self->_positionEye.w || (v47 = v5, v49 = v6, v43 = v3, v45 = v7, v41 = v20, v21 = [(GLKEffectProperty *)self masksInitialized], v20 = v41, v3 = v43, v7 = v45, v5 = v47, v6 = v49, !v21))
  {
    self->_position.x = v3;
    self->_position.y = v7;
    self->_position.z = v5;
    self->_position.w = v6;
    self->_positionEye = v20;
    _vPositionEyeMask(*(self->super._prv + 4));
    _modelviewMatrixMask(*(self->super._prv + 4));
    isSpot = [(GLKEffectPropertyLight *)self isSpot];
    prv = self->super._prv;
    v24 = *prv;
    lightIndex = self->_lightIndex;
    v26 = &qword_27DF405E0;
    if (isSpot)
    {
      v27 = &qword_27DF405E0;
    }

    else
    {
      v27 = &unk_27DF40610;
    }

    if (isSpot)
    {
      v28 = &qword_27DF40730;
    }

    else
    {
      v28 = &unk_27DF40760;
    }

    if (isSpot)
    {
      v26 = &unk_27DF40610;
      v29 = &unk_27DF40760;
    }

    else
    {
      v29 = &qword_27DF40730;
    }

    *v24 = vorrq_s8(*v24, *&v27[2 * lightIndex]);
    v30 = *(prv + 2);
    *v30 = vorrq_s8(*v30, *&v28[2 * lightIndex]);
    *v24 = vbicq_s8(*v24, *&v26[2 * lightIndex]);
    *v30 = vbicq_s8(*v30, *&v29[2 * lightIndex]);
    _attenuateMask(self);
    if (self->_position.w == 0.0)
    {
      v31 = self->super._prv;
      v34 = v31 + 2;
      v35 = self->_lightIndex;
      **v31 = vbicq_s8(**v31, *&_staticVshMasks_0[2 * v35 + 30]);
      v33 = &_staticFshMasks[2 * v35 + 30];
      LODWORD(v32) = v35;
    }

    else
    {
      v31 = self->super._prv;
      if (self->_lightingType)
      {
        v32 = self->_lightIndex;
        *v31[2] = vorrq_s8(*v31[2], *&_staticFshMasks[2 * v32 + 30]);
        v33 = &_staticVshMasks_0[2 * v32 + 30];
        v34 = v31;
      }

      else
      {
        v34 = v31 + 2;
        v32 = self->_lightIndex;
        **v31 = vorrq_s8(**v31, *&_staticVshMasks_0[2 * v32 + 30]);
        v33 = &_staticFshMasks[2 * v32 + 30];
      }
    }

    **v34 = vbicq_s8(**v34, *v33);
    if (self->_position.w == 0.0)
    {
      if (self->_lightingType)
      {
        *v31[2] = vorrq_s8(*v31[2], *&_staticFshMasks[2 * v32 + 36]);
        v36 = _staticVshMasks_0;
LABEL_32:
        **v31 = vbicq_s8(**v31, *&v36[2 * v32 + 36]);
        [(GLKEffectProperty *)self setDirtyUniforms:[(GLKEffectProperty *)self dirtyUniforms]| 0x800000000];
        return;
      }

      v40 = *v31;
      v31 += 2;
      v37 = v40;
      v39 = vorrq_s8(*v40, *&_staticVshMasks_0[2 * v32 + 36]);
    }

    else
    {
      v38 = *v31;
      v31 += 2;
      v37 = v38;
      v39 = vbicq_s8(*v38, *&_staticVshMasks_0[2 * v32 + 36]);
    }

    *v37 = v39;
    v36 = _staticFshMasks;
    goto LABEL_32;
  }
}

- (void)setEnabled:(GLBOOLean)enabled
{
  if (self->_enabled != enabled || ![(GLKEffectProperty *)self masksInitialized])
  {
    self->_enabled = enabled;
    _lightStateChanged(*(self->super._prv + 4));
    _setMasks(self);
    _vPositionEyeMask(*(self->super._prv + 4));
    _normalizedNormalsMask(*(self->super._prv + 4));
    v5 = *(self->super._prv + 4);

    _modelviewMatrixMask(v5);
  }
}

- (void)setLightingType:(int)type
{
  if (self->_lightingType != type || ![(GLKEffectProperty *)self masksInitialized])
  {
    self->_lightingType = type;
    _lightStateChanged(*(self->super._prv + 4));

    _setMasks(self);
  }
}

- (void)setSpotExponent:(GLfloat)spotExponent
{
  if (self->_spotExponent != spotExponent)
  {
    self->_spotExponent = spotExponent;
    v5 = [(GLKEffectProperty *)self dirtyUniforms]| 0x8000000000;

    [(GLKEffectProperty *)self setDirtyUniforms:v5];
  }
}

- (void)setQuadraticAttenuation:(GLfloat)quadraticAttenuation
{
  if (self->_quadraticAttenuation != quadraticAttenuation)
  {
    self->_quadraticAttenuation = quadraticAttenuation;
    _attenuateMask(self);
    _modelviewMatrixMask(*(self->super._prv + 4));
    v5 = [(GLKEffectProperty *)self dirtyUniforms]| 0x1000000000;

    [(GLKEffectProperty *)self setDirtyUniforms:v5];
  }
}

- (void)setLinearAttenuation:(GLfloat)linearAttenuation
{
  if (self->_linearAttenuation != linearAttenuation)
  {
    self->_linearAttenuation = linearAttenuation;
    _attenuateMask(self);
    _modelviewMatrixMask(*(self->super._prv + 4));
    v5 = [(GLKEffectProperty *)self dirtyUniforms]| 0x400000000;

    [(GLKEffectProperty *)self setDirtyUniforms:v5];
  }
}

- (void)setConstantAttenuation:(GLfloat)constantAttenuation
{
  if (self->_constantAttenuation != constantAttenuation)
  {
    self->_constantAttenuation = constantAttenuation;
    _attenuateMask(self);
    _modelviewMatrixMask(*(self->super._prv + 4));
    v5 = [(GLKEffectProperty *)self dirtyUniforms]| 0x80000000;

    [(GLKEffectProperty *)self setDirtyUniforms:v5];
  }
}

- (void)setSpotCutoff:(GLfloat)spotCutoff
{
  if (self->_spotCutoffDegrees != spotCutoff)
  {
    self->_spotCutoffDegrees = spotCutoff;
    v5 = spotCutoff * 0.0174532925;
    self->_spotCutoff = v5;
    isSpot = [(GLKEffectPropertyLight *)self isSpot];
    lightIndex = self->_lightIndex;
    v8 = &qword_27DF405E0;
    if (isSpot)
    {
      v9 = &qword_27DF405E0;
    }

    else
    {
      v9 = &unk_27DF40610;
    }

    if (isSpot)
    {
      v10 = &qword_27DF40730;
    }

    else
    {
      v10 = &unk_27DF40760;
    }

    if (isSpot)
    {
      v8 = &unk_27DF40610;
      v11 = &unk_27DF40760;
    }

    else
    {
      v11 = &qword_27DF40730;
    }

    **self->super._prv = vorrq_s8(**self->super._prv, *&v9[2 * lightIndex]);
    **(self->super._prv + 2) = vorrq_s8(**(self->super._prv + 2), *&v10[2 * lightIndex]);
    **self->super._prv = vbicq_s8(**self->super._prv, *&v8[2 * lightIndex]);
    **(self->super._prv + 2) = vbicq_s8(**(self->super._prv + 2), *&v11[2 * lightIndex]);
    v12 = [(GLKEffectProperty *)self dirtyUniforms]| 0x10000000000;

    [(GLKEffectProperty *)self setDirtyUniforms:v12];
  }
}

+ (void)setStaticMasksWithVshRoot:(id)root fshRoot:(id)fshRoot
{
  v6 = 0;
  v7 = &unk_27DF40708;
  v8 = &unk_27DF405B8;
  do
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"lighting%d", v6];
    *(v8 - 1) = [GLKShaderBlockNode maskForLabel:v9 root:root index:v6];
    *v8 = v10;
    *(v7 - 1) = [GLKShaderBlockNode maskForLabel:v9 root:fshRoot index:v6];
    *v7 = v11;
    ++v6;
    v7 += 2;
    v8 += 2;
  }

  while (v6 != 3);
  v12 = &unk_27DF405E8;
  for (i = 1; i != 7; ++i)
  {
    v14 = 0;
    v15 = _maskStrs_0[i];
    v16 = v12;
    do
    {
      *(v16 - 1) = [GLKShaderBlockNode maskForLabel:v15 root:root index:v14];
      *v16 = v17;
      ++v14;
      v16 += 2;
    }

    while (v14 != 3);
    v12 += 6;
  }

  v18 = &unk_27DF40738;
  for (j = 1; j != 7; ++j)
  {
    v20 = 0;
    v21 = _maskStrs_0[j];
    v22 = v18;
    do
    {
      *(v22 - 1) = [GLKShaderBlockNode maskForLabel:v21 root:fshRoot index:v20];
      *v22 = v23;
      ++v20;
      v22 += 2;
    }

    while (v20 != 3);
    v18 += 6;
  }
}

- (unsigned)isAttenuated
{
  [(GLKEffectPropertyLight *)self position];
  result = 0;
  if (v3 != 0.0)
  {
    [(GLKEffectPropertyLight *)self constantAttenuation];
    if (v4 != 1.0)
    {
      return 1;
    }

    [(GLKEffectPropertyLight *)self linearAttenuation];
    if (v5 != 0.0)
    {
      return 1;
    }

    [(GLKEffectPropertyLight *)self quadraticAttenuation];
    if (v6 != 0.0)
    {
      return 1;
    }
  }

  return result;
}

- (void)bind
{
  if ([(GLKEffectPropertyLight *)self enabled]&& [(GLKEffectProperty *)self dirtyUniforms])
  {
    glUniform1i(self->_normalizeLoc, 1);
    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x800000000) != 0)
    {
      glUniform4fv(self->_positionEyeLoc, 1, &self->_positionEye.x);
    }

    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x40000000) != 0)
    {
      glUniform4fv(self->_ambientLoc, 1, &self->_ambientColor.x);
    }

    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x100000000) != 0)
    {
      glUniform4fv(self->_diffuseLoc, 1, &self->_diffuseColor.x);
    }

    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x2000000000) != 0)
    {
      glUniform4fv(self->_specularLoc, 1, &self->_specularColor.x);
    }

    if (self->_position.w != 0.0)
    {
      if (([(GLKEffectProperty *)self dirtyUniforms]& 0x4000000000) != 0)
      {
        glUniform3fv(self->_normalizedSpotDirectionEyeLoc, 1, &self->_normalizedSpotDirectionEye.x);
      }

      if (([(GLKEffectProperty *)self dirtyUniforms]& 0x8000000000) != 0)
      {
        glUniform1f(self->_spotExponentLoc, self->_spotExponent);
      }

      if (([(GLKEffectProperty *)self dirtyUniforms]& 0x10000000000) != 0)
      {
        glUniform1f(self->_spotCutoffLoc, self->_spotCutoff);
      }

      if (([(GLKEffectProperty *)self dirtyUniforms]& 0x80000000) != 0)
      {
        glUniform1f(self->_constantAttenuationLoc, self->_constantAttenuation);
      }

      if (([(GLKEffectProperty *)self dirtyUniforms]& 0x400000000) != 0)
      {
        glUniform1f(self->_linearAttenuationLoc, self->_linearAttenuation);
      }

      if (([(GLKEffectProperty *)self dirtyUniforms]& 0x1000000000) != 0)
      {
        glUniform1f(self->_quadraticAttenuationLoc, self->_quadraticAttenuation);
      }
    }

    [(GLKEffectProperty *)self setDirtyUniforms:0];
  }
}

- (void)setLightIndex:(int)index
{
  if (self->_lightIndex != index)
  {
    v3 = 0;
    self->_lightIndex = index;
    v4 = 0;
    self->_allVshMasks = 0u;
    do
    {
      v4 = vorrq_s8(v4, *&_staticVshMasks_0[2 * index + v3]);
      self->_allVshMasks = v4;
      v3 += 6;
    }

    while (v3 != 42);
    v5 = 0;
    v6 = 0;
    self->_allFshMasks = 0u;
    do
    {
      v6 = vorrq_s8(v6, *&_staticFshMasks[2 * index + v5]);
      self->_allFshMasks = v6;
      v5 += 6;
    }

    while (v5 != 42);
  }
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"%@ = %p\n{\n", objc_msgSend(objc_opt_class(), "description"), self];
  *&v6.x = [v3 appendFormat:@"\tenabled =        %d\n", self->_enabled];
  *&v7.x = [v3 appendFormat:@"\tposition =       %@\n", NSStringFromGLKVector4(v6)];
  *&v8.x = [v3 appendFormat:@"\tambientColor =   %@\n", NSStringFromGLKVector4(v7)];
  *&v9.x = [v3 appendFormat:@"\tdiffuseColor =   %@\n", NSStringFromGLKVector4(v8)];
  *&v5.x = [v3 appendFormat:@"\tspecularColor =  %@\n", NSStringFromGLKVector4(v9)];
  [v3 appendFormat:@"\tspotDirection =  %@\n", NSStringFromGLKVector3(v5)];
  [v3 appendFormat:@"\tspotExponent =   %-6.4f\n", self->_spotExponent];
  [v3 appendFormat:@"\tspotCutoff =     %-6.4f\n", self->_spotCutoff];
  [v3 appendFormat:@"\tconstantAtten =  %-6.4f\n", self->_constantAttenuation];
  [v3 appendFormat:@"\tlinearAtten =    %-6.4f\n", self->_linearAttenuation];
  [v3 appendFormat:@"\tquadraticAtten = %-6.4f\n", self->_linearAttenuation];
  [v3 appendFormat:@"\ttransform =      %@\n", -[GLKEffectPropertyTransform description](self->_transform, "description")];
  [v3 appendFormat:@"}"];
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GLKEffectPropertyLight;
  [(GLKEffectProperty *)&v3 dealloc];
}

- (GLKVector4)position
{
  *&result.v[2] = a2;
  *&result.x = self;
  return result;
}

- (_GLKVector4)positionEye
{
  *&result.v[2] = a2;
  *&result.x = self;
  return result;
}

- (void)setPositionEye:(_GLKVector4)eye
{
  self->_positionEye.x = v3;
  self->_positionEye.y = v4;
  self->_positionEye.z = v5;
  self->_positionEye.w = v6;
}

- (GLKVector4)ambientColor
{
  *&result.v[2] = a2;
  *&result.x = self;
  return result;
}

- (GLKVector4)diffuseColor
{
  *&result.v[2] = a2;
  *&result.x = self;
  return result;
}

- (GLKVector4)specularColor
{
  *&result.v[2] = a2;
  *&result.x = self;
  return result;
}

- (GLKVector3)spotDirection
{
  result.z = *&a2;
  *&result.x = self;
  return result;
}

- (_GLKVector3)normalizedSpotDirectionEye
{
  result.z = *&a2;
  *&result.x = self;
  return result;
}

- (void)setNormalizedSpotDirectionEye:(_GLKVector3)eye
{
  self->_normalizedSpotDirectionEye.x = v3;
  self->_normalizedSpotDirectionEye.y = v4;
  self->_normalizedSpotDirectionEye.z = v5;
}

- (GLKBigInt_s)allVshMasks
{
  p_allVshMasks = &self->_allVshMasks;
  n0 = self->_allVshMasks.n0;
  n1 = p_allVshMasks->n1;
  result.n1 = n1;
  result.n0 = n0;
  return result;
}

- (GLKBigInt_s)allFshMasks
{
  p_allFshMasks = &self->_allFshMasks;
  n0 = self->_allFshMasks.n0;
  n1 = p_allFshMasks->n1;
  result.n1 = n1;
  result.n0 = n0;
  return result;
}

@end