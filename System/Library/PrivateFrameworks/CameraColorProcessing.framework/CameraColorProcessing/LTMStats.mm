@interface LTMStats
- (LTMStats)initWithMetalContext:(id)context;
- (int)calculateHITHStatistics:(id)statistics ltmGeometry:(id)geometry optimized:(BOOL)optimized enableAntiAliasing:(BOOL)aliasing calcGlobalHistOnROI:(BOOL)i toDriverInputMetadata:(sRefDriverInputs_SOFTISP *)metadata andProcHITHStat:(sCLRProcHITHStat_SOFTISP *)stat enableFATE:(BOOL)self0;
- (int)finishCalculateHITHStatistics:(sCLRProcHITHStat_SOFTISP *)statistics optimized:(BOOL)optimized;
- (int)startCalculateHITHStatistics:(id)statistics ltmGeometry:(id)geometry inputDriverMetadata:(sRefDriverInputs_SOFTISP *)metadata optimized:(BOOL)optimized enableAntiAliasing:(BOOL)aliasing calcGlobalHistOnROI:(BOOL)i enhancedLocalHistogram:(BOOL)histogram enableDualLTC:(BOOL)self0 enableFATE:(BOOL)self1 outputProcHITHStat:(sCLRProcHITHStat_SOFTISP *)self2;
- (int)startCalculateHITHStatistics:(id)statistics ltmGeometry:(id)geometry inputDriverMetadata:(sRefDriverInputs_SOFTISP *)metadata optimized:(BOOL)optimized enableAntiAliasing:(BOOL)aliasing calcGlobalHistOnROI:(BOOL)i outputProcHITHStat:(sCLRProcHITHStat_SOFTISP *)stat;
- (void)fillProcHITHStat:(sCLRProcHITHStat_SOFTISP *)stat with:(id *)with;
@end

@implementation LTMStats

- (LTMStats)initWithMetalContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = LTMStats;
  v6 = [(LTMStats *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    [LTMStats initWithMetalContext:];
LABEL_9:
    v10 = 0;
    goto LABEL_5;
  }

  objc_storeStrong(&v6->_metalContext, context);
  if (!v7->_metalContext)
  {
    [LTMStats initWithMetalContext:];
    goto LABEL_9;
  }

  v8 = [[LTMStatsCompute alloc] initWithMetalContext:contextCopy];
  computeLTMStats = v7->_computeLTMStats;
  v7->_computeLTMStats = v8;

  if (!v7->_computeLTMStats)
  {
    [LTMStats initWithMetalContext:];
    goto LABEL_9;
  }

  v10 = v7;
LABEL_5:

  return v10;
}

- (int)calculateHITHStatistics:(id)statistics ltmGeometry:(id)geometry optimized:(BOOL)optimized enableAntiAliasing:(BOOL)aliasing calcGlobalHistOnROI:(BOOL)i toDriverInputMetadata:(sRefDriverInputs_SOFTISP *)metadata andProcHITHStat:(sCLRProcHITHStat_SOFTISP *)stat enableFATE:(BOOL)self0
{
  optimizedCopy = optimized;
  v12 = [(LTMStats *)self startCalculateHITHStatistics:statistics ltmGeometry:geometry inputDriverMetadata:metadata optimized:optimized enableAntiAliasing:aliasing calcGlobalHistOnROI:i outputProcHITHStat:stat];
  if (v12)
  {
    v14 = v12;
    [LTMStats calculateHITHStatistics:ltmGeometry:optimized:enableAntiAliasing:calcGlobalHistOnROI:toDriverInputMetadata:andProcHITHStat:enableFATE:];
  }

  else
  {
    v13 = [(LTMStats *)self finishCalculateHITHStatistics:stat optimized:optimizedCopy];
    v14 = v13;
    if (v13)
    {
      [LTMStats calculateHITHStatistics:v13 ltmGeometry:? optimized:? enableAntiAliasing:? calcGlobalHistOnROI:? toDriverInputMetadata:? andProcHITHStat:? enableFATE:?];
    }
  }

  return v14;
}

