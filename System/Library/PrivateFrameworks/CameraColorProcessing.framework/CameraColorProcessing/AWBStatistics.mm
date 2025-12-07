@interface AWBStatistics
+ (int)getTileStatsRegionWithMetadata:(id)metadata cropRectLTMInCoords:(CGRect)coords ltmInDownsamplingRatio:(float)ratio tileStatsRegionLTMInCoordsDictOut:(id *)out;
- (AWBStatistics)initWithMetalContext:(id)context;
- (int)_adjustConfigToValidRectInBufferCoords:(id)coords validRectInSensorReadoutCoords:(id)readoutCoords regionOfInterestRectInBufferCoords:(id)bufferCoords;
- (int)_createShaders;
- (int)_loadANSTNetwork;
- (int)_purgeANSTNetwork;
- (int)configWindowsV2:(id *)v2 metadata:(id)metadata tilesConfig:(id)config validRect:(id)rect regionOfInterestRect:(id)interestRect;
- (int)configWithModuleConfig:(id)config metadata:(id)metadata cameraInfo:(id)info awbParams:(id)params;
- (int)process:(id)process clipped:(id)clipped lscGainsTex:(id)tex validRectInBufferCoords:(id)coords validRectInSensorReadoutCoords:(id)readoutCoords awbStatsBuffer:(id)buffer awbTileStatsConfig:(id *)config anstSkinMask:(id)self0 anstSkinMaskData:(id *)self1 skyMaskTex:(id)self2 skyMaskData:(id *)self3 regionOfInterestRectInBufferCoords:(id)self4 downsizeFactor:(unsigned int *)self5;
- (uint64_t)_createShaders;
@end

@implementation AWBStatistics

- (AWBStatistics)initWithMetalContext:(id)context
{
  contextCopy = context;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v26.receiver = self;
  v26.super_class = AWBStatistics;
  v8 = [(AWBStatistics *)&v26 init];
  v9 = v8;
  if (v8)
  {
    if (contextCopy)
    {
      objc_storeStrong(&v8->_metalContext, context);
      _createShaders = [(AWBStatistics *)v9 _createShaders];
      v11 = _createShaders;
      if (!_createShaders)
      {
        v12 = v9;
        goto LABEL_7;
      }

      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", _createShaders, v3, v18, v19, v20, v21, v22, v23);
      goto LABEL_12;
    }

    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v18, v19, v20, v21, v22, v23);
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v17, v18);
    if (v11)
    {
LABEL_12:
      LODWORD(v16) = v11;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16, v3, v18, v19, v20, v21, v22, v23);
      if (dword_1EDD78228)
      {
        v25 = 0;
        v24 = 0;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v18, v19, v20, v21, v22, v23);
  }

  if (*v7 == 1)
  {
    kdebug_trace();
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (int)_createShaders
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v4 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftAWB::resetMtlBuffer" constants:0];
  resetMtlBufferPipelineState = self->_resetMtlBufferPipelineState;
  self->_resetMtlBufferPipelineState = v4;

  if (self->_resetMtlBufferPipelineState)
  {
    v6 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftAWB::awbStatsBayerFast" constants:0];
    computeAWBStatsBayerFastPipelineState = self->_computeAWBStatsBayerFastPipelineState;
    self->_computeAWBStatsBayerFastPipelineState = v6;

    if (self->_computeAWBStatsBayerFastPipelineState)
    {
      v8 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftAWB::awbStatsQuadraFast" constants:0];
      computeAWBStatsQuadraFastPipelineState = self->_computeAWBStatsQuadraFastPipelineState;
      self->_computeAWBStatsQuadraFastPipelineState = v8;

      if (self->_computeAWBStatsQuadraFastPipelineState)
      {
        v10 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftAWB::normTileStats" constants:0];
        normTileStatsPipelineState = self->_normTileStatsPipelineState;
        self->_normTileStatsPipelineState = v10;

        if (self->_normTileStatsPipelineState)
        {
          v12 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftAWB::normWindowStats" constants:0];
          normWindowStatsPipelineState = self->_normWindowStatsPipelineState;
          self->_normWindowStatsPipelineState = v12;

          if (self->_normWindowStatsPipelineState)
          {
            v14 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftAWB::resizeANST" constants:0];
            resizeANSTPipelineState = self->_resizeANSTPipelineState;
            self->_resizeANSTPipelineState = v14;

            if (self->_resizeANSTPipelineState)
            {
              v16 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftAWB::fitWbTmRGBToANSTInput" constants:0];
              fitWbTmRGBToANSTInputPipelineState = self->_fitWbTmRGBToANSTInputPipelineState;
              self->_fitWbTmRGBToANSTInputPipelineState = v16;

              if (self->_fitWbTmRGBToANSTInputPipelineState)
              {
                v18 = 0;
                goto LABEL_11;
              }

              [(AWBStatistics *)&v20 _createShaders];
            }

            else
            {
              [(AWBStatistics *)&v20 _createShaders];
            }
          }

          else
          {
            [(AWBStatistics *)&v20 _createShaders];
          }
        }

        else
        {
          [(AWBStatistics *)&v20 _createShaders];
        }
      }

      else
      {
        [(AWBStatistics *)&v20 _createShaders];
      }
    }

    else
    {
      [(AWBStatistics *)&v20 _createShaders];
    }
  }

  else
  {
    [(AWBStatistics *)&v20 _createShaders];
  }

  v18 = v20;
LABEL_11:
  if (*v3 == 1)
  {
    kdebug_trace();
  }

  return v18;
}

- (int)_loadANSTNetwork
{
  p_espressoContext = &self->_espressoContext;
  if (self->_espressoContext)
  {
    v14 = 0;
    path = 0;
    v7 = 0;
    v5 = 0;
    goto LABEL_12;
  }

  v33 = 0;
  v5 = [MEMORY[0x1E6985FE0] defaultConfigurationForVersion:0x10000 withError:&v33];
  v6 = v33;
  if (v6)
  {
    v15 = v6;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v32, v33, v34, v35, v36, v37);
    v7 = 0;
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v25, v32);
    path = 0;
    goto LABEL_25;
  }

  if (!v5)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v32, v33, v34, v35, v36, v37);
    v15 = 0;
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v26, v32);
    v5 = 0;
LABEL_19:
    v7 = 0;
LABEL_21:
    path = 0;
    goto LABEL_25;
  }

  v32 = 0;
  v7 = [MEMORY[0x1E6985FE8] descriptorWithConfiguration:v5 error:&v32];
  v8 = v32;
  if (v8)
  {
    v15 = v8;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v32, v33, v34, v35, v36, v37);
    path = 0;
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v27, v32);
LABEL_23:
    v14 = v17;
    goto LABEL_25;
  }

  if (!v7)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v32, v33, v34, v35, v36, v37);
    v15 = 0;
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v28, v32);
    goto LABEL_19;
  }

  assetURL = [v7 assetURL];
  path = [assetURL path];

  if (!path)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v32, v33, v34, v35, v36, v37);
    v15 = 0;
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v29, v32);
    goto LABEL_21;
  }

  context = espresso_create_context();
  *p_espressoContext = context;
  if (!context || (plan = espresso_create_plan(), (self->_espressoPlan = plan) == 0))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v32, v33, v34, v35, v36, v37);
    v15 = 0;
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v30, v32);
    goto LABEL_23;
  }

  [path UTF8String];
  v13 = espresso_plan_add_network();
  if (!v13)
  {
    v13 = espresso_plan_build();
    if (!v13)
    {
      v14 = 0;
LABEL_12:
      v15 = 0;
      goto LABEL_13;
    }
  }

  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v13, v2, v32, v33, v34, v35, v36, v37);
  v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v31, v32);
  v15 = 0;
LABEL_25:
  if (v14)
  {
    if (self->_espressoPlan)
    {
      espresso_plan_destroy();
    }

    if (*p_espressoContext)
    {
      espresso_context_destroy();
    }

    *p_espressoContext = 0;
    p_espressoContext[1] = 0;
  }

LABEL_13:

  return v14;
}

- (int)configWithModuleConfig:(id)config metadata:(id)metadata cameraInfo:(id)info awbParams:(id)params
{
  configCopy = config;
  metadataCopy = metadata;
  infoCopy = info;
  paramsCopy = params;
  v328 = configCopy;
  v336 = paramsCopy;
  v334 = metadataCopy;
  if (!configCopy || !metadataCopy || !infoCopy || !paramsCopy)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v305, v270, v290, v293, v295, v298, v300);
    v335 = 0;
    v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v241, v260, v279);
    v337 = 0;
    v338 = 0;
    v339 = 0;
    goto LABEL_229;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v337 = [configCopy objectForKeyedSubscript:@"AutoWhiteBalance"];
  firstPixel = [v336 firstPixel];
  intValue = [firstPixel intValue];

  cfaLayout = [v336 cfaLayout];
  intValue2 = [cfaLayout intValue];

  digitalFlash = [v336 digitalFlash];
  digitalFlash = self->_digitalFlash;
  self->_digitalFlash = digitalFlash;

  skipDemosaic = [v336 skipDemosaic];
  skipDemosaic = self->_skipDemosaic;
  self->_skipDemosaic = skipDemosaic;

  lscMaxGain = [v336 lscMaxGain];
  lscMaxGain = self->_lscMaxGain;
  self->_lscMaxGain = lscMaxGain;

  lscModulationWeight = [v336 lscModulationWeight];
  lscModulationWeight = self->_lscModulationWeight;
  self->_lscModulationWeight = lscModulationWeight;

  faceAssistedBehaviorMode = [v336 faceAssistedBehaviorMode];
  faceAssistedBehaviorMode = self->_faceAssistedBehaviorMode;
  self->_faceAssistedBehaviorMode = faceAssistedBehaviorMode;

  downsizeFactor = [v336 downsizeFactor];
  downsizeFactor = self->_downsizeFactor;
  self->_downsizeFactor = downsizeFactor;

  v28 = MEMORY[0x1E696AD98];
  v29 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990FD0]];
  [v29 doubleValue];
  v30 = [v28 numberWithDouble:?];

  v335 = v30;
  if (v30)
  {
    [v30 floatValue];
    v32 = ((v31 * 256.0) * 0.0039062) * 0.00024414;
  }

  else
  {
    v32 = 0.00000095367;
  }

  v319 = v32;
  bzero(&self->_awbStatCfg, 0xA30uLL);
  v33 = [v337 objectForKeyedSubscript:@"CSC"];

  if (!v33 || ([v337 objectForKeyedSubscript:@"IdealColorCalibrations"], (v34 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v305, v270, v290, v293, v295, v298, v300);
    v339 = 0;
    v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v242, v261, v280);
    v338 = 0;
    goto LABEL_229;
  }

  v329 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6990C50]];
  if (!v329)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v305, v270, v290, v293, v295, v298, v300);
    v339 = 0;
    v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v243, v262, v281);
    v338 = v34;
    goto LABEL_229;
  }

  v35 = *MEMORY[0x1E6990F90];
  v36 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990F90]];

  if (!v36)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v305, v270, v290, v293, v295, v298, v300);
