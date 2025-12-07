@interface VEVideoDeghostingDetectionAndTrackingV2
- (VEVideoDeghostingDetectionAndTrackingV2)initWithMetalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters;
- (int)_convertGGMStatus:(int64_t)status;
- (int)process;
- (int)resetState;
- (void)dealloc;
@end

@implementation VEVideoDeghostingDetectionAndTrackingV2

- (void)dealloc
{
  [(VEVideoDeghostingDetectionAndTrackingV2 *)self finishProcessing];
  [(VEVideoDeghostingDetectionAndTrackingV2 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = VEVideoDeghostingDetectionAndTrackingV2;
  [(VEVideoDeghostingDetectionAndTrackingV2 *)&v3 dealloc];
}

- (int)process
{
  v22 = 0;
  detectionResult = self->_detectionResult;
  self->_detectionResult = 0;

  if (self->_ghostInformationLookAheadPointer)
  {
    inputSampleBuffer = self->_inputSampleBuffer;
    if (inputSampleBuffer)
    {
      v6 = sub_BA98(&v21, inputSampleBuffer);
      if (v6)
      {
        fig_log_get_emitter();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v18, *(&v18 + 1), epoch, v20, v21, v22);
        v8 = 0;
      }

      else
      {
        GGMCtrl = self->_GGMCtrl;
        v18 = *&kCMTimeInvalid.value;
        epoch = kCMTimeInvalid.epoch;
        [(GGMController *)GGMCtrl setIspTimeStamp:&v18];
        [(GGMController *)self->_GGMCtrl setInputBuffer:v21];
        [(GGMController *)self->_GGMCtrl setMetaDictionary:v22];
        [(GGMController *)self->_GGMCtrl setLightSourceMask:sub_B8D8(self->_inputSampleBuffer)];
        if ([(GGMController *)self->_GGMCtrl lightSourceMask]&& CVPixelBufferGetPixelFormatType([(GGMController *)self->_GGMCtrl lightSourceMask]) == 1278226488)
        {
          [(GGMController *)self->_GGMCtrl setLightSourceMask:sub_C254([(GGMController *)self->_GGMCtrl lightSourceMask])];
          v8 = 1;
        }

        else
        {
          v8 = 0;
        }

        [(GGMController *)self->_GGMCtrl setKeyPointsList:sub_B9B0(self->_inputSampleBuffer)];
        if (![(GGMController *)self->_GGMCtrl keyPointsList])
        {
          fig_log_get_emitter();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v18, *(&v18 + 1), epoch, v20, v21, v22);
        }

        v9 = sub_BBAC(&self->_lookaheadFrames, self->_ghostInformationLookAheadPointer, 1);
        if (v9)
        {
          fig_log_get_emitter();
          LODWORD(v17) = v9;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v17, v2, v18, *(&v18 + 1), epoch, v20, v21, v22);
        }

        [(GGMController *)self->_GGMCtrl setFutureFramesToDetectionAndRepair:&self->_lookaheadFrames];
        v6 = [(VEVideoDeghostingDetectionAndTrackingV2 *)self _convertGGMStatus:[(GGMController *)self->_GGMCtrl processDetection]];
        if (v6)
        {
          fig_log_get_emitter();
          LODWORD(v17) = v6;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v17, v2, v18, *(&v18 + 1), epoch, v20, v21, v22);
        }

        else
        {
          detectedGreenGhostInfo = [(GGMController *)self->_GGMCtrl detectedGreenGhostInfo];
          v11 = [detectedGreenGhostInfo objectForKeyedSubscript:@"GhostsInfoMetaData"];
          v12 = self->_detectionResult;
          self->_detectionResult = v11;

          v6 = 0;
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v18, *(&v18 + 1), epoch, v20, v21, v22);
      v8 = 0;
      v6 = -12780;
    }
  }

  else
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v18, *(&v18 + 1), epoch, v20, v21, v22);
    v8 = 0;
    v6 = 2;
  }

  lightSourceMask = [(GGMController *)self->_GGMCtrl lightSourceMask];
  v14 = v8 ^ 1;
  if (!lightSourceMask)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    lightSourceMask2 = [(GGMController *)self->_GGMCtrl lightSourceMask];
    if (lightSourceMask2)
    {
      CFRelease(lightSourceMask2);
    }
  }

  return v6;
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

- (VEVideoDeghostingDetectionAndTrackingV2)initWithMetalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters
{
  contextCopy = context;
  parametersCopy = parameters;
  v22.receiver = self;
  v22.super_class = VEVideoDeghostingDetectionAndTrackingV2;
  v11 = [(VEVideoDeghostingDetectionAndTrackingV2 *)&v22 init];
  if (!v11)
  {
    fig_log_get_emitter();
    sub_14238();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
    goto LABEL_8;
  }

  v12 = sub_B7EC(0, parametersCopy);
  cfgDict = v11->_cfgDict;
  v11->_cfgDict = v12;

  commandQueue = [contextCopy commandQueue];
  metalCommandQueue = v11->_metalCommandQueue;
  v11->_metalCommandQueue = commandQueue;

  v11->_imageDimensions = dimensions;
  objc_storeStrong(&v11->_metalContext, context);
  v16 = [[GGMController alloc] initWithConfigDict:v11->_cfgDict metalContext:v11->_metalContext imageDimensions:dimensions];
  GGMCtrl = v11->_GGMCtrl;
  v11->_GGMCtrl = v16;

  if (!v11->_GGMCtrl)
  {
LABEL_8:
    v19 = 0;
    goto LABEL_5;
  }

  v18 = sub_BF58(&v11->_lookaheadFrames, 2);
  if (v18)
  {
    v21 = v18;
    fig_log_get_emitter();
    sub_14238();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21);
    goto LABEL_8;
  }

  v19 = v11;
LABEL_5:

  return v19;
}

@end