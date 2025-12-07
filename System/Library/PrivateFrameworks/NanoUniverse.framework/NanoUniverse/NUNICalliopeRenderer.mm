@interface NUNICalliopeRenderer
- (BOOL)isObjectBoundingBoxInsideOrIntersectingFrustum:(NUNICalliopeRenderer *)self max:(SEL)max withState:;
- (NUNICalliopeRenderer)initWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style;
- (double)buildFrustumPlane:(float32x4_t)plane p2:(float32x4_t)p2 p3:(float32x4_t)p3;
- (id)_getOrCreateOffscreenBloomWithViewport:(NUNIViewport)viewport;
- (id)getUniformsBufferForFrameBufferIndex:(unint64_t)index pContents:(NUNICalliopeRenderUniforms *)contents pOffset:(unint64_t *)offset;
- (id)spheroidAtPoint:(id)point scene:(NUNIViewport)scene viewport:;
- (int)classifyObjectBoundingBoxVersusFrustum:(NUNICalliopeRenderer *)self max:(SEL)max withState:;
- (void)_computeBloomChainTextures:(id)textures;
- (void)_renderLocationDot:(const NUNISpheroidStructure *)dot scene:(const NUNISceneStructure *)scene uniPtr:(NUNICalliopeRenderUniforms *)ptr viewport:(NUNIViewport)viewport renderEncoder:(id)encoder;
- (void)_renderOffscreenBackgroundWithRenderEncoder:(id)encoder frameBufferIndex:(unint64_t)index;
- (void)_renderOffscreenBloomTextureUsingTileShaderWithViewport:(NUNIViewport)viewport renderEncoder:(id)encoder;
- (void)_renderOffscreenBloomTextureWithViewport:(NUNIViewport)viewport sceneTexture:(id)texture commandBuffer:(id)buffer;
- (void)_renderOffscreenPostWithScene:(const NUNISceneStructure *)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer frameBufferIndex:(unint64_t)index;
- (void)_renderOffscreenSceneWithScene:(const NUNISceneStructure *)scene spheroids:(id)spheroids viewport:(NUNIViewport)viewport commandBuffer:(id)buffer frameBufferIndex:(unint64_t)index drawableTexture:(id)texture;
- (void)_renderPatchSpheroid:(const NUNISpheroidStructure *)spheroid frustumCullingState:(id *)state drawableSize:frameBufferIndex:renderEncoder:;
- (void)_renderSaturnRings:(__n128)rings frameBufferIndex:(__n128)index renderEncoder:(__n128)encoder forwardAngle:(__n128)angle position:(__n128)position isRotated:(float)rotated rotationMatrix:(float)matrix scale:(uint64_t)self0 equatorRotation:(_OWORD *)self1;
- (void)_renderSpriteSpheroid:(const NUNISpheroidStructure *)spheroid frameBufferIndex:(unint64_t)index renderEncoder:(id)encoder;
- (void)_renderSunSprite:(NUNICalliopeRenderUniforms *)sprite frameBufferIndex:(unint64_t)index renderEncoder:(id)encoder position:(float)position scale:(float)scale opacity:;
- (void)_setupBloomChainWithViewport:(NUNIViewport)viewport bloomTexture:(id)texture;
- (void)_updateBaseUniformsForViewport:(NUNIViewport)viewport;
- (void)_updateStateWithScene:(const NUNISceneStructure *)scene viewport:(NUNIViewport)viewport;
- (void)_updateTextureLODsForPatchSpheroid:(NUNICalliopeRenderer *)self uvRate:(SEL)rate drawableSize:(unint64_t)size;
- (void)dealloc;
- (void)prepareObjectSpaceFrustumWithTransform:(id *)transform withState:(id *)state;
- (void)prepareWorldSpaceFrustumWithTransform:(id *)transform withState:(id *)state;
- (void)purgeUnusedWithScene:(id)scene;
- (void)renderOffscreenWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer;
- (void)renderWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)setRendererOptions:(id)options;
@end

@implementation NUNICalliopeRenderer

- (NUNICalliopeRenderer)initWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style
{
  suffixCopy = suffix;
  v19.receiver = self;
  v19.super_class = NUNICalliopeRenderer;
  v9 = [(NUNIRenderer *)&v19 initWithPixelFormat:format textureSuffix:suffixCopy rendererStyle:style];
  if (v9)
  {
    v10 = [NUNICalliopeResourceManager sharedInstanceWithDisplayPixelFormat:format];
    resourceManager = v9->_resourceManager;
    v9->_resourceManager = v10;

    [(NUNICalliopeResourceManager *)v9->_resourceManager addClient];
    mEMORY[0x277CFA798] = [MEMORY[0x277CFA798] sharedDevice];
    device = v9->_device;
    v9->_device = mEMORY[0x277CFA798];

    v14 = [(NUNICalliopeResourceManager *)v9->_resourceManager textureGroupWithSuffix:suffixCopy];
    textureGroup = v9->_textureGroup;
    v9->_textureGroup = v14;

    [(MTLDevice *)v9->_device supportsFamily:1004];
    v9->_bloomDownsampleUsingTileShaders = 0;
    v9->_bloomEnabled = [(MTLDevice *)v9->_device supportsFamily:1004];
    v16 = MGGetStringAnswer();
    v9->_useLowerResolutionTextures = [v16 isEqualToString:@"t8010"];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v9->_isPhone = [currentDevice userInterfaceIdiom] == 0;
  }

  return v9;
}

- (void)dealloc
{
  [(NUNICalliopeResourceManager *)self->_resourceManager removeClient];
  v3.receiver = self;
  v3.super_class = NUNICalliopeRenderer;
  [(NUNIRenderer *)&v3 dealloc];
}

- (void)setRendererOptions:(id)options
{
  objc_storeStrong(&self->_rendererOptions, options);
  optionsCopy = options;
  changeSequence = [(NUNIRendererOptions *)self->_rendererOptions changeSequence];

  self->_rendererOptionsChangeSequence = changeSequence - 1;
}

- (void)purgeUnusedWithScene:(id)scene
{
  v4 = *(objc_msgSend_structure(scene, a2) + 56);
  mEMORY[0x277CFA7B0] = [MEMORY[0x277CFA7B0] sharedInstance];
  nullTexture2D = [MEMORY[0x277CFA7C0] nullTexture2D];
  for (i = 0; i != 24; ++i)
  {
    if (v4 != i)
    {
      gradients = [(NUNICalliopeTextureGroup *)self->_textureGroup gradients];
      v8 = [gradients objectAtIndexedSubscript:i];

      if (v8 != nullTexture2D)
      {
        atlas = [v8 atlas];
        uuid = [atlas uuid];
        [mEMORY[0x277CFA7B0] purge:uuid];
      }
    }
  }
}

- (void)_updateStateWithScene:(const NUNISceneStructure *)scene viewport:(NUNIViewport)viewport
{
  width = viewport.width;
  height = viewport.height;
  mEMORY[0x277CFA7B0] = [MEMORY[0x277CFA7B0] sharedInstance];
  [mEMORY[0x277CFA7B0] updateTextureStreaming];

  v76 = *&scene->var0;
  v67 = *&scene->var3;
  _Q0 = vsubq_f32(v67, *&scene->var0);
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v16 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  v17 = *&scene->var5;
  v18 = vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL);
  _Q3 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
  v19 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL), vnegq_f32(v19)), _Q3, v18);
  _Q3.i32[0] = _Q2.i32[2];
  __asm { FMLA            S4, S3, V2.S[2] }

  _Q3.f32[0] = sqrtf(_S4);
  if (_Q3.f32[0] < 0.00001)
  {
    _Q2 = vmlaq_f32(vmulq_f32(v19, xmmword_25B71A3B0), xmmword_25B719C90, v18);
    _Q3.i64[0] = _Q2.u32[2];
    __asm { FMLA            S4, S3, V2.S[2] }

    _Q3.f32[0] = sqrtf(_S4);
    if (_Q3.f32[0] < 0.00001)
    {
      _Q2 = vmlaq_f32(vmulq_f32(v19, xmmword_25B71A3C0), xmmword_25B71A3D0, v18);
      _Q3.i64[0] = _Q2.u32[2];
      __asm { FMLA            S4, S3, V2.S[2] }

      _Q3.f32[0] = sqrtf(_S4);
    }
  }

  var1 = scene->var8.var0.var1;
  v26 = vdivq_f32(_Q2, vdupq_lane_s32(*_Q3.f32, 0));
  _Q0 = vmlaq_f32(vmulq_f32(v18, vnegq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL))), v19, vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL));
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v73 = vnegq_f32(vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0)));
  v74 = v26;
  v30 = width / height;
  v75 = v16;
  var4 = scene[1].var4;
  if (v30 >= 1.0)
  {
    v32 = 0.34907;
  }

  else
  {
    v31 = atanf(0.17633 / v30);
    v32 = v31 + v31;
  }

  *v33.f32 = UMFloat4x4MakeLookAt(*v74.i64, v73.f32[0]);
  v79 = v34;
  v80 = v33;
  v77 = v36;
  v78 = v35;
  if (fabsf(var1) > 0.00001)
  {
    v37 = __sincosf_stret(var1 * 0.5);
    v38 = vmul_n_f32(*v75.f32, v37.__sinval);
    *v39.f32 = UMFloat4x4Make(v38.f32[0], v38.f32[1], vmuls_lane_f32(v37.__sinval, v75, 2), v37.__cosval);
    v85.columns[0] = v39;
    v85.columns[1] = v40;
    v85.columns[2] = v41;
    v85.columns[3] = v42;
    v81.columns[1] = v79;
    v81.columns[0] = v80;
    v81.columns[3] = v77;
    v81.columns[2] = v78;
    *v43.i64 = UMMul(v81, v85);
    v79 = v44;
    v80 = v43;
    v77 = v46;
    v78 = v45;
  }

  *v47.i64 = UMFloat4x4MakeTranslate();
  v86.columns[0] = v47;
  v86.columns[1] = v48;
  v86.columns[2] = v49;
  v86.columns[3] = v50;
  v82.columns[1] = v79;
  v82.columns[0] = v80;
  v82.columns[3] = v77;
  v82.columns[2] = v78;
  *v51.i64 = UMMul(v82, v86);
  v71 = v52;
  v72 = v51;
  v69 = v54;
  v70 = v53;
  v55.f32[0] = UMFloat4x4MakePerspective((v32 * 180.0) / 3.1416, width / height, 0.001, 5.0);
  v65 = v56;
  v66 = v55;
  v63 = v58;
  v64 = v57;
  *v83.columns[0].i64 = UMFloat4x4MakeTranslate();
  v87.columns[1] = v65;
  v87.columns[0] = v66;
  v87.columns[3] = v63;
  v87.columns[2] = v64;
  *v84.columns[0].i64 = UMMul(v83, v87);
  v88.columns[1] = v71;
  v88.columns[0] = v72;
  v88.columns[3] = v69;
  v88.columns[2] = v70;
  *&v59 = UMMul(v84, v88);
  self->_state.viewport.width = width;
  self->_state.viewport.height = height;
  self->_state.cameraRoll = var1;
  self->_state.aspect = v30;
  self->_state.fovY = v32;
  *self->_anon_304 = 0;
  *&self->_anon_304[4] = var4;
  *&self->_anon_304[12] = v76;
  *&self->_anon_304[28] = v67;
  *&self->_anon_304[44] = v73;
  *&self->_anon_304[60] = v74;
  *&self->_anon_304[76] = v75;
  *&self->_anon_304[92] = v80;
  *&self->_anon_304[108] = v79;
  *&self->_anon_304[124] = v78;
  *&self->_anon_304[140] = v77;
  *&self->_anon_304[156] = v72;
  *&self->_anon_304[172] = v71;
  *&self->_anon_304[188] = v70;
  *&self->_anon_304[204] = v69;
  *&self->_anon_304[220] = v59;
  *&self->_anon_304[236] = v60;
  *&self->_anon_304[252] = v61;
  *&self->_anon_304[268] = v62;
}

