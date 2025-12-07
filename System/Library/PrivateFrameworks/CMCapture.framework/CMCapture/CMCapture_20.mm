void BWPreviewSynchronizerCreate_cold_1(const void **a1, const void ***a2)
{
  fig_log_get_emitter();
  v8 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v2, v10, v11, v12, v13, v14, v15);
  emitter = fig_log_get_emitter();
  if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, ">___ FigLivePreview ___|", 0x2E, v2, v6, v7, v9))
  {
    BWPreviewSynchronizerDestroy(a1);
    a1 = 0;
  }

  *a2 = a1;
}

void __getBMCameraCaptureAutoFocusROIClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getBMCameraCaptureAutoFocusROIClass(void)_block_invoke") description:{@"BWCoreAnalyticsReporter.m", 31, @"Unable to find class %s", "BMCameraCaptureAutoFocusROI"}];
  __break(1u);
}

void BiomeLibraryLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *BiomeLibraryLibrary(void)") description:{@"BWCoreAnalyticsReporter.m", 30, @"%s", *a1}];
  __break(1u);
}

uint64_t FigVirtualDisplaySourceCameraViewfinderStreamEnqueueFrame(uint64_t a1, opaqueCMSampleBuffer *a2, double a3, double a4, double a5, double a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  destinationBuffer = 0;
  v47 = **&MEMORY[0x1E6960C70];
  if (*DerivedStorage != 1 || (v13 = DerivedStorage, !*(DerivedStorage + 48)))
  {
    v33 = 0;
    goto LABEL_21;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  if (!ImageBuffer)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v6, v39, v40, v42, v44, hostTime.value, hostTime.timescale);
    emitter = fig_log_get_emitter();
    v33 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< FVDSourceCameraViewfinderStream >>>>", 0x13C, v6, v36, v37, v38);
    goto LABEL_21;
  }

  v15 = ImageBuffer;
  v16 = ((a5 + 0.5) & 0xFFFFFFFE);
  v17 = ((a6 + 0.5) & 0xFFFFFFFE);
  v43 = *(v13 + 8);
  v45 = a4;
  v41 = *(v13 + 16);
  v18 = *(v13 + 24);
  v19 = *(v13 + 32);
  CMSampleBufferGetPresentationTimeStamp(&v47, a2);
  hostTime = v47;
  v20 = CMClockConvertHostTimeToSystemUnits(&hostTime);
  v21 = v19 < v17 || v18 < v16;
  v22 = ((a6 + 0.5) & 0xFFFFFFFE);
  v23 = v16;
  if (v21)
  {
    v24 = v19 / v17;
    if (v19 / v17 >= v18 / v16)
    {
      v24 = v18 / v16;
    }

    v23 = ((v24 * v16) & 0xFFFFFFFE);
    v22 = ((v24 * v17) & 0xFFFFFFFE);
  }

  v25 = *(v13 + 48);
  v26 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v26)
  {
    v33 = 4294954514;
LABEL_20:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v33);
    goto LABEL_21;
  }

  v27 = v26(v25, 0, 1, &destinationBuffer, v23, v22);
  if (v27)
  {
    v33 = v27;
    goto LABEL_20;
  }

  v49.origin.x = (a3 + 0.5);
  v49.origin.y = (v45 + 0.5);
  v49.size.width = v16;
  v49.size.height = v17;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v49);
  VTSessionSetProperty(*(v13 + 56), *MEMORY[0x1E6983E40], DictionaryRepresentation);
  CFRelease(DictionaryRepresentation);
  v29 = VTPixelTransferSessionTransferImage(*(v13 + 56), v15, destinationBuffer);
  if (!v29)
  {
    v30 = *(v13 + 48);
    v31 = destinationBuffer;
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v32)
    {
      v33 = v32(v30, v31, v20, 0, 0, 0.0, 0.0, v23, v22, v43, v41, v18, v19);
      if (!v33)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v33 = 4294954514;
    }

    goto LABEL_20;
  }

  v33 = v29;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v33);
LABEL_21:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return v33;
}

uint64_t captureDeferredPhotoProcessorRemote_PrewarmSerialized(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!FigCaptureDeferredPhotoProcessorIsAllowedToPrewarm(a1, a2))
  {
    v9 = 0;
    goto LABEL_10;
  }

  v13 = 0;
  v14 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_68();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
    v9 = 4294954516;
LABEL_14:
    fig_log_get_emitter();
    LODWORD(v11) = v9;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v11, v3, v13, v14, v15, v16, v17, v18);
    goto LABEL_10;
  }

  ObjectID = captureDeferredPhotoProcessorRemote_getObjectID(a1, &v13);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (v8 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1], objc_msgSend(v8, "encodeObject:forKey:", a2, *MEMORY[0x1E696A508]), objc_msgSend(v8, "encodedData"), v8, ObjectID = FigXPCMessageSetCFData(), ObjectID) || (ObjectID = FigXPCMessageSetCFData(), ObjectID))
  {
    v9 = ObjectID;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_68();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9);
    goto LABEL_14;
  }

  v9 = FigXPCRemoteClientSendSyncMessage();
  if (v9)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_10:
  FigXPCRelease();
  return v9;
}

uint64_t captureDeferredPhotoProcessorRemote_CancelAllPrewarming(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  if (FigCaptureDeferredPhotoProcessorIsAllowedToPrewarm(a1, a2))
  {
    v3 = captureDeferredPhotoProcessorRemote_createBasicMessage(a1, 1668313709, &v8);
    if (v3)
    {
      v4 = v3;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_8();
      v6 = v4;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6);
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
      if (v4)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_8();
        v7 = v4;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  FigXPCRelease();
  return v4;
}

uint64_t FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_5(int a1)
{
  OUTLINED_FUNCTION_2_8();
  v6 = a1;
  v3 = OUTLINED_FUNCTION_5_17();
  FigDebugAssert3(v3, v6, v1);
  OUTLINED_FUNCTION_2_8();
  LODWORD(v7) = a1;
  v4 = OUTLINED_FUNCTION_5_17();
  return FigDebugAssert3(v4, v7, v1);
}

void cdpr_notificationFilter_cold_1(int a1, CFTypeRef *a2, void *a3, _DWORD *a4)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_8();
  v8 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v9, v10, v11, v12, v13, v14, v15);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a4 = 1;
  *a3 = 0;
}

uint64_t captureDeferredPhotoProcessorRemote_getObjectID_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0FLL, "<<<< FigCaptureDeferredPhotoProcessorRemote >>>>", 0xD5, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t captureDeferredPhotoProcessorRemote_getObjectID_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFBE4ALL, "<<<< FigCaptureDeferredPhotoProcessorRemote >>>>", 0xD6, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_4_7(v0);
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
}

uint64_t captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_4_7(v0);
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
}

uint64_t captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_4_7(v0);
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
}

uint64_t BWDimensionsConformingToZoomWithoutUpscalingIfRequired(uint64_t a1, void *a2, float a3)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_3_39();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_3_39();
  fig_note_initialize_category_with_default_work_cf();
  if (a1 < 1 || SHIDWORD(a1) <= 0)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v18, v19, v20, v21, v22, v23);
    return a1;
  }

  v8 = [a2 isZoomWithoutUpscalingEnabled];
  if (a3 <= 1.0 || !v8)
  {
    return a1;
  }

  v9.n128_f32[0] = a3;
  v15 = BWCropRectDimensionsForZoomFactor(a1, v9, v10, v11, v12, v13, v14);
  if (dword_1ED844210)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v15;
}

uint64_t BWUpdateThumbnailAndPreviewDimensionsForRequestedSettings(void *a1, uint64_t a2, float a3)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_12();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_5_12();
  fig_note_initialize_category_with_default_work_cf();
  v5 = [a1 thumbnailDimensions];
  v6 = HIDWORD(v5);
  v7 = v5 < 1 || SHIDWORD(v5) <= 0;
  v8 = v5;
  if (v7)
  {
    v25 = 0;
    if ([a1 outputFileType] != 1751476579 && objc_msgSend(a1, "outputFileType") != 1751476582 || (objc_msgSend(a1, "outputWidth"), objc_msgSend(a1, "outputHeight"), CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize()))
    {
      v25 = 320;
    }

    v9 = FigCaptureAspectRatioForDimensions([a1 outputDimensions]);
    v8 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v25 | (v25 << 32), v9);
    v6 = HIDWORD(v8);
    if ([a1 outputWidth] <= v8)
    {
      v8 = [a1 outputWidth];
    }

    if ([a1 outputHeight] <= v6)
    {
      v6 = [a1 outputHeight];
    }
  }

  [a1 setThumbnailWidth:v8];
  [a1 setThumbnailHeight:v6];
  if ([a1 rawThumbnailEnabled])
  {
    v10 = BWDimensionsConformingToZoomWithoutUpscalingIfRequired([a1 rawThumbnailDimensions], a1, a3);
    v11 = HIDWORD(v10);
    if ([a1 outputWidth] <= v10)
    {
      v10 = [a1 outputWidth];
    }

    if ([a1 outputHeight] <= v11)
    {
      v11 = [a1 outputHeight];
    }

    if ([a1 aspectRatio])
    {
      v12 = BWAspectRatioValueFromAspectRatio([a1 aspectRatio]);
      v13 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v10 | (v11 << 32), v12);
      v11 = HIDWORD(v13);
      v10 = v13;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  [a1 setRawThumbnailWidth:v10];
  [a1 setRawThumbnailHeight:v11];
  if ([a1 previewEnabled])
  {
    v14 = [a1 previewDimensions];
    v15 = HIDWORD(v14);
    v16 = MGGetSInt32Answer();
    v17 = MGGetSInt32Answer();
    if (HIDWORD(v14) && v14)
    {
      v18 = [a1 outputWidth];
      v19 = v16;
      if (v18 > v16)
      {
        v19 = [a1 outputWidth];
      }

      if (v19 <= v14)
      {
        v14 = v16;
        if ([a1 outputWidth] > v16)
        {
          v14 = [a1 outputWidth];
        }
      }

      v20 = [a1 outputHeight];
      v21 = v17;
      if (v20 > v17)
      {
        v21 = [a1 outputHeight];
      }

      if (v21 <= v15)
      {
        if ([a1 outputHeight] > v17)
        {
          v17 = [a1 outputHeight];
        }
      }

      else
      {
        v17 = v15;
      }
    }

    else
    {
      v14 = v16;
    }

    if ([a1 aspectRatio])
    {
      v22 = BWAspectRatioValueFromAspectRatio([a1 aspectRatio]);
      v23 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v14 | (v17 << 32), v22);
      v17 = HIDWORD(v23);
      v14 = v23;
    }
  }

  else
  {
    v17 = 0;
    v14 = 0;
  }

  [a1 setPreviewWidth:v14];
  return [a1 setPreviewHeight:v17];
}

BWStillImageFocusPixelBlurScoreResult *BWFocusPixelBlurScoreForMetadata(void *a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_12();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_5_12();
  fig_note_initialize_category_with_default_work_cf();
  v3 = [a1 objectForKeyedSubscript:*off_1E798B2E8];
  if (v3)
  {
    v4 = v3;
    if ([v3 length] == 4136)
    {
      v5 = [v4 bytes];
      if (*v5)
      {
        v7 = v5[27] * v5[26];
        if (v7)
        {
          v8 = 0;
          v9 = v5 + 44;
          v10 = 0.0;
          v11 = 0.0;
          do
          {
            if (*v9 && *(v9 - 1))
            {
              v12 = vcvts_n_f32_s32(*(v9 - 2), 8uLL);
              LOBYTE(v6) = *(v9 - 2);
              v6 = LODWORD(v6) / 255.0;
              v13 = (*(v9 - 1) * 8.0) * v6;
              ++v8;
              v10 = v10 + v13;
              v11 = v11 + ((v12 * v12) * v13);
            }

            v9 += 8;
            --v7;
          }

          while (v7);
          if (v8 < 0xA)
          {
            v14 = 5;
          }

          else
          {
            if (fabsf(v10) >= 0.0001)
            {
              v14 = 0;
              v15 = sqrtf(v11 / v10);
              goto LABEL_13;
            }

            v14 = 6;
          }
        }

        else
        {
          v14 = 4;
        }
      }

      else
      {
        v14 = 3;
      }
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 1;
  }

  v15 = NAN;
LABEL_13:
  v16 = [BWStillImageFocusPixelBlurScoreResult alloc];
  *&v17 = v15;
  v18 = [(BWStillImageFocusPixelBlurScoreResult *)v16 initWithStatus:v14 score:v17];

  return v18;
}

uint64_t BWPropagateInferenceAttachedMedia(void *a1, void *a2, CMVideoFormatDescriptionRef *a3, opaqueCMSampleBuffer *a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!a2)
  {
    return 4294954516;
  }

  if (!a3)
  {
    return 4294954516;
  }

  if (!a4)
  {
    return 4294954516;
  }

  v8 = [a1 inferenceBufferForAttachedMediaKey:a2];
  if (!v8)
  {
    return 4294954516;
  }

  v9 = v8;
  v10 = [a1 metadataForAttachedMediaKey:a2];
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v13 = BWMetadataAttachmentKeyForAttachedMediaKey(a2, v12);
  if (v13)
  {
    v14 = v13;
    v15 = [objc_msgSend(a1 "inferenceAttachedMediaMetadata")];
    if (v15)
    {
      [v11 setObject:v15 forKeyedSubscript:v14];
      goto LABEL_9;
    }

    return 4294954516;
  }

LABEL_9:

  return BWSampleBufferSetAttachedMediaFromPixelBuffer(a4, a2, v9, a3, v10, v11, v10 == 0);
}

unint64_t BWCommonDimensionsForResolutionFlavor(void *a1, uint64_t a2)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
LABEL_3:
    v8 = 0;
    v9 = v6;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(a1);
      }

      v10 = [a1 objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v8)];
      v11 = FigCaptureDimensionsFromDictionaryRepresentation([v10 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}]);
      v12 = v9 < 1 || SHIDWORD(v9) < 1;
      if (!v12 && v9 != v11)
      {
        break;
      }

      v6 = v11;
      ++v8;
      v9 = v11;
      if (v5 == v8)
      {
        v5 = [a1 countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        return v6;
      }
    }
  }

  return 0;
}

