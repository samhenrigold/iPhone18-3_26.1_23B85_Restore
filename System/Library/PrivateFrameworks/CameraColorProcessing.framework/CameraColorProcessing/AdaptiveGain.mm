@interface AdaptiveGain
- (AdaptiveGain)initWithMetalContext:(id)context;
- (int)allocInternalData;
- (int)computeGain:(float *)gain withTargetRange:(float)range;
- (int)configure;
- (int)createShaders;
- (uint64_t)createShaders;
- (void)allocInternalData;
@end

@implementation AdaptiveGain

- (int)createShaders
{
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"AdaptiveGain::histogramGeneration" constants:0];
  computePipelineHistogramGeneration = self->_computePipelineHistogramGeneration;
  self->_computePipelineHistogramGeneration = v3;

  if (self->_computePipelineHistogramGeneration)
  {
    return 0;
  }

  [(AdaptiveGain *)&v6 createShaders];
  return v6;
}

- (AdaptiveGain)initWithMetalContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v13.receiver, v13.super_class, v14, *&v15[1], v16, v17);
    v19 = 0;
    v18 = 0;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_10:
    v8 = 0;
    goto LABEL_5;
  }

  objc_storeStrong(&self->_metalContext, context);
  v13.receiver = self;
  v13.super_class = AdaptiveGain;
  v7 = [(AdaptiveGain *)&v13 init];
  v8 = v7;
  if (!v7)
  {
    [AdaptiveGain initWithMetalContext:];
    goto LABEL_5;
  }

  createShaders = [(AdaptiveGain *)v7 createShaders];
  if (createShaders)
  {
    [(AdaptiveGain *)createShaders initWithMetalContext:v8];
    goto LABEL_10;
  }

  configure = [(AdaptiveGain *)v8 configure];
  if (configure)
  {
    [(AdaptiveGain *)configure initWithMetalContext:v8];
    goto LABEL_10;
  }

LABEL_5:

  return v8;
}

- (int)configure
{
  *&self->_lumaParams.LumShift = xmmword_1C932F0F0;
  memset_pattern16(self->_lumaParams.CoeffMaxY, &unk_1C932F100, 0xCuLL);
  self->_lumaParams.AvgYOffset = 0;
  return 0;
}

- (int)allocInternalData
{
  device = [(FigMetalContext *)self->_metalContext device];
  v4 = [device newBufferWithLength:4096 options:0];
  globalHistBuffer = self->_globalHistBuffer;
  self->_globalHistBuffer = v4;

  if (self->_globalHistBuffer)
  {
    return 0;
  }

  [AdaptiveGain allocInternalData];
  return -1;
}

- (int)computeGain:(float *)gain withTargetRange:(float)range
{
  v5 = MEMORY[0x1EEE9AC00](self, a2, gain, range);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  allocInternalData = [v5 allocInternalData];
  if (allocInternalData)
  {
    v34 = allocInternalData;
    [AdaptiveGain computeGain:withTargetRange:];
    return v34;
  }

  commandQueue = [v10[1] commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    [AdaptiveGain computeGain:withTargetRange:];
    return -1;
  }

  blitCommandEncoder = [commandBuffer blitCommandEncoder];
  if (!blitCommandEncoder)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v37, v38, v39, v40, v41, v42);
    v50 = 0;
    v49 = 0;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_28:

    return -1;
  }

  v15 = blitCommandEncoder;
  -[NSObject fillBuffer:range:value:](blitCommandEncoder, "fillBuffer:range:value:", v10[6], 0, [v10[6] length], 0);
  [v15 endEncoding];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v37, v38, v39, v40, v41, v42);
    v50 = 0;
    v49 = 0;
    v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    goto LABEL_28;
  }

  v17 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:v10[2]];
  [v17 setTexture:v10[3] atIndex:0];
  [v17 setBuffer:v10[6] offset:0 atIndex:1];
  [v17 setBytes:v10 + 7 length:32 atIndex:2];
  threadExecutionWidth = [v10[2] threadExecutionWidth];
  v19 = [v10[2] maxTotalThreadsPerThreadgroup] / threadExecutionWidth;
  width = [v10[3] width];
  height = [v10[3] height];
  v48[0] = width;
  v48[1] = height;
  v48[2] = 1;
  v47[0] = threadExecutionWidth;
  v47[1] = v19;
  v47[2] = 1;
  [v17 dispatchThreads:v48 threadsPerThreadgroup:v47];
  [v17 endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  for (i = 0; i != 4096; i += 4)
  {
    *&v46[i] = *([v10[6] contents] + i);
  }

  v23 = 0;
  v24 = &v37;
  v25 = v46;
  do
  {
    v26 = 0;
    v27 = v24;
    do
    {
      v28 = *&v25[v26];
      *v27 = v28;
      if (v23)
      {
        *v27 = *(v27 - 1) + v28;
      }

      v26 += 1024;
      v27 += 256;
    }

    while (v26 != 4096);
    ++v23;
    v24 = (v24 + 4);
    v25 += 4;
  }

  while (v23 != 256);
  v29 = (v45 * v7);
  if (v43 <= v29)
  {
    v31 = 0;
    v30 = -1;
    while (v31 != 1020)
    {
      v32 = *&v44[v31];
      ++v30;
      v31 += 4;
      if (v32 > v29)
      {
        goto LABEL_18;
      }
    }

    v30 = 255;
    goto LABEL_21;
  }

  v30 = 0;
LABEL_18:
  if (v30)
  {
LABEL_21:
    v33 = 256.0 / v30;
    goto LABEL_22;
  }

  v33 = 1.0;
LABEL_22:
  *v9 = v33;

  return 0;
}

- (uint64_t)createShaders
{
  v4 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v1, v7, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v8);
  *self = result;
  return result;
}

- (void)allocInternalData
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v26, v29, v32, v38, v40, v41, v42);
  OUTLINED_FUNCTION_2();
  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  if (OUTLINED_FUNCTION_5(v2, v3, v4, v5, v6, v7, v8, v9, v24, v27, v30, v33, v35, v36, v37))
  {
    v16 = v1;
  }

  else
  {
    v16 = v1 & 0xFFFFFFFE;
  }

  if (v16)
  {
    OUTLINED_FUNCTION_3("[AdaptiveGain allocInternalData]");
    v16 = OUTLINED_FUNCTION_4(v17, v18, v19, v20, &dword_1C92CA000, v21, v22, "<<<< LTMAlgorithm >>>> %s: globalHistBuffer is nil", v25, v28, v31, v34);
    v23 = v16;
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_0(v16, v10, v11, v23, v12, v13, v14, v15, v25, v28, v31, v34, SHIDWORD(v34), v39);
}

- (void)computeGain:withTargetRange:.cold.2()
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v26, v29, v32, v38, v40, v41, v42);
  OUTLINED_FUNCTION_2();
  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  if (OUTLINED_FUNCTION_5(v2, v3, v4, v5, v6, v7, v8, v9, v24, v27, v30, v33, v35, v36, v37))
  {
    v16 = v1;
  }

  else
  {
    v16 = v1 & 0xFFFFFFFE;
  }

  if (v16)
  {
    OUTLINED_FUNCTION_3("[AdaptiveGain computeGain:withTargetRange:]");
    v16 = OUTLINED_FUNCTION_4(v17, v18, v19, v20, &dword_1C92CA000, v21, v22, "<<<< LTMAlgorithm >>>> %s: _cmdBuf is nil.", v25, v28, v31, v34);
    v23 = v16;
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_0(v16, v10, v11, v23, v12, v13, v14, v15, v25, v28, v31, v34, SHIDWORD(v34), v39);
}

@end