LABEL_272:
    v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v244, v263, v282);
    v338 = v34;
    v339 = v329;
    goto LABEL_229;
  }

  v303 = [v337 objectForKeyedSubscript:@"CSC"];
  [metadataCopy objectForKeyedSubscript:v35];
  v324 = v322 = intValue;
  intValue3 = [v324 intValue];
  v38 = v303;
  v338 = v34;
  v339 = v329;
  v332 = v334;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v39 = 0;
  v40 = &self->_anon_7c[644];
  LOBYTE(v341) = 0;
  do
  {
    v373.f32[v39] = [v38 cmi_intValueFromArrayWithKey:@"CCMCoef" forIndex:v39 defaultValue:0 found:&v341];
    if ((v341 & 1) == 0)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v305, v270, v290, v293, v295, v298, v300);
      v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v233, v252, v271);
      goto LABEL_30;
    }

    ++v39;
  }

  while (v39 != 9);
  v41 = vmul_n_f32(v373, v319);
  v42 = vmul_n_f32(v375, v319);
  v43 = v319 * v376;
  v44 = vmul_n_f32(v377, v319);
  v45 = v319 * v378;
  *&self->_anon_7c[12] = v319 * v374;
  *&self->_anon_7c[4] = v41;
  *&self->_anon_7c[28] = v43;
  *&self->_anon_7c[20] = v42;
  *&self->_anon_7c[44] = v45;
  *&self->_anon_7c[36] = v44;
  v46 = [v339 objectForKeyedSubscript:@"HiCCTrgAbs"];

  if (v46)
  {
    v47 = [v339 objectForKeyedSubscript:@"HiCCTrgAbs"];
    [v47 floatValue];
    v320 = v48;

    v49 = [v339 objectForKeyedSubscript:@"HiCCTbgAbs"];
    [v49 floatValue];
    v317 = v50;

    v51 = [v339 objectForKeyedSubscript:@"LowCCTrgAbs"];
    [v51 floatValue];
    v315 = v52;

    v53 = [v339 objectForKeyedSubscript:@"LowCCTbgAbs"];
    [v53 floatValue];
    v313 = v54;
    goto LABEL_24;
  }

  v53 = [v339 objectForKeyedSubscript:*MEMORY[0x1E6990E48]];
  v55 = [v339 objectForKeyedSubscript:*MEMORY[0x1E6990E50]];
  v56 = v55;
  if (v53 && v55)
  {
    v57 = *MEMORY[0x1E6990E40];
    v58 = [v53 objectForKeyedSubscript:*MEMORY[0x1E6990E40]];
    [v58 floatValue];
    v60 = v59;

    v61 = *MEMORY[0x1E6990E38];
    v62 = [v53 objectForKeyedSubscript:*MEMORY[0x1E6990E38]];
    [v62 floatValue];
    v64 = v63;

    v65 = [v56 objectForKeyedSubscript:v57];
    [v65 floatValue];
    v67 = v66;

    v68 = [v56 objectForKeyedSubscript:v61];
    [v68 floatValue];
    v320 = v60 * 16384.0;
    v317 = v64 * 16384.0;
    v315 = v67 * 16384.0;
    v313 = v69 * 16384.0;

LABEL_24:
    v70 = [v338 objectForKeyedSubscript:@"hiCCTrgIdeal"];

    if (v70)
    {
      v71 = [v338 objectForKeyedSubscript:@"hiCCTrgIdeal"];
      [v71 floatValue];
      v311 = v72;

      v73 = [v338 objectForKeyedSubscript:@"hiCCTbgIdeal"];
      [v73 floatValue];
      v309 = v74;

      v75 = [v338 objectForKeyedSubscript:@"lowCCTrgIdeal"];
      [v75 floatValue];
      v308 = v76;

      v53 = [v338 objectForKeyedSubscript:@"lowCCTbgIdeal"];
      [v53 floatValue];
      v307 = v77;
LABEL_29:

      v89 = 0;
      v90 = fmin(fmax(intValue3, 2500.0), 5000.0);
      v91 = *&self->_anon_7c[4];
      v92 = *&self->_anon_7c[20];
      v93 = *&self->_anon_7c[36];
      __asm { FMOV            V2.2S, #1.0 }

      v99 = vdiv_f32(vmla_n_f32(vmul_n_f32(vbsl_s8(vand_s8(vcgtz_f32(__PAIR64__(LODWORD(v317), LODWORD(v320))), vcgtz_f32(__PAIR64__(v309, v311))), vdiv_f32(__PAIR64__(v309, v311), __PAIR64__(LODWORD(v317), LODWORD(v320))), _D2), (v90 - 2500)), vbsl_s8(vand_s8(vcgtz_f32(__PAIR64__(LODWORD(v313), LODWORD(v315))), vcgtz_f32(__PAIR64__(v307, v308))), vdiv_f32(__PAIR64__(v307, v308), __PAIR64__(LODWORD(v313), LODWORD(v315))), _D2), (5000 - v90)), vdup_n_s32(0x451C4000u));
      v100 = vmul_f32(vzip1_s32(*v91.i8, *&vextq_s8(v91, v91, 8uLL)), v99);
      *&self->_anon_7c[12] = v100.i32[1];
      v100.i32[1] = v91.i32[1];
      *&self->_anon_7c[4] = v100;
      v101 = vmul_f32(vzip1_s32(*v92.i8, *&vextq_s8(v92, v92, 8uLL)), v99);
      *&self->_anon_7c[28] = v101.i32[1];
      v101.i32[1] = v92.i32[1];
      *&self->_anon_7c[20] = v101;
      v102 = vmul_f32(vzip1_s32(*v93.i8, *&vextq_s8(v93, v93, 8uLL)), v99);
      *&self->_anon_7c[44] = v102.i32[1];
      v102.i32[1] = v93.i32[1];
      *&self->_anon_7c[36] = v102;
      *&self->_anon_7c[92] = -974530560;
      *&self->_anon_7c[84] = vdupq_n_s32(0xC5E9D800).u64[0];
      *&self->_anon_7c[108] = 1172953088;
      *&self->_anon_7c[100] = vdupq_n_s32(0x45E9D800u).u64[0];
      *&self->_anon_7c[60] = 0;
      *&self->_anon_7c[52] = 0;
      *&self->_anon_7c[76] = 1199570688;
      *&self->_anon_7c[68] = vdupq_n_s32(0x477FFF00u).u64[0];
      goto LABEL_30;
    }

    v53 = [v338 objectForKeyedSubscript:*MEMORY[0x1E6990E48]];
    v78 = [v338 objectForKeyedSubscript:*MEMORY[0x1E6990E50]];
    v56 = v78;
    if (v53 && v78)
    {
      v79 = *MEMORY[0x1E6990E40];
      v80 = [v53 objectForKeyedSubscript:*MEMORY[0x1E6990E40]];
      [v80 floatValue];
      v311 = v81;

      v82 = *MEMORY[0x1E6990E38];
      v83 = [v53 objectForKeyedSubscript:*MEMORY[0x1E6990E38]];
      [v83 floatValue];
      v309 = v84;

      v85 = [v56 objectForKeyedSubscript:v79];
      [v85 floatValue];
      v308 = v86;

      v87 = [v56 objectForKeyedSubscript:v82];
      [v87 floatValue];
      v307 = v88;

      goto LABEL_29;
    }
  }

  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v305, v270, v290, v293, v295, v298, v300);
  v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v250, v269, v288);

LABEL_30:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v89)
  {
    goto LABEL_270;
  }

  v103 = *MEMORY[0x1E6990CD8];
  v104 = [v332 objectForKeyedSubscript:*MEMORY[0x1E6990CD8]];

  if (!v104)
  {
    LODWORD(v232) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
    goto LABEL_272;
  }

  v105 = [v332 objectForKeyedSubscript:v103];
  [v105 floatValue];
  self->_awbStatCfg.ispDGain = v106 * 0.0039062;

  self->_awbStatCfg.firstPix = v322;
  self->_awbStatCfg.layout = intValue2;
  v373.i8[0] = 0;
  v107 = [v337 objectForKeyedSubscript:@"Stats"];
  self->_awbStatCfg.greenAverage = [v107 cmi_intValueForKey:@"GreenAverage" defaultValue:0 found:&v373];

  if ((v373.i8[0] & 1) == 0)
  {
    LODWORD(v232) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
    v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v245, v264, v283);
    goto LABEL_229;
  }

  v108 = [v337 objectForKeyedSubscript:@"Gamma"];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v109 = 0;
  v373.i8[0] = 0;
  while (1)
  {
    *&self->_anon_7c[2 * v109 + 116] = [v108 cmi_intValueFromArrayWithKey:@"LUT" forIndex:v109 defaultValue:0 found:&v373];
    if ((v373.i8[0] & 1) == 0)
    {
      break;
    }

    if (++v109 == 257)
    {
      v110 = 0;
      v373.i8[0] = 0;
      while (1)
      {
        v111 = [v108 cmi_intValueFromArrayWithKey:@"OffsetIn" forIndex:v110 defaultValue:0 found:&v373];
        v112 = v110;
        if ((v110 & 0xFFFFFFFE) != 0)
        {
          v112 = 2;
        }

        *&v40[4 * v112] = v111;
        if ((v373.i8[0] & 1) == 0)
        {
          goto LABEL_253;
        }

        if (++v110 == 3)
        {
          v113 = 0;
          v373.i8[0] = 0;
          while (1)
          {
            v114 = [v108 cmi_intValueFromArrayWithKey:@"OffsetOut" forIndex:v113 defaultValue:0 found:&v373];
            v115 = v113;
            if ((v113 & 0xFFFFFFFE) != 0)
            {
              v115 = 2;
            }

            *&v40[4 * v115 + 16] = v114;
            if ((v373.i8[0] & 1) == 0)
            {
              goto LABEL_253;
            }

            if (++v113 == 3)
            {
              *&self->_anon_7c[688] = 0;
              self->_anon_7c[690] = 0;
              *&self->_anon_7c[676] = 0;
              self->_anon_7c[684] = 0;
              *&self->_anon_7c[692] = 0x100000000FFFFLL;
              *&self->_anon_7c[700] = 983297;
              *&self->_anon_7c[704] = 0;
              *&self->_anon_7c[706] = numIntervalArrayFixedCfgLinear;
              *&self->_anon_7c[722] = unk_1C9332CB0;
              memset_pattern16(&self->_anon_7c[738], asc_1C9332C90, 0x1EuLL);
              v89 = 0;
              *&self->_anon_7c[768] = 8;
              goto LABEL_51;
            }
          }
        }
      }
    }
  }

LABEL_253:
  LODWORD(v232) = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
  v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v237, v256, v275);