uint64_t pixelSumForROI_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v0);
}

uint64_t pixelSumForROI_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v0);
}

uint64_t pixelSumForROI_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v0);
}

uint64_t pixelSumForROI_cold_5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v0);
}

uint64_t pixelSumForROI_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v0);
}

uint64_t pixelSumForROI_cold_7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v0);
}

void PortraitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *PortraitLibrary(void)") description:{@"BWPortraitSoftLinking.m", 13, @"%s", *a1}];
  __break(1u);
}

void __getPTEffectClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTEffectClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 15, @"Unable to find class %s", "PTEffect"}];
  __break(1u);
}

void __getPTEffectDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTEffectDescriptorClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 16, @"Unable to find class %s", "PTEffectDescriptor"}];
  __break(1u);
}

void __getPTTextureClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTTextureClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 18, @"Unable to find class %s", "PTTexture"}];
  __break(1u);
}

void __getPTRenderPipelineClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTRenderPipelineClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 19, @"Unable to find class %s", "PTRenderPipeline"}];
  __break(1u);
}

void __getPTRenderRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTRenderRequestClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 20, @"Unable to find class %s", "PTRenderRequest"}];
  __break(1u);
}

void __getPTRenderPipelineDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTRenderPipelineDescriptorClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 21, @"Unable to find class %s", "PTRenderPipelineDescriptor"}];
  __break(1u);
}

void __getPTTuningParametersClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTTuningParametersClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 22, @"Unable to find class %s", "PTTuningParameters"}];
  __break(1u);
}

void __getPTCinematographyStreamClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTCinematographyStreamClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 26, @"Unable to find class %s", "PTCinematographyStream"}];
  __break(1u);
}

void __getPTCinematographyStreamOptionsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTCinematographyStreamOptionsClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 27, @"Unable to find class %s", "PTCinematographyStreamOptions"}];
  __break(1u);
}

void __getPTCinematographyRefinementClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTCinematographyRefinementClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 28, @"Unable to find class %s", "PTCinematographyRefinement"}];
  __break(1u);
}

void getPTCinematographyExcludeAsCinematicChoice_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (PTCinematographyExcludeAsCinematicChoice) (*)(void))0)()) getPTCinematographyExcludeAsCinematicChoice(void)") description:{@"BWPortraitSoftLinking.m", 29, @"%s", dlerror()}];
  __break(1u);
}

void __getPTGlobalCinematographyMetadataVersion1Class_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTGlobalCinematographyMetadataVersion1Class(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 32, @"Unable to find class %s", "PTGlobalCinematographyMetadataVersion1"}];
  __break(1u);
}

void __getPTGlobalRenderingMetadataVersion1Class_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTGlobalRenderingMetadataVersion1Class(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 33, @"Unable to find class %s", "PTGlobalRenderingMetadataVersion1"}];
  __break(1u);
}

void __getPTGlobalRenderingMetadataVersion2Class_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTGlobalRenderingMetadataVersion2Class(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 34, @"Unable to find class %s", "PTGlobalRenderingMetadataVersion2"}];
  __break(1u);
}

void __getPTGlobalStabilizationMetadataVersion1Class_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTGlobalStabilizationMetadataVersion1Class(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 35, @"Unable to find class %s", "PTGlobalStabilizationMetadataVersion1"}];
  __break(1u);
}

void __getPTGlobalVideoHeaderMetadataVersion1Class_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTGlobalVideoHeaderMetadataVersion1Class(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 36, @"Unable to find class %s", "PTGlobalVideoHeaderMetadataVersion1"}];
  __break(1u);
}

void __getPTGlobalVideoMetadataClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTGlobalVideoMetadataClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 37, @"Unable to find class %s", "PTGlobalVideoMetadata"}];
  __break(1u);
}

void __getPTTimedRenderingMetadataVersion1Class_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTTimedRenderingMetadataVersion1Class(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 38, @"Unable to find class %s", "PTTimedRenderingMetadataVersion1"}];
  __break(1u);
}

void __getPTTimedRenderingMetadataVersion2Class_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTTimedRenderingMetadataVersion2Class(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 39, @"Unable to find class %s", "PTTimedRenderingMetadataVersion2"}];
  __break(1u);
}

void __getPTTimedStabilizationMetadataVersion1Class_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTTimedStabilizationMetadataVersion1Class(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 40, @"Unable to find class %s", "PTTimedStabilizationMetadataVersion1"}];
  __break(1u);
}

void __getPTSerializationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTSerializationClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 41, @"Unable to find class %s", "PTSerialization"}];
  __break(1u);
}

void __getPTDisparityPostProcessingClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTDisparityPostProcessingClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 43, @"Unable to find class %s", "PTDisparityPostProcessing"}];
  __break(1u);
}

void __getPTEffectRenderRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTEffectRenderRequestClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 46, @"Unable to find class %s", "PTEffectRenderRequest"}];
  __break(1u);
}

void __getPTEffectReactionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPTEffectReactionClass(void)_block_invoke") description:{@"BWPortraitSoftLinking.m", 47, @"Unable to find class %s", "PTEffectReaction"}];
  __break(1u);
}

uint64_t FigSerializedDepthImageBufferMetadataSerializeIntoBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFBB71, "<<<< FigSerializedDepthImageBufferMetadata >>>>", 0x40, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFBB72, "<<<< FigSerializedDepthImageBufferMetadata >>>>", 0x6F, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFBB70, "<<<< FigSerializedDepthImageBufferMetadata >>>>", 0x7F, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFBB70, "<<<< FigSerializedDepthImageBufferMetadata >>>>", 0x80, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFBB70, "<<<< FigSerializedDepthImageBufferMetadata >>>>", 0x81, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_5(void *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, a1, "<<<< FigSerializedDepthImageBufferMetadata >>>>", 0x86, v1, v4, v5, v8);
}

void *bweia_addRequirement_base(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v10 = result;
    [result name];
    v11 = objc_alloc_init(BWInferenceVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v11 setWidth:a6];
    [(BWVideoFormatRequirements *)v11 setHeight:a7];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(v10, "imageDescriptor"), "pixelFormat")}];
    [(BWVideoFormatRequirements *)v11 setSupportedPixelFormats:OUTLINED_FUNCTION_26_18(v12, v13, v14, v15, v16, v17, v18, v19, v30, v32)];
    [(BWVideoFormatRequirements *)v11 setSupportedColorSpaceProperties:a3];
    [(BWInferenceVideoFormatRequirements *)v11 setDeviceOriented:0];
    v20 = [(BWVideoFormatRequirements *)v11 setBytesPerRowAlignment:64];
    v28 = OUTLINED_FUNCTION_36_16(v20, v21, v22, v23, v24, v25, v26, v27, v31);
    OUTLINED_FUNCTION_37_12(v28);
    if ([v10 isInput])
    {
      v29 = [OUTLINED_FUNCTION_23_20() bindEspressoInput:? fromAttachedMediaUsingKey:? withVideoFormat:? count:?];
    }

    else
    {
      v29 = [OUTLINED_FUNCTION_23_20() bindEspressoOutput:? asAttachedMediaUsingKey:? withVideoFormat:? count:?];
    }

    return (v29 != 0);
  }

  return result;
}

id __bweia_monocularStillsPipelineForInferenceConfiguration_block_invoke(uint64_t a1)
{
  result = objc_alloc_init(getADMonocularStillsPipelineParametersClass());
  if (result)
  {
    v3 = result;
    result = [*(a1 + 32) depthDataDimensions];
    if (result >= 1 && SHIDWORD(result) >= 1)
    {
      v5 = [*(a1 + 32) depthDataDimensions];
      [getADImageDimensionsClass() imageDimensionsWithWidth:v5 height:HIDWORD(v5)];
      [OUTLINED_FUNCTION_4() setRequestedDimensions:?];
      result = [objc_alloc(getADMonocularStillsPipelineClass()) initWithParameters:v3];
      if (result)
      {
        result = [result inferenceDescriptor];
        if (result)
        {
          v6 = result;
          result = [objc_msgSend(result configurationNameForLayout:{255), "copy"}];
          *(*(a1 + 40) + 8) = result;
          if (result)
          {
            result = [objc_msgSend(v6 "networkURL")];
            *(*(a1 + 40) + 16) = result;
            if (result)
            {
              *(*(a1 + 40) + 32) = [objc_msgSend(objc_msgSend(v6 "colorInput")];
              *(*(a1 + 40) + 28) = [objc_msgSend(objc_msgSend(v6 "colorInput")];
              *(*(a1 + 40) + 40) = [objc_msgSend(objc_msgSend(v6 "disparityOutput")];
              result = [objc_msgSend(objc_msgSend(v6 "disparityOutput")];
              *(*(a1 + 40) + 24) = result;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mscsn_streamOutputIndexForOutputID_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t multiStreamCameraSourceNode_outputSampleBuffer_cold_1()
{
  OUTLINED_FUNCTION_80();
  [BWMultiStreamCameraSourceNode _preserveMotionDataForSoonToBeDroppedSampleBuffer:v2];
  return [*(v1 + 136) sourceNodeWillDiscardVideoSampleBuffer:v0];
}

unint64_t multiStreamCameraSourceNode_outputSampleBuffer_cold_2()
{
  OUTLINED_FUNCTION_67_8();
  v3 = mscsn_streamOutputIDForOutputIndex(v2);
  [*(v0 + 12256) objectForKeyedSubscript:v3];
  v4 = OUTLINED_FUNCTION_17();
  result = [(BWMultiStreamCameraSourceNode *)v4 _outputDimensionsForOutputID:v3 outputConfiguration:v5];
  *(v1 + 128) = result;
  return result;
}

uint64_t multiStreamCameraSourceNode_outputSampleBuffer_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

void multiStreamCameraSourceNode_outputSampleBuffer_cold_8(CFTypeRef *a1, void *a2)
{
  v2 = [(BWMultiStreamCameraSourceNode *)a1 _createFocusPixelDataSampleBufferFromVideoSampleBuffer:a2];
  if (v2)
  {
    v3 = v2;
    v4 = OUTLINED_FUNCTION_27_1();
    BWSampleBufferSetAttachedMedia(v4, v5, v6);
    CFRelease(v3);
  }
}

uint64_t FigDepthRotateMetadataDictionary(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_5_71();
    OUTLINED_FUNCTION_3_52();
    FigDebugAssert3(v44);
    OUTLINED_FUNCTION_4_11();
    v51 = 1046;
LABEL_28:

    return FigSignalErrorAtGM(v45, v46, v47, v48, v51, v9, v49, v50, a9);
  }

  v9 = a1;
  v12 = *off_1E798CFE0;
  v13 = [a1 objectForKeyedSubscript:{*off_1E798CFE0, a4, a5, a6, a7, a8}];
  if (!v13)
  {
    OUTLINED_FUNCTION_5_71();
    OUTLINED_FUNCTION_3_52();
    FigDebugAssert3(v52);
    v45 = "%s signalled err=%d at <>:%d";
    v48 = "(Fig)";
    v46 = 0;
    v47 = 4294954512;
    v51 = 1052;
    goto LABEL_28;
  }

  size.width = 0.0;
  size.height = 0.0;
  if (!CGSizeMakeWithDictionaryRepresentation(v13, &size))
  {
    OUTLINED_FUNCTION_4_11();
    v34 = 1054;
    return FigSignalErrorAtGM(v28, v29, v30, v31, v34, v53, v32, v33, v55);
  }

  v14 = *off_1E798CFD8;
  v15 = [v9 objectForKeyedSubscript:*off_1E798CFD8];
  memset(v58, 0, sizeof(v58));
  if (!v15)
  {
    v17 = 0;
    goto LABEL_8;
  }

  v16 = v15;
  if ([v15 length] != 48)
  {
    OUTLINED_FUNCTION_4_11();
    v34 = 1064;
    return FigSignalErrorAtGM(v28, v29, v30, v31, v34, v53, v32, v33, v55);
  }

  v17 = v58;
  [v16 getBytes:v58 length:48];
LABEL_8:
  v18 = *off_1E798CFF0;
  v19 = [v9 objectForKeyedSubscript:*off_1E798CFF0];
  point.x = 0.0;
  point.y = 0.0;
  if (v19)
  {
    p_point = &point;
    if (!CGPointMakeWithDictionaryRepresentation(v19, &point))
    {
      OUTLINED_FUNCTION_5_71();
      OUTLINED_FUNCTION_3_52();
      FigDebugAssert3(v27);
      OUTLINED_FUNCTION_4_11();
      v34 = 1076;
LABEL_34:
      v53 = v9;
      return FigSignalErrorAtGM(v28, v29, v30, v31, v34, v53, v32, v33, v55);
    }
  }

  else
  {
    p_point = 0;
  }

  v35 = 0.0;
  memset(v56, 0, sizeof(v56));
  if (a3 && (v36 = [v9 objectForKeyedSubscript:*off_1E798CFC8]) != 0)
  {
    v37 = v36;
    if ([v36 length] != 64)
    {
      OUTLINED_FUNCTION_5_71();
      OUTLINED_FUNCTION_3_52();
      FigDebugAssert3(v54);
      OUTLINED_FUNCTION_4_11();
      v34 = 1090;
      goto LABEL_34;
    }

    v38 = v56;
    [v37 getBytes:v56 length:64];
  }

  else
  {
    v38 = 0;
  }

  result = FigCaptureRotateCalibrationData(&size, v17, p_point, v38, a2, v35, v20, v21, v22, v23, v24, v25);
  if (!result)
  {
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(size);
    [v9 setObject:DictionaryRepresentation forKeyedSubscript:v12];

    if (v17)
    {
      v41 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v17 length:48];
      [v9 setObject:v41 forKeyedSubscript:v14];
    }

    if (p_point)
    {
      v42 = CGPointCreateDictionaryRepresentation(point);
      [v9 setObject:v42 forKeyedSubscript:v18];
    }

    if (v38)
    {
      v43 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v38 length:64];
      [v9 setObject:v43 forKeyedSubscript:*off_1E798CFC8];
    }

    return 0;
  }

  return result;
}

uint64_t FigDepthComputeNormalizedFocalLength(void *a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  v11 = [a1 objectForKeyedSubscript:{*off_1E798CFD8, a4, a5, a6, a7, a8}];
  v12 = *(MEMORY[0x1E69E9B10] + 16);
  v26[0] = *MEMORY[0x1E69E9B10];
  v26[1] = v12;
  v26[2] = *(MEMORY[0x1E69E9B10] + 32);
  if (!v11)
  {
    goto LABEL_4;
  }

  v13 = v11;
  if ([v11 length] == 48)
  {
    [v13 getBytes:v26 length:48];
LABEL_4:
    v25 = *MEMORY[0x1E695F060];
    v14 = [a1 objectForKeyedSubscript:{*off_1E798CFE0, *&v25.width}];
    if (v14 && CGSizeMakeWithDictionaryRepresentation(v14, &v25))
    {
      v15 = 0.0;
      if (v25.width > 0.0)
      {
        v16 = *v26;
        v15 = v16 / FigCaptureLongerDimensionForDimensions(v25.width | (v25.height << 32));
      }

      if (a2)
      {
        *a2 = v15;
      }
    }

    return 0;
  }

  OUTLINED_FUNCTION_4_11();

  return FigSignalErrorAtGM(v18, v19, v20, v21, 0xD60, v22, v23, v24, a9);
}

uint64_t FigDepthRotateBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_4_11();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x3F9, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t FigDepthConvertBuffer_cold_1(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_4_75();
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3(v4);
  OUTLINED_FUNCTION_8_52();
  result = FigSignalErrorAtGM(v5, v6, v7, v8, 0x5EF, v2, v9, v10, v12);
  *a2 = result;
  return result;
}

uint64_t FigDepthConvertBuffer_cold_2(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_4_75();
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3(v4);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0ELL, "(Fig)", 0x60F, v2, v5, v6, v8);
  *a2 = result;
  return result;
}

uint64_t FigDepthConvertBuffer_cold_3(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_4_75();
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3(v4);
  OUTLINED_FUNCTION_8_52();
  result = FigSignalErrorAtGM(v5, v6, v7, v8, 0x61A, v2, v9, v10, v12);
  *a2 = result;
  return result;
}

uint64_t FigDepthConvertBuffer_cold_4(void *a1)
{
  OUTLINED_FUNCTION_2_98(a1, v1);
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v2);
}

uint64_t FigDepthConvertBuffer_cold_5(void *a1)
{
  OUTLINED_FUNCTION_2_98(a1, v1);
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v2);
}

uint64_t FigDepthConvertBuffer_cold_6(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_4_75();
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3(v4);
  OUTLINED_FUNCTION_8_52();
  result = FigSignalErrorAtGM(v5, v6, v7, v8, 0x621, v2, v9, v10, v12);
  *a2 = result;
  return result;
}

uint64_t FigDepthConvertBuffer_cold_7(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_4_75();
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3(v4);
  OUTLINED_FUNCTION_8_52();
  result = FigSignalErrorAtGM(v5, v6, v7, v8, 0x629, v2, v9, v10, v12);
  *a2 = result;
  return result;
}

uint64_t FigDepthConvertBuffer_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_6_69();
  v11 = 0;
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3(v3, v11);
  OUTLINED_FUNCTION_8_52();
  result = FigSignalErrorAtGM(v4, v5, v6, v7, 0x62D, v1, v8, v9, v12);
  *a1 = result;
  return result;
}

uint64_t FigDepthConvertBuffer_cold_9(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_4_75();
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3(v4);
  OUTLINED_FUNCTION_8_52();
  result = FigSignalErrorAtGM(v5, v6, v7, v8, 0x639, v2, v9, v10, v12);
  *a2 = result;
  return result;
}

uint64_t FigDepthConvertBuffer_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_6_69();
  v11 = 0;
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3(v3, v11);
  OUTLINED_FUNCTION_8_52();
  result = FigSignalErrorAtGM(v4, v5, v6, v7, 0x636, v1, v8, v9, v12);
  *a1 = result;
  return result;
}

uint64_t FigDepthConvertBuffer_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_6_69();
  v11 = 0;
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3(v3, v11);
  OUTLINED_FUNCTION_8_52();
  result = FigSignalErrorAtGM(v4, v5, v6, v7, 0x642, v1, v8, v9, v12);
  *a1 = result;
  return result;
}

uint64_t FigDepthConvertBuffer_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_6_69();
  v11 = 0;
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3(v3, v11);
  OUTLINED_FUNCTION_4_11();
  result = FigSignalErrorAtGM(v4, v5, v6, v7, 0x5DA, v1, v8, v9, v12);
  *a1 = result;
  return result;
}

uint64_t figDepthConvertBufferFloat16ToFloat32_cold_1(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_6_69();
  v9 = v4;
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3(v5, v9);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0FLL, "(Fig)", 0x481, v2, v6, v7, v10);
  *a2 = result;
  return result;
}

