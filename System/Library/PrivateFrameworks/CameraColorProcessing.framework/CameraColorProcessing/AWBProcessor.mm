@interface AWBProcessor
- (int)internalSetupWithFWPlatformID:(int)d;
- (int)prepareToProcess:(unsigned int)process;
- (int)process;
- (int)purgeResources;
- (int)setup;
- (uint64_t)process;
- (void)dealloc;
@end

@implementation AWBProcessor

- (int)internalSetupWithFWPlatformID:(int)d
{
  v3 = *&d;
  FigKTraceInit();
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v7 = fig_note_initialize_category_with_default_work_cf();
  if (!v6)
  {
    [AWBProcessor internalSetupWithFWPlatformID:v7];
    goto LABEL_10;
  }

  v8 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v6 andOptionalCommandQueue:self->_metalCommandQueue];
  metalContext = self->_metalContext;
  self->_metalContext = v8;

  if (self->_metalContext)
  {
    v10 = objc_alloc(MEMORY[0x1E6991750]);
    device = [(FigMetalContext *)self->_metalContext device];
    v12 = [v10 initWithDevice:device allocatorType:2];
    [(FigMetalContext *)self->_metalContext setAllocator:v12];

    if (self->_metalContext)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      stats = self->_stats;
      self->_stats = dictionary;

      if (self->_stats)
      {
        v15 = [[AWBStatistics alloc] initWithMetalContext:self->_metalContext];
        awbStats = self->_awbStats;
        self->_awbStats = v15;

        if (self->_awbStats)
        {
          v17 = [[AWBAlgorithm alloc] initWithMetalContext:self->_metalContext platformID:v3];
          awbAlgo = self->_awbAlgo;
          self->_awbAlgo = v17;

          if (self->_awbAlgo)
          {
            v19 = objc_opt_new();
            awbParams = self->_awbParams;
            self->_awbParams = v19;

LABEL_10:
            v21 = 0;
            goto LABEL_11;
          }

          [AWBProcessor internalSetupWithFWPlatformID:?];
        }

        else
        {
          [AWBProcessor internalSetupWithFWPlatformID:?];
        }
      }

      else
      {
        [AWBProcessor internalSetupWithFWPlatformID:?];
      }
    }

    else
    {
      [AWBProcessor internalSetupWithFWPlatformID:?];
    }
  }

  else
  {
    [AWBProcessor internalSetupWithFWPlatformID:?];
  }

  v21 = v23;
LABEL_11:
  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return v21;
}

- (int)setup
{
  v3 = +[FWPlatformIDUtilities getFWPlatformID];

  return [(AWBProcessor *)self internalSetupWithFWPlatformID:v3];
}