LABEL_51:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v89)
  {
LABEL_270:
    LODWORD(v232) = v89;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
    goto LABEL_229;
  }

  v116 = [v337 objectForKeyedSubscript:@"CSC"];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v117 = 0;
  LOBYTE(v341) = 0;
  while (1)
  {
    v373.f32[v117] = [v116 cmi_intValueFromArrayWithKey:@"CSCCoef" forIndex:v117 defaultValue:0 found:&v341];
    if ((v341 & 1) == 0)
    {
      break;
    }

    if (++v117 == 9)
    {
      v118 = 0;
      v119 = vdup_n_s32(0x39800000u);
      v120 = vmul_f32(v373, v119);
      v121 = vmul_f32(v375, v119);
      v122 = v376 * 0.00024414;
      v123 = vmul_f32(v377, v119);
      v124 = v378 * 0.00024414;
      *&self->_anon_7c[780] = v374 * 0.00024414;
      *&self->_anon_7c[772] = v120;
      *&self->_anon_7c[796] = v122;
      *&self->_anon_7c[788] = v121;
      *&self->_anon_7c[812] = v124;
      *&self->_anon_7c[804] = v123;
      v373.i8[0] = 0;
      while (1)
      {
        v125 = [v116 cmi_intValueFromArrayWithKey:@"CSCOffsetIn" forIndex:v118 defaultValue:0 found:&v373];
        v126 = v118;
        if ((v118 & 0xFFFFFFFE) != 0)
        {
          v126 = 2;
        }

        *&v40[4 * v126 + 208] = v125;
        if ((v373.i8[0] & 1) == 0)
        {
          goto LABEL_242;
        }

        if (++v118 == 3)
        {
          v127 = 0;
          v373.i8[0] = 0;
          while (1)
          {
            v128 = [v116 cmi_intValueFromArrayWithKey:@"CSCOffset" forIndex:v127 defaultValue:0 found:&v373];
            v340 = *&self->_anon_7c[868];
            *(&v340 & 0xFFFFFFFFFFFFFFF3 | (4 * (v127 & 3))) = v128;
            v129 = v340;
            *&self->_anon_7c[876] = v340.i32[2];
            *&self->_anon_7c[868] = v129.i64[0];
            if ((v373.i8[0] & 1) == 0)
            {
              break;
            }

            if (++v127 == 3)
            {
              v130 = 0;
              *&self->_anon_7c[876] = v129.f32[2] + 7483.0;
              *&self->_anon_7c[868] = vaddq_f32(v129, vdupq_n_s32(0x45E9D800u)).u64[0];
              v373.i8[0] = 0;
              while (1)
              {
                v131 = [v116 cmi_intValueFromArrayWithKey:@"CSCMin" forIndex:v130 defaultValue:0 found:&v373];
                v132 = v130;
                if ((v130 & 0xFFFFFFFE) != 0)
                {
                  v132 = 2;
                }

                *&v40[4 * v132 + 176] = v131;
                if ((v373.i8[0] & 1) == 0)
                {
                  goto LABEL_260;
                }

                if (++v130 == 3)
                {
                  v133 = 0;
                  v373.i8[0] = 0;
                  while (1)
                  {
                    v134 = [v116 cmi_intValueFromArrayWithKey:@"CSCMax" forIndex:v133 defaultValue:0 found:&v373];
                    v135 = v133;
                    if ((v133 & 0xFFFFFFFE) != 0)
                    {
                      v135 = 2;
                    }

                    *&v40[4 * v135 + 192] = v134;
                    if ((v373.i8[0] & 1) == 0)
                    {
                      goto LABEL_260;
                    }

                    if (++v133 == 3)
                    {
                      v373.i8[0] = 0;
                      *&self->_anon_7c[884] = [v116 cmi_intValueForKey:@"CSCChromaScale0" defaultValue:0 found:&v373];
                      if (v373.i8[0])
                      {
                        v373.i8[0] = 0;
                        *&self->_anon_7c[888] = [v116 cmi_intValueForKey:@"CSCChromaScale1" defaultValue:0 found:&v373];
                        if (v373.i8[0])
                        {
                          v89 = 0;
                          *&self->_anon_7c[884] = vmul_f32(*&self->_anon_7c[884], 0x3900000039000000);
                          goto LABEL_80;
                        }
                      }

                      goto LABEL_260;
                    }
                  }
                }
              }
            }
          }

LABEL_260:
          LODWORD(v232) = 0;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
          v229 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v238, v257, v276);
          goto LABEL_261;
        }
      }
    }
  }

LABEL_242:
  LODWORD(v232) = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
  v229 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v234, v253, v272);
LABEL_261:
  v89 = v229;