uint64_t figDepthConvertBufferFloat32ToFloat16_cold_1(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_6_69();
  v9 = v4;
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3(v5, v9);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0FLL, "(Fig)", 0x472, v2, v6, v7, v10);
  *a2 = result;
  return result;
}

uint64_t figDepthClampAndInvertFloat32_C_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v0);
}

uint64_t figDepthClampAndInvertFloat32_C_cold_2()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3(v0);
  v1 = OUTLINED_FUNCTION_45();

  return CVPixelBufferUnlockBaseAddress(v1, v2);
}

uint64_t FigDepthScaleBufferWithCrop_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_4_11();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB28, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t FigDepthScaleBufferWithCrop_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_4_11();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB27, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t FigDepthConvertToRGBA_cold_3(void *a1)
{
  OUTLINED_FUNCTION_2_98(a1, v1);
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v2);
}

uint64_t FigDepthConvertToRGBA_cold_4(void *a1)
{
  OUTLINED_FUNCTION_2_98(a1, v1);
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v2);
}

uint64_t FigDepthConvertToRGBA_cold_6(void *a1)
{
  OUTLINED_FUNCTION_2_98(a1, v1);
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v2);
}

uint64_t FigDepthBlurEffectRenderingParametersV4FromCFData_cold_5()
{
  v4 = 0;
  v1 = OUTLINED_FUNCTION_10_45();
  FigDebugAssert3(v1, v4, v0);
  LODWORD(v5) = 0;
  v2 = OUTLINED_FUNCTION_10_45();
  return FigDebugAssert3(v2, v5, v0);
}

uint64_t FigDepthBlurEffectRenderingVersion4_GetParameter_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v0);
}

uint64_t FigDepthBlurEffectRenderingVersion4_GetParameter_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v0);
}

uint64_t FigDepthBlurEffectRenderingVersion4_GetParameter_cold_7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v0);
}

uint64_t FigDepthBlurEffectRenderingVersion4_GetParameter_cold_8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v0);
}

uint64_t FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_3()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v0);
}

uint64_t FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_3()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_52();
  return FigDebugAssert3(v0);
}

void FigCaptureSessionServerInvokeContinuityCameraMultitaskingDialogIfNeeded(uint64_t a1, uint64_t a2)
{
  IsWombatEnabled = FigCaptureIsWombatEnabled(0, a2);
  if (IsWombatEnabled && BWDeviceIsiPad(IsWombatEnabled, v3))
  {
    if (captureSessionServer_registerForContinuityCameraMultitaskingDisallowed_notifyRegisterOnce != -1)
    {
      dispatch_once(&captureSessionServer_registerForContinuityCameraMultitaskingDisallowed_notifyRegisterOnce, &__block_literal_global_28);
    }

    global_queue = dispatch_get_global_queue(0, 0);

    dispatch_async(global_queue, &__block_literal_global_102);
  }
}

uint64_t __captureSessionServer_registerForContinuityCameraMultitaskingDisallowed_block_invoke(uint64_t a1, uint64_t a2)
{
  result = BWDeviceIsiPad(a1, a2);
  if (result)
  {
    unk_1ED845190 = CFPreferencesGetAppIntegerValue(@"continuity_camera_in_use.previous_time", @"com.apple.cameracapture", 0);
    dword_1ED845174 = CFPreferencesGetAppIntegerValue(@"continuity_camera_in_use.count", @"com.apple.cameracapture", 0);
    global_queue = dispatch_get_global_queue(0, 0);
    result = notify_register_dispatch("com.apple.MediaExperience.DisallowedActivationDueToContinuityCapture", &dword_1ED845178, global_queue, &__block_literal_global_31_0);
    if (!result)
    {
      state64 = 0;
      return notify_get_state(dword_1ED845178, &state64);
    }
  }

  return result;
}

void captureSessionServer_releaseServerStorage(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 1);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 2);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 3);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 5);
    if (v6)
    {
      v16 = 0;
      if (!FigCaptureSessionSupportsLaunchPrewarmingBundleID(v6, &v16) || !v16)
      {
        goto LABEL_21;
      }

      v15 = OS_LOG_TYPE_INFO;
      v7 = FigCaptureSessionDetachFromClient(*(a1 + 5), &v15);
      os_unfair_lock_lock(&_MergedGlobals_10);
      v8 = [objc_msgSend(qword_1ED845188 objectForKeyedSubscript:{v16), "intValue"}];
      v9 = 0;
      if (!v7 && v8 == 1)
      {
        if (v15 == OS_LOG_TYPE_INFO)
        {
          [qword_1ED845180 setObject:*(a1 + 5) forKeyedSubscript:v16];
          if (dword_1ED843FD0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7_61();
            v9 = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          else
          {
            v9 = 1;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(qword_1ED845188, "objectForKeyedSubscript:", v16), "intValue") - 1}];
      [qword_1ED845188 setObject:v11 forKeyedSubscript:v16];
      os_unfair_lock_unlock(&_MergedGlobals_10);
      if ((v9 & 1) == 0)
      {
LABEL_21:
        if (dword_1ED843FD0)
        {
          v15 = OS_LOG_TYPE_DEFAULT;
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v12, v15);
          OUTLINED_FUNCTION_7_61();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v13 = *(a1 + 5);
        if (v13)
        {
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v14)
          {
            v14(v13);
          }
        }
      }

      CFRelease(*(a1 + 5));
    }

    free(a1);
  }
}

uint64_t __captureSessionServer_configureCompositingSinkCallbackIfNecessary_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, int a6, void *a7, int a8, void *target, void *a10)
{
  v13 = [*(a1 + 32) referencedObject];
  v45 = 0;
  message = 0;
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = FigXPCCreateBasicMessage();
  if (v14 || (v14 = FigXPCMessageSetCFString(), v14) || ([MEMORY[0x1E696AD98] numberWithLongLong:a3], v14 = FigXPCMessageSetCFNumber(), v14))
  {
    v34 = v14;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_17_14();
  v21 = csr_serializeClientCompositingSampleBuffer(v15, v16, v17, v18, v19, v20);
  if (v21 || a5 && (v43 = *off_1E798A3C8, v44 = CMGetAttachment(a5, v43, 0), v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1], v21 = csr_serializeClientCompositingSampleBuffer(a5, kFigCaptureSinkClientCompositingCallback_PrimaryGainMapSampleBuffer_SerializedSurface, 0, kFigCaptureSinkClientCompositingCallback_PrimaryGainMapSampleBuffer_SerializedData, v35, message), v21) || (OUTLINED_FUNCTION_17_14(), v21 = csr_serializeClientCompositingSampleBuffer(v22, v23, v24, v25, v26, v27), v21) || a7 && (v41 = *off_1E798A3C8, v42 = CMGetAttachment(a7, v41, 0), v36 = objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v42, &v41, 1), v21 = csr_serializeClientCompositingSampleBuffer(a7, kFigCaptureSinkClientCompositingCallback_SecondaryGainMapSampleBuffer_SerializedSurface, 0, kFigCaptureSinkClientCompositingCallback_SecondaryGainMapSampleBuffer_SerializedData, v36, message), v21) || (OUTLINED_FUNCTION_17_14(), v21 = csr_serializeClientCompositingSampleBuffer(v28, v29, v30, v31, v32, v33), v21) || target && (v39 = *off_1E798A3C8, v40 = CMGetAttachment(target, v39, 0), v38 = objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v40, &v39, 1), v21 = csr_serializeClientCompositingSampleBuffer(target, kFigCaptureSinkClientCompositingCallback_OutputGainMapSampleBuffer_SerializedSurface, 0, kFigCaptureSinkClientCompositingCallback_OutputGainMapSampleBuffer_SerializedData, v38, message), v21))
  {
    v34 = v21;
    goto LABEL_18;
  }

  if (!xpc_connection_send_message_with_reply_sync(v13, message) || (FigXPCMessageCopyCFDictionary(), !a10))
  {
LABEL_19:
    v34 = 0;
    goto LABEL_18;
  }

  v34 = 0;
  *a10 = v45;
LABEL_18:
  FigXPCRelease();
  FigXPCRelease();
  return v34;
}