- (int)prepareToProcess:(unsigned int)process
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (self->_allocatorSetupComplete)
  {
LABEL_13:
    awbAlgo = self->_awbAlgo;
    moduleConfig = [(AWBIBPParams *)self->_awbParams moduleConfig];
    metadata = [(AWBIBPParams *)self->_awbParams metadata];
    cameraInfo = [(AWBIBPParams *)self->_awbParams cameraInfo];
    v13 = [(AWBAlgorithm *)awbAlgo configWithModuleConfig:moduleConfig metadata:metadata cameraInfo:cameraInfo awbParams:self->_awbParams];

    if (v13)
    {
      [(AWBProcessor *)v13 prepareToProcess:v30];
    }

    else
    {
      awbStats = self->_awbStats;
      moduleConfig2 = [(AWBIBPParams *)self->_awbParams moduleConfig];
      metadata2 = [(AWBIBPParams *)self->_awbParams metadata];
      cameraInfo2 = [(AWBIBPParams *)self->_awbParams cameraInfo];
      v13 = [(AWBStatistics *)awbStats configWithModuleConfig:moduleConfig2 metadata:metadata2 cameraInfo:cameraInfo2 awbParams:self->_awbParams];

      if (!v13)
      {
        self->_configured = 1;
        goto LABEL_16;
      }

      [(AWBProcessor *)v13 prepareToProcess:v30];
    }

    goto LABEL_21;
  }

  v6 = objc_opt_new();
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_new();

    [v8 setWireMemory:1];
    [v8 setResourceOptions:512];
    [v8 setLabel:@"FigMetalAllocator_AWB"];
    externalMemoryResource = self->_externalMemoryResource;
    if (!externalMemoryResource)
    {
      [v8 setMemSize:0x200000];
      allocator = [(FigMetalContext *)self->_metalContext allocator];
      v13 = [allocator setupWithDescriptor:v8];

      if (v13)
      {
        [(AWBProcessor *)v13 prepareToProcess:v8, v30];
LABEL_21:
        v24 = v30[0];
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    allocatorBackend = [(CMIExternalMemoryResource *)externalMemoryResource allocatorBackend];
    v11 = allocatorBackend;
    if (allocatorBackend)
    {
      if ([allocatorBackend memSize] >> 21)
      {
        [v8 setMemSize:{objc_msgSend(v11, "memSize")}];
        allocator2 = [(FigMetalContext *)self->_metalContext allocator];
        v13 = [allocator2 setupWithDescriptor:v8 allocatorBackend:v11];

        if (!v13)
        {

LABEL_11:
          if ([v8 memSize])
          {
            self->_allocatorSetupComplete = 1;

            goto LABEL_13;
          }

          [(AWBProcessor *)v8 prepareToProcess:v30];
          goto LABEL_31;
        }

        [AWBProcessor prepareToProcess:v13];
LABEL_36:

        goto LABEL_37;
      }

      [AWBProcessor prepareToProcess:v30];
    }

    else
    {
      [AWBProcessor prepareToProcess:v30];
    }

    LODWORD(v13) = v30[0];
    goto LABEL_36;
  }

  [AWBProcessor prepareToProcess:v30];
LABEL_31:
  LODWORD(v13) = v30[0];
LABEL_37:
  if (!v13)
  {
    goto LABEL_16;
  }

  v24 = v3;
LABEL_22:
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v13, v24, *v29, *&v29[8], *&v29[16], v30[0], v30[1], v31);
  if (dword_1EDD78228)
  {
    v33 = 0;
    v32 = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = v33;
    v27 = v32;
    if (os_log_type_enabled(v25, v32))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 0xFFFFFFFE;
    }

    if (v28)
    {
      *v29 = 136315394;
      *&v29[4] = "[AWBProcessor prepareToProcess:]";
      *&v29[12] = 1024;
      *&v29[14] = v13;
      _os_log_send_and_compose_impl(v28, 0, v30, 128, &dword_1C92CA000, v25, v27, "<<<< AWBProcessor >>>> %s: err=%d", v29, 18);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_16:
  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return v13;
}