LABEL_80:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v89)
  {
    goto LABEL_275;
  }

  v136 = [v337 objectForKeyedSubscript:@"CSC2"];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v137 = 0;
  LOBYTE(v341) = 0;
  while (1)
  {
    v373.f32[v137] = [v136 cmi_intValueFromArrayWithKey:@"CSCCoeff" forIndex:v137 defaultValue:0 found:&v341];
    if ((v341 & 1) == 0)
    {
      break;
    }

    if (++v137 == 9)
    {
      v138 = 0;
      v139 = vdup_n_s32(0x39800000u);
      v140 = vmul_f32(v373, v139);
      v141 = vmul_f32(v375, v139);
      v142 = v376 * 0.00024414;
      v143 = vmul_f32(v377, v139);
      v144 = v378 * 0.00024414;
      *&self->_anon_7c[908] = v374 * 0.00024414;
      *&self->_anon_7c[900] = v140;
      *&self->_anon_7c[924] = v142;
      *&self->_anon_7c[916] = v141;
      *&self->_anon_7c[940] = v144;
      *&self->_anon_7c[932] = v143;
      v373.i8[0] = 0;
      while (1)
      {
        v145 = [v136 cmi_intValueFromArrayWithKey:@"CSCOffsetIn" forIndex:v138 defaultValue:0 found:&v373];
        v146 = v138;
        if ((v138 & 0xFFFFFFFE) != 0)
        {
          v146 = 2;
        }

        *&self->_anon_7c[4 * v146 + 980] = v145;
        if ((v373.i8[0] & 1) == 0)
        {
          goto LABEL_262;
        }

        if (++v138 == 3)
        {
          v147 = 0;
          v373.i8[0] = 0;
          while (1)
          {
            v148 = [v136 cmi_intValueFromArrayWithKey:@"CSCOffsetOut" forIndex:v147 defaultValue:0 found:&v373];
            v149 = v147;
            if ((v147 & 0xFFFFFFFE) != 0)
            {
              v149 = 2;
            }

            *&self->_anon_7c[4 * v149 + 996] = v148;
            if ((v373.i8[0] & 1) == 0)
            {
              goto LABEL_262;
            }

            if (++v147 == 3)
            {
              v150 = 0;
              v373.i8[0] = 0;
              while (1)
              {
                v151 = [v136 cmi_intValueFromArrayWithKey:@"CSCMin" forIndex:v150 defaultValue:0 found:&v373];
                v152 = v150;
                if ((v150 & 0xFFFFFFFE) != 0)
                {
                  v152 = 2;
                }

                *&self->_anon_7c[4 * v152 + 948] = v151;
                if ((v373.i8[0] & 1) == 0)
                {
                  goto LABEL_262;
                }

                if (++v150 == 3)
                {
                  v153 = 0;
                  v373.i8[0] = 0;
                  while (1)
                  {
                    v154 = [v136 cmi_intValueFromArrayWithKey:@"CSCMax" forIndex:v153 defaultValue:0 found:&v373];
                    v155 = v153;
                    if ((v153 & 0xFFFFFFFE) != 0)
                    {
                      v155 = 2;
                    }

                    *&self->_anon_7c[4 * v155 + 964] = v154;
                    if ((v373.i8[0] & 1) == 0)
                    {
                      goto LABEL_262;
                    }

                    if (++v153 == 3)
                    {
                      v373.i8[0] = 0;
                      *&self->_anon_7c[1012] = [v136 cmi_intValueForKey:@"CSCChromaScale0" defaultValue:0 found:&v373];
                      if (v373.i8[0])
                      {
                        v373.i8[0] = 0;
                        *&self->_anon_7c[1016] = [v136 cmi_intValueForKey:@"CSCChromaScale1" defaultValue:0 found:&v373];
                        if (v373.i8[0])
                        {
                          v89 = 0;
                          *&self->_anon_7c[1012] = vmul_f32(*&self->_anon_7c[1012], 0x3900000039000000);
                          goto LABEL_111;
                        }
                      }

                      goto LABEL_262;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_262:
  LODWORD(v232) = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
  v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v239, v258, v277);
LABEL_111:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v89)
  {
    goto LABEL_275;
  }

  v156 = [v337 objectForKeyedSubscript:@"Histogram"];
  v157 = [v156 objectForKeyedSubscript:@"Config"];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v373.i8[0] = 0;
  self->_anon_7c[1028] = [v157 cmi_intValueForKey:@"Enable" defaultValue:0 found:&v373] != 0;
  if (v373.i8[0])
  {
    v373.i8[0] = 0;
    self->_anon_7c[1029] = [v157 cmi_intValueForKey:@"CountClipEnable" defaultValue:0 found:&v373] != 0;
    if (v373.i8[0])
    {
      v158 = 0;
      v373.i8[0] = 0;
      while (1)
      {
        v159 = [v157 cmi_intValueFromArrayWithKey:@"DBOffset" forIndex:v158 defaultValue:0 found:&v373];
        v160 = v158;
        if ((v158 & 0xFFFFFFFE) != 0)
        {
          v160 = 2;
        }

        *&self->_anon_7c[4 * v160 + 1172] = v159;
        if ((v373.i8[0] & 1) == 0)
        {
          break;
        }

        if (++v158 == 3)
        {
          v161 = 0;
          v373.i8[0] = 0;
          while (1)
          {
            v162 = [v157 cmi_intValueFromArrayWithKey:@"DBMin" forIndex:v161 defaultValue:0 found:&v373];
            v163 = v161;
            if ((v161 & 0xFFFFFFFE) != 0)
            {
              v163 = 2;
            }

            *&self->_anon_7c[4 * v163 + 1156] = v162;
            if ((v373.i8[0] & 1) == 0)
            {
              goto LABEL_263;
            }

            if (++v161 == 3)
            {
              v164 = 0;
              v373.i8[0] = 0;
              while (1)
              {
                v165 = [v157 cmi_intValueFromArrayWithKey:@"DBMax" forIndex:v164 defaultValue:0 found:&v373];
                v166 = v164;
                if ((v164 & 0xFFFFFFFE) != 0)
                {
                  v166 = 2;
                }

                *&self->_anon_7c[4 * v166 + 1140] = v165;
                if ((v373.i8[0] & 1) == 0)
                {
                  goto LABEL_263;
                }

                if (++v164 == 3)
                {
                  v167 = 0;
                  v373.i8[0] = 0;
                  v168 = &self->_anon_7c[1124];
                  while (1)
                  {
                    v169 = [v157 cmi_intValueFromArrayWithKey:@"DBGain" forIndex:v167 defaultValue:0 found:&v373];
                    v170 = v167;
                    if ((v167 & 0xFFFFFFFE) != 0)
                    {
                      v170 = 2;
                    }

                    v168->f32[v170] = v169;
                    if ((v373.i8[0] & 1) == 0)
                    {
                      goto LABEL_263;
                    }

                    if (++v167 == 3)
                    {
                      *v168 = vmulq_f32(*v168, vdupq_n_s32(0x38800000u));
                      v373.i8[0] = 0;
                      v171 = [v157 objectForKeyedSubscript:@"Region"];
                      *&self->_anon_7c[1030] = [v171 cmi_intValueForKey:@"StartX" defaultValue:0 found:&v373];

                      if (v373.i8[0])
                      {
                        v373.i8[0] = 0;
                        v172 = [v157 objectForKeyedSubscript:@"Region"];
                        *&self->_anon_7c[1032] = [v172 cmi_intValueForKey:@"StartY" defaultValue:0 found:&v373];

                        if (v373.i8[0])
                        {
                          *&self->_anon_7c[1030] >>= 2;
                          *&self->_anon_7c[1032] >>= 2;
                          v373.i8[0] = 0;
                          v173 = [v157 objectForKeyedSubscript:@"Region"];
                          *&self->_anon_7c[1034] = [v173 cmi_intValueForKey:@"EndX" defaultValue:0 found:&v373];

                          if (v373.i8[0])
                          {
                            v373.i8[0] = 0;
                            v174 = [v157 objectForKeyedSubscript:@"Region"];
                            *&self->_anon_7c[1036] = [v174 cmi_intValueForKey:@"EndY" defaultValue:0 found:&v373];

                            if (v373.i8[0])
                            {
                              *&self->_anon_7c[1034] >>= 2;
                              *&self->_anon_7c[1036] >>= 2;
                              v373.i8[0] = 0;
                              *&self->_anon_7c[1040] = [v157 cmi_intValueForKey:@"C1Offset" defaultValue:0 found:&v373];
                              if (v373.i8[0])
                              {
                                v373.i8[0] = 0;
                                *&self->_anon_7c[1044] = [v157 cmi_intValueForKey:@"C2Offset" defaultValue:0 found:&v373];
                                if (v373.i8[0])
                                {
                                  v373.i8[0] = 0;
                                  *&self->_anon_7c[1048] = [v157 cmi_intValueForKey:@"C1Scale" defaultValue:0 found:&v373];
                                  if (v373.i8[0])
                                  {
                                    v373.i8[0] = 0;
                                    v175 = [v157 cmi_intValueForKey:@"C2Scale" defaultValue:0 found:&v373];
                                    *&self->_anon_7c[1052] = v175;
                                    if (v373.i8[0])
                                    {
                                      v176 = 0;
                                      v177.i32[0] = *&self->_anon_7c[1048];
                                      v177.f32[1] = v175;
                                      *&self->_anon_7c[1048] = vmul_f32(v177, vdup_n_s32(0x37800000u));
                                      v373.i8[0] = 0;
                                      while (1)
                                      {
                                        *&self->_anon_7c[2 * v176 + 1056] = [v157 cmi_intValueFromArrayWithKey:@"Count" forIndex:v176 defaultValue:0 found:&v373];
                                        if ((v373.i8[0] & 1) == 0)
                                        {
                                          break;
                                        }

                                        if (++v176 == 16)
                                        {
                                          v178 = 0;
                                          v373.i8[0] = 0;
                                          while (1)
                                          {
                                            *&self->_anon_7c[2 * v178 + 1088] = [v157 cmi_intValueFromArrayWithKey:@"YThd" forIndex:v178 defaultValue:0 found:&v373];
                                            if ((v373.i8[0] & 1) == 0)
                                            {
                                              goto LABEL_263;
                                            }

                                            if (++v178 == 15)
                                            {
                                              v89 = 0;
                                              *&self->_anon_7c[1118] = -1;
                                              goto LABEL_153;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      goto LABEL_263;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_263:
  LODWORD(v232) = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
  v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v240, v259, v278);
LABEL_153:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v89)
  {
    goto LABEL_275;
  }

  v179 = [v337 objectForKeyedSubscript:@"PixelFilter"];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v180 = [v179 objectAtIndexedSubscript:0];
  v373.i8[0] = 0;
  self->_anon_7c[1188] = [v180 cmi_intValueForKey:@"CondSel" defaultValue:0 found:&v373];
  if (v373.i8[0] & 1) != 0 && (v373.i8[0] = 0, self->_anon_7c[1189] = [v180 cmi_intValueForKey:@"StatSel" defaultValue:0 found:&v373], (v373.i8[0]) && (v373.i8[0] = 0, self->_anon_7c[1190] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"CountClipEnable", 0, &v373) != 0, (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1192] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"LumaMin", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1196] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"LumaMax", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1200] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"C1Min", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1204] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"C1Max", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1208] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"C2Min", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1212] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"C2Max", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1216] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"LineMax", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1220] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"LineOffset", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1224] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"LineDeltaC1", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1228] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"LineDeltaC2", 0, &v373), (v373.i8[0]))
  {
    v89 = 0;
  }

  else
  {
    LODWORD(v232) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
    v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v247, v266, v285);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v89)
  {
    goto LABEL_275;
  }

  v181 = [v337 objectForKeyedSubscript:@"PixelFilter"];
  v182 = [v181 objectAtIndexedSubscript:0];
  v183 = 0;
  v373.i8[0] = 0;
  v184 = &self->_anon_7c[1300];
  while (1)
  {
    v185 = [v182 cmi_intValueFromArrayWithKey:@"DBGain" forIndex:v183 defaultValue:0 found:&v373];
    v186 = v183;
    if ((v183 & 0xFFFFFFFE) != 0)
    {
      v186 = 2;
    }

    v184->f32[v186] = v185;
    if ((v373.i8[0] & 1) == 0)
    {
      break;
    }

    if (++v183 == 3)
    {
      v187 = 0;
      *v184 = vmulq_f32(*v184, vdupq_n_s32(0x38800000u));
      v373.i8[0] = 0;
      while (1)
      {
        v188 = [v182 cmi_intValueFromArrayWithKey:@"DBOffset" forIndex:v187 defaultValue:0 found:&v373];
        v189 = v187;
        if ((v187 & 0xFFFFFFFE) != 0)
        {
          v189 = 2;
        }

        *&self->_anon_7c[4 * v189 + 1284] = v188;
        if ((v373.i8[0] & 1) == 0)
        {
          goto LABEL_251;
        }

        if (++v187 == 3)
        {
          v89 = 0;
          goto LABEL_186;
        }
      }
    }
  }

LABEL_251:
  LODWORD(v232) = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
  v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v235, v254, v273);
LABEL_186:

  if (v89)
  {
    goto LABEL_275;
  }

  v190 = [v337 objectForKeyedSubscript:@"PixelFilter"];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v191 = [v190 objectAtIndexedSubscript:1];
  v373.i8[0] = 0;
  self->_anon_7c[1232] = [v191 cmi_intValueForKey:@"CondSel" defaultValue:0 found:&v373];
  if (v373.i8[0] & 1) != 0 && (v373.i8[0] = 0, self->_anon_7c[1233] = [v191 cmi_intValueForKey:@"StatSel" defaultValue:0 found:&v373], (v373.i8[0]) && (v373.i8[0] = 0, self->_anon_7c[1234] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"CountClipEnable", 0, &v373) != 0, (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1236] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"LumaMin", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1240] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"LumaMax", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1244] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"C1Min", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1248] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"C1Max", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1252] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"C2Min", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1256] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"C2Max", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1260] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"LineMax", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1264] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"LineOffset", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1268] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"LineDeltaC1", 0, &v373), (v373.i8[0]) && (v373.i8[0] = 0, *&self->_anon_7c[1272] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"LineDeltaC2", 0, &v373), (v373.i8[0]))
  {
    v89 = 0;
  }

  else
  {
    LODWORD(v232) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
    v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v248, v267, v286);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v89)
  {
    goto LABEL_275;
  }

  v192 = [v337 objectForKeyedSubscript:@"PixelFilter"];
  v193 = [v192 objectAtIndexedSubscript:1];
  v194 = 0;
  v373.i8[0] = 0;
  v195 = &self->_anon_7c[1332];
  while (1)
  {
    v196 = [v193 cmi_intValueFromArrayWithKey:@"DBGain" forIndex:v194 defaultValue:0 found:&v373];
    v197 = v194;
    if ((v194 & 0xFFFFFFFE) != 0)
    {
      v197 = 2;
    }

    v195->f32[v197] = v196;
    if ((v373.i8[0] & 1) == 0)
    {
      break;
    }

    if (++v194 == 3)
    {
      v198 = 0;
      *v195 = vmulq_f32(*v195, vdupq_n_s32(0x38800000u));
      v373.i8[0] = 0;
      while (1)
      {
        v199 = [v193 cmi_intValueFromArrayWithKey:@"DBOffset" forIndex:v198 defaultValue:0 found:&v373];
        v200 = v198;
        if ((v198 & 0xFFFFFFFE) != 0)
        {
          v200 = 2;
        }

        *&self->_anon_7c[4 * v200 + 1316] = v199;
        if ((v373.i8[0] & 1) == 0)
        {
          goto LABEL_252;
        }

        if (++v198 == 3)
        {
          v89 = 0;
          goto LABEL_217;
        }
      }
    }
  }

LABEL_252:
  LODWORD(v232) = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
  v89 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v236, v255, v274);
LABEL_217:

  if (v89 || ([v337 objectForKeyedSubscript:@"Tile"], v201 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v336, "validRectInBufferCoords"), v202 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v336, "regionOfInterestRectInBufferCoords"), v203 = objc_claimAutoreleasedReturnValue(), v89 = -[AWBStatistics configWindowsV2:metadata:tilesConfig:validRect:regionOfInterestRect:](self, "configWindowsV2:metadata:tilesConfig:validRect:regionOfInterestRect:", &self->_anon_7c[1388], v332, v201, v202, v203), v203, v202, v201, v89) || (objc_msgSend(v337, "objectForKeyedSubscript:", @"Tile"), v204 = objc_claimAutoreleasedReturnValue(), v89 = configTilesV2(&self->_anon_7c[1444], v204), v204, v89))
  {
LABEL_275:
    LODWORD(v232) = v89;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
  }

  else
  {
    v205 = configLSC(&self->_anon_7c[1348], v332, infoCopy, intValue2);
    v89 = v205;
    if (v205)
    {
      goto LABEL_228;
    }

    *&self->_anon_7c[2592] = [(NSNumber *)self->_digitalFlash intValue];
    v206 = self->_faceAssistedBehaviorMode;
    if (!v206)
    {
      LODWORD(v232) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
      v230 = [MEMORY[0x1E696AD98] numberWithInt:0];
      v231 = self->_faceAssistedBehaviorMode;
      self->_faceAssistedBehaviorMode = v230;

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v246, v265, v284);
      v206 = self->_faceAssistedBehaviorMode;
    }

    v207 = [MEMORY[0x1E696AD98] numberWithInt:{-[NSNumber intValue](v206, "intValue")}];
    v208 = self->_faceAssistedBehaviorMode;
    self->_faceAssistedBehaviorMode = v207;

    if ([(NSNumber *)self->_faceAssistedBehaviorMode intValue]== 2 || [(NSNumber *)self->_faceAssistedBehaviorMode intValue]== 3)
    {
      _loadANSTNetwork = [(AWBStatistics *)self _loadANSTNetwork];
      if (_loadANSTNetwork)
      {
        LODWORD(v232) = _loadANSTNetwork;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v249, v268, v287);
      }
    }

    v205 = configLinearRGBToANSTInput(&self->_anon_7c[1476], v332);
    v89 = v205;
    if (v205)
    {
LABEL_228:
      LODWORD(v232) = v205;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v232, v305, v270, v290, v293, v295, v298, v300);
    }
  }