- (void)_updateTextureLODsForPatchSpheroid:(NUNICalliopeRenderer *)self uvRate:(SEL)rate drawableSize:(unint64_t)size
{
  v7 = vmul_f32(*v3, v4);
  v8 = fminf(v7.f32[0], v7.f32[1]);
  if (self->_isPhone)
  {
    v9 = &_NUNIAtlasSizes_iphone;
  }

  else
  {
    v9 = &_NUNIAtlasSizes_ipad;
  }

  v10 = &_NUNIAtlasMipCounts_ipad;
  v11 = 1.0 / v8;
  if (self->_isPhone)
  {
    v10 = &_NUNIAtlasMipCounts_iphone;
  }

  v5.i32[0] = v10[size];
  v12 = vmovl_u8(v5).u64[0];
  v29 = v12;
  v5.i32[0] = 1067030938;
  if (!self->_useLowerResolutionTextures)
  {
    *v5.i32 = -0.5;
  }

  v27 = vdupq_lane_s32(v5, 0);
  v28 = vmovl_u16(v12);
  v33 = vabsq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*&v9[8 * size])), v11));
  v30 = log2f(*&v33.i32[1]);
  v13.f32[0] = log2f(*v33.i32);
  v13.f32[1] = v30;
  v31 = v13;
  v14 = log2f(*&v33.i32[2]);
  v15 = v31;
  v15.f32[2] = v14;
  v32 = v15;
  v16 = log2f(*&v33.i32[3]);
  v17 = v32;
  v17.f32[3] = v16;
  v18 = vcvtq_s32_f32(vmaxnmq_f32(vaddq_f32(v27, v17), 0));
  v19.i64[0] = -1;
  v19.i64[1] = -1;
  v17.i64[0] = 0x400000004;
  v17.i64[1] = 0x400000004;
  v34 = vminq_s32(vbslq_s8(vcgtq_s32(v28, v18), v18, vaddw_u16(v19, v29)), v17);
  textureSuffix = [(NUNIRenderer *)self textureSuffix];
  for (i = 0; i != 24; ++i)
  {
    v22 = [(NUNICalliopeResourceManager *)self->_resourceManager patchTextureGroupForSpheroid:size index:i suffix:textureSuffix, *&v27, *&v28];
    atlas = [v22->var0 atlas];
    [atlas setMaxMipmapLevelsToDrop:v34.i32[0]];

    atlas2 = [v22->var1 atlas];
    [atlas2 setMaxMipmapLevelsToDrop:v34.i32[1]];

    atlas3 = [v22->var2 atlas];
    [atlas3 setMaxMipmapLevelsToDrop:v34.i32[2]];

    atlas4 = [v22->var3 atlas];
    [atlas4 setMaxMipmapLevelsToDrop:v34.i32[3]];
  }
}

- (void)_updateBaseUniformsForViewport:(NUNIViewport)viewport
{
  width = viewport.width;
  v42 = *MEMORY[0x277D85DE8];
  height = viewport.height;
  v6 = 0x27FA49000uLL;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * self->_frame, 2) <= 0x444444444444444uLL)
  {
    changeSequence = [(NUNIRendererOptions *)self->_rendererOptions changeSequence];
    if (changeSequence != self->_rendererOptionsChangeSequence)
    {
      v37 = width;
      v38 = height;
      v8 = 0;
      self->_rendererOptionsChangeSequence = changeSequence;
      selfCopy = self;
      do
      {
        v10 = _updateBaseUniformsForViewport__optionKeys[v8];
        v11 = [(NUNIRendererOptions *)self->_rendererOptions fractionValueForOption:v10];
        v12 = v11;
        if (v11)
        {
          [v11 doubleValue];
          __asm { FCVT            H0, D0 }

          v18 = *(v6 + 2348);
          if (*(&selfCopy->super.super.isa + v18) != *&_D0)
          {
            v19 = v6;
            v20 = NUNILoggingObjectForDomain(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543618;
              *&buf[4] = v10;
              *&buf[12] = 2114;
              *&buf[14] = v12;
              _os_log_debug_impl(&dword_25B6D4000, v20, OS_LOG_TYPE_DEBUG, "Overriding option %{public}@ with value %{public}@", buf, 0x16u);
            }

            [v12 doubleValue];
            __asm { FCVT            H0, D0 }

            *(&selfCopy->super.super.isa + v18) = _D0;
            v6 = v19;
          }
        }

        selfCopy = (selfCopy + 2);
        ++v8;
      }

      while (v8 != 35);
      resourceManager = self->_resourceManager;
      v23 = self + *(v6 + 2348);
      v24 = *(v23 + 3);
      v40 = *(v23 + 2);
      *v41 = v24;
      *&v41[14] = *(v23 + 62);
      v25 = *(v23 + 1);
      *buf = *v23;
      *&buf[16] = v25;
      [(NUNICalliopeResourceManager *)resourceManager setPipelineConstants:buf];
      width = v37;
      height = v38;
    }
  }

  v26 = *&self->_anon_304[4];
  v27 = width;
  __asm { FMOV            V4.2S, #1.0 }

  HIDWORD(v29) = HIDWORD(_D4);
  if (height > width)
  {
    *(&_D4 + 1) = height / width;
    v30 = _D4;
  }

  else
  {
    *&v29 = width / height;
    v30 = v29;
  }

  if (height <= width)
  {
    v27 = height;
  }

  v31 = self + *(v6 + 2348);
  _H4 = *(v31 + 5);
  __asm { FCVT            S4, H4 }

  v34 = (_S4 * 5.0) + 1.0;
  LOWORD(_S4) = *(v31 + 6);
  __asm { FCVT            S4, H4 }

  v36 = _S4 * -10.0;
  *&self->_baseUniforms.vsh.{?= = 0u;
  *&self->_anon_421[15] = 0u;
  *&self->_anon_421[31] = 0u;
  *&self->_anon_421[47] = v26;
  *&self->_anon_421[55] = v30;
  *&self->_anon_421[63] = 1.0 / v27;
  *&self->_anon_421[67] = 0u;
  *&self->_anon_421[83] = 0u;
  *&self->_anon_421[99] = 0u;
  *&self->_anon_421[115] = 0u;
  *&self->_anon_421[131] = 0u;
  *&self->_anon_421[147] = 0u;
  *&self->_anon_421[163] = 0x3D4CCCCD3E31D0D4;
  *&self->_anon_421[171] = 0;
  *&self->_anon_421[175] = v36;
  *&self->_anon_421[179] = ((-1.0 / v34) * v36) - v36;
  *&self->_anon_421[183] = v34;
  *&self->_anon_421[195] = 0;
  *&self->_anon_421[187] = 0;
  *&self->_anon_421[203] = 0;
}

- (id)getUniformsBufferForFrameBufferIndex:(unint64_t)index pContents:(NUNICalliopeRenderUniforms *)contents pOffset:(unint64_t *)offset
{
  v9 = &self->_renderUniformsBuffersCounts[index];
  capacity = v9->capacity;
  current = v9->current;
  v9->current = current + 1;
  if (current >= capacity)
  {
    if (capacity <= 10)
    {
      capacity = 10;
    }

    v13 = capacity + 2;
    v9->capacity = v13;
    v12 = [(MTLDevice *)self->_device newBufferWithLength:(v13 << 8) options:1];
    objc_storeStrong(&self->_renderUniformsBuffers[index], v12);
  }

  else
  {
    v12 = self->_renderUniformsBuffers[index];
  }

  contents = [(MTLBuffer *)v12 contents];
  if (contents)
  {
    *contents = (contents + (current << 8));
    *offset = current << 8;
    v15 = v12;
  }

  else
  {
    v16 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NUNICalliopeRenderer getUniformsBufferForFrameBufferIndex:v16 pContents:? pOffset:?];
    }

    v15 = 0;
    v9->capacity = 0;
    *contents = &self->_dummyUniforms;
    *offset = 0;
  }

  return v15;
}

- (void)_renderOffscreenBackgroundWithRenderEncoder:(id)encoder frameBufferIndex:(unint64_t)index
{
  v31 = 0;
  v32 = 0;
  encoderCopy = encoder;
  v7 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:index pContents:&v32 pOffset:&v31];
  v8 = v32;
  *v32 = *&self->_baseUniforms.vsh.{?=;
  v9 = *&self->_anon_421[63];
  v11 = *&self->_anon_421[15];
  v10 = *&self->_anon_421[31];
  v8[3] = *&self->_anon_421[47];
  v8[4] = v9;
  v8[1] = v11;
  v8[2] = v10;
  v12 = *&self->_anon_421[127];
  v14 = *&self->_anon_421[79];
  v13 = *&self->_anon_421[95];
  v8[7] = *&self->_anon_421[111];
  v8[8] = v12;
  v8[5] = v14;
  v8[6] = v13;
  v15 = *&self->_anon_421[191];
  v17 = *&self->_anon_421[143];
  v16 = *&self->_anon_421[159];
  v8[11] = *&self->_anon_421[175];
  v8[12] = v15;
  v8[9] = v17;
  v8[10] = v16;
  *v18.i64 = UMFloat4x4MakeTranslate();
  v33.columns[0] = v18;
  v33.columns[1] = v19;
  v33.columns[2] = v20;
  v33.columns[3] = v21;
  *&v22 = UMMul(*&self->_anon_304[220], v33);
  v8[6] = v22;
  v8[7] = v23;
  v8[8] = v24;
  v8[9] = v25;
  [encoderCopy setVertexBuffer:v7 offset:v31 atIndex:1];
  renderOffscreenPipelineForStarfield = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForStarfield];
  [encoderCopy setLabel:@"Καλλιόπη Starfield"];
  [encoderCopy setRenderPipelineState:renderOffscreenPipelineForStarfield];
  starfieldVerticesBuffer = [(NUNICalliopeResourceManager *)self->_resourceManager starfieldVerticesBuffer];
  [encoderCopy setVertexBuffer:starfieldVerticesBuffer offset:0 atIndex:0];

  starfieldIndicesBuffer = [(NUNICalliopeResourceManager *)self->_resourceManager starfieldIndicesBuffer];
  [encoderCopy drawIndexedPrimitives:3 indexCount:384150 indexType:0 indexBuffer:starfieldIndicesBuffer indexBufferOffset:0 instanceCount:1 baseVertex:0 baseInstance:0];

  renderOffscreenPipelineForStar = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForStar];
  [encoderCopy setLabel:@"Καλλιόπη Star"];
  [encoderCopy setRenderPipelineState:renderOffscreenPipelineForStar];
  starVerticesBuffer = [(NUNICalliopeResourceManager *)self->_resourceManager starVerticesBuffer];
  [encoderCopy setVertexBuffer:starVerticesBuffer offset:0 atIndex:0];

  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4 instanceCount:702 baseInstance:0];
}

- (void)_renderSunSprite:(NUNICalliopeRenderUniforms *)sprite frameBufferIndex:(unint64_t)index renderEncoder:(id)encoder position:(float)position scale:(float)scale opacity:
{
  v8 = v7;
  v67 = *&position;
  encoderCopy = encoder;
  v69 = 0;
  v70 = 0;
  v13 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:index pContents:&v70 pOffset:&v69];
  [encoderCopy setVertexBuffer:v13 offset:v69 atIndex:1];
  [encoderCopy setFragmentBuffer:v13 offset:v69 atIndex:0];
  v14 = v70;
  *v70 = *&self->_baseUniforms.vsh.{?=;
  v15 = *&self->_anon_421[63];
  v17 = *&self->_anon_421[15];
  v16 = *&self->_anon_421[31];
  v14[3] = *&self->_anon_421[47];
  v14[4] = v15;
  v14[1] = v17;
  v14[2] = v16;
  v18 = *&self->_anon_421[127];
  v20 = *&self->_anon_421[79];
  v19 = *&self->_anon_421[95];
  v14[7] = *&self->_anon_421[111];
  v14[8] = v18;
  v14[5] = v20;
  v14[6] = v19;
  v21 = *&self->_anon_421[191];
  v23 = *&self->_anon_421[143];
  v22 = *&self->_anon_421[159];
  v14[11] = *&self->_anon_421[175];
  v14[12] = v21;
  v14[9] = v23;
  v14[10] = v22;
  v24 = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForSpheroid:14 layer:0 config:0];
  if (v24)
  {
    p_state = &self->_state;
    [encoderCopy setLabel:@"Καλλιόπη Sun Sprite"];
    [encoderCopy setRenderPipelineState:v24];
    discVerticesBuffer = [(NUNICalliopeResourceManager *)self->_resourceManager discVerticesBuffer];
    [encoderCopy setVertexBuffer:discVerticesBuffer offset:0 atIndex:0];

    *v70 = xmmword_25B71A3E0;
    _Q0 = vsubq_f32(*&self->_anon_304[12], v67);
    v28 = v67;
    _Q1 = vmulq_f32(_Q0, _Q0);
    _S2 = _Q0.i32[2];
    __asm { FMLA            S1, S2, V0.S[2] }

    _Q1.f32[0] = sqrtf(_Q1.f32[0]);
    v35 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
    v36 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
    v37 = vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL);
    v38 = vmlaq_f32(vmulq_f32(v37, vnegq_f32(vextq_s8(vuzp1q_s32(*&p_state[3].viewport.height, *&p_state[3].viewport.height), *&p_state[3].viewport.height, 0xCuLL))), v36, vextq_s8(vextq_s8(*&p_state[3].viewport.height, *&p_state[3].viewport.height, 0xCuLL), *&p_state[3].viewport.height, 8uLL));
    v39 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v38, v38, 0xCuLL), v38, 8uLL), vnegq_f32(v36)), vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), v37);
    v38.i32[3] = 0;
    v39.i32[3] = 0;
    v65 = v39;
    v66 = v38;
    v35.i32[3] = 0;
    v64 = v35;
    v28.i32[3] = 1.0;
    v68 = v28;
    UMFloat4x4MakeScale(scale + scale);
    v72.columns[0] = v40;
    v72.columns[1] = v41;
    v72.columns[2] = v42;
    v72.columns[3] = v43;
    v71.columns[1] = v65;
    v71.columns[0] = v66;
    v71.columns[2] = v64;
    v71.columns[3] = v68;
    *v44.i64 = UMMul(v71, v72);
    v73.columns[0] = v44;
    v73.columns[1] = v45;
    v73.columns[2] = v46;
    v73.columns[3] = v47;
    *&v48 = UMMul(*&self->_anon_304[220], v73);
    v49 = v70;
    *(v70 + 96) = v48;
    v49[7] = v50;
    v49[8] = v51;
    v49[9] = v52;
    v53 = UMMul(*&self->_anon_304[220], *&self->_anon_304[236], *&self->_anon_304[252], *&self->_anon_304[268], v68);
    v55 = *&v53 / v54;
    v56 = *(&v53 + 1) / v54;
    v57 = __sincosf_stret(self->_state.cameraRoll);
    v58 = (v56 * v57.__cosval) - (v57.__sinval * v55);
    v59 = fminf(fmaxf((v58 + -0.8) * 10.0, 0.0), 1.0);
    v60 = (1.0 - fabsf((v55 * v57.__cosval) - (v57.__sinval * v56))) * fminf(fmaxf((v58 + -0.3) * 5.0, 0.0), 1.0);
    if (v59 > v60)
    {
      v60 = v59;
    }

    *(v70 + 160) = ((v60 * -0.8) + 1.0) * v8;
    v61 = [(NUNICalliopeTextureGroup *)self->_textureGroup gradients:*&v64];
    v62 = [v61 objectAtIndexedSubscript:14];

    atlas = [v62 atlas];
    [atlas bind:encoderCopy slot:5];

    [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:16];
  }
}

