@interface VEVideoDeghostingDetectionAndTrackingV3
- (VEVideoDeghostingDetectionAndTrackingV3)initWithMetalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters;
- (int)_convertGGMStatus:(int64_t)status;
- (int)process;
- (int)resetState;
- (void)dealloc;
@end

@implementation VEVideoDeghostingDetectionAndTrackingV3

- (void)dealloc
{
  [(VEVideoDeghostingDetectionAndTrackingV3 *)self finishProcessing];
  [(VEVideoDeghostingDetectionAndTrackingV3 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = VEVideoDeghostingDetectionAndTrackingV3;
  [(VEVideoDeghostingDetectionAndTrackingV3 *)&v3 dealloc];
}

- (int)process
{
  v19 = 0u;
  v18 = 0u;
  detectionResult = self->_detectionResult;
  self->_detectionResult = 0;

  if (self->_ghostInformationLookAheadPointer)
  {
    inputSampleBuffer = self->_inputSampleBuffer;
    if (inputSampleBuffer)
    {
      OneFrameFromSampleBuffer = fetchOneFrameFromSampleBuffer(&v17, inputSampleBuffer);
      if (OneFrameFromSampleBuffer)
      {
        fig_log_get_emitter();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v14, *(&v14 + 1), epoch, v16, v17, v18);
      }

      else
      {
        GGMCtrl = self->_GGMCtrl;
        v14 = *&kCMTimeInvalid.value;
        epoch = kCMTimeInvalid.epoch;
        [(GGMController *)GGMCtrl setIspTimeStamp:&v14];
        [(GGMController *)self->_GGMCtrl setInputBuffer:v17];
        [(GGMController *)self->_GGMCtrl setMetaDictionary:v18];
        [(GGMController *)self->_GGMCtrl setLightSourceMask:getLightSourceMaskFromSampleBuffer(self->_inputSampleBuffer)];
        [(GGMController *)self->_GGMCtrl setKeyPointsList:getKeypointDataFromSampleBuffer(self->_inputSampleBuffer)];
        if (![(GGMController *)self->_GGMCtrl keyPointsList])
        {
          fig_log_get_emitter();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v14, *(&v14 + 1), epoch, v16, v17, v18);
        }

        FutureReferenceFrames = extractFutureReferenceFrames(&self->_lookaheadFrames, self->_ghostInformationLookAheadPointer, 1);
        if (FutureReferenceFrames)
        {
          fig_log_get_emitter();
          LODWORD(v13) = FutureReferenceFrames;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v13, v2, v14, *(&v14 + 1), epoch, v16, v17, v18);
        }

        [(GGMController *)self->_GGMCtrl setFutureFramesToDetectionAndRepair:&self->_lookaheadFrames];
        OneFrameFromSampleBuffer = [(VEVideoDeghostingDetectionAndTrackingV3 *)self _convertGGMStatus:[(GGMController *)self->_GGMCtrl processDetection]];
        if (!OneFrameFromSampleBuffer)
        {
          detectedGreenGhostInfo = [(GGMController *)self->_GGMCtrl detectedGreenGhostInfo];
          v10 = [detectedGreenGhostInfo objectForKeyedSubscript:@"GhostsInfoMetaData"];
          v11 = self->_detectionResult;
          self->_detectionResult = v10;

          OneFrameFromSampleBuffer = 0;
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v14, *(&v14 + 1), epoch, v16, v17, v18);
      OneFrameFromSampleBuffer = -12780;
    }
  }

  else
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v14, *(&v14 + 1), epoch, v16, v17, v18);
    OneFrameFromSampleBuffer = 2;
  }

  [(GGMController *)self->_GGMCtrl lightSourceMask];
  __destructor_8_s8_s16_s24_s32(&v17);
  return OneFrameFromSampleBuffer;
}

- (int)resetState
{
  detectionResult = self->_detectionResult;
  self->_detectionResult = 0;

  [(GGMController *)self->_GGMCtrl resetState];
  return 0;
}

- (int)_convertGGMStatus:(int64_t)status
{
  if (status == 5)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (status)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (VEVideoDeghostingDetectionAndTrackingV3)initWithMetalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters
{
  contextCopy = context;
  parametersCopy = parameters;
  v22.receiver = self;
  v22.super_class = VEVideoDeghostingDetectionAndTrackingV3;
  v11 = [(VEVideoDeghostingDetectionAndTrackingV3 *)&v22 init];
  if (!v11)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
    goto LABEL_8;
  }

  v12 = createConfigDictForDetection(0, parametersCopy);
  cfgDict = v11->_cfgDict;
  v11->_cfgDict = v12;

  commandQueue = [contextCopy commandQueue];
  metalCommandQueue = v11->_metalCommandQueue;
  v11->_metalCommandQueue = commandQueue;

  v11->_imageDimensions = dimensions;
  objc_storeStrong(&v11->_metalContext, context);
  v16 = [[GGMController alloc] initWithConfigDict:v11->_cfgDict metalContext:v11->_metalContext imageDimensions:dimensions forDetection:1];
  GGMCtrl = v11->_GGMCtrl;
  v11->_GGMCtrl = v16;

  if (!v11->_GGMCtrl)
  {
LABEL_8:
    v19 = 0;
    goto LABEL_5;
  }

  inited = initLookAheadFrameArray(&v11->_lookaheadFrames, 2);
  if (inited)
  {
    v21 = inited;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21);
    goto LABEL_8;
  }

  v19 = v11;
LABEL_5:

  return v19;
}

@end