LABEL_229:
  if (dword_1EDD78228)
  {
    v380[0] = 0;
    v379 = OS_LOG_TYPE_DEFAULT;
    v210 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v211 = v380[0];
    v212 = v210;
    v213 = v379;
    v333 = v212;
    if (os_log_type_enabled(v212, v379))
    {
      v214 = v211;
    }

    else
    {
      v214 = v211 & 0xFFFFFFFE;
    }

    if (v214)
    {
      imageTex = [v336 imageTex];
      clippedTex = [v336 clippedTex];
      lscGainsTex = [v336 lscGainsTex];
      v310 = v213;
      v306 = lscGainsTex != 0;
      v325 = lscGainsTex;
      skinMask = [v336 skinMask];
      v302 = skinMask != 0;
      v323 = skinMask;
      skyMask = [v336 skyMask];
      v301 = skyMask != 0;
      v321 = skyMask;
      firstPixel2 = [v336 firstPixel];
      v297 = [firstPixel2 intValue] > 0;
      cfaLayout2 = [v336 cfaLayout];
      v296 = [cfaLayout2 intValue] > 0;
      downsizeFactor2 = [v336 downsizeFactor];
      v292 = [downsizeFactor2 intValue] > 0;
      digitalFlash2 = [v336 digitalFlash];
      intValue4 = [digitalFlash2 intValue];
      skipDemosaic2 = [v336 skipDemosaic];
      intValue5 = [skipDemosaic2 intValue];
      lscMaxGain2 = [v336 lscMaxGain];
      [lscMaxGain2 floatValue];
      v219 = v218 > 0.0;
      faceAssistedBehaviorMode2 = [v336 faceAssistedBehaviorMode];
      intValue6 = [faceAssistedBehaviorMode2 intValue];
      validRectInSensorReadoutCoords = [v336 validRectInSensorReadoutCoords];
      v222 = stringFromCGRectDictionaryRepresentation(validRectInSensorReadoutCoords);
      validRectInBufferCoords = [v336 validRectInBufferCoords];
      v224 = stringFromCGRectDictionaryRepresentation(validRectInBufferCoords);
      regionOfInterestRectInBufferCoords = [v336 regionOfInterestRectInBufferCoords];
      v226 = stringFromCGRectDictionaryRepresentation(regionOfInterestRectInBufferCoords);
      v341 = 136318978;
      v342 = "[AWBStatistics configWithModuleConfig:metadata:cameraInfo:awbParams:]";
      v343 = 1024;
      v344 = imageTex != 0;
      v345 = 1024;
      v346 = clippedTex != 0;
      v347 = 1024;
      v348 = v306;
      v349 = 1024;
      v350 = v302;
      v351 = 1024;
      v352 = v301;
      v353 = 1024;
      v354 = v297;
      v355 = 1024;
      v356 = v296;
      v357 = 1024;
      v358 = v292;
      v359 = 1024;
      v360 = intValue4;
      v361 = 1024;
      v362 = intValue5;
      v363 = 1024;
      v364 = v219;
      v365 = 1024;
      v366 = intValue6;
      v367 = 2112;
      v368 = v222;
      v369 = 2112;
      v370 = v224;
      v371 = 2112;
      v372 = v226;
      LODWORD(v251) = 114;
      v227 = v333;
      _os_log_send_and_compose_impl(v214, 0, &v373, 128, &dword_1C92CA000, v333, v310, "<<<< AWBStats >>>> %s: it:%d ct:%d lgt:%d sim:%d sym:%d fp:%d cl:%d dfa:%d dfl:%d sd:%d lmg:%d fabm:%d vrs:%@ vr:%@ roi:%@", &v341, v251);
    }

    else
    {
      v227 = v333;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v89;
}

- (int)_adjustConfigToValidRectInBufferCoords:(id)coords validRectInSensorReadoutCoords:(id)readoutCoords regionOfInterestRectInBufferCoords:(id)bufferCoords
{
  coordsCopy = coords;
  readoutCoordsCopy = readoutCoords;
  bufferCoordsCopy = bufferCoords;
  v11 = *(MEMORY[0x1E695F058] + 16);
  v81.origin = *MEMORY[0x1E695F058];
  v81.size = v11;
  valid = _configStatsDownsizeRatioRuntimeWithValidRect(&self->_awbStatCfg, coordsCopy, [(NSNumber *)self->_downsizeFactor unsignedIntValue]);
  v13 = valid;
  if (valid)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", valid, v5, v64, v68, v70, bufferCoordsCopy, *v73, *&v73[8]);
    goto LABEL_37;
  }

  v14 = coordsCopy;
  v15 = readoutCoordsCopy;
  memset(&rect, 0, sizeof(rect));
  memset(v73, 0, 32);
  if (CGRectMakeWithDictionaryRepresentation(v14, &rect) && ([v14 objectForKeyedSubscript:@"FullWidth"], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "intValue"), v16, objc_msgSend(v14, "objectForKeyedSubscript:", @"FullHeight"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "intValue"), v18, v17) && v19 && (rect.size.width <= v17 ? (v20 = rect.size.height > v19) : (v20 = 1), !v20))
  {
    if (!v15)
    {
      goto LABEL_20;
    }

    if (CGRectMakeWithDictionaryRepresentation(v15, v73))
    {
      if (rect.size.width <= *&v73[16] && rect.size.height <= *&v73[24])
      {
        v21 = *&v73[8];
        *&self->_anon_7c[1380] = *v73;
LABEL_24:
        *&self->_anon_7c[1382] = v21;

        goto LABEL_25;
      }

      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v64, v68, v70, bufferCoordsCopy, *v73, *&v73[8]);
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, v63, v67);
LABEL_20:
      v23 = self->_awbStatCfg.layout == 3 && sqrtf((v19 * v17 / 199584)) <= 8.0;
      height = rect.size.height;
      *&self->_anon_7c[1380] = (((v17 << v23) - rect.size.width) * 0.5);
      v21 = ((v19 << v23) - height) * 0.5;
      goto LABEL_24;
    }

    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v64, v68, v70, bufferCoordsCopy, *v73, *&v73[8]);
    v22 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, v62, v66);
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v64, v68, v70, bufferCoordsCopy, *v73, *&v73[8]);
    v22 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, v61, v65);
  }

  v13 = v22;

  if (v13)
  {
    LODWORD(v56) = v13;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, v5, v64, v68, v70, bufferCoordsCopy, *v73, *&v73[8]);
    goto LABEL_37;
  }

LABEL_25:
  v25 = _configStatsROIRuntimeWithRegionOfInterestRect(&self->_awbStatCfg, v14, bufferCoordsCopy, &v81);
  v13 = v25;
  if (v25)
  {
    LODWORD(v56) = v25;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, v5, v64, v68, v70, bufferCoordsCopy, *v73, *&v73[8]);
  }

  else
  {
    v26 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
      v27 = *v26 == 1;
    }

    else
    {
      v27 = 0;
    }

    v28 = vmulq_f64(vmulq_f64(v81.size, vdupq_n_s64(0x3FEF333333333333uLL)), vdupq_n_s64(0x3FA0000000000000uLL));
    __asm
    {
      FMOV            V3.2D, #2.0
      FMOV            V4.2D, #0.5
    }

    *&v28.f64[0] = vshl_n_s32(vand_s8(vmovn_s64(vcvtq_n_u64_f64(vrndmq_f64(vmulq_f64(vbslq_s8(vcgtq_f64(_Q3, v28), _Q3, v28), _Q4)), 1uLL)), 0xFFFF0000FFFFLL), 5uLL);
    v35.i64[0] = LODWORD(v28.f64[0]);
    v35.i64[1] = HIDWORD(v28.f64[0]);
    __asm { FMOV            V5.2D, #0.25 }

    v37 = vaddq_f64(v81.size, v81.origin);
    v38 = vmlaq_f64(v81.origin, _Q3, vrndmq_f64(vmulq_f64(vsubq_f64(v81.size, vcvtq_f64_u64(v35)), _Q5)));
    v39 = vmovn_s64(vcvtq_s64_f64(vbicq_s8(v38, vcltzq_f64(v38))));
    *&v28.f64[0] = vadd_s32(*&v28.f64[0], v39);
    v35.i64[0] = SLODWORD(v28.f64[0]);
    v35.i64[1] = SHIDWORD(v28.f64[0]);
    v40 = vcvtq_f64_s64(v35);
    *&_Q3.f64[0] = vmovn_s64(vcgtq_f64(v37, v40));
    v41 = BYTE4(_Q3.f64[0]);
    if (LOBYTE(_Q3.f64[0]))
    {
      v42 = v40.f64[0];
    }

    else
    {
      v42 = v37.f64[0];
    }

    v43 = v40.f64[1];
    if ((v41 & 1) == 0)
    {
      v43 = v37.f64[1];
    }

    *&self->_anon_7c[1030] = v39.i16[0];
    *&self->_anon_7c[1032] = v39.i16[2];
    *&self->_anon_7c[1034] = v42;
    *&self->_anon_7c[1036] = v43;
    if (v27)
    {
      kdebug_trace();
    }

    _configTilesRuntimeWithValidRect(&self->_anon_7c[1444], &v81);
    v13 = 0;
  }

LABEL_37:
  if (dword_1EDD78228)
  {
    v80 = 0;
    v79 = OS_LOG_TYPE_DEFAULT;
    v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v45 = v80;
    v46 = v44;
    v47 = v79;
    if (os_log_type_enabled(v46, v79))
    {
      v48 = v45;
    }

    else
    {
      v48 = v45 & 0xFFFFFFFE;
    }

    if (v48)
    {
      v69 = readoutCoordsCopy;
      v71 = coordsCopy;
      unsignedIntValue = [(NSNumber *)self->_downsizeFactor unsignedIntValue];
      v50 = stringFromCGRectDictionaryRepresentation(readoutCoordsCopy);
      v51 = stringFromCGRectDictionaryRepresentation(coordsCopy);
      v52 = stringFromCGRectDictionaryRepresentation(bufferCoordsCopy);
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v81);
      v54 = stringFromCGRectDictionaryRepresentation(DictionaryRepresentation);
      *v73 = 136316418;
      *&v73[4] = "[AWBStatistics _adjustConfigToValidRectInBufferCoords:validRectInSensorReadoutCoords:regionOfInterestRectInBufferCoords:]";
      *&v73[12] = 1024;
      *&v73[14] = unsignedIntValue;
      *&v73[18] = 2112;
      *&v73[20] = v50;
      *&v73[28] = 2112;
      *&v73[30] = v51;
      v74 = 2112;
      v75 = v52;
      v76 = 2112;
      v77 = v54;
      LODWORD(v60) = 58;
      _os_log_send_and_compose_impl(v48, 0, &rect, 128, &dword_1C92CA000, v46, v47, "<<<< AWBStats >>>> %s: dfa:%d vrs:%@ vr:%@ roi:%@ sroi:%@", v73, v60);

      readoutCoordsCopy = v69;
      coordsCopy = v71;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v13;
}

- (int)process:(id)process clipped:(id)clipped lscGainsTex:(id)tex validRectInBufferCoords:(id)coords validRectInSensorReadoutCoords:(id)readoutCoords awbStatsBuffer:(id)buffer awbTileStatsConfig:(id *)config anstSkinMask:(id)self0 anstSkinMaskData:(id *)self1 skyMaskTex:(id)self2 skyMaskData:(id *)self3 regionOfInterestRectInBufferCoords:(id)self4 downsizeFactor:(unsigned int *)self5
{
  processCopy = process;
  clippedCopy = clipped;
  texCopy = tex;
  coordsCopy = coords;
  readoutCoordsCopy = readoutCoords;
  bufferCopy = buffer;
  maskCopy = mask;
  maskTexCopy = maskTex;
  bufferCoordsCopy = bufferCoords;
  location = 0;
  v225[0] = 0;
  v22 = *MEMORY[0x1E6966020];
  v222[0] = *MEMORY[0x1E69660D8];
  v222[1] = v22;
  v223[0] = MEMORY[0x1E695E0F8];
  v223[1] = &unk_1F48E6198;
  v182 = coordsCopy;
  pixelBufferAttributes = [MEMORY[0x1E695DF20] dictionaryWithObjects:v223 forKeys:v222 count:2];
  v220 = 0;
  pixelBufferOut = 0;
  v219 = 0;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v218 = 0;
  v216 = 0u;
  v217 = 0u;
  v215 = 0u;
  [processCopy pixelFormat];
  MTLPixelFormatGetInfo();
  v214 = 0;
  v23 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v23;
  if (!CGRectMakeWithDictionaryRepresentation(coordsCopy, &rect))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v177, v163, v177, v178, bufferCoordsCopy, readoutCoordsCopy, coordsCopy);
    v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v138, v151, v165);
    v188 = 0;