- (void)_renderSaturnRings:(__n128)rings frameBufferIndex:(__n128)index renderEncoder:(__n128)encoder forwardAngle:(__n128)angle position:(__n128)position isRotated:(float)rotated rotationMatrix:(float)matrix scale:(uint64_t)self0 equatorRotation:(_OWORD *)self1
{
  *&v62[32] = angle;
  *&v62[48] = position;
  *v62 = index;
  *&v62[16] = encoder;
  v21 = a13;
  v71 = 0;
  v72 = 0;
  v22 = [self getUniformsBufferForFrameBufferIndex:a12 pContents:&v72 pOffset:&v71];
  [v21 setVertexBuffer:v22 offset:v71 atIndex:1];
  [v21 setFragmentBuffer:v22 offset:v71 atIndex:0];
  v23 = v72;
  *v72 = *rotation;
  v24 = rotation[4];
  v26 = rotation[1];
  v25 = rotation[2];
  v23[3] = rotation[3];
  v23[4] = v24;
  v23[1] = v26;
  v23[2] = v25;
  v27 = rotation[8];
  v29 = rotation[5];
  v28 = rotation[6];
  v23[7] = rotation[7];
  v23[8] = v27;
  v23[5] = v29;
  v23[6] = v28;
  v30 = rotation[12];
  v32 = rotation[9];
  v31 = rotation[10];
  v23[11] = rotation[11];
  v23[12] = v30;
  v23[9] = v32;
  v23[10] = v31;
  renderOffscreenPipelineForSaturnRing = [*(self + 48) renderOffscreenPipelineForSaturnRing];
  if (renderOffscreenPipelineForSaturnRing)
  {
    [v21 setRenderPipelineState:renderOffscreenPipelineForSaturnRing];
    UMFloat4x4MakeScale(rotated * 1.2275);
    if (a14)
    {
      *v35.i64 = UMMul(v34, *v62);
      v67 = v36;
      v69 = v35;
      v63 = v38;
      v65 = v37;
      a2 = a2 - matrix;
    }

    else
    {
      v67 = v34.columns[1];
      v69 = v34.columns[0];
      v63 = v34.columns[3];
      v65 = v34.columns[2];
    }

    *v39.i64 = UMFloat4x4MakeRotateZ(a2);
    v75.columns[0] = v39;
    v75.columns[1] = v40;
    v75.columns[2] = v41;
    v75.columns[3] = v42;
    v73.columns[1] = v67;
    v73.columns[0] = v69;
    v73.columns[3] = v63;
    v73.columns[2] = v65;
    *v43.i64 = UMMul(v73, v75);
    v68 = v44;
    v70 = v43;
    v64 = v46;
    v66 = v45;
    *v74.columns[0].i64 = UMFloat4x4MakeTranslate();
    v76.columns[1] = v68;
    v76.columns[0] = v70;
    v76.columns[3] = v64;
    v76.columns[2] = v66;
    *v47.i64 = UMMul(v74, v76);
    v77.columns[0] = v47;
    v77.columns[1] = v48;
    v77.columns[2] = v49;
    v77.columns[3] = v50;
    v51 = v72;
    *&v52 = UMMul(*(self + 992), v77);
    v51[6] = v52;
    v51[7] = v53;
    v51[8] = v54;
    v51[9] = v55;
    *v56.i64 = UMFloat4x4MakeRotateZ(a2);
    *(v72 + 32) = vzip1q_s64(v56, v57);
    [v21 setCullMode:0];
    saturnRingVerticesBuffer = [*(self + 48) saturnRingVerticesBuffer];
    [v21 setVertexBuffer:saturnRingVerticesBuffer offset:0 atIndex:0];

    gradients = [*(self + 56) gradients];
    v60 = [gradients objectAtIndexedSubscript:7];

    atlas = [v60 atlas];
    [atlas bind:v21 slot:1];

    [v21 drawPrimitives:4 vertexStart:0 vertexCount:26];
  }
}

