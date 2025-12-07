@interface BWDisparityAPSScaling
- (BWDisparityAPSScaling)initWithDepthScalingTuningParameters:(id)parameters;
- (BWDisparityAPSScaling)initWithPortType:(id)type sensorIDString:(id)string;
- (double)adjustedDisparityScaleFactorForDisparityBuffer:(double)result focusRect:(double)rect focusDisatance:(double)disatance initialScale:(double)scale;
- (float)previewScalingFactorWithDisparityBuffer:(__CVBuffer *)buffer sbuf:(opaqueCMSampleBuffer *)sbuf;
- (float)stillImageScalingFactorWithDisparityBuffer:(__CVBuffer *)buffer sbuf:(opaqueCMSampleBuffer *)sbuf scaleFactorFromEFL:(float)l;
@end

@implementation BWDisparityAPSScaling

- (BWDisparityAPSScaling)initWithPortType:(id)type sensorIDString:(id)string
{
  string = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters depthScalingTuneParametersForPortType:"depthScalingTuneParametersForPortType:sensorIDString:" sensorIDString:type, string];
  if (string)
  {

    return [(BWDisparityAPSScaling *)self initWithDepthScalingTuningParameters:string];
  }

  else
  {
    [BWDisparityAPSScaling initWithPortType:? sensorIDString:?];
    return 0;
  }
}