LABEL_129:
    v93 = 0;
    v87 = 0;
    v77 = 0;
    goto LABEL_130;
  }

  v24 = [(AWBStatistics *)self _adjustConfigToValidRectInBufferCoords:coordsCopy validRectInSensorReadoutCoords:readoutCoordsCopy regionOfInterestRectInBufferCoords:bufferCoordsCopy];
  v25 = v24;
  if (v24)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v177, v163, v177, v178, bufferCoordsCopy, readoutCoordsCopy, coordsCopy);
    v188 = 0;
    v93 = 0;
    v87 = 0;
    v77 = 0;
    v75 = 0;
    v191 = 0;
    goto LABEL_61;
  }

  downsizeRatio = self->_awbStatCfg.downsizeRatio;
  v27 = *&self->_anon_7c[1464] * downsizeRatio;
  v28 = *&self->_anon_7c[1466] * downsizeRatio;
  config->var0 = self->_anon_7c[1444];
  v29 = vmulq_s32(*&self->_anon_7c[1448], vdupq_n_s32(downsizeRatio));
  *&config->var1 = v29;
  config->var5 = v27;
  config->var6 = v28;
  v30 = (*&self->_anon_7c[1456] - *&self->_anon_7c[1448]) / *&self->_anon_7c[1464];
  if (v30 >= 32)
  {
    v30 = 32;
  }

  v179 = v30;
  if ((*&self->_anon_7c[1460] - *&self->_anon_7c[1452]) / *&self->_anon_7c[1466] >= 32)
  {
    v31 = 32;
  }

  else
  {
    v31 = (*&self->_anon_7c[1460] - *&self->_anon_7c[1452]) / *&self->_anon_7c[1466];
  }

  *factor = downsizeRatio;
  if (maskCopy)
  {
    LODWORD(v188) = [(NSNumber *)self->_faceAssistedBehaviorMode intValue]== 1;
  }

  else
  {
    LODWORD(v188) = 0;
  }

  espressoPlan = self->_espressoPlan;
  if (espressoPlan)
  {
    if ([(NSNumber *)self->_faceAssistedBehaviorMode intValue]== 2)
    {
      HIDWORD(v188) = 1;
      goto LABEL_18;
    }

    LODWORD(espressoPlan) = [(NSNumber *)self->_faceAssistedBehaviorMode intValue]== 3;
  }

  HIDWORD(v188) = espressoPlan;
  if (((v188 | espressoPlan) & 1) == 0)
  {
    HIDWORD(v188) = 0;
    goto LABEL_20;
  }

LABEL_18:
  v29.i64[0] = *&rect.size.width;
  v214 = rect.size.width < rect.size.height;
LABEL_20:
  if (v188 && ([maskCopy width] <= 0xFF && objc_msgSend(maskCopy, "height") <= 0xBF || objc_msgSend(maskCopy, "pixelFormat") != 25 && objc_msgSend(maskCopy, "pixelFormat") != 55 && objc_msgSend(maskCopy, "pixelFormat") != 10 && objc_msgSend(maskCopy, "pixelFormat") != 20))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, coordsCopy);
    v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v146, v159, v173);
    LODWORD(v188) = 1;
    goto LABEL_129;
  }

  if (!HIDWORD(v188))
  {
    v34 = 0;
    goto LABEL_32;
  }

  v33 = objc_opt_new();
  v34 = v33;
  if (!v33)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);
    v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v141, v154, v168);
    HIDWORD(v188) = 1;
    goto LABEL_129;
  }

  desc = [v33 desc];
  [desc setTextureType:2];

  desc2 = [v34 desc];
  [desc2 setPixelFormat:113];

  width = [processCopy width];
  v38 = self->_awbStatCfg.downsizeRatio;
  desc3 = [v34 desc];
  [desc3 setWidth:width / v38];

  height = [processCopy height];
  v41 = self->_awbStatCfg.downsizeRatio;
  desc4 = [v34 desc];
  [desc4 setHeight:height / v41];

  desc5 = [v34 desc];
  [desc5 setDepth:1];

  desc6 = [v34 desc];
  [desc6 setArrayLength:1];

  desc7 = [v34 desc];
  [desc7 setStorageMode:0];

  desc8 = [v34 desc];
  [desc8 setUsage:7];

  [v34 setLabel:0];
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  v48 = [allocator newTextureWithDescriptor:v34];
  v49 = v225[0];
  v225[0] = v48;

  if (!v225[0])
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);
    v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v137, v150, v164);
    HIDWORD(v188) = 1;
LABEL_111:
    v93 = 0;
    v87 = 0;
    v77 = v34;
LABEL_130:
    v75 = 0;
    v191 = 0;
    goto LABEL_61;
  }

LABEL_32:
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);
    v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v139, v152, v166);
    goto LABEL_111;
  }

  v191 = commandBuffer;
  if (*MEMORY[0x1E695FF58])
  {
    commandQueue2 = [commandBuffer commandQueue];
    commandBuffer2 = [commandQueue2 commandBuffer];

    [commandBuffer2 setLabel:@"KTRACE_MTLCMDBUF"];
    [commandBuffer2 addCompletedHandler:&__block_literal_global_3];
    [commandBuffer2 commit];
    [commandBuffer addCompletedHandler:&__block_literal_global_102];
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);
    v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v140, v153, v167);
    v93 = 0;
    v87 = 0;
    v77 = v34;
    v75 = 0;
    goto LABEL_61;
  }

  v55 = DWORD2(v215);
  v192 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_resetMtlBufferPipelineState];
  [v192 setBuffer:bufferCopy offset:0 atIndex:1];
  *&v208[0] = [bufferCopy length] >> 2;
  *(v208 + 8) = vdupq_n_s64(1uLL);
  v193[0] = [(MTLComputePipelineState *)self->_resetMtlBufferPipelineState threadExecutionWidth];
  *&v193[1] = *(v208 + 8);
  [v192 dispatchThreads:v208 threadsPerThreadgroup:v193];
  [v192 setTexture:processCopy atIndex:0];
  [v192 setTexture:clippedCopy atIndex:1];
  [v192 setTexture:texCopy atIndex:2];
  self->_anon_7c[2588] = [(NSNumber *)self->_skipDemosaic BOOLValue];
  *&self->_anon_7c[2592] = [(NSNumber *)self->_digitalFlash intValue];
  lscMaxGain = self->_lscMaxGain;
  v57 = 1.0;
  LODWORD(v58) = 1.0;
  if (lscMaxGain)
  {
    [(NSNumber *)lscMaxGain floatValue];
  }

  *&self->_anon_7c[1356] = LODWORD(v58);
  lscModulationWeight = self->_lscModulationWeight;
  if (lscModulationWeight)
  {
    [(NSNumber *)lscModulationWeight floatValue];
    v57 = v60;
  }

  *&self->_anon_7c[1360] = v57;
  [v192 setBytes:&self->_awbStatCfg length:2608 atIndex:0];
  if (HIDWORD(v188))
  {
    [v192 setTexture:v225[0] atIndex:5];
  }

  if ((v55 & 0x10000) != 0)
  {
    if (self->_awbStatCfg.layout == 3)
    {
      if ([texCopy textureType] != 3)
      {
LABEL_131:
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);
        v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v147, v160, v174);
LABEL_135:
        v93 = 0;
        v87 = 0;
        v77 = v34;
        goto LABEL_136;
      }

      [v192 setComputePipelineState:self->_computeAWBStatsQuadraFastPipelineState];
      threadExecutionWidth = [(MTLComputePipelineState *)self->_computeAWBStatsQuadraFastPipelineState threadExecutionWidth];
      maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_computeAWBStatsQuadraFastPipelineState maxTotalThreadsPerThreadgroup];
      width2 = [processCopy width];
      v65 = self->_awbStatCfg.downsizeRatio;
      v66 = [processCopy height] / v65;
      *&v208[0] = width2 / v65;
      *(&v208[0] + 1) = v66;
      *&v208[1] = 1;
      v193[0] = threadExecutionWidth;
      v193[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
      v193[2] = 1;
      [v192 dispatchThreads:v208 threadsPerThreadgroup:v193];
    }

    else
    {
      [v192 setComputePipelineState:self->_computeAWBStatsBayerFastPipelineState];
      threadExecutionWidth2 = [(MTLComputePipelineState *)self->_computeAWBStatsBayerFastPipelineState threadExecutionWidth];
      maxTotalThreadsPerThreadgroup2 = [(MTLComputePipelineState *)self->_computeAWBStatsBayerFastPipelineState maxTotalThreadsPerThreadgroup];
      width3 = [processCopy width];
      v70 = self->_awbStatCfg.downsizeRatio;
      v71 = [processCopy height] / v70;
      *&v208[0] = width3 / v70;
      *(&v208[0] + 1) = v71;
      *&v208[1] = 1;
      v193[0] = threadExecutionWidth2;
      v193[1] = maxTotalThreadsPerThreadgroup2 / threadExecutionWidth2;
      v193[2] = 1;
      [v192 dispatchThreads:v208 threadsPerThreadgroup:v193];
    }

    v61 = v192;
  }

  else
  {
    v61 = v192;
    if ((BYTE10(v215) & 1) == 0)
    {
      goto LABEL_131;
    }
  }

  [v61 setComputePipelineState:self->_normTileStatsPipelineState];
  threadExecutionWidth3 = [(MTLComputePipelineState *)self->_normTileStatsPipelineState threadExecutionWidth];
  maxTotalThreadsPerThreadgroup3 = [(MTLComputePipelineState *)self->_normTileStatsPipelineState maxTotalThreadsPerThreadgroup];
  *&v208[0] = v179;
  *(&v208[0] + 1) = v31;
  *&v208[1] = 1;
  v193[0] = threadExecutionWidth3;
  v193[1] = maxTotalThreadsPerThreadgroup3 / threadExecutionWidth3;
  v193[2] = 1;
  [v192 dispatchThreads:v208 threadsPerThreadgroup:v193];
  [v192 setComputePipelineState:self->_normWindowStatsPipelineState];
  threadExecutionWidth4 = [(MTLComputePipelineState *)self->_normWindowStatsPipelineState threadExecutionWidth];
  v75 = v192;
  maxTotalThreadsPerThreadgroup4 = [(MTLComputePipelineState *)self->_normWindowStatsPipelineState maxTotalThreadsPerThreadgroup];
  v208[0] = xmmword_1C9332C60;
  *&v208[1] = 1;
  v193[0] = threadExecutionWidth4;
  v193[1] = maxTotalThreadsPerThreadgroup4 / threadExecutionWidth4;
  v193[2] = 1;
  [v192 dispatchThreads:v208 threadsPerThreadgroup:v193];
  if (v188)
  {
    v77 = objc_opt_new();

    if (v77)
    {
      desc9 = [v77 desc];
      [desc9 setTextureType:2];

      desc10 = [v77 desc];
      [desc10 setPixelFormat:10];

      desc11 = [v77 desc];
      [desc11 setWidth:256];

      desc12 = [v77 desc];
      [desc12 setHeight:192];

      desc13 = [v77 desc];
      [desc13 setDepth:1];

      desc14 = [v77 desc];
      [desc14 setArrayLength:1];

      desc15 = [v77 desc];
      [desc15 setUsage:7];

      desc16 = [v77 desc];
      [desc16 setStorageMode:0];

      [v77 setLabel:0];
      allocator2 = [(FigMetalContext *)self->_metalContext allocator];
      v87 = [allocator2 newTextureWithDescriptor:v77];

      if (v87)
      {
        [v192 setComputePipelineState:self->_resizeANSTPipelineState];
        threadExecutionWidth5 = [(MTLComputePipelineState *)self->_resizeANSTPipelineState threadExecutionWidth];
        v75 = v192;
        maxTotalThreadsPerThreadgroup5 = [(MTLComputePipelineState *)self->_resizeANSTPipelineState maxTotalThreadsPerThreadgroup];
        v90 = maxTotalThreadsPerThreadgroup5 / [(MTLComputePipelineState *)self->_resizeANSTPipelineState threadExecutionWidth];
        [v192 setImageblockWidth:threadExecutionWidth5 height:v90];
        [v192 setTexture:maskCopy atIndex:3];
        [v192 setTexture:v87 atIndex:4];
        [v192 setBytes:&v214 length:1 atIndex:2];
        width4 = [v87 width];
        height2 = [v87 height];
        *&v208[0] = width4;
        *(&v208[0] + 1) = height2;
        *&v208[1] = 1;
        v193[0] = threadExecutionWidth5;
        v193[1] = v90;
        v193[2] = 1;
        [v192 dispatchThreads:v208 threadsPerThreadgroup:v193];
        v93 = 0;
        v25 = 0;
        LODWORD(v188) = 1;
        goto LABEL_61;
      }

      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);
      v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v145, v158, v172);
      LODWORD(v188) = 1;
      v93 = 0;
      v87 = 0;
    }

    else
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);
      v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v143, v156, v170);
      LODWORD(v188) = 1;
      v93 = 0;
      v87 = 0;
      v77 = 0;
    }