- (void)_renderPatchSpheroid:(const NUNISpheroidStructure *)spheroid frustumCullingState:(id *)state drawableSize:frameBufferIndex:renderEncoder:
{
  v7 = v4;
  *&v246 = v6;
  v243.i64[0] = state;
  v254[3] = *MEMORY[0x277D85DE8];
  v10 = v5;
  v251 = 0;
  v252 = 0;
  v11 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:v7 pContents:&v252 pOffset:&v251];
  v12 = v252;
  *v252 = *&self->_baseUniforms.vsh.{?=;
  v13 = *&self->_anon_421[63];
  v15 = *&self->_anon_421[15];
  v14 = *&self->_anon_421[31];
  *(v12 + 48) = *&self->_anon_421[47];
  *(v12 + 64) = v13;
  *(v12 + 16) = v15;
  *(v12 + 32) = v14;
  v16 = *&self->_anon_421[127];
  v18 = *&self->_anon_421[79];
  v17 = *&self->_anon_421[95];
  *(v12 + 112) = *&self->_anon_421[111];
  *(v12 + 128) = v16;
  *(v12 + 80) = v18;
  *(v12 + 96) = v17;
  v19 = *&self->_anon_421[191];
  v21 = *&self->_anon_421[143];
  v20 = *&self->_anon_421[159];
  *(v12 + 176) = *&self->_anon_421[175];
  *(v12 + 192) = v19;
  *(v12 + 144) = v21;
  *(v12 + 160) = v20;
  type = spheroid->type;
  if (spheroid->type == 3)
  {
    _H0 = *&self->_anon_5c6[47];
    __asm { FCVT            S0, H0 }

    v29 = spheroid[1].equatorRotation * _S0;
    *(v12 + 188) = v29;
    v30 = v29 > 0.00001;
    v244.i32[0] = v29 > 0.00001;
  }

  else
  {
    v30 = 0;
    v244.i32[0] = 0;
  }

  v31 = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForSpheroid:type layer:0 config:v30];
  if (v31)
  {
    [v10 pushDebugGroup:@"Spheroid"];
    *(v252 + 160) = spheroid[1].angle;
    equatorRotation = spheroid->equatorRotation;
    v33 = spheroid[2].equatorRotation * spheroid[2].opacity;
    v34 = v33 * 0.98;
    UMFloat4x4MakeScale(v34);
    v250.columns[0] = v35;
    v250.columns[1] = v36;
    v250.columns[2] = v37;
    v250.columns[3] = v38;
    v242 = *&spheroid[3].type;
    v239 = *&self->_anon_304[12];
    v241.columns[2].i32[0] = *&spheroid[3].angle;
    v39 = __sincosf_stret(COERCE_FLOAT(HIDWORD(*&spheroid[3].angle)));
    v245.i32[0] = LODWORD(v39.__cosval);
    v241.columns[3].i32[0] = *&v39;
    v40 = __sincosf_stret(v241.columns[2].f32[0]);
    *v41.f32 = vmul_n_f32(__PAIR64__(LODWORD(v40.__sinval), LODWORD(v40.__cosval)), v241.columns[3].f32[0]);
    v41.i32[2] = v245.i32[0];
    v42 = *&spheroid[1].type;
    v43 = vmulq_f32(v42, v42);
    v44 = v43.f32[2] + vaddv_f32(*v43.f32);
    v238 = v41;
    if (v44 <= 0.00001)
    {
      v241.columns[3] = 0u;
      if (equatorRotation == 0.0)
      {
        v234 = 0;
        memset(&v241, 0, 48);
        v245 = v41;
LABEL_18:
        v231 = *v242.i64;
        *v255.columns[0].i64 = UMFloat4x4MakeTranslate();
        v228 = v255.columns[1];
        v229 = v255.columns[0];
        v226 = v255.columns[3];
        v227 = v255.columns[2];
        *v78.i64 = UMMul(v255, v250);
        v259.columns[0] = v78;
        v259.columns[1] = v79;
        v259.columns[2] = v80;
        v259.columns[3] = v81;
        v250.columns[0] = v78;
        v250.columns[1] = v79;
        v250.columns[2] = v80;
        v250.columns[3] = v81;
        v82 = v252;
        *&v83 = UMMul(*&self->_anon_304[220], v259);
        v82[6] = v83;
        v82[7] = v84;
        v82[8] = v85;
        v82[9] = v86;
        v256 = __invert_f4(v250);
        v87 = v239;
        v87.i32[3] = 1.0;
        v232 = v256;
        v240 = v87;
        *v88.i64 = UMMul(v256.columns[0], v256.columns[1], v256.columns[2], v256.columns[3], v87);
        v89 = v252;
        *v252 = v245;
        v89[1] = v88;
        v235 = v7;
        v233 = v88;
        if (type == 3)
        {
          v88 = vmulq_f32(v238, *&self->_anon_304[76]);
          v88.f32[0] = v88.f32[2] + vaddv_f32(*v88.f32);
          v90 = 3.1416;
          if (v88.f32[0] > 0.0)
          {
            v91.i64[0] = 0x4000000040000000;
            v91.i64[1] = 0x4000000040000000;
            v245.i64[0] = vmlaq_f32(*&spheroid[3].type, v91, v238).u64[0];
            [v10 setLabel:@"Καλλιόπη Cinematic Sun"];
            *&v92 = spheroid[1].angle;
            LODWORD(v93) = 1033476506;
            [(NUNICalliopeRenderer *)self _renderSunSprite:v252 frameBufferIndex:v7 renderEncoder:v10 position:*v245.i64 scale:v93 opacity:v92];
          }

          v94 = 0;
        }

        else if (type == 7)
        {
          if (fabsf(v245.f32[2]) < 0.05)
          {
            v95 = v245;
            v95.i32[2] = 1028443341;
            v96 = vmulq_f32(v245, v245);
            v96.f32[0] = sqrtf((v96.f32[1] + (v245.f32[0] * v245.f32[0])) + 0.0025);
            *v89 = vdivq_f32(v95, vdupq_lane_s32(*v96.f32, 0));
          }

          v97 = *&self->_anon_304[76];
          v98 = 3.1416;
          if (vaddv_f32(*&vmulq_f32(v97, v97)) > 0.1)
          {
            v98 = atan2f(v97.f32[0], v97.f32[1]);
          }

          [v10 setLabel:@"Καλλιόπη Saturn Ring Back"];
          *&v99 = v98;
          *&v100 = v33 * 0.98;
          *&v101 = equatorRotation;
          [(NUNICalliopeRenderer *)self _renderSaturnRings:v252 frameBufferIndex:v7 renderEncoder:v10 forwardAngle:v234 position:v99 isRotated:*v242.i64 rotationMatrix:*v241.columns[0].i64 scale:*v241.columns[1].i64 equatorRotation:*v241.columns[2].i64, *v241.columns[3].i64, v100, v101];
          v90 = v98 + 3.1416;
          v94 = 1;
        }

        else
        {
          v94 = 0;
          v90 = 3.1416;
        }

        [v10 setLabel:{@"Καλλιόπη Patch Surface", *v88.i64}];
        [v10 setRenderPipelineState:v31];
        [v10 setCullMode:2];
        patchVerticesBuffer = [(NUNICalliopeResourceManager *)self->_resourceManager patchVerticesBuffer];
        [v10 setVertexBuffer:patchVerticesBuffer offset:0 atIndex:0];

        [v10 setVertexBuffer:v11 offset:v251 atIndex:1];
        [v10 setFragmentBuffer:v11 offset:v251 atIndex:0];
        DWORD2(v249) = 0;
        *&v249 = 0;
        v103 = v242;
        v103.i32[3] = 1.0;
        v242 = v103;
        *&v104 = UMMul(*&self->_anon_304[156], *&self->_anon_304[172], *&self->_anon_304[188], *&self->_anon_304[204], v103);
        v249 = v104;
        _NUNICalliopeRenderer_ComputeProjectedSpheroid(self->_state.fovY);
        v248 = vmul_f32(vsqrt_f32(vmla_f32(vmul_f32(v105, v105), v106, v106)), vdup_n_s32(0x3E4CCCCDu));
        [(NUNICalliopeRenderer *)self _updateTextureLODsForPatchSpheroid:type uvRate:&v248 drawableSize:*&v246];
        *&v107 = v33 * 0.98;
        v108 = [(NUNICalliopeRenderer *)self _computePatchSpheroidLodWithPositionInViewSpace:&v249 radius:v107 drawableSize:*&v246];
        spheroidCopy = spheroid;
        if (type == 3)
        {
          v110 = 0x3D4CCCCD3E31D0D4;
        }

        else
        {
          *v109.i32 = 2.0 / ((fminf(*&v246, *(&v246 + 1)) * v34) / fabsf(*(&v249 + 2)));
          v110 = vadd_f32(vminnm_f32(vdup_lane_s32(v109, 0), 0x3E051EB83DCCCCCDLL), 0x3CA3D70A3E31D0D4);
        }

        *(v252 + 164) = v110;
        *&v246 = [(NUNICalliopeResourceManager *)self->_resourceManager patchIndicesBufferForLod:v108];
        v245.i64[0] = [(NUNICalliopeResourceManager *)self->_resourceManager patchIndexCountForLod:v108];
        [(NUNICalliopeRenderer *)self prepareObjectSpaceFrustumWithTransform:&v250 withState:v243.i64[0]];
        patchBoundingBoxForSpheroid = [(NUNICalliopeResourceManager *)self->_resourceManager patchBoundingBoxForSpheroid];
        v112 = [(NUNICalliopeRenderer *)self classifyObjectBoundingBoxVersusFrustum:patchBoundingBoxForSpheroid max:patchBoundingBoxForSpheroid + 16 withState:v243.i64[0]];
        v236 = v31;
        v237 = v11;
        if (v112)
        {
          v113 = v112;
          v114 = 0;
          v115 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v232.columns[0], COERCE_FLOAT(*&self->_anon_304[76])), v232.columns[1], *&self->_anon_304[76], 1), v232.columns[2], *&self->_anon_304[76], 2), 0, v232.columns[3]);
          do
          {
            v116 = vmulq_f32(v115, _renderPatchSpheroid_frustumCullingState_drawableSize_frameBufferIndex_renderEncoder__basisVectors[v114]);
            *(v253 + v114++) = (v116.f32[2] + vaddv_f32(*v116.f32)) < 0.0;
          }

          while (v114 != 26);
          v117 = type;
          v118 = 0;
          v115.i32[0] = 1.0;
          do
          {
            v119 = vmulq_f32(v233, _renderPatchSpheroid_frustumCullingState_drawableSize_frameBufferIndex_renderEncoder__basisVectors[v118]);
            v119.f32[0] = v119.f32[2] + vaddv_f32(*v119.f32);
            v120 = *(v253 + v118);
            if (v119.f32[0] <= 1.0)
            {
              v120 = 0;
            }

            *(v253 + v118++) = v120;
          }

          while (v118 != 26);
          v121 = [(NUNICalliopeResourceManager *)self->_resourceManager patchBoundingBoxes:*v115.i64];
          v122 = 0;
          v123 = &byte_25B71A6F3;
          do
          {
            v124 = *(v253 + *(v123 - 2)) | *(v253 + *(v123 - 3)) | *(v253 + *(v123 - 1)) | *(v253 + *v123);
            if (v113 == 2 && (*(v253 + *(v123 - 2)) | *(v253 + *(v123 - 3))) | (*(v253 + *(v123 - 1)) | *(v253 + *v123)))
            {
              v124 = [(NUNICalliopeRenderer *)self isObjectBoundingBoxInsideOrIntersectingFrustum:v121 max:v121 + 16 withState:v243.i64[0]];
            }

            v123 += 4;
            *(v254 + v122++) = v124 & 1;
            v121 = (v121 + 32);
          }

          while (v122 != 24);
        }

        else
        {
          v117 = type;
          memset(v254, 0, 24);
        }

        v125 = 0;
        for (i = 0; i != 24; ++i)
        {
          if (*(v254 + i) == 1)
          {
            resourceManager = self->_resourceManager;
            textureSuffix = [(NUNIRenderer *)self textureSuffix];
            v129 = [(NUNICalliopeResourceManager *)resourceManager patchTextureGroupForSpheroid:v117 index:i suffix:textureSuffix];

            atlas = [*v129 atlas];
            [atlas bind:v10 slot:1];

            atlas2 = [v129[1] atlas];
            [atlas2 bind:v10 slot:2];

            atlas3 = [v129[2] atlas];
            [atlas3 bind:v10 slot:3];

            if (v244.i32[0])
            {
              atlas4 = [v129[3] atlas];
              [atlas4 bind:v10 slot:4];
            }

            if (v94)
            {
              gradients = [(NUNICalliopeTextureGroup *)self->_textureGroup gradients];
              v135 = [gradients objectAtIndexedSubscript:7];

              atlas5 = [v135 atlas];
              [atlas5 bind:v10 slot:5];
            }

            [v10 drawIndexedPrimitives:3 indexCount:v245.i64[0] indexType:0 indexBuffer:v246 indexBufferOffset:0 instanceCount:1 baseVertex:v125 baseInstance:0];
          }

          v125 += 289;
        }

        if (v117 == 3)
        {
          if (v244.i32[0])
          {
            v253[0] = 0;
            v247 = 0;
            v137 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:v235 pContents:v253 pOffset:&v247];
            [v10 setVertexBuffer:v137 offset:v247 atIndex:1];
            [v10 setFragmentBuffer:v137 offset:v247 atIndex:0];
            v139 = v252;
            v138 = v253[0];
            *v253[0] = *v252;
            v140 = v139[4];
            v142 = v139[1];
            v141 = v139[2];
            v138[3] = v139[3];
            v138[4] = v140;
            v138[1] = v142;
            v138[2] = v141;
            v143 = v139[8];
            v145 = v139[5];
            v144 = v139[6];
            v138[7] = v139[7];
            v138[8] = v143;
            v138[5] = v145;
            v138[6] = v144;
            v146 = v139[12];
            v148 = v139[9];
            v147 = v139[10];
            v138[11] = v139[11];
            v138[12] = v146;
            v138[9] = v148;
            v138[10] = v147;
            v149 = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForSpheroid:3 layer:1 config:v30];
            if (!v149)
            {

              v11 = v237;
              goto LABEL_74;
            }

            v150 = v149;
            [v10 setLabel:@"Καλλιόπη Patch Homosphere"];
            [v10 setRenderPipelineState:v150];
            UMFloat4x4MakeScale(v33);
            v152 = v151;
            v250 = v151;
            if (v234)
            {
              *v153.i64 = UMMul(v151, v241);
              v152.columns[0] = v153;
              v152.columns[1] = v154;
              v152.columns[2] = v155;
              v152.columns[3] = v156;
              v250.columns[0] = v153;
              v250.columns[1] = v154;
              v250.columns[2] = v155;
              v250.columns[3] = v156;
            }

            v257.columns[1] = v228;
            v257.columns[0] = v229;
            v257.columns[3] = v226;
            v257.columns[2] = v227;
            *v157.i64 = UMMul(v257, v152);
            v260.columns[0] = v157;
            v260.columns[1] = v158;
            v260.columns[2] = v159;
            v260.columns[3] = v160;
            v250.columns[0] = v157;
            v250.columns[1] = v158;
            v250.columns[2] = v159;
            v250.columns[3] = v160;
            v161 = v253[0];
            *&v162 = UMMul(*&self->_anon_304[220], v260);
            v161[6] = v162;
            v161[7] = v163;
            v161[8] = v164;
            v161[9] = v165;
            v258 = __invert_f4(v250);
            *&v166 = UMMul(v258.columns[0], v258.columns[1], v258.columns[2], v258.columns[3], v240);
            v167 = 0;
            v168 = 0;
            v169 = v253[0];
            *(v253[0] + 16) = v166;
            *(v169 + 164) = 1046807559;
            do
            {
              if (*(v254 + v168) == 1)
              {
                v170 = self->_resourceManager;
                textureSuffix2 = [(NUNIRenderer *)self textureSuffix];
                v172 = [(NUNICalliopeResourceManager *)v170 patchTextureGroupForSpheroid:3 index:v168 suffix:textureSuffix2];

                atlas6 = [*(v172 + 24) atlas];
                [atlas6 bind:v10 slot:4];

                [v10 drawIndexedPrimitives:3 indexCount:v245.i64[0] indexType:0 indexBuffer:v246 indexBufferOffset:0 instanceCount:1 baseVertex:v167 baseInstance:0];
              }

              ++v168;
              v167 += 289;
            }

            while (v168 != 24);
          }

          v253[0] = 0;
          v247 = 0;
          v174 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:v235 pContents:v253 pOffset:&v247];
          [v10 setVertexBuffer:v174 offset:v247 atIndex:1];
          [v10 setFragmentBuffer:v174 offset:v247 atIndex:0];
          v176 = v252;
          v175 = v253[0];
          *v253[0] = *v252;
          v177 = v176[4];
          v179 = v176[1];
          v178 = v176[2];
          v175[3] = v176[3];
          v175[4] = v177;
          v175[1] = v179;
          v175[2] = v178;
          v180 = v176[8];
          v182 = v176[5];
          v181 = v176[6];
          v175[7] = v176[7];
          v175[8] = v180;
          v175[5] = v182;
          v175[6] = v181;
          v183 = v176[12];
          v185 = v176[9];
          v184 = v176[10];
          v175[11] = v176[11];
          v175[12] = v183;
          v175[9] = v185;
          v175[10] = v184;
          renderOffscreenPipelineForAtmosphere = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForAtmosphere];
          v31 = v236;
          v11 = v237;
          if (!renderOffscreenPipelineForAtmosphere)
          {

LABEL_74:
            goto LABEL_75;
          }

          v187 = renderOffscreenPipelineForAtmosphere;
          [v10 setLabel:@"Καλλιόπη Atmosphere"];
          [v10 setRenderPipelineState:v187];
          UMMul(*&self->_anon_304[156], *&self->_anon_304[172], *&self->_anon_304[188], *&self->_anon_304[204], v242);
          _NUNICalliopeRenderer_ComputeProjectedSpheroid(self->_state.fovY);
          __asm { FMOV            V5.2S, #1.0 }

          v189 = vdiv_f32(_D5, *(v253[0] + 56));
          *v253[0] = vmul_f32(vsub_f32(v190, *(v253[0] + 48)), v189);
          v192 = v253[0];
          *(v253[0] + 8) = vmul_f32(v191, v189);
          *(v192 + 16) = vmul_f32(v193, v189);
          v194 = vmul_f32(v191, v191);
          v194.i32[0] = vadd_f32(v194, vdup_lane_s32(v194, 1)).u32[0];
          v195 = vrsqrte_f32(v194.u32[0]);
          v196 = vmul_f32(v195, vrsqrts_f32(v194.u32[0], vmul_f32(v195, v195)));
          v194.i32[0] = vmul_f32(v196, vrsqrts_f32(v194.u32[0], vmul_f32(v196, v196))).u32[0];
          v197 = vmul_f32(v193, v193);
          v197.i32[0] = vadd_f32(v197, vdup_lane_s32(v197, 1)).u32[0];
          v198 = vmul_n_f32(v191, v194.f32[0]);
          v199 = vrsqrte_f32(v197.u32[0]);
          v200 = vmul_f32(v199, vrsqrts_f32(v197.u32[0], vmul_f32(v199, v199)));
          v201 = vmul_n_f32(v193, vmul_f32(v200, vrsqrts_f32(v197.u32[0], vmul_f32(v200, v200))).f32[0]);
          v203 = *&self->_anon_304[44];
          v202 = *&self->_anon_304[60];
          v204 = vmlaq_n_f32(vmulq_lane_f32(v203, v201, 1), v202, v201.f32[0]);
          v205 = vmlaq_n_f32(vmulq_lane_f32(v203, v198, 1), v202, v198.f32[0]);
          cameraRoll = self->_state.cameraRoll;
          if (fabsf(cameraRoll) <= 0.00001)
          {
            v204.i32[3] = 1.0;
            v205.i32[3] = 1.0;
          }

          else
          {
            v243 = *&self->_anon_304[76];
            v244 = v204;
            v245 = v205;
            v207 = __sincosf_stret(cameraRoll * 0.5);
            v208 = vmul_n_f32(*v243.f32, v207.__sinval);
            *v209.i8 = UMFloat4x4Make(v208.f32[0], v208.f32[1], vmuls_lane_f32(v207.__sinval, v243, 2), v207.__cosval);
            v211 = vzip1q_s32(v209, v210);
            v212 = vzip2q_s32(v209, v210);
            v215 = vzip1q_s32(v213, v214);
            v216 = vzip2q_s32(v213, v214);
            v217 = vzip1q_s32(v211, v215);
            v218 = vzip2q_s32(v211, v215);
            v219 = vzip1q_s32(v212, v216);
            v220 = vzip2q_s32(v212, v216);
            v204 = vaddq_f32(v220, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, v244.f32[0]), v218, *v244.f32, 1), v219, v244, 2));
            v205 = vaddq_f32(v220, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, v245.f32[0]), v218, *v245.f32, 1), v219, v245, 2));
            v192 = v253[0];
          }

          *(v192 + 32) = v205;
          *(v192 + 48) = v204;
          *(v192 + 64) = v238;
          v224 = vmulq_f32(v238, *&self->_anon_304[76]);
          *(v192 + 80) = v224.f32[2] + vaddv_f32(*v224.f32);
          *(v192 + 160) = spheroidCopy[1].angle;
          [v10 setCullMode:0];
          atmosphereRingVerticesBuffer = [(NUNICalliopeResourceManager *)self->_resourceManager atmosphereRingVerticesBuffer];
          [v10 setVertexBuffer:atmosphereRingVerticesBuffer offset:0 atIndex:0];

          [v10 drawPrimitives:4 vertexStart:0 vertexCount:50];
        }

        else
        {
          v11 = v237;
          if (v94)
          {
            [v10 setLabel:@"Καλλιόπη Saturn Ring Front"];
            *&v221 = v90;
            *&v222 = v33 * 0.98;
            *&v223 = equatorRotation;
            [(NUNICalliopeRenderer *)self _renderSaturnRings:v252 frameBufferIndex:v235 renderEncoder:v10 forwardAngle:v234 position:v221 isRotated:v231 rotationMatrix:*v241.columns[0].i64 scale:*v241.columns[1].i64 equatorRotation:*v241.columns[2].i64, *v241.columns[3].i64, v222, v223];
          }
        }

        [v10 setCullMode:0];
        [v10 popDebugGroup];
        goto LABEL_74;
      }

      memset(&v241, 0, 48);
    }

    else
    {
      *v45.f32 = UMFloat4x4Make(v42);
      v241.columns[0] = v45;
      v241.columns[1] = v46;
      v241.columns[2] = v47;
      v241.columns[3] = v48;
      if (type != 4)
      {
        _Q0 = vaddq_f32(v242, xmmword_25B71A3F0);
        _Q1 = vmulq_f32(_Q0, _Q0);
        _S2 = _Q0.i32[2];
        __asm { FMLA            S1, S2, V0.S[2] }

        _Q1.f32[0] = sqrtf(_Q1.f32[0]);
        _Q3 = vmlaq_n_f32(v238, vsubq_f32(vdivq_f32(vnegq_f32(_Q0), vdupq_lane_s32(*_Q1.f32, 0)), v238), fminf(v44, 0.2) / 0.2);
        _Q0 = vmulq_f32(_Q3, _Q3);
        _Q1.i32[0] = _Q3.i32[2];
        __asm { FMLA            S0, S1, V3.S[2] }

        _Q0.f32[0] = sqrtf(_Q0.f32[0]);
        v238 = vdivq_f32(_Q3, vdupq_lane_s32(*_Q0.f32, 0));
      }

      if (equatorRotation == 0.0)
      {
        goto LABEL_17;
      }
    }

    v54 = 1.5708;
    if (type != 4)
    {
      v54 = 0.0;
    }

    *v55.i64 = UMFloat4x4MakeRotateZ(v54 + equatorRotation);
    v59.columns[0] = v55;
    v59.columns[1] = v56;
    v59.columns[2] = v57;
    v59.columns[3] = v58;
    if (v44 > 0.00001)
    {
      *v60.i64 = UMMul(v241, v59);
      v59.columns[0] = v60;
      v59.columns[1] = v61;
      v59.columns[2] = v62;
      v59.columns[3] = v63;
    }

    v241 = v59;
