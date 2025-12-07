@interface BWJasperColorStillsExecutorInput
- (BOOL)needMorePointClouds;
- (BWJasperColorStillsExecutorInput)initWithSettings:(id)settings portType:(id)type timeOfFlightCameraType:(int)cameraType;
- (id)description;
- (void)addPointCloud:(opaqueCMSampleBuffer *)cloud;
- (void)dealloc;
- (void)jasperPointCloudsForColorBuffer;
- (void)setColorBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type;
- (void)setColorBufferPTS:(id *)s exposureTime:(double)time;
@end

@implementation BWJasperColorStillsExecutorInput

- (BWJasperColorStillsExecutorInput)initWithSettings:(id)settings portType:(id)type timeOfFlightCameraType:(int)cameraType
{
  v11.receiver = self;
  v11.super_class = BWJasperColorStillsExecutorInput;
  v7 = [(BWStillImageProcessorControllerInput *)&v11 initWithSettings:settings portType:type];
  if (v7)
  {
    v7->_pointClouds = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (cameraType)
    {
      if (cameraType == 1)
      {
        v8 = 4;
      }

      else
      {
        v8 = 0;
      }

      if (cameraType == 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = v8;
      }

      v7->_numberOfPointCloudsRequired = v9;
    }

    else
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", -12780, v5, v11.receiver, v11.super_class, v12, v13, v14, v15);

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  colorBuffer = self->_colorBuffer;
  if (colorBuffer)
  {
    CFRelease(colorBuffer);
  }

  v4.receiver = self;
  v4.super_class = BWJasperColorStillsExecutorInput;
  [(BWStillImageProcessorControllerInput *)&v4 dealloc];
}

- (void)addPointCloud:(opaqueCMSampleBuffer *)cloud
{
  if (!cloud)
  {
    [(BWJasperColorStillsExecutorInput *)self addPointCloud:a2];
    return;
  }

  [(NSMutableArray *)self->_pointClouds addObject:?];
  v4 = [(NSMutableArray *)self->_pointClouds count];
  if (v4 != 1)
  {
    if (0xCCCCCCCCCCCCCCCDLL * v4 > 0x3333333333333333 || dword_1EB58DEA0 == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (dword_1EB58DEA0)
  {
LABEL_9:
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_10:
  if ([(BWJasperColorStillsExecutorInput *)self isReadyToExecute:v7])
  {
    [(BWJasperColorStillsExecutorInputDelegate *)self->_delegate inputReadyToExecute:self];
  }
}

- (void)setColorBufferPTS:(id *)s exposureTime:(double)time
{
  var3 = s->var3;
  *&self->_colorBufferPTS.value = *&s->var0;
  self->_colorBufferPTS.epoch = var3;
  self->_colorBufferExposureTime = time;
}

- (void)setColorBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type
{
  if (dword_1EB58DEA0)
  {
    v13 = 0;
    v12 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  colorBuffer = self->_colorBuffer;
  if (colorBuffer)
  {
    CFRelease(colorBuffer);
  }

  if (buffer)
  {
    v9 = CFRetain(buffer);
  }

  else
  {
    v9 = 0;
  }

  self->_colorBuffer = v9;
  self->_colorBufferType = type;
  if ([(BWJasperColorStillsExecutorInput *)self isReadyToExecute:v10])
  {
    [(BWJasperColorStillsExecutorInputDelegate *)self->_delegate inputReadyToExecute:self];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@ : pointClouds:%lu (req:%d) colorBuf:%p skip:%d", v4, self, -[BWStillImageCaptureSettings settingsID](-[BWStillImageProcessorControllerInput captureSettings](self, "captureSettings"), "settingsID"), BWPhotoEncoderStringFromEncodingScheme(-[BWStillImageCaptureStreamSettings captureType](-[BWStillImageProcessorControllerInput captureStreamSettings](self, "captureStreamSettings"), "captureType")), -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self, "captureStreamSettings"), "portType"), -[NSMutableArray count](self->_pointClouds, "count"), self->_numberOfPointCloudsRequired, self->_colorBuffer, self->_skipProcessing];
}

- (BOOL)needMorePointClouds
{
  if ([(NSMutableArray *)self->_pointClouds count]< self->_numberOfPointCloudsRequired)
  {
    return 1;
  }

  colorBuffer = self->_colorBuffer;
  if (!colorBuffer)
  {
    if ((self->_colorBufferPTS.flags & 1) != 0 && self->_colorBufferExposureTime > 0.0)
    {
      time = self->_colorBufferPTS;
      Seconds = CMTimeGetSeconds(&time);
      colorBufferExposureTime = self->_colorBufferExposureTime;
      goto LABEL_11;
    }

    return 1;
  }

  v4 = *off_1E798A3C8;
  v5 = CMGetAttachment(colorBuffer, *off_1E798A3C8, 0);
  v6 = self->_colorBuffer;
  if (v6)
  {
    v7 = [CMGetAttachment(v6 v4];
    CMTimeMakeFromDictionary(&time, v7);
    Seconds = CMTimeGetSeconds(&time);
  }

  else
  {
    Seconds = 0.0;
  }

  [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798B2A8), "doubleValue"}];
  colorBufferExposureTime = v11;
LABEL_11:
  result = 1;
  if (Seconds > 0.0 && colorBufferExposureTime > 0.0)
  {
    lastObject = [(NSMutableArray *)self->_pointClouds lastObject];
    if (lastObject)
    {
      v13 = [CMGetAttachment(lastObject *off_1E798A3C8];
      CMTimeMakeFromDictionary(&time, v13);
      v14 = CMTimeGetSeconds(&time);
    }

    else
    {
      v14 = 0.0;
    }

    v15 = colorBufferExposureTime + Seconds + 0.01;
    result = v15 > v14;
    if (v15 <= v14 && dword_1EB58DEA0 != 0)
    {
      v22 = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v18 = v22;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v21))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        [(NSMutableArray *)self->_pointClouds count];
        [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)self settings] settingsID];
        OUTLINED_FUNCTION_5();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 0;
    }
  }

  return result;
}

- (void)jasperPointCloudsForColorBuffer
{
  if (!self)
  {
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (!*(self + 88))
  {
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_9_20();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v51))
    {
      v41 = v52;
    }

    else
    {
      v41 = v52 & 0xFFFFFFFE;
    }

    if (v41)
    {
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_5_0(v42, v43, &time, v44, &dword_1AC90E000);
    }

    goto LABEL_55;
  }

  v4 = [OUTLINED_FUNCTION_3_36() count];
  v5 = *(self + 104);
  if (v4 < v5)
  {
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_9_20();
    v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_12_21(v45))
    {
      v46 = v1;
    }

    else
    {
      v46 = v1 & 0xFFFFFFFE;
    }

    if (v46)
    {
      [OUTLINED_FUNCTION_3_36() count];
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_5_0(v46, v47, &time, v48, &dword_1AC90E000);
    }

LABEL_55:
    OUTLINED_FUNCTION_7_26();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return array;
  }

  if (dword_1EB58DEA0)
  {
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_9_20();
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_12_21(v6))
    {
      v7 = v1;
    }

    else
    {
      v7 = v1 & 0xFFFFFFFE;
    }

    if (v7)
    {
      [OUTLINED_FUNCTION_3_36() count];
      firstObject = [OUTLINED_FUNCTION_3_36() firstObject];
      if (firstObject)
      {
        v9 = [CMGetAttachment(firstObject *off_1E798A3C8];
        CMTimeMakeFromDictionary(&time, v9);
        CMTimeGetSeconds(&time);
      }

      lastObject = [OUTLINED_FUNCTION_3_36() lastObject];
      if (lastObject)
      {
        v11 = [CMGetAttachment(lastObject *off_1E798A3C8];
        CMTimeMakeFromDictionary(&time, v11);
        CMTimeGetSeconds(&time);
      }

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_5_0(v7, v12, &time, v13, &dword_1AC90E000);
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = *(self + 104);
  }

  [objc_msgSend(OUTLINED_FUNCTION_8_23(*(self + 88)) objectForKeyedSubscript:{*off_1E798B2A8), "doubleValue"}];
  v15 = v14;
  v16 = *(self + 88);
  if (v16)
  {
    v17 = [OUTLINED_FUNCTION_8_23(v16) objectForKeyedSubscript:*off_1E798A420];
    CMTimeMakeFromDictionary(&time, v17);
    Seconds = CMTimeGetSeconds(&time);
  }

  else
  {
    Seconds = 0.0;
  }

  memset(v49, 0, sizeof(v49));
  v19 = *(self + 104);
  if ([OUTLINED_FUNCTION_3_36() count] <= v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    v21 = *off_1E798A420;
    do
    {
      v22 = v20 % *(self + 104);
      v23 = *(v49 + v22);
      if (v23 == 0.0)
      {
        v24 = [OUTLINED_FUNCTION_3_36() objectAtIndexedSubscript:v20];
        if (v24)
        {
          v25 = [OUTLINED_FUNCTION_8_23(v24) objectForKeyedSubscript:v21];
          CMTimeMakeFromDictionary(&time, v25);
          v23 = CMTimeGetSeconds(&time);
        }

        else
        {
          v23 = 0.0;
        }
      }

      v26 = [OUTLINED_FUNCTION_3_36() objectAtIndexedSubscript:v19 + v20];
      if (v26)
      {
        v27 = [OUTLINED_FUNCTION_8_23(v26) objectForKeyedSubscript:v21];
        CMTimeMakeFromDictionary(&time, v27);
        v28 = CMTimeGetSeconds(&time);
      }

      else
      {
        v28 = 0.0;
      }

      if (vabdd_f64(v15 * 0.5 + Seconds, v23) <= vabdd_f64(v15 * 0.5 + Seconds, v28))
      {
        break;
      }

      ++v20;
      *(v49 + v22) = v28;
    }

    while (v19 + v20 < [OUTLINED_FUNCTION_3_36() count]);
  }

  if (dword_1EB58DEA0)
  {
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_9_20();
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v30 = v52;
    if (os_log_type_enabled(v29, v51))
    {
      v31 = v30;
    }

    else
    {
      v31 = v30 & 0xFFFFFFFE;
    }

    if (v31)
    {
      v53.location = v20;
      v53.length = v5;
      NSStringFromRange(v53);
      v32 = [OUTLINED_FUNCTION_3_36() objectAtIndexedSubscript:v20];
      if (v32)
      {
        v33 = [OUTLINED_FUNCTION_8_23(v32) objectForKeyedSubscript:*off_1E798A420];
        CMTimeMakeFromDictionary(&time, v33);
        CMTimeGetSeconds(&time);
      }

      v34 = [OUTLINED_FUNCTION_3_36() objectAtIndexedSubscript:v5 + v20 - 1];
      if (v34)
      {
        v35 = [OUTLINED_FUNCTION_8_23(v34) objectForKeyedSubscript:*off_1E798A420];
        CMTimeMakeFromDictionary(&time, v35);
        CMTimeGetSeconds(&time);
      }

      OUTLINED_FUNCTION_5();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v20 < v20 + v5)
  {
    do
    {
      v36 = [OUTLINED_FUNCTION_3_36() objectAtIndexedSubscript:v20];
      CVDataBuffer = BWSampleBufferGetCVDataBuffer(v36);
      v38 = [objc_alloc(getADJasperPointCloudClass()) initWithDataBuffer:CVDataBuffer];
      [array addObject:v38];

      ++v20;
      --v5;
    }

    while (v5);
  }

  return array;
}

@end