LABEL_136:
    v75 = v192;
    goto LABEL_61;
  }

  if (HIDWORD(v188))
  {
    if (CVPixelBufferCreate(*MEMORY[0x1E695E480], 0x200uLL, 0x180uLL, 0x42475241u, pixelBufferAttributes, &pixelBufferOut))
    {
      goto LABEL_134;
    }

    if (!pixelBufferOut)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);
      v99 = 0;
      v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v148, v161, v175);
      v188 = 0x100000000;
      v93 = 0;
      v87 = 0;
      v77 = v34;
      goto LABEL_85;
    }

    v94 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:pixelBufferOut pixelFormat:73 usage:7 plane:0];
    if (!v94)
    {
LABEL_134:
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);
      v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v149, v162, v176);
      v188 = 0x100000000;
      goto LABEL_135;
    }

    [v192 setComputePipelineState:self->_fitWbTmRGBToANSTInputPipelineState];
    [v192 setTexture:v225[0] atIndex:5];
    [v192 setTexture:v94 atIndex:6];
    [v192 setBytes:&v214 length:1 atIndex:2];
    threadExecutionWidth6 = [(MTLComputePipelineState *)self->_fitWbTmRGBToANSTInputPipelineState threadExecutionWidth];
    v75 = v192;
    maxTotalThreadsPerThreadgroup6 = [(MTLComputePipelineState *)self->_fitWbTmRGBToANSTInputPipelineState maxTotalThreadsPerThreadgroup];
    v208[0] = xmmword_1C9332C70;
    *&v208[1] = 1;
    v193[0] = threadExecutionWidth6;
    v193[1] = maxTotalThreadsPerThreadgroup6 / threadExecutionWidth6;
    v193[2] = 1;
    [v192 dispatchThreads:v208 threadsPerThreadgroup:v193];
    v87 = 0;
    v25 = 0;
    v188 = 0x100000000;
    v93 = v94;
  }

  else
  {
    v188 = 0;
    v93 = 0;
    v87 = 0;
    v25 = 0;
  }

  v77 = v34;
LABEL_61:
  v192 = v75;
  [v75 endEncoding];
  [v191 commit];
  [v191 waitUntilCompleted];
  if (!HIDWORD(v188))
  {
    v99 = 0;
    goto LABEL_73;
  }

  [@"input_image" UTF8String];
  v97 = espresso_network_bind_cvpixelbuffer();
  if (v97)
  {
    goto LABEL_119;
  }

  v98 = *MEMORY[0x1E695E480];
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], 0x100uLL, 0xC0uLL, 0x4C303066u, pixelBufferAttributes, &v220) || !v220)
  {
    goto LABEL_122;
  }

  [@"skin@output" UTF8String];
  v97 = espresso_network_bind_cvpixelbuffer();
  if (v97)
  {
    goto LABEL_119;
  }

  v97 = espresso_plan_execute_sync();
  if (v97)
  {
    goto LABEL_119;
  }

  if (CVPixelBufferCreate(v98, 0x100uLL, 0xC0uLL, 0x4C303038u, pixelBufferAttributes, &v219) || !v219)
  {
LABEL_122:
    LODWORD(v136) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v136, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);
    v135 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v144, v157, v171);
    goto LABEL_123;
  }

  v97 = convertANSTMaskFrom32FloatTo8Uint(v220, v219);
  if (v97)
  {
LABEL_119:
    LODWORD(v136) = v97;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v136, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);
    v135 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v142, v155, v169);
LABEL_123:
    v25 = v135;
    v99 = 0;
LABEL_124:
    HIDWORD(v188) = 1;
    goto LABEL_85;
  }

  v99 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:v219 pixelFormat:10 usage:1 plane:0];
  if (!v99)
  {
    LODWORD(v136) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v136, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);
    v99 = 0;
    v25 = 0;
    goto LABEL_124;
  }

  v25 = 0;
LABEL_73:
  if (v188)
  {
    v100 = v87;
  }

  else
  {
    v100 = v99;
  }

  objc_storeStrong(&location, v100);
  v101 = maskTexCopy;
  if (location)
  {
    [location pixelFormat];
    v210 = 0;
    v209 = 0u;
    memset(v208, 0, sizeof(v208));
    device = [location device];
    MTLPixelFormatGetInfoForDevice();

    v103 = *(&v208[1] + 1);
    v104 = [location width] * v103;
    v105 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(location, "height") * v104}];
    v106 = v105;
    v179 = v25;
    if (!v105 || (v107 = location, v108 = [v105 mutableBytes], v109 = objc_msgSend(location, "width"), v110 = objc_msgSend(location, "height"), memset(v193, 0, sizeof(v193)), v194 = v109, *&v195 = v110, *(&v195 + 1) = 1, objc_msgSend(v107, "getBytes:bytesPerRow:fromRegion:mipmapLevel:", v108, v104, v193, 0), !data))
    {
      LODWORD(v136) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v136, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);

      v25 = v179;
      goto LABEL_85;
    }

    v111 = v106;
    *data = v106;

    v101 = maskTexCopy;
    v25 = v179;
  }

  if (v101)
  {
    [v101 pixelFormat];
    v210 = 0;
    v209 = 0u;
    memset(v208, 0, sizeof(v208));
    device2 = [v101 device];
    MTLPixelFormatGetInfoForDevice();

    v113 = *(&v208[1] + 1);
    v114 = [maskTexCopy width] * v113;
    v115 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(maskTexCopy, "height") * v114}];
    v116 = v115;
    if (v115 && (v117 = [v115 mutableBytes], v118 = objc_msgSend(maskTexCopy, "width"), v119 = objc_msgSend(maskTexCopy, "height"), memset(v193, 0, sizeof(v193)), v194 = v118, *&v195 = v119, *(&v195 + 1) = 1, objc_msgSend(maskTexCopy, "getBytes:bytesPerRow:fromRegion:mipmapLevel:", v117, v114, v193, 0), maskData))
    {
      v120 = v116;
      *maskData = v116;
    }

    else
    {
      LODWORD(v136) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v136, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);
    }
  }

LABEL_85:
  FigMetalDecRef();
  FigMetalDecRef();
  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(v220);
  CVPixelBufferRelease(v219);
  if (dword_1EDD78228)
  {
    v121 = v25;
    v212 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v122 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v123 = v212;
    v124 = type;
    if (os_log_type_enabled(v122, type))
    {
      v125 = v123;
    }

    else
    {
      v125 = v123 & 0xFFFFFFFE;
    }

    if (v125)
    {
      v126 = self->_espressoPlan;
      *(v193 + 4) = "[AWBStatistics process:clipped:lscGainsTex:validRectInBufferCoords:validRectInSensorReadoutCoords:awbStatsBuffer:awbTileStatsConfig:anstSkinMask:anstSkinMaskData:skyMaskTex:skyMaskData:regionOfInterestRectInBufferCoords:downsizeFactor:]";
      v127 = v126 != 0;
      LODWORD(v193[0]) = 136318210;
      WORD2(v193[1]) = 1024;
      if (v220)
      {
        v128 = v219 == 0;
      }

      else
      {
        v128 = 1;
      }

      v129 = !v128;
      *(&v193[1] + 6) = processCopy != 0;
      WORD1(v193[2]) = 1024;
      HIDWORD(v193[2]) = clippedCopy != 0;
      LOWORD(v194) = 1024;
      *(&v194 + 2) = texCopy != 0;
      HIWORD(v194) = 1024;
      LODWORD(v195) = maskCopy != 0;
      WORD2(v195) = 1024;
      *(&v195 + 6) = maskTexCopy != 0;
      WORD5(v195) = 1024;
      HIDWORD(v195) = v188;
      v196 = 1024;
      v197 = HIDWORD(v188);
      v198 = 1024;
      v199 = v214;
      v200 = 1024;
      v201 = v127;
      v202 = 1024;
      v203 = pixelBufferOut != 0;
      v204 = 1024;
      v205 = v129;
      v206 = 1024;
      v207 = location != 0;
      _os_log_send_and_compose_impl(v125, 0, v208, 128, &dword_1C92CA000, v122, v124, "<<<< AWBStats >>>> %s: it:%d ct:%d lgt:%d sim:%d sym:%d pesm:%d pism:%d fsmo:%d ep:%d aipb:%d aopb:%d fasm:%d", v193, 84, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182, pixelBufferAttributes, clippedCopy, texCopy, bufferCopy, maskCopy);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v25 = v121;
  }

  if (v25)
  {
    LODWORD(v136) = v25;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v136, v177, v163, v177, v179, bufferCoordsCopy, readoutCoordsCopy, v182);
    if (dword_1EDD78228)
    {
      v212 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v131 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v132 = v212;
      v133 = type;
      if (os_log_type_enabled(v131, type))
      {
        v134 = v132;
      }

      else
      {
        v134 = v132 & 0xFFFFFFFE;
      }

      if (v134)
      {
        LODWORD(v193[0]) = 136315394;
        *(v193 + 4) = "[AWBStatistics process:clipped:lscGainsTex:validRectInBufferCoords:validRectInSensorReadoutCoords:awbStatsBuffer:awbTileStatsConfig:anstSkinMask:anstSkinMaskData:skyMaskTex:skyMaskData:regionOfInterestRectInBufferCoords:downsizeFactor:]";
        WORD2(v193[1]) = 1024;
        *(&v193[1] + 6) = v25;
        _os_log_send_and_compose_impl(v134, 0, v208, 128, &dword_1C92CA000, v131, v133, "<<<< AWBStats >>>> %s: err=%d", v193, 18);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v25;
}

uint64_t __237__AWBStatistics_process_clipped_lscGainsTex_validRectInBufferCoords_validRectInSensorReadoutCoords_awbStatsBuffer_awbTileStatsConfig_anstSkinMask_anstSkinMaskData_skyMaskTex_skyMaskData_regionOfInterestRectInBufferCoords_downsizeFactor___block_invoke()
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void __237__AWBStatistics_process_clipped_lscGainsTex_validRectInBufferCoords_validRectInSensorReadoutCoords_awbStatsBuffer_awbTileStatsConfig_anstSkinMask_anstSkinMaskData_skyMaskTex_skyMaskData_regionOfInterestRectInBufferCoords_downsizeFactor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 status] == 4)
  {
    [v2 GPUEndTime];
    [v2 GPUStartTime];
  }

  else
  {
    [v2 status];
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }
}