LABEL_17:
    *v64.i64 = UMMul(v250, v241);
    v250.columns[0] = v64;
    v250.columns[1] = v65;
    v250.columns[2] = v66;
    v250.columns[3] = v67;
    v68 = vzip1q_s32(v241.columns[0], v241.columns[2]);
    v69 = vzip2q_s32(v241.columns[0], v241.columns[2]);
    v70 = vzip1q_s32(v241.columns[1], v241.columns[3]);
    v71 = vzip2q_s32(v241.columns[1], v241.columns[3]);
    v72 = vzip1q_s32(v68, v70);
    v73 = vzip2q_s32(v68, v70);
    v74 = vzip1q_s32(v69, v71);
    v75 = vzip2q_s32(v69, v71);
    v76 = v238;
    v76.i32[3] = 0;
    *v77.i64 = UMMul(v72, v73, v74, v75, v76);
    v245 = v77;
    v234 = 1;
    goto LABEL_18;
  }

LABEL_75:
}

- (void)_renderLocationDot:(const NUNISpheroidStructure *)dot scene:(const NUNISceneStructure *)scene uniPtr:(NUNICalliopeRenderUniforms *)ptr viewport:(NUNIViewport)viewport renderEncoder:(id)encoder
{
  encoderCopy = encoder;
  renderOffscreenPipelineForLocationDot = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForLocationDot];
  if (renderOffscreenPipelineForLocationDot)
  {
    p_state = &self->_state;
    [encoderCopy setLabel:@"Καλλιόπη LocationDot"];
    [encoderCopy setRenderPipelineState:renderOffscreenPipelineForLocationDot];
    rectVerticesBuffer = [(NUNICalliopeResourceManager *)self->_resourceManager rectVerticesBuffer];
    [encoderCopy setVertexBuffer:rectVerticesBuffer offset:0 atIndex:0];

    UMFloat4x4MakeScale(0.11);
    v142 = v16;
    v147 = v15;
    v132 = v18;
    v137 = v17;
    *v154.columns[0].i64 = UMFloat4x4MakeTranslate();
    v120 = v154.columns[1];
    v121 = v154.columns[0];
    v118 = v154.columns[3];
    v119 = v154.columns[2];
    v166.columns[1] = v142;
    v166.columns[0] = v147;
    v166.columns[3] = v132;
    v166.columns[2] = v137;
    *v19.i64 = UMMul(v154, v166);
    v143 = v20;
    v148 = v19;
    v133 = v22;
    v138 = v21;
    distance = dot[4].distance;
    *v24.i64 = UMFloat4x4MakeRotateX(dot[4].distanceScale * -0.017453);
    v126 = v25;
    v127 = v24;
    v124 = v27;
    v125 = v26;
    *v28.i64 = UMFloat4x4MakeRotateZ(distance * 0.017453);
    v130 = v29;
    v131 = v28;
    v128 = v31;
    v129 = v30;
    v155.columns[1] = v126;
    v155.columns[0] = v127;
    v155.columns[3] = v124;
    v155.columns[2] = v125;
    v167.columns[1] = v143;
    v167.columns[0] = v148;
    v167.columns[3] = v133;
    v167.columns[2] = v138;
    *v32.i64 = UMMul(v155, v167);
    v168.columns[0] = v32;
    v168.columns[1] = v33;
    v168.columns[2] = v34;
    v168.columns[3] = v35;
    v156.columns[1] = v130;
    v156.columns[0] = v131;
    v156.columns[3] = v128;
    v156.columns[2] = v129;
    *v36.i64 = UMMul(v156, v168);
    v144 = v37;
    v149 = v36;
    v134 = v39;
    v139 = v38;
    equatorRotation = dot->equatorRotation;
    UMFloat4x4MakeScale(dot[2].equatorRotation * dot[2].opacity);
    v116 = v157.columns[1];
    v117 = v157.columns[0];
    v114 = v157.columns[3];
    v115 = v157.columns[2];
    v169.columns[1] = v144;
    v169.columns[0] = v149;
    v169.columns[3] = v134;
    v169.columns[2] = v139;
    *v41.i64 = UMMul(v157, v169);
    v145 = v42;
    v150 = v41;
    v135 = v44;
    v140 = v43;
    v45 = fabsf(equatorRotation);
    if (v45 <= 0.00001)
    {
      UMFloat4x4MakeScale(1.0);
      v108 = v51;
      v109 = v50;
      v106 = v53;
      v107 = v52;
    }

    else
    {
      *v158.columns[0].i64 = UMFloat4x4MakeRotateZ(equatorRotation);
      v108 = v158.columns[1];
      v109 = v158.columns[0];
      v106 = v158.columns[3];
      v107 = v158.columns[2];
      v170.columns[1] = v145;
      v170.columns[0] = v150;
      v170.columns[3] = v135;
      v170.columns[2] = v140;
      *v46.i64 = UMMul(v158, v170);
      v145 = v47;
      v150 = v46;
      v135 = v49;
      v140 = v48;
    }

    *v159.columns[0].i64 = UMFloat4x4MakeTranslate();
    v112 = v159.columns[1];
    v113 = v159.columns[0];
    v110 = v159.columns[3];
    v111 = v159.columns[2];
    v171.columns[1] = v145;
    v171.columns[0] = v150;
    v171.columns[3] = v135;
    v171.columns[2] = v140;
    *v54.i64 = UMMul(v159, v171);
    v172.columns[0] = v54;
    v172.columns[1] = v55;
    v172.columns[2] = v56;
    v172.columns[3] = v57;
    *v58.i64 = UMMul(*&p_state[12].viewport.width, v172);
    v146 = v59;
    v151 = v58;
    v136 = v61;
    v141 = v60;
    *v62.i64 = UMMul(v58, v59, v60, v61, xmmword_25B71A410);
    v123 = v62;
    *v63.i64 = UMMul(v151, v146, v141, v136, xmmword_25B71A420);
    v122 = v63;
    *v64.i64 = UMMul(v151, v146, v141, v136, xmmword_25B719D40);
    v65.f32[0] = viewport.width;
    v65.f32[1] = viewport.height;
    v66 = vmul_f32(v65, 0x3F0000003F000000);
    v67 = vdiv_f32(vmul_f32(v66, *v122.i8), vdup_laneq_s32(v122, 3));
    *v64.i8 = vdiv_f32(vmul_f32(v66, *v64.i8), vdup_laneq_s32(v64, 3));
    v68 = vsub_f32(vdiv_f32(vmul_f32(v66, *v123.i8), vdup_laneq_s32(v123, 3)), *v64.i8);
    v69 = vmul_f32(v68, v68);
    *v64.i8 = vsub_f32(v67, *v64.i8);
    *v64.i8 = vmul_f32(*v64.i8, *v64.i8);
    v70 = vsqrt_f32(vadd_f32(vzip1_s32(v69, *v64.i8), vzip2_s32(v69, *v64.i8)));
    if (v70.f32[0] >= v70.f32[1])
    {
      v70.f32[0] = v70.f32[1];
    }

    v71 = v70.f32[0] * 0.23077;
    var1 = scene[1].var8.var0.var1;
    if (v71 <= var1)
    {
      v103 = v146;
      v102 = v151;
      v105 = v136;
      v104 = v141;
    }

    else
    {
      UMFloat4x4MakeScale((var1 * 0.11) / v71);
      v173.columns[0] = v73;
      v173.columns[1] = v74;
      v173.columns[2] = v75;
      v173.columns[3] = v76;
      v160.columns[1] = v120;
      v160.columns[0] = v121;
      v160.columns[3] = v118;
      v160.columns[2] = v119;
      *v77.i64 = UMMul(v160, v173);
      v174.columns[0] = v77;
      v174.columns[1] = v78;
      v174.columns[2] = v79;
      v174.columns[3] = v80;
      v161.columns[1] = v126;
      v161.columns[0] = v127;
      v161.columns[3] = v124;
      v161.columns[2] = v125;
      *v81.i64 = UMMul(v161, v174);
      v175.columns[0] = v81;
      v175.columns[1] = v82;
      v175.columns[2] = v83;
      v175.columns[3] = v84;
      v162.columns[1] = v130;
      v162.columns[0] = v131;
      v162.columns[3] = v128;
      v162.columns[2] = v129;
      *v85.i64 = UMMul(v162, v175);
      v176.columns[0] = v85;
      v176.columns[1] = v86;
      v176.columns[2] = v87;
      v176.columns[3] = v88;
      v163.columns[1] = v116;
      v163.columns[0] = v117;
      v163.columns[3] = v114;
      v163.columns[2] = v115;
      *v89.i64 = UMMul(v163, v176);
      v93.columns[0] = v89;
      v93.columns[1] = v90;
      v93.columns[2] = v91;
      v93.columns[3] = v92;
      if (v45 > 0.00001)
      {
        v164.columns[1] = v108;
        v164.columns[0] = v109;
        v164.columns[3] = v106;
        v164.columns[2] = v107;
        *v94.i64 = UMMul(v164, v93);
        v93.columns[0] = v94;
        v93.columns[1] = v95;
        v93.columns[2] = v96;
        v93.columns[3] = v97;
      }

      v165.columns[1] = v112;
      v165.columns[0] = v113;
      v165.columns[3] = v110;
      v165.columns[2] = v111;
      *v98.i64 = UMMul(v165, v93);
      v177.columns[0] = v98;
      v177.columns[1] = v99;
      v177.columns[2] = v100;
      v177.columns[3] = v101;
      *v102.i64 = UMMul(*&p_state[12].viewport.width, v177);
    }

    *&ptr[96].vsh.{?= = v102;
    *&ptr[112].vsh.{?= = v103;
    *&ptr[128].vsh.{?= = v104;
    *&ptr[144].vsh.{?= = v105;
    [encoderCopy setCullMode:{1, *&v106, *&v107, *&v108, *&v109}];
    [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
    [encoderCopy setCullMode:0];
  }
}

- (void)_renderSpriteSpheroid:(const NUNISpheroidStructure *)spheroid frameBufferIndex:(unint64_t)index renderEncoder:(id)encoder
{
  encoderCopy = encoder;
  v59 = 0;
  v60 = 0;
  v9 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:index pContents:&v60 pOffset:&v59];
  [encoderCopy setVertexBuffer:v9 offset:v59 atIndex:1];
  [encoderCopy setFragmentBuffer:v9 offset:v59 atIndex:0];
  v10 = v60;
  *v60 = *&self->_baseUniforms.vsh.{?=;
  v11 = *&self->_anon_421[63];
  v13 = *&self->_anon_421[15];
  v12 = *&self->_anon_421[31];
  v10[3] = *&self->_anon_421[47];
  v10[4] = v11;
  v10[1] = v13;
  v10[2] = v12;
  v14 = *&self->_anon_421[127];
  v16 = *&self->_anon_421[79];
  v15 = *&self->_anon_421[95];
  v10[7] = *&self->_anon_421[111];
  v10[8] = v14;
  v10[5] = v16;
  v10[6] = v15;
  v17 = *&self->_anon_421[191];
  v19 = *&self->_anon_421[143];
  v18 = *&self->_anon_421[159];
  v10[11] = *&self->_anon_421[175];
  v10[12] = v17;
  v10[9] = v19;
  v10[10] = v18;
  type = spheroid->type;
  v21 = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForSpheroid:spheroid->type layer:0 config:0];
  if (v21)
  {
    [encoderCopy setLabel:@"Καλλιόπη SpriteSpheroid"];
    [encoderCopy setRenderPipelineState:v21];
    discVerticesBuffer = [(NUNICalliopeResourceManager *)self->_resourceManager discVerticesBuffer];
    [encoderCopy setVertexBuffer:discVerticesBuffer offset:0 atIndex:0];

    v24 = v60;
    *v60 = s_sprites[spheroid[4].type];
    *(v24 + 40) = LODWORD(spheroid[1].angle);
    v25 = *&spheroid[3].type;
    if (type == 10)
    {
      v58 = xmmword_25B719C90;
      v56 = xmmword_25B719EC0;
      v57 = xmmword_25B71A430;
    }

    else
    {
      _Q0 = vsubq_f32(*&self->_anon_304[12], v25);
      _Q1 = vmulq_f32(_Q0, _Q0);
      _S2 = _Q0.i32[2];
      __asm { FMLA            S1, S2, V0.S[2] }

      _Q1.f32[0] = sqrtf(_Q1.f32[0]);
      v33 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
      v34 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
      v35 = vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL);
      p_state = &self->_state;
      v36 = vmlaq_f32(vmulq_f32(v35, vnegq_f32(vextq_s8(vuzp1q_s32(*&p_state[3].viewport.height, *&p_state[3].viewport.height), *&p_state[3].viewport.height, 0xCuLL))), v34, vextq_s8(vextq_s8(*&p_state[3].viewport.height, *&p_state[3].viewport.height, 0xCuLL), *&p_state[3].viewport.height, 8uLL));
      v37 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v36, v36, 0xCuLL), v36, 8uLL), vnegq_f32(v34)), vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), v35);
      v36.i32[3] = 0;
      v37.i32[3] = 0;
      v56 = v37;
      v57 = v36;
      v33.i32[3] = 0;
      v58 = v33;
    }

    v25.i32[3] = 1.0;
    v55 = v25;
    v38 = spheroid[2].equatorRotation * spheroid[2].opacity;
    if (type == 14)
    {
      v38 = v38 + v38;
    }

    UMFloat4x4MakeScale(v38);
    v62.columns[0] = v39;
    v62.columns[1] = v40;
    v62.columns[2] = v41;
    v62.columns[3] = v42;
    v61.columns[1] = v56;
    v61.columns[0] = v57;
    v61.columns[2] = v58;
    v61.columns[3] = v55;
    *v43.i64 = UMMul(v61, v62);
    v63.columns[0] = v43;
    v63.columns[1] = v44;
    v63.columns[2] = v45;
    v63.columns[3] = v46;
    *&v47 = UMMul(*&self->_anon_304[220], v63);
    v48 = v60;
    v60[6] = v47;
    v48[7] = v49;
    v48[8] = v50;
    v48[9] = v51;
    gradients = [(NUNICalliopeTextureGroup *)self->_textureGroup gradients];
    v53 = [gradients objectAtIndexedSubscript:type];

    atlas = [v53 atlas];
    [atlas bind:encoderCopy slot:5];

    [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:16];
  }
}