uint64_t csr_serializeClientCompositingSampleBuffer(opaqueCMSampleBuffer *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
  XPCObject = IOSurfaceCreateXPCObject(IOSurface);
  if (!XPCObject)
  {
    return 4294954510;
  }

  xpc_dictionary_set_value(a6, a2, XPCObject);
  FigXPCRelease();
  if (a3)
  {
    CMSampleBufferGetPresentationTimeStamp(&time, a1);
    v14 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
    FigXPCMessageSetCFDictionary();
    if (v14)
    {
      CFRelease(v14);
    }
  }

  if (!a4)
  {
    return 0;
  }

  time.value = 0;
  OUTLINED_FUNCTION_17_14();
  SerializedAtomDataForSampleBufferWithOptions = FigRemote_CreateSerializedAtomDataForSampleBufferWithOptions();
  if (SerializedAtomDataForSampleBufferWithOptions)
  {
    v17 = SerializedAtomDataForSampleBufferWithOptions;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, "<< FigCaptureSessionServer >> Fig", "err == 0 ", "bail", 0, "FigCaptureSessionServer.m", 893, 0);
  }

  else
  {
    v16 = FigXPCMessageSetAndConsumeVMData();
    v17 = v16;
    if (v16)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", qword_1ED843FC8, "<< FigCaptureSessionServer >> Fig", "err == 0 ", "bail", 0, "FigCaptureSessionServer.m", 896, v16);
    }
  }

  return v17;
}

uint64_t captureSessionServer_handleReplyMessage_cold_8(id *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v10, v11, v12, v13, v14, vars0, vars8);
  v3 = qword_1ED843FC8;
  v4 = [*a1 code];
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, "<< FigCaptureSessionServer >>", 0x104, v1, v5, v6, v9);
}

uint64_t captureSessionServer_handleReplyMessage_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED843FC8, 0xFFFFFFCELL, "<< FigCaptureSessionServer >>", 0x306, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSessionServer_handleReplyMessage_cold_19(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED843FC8, 0xFFFFCE10, "<< FigCaptureSessionServer >>", 0x2B1, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSessionServer_handleReplyMessage_cold_30(id *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v10, v11, v12, v13, v14, vars0, vars8);
  v3 = qword_1ED843FC8;
  v4 = [*a1 code];
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, "<< FigCaptureSessionServer >>", 0x1E6, v1, v5, v6, v9);
}

uint64_t captureSessionServer_handleReplyMessage_cold_33(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED843FC8, 0xFFFFCE10, "<< FigCaptureSessionServer >>", 0x26D, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSessionServer_messageUnpackCopy_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED843FC8, 0xFFFFCE14, "<< FigCaptureSessionServer >>", 0x63, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSessionServer_messageUnpackCopy_cold_6(id *a1, _DWORD *a2)
{
  v10 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v10, v2, v12, v13, v14, v15, vars0, vars8);
  v5 = qword_1ED843FC8;
  v6 = [*a1 code];
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, "<< FigCaptureSessionServer >>", 0x83, v2, v7, v8, v11);
  *a2 = result;
  return result;
}

uint64_t captureSessionServer_messageUnpackCopy_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED843FC8, 0xFFFFFFCELL, "<< FigCaptureSessionServer >>", 0x86, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

double fcft_GetRate(uint64_t a1)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  if (TimeSyncClockGetClockRateAndAnchors())
  {
    return 1.0;
  }

  else
  {
    return 0 / 0 * (*(DerivedStorage + 40) / *(DerivedStorage + 48));
  }
}

void __getBrightnessSystemClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getBrightnessSystemClientClass(void)_block_invoke") description:{@"BWAmbientLightSensor.m", 18, @"Unable to find class %s", "BrightnessSystemClient"}];
  __break(1u);
}

void __getBrightnessSystemClientClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *CoreBrightnessLibrary(void)") description:{@"BWAmbientLightSensor.m", 17, @"%s", *a1}];
  __break(1u);
}

void __getSTActivityAttributionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getSTActivityAttributionClass(void)_block_invoke") description:{@"BWCameraStreamingMonitor.m", 51, @"Unable to find class %s", "STActivityAttribution"}];
  __break(1u);
}

void SystemStatusLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *SystemStatusLibrary(void)") description:{@"BWCameraStreamingMonitor.m", 48, @"%s", *a1}];
  __break(1u);
}

void __getSTMediaStatusDomainPublisherClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getSTMediaStatusDomainPublisherClass(void)_block_invoke") description:{@"BWCameraStreamingMonitor.m", 49, @"Unable to find class %s", "STMediaStatusDomainPublisher"}];
  __break(1u);
}

void __getSTDynamicActivityAttributionPublisherClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getSTDynamicActivityAttributionPublisherClass(void)_block_invoke") description:{@"BWCameraStreamingMonitor.m", 55, @"Unable to find class %s", "STDynamicActivityAttributionPublisher"}];
  __break(1u);
}

void __getSTExecutableIdentityClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getSTExecutableIdentityClass(void)_block_invoke") description:{@"BWCameraStreamingMonitor.m", 57, @"Unable to find class %s", "STExecutableIdentity"}];
  __break(1u);
}

void __getSTAttributedEntityClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getSTAttributedEntityClass(void)_block_invoke") description:{@"BWCameraStreamingMonitor.m", 53, @"Unable to find class %s", "STAttributedEntity"}];
  __break(1u);
}

uint64_t asn_audioUnitRenderProc_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t BWPhotonicEngineUtilitiesComputeStereoPhotoDistortionCorrectionProcessorInputConfigurations(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = [objc_msgSend(a1 "captureSettings")];
  result = 0;
  if (a7 && a6 && v13)
  {
    v60 = [MEMORY[0x1E695DF90] dictionary];
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v99[0] = 0;
    v16 = *(MEMORY[0x1E69E9B10] + 16);
    v97[0] = *MEMORY[0x1E69E9B10];
    v97[1] = v16;
    v98 = *(MEMORY[0x1E69E9B10] + 32);
    v96[0] = v97[0];
    v96[1] = v16;
    v96[2] = v98;
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v25 = OUTLINED_FUNCTION_0_105(v17, v18, v19, v20, v21, v22, v23, v24, a6, a7, v60, a5, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94);
    if (v25)
    {
      v26 = v25;
      v27 = MEMORY[0];
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (MEMORY[0] != v27)
          {
            objc_enumerationMutation(a2);
          }

          v29 = [v17 setObject:objc_msgSend(objc_msgSend(a2 forKeyedSubscript:{"objectForKeyedSubscript:", *(8 * i)), "cameraInfo"), *(8 * i)}];
        }

        v26 = OUTLINED_FUNCTION_0_105(v29, v30, v31, v32, v33, v34, v35, v36, v58, v59, v61, targeta, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95);
      }

      while (v26);
    }

    if ([v17 count] && objc_msgSend(objc_msgSend(objc_msgSend(a1, "captureSettings"), "secondaryPortTypes"), "count") == 1)
    {
      v37 = a3;
      v38 = SHIDWORD(a3);
      v39 = CMGetAttachment(targeta, *off_1E798D2E8, 0);
      v40 = [v39 objectForKeyedSubscript:@"Primary"];
      v41 = [v39 objectForKeyedSubscript:@"Secondary"];
      v42 = penu_validateDepthMetadata(v40, a4);
      v43 = 0;
      v44 = 0;
      if (v42)
      {
        v57 = penu_validateDepthMetadata(v41, targeta);
        v43 = 0;
        if (v40 && v41)
        {
          v44 = 0;
          if (v57)
          {
            [v61 addEntriesFromDictionary:{v40, 0, 0}];
            [v15 addEntriesFromDictionary:v41];
            v43 = v41;
            v44 = v40;
          }
        }

        else
        {
          v44 = 0;
        }
      }

      result = BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV(a4, targeta, v17, v44, v43, v97, v96, v99, v37, v38);
      if (!result)
      {
        v45 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v97 length:48];
        v46 = *off_1E798D028;
        [v61 setObject:v45 forKeyedSubscript:*off_1E798D028];
        [v15 setObject:objc_msgSend(objc_alloc(MEMORY[0x1E695DEF0]) forKeyedSubscript:{"initWithBytes:length:", v96, 48), v46}];
        v47 = *off_1E798A3C8;
        v48 = CMGetAttachment(a4, *off_1E798A3C8, 0);
        v49 = *off_1E798A940;
        v50 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v48, "objectForKeyedSubscript:", *off_1E798A940)}];
        LODWORD(v51) = v99[0];
        v52 = [MEMORY[0x1E696AD98] numberWithFloat:v51];
        v53 = *off_1E798AA18;
        [v50 setObject:v52 forKeyedSubscript:*off_1E798AA18];
        [v48 setObject:v50 forKeyedSubscript:v49];
        v54 = CMGetAttachment(targeta, v47, 0);
        v55 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v54, "objectForKeyedSubscript:", v49)}];
        LODWORD(v56) = v99[0];
        [v55 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v56), v53}];
        [v54 setObject:v55 forKeyedSubscript:v49];
        result = 0;
        *v58 = v61;
        *v59 = v15;
      }
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

void *penu_validateDepthMetadata(void *result, void *a2)
{
  if (result)
  {
    result = [result objectForKeyedSubscript:*off_1E798A420];
    if (result)
    {
      memset(&v5, 0, sizeof(v5));
      CMTimeMakeFromDictionary(&v5, result);
      BWGetOriginalPresentationTimeStampFromBuffer(a2, &time2);
      v3 = v5;
      return (CMTimeCompare(&v3, &time2) == 0);
    }
  }

  return result;
}

void *BWPhotonicEngineUtilitiesSetDistortionCorrectionParametersOnDCInput_cold_1(void *a1, void *a2)
{
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  result = [a1 length];
  if (result == 48)
  {
    [a1 getBytes:&v5 length:{objc_msgSend(a1, "length")}];
    [a2 setApplyStereoRectificationHomography:1];
    return [a2 setStereoRectificationInverseHomography:{*&v5, *&v6, *&v7}];
  }

  return result;
}

BWInferenceVideoRequirement *lnrpc_inferenceVideoRequirementForVideoFormat(uint64_t a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWInferenceVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [a2 pixelBufferAttributes]);
    if (v4)
    {
      v6 = v4;
      v5 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1]);
      if (v5)
      {
        return [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:a1 videoFormat:v5];
      }

      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    return 0;
  }

  return result;
}

uint64_t captureDeferredPhotoProcessor_sendXPCNotificationWithPayload(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  cf = 0;
  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    if (*(DerivedStorage + 80))
    {
      if (FigXPCCreateBasicMessage() || FigXPCMessageSetCFString())
      {
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }

      else if (captureDeferredPhotoProcessor_createSerializedNotification(0, a3, v7, &cf) || FigXPCMessageSetCFDictionary())
      {
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }

      else
      {
        xpc_connection_send_notification();
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return FigXPCRelease();
}

id captureDeferredPhotoProcessor_CopyUnfinishedPhotoIdentifiers(uint64_t a1)
{
  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    return 0;
  }

  v3 = [+[BWDeferredProcessingContainerManager sharedInstance](BWDeferredProcessingContainerManager manifestsForApplicationID:"manifestsForApplicationID:err:" err:*(DerivedStorage + 24), &v7];
  if (v7)
  {
    v6 = v7;
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v5, v6, v1);
  }

  return v3;
}

uint64_t captureDeferredPhotoProcessor_cleanupForCurrentProcessingRequest_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureDeferredPhotoProcessor_CopyProperty_cold_1(_DWORD *a1)
{
  v6 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v1, v8, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED843F88, 0xFFFFCE14, "<<<< FigCaptureDeferredPhotoProcessor >>>>", 0x490, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureDeferredPhotoProcessor_SetProperty_cold_1(_DWORD *a1)
{
  v6 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v1, v8, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED843F88, 0xFFFFCE14, "<<<< FigCaptureDeferredPhotoProcessor >>>>", 0x4B7, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureDeferredPhotoProcessor_workloop_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t multiBandNoiseReductionGPU_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  v7 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v1, v9, v10, v11, v12, vars0, vars8);
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< NoiseReduction (MultiBand) >>>>", 0x825, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t multiBandNoiseReductionGPU_cold_7()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t multiBandNoiseReductionGPU_cold_8()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t multiBandNoiseReductionGPU_cold_9()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t multiBandNoiseReductionGPU_cold_11()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t multiBandNoiseReductionGPU_cold_12()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t multiBandNoiseReductionGPU_cold_13()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t multiBandNoiseReductionGPU_cold_14()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t multiBandNoiseReductionGPU_cold_15()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t multiBandNoiseReductionGPU_cold_17()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t multiBandNoiseReductionGPU_cold_18()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t multiBandNoiseReductionGPU_cold_19()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t multiBandNoiseReductionGPU_cold_20()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t multiBandNoiseReductionGPU_cold_21()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t multiBandPyramidFusion_cold_1()
{
  fig_log_get_emitter();
  v4 = 0;
  v1 = OUTLINED_FUNCTION_7_70();
  FigDebugAssert3(v1, v4, v0);
  fig_log_get_emitter();
  LODWORD(v5) = -1;
  v2 = OUTLINED_FUNCTION_7_70();
  return FigDebugAssert3(v2, v5, v0);
}

uint64_t BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_2_114(a1, a2, a3, a4, a5, a6, a7, a8, v32, v35, v38, v41, SWORD2(v41), SBYTE6(v41), SHIBYTE(v41));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v33, v36, v39, v42, v44, v45, v46);
  v17 = OUTLINED_FUNCTION_5_2(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_2_11("BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame");
    OUTLINED_FUNCTION_3_26(v24, v25, v26, v27, &dword_1AC90E000, v28, v29, "<<<< BWStillImageProcessingNode >>>> %s: Not a Quadra frame", v34);
    OUTLINED_FUNCTION_6_2();
  }

  else
  {
    v30 = 0;
  }

  return OUTLINED_FUNCTION_0_111(v17, v18, v19, v30, v20, v21, v22, v23, v34, v37, v40, v43, v47);
}

uint64_t BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_2_114(a1, a2, a3, a4, a5, a6, a7, a8, v32, v35, v38, v41, SWORD2(v41), SBYTE6(v41), SHIBYTE(v41));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v33, v36, v39, v42, v44, v45, v46);
  v17 = OUTLINED_FUNCTION_5_2(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_2_11("BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame");
    OUTLINED_FUNCTION_3_26(v24, v25, v26, v27, &dword_1AC90E000, v28, v29, "<<<< BWStillImageProcessingNode >>>> %s: Missing port type", v34);
    OUTLINED_FUNCTION_6_2();
  }

  else
  {
    v30 = 0;
  }

  return OUTLINED_FUNCTION_0_111(v17, v18, v19, v30, v20, v21, v22, v23, v34, v37, v40, v43, v47);
}