- (BWDisparityAPSScaling)initWithDepthScalingTuningParameters:(id)parameters
{
  v16.receiver = self;
  v16.super_class = BWDisparityAPSScaling;
  v4 = [(BWDisparityAPSScaling *)&v16 init];
  if (v4)
  {
    [objc_msgSend(parameters objectForKeyedSubscript:{@"FocusRegionDisparityPercentile", "floatValue"}];
    v4->_focusRegionDisparityPercentile = v5;
    if (v5 >= 100.0 && v5 <= 0.0 || ([objc_msgSend(parameters objectForKeyedSubscript:{@"FocusRegionMinArea", "floatValue"}], v4->_focusRegionMinArea = v6, v6 == 0.0) || (objc_msgSend(objc_msgSend(parameters, "objectForKeyedSubscript:", @"FocusRegionMinApsDistanceMeters"), "floatValue"), v4->_focusRegionMinApsDistanceMeters = v7, v7 == 0.0) || (objc_msgSend(objc_msgSend(parameters, "objectForKeyedSubscript:", @"FocusRegionMaxApsDistanceMeters"), "floatValue"), v4->_focusRegionMaxApsDistanceMeters = v8, v8 == 0.0) || (objc_msgSend(objc_msgSend(parameters, "objectForKeyedSubscript:", @"FocusRegionMinDisparityDistanceMeters"), "floatValue"), v4->_focusRegionMinDisparityDistanceMeters = v9, v9 == 0.0) || (objc_msgSend(objc_msgSend(parameters, "objectForKeyedSubscript:", @"FocusRegionMaxDisparityDistanceMeters"), "floatValue"), v4->_focusRegionMaxDisparityDistanceMeters = v10, v10 == 0.0) || (objc_msgSend(objc_msgSend(parameters, "objectForKeyedSubscript:", @"ScaleRecoveryMinScalingFactor"), "floatValue"), v4->_scaleRecoveryMinScalingFactor = v11, v11 == 0.0) || (objc_msgSend(objc_msgSend(parameters, "objectForKeyedSubscript:", @"ScaleRecoveryMaxScalingFactor"), "floatValue"), v4->_scaleRecoveryMaxScalingFactor = v12, v12 == 0.0))
    {

      return 0;
    }

    else
    {
      v13 = [objc_msgSend(parameters objectForKeyedSubscript:{@"FocusRegionDisparitySamplingRate", "intValue"}];
      if (v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      v4->_focusRegionDisparitySamplingRate = v14;
    }
  }

  return v4;
}

- (float)stillImageScalingFactorWithDisparityBuffer:(__CVBuffer *)buffer sbuf:(opaqueCMSampleBuffer *)sbuf scaleFactorFromEFL:(float)l
{
  if ([(BWDisparityAPSScaling *)self isAPSScalingNeededForSbuf:sbuf])
  {
    if (!BWPortraitUtilitiesAttachSyntheticFocusRectangleToSampleBuffer(sbuf))
    {
      v9 = CMGetAttachment(sbuf, *off_1E798D340, 0);
      v10 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
      v11 = *(MEMORY[0x1E695F050] + 16);
      v15.origin = *MEMORY[0x1E695F050];
      v15.size = v11;
      if (CGRectMakeWithDictionaryRepresentation(v9, &v15))
      {
        [objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B2F0), "floatValue"}];
        v13 = [(BWDisparityAPSScaling *)self adjustedDisparityScaleFactorForDisparityBuffer:buffer focusRect:v15.origin.x focusDisatance:v15.origin.y initialScale:v15.size.width, v15.size.height, v12 / 100.0, l];
        return *&v13;
      }
    }
  }

  return l;
}

- (double)adjustedDisparityScaleFactorForDisparityBuffer:(double)result focusRect:(double)rect focusDisatance:(double)disatance initialScale:(double)scale
{
  if (!self)
  {
    return 0.0;
  }

  v12 = result;
  v14 = 1.0;
  if (disatance * scale > *(self + 12) && *(self + 20) > a7 && *(self + 16) < a7)
  {
    v17 = 0.0;
    if (a2)
    {
      v18 = *(self + 8);
      v19 = *(self + 40);
      v48.origin.x = OUTLINED_FUNCTION_1_88();
      if (!CGRectIsEmpty(v48))
      {
        FigCaptureUnityRect();
        v49.origin.x = OUTLINED_FUNCTION_1_88();
        CGRectIntersection(v49, v50);
        v20 = OUTLINED_FUNCTION_0_79();
        Width = CVPixelBufferGetWidth(v20);
        Height = CVPixelBufferGetHeight(a2);
        FigCaptureDenormalizeCropRect(Width | (Height << 32), scale, disatance, rect, v12);
        v23 = OUTLINED_FUNCTION_0_79();
        PixelFormatType = CVPixelBufferGetPixelFormatType(v23);
        v25 = FigDepthBytesPerPixelForDepthFormat(PixelFormatType);
        BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
        IOSurface = CVPixelBufferGetIOSurface(a2);
        if (IOSurface)
        {
          v28 = IOSurface;
          v29 = IOSurfaceLock(IOSurface, 5u, 0);
          if (v29)
          {
            v46 = v29;
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_33();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v46);
          }

          else
          {
            buffer = v28;
            v30 = llround(v12);
            BaseAddress = IOSurfaceGetBaseAddress(v28);
            array = [MEMORY[0x1E695DF70] array];
            if (v30 >= 1)
            {
              v34 = 0;
              v35 = llround(rect);
              v36 = BytesPerRow / v25;
              v37 = BaseAddress + 2 * BytesPerRow / v25 * llround(disatance) + 2 * llround(scale);
              v38 = v36 * v19;
              do
              {
                if (v35 >= 1)
                {
                  for (i = 0; i < v35; i += v19)
                  {
                    LOWORD(_D0) = *(v37 + 2 * i);
                    __asm { FCVT            S0, H0 }

                    [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", _D0)}];
                  }
                }

                v37 += 2 * v38;
                v34 += v19;
              }

              while (v34 < v30);
            }

            IOSurfaceUnlock(buffer, 5u, 0);
            v44 = [array sortedArrayUsingSelector:sel_compare_];
            [objc_msgSend(v44 objectAtIndexedSubscript:{fmaxf(floorf((v18 * objc_msgSend(v44, "count")) / 100.0) + -1.0, 0.0)), "floatValue"}];
            v17 = *&result;
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_33();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
        }
      }
    }

    v14 = 1.0;
    v45 = 1.0 / fmaxf(v17 * a8, 0.001);
    if (v45 > *(self + 24) && v45 < *(self + 28))
    {
      v14 = (1.0 / fmaxf(a7, 0.001)) * v45;
      if (v14 >= *(self + 36))
      {
        v14 = *(self + 36);
      }

      if (v14 < *(self + 32))
      {
        v14 = *(self + 32);
      }
    }
  }

  *&result = v14 * a8;
  return result;
}

- (float)previewScalingFactorWithDisparityBuffer:(__CVBuffer *)buffer sbuf:(opaqueCMSampleBuffer *)sbuf
{
  v6 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  v7 = [v6 objectForKeyedSubscript:*off_1E798B308];
  v8 = 0.0;
  if (v7)
  {
    lastObject = [v7 lastObject];
    v10 = *(MEMORY[0x1E695F050] + 16);
    v14.origin = *MEMORY[0x1E695F050];
    v14.size = v10;
    if (CGRectMakeWithDictionaryRepresentation(lastObject, &v14))
    {
      [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B2F0), "floatValue"}];
      v12 = [(BWDisparityAPSScaling *)self adjustedDisparityScaleFactorForDisparityBuffer:buffer focusRect:v14.origin.x focusDisatance:v14.origin.y initialScale:v14.size.width, v14.size.height, v11 / 100.0, 1.0];
      return *&v12;
    }
  }

  return v8;
}

- (void)initWithPortType:(const char *)a1 sensorIDString:.cold.1(const char *a1)
{
  fig_log_get_emitter();
  v2 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v1, v3, a1, v6, v7, vars0, vars8);
}

@end