- (void)_renderOffscreenSceneWithScene:(const NUNISceneStructure *)scene spheroids:(id)spheroids viewport:(NUNIViewport)viewport commandBuffer:(id)buffer frameBufferIndex:(unint64_t)index drawableTexture:(id)texture
{
  v117[4] = *MEMORY[0x277D85DE8];
  height = viewport.height;
  spheroidsCopy = spheroids;
  bufferCopy = buffer;
  textureCopy = texture;
  [bufferCopy setLabel:@"Καλλιόπη Render"];
  if (__PAIR64__(self->_bloomEnabled, self->_bloomDownsampleUsingTileShaders) == 0x100000001)
  {
    v14 = [(NUNICalliopeRenderer *)self _getOrCreateOffscreenBloomWithViewport:viewport];
    renderPassDescriptor = [v14 renderPassDescriptor];
    v16 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];

    [v16 setLabel:@"Clear Bloom Texture"];
    [v16 endEncoding];
  }

  v17 = self->_offscreenScenes[index];
  v18 = v17;
  v78 = height;
  v79 = bufferCopy;
  if (!v17 || [(NUNCalliopeOffscreen *)v17 width]!= viewport.width || [(NUNCalliopeOffscreen *)v18 height]!= height)
  {
    mEMORY[0x277CFA798] = [MEMORY[0x277CFA798] sharedNilTexture2D];
    v19 = objc_opt_new();
    [v19 setTextureType:2];
    [v19 setWidth:viewport.width];
    [v19 setHeight:*&viewport >> 32];
    [v19 setDepth:1];
    [v19 setPixelFormat:10];
    v116[0] = *MEMORY[0x277CD2928];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:viewport];
    v117[0] = v20;
    v116[1] = *MEMORY[0x277CD28D0];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:height];
    v22 = *MEMORY[0x277CD28D8];
    v117[1] = v21;
    v117[2] = &unk_286CFF4E0;
    v23 = *MEMORY[0x277CD28B0];
    v116[2] = v22;
    v116[3] = v23;
    v117[3] = &unk_286CFF4F8;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:4];

    v25 = MGGetStringAnswer();
    v26 = v18;
    if ([v25 isEqualToString:@"t8010"])
    {
      [v19 setUsage:4];
      [v19 setResourceOptions:48];
      v27 = [(MTLDevice *)self->_device newTextureWithDescriptor:v19];
      v28 = 0;
    }

    else
    {
      [v19 setUsage:5];
      [v19 setResourceOptions:0];
      v28 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v24];
      v27 = [(MTLDevice *)self->_device newTextureWithDescriptor:v19 iosurface:v28 plane:0];
    }

    v29 = self->_contentMaskSurfaces[index];
    self->_contentMaskSurfaces[index] = v28;
    v30 = v28;

    v31 = self->_contentMaskTextures[index];
    self->_contentMaskTextures[index] = v27;
    v32 = v27;

    v18 = [[NUNCalliopeOffscreen alloc] initWithDevice:self->_device width:viewport height:v78 texture0:mEMORY[0x277CFA798] texture1:v32 loadAction:2 clearColor0:0.0 clearColor1:0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0];
    objc_storeStrong(&self->_offscreenScenes[index], v18);

    bufferCopy = v79;
  }

  [(NUNCalliopeOffscreen *)v18 setTexture0:textureCopy];
  width = [textureCopy width];
  height = [textureCopy height];
  renderPassDescriptor2 = [(NUNCalliopeOffscreen *)v18 renderPassDescriptor];
  [renderPassDescriptor2 setTileWidth:32];

  renderPassDescriptor3 = [(NUNCalliopeOffscreen *)v18 renderPassDescriptor];
  [renderPassDescriptor3 setTileHeight:32];

  location = &v18->super.isa;
  renderPassDescriptor4 = [(NUNCalliopeOffscreen *)v18 renderPassDescriptor];
  v36 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor4];

  memset(v115, 0, sizeof(v115));
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v37 = spheroidsCopy;
  v38 = [v37 countByEnumeratingWithState:&v108 objects:v112 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = 0;
    v41 = *v109;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v109 != v41)
        {
          objc_enumerationMutation(v37);
        }

        v43 = objc_msgSend_structure(*(*(&v108 + 1) + 8 * i));
        if (v43[5].f32[2] > 0.00001 && v43[3].f32[0] > 0.00001 && v43[9].i8[8] == 1)
        {
          v44 = v43->i32[0];
          _S0 = 0;
          if ((v43->i32[0] - 10) >= 2)
          {
            if (v44 == 13)
            {
              _S0 = 1258291194;
            }

            else if (v44 == 3)
            {
              _S0 = 1258291192;
            }

            else
            {
              _S0 = 1258291196;
              if (((1 << v44) & 0xFFC000) == 0)
              {
                _S0 = 1258291198;
                if (v44 != 12)
                {
                  _S2 = vsubq_f32(self[784], v43[96]).i32[2];
                  __asm { FMLA            S0, S2, V1.S[2] }
                }
              }
            }
          }

          v51 = &__base[8 * v40];
          *v51 = _S0;
          v51[1] = v40;
          *(v115 + v40++) = v43;
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v108 objects:v112 count:16];
    }

    while (v39);
  }

  else
  {
    v40 = 0;
  }

  qsort(__base, v40, 8uLL, _NUNICalliopeRenderCompareObject);
  [v36 setLabel:@"Καλλιόπη Offscreen Scene"];
  v87 = 0uLL;
  *&v88 = viewport.width;
  *(&v88 + 1) = v78;
  v89 = xmmword_25B71A440;
  [v36 setViewport:&v87];
  [v36 setCullMode:0];
  [v36 setFrontFacingWinding:0];
  [(NUNICalliopeRenderer *)self _renderOffscreenBackgroundWithRenderEncoder:v36 frameBufferIndex:index];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  [(NUNICalliopeRenderer *)self prepareWorldSpaceFrustumWithTransform:&self->_anon_304[220] withState:&v87];
  if (v40 >= 1)
  {
    *&v52 = width;
    *(&v52 + 1) = height;
    v81 = v52;
    v53 = v40;
    v54 = &v114;
    do
    {
      v55 = *v54;
      v54 += 2;
      v56 = *(v115 + v55);
      v57 = 1 << *v56;
      if ((v57 & 0xFBFC00) != 0)
      {
        [(NUNICalliopeRenderer *)self _renderSpriteSpheroid:v56 frameBufferIndex:index renderEncoder:v36];
      }

      else if ((v57 & 0x3FE) != 0)
      {
        [(NUNICalliopeRenderer *)self _renderPatchSpheroid:v56 frustumCullingState:&v87 drawableSize:index frameBufferIndex:v36 renderEncoder:v81];
      }

      if ((v57 & 8) != 0)
      {
        v58 = *&scene[1].var6;
        if (v58 > 0.00001)
        {
          var7 = scene[1].var7;
          v85 = 0;
          v86 = 0;
          v60 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:index pContents:&v86 pOffset:&v85];
          [v36 setVertexBuffer:v60 offset:v85 atIndex:1];
          [v36 setFragmentBuffer:v60 offset:v85 atIndex:0];
          v61 = v86;
          *v86 = *&self->_baseUniforms.vsh.{?=;
          v62 = *&self->_anon_421[15];
          v63 = *&self->_anon_421[31];
          v64 = *&self->_anon_421[63];
          *(v61 + 3) = *&self->_anon_421[47];
          *(v61 + 4) = v64;
          *(v61 + 1) = v62;
          *(v61 + 2) = v63;
          v65 = *&self->_anon_421[79];
          v66 = *&self->_anon_421[95];
          v67 = *&self->_anon_421[127];
          *(v61 + 7) = *&self->_anon_421[111];
          *(v61 + 8) = v67;
          *(v61 + 5) = v65;
          *(v61 + 6) = v66;
          v69 = *&self->_anon_421[143];
          v68 = *&self->_anon_421[159];
          v70 = *&self->_anon_421[191];
          *(v61 + 11) = *&self->_anon_421[175];
          *(v61 + 12) = v70;
          *(v61 + 9) = v69;
          *(v61 + 10) = v68;
          v61[40] = v58 * *(v56 + 48);
          v61[41] = var7 - floorf(var7);
          v61[43] = scene[1].var8.var0.var0;
          [NUNICalliopeRenderer _renderLocationDot:"_renderLocationDot:scene:uniPtr:viewport:renderEncoder:" scene:v56 uniPtr:scene viewport:? renderEncoder:?];
        }
      }

      --v53;
    }

    while (v53);
  }

  if (self->_bloomEnabled)
  {
    v71 = v79;
    if (self->_bloomDownsampleUsingTileShaders)
    {
      [(NUNICalliopeRenderer *)self _renderOffscreenBloomTextureUsingTileShaderWithViewport:viewport renderEncoder:v36];
      [v36 endEncoding];
    }

    else
    {
      [v36 endEncoding];
      texture0 = [location texture0];
      [(NUNICalliopeRenderer *)self _renderOffscreenBloomTextureWithViewport:viewport sceneTexture:texture0 commandBuffer:v79];
    }

    computeCommandEncoder = [v79 computeCommandEncoder];
    [(NUNICalliopeRenderer *)self _computeBloomChainTextures:computeCommandEncoder];
    [computeCommandEncoder endEncoding];
  }

  else
  {
    [v36 endEncoding];
    v71 = v79;
  }
}