+ (int)getTileStatsRegionWithMetadata:(id)metadata cropRectLTMInCoords:(CGRect)coords ltmInDownsamplingRatio:(float)ratio tileStatsRegionLTMInCoordsDictOut:(id *)out
{
  height = coords.size.height;
  width = coords.size.width;
  y = coords.origin.y;
  x = coords.origin.x;
  metadataCopy = metadata;
  v14 = *(MEMORY[0x1E695F058] + 16);
  v44.origin = *MEMORY[0x1E695F058];
  v44.size = v14;
  v15 = [metadataCopy cmi_unsignedIntValueForKey:*MEMORY[0x1E69910B0] defaultValue:1 found:0];
  [metadataCopy cmi_cgRectForKey:*MEMORY[0x1E6991100] defaultValue:0 found:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  if (!v15 || (v20 = v18, v21 = v19, CGRectIsNull(*&v16)))
  {
    v30 = 0;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v36, v37);
    v32 = 0;
  }

  else
  {
    ratioCopy = ratio;
    v37 = @"X";
    ratioCopy = [MEMORY[0x1E696AD98] numberWithDouble:x * ratioCopy];
    v43[0] = ratioCopy;
    v38 = @"Y";
    ratioCopy2 = [MEMORY[0x1E696AD98] numberWithDouble:y * ratioCopy];
    v43[1] = ratioCopy2;
    v39 = @"Width";
    ratioCopy3 = [MEMORY[0x1E696AD98] numberWithDouble:width * ratioCopy];
    v43[2] = ratioCopy3;
    v40 = @"Height";
    ratioCopy4 = [MEMORY[0x1E696AD98] numberWithDouble:height * ratioCopy];
    v43[3] = ratioCopy4;
    v41 = @"FullWidth";
    v27 = v15;
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v20 / v15];
    v43[4] = v28;
    v42 = @"FullHeight";
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:v21 / v27];
    v43[5] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v37 count:6];

    bzero(v45, 0xA30uLL);
    valid = _configStatsDownsizeRatioRuntimeWithValidRect(v45, v30, 8u);
    v32 = valid;
    if (valid || (valid = _configStatsROIRuntimeWithRegionOfInterestRect(v45, v30, 0, &v44), (v32 = valid) != 0))
    {
      v35 = valid;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v35, v6, v37, v38, v39, v40, v41, v42);
    }

    else
    {
      _configTilesRuntimeWithValidRect(&v46, &v44);
      v50.origin.x = (8 * HIDWORD(v46)) / ratioCopy;
      v50.origin.y = (8 * v47) / ratioCopy;
      v50.size.width = (8 * ((v48 - HIDWORD(v46)) & ~((v48 - HIDWORD(v46)) >> 31))) / ratioCopy;
      v50.size.height = (8 * ((v49 - v47) & ~((v49 - v47) >> 31))) / ratioCopy;
      v32 = 0;
      *out = CGRectCreateDictionaryRepresentation(v50);
    }
  }

  return v32;
}

- (int)configWindowsV2:(id *)v2 metadata:(id)metadata tilesConfig:(id)config validRect:(id)rect regionOfInterestRect:(id)interestRect
{
  metadataCopy = metadata;
  configCopy = config;
  rectCopy = rect;
  dict = interestRect;
  v14 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v14;
  v97.origin = rect.origin;
  v97.size = v14;
  v15 = MEMORY[0x1E695EFD0];
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  *&v96.a = *MEMORY[0x1E695EFD0];
  *&v96.c = v16;
  *&v96.tx = *(MEMORY[0x1E695EFD0] + 32);
  v17 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6991108]];
  intValue = [v17 intValue];

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (![metadataCopy count])
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v84, v68, v74, v77, v79, v81, v84);
LABEL_52:
    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, v66, v72);
    v26 = 0;
    v24 = 0;
    goto LABEL_42;
  }

  if (!CGRectMakeWithDictionaryRepresentation(rectCopy, &rect))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v84, v68, v74, v77, v79, v81, v84);
    goto LABEL_52;
  }

  if (!dict)
  {
    goto LABEL_9;
  }

  if (!CGRectMakeWithDictionaryRepresentation(dict, &v97))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v84, v68, v74, v77, v79, v81, v84);
    goto LABEL_52;
  }

  if (CGRectContainsRect(rect, v97))
  {
    rect = v97;
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v84, v68, v74, v77, v79, v81, v84);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v67, v73);
  }

LABEL_9:
  [(GeometryUtilities *)metadataCopy getTransformCropRectFromSensorCoordsToValidBufferCoordsWithMetadata:rect.origin.x validBufferRect:rect.origin.y, rect.size.width, rect.size.height];
  v96 = v95;
  valid = _configStatsDownsizeRatioRuntimeWithValidRect(&self->_awbStatCfg, rectCopy, [(NSNumber *)self->_downsizeFactor unsignedIntValue]);
  v20 = valid;
  if (valid)
  {
    LODWORD(v61) = valid;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v61, v84, v68, v74, v77, v79, v81, v84);
    v26 = 0;
    v24 = 0;
    goto LABEL_42;
  }

  width = rect.size.width;
  height = rect.size.height;
  LOBYTE(v7) = self->_awbStatCfg.downsizeRatio;
  [(GeometryUtilities *)metadataCopy getTransformCropRectFromSensorCoordsToValidBufferCoordsWithMetadata:rect.origin.x validBufferRect:rect.origin.y, rect.size.width, rect.size.height];
  v96 = v95;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v23 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990FB8]];
  v24 = v23;
  if (!v23)
  {
    v26 = 0;
    goto LABEL_37;
  }

  v25 = [v23 objectForKeyedSubscript:*MEMORY[0x1E6990E98]];
  v26 = v25;
  if (!v25)
  {
LABEL_37:
    v20 = 0;
    goto LABEL_42;
  }

  v27 = [v25 objectForKeyedSubscript:*MEMORY[0x1E6990EC0]];
  if (![v27 count])
  {
    v20 = 0;
    goto LABEL_41;
  }

  v69 = v26;
  v75 = v24;
  v82 = metadataCopy;
  v78 = v27;
  v28 = [v27 sortedArrayUsingComparator:&__block_literal_global_149];
  v29 = 0;
  v30 = width / v7;
  v31 = height / v7;
  v32 = *MEMORY[0x1E69910D8];
  if (intValue == 2324)
  {
    v33 = v15;
  }

  else
  {
    v33 = &v96;
  }

  v34 = v31 * 9.0;
  v93 = height / v7;
  v35 = vdupq_lane_s64(*&v31, 0);
  __asm { FMOV            V2.2D, #0.5 }

  v85 = _Q2;
  v86 = v35;
  v41 = v34 / 10.0;
  for (i = v2; ; ++i)
  {
    v43 = 2 * [v28 count];
    if (v43 >= 2)
    {
      v43 = 2;
    }

    if (v43 <= v29)
    {
      v20 = 0;
      metadataCopy = v82;
      v26 = v69;
      v24 = v75;
      goto LABEL_39;
    }

    v44 = [v28 objectAtIndexedSubscript:v29 >> 1];
    v45 = v44;
    if (v44)
    {
      break;
    }

    i->var0 = 0;
LABEL_35:

    ++v29;
  }

  v46 = [v44 objectForKeyedSubscript:v32];
  if (!CGRectMakeWithDictionaryRepresentation(v46, &v94))
  {
    metadataCopy = v82;
    LODWORD(v61) = 0;
    v26 = v69;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v61, v84, v69, v75, v78, rectCopy, v82, v84);
    v20 = 0;
    goto LABEL_47;
  }

  v47 = *&v33->c;
  *&v95.a = *&v33->a;
  *&v95.c = v47;
  *&v95.tx = *&v33->tx;
  v99 = CGRectApplyAffineTransform(v94, &v95);
  v94.origin.x = v30 * v99.origin.x;
  v94.origin.y = v93 * v99.origin.y;
  v48 = v30 * v99.size.width;
  v49 = v93 * v99.size.height;
  v94.size.width = v30 * v99.size.width;
  v94.size.height = v93 * v99.size.height;
  i->var0 = 0;
  if ([(NSNumber *)self->_digitalFlash intValue])
  {
    v52 = 5000;
  }

  else
  {
    v52 = 50000;
  }

  v50 = v48;
  v51 = v49;
  if ((v52 / (2 * self->_awbStatCfg.downsizeRatio)) >= (v50 * v51))
  {
LABEL_33:
    memset_pattern16(i->var2, &unk_1C9332C80, 8uLL);

    goto LABEL_35;
  }

  size = v94.size;
  origin = v94.origin;
  v91 = vcvt_f32_f64(vmulq_n_f64(v94.size, flt_1C9332C18[v29]));
  if (v41 <= v91.f32[1])
  {
    v53 = v41;
  }

  else
  {
    v53 = v91.f32[1];
  }

  LOBYTE(v95.a) = 0;
  v2->var1 = [configCopy cmi_intValueForKey:@"Bitdepth" defaultValue:0 found:&v95] != 0;
  if (LOBYTE(v95.a))
  {
    v54 = *&vcvt_s32_f32(vcvt_f32_f64(vaddq_f64(vaddq_f64(vmulq_f64(size, v85), origin), vcvtq_f64_f32(vmul_f32(v91, 0xBF000000BF000000))))) & 0xFFFFFFFCFFFFFFFCLL;
    v55.i64[0] = v54;
    v55.i64[1] = SHIDWORD(v54);
    v56 = vsubq_f64(v86, vcvtq_f64_s64(v55));
    v57.i32[0] = v91.f32[0];
    v57.i32[1] = v53;
    v58 = vadd_s32(v57, 0x300000003);
    v55.i64[0] = (v58.i32[0] & 0xFFFFFFFC);
    v55.i64[1] = (v58.i32[1] & 0xFFFFFFFC);
    v59 = vcvtq_f64_s64(v55);
    i->var0 = 1;
    *&i->var3 = v54;
    *&i->var5 = vadd_s32(v54, vmovn_s64(vcvtq_s64_f64(vbslq_s8(vcgtq_f64(v59, v56), v56, v59))));
    goto LABEL_33;
  }

  LODWORD(v61) = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v61, v84, v69, v75, v78, rectCopy, v82, v84);
  v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, v65, v70);
  rectCopy = v80;
  metadataCopy = v83;
  v26 = v71;
LABEL_47:

  v24 = v76;
LABEL_39:

  v27 = v78;
LABEL_41:

LABEL_42:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v20;
}

uint64_t __85__AWBStatistics_configWindowsV2_metadata_tilesConfig_validRect_regionOfInterestRect___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 valueForKey:@"Rect"];
  if (!v7 || ([v6 valueForKey:@"Rect"], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, *&v13.origin.x, *&v13.origin.y, LODWORD(v13.size.width), *&v13.size.height, *&rect.origin.x, LODWORD(rect.origin.y));
    v8 = 0;
LABEL_11:
    v11 = 0;
    goto LABEL_8;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v7, &rect) || !CGRectMakeWithDictionaryRepresentation(v8, &v13))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, *&v13.origin.x, *&v13.origin.y, LODWORD(v13.size.width), *&v13.size.height, *&rect.origin.x, LODWORD(rect.origin.y));
    goto LABEL_11;
  }

  v9 = rect.size.width * rect.size.height;
  v10 = v13.size.width * v13.size.height;
  if (v9 <= v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

LABEL_8:

  return v11;
}

- (int)_purgeANSTNetwork
{
  p_espressoContext = &self->_espressoContext;
  if (self->_espressoContext)
  {
    if (!self->_espressoPlan || (espresso_plan_destroy(), *p_espressoContext))
    {
      espresso_context_destroy();
    }

    *p_espressoContext = 0;
    p_espressoContext[1] = 0;
  }

  return 0;
}

- (uint64_t)_createShaders
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *self = result;
  return result;
}

@end