uint64_t BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_2_114(a1, a2, a3, a4, a5, a6, a7, a8, v32, v35, v38, v41, SWORD2(v41), SBYTE6(v41), SHIBYTE(v41));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v33, v36, v39, v42, v44, v45, v46);
  v17 = OUTLINED_FUNCTION_5_2(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_2_11("BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame");
    OUTLINED_FUNCTION_3_26(v24, v25, v26, v27, &dword_1AC90E000, v28, v29, "<<<< BWStillImageProcessingNode >>>> %s: Missing Quadra frame metadata", v34);
    OUTLINED_FUNCTION_6_2();
  }

  else
  {
    v30 = 0;
  }

  return OUTLINED_FUNCTION_0_111(v17, v18, v19, v30, v20, v21, v22, v23, v34, v37, v40, v43, v47);
}

uint64_t BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_2_114(a1, a2, a3, a4, a5, a6, a7, a8, v32, v35, v38, v41, SWORD2(v41), SBYTE6(v41), SHIBYTE(v41));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v33, v36, v39, v42, v44, v45, v46);
  v17 = OUTLINED_FUNCTION_5_2(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_2_11("BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame");
    OUTLINED_FUNCTION_3_26(v24, v25, v26, v27, &dword_1AC90E000, v28, v29, "<<<< BWStillImageProcessingNode >>>> %s: Missing downgrade out parameter", v34);
    OUTLINED_FUNCTION_6_2();
  }

  else
  {
    v30 = 0;
  }

  return OUTLINED_FUNCTION_0_111(v17, v18, v19, v30, v20, v21, v22, v23, v34, v37, v40, v43, v47);
}

uint64_t BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_2_114(a1, a2, a3, a4, a5, a6, a7, a8, v32, v35, v38, v41, SWORD2(v41), SBYTE6(v41), SHIBYTE(v41));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v33, v36, v39, v42, v44, v45, v46);
  v17 = OUTLINED_FUNCTION_5_2(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_2_11("BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame");
    OUTLINED_FUNCTION_3_26(v24, v25, v26, v27, &dword_1AC90E000, v28, v29, "<<<< BWStillImageProcessingNode >>>> %s: Missing Quadra frame", v34);
    OUTLINED_FUNCTION_6_2();
  }

  else
  {
    v30 = 0;
  }

  return OUTLINED_FUNCTION_0_111(v17, v18, v19, v30, v20, v21, v22, v23, v34, v37, v40, v43, v47);
}

void sub_1ACE691C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *fvcd_handleRegionOfInterestChangedForCameraControlsFromFramingDelegates(_BYTE *result, unint64_t a2, unint64_t a3)
{
  v7 = result[3796] != 1 || (a2 | a3) == 0;
  if (v7 || (result[240] & 1) != 0 || (result[3872] & 1) == 0 && (result[4344] & 1) != 0)
  {
    return result;
  }

  if (!a2)
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  [a2 regionOfInterestForCameraControls];
  OUTLINED_FUNCTION_2_3();
  if (a3)
  {
LABEL_10:
    [a3 regionOfInterestForCameraControls];
  }

LABEL_12:
  v18.origin.x = OUTLINED_FUNCTION_3();
  CGRectUnion(v18, v22);
  OUTLINED_FUNCTION_2_3();
  result = CGRectIsInfinite(v19);
  if ((result & 1) == 0)
  {
    v20.origin.x = OUTLINED_FUNCTION_3();
    result = CGRectIsEmpty(v20);
    if ((result & 1) == 0)
    {
      v21.origin.x = OUTLINED_FUNCTION_308();
      v23.origin.x = v3;
      v23.origin.y = v4;
      v23.size.width = v5;
      v23.size.height = v6;
      result = CGRectContainsRect(v21, v23);
      if (result)
      {
        v10 = OUTLINED_FUNCTION_3();

        return [(BWFigVideoCaptureDevice *)v9 _updateSensorRegionOfInterest:v10 forZoomFactor:v11 aspectRatio:v12 previewShiftInSensorSpace:v13 streamProperty:v14, v15, v16];
      }
    }
  }

  return result;
}

void __fvcd_serviceRetryStillImageCapture_block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_86_3(a1);
  [BWFigVideoCaptureDevice _captureStillImageNowOnStreamWithOptions:captureStreamProperties:];
  if (v2)
  {
    v3 = v2;
    v4 = *(v1 + 32);

    [BWFigVideoCaptureDevice _terminateCaptureAndEmitStillImageCaptureError:v4 stillImageCaptureNowOptions:v3 stillImageCaptureStreamProperties:?];
  }
}

uint64_t FigCaptureMemoryReporterStart()
{
  [+[FigCaptureMemoryReporter sharedInstance](FigCaptureMemoryReporter _startReporting];
  if (dword_1ED843FF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

void __getReportMemoryExceptionFromTaskSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *libMemoryResourceExceptionLibrary(void)") description:{@"FigCaptureMemoryReporter.m", 34, @"%s", *a1}];
  __break(1u);
}

uint64_t rqSenderRegisterIOSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v6 = v5;
  v7 = v4;
  IOSurfaceGetID(v5);
  v8 = *MEMORY[0x1E695E480];
  UInt32 = FigCFNumberCreateUInt32();
  if (v7 && v6)
  {
    if (*(v7 + 156))
    {
      if (CFDictionaryContainsKey(*(v7 + 168), UInt32))
      {
        if (!*(v7 + 216))
        {
          goto LABEL_17;
        }

        CFDictionaryGetValue(*(v7 + 168), UInt32);
        SInt32 = FigCFNumberGetSInt32();
        ContinuousUpTimeNanoseconds = FigGetContinuousUpTimeNanoseconds();
        if (!*(v7 + 216))
        {
          goto LABEL_17;
        }

        v12 = SInt32;
        v13 = *(v7 + 176);
        v14 = (v13 + 32 * SInt32);
        v14[1] = ContinuousUpTimeNanoseconds;
        v15 = *(v7 + 200);
        if (v15 == SInt32)
        {
          goto LABEL_17;
        }

        v17 = v14[2];
        v16 = v14[3];
        if (v16 != -1)
        {
          *(v13 + 32 * v16 + 16) = v17;
        }

        if (v17 != -1)
        {
          *(v13 + 32 * v17 + 24) = v16;
        }

        if (v15 != -1)
        {
          *(v13 + 32 * v15 + 16) = SInt32;
        }

        v18 = *(v7 + 192);
        if (v18 == SInt32)
        {
          v18 = v14[2];
          *(v7 + 192) = v18;
        }

        v14[2] = -1;
        v14[3] = v15;
        *(v7 + 200) = SInt32;
        if (v18 == -1)
        {
          MachPort = 0;
          v20 = 0;
          *(v7 + 192) = v12;
        }

        else
        {
LABEL_17:
          MachPort = 0;
          v20 = 0;
        }
      }

      else
      {
        MachPort = IOSurfaceCreateMachPort(v6);
        v21 = FigRemoteQueueIOSurfaceSender_ShareIOSurface(*(v7 + 156), MachPort);
        if (v21)
        {
          v22 = v21;
          bzero(v46, 0x1000uLL);
          if (proc_name(*(v7 + 152), v46, 0xFFFu) <= 0)
          {
            snprintf(v46, 0xFFFuLL, "pid-%d", *(v7 + 152));
          }

          if (v22 == 268451843 || v22 == 268435460)
          {
            v24 = getpid();
            bzero(buffer, 0x1000uLL);
            if (proc_name(v24, buffer, 0xFFFu) <= 0)
            {
              snprintf(buffer, 0xFFFuLL, "pid-%d", v24);
            }

            ++*(v7 + 224);
            v20 = 4294950635;
          }

          else
          {
            v20 = 4294950634;
          }
        }

        else
        {
          *v46 = -1;
          LODWORD(buffer[0]) = IOSurfaceGetID(v6);
          if (*(v7 + 216))
          {
            v25 = *(v7 + 208);
            if (v25 == -1)
            {
              v27 = *(v7 + 176);
              v25 = *(v7 + 184);
              *v46 = v25;
              *(v7 + 184) = v25 + 1;
              v26 = malloc_type_realloc(v27, 32 * (v25 + 1), 0x1020040B07D1DCCuLL);
              *(v7 + 176) = v26;
            }

            else
            {
              *v46 = *(v7 + 208);
              v26 = *(v7 + 176);
              *(v7 + 208) = v26[4 * v25 + 2];
            }

            v28 = &v26[4 * v25];
            *v28 = CFRetain(v6);
            v28[1] = 0;
            v28[2] = -1;
            v28[3] = -1;
            v29 = FigGetContinuousUpTimeNanoseconds();
            if (*(v7 + 216))
            {
              v30 = *(v7 + 176);
              v31 = (v30 + 32 * v25);
              v31[1] = v29;
              v32 = *(v7 + 200);
              if (v32 != v25)
              {
                v34 = v31[2];
                v33 = v31[3];
                if (v33 != -1)
                {
                  *(v30 + 32 * v33 + 16) = v34;
                }

                if (v34 != -1)
                {
                  *(v30 + 32 * v34 + 24) = v33;
                }

                if (v32 != -1)
                {
                  *(v30 + 32 * v32 + 16) = v25;
                }

                v35 = *(v7 + 192);
                if (v35 == v25)
                {
                  v35 = v31[2];
                  *(v7 + 192) = v35;
                }

                v31[2] = -1;
                v31[3] = v32;
                *(v7 + 200) = v25;
                if (v35 == -1)
                {
                  *(v7 + 192) = v25;
                }
              }
            }
          }

          v36 = CFNumberCreate(v8, kCFNumberSInt64Type, v46);
          v37 = CFNumberCreate(v8, kCFNumberSInt32Type, buffer);
          CFDictionarySetValue(*(v7 + 168), v37, v36);
          CFRelease(v37);
          CFRelease(v36);
          v20 = 0;
          *(v7 + 224) = 0;
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v39, v40, buffer[0], buffer[1], v42, v43, v44, v45);
      MachPort = 0;
      v20 = 4294950633;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    MachPort = 0;
    v20 = 4294950629;
  }

  if (UInt32)
  {
    CFRelease(UInt32);
  }

  if (MachPort)
  {
    FigMachPortReleaseSendRight_();
  }

  return v20;
}

uint64_t FigRemoteQueueSenderReleaseIOSurfaces(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if (*(a1 + 156) && *(a1 + 152) > 0)
    {
      result = *(a1 + 168);
      if (result)
      {
        if (CFDictionaryGetCount(result) >= 1)
        {
          CFRetain(a1);
          v5 = *(a1 + 152);
          v8 = MEMORY[0x1E69E9820];
          v9 = 3221225472;
          v10 = __FigRemoteQueueSenderReleaseIOSurfaces_block_invoke;
          v11 = &unk_1E799CA40;
          v12 = a2;
          v13 = a1;
          FigRemoteQueueProcessAssertion_awakeClientAndRunCallback(v5, &v8);
        }

        return 0;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 4294950633;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, v12, v13);
    return 4294950629;
  }

  return result;
}

void __FigRemoteQueueSenderReleaseIOSurfaces_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = FigRemoteQueueIOSurfaceSender_ReleaseIOSurfaces(*(*(a1 + 40) + 156));
  v3 = *(a1 + 40);
  if (!v2)
  {
    v4 = *(v3 + 168);
    if (v4)
    {
      CFDictionaryRemoveAllValues(v4);
      v5 = *(v3 + 184);
      if (v5 >= 1)
      {
        v6 = 0;
        for (i = 0; i < v5; ++i)
        {
          v8 = *(v3 + 176);
          v9 = *(v8 + v6);
          if (v9 && *(v3 + 216))
          {
            v10 = *(v8 + v6 + 16);
            v11 = *(v8 + v6 + 24);
            if (v11 != -1)
            {
              *(v8 + 32 * v11 + 16) = v10;
            }

            if (v10 != -1)
            {
              *(v8 + 32 * v10 + 24) = v11;
            }

            if (i == *(v3 + 192))
            {
              *(v3 + 192) = v10;
            }

            if (i == *(v3 + 200))
            {
              *(v3 + 200) = *(v8 + v6 + 24);
            }

            CFRelease(v9);
            OUTLINED_FUNCTION_4_92();
            v5 = *(v3 + 184);
          }

          v6 += 32;
        }
      }

      v12 = *(v3 + 176);
      if (v12)
      {
        *(v3 + 176) = 0;
        free(v12);
      }

      *(v3 + 184) = 0;
      *(v3 + 192) = -1;
      *(v3 + 200) = -1;
      *(v3 + 208) = -1;
      v3 = *(a1 + 40);
    }

    *(v3 + 224) = 0;
  }

  FigSimpleMutexUnlock();
  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, *(a1 + 40));
  }

  v14 = *(a1 + 40);

  CFRelease(v14);
}

void __rqReceiverSetSource_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 72);
    voucher_adopt();
    FigSimpleMutexLock();
    v3 = *(v1 + 69);
    if (!v3)
    {
      v4 = 0;
      LODWORD(v5) = 0;
      while (1)
      {
        v10 = 0;
        buffer = 0;
        v12 = 0;
        if (v3)
        {
          FigSimpleMutexLock();
        }

        if (v5 == -16665)
        {
          break;
        }

        if (!*(v1 + 56))
        {
          goto LABEL_3;
        }

        v6 = *(v1 + 64);
        if (v4)
        {
          if (v4 != v6)
          {
            goto LABEL_3;
          }
        }

        v7 = rqReceiverDequeue(v1, &v10);
        if (v7 == -16668)
        {
          goto LABEL_3;
        }

        v5 = v7;
        v8 = _Block_copy(*(v1 + 56));
        FigSimpleMutexUnlock();
        v8[2](v8, v5, &v10, *(v1 + 80));
        _Block_release(v8);
        FigSharedMemBlockRelease(v10);
        v10 = 0;
        if (buffer)
        {
          IOSurfaceDecrementUseCount(buffer);
          CFRelease(buffer);
        }

        v3 = 1;
        v4 = v6;
      }

      if (!*(v1 + 68))
      {
        v9 = *(v1 + 48);
        if (v9)
        {
          *(v1 + 68) = 1;
          dispatch_suspend(v9);
        }
      }
    }