- (id)_getOrCreateOffscreenBloomWithViewport:(NUNIViewport)viewport
{
  v5 = (viewport.width >> 2);
  v6 = *&viewport >> 34;
  offscreenBloom = self->_offscreenBloom;
  if (!offscreenBloom || [(NUNCalliopeOffscreen *)offscreenBloom width]!= v5 || [(NUNCalliopeOffscreen *)self->_offscreenBloom height]!= v6)
  {
    v8 = _NUNCalliopeCreateTexture(self->_device, v5, v6, 1u, 10, 1);
    [(NUNICalliopeRenderer *)self _setupBloomChainWithViewport:viewport bloomTexture:v8];
    v9 = [NUNCalliopeOffscreen alloc];
    if (self->_bloomDownsampleUsingTileShaders)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    v11 = [(NUNCalliopeOffscreen *)v9 initWithDevice:self->_device width:v5 height:v6 texture0:v8 texture1:0 loadAction:v10 clearColor0:0.0 clearColor1:0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
    v12 = self->_offscreenBloom;
    self->_offscreenBloom = v11;
  }

  v13 = self->_offscreenBloom;

  return v13;
}

- (void)_renderOffscreenBloomTextureUsingTileShaderWithViewport:(NUNIViewport)viewport renderEncoder:(id)encoder
{
  encoderCopy = encoder;
  v7 = [(NUNICalliopeRenderer *)self _getOrCreateOffscreenBloomWithViewport:viewport];
  [encoderCopy pushDebugGroup:@"Καλλιόπη Bloom Downsample"];
  renderOffscreenPipelineForBloomDownsampleUsingTileShader = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForBloomDownsampleUsingTileShader];
  [encoderCopy setRenderPipelineState:renderOffscreenPipelineForBloomDownsampleUsingTileShader];

  texture0 = [v7 texture0];
  [encoderCopy setTileTexture:texture0 atIndex:0];

  v10[0] = [encoderCopy tileWidth] >> 1;
  v10[1] = [encoderCopy tileHeight] >> 1;
  v10[2] = 1;
  [encoderCopy dispatchThreadsPerTile:v10];
  [encoderCopy setTileTexture:0 atIndex:0];
  [encoderCopy popDebugGroup];
}

- (void)_renderOffscreenBloomTextureWithViewport:(NUNIViewport)viewport sceneTexture:(id)texture commandBuffer:(id)buffer
{
  bufferCopy = buffer;
  textureCopy = texture;
  v10 = [(NUNICalliopeRenderer *)self _getOrCreateOffscreenBloomWithViewport:viewport];
  renderPassDescriptor = [v10 renderPassDescriptor];
  v12 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];

  renderOffscreenPipelineForBloomDownsample = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForBloomDownsample];
  [v12 setLabel:@"Καλλιόπη Bloom Downsample"];
  [v12 setRenderPipelineState:renderOffscreenPipelineForBloomDownsample];
  v14[0] = 0;
  v14[1] = 0;
  *&v14[2] = [v10 width];
  *&v14[3] = [v10 height];
  v15 = xmmword_25B71A440;
  [v12 setViewport:v14];
  [v12 setCullMode:0];
  [v12 setFragmentTexture:textureCopy atIndex:0];

  [v12 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v12 endEncoding];
}

- (void)_setupBloomChainWithViewport:(NUNIViewport)viewport bloomTexture:(id)texture
{
  textureCopy = texture;
  if (!textureCopy)
  {
    [NUNICalliopeRenderer _setupBloomChainWithViewport:bloomTexture:];
  }

  v6 = 0;
  v7 = fmaxf(viewport.width, viewport.height) * 0.025;
  do
  {
    ++v6;
  }

  while (((1 << v6) * 1.5) < v7);
  v8 = 16;
  if (v6 < 0x10)
  {
    v8 = v6;
  }

  if (v8 <= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  p_bloomChain = &self->_bloomChain;
  self->_bloomChain.numLevels = v9;
  v11 = objc_opt_new();
  [v11 setWidth:{objc_msgSend(textureCopy, "width") >> 1}];
  [v11 setHeight:{objc_msgSend(textureCopy, "height") >> 1}];
  [v11 setMipmapLevelCount:v9 - 1];
  [v11 setPixelFormat:25];
  [v11 setUsage:3];
  v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  texture = self->_bloomChain.texture;
  self->_bloomChain.texture = v12;

  width = [textureCopy width];
  height = [textureCopy height];
  if (!width)
  {
    [NUNICalliopeRenderer _setupBloomChainWithViewport:bloomTexture:];
  }

  if (!height)
  {
    [NUNICalliopeRenderer _setupBloomChainWithViewport:bloomTexture:];
  }

  v16 = 0;
  v17.i64[0] = width;
  v17.i64[1] = height;
  v18 = 16;
  if (v6 < 0x10)
  {
    v18 = v6;
  }

  if (v18 <= 2)
  {
    v18 = 2;
  }

  v19 = 32 * v18;
  v20 = -1;
  v31 = vdupq_n_s64(1uLL);
  v32 = vdupq_n_s64(7uLL);
  do
  {
    v33 = v17;
    if (v16)
    {
      v21 = [(MTLTexture *)p_bloomChain->texture newTextureViewWithPixelFormat:[(MTLTexture *)p_bloomChain->texture pixelFormat] textureType:[(MTLTexture *)p_bloomChain->texture textureType] levels:v20 slices:1, 0, 1];
      v22 = p_bloomChain->levels[v16 / 0x20].texture;
      p_bloomChain->levels[v16 / 0x20].texture = v21;
    }

    else
    {
      v23 = textureCopy;
      v22 = self->_bloomChain.levels[0].texture;
      self->_bloomChain.levels[0].texture = v23;
    }

    v24 = (p_bloomChain + v16);
    v24[1] = vshrq_n_u64(vaddq_s64(v33, v32), 3uLL);
    v24[2].i64[0] = 1;
    v25 = vcgtq_u64(v33, v31);
    v17 = vsubq_s64(vandq_s8(vshrq_n_u64(v33, 1uLL), v25), vmvnq_s8(v25));
    v16 += 32;
    ++v20;
  }

  while (v19 != v16);
  if (v6 <= 0xF)
  {
    v26 = v6;
    if (v6 <= 2)
    {
      v26 = 2;
    }

    v27 = v26 - 1;
    v28 = &self->_bloomChain.levels[v26];
    do
    {
      v29 = v28->texture;
      v28->texture = 0;

      v28->numThreadgroups.width = 0;
      v28->numThreadgroups.height = 0;
      v28->numThreadgroups.depth = 0;
      ++v27;
      ++v28;
    }

    while (v27 < 0xF);
  }
}

- (void)_computeBloomChainTextures:(id)textures
{
  texturesCopy = textures;
  computePipelineForBloomChainDownsample = [(NUNICalliopeResourceManager *)self->_resourceManager computePipelineForBloomChainDownsample];
  computePipelineForBloomChainUpsample = [(NUNICalliopeResourceManager *)self->_resourceManager computePipelineForBloomChainUpsample];
  if (!computePipelineForBloomChainDownsample)
  {
    [NUNICalliopeRenderer _computeBloomChainTextures:];
  }

  v7 = computePipelineForBloomChainUpsample;
  if (!computePipelineForBloomChainUpsample)
  {
    [NUNICalliopeRenderer _computeBloomChainTextures:];
  }

  [texturesCopy pushDebugGroup:@"Καλλιόπη Bloom Chain Downsample"];
  [texturesCopy setComputePipelineState:computePipelineForBloomChainDownsample];
  if (self->_bloomChain.numLevels != 1)
  {
    v8 = 0;
    v9 = &self->_bloomChain.levels[1];
    v13 = vdupq_n_s64(8uLL);
    do
    {
      if (!v9[-1].texture)
      {
        [NUNICalliopeRenderer _computeBloomChainTextures:];
      }

      if (!v9->texture)
      {
        [NUNICalliopeRenderer _computeBloomChainTextures:];
      }

      ++v8;
      [texturesCopy setTexture:? atIndex:?];
      [texturesCopy setTexture:v9->texture atIndex:1];
      v17 = *&v9->numThreadgroups.width;
      depth = v9->numThreadgroups.depth;
      v15 = v13;
      v16 = 1;
      [texturesCopy dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
      ++v9;
    }

    while (v8 < self->_bloomChain.numLevels - 1);
  }

  [texturesCopy popDebugGroup];
  [texturesCopy pushDebugGroup:@"Καλλιόπη Bloom Chain Upsample"];
  [texturesCopy setComputePipelineState:v7];
  numLevels = self->_bloomChain.numLevels;
  v11 = numLevels - 1;
  if (numLevels - 1 >= 2)
  {
    v12 = &self->_contentMaskTextures[4 * numLevels];
    v14 = vdupq_n_s64(8uLL);
    do
    {
      if (!v12[4])
      {
        [NUNICalliopeRenderer _computeBloomChainTextures:];
      }

      if (!*v12)
      {
        [NUNICalliopeRenderer _computeBloomChainTextures:];
      }

      [texturesCopy setTexture:? atIndex:?];
      [texturesCopy setTexture:*v12 atIndex:1];
      v17 = *(v12 + 1);
      depth = v12[3];
      v15 = v14;
      v16 = 1;
      [texturesCopy dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
      --v11;
      v12 -= 4;
    }

    while (v11 > 1);
  }

  [texturesCopy popDebugGroup];
}

- (void)_renderOffscreenPostWithScene:(const NUNISceneStructure *)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer frameBufferIndex:(unint64_t)index
{
  height = viewport.height;
  v11 = self->_offscreenScenes[index];
  v12 = self->_offscreenPosts;
  p_bloomChain = &self->_bloomChain;
  *&self->_anon_421[191] = 1.0 / (self->_bloomChain.numLevels - 1);
  v40 = 0;
  v41 = 0;
  bufferCopy = buffer;
  v15 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:index pContents:&v41 pOffset:&v40];
  v16 = v41;
  *v41 = *&self->_baseUniforms.vsh.{?=;
  v17 = *&self->_anon_421[63];
  v19 = *&self->_anon_421[15];
  v18 = *&self->_anon_421[31];
  v16[3] = *&self->_anon_421[47];
  v16[4] = v17;
  v16[1] = v19;
  v16[2] = v18;
  v20 = *&self->_anon_421[127];
  v22 = *&self->_anon_421[79];
  v21 = *&self->_anon_421[95];
  v16[7] = *&self->_anon_421[111];
  v16[8] = v20;
  v16[5] = v22;
  v16[6] = v21;
  v23 = *&self->_anon_421[191];
  v25 = *&self->_anon_421[143];
  v24 = *&self->_anon_421[159];
  v16[11] = *&self->_anon_421[175];
  v16[12] = v23;
  v16[9] = v25;
  v16[10] = v24;
  if (!v12 || [(NUNCalliopeOffscreen *)v12 width]!= viewport.width || [(NUNCalliopeOffscreen *)v12 height]!= height)
  {
    mEMORY[0x277CFA798] = [MEMORY[0x277CFA798] sharedNilTexture2D];
    v36 = v12;
    v37 = v15;
    v27 = v11;
    v28 = [NUNCalliopeOffscreen alloc];
    device = self->_device;
    texture1 = [(NUNCalliopeOffscreen *)v27 texture1];
    v31 = device;
    p_bloomChain = &self->_bloomChain;
    v12 = [(NUNCalliopeOffscreen *)v28 initWithDevice:v31 width:viewport height:height texture0:mEMORY[0x277CFA798] texture1:texture1 loadAction:1 clearColor0:0.0 clearColor1:0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0];

    objc_storeStrong(&self->_offscreenPosts, v12);
    v11 = v27;
    v15 = v37;
  }

  texture0 = [(NUNCalliopeOffscreen *)v11 texture0];
  [(NUNCalliopeOffscreen *)v12 setTexture0:texture0];

  renderPassDescriptor = [(NUNCalliopeOffscreen *)v12 renderPassDescriptor];
  v34 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];

  renderOffscreenPipelineForPost = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForPost];
  [v34 setLabel:@"Καλλιόπη Post"];
  [v34 setRenderPipelineState:renderOffscreenPipelineForPost];
  v38[0] = 0;
  v38[1] = 0;
  *&v38[2] = viewport.width;
  *&v38[3] = height;
  v39 = xmmword_25B71A440;
  [v34 setViewport:v38];
  [v34 setCullMode:0];
  [v34 setFragmentBuffer:v15 offset:v40 atIndex:0];
  [v34 setFragmentTexture:p_bloomChain->texture atIndex:1];
  [v34 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v34 endEncoding];
}

- (void)renderOffscreenWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer
{
  [(NUNICalliopeRenderer *)self _updateStateWithScene:objc_msgSend_structure(scene viewport:a2), viewport];

  [(NUNICalliopeRenderer *)self _updateBaseUniformsForViewport:viewport];
}

- (void)renderWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  bufferCopy = buffer;
  v10 = self->_frame % 3;
  descriptorCopy = descriptor;
  sceneCopy = scene;
  v13 = objc_msgSend_structure(sceneCopy);
  colorAttachments = [descriptorCopy colorAttachments];

  v15 = [colorAttachments objectAtIndexedSubscript:0];

  texture = [v15 texture];
  self->_renderUniformsBuffersCounts[v10].current = 0;
  spheroids = [sceneCopy spheroids];

  [(NUNICalliopeRenderer *)self _renderOffscreenSceneWithScene:v13 spheroids:spheroids viewport:viewport commandBuffer:bufferCopy frameBufferIndex:v10 drawableTexture:texture];
  if (self->_bloomEnabled)
  {
    [(NUNICalliopeRenderer *)self _renderOffscreenPostWithScene:v13 viewport:viewport commandBuffer:bufferCopy frameBufferIndex:v10];
  }

  [(NUNCalliopeOffscreen *)self->_offscreenScenes[v10] setTexture0:0];
  [(NUNCalliopeOffscreen *)self->_offscreenPosts setTexture0:0];
  [(CALayer *)self->_contentMaskLayer setContents:self->_contentMaskSurfaces[v10]];
  ++self->_frame;
}