- (int)startCalculateHITHStatistics:(id)statistics ltmGeometry:(id)geometry inputDriverMetadata:(sRefDriverInputs_SOFTISP *)metadata optimized:(BOOL)optimized enableAntiAliasing:(BOOL)aliasing calcGlobalHistOnROI:(BOOL)i enhancedLocalHistogram:(BOOL)histogram enableDualLTC:(BOOL)self0 enableFATE:(BOOL)self1 outputProcHITHStat:(sCLRProcHITHStat_SOFTISP *)self2
{
  iCopy = i;
  aliasingCopy = aliasing;
  optimizedCopy = optimized;
  statisticsCopy = statistics;
  geometryCopy = geometry;
  if (!statisticsCopy || (FigMetalIsValid() & 1) == 0)
  {
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
LABEL_25:
    v38 = -1;
    goto LABEL_17;
  }

  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];

  if (!commandQueue)
  {
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
    goto LABEL_25;
  }

  v21 = [(LTMStatsCompute *)self->_computeLTMStats computeInputParametersForImageWidth:geometryCopy calcGlobalHistOnROI:iCopy enableAntiAliasing:aliasingCopy enableDualLTC:c enableFATE:e with:metadata to:&self->_params];
  if (v21)
  {
    v38 = v21;
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
    goto LABEL_17;
  }

  memcpy(__dst, &self->_params, sizeof(__dst));
  [(LTMStats *)self fillProcHITHStat:stat with:__dst];
  if (histogram)
  {
    stat->localHistBinSize = 260;
    self->_params.localHist.enableHiResLocalHistogram = 1;
    v22 = 49920;
  }

  else
  {
    v22 = 192 * stat->localHistBinSize;
  }

  device = [(FigMetalContext *)self->_metalContext device];
  v24 = [device newBufferWithLength:v22 options:0];
  localHistBuffer = self->_localHistBuffer;
  self->_localHistBuffer = v24;

  if (!self->_localHistBuffer)
  {
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
    goto LABEL_25;
  }

  device2 = [(FigMetalContext *)self->_metalContext device];
  v27 = [device2 newBufferWithLength:4096 options:0];
  globalHistBuffer = self->_globalHistBuffer;
  self->_globalHistBuffer = v27;

  if (!self->_globalHistBuffer)
  {
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
    goto LABEL_25;
  }

  device3 = [(FigMetalContext *)self->_metalContext device];
  v30 = [device3 newBufferWithLength:1024 options:0];
  globalFaceHistBuffer = self->_globalFaceHistBuffer;
  self->_globalFaceHistBuffer = v30;

  if (!self->_globalFaceHistBuffer)
  {
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
    goto LABEL_25;
  }

  device4 = [(FigMetalContext *)self->_metalContext device];
  v33 = [device4 newBufferWithLength:17680 options:0];
  thumbnailBuffer = self->_thumbnailBuffer;
  self->_thumbnailBuffer = v33;

  if (!self->_thumbnailBuffer)
  {
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
    goto LABEL_25;
  }

  computeLTMStats = self->_computeLTMStats;
  v36 = self->_globalHistBuffer;
  if (optimizedCopy)
  {
    v37 = [(LTMStatsCompute *)computeLTMStats encodeLTMStatisticsCalculationOptimized:statisticsCopy params:&self->_params globalHistogram:v36 globalFaceHistogram:self->_globalFaceHistBuffer localHistogram:self->_localHistBuffer thumbnail:?];
  }

  else
  {
    v37 = [(LTMStatsCompute *)computeLTMStats encodeLTMStatisticsCalculationPrecise:statisticsCopy paramsGlobalHist:&self->_params globalHistogram:v36 localHistogram:self->_localHistBuffer thumbnail:self->_thumbnailBuffer];
  }

  v38 = v37;
  if (v37)
  {
    [LTMStats startCalculateHITHStatistics:v37 ltmGeometry:? inputDriverMetadata:? optimized:? enableAntiAliasing:? calcGlobalHistOnROI:? enhancedLocalHistogram:? enableDualLTC:? enableFATE:? outputProcHITHStat:?];
  }

LABEL_17:

  return v38;
}

- (int)startCalculateHITHStatistics:(id)statistics ltmGeometry:(id)geometry inputDriverMetadata:(sRefDriverInputs_SOFTISP *)metadata optimized:(BOOL)optimized enableAntiAliasing:(BOOL)aliasing calcGlobalHistOnROI:(BOOL)i outputProcHITHStat:(sCLRProcHITHStat_SOFTISP *)stat
{
  BYTE2(v10) = 0;
  LOWORD(v10) = 0;
  return [LTMStats startCalculateHITHStatistics:"startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:" ltmGeometry:statistics inputDriverMetadata:geometry optimized:metadata enableAntiAliasing:optimized calcGlobalHistOnROI:aliasing enhancedLocalHistogram:i enableDualLTC:v10 enableFATE:stat outputProcHITHStat:?];
}