- (int)process
{
  v84[0] = 0;
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v81 = 0;
  v82 = 0;
  v83 = 0;
  v80 = 0;
  memset(&rect, 0, sizeof(rect));
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  if (!self->_configured)
  {
    [(AWBProcessor *)v70 process];
LABEL_25:
    v35 = 0;
    v5 = 0;
    goto LABEL_26;
  }

  v5 = createBufferFromMetal(self->_metalContext, @"awb-stats-bfr", 82112);
  v84[0] = v5;
  if (!v5)
  {
    [(AWBProcessor *)v70 process];
    v35 = 0;
LABEL_26:
    v16 = 0;
    v17 = 0;
    LODWORD(v14) = v70[0];
    goto LABEL_12;
  }

  v6 = [MEMORY[0x1E695DF88] dataWithLength:768];
  if (!v6)
  {
    [(AWBProcessor *)v70 process];
    goto LABEL_25;
  }

  v62 = v6;
  [(NSMutableDictionary *)self->_stats removeAllObjects];
  awbStats = self->_awbStats;
  imageTex = [(AWBIBPParams *)self->_awbParams imageTex];
  clippedTex = [(AWBIBPParams *)self->_awbParams clippedTex];
  lscGainsTex = [(AWBIBPParams *)self->_awbParams lscGainsTex];
  validRectInBufferCoords = [(AWBIBPParams *)self->_awbParams validRectInBufferCoords];
  validRectInSensorReadoutCoords = [(AWBIBPParams *)self->_awbParams validRectInSensorReadoutCoords];
  skinMask = [(AWBIBPParams *)self->_awbParams skinMask];
  v74 = 0;
  skyMask = [(AWBIBPParams *)self->_awbParams skyMask];
  v73 = 0;
  regionOfInterestRectInBufferCoords = [(AWBIBPParams *)self->_awbParams regionOfInterestRectInBufferCoords];
  v14 = [(AWBStatistics *)awbStats process:imageTex clipped:clippedTex lscGainsTex:lscGainsTex validRectInBufferCoords:validRectInBufferCoords validRectInSensorReadoutCoords:validRectInSensorReadoutCoords awbStatsBuffer:v5 awbTileStatsConfig:&v81 anstSkinMask:skinMask anstSkinMaskData:&v74 skyMaskTex:skyMask skyMaskData:&v73 regionOfInterestRectInBufferCoords:regionOfInterestRectInBufferCoords downsizeFactor:&v80];
  v65 = v74;
  v63 = v73;

  if (v14)
  {
    [(AWBProcessor *)v14 process];
    v16 = 0;
    v17 = v62;
LABEL_29:
    v4 = MEMORY[0x1E695FF58];
    v35 = v63;
    v5 = v65;
    goto LABEL_12;
  }

  v15 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v5 length:{"contents"), 0x10000}];
  [(NSMutableDictionary *)self->_stats setObject:v15 forKeyedSubscript:@"tileStats"];

  v16 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v5 length:{"contents") + 0x10000, 192}];
  v17 = v62;
  if (!v16)
  {
    [(AWBProcessor *)v70 process];
    LODWORD(v14) = v70[0];
    goto LABEL_29;
  }

  bytes = [v62 bytes];
  bytes2 = [v16 bytes];
  v20 = bytes2[3];
  v22 = *bytes2;
  v21 = bytes2[1];
  bytes[14] = bytes2[2];
  bytes[15] = v20;
  bytes[12] = v22;
  bytes[13] = v21;
  v23 = bytes2[7];
  v25 = bytes2[4];
  v24 = bytes2[5];
  bytes[18] = bytes2[6];
  bytes[19] = v23;
  bytes[16] = v25;
  bytes[17] = v24;
  v26 = bytes2[11];
  v28 = bytes2[8];
  v27 = bytes2[9];
  bytes[22] = bytes2[10];
  bytes[23] = v26;
  bytes[20] = v28;
  bytes[21] = v27;
  [(NSMutableDictionary *)self->_stats setObject:v62 forKeyedSubscript:@"windowStats"];
  v29 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v5 length:{"contents") + 65728, 0x4000}];
  [(NSMutableDictionary *)self->_stats setObject:v29 forKeyedSubscript:@"histStats"];

  v77 = *MEMORY[0x1E695EFF8];
  v61 = v77;
  imageTex2 = [(AWBIBPParams *)self->_awbParams imageTex];
  *&v78 = [imageTex2 width];

  imageTex3 = [(AWBIBPParams *)self->_awbParams imageTex];
  *(&v78 + 1) = [imageTex3 height];

  v32 = [MEMORY[0x1E696B098] valueWithPointer:&v77];
  [(NSMutableDictionary *)self->_stats setObject:v32 forKeyedSubscript:@"FESOutputSize"];

  v5 = v65;
  [(NSMutableDictionary *)self->_stats setObject:v65 forKeyedSubscript:@"anstSkinMask"];
  v75 = v61;
  skyMask2 = [(AWBIBPParams *)self->_awbParams skyMask];
  *&v76 = [skyMask2 width];

  skyMask3 = [(AWBIBPParams *)self->_awbParams skyMask];
  *(&v76 + 1) = [skyMask3 height];

  v35 = v63;
  [(NSMutableDictionary *)self->_stats setObject:v63 forKeyedSubscript:@"skyMaskData"];
  v36 = [MEMORY[0x1E696B098] valueWithPointer:&v75];
  [(NSMutableDictionary *)self->_stats setObject:v36 forKeyedSubscript:@"skyMaskSize"];

  [(AWBAlgorithm *)self->_awbAlgo setTileStatsROIRect:SHIDWORD(v81), v82, ((HIDWORD(v82) - HIDWORD(v81)) & ~((HIDWORD(v82) - HIDWORD(v81)) >> 31)), ((v83 - v82) & ~((v83 - v82) >> 31))];
  [(AWBAlgorithm *)self->_awbAlgo setStats:self->_stats];
  outputMetadata = [(AWBIBPParams *)self->_awbParams outputMetadata];
  [(AWBAlgorithm *)self->_awbAlgo setOutputMetadata:outputMetadata];

  validRectInBufferCoords2 = [(AWBIBPParams *)self->_awbParams validRectInBufferCoords];
  v39 = CGRectMakeWithDictionaryRepresentation(validRectInBufferCoords2, &rect);

  if (v39)
  {
    [(AWBAlgorithm *)self->_awbAlgo setWinRegionWidth:4 * (rect.size.width / v80)];
    [(AWBAlgorithm *)self->_awbAlgo setWinRegionHeight:4 * (rect.size.height / v80)];
    process = [(AWBAlgorithm *)self->_awbAlgo process];
    LODWORD(v14) = process;
    if (process)
    {
      [(AWBProcessor *)process process];
    }

    else
    {
      awbComboGains = [(AWBAlgorithm *)self->_awbAlgo awbComboGains];
      [(AWBIBPParams *)self->_awbParams setAwbComboGains:awbComboGains, v42];
      awbComboGainsNormalized = [(AWBAlgorithm *)self->_awbAlgo awbComboGainsNormalized];
      [(AWBIBPParams *)self->_awbParams setAwbComboGainsNormalized:awbComboGainsNormalized, v44];
      awbGains = [(AWBAlgorithm *)self->_awbAlgo awbGains];
      [(AWBIBPParams *)self->_awbParams setAwbGains:awbGains, v46];
      outputMetadata2 = [(AWBAlgorithm *)self->_awbAlgo outputMetadata];
      [(AWBIBPParams *)self->_awbParams setOutputMetadata:outputMetadata2];

      [(AWBAlgorithm *)self->_awbAlgo setOutputMetadata:0];
    }
  }

  else
  {
    [(AWBProcessor *)v70 process];
    LODWORD(v14) = v70[0];
  }

  v4 = MEMORY[0x1E695FF58];