- (void)prepareWorldSpaceFrustumWithTransform:(id *)transform withState:(id *)state
{
  v12.columns[2] = *(transform + 2);
  v12.columns[3] = *(transform + 3);
  v12.columns[0] = *transform;
  v12.columns[1] = *(transform + 1);
  v13 = __invert_f4(v12);
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = 0;
    v8 = v6;
    v9 = &prepareWorldSpaceFrustumWithTransform_withState__projectedPositions + 64 * v5;
    v10 = state + 64 * v5;
    do
    {
      v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13.columns[0], COERCE_FLOAT(*&v9[v7])), v13.columns[1], *&v9[v7], 1), v13.columns[2], *&v9[v7], 2), v13.columns[3], *&v9[v7], 3);
      *&v10[v7] = vdivq_f32(v11, vdupq_laneq_s32(v11, 3));
      v7 += 16;
    }

    while (v7 != 64);
    v6 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
}

- (void)prepareObjectSpaceFrustumWithTransform:(id *)transform withState:(id *)state
{
  v17.columns[2] = *(transform + 2);
  v17.columns[3] = *(transform + 3);
  v17.columns[0] = *transform;
  v17.columns[1] = *(transform + 1);
  v18 = __invert_f4(v17);
  v6 = 0;
  LOBYTE(v7) = 1;
  do
  {
    v8 = v7;
    v9 = (state + 64 * v6 + 128);
    v7 = 4;
    do
    {
      *v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18.columns[0], COERCE_FLOAT(*&v9[-8])), v18.columns[1], *v9[-8].f32, 1), v18.columns[2], v9[-8], 2), v18.columns[3], v9[-8], 3);
      ++v9;
      --v7;
    }

    while (v7);
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  v10 = (state + 256);
  v11 = -4;
  do
  {
    v12 = __CFADD__(v11, 1);
    v13 = v11 + 1;
    v14 = v11 + 5;
    if (v12)
    {
      v14 = 0;
    }

    [(NUNICalliopeRenderer *)self buildFrustumPlane:*(v10 - 16) p2:*(v10 - 8) p3:*(state + 2 * v14 + 24)];
    *v10 = v15;
    v10 += 2;
    v11 = v13;
  }

  while (v13);
  [(NUNICalliopeRenderer *)self buildFrustumPlane:*(state + 16) p2:*(state + 18) p3:*(state + 20)];
  *(state + 20) = v16;
}

- (double)buildFrustumPlane:(float32x4_t)plane p2:(float32x4_t)p2 p3:(float32x4_t)p3
{
  v3 = vsubq_f32(p2, plane);
  v4 = vsubq_f32(p3, p2);
  v5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), vnegq_f32(v3)), v4, vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL));
  v6 = vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL);
  v7 = vmulq_f32(v5, v5);
  v5.f32[0] = v7.f32[1] + (v7.f32[2] + v7.f32[0]);
  *v7.f32 = vrsqrte_f32(v5.u32[0]);
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v7.f32, *v7.f32)));
  *&result = vmulq_n_f32(v6, vmul_f32(*v7.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v7.f32, *v7.f32))).f32[0]).u64[0];
  return result;
}

- (int)classifyObjectBoundingBoxVersusFrustum:(NUNICalliopeRenderer *)self max:(SEL)max withState:
{
  v5 = 0;
  v6 = 0;
  v22 = *MEMORY[0x277D85DE8];
  v20 = v2;
  v21 = v3;
  v7 = 1;
  __asm { FMOV            V0.4S, #1.0 }

  do
  {
    v13 = 0;
    v14 = -3.4028e38;
    v15 = 3.4028e38;
    do
    {
      v16.i32[3] = HIDWORD(_Q0);
      v16.i32[0] = **(&v20 + (v13 & 1));
      v16.i32[1] = *(*(&v20 + ((v13 >> 1) & 1)) + 4);
      v16.i32[2] = *(*(&v20 + (v13 >> 2)) + 8);
      v17 = vmulq_f32(*(v4 + 256 + 16 * v5), v16);
      *v17.i32 = vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)));
      v15 = fminf(v15, *v17.i32);
      v14 = fmaxf(v14, *v17.i32);
      ++v13;
    }

    while (v13 != 8);
    if (v14 < 0.0)
    {
      break;
    }

    v7 &= v15 >= 0.0;
    v6 = v5++ > 3;
  }

  while (v5 != 5);
  if (v7)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  if (v6)
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isObjectBoundingBoxInsideOrIntersectingFrustum:(NUNICalliopeRenderer *)self max:(SEL)max withState:
{
  v5 = 0;
  v6 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v17 = v2;
  v18 = v3;
  __asm { FMOV            V0.4S, #1.0 }

  do
  {
    v12 = 0;
    v13 = -3.4028e38;
    do
    {
      v14.i32[3] = HIDWORD(_Q0);
      v14.i32[0] = **(&v17 + (v12 & 1));
      v14.i32[1] = *(*(&v17 + ((v12 >> 1) & 1)) + 4);
      v14.i32[2] = *(*(&v17 + (v12 >> 2)) + 8);
      v15 = vmulq_f32(*(v4 + 256 + 16 * v5), v14);
      v13 = fmaxf(v13, vaddv_f32(vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL))));
      ++v12;
    }

    while (v12 != 8);
    if (v13 < 0.0)
    {
      break;
    }

    v6 = v5++ > 3;
  }

  while (v5 != 5);
  return v6;
}

- (id)spheroidAtPoint:(id)point scene:(NUNIViewport)scene viewport:
{
  v6 = v4;
  v61 = *MEMORY[0x277D85DE8];
  height = scene.height;
  pointCopy = point;
  [(NUNICalliopeRenderer *)self _updateStateWithScene:objc_msgSend_structure(pointCopy) viewport:scene];
  p_state = &self->_state;
  memset(v60, 0, sizeof(v60));
  v51 = pointCopy;
  spheroids = [pointCopy spheroids];
  v12 = [spheroids count];
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = v12 & 0x7FFFFFFF;
    do
    {
      v16 = [spheroids objectAtIndexedSubscript:v13];
      v17 = objc_msgSend_structure(v16);

      if (v17[5].f32[2] > 0.00001 && v17[3].f32[0] > 0.00001 && v17[9].i8[8] == 1 && ((1 << v17->i32[0]) & 0x3FE) != 0)
      {
        _S2 = vsubq_f32(p_state[32], v17[96]).i32[2];
        __asm { FMLA            S1, S2, V0.S[2] }

        v24 = &__base[8 * v14];
        *v24 = _S1;
        v24[1] = v13;
        *(v60 + v13) = v17;
        ++v14;
      }

      ++v13;
    }

    while (v15 != v13);
  }

  width = scene.width;
  v54 = height;
  qsort(__base, v14, 8uLL, _NUNICalliopeRenderCompareObject);
  __asm { FMOV            V1.2S, #1.0 }

  v26.i32[1] = _D1.i32[1];
  if (height > scene.width)
  {
    _D1.f32[1] = width / v54;
    v27 = _D1;
  }

  else
  {
    v26.f32[0] = v54 / width;
    v27 = v26;
  }

  if (v14 < 1)
  {
LABEL_18:
    v49 = 0;
  }

  else
  {
    v28.f32[1] = height;
    __asm { FMOV            V1.2S, #-1.0 }

    v28.f32[0] = scene.width;
    v30 = vmla_f32(COERCE_FLOAT32X2_T(-_D1), COERCE_FLOAT32X2_T(-2.00000048), vdiv_f32(v6, v28));
    v55 = *&p_state[9].aspect;
    v57 = *&p_state[8].fovY;
    v52 = *&p_state[11].viewport.height;
    v53 = *&p_state[10].cameraRoll;
    fovY = p_state->fovY;
    v32 = *&p_state[1].viewport.height;
    v33 = v14;
    v34 = &v59;
    while (1)
    {
      v36 = *v34;
      v34 += 2;
      v35 = v36;
      v37 = *(*(v60 + v36) + 96);
      v37.i32[3] = 1.0;
      UMMul(v57, v55, v53, v52, v37);
      _NUNICalliopeRenderer_ComputeProjectedSpheroid(fovY);
      v39 = vmul_f32(v27, v38);
      v41 = vmul_f32(v27, v40);
      v43 = vmul_f32(v39, v39);
      v44 = vmul_f32(v41, v41);
      v45 = vadd_f32(vzip1_s32(v43, v44), vzip2_s32(v43, v44));
      v46 = vsub_f32(v30, vmul_f32(v27, vsub_f32(v42, v32)));
      v47 = vmul_f32(v46, v46);
      v48 = vadd_f32(vzip1_s32(v47, v45), vzip2_s32(v47, v45));
      if ((vmvn_s8(vcgt_f32(vdup_lane_s32(v48, 1), v48)).u8[0] & 1) == 0)
      {
        break;
      }

      if (!--v33)
      {
        goto LABEL_18;
      }
    }

    v49 = [spheroids objectAtIndexedSubscript:v35];
  }

  return v49;
}

@end