LABEL_3:
    FigSimpleMutexUnlock();
  }
}

uint64_t rqSenderHandleDequeue_cold_1(void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  result = FigDebugAssert3(v4);
  *a2 = *a1;
  return result;
}

uint64_t rqSenderHandleDequeue_cold_2(void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  result = FigDebugAssert3(v4);
  *a2 = *a1;
  return result;
}

BOOL rqSenderEnqueue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v10, v11, v12, v13, v14, vars0, vars8);
  emitter = fig_log_get_emitter();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBEE5, "<<<< FigRemoteQueue >>>>", 0x32E, v1, v4, v5, v9);
  *a1 = v6;
  return v6 == 0;
}

uint64_t rqSenderReset_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t rqSenderReset_cold_3(void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  result = FigDebugAssert3(v4);
  *a2 = *a1;
  return result;
}

uint64_t rqSenderReset_cold_4(void *a1, int *a2, void *a3, void *a4)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  result = FigDebugAssert3(v8);
  *a3 = *a1;
  *a4 = *a2;
  return result;
}

uint64_t FigRemoteQueueReceiverSetHandler_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v7, v8, v9, v10, v11, vars0, vars8);
  emitter = fig_log_get_emitter();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBEE6, "<<<< FigRemoteQueue >>>>", 0x6B9, v0, v2, v3, v6);
}

void rqSenderFinalize_cold_1(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *(a1 + 176);
    v8 = *(v7 + v5);
    if (v8 && *(a1 + 216))
    {
      v9 = *(v7 + v5 + 16);
      v10 = *(v7 + v5 + 24);
      if (v10 != -1)
      {
        *(v7 + 32 * v10 + 16) = v9;
      }

      if (v9 != -1)
      {
        *(v7 + 32 * v9 + 24) = v10;
      }

      if (v6 == *(a1 + 192))
      {
        *(a1 + 192) = v9;
      }

      if (v6 == *(a1 + 200))
      {
        *(a1 + 200) = *(v7 + v5 + 24);
      }

      CFRelease(v8);
      OUTLINED_FUNCTION_4_92();
      a3 = *a2;
    }

    ++v6;
    v5 += 32;
  }

  while (a3 > v6);
}

void __getACCConnectionInfoClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getACCConnectionInfoClass(void)_block_invoke") description:{@"BWFigCaptureAttachedAccessoriesMonitor.m", 30, @"Unable to find class %s", "ACCConnectionInfo"}];
  __break(1u);
}

void CoreAccessoriesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *CoreAccessoriesLibrary(void)") description:{@"BWFigCaptureAttachedAccessoriesMonitor.m", 28, @"%s", *a1}];
  __break(1u);
}

uint64_t captureSourceServer_handleCopyWildcardProprietaryDefaultMessage()
{
  OUTLINED_FUNCTION_3_102();
  v2 = xpc_connection_copy_entitlement_value();
  v3 = v2;
  if (!v2 || MEMORY[0x1B26F2E20](v2) != MEMORY[0x1E69E9E58] || !xpc_BOOL_get_value(v3))
  {
    v4 = 4294954513;
    goto LABEL_4;
  }

  v6 = captureSourceServer_getAndRetainSourceObjectFromMessage(v0, v1, &cf);
  if (v6 || (v6 = FigXPCMessageCopyCFString(), v6))
  {
    v4 = v6;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_4;
  }

  v7 = cf;
  v8 = *(CMBaseObjectGetVTable() + 16);
  if (*v8 < 7uLL || (v9 = v8[14]) == 0)
  {
    v4 = 4294954514;
LABEL_23:
    OUTLINED_FUNCTION_2_118();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4);
    goto LABEL_4;
  }

  v10 = v9(v7, v12, &v11);
  if (v10)
  {
    v4 = v10;
    goto LABEL_23;
  }

  if (!v11)
  {
    v11 = *MEMORY[0x1E695E738];
  }

  FigXPCMessageSetCFObject();
  v4 = 0;
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v3)
  {
    xpc_release(v3);
  }

  return v4;
}

uint64_t captureSourceServer_handleSetWildcardProprietaryDefaultMessage()
{
  OUTLINED_FUNCTION_3_102();
  v2 = xpc_connection_copy_entitlement_value();
  v3 = v2;
  if (!v2 || MEMORY[0x1B26F2E20](v2) != MEMORY[0x1E69E9E58] || !xpc_BOOL_get_value(v3))
  {
    v4 = 4294954513;
    goto LABEL_4;
  }

  v6 = captureSourceServer_getAndRetainSourceObjectFromMessage(v0, v1, &cf);
  if (v6 || (v6 = FigXPCMessageCopyCFString(), v6) || (v6 = FigXPCMessageCopyCFObject(), v6))
  {
    v4 = v6;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_4;
  }

  if (cf1)
  {
    if (CFEqual(cf1, *MEMORY[0x1E695E738]))
    {
      v7 = 0;
      cf1 = 0;
    }

    else
    {
      v7 = cf1;
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = 0;
  v8 = cf;
  v9 = *(CMBaseObjectGetVTable() + 16);
  if (*v9 < 7uLL || (v10 = v9[15]) == 0)
  {
    v4 = 4294954514;
LABEL_29:
    OUTLINED_FUNCTION_2_118();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4);
    goto LABEL_4;
  }

  v11 = v10(v8, v14, v7, &v12);
  if (v11)
  {
    v4 = v11;
    goto LABEL_29;
  }

  if (v12)
  {
    FigXPCMessageSetCFObject();
    CFRelease(v12);
  }

  v4 = 0;
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (v3)
  {
    xpc_release(v3);
  }

  return v4;
}

double FigCaptureSourceServerStart_cold_2()
{
  if (dword_1ED843FB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t captureSourceServer_handleSourceCopyPropertyMessage_cold_5(_DWORD *a1)
{
  v6 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v1, v8, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED843FA8, 0xFFFFCE10, "<<<< FigCaptureSourceServer >>>>", 0x24E, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSourceServer_handleCopyProxySourceMessage_cold_1(_DWORD *a1)
{
  v6 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v1, v8, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED843FA8, 0xFFFFCE14, "<<<< FigCaptureSourceServer >>>>", 0x40A, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSourceServer_handleCopyProxySourceMessage_cold_7(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED843FA8, 0xFFFFCE0ELL, "<<<< FigCaptureSourceServer >>>>", 0x427, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

id *__dfp_createStateMachine_block_invoke_2(uint64_t a1, id *a2)
{
  v3 = objc_autoreleasePoolPush();
  [(BWDeepFusionProcessorController *)a2 _resetProcessor];
  [(BWDeepFusionProcessorController *)a2 _serviceNextRequest];
  objc_autoreleasePoolPop(v3);

  return [(BWDeepFusionProcessorController *)a2 _updateStateIfNeeded];
}

id *__dfp_createStateMachine_block_invoke_4(uint64_t a1, id *a2)
{
  v3 = objc_autoreleasePoolPush();
  [(BWDeepFusionProcessorController *)a2 _resetProcessor];
  if ([objc_msgSend(a2[22] "input")])
  {
    [(BWDeepFusionProcessorController *)a2 _setupProcessorForOnlyApplyingSemanticStyle];
  }

  else
  {
    [(BWDeepFusionProcessorController *)a2 _setupProcessor];
  }

  objc_autoreleasePoolPop(v3);

  return [(BWDeepFusionProcessorController *)a2 _updateStateIfNeeded];
}

id *__dfp_createStateMachine_block_invoke_5(uint64_t a1, id *a2)
{
  v3 = objc_autoreleasePoolPush();
  if ([objc_msgSend(a2[22] "input")])
  {
    [(BWDeepFusionProcessorController *)a2 _processOnlyApplyingSemanticStyle];
  }

  else
  {
    [(BWDeepFusionProcessorController *)a2 _process];
  }

  objc_autoreleasePoolPop(v3);

  return [(BWDeepFusionProcessorController *)a2 _updateStateIfNeeded];
}

void btfn_temporalFilterSessionCallback(dispatch_queue_t *a1, int a2, uint64_t a3, __int128 *a4, const void *a5)
{
  if (a1 && !a2)
  {
    if (a5)
    {
      dispatch_assert_queue_not_V2(a1[31]);
      v8 = a1;
      CFRetain(a5);
      v9 = a1[31];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __btfn_temporalFilterSessionCallback_block_invoke;
      block[3] = &unk_1E79914E0;
      v11 = *a4;
      v12 = *(a4 + 2);
      block[4] = a1;
      block[5] = a5;
      dispatch_async(v9, block);
    }
  }
}

void __btfn_temporalFilterSessionCallback_block_invoke(uint64_t a1)
{
  v25 = 0;
  v26 = 0;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:a1 + 48 objCType:"{?=qiIq}"];
  v3 = [*(*(a1 + 32) + 256) containsObject:v2];
  v4 = *(a1 + 32);
  if (v3)
  {
    [*(v4 + 256) removeObject:v2];
    v5 = 0;
  }

  else
  {
    v6 = CMSimpleQueueDequeue(*(v4 + 152));
    v5 = v6;
    if (v6 && (*(*(a1 + 32) + 264) & 1) == 0)
    {
      v7 = CMGetAttachment(v6, *off_1E798A3C8, 0);
      if (!v7 || (Value = CFDictionaryGetValue(v7, *off_1E798A420)) == 0 || (memset(&v24, 0, sizeof(v24)), CMTimeMakeFromDictionary(&v24, Value), OUTLINED_FUNCTION_4_94(), time2 = v24, CMTimeCompare(&time1, &time2)) || BWCMSampleBufferCreateCopyWithNewPixelBuffer(v5, *(a1 + 40), &v26, &v25))
      {
        OUTLINED_FUNCTION_4_94();
        [(BWTemporalFilterNode *)v17 _dropInputSampleWithPTS:?];
      }

      else
      {
        v9 = *(a1 + 32);
        if (!*(v9 + 208) && dword_1EB58E860)
        {
          v22 = 0;
          v21 = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v11 = v22;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v21))
          {
            v14 = v11;
          }

          else
          {
            v14 = v11 & 0xFFFFFFFE;
          }

          if (v14)
          {
            v15 = *(a1 + 32);
            LODWORD(time2.value) = 136315394;
            *(&time2.value + 4) = "btfn_temporalFilterSessionCallback_block_invoke";
            LOWORD(time2.flags) = 2112;
            *(&time2.flags + 2) = v15;
            LODWORD(v19) = 22;
            p_time2 = &time2;
            OUTLINED_FUNCTION_5_0(v14, v12, &time1, v13, &dword_1AC90E000);
          }

          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v9 = *(a1 + 32);
        }

        [*(v9 + 160) emitSampleBuffer:{v25, p_time2, v19}];
        ++*(*(a1 + 32) + 208);
      }
    }
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    CFRelease(v16);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v26)
  {
    CFRelease(v26);
  }
}

void *sfsm_computeStandardDeviation(void *a1)
{
  result = [a1 count];
  if (result)
  {
    v3 = [a1 count];
    v11 = 0.0;
    if (v3)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v12 = OUTLINED_FUNCTION_1_18(v3, v4, &v66, v65);
      if (v12)
      {
        v13 = v12;
        v14 = *v67;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v67 != v14)
            {
              objc_enumerationMutation(a1);
            }

            v16 = [*(*(&v66 + 1) + 8 * i) doubleValue];
            v11 = v11 + v18;
          }

          v13 = OUTLINED_FUNCTION_1_18(v16, v17, &v66, v65);
        }

        while (v13);
      }

      v3 = [a1 count];
      v11 = v11 / v3;
    }

    v19 = OUTLINED_FUNCTION_2_0(v3, v4, v5, v6, v7, v8, v9, v10, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63);
    if (v19)
    {
      v20 = v19;
      v21 = MEMORY[0];
      v22 = 0.0;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (MEMORY[0] != v21)
          {
            objc_enumerationMutation(a1);
          }

          v24 = [*(8 * j) doubleValue];
          v22 = v22 + (v32 - v11) * (v32 - v11);
        }

        v20 = OUTLINED_FUNCTION_2_0(v24, v25, v26, v27, v28, v29, v30, v31, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64);
      }

      while (v20);
    }

    return [a1 count];
  }

  return result;
}

void FigExternalSyncDeviceDiscoverySessionCreate_cold_1(int a1, CFTypeRef *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v4 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  if (*a2)
  {
    CFRelease(*a2);
  }
}