LABEL_12:
  FigMetalDecRef();
  if (*v4 == 1)
  {
    kdebug_trace();
  }

  allocator = [(FigMetalContext *)self->_metalContext allocator];
  [allocator usedSizeAll];

  if (v14)
  {
    LODWORD(v54) = v14;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v54, v2, v55, v56, v57, v58, v59, v2);
    if (dword_1EDD78228)
    {
      v72 = 0;
      v71 = OS_LOG_TYPE_DEFAULT;
      v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v51 = v72;
      v52 = v71;
      if (os_log_type_enabled(v50, v71))
      {
        v53 = v51;
      }

      else
      {
        v53 = v51 & 0xFFFFFFFE;
      }

      if (v53)
      {
        v66 = 136315394;
        v67 = "[AWBProcessor process]";
        v68 = 1024;
        v69 = v14;
        _os_log_send_and_compose_impl(v53, 0, v70, 128, &dword_1C92CA000, v50, v52, "<<<< AWBProcessor >>>> %s: err=%d", &v66, 18);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v14;
}

- (int)purgeResources
{
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  [allocator reset];

  if (!self->_externalMemoryResource)
  {
    allocator2 = [(FigMetalContext *)self->_metalContext allocator];
    [allocator2 purgeResources];
  }

  self->_allocatorSetupComplete = 0;
  [(AWBStatistics *)self->_awbStats _purgeANSTNetwork];
  return 0;
}

- (void)dealloc
{
  [(AWBProcessor *)self resetState];
  [(AWBProcessor *)self purgeResources];
  v3.receiver = self;
  v3.super_class = AWBProcessor;
  [(AWBProcessor *)&v3 dealloc];
}

- (uint64_t)internalSetupWithFWPlatformID:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

- (uint64_t)internalSetupWithFWPlatformID:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

- (uint64_t)internalSetupWithFWPlatformID:(_DWORD *)a1 .cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

- (uint64_t)internalSetupWithFWPlatformID:(_DWORD *)a1 .cold.4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

- (uint64_t)internalSetupWithFWPlatformID:(_DWORD *)a1 .cold.5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v1, v6, v7, v8, v9, vars0, vars8);
  v3 = qword_1EDD78220;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, a1, "<<<< AWBProcessor >>>>", 159, v1);
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (void)prepareToProcess:(const char *)a1 .cold.5(const char *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, a1, v11, v12, v13, v14);
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

- (uint64_t)process
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *self = result;
  return result;
}

@end