- (int)finishCalculateHITHStatistics:(sCLRProcHITHStat_SOFTISP *)statistics optimized:(BOOL)optimized
{
  [(LTMStatsCompute *)self->_computeLTMStats waitUntilCompleted];
  if (optimized)
  {
    for (i = 0; i != 4420; ++i)
    {
      *(statistics->thumbnailStat + i) = *([(MTLBuffer *)self->_thumbnailBuffer contents]+ 4 * i);
    }
  }

  else
  {
    for (j = 0; j != 4420; ++j)
    {
      *(statistics->thumbnailStat + j) = (self->_params.thumbnail.ThumbAvgRecipNumPix * *([(MTLBuffer *)self->_thumbnailBuffer contents]+ 4 * j)) >> 32;
    }
  }

  if (statistics->localHistBinSize)
  {
    v9 = 0;
    do
    {
      *(statistics->localHistStat + v9) = *([(MTLBuffer *)self->_localHistBuffer contents]+ 4 * v9);
      ++v9;
    }

    while (v9 < 48 * statistics->localHistBinSize);
  }

  for (k = 0; k != 4096; k += 4)
  {
    *(statistics->globalHistStat + k) = *([(MTLBuffer *)self->_globalHistBuffer contents]+ k);
  }

  for (m = 0; m != 1024; m += 4)
  {
    *(statistics->globalFaceHistStat + m) = *([(MTLBuffer *)self->_globalFaceHistBuffer contents]+ m);
  }

  globalHistBuffer = self->_globalHistBuffer;
  self->_globalHistBuffer = 0;

  globalFaceHistBuffer = self->_globalFaceHistBuffer;
  self->_globalFaceHistBuffer = 0;

  localHistBuffer = self->_localHistBuffer;
  self->_localHistBuffer = 0;

  thumbnailBuffer = self->_thumbnailBuffer;
  self->_thumbnailBuffer = 0;

  return 0;
}

- (void)fillProcHITHStat:(sCLRProcHITHStat_SOFTISP *)stat with:(id *)with
{
  stat->thumbnailWindow = with->var4.var3 - with->var4.var1 + ((with->var4.var2 - with->var4.var0) << 16);
  stat->thumbnailDownsampleX = with->var4.var4;
  stat->thumbnailDownsampleY = with->var4.var5;
  var3 = with->var3.var3;
  var4 = with->var3.var4;
  v6 = with->var3.var6 - var4 + ((with->var3.var5 - var3) << 16);
  stat->thumbnailTotal = 5;
  stat->localHistWindow = v6;
  *&stat->localHistEnable = 4456449;
  var10 = with->var3.var10;
  var9 = with->var3.var9;
  stat->localHistBlockSizeX = with->var3.var9;
  v9 = var10;
  stat->localHistBlockSizeY = var10;
  var8 = with->var3.var8;
  stat->localHistStrideX = with->var3.var7;
  stat->localHistStrideY = var8;
  *&stat->localHistNumHorBlocks = 393224;
  var2 = with->var3.var2;
  stat->localHistCountBitShift = var2;
  var5 = with->var1.var5;
  v13 = with->var1.var3;
  v14 = with->var1.var4 - with->var1.var2;
  stat->globalHistEnable = 1;
  stat->globalHistWindow = var5 - v13 + (v14 << 16);
  stat->globalFaceHistEnable = 1;
  stat->globalFaceHistWindow = with->var2.var5 - with->var2.var3 + ((with->var2.var4 - with->var2.var2) << 16);
  stat->calculatedOnPortraitOrientation = with->var4.var9;
  stat->gridOriginX = var3;
  stat->gridOriginY = var4;
  stat->localHistogramOriginalTilePixelCount = (v9 * var9) >> var2 >> 1;
  *&stat->localHistLowThreshold = *&with->var3.var13;
}

- (void)initWithMetalContext:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v27, v30, v33, v39, v41, v42, v43);
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v25, v28, v31, v34, v36, v37, v38);
  v10 = OUTLINED_FUNCTION_9(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_3("[LTMStats initWithMetalContext:]");
    v10 = OUTLINED_FUNCTION_4(v17, v18, v19, v20, &dword_1C92CA000, v21, v22, "<<<< LTMAlgorithm >>>> %s: _computeLTMStats is nil.", v26, v29, v32, v35);
    v23 = v10;
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_0(v10, v11, v12, v23, v13, v14, v15, v16, v26, v29, v32, v35, SHIDWORD(v35), v40);
}

- (void)initWithMetalContext:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v27, v30, v33, v39, v41, v42, v43);
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v25, v28, v31, v34, v36, v37, v38);
  v10 = OUTLINED_FUNCTION_9(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_3("[LTMStats initWithMetalContext:]");
    v10 = OUTLINED_FUNCTION_4(v17, v18, v19, v20, &dword_1C92CA000, v21, v22, "<<<< LTMAlgorithm >>>> %s: _metalContext is nil.", v26, v29, v32, v35);
    v23 = v10;
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_0(v10, v11, v12, v23, v13, v14, v15, v16, v26, v29, v32, v35, SHIDWORD(v35), v40);
}

