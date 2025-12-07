@interface BWDeepZoomProcessorControllerConfiguration
+ (BOOL)doDeepZoomStandardOrLiteForSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(int)type sensorConfiguration:(id)configuration intermediateZoomSrcRectOut:(CGRect *)out intermediateZoomDstRectOut:(CGRect *)rectOut;
+ (BOOL)doDeepZoomStandardOrLiteForType:(int)type sensorConfiguration:(id)configuration dimensions:(id)dimensions metadata:(id)metadata stillImageSettings:(id)settings intermediateZoomSrcRectOut:(CGRect *)out intermediateZoomDstRectOut:(CGRect *)rectOut;
+ (BOOL)doDeepZoomTransferForSampleBuffer:(opaqueCMSampleBuffer *)buffer sensorConfiguration:(id)configuration intermediateZoomSrcRectOut:(CGRect *)out;
+ (int)deepZoomProcessingModeForType:(int)type sensorConfiguration:(id)configuration;
+ (void)quadraQSubIntermediateZoomRectForDimensions:(void *)dimensions metadata:(void *)metadata sensorConfiguration:(void *)configuration stillImageSettings:;
- (void)dealloc;
@end

@implementation BWDeepZoomProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeepZoomProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

+ (BOOL)doDeepZoomStandardOrLiteForType:(int)type sensorConfiguration:(id)configuration dimensions:(id)dimensions metadata:(id)metadata stillImageSettings:(id)settings intermediateZoomSrcRectOut:(CGRect *)out intermediateZoomDstRectOut:(CGRect *)rectOut
{
  v14 = *&type;
  if (dzpc_initializeTrace_sInitializeTraceOnceToken != -1)
  {
    +[BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForType:sensorConfiguration:dimensions:metadata:stillImageSettings:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:];
  }

  LOBYTE(v15) = 0;
  v16 = *(MEMORY[0x1E695F050] + 16);
  v100 = *MEMORY[0x1E695F050];
  v101 = v16;
  v98 = v100;
  v99 = v16;
  if ((v14 - 3) < 0xFFFFFFFE)
  {
    goto LABEL_70;
  }

  if (!configuration)
  {
    goto LABEL_70;
  }

  if (!metadata)
  {
    goto LABEL_70;
  }

  v88 = v16;
  if (!settings)
  {
    goto LABEL_70;
  }

  v17 = [objc_msgSend(configuration "sensorIDDictionary")];
  if (!v17)
  {
    goto LABEL_89;
  }

  LOBYTE(v15) = 0;
  if (!HIDWORD(*&dimensions) || !dimensions.var0)
  {
    goto LABEL_70;
  }

  v18 = v17;
  requestedSettings = [settings requestedSettings];
  if (!requestedSettings)
  {
LABEL_89:
    LOBYTE(v15) = 0;
    goto LABEL_70;
  }

  v20 = requestedSettings;
  v93 = [BWDeepZoomProcessorControllerConfiguration deepZoomProcessingModeForType:v14 sensorConfiguration:configuration];
  if (!v93)
  {
    +[BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForType:sensorConfiguration:dimensions:metadata:stillImageSettings:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:];
    goto LABEL_89;
  }

  v21 = *(MEMORY[0x1E695F058] + 16);
  v96 = *MEMORY[0x1E695F058];
  v97 = v21;
  FigCFDictionaryGetCGRectIfPresent();
  outputWidth = [v20 outputWidth];
  v23 = outputWidth / [v20 outputHeight];
  v24.n128_u64[0] = v96;
  v26.n128_u64[0] = *(&v97 + 1);
  v25.n128_u64[0] = v97;
  v27.n128_f64[0] = v23;
  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(dimensions.var0, *&dimensions >> 32, v24, *(&v96 + 1), v25, v26, v27, v28);
  width = v102.size.width;
  height = v102.size.height;
  x = v102.origin.x;
  y = v102.origin.y;
  if (CGRectIsEmpty(v102))
  {
    goto LABEL_89;
  }

  v94[0] = &unk_1F2247DE8;
  v94[1] = &unk_1F2247E00;
  v95[0] = @"Lite";
  v95[1] = @"Standard";
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:v94 count:2];
  v32 = [v31 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v14)}];
  if (!v32)
  {
    goto LABEL_89;
  }

  v33 = [v18 objectForKeyedSubscript:v32];
  if (!v33)
  {
    goto LABEL_89;
  }

  v34 = v33;
  v87 = *&v23;
  [objc_msgSend(v33 objectForKeyedSubscript:{@"RequiredExtraPaddingForGDC", "floatValue"}];
  v36 = v35;
  [objc_msgSend(v34 objectForKeyedSubscript:{@"MinScaleFactor", "floatValue"}];
  v38 = v37;
  [objc_msgSend(v34 objectForKeyedSubscript:{@"MaxScaleFactor", "floatValue"}];
  v40 = v39;
  v41 = [v20 outputWidth] / width;
  if (v41 < 1.0)
  {
    v41 = 1.0;
  }

  v42 = v41;
  v43 = [v20 outputHeight] / height;
  if (v43 < 1.0)
  {
    v43 = 1.0;
  }

  v44 = v43;
  v45 = v42 - v36;
  if ((v42 - v36) < 1.0)
  {
    v45 = 1.0;
  }

  v91 = v45;
  if ((v44 - v36) >= 1.0)
  {
    v46 = v44 - v36;
  }

  else
  {
    v46 = 1.0;
  }

  if (([objc_msgSend(settings "captureSettings")] & 0x10) != 0 && objc_msgSend(v34, "objectForKeyedSubscript:", @"QSub"))
  {
    [objc_msgSend(objc_msgSend(v34 objectForKeyedSubscript:{@"QSub", "objectForKeyedSubscript:", @"MinScaleFactor", "floatValue"}];
    v38 = v47;
  }

  metadataCopy = metadata;
  v48 = [metadata objectForKeyedSubscript:*off_1E798A718];
  v49 = v48;
  v50 = 1;
  if (v93 == 2)
  {
    v52 = v46 > 0.0 && v91 > 0.0;
    if (v48)
    {
      v50 = 1;
    }

    else
    {
      v50 = v52;
    }
  }

  v53 = v36 + v40;
  if (v42 >= v44)
  {
    v54 = v44;
  }

  else
  {
    v54 = v42;
  }

  v56 = v54 >= v38 || v48 != 0;
  v15 = v56 & v50;
  if (dword_1EB58E220)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v49)
  {
    rectOutCopy4 = rectOut;
    if (out && rectOut)
    {
      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        v100 = 0;
        __asm { FMOV            V0.2D, #1.0 }

        v101 = _Q0;
      }

      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        v98 = 0;
        __asm { FMOV            V0.2D, #1.0 }

        v99 = _Q0;
      }

      if (dword_1EB58E220)
      {
        v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_86;
    }

LABEL_70:
    rectOutCopy4 = rectOut;
    if (!out)
    {
      return v15;
    }

    goto LABEL_86;
  }

  if ((v93 - 3) < 3)
  {
LABEL_73:
    v70 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_70;
  }

  if (v93 == 1)
  {
    if (!dword_1EB58E220)
    {
      goto LABEL_70;
    }

    goto LABEL_73;
  }

  if (v93 != 2)
  {
    goto LABEL_70;
  }

  if (!v15)
  {
    goto LABEL_70;
  }

  LOBYTE(v15) = 1;
  if (!out || !rectOut)
  {
    goto LABEL_70;
  }

  if (![metadataCopy objectForKeyedSubscript:*off_1E798B7A0])
  {
    v66 = x;
    v65 = y;
    v67 = *&dimensions >> 32;
    goto LABEL_75;
  }

  v66 = x;
  v65 = y;
  v67 = *&dimensions >> 32;
  if (!FigCFDictionaryGetCGRectIfPresent())
  {
LABEL_75:
    if (v42 >= v44)
    {
      v71 = v42;
    }

    else
    {
      v71 = v44;
    }

    if (v71 <= v53)
    {
      v72 = v91;
    }

    else
    {
      v72 = v53;
    }

    if (v71 > v53)
    {
      v46 = v53;
    }

    v73 = ([v20 outputWidth] / v72);
    v74 = ([v20 outputHeight] / v46);
    v105.size.width = dimensions.var0;
    v105.size.height = dimensions.var1;
    v105.origin.x = 0.0;
    v105.origin.y = 0.0;
    v103.origin.x = v66 - (v73 - width) * 0.5;
    v103.origin.y = v65 - (v74 - height) * 0.5;
    v103.size.width = v73;
    v103.size.height = v74;
    v104 = CGRectIntersection(v103, v105);
    v100.x = v104.origin.x;
    v100.y = v104.origin.y;
    v101.width = v104.size.width;
    v101.height = v104.size.height;
    v104.origin.x = 0.0;
    v104.size.width = 1.0;
    v104.size.height = 1.0;
    v75.n128_u64[0] = v87;
    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(dimensions.var0, v67, v104.origin, 0.0, v104.size, *&v104.size.height, v75, v76);
    v98.x = v77;
    v98.y = v78;
    v99.width = v79;
    v99.height = v80;
    rectOutCopy4 = rectOut;
    if (dword_1EB58E220)
    {
      v81 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_85;
  }

  v68 = [objc_msgSend(metadataCopy objectForKeyedSubscript:{*off_1E798B5A8), "intValue"}];
  v69 = [objc_msgSend(metadataCopy objectForKeyedSubscript:{*off_1E798B5A0), "intValue"}];
  if (v68 && v69)
  {
    v66 = x + (v68 - v88.width) * 0.5;
    v65 = y + (v69 - v88.height) * 0.5;
    goto LABEL_75;
  }

  [BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForType:v69 sensorConfiguration:? dimensions:? metadata:? stillImageSettings:? intermediateZoomSrcRectOut:? intermediateZoomDstRectOut:?];
  rectOutCopy4 = rectOut;
LABEL_85:
  LOBYTE(v15) = 1;
LABEL_86:
  v82 = v101;
  out->origin = v100;
  out->size = v82;
  v83 = v99;
  rectOutCopy4->origin = v98;
  rectOutCopy4->size = v83;
  return v15;
}

+ (BOOL)doDeepZoomStandardOrLiteForSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(int)type sensorConfiguration:(id)configuration intermediateZoomSrcRectOut:(CGRect *)out intermediateZoomDstRectOut:(CGRect *)rectOut
{
  v10 = *&type;
  if (dzpc_initializeTrace_sInitializeTraceOnceToken != -1)
  {
    dispatch_once(&dzpc_initializeTrace_sInitializeTraceOnceToken, &__block_literal_global_140);
  }

  LOBYTE(ImageBuffer) = 0;
  v13 = *(MEMORY[0x1E695F050] + 16);
  v24 = *MEMORY[0x1E695F050];
  v25 = v13;
  v22 = v24;
  v23 = v13;
  if (configuration)
  {
    if (buffer)
    {
      if ((v10 - 3) >= 0xFFFFFFFE)
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
        if (ImageBuffer)
        {
          ImageBuffer = CMGetAttachment(buffer, *off_1E798A3C8, 0);
          if (ImageBuffer)
          {
            v14 = ImageBuffer;
            ImageBuffer = CMGetAttachment(buffer, @"StillSettings", 0);
            if (ImageBuffer)
            {
              v15 = ImageBuffer;
              v16 = BWPixelBufferDimensionsFromSampleBuffer(buffer);
              if (out)
              {
                v17 = &v24;
              }

              else
              {
                v17 = 0;
              }

              v18 = &v22;
              if (!rectOut)
              {
                v18 = 0;
              }

              LOBYTE(ImageBuffer) = [BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForType:v10 sensorConfiguration:configuration dimensions:v16 metadata:v14 stillImageSettings:v15 intermediateZoomSrcRectOut:v17 intermediateZoomDstRectOut:v18];
            }
          }
        }
      }
    }
  }

  if (out)
  {
    v19 = v25;
    out->origin = v24;
    out->size = v19;
  }

  if (rectOut)
  {
    v20 = v23;
    rectOut->origin = v22;
    rectOut->size = v20;
  }

  return ImageBuffer;
}

+ (BOOL)doDeepZoomTransferForSampleBuffer:(opaqueCMSampleBuffer *)buffer sensorConfiguration:(id)configuration intermediateZoomSrcRectOut:(CGRect *)out
{
  if (dzpc_initializeTrace_sInitializeTraceOnceToken != -1)
  {
    dispatch_once(&dzpc_initializeTrace_sInitializeTraceOnceToken, &__block_literal_global_140);
  }

  v8 = *MEMORY[0x1E695F050];
  v9 = *(MEMORY[0x1E695F050] + 8);
  v10 = *(MEMORY[0x1E695F050] + 16);
  v11 = *(MEMORY[0x1E695F050] + 24);
  if (buffer && configuration && (v12 = CMGetAttachment(buffer, *off_1E798A3C8, 0)) != 0 && (v13 = v12, (v14 = CMGetAttachment(buffer, @"StillSettings", 0)) != 0))
  {
    if (!out)
    {
      return 1;
    }

    v15 = v14;
    v16 = [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
    v17 = [v13 objectForKeyedSubscript:*off_1E798B540];
    if (v16 == 1 && [+[FigCaptureCameraParameters deepZoomTransferWithZoomedImageEnabledForPortType:"deepZoomTransferWithZoomedImageEnabledForPortType:sensorIDString:"]
    {
      v20 = BWPixelBufferDimensionsFromSampleBuffer(buffer);
      [BWDeepZoomProcessorControllerConfiguration quadraQSubIntermediateZoomRectForDimensions:v20 metadata:v13 sensorConfiguration:configuration stillImageSettings:v15];
      OUTLINED_FUNCTION_2_3();
      v18 = 1;
      if (!CGRectIsNull(v22) && dword_1EB58E220)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v18 = 1;
        OUTLINED_FUNCTION_11_59();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
    if (!out)
    {
      return v18;
    }
  }

  out->origin.x = v8;
  out->origin.y = v9;
  out->size.width = v10;
  out->size.height = v11;
  return v18;
}

+ (void)quadraQSubIntermediateZoomRectForDimensions:(void *)dimensions metadata:(void *)metadata sensorConfiguration:(void *)configuration stillImageSettings:
{
  objc_opt_self();
  if (dimensions && metadata && configuration)
  {
    v9 = [objc_msgSend(dimensions objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
    v10 = [objc_msgSend(configuration "captureSettings")] & 0x200000000;
    if (v9 == 1 && v10 != 0)
    {
      if ([objc_msgSend(metadata "sensorIDDictionary")])
      {
        if (HIDWORD(a2))
        {
          if (a2)
          {
            requestedSettings = [configuration requestedSettings];
            if (requestedSettings)
            {
              v13 = requestedSettings;
              v30 = *MEMORY[0x1E695F058];
              v31 = *(MEMORY[0x1E695F058] + 16);
              FigCFDictionaryGetCGRectIfPresent();
              outputWidth = [v13 outputWidth];
              v15 = outputWidth / [v13 outputHeight];
              v16.n128_u64[0] = v30;
              v18.n128_u64[0] = *(&v31 + 1);
              v17.n128_u64[0] = v31;
              v19.n128_f64[0] = v15;
              FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(a2, a2 >> 32, v16, *(&v30 + 1), v17, v18, v19, v20);
              width = v32.size.width;
              height = v32.size.height;
              if (!CGRectIsEmpty(v32) && width <= [v13 outputWidth] && height <= objc_msgSend(v13, "outputHeight"))
              {
                v28 = a2 / width;
                v29 = SHIDWORD(a2) / height;
                if (v28 < v29)
                {
                  v28 = SHIDWORD(a2) / height;
                }

                if (v28 < 2.0)
                {
                  v23.n128_u64[0] = 0.125;
                  v24.n128_u64[0] = 0.75;
                  v25.n128_u64[0] = 0.75;
                  v26.n128_f64[0] = v15;
                  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(a2, a2 >> 32, v23, 0.125, v24, v25, v26, v27);
                  OUTLINED_FUNCTION_2_3();
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_3();
}

+ (int)deepZoomProcessingModeForType:(int)type sensorConfiguration:(id)configuration
{
  if ((type - 4) < 0xFFFFFFFD || configuration == 0)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v12[7] = v4;
    v12[8] = v5;
    v7 = *&type;
    v8 = [objc_msgSend(configuration "sensorIDDictionary")];
    if (v8)
    {
      v9 = v8;
      v11[0] = &unk_1F2247DE8;
      v11[1] = &unk_1F2247E00;
      v12[0] = @"Lite";
      v12[1] = @"Standard";
      v11[2] = &unk_1F2247E18;
      v12[2] = @"Transfer";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
      [MEMORY[0x1E696AD98] numberWithInt:v7];
      v8 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
      if (v8)
      {
        if (v7 == 3)
        {
          LODWORD(v8) = 3;
        }

        else
        {
          v8 = [v9 objectForKeyedSubscript:v8];
          if (v8)
          {
            if ([objc_msgSend(v8 objectForKeyedSubscript:{@"UpsamplingDisabled", "BOOLValue"}])
            {
              LODWORD(v8) = 2;
            }

            else
            {
              LODWORD(v8) = 1;
            }
          }
        }
      }
    }
  }

  return v8;
}

@end