id sidn_depthMetadataAttachmentDictionaryFromBravoDisparityMetadata(void *a1, opaqueCMSampleBuffer *target, int a3, int a4)
{
  if (CMGetAttachment(target, *off_1E798A3C8, 0))
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = v8;
    if (a4)
    {
      v10 = &unk_1F2246EE8;
    }

    else
    {
      v10 = &unk_1F2246F00;
    }

    [v8 setObject:v10 forKeyedSubscript:*off_1E798D008];
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798CFD0];
    [v9 setObject:&unk_1F2246EE8 forKeyedSubscript:*off_1E798CFC0];
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    if (a3)
    {
      [a1 teleIntrinsicMatrix];
    }

    else
    {
      [a1 wideIntrinsicMatrix];
    }

    OUTLINED_FUNCTION_15_41(&v73, v11, v12);
    *&v73 = v13;
    *&v74 = v14;
    *(v15 + 40) = v16;
    *&v75 = v17;
    [v9 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &v73, 48), *off_1E798CFD8}];
    ImageBuffer = CMSampleBufferGetImageBuffer(target);
    Width = CVPixelBufferGetWidth(ImageBuffer);
    v76.height = CVPixelBufferGetHeight(ImageBuffer);
    v76.width = Width;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v76);
    [v9 setObject:DictionaryRepresentation forKeyedSubscript:*off_1E798CFE0];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    if (a3)
    {
      [a1 teleExtrinsicMatrix];
    }

    else
    {
      [a1 wideExtrinsicMatrix];
    }

    OUTLINED_FUNCTION_15_41(&v69, v21, v22);
    *&v69 = v23;
    *&v70 = v24;
    *(v25 + 40) = v26;
    *(v25 + 56) = v27;
    *&v71 = v28;
    *&v72 = v29;
    [v9 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &v69, 64), *off_1E798CFC8}];
    if (a3)
    {
      [a1 telePixelSizeInMillimeters];
    }

    else
    {
      [a1 widePixelSizeInMillimeters];
    }

    [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), *off_1E798D000}];
    if (a3)
    {
      v30 = [a1 teleLensDistortionCoefficients];
    }

    else
    {
      v30 = [a1 wideLensDistortionCoefficients];
    }

    v31 = v30;
    if (v30)
    {
      v32 = [MEMORY[0x1E695DF88] dataWithLength:{4 * objc_msgSend(v30, "count")}];
      v33 = [v32 mutableBytes];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v35 = OUTLINED_FUNCTION_52(v33, v34, &v65, v64);
      if (v35)
      {
        v36 = v35;
        v37 = *v66;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v66 != v37)
            {
              objc_enumerationMutation(v31);
            }

            v39 = [*(*(&v65 + 1) + 8 * i) floatValue];
            *v33++ = v41;
          }

          v36 = OUTLINED_FUNCTION_52(v39, v40, &v65, v64);
        }

        while (v36);
      }

      [v9 setObject:v32 forKeyedSubscript:*off_1E798CFF8];
    }

    if (a3)
    {
      v42 = [a1 teleInverseLensDistortionCoefficients];
    }

    else
    {
      v42 = [a1 wideInverseLensDistortionCoefficients];
    }

    v43 = v42;
    if (v42)
    {
      v44 = [MEMORY[0x1E695DF88] dataWithLength:{4 * objc_msgSend(v42, "count")}];
      v45 = [v44 mutableBytes];
      OUTLINED_FUNCTION_43();
      v50 = OUTLINED_FUNCTION_52(v46, v47, v48, v49);
      if (v50)
      {
        v51 = v50;
        v52 = MEMORY[0];
        do
        {
          for (j = 0; j != v51; ++j)
          {
            if (MEMORY[0] != v52)
            {
              objc_enumerationMutation(v43);
            }

            [*(8 * j) floatValue];
            *v45++ = v54;
          }

          OUTLINED_FUNCTION_43();
          v51 = OUTLINED_FUNCTION_52(v55, v56, v57, v58);
        }

        while (v51);
      }

      [v9 setObject:v44 forKeyedSubscript:*off_1E798CFE8];
    }

    if (a3)
    {
      [a1 teleLensDistortionOpticalCenter];
    }

    else
    {
      [a1 wideLensDistortionOpticalCenter];
    }

    v61 = CGPointCreateDictionaryRepresentation(*&v59);
    [v9 setObject:v61 forKeyedSubscript:*off_1E798CFF0];

    v62 = [a1 version];
    [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v62 | (FigDepthDataGetCurrentMajorVersion() << 16)), *off_1E798D010}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void MediaAnalysisLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *MediaAnalysisLibrary(void)") description:{@"BWMediaAnalysisSoftLinking.m", 13, @"%s", *a1}];
  __break(1u);
}

void __getVCPCaptureAnalysisSessionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVCPCaptureAnalysisSessionClass(void)_block_invoke") description:{@"BWMediaAnalysisSoftLinking.m", 15, @"Unable to find class %s", "VCPCaptureAnalysisSession"}];
  __break(1u);
}

void getVCPCaptureAnalysisDispatchQueuePropertyKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (VCPCaptureAnalysisDispatchQueuePropertyKey) (*)(void))0)()) getVCPCaptureAnalysisDispatchQueuePropertyKey(void)") description:{@"BWMediaAnalysisSoftLinking.m", 17, @"%s", dlerror()}];
  __break(1u);
}

void getVCPCaptureAnalysisSubjectMotionScoreKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (VCPCaptureAnalysisSubjectMotionScoreKey) (*)(void))0)()) getVCPCaptureAnalysisSubjectMotionScoreKey(void)") description:{@"BWMediaAnalysisSoftLinking.m", 18, @"%s", dlerror()}];
  __break(1u);
}

void getVCPCaptureAnalysisMotionDivScoreKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (VCPCaptureAnalysisMotionDivScoreKey) (*)(void))0)()) getVCPCaptureAnalysisMotionDivScoreKey(void)") description:{@"BWMediaAnalysisSoftLinking.m", 19, @"%s", dlerror()}];
  __break(1u);
}

uint64_t FigExternalStorageDeviceManagerRemoteCreate_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4BALL, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x25C, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteExternalStorageDeviceManagerClient_handleServerMessage_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x6F, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteExternalStorageDeviceManagerClient_handleServerMessage_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x5B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteExternalStorageDeviceManagerClient_handleServerMessage_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x7D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteFigExternalStorageDeviceManager_Finalize_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0xD7, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteFigExternalStorageDeviceManager_CopyProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x119, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteFigExternalStorageDeviceManager_CopyProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x118, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteExternalStorageDeviceManagerClient_GetObjectID_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0FLL, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x41, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteExternalStorageDeviceManagerClient_GetObjectID_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0FLL, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x40, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteExternalStorageDeviceManagerClient_GetObjectID_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x3C, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteFigExternalStorageDeviceManager_beginMonitoring_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x130, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x155, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x181, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x1AE, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteFigExternalStorageDeviceManager_checkAuthorizationStatus_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x1DE, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteFigExternalStorageDeviceManager_checkAuthorizationStatus_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x1DC, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteFigExternalStorageDeviceManager_requestAuthorization_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x207, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t remoteFigExternalStorageDeviceManager_requestAuthorization_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerRemote >>>>", 0x205, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

void captureDeferredContainerManager_handleReplyMessage_cold_22(int a1, const void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v4 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  CFRelease(a2);
}

uint64_t captureDeferredContainerManager_handleReplyMessage_cold_27(int a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v7 = a1;
  result = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v8, v9, v10, v11, v12, vars0, vars8);
  *a3 = *a2;
  return result;
}

uint64_t captureDeferredContainerManager_handleReplyMessage_cold_33(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE10, "<< FigCaptureDeferredContainerManagerServer >>", 0x5E, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t captureDeferredContainerManager_getAndRetainContainerObjectFromMessage_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<< FigCaptureDeferredContainerManagerServer >>", 0x46, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

void FigCaptureDeferredContainerManagerCopyContainerManagerForPID_cold_2(int a1, CFTypeRef *a2, void *a3)
{
  fig_log_get_emitter();
  v7 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v3, v8, v9, v10, v11, vars0, vars8);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = 0;
}

uint64_t captureDeferredContainerManager_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< FigCaptureDeferredContainerManager >>>>", 0x6D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t captureDeferredContainerManager_SetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< FigCaptureDeferredContainerManager >>>>", 0x81, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

void captureSource_deactivateInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = [MEMORY[0x1E695DF70] array];
  if (!*(DerivedStorage + 12))
  {
    v4 = v3;
    FigSimpleMutexCheckIsLockedOnThisThread();
    FigSimpleMutexLock();
    if (*(DerivedStorage + 13))
    {
      *(DerivedStorage + 13) = 0;
      v5 = *(DerivedStorage + 80);
      if (v5)
      {
        *(DerivedStorage + 80) = 0;
      }

      v6 = *(DerivedStorage + 224);
      if (v6)
      {
        *(DerivedStorage + 224) = 0;
      }

      v7 = *(DerivedStorage + 232);
      *(DerivedStorage + 232) = 0;
      FigSimpleMutexUnlock();
      if (v5)
      {
        v68 = a1;
        [v5 releaseResources];
        v64 = v6;
        v66 = v7;
        if ([v5 pearlInfraredCaptureStream])
        {
          HIDWORD(v62) = [qword_1ED8451C0 systemPressureLevelFromPearlProjector] > 0;
        }

        else
        {
          HIDWORD(v62) = 0;
        }

        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v8 = [v5 captureStreams];
        v9 = [v8 countByEnumeratingWithState:&v109 objects:v108 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v110;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v110 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v109 + 1) + 8 * i);
              if ([qword_1ED8451C0 systemPressureLevelFromImageSensorWithPortType:{objc_msgSend(v13, "portType")}] >= 1)
              {
                [v4 addObject:{objc_msgSend(v13, "portType")}];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v109 objects:v108 count:16];
          }

          while (v10);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        v14 = v68;
        CMNotificationCenterRemoveListener();
        [v5 drainNotifications];
        if (dword_1ED844030)
        {
          v106[0] = 0;
          v116[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v116[0]);
          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v14 = v68;
        }

        FigSimpleMutexLock();
        if ([objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{@"Focus", "BOOLValue"}])
        {
          v16 = MEMORY[0x1E696AD98];
          [v5 lensPosition];
          [*(DerivedStorage + 144) setObject:objc_msgSend(v16 forKeyedSubscript:{"numberWithFloat:"), @"LensPosition"}];
        }

        memset(&v113, 0, sizeof(v113));
        objc_msgSend_exposureDuration(v5);
        v17 = *MEMORY[0x1E695E480];
        time = v113;
        v18 = CMTimeCopyAsDictionary(&time, v17);
        [*(DerivedStorage + 144) setObject:v18 forKeyedSubscript:@"ExposureDuration"];
        CFRelease(v18);
        v19 = MEMORY[0x1E696AD98];
        [v5 ISO];
        [*(DerivedStorage + 144) setObject:objc_msgSend(v19 forKeyedSubscript:{"numberWithFloat:"), @"ISO"}];
        v20 = MEMORY[0x1E696AD98];
        [v5 exposureTargetOffset];
        [*(DerivedStorage + 144) setObject:objc_msgSend(v20 forKeyedSubscript:{"numberWithFloat:"), @"ExposureTargetOffset"}];
        [v5 deviceWhiteBalanceGains];
        time.value = __PAIR64__(v22, v21);
        time.timescale = v23;
        v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&time length:12];
        [*(DerivedStorage + 144) setObject:v24 forKeyedSubscript:@"DeviceWhiteBalanceGains"];

        [v5 grayWorldDeviceWhiteBalanceGains];
        v106[0] = v25;
        v106[1] = v26;
        v106[2] = v27;
        v28 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v106 length:12];
        [*(DerivedStorage + 144) setObject:v28 forKeyedSubscript:@"GrayWorldDeviceWhiteBalanceGains"];

        if ([v5 smartCameraEnabled])
        {
          v29 = MEMORY[0x1E695E110];
          v30 = MEMORY[0x1E695E0F8];
          [*(DerivedStorage + 144) setObject:MEMORY[0x1E695E0F8] forKeyedSubscript:@"SceneClassificationConfidences"];

          *(DerivedStorage + 240) = 0;
          FigSimpleMutexUnlock();

          v104 = @"NewPropertyValue";
          v105 = v29;
          captureSource_postNotificationWithPayload(v14, @"SceneClassificationActive", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1]);
          v102 = @"NewPropertyValue";
          v103 = v30;
          captureSource_postNotificationWithPayload(v14, @"SceneClassificationConfidences", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1]);
        }

        else
        {

          *(DerivedStorage + 240) = 0;
          FigSimpleMutexUnlock();
        }

        v6 = v64;
        v7 = v66;
        captureSource_postNotificationWithPayload(v14, @"SourceDeactivated", 0);
        v31 = [objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{@"Focus", "BOOLValue"}];
        if (v31)
        {
          OUTLINED_FUNCTION_3_113(v31, @"AdjustingFocus", MEMORY[0x1E695E110]);
        }

        v32 = [objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{@"Exposure", "BOOLValue"}];
        if (v32)
        {
          OUTLINED_FUNCTION_3_113(v32, @"AdjustingExposure", MEMORY[0x1E695E110]);
        }

        v33 = [objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{@"WhiteBalance", "BOOLValue"}];
        if (v33)
        {
          OUTLINED_FUNCTION_3_113(v33, @"AdjustingWhiteBalance", MEMORY[0x1E695E110]);
        }

        v34 = [objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{@"Flash", "BOOLValue"}];
        if (v34)
        {
          OUTLINED_FUNCTION_3_113(v34, @"FlashActive", MEMORY[0x1E695E110]);
        }

        v35 = [objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{@"SIS", "BOOLValue"}];
        if (v35)
        {
          OUTLINED_FUNCTION_3_113(v35, @"IsStillImageStabilizationScene", MEMORY[0x1E695E110]);
        }

        v36 = [*(DerivedStorage + 104) objectForKeyedSubscript:@"Option25"];
        if (v36)
        {
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*MEMORY[0x1E695F050]);
          captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(v14, @"Option25Changed", DictionaryRepresentation, 0, 0);

          OUTLINED_FUNCTION_3_113(v45, @"Option25Changed2", MEMORY[0x1E695E110]);
        }

        if (HIDWORD(v62))
        {
          v36 = [qword_1ED8451C0 startMonitoringPearlProjectorTemperatureUntilNominal];
        }

        v46 = OUTLINED_FUNCTION_1_84(v36, v37, v38, v39, v40, v41, v42, v43, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100);
        if (v46)
        {
          v47 = v46;
          v48 = MEMORY[0];
          do
          {
            for (j = 0; j != v47; ++j)
            {
              if (MEMORY[0] != v48)
              {
                objc_enumerationMutation(v4);
              }

              v50 = [qword_1ED8451C0 startMonitoringImageSensorTemperatureUntilNominalWithPortType:*(8 * j)];
            }

            v47 = OUTLINED_FUNCTION_1_84(v50, v51, v52, v53, v54, v55, v56, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101);
          }

          while (v47);
        }
      }

      if (v6)
      {
        v113.value = MEMORY[0x1E69E9820];
        *&v113.timescale = 3221225472;
        v113.epoch = __captureSourceUnregisterWithHostSource_block_invoke;
        v114 = &unk_1E799DDE0;
        v115 = v7;
        captureSource_safelyAccessStorage(v6, &v113);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CFRelease(v6);
      }
    }

    else
    {
      FigSimpleMutexUnlock();
      v7 = 0;
    }
  }
}

uint64_t cs_resetTimeOfFlightAutoFocus(void *a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  result = [a1 setPropertyIfSupported:*off_1E798A040 value:MEMORY[0x1E695E110]];
  if (!result)
  {
    _MergedGlobals_13 = 256;
    if ([0 streaming])
    {
      [0 stop];
    }

    if (dword_1ED844030)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  return result;
}

uint64_t FigVideoCaptureSourceDeactivateAttachedCaptureSource(const void *a1)
{
  FigSimpleMutexLock();
  captureSource_deactivateInternal(a1);
  [qword_1ED8451D0 removeObject:a1];

  return FigSimpleMutexUnlock();
}

void captureSource_handleCMIOExtensionPropertyChangeNotification(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{@"DeviceType", "intValue"}];
  [*(DerivedStorage + 104) objectForKeyedSubscript:@"UniqueID"];
  if (objc_msgSend_isEqualToString_([a5 objectForKeyedSubscript:*off_1E798B840]))
  {
    if (dword_1ED844030)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    captureSource_postNotificationWithPayload(a2, @"SourceCMIOExtensionPropertyChanged", a5);
  }
}

void captureSource_handleDevicePropertyChangedNotification(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  [*(CMBaseObjectGetDerivedStorage() + 104) objectForKeyedSubscript:@"UniqueID"];
  if (objc_msgSend_isEqualToString_([a5 objectForKeyedSubscript:*off_1E7989F70]))
  {
    if (FigCFEqual())
    {
      v7 = kFigCaptureSourceProperty_Hidden;
    }

    else if (FigCFEqual())
    {
      v7 = kFigCaptureSourceProperty_ReadyToUnhide;
    }

    else if (FigCFEqual())
    {
      v7 = kFigCaptureSourceProperty_DockedTrackingActive;
    }

    else if (FigCFEqual())
    {
      v7 = kFigCaptureSourceProperty_BatteryState;
    }

    else
    {
      if (!FigCFEqual())
      {
        return;
      }

      v7 = kFigCaptureSourceProperty_BatteryLevel;
    }

    v8 = [a5 objectForKeyedSubscript:*off_1E7989F78];
    v9 = *v7;

    captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, v9, v8, 0, 0);
  }
}

void captureSource_updateCachedZoomFactorPropertyAndNotify(const void *a1, const void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __captureSource_updateCachedZoomFactorPropertyAndNotify_block_invoke;
  v4[3] = &unk_1E799DDE0;
  v4[4] = a2;
  captureSource_safelyAccessStorage(a1, v4);
  captureSource_postNotificationWithPayload(a1, @"VideoZoomRampUpdate", a2);
}

uint64_t __FigCaptureSourceInitialize_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t FigVideoCaptureSourceCreateFromBacking_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t FigVideoCaptureSourcesActivateAndCreateDevices_cold_9()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t FigVideoCaptureSourcesActivateAndCreateDevices_cold_10(_DWORD *a1, void *a2)
{
  OUTLINED_FUNCTION_4_100(a1, a2);
  v5 = 0;
  OUTLINED_FUNCTION_6_84();
  result = FigDebugAssert3(v3, v5);
  *a1 = -12780;
  return result;
}

uint64_t FigVideoCaptureSourcesDeactivateWithDevices_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

void FigVideoCaptureSourcesDeactivateWithDevices_cold_2(const void *a1, void *a2)
{
  if ([qword_1ED8451D0 containsObject:a1])
  {
    [a2 addObject:a1];
    [qword_1ED8451D0 removeObject:a1];
  }

  captureSource_deactivateInternal(a1);
}

uint64_t captureSource_setPropertyWithDeviceCheck_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x945, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyWithDeviceCheck_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x92A, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x705, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x70C, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x737, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x73E, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x744, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x74A, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x751, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x756, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x75F, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x764, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x76A, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x76F, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x774, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x779, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x77E, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_18(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x783, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_19(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x788, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_20(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x78D, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_21(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x793, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_22(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x799, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_23(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x79F, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_24(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x7A5, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_31(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x7E1, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_32(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x7E6, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_33(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x7EE, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_34(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x7FA, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_35(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x7FB, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_36(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x802, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_37(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x814, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_38(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x833, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_39(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x83D, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_40(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x845, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_41(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x84C, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_42(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x853, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_43(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x85A, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_44(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x863, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_45(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x869, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_46(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x870, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_47(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x879, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_48(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x882, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_49(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x889, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_50(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x890, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_51(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x897, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_52(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x89E, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_53(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x8A6, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_54(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x8AD, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_55(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x8B6, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_56(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x8BF, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_57(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x8C6, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_58(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x8D1, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_59(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x8D6, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_60(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x8DB, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t captureSource_setPropertyInternal_cold_61(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x6EF, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_handleThirdPartyTorchLevelCommand_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4_100(a1, a2);
  v5 = v2;
  OUTLINED_FUNCTION_6_84();
  return FigDebugAssert3(v3, v5);
}

uint64_t captureSource_handleThirdPartyTorchLevelCommand_cold_2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4_100(a1, a2);
  v5 = v2;
  OUTLINED_FUNCTION_6_84();
  return FigDebugAssert3(v3, v5);
}

uint64_t captureSource_handleThirdPartyTorchLevelCommand_cold_3(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4_100(a1, a2);
  v5 = v2;
  OUTLINED_FUNCTION_6_84();
  return FigDebugAssert3(v3, v5);
}

uint64_t captureSource_setFocusOperation_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xC0E, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setFocusOperation_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xC0D, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setFocusOperation_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xBFA, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setExposureOperation_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xCB7, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setExposureOperation_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xCB3, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setExposureOperation_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xCAF, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setExposureOperation_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xCAB, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setExposureOperation_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xC91, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setExposureOperation_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xC8F, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setExposureOperation_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xC7E, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setExposureTargetBiasOperation_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xCD2, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setWhiteBalanceOperation_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xD0C, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setWhiteBalanceOperation_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xD0B, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setWhiteBalanceOperation_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xCFB, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_setDeskViewEnabled_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xD2B, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t captureSource_setDeskViewEnabled_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xD28, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

void __getCCSControlCenterServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getCCSControlCenterServiceClass(void)_block_invoke") description:{@"FigCaptureSource.m", 92, @"Unable to find class %s", "CCSControlCenterService"}];
  __break(1u);
}

void ControlCenterServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *ControlCenterServicesLibrary(void)") description:{@"FigCaptureSource.m", 91, @"%s", *a1}];
  __break(1u);
}

void __getCCSModulePresentationOptionsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getCCSModulePresentationOptionsClass(void)_block_invoke") description:{@"FigCaptureSource.m", 94, @"Unable to find class %s", "CCSModulePresentationOptions"}];
  __break(1u);
}

void *captureSource_Invalidate_cold_1(id *a1)
{
  result = cs_resetTimeOfFlightAutoFocus([*a1 device]);
  if (!result)
  {
    v3 = *a1;

    return [v3 setTimeOfFlightAFEnabled:0];
  }

  return result;
}

uint64_t captureSource_Invalidate_cold_2(CFTypeRef cf, void *a2)
{
  v3 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  *a2 = cf;
  captureSource_deactivateInternal(v3);
  v4 = qword_1ED8451D0;

  return [v4 removeObject:v3];
}

uint64_t captureSource_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE0FLL, "<<<< FigCaptureSource >>>>", 0x161C, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x15FE, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_CopyProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE0FLL, "<<<< FigCaptureSource >>>>", 0x15FD, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_CopyProprietaryDefault_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x1712, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_CopyProprietaryDefault_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x1711, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_SetProprietaryDefault_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x173E, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_RegisterNotificationForProprietaryDefaultChanges_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x17AD, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_UnregisterNotificationForProprietaryDefaultChanges_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x17C6, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_PerformReactionEffect_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x1897, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_CopyWildcardProprietaryDefault_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x176E, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_CopyWildcardProprietaryDefault_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x176D, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_SetWildcardProprietaryDefault_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x178D, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSource_SetWildcardProprietaryDefault_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x178C, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

void cs_sendNotificationOfNewTransientValue_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"BOOL soft_showReactionsTip(NSString * description:{NSString *)"), @"FigCaptureSource.m", 112, @"%s", dlerror()}];
  __break(1u);
}

void __getshowReactionsTipSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *ReplayKitLibrary(void)") description:{@"FigCaptureSource.m", 111, @"%s", *a1}];
  __break(1u);
}

void __getCMIOExtensionProviderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getCMIOExtensionProviderClass(void)_block_invoke") description:{@"FigCaptureSource.m", 119, @"Unable to find class %s", "CMIOExtensionProvider"}];
  __break(1u);
}

void __getCMIOExtensionProviderClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *CoreMediaIOLibrary(void)") description:{@"FigCaptureSource.m", 118, @"%s", *a1}];
  __break(1u);
}

uint64_t ubn_insertOutputRouterForInputAfterPreviousInputForBufferTypeAndName(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  if (a1 && a3)
  {
    v11 = OUTLINED_FUNCTION_18_0();
    v13 = [v11 outputSampleBufferRouterForBufferType:v12];
    if ([v13 outputSampleBufferRouter])
    {
      v14 = [v13 outputSampleBufferRouter];
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
      v6 = 1;
      [a2 addOutputSampleBufferRouter:v14 forBufferTypes:objc_msgSend(MEMORY[0x1E695DEC8] name:{"arrayWithObjects:count:", &v17, 1), objc_msgSend(v13, "name")}];
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
      [a3 addOutputSampleBufferRouter:v5 forBufferTypes:objc_msgSend(MEMORY[0x1E695DEC8] name:{"arrayWithObjects:count:", &v16, 1), a5}];
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void exposure_table_create_lookup_table_cold_1(uint64_t a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  v6 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v3, v7, v8, v9, v10, vars0, vars8);
  if (a2)
  {
    free(a2);
  }

  *a3 = 0;
}

uint64_t FigCaptureClientApplicationIDIsFaceTimeVariant(uint64_t a1)
{
  if (qword_1ED845228 == -1)
  {
    if (!a1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&qword_1ED845228, &__block_literal_global_250);
    if (!a1)
    {
      goto LABEL_5;
    }
  }

  if (_MergedGlobals_14 != -1)
  {
    dispatch_once(&_MergedGlobals_14, &__block_literal_global_138);
  }

LABEL_5:
  v2 = qword_1ED8451E0;

  return [v2 containsObject:a1];
}

uint64_t FigCaptureClientApplicationIDIsVoiceOver(uint64_t a1)
{
  if (qword_1ED845228 == -1)
  {
    if (!a1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&qword_1ED845228, &__block_literal_global_250);
    if (!a1)
    {
      goto LABEL_5;
    }
  }

  if (qword_1ED845218 != -1)
  {
    dispatch_once(&qword_1ED845218, &__block_literal_global_109);
  }

LABEL_5:
  v2 = qword_1ED845220;

  return [v2 containsObject:a1];
}

void __FigCaptureDeviceCoreRepairStatusesByKeys_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CRComponentState soft_CRGetComponentState(CRComponentType description:{CFErrorRef *)"), @"FigCaptureUtilities.m", 68, @"%s", dlerror()}];
  __break(1u);
}

void __getCRGetComponentStateSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *CoreRepairCoreLibrary(void)") description:{@"FigCaptureUtilities.m", 67, @"%s", *a1}];
  __break(1u);
}

id *__ubp_createStateMachine_block_invoke_2_0(uint64_t a1, id *a2)
{
  [(BWIntelligentDistortionCorrectionProcessorController *)a2 _resetProcessor];

  return [(BWIntelligentDistortionCorrectionProcessorController *)a2 _serviceNextRequest];
}

id *__dzp_createStateMachine_block_invoke_3(uint64_t a1, id *a2)
{
  if (a2)
  {
    return [(BWDeepZoomProcessorController *)a2 _updateStateIfNeeded];
  }

  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CMTag CMTagMakeWithSInt64Value(CMTagCategory category, int64_t value)
{
  v2 = MEMORY[0x1EEDBBB28](*&category, value);
  result.value = v3;
  result.category = v2;
  result.dataType = HIDWORD(v2);
  return result;
}

CGSize CVImageBufferGetEncodedSize(CVImageBufferRef imageBuffer)
{
  MEMORY[0x1EEDBF858](imageBuffer);
  result.height = v2;
  result.width = v1;
  return result;
}

void FigCaptureComputeImageGainFromMetadata()
{
    ;
  }
}

void FigCaptureDeviceGetClassID()
{
    ;
  }
}

void FigCaptureDeviceGetFigBaseObject()
{
    ;
  }
}

void FigCaptureDeviceGetNotificationCenter()
{
    ;
  }
}

void FigCaptureStreamFocusingMethodIsContrastBased()
{
    ;
  }
}

void FigCaptureStreamFocusingMethodIsPhaseDetectionBased()
{
    ;
  }
}

void FigCaptureStreamGetClassID()
{
    ;
  }
}

void FigCaptureStreamGetFigBaseObject()
{
    ;
  }
}

void FigCaptureSynchronizedStreamsGroupGetFigBaseObject()
{
    ;
  }
}

simd_float2x2 __invert_f2(simd_float2x2 a1)
{
  MEMORY[0x1EEE73550](a1, *(&a1 + 8));
  result.columns[1] = v2;
  result.columns[0] = v1;
  return result;
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x1EEE73558](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x1EEE73560](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}