- (void)initWithMetalContext:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v27, v30, v33, v39, v41, v42, v43);
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v25, v28, v31, v34, v36, v37, v38);
  v10 = OUTLINED_FUNCTION_9(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_3("[LTMStats initWithMetalContext:]");
    v10 = OUTLINED_FUNCTION_4(v17, v18, v19, v20, &dword_1C92CA000, v21, v22, "<<<< LTMAlgorithm >>>> %s: LTMStats init failed", v26, v29, v32, v35);
    v23 = v10;
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_0(v10, v11, v12, v23, v13, v14, v15, v16, v26, v29, v32, v35, SHIDWORD(v35), v40);
}

- (void)startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v27, v30, v33, v39, v41, v42, v43);
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v25, v28, v31, v34, v36, v37, v38);
  v10 = OUTLINED_FUNCTION_9(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_3("[LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:]");
    v10 = OUTLINED_FUNCTION_4(v17, v18, v19, v20, &dword_1C92CA000, v21, v22, "<<<< LTMAlgorithm >>>> %s: thumbnailBuffer is nil", v26, v29, v32, v35);
    v23 = v10;
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_0(v10, v11, v12, v23, v13, v14, v15, v16, v26, v29, v32, v35, SHIDWORD(v35), v40);
}

- (void)startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v27, v30, v33, v39, v41, v42, v43);
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v25, v28, v31, v34, v36, v37, v38);
  v10 = OUTLINED_FUNCTION_9(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_3("[LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:]");
    v10 = OUTLINED_FUNCTION_4(v17, v18, v19, v20, &dword_1C92CA000, v21, v22, "<<<< LTMAlgorithm >>>> %s: globalFaceHistBuffer is nil", v26, v29, v32, v35);
    v23 = v10;
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_0(v10, v11, v12, v23, v13, v14, v15, v16, v26, v29, v32, v35, SHIDWORD(v35), v40);
}

- (void)startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v27, v30, v33, v39, v41, v42, v43);
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v25, v28, v31, v34, v36, v37, v38);
  v10 = OUTLINED_FUNCTION_9(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_3("[LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:]");
    v10 = OUTLINED_FUNCTION_4(v17, v18, v19, v20, &dword_1C92CA000, v21, v22, "<<<< LTMAlgorithm >>>> %s: globalHistBuffer is nil", v26, v29, v32, v35);
    v23 = v10;
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_0(v10, v11, v12, v23, v13, v14, v15, v16, v26, v29, v32, v35, SHIDWORD(v35), v40);
}

- (void)startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v27, v30, v33, v39, v41, v42, v43);
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v25, v28, v31, v34, v36, v37, v38);
  v10 = OUTLINED_FUNCTION_9(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_3("[LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:]");
    v10 = OUTLINED_FUNCTION_4(v17, v18, v19, v20, &dword_1C92CA000, v21, v22, "<<<< LTMAlgorithm >>>> %s: localHistBuffer is nil", v26, v29, v32, v35);
    v23 = v10;
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_0(v10, v11, v12, v23, v13, v14, v15, v16, v26, v29, v32, v35, SHIDWORD(v35), v40);
}

- (void)startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:.cold.7()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v27, v30, v33, v39, v41, v42, v43);
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v25, v28, v31, v34, v36, v37, v38);
  v10 = OUTLINED_FUNCTION_9(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_3("[LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:]");
    v10 = OUTLINED_FUNCTION_4(v17, v18, v19, v20, &dword_1C92CA000, v21, v22, "<<<< LTMAlgorithm >>>> %s: _metalContext.commandQueue is nil.", v26, v29, v32, v35);
    v23 = v10;
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_0(v10, v11, v12, v23, v13, v14, v15, v16, v26, v29, v32, v35, SHIDWORD(v35), v40);
}

- (void)startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:.cold.8()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v27, v30, v33, v39, v41, v42, v43);
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v25, v28, v31, v34, v36, v37, v38);
  v10 = OUTLINED_FUNCTION_9(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_3("[LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:]");
    v10 = OUTLINED_FUNCTION_4(v17, v18, v19, v20, &dword_1C92CA000, v21, v22, "<<<< LTMAlgorithm >>>> %s: rgbImageUInt16 is nil or not valid.", v26, v29, v32, v35);
    v23 = v10;
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_0(v10, v11, v12, v23, v13, v14, v15, v16, v26, v29, v32, v35, SHIDWORD(v35), v40);
}

@end