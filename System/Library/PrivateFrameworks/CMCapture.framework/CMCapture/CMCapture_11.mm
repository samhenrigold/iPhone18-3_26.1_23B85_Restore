size_t FigDraw420Color(__CVBuffer *a1, int a2, int a3, char a4, char a5, char a6)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v22 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  result = CVPixelBufferGetPlaneCount(a1);
  v13 = result;
  if (result)
  {
    v14 = 0;
    do
    {
      *(&v24 + v14) = CVPixelBufferGetBaseAddressOfPlane(a1, v14);
      result = CVPixelBufferGetBytesPerRowOfPlane(a1, v14);
      *(&v22 + v14++) = result;
    }

    while (v13 != v14);
  }

  if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
  {
    if (v13 != 2)
    {
      return result;
    }

    v19 = HIDWORD(v22);
    v17 = v25;
    *(v24 + a2 + v22 * a3) = a4;
    v20 = v19 * (a3 >> 1);
    *(v17 + (a2 & 0xFFFFFFFFFFFFFFFELL) + v20) = a5;
    v18 = v20 + (a2 | 1);
    goto LABEL_11;
  }

  if (PixelFormatType == 2033463856 && v13 == 3)
  {
    v15 = HIDWORD(v22);
    v16 = v25;
    *(v24 + a2 + v22 * a3) = a4;
    *(v16 + v15 * (a3 >> 1) + (a2 >> 1)) = a5;
    v17 = v26;
    v18 = v23 * (a3 >> 1) + (a2 >> 1);
LABEL_11:
    *(v17 + v18) = a6;
  }

  return result;
}

uint64_t FigDraw420Rectangle(__CVBuffer *a1, int a2, int a3, int a4, int a5, char a6, char a7, char a8)
{
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  if (!a1 || (a3 | a2) < 0 || WidthOfPlane <= a2 || a5 < 1 || a4 < 1 || HeightOfPlane <= a3)
  {
    FigDraw420Rectangle_cold_1(&v30);
    return v30;
  }

  v18 = a4 + a2;
  if (WidthOfPlane >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = WidthOfPlane;
  }

  v29 = WidthOfPlane;
  if (v19 > a2)
  {
    v28 = HeightOfPlane;
    v27 = v18;
    v21 = a2;
    do
    {
      FigDraw420Color(a1, v21++, a3, a6, a7, a8);
    }

    while (v19 != v21);
    v20 = a5 + a3;
    HeightOfPlane = v28;
    if (a5 + a3 > v28 || v19 <= a2)
    {
      v18 = v27;
    }

    else
    {
      v22 = a2;
      do
      {
        FigDraw420Color(a1, v22++, v20 - 1, a6, a7, a8);
      }

      while (v19 != v22);
      v18 = v27;
      HeightOfPlane = v28;
    }
  }

  else
  {
    v20 = a5 + a3;
  }

  v23 = a3 + 1;
  if (HeightOfPlane >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = HeightOfPlane;
  }

  if (v23 >= v24)
  {
    return 0;
  }

  v25 = v23;
  do
  {
    FigDraw420Color(a1, a2, v25++, a6, a7, a8);
  }

  while (v24 != v25);
  result = 0;
  if (v18 <= v29 && v23 < v24)
  {
    do
    {
      FigDraw420Color(a1, v18 - 1, v23++, a6, a7, a8);
    }

    while (v24 != v23);
    return 0;
  }

  return result;
}

uint64_t FigContinuityCaptureSetUserPreferenceDisabled(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v3 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *MEMORY[0x1E695E8B8];
  CFPreferencesSetValue(@"ContinuityCaptureDisabled", *v3, @"com.apple.cameracapture", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] now];
  }

  if (dword_1EB58E640)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFPreferencesSetValue(@"ContinuityCaptureLastUsedDate", v5, @"com.apple.cameracapture.volatile", v4, *MEMORY[0x1E695E8B0]);
  v7 = getpid();
  return FigCaptureLogContinuityCameraPowerEvent(v7, v2 ^ 1u);
}

id BWUBCreateNRProcessorControllerConfiguration(void *a1, uint64_t *a2)
{
  if (!a2)
  {
    BWUBCreateNRProcessorControllerConfiguration_cold_1(a1);
    return 0;
  }

  v4 = [(BWUBNodeConfiguration *)a1 stillImageFusionScheme];
  v5 = 0;
  if (v4 >= 3)
  {
    if (v4 - 4 >= 2)
    {
      if (v4 != 3)
      {
LABEL_8:
        [v5 setSensorConfigurationsByPortType:-[BWUBNodeConfiguration sensorConfigurationsByPortType](a1)];
        [v5 setMetalCommandQueue:{objc_msgSend(a1, "metalCommandQueue")}];
        [v5 setFigThreadPriority:{objc_msgSend(a1, "figThreadPriority")}];
        [v5 setAlwaysAllowModifyingInputBuffers:-[BWUBNodeConfiguration alwaysAllowModifyingInputBuffers](a1)];
        [v5 setUnifiedBracketingFusionSupportEnabled:-[BWUBNodeConfiguration unifiedBracketingFusionSupportEnabled](a1)];
        [v5 setLowLightFusionEnabled:-[BWUBNodeConfiguration digitalFlashSupportEnabled](a1)];
        [v5 setDeepFusionEnabled:-[BWUBNodeConfiguration deepFusionSupportEnabled](a1)];
        [v5 setDeepFusionWaitForProcessingToFinish:-[BWUBNodeConfiguration deepFusionWaitForPreprocessingToFinish](a1)];
        [v5 setDeferredCaptureSupportEnabled:{objc_msgSend(a1, "deferredCaptureSupportEnabled")}];
        [v5 setDeferredPhotoProcessorEnabled:{objc_msgSend(a1, "deferredPhotoProcessorEnabled")}];
        [v5 setGainMapMainImageDownscalingFactor:-[BWUBNodeConfiguration gainMapMainImageDownscalingFactor](a1)];
        [v5 setDepthDataDeliveryEnabled:-[BWUBNodeConfiguration depthDataDeliveryEnabled](a1)];
        [v5 setGreenGhostMitigationVersion:-[BWUBNodeConfiguration greenGhostMitigationVersion](a1)];
        [v5 setDemosaicedRawPixelFormat:-[BWUBNodeConfiguration demosaicedRawPixelFormat](a1)];
        [v5 setDemosaicedRawEnabled:-[BWUBNodeConfiguration demosaicedRawEnabled](a1)];
        [v5 setRawColorCalibrationsByPortType:-[BWUBNodeConfiguration rawColorCalibrationsByPortType](a1)];
        [v5 setRawLensShadingCorrectionCoefficientsByPortType:-[BWUBNodeConfiguration rawLensShadingCorrectionCoefficientsByPortType](a1)];
        return v5;
      }

      v6 = off_1E79895B0;
      v7 = 1;
    }

    else
    {
      v6 = off_1E7989598;
      v7 = 6;
    }

    *a2 = v7;
    v5 = objc_alloc_init(*v6);
    goto LABEL_8;
  }

  return v5;
}

uint64_t BWStillImageCoordinatorAddAttachmentsToSampleBuffer(const void *a1, void *a2)
{
  if (![a2 requestedSettings])
  {
    v4 = CMGetAttachment(a1, @"BWStillImageCaptureSettings", 0);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v4)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@" with capture settings ID '%lld'", objc_msgSend(v4, "settingsID")];
    }

    v6 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(7, v6, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageCoordinatorNode.m", 3436, @"LastShownDate:BWStillImageCoordinatorNode.m:3436", @"LastShownBuild:BWStillImageCoordinatorNode.m:3436", 0);
    free(v6);
  }

  CMSetAttachment(a1, @"StillSettings", a2, 1u);
  CMSetAttachment(a1, @"StillImageSettings", [a2 requestedSettings], 1u);
  CMSetAttachment(a1, @"PhotoManifest", [objc_msgSend(a2 "processingSettings")], 1u);
  if (([objc_msgSend(a2 "captureSettings")] & 0x4000) != 0)
  {
    BWStillImageSetProcessingFlagsForSampleBuffer(a1, 512);
  }

  v7 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", FigCaptureMetadataUtilitiesStillImageExifOrientationFromRotationDegreesAndMirrored(objc_msgSend(objc_msgSend(a2, "requestedSettings"), "outputRotationDegrees"), objc_msgSend(objc_msgSend(a2, "requestedSettings"), "outputMirroring"), 0, objc_msgSend(objc_msgSend(a2, "requestedSettings"), "metadata"))), *off_1E798A5B0}];
  [objc_msgSend(a2 "requestedSettings")];
  FigCaptureMetadataUtilitiesRefineFinalCropRects(v7, v8);
  return BWAddStillImageProcessingMetadataToMetadata(a2, v7);
}

void sub_1ACAB7A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACAB7D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ACAB825C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1)
{
  v6 = *(*(v1 + 32) + v3);

  return [v6 setObject:a1 forKeyedSubscript:v2];
}

uint64_t OUTLINED_FUNCTION_95_4(void *a1, const char *a2)
{

  return [a1 getInUseCompressedBufferCount:v3 - 84 inUseCompressedBytes:v3 - 96 maxInUseCompressedBytes:v3 - 104 forUncompressedEquivalentFreeBufferCount:v2];
}

uint64_t OUTLINED_FUNCTION_98_3()
{

  return [v0 portType];
}

float stdDeviation(void *a1)
{
  v2 = [a1 count];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 floatValue];
        v6 = v6 + v10 * v10;
        [v9 floatValue];
        v7 = v7 + v11;
      }

      v4 = [a1 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  return sqrt((v6 - v2 * (v7 / v2 * (v7 / v2))) / v2);
}

void sub_1ACAC174C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x1880], 8);
  _Block_object_dispose(&STACK[0x18A0], 8);
  _Block_object_dispose(&STACK[0x18C0], 8);
  _Block_object_dispose(&STACK[0x18E0], 8);
  _Block_object_dispose(&STACK[0x1900], 8);
  _Block_object_dispose(&STACK[0x1930], 8);
  _Block_object_dispose(&STACK[0x1950], 8);
  _Block_object_dispose(&STACK[0x1980], 8);
  _Block_object_dispose((v1 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_1ACAC1B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1ACAC20BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 232), 8);
  _Block_object_dispose((v65 - 200), 8);
  _Block_object_dispose((v65 - 168), 8);
  _Block_object_dispose((v65 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t scfr_averageForegroundDisparityForRect(__CVBuffer *a1, _WORD *a2, int a3, int a4, CGFloat x, CGFloat y, CGFloat a7, CGFloat a8)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v19 = FigDepthBytesPerPixelForDepthFormat(PixelFormatType);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (a4 || a3)
  {
    memset(v50, 0, 48);
    FigCaptureMakeMirrorAndRotateVideoTransform(1, 1, a3, a4, v50);
    v49 = v50[0];
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = a7;
    v51.size.height = a8;
    v52 = CGRectApplyAffineTransform(v51, &v49);
    x = v52.origin.x;
    y = v52.origin.y;
    a7 = v52.size.width;
    a8 = v52.size.height;
  }

  v22 = (x * Width);
  if (Width - 1 < v22)
  {
    v22 = Width - 1;
  }

  v23 = v22 & ~(v22 >> 31);
  v24 = Height - 1;
  if (Height - 1 >= (y * Height))
  {
    v24 = (y * Height);
  }

  v25 = v24 & ~(v24 >> 31);
  if ((Width - v23) >= (a7 * Width))
  {
    v26 = (a7 * Width);
  }

  else
  {
    v26 = Width - v23;
  }

  if (Height - v25 >= (a8 * Height))
  {
    v27 = (a8 * Height);
  }

  else
  {
    v27 = Height - v25;
  }

  bzero(v50, 0x3E8uLL);
  if (v27 < 1)
  {
    return 0;
  }

  v28 = 0;
  v29 = 0;
  v30 = BaseAddress + 2 * BytesPerRow / v19 * v25 + 2 * v23;
  do
  {
    v31 = v26;
    if (v26 >= 1)
    {
      do
      {
        __asm { FCMP            H2, #0 }

        if (_NF == _VF && _H2 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(5.0)))
        {
          __asm { FCVT            S2, H2 }

          ++*(&v50[0].a + (_S2 / 0.020004));
          ++v29;
        }

        v30 += 2;
        --v31;
      }

      while (v31);
    }

    v30 += 2 * (BytesPerRow / v19 - (v26 & ~(v26 >> 31)));
    ++v28;
  }

  while (v28 != v27);
  if (v29 < 2)
  {
    return 0;
  }

  v39 = 0;
  v40 = v29 / 2;
  _H1 = 0;
  v42 = 249;
  do
  {
    v43 = *(&v50[0].a + v42);
    if (v43 >= (v40 - v39))
    {
      v43 = v40 - v39;
    }

    __asm { FCVT            S1, H1 }

    _S1 = _S1 + (v43 * (v42 * 0.020004));
    __asm { FCVT            H1, S1 }

    v39 += v43;
    _CF = v42-- != 0;
  }

  while (_CF && v39 < v40);
  result = 0;
  if (a2)
  {
    if (v39)
    {
      __asm { FCVT            S0, H1 }

      _S0 = _S0 / v39;
      __asm { FCVT            H0, S0 }

      *a2 = LOWORD(_S0);
      return 1;
    }
  }

  return result;
}

uint64_t powerBlurNoiseReductionGPUReleaseBuffers(uint64_t a1)
{
  WaitForInitializationToFinish(a1);
  [MEMORY[0x1E6977FE8] setCurrentContext:*(a1 + 16)];
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, *(a1 + 64));
  glTexImage2D(0xDE1u, 0, 6408, 0, 0, 0, 0x1908u, 0x1401u, 0);
  glBindTexture(0xDE1u, *(a1 + 76));
  glTexImage2D(0xDE1u, 0, 6408, 0, 0, 0, 0x1908u, 0x1401u, 0);
  glBindTexture(0xDE1u, *(a1 + 80));
  glTexImage2D(0xDE1u, 0, 6408, 0, 0, 0, 0x1908u, 0x1401u, 0);
  glBindTexture(0xDE1u, 0);
  *(a1 + 44) = -1;
  glDeleteTextures(1, (a1 + 36));
  glGenTextures(1, (a1 + 36));
  glFinish();
  v2 = MEMORY[0x1E6977FE8];

  return [v2 setCurrentContext:0];
}

void WaitForInitializationToFinish(uint64_t a1)
{
  if (*a1 != 1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      block[5] = v1;
      block[6] = v2;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __WaitForInitializationToFinish_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_sync(v3, block);
    }
  }
}

void powerBlurNoiseReductionGPUContextInit(int a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  v3 = -2;
  if (a1 == 3)
  {
    v4 = 1;
  }

  else
  {
    v3 = 0;
    v4 = a1 == 2;
  }

  if (a1 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = v3;
  }

  v6 = a1 == 1 || v4;
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  global_queue = dispatch_get_global_queue(v5, 0);
  v9 = dispatch_queue_create_with_target_V2("noise-reduction-context-init", v7, global_queue);
  a2[1] = v9;
  if (v6 && v9)
  {

    dispatch_async_f(v9, a2, powerBlurNoiseReductionGPUContextInit_internal);
  }

  else
  {

    powerBlurNoiseReductionGPUContextInit_internal(a2, v10, v11, v12);
  }
}

void *powerBlurNoiseReductionGPUContextInit_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pixels = 0xFF00FF0000FF00FFLL;
  v33 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v4 = *(v33 + 52);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  *__s = 1;
  if (!v5)
  {
    powerBlurNoiseReductionGPUContextInit_internal_cold_2();
    goto LABEL_5;
  }

  v6 = v5;
  [v5 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6977FF0]];
  v7 = [objc_alloc(MEMORY[0x1E6977FE8]) initWithAPI:2 properties:v6];

  if (!v7)
  {
    powerBlurNoiseReductionGPUContextInit_internal_cold_1();
LABEL_5:
    v8 = v33;
    *(v33 + 16) = 0;
LABEL_49:
    result = [MEMORY[0x1E6977FE8] setCurrentContext:0];
    *v8 = 2;
    return result;
  }

  if ([v7 setParameter:608 to:__s])
  {

    goto LABEL_5;
  }

  *(v33 + 16) = v7;
  [MEMORY[0x1E6977FE8] setCurrentContext:v7];
  if (!*(v33 + 60))
  {
    v9 = *(v33 + 24);
    if (v9 != 1)
    {
      if (v9)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }

    *__s = v9;
    [*(v33 + 16) setParameter:608 to:__s];
  }

  glGetIntegerv(0xD33u, &params);
  v10 = params;
  *(v33 + 28) = params;
  *(v33 + 32) = v10;
  glGetIntegerv(0x84E8u, &params);
  v11 = params;
  if (*(v33 + 28) < params)
  {
    *(v33 + 28) = params;
  }

  if (*(v33 + 32) < v11)
  {
    *(v33 + 32) = v11;
  }

  glGetIntegerv(0xD3Au, &params);
  if (*(v33 + 28) < params)
  {
    *(v33 + 28) = params;
  }

  if (*(v33 + 32) < v41)
  {
    *(v33 + 32) = v41;
  }

  v12 = 1;
  glGenFramebuffers(1, (v33 + 40));
  glGenTextures(1, (v33 + 36));
  glGenTextures(1, (v33 + 64));
  glGenTextures(1, (v33 + 76));
  glGenTextures(1, (v33 + 80));
  glGenTextures(1, (v33 + 68));
  glGenTextures(1, (v33 + 72));
  v13 = 0;
  v14 = v36;
  *(v33 + 44) = -1;
  do
  {
    v15 = v12;
    v16 = (v12 & 1) == 0;
    if (v12)
    {
      v17 = 5;
    }

    else
    {
      v17 = 8;
    }

    if (v16)
    {
      v18 = 8;
    }

    else
    {
      v18 = 5;
    }

    snprintf(__str, 0x200uLL, "attribute vec2 position;\nattribute vec2 texcoord;\nuniform vec2 texStep;\nvarying vec2 tex_coord[%d];\nvoid main()\n{\n  int i;\n  float scale=1.0;\n  gl_Position = vec4(position.x, position.y, 0, 1);\n  tex_coord[0] = texcoord;\n  for (i=1 ; i<%d ; i++) {\n    tex_coord[i] = texcoord + vec2(scale) * texStep;\n    scale = -scale;\n    if (scale > 0.0) {\n      scale += 1.0;\n    }\n  }\n}\n", v18, v18);
    if (strlen(__str) > 0x1FE)
    {
      goto LABEL_48;
    }

    if ((v17 & 1) != 0 || !*(v33 + 56))
    {
      snprintf(__s, 0x800uLL, "#define TC_COUNT %d\nprecision mediump float;\nuniform sampler2D sampler;\nuniform mediump sampler2D samplerRecip;\nuniform vec2 threshold;\nvarying highp vec2 tex_coord[TC_COUNT];\n#define weightUV()  uvDelta = abs(uv0-uvN);  uvDist = uvDelta.xz + uvDelta.yw;  uvMask = vec2(lessThanEqual(uvDist, threshold));  accum += uvN * vec4(uvMask.xxyy);  count += uvMask;\n#define weightUVWithScale(SCALE)  uvDelta = abs(uv0-uvN);  uvDist = uvDelta.xz + uvDelta.yw;  uvMask = vec2(lessThanEqual(uvDist, threshold));  accum += SCALE * uvN * vec4(uvMask.xxyy);  count += SCALE * uvMask;\n\nvoid main()\n{\n  int i;\n  vec2 recip, uvDist;\n  vec4 uvDelta, uvN, uv0 = texture2D(sampler, tex_coord[0]);\n  vec2 uvMask, count = vec2(0.0);\n  vec4 accum = uv0;\n  uvN = uv0.zwxy;\n  weightUV();\n  for (i=1 ; i<TC_COUNT-%d ; i++) {\n    uvN = texture2D(sampler, tex_coord[i]);\n    weightUV();\n    uvN = uvN.zwxy;\n    weightUV();\n  }\n  if (%s) {\n    uvN = texture2D(sampler, tex_coord[TC_COUNT-2]);\n    weightUVWithScale(2.0);\n    uvN = uvN.zwxy;\n    weightUVWithScale(2.0);\n    uvN = texture2D(sampler, tex_coord[TC_COUNT-1]);\n    weightUV();\n    uvN = uvN.zwxy;\n    weightUV();\n  }\n  recip = texture2D(samplerRecip, count/%d.0).rg;\n  gl_FragColor = accum * recip.xxyy + vec4(0.4/256.0, 0.0, 0.4/256.0, 0.0);\n}\n", v17, 0, "false", 32);
    }

    else
    {
      snprintf(__s, 0x800uLL, "#define TC_COUNT %d\nprecision mediump float;\nuniform sampler2D sampler;\nuniform mediump sampler2D samplerRecip;\nuniform vec2 threshold;\nvarying highp vec2 tex_coord[TC_COUNT];\n#define weightUV()  uvDelta = abs(uv0-uvN);  uvDist = uvDelta.xz + uvDelta.yw;  uvMask = vec2(lessThanEqual(uvDist, threshold));  accum += uvN * vec4(uvMask.xxyy);  count += uvMask;\n#define weightUVWithScale(SCALE)  uvDelta = abs(uv0-uvN);  uvDist = uvDelta.xz + uvDelta.yw;  uvMask = vec2(lessThanEqual(uvDist, threshold));  accum += SCALE * uvN * vec4(uvMask.xxyy);  count += SCALE * uvMask;\n\nvoid main()\n{\n  int i;\n  vec2 recip, uvDist;\n  vec4 uvDelta, uvN, uv0 = texture2D(sampler, tex_coord[0]);\n  vec2 uvMask, count = vec2(0.0);\n  vec4 accum = uv0;\n  uvN = uv0.zwxy;\n  weightUV();\n  for (i=1 ; i<TC_COUNT-%d ; i++) {\n    uvN = texture2D(sampler, tex_coord[i]);\n    weightUV();\n    uvN = uvN.zwxy;\n    weightUV();\n  }\n  if (%s) {\n    uvN = texture2D(sampler, tex_coord[TC_COUNT-2]);\n    weightUVWithScale(2.0);\n    uvN = uvN.zwxy;\n    weightUVWithScale(2.0);\n    uvN = texture2D(sampler, tex_coord[TC_COUNT-1]);\n    weightUV();\n    uvN = uvN.zwxy;\n    weightUV();\n  }\n  recip = texture2D(samplerRecip, count/%d.0).rg;\n  gl_FragColor = accum * recip.xxyy + vec4(0.4/256.0, 0.0, 0.4/256.0, 0.0);\n}\n", v17, 2, "true", 32);
    }

    if (strlen(__s) >= 0x7FF)
    {
LABEL_48:
      v8 = v33;
      goto LABEL_49;
    }

    ProgramFromSources = gl_UtilsCreateProgramFromSources(__str, __s);
    v20 = (v33 + 84 + 28 * v13);
    *v20 = ProgramFromSources;
    v20[1] = glGetAttribLocation(ProgramFromSources, "position");
    v20[2] = glGetAttribLocation(*v20, "texcoord");
    v20[4] = glGetUniformLocation(*v20, "sampler");
    v20[5] = glGetUniformLocation(*v20, "samplerRecip");
    v20[3] = glGetUniformLocation(*v20, "texStep");
    v20[6] = glGetUniformLocation(*v20, "threshold");
    glUseProgram(*v20);
    glUniform1i(v20[4], 0);
    glUniform1i(v20[5], 2);
    v12 = 0;
    *v14 = *v20;
    v14 = v37;
    v13 = 1;
  }

  while ((v15 & 1) != 0);
  v21 = gl_UtilsCreateProgramFromSources("attribute vec2 position;\nattribute vec2 texcoord;\nuniform vec2 tex_step;\nuniform vec2 tex_dim;\nvarying vec2 tex_coord[2];\nvarying vec2 tex_coord_01;\nvoid main()\n{\n  gl_Position = vec4(position.x, position.y, 1, 1);\n  tex_coord[0] = texcoord.yx - tex_step * vec2(+0.5, +0.5);\n  tex_coord[1] = texcoord.yx + tex_step * vec2(+0.25, +0.25);\n  tex_coord_01 = texcoord * tex_dim;\n}\n", "precision mediump float;\nuniform sampler2D sampler_uv;\nuniform sampler2D sampler_01;\nvarying highp vec2 tex_coord[2];\nvarying highp vec2 tex_coord_01;\nvoid main()\n{\n    vec4 uv0, uv1, mask, d;\n    uv0 = texture2D(sampler_uv, tex_coord[0]);\n    uv1 = texture2D(sampler_uv, tex_coord[1]);\n    mask = texture2D(sampler_01, tex_coord_01);\n    d.xy = uv0.xy * mask.xx;\n    d.xy = uv0.zw * mask.yy + d.xy;\n    d.zw = uv1.xy * mask.zz;\n    d.zw = uv1.zw * mask.ww + d.zw;\n    gl_FragColor = d;\n}\n");
  *(v33 + 140) = v21;
  *(v33 + 144) = glGetAttribLocation(v21, "position");
  *(v33 + 148) = glGetAttribLocation(*(v33 + 140), "texcoord");
  *(v33 + 152) = glGetUniformLocation(*(v33 + 140), "tex_step");
  *(v33 + 156) = glGetUniformLocation(*(v33 + 140), "tex_dim");
  *(v33 + 160) = glGetUniformLocation(*(v33 + 140), "sampler_uv");
  *(v33 + 164) = glGetUniformLocation(*(v33 + 140), "sampler_01");
  glUseProgram(*(v33 + 140));
  glUniform1i(*(v33 + 160), 0);
  glUniform1i(*(v33 + 164), 1);
  glActiveTexture(0x84C1u);
  glBindTexture(0xDE1u, *(v33 + 68));
  glTexImage2D(0xDE1u, 0, 6408, 1, 2, 0, 0x1908u, 0x1401u, &pixels);
  glTexParameterf(0xDE1u, 0x2802u, 10497.0);
  glTexParameterf(0xDE1u, 0x2803u, 10497.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  v22 = 0;
  v23 = &__s[2];
  do
  {
    if (v4)
    {
      v24 = &neonExactRecipTable;
    }

    else
    {
      v24 = &neonApproxRecipTable;
    }

    v25 = F32toF16(v24[v22]);
    v26 = 32;
    v27 = v23;
    v28 = &neonApproxRecipTable;
    v29 = &neonExactRecipTable;
    do
    {
      if (v4)
      {
        v30 = v29;
      }

      else
      {
        v30 = v28;
      }

      *(v27 - 1) = F32toF16(*v30);
      *v27 = v25;
      v27 += 4;
      ++v29;
      ++v28;
      --v26;
    }

    while (v26);
    ++v22;
    v23 += 128;
  }

  while (v22 != 32);
  glActiveTexture(0x84C2u);
  glBindTexture(0xDE1u, *(v33 + 72));
  glTexImage2D(0xDE1u, 0, 33319, 32, 32, 0, 0x8227u, 0x8D61u, __s);
  glTexParameterf(0xDE1u, 0x2802u, 33071.0);
  glTexParameterf(0xDE1u, 0x2803u, 33071.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  v37[1] = *(v33 + 140);
  *textures = 0;
  *__str = xmmword_1AD055D4C;
  v35 = 0x3F80000000000000;
  glEnableVertexAttribArray(0);
  glVertexAttribPointer(0, 2, 0x1406u, 0, 0, __str);
  glGenTextures(1, &textures[1]);
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, textures[1]);
  glTexImage2D(0xDE1u, 0, 6408, 1, 1, 0, 0x1908u, 0x1401u, 0);
  glGenFramebuffers(1, textures);
  glBindFramebuffer(0x8D40u, textures[0]);
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, textures[1], 0);
  if (glCheckFramebufferStatus(0x8D40u) == 36053)
  {
    for (i = 0; i != 12; i += 4)
    {
      glUseProgram(*&v36[i]);
      glDrawArrays(4u, 0, 3);
      glFlush();
    }
  }

  glBindTexture(0xDE1u, 0);
  glBindFramebuffer(0x8D40u, 0);
  glDeleteFramebuffers(1, textures);
  glDeleteTextures(1, &textures[1]);
  glUseProgram(0);
  return [MEMORY[0x1E6977FE8] setCurrentContext:0];
}

double powerBlurNoiseReductionGPUContextDestroy(uint64_t a1)
{
  WaitForInitializationToFinish(a1);
  [MEMORY[0x1E6977FE8] setCurrentContext:*(a1 + 16)];
  glUseProgram(0);
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, 0);
  glActiveTexture(0x84C1u);
  glBindTexture(0xDE1u, 0);
  glBindFramebuffer(0x8D40u, 0);
  glDeleteFramebuffers(1, (a1 + 40));
  glDeleteTextures(1, (a1 + 36));
  glDeleteTextures(1, (a1 + 64));
  glDeleteTextures(1, (a1 + 76));
  glDeleteTextures(1, (a1 + 80));
  glDeleteTextures(1, (a1 + 68));
  glDeleteTextures(1, (a1 + 72));
  glDeleteProgram(*(a1 + 84));
  glDeleteProgram(*(a1 + 112));
  glDeleteProgram(*(a1 + 140));
  [MEMORY[0x1E6977FE8] setCurrentContext:0];
  v2 = *(a1 + 16);
  if (v2)
  {
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t powerBlurNoiseReductionGPU(uint64_t a1, __CVBuffer *a2, float64x2_t *a3, int a4, int a5, float a6)
{
  v50 = 1;
  v51[0] = 2;
  ptr[0] = xmmword_1AD055C0C;
  ptr[1] = unk_1AD055C1C;
  ptr[2] = xmmword_1AD055C2C;
  ptr[3] = unk_1AD055C3C;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  WaitForInitializationToFinish(a1);
  if (!*(a1 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *a1;
  if (!*a1)
  {
    powerBlurNoiseReductionGPU_cold_1(a1, &v46);
    v12 = v46;
  }

  if (v12 == 2)
  {
    return 4294967294;
  }

  [MEMORY[0x1E6977FE8] setCurrentContext:*(a1 + 16)];
  if (a4)
  {
    v14 = 84;
  }

  else
  {
    v14 = 112;
  }

  if (a4)
  {
    v15 = 5;
  }

  else
  {
    v15 = 8;
  }

  IOSurface = CVPixelBufferGetIOSurface(a2);
  if (!IOSurface)
  {
    goto LABEL_51;
  }

  v17 = IOSurface;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, 1uLL);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, 1uLL);
  if (WidthOfPlane < 1)
  {
    goto LABEL_51;
  }

  if (*(a1 + 28) < WidthOfPlane)
  {
    goto LABEL_51;
  }

  v20 = HeightOfPlane;
  if (HeightOfPlane < 1 || *(a1 + 32) < HeightOfPlane)
  {
    goto LABEL_51;
  }

  v21 = a1 + v14;
  CreateTextureStorage(a1, WidthOfPlane, HeightOfPlane);
  v22 = a6 / 255.0;
  if ((a6 / 255.0) < 0.0)
  {
    v22 = 0.0;
  }

  if (v22 <= 1.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1.0;
  }

  v45 = vuzp1q_s32(vcvtq_s64_f64(*a3), vcvtq_s64_f64(a3[1]));
  ClampAndExpandScissor(v45.i32, WidthOfPlane, v20);
  v25 = v45.i32[0];
  v24 = v45.i32[1];
  v46 = v45.i32[0] - v15;
  v47 = v45.i32[1] - v15;
  v42 = v45.i32[3];
  v43 = v45.i32[2];
  v48 = v45.i32[2] + 2 * v15;
  v49 = v45.i32[3] + 2 * v15;
  ClampAndExpandScissor(&v46, WidthOfPlane, v20);
  v39 = v25;
  if (v25 > 0 || v24 > 0 || v43 < WidthOfPlane || v42 < v20)
  {
    glEnable(0xC11u);
  }

  else
  {
    glDisable(0xC11u);
  }

  if (*(a1 + 60) && !*(a1 + 24))
  {
    [*(a1 + 16) setParameter:608 to:v51];
  }

  v26 = v47;
  v41 = v46;
  v27 = v49;
  v40 = v48;
  glScissor(v46 / 2, v47, v48 / 2, v49);
  glVertexAttribPointer(*(v21 + 4), 2, 0x1406u, 0, 16, ptr);
  glEnableVertexAttribArray(*(v21 + 4));
  glVertexAttribPointer(*(v21 + 8), 2, 0x1406u, 0, 16, ptr + 8);
  glEnableVertexAttribArray(*(v21 + 8));
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, *(a1 + 36));
  BYTE4(v38) = 0;
  LODWORD(v38) = 1;
  if (([*(a1 + 16) texImageIOSurface:v17 target:3553 internalFormat:6408 width:WidthOfPlane >> 1 height:v20 format:6408 type:5121 plane:v38 invert:?] & 1) == 0)
  {
    goto LABEL_51;
  }

  glTexParameterf(0xDE1u, 0x2802u, 33071.0);
  glTexParameterf(0xDE1u, 0x2803u, 33071.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  glBindFramebuffer(0x8D40u, *(a1 + 40));
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *(a1 + 64), 0);
  if (glCheckFramebufferStatus(0x8D40u) != 36053)
  {
    goto LABEL_51;
  }

  glViewport(0, 0, WidthOfPlane >> 1, v20);
  glUseProgram(*v21);
  glUniform2f(*(v21 + 24), v23, v23);
  v28 = WidthOfPlane;
  v29 = 2.0 / WidthOfPlane;
  v30 = v20;
  v31 = 0.0 / v20;
  glUniform2f(*(v21 + 12), v29, v31);
  glDrawArrays(5u, 0, 4);
  if (*(a1 + 60) && !*(a1 + 24))
  {
    [*(a1 + 16) setParameter:608 to:&v50];
  }

  else
  {
    glFlush();
  }

  glScissor(v26 / 2, v41, v27 / 2, v40);
  glBindTexture(0xDE1u, *(a1 + 64));
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *(a1 + 76), 0);
  if (glCheckFramebufferStatus(0x8D40u) != 36053)
  {
    goto LABEL_51;
  }

  glVertexAttribPointer(*(a1 + 144), 2, 0x1406u, 0, 16, ptr);
  glEnableVertexAttribArray(*(a1 + 144));
  glVertexAttribPointer(*(a1 + 148), 2, 0x1406u, 0, 16, ptr + 8);
  glEnableVertexAttribArray(*(a1 + 148));
  glViewport(0, 0, v20 >> 1, WidthOfPlane);
  glUseProgram(*(a1 + 140));
  v32 = 0.5 / v30;
  glUniform2f(*(a1 + 152), 0.0, v32);
  v33 = v28 * 0.5;
  glUniform2f(*(a1 + 156), 1.0, v33);
  glDrawArrays(5u, 0, 4);
  if (*(a1 + 60) && !*(a1 + 24))
  {
    [*(a1 + 16) setParameter:608 to:v51];
  }

  else
  {
    glFlush();
  }

  glBindTexture(0xDE1u, *(a1 + 76));
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *(a1 + 80), 0);
  if (glCheckFramebufferStatus(0x8D40u) != 36053)
  {
    goto LABEL_51;
  }

  glVertexAttribPointer(*(v21 + 4), 2, 0x1406u, 0, 16, ptr);
  glEnableVertexAttribArray(*(v21 + 4));
  glVertexAttribPointer(*(v21 + 8), 2, 0x1406u, 0, 16, ptr + 8);
  glEnableVertexAttribArray(*(v21 + 8));
  glViewport(0, 0, v20 >> 1, WidthOfPlane);
  glUseProgram(*v21);
  v34 = 2.0 / v30;
  v35 = 0.0 / v28;
  glUniform2f(*(v21 + 12), v34, v35);
  glDrawArrays(5u, 0, 4);
  if (*(a1 + 60) && !*(a1 + 24))
  {
    [*(a1 + 16) setParameter:608 to:&v50];
  }

  else
  {
    glFlush();
  }

  glScissor(v39 / 2, v24, v43 / 2, v42);
  glBindTexture(0xDE1u, *(a1 + 80));
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *(a1 + 36), 0);
  if (glCheckFramebufferStatus(0x8D40u) != 36053)
  {
LABEL_51:
    [MEMORY[0x1E6977FE8] setCurrentContext:0];
    return 0xFFFFFFFFLL;
  }

  glVertexAttribPointer(*(a1 + 144), 2, 0x1406u, 0, 16, ptr);
  glEnableVertexAttribArray(*(a1 + 144));
  glVertexAttribPointer(*(a1 + 148), 2, 0x1406u, 0, 16, ptr + 8);
  glEnableVertexAttribArray(*(a1 + 148));
  glViewport(0, 0, WidthOfPlane >> 1, v20);
  glUseProgram(*(a1 + 140));
  v36 = 0.5 / v28;
  glUniform2f(*(a1 + 152), 0.0, v36);
  v37 = v30 * 0.5;
  glUniform2f(*(a1 + 156), 1.0, v37);
  glDrawArrays(5u, 0, 4);
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, 0, 0);
  glBindFramebuffer(0x8D40u, 0);
  glBindTexture(0xDE1u, 0);
  if (a5 == 1)
  {
    glFlush();
  }

  else
  {
    glFinish();
  }

  glGetError();
  [MEMORY[0x1E6977FE8] setCurrentContext:0];
  return 0;
}

void CreateTextureStorage(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  if (a1[11] != a2 || a1[12] != a3)
  {
    glActiveTexture(0x84C0u);
    glBindTexture(0xDE1u, a1[16]);
    glTexImage2D(0xDE1u, 0, 6408, a2 >> 1, a3, 0, 0x1908u, 0x1401u, 0);
    glTexParameterf(0xDE1u, 0x2802u, 33071.0);
    glTexParameterf(0xDE1u, 0x2803u, 33071.0);
    glTexParameterf(0xDE1u, 0x2800u, 9728.0);
    glTexParameterf(0xDE1u, 0x2801u, 9728.0);
    glBindTexture(0xDE1u, a1[19]);
    glTexImage2D(0xDE1u, 0, 6408, a3 >> 1, a2, 0, 0x1908u, 0x1401u, 0);
    glTexParameterf(0xDE1u, 0x2802u, 33071.0);
    glTexParameterf(0xDE1u, 0x2803u, 33071.0);
    glTexParameterf(0xDE1u, 0x2800u, 9728.0);
    glTexParameterf(0xDE1u, 0x2801u, 9728.0);
    glBindTexture(0xDE1u, a1[20]);
    glTexImage2D(0xDE1u, 0, 6408, a3 >> 1, a2, 0, 0x1908u, 0x1401u, 0);
    glTexParameterf(0xDE1u, 0x2802u, 33071.0);
    glTexParameterf(0xDE1u, 0x2803u, 33071.0);
    glTexParameterf(0xDE1u, 0x2800u, 9728.0);
    glTexParameterf(0xDE1u, 0x2801u, 9728.0);
    glBindTexture(0xDE1u, 0);
    a1[11] = a2;
    a1[12] = a3;
  }
}

int *ClampAndExpandScissor(int *result, int a2, int a3)
{
  v3 = *result;
  if (*result < 0)
  {
    v3 = 0;
    *result = 0;
  }

  v4 = result[1];
  if (v4 < 0)
  {
    v4 = 0;
    result[1] = 0;
  }

  v5 = result[2];
  if (v5 > a2 - v3)
  {
    result[2] = a2 - v3;
    v5 = a2 - v3;
  }

  v6 = result[3];
  if (v6 > a3 - v4)
  {
    result[3] = a3 - v4;
    v6 = a3 - v4;
    if ((v3 & 1) == 0)
    {
LABEL_9:
      if ((v4 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_9;
  }

  *result = v3 - 1;
  result[2] = ++v5;
  if ((v4 & 1) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  result[1] = v4 - 1;
  result[3] = ++v6;
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v6 & 1) == 0)
    {
      return result;
    }

LABEL_17:
    result[3] = v6 + 1;
    return result;
  }

LABEL_16:
  result[2] = v5 + 1;
  if (v6)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t __WaitForInitializationToFinish_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*v1 != 2)
  {
    *v1 = 1;
  }

  return result;
}

uint64_t gl_UtilsCreateProgramFromSources(GLchar *a1, GLchar *a2)
{
  Shader_0 = gl_UtilsCreateShader_0(0x8B31u, a1);
  if (!Shader_0)
  {
    gl_UtilsCreateProgramFromSources_cold_3();
    return 0;
  }

  v4 = Shader_0;
  v5 = gl_UtilsCreateShader_0(0x8B30u, a2);
  if (!v5)
  {
    gl_UtilsCreateProgramFromSources_cold_2(v4);
    return 0;
  }

  v6 = v5;
  params = 0;
  Program = glCreateProgram();
  v8 = Program;
  if (Program)
  {
    glAttachShader(Program, v4);
    glAttachShader(v8, v6);
    glLinkProgram(v8);
    glGetProgramiv(v8, 0x8B82u, &params);
    if (!params)
    {
      glDeleteProgram(v8);
      v8 = 0;
    }
  }

  else
  {
    gl_UtilsCreateProgramFromSources_cold_1();
  }

  glDeleteShader(v4);
  glDeleteShader(v6);
  return v8;
}

uint64_t F32toF16(float a1)
{
  v1 = HIWORD(LODWORD(a1)) & 0x8000;
  v2 = (LODWORD(a1) >> 23);
  v3 = ((((LODWORD(a1) & 0x7FFFFFu) >> 13) | (v2 << 10)) + 0x4000) | v1;
  if (v2 < 0x71)
  {
    LOWORD(v3) = HIWORD(a1) & 0x8000;
  }

  v4 = v1 | 0x7C00;
  if (v2 >= 0x8F)
  {
    LOWORD(v3) = v4;
  }

  v5 = v4 | LOWORD(a1) & 0x3FF;
  if ((LODWORD(a1) & 0x7FFFFF) == 0)
  {
    v5 = v4;
  }

  if (v2 != 255)
  {
    return v3;
  }

  return v5;
}

uint64_t gl_UtilsCreateShader_0(GLenum a1, GLchar *a2)
{
  string = a2;
  Shader = glCreateShader(a1);
  v3 = Shader;
  if (Shader)
  {
    params = 0;
    glShaderSource(Shader, 1, &string, 0);
    glCompileShader(v3);
    glGetShaderiv(v3, 0x8B81u, &params);
    if (!params)
    {
      glDeleteShader(v3);
      return 0;
    }
  }

  else
  {
    gl_UtilsCreateShader_cold_1_0();
  }

  return v3;
}

void csu_handleDevicePropertyChangedNotification(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v21 = 0;
  if (!FigCFEqual() && !FigCFEqual())
  {
    csu_handleDevicePropertyChangedNotification_cold_5();
    goto LABEL_21;
  }

  if (!a4)
  {
    csu_handleDevicePropertyChangedNotification_cold_4();
    goto LABEL_15;
  }

  if (!a5)
  {
    csu_handleDevicePropertyChangedNotification_cold_3();
LABEL_21:
    a4 = 0;
    goto LABEL_15;
  }

  a4 = [a4 copyProperty:*off_1E7989FD8 error:&v21];
  if (v21)
  {
    csu_handleDevicePropertyChangedNotification_cold_1();
    goto LABEL_15;
  }

  v7 = [a5 objectForKeyedSubscript:*off_1E7989F78];
  if (a4)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    csu_handleDevicePropertyChangedNotification_cold_2(v7);
    goto LABEL_15;
  }

  v9 = v7;
  if (FigCFEqual())
  {
    v19 = @"Hidden";
    v20 = v9;
    v17 = a4;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v10 = MEMORY[0x1E695DF20];
    v11 = &v18;
    v12 = &v17;
LABEL_14:
    csu_postSourceInfoArrayChangedNotificationIfNecessary([v10 dictionaryWithObjects:v11 forKeys:v12 count:1]);
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v15 = @"DockedTrackingActive";
    v16 = v9;
    v13 = a4;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = MEMORY[0x1E695DF20];
    v11 = &v14;
    v12 = &v13;
    goto LABEL_14;
  }

LABEL_15:
}

uint64_t csu_defaultDeviceStreamArrayChangedNotificationCallback(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((objc_msgSend_isEqualToString_(@"DefaultDeviceStreamsChanged", a2, a3) & 1) == 0)
  {
    return csu_defaultDeviceStreamArrayChangedNotificationCallback_cold_1();
  }

  if (!a4)
  {
    return csu_defaultDeviceStreamArrayChangedNotificationCallback_cold_3();
  }

  if (a5)
  {
    return csu_defaultDeviceStreamArrayChangedNotificationCallback_cold_2();
  }

  result = +[BWFigCaptureDeviceVendor videoCaptureDeviceFirmwareIsLoaded];
  if (result)
  {
    FigSimpleMutexLock();
    gSourceInfoArrayChanged = 1;
    gDefaultDeviceStreamsChanged = 1;

    return FigSimpleMutexUnlock();
  }

  return result;
}

void FigCaptureCreateSourceInfoArrayFromDeviceAndModelSpecificPlist(void *a1, void *a2, uint64_t a3, int a4, id *a5, void *a6)
{
  VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist = csu_createVideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist(a1, a2);
  v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v43 = a2;
  v8 = [a2 objectForKeyedSubscript:@"AVCaptureDevices"];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v51 objects:&v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v51 + 1) + 8 * i);
        if ([objc_msgSend(v13 objectForKeyedSubscript:{@"mediaType", "isEqual:", @"soun"}])
        {
          v14 = [v13 objectForKeyedSubscript:@"uniqueName"];
          if (!v14 || objc_msgSend_isEqualToString_(v14))
          {
            v40 = VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist;
            DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v13, 1uLL);
            v39 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
            [v39 setObject:&unk_1F22445D8 forKeyedSubscript:@"MediaType"];
            v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
            [v16 setObject:@"Microphone" forKeyedSubscript:@"NonLocalizedName"];
            [v16 setObject:&unk_1F22443F8 forKeyedSubscript:@"SourceType"];
            [v16 setObject:&unk_1F2244410 forKeyedSubscript:@"DeviceType"];
            [v16 setObject:@"com.apple.avfoundation.avcapturedevice.built-in_audio:0" forKeyedSubscript:@"ModelID"];
            [v16 setObject:@"com.apple.avfoundation.avcapturedevice.built-in_audio:0" forKeyedSubscript:@"UniqueID"];
            [v16 setObject:objc_msgSend(DeepCopy forKeyedSubscript:{"objectForKeyedSubscript:", @"prefersDecoupledIO", @"PrefersDecoupledIO"}];
            v38 = v16;
            [v16 setObject:@"MetadataGroup-Misc" forKeyedSubscript:@"AvailableMetadataKeyGroups"];
            v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
            AllAVCaptureSessionPresets = FigCaptureStreamUtilitiesGetAllAVCaptureSessionPresets();
            v59[0] = @"RequiredNumChannels";
            v59[1] = @"RequiredSampleRate";
            v59[2] = @"RequiredBitRatePerChannel";
            v59[3] = @"PreferredSampleRate";
            v59[4] = @"BitRatePerChannelForPreferredSampleRate";
            v59[5] = @"BitRateStrategyForPreferredSampleRate";
            v59[6] = @"VBRCodecQualityForPreferredSampleRate";
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:7];
            csu_pruneDictionaryToJustKeys([DeepCopy objectForKeyedSubscript:@"AVCaptureSessionPresetCommon"], v19);
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v20 = [AllAVCaptureSessionPresets countByEnumeratingWithState:&v55 objects:v60 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v56;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v56 != v22)
                  {
                    objc_enumerationMutation(AllAVCaptureSessionPresets);
                  }

                  v24 = *(*(&v55 + 1) + 8 * j);
                  v25 = [DeepCopy objectForKeyedSubscript:v24];
                  if (v25)
                  {
                    v26 = v25;
                    csu_pruneDictionaryToJustKeys(v25, v19);
                    FigCFDictionaryAddEntriesToDictionaryWithRecursion();
                    [v17 setObject:v26 forKeyedSubscript:v24];
                  }
                }

                v21 = [AllAVCaptureSessionPresets countByEnumeratingWithState:&v55 objects:v60 count:16];
              }

              while (v21);
            }

            if (v17)
            {
              [v38 setObject:v17 forKeyedSubscript:@"AudioSettingsForPresetsMap"];
            }

            VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist = v40;
            if ([objc_msgSend(DeepCopy objectForKeyedSubscript:{@"stereoAudioCaptureSupported", "BOOLValue"}])
            {
              [v38 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"BuiltInMicrophoneStereoAudioCaptureSupported"];
            }

            if ([objc_msgSend(DeepCopy objectForKeyedSubscript:{@"cinematicAudioCaptureSupported", "BOOLValue"}])
            {
              [v38 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"CinematicAudioCaptureSupported"];
            }

            if ([objc_msgSend(DeepCopy objectForKeyedSubscript:{@"windNoiseRemovalSupported", "BOOLValue"}])
            {
              [v38 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WindNoiseRemovalSupported"];
            }

            [v39 setObject:v38 forKeyedSubscript:@"Attributes"];

            [v46 addObject:v39];
            goto LABEL_30;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v51 objects:&v47 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:
  v27 = [objc_msgSend(v43 objectForKeyedSubscript:{@"AVCaptureDeviceCommonSettings", "mutableCopy"}];
  if ([v27 objectForKeyedSubscript:@"PreviewRegistrationType"])
  {
    [v27 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", BWPreviewRegistrationTypeFromShortString(objc_msgSend(v27, "objectForKeyedSubscript:", @"PreviewRegistrationType", @"PreviewRegistrationType"}];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v28 = [VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v48;
    while (2)
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist);
        }

        if ([objc_msgSend(objc_msgSend(*(*(&v47 + 1) + 8 * k) objectForKeyedSubscript:{@"Attributes", "objectForKeyedSubscript:", 0x1F21833F0), "BOOLValue"}])
        {
          [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"MetadataCameraHostingSupported"];
          goto LABEL_42;
        }
      }

      v29 = [VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist countByEnumeratingWithState:&v47 objects:v60 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

LABEL_42:
  if (a6)
  {
    *a6 = v27;
  }

  if ([VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist count] || objc_msgSend(v46, "count"))
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v32 addObjectsFromArray:VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist];
    [v32 addObjectsFromArray:v46];
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v33 setObject:sCurrentInterpreterBuildDate forKeyedSubscript:@"InterpreterBuildDate"];
    v34 = [v33 setObject:a3 forKeyedSubscript:@"FileModificationDate"];
    [v33 setObject:FigCaptureGetModelSpecificName(v34 forKeyedSubscript:{v35), @"DeviceModel"}];
    [v33 setObject:v32 forKeyedSubscript:@"Sources"];
    [v33 setObject:csu_dependentUserDefaultsDictionary() forKeyedSubscript:@"DependentUserDefaults"];
    [v33 setObject:v27 forKeyedSubscript:@"CommonSettings"];
    if (a4)
    {
      v36 = *MEMORY[0x1E695E8B8];
      v37 = *MEMORY[0x1E695E898];
      CFPreferencesSetValue(@"CaptureSourceInfo", v33, @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v36, v37);
    }

    if (a5)
    {
      *a5 = csu_createInMemorySourcesArrayFromOnDiskSourcesArray(v32);
    }
  }
}

void *csu_createVideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist(void *a1, const void *a2)
{
  v366 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v3 = *MEMORY[0x1E695E480];
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], a2, 1uLL);
  obj = [DeepCopy objectForKeyedSubscript:@"AVCaptureDevices"];
  v375 = [DeepCopy objectForKeyedSubscript:@"AVCaptureDeviceCommonSettings"];
  v351 = [DeepCopy objectForKeyedSubscript:@"AVHEVCSettings"];
  v352 = DeepCopy;
  v359 = [DeepCopy objectForKeyedSubscript:@"AVH264Settings"];
  v424 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  v374 = [MEMORY[0x1E695DFA8] set];
  if ((BWDeviceIsiPad(v374, v5) & 1) == 0)
  {
    memset(v513, 0, 64);
    v6 = [obj countByEnumeratingWithState:v513 objects:&v518 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = **&v513[1];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (**&v513[1] != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v513[0] + 1) + 8 * i);
          v11 = [objc_msgSend(v10 objectForKeyedSubscript:{@"deviceType", "intValue"}];
          v12 = [objc_msgSend(v10 objectForKeyedSubscript:{@"position", "intValue"}];
          if (v11 == 7 && v12 == 1)
          {
            v14 = CFPropertyListCreateDeepCopy(v3, v10, 1uLL);
            [v14 setObject:@"com.apple.avfoundation.avcapturedevice.built-in_deskview:1" forKeyedSubscript:@"uniqueID"];
            [v14 setObject:@"com.apple.avfoundation.avcapturedevice.built-in_deskview:1" forKeyedSubscript:@"modelID"];
            [v14 setObject:&unk_1F2244548 forKeyedSubscript:@"deviceType"];
            [v14 setObject:@"Desk View Camera" forKeyedSubscript:@"localizedName"];
            [v14 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"geometricDistortionCorrection"];
            if (v14)
            {
              [obj addObject:v14];
            }

            goto LABEL_16;
          }
        }

        v7 = [obj countByEnumeratingWithState:v513 objects:&v518 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_16:
  v463 = 0u;
  v462 = 0u;
  v461 = 0u;
  v460 = 0u;
  v15 = [obj countByEnumeratingWithState:&v460 objects:v459 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v461;
    v19 = v374;
    while (2)
    {
      v20 = 0;
      v21 = v17 + 1;
      v17 += v16;
      do
      {
        if (*v461 != v18)
        {
          objc_enumerationMutation(obj);
        }

        if ([objc_msgSend(*(*(&v460 + 1) + 8 * v20) objectForKeyedSubscript:{@"deviceType", "intValue"}] == 5)
        {
          v358 = 1;
          goto LABEL_27;
        }

        ++v20;
        ++v21;
      }

      while (v16 != v20);
      v16 = [obj countByEnumeratingWithState:&v460 objects:v459 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    v358 = 0;
    v21 = v17;
  }

  else
  {
    v21 = 0;
    v358 = 0;
    v19 = v374;
  }

LABEL_27:
  if (FigCapturePlatformIdentifier() >= 4)
  {
    v393 = v21;
    v391 = [MEMORY[0x1E695DF70] array];
    v22 = [MEMORY[0x1E695DF70] array];
    v483 = 0u;
    v484 = 0u;
    v485 = 0u;
    v486 = 0u;
    v23 = [obj countByEnumeratingWithState:&v483 objects:&v518 count:16];
    if (v23)
    {
      v24 = v23;
      v420 = 0;
      v25 = *v484;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v484 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v483 + 1) + 8 * j);
          v28 = [objc_msgSend(v27 objectForKeyedSubscript:{@"deviceType", "intValue"}];
          if ((v28 - 17) <= 3)
          {
            v29 = v28;
            [v22 addObject:{objc_msgSend(v27, "objectForKeyedSubscript:", @"uniqueName"}];
            csu_addSecureMetadataKeysToDeviceDict(v27, a1);
            v30 = [objc_msgSend(v27 objectForKeyedSubscript:{@"position", "intValue"}];
            v32 = v29 == 19 && v30 == 2;
            v420 |= v32;
          }
        }

        v24 = [obj countByEnumeratingWithState:&v483 objects:&v518 count:16];
      }

      while (v24);
    }

    else
    {
      v420 = 0;
    }

    v478 = 0u;
    v477 = 0u;
    v476 = 0u;
    v475 = 0u;
    v19 = v374;
    v33 = v393;
    v34 = v391;
    v425 = [obj countByEnumeratingWithState:&v475 objects:v513 count:16];
    if (v425)
    {
      v417 = *v476;
      do
      {
        v35 = 0;
        do
        {
          if (*v476 != v417)
          {
            objc_enumerationMutation(obj);
          }

          v434 = v35;
          v36 = *(*(&v475 + 1) + 8 * v35);
          if ([objc_msgSend(v36 objectForKeyedSubscript:{@"position", "intValue"}] == 2)
          {
            v37 = [objc_msgSend(v36 objectForKeyedSubscript:{@"deviceType", "intValue"}] - 2;
            if (v37 <= 9 && ((0x229u >> v37) & 1) != 0)
            {
              v38 = off_1E79978B0[v37];
              if (([v22 containsObject:v38] & 1) == 0)
              {
                v39 = [MEMORY[0x1E695DF90] dictionary];
                [v39 setObject:v38 forKeyedSubscript:@"uniqueName"];
                [v39 setObject:@"vide" forKeyedSubscript:@"mediaType"];
                [v39 setObject:objc_msgSend(v36 forKeyedSubscript:{"objectForKeyedSubscript:", @"hasAutoFocus", @"hasAutoFocus"}];
                [v39 setObject:objc_msgSend(v36 forKeyedSubscript:{"objectForKeyedSubscript:", @"secureMetadataCameraSupported", @"secureMetadataCameraSupported"}];
                csu_preprocessVideoDeviceDict(v39, 0);
                csu_addSecureMetadataKeysToDeviceDict(v39, a1);
                v401 = v39;
                v40 = [objc_msgSend(v39 objectForKeyedSubscript:{@"deviceType", "intValue"}];
                if (v40 == 20)
                {
                  if (![objc_msgSend(v39 objectForKeyedSubscript:{@"secureMetadataCameraSupported", "BOOLValue"}])
                  {
                    goto LABEL_54;
                  }

LABEL_61:
                  v41 = [objc_msgSend(v36 objectForKeyedSubscript:{@"MultiStream", "mutableCopy"}];
                  v42 = [v41 objectForKeyedSubscript:@"AVCaptureDeviceFormats"];
                  v397 = v41;
                  v43 = [v41 objectForKeyedSubscript:@"FigCaptureStreamFormats"];
                  v441 = [MEMORY[0x1E695DF90] dictionary];
                  *&v509 = 0;
                  LODWORD(v479) = 0;
                  LODWORD(v471) = 0;
                  *&v501 = 0;
                  v496 = 0;
                  *v466 = 0;
                  *&v492 = 0;
                  v465 = 0;
                  *&v487 = 0;
                  v464 = 0;
                  v470 = 0u;
                  v469 = 0u;
                  v468 = 0u;
                  v467 = 0u;
                  v448 = v42;
                  v44 = [v42 countByEnumeratingWithState:&v467 objects:&v505 count:16];
                  if (v44)
                  {
                    v45 = v44;
                    v46 = *v468;
                    v436 = *v468;
                    do
                    {
                      v47 = 0;
                      v445 = v45;
                      do
                      {
                        if (*v468 != v46)
                        {
                          objc_enumerationMutation(v448);
                        }

                        v48 = *(*(&v467 + 1) + 8 * v47);
                        v49 = [v448 objectForKeyedSubscript:v48];
                        v50 = [objc_msgSend(v49 objectForKeyedSubscript:{@"Width", "intValue"}];
                        if (v50 <= 0x780)
                        {
                          v51 = v50;
                          v52 = [objc_msgSend(v49 objectForKeyedSubscript:{@"Height", "intValue"}];
                          v53 = [v49 objectForKeyedSubscript:@"CaptureStreamFormat"];
                          v54 = v43;
                          while (1)
                          {
                            v55 = [v54 objectForKeyedSubscript:v53];
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              break;
                            }

                            v54 = v43;
                            v53 = v55;
                          }

                          v56 = [objc_msgSend(v55 objectForKeyedSubscript:{@"Binned", "BOOLValue"}];
                          v57 = [objc_msgSend(v55 objectForKeyedSubscript:{@"MaxFrameRate", "intValue"}];
                          if ([v49 objectForKeyedSubscript:@"MaxFrameRateOverride"])
                          {
                            v57 = [objc_msgSend(v49 objectForKeyedSubscript:{@"MaxFrameRateOverride", "intValue"}];
                          }

                          v46 = v436;
                          if (v57 - 31 >= 0xFFFFFFE2)
                          {
                            v58 = v57;
                          }

                          else
                          {
                            v58 = 30;
                          }

                          v59 = 9 * v51;
                          v60 = &v487;
                          if (v56)
                          {
                            v60 = &v501;
                          }

                          v61 = &v465;
                          if (v56)
                          {
                            v61 = &v496;
                          }

                          v62 = &v464;
                          if (v56)
                          {
                            v62 = &v466[4];
                          }

                          v63 = &v492;
                          if (v56)
                          {
                            v63 = &v509;
                          }

                          v64 = v466;
                          if (v56)
                          {
                            v64 = &v479;
                          }

                          v65 = &v465 + 1;
                          if (v56)
                          {
                            v65 = &v471;
                          }

                          v66 = v59 == 16 * v52;
                          if (v59 == 16 * v52)
                          {
                            v67 = v63;
                          }

                          else
                          {
                            v67 = v60;
                          }

                          if (v66)
                          {
                            v68 = v64;
                          }

                          else
                          {
                            v68 = v61;
                          }

                          if (v66)
                          {
                            v69 = v65;
                          }

                          else
                          {
                            v69 = v62;
                          }

                          v45 = v445;
                          if (v51 > *v68 || v51 == *v68 && v58 < *v69)
                          {
                            *v67 = v48;
                            *v68 = v51;
                            *v69 = v58;
                          }
                        }

                        ++v47;
                      }

                      while (v47 != v45);
                      v45 = [v448 countByEnumeratingWithState:&v467 objects:&v505 count:16];
                    }

                    while (v45);
                    v70 = v509;
                    v71 = [MEMORY[0x1E695DF70] array];
                    v72 = v71;
                    if (v70)
                    {
                      [v71 addObject:v70];
                      v390 = 0;
                      goto LABEL_106;
                    }
                  }

                  else
                  {
                    v72 = [MEMORY[0x1E695DF70] array];
                    v70 = 0;
                  }

                  v390 = 1;
LABEL_106:
                  v73 = v501;
                  if (v501)
                  {
                    [v72 addObject:v501];
                  }

                  v74 = v492;
                  if (v492)
                  {
                    [v72 addObject:v492];
                  }

                  v411 = v73;
                  v415 = v70;
                  v75 = v487;
                  if (v487)
                  {
                    [v72 addObject:v487];
                  }

                  v431 = v75;
                  v521 = 0u;
                  v522 = 0u;
                  memset(v520, 0, sizeof(v520));
                  v446 = [v72 countByEnumeratingWithState:v520 objects:type count:16];
                  if (v446)
                  {
                    v437 = **&v520[1];
                    v407 = *&v466[4];
                    v412 = v471;
                    v429 = v464;
                    v435 = HIDWORD(v465);
                    v433 = v72;
                    do
                    {
                      for (k = 0; k != v446; ++k)
                      {
                        v77 = v74;
                        if (**&v520[1] != v437)
                        {
                          objc_enumerationMutation(v433);
                        }

                        v78 = *(*(&v520[0] + 1) + 8 * k);
                        v79 = [v448 objectForKeyedSubscript:v78];
                        v80 = [MEMORY[0x1E695DF90] dictionary];
                        v514 = 0u;
                        v515 = 0u;
                        v516 = 0u;
                        v517 = 0u;
                        v81 = [&unk_1F22488F8 countByEnumeratingWithState:&v514 objects:v491 count:16];
                        if (v81)
                        {
                          v82 = v81;
                          v83 = *v515;
                          do
                          {
                            for (m = 0; m != v82; ++m)
                            {
                              if (*v515 != v83)
                              {
                                objc_enumerationMutation(&unk_1F22488F8);
                              }

                              [v80 setObject:objc_msgSend(v79 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v514 + 1) + 8 * m)), *(*(&v514 + 1) + 8 * m)}];
                            }

                            v82 = [&unk_1F22488F8 countByEnumeratingWithState:&v514 objects:v491 count:16];
                          }

                          while (v82);
                        }

                        v74 = v77;
                        isEqualToString = objc_msgSend_isEqualToString_(v78);
                        v86 = v435;
                        if (isEqualToString & 1) != 0 || (v87 = objc_msgSend_isEqualToString_(v78), v86 = v429, (v87) || (v88 = objc_msgSend_isEqualToString_(v78), v86 = v412, (v88) || (v89 = objc_msgSend_isEqualToString_(v78), v86 = v407, v89))
                        {
                          [v80 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v86), @"MaxFrameRateOverride"}];
                        }

                        [v441 setObject:v80 forKeyedSubscript:v78];
                      }

                      v446 = [v433 countByEnumeratingWithState:v520 objects:type count:16];
                    }

                    while (v446);
                  }

                  [v397 setObject:v441 forKeyedSubscript:@"AVCaptureDeviceFormats"];
                  v90 = [MEMORY[0x1E695DF90] dictionary];
                  v91 = [MEMORY[0x1E695DF90] dictionary];
                  if (v74)
                  {
                    [v90 setObject:v74 forKeyedSubscript:@"DeviceFormat"];
                    v92 = HIDWORD(v465);
                    v93 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v465)];
                    v19 = v374;
                    v33 = v393;
                    v34 = v391;
                    goto LABEL_140;
                  }

                  v19 = v374;
                  v33 = v393;
                  v34 = v391;
                  if (v431)
                  {
                    [v90 setObject:v431 forKeyedSubscript:@"DeviceFormat"];
                    v94 = MEMORY[0x1E696AD98];
                    v92 = v464;
LABEL_139:
                    v93 = [v94 numberWithUnsignedInt:v92];
LABEL_140:
                    [v90 setObject:v93 forKeyedSubscript:@"MinFrameRate"];
                    [v90 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v92), @"MaxFrameRate"}];
                  }

                  else
                  {
                    if ((v390 & 1) == 0)
                    {
                      [v90 setObject:v415 forKeyedSubscript:@"DeviceFormat"];
                      v94 = MEMORY[0x1E696AD98];
                      v92 = v471;
                      goto LABEL_139;
                    }

                    if (v411)
                    {
                      [v90 setObject:v411 forKeyedSubscript:@"DeviceFormat"];
                      v94 = MEMORY[0x1E696AD98];
                      v92 = *&v466[4];
                      goto LABEL_139;
                    }
                  }

                  [v91 setObject:v90 forKeyedSubscript:@"AVCaptureSessionPresetHigh"];
                  [v397 setObject:v91 forKeyedSubscript:@"AVCaptureSessionPresets"];
                  [v401 setObject:v397 forKeyedSubscript:@"MultiStream"];
                  [v34 addObject:v401];
                  goto LABEL_54;
                }

                if (v40 != 18 || (v420 & 1) == 0)
                {
                  goto LABEL_61;
                }
              }
            }
          }

LABEL_54:
          v35 = v434 + 1;
        }

        while (v434 + 1 != v425);
        v95 = [obj countByEnumeratingWithState:&v475 objects:v513 count:16];
        v425 = v95;
      }

      while (v95);
    }

    csu_preprocessDeviceDicts(v34);
    v455 = 0u;
    v456 = 0u;
    v457 = 0u;
    v458 = 0u;
    v96 = [v34 countByEnumeratingWithState:&v455 objects:v454 count:16];
    if (v96)
    {
      v97 = v96;
      v98 = *v456;
      do
      {
        for (n = 0; n != v97; ++n)
        {
          if (*v456 != v98)
          {
            objc_enumerationMutation(v34);
          }

          v100 = *(*(&v455 + 1) + 8 * n);
          if ([objc_msgSend(v100 objectForKeyedSubscript:{@"deviceType", "intValue"}] == 20)
          {
            [obj insertObject:v100 atIndex:v33];
          }

          else
          {
            [obj addObject:v100];
          }
        }

        v97 = [v34 countByEnumeratingWithState:&v455 objects:v454 count:16];
      }

      while (v97);
    }
  }

  v453 = 0u;
  v452 = 0u;
  v451 = 0u;
  v450 = 0u;
  v101 = [obj countByEnumeratingWithState:&v450 objects:v449 count:16];
  if (!v101)
  {
    goto LABEL_650;
  }

  v102 = v101;
  v381 = *v451;
  v365 = *off_1E798A0C8;
  v350 = *off_1E798C1C8;
  v373 = *off_1E798BEF8;
  v372 = *off_1E798BF08;
  v357 = *off_1E798C1F0;
  v371 = *off_1E798BCB8;
  v356 = *off_1E798A040;
  v343 = *off_1E798A0E8;
  v349 = *off_1E798C278;
  v348 = *off_1E798C920;
  v355 = *off_1E798BED0;
  v370 = *off_1E798BE60;
  v369 = *off_1E798BF60;
  v354 = *off_1E798C2C8;
  v353 = *off_1E798C2D0;
  v347 = *off_1E798CC18;
  v346 = *off_1E798CC10;
  v345 = *off_1E798CC08;
  v344 = *off_1E798BEA0;
  v368 = *off_1E798C178;
  v364 = *off_1E798CA40;
  v363 = *off_1E798C2C0;
  v362 = *off_1E798C2B0;
  v361 = *off_1E798C238;
  v360 = *off_1E798C2B8;
  v367 = *off_1E798C078;
  v447 = *MEMORY[0x1E6966130];
  v386 = *off_1E798A0D0;
  v432 = *off_1E798D408;
  v430 = *off_1E798D3F8;
  v416 = *off_1E798D3E8;
  v388 = *off_1E798C960;
  do
  {
    v103 = 0;
    v376 = v102;
    do
    {
      if (*v451 != v381)
      {
        objc_enumerationMutation(obj);
      }

      v104 = *(*(&v450 + 1) + 8 * v103);
      if ((objc_msgSend_isEqualToString_([v104 objectForKeyedSubscript:{@"mediaType", v341, v342}]) & 1) == 0 && !objc_msgSend_isEqualToString_(objc_msgSend(v104, "objectForKeyedSubscript:", @"mediaType")))
      {
        goto LABEL_160;
      }

      v105 = [v104 objectForKeyedSubscript:@"modelID"];
      if ([v19 containsObject:v105])
      {
        v339 = MEMORY[0x1E695DF30];
        v340 = *MEMORY[0x1E695D930];
        v336 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found duplicated modelID: %@", v105];
        v337 = v339;
        v338 = v340;
LABEL_652:
        objc_exception_throw([v337 exceptionWithName:v338 reason:v336 userInfo:0]);
      }

      v377 = v103;
      [v19 addObject:v105];
      v106 = -[FigCaptureSourceStreamsContainer initWithDeviceType:position:stillImageDepthDataType:device:baseZoomFactorOverrides:clientBaseZoomFactorsByPortType:]([FigCaptureSourceStreamsContainer alloc], [objc_msgSend(v104 objectForKeyedSubscript:{@"deviceType", "intValue"}], objc_msgSend(objc_msgSend(v104, "objectForKeyedSubscript:", @"position"), "intValue"), objc_msgSend(objc_msgSend(v104, "objectForKeyedSubscript:", @"stillImageDepthDataType"), "intValue"), a1, objc_msgSend(v104, "objectForKeyedSubscript:", @"synchronizedStreamsBaseZoomFactorOverrides"), objc_msgSend(v104, "objectForKeyedSubscript:", @"synchronizedStreamsClientBaseZoomFactorsByPortType"));
      if (!v106)
      {
        LODWORD(v505) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v108 = v505;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
        {
          v109 = v108;
        }

        else
        {
          v109 = v108 & 0xFFFFFFFE;
        }

        if (v109)
        {
          v110 = [v104 objectForKeyedSubscript:@"localizedName"];
          LODWORD(v513[0]) = 136315394;
          *(v513 + 4) = "csu_createVideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist";
          WORD6(v513[0]) = 2114;
          *(v513 + 14) = v110;
          LODWORD(v342) = 22;
          v341 = v513;
          _os_log_send_and_compose_impl();
        }

        v102 = v376;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_160;
      }

      v111 = v106;
      v112 = [v106[4] portType];
      v389 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v491[0] = 0;
      v113 = [v104 objectForKeyedSubscript:@"mediaType"];
      v392 = v112;
      if (objc_msgSend_isEqualToString_(v113))
      {
        v394 = 1936684398;
        v114 = v375;
        v115 = 0x1E696A000;
      }

      else
      {
        v114 = v375;
        v115 = 0x1E696A000uLL;
        if (objc_msgSend_isEqualToString_(v113))
        {
          v116 = 1986618469;
        }

        else if (objc_msgSend_isEqualToString_(v113))
        {
          v116 = 1885564004;
        }

        else
        {
          v116 = 0;
        }

        v394 = v116;
      }

      v413 = [MEMORY[0x1E695DF90] dictionary];
      v408 = v111[4];
      v402 = [v408 supportedProperties];
      v387 = v111;
      v117 = *(v111 + 2);
      v405 = (v117 > 0x14 || ((1 << v117) & 0x100420) == 0) && v117 - 21 < 0xFFFFFFFC;
      [objc_msgSend(v104 objectForKeyedSubscript:{@"position", "intValue"}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"uniqueID", @"UniqueID"}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"modelID", @"ModelID"}];
      [v413 setObject:@"Apple Inc." forKeyedSubscript:@"Manufacturer"];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"localizedName", @"NonLocalizedName"}];
      [v413 setObject:0x1F21702D0 forKeyedSubscript:@"CaptureDeviceID"];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"position", @"Position"}];
      [v413 setObject:&unk_1F2244410 forKeyedSubscript:@"SourceType"];
      v118 = MEMORY[0x1E695E118];
      [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"MinFrameRate"];
      [v413 setObject:v118 forKeyedSubscript:@"MaxFrameRate"];
      [v413 setObject:objc_msgSend(*(v115 + 3480) forKeyedSubscript:{"numberWithInt:", *(v111 + 2)), @"DeviceType"}];
      v119 = *(v111 + 2);
      if (v119 == 12 || v119 == 6)
      {
        v120 = [v104 objectForKeyedSubscript:@"pearlModuleType"];
        if (v120)
        {
          v121 = [v120 intValue];
        }

        else
        {
          v121 = 1;
        }

        [v413 setObject:objc_msgSend(*(v115 + 3480) forKeyedSubscript:{"numberWithInt:", v121), @"PearlModuleType"}];
        v119 = *(v111 + 2);
      }

      if (v119 == 10)
      {
        v518 = 0;
        v122 = [v111[5] objectForKeyedSubscript:v365];
        if (FigCapturePlatformIdentifier() < 7)
        {
          [v413 setObject:&unk_1F2248910 forKeyedSubscript:@"SupportedTimeOfFlightProjectorModes"];
          v126 = v413;
          v127 = &unk_1F2244410;
        }

        else
        {
          v123 = [objc_msgSend(v122 getProperty:v350 error:{&v518), "mutableCopy"}];
          if ([v123 containsObject:&unk_1F2244560])
          {
            [v123 removeObject:&unk_1F2244560];
          }

          [v413 setObject:v123 forKeyedSubscript:@"SupportedTimeOfFlightProjectorModes"];

          v124 = [v104 objectForKeyedSubscript:@"TimeOfFlightCameraType"];
          if (v124)
          {
            v125 = [v124 intValue];
          }

          else
          {
            v125 = 1;
          }

          v127 = [*(v115 + 3480) numberWithInt:v125];
          v126 = v413;
        }

        [v126 setObject:v127 forKeyedSubscript:@"TimeOfFlightCameraType"];
      }

      if ([v402 objectForKeyedSubscript:v373])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ISPAPSData"];
      }

      if ([v402 objectForKeyedSubscript:v372])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ISPMotionData"];
      }

      if (v405 && [v402 objectForKeyedSubscript:v357])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"TimeLapseSupported"];
      }

      if ([v402 objectForKeyedSubscript:v371])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AutoFocusPositionSensorCalibrationSupported"];
      }

      v398 = v104;
      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"hasAutoFocus", "BOOLValue"}])
      {
        v128 = MEMORY[0x1E695E118];
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Focus"];
        [v413 setObject:v128 forKeyedSubscript:@"FocusPointOfInterest"];
        [objc_msgSend(v104 objectForKeyedSubscript:{@"ContinuousAutoFocusWindowWidthOverride", "floatValue"}];
        v130 = v129;
        [objc_msgSend(v104 objectForKeyedSubscript:{@"ContinuousAutoFocusWindowHeightOverride", "floatValue"}];
        if (v130 > 0.0 && v131 > 0.0)
        {
          v523.height = v131;
          v523.width = v130;
          DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v523);
          [v413 setObject:DictionaryRepresentation forKeyedSubscript:@"DefaultContinuousAutoFocusWindowSize"];
          CFRelease(DictionaryRepresentation);
        }

        [objc_msgSend(v104 objectForKeyedSubscript:{@"FocusCenterWindowSize", "floatValue"}];
        if (v133 > 0.0)
        {
          v524.height = v133;
          v524.width = (v133 * 0.75);
          v134 = CGSizeCreateDictionaryRepresentation(v524);
          [v413 setObject:v134 forKeyedSubscript:@"DefaultAutoFocusCenterWindowSize"];
          CFRelease(v134);
        }

        [objc_msgSend(v104 objectForKeyedSubscript:{@"FocusPointOfInterestWindowSize", "floatValue"}];
        if (v135 > 0.0)
        {
          v525.height = v135;
          v525.width = (v135 * 0.75);
          v136 = CGSizeCreateDictionaryRepresentation(v525);
          [v413 setObject:v136 forKeyedSubscript:@"DefaultAutoFocusTapWindowSize"];
          CFRelease(v136);
        }

        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AutoFocusRangeRestriction"];
        if ([objc_msgSend(v104 objectForKeyedSubscript:{@"smoothAutoFocusSupported", "BOOLValue"}])
        {
          [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SmoothFocus"];
        }

        if ([objc_msgSend(v104 objectForKeyedSubscript:{@"autoFocusPositionSensorMode", "intValue"}])
        {
          [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"autoFocusPositionSensorMode", @"AutoFocusPositionSensorMode"}];
        }

        v137 = [v104 objectForKeyedSubscript:@"manualFocusSupported"];
        if (v137)
        {
          v138 = v137;
        }

        else
        {
          v138 = MEMORY[0x1E695E118];
        }

        [v413 setObject:v138 forKeyedSubscript:@"ManualFocus"];
        if ([objc_msgSend(v111[2] "supportedProperties")])
        {
          v140 = BWCaptureDevicePositionFromPortType(v365, v139);
          v507 = 0u;
          v508 = 0u;
          v505 = 0u;
          v506 = 0u;
          v141 = [v111[5] allKeys];
          v142 = [v141 countByEnumeratingWithState:&v505 objects:&v518 count:16];
          if (v142)
          {
            v144 = v142;
            v145 = *v506;
            while (2)
            {
              for (ii = 0; ii != v144; ++ii)
              {
                if (*v506 != v145)
                {
                  objc_enumerationMutation(v141);
                }

                if (BWCaptureDevicePositionFromPortType(*(*(&v505 + 1) + 8 * ii), v143) == v140)
                {
                  [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F219F9D0];
                  goto LABEL_233;
                }
              }

              v144 = [v141 countByEnumeratingWithState:&v505 objects:&v518 count:16];
              if (v144)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_233:
        v114 = v375;
        v115 = 0x1E696A000;
        if (v358)
        {
          if ([objc_msgSend(v413 objectForKeyedSubscript:{@"Position", "intValue"}] == 2)
          {
            if ([objc_msgSend(v413 objectForKeyedSubscript:{@"Focus", "BOOLValue"}])
            {
              v147 = [v387[2] copyStreamWithPortType:v343 error:0];
              if (v147)
              {
                v148 = v147;
                [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F219F9F0];
              }
            }
          }
        }
      }

      if (v405)
      {
        v149 = MEMORY[0x1E695E118];
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Exposure"];
        [v413 setObject:v149 forKeyedSubscript:@"ExposurePointOfInterest"];
        [objc_msgSend(v104 objectForKeyedSubscript:{@"ExposureCenterWindowSize", "floatValue"}];
        if (v150 > 0.0)
        {
          v526.width = v150;
          v526.height = v526.width;
          v151 = CGSizeCreateDictionaryRepresentation(v526);
          [v413 setObject:v151 forKeyedSubscript:@"DefaultAutoExposureCenterWindowSize"];
          CFRelease(v151);
        }

        [objc_msgSend(v104 objectForKeyedSubscript:{@"ExposurePointOfInterestWindowSize", "floatValue"}];
        if (v152 > 0.0)
        {
          v527.height = (v152 * 1.3333);
          v527.width = v152;
          v153 = CGSizeCreateDictionaryRepresentation(v527);
          [v413 setObject:v153 forKeyedSubscript:@"DefaultAutoExposureTapWindowSize"];
          CFRelease(v153);
        }

        v154 = [v104 objectForKeyedSubscript:@"manualExposureSupported"];
        if (v154)
        {
          v155 = v154;
        }

        else
        {
          v155 = MEMORY[0x1E695E118];
        }

        [v413 setObject:v155 forKeyedSubscript:@"ManualExposure"];
        if ([objc_msgSend(v114 objectForKeyedSubscript:{@"appliesSessionPresetMaxIntegrationTimeOverrideToActiveFormat", "BOOLValue"}])
        {
          [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AppliesSessionPresetMaxIntegrationTimeOverrideToActiveFormat"];
        }

        if ([v387[5] count] == 1 && objc_msgSend(objc_msgSend(objc_msgSend(v408, "getPropertyIfSupported:error:", v349, 0), "objectForKeyedSubscript:", v348), "BOOLValue"))
        {
          [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A0470];
        }

        v156 = [v408 getPropertyIfSupported:v355 error:0];
        if ([v156 BOOLValue])
        {
          [v413 setObject:v156 forKeyedSubscript:0x1F21A0490];
        }
      }

      [v413 setObject:objc_msgSend(v408 forKeyedSubscript:{"getProperty:error:", v370, 0), @"FocalLength"}];
      [v413 setObject:objc_msgSend(v408 forKeyedSubscript:{"getProperty:error:", v369, 0), @"LensAperture"}];
      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"metadataCameraHostingSupported", "BOOLValue"}])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21833F0];
      }

      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"metadataCameraAttachingSupported", "BOOLValue"}])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A0070];
      }

      if (v405)
      {
        if ([objc_msgSend(v114 objectForKeyedSubscript:{@"softISPSupported", "BOOLValue"}])
        {
          [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21774D0];
        }

        v157 = v387;
        if (([objc_msgSend(v114 objectForKeyedSubscript:{@"singleFrameHighlightRecoverySupported", "BOOLValue"}] & 1) != 0 || objc_msgSend(objc_msgSend(v104, "objectForKeyedSubscript:", @"singleFrameHighlightRecoverySupported"), "BOOLValue"))
        {
          [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A04B0];
        }

        if (([objc_msgSend(v114 objectForKeyedSubscript:{@"lowlightSingleFrameHighlightRecoverySupported", "BOOLValue"}] & 1) != 0 || objc_msgSend(objc_msgSend(v104, "objectForKeyedSubscript:", @"lowlightSingleFrameHighlightRecoverySupported"), "BOOLValue"))
        {
          [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A04D0];
        }

        [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"quadraQSubProcessingSupported", 0x1F21A04F0}];
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WhiteBalance"];
        [v413 setObject:objc_msgSend(v408 forKeyedSubscript:{"getPropertyIfSupported:error:", v354, 0), @"WhiteBalanceCalibrations"}];
        v158 = [v408 getProperty:v353 error:0];
        v159 = v413;
        if (v158)
        {
          v160 = v158;
          DWORD2(v513[0]) = 0;
          *&v513[0] = 0;
          LODWORD(v513[0]) = vcvts_n_f32_s32([objc_msgSend(v158 objectForKeyedSubscript:{v347), "intValue"}], 0xCuLL);
          DWORD1(v513[0]) = vcvts_n_f32_s32([objc_msgSend(v160 objectForKeyedSubscript:{v346), "intValue"}], 0xCuLL);
          DWORD2(v513[0]) = vcvts_n_f32_s32([objc_msgSend(v160 objectForKeyedSubscript:{v345), "intValue"}], 0xCuLL);
          v161 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v513 length:12];
          [v413 setObject:v161 forKeyedSubscript:@"DefaultWhiteBalanceGains"];
        }

        v162 = [v104 objectForKeyedSubscript:@"manualWhiteBalanceSupported"];
        if (v162)
        {
          v163 = v162;
        }

        else
        {
          v163 = MEMORY[0x1E695E118];
        }

        [v413 setObject:v163 forKeyedSubscript:@"ManualWhiteBalance"];
        [v413 setObject:v359 forKeyedSubscript:@"AVH264Settings"];
        if (FigCapturePlatformIdentifier() >= 3)
        {
          v164 = MEMORY[0x1E695E118];
          [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HEVC"];
          v159 = v413;
          [v413 setObject:v164 forKeyedSubscript:@"HEIF"];
          if ([objc_msgSend(v114 objectForKeyedSubscript:{@"HEVCPreferred", "BOOLValue"}])
          {
            [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PrefersHEVC"];
          }

          [v413 setObject:v351 forKeyedSubscript:@"AVHEVCSettings"];
        }

        if ([objc_msgSend(v114 objectForKeyedSubscript:{@"smartCameraSupported", "BOOLValue"}])
        {
          [v159 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SmartCameraSupported"];
        }

        if (FigCapturePlatformIdentifier() >= 5)
        {
          [v159 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"GlobalToneMapping"];
        }

        if (csu_deviceSupportsWideColor(v387, v114))
        {
          [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WideColor"];
        }

LABEL_282:
        v165 = 0;
        v166 = *(v157 + 8);
        v167 = 0;
        if (v166 != 5 && v166 != 20)
        {
          v165 = [objc_msgSend(v114 objectForKeyedSubscript:{@"objectDetectionSupported", 0), "BOOLValue"}];
          v167 = [objc_msgSend(v114 objectForKeyedSubscript:{@"faceTrackingSupported", "BOOLValue"}];
        }

        csu_addMetadataAttributes(v413, v157, v165, v167, v104);
        goto LABEL_286;
      }

      v157 = v387;
      if (v117 - 17 <= 3)
      {
        goto LABEL_282;
      }

LABEL_286:
      v168 = v413;
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"SmartFramingZoomFactorsByFieldOfView", @"SmartFramingZoomFactorsByFieldOfView"}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"BaseZoomFactorOverridesByAspectRatio", @"BaseZoomFactorOverridesByAspectRatio"}];
      v169 = *(v157 + 8);
      if ((v169 > 0xD || ((1 << v169) & 0x3350) == 0) && [objc_msgSend(v408 "supportedProperties")] && objc_msgSend(v408, "getProperty:error:", v344, 0))
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"CameraCalibrationDataDeliverySupported"];
      }

      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"hasFlash", "BOOLValue"}])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Flash"];
      }

      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"autoFlashNormalizedSNRThreshold", 0x1F21A0450}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsSwitchOverParameters", 0x1F21A0550}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsStereoFusionZoomFactorRange", 0x1F21A0590}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsSlaveFrameRates", 0x1F21A05B0}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsBaseZoomFactorCalibrations", 0x1F21A05D0}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsBaseZoomFactorOverrides", 0x1F21A0630}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsClientBaseZoomFactorsByPortType", 0x1F21A0650}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsOISSISStereoFusionTeleMinIntegrationTimeDenominator", 0x1F21A0670}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsOISSISStereoFusionTeleMinGain", 0x1F21A0690}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"stillImageCaptureNowAfterAutofocusTimeout", 0x1F21A06D0}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"stillImageContrastBasedAutofocusTimeout", 0x1F21A06F0}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"stillImagePhaseDetectionAutofocusTimeout", 0x1F21A0710}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"minimumFocusDistance", @"MinimumFocusDistance"}];
      v170 = [v114 objectForKeyedSubscript:@"VideoStabilizationAutoSelectionCinematicExtendedEnhancedDisabled"];
      if (!v170)
      {
        v170 = [v104 objectForKeyedSubscript:@"VideoStabilizationAutoSelectionCinematicExtendedEnhancedDisabled"];
      }

      [v413 setObject:v170 forKeyedSubscript:@"VideoStabilizationAutoSelectionCinematicExtendedEnhancedDisabled"];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"MainToSIFRSkipRatioFor60FPS", @"MainToSIFRSkipRatioFor60FPS"}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"MainToSIFRFrameRateRatio", @"MainToSIFRFrameRateRatio"}];
      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"hasTorch", "BOOLValue"}])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Torch"];
      }

      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"visionDataDeliverySupported", "BOOLValue"}])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VisionDataDeliverySupported"];
      }

      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"midFrameSynchronizationNotSupported", "BOOLValue"}])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A0010];
      }

      if ([*(v157 + 40) count] >= 2)
      {
        csu_createVideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist_cold_1(v157, v413, @"BravoSwitchOverVideoZoomFactors");
      }

      v171 = [objc_msgSend(v104 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", @"AVCaptureDeviceFormats"}];
      *type = 0u;
      v498 = 0u;
      v499 = 0u;
      v500 = 0u;
      v418 = [v171 allValues];
      v426 = [v418 countByEnumeratingWithState:type objects:v513 count:16];
      if (!v426)
      {
        goto LABEL_359;
      }

      LOBYTE(v172) = 0;
      LOBYTE(v173) = 0;
      LOBYTE(v174) = 0;
      LOBYTE(v175) = 0;
      LOBYTE(v176) = 0;
      LOBYTE(v177) = 0;
      LOBYTE(v438) = 0;
      LOBYTE(v442) = 0;
      LOBYTE(v178) = 0;
      LOBYTE(v179) = 0;
      v421 = *v498;
      do
      {
        v180 = 0;
        do
        {
          if (*v498 != v421)
          {
            objc_enumerationMutation(v418);
          }

          v181 = *(*&type[8] + 8 * v180);
          if (v179)
          {
            v179 = 1;
            if ((v178 & 1) == 0)
            {
              goto LABEL_307;
            }
          }

          else
          {
            v179 = [objc_msgSend(*(*&type[8] + 8 * v180) objectForKeyedSubscript:{0x1F217F1F0), "intValue"}] > 0;
            if ((v178 & 1) == 0)
            {
LABEL_307:
              v178 = [objc_msgSend(v181 objectForKeyedSubscript:{0x1F217F350), "BOOLValue"}];
              if (v172)
              {
                goto LABEL_313;
              }

              goto LABEL_311;
            }
          }

          v178 = 1;
          if (v172)
          {
            goto LABEL_313;
          }

LABEL_311:
          if (([objc_msgSend(v181 objectForKeyedSubscript:{0x1F217FCF0), "BOOLValue"}] & 1) != 0 || objc_msgSend(objc_msgSend(v181, "objectForKeyedSubscript:", 0x1F217FDF0), "BOOLValue"))
          {
LABEL_313:
            v172 = 1;
            if (v173)
            {
              goto LABEL_314;
            }

            goto LABEL_320;
          }

          v172 = 0;
          if (v173)
          {
LABEL_314:
            v173 = 1;
            if ((v174 & 1) == 0)
            {
              goto LABEL_315;
            }

            goto LABEL_321;
          }

LABEL_320:
          v173 = [objc_msgSend(v181 objectForKeyedSubscript:{0x1F217F410), "BOOLValue"}];
          if ((v174 & 1) == 0)
          {
LABEL_315:
            v174 = [objc_msgSend(v181 objectForKeyedSubscript:{0x1F217F450), "BOOLValue"}];
            if ((v175 & 1) == 0)
            {
              goto LABEL_316;
            }

            goto LABEL_322;
          }

LABEL_321:
          v174 = 1;
          if ((v175 & 1) == 0)
          {
LABEL_316:
            v175 = [objc_msgSend(v181 objectForKeyedSubscript:{0x1F217F090), "BOOLValue"}];
            if ((v176 & 1) == 0)
            {
              goto LABEL_317;
            }

            goto LABEL_323;
          }

LABEL_322:
          v175 = 1;
          if ((v176 & 1) == 0)
          {
LABEL_317:
            v176 = [objc_msgSend(v181 objectForKeyedSubscript:{@"NightModeSupported", "BOOLValue"}];
            if (v177)
            {
              goto LABEL_327;
            }

            goto LABEL_324;
          }

LABEL_323:
          v176 = 1;
          if (v177)
          {
            goto LABEL_327;
          }

LABEL_324:
          if (([objc_msgSend(v181 objectForKeyedSubscript:{0x1F217F6D0), "BOOLValue"}] & 1) != 0 || (objc_msgSend(objc_msgSend(v181, "objectForKeyedSubscript:", 0x1F217F6F0), "BOOLValue") & 1) != 0 || objc_msgSend(objc_msgSend(v181, "objectForKeyedSubscript:", 0x1F217F710), "BOOLValue"))
          {
LABEL_327:
            v177 = 1;
            goto LABEL_328;
          }

          v177 = 0;
LABEL_328:
          if (v438)
          {
            v438 = 1;
          }

          else
          {
            v438 = [objc_msgSend(v181 objectForKeyedSubscript:{0x1F217F2D0), "BOOLValue"}];
          }

          if (v442)
          {
            v442 = 1;
          }

          else
          {
            v442 = [objc_msgSend(v181 objectForKeyedSubscript:{0x1F217E990), "BOOLValue"}];
          }

          ++v180;
        }

        while (v426 != v180);
        v182 = [v418 countByEnumeratingWithState:type objects:v513 count:16];
        v426 = v182;
      }

      while (v182);
      if (v179)
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"RedEyeReduction"];
        if ((v178 & 1) == 0)
        {
          goto LABEL_340;
        }

LABEL_350:
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217B3D0];
        v114 = v375;
        if ((v172 & 1) == 0)
        {
          goto LABEL_351;
        }

LABEL_341:
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217FCF0];
        v157 = v387;
        if ((v173 & 1) == 0)
        {
          goto LABEL_342;
        }

LABEL_352:
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F219AF10];
        if ((v174 & 1) == 0)
        {
          goto LABEL_353;
        }

LABEL_343:
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F219AFD0];
        v104 = v398;
        if ((v175 & 1) == 0)
        {
          goto LABEL_344;
        }

LABEL_354:
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SIS"];
        if ((v176 & 1) == 0)
        {
          goto LABEL_355;
        }

LABEL_345:
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A0510];
        if ((v177 & 1) == 0)
        {
          goto LABEL_346;
        }

LABEL_356:
        v168 = v413;
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VideoStabilization"];
        v115 = 0x1E696A000uLL;
        if ((v438 & 1) == 0)
        {
          goto LABEL_357;
        }

LABEL_347:
        [v168 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A0730];
        if ((v442 & 1) == 0)
        {
          goto LABEL_359;
        }

LABEL_358:
        [v168 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F219FBB0];
        goto LABEL_359;
      }

      if (v178)
      {
        goto LABEL_350;
      }

LABEL_340:
      v114 = v375;
      if (v172)
      {
        goto LABEL_341;
      }

LABEL_351:
      v157 = v387;
      if (v173)
      {
        goto LABEL_352;
      }

LABEL_342:
      if (v174)
      {
        goto LABEL_343;
      }

LABEL_353:
      v104 = v398;
      if (v175)
      {
        goto LABEL_354;
      }

LABEL_344:
      if (v176)
      {
        goto LABEL_345;
      }

LABEL_355:
      if (v177)
      {
        goto LABEL_356;
      }

LABEL_346:
      v115 = 0x1E696A000;
      v168 = v413;
      if (v438)
      {
        goto LABEL_347;
      }

LABEL_357:
      if (v442)
      {
        goto LABEL_358;
      }

LABEL_359:
      if ([v402 objectForKeyedSubscript:v368])
      {
        v183 = v168;
        v184 = MEMORY[0x1E695E118];
        [v183 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Sphere"];
        v185 = v184;
        v168 = v413;
        [v413 setObject:v185 forKeyedSubscript:@"SphereVideo"];
        [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"SphereVideoMaxFrameRate", @"SphereVideoMaxFrameRate"}];
        if ([objc_msgSend(v104 objectForKeyedSubscript:{@"sphereModeStillActivePreviewSupported", "BOOLValue"}])
        {
          [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SphereStillActivePreview"];
        }

        [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"TrueVideoUsesSphereModeVideoHighRange", @"TrueVideoUsesSphereModeVideoHighRange"}];
      }

      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"stillImageISPChromaNoiseReductionSupported", "BOOLValue"}])
      {
        [v168 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217F330];
      }

      [v168 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"stillImageNoiseReductionAndFusionScheme", 0x1F21A0530}];
      if (v405 && [objc_msgSend(v114 objectForKeyedSubscript:{@"ProResSupported", "BOOLValue"}])
      {
        [v168 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ProResSupported"];
      }

      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"ispChromaNoiseReductionForPairingDisabled", "BOOLValue"}])
      {
        [v168 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A06B0];
      }

      if ([+[FigCaptureCameraParameters focalLengthCharacterizationForStream:"focalLengthCharacterizationForStream:"]
      {
        [v168 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FocalLengthCharacterization"];
      }

      [v168 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"multiPassIspMBNRSupported", @"MultiPassIspMBNRSupported"}];
      [v168 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"ispMBNRSupported", @"IspMBNRSupported"}];
      v186 = [v104 objectForKeyedSubscript:@"stillImageDepthDataType"];
      if (v186)
      {
        [v168 setObject:v186 forKeyedSubscript:@"StillImageDepthDataType"];
      }

      if ([(FigCaptureSourceStreamsContainer *)v157 portTypesSupportingDepth])
      {
        [v168 setObject:-[FigCaptureSourceStreamsContainer zoomFactorsForDepth](v387) forKeyedSubscript:@"VideoZoomFactorsForDepthDataDelivery"];
        if ([objc_msgSend(v375 objectForKeyedSubscript:{@"SupportedSemanticSegmentationMatteURNs", "count"}])
        {
          [v413 setObject:objc_msgSend(v375 forKeyedSubscript:{"objectForKeyedSubscript:", @"SupportedSemanticSegmentationMatteURNs", @"SupportedSemanticSegmentationMatteURNs"}];
        }

        [objc_msgSend(v104 objectForKeyedSubscript:{@"PortraitEffectsMatteMainImageDownscalingFactor", "floatValue"}];
        if (v187 > 0.0)
        {
          [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"PortraitEffectsMatteMainImageDownscalingFactor", @"PortraitEffectsMatteMainImageDownscalingFactor"}];
        }

        v188 = [v375 objectForKeyedSubscript:@"DepthDataDeliveryConfigurations"];
        v168 = v413;
        if (v188)
        {
          v189 = v188;
          v190 = [MEMORY[0x1E695DF90] dictionary];
          if ([objc_msgSend(v189 objectForKeyedSubscript:{@"DemosaicedRawConfigurationSupported", "BOOLValue"}])
          {
            [v190 setObject:objc_msgSend(v189 forKeyedSubscript:{"objectForKeyedSubscript:", @"DemosaicedRawConfigurationSupported", @"DemosaicedRawConfigurationSupported"}];
          }

          if ([objc_msgSend(v189 objectForKeyedSubscript:{@"DCProcessingSupported", "BOOLValue"}])
          {
            [v190 setObject:objc_msgSend(v189 forKeyedSubscript:{"objectForKeyedSubscript:", @"DCProcessingSupported", @"DCProcessingSupported"}];
          }

          if ([objc_msgSend(v189 objectForKeyedSubscript:{@"StillImageGGMSupported", "BOOLValue"}])
          {
            [v190 setObject:objc_msgSend(v189 forKeyedSubscript:{"objectForKeyedSubscript:", @"StillImageGGMSupported", @"StillImageGGMSupported"}];
          }

          if ([objc_msgSend(v189 objectForKeyedSubscript:{@"VideoSTFMetadataSupported", "BOOLValue"}])
          {
            [v190 setObject:objc_msgSend(v189 forKeyedSubscript:{"objectForKeyedSubscript:", @"VideoSTFMetadataSupported", @"VideoSTFMetadataSupported"}];
          }

          if ([objc_msgSend(v189 objectForKeyedSubscript:{@"FastModeSwitchingSupported", "BOOLValue"}])
          {
            [v190 setObject:objc_msgSend(v189 forKeyedSubscript:{"objectForKeyedSubscript:", @"FastModeSwitchingSupported", @"FastModeSwitchingSupported"}];
          }

          if ([objc_msgSend(v189 objectForKeyedSubscript:{@"CapturePipeliningSupported", "BOOLValue"}])
          {
            [v190 setObject:objc_msgSend(v189 forKeyedSubscript:{"objectForKeyedSubscript:", @"CapturePipeliningSupported", @"CapturePipeliningSupported"}];
          }

          if ([objc_msgSend(v189 objectForKeyedSubscript:{@"DeepFusionSupported", "BOOLValue"}])
          {
            [v190 setObject:objc_msgSend(v189 forKeyedSubscript:{"objectForKeyedSubscript:", @"DeepFusionSupported", @"DeepFusionSupported"}];
          }

          if ([v190 count])
          {
            [v413 setObject:v190 forKeyedSubscript:@"DepthDataDeliveryConfigurations"];
          }
        }
      }

      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"previewQualityAdjustedPhotoFilterRenderingSupported", "BOOLValue"}])
      {
        [v168 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PreviewQualityAdjustedPhotoFilterRenderingSupported"];
      }

      [v413 setObject:objc_msgSend(objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"SpherePowerConsumption", "objectForKeyedSubscript:", @"Lock", @"PowerConsumptionInSphereModeLock"}];
      [v413 setObject:objc_msgSend(objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"SpherePowerConsumption", "objectForKeyedSubscript:", @"Video", @"PowerConsumptionInSphereModeVideo"}];
      [v413 setObject:objc_msgSend(objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"SpherePowerConsumption", "objectForKeyedSubscript:", @"VideoHighRange", @"PowerConsumptionInSphereModeVideoHighRange"}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"SensorThermalLevelsByTemperature", @"SensorThermalLevelsByTemperature"}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"FrameRatesForSystemPressureLevel", @"FrameRatesForSystemPressureLevel"}];
      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"ThrottleFrameRatesWithDepthDisabled", "BOOLValue"}])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ThrottleFrameRatesWithDepthDisabled"];
      }

      v191 = [objc_msgSend(v104 objectForKeyedSubscript:{@"geometricDistortionCorrection", "BOOLValue"}];
      v192 = [objc_msgSend(v104 objectForKeyedSubscript:{@"geometricDistortionCorrectionForSmartCropEnabled", "BOOLValue"}];
      if ((v191 & 1) != 0 || v192)
      {
        if (v191)
        {
          v193 = @"GeometricDistortionCorrection";
        }

        else
        {
          v193 = @"geometricDistortionCorrectionForSmartCropEnabled";
        }

        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v193];
      }

      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"GeometricDistortionCorrectionExpandsImageDimensions", @"GeometricDistortionCorrectionExpandsImageDimensions"}];
      [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"constituentPhotoCalibrationDataSupported", @"ConstituentPhotoCalibrationData"}];
      v194 = v387;
      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"videoZoomSmoothingSupported", "BOOLValue"}])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VideoZoomSmoothingSupported"];
      }

      if ([v104 objectForKeyedSubscript:@"lockedFrameDurationMaxFrameRate"])
      {
        v195 = [objc_msgSend(v104 objectForKeyedSubscript:{@"lockedFrameDurationMaxFrameRate", "intValue"}];
        if (v195 >= 1)
        {
          [v413 setObject:objc_msgSend(*(v115 + 3480) forKeyedSubscript:{"numberWithInt:", v195), @"LockedFrameDurationMaxFrameRate"}];
        }
      }

      if ([v104 objectForKeyedSubscript:@"externalSyncMaxFrameRate"])
      {
        v196 = [objc_msgSend(v104 objectForKeyedSubscript:{@"externalSyncMaxFrameRate", "intValue"}];
        if (v196 >= 1)
        {
          [v413 setObject:objc_msgSend(*(v115 + 3480) forKeyedSubscript:{"numberWithInt:", v196), @"ExternalSyncMaxFrameRate"}];
        }
      }

      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"SensorOutputLargerThanImageCircle", "BOOLValue"}])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SensorOutputLargerThanImageCircle"];
      }

      if ([v104 objectForKeyedSubscript:@"CameraSensorOrientationCompensation"])
      {
        [v413 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"CameraSensorOrientationCompensation", @"CameraSensorOrientationCompensation"}];
      }

      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"FaceAwareVideoStabilizationSupported", "BOOLValue"}])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FaceAwareVideoStabilizationSupported"];
      }

      if ([objc_msgSend(v104 objectForKeyedSubscript:{@"rawBufferCompandingDisabled", "BOOLValue"}])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"RawBufferCompandingDisabled"];
      }

      if (v405)
      {
        v197 = [MEMORY[0x1E695DF70] array];
        if ([v402 objectForKeyedSubscript:v364])
        {
          v198 = [v408 getProperty:v364 error:0];
          if (v198)
          {
            [v197 addObjectsFromArray:v198];
          }
        }

        if ([v402 objectForKeyedSubscript:v363])
        {
          [v197 addObject:v363];
        }

        if ([v402 objectForKeyedSubscript:v362])
        {
          [v197 addObject:v362];
        }

        if ([v402 objectForKeyedSubscript:v361])
        {
          [v197 addObject:v361];
        }

        if ([v402 objectForKeyedSubscript:v360])
        {
          [v197 addObject:v360];
        }

        [v413 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithArray:", v197), @"VisionDataConfigurationAndRuntimeSupportedKeys"}];
      }

      v199 = +[FigCaptureCameraParameters sensorIDStringFromModuleInfo:](FigCaptureCameraParameters, "sensorIDStringFromModuleInfo:", [v408 getProperty:v367 error:0]);
      v200 = +[FigCaptureCameraParameters cinematicFramingVirtualCameraConfigurationForPortType:sensorIDString:](FigCaptureCameraParameters, "cinematicFramingVirtualCameraConfigurationForPortType:sensorIDString:", [v408 portType], v199);
      if (v200)
      {
        [v413 setObject:v200 forKeyedSubscript:@"CinematicFramingVirtualCameraConfiguration"];
      }

      v201 = +[FigCaptureCameraParameters temporalFilterSessionConfigurationForPortType:sensorIDString:](FigCaptureCameraParameters, "temporalFilterSessionConfigurationForPortType:sensorIDString:", [v408 portType], v199);
      if (v201)
      {
        v201 = [v413 setObject:v201 forKeyedSubscript:@"MotionCompensatedTemporalFilterNoiseReductionConfiguration"];
      }

      if (BWDeviceIsiPhone(v201, v202))
      {
        v203 = MGGetBoolAnswer();
      }

      else
      {
        v203 = 0;
      }

      [v413 setObject:objc_msgSend(*(v115 + 3480) forKeyedSubscript:{"numberWithBool:", v203), @"DockedTrackingSupported"}];
      if ([objc_msgSend(v375 objectForKeyedSubscript:{@"DICOMCaptureSupported", "BOOLValue"}])
      {
        [v413 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"DICOM"];
      }

      v204 = v413;
      MultiStreamSourceFormatsArrayAndAddAVCompressionSettingsAttribute = csu_createMultiStreamSourceFormatsArrayAndAddAVCompressionSettingsAttribute(v387, v104, v375, v204, v491);
      [v389 setObject:objc_msgSend(*(v115 + 3480) forKeyedSubscript:{"numberWithUnsignedInt:", v394), @"MediaType"}];
      [v389 setObject:v204 forKeyedSubscript:@"Attributes"];
      [v389 setObject:MultiStreamSourceFormatsArrayAndAddAVCompressionSettingsAttribute forKeyedSubscript:@"Formats"];
      [v389 setObject:v491[0] forKeyedSubscript:@"MissingFormats"];
      [v389 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamUniqueIDs", @"SynchronizedStreamUniqueIDs"}];
      [v389 setObject:objc_msgSend(v104 forKeyedSubscript:{"objectForKeyedSubscript:", @"unsynchronizedStreamUniqueIDs", @"UnsynchronizedStreamUniqueIDs"}];

      v102 = v376;
      if (v389)
      {
        if ([v387[5] count] >= 2)
        {
          v379 = [v389 objectForKeyedSubscript:@"Formats"];
          v206 = [v389 objectForKeyedSubscript:@"SynchronizedStreamUniqueIDs"];
          v207 = [v389 objectForKeyedSubscript:@"UnsynchronizedStreamUniqueIDs"];
          if ([v207 count])
          {
            v208 = v207;
          }

          else
          {
            v208 = v206;
          }

          v514 = 0u;
          v515 = 0u;
          v516 = 0u;
          v517 = 0u;
          v406 = v208;
          v209 = [v208 countByEnumeratingWithState:&v514 objects:v513 count:16];
          if (v209)
          {
            v210 = v209;
            v211 = 0;
            v212 = 0;
            v213 = 0;
            v443 = *v515;
            v214 = -1;
            do
            {
              for (jj = 0; jj != v210; ++jj)
              {
                if (*v515 != v443)
                {
                  objc_enumerationMutation(v406);
                }

                v216 = [objc_msgSend(v424 objectForKeyedSubscript:{*(*(&v514 + 1) + 8 * jj)), "objectForKeyedSubscript:", @"Attributes"}];
                v217 = [objc_msgSend(v216 objectForKeyedSubscript:{@"GeometricDistortionCorrection", "BOOLValue"}];
                v218 = [objc_msgSend(v216 objectForKeyedSubscript:{@"GeometricDistortionCorrectionExpandsImageDimensions", "BOOLValue"}];
                v219 = [objc_msgSend(v216 objectForKeyedSubscript:{@"geometricDistortionCorrectionForSmartCropEnabled", "BOOLValue"}];
                if ([objc_msgSend(v216 objectForKeyedSubscript:{@"Focus", "BOOLValue"}])
                {
                  v220 = [objc_msgSend(v216 objectForKeyedSubscript:{@"MinimumFocusDistance", "integerValue"}];
                  if (v214 >= v220)
                  {
                    v221 = v220;
                  }

                  else
                  {
                    v221 = v214;
                  }

                  if (v214 == -1)
                  {
                    v221 = v220;
                  }

                  if (v220 >= 1)
                  {
                    v214 = v221;
                  }
                }

                v115 = 0x1E696A000uLL;
                v213 |= v217;
                v212 |= v218;
                v211 |= v219;
              }

              v210 = [v406 countByEnumeratingWithState:&v514 objects:v513 count:16];
            }

            while (v210);
            if (v213)
            {
              [objc_msgSend(v389 objectForKeyedSubscript:{@"Attributes", "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), @"GeometricDistortionCorrection"}];
              if ((v212 & 1) == 0)
              {
                goto LABEL_476;
              }

LABEL_475:
              [objc_msgSend(v389 objectForKeyedSubscript:{@"Attributes", "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), @"GeometricDistortionCorrectionExpandsImageDimensions"}];
            }

            else if (v212)
            {
              goto LABEL_475;
            }

LABEL_476:
            if (v211)
            {
              [objc_msgSend(v389 objectForKeyedSubscript:{@"Attributes", "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), @"geometricDistortionCorrectionForSmartCropEnabled"}];
            }
          }

          else
          {
            v214 = -1;
          }

          [objc_msgSend(v389 objectForKeyedSubscript:{@"Attributes", "setObject:forKeyedSubscript:", objc_msgSend(*(v115 + 3480), "numberWithInteger:", v214), @"MinimumFocusDistance"}];
          v380 = [MEMORY[0x1E695DF70] array];
          v509 = 0u;
          v510 = 0u;
          v511 = 0u;
          v512 = 0u;
          v383 = [v379 countByEnumeratingWithState:&v509 objects:&v505 count:16];
          if (!v383)
          {
            goto LABEL_631;
          }

          v382 = *v510;
          while (2)
          {
            v228 = 0;
LABEL_481:
            if (*v510 != v382)
            {
              objc_enumerationMutation(v379);
            }

            v385 = v228;
            v444 = *(*(&v509 + 1) + 8 * v228);
            v419 = [MEMORY[0x1E695DF70] array];
            v229 = [MEMORY[0x1E695DF70] array];
            v501 = 0u;
            v502 = 0u;
            v503 = 0u;
            v504 = 0u;
            v427 = [v406 countByEnumeratingWithState:&v501 objects:type count:16];
            if (!v427)
            {
              v230 = 0;
              v414 = 0;
              goto LABEL_555;
            }

            v395 = 0;
            v414 = 0;
            v230 = 0;
            v422 = *v502;
LABEL_485:
            v231 = 0;
LABEL_486:
            if (*v502 != v422)
            {
              objc_enumerationMutation(v406);
            }

            v232 = *(*(&v501 + 1) + 8 * v231);
            v233 = [objc_msgSend(objc_msgSend(objc_msgSend(v424 objectForKeyedSubscript:{v232, v341), "objectForKeyedSubscript:", @"Attributes", "objectForKeyedSubscript:", @"DeviceType", "intValue"}];
            v234 = [objc_msgSend(v424 objectForKeyedSubscript:{v232), "objectForKeyedSubscript:", @"Formats"}];
            v235 = v234;
            switch(v233)
            {
              case 20:
LABEL_491:
                if ([v234 count] != 1)
                {
                  v334 = MEMORY[0x1E695DF30];
                  v335 = *MEMORY[0x1E695D930];
                  v336 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Only one stream format is currently supported on the IR camera. Stream format count: %lu", objc_msgSend(v235, "count")];
                  v337 = v334;
                  v338 = v335;
                  goto LABEL_652;
                }

                v236 = [v235 firstObject];
                if (v236)
                {
                  v230 = v236;
                  [v419 addObject:v236];
                }

                else
                {
                  v496 = 0;
                  v466[4] = OS_LOG_TYPE_DEFAULT;
                  v253 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v254 = v496;
                  if (os_log_type_enabled(v253, v466[4]))
                  {
                    v255 = v254;
                  }

                  else
                  {
                    v255 = v254 & 0xFFFFFFFE;
                  }

                  if (v255)
                  {
                    v256 = [v444 objectForKeyedSubscript:0x1F217E430];
                    LODWORD(v520[0]) = 136315650;
                    *(v520 + 4) = "csu_reconcileDerivedSourceInfoDictionaryAcrossUnderlyingStreams";
                    WORD6(v520[0]) = 2114;
                    *(v520 + 14) = v256;
                    WORD3(v520[1]) = 2114;
                    *(&v520[1] + 1) = v232;
                    LODWORD(v342) = 32;
                    v341 = v520;
                    _os_log_send_and_compose_impl();
                  }

                  v115 = 0x1E696A000;
                  v395 = 1;
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v230 = 0;
                }

                break;
              case 10:
                if (v234)
                {
                  [v419 addObjectsFromArray:v234];
                  v414 = v235;
                }

                else
                {
                  v257 = v230;
                  v496 = 0;
                  v466[4] = OS_LOG_TYPE_DEFAULT;
                  v258 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v259 = v496;
                  if (os_log_type_enabled(v258, v466[4]))
                  {
                    v260 = v259;
                  }

                  else
                  {
                    v260 = v259 & 0xFFFFFFFE;
                  }

                  if (v260)
                  {
                    v261 = [v444 objectForKeyedSubscript:0x1F217E430];
                    LODWORD(v520[0]) = 136315650;
                    *(v520 + 4) = "csu_reconcileDerivedSourceInfoDictionaryAcrossUnderlyingStreams";
                    WORD6(v520[0]) = 2114;
                    *(v520 + 14) = v261;
                    WORD3(v520[1]) = 2114;
                    *(&v520[1] + 1) = v232;
                    LODWORD(v342) = 32;
                    v341 = v520;
                    _os_log_send_and_compose_impl();
                  }

                  v115 = 0x1E696A000;
                  v395 = 1;
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v414 = 0;
                  v230 = v257;
                }

                break;
              case 5:
                goto LABEL_491;
              default:
                v399 = v233;
                v403 = v231;
                v409 = v230;
                memset(v520, 0, sizeof(v520));
                v521 = 0u;
                v522 = 0u;
                v237 = [v234 countByEnumeratingWithState:v520 objects:&v518 count:16];
                if (v237)
                {
                  v238 = v237;
                  v439 = **&v520[1];
                  v239 = v444;
LABEL_498:
                  v240 = 0;
                  while (1)
                  {
                    if (**&v520[1] != v439)
                    {
                      objc_enumerationMutation(v235);
                    }

                    v241 = *(*(&v520[0] + 1) + 8 * v240);
                    v242 = [v241 objectForKeyedSubscript:0x1F217F9D0];
                    v243 = [v241 objectForKeyedSubscript:0x1F217FAB0];
                    v244 = [v241 objectForKeyedSubscript:0x1F217EB50];
                    v245 = [v239 objectForKeyedSubscript:0x1F217E430];
                    [v242 objectForKeyedSubscript:0x1F217E430];
                    v246 = v245;
                    v239 = v444;
                    if (objc_msgSend_isEqualToString_(v246))
                    {
                      v247 = [v444 objectForKeyedSubscript:v447];
                      v248 = [v242 objectForKeyedSubscript:v447];
                      v249 = v247;
                      v239 = v444;
                      if ([v249 isEqual:v248])
                      {
                        break;
                      }
                    }

                    v250 = [v239 objectForKeyedSubscript:0x1F217E430];
                    [v243 objectForKeyedSubscript:0x1F217E430];
                    if (objc_msgSend_isEqualToString_(v250))
                    {
                      v242 = v243;
                      if ([objc_msgSend(v239 objectForKeyedSubscript:{v447), "isEqual:", objc_msgSend(v243, "objectForKeyedSubscript:", v447)}])
                      {
                        break;
                      }
                    }

                    v251 = [v239 objectForKeyedSubscript:0x1F217E430];
                    [v244 objectForKeyedSubscript:0x1F217E430];
                    if (objc_msgSend_isEqualToString_(v251))
                    {
                      v242 = v244;
                      if ([objc_msgSend(v239 objectForKeyedSubscript:{v447), "isEqual:", objc_msgSend(v244, "objectForKeyedSubscript:", v447)}])
                      {
                        break;
                      }
                    }

                    v252 = [v239 objectForKeyedSubscript:0x1F217E430];
                    [v241 objectForKeyedSubscript:0x1F217E430];
                    if (objc_msgSend_isEqualToString_(v252))
                    {
                      v242 = v241;
                      if ([objc_msgSend(v239 objectForKeyedSubscript:{v447), "isEqual:", objc_msgSend(v241, "objectForKeyedSubscript:", v447)}])
                      {
                        break;
                      }
                    }

                    if (v238 == ++v240)
                    {
                      v238 = [v235 countByEnumeratingWithState:v520 objects:&v518 count:16];
                      v242 = 0;
                      if (v238)
                      {
                        goto LABEL_498;
                      }

                      break;
                    }
                  }
                }

                else
                {
                  v242 = 0;
                }

                v262 = BWCaptureDevicePositionAndDeviceTypeToPortType([objc_msgSend(objc_msgSend(v389 objectForKeyedSubscript:{@"Attributes", "objectForKeyedSubscript:", @"Position", "intValue"}], v399);
                if (v242)
                {
                  v263 = v262;
                  [v419 addObject:v242];
                  v264 = [v242 objectForKeyedSubscript:0x1F217EF30];
                  if ([v263 isEqual:v386])
                  {
                    v265 = [v387[6] count] != 0;
                  }

                  else
                  {
                    v265 = 0;
                  }

                  v115 = 0x1E696A000uLL;
                  if ([v264 count] && !v265)
                  {
                    v270 = v387[6];
                    if (v270)
                    {
                      [objc_msgSend(v270 objectForKeyedSubscript:{v263), "floatValue"}];
                      v272 = v271;
                      v230 = v409;
                      if (v271 == 0.0)
                      {
LABEL_549:
                        v231 = v403;
                        break;
                      }
                    }

                    else
                    {
                      v272 = 1.0;
                      v230 = v409;
                    }

                    v495 = 0u;
                    v494 = 0u;
                    v493 = 0u;
                    v492 = 0u;
                    v273 = [v264 countByEnumeratingWithState:&v492 objects:v491 count:16];
                    if (!v273)
                    {
                      goto LABEL_549;
                    }

                    v274 = v273;
                    v275 = *v493;
                    do
                    {
                      for (kk = 0; kk != v274; ++kk)
                      {
                        if (*v493 != v275)
                        {
                          objc_enumerationMutation(v264);
                        }

                        [*(*(&v492 + 1) + 8 * kk) floatValue];
                        *&v278 = v272 * v277;
                        [v229 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v278)}];
                      }

                      v274 = [v264 countByEnumeratingWithState:&v492 objects:v491 count:16];
                    }

                    while (v274);
                  }

                  v230 = v409;
                  goto LABEL_549;
                }

                v496 = 0;
                v466[4] = OS_LOG_TYPE_DEFAULT;
                v266 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v267 = v496;
                if (os_log_type_enabled(v266, v466[4]))
                {
                  v268 = v267;
                }

                else
                {
                  v268 = v267 & 0xFFFFFFFE;
                }

                if (v268)
                {
                  v269 = [v444 objectForKeyedSubscript:0x1F217E430];
                  LODWORD(v520[0]) = 136315650;
                  *(v520 + 4) = "csu_reconcileDerivedSourceInfoDictionaryAcrossUnderlyingStreams";
                  WORD6(v520[0]) = 2114;
                  *(v520 + 14) = v269;
                  WORD3(v520[1]) = 2114;
                  *(&v520[1] + 1) = v232;
                  LODWORD(v342) = 32;
                  v341 = v520;
                  _os_log_send_and_compose_impl();
                }

                v115 = 0x1E696A000;
                v231 = v403;
                v395 = 1;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v230 = v409;
                break;
            }

            if (++v231 == v427)
            {
              v427 = [v406 countByEnumeratingWithState:&v501 objects:type count:16];
              if (!v427)
              {
                if (v395)
                {
                  [v380 addObject:v444];
                  goto LABEL_629;
                }

LABEL_555:
                v490 = 0u;
                v489 = 0u;
                v488 = 0u;
                v487 = 0u;
                v279 = [v419 countByEnumeratingWithState:&v487 objects:&v483 count:{16, v341}];
                if (v279)
                {
                  v280 = v279;
                  v281 = 0;
                  v440 = 0;
                  v282 = 0;
                  v400 = 0;
                  v423 = 0;
                  v428 = 0;
                  v283 = *v488;
                  v404 = -1;
                  v410 = 1;
                  v284 = 0.0;
                  v285 = 0x7FFFFFFFLL;
                  v286 = 3.4028e38;
                  v396 = *v488;
                  do
                  {
                    for (mm = 0; mm != v280; ++mm)
                    {
                      if (*v488 != v283)
                      {
                        objc_enumerationMutation(v419);
                      }

                      v288 = *(*(&v487 + 1) + 8 * mm);
                      if (v288 != v230 || [objc_msgSend(v444 objectForKeyedSubscript:{0x1F217EC70), "count"}])
                      {
                        v289 = [objc_msgSend(v288 objectForKeyedSubscript:{v432), "intValue"}];
                        v290 = [objc_msgSend(v288 objectForKeyedSubscript:{v430), "intValue"}];
                        v281 = v281 <= v289 ? v289 : v281;
                        v285 = v285 >= v290 ? v290 : v285;
                        if (v288 != v230 && ([v414 containsObject:v288] & 1) == 0)
                        {
                          v291 = v280;
                          v292 = v230;
                          [objc_msgSend(v288 objectForKeyedSubscript:{v416), "floatValue"}];
                          v294 = v293;
                          v295 = [v288 objectForKeyedSubscript:0x1F217EB90];
                          v296 = [objc_msgSend(v288 objectForKeyedSubscript:{v388), "BOOLValue"}];
                          v400 = [objc_msgSend(v288 objectForKeyedSubscript:{0x1F217F2D0), "BOOLValue"}];
                          v297 = [v288 objectForKeyedSubscript:0x1F217EBF0];
                          if (v297)
                          {
                            v298 = [v297 intValue];
                            v299 = v404;
                            if (v404 == -1)
                            {
                              v299 = v298;
                            }

                            v404 = v299;
                          }

                          v410 &= v296;
                          v300 = [objc_msgSend(v288 objectForKeyedSubscript:{0x1F217F2F0), "intValue"}];
                          if (v300)
                          {
                            v301 = v300;
                          }

                          else
                          {
                            v301 = v423;
                          }

                          v423 = v301;
                          v302 = [objc_msgSend(v288 objectForKeyedSubscript:{0x1F217F310), "intValue"}];
                          v303 = v428;
                          if (v302)
                          {
                            v303 = v302;
                          }

                          v428 = v303;
                          v304 = v284 < v294;
                          if (v284 < v294)
                          {
                            v284 = v294;
                          }

                          v305 = v440;
                          if (v304)
                          {
                            v305 = v295;
                          }

                          v440 = v305;
                          if (v286 > v294)
                          {
                            v286 = v294;
                            v282 = v295;
                          }

                          v230 = v292;
                          v280 = v291;
                          v283 = v396;
                        }
                      }
                    }

                    v280 = [v419 countByEnumeratingWithState:&v487 objects:&v483 count:16];
                  }

                  while (v280);
                  v306 = v423;
                  if (v410)
                  {
                    v307 = MEMORY[0x1E695E118];
                  }

                  else
                  {
                    v307 = 0;
                  }

                  if (v400)
                  {
                    v308 = MEMORY[0x1E695E118];
                  }

                  else
                  {
                    v308 = 0;
                  }

                  v115 = 0x1E696A000;
                  v309 = v404;
                }

                else
                {
                  v281 = 0;
                  v440 = 0;
                  v282 = 0;
                  v308 = 0;
                  v306 = 0;
                  v428 = 0;
                  v309 = 0xFFFFFFFFLL;
                  v284 = 0.0;
                  v285 = 0x7FFFFFFFLL;
                  v286 = 3.4028e38;
                  v307 = MEMORY[0x1E695E118];
                }

                [v444 setObject:objc_msgSend(*(v115 + 3480) forKeyedSubscript:{"numberWithInt:", v281), v432}];
                [v444 setObject:objc_msgSend(*(v115 + 3480) forKeyedSubscript:{"numberWithInt:", v285), v430}];
                *&v310 = v284;
                [v444 setObject:objc_msgSend(*(v115 + 3480) forKeyedSubscript:{"numberWithFloat:", v310), v416}];
                [v444 setObject:v307 forKeyedSubscript:v388];
                [v444 setObject:v308 forKeyedSubscript:0x1F217F2D0];
                if (v309 != -1)
                {
                  [v444 setObject:objc_msgSend(*(v115 + 3480) forKeyedSubscript:{"numberWithInt:", v309), 0x1F217EBF0}];
                }

                if (v306 >= 1)
                {
                  [v444 setObject:objc_msgSend(*(v115 + 3480) forKeyedSubscript:{"numberWithInt:", v306), 0x1F217F2F0}];
                }

                if (v428 >= 1)
                {
                  [v444 setObject:objc_msgSend(*(v115 + 3480) forKeyedSubscript:{"numberWithInt:"), 0x1F217F310}];
                }

                if (v440)
                {
                  [v444 setObject:v440 forKeyedSubscript:0x1F217EB90];
                }

                if ([v229 count])
                {
                  [v444 setObject:v229 forKeyedSubscript:0x1F217EF30];
                }

                else
                {
                  [v444 removeObjectForKey:0x1F217EF30];
                }

                v311 = [v444 objectForKeyedSubscript:0x1F217EC70];
                v479 = 0u;
                v480 = 0u;
                v481 = 0u;
                v482 = 0u;
                v312 = [v311 countByEnumeratingWithState:&v479 objects:&v475 count:16];
                if (v312)
                {
                  v313 = v312;
                  v314 = *v480;
                  do
                  {
                    for (nn = 0; nn != v313; ++nn)
                    {
                      if (*v480 != v314)
                      {
                        objc_enumerationMutation(v311);
                      }

                      v316 = *(*(&v479 + 1) + 8 * nn);
                      v317 = [objc_msgSend(v316 objectForKeyedSubscript:{v432), "intValue"}];
                      v318 = [objc_msgSend(v316 objectForKeyedSubscript:{v430), "intValue"}];
                      if (v281 <= v317)
                      {
                        v281 = v317;
                      }

                      else
                      {
                        v281 = v281;
                      }

                      if (v285 >= v318)
                      {
                        v285 = v318;
                      }

                      else
                      {
                        v285 = v285;
                      }
                    }

                    v313 = [v311 countByEnumeratingWithState:&v479 objects:&v475 count:16];
                  }

                  while (v313);
                }

                v474 = 0u;
                v473 = 0u;
                v472 = 0u;
                v471 = 0u;
                v319 = [v311 countByEnumeratingWithState:&v471 objects:&v467 count:16];
                if (v319)
                {
                  v320 = v319;
                  v321 = *v472;
                  do
                  {
                    for (i1 = 0; i1 != v320; ++i1)
                    {
                      if (*v472 != v321)
                      {
                        objc_enumerationMutation(v311);
                      }

                      v323 = *(*(&v471 + 1) + 8 * i1);
                      [v323 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v281), v432}];
                      [v323 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v285), v430}];
                      *&v324 = v286;
                      [v323 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v324), v416}];
                      if (v282)
                      {
                        [v323 setObject:v282 forKeyedSubscript:0x1F217EB90];
                      }
                    }

                    v320 = [v311 countByEnumeratingWithState:&v471 objects:&v467 count:16];
                  }

                  while (v320);
                }

LABEL_629:
                v228 = v385 + 1;
                v115 = 0x1E696A000;
                if (v385 + 1 == v383)
                {
                  v383 = [v379 countByEnumeratingWithState:&v509 objects:&v505 count:16];
                  if (!v383)
                  {
LABEL_631:
                    v325 = v389;
                    if ([v380 count])
                    {
                      [v379 removeObjectsInArray:v380];
                      v326 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(v389, "objectForKeyedSubscript:", @"MissingFormats"}];
                      memset(v520, 0, sizeof(v520));
                      v521 = 0u;
                      v522 = 0u;
                      v327 = [v380 countByEnumeratingWithState:v520 objects:&v518 count:16];
                      if (v327)
                      {
                        v328 = v327;
                        v329 = **&v520[1];
                        do
                        {
                          for (i2 = 0; i2 != v328; ++i2)
                          {
                            if (**&v520[1] != v329)
                            {
                              objc_enumerationMutation(v380);
                            }

                            [v326 addObject:{objc_msgSend(*(*(&v520[0] + 1) + 8 * i2), "objectForKeyedSubscript:", 0x1F217E430)}];
                          }

                          v328 = [v380 countByEnumeratingWithState:v520 objects:&v518 count:16];
                        }

                        while (v328);
                      }

                      [v389 setObject:v326 forKeyedSubscript:@"MissingFormats"];
                    }

                    v102 = v376;
                    v194 = v387;
                    goto LABEL_644;
                  }

                  continue;
                }

                goto LABEL_481;
              }

              goto LABEL_485;
            }

            goto LABEL_486;
          }
        }

        v222 = [v104 objectForKeyedSubscript:@"uniqueID"];
        if ([v424 objectForKeyedSubscript:v222])
        {
          FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
          LODWORD(v505) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v224 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v225 = v505;
          if (os_log_type_enabled(v224, type[0]))
          {
            v226 = v225;
          }

          else
          {
            v226 = v225 & 0xFFFFFFFE;
          }

          if (v226)
          {
            LODWORD(v513[0]) = 136315394;
            *(v513 + 4) = "csu_createVideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist";
            WORD6(v513[0]) = 2112;
            v227 = v392;
            *(v513 + 14) = v392;
            _os_log_send_and_compose_impl();
          }

          else
          {
            v227 = v392;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v518 = 138412290;
          v519 = v227;
          v331 = _os_log_send_and_compose_impl();
          v342 = 0;
          FigCapturePleaseFileRadar(FrameworkRadarComponent, v331, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSource/FigCaptureSourceBackingsProvider.m", 2519, @"LastShownDate:FigCaptureSourceBackingsProvider.m:2519", @"LastShownBuild:FigCaptureSourceBackingsProvider.m:2519", 0);
          free(v331);
          v102 = v376;
          v194 = v387;
        }

        v325 = v389;
        [v424 setObject:v389 forKeyedSubscript:v222];
LABEL_644:
        [v366 addObject:v325];
      }

      v103 = v377;
      v19 = v374;
LABEL_160:
      ++v103;
    }

    while (v103 != v102);
    v332 = [obj countByEnumeratingWithState:&v450 objects:v449 count:16];
    v102 = v332;
  }

  while (v332);
LABEL_650:

  return v366;
}

void *csu_dependentUserDefaultsDictionary()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [MEMORY[0x1E695E0F0] countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v12;
    v4 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(v4);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = CFPreferencesCopyAppValue(v6, @"com.apple.coremedia");
        if (v7)
        {
          v8 = v7;
          [v0 setObject:v7 forKeyedSubscript:v6];
          CFRelease(v8);
        }
      }

      v2 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v2);
  }

  if ([objc_msgSend(v0 "allKeys")])
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

id csu_createInMemorySourcesArrayFromOnDiskSourcesArray(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:@"Formats"];
        if (v8)
        {
          v9 = csu_captureSourceVideoFormatsForFormatDictionaries(v8, 1);
          v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v7];
          [v10 setObject:v9 forKeyedSubscript:@"Formats"];
          [v2 addObject:v10];
        }

        else
        {
          [v2 addObject:v7];
        }
      }

      v4 = [a1 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t FigCaptureSourcePlistCreateAndPreprocess(uint64_t a1, uint64_t a2)
{
  ModelSpecificName = FigCaptureGetModelSpecificName(a1, a2);

  return fcsbp_plistCreateAndPreprocess(ModelSpecificName, 0);
}

uint64_t csu_postSourceInfoArrayChangedNotificationIfNecessary(void *a1)
{
  FigSimpleMutexLock();
  gSourceInfoArrayChanged = 1;
  v2 = gCaptureSourceBackings;
  if ([a1 count])
  {
    [FigCaptureSourceBackingsProvider updateBackingCachedPropertiesByDeviceID:?];
  }

  result = FigSimpleMutexUnlock();
  if (v2)
  {
    if (dword_1EB58DF60)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CStringPtr = CFStringGetCStringPtr(@"SourceInfoArrayChanged", 0x8000100u);
    return notify_post(CStringPtr);
  }

  return result;
}

uint64_t csu_createSourceInfoDictionariesFromAVCaptureSessionPlistForCaptureDeviceIDs(void *a1, void *a2, void *a3)
{
  v204 = 0;
  v134 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v133 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v203 = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  v202 = 0u;
  v201 = 0u;
  v200 = 0u;
  v199 = 0u;
  obj = a1;
  v140 = [a1 countByEnumeratingWithState:&v199 objects:v198 count:16];
  if (v140)
  {
    v139 = *v200;
    v4 = *off_1E798C240;
    v138 = *off_1E798C000;
    v137 = *off_1E798C070;
    v151 = *off_1E798BD00;
    v5 = *off_1E7989FF8;
    v149 = *off_1E798C180;
    v136 = *off_1E798BF88;
    v6 = *off_1E798C0A0;
    v147 = *off_1E798C1B8;
    v185 = *off_1E798D408;
    v186 = *off_1E798D3F8;
    v184 = *MEMORY[0x1E6966130];
    v174 = *off_1E798BCF8;
    v169 = *off_1E798BCF0;
    v173 = *off_1E798BCE0;
    v172 = *off_1E798C1A0;
    v171 = *off_1E798C0F8;
    v170 = *off_1E798BCE8;
    v146 = *off_1E798A000;
    v145 = *off_1E798A020;
    v144 = *off_1E798C248;
    v143 = *off_1E798BD90;
    v142 = *off_1E798C250;
    v141 = *off_1E798C0B0;
    v152 = *off_1E798C240;
    v150 = *off_1E7989FF8;
    v148 = *off_1E798C0A0;
    do
    {
      v7 = 0;
      do
      {
        if (*v200 != v139)
        {
          objc_enumerationMutation(obj);
        }

        v158 = v7;
        v8 = *(*(&v199 + 1) + 8 * v7);
        v9 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
        if (v9)
        {
          v14 = v9;
          v197 = 0;
          v196 = 0;
          isEqualToString = objc_msgSend_isEqualToString_(v8);
          if (isEqualToString && (ModelSpecificName = FigCaptureGetModelSpecificName(isEqualToString, v16), (v18 = fcsbp_plistCreateAndPreprocess(ModelSpecificName, &v196)) != 0))
          {
            v19 = v18;

            FigCaptureCreateSourceInfoArrayFromDeviceAndModelSpecificPlist(v14, v19, v196, 1, &v197, &v203);
            [v133 addObjectsFromArray:v197];
          }

          else
          {
            v20 = fcsbp_plistCreateAndPreprocess(@"iOS", 0);
            v179 = v20;
            if (v20)
            {
              v21 = v20;
              v156 = [v20 objectForKeyedSubscript:@"AVH264Settings"];
              v155 = [v21 objectForKeyedSubscript:@"AVHEVCSettings"];
              v216 = 0;
              v164 = FigCaptureExternalCameraReplacesBuiltIn(&v216);
              v157 = [MEMORY[0x1E695DF70] array];
              v212 = 0u;
              v213 = 0u;
              v214 = 0u;
              v215 = 0u;
              v22 = [v14 streams];
              v167 = [v22 countByEnumeratingWithState:&v212 objects:v211 count:16];
              if (!v167)
              {
                goto LABEL_202;
              }

              v166 = *v213;
              v153 = v22;
              v154 = v14;
              while (1)
              {
                v23 = 0;
                do
                {
                  if (*v213 != v166)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v24 = *(*(&v212 + 1) + 8 * v23);
                  v25 = [v24 getProperty:v4 error:0];
                  v26 = v23;
                  if (v25)
                  {
                    v27 = v25;
                    v163 = v26;
                    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    v161 = [MEMORY[0x1E695DF90] dictionary];
                    [v28 setObject:v29 forKeyedSubscript:@"Attributes"];
                    if (v164)
                    {
                      if (v216)
                      {
                        v30 = @"com.apple.avfoundation.avcapturedevice.built-in_video:1";
                      }

                      else
                      {
                        v30 = @"com.apple.avfoundation.avcapturedevice.built-in_video:0";
                      }

                      [v29 setObject:v30 forKeyedSubscript:@"UniqueID"];
                      [v29 setObject:v30 forKeyedSubscript:@"ModelID"];
                      [v29 setObject:@"Apple Inc." forKeyedSubscript:@"Manufacturer"];
                      v31 = &unk_1F22443F8;
                    }

                    else
                    {
                      [v29 setObject:v27 forKeyedSubscript:@"UniqueID"];
                      [v29 setObject:objc_msgSend(v24 forKeyedSubscript:{"getProperty:error:", v138, 0), @"Manufacturer"}];
                      [v29 setObject:objc_msgSend(v24 forKeyedSubscript:{"getProperty:error:", v137, 0), @"ModelID"}];
                      v31 = &unk_1F22443E0;
                    }

                    [v29 setObject:objc_msgSend(v24 forKeyedSubscript:{"getPropertyIfSupported:error:", v151, 0), @"Flash"}];
                    if ([objc_msgSend(v14 "supportedProperties")])
                    {
                      v32 = &unk_1F22443C8;
                    }

                    else
                    {
                      v32 = v31;
                    }

                    [v29 setObject:v32 forKeyedSubscript:@"DeviceType"];
                    [v29 setObject:&unk_1F2244410 forKeyedSubscript:@"SourceType"];
                    if ([objc_msgSend(v24 "supportedProperties")])
                    {
                      [v29 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HEIF"];
                    }

                    v165 = v29;
                    [v29 setObject:objc_msgSend(v14 forKeyedSubscript:{"deviceID"), @"CaptureDeviceID"}];
                    [v24 portType];
                    if (FigCFEqual())
                    {
                      v33 = 1;
                    }

                    else
                    {
                      v33 = 2 * (FigCFEqual() != 0);
                    }

                    v160 = v33;
                    [v29 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"Position"}];
                    if (v164)
                    {
                      if (v216)
                      {
                        v34 = @"Front Camera";
                      }

                      else
                      {
                        v34 = @"Back Camera";
                      }

                      [v29 setObject:v34 forKeyedSubscript:@"LocalizedName"];
LABEL_47:
                      v35 = v29;
                      v36 = v34;
                    }

                    else
                    {
                      v34 = [v24 getPropertyIfSupported:v136 error:0];
                      [v29 setObject:v34 forKeyedSubscript:@"LocalizedName"];
                      if (![objc_msgSend(v24 "supportedProperties")])
                      {
                        goto LABEL_47;
                      }

                      v36 = [v24 getProperty:v6 error:0];
                      v35 = v29;
                    }

                    [v35 setObject:v36 forKeyedSubscript:@"NonLocalizedName"];
                    v162 = v28;
                    [v29 setObject:v156 forKeyedSubscript:@"AVH264Settings"];
                    v37 = MEMORY[0x1E695E118];
                    [v29 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HEVC"];
                    if ([objc_msgSend(objc_msgSend(v179 objectForKeyedSubscript:{@"AVCaptureDeviceCommonSettings", "objectForKeyedSubscript:", @"HEVCPreferred", "BOOLValue"}])
                    {
                      [v29 setObject:v37 forKeyedSubscript:@"PrefersHEVC"];
                    }

                    [v29 setObject:v155 forKeyedSubscript:@"AVHEVCSettings"];
                    v38 = [v24 copyProperty:v147 error:0];
                    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v207 = 0u;
                    v208 = 0u;
                    v209 = 0u;
                    v210 = 0u;
                    v168 = v38;
                    v40 = [v38 countByEnumeratingWithState:&v207 objects:type count:16];
                    v175 = v24;
                    v187 = v39;
                    if (v40)
                    {
                      v41 = v40;
                      v42 = 0;
                      v43 = *v208;
                      do
                      {
                        for (i = 0; i != v41; ++i)
                        {
                          if (*v208 != v43)
                          {
                            objc_enumerationMutation(v168);
                          }

                          v45 = *(*(&v207 + 1) + 8 * i);
                          v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
                          v205[0] = @"SensorWidth";
                          v205[1] = @"SensorHeight";
                          v205[2] = v185;
                          v205[3] = v186;
                          BWAddEntriesWithKeysFromDictionaryToDictionary(v45, [MEMORY[0x1E695DEC8] arrayWithObjects:v205 count:4], v46);
                          [v46 setObject:objc_msgSend(v45 forKeyedSubscript:{"objectForKeyedSubscript:", @"SensorWidth", 0x1F216B190}];
                          [v46 setObject:objc_msgSend(v45 forKeyedSubscript:{"objectForKeyedSubscript:", @"SensorHeight", 0x1F216B1B0}];
                          if ([objc_msgSend(v45 objectForKeyedSubscript:{@"IsFake4by3PhotoFormat", "BOOLValue"}])
                          {
                            [v46 setObject:v37 forKeyedSubscript:@"IsFake4by3PhotoFormat"];
                          }

                          v47 = [v45 objectForKeyedSubscript:@"FormatDescription"];
                          v48 = [v45 objectForKeyedSubscript:@"NativeFormatDescription"];
                          if ([objc_msgSend(v45 objectForKeyedSubscript:{@"NativeFormatRequiresUpscaling", "BOOLValue"}])
                          {
                            [v46 setObject:v37 forKeyedSubscript:@"NativeFormatRequiresUpscaling"];
                          }

                          [v46 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", CMFormatDescriptionGetMediaSubType(v47)), v184}];
                          [v46 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", CMFormatDescriptionGetMediaSubType(v48)), @"NativeFormatCodecType"}];
                          [v46 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v42), 0x1F217E450}];
                          if ([objc_msgSend(v45 objectForKeyedSubscript:{@"AsyncStillCaptureProvidedByStream", "BOOLValue"}])
                          {
                            [v46 setObject:objc_msgSend(v45 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F217F650), 0x1F217F650}];
                            [v46 setObject:objc_msgSend(v45 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F217F670), 0x1F217F670}];
                            v37 = MEMORY[0x1E695E118];
                          }

                          else
                          {
                            v37 = MEMORY[0x1E695E118];
                            [v46 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217E9B0];
                          }

                          [v46 setObject:v37 forKeyedSubscript:0x1F217F8B0];
                          v39 = v187;
                          if ([objc_msgSend(v175 "supportedProperties")])
                          {
                            [v46 setObject:v37 forKeyedSubscript:0x1F217F950];
                            [v46 setObject:v37 forKeyedSubscript:0x1F217F990];
                            if ([objc_msgSend(v175 "supportedProperties")])
                            {
                              [v46 setObject:v37 forKeyedSubscript:0x1F217F9B0];
                            }
                          }

                          if ([objc_msgSend(v175 "supportedProperties")])
                          {
                            [v46 setObject:v37 forKeyedSubscript:@"BackgroundBlurSupported"];
                          }

                          if ([objc_msgSend(v175 "supportedProperties")])
                          {
                            [v46 setObject:v37 forKeyedSubscript:@"StudioLightingSupported"];
                          }

                          if ([objc_msgSend(v175 "supportedProperties")])
                          {
                            [v46 setObject:v37 forKeyedSubscript:@"ReactionEffectsSupported"];
                          }

                          if ([objc_msgSend(v175 "supportedProperties")])
                          {
                            [v46 setObject:v37 forKeyedSubscript:@"BackgroundReplacementSupported"];
                          }

                          [v187 addObject:v46];

                          v42 = (v42 + 1);
                        }

                        v41 = [v168 countByEnumeratingWithState:&v207 objects:type count:16];
                      }

                      while (v41);
                    }

                    v159 = [objc_msgSend(v165 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
                    v176 = [objc_msgSend(objc_msgSend(v179 objectForKeyedSubscript:{@"AVCaptureSessionPresetCommon", "objectForKeyedSubscript:", @"vide", "objectForKeyedSubscript:", @"Device"}];
                    v195 = 1;
                    while (2)
                    {
                      v229 = 0u;
                      v230 = 0u;
                      v227 = 0u;
                      v228 = 0u;
                      v178 = [v179 countByEnumeratingWithState:&v227 objects:&v225 count:16];
                      if (!v178)
                      {
                        goto LABEL_174;
                      }

                      v177 = *v228;
LABEL_79:
                      v49 = 0;
LABEL_80:
                      if (*v228 != v177)
                      {
                        objc_enumerationMutation(v179);
                      }

                      v183 = v49;
                      v50 = *(*(&v227 + 1) + 8 * v49);
                      if ([v50 isEqual:@"AVCaptureSessionPresetCommon"])
                      {
                        goto LABEL_169;
                      }

                      v51 = [objc_msgSend(objc_msgSend(v179 objectForKeyedSubscript:{v50), "objectForKeyedSubscript:", @"vide", "objectForKeyedSubscript:", @"Device"}];
                      if (!v51)
                      {
                        goto LABEL_169;
                      }

                      v52 = v51;
                      v180 = v50;
                      if (v176)
                      {
                        v53 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
                        [v53 addEntriesFromDictionary:v52];
                        v52 = v53;
                      }

                      v54 = [objc_msgSend(v52 objectForKeyedSubscript:{@"RequiredWidth", "intValue"}];
                      v193 = [objc_msgSend(v52 objectForKeyedSubscript:{@"RequiredHeight", "intValue"}];
                      v194 = v54;
                      v55 = [objc_msgSend(v52 objectForKeyedSubscript:{@"RequiredMaxFrameRate", "intValue"}];
                      v56 = [objc_msgSend(v52 objectForKeyedSubscript:{@"RequiredMinFrameRate", "intValue"}];
                      if ((v195 == 1) != ((v54 | v193 | v55 | v56) != 0))
                      {
                        goto LABEL_169;
                      }

                      v57 = v56;
                      v192 = [objc_msgSend(v52 objectForKeyedSubscript:{@"TargetWidth", "intValue"}];
                      v191 = [objc_msgSend(v52 objectForKeyedSubscript:{@"TargetHeight", "intValue"}];
                      v190 = [objc_msgSend(v52 objectForKeyedSubscript:{@"TargetMaxFrameRate", "intValue"}];
                      v189 = [objc_msgSend(v52 objectForKeyedSubscript:{@"TargetMinFrameRate", "intValue"}];
                      v58 = [v180 isEqual:@"AVCaptureSessionPresetPhoto"] ? 875704422 : 875704438;
                      v188 = v58;
                      if (![v39 count])
                      {
                        goto LABEL_169;
                      }

                      v59 = 0;
                      v181 = 0;
                      v182 = -1;
                      v60 = 3.4028e38;
LABEL_92:
                      v61 = [v39 objectAtIndexedSubscript:v59];
                      v62 = v61;
                      if (v195 != 1 && [objc_msgSend(v61 objectForKeyedSubscript:{@"NativeFormatRequiresUpscaling", "BOOLValue"}] && (!objc_msgSend(objc_msgSend(v62, "objectForKeyedSubscript:", @"IsFake4by3PhotoFormat"), "BOOLValue") || !objc_msgSend(v180, "isEqual:", @"AVCaptureSessionPresetPhoto")))
                      {
                        goto LABEL_136;
                      }

                      v63 = [objc_msgSend(v62 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
                      v64 = [objc_msgSend(v62 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}];
                      v65 = [objc_msgSend(v62 objectForKeyedSubscript:{v184), "intValue"}];
                      v66 = [objc_msgSend(v62 objectForKeyedSubscript:{v186), "intValue"}];
                      v67 = [objc_msgSend(v62 objectForKeyedSubscript:{v185), "intValue"}];
                      v68 = v67;
                      v69 = v192;
                      if (v194 && (v69 = v194, v63 < v194) || (v70 = v191, v193) && (v70 = v193, v64 < v193) || (v71 = v190, v55) && (v71 = v55, v66 < v55) || (v72 = v189, v57) && (v72 = v57, v67 > v57))
                      {
                        v81 = 0;
                        v82 = 0;
                        v77 = 3.4028e38;
                        v39 = v187;
                        goto LABEL_134;
                      }

                      v73 = 0.0;
                      if (v69 && v70)
                      {
                        v74 = v70 * v69 - v64 * v63;
                        if (v74 < 0)
                        {
                          v74 = v64 * v63 - v70 * v69;
                        }

                        v73 = ((vabds_f32(v69 / v70, v63 / v64) * v63) * v64) + v74;
                      }

                      if (v71)
                      {
                        v75 = v66 - v71;
                        v39 = v187;
                        if (v66 < v71)
                        {
                          v75 = 2 * (v71 - v66);
                        }

                        v73 = v73 + v75;
                        if (!v72)
                        {
LABEL_119:
                          if (v65 == v188)
                          {
                            v77 = v73 + -2.0;
                          }

                          else
                          {
                            IsFullRange = FigCapturePixelFormatIsFullRange(v188);
                            v79 = FigCapturePixelFormatIsFullRange(v65);
                            v77 = v73 + -1.0;
                            if (IsFullRange != v79)
                            {
                              v77 = v73;
                            }
                          }

                          if (v71 < v68 || v66 < v71)
                          {
                            v81 = v66;
                          }

                          else
                          {
                            v81 = v71;
                          }

                          if (v72 <= v68)
                          {
                            v82 = v68;
                          }

                          else
                          {
                            v82 = v72;
                          }

                          if (v66 < v72)
                          {
                            v82 = v68;
                          }

LABEL_134:
                          if (v77 < v60)
                          {
                            v60 = v77;
                            v181 = __PAIR64__(v82, v81);
                            v182 = v59;
                          }

LABEL_136:
                          if ([v39 count] <= ++v59)
                          {
                            if (v182 == -1)
                            {
                              goto LABEL_169;
                            }

                            v83 = [v39 objectAtIndexedSubscript:v182];
                            v84 = v83;
                            if (v195 != 1)
                            {
                              goto LABEL_158;
                            }

                            v85 = [objc_msgSend(v83 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
                            v86 = [objc_msgSend(v84 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}];
                            if (!v194 || v194 == v85)
                            {
                              v88 = v193;
                              if (v193)
                              {
                                v90 = v193 == v86;
                              }

                              else
                              {
                                v90 = 1;
                              }

                              v91 = !v90;
                              v92 = (v159 < 0x15) & (0x1E7FFCu >> v159);
                              if (v90)
                              {
                                v92 = 0;
                              }

                              if (v92)
                              {
                                v89 = v194;
                                v84 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v84];
                                v87 = 0x1E696A000uLL;
                                if (!v194)
                                {
                                  goto LABEL_156;
                                }

LABEL_155:
                                [v84 setObject:objc_msgSend(*(v87 + 3480) forKeyedSubscript:{"numberWithInt:", v89), 0x1F216B190}];
                                [v84 setObject:objc_msgSend(*(v87 + 3480) forKeyedSubscript:{"numberWithInt:", v89), @"SensorWidth"}];
                                if (v88)
                                {
LABEL_156:
                                  [v84 setObject:objc_msgSend(*(v87 + 3480) forKeyedSubscript:{"numberWithInt:", v88), 0x1F216B1B0}];
                                  [v84 setObject:objc_msgSend(*(v87 + 3480) forKeyedSubscript:{"numberWithInt:", v88), @"SensorHeight"}];
                                }

                                [v84 setObject:0 forKeyedSubscript:0x1F217E9D0];
                                [v84 setObject:0 forKeyedSubscript:0x1F217E630];
                                [v84 setObject:0 forKeyedSubscript:0x1F217E650];
                                [v39 addObject:v84];
                              }

                              else if (v91)
                              {
                                goto LABEL_169;
                              }

LABEL_158:
                              v93 = [v84 objectForKeyedSubscript:0x1F217E9D0];
                              if (!v93)
                              {
                                v93 = [MEMORY[0x1E695DF70] array];
                                [v84 setObject:v93 forKeyedSubscript:0x1F217E9D0];
                              }

                              [v93 addObject:v180];
                              if ([v180 isEqual:@"AVCaptureSessionPresetHigh"])
                              {
                                [v84 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217E490];
                              }

                              if ([v180 isEqual:@"AVCaptureSessionPresetPhoto"])
                              {
                                [v84 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217FE50];
                              }

                              v94 = [v84 objectForKeyedSubscript:0x1F217E650];
                              if (!v94)
                              {
                                v94 = [MEMORY[0x1E695DF90] dictionary];
                                [v84 setObject:v94 forKeyedSubscript:0x1F217E650];
                              }

                              [v94 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v181), v180}];
                              v95 = [v84 objectForKeyedSubscript:0x1F217E630];
                              if (!v95)
                              {
                                v95 = [MEMORY[0x1E695DF90] dictionary];
                                [v84 setObject:v95 forKeyedSubscript:0x1F217E630];
                              }

                              [v95 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", HIDWORD(v181)), v180}];
                              goto LABEL_169;
                            }

                            if (((v159 < 0x15) & (0x1E7FFCu >> v159)) != 0)
                            {
                              v84 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v84];
                              v87 = 0x1E696A000;
                              v88 = v193;
                              v89 = v194;
                              goto LABEL_155;
                            }

LABEL_169:
                            v49 = v183 + 1;
                            if (v183 + 1 == v178)
                            {
                              v96 = [v179 countByEnumeratingWithState:&v227 objects:&v225 count:16];
                              v178 = v96;
                              if (!v96)
                              {
LABEL_174:
                                if (++v195 == 3)
                                {
                                  v97 = [MEMORY[0x1E695DF70] array];
                                  v221 = 0u;
                                  v222 = 0u;
                                  v223 = 0u;
                                  v224 = 0u;
                                  v98 = [v39 countByEnumeratingWithState:&v221 objects:&v217 count:16];
                                  if (v98)
                                  {
                                    v99 = v98;
                                    v100 = *v222;
                                    do
                                    {
                                      for (j = 0; j != v99; ++j)
                                      {
                                        if (*v222 != v100)
                                        {
                                          objc_enumerationMutation(v39);
                                        }

                                        v102 = *(*(&v221 + 1) + 8 * j);
                                        v103 = [v102 objectForKeyedSubscript:0x1F217E430];
                                        if (!v103)
                                        {
                                          v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%dx%d_%d", objc_msgSend(objc_msgSend(v102, "objectForKeyedSubscript:", 0x1F216B190), "intValue"), objc_msgSend(objc_msgSend(v102, "objectForKeyedSubscript:", 0x1F216B1B0), "intValue"), objc_msgSend(objc_msgSend(v102, "objectForKeyedSubscript:", v186), "intValue")];
                                        }

                                        if ([v97 containsObject:v103])
                                        {
                                          v104 = 1;
                                          do
                                          {
                                            v105 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%d", v103, v104];
                                            v104 = (v104 + 1);
                                          }

                                          while (([v97 containsObject:v105] & 1) != 0);
                                          v103 = v105;
                                          v39 = v187;
                                        }

                                        [v102 setObject:v103 forKeyedSubscript:0x1F217E430];
                                        [v97 addObject:v103];
                                      }

                                      v99 = [v39 countByEnumeratingWithState:&v221 objects:&v217 count:16];
                                    }

                                    while (v99);
                                  }

                                  [v39 sortUsingFunction:csu_compareSourceFormats context:0];
                                  v4 = v152;
                                  v5 = v150;
                                  v6 = v148;
                                  v14 = v154;
                                  if ([v39 count])
                                  {
                                    v106 = 0;
                                    do
                                    {
                                      v107 = [v39 objectAtIndexedSubscript:v106];
                                      if ([objc_msgSend(v107 objectForKeyedSubscript:{0x1F217F950), "BOOLValue"}])
                                      {
                                        v108 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v107];
                                        [v108 setObject:0 forKeyedSubscript:0x1F217F950];
                                        v109 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v108];

                                        [v107 setObject:v109 forKeyedSubscript:0x1F217F9D0];
                                        [v107 setObject:objc_msgSend(v107 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B190), 0x1F217FA10}];
                                        [v107 setObject:objc_msgSend(v107 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B1B0), 0x1F217FA30}];
                                        [v107 setObject:objc_msgSend(v107 forKeyedSubscript:{"objectForKeyedSubscript:", @"VideoMaxFrameRate", 0x1F217FA50}];
                                      }

                                      ++v106;
                                    }

                                    while ([v39 count] > v106);
                                  }

                                  if ([v39 count])
                                  {
                                    v110 = 0;
                                    do
                                    {
                                      v111 = [v39 objectAtIndexedSubscript:v110];
                                      if ([objc_msgSend(v111 objectForKeyedSubscript:{0x1F217FA90), "BOOLValue"}])
                                      {
                                        v112 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v111];
                                        [v112 setObject:0 forKeyedSubscript:0x1F217FA90];
                                        v113 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v112];

                                        [v111 setObject:v113 forKeyedSubscript:0x1F217FAB0];
                                        [v111 setObject:objc_msgSend(v111 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B190), 0x1F217FAF0}];
                                        [v111 setObject:objc_msgSend(v111 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B1B0), 0x1F217FB10}];
                                        [v111 setObject:objc_msgSend(v111 forKeyedSubscript:{"objectForKeyedSubscript:", @"VideoMaxFrameRate", 0x1F217FB30}];
                                      }

                                      ++v110;
                                    }

                                    while ([v39 count] > v110);
                                  }

                                  v114 = [csu_captureSourceVideoFormatsForFormatDictionaries(v39 0)];
                                  [v162 setObject:v114 forKeyedSubscript:@"Formats"];
                                  [v162 setObject:&unk_1F2244440 forKeyedSubscript:@"MediaType"];
                                  [v161 setObject:objc_msgSend(v154 forKeyedSubscript:{"getPropertyIfSupported:error:", v146, 0), @"Hidden"}];
                                  [v161 setObject:objc_msgSend(v154 forKeyedSubscript:{"getPropertyIfSupported:error:", v145, 0), @"ReadyToUnhide"}];
                                  [v161 setObject:objc_msgSend(v154 forKeyedSubscript:{"getPropertyIfSupported:error:", @"BatteryState", 0), @"BatteryState"}];
                                  [v161 setObject:objc_msgSend(v154 forKeyedSubscript:{"getPropertyIfSupported:error:", @"BatteryLevel", 0), @"BatteryLevel"}];
                                  if ([v161 count])
                                  {
                                    [v162 setObject:v161 forKeyedSubscript:@"CachedProperties"];
                                  }

                                  v226 = 1065353216;
                                  v225 = 0x3F8000003F800000;
                                  [v165 setObject:objc_msgSend(v179 forKeyedSubscript:{"objectForKeyedSubscript:", @"AVCaptureSessionPresetCompressionSettings", @"AVCaptureSessionPresetCompressionSettings"}];
                                  [v165 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v175, "supportedProperties"), "objectForKeyedSubscript:", v144) != 0), @"Exposure"}];
                                  [v165 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v175, "supportedProperties"), "objectForKeyedSubscript:", v143) != 0), @"Focus"}];
                                  [v165 setObject:objc_msgSend(v165 forKeyedSubscript:{"objectForKeyedSubscript:", @"Focus", @"ManualFocus"}];
                                  [v165 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v175, "supportedProperties"), "objectForKeyedSubscript:", v142) != 0), @"WhiteBalance"}];
                                  [v165 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &v225, 12), @"DefaultWhiteBalanceGains"}];
                                  [v165 setObject:objc_msgSend(v154 forKeyedSubscript:{"getPropertyIfSupported:error:", v150, 0), @"ContinuityDeviceUniqueID"}];
                                  v115 = [[FigCaptureSourceStreamsContainer alloc] initWithDeviceType:v159 position:v160 stillImageDepthDataType:0 device:v154 baseZoomFactorOverrides:0 clientBaseZoomFactorsByPortType:0];
                                  csu_addMetadataAttributes(v165, v115, [objc_msgSend(v175 "supportedProperties")] != 0, 0, 0);

                                  v116 = [v162 copy];
                                  [v157 addObject:v116];

                                  v22 = v153;
                                  v26 = v163;
                                  goto LABEL_25;
                                }

                                continue;
                              }

                              goto LABEL_79;
                            }

                            goto LABEL_80;
                          }

                          goto LABEL_92;
                        }
                      }

                      else
                      {
                        v39 = v187;
                        if (!v72)
                        {
                          goto LABEL_119;
                        }
                      }

                      break;
                    }

                    if (v67 <= v72)
                    {
                      v76 = v72 - v67;
                    }

                    else
                    {
                      v76 = 2 * (v67 - v72);
                    }

                    v73 = v73 + v76;
                    goto LABEL_119;
                  }

LABEL_25:
                  v23 = v26 + 1;
                }

                while (v26 + 1 != v167);
                v117 = [v22 countByEnumeratingWithState:&v212 objects:v211 count:16];
                v167 = v117;
                if (!v117)
                {
LABEL_202:
                  v197 = [v157 copy];
                  goto LABEL_203;
                }
              }
            }

            csu_createSourceInfoDictionariesFromAVCaptureSessionPlistForCaptureDeviceIDs_cold_1();
LABEL_203:

            v19 = 0;
          }

          if (dword_1EB58DF60)
          {
            v211[0] = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v119 = v211[0];
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
            {
              v120 = v119;
            }

            else
            {
              v120 = v119 & 0xFFFFFFFE;
            }

            if (v120)
            {
              v121 = [v197 count];
              v217 = 136315650;
              v218 = "csu_createSourceInfoDictionariesFromAVCaptureSessionPlistForCaptureDeviceIDs";
              v219 = 1024;
              *v220 = v121;
              *&v220[4] = 2112;
              *&v220[6] = v14;
              LODWORD(v130) = 28;
              v129 = &v217;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [v134 addObjectsFromArray:v197];
          [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];

          v13 = v158;
        }

        else
        {
          v211[0] = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v11 = v211[0];
          if (os_log_type_enabled(v10, type[0]))
          {
            v12 = v11;
          }

          else
          {
            v12 = v11 & 0xFFFFFFFE;
          }

          if (v12)
          {
            v217 = 136315650;
            v218 = "csu_createSourceInfoDictionariesFromAVCaptureSessionPlistForCaptureDeviceIDs";
            v219 = 2112;
            *v220 = v8;
            *&v220[8] = 1024;
            *&v220[10] = v204;
            LODWORD(v130) = 28;
            v129 = &v217;
            _os_log_send_and_compose_impl();
          }

          v13 = v158;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v7 = v13 + 1;
      }

      while (v7 != v140);
      v122 = [obj countByEnumeratingWithState:&v199 objects:v198 count:16];
      v140 = v122;
    }

    while (v122);
  }

  if (a2)
  {
    *a2 = v134;
  }

  if (a3)
  {
    *a3 = v203;
  }

  if (!v204)
  {
    return 0;
  }

  v211[0] = 0;
  type[0] = OS_LOG_TYPE_DEFAULT;
  v123 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v124 = v211[0];
  if (os_log_type_enabled(v123, type[0]))
  {
    v125 = v124;
  }

  else
  {
    v125 = v124 & 0xFFFFFFFE;
  }

  if (v125)
  {
    v217 = 136315394;
    v218 = "csu_createSourceInfoDictionariesFromAVCaptureSessionPlistForCaptureDeviceIDs";
    v219 = 1024;
    *v220 = v204;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v127 = *MEMORY[0x1E695E8B8];
  v128 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"CaptureSourceInfo", 0, @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v127, v128);
  return v204;
}

void *csu_captureSourceVideoFormatsForFormatDictionaries(void *a1, int a2)
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = *MEMORY[0x1E6966130];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [[FigCaptureSourceVideoFormat alloc] initWithFigCaptureStreamFormatDictionary:v10];
        [v4 addObject:v11];
        if (a2 && [objc_msgSend(v10 objectForKeyedSubscript:{v8), "intValue"}] == 875704438)
        {
          if ([v10 objectForKeyedSubscript:@"NativeFormatCodecType"])
          {
            v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10];
            [v12 setObject:&unk_1F2244458 forKeyedSubscript:v8];
            [v12 setObject:objc_msgSend(v12 forKeyedSubscript:{"objectForKeyedSubscript:", v8), @"NativeFormatCodecType"}];
            if ([a1 containsObject:v12])
            {
              v13 = 0;
LABEL_15:

              goto LABEL_16;
            }

            v14 = [[FigCaptureSourceVideoFormat alloc] initWithFigCaptureStreamFormatDictionary:v12];
          }

          else
          {
            v14 = [(FigCaptureSourceVideoFormat *)v11 copyWithNewPixelFormat:875704422];
          }

          v13 = v14;
          if (v14)
          {
            [v4 addObject:v14];
          }

          goto LABEL_15;
        }

LABEL_16:
      }

      v6 = [a1 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

uint64_t csu_compareSourceFormats(void *a1, void *a2)
{
  v4 = [objc_msgSend(a1 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
  v5 = [objc_msgSend(a1 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}];
  v6 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
  v7 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}];
  if (v5 * v4 < v7 * v6)
  {
    return -1;
  }

  if (v7 * v6 < v5 * v4)
  {
    return 1;
  }

  if (v4 < v6)
  {
    return -1;
  }

  if (v6 < v4)
  {
    return 1;
  }

  v9 = *off_1E798D408;
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D408), "floatValue"}];
  v11 = v10;
  [objc_msgSend(a2 objectForKeyedSubscript:{v9), "floatValue"}];
  v13 = v12;
  v14 = *off_1E798D3F8;
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D3F8), "floatValue"}];
  v16 = v15;
  [objc_msgSend(a2 objectForKeyedSubscript:{v14), "floatValue"}];
  v18 = v17;
  if (v16 == v17)
  {
    v22 = *off_1E798D3F0;
    v23 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D3F0), "BOOLValue"}];
    v24 = [objc_msgSend(a2 objectForKeyedSubscript:{v22), "BOOLValue"}];
    if ((v23 & 1) == 0 && v24)
    {
      return -1;
    }

    if (!(v24 & 1 | ((v23 & 1) == 0)))
    {
      return 1;
    }

    if ((v16 - v11) >= (v18 - v13))
    {
      if ((v18 - v13) < (v16 - v11))
      {
        return 1;
      }

      goto LABEL_19;
    }

    return -1;
  }

  if ((v16 - v11) < (v17 - v13))
  {
    return -1;
  }

  if ((v17 - v13) < (v16 - v11))
  {
    return 1;
  }

  v19 = *off_1E798D3F0;
  v20 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D3F0), "BOOLValue"}];
  v21 = [objc_msgSend(a2 objectForKeyedSubscript:{v19), "BOOLValue"}];
  if ((v20 & 1) == 0 && v21)
  {
    return -1;
  }

  if (!(v21 & 1 | ((v20 & 1) == 0)))
  {
    return 1;
  }

LABEL_19:
  v25 = [objc_msgSend(a1 objectForKeyedSubscript:{0x1F217F6D0), "BOOLValue"}];
  v26 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F217F6D0), "BOOLValue"}];
  if (v25 && !v26)
  {
    return -1;
  }

  if (!(v25 & 1 | ((v26 & 1) == 0)))
  {
    return 1;
  }

  v27 = *off_1E798D3E8;
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D3E8), "floatValue"}];
  v29 = v28;
  [objc_msgSend(a2 objectForKeyedSubscript:{v27), "floatValue"}];
  if (v29 > v30)
  {
    return -1;
  }

  if (v29 < v30)
  {
    return 1;
  }

  v31 = [a1 objectForKeyedSubscript:0x1F217E9D0];
  v32 = [a2 objectForKeyedSubscript:0x1F217E9D0];
  if (v31 && !v32)
  {
    return -1;
  }

  if (!v31 && v32)
  {
    return 1;
  }

  v33 = *MEMORY[0x1E6966130];
  v34 = [objc_msgSend(a1 objectForKeyedSubscript:{*MEMORY[0x1E6966130]), "unsignedIntValue"}];
  v35 = [objc_msgSend(a2 objectForKeyedSubscript:{v33), "unsignedIntValue"}];
  if (v34 == v35)
  {
    return 0;
  }

  v36 = v35;
  v37 = [&unk_1F22488E0 indexOfObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v34)}];
  if (v37 < [&unk_1F22488E0 indexOfObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v36)}])
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

id __cs_metadataIdentifierKeyForObjectsDetectionConfigurationKey_block_invoke()
{
  v0 = *off_1E798D0E0;
  v1 = *off_1E798B918;
  v13[0] = *off_1E798B938;
  v13[1] = v1;
  v2 = *MEMORY[0x1E6960390];
  v14[0] = v0;
  v14[1] = v2;
  v3 = *off_1E798D0D0;
  v4 = *off_1E798B930;
  v13[2] = *off_1E798B928;
  v13[3] = v4;
  v5 = *off_1E798D0D8;
  v14[2] = v3;
  v14[3] = v5;
  v6 = *MEMORY[0x1E6960378];
  v7 = *off_1E798B910;
  v13[4] = *off_1E798B908;
  v13[5] = v7;
  v8 = *MEMORY[0x1E6960380];
  v14[4] = v6;
  v14[5] = v8;
  v9 = *MEMORY[0x1E6960368];
  v10 = *off_1E798B900;
  v13[6] = *off_1E798B8F8;
  v13[7] = v10;
  v11 = *MEMORY[0x1E6960370];
  v14[6] = v9;
  v14[7] = v11;
  v13[8] = *off_1E798B940;
  v14[8] = *MEMORY[0x1E6960398];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:9];
  qword_1ED844F58 = result;
  return result;
}

void *csu_addSecureMetadataKeysToDeviceDict(void *a1, void *a2)
{
  v4 = BWCaptureDevicePositionAndDeviceTypeToPortType([objc_msgSend(a1 objectForKeyedSubscript:{@"position", "intValue"}], objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", @"deviceType"), "intValue"));
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"secureMetadataCameraSupported", "BOOLValue"}] && (v5 = objc_msgSend(a2, "copyStreamWithPortType:error:", v4, 0), v6 = objc_msgSend(objc_msgSend(v5, "supportedProperties"), "objectForKeyedSubscript:", *off_1E798BE18), v5, v6))
  {
    [a1 setObject:0 forKeyedSubscript:@"hasAutoFocus"];
    v7 = MEMORY[0x1E695E118];
    v8 = a1;
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  [v8 setObject:v7 forKeyedSubscript:@"secureMetadataCameraSupported"];
  result = [objc_msgSend(a1 objectForKeyedSubscript:{@"metadataCameraHostingSupported", "BOOLValue"}];
  if (result)
  {
    v10 = MEMORY[0x1E695E118];
    [a1 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"metadataCameraHostingSupported"];

    return [a1 setObject:v10 forKeyedSubscript:@"metadataCameraAttachingSupported"];
  }

  return result;
}

void *csu_preprocessDeviceDicts(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if ((objc_msgSend_isEqualToString_([v7 objectForKeyedSubscript:@"mediaType"]) & 1) != 0 || objc_msgSend_isEqualToString_(objc_msgSend(v7, "objectForKeyedSubscript:", @"mediaType")))
        {
          v8 = [v7 objectForKeyedSubscript:@"uniqueName"];
          if (v8)
          {
            v9 = v8;
            if ([v2 containsObject:v8])
            {
              objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Found duplicate uniqueName: %@", v9), 0}]);
            }

            [v2 addObject:v9];
          }

          csu_preprocessVideoDeviceDict(v7, a1);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void *csu_deviceSupportsWideColor(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    v4 = v3 > 0x14 || ((1 << v3) & 0x100420) == 0;
    if (!v4 || v3 - 21 > 0xFFFFFFFB)
    {
      return 0;
    }
  }

  result = [objc_msgSend(a2 objectForKeyedSubscript:{@"wideColorSupported", "BOOLValue"}];
  if (result)
  {
    if (a1)
    {
      v6 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
    }

    return ([objc_msgSend(v6 getProperty:*off_1E798C1B0 error:{0), "count"}] > 1);
  }

  return result;
}

void csu_mergeInCommonEntries(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"Common"];
  [a1 removeObjectForKey:@"Common"];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [a1 objectForKeyedSubscript:*(*(&v8 + 1) + 8 * v6)];
        FigCFDictionaryAddEntriesToDictionaryWithRecursion();
        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

uint64_t __csu_removeExperimentalDeviceFormats_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ([objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798D3C8), "BOOLValue"}])
  {
    v6 = *(a1 + 32);

    return [v6 addObject:a2];
  }

  else
  {
    v8 = [a3 objectForKeyedSubscript:0x1F217EF90];
    v9 = [v8 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_898)}];

    return [a3 setObject:v9 forKeyedSubscript:0x1F217EF90];
  }
}

void *__csu_removeUnsupportedDeviceFormatsAndDependentPresets_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 objectForKeyedSubscript:{@"Unsupported", "BOOLValue"}];
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addObject:a2];
  }

  return result;
}

void *__csu_removeUnsupportedDeviceFormatsAndDependentPresets_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a3 = [*(a1 + 32) objectForKeyedSubscript:a3];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __csu_removeUnsupportedDeviceFormatsAndDependentPresets_block_invoke_2_cold_1();
    }
  }

  result = [*(a1 + 40) containsObject:{objc_msgSend(a3, "objectForKeyedSubscript:", @"DeviceFormat"}];
  if (result)
  {
    v7 = *(a1 + 48);

    return [v7 addObject:a2];
  }

  return result;
}

void __csu_resolveSessionPresetAliases_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:a3];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __csu_resolveSessionPresetAliases_block_invoke_cold_1();
    }

    v7 = [v6 mutableCopy];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:a2];
  }
}

uint64_t csu_resolveFormatIndexForNamedStreamFormat(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, signed int *a6)
{
  v71 = [objc_msgSend(a4 objectForKeyedSubscript:{@"SensorWidth", "intValue"}];
  v70 = [objc_msgSend(a4 objectForKeyedSubscript:{@"SensorHeight", "intValue"}];
  v76 = [objc_msgSend(a4 objectForKeyedSubscript:{@"FESWidth", "intValue"}];
  v74 = [objc_msgSend(a4 objectForKeyedSubscript:{@"FESHeight", "intValue"}];
  v9 = [objc_msgSend(a4 objectForKeyedSubscript:{@"Binned", "BOOLValue"}];
  v68 = [objc_msgSend(a4 objectForKeyedSubscript:{@"HDR", "BOOLValue"}];
  v67 = [objc_msgSend(a4 objectForKeyedSubscript:{@"FES", "BOOLValue"}];
  v50 = [objc_msgSend(a4 objectForKeyedSubscript:{@"MaxFrameRate", "intValue"}];
  v66 = [objc_msgSend(a4 objectForKeyedSubscript:{@"SIFREnabled", "BOOLValue"}];
  v10 = [objc_msgSend(a4 objectForKeyedSubscript:{@"SIFRBinningFactor", "intValue"}];
  v69 = v9;
  if (v9)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (v10)
  {
    v11 = v10;
  }

  v49 = v11;
  v72 = a4;
  v48 = [objc_msgSend(a4 objectForKeyedSubscript:{@"OptimizedForMidFrameSynchronization", "BOOLValue"}];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v12 = [a5 countByEnumeratingWithState:&v85 objects:v84 count:16];
  if (!v12)
  {
    goto LABEL_72;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v86;
  v16 = *off_1E798D3C8;
  v62 = *off_1E798C988;
  v61 = *off_1E798C980;
  v60 = *off_1E798D3F0;
  v59 = *off_1E798C978;
  v58 = *off_1E798C938;
  v75 = -1;
  v56 = *off_1E798D3F8;
  v57 = *off_1E798C930;
  v54 = *off_1E798C960;
  v55 = *off_1E798C950;
  v53 = *off_1E798C958;
  v52 = *off_1E798C948;
  v64 = a5;
  v65 = a1;
  v63 = *v86;
  do
  {
    v17 = 0;
    v73 = v13;
    do
    {
      if (*v86 != v15)
      {
        objc_enumerationMutation(a5);
      }

      v18 = *(*(&v85 + 1) + 8 * v17);
      v19 = [objc_msgSend(v18 objectForKeyedSubscript:{v16), "BOOLValue"}];
      if (v19)
      {
        ++v14;
      }

      else
      {
        v21 = [&unk_1F2248928 containsObject:{FigCaptureGetModelSpecificName(v19, v20)}];
        v83[0] = @"Back Camera";
        v83[1] = @"Back Dual Wide Camera";
        v83[2] = @"Back Dual Camera";
        v83[3] = @"Back Triple Camera";
        v83[4] = @"Back LiDAR Depth Camera";
        v22 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:{5), "containsObject:", a1}];
        isEqualToString = objc_msgSend_isEqualToString_(a2);
        if (v21 && v22 && isEqualToString && v14 == 28)
        {
          v14 = 29;
        }

        else
        {
          v81 = [objc_msgSend(v18 objectForKeyedSubscript:{v62), "intValue"}];
          v80 = [objc_msgSend(v18 objectForKeyedSubscript:{v61), "intValue"}];
          v79 = [objc_msgSend(v18 objectForKeyedSubscript:{v60), "BOOLValue"}];
          v78 = [objc_msgSend(v18 objectForKeyedSubscript:{v59), "intValue"}];
          v24 = [objc_msgSend(v18 objectForKeyedSubscript:{v58), "intValue"}];
          v25 = [objc_msgSend(v18 objectForKeyedSubscript:{v57), "intValue"}];
          v77 = [objc_msgSend(v18 objectForKeyedSubscript:{v56), "intValue"}];
          v26 = [objc_msgSend(v18 objectForKeyedSubscript:{v55), "intValue"}];
          v27 = [objc_msgSend(v72 objectForKeyedSubscript:{v55), "intValue"}];
          if (v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = 2;
          }

          if (v26)
          {
            v29 = v28;
          }

          else
          {
            v29 = v27;
          }

          v30 = v25 <= 0 || v24 <= 0;
          v31 = !v30;
          v32 = v67 ^ v31;
          if (v30)
          {
            v33 = 0;
          }

          else
          {
            v33 = v67;
          }

          if (v33 == 1 && v76 >= 1 && v74 >= 1)
          {
            v32 = v24 != v76 || v25 != v74;
          }

          v35 = [objc_msgSend(v18 objectForKeyedSubscript:{v54), "BOOLValue"}];
          v36 = [objc_msgSend(v18 objectForKeyedSubscript:{v53), "intValue"}];
          if (v66)
          {
            if (v36 <= 1)
            {
              v37 = 1;
            }

            else
            {
              v37 = v36;
            }

            if (v49 == v37)
            {
              v35 ^= 1u;
            }

            else
            {
              v35 = 1;
            }
          }

          v38 = v26 != v29;
          v39 = [objc_msgSend(v18 objectForKeyedSubscript:{v52), "BOOLValue"}];
          v41 = v81 != v71 || v80 != v70;
          if ((v41 | v69 ^ v79 | v38 | v68 ^ (v78 > 0) | v32))
          {
            a5 = v64;
            a1 = v65;
            v15 = v63;
          }

          else
          {
            v43 = v50 > 0 && v77 != v50;
            v44 = v75;
            v45 = (v43 | (v35 | v48 ^ v39)) & 1 | (v75 != -1);
            if (!((v43 | (v35 | v48 ^ v39)) & 1 | (v75 != -1)))
            {
              v44 = v14;
            }

            v75 = v44;
            a5 = v64;
            a1 = v65;
            v15 = v63;
            if (!v45)
            {
              if (a6)
              {
                *a6 = v24;
                a6[1] = v25;
                v75 = v14;
              }
            }
          }

          ++v14;
          v13 = v73;
        }
      }

      ++v17;
    }

    while (v13 != v17);
    v13 = [a5 countByEnumeratingWithState:&v85 objects:v84 count:16];
  }

  while (v13);
  result = v75;
  if (v75 == -1)
  {
LABEL_72:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0xFFFFFFFFLL;
  }

  return result;
}

id csu_createSourceFormatDictFromDeviceFormat(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14)
{
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = [a3 objectForKeyedSubscript:{objc_msgSend(a2, "objectForKeyedSubscript:", @"CaptureStreamFormat"}];
  v21 = [objc_msgSend(a4 objectForKeyedSubscript:{@"deviceType", "intValue"}];
  v180 = a4;
  v22 = [objc_msgSend(a4 objectForKeyedSubscript:{@"position", "intValue"}];
  if (v21 > 0x14 || ((1 << v21) & 0x100420) == 0)
  {
    v23 = v21 - 21 < 0xFFFFFFFC;
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_24:
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v14, v167, v168, v169, v171, v172, v173);
    v235[0] = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_21:

    return 0;
  }

  v23 = 0;
  if (!v20)
  {
    goto LABEL_24;
  }

LABEL_4:
  v176 = v22;
  [v19 setObject:a1 forKeyedSubscript:?];
  v24 = 0x1E696A000uLL;
  v25 = off_1E798C9A0;
  v193 = a2;
  v211 = v20;
  v177 = v21;
  if ([a2 objectForKeyedSubscript:@"PixelFormatType"])
  {
    v26 = [a2 objectForKeyedSubscript:@"PixelFormatType"];
    v28 = FigCapturePixelFormatTypeFromPlistValue(v26, v27);
    if (v28)
    {
      goto LABEL_12;
    }
  }

  v29 = 1278226488;
  if (v21 != 5)
  {
    if (v21 == 10)
    {
      v29 = 1785950320;
    }

    else if (v21 != 20)
    {
      if (v21 - 17 >= 4)
      {
        v28 = 875704438;
      }

      else
      {
        v28 = 875704422;
      }

LABEL_12:
      v30 = v28;
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v31 = *off_1E798C9A0;
      v32 = [objc_msgSend(v20 objectForKeyedSubscript:{*off_1E798C9A0), "allKeys"}];
      v33 = [v32 countByEnumeratingWithState:&v220 objects:v219 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v221;
        v36 = *off_1E798CB30;
        while (2)
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v221 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v38 = [objc_msgSend(objc_msgSend(v211 objectForKeyedSubscript:{v31), "objectForKeyedSubscript:", *(*(&v220 + 1) + 8 * i)), "objectForKeyedSubscript:", v36}];
            if ([v38 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v30)}])
            {
              v29 = v30;
              v24 = 0x1E696A000;
              a2 = v193;
              v20 = v211;
              v25 = off_1E798C9A0;
              goto LABEL_26;
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v220 objects:v219 count:16];
          if (v34)
          {
            continue;
          }

          break;
        }
      }

      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v14, v167, v168, v169, v171, v172, v173);
      goto LABEL_21;
    }
  }

LABEL_26:
  v178 = v23;
  v179 = v29;
  v40 = [*(v24 + 3480) numberWithUnsignedInt:?];
  v187 = *MEMORY[0x1E6966130];
  [v19 setObject:v40 forKeyedSubscript:?];
  v174 = *off_1E798C980;
  v175 = *off_1E798C988;
  v218[0] = *off_1E798C988;
  v218[1] = v174;
  v190 = *off_1E798C938;
  v191 = *off_1E798C930;
  v218[2] = *off_1E798C938;
  v218[3] = v191;
  v41 = *off_1E798D408;
  v186 = *off_1E798D3E8;
  v218[4] = *off_1E798D3E8;
  v188 = v41;
  v218[5] = v41;
  v42 = *off_1E798D3F0;
  v189 = *off_1E798D3F8;
  v218[6] = *off_1E798D3F8;
  v218[7] = v42;
  v43 = *off_1E798D400;
  v218[8] = *off_1E798D410;
  v218[9] = v43;
  v44 = *off_1E798C928;
  v218[10] = *off_1E798C940;
  v218[11] = v44;
  v45 = *off_1E798D3E0;
  v208 = *off_1E798D3D8;
  v218[12] = *off_1E798D3D8;
  v218[13] = v45;
  v46 = *off_1E798C958;
  v195 = *off_1E798C960;
  v218[14] = *off_1E798C960;
  v218[15] = v46;
  v47 = *off_1E798C950;
  v218[16] = *off_1E798C950;
  BWAddEntriesWithKeysFromDictionaryToDictionary(v20, [MEMORY[0x1E695DEC8] arrayWithObjects:v218 count:17], v19);
  v198 = *v25;
  v48 = [objc_msgSend(objc_msgSend(v20 "objectForKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798CA90), "objectForKeyedSubscript:", *off_1E798CA08}")];
  if (v48)
  {
    v49 = [v48 intValue];
    if (v49 == 144)
    {
      v50 = 288;
    }

    else
    {
      v50 = v49;
    }

    [v19 setObject:objc_msgSend(*(v24 + 3480) forKeyedSubscript:{"numberWithInt:", v50), 0x1F2180030}];
  }

  v51 = [objc_msgSend(v19 objectForKeyedSubscript:{v42), "BOOLValue"}];
  v52 = v51;
  if (v51)
  {
    v53 = 2;
  }

  else
  {
    v53 = 1;
  }

  if ([objc_msgSend(v19 objectForKeyedSubscript:{v208), "intValue"}] == v53)
  {
    [v19 setObject:0 forKeyedSubscript:v208];
  }

  if ([objc_msgSend(v19 objectForKeyedSubscript:{v45), "intValue"}] == v53)
  {
    [v19 setObject:0 forKeyedSubscript:v45];
  }

  if ([objc_msgSend(v19 objectForKeyedSubscript:{v46), "intValue"}] == v53)
  {
    [v19 setObject:0 forKeyedSubscript:v46];
  }

  if ((v52 & 1) == 0)
  {
    [v19 setObject:0 forKeyedSubscript:v42];
  }

  v194 = v45;
  if ([objc_msgSend(v19 objectForKeyedSubscript:{v47), "intValue"}] == 2)
  {
    [v19 setObject:0 forKeyedSubscript:v47];
  }

  v217[0] = 0x1F217E450;
  v217[1] = 0x1F217E5B0;
  v217[2] = 0x1F217E6F0;
  v217[3] = 0x1F217E710;
  v217[4] = 0x1F217E730;
  v217[5] = 0x1F217E750;
  v217[6] = 0x1F217E770;
  v217[7] = 0x1F217E790;
  v217[8] = 0x1F217E7B0;
  v217[9] = 0x1F217E7D0;
  v217[10] = 0x1F217E7F0;
  v217[11] = 0x1F217E810;
  v217[12] = 0x1F217E6B0;
  v217[13] = 0x1F217E6D0;
  v217[14] = 0x1F217EA90;
  v217[15] = 0x1F217EAB0;
  v217[16] = 0x1F217E4D0;
  v217[17] = 0x1F217F750;
  v217[18] = 0x1F217EB90;
  v217[19] = 0x1F217EBB0;
  v217[20] = 0x1F217EBD0;
  v217[21] = 0x1F217EA50;
  v217[22] = 0x1F217EA70;
  v217[23] = 0x1F217E4F0;
  v217[24] = 0x1F217E510;
  v217[25] = 0x1F217E530;
  v217[26] = 0x1F217E550;
  v217[27] = 0x1F217E570;
  v217[28] = 0x1F217E590;
  v217[29] = 0x1F217EC30;
  v217[30] = 0x1F217F690;
  v217[31] = 0x1F217E850;
  v217[32] = 0x1F217EF30;
  v217[33] = @"FrontHorizontalScaleFactor";
  v217[34] = 0x1F2180050;
  v217[35] = 0x1F217EC50;
  v217[36] = 0x1F217ED10;
  v217[37] = 0x1F217FE10;
  BWAddEntriesWithKeysFromDictionaryToDictionary(v211, [MEMORY[0x1E695DEC8] arrayWithObjects:v217 count:38], v19);
  v181 = *off_1E798D3C8;
  v216[0] = *off_1E798D3C8;
  v216[1] = @"Unsupported";
  v216[2] = 0x1F216B190;
  v216[3] = 0x1F216B1B0;
  v216[4] = 0x1F217E870;
  v216[5] = 0x1F217E890;
  v216[6] = 0x1F217E8B0;
  v216[7] = 0x1F217E8D0;
  v216[8] = 0x1F217E8F0;
  v216[9] = 0x1F217F090;
  v216[10] = 0x1F217FD10;
  v216[11] = 0x1F217FD30;
  v216[12] = 0x1F217FD50;
  v216[13] = 0x1F217FD70;
  v216[14] = 0x1F217FD90;
  v216[15] = 0x1F217FDB0;
  v216[16] = 0x1F217FDD0;
  v216[17] = 0x1F217FDF0;
  v216[18] = 0x1F217FE30;
  v216[19] = 0x1F217F0B0;
  v216[20] = 0x1F217F0F0;
  v216[21] = 0x1F217F330;
  v216[22] = 0x1F217F6D0;
  v216[23] = 0x1F217F810;
  v216[24] = 0x1F217F6F0;
  v216[25] = 0x1F217F710;
  v216[26] = 0x1F217F730;
  v216[27] = 0x1F217F750;
  v216[28] = 0x1F217F790;
  v216[29] = 0x1F217F770;
  v216[30] = 0x1F217F7B0;
  v216[31] = 0x1F217F850;
  v216[32] = 0x1F217E910;
  v216[33] = 0x1F217E930;
  v216[34] = 0x1F217ECD0;
  v216[35] = 0x1F217ECF0;
  v216[36] = 0x1F217ED50;
  v216[37] = 0x1F217FC70;
  v216[38] = 0x1F217E9B0;
  v216[39] = 0x1F217F110;
  v216[40] = 0x1F217E9F0;
  v216[41] = 0x1F217F130;
  v216[42] = 0x1F217F150;
  v216[43] = 0x1F217F170;
  v216[44] = 0x1F217F190;
  v216[45] = 0x1F217F1B0;
  v216[46] = 0x1F217F1D0;
  v216[47] = 0x1F2179A10;
  v216[48] = 0x1F217F1F0;
  v216[49] = 0x1F217F210;
  v216[50] = 0x1F217F230;
  v216[51] = 0x1F217F250;
  v216[52] = 0x1F217F270;
  v216[53] = 0x1F217F290;
  v216[54] = 0x1F217F2B0;
  v216[55] = 0x1F217F2D0;
  v216[56] = 0x1F217F2F0;
  v216[57] = 0x1F217F310;
  v216[58] = 0x1F217F350;
  v216[59] = 0x1F217F370;
  v216[60] = 0x1F217F390;
  v216[61] = 0x1F217F3B0;
  v216[62] = 0x1F217F3D0;
  v216[63] = 0x1F217FCF0;
  v216[64] = 0x1F217F410;
  v216[65] = 0x1F217F450;
  v216[66] = 0x1F217F470;
  v216[67] = 0x1F217F490;
  v216[68] = 0x1F217F4B0;
  v216[69] = 0x1F217F4D0;
  v216[70] = 0x1F217F4F0;
  v216[71] = 0x1F217F510;
  v216[72] = 0x1F217EC70;
  v216[73] = 0x1F217ED70;
  v216[74] = 0x1F217ED90;
  v216[75] = 0x1F217E970;
  v216[76] = 0x1F217E990;
  v216[77] = 0x1F217E830;
  v216[78] = 0x1F217E5F0;
  v216[79] = 0x1F217E610;
  v216[80] = 0x1F217EF90;
  v216[81] = 0x1F217E490;
  v216[82] = 0x1F217E670;
  v216[83] = 0x1F217E690;
  v216[84] = 0x1F217E9D0;
  v216[85] = 0x1F217E4B0;
  v216[86] = 0x1F217FE50;
  v216[87] = 0x1F217FE70;
  v216[88] = 0x1F217FCD0;
  v216[89] = 0x1F217E950;
  v216[90] = 0x1F217F570;
  v216[91] = 0x1F217F5D0;
  v216[92] = 0x1F217F590;
  v216[93] = 0x1F217F5B0;
  v216[94] = 0x1F217FE90;
  v216[95] = 0x1F217F630;
  v216[96] = 0x1F217F8B0;
  v216[97] = 0x1F217FC90;
  v216[98] = 0x1F217EE70;
  v216[99] = 0x1F217EA10;
  v216[100] = 0x1F217F3F0;
  v216[101] = 0x1F217F950;
  v216[102] = 0x1F217F970;
  v216[103] = 0x1F217FA10;
  v216[104] = 0x1F217FA30;
  v216[105] = 0x1F217FA50;
  v216[106] = 0x1F217FA90;
  v216[107] = 0x1F217FAF0;
  v216[108] = 0x1F217FB10;
  v216[109] = 0x1F217FB30;
  v216[110] = 0x1F217FB50;
  v216[111] = 0x1F217FF70;
  v216[112] = 0x1F217FF90;
  v216[113] = 0x1F217F870;
  v216[114] = 0x1F217F890;
  v216[115] = 0x1F217EB70;
  v216[116] = 0x1F217EF50;
  v216[117] = 0x1F217EF70;
  v216[118] = 0x1F217F050;
  v216[119] = 0x1F217F070;
  v216[120] = 0x1F217EBF0;
  v216[121] = 0x1F217FEB0;
  v216[122] = 0x1F217FEF0;
  v216[123] = 0x1F217FF10;
  v216[124] = 0x1F217FF30;
  v216[125] = 0x1F217FED0;
  v216[126] = 0x1F217EAD0;
  v216[127] = 0x1F217EAF0;
  v216[128] = 0x1F217EB10;
  v216[129] = 0x1F217F430;
  v216[130] = 0x1F2180070;
  v216[131] = 0x1F217ED30;
  v216[132] = 0x1F2180090;
  v216[133] = 0x1F217F6B0;
  v216[134] = 0x1F217FF50;
  v216[135] = 0x1F217F870;
  v216[136] = 0x1F217F890;
  v216[137] = 0x1F217FCB0;
  v216[138] = 0x1F21800B0;
  v216[139] = 0x1F217EB30;
  v216[140] = 0x1F21800D0;
  v216[141] = 0x1F21800F0;
  v216[142] = 0x1F2180110;
  v216[143] = 0x1F2180130;
  v216[144] = 0x1F217F7D0;
  v216[145] = 0x1F217F7F0;
  BWAddEntriesWithKeysFromDictionaryToDictionary(a2, [MEMORY[0x1E695DEC8] arrayWithObjects:v216 count:146], v19);
  if (FigCaptureSushiRawDNGDictionaryCreatedInGraph())
  {
    v54 = v178;
    v55 = 0x1E696A000;
    if (([objc_msgSend(a2 objectForKeyedSubscript:{0x1F217F570), "BOOLValue"}] & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v56 = [objc_msgSend(v19 objectForKeyedSubscript:{0x1F217E9B0), "BOOLValue"}];
    v184 = [v19 objectForKeyedSubscript:0x1F217E5B0];
    v57 = [objc_msgSend(v211 objectForKeyedSubscript:{0x1F217E6F0), "intValue"}] > 0 || objc_msgSend(objc_msgSend(v211, "objectForKeyedSubscript:", 0x1F217E710), "intValue") > 0;
    v58 = [objc_msgSend(v180 objectForKeyedSubscript:{@"deviceType", "intValue"}];
    v59 = v58 - 10;
    v60 = (v58 < 0xA) & (0x310u >> v58);
    v61 = [objc_msgSend(v180 objectForKeyedSubscript:{@"position", "intValue"}];
    v62 = [objc_msgSend(v193 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
    v63 = [objc_msgSend(v193 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}];
    if (v62 == 2592 && v63 == 1936)
    {
      v64 = 1;
      v65 = v184;
    }

    else
    {
      v65 = v184;
      v64 = v62 == 3264 && v63 == 2448 || v62 == 4032 && v63 == 3024;
    }

    if (v65)
    {
      v67 = 0;
    }

    else
    {
      v67 = v56;
    }

    v68 = v67 | v57 | v60;
    v54 = v178;
    v55 = 0x1E696A000uLL;
    a2 = v193;
    if ((v68 & 1) != 0 || v61 != 1 || v59 > 0xFFFFFFFC || !v64)
    {
      goto LABEL_73;
    }
  }

  v69 = [objc_msgSend(objc_msgSend(v211 objectForKeyedSubscript:{v198), "objectForKeyedSubscript:", *off_1E798CAB8), "objectForKeyedSubscript:", *off_1E798C710}];
  if (v69)
  {
    v70 = [v69 unsignedIntValue];
    v71 = [v211 objectForKeyedSubscript:*off_1E798C9A8];
    if (v70)
    {
      v72 = v71;
      [v19 setObject:objc_msgSend(*(v55 + 3480) forKeyedSubscript:{"numberWithUnsignedInt:", v70), 0x1F217F530}];
      if (v72)
      {
        [v19 setObject:v72 forKeyedSubscript:0x1F217F550];
      }
    }
  }

LABEL_73:
  v73 = [a2 objectForKeyedSubscript:0x1F217F5F0];
  if (v73)
  {
    [v19 setObject:objc_msgSend(*(v55 + 3480) forKeyedSubscript:{"numberWithUnsignedInt:", FigCapturePixelFormatTypeFromPlistValue(v73, v74)), 0x1F217F5F0}];
  }

  v75 = [a2 objectForKeyedSubscript:0x1F217F610];
  if (v75)
  {
    [v19 setObject:objc_msgSend(*(v55 + 3480) forKeyedSubscript:{"numberWithUnsignedInt:", FigCapturePixelFormatTypeFromPlistValue(v75, v76)), 0x1F217F610}];
  }

  if (([objc_msgSend(v180 objectForKeyedSubscript:{@"hasAutoFocus", "BOOLValue"}] & 1) == 0 && objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", 0x1F217EA90), "intValue"))
  {
    [v19 setObject:0 forKeyedSubscript:0x1F217EA90];
  }

  if (![v19 objectForKeyedSubscript:0x1F217EA90] && objc_msgSend(objc_msgSend(v180, "objectForKeyedSubscript:", @"hasAutoFocus"), "BOOLValue"))
  {
    [v19 setObject:&unk_1F2244410 forKeyedSubscript:0x1F217EA90];
  }

  if (a8 && [objc_msgSend(v19 objectForKeyedSubscript:{0x1F217EA90), "intValue"}] == 2)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217EAB0];
  }

  if ([objc_msgSend(v19 objectForKeyedSubscript:{0x1F217F0B0), "BOOLValue"}] && objc_msgSend(objc_msgSend(v180, "objectForKeyedSubscript:", @"stillImageNoiseReductionAndFusionScheme"), "intValue") <= 3)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217F0D0];
  }

  if (a7)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217EA30];
  }

  if ([a2 objectForKeyedSubscript:@"MaxFrameRateOverride"])
  {
    v77 = [objc_msgSend(a2 objectForKeyedSubscript:{@"MaxFrameRateOverride", "intValue"}];
    v78 = [objc_msgSend(v19 objectForKeyedSubscript:{v188), "intValue"}];
    v79 = [objc_msgSend(v19 objectForKeyedSubscript:{v189), "intValue"}];
    if (v77 >= v78 && v77 <= v79)
    {
      [v19 setObject:objc_msgSend(a2 forKeyedSubscript:{"objectForKeyedSubscript:", @"MaxFrameRateOverride", v189}];
    }
  }

  if ([a2 objectForKeyedSubscript:@"MinFrameRateOverride"])
  {
    v80 = [objc_msgSend(a2 objectForKeyedSubscript:{@"MinFrameRateOverride", "intValue"}];
    v81 = [objc_msgSend(v19 objectForKeyedSubscript:{v188), "intValue"}];
    v82 = [objc_msgSend(v19 objectForKeyedSubscript:{v189), "intValue"}];
    if (v80 >= v81 && v80 <= v82)
    {
      [v19 setObject:objc_msgSend(a2 forKeyedSubscript:{"objectForKeyedSubscript:", @"MinFrameRateOverride", v188}];
    }
  }

  [v180 objectForKeyedSubscript:@"localizedName"];
  v83 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
  v84 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}];
  v85 = [objc_msgSend(v211 objectForKeyedSubscript:{0x1F217E6F0), "intValue"}];
  if (!v85)
  {
    v85 = [objc_msgSend(v211 objectForKeyedSubscript:{@"SensorWidth", "intValue"}];
  }

  v86 = [objc_msgSend(v211 objectForKeyedSubscript:{0x1F217E710), "intValue"}];
  if (!v86)
  {
    v86 = [objc_msgSend(v211 objectForKeyedSubscript:{@"SensorHeight", "intValue"}];
  }

  v87 = [objc_msgSend(v211 objectForKeyedSubscript:{0x1F217E6B0), "intValue"}];
  if (!v87)
  {
    v87 = [objc_msgSend(v211 objectForKeyedSubscript:{v190), "intValue"}];
  }

  v88 = [objc_msgSend(v211 objectForKeyedSubscript:{0x1F217E6D0), "intValue"}];
  if (!v88)
  {
    v88 = [objc_msgSend(v211 objectForKeyedSubscript:{v191), "intValue"}];
  }

  if (!v87)
  {
    v87 = v85;
  }

  if (v88)
  {
    v89 = v88;
  }

  else
  {
    v89 = v86;
  }

  if (FigCapturePixelFormatIsPackedBayerRaw(v179))
  {
    v90 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F217F7D0), "intValue"}];
    v91 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F217F7F0), "intValue"}];
    if (!v90 || !v91 || v90 > v87 || v91 > v89)
    {
LABEL_227:
      csu_createSourceFormatDictFromDeviceFormat_cold_1(v91);
      goto LABEL_21;
    }
  }

  else
  {
    v91 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F217F6D0), "BOOLValue"}];
    if (v91)
    {
      if (v83 >= v87 || v84 >= v89)
      {
        goto LABEL_227;
      }
    }

    else if (v83 > v87 || v84 > v89)
    {
      goto LABEL_227;
    }
  }

  if ([objc_msgSend(a2 objectForKeyedSubscript:{0x1F217EA10), "BOOLValue"}])
  {
    v91 = [objc_msgSend(v211 objectForKeyedSubscript:{v195), "BOOLValue"}];
    if (!v91)
    {
      goto LABEL_227;
    }

    v92 = [objc_msgSend(v211 objectForKeyedSubscript:{v208), "intValue"}];
    v93 = v92 <= 1 ? 1 : v92;
    v94 = [objc_msgSend(v211 objectForKeyedSubscript:{v194), "intValue"}];
    v95 = v94 <= 1 ? 1 : v94;
    v91 = [objc_msgSend(v211 objectForKeyedSubscript:{v46), "intValue"}];
    v96 = v91 <= 1 ? 1 : v91;
    if (v96 != v95 || v96 != v93)
    {
      goto LABEL_227;
    }
  }

  obja = [a2 objectForKeyedSubscript:0x1F217EC70];
  v97 = 0x1E696A000;
  if ([obja count])
  {
    if ([objc_msgSend(a2 objectForKeyedSubscript:{@"ExperimentalSupportedDepthFormats", "BOOLValue"}])
    {
      [v19 setObject:MEMORY[0x1E695E0F0] forKeyedSubscript:0x1F217EC70];
    }

    else
    {
      v183 = [v19 objectForKeyedSubscript:v186];
      v182 = [v19 objectForKeyedSubscript:v188];
      v170 = v19;
      v192 = [v19 objectForKeyedSubscript:v189];
      v185 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obja, "count")}];
      v248 = 0u;
      v249 = 0u;
      v250 = 0u;
      v251 = 0u;
      v98 = [obja countByEnumeratingWithState:&v248 objects:&v245 count:16];
      if (v98)
      {
        v99 = v98;
        v100 = 0;
        v101 = 0;
        v102 = *v249;
        do
        {
          for (j = 0; j != v99; ++j)
          {
            if (*v249 != v102)
            {
              objc_enumerationMutation(obja);
            }

            v104 = [a6 objectForKeyedSubscript:*(*(&v248 + 1) + 8 * j)];
            v105 = [v104 objectForKeyedSubscript:0x1F216B190];
            if ([v105 intValue] > v101)
            {
              v101 = [v105 intValue];
            }

            v106 = [v104 objectForKeyedSubscript:0x1F217EC90];
            if ([v106 intValue] > v100)
            {
              v100 = [v106 intValue];
            }
          }

          v99 = [obja countByEnumeratingWithState:&v248 objects:&v245 count:16];
        }

        while (v99);
      }

      v243 = 0u;
      v244 = 0u;
      v241 = 0u;
      v242 = 0u;
      a2 = v193;
      v205 = [obja countByEnumeratingWithState:&v241 objects:&v240 count:16];
      if (v205)
      {
        v196 = *v242;
        do
        {
          for (k = 0; k != v205; ++k)
          {
            if (*v242 != v196)
            {
              objc_enumerationMutation(obja);
            }

            v212 = *(*(&v241 + 1) + 8 * k);
            v108 = [a6 objectForKeyedSubscript:?];
            if (v108)
            {
              v109 = v108;
              v110 = [MEMORY[0x1E695DF70] array];
              v111 = [v109 objectForKeyedSubscript:0x1F216B190];
              v112 = [v109 objectForKeyedSubscript:0x1F216B1B0];
              v113 = [v109 objectForKeyedSubscript:0x1F217EC90];
              if (v113)
              {
                v114 = v113;
              }

              else
              {
                v114 = v111;
              }

              v201 = v114;
              v115 = [v109 objectForKeyedSubscript:0x1F217ECB0];
              if (v115)
              {
                v116 = v115;
              }

              else
              {
                v116 = v112;
              }

              v200 = v116;
              v117 = [v109 objectForKeyedSubscript:0x1F217EE90];
              if (v117)
              {
                v118 = v117;
              }

              else
              {
                v118 = v111;
              }

              v119 = [v109 objectForKeyedSubscript:0x1F217EEB0];
              v209 = v112;
              if (v119)
              {
                v120 = v119;
              }

              else
              {
                v120 = v112;
              }

              v121 = [v109 objectForKeyedSubscript:@"MaxFrameRate"];
              v122 = v192;
              if (v121)
              {
                v122 = v121;
              }

              v199 = v122;
              v202 = [v109 objectForKeyedSubscript:0x1F217F2B0];
              v203 = [v109 objectForKeyedSubscript:0x1F217EEF0];
              v236 = 0u;
              v237 = 0u;
              v238 = 0u;
              v239 = 0u;
              v123 = [a5 countByEnumeratingWithState:&v236 objects:v235 count:16];
              if (v123)
              {
                v124 = v123;
                v125 = *v237;
                while (2)
                {
                  for (m = 0; m != v124; ++m)
                  {
                    if (*v237 != v125)
                    {
                      objc_enumerationMutation(a5);
                    }

                    v127 = *(*(&v236 + 1) + 8 * m);
                    if ([objc_msgSend(v127 objectForKeyedSubscript:{0x1F216B190), "isEqual:", v118}] && (objc_msgSend(objc_msgSend(v127, "objectForKeyedSubscript:", 0x1F216B1B0), "isEqual:", v120) & 1) != 0 || objc_msgSend(objc_msgSend(v127, "objectForKeyedSubscript:", 0x1F216B190), "isEqual:", v120) && objc_msgSend(objc_msgSend(v127, "objectForKeyedSubscript:", 0x1F216B1B0), "isEqual:", v118))
                    {
                      v128 = [v127 objectForKeyedSubscript:0x1F217EF10];
                      goto LABEL_184;
                    }
                  }

                  v124 = [a5 countByEnumeratingWithState:&v236 objects:v235 count:16];
                  if (v124)
                  {
                    continue;
                  }

                  break;
                }

                v128 = 0;
LABEL_184:
                a2 = v193;
              }

              else
              {
                v128 = 0;
              }

              isEqualToString = objc_msgSend_isEqualToString_(v212);
              v197 = [v111 intValue] >= 1 && objc_msgSend(v209, "intValue") > 0;
              if ([v109 objectForKeyedSubscript:@"DisparitySupported"])
              {
                [v110 addObject:&unk_1F22444A0];
                [v110 addObject:&unk_1F22444B8];
              }

              if ([v109 objectForKeyedSubscript:@"DepthSupported"])
              {
                [v110 addObject:&unk_1F22444D0];
                [v110 addObject:&unk_1F22444E8];
              }

              if ([v110 count])
              {
                v130 = [v110 firstObject];
                [v110 removeObject:v130];
                v224[0] = v187;
                v224[1] = 0x1F217EC10;
                *type = v130;
                v226 = v110;
                v224[2] = 0x1F217E430;
                v224[3] = 0x1F216B190;
                v227 = v212;
                v228 = v111;
                v224[4] = 0x1F216B1B0;
                v224[5] = v188;
                v229 = v209;
                v230 = v182;
                v224[6] = v189;
                v224[7] = v186;
                v231 = v199;
                v232 = v183;
                v224[8] = 0x1F217EC90;
                v224[9] = 0x1F217ECB0;
                v233 = v201;
                v234 = v200;
                v131 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", type, v224, 10)}];
                if ([v128 BOOLValue])
                {
                  [v131 setObject:v128 forKeyedSubscript:0x1F217EF10];
                }

                if (v197)
                {
                  [v131 setObject:v118 forKeyedSubscript:0x1F217EE90];
                  [v131 setObject:v120 forKeyedSubscript:0x1F217EEB0];
                }

                if ([v202 BOOLValue])
                {
                  [v131 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217F2B0];
                }

                if (isEqualToString)
                {
                  [v131 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217E490];
                }

                a2 = v193;
                if ([objc_msgSend(v193 objectForKeyedSubscript:{@"ExperimentalSupportedDepthFormats", "BOOLValue"}])
                {
                  [v131 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v181];
                }

                if ([v203 BOOLValue])
                {
                  [v131 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217EEF0];
                }

                [v185 addObject:v131];
              }
            }
          }

          v205 = [obja countByEnumeratingWithState:&v241 objects:&v240 count:16];
        }

        while (v205);
      }

      v19 = v170;
      [v170 setObject:v185 forKeyedSubscript:0x1F217EC70];
      v54 = v178;
      v97 = 0x1E696A000;
    }
  }

  if ([objc_msgSend(a2 objectForKeyedSubscript:{0x1F217F8B0), "BOOLValue"}])
  {
    v132 = [objc_msgSend(v19 objectForKeyedSubscript:{v189), "intValue"}];
    v133 = 0x1F217E6F0;
    v134 = 0x1F217E710;
    if (![v19 objectForKeyedSubscript:0x1F217E6F0] || !objc_msgSend(v19, "objectForKeyedSubscript:", 0x1F217E710))
    {
      v134 = v174;
      v133 = v175;
    }

    v135 = [objc_msgSend(v19 objectForKeyedSubscript:{v133), "intValue"}];
    v136 = [objc_msgSend(v19 objectForKeyedSubscript:{v134), "intValue"}];
    if ([v19 objectForKeyedSubscript:0x1F217E850])
    {
      v137 = v19;
      v138 = @"FESBinningFactorHorizontal";
    }

    else
    {
      if (![v19 objectForKeyedSubscript:@"FrontHorizontalScaleFactor"])
      {
        v139 = v54;
        v140 = 1;
LABEL_219:
        v141 = v136 * v135;
        if (![v180 objectForKeyedSubscript:@"synchronizedStreamUniqueIDs"] && !objc_msgSend(v180, "objectForKeyedSubscript:", @"unsynchronizedStreamUniqueIDs"))
        {
          v142 = [v180 objectForKeyedSubscript:@"SensorPowerConsumption"];
          v215 = [objc_msgSend(v142 objectForKeyedSubscript:{@"SensorWidth", "intValue"}];
          v213 = [objc_msgSend(v142 objectForKeyedSubscript:{@"SensorHeight", "intValue"}];
          v143 = [objc_msgSend(v142 objectForKeyedSubscript:{@"BasePower", "intValue"}];
          [objc_msgSend(v142 objectForKeyedSubscript:{@"PowerPerFramePerSecond", "floatValue"}];
          v145 = v143;
          if (v215 && v213 && v143 && v144 != 0.0)
          {
            v146 = (v141 / (v213 * v215)) * v144;
            [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), 0x1F217F8F0}];
            *&v147 = v146;
            [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v147), 0x1F217F910}];
            a2 = v193;
          }

          else
          {
            a2 = v193;
            if (v142)
            {
              [v142 count];
            }
          }
        }

        v148 = v135 / v140 * v136 * v132;
        v149 = v141 * v132;
        v247 = 0;
        v245 = 0u;
        v246 = 0u;
        ISPHardwareCharacteristics = FigCapturePlatformGetISPHardwareCharacteristics(&v245);
        v151 = 1000000 * v245 * DWORD2(v245);
        v152 = 1000000 * v246 * DWORD2(v246);
        if ((v149 / v151) <= (v148 / v152))
        {
          v153 = v148 / v152;
        }

        else
        {
          v153 = v149 / v151;
        }

        *&ISPHardwareCharacteristics = v153 / v132;
        v97 = 0x1E696A000uLL;
        [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", ISPHardwareCharacteristics), 0x1F217F8D0}];
        v154 = [objc_msgSend(v19 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
        v155 = [objc_msgSend(v19 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}] * v154;
        v156 = (((2 * v149) << [objc_msgSend(v19 objectForKeyedSubscript:{0x1F217E5D0), "BOOLValue"}]) / 0x100000 + 3 * v132 * v155 / 0x200000) * 0.1;
        *&v156 = (v156 + (v153 * v247)) / v132;
        [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v156), 0x1F217F930}];
        v54 = v139;
        goto LABEL_234;
      }

      v138 = @"FrontHorizontalScaleFactor";
      v137 = v19;
    }

    v139 = v54;
    v140 = [objc_msgSend(v137 objectForKeyedSubscript:{v138), "intValue"}];
    goto LABEL_219;
  }

LABEL_234:
  v157 = [objc_msgSend(v19 objectForKeyedSubscript:{0x1F217F950), "BOOLValue"}];
  v158 = [objc_msgSend(v19 objectForKeyedSubscript:{0x1F217F970), "BOOLValue"}];
  if ((v157 & 1) != 0 || (v158 & 1) != 0 || v177 == 14)
  {
    [v19 setObject:a11 forKeyedSubscript:0x1F217F9D0];
    [a11 setObject:objc_msgSend(v19 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B190), 0x1F217FA10}];
    [a11 setObject:objc_msgSend(v19 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B1B0), 0x1F217FA30}];
  }

  if ([objc_msgSend(v19 objectForKeyedSubscript:{0x1F217FA90), "BOOLValue"}])
  {
    [v19 setObject:a14 forKeyedSubscript:0x1F217FAB0];
    [a14 setObject:objc_msgSend(v19 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B190), 0x1F217FAF0}];
    [a14 setObject:objc_msgSend(v19 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B1B0), 0x1F217FB10}];
  }

  if ([v19 objectForKeyedSubscript:0x1F217EB70])
  {
    [v19 setObject:a12 forKeyedSubscript:0x1F217EB50];
  }

  if ([v19 objectForKeyedSubscript:0x1F217FE30])
  {
    [v19 setObject:a13 forKeyedSubscript:0x1F217FE30];
    [v19 setObject:objc_msgSend(a13 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F217FE10), 0x1F217FE10}];
  }

  if (v54 && [a9 objectForKeyedSubscript:@"BackgroundBlurSupported"] && objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", 0x1F216B190), "intValue") <= 1920 && objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", 0x1F216B1B0), "intValue") <= 1920 && (FigCapturePixelFormatIsTenBit(v179) & 1) == 0)
  {
    if (v176 == 2)
    {
      v159 = FigCaptureSourceFormatKey_BackgroundBlurSupported;
      goto LABEL_255;
    }

    if (v176 == 1 && v177 <= 8 && ((1 << v177) & 0x184) != 0)
    {
      v159 = FigCaptureSourceFormatKey_BackgroundBlurSupportedForContinuityCapture;
LABEL_255:
      [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v159];
    }
  }

  v160 = [a2 objectForKeyedSubscript:0x1F217F830];
  if (v160)
  {
    [v19 setObject:objc_msgSend(*(v97 + 3480) forKeyedSubscript:{"numberWithInt:", FigCaptureVideoStabilizationStrengthStringToEnum(v160, v161)), 0x1F217F830}];
  }

  if (!v54)
  {
    goto LABEL_292;
  }

  if ([a9 objectForKeyedSubscript:@"StudioLightingSupported"] && objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", 0x1F216B190), "intValue") <= 1920 && objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", 0x1F216B1B0), "intValue") <= 1920 && (FigCapturePixelFormatIsTenBit(v179) & 1) == 0)
  {
    if (v176 == 2)
    {
      v162 = FigCaptureSourceFormatKey_StudioLightingSupported;
      goto LABEL_269;
    }

    if (v176 == 1 && v177 <= 8 && ((1 << v177) & 0x184) != 0)
    {
      v162 = FigCaptureSourceFormatKey_StudioLightingSupportedForContinuityCapture;
LABEL_269:
      [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v162];
    }
  }

  if ([a9 objectForKeyedSubscript:@"ReactionEffectsSupported"] && objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", 0x1F216B190), "intValue") <= 1920 && objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", 0x1F216B1B0), "intValue") <= 1920 && (FigCapturePixelFormatIsTenBit(v179) & 1) == 0)
  {
    if (v176 == 2)
    {
      v163 = FigCaptureSourceFormatKey_ReactionEffectsSupported;
      goto LABEL_280;
    }

    if (v176 == 1 && v177 - 2 <= 7 && ((0xE1u >> (v177 - 2)) & 1) != 0)
    {
      v163 = FigCaptureSourceFormatKey_ReactionEffectsSupportedForContinuityCapture;
LABEL_280:
      [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v163];
    }
  }

  if (![a9 objectForKeyedSubscript:@"BackgroundReplacementSupported"] || objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", 0x1F216B190), "intValue") > 1920 || objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", 0x1F216B1B0), "intValue") > 1920 || (FigCapturePixelFormatIsTenBit(v179) & 1) != 0)
  {
    goto LABEL_292;
  }

  if (v176 == 2)
  {
    v164 = MEMORY[0x1E695E110];
    v165 = FigCaptureSourceFormatKey_BackgroundReplacementSupported;
  }

  else
  {
    if (v176 != 1 || v177 > 8 || ((1 << v177) & 0x184) == 0)
    {
      goto LABEL_292;
    }

    v164 = MEMORY[0x1E695E118];
    v165 = FigCaptureSourceFormatKey_BackgroundReplacementSupportedForContinuityCapture;
  }

  [v19 setObject:v164 forKeyedSubscript:*v165];
LABEL_292:
  if ([objc_msgSend(v19 objectForKeyedSubscript:{v187), "unsignedIntValue"}] == 2016686642)
  {
    if ([objc_msgSend(a9 objectForKeyedSubscript:{@"AppleLogSupportedForProRes", "BOOLValue"}])
    {
      [v19 setObject:objc_msgSend(*(v97 + 3480) forKeyedSubscript:{"numberWithBool:", 1), 0x1F217FFF0}];
    }

    if ([objc_msgSend(a9 objectForKeyedSubscript:{@"AppleLog2SupportedForProRes", "BOOLValue"}])
    {
      [v19 setObject:objc_msgSend(*(v97 + 3480) forKeyedSubscript:{"numberWithBool:", 1), 0x1F2180010}];
    }

    if ([objc_msgSend(a9 objectForKeyedSubscript:{@"10BitVideoHDRSupportedForProRes", "BOOLValue"}])
    {
      [v19 setObject:objc_msgSend(a9 forKeyedSubscript:{"objectForKeyedSubscript:", @"10BitVideoHDRSupportedForProRes", 0x1F217FFD0}];
    }

    if ([v19 objectForKeyedSubscript:0x1F217FF70])
    {
      [v19 setObject:0 forKeyedSubscript:0x1F217FF70];
    }
  }

  else
  {
    [v19 objectForKeyedSubscript:0x1F217FF70];
  }

  if ([objc_msgSend(v19 objectForKeyedSubscript:{0x1F217F210), "BOOLValue"}] && objc_msgSend(objc_msgSend(a9, "objectForKeyedSubscript:", @"SemanticRenderingVersion"), "intValue") >= 3 && (objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", 0x1F217F270), "BOOLValue") & 1) == 0)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217F230];
  }

  if ([objc_msgSend(a9 objectForKeyedSubscript:{@"SmartStyleRenderingVersion", "intValue"}] >= 1)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217F290];
  }

  if (v54 && [objc_msgSend(a10 objectForKeyedSubscript:{@"ISPMotionData", "BOOLValue"}] && objc_msgSend(a9, "objectForKeyedSubscript:", @"LensSmudgeDetectionSupported") && ((FigCapturePixelFormatIsBGRA(v179) & 1) != 0 || FigCapturePixelFormatIsYCbCr(v179)) && (FigCapturePixelFormatIsTenBit(v179) & 1) == 0 && (FigCapturePixelFormatIs16Bit(v179) & 1) == 0 && objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", 0x1F216B190), "intValue") >= 1080 && objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", 0x1F216B1B0), "intValue") >= 1080)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217F6B0];
  }

  return v19;
}

void *csu_pruneDictionaryToJustKeys(void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(a1, "allKeys")}];
  [v4 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", a2)}];
  [a1 removeObjectsForKeys:{objc_msgSend(v4, "allObjects")}];
  return a1;
}

void __bwvdic_monocularVideoPipelineForNetworkDimensions_block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(getADMonocularVideoPipelineParametersClass()) init];
  [v2 setRequestedDimensions:{objc_msgSend(getADImageDimensionsClass(), "imageDimensionsWithWidth:height:", *(a1 + 40), *(a1 + 44))}];
  v3 = [objc_alloc(getADMonocularVideoPipelineClass()) initWithParameters:v2];
  v4 = [v3 inferenceDescriptor];
  NSSelectorFromString(&cfstr_Outputscale.isa);
  if (objc_opt_respondsToSelector())
  {
    v5 = [objc_msgSend(v4 performSelector:{NSSelectorFromString(&cfstr_Outputscale.isa)), "imageDescriptor"}];
    if (!v5)
    {
      __bwvdic_monocularVideoPipelineForNetworkDimensions_block_invoke_cold_3();
      goto LABEL_8;
    }

    v6 = v5;
    if ([objc_msgSend(v5 "dimensions")] != 1 || objc_msgSend(objc_msgSend(v6, "dimensions"), "height") != 1)
    {
      __bwvdic_monocularVideoPipelineForNetworkDimensions_block_invoke_cold_1();
      goto LABEL_8;
    }

    if ([v6 pixelFormat] != 1278226536)
    {
      __bwvdic_monocularVideoPipelineForNetworkDimensions_block_invoke_cold_2();
      goto LABEL_8;
    }

    v7 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v7 setSupportedPixelFormats:&unk_1F2248958];
    [(BWVideoFormatRequirements *)v7 setWidth:1];
    [(BWVideoFormatRequirements *)v7 setHeight:1];
    v19 = v7;
    *(*(a1 + 32) + 56) = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1]);
  }

  v8 = [objc_msgSend(v4 "disparityOutput")];
  v9 = *(a1 + 32);
  v10 = [objc_msgSend(v8 "dimensions")];
  v11 = [objc_msgSend(v8 "dimensions")];
  *(v9 + 8) = v10;
  *(v9 + 12) = v11;
  *(*(a1 + 32) + 16) = *(*(a1 + 32) + 8);
  *(*(a1 + 32) + 24) = [v8 pixelFormat];
  v12 = [objc_msgSend(v4 "depthFeaturesOutput")];
  v13 = *(a1 + 32);
  v14 = [objc_msgSend(v12 "dimensions")];
  v15 = [objc_msgSend(v12 "dimensions")];
  *(v13 + 28) = v14;
  *(v13 + 32) = v15;
  *(*(a1 + 32) + 36) = [v12 pixelFormat];
  v16 = [objc_msgSend(v4 "colorFeaturesOutput")];
  v17 = *(a1 + 32);
  LODWORD(v12) = [objc_msgSend(v16 "dimensions")];
  v18 = [objc_msgSend(v16 "dimensions")];
  *(v17 + 40) = v12;
  *(v17 + 44) = v18;
  *(*(a1 + 32) + 48) = [v16 pixelFormat];
LABEL_8:
}

void man_maProcessorOutputReadyCallback(uint64_t a1, uint64_t a2, void *target)
{
  if (a2)
  {
    [*(a1 + 160) logErrorNumber:a2 errorString:@"SBP output callback"];
  }

  if (target)
  {
    v5 = *(a1 + 144);
    if (v5)
    {
      [v5 emitSampleBuffer:target];
    }

    if (*(a1 + 152))
    {
      v6 = CMGetAttachment(target, *off_1E798A3C8, 0);
      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
        v8 = 0;
        v9 = *off_1E798D180;
        v20.value = *off_1E798B540;
        *&v20.timescale = v9;
        v10 = *off_1E798B328;
        v20.epoch = *off_1E798B2A8;
        v21 = v10;
        v11 = *off_1E798D168;
        v22 = *off_1E798D1B0;
        v23 = v11;
        v12 = *off_1E798D188;
        v24 = *off_1E798D190;
        v25 = v12;
        v13 = *off_1E798B3D8;
        v26 = *off_1E798D1C8;
        v27 = v13;
        v14 = *off_1E798B208;
        v28 = *off_1E798B6B0;
        v29 = v14;
        v15 = *off_1E798D198;
        v30 = *off_1E798B5D8;
        v31 = v15;
        do
        {
          v16 = *(&v20.value + v8);
          v17 = [v6 objectForKeyedSubscript:v16];
          if (v17)
          {
            [v7 setObject:v17 forKeyedSubscript:v16];
          }

          v8 += 8;
        }

        while (v8 != 112);
        if ([v7 count])
        {
          memset(&sampleTimingArray.presentationTimeStamp, 0, 48);
          *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
          sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
          CMSampleBufferGetPresentationTimeStamp(&sampleTimingArray.presentationTimeStamp, target);
          sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
          targeta = 0;
          v6 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &targeta);
          if (targeta && !v6)
          {
            CMSetAttachment(targeta, *off_1E798A418, v7, 1u);
            [*(a1 + 152) emitSampleBuffer:targeta];
            CFRelease(targeta);

            return;
          }
        }

        else
        {

          v6 = 0;
        }
      }

      memset(&v20, 0, sizeof(v20));
      CMSampleBufferGetPresentationTimeStamp(&v20, target);
      [*(a1 + 160) logErrorNumber:v6 errorString:@"SBP output callback create offline sample buffer"];
      sampleTimingArray.duration = v20;
      [*(a1 + 152) emitDroppedSample:{+[BWDroppedSample newDroppedSampleWithReason:pts:](BWDroppedSample, "newDroppedSampleWithReason:pts:", 0x1F219BFD0, &sampleTimingArray)}];
    }
  }
}

void dmc_attachMetadataDictToSampleBufferAndPixelBufferAndCleanupPrivateCaptureStreamAttachments(opaqueCMSampleBuffer *a1, const void *a2)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  v5 = *off_1E798A3C8;
  CMSetAttachment(a1, *off_1E798A3C8, a2, 1u);
  v6 = CVBufferCopyAttachments(ImageBuffer, kCVAttachmentMode_ShouldPropagate);
  if (v6)
  {
    v6 = CFAutorelease(v6);
  }

  CFDictionaryApplyFunction(v6, dmc_removeAttachmentFromPixelBufferIfPrivate, ImageBuffer);

  CMSetAttachment(ImageBuffer, v5, a2, 1u);
}

void *BWFilterDetectedObjectsInfoUsingSet(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = [MEMORY[0x1E695DF70] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (([a2 containsObject:v9] & 1) == 0)
          {
            [v4 addObject:v9];
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v6);
    }

    return [v3 removeObjectsForKeys:v4];
  }

  return result;
}

uint64_t BWDetectedFacesRemoveFacesFromSampleBuffer(const void *a1)
{
  v1 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v2 = *off_1E798B218;

  return [v1 removeObjectForKey:v2];
}

void *BWCreateCorrectedFacesArray(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  *&v23[16] = a8;
  *&v23[24] = a9;
  *v23 = a6;
  *&v23[8] = a7;
  v12 = [a1 count];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = [a1 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(a1);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          v30.origin.x = FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a2, a3, a4);
          width = v30.size.width;
          height = v30.size.height;
          v31 = CGRectIntersection(v30, *v23);
          if (v31.size.width * v31.size.height > width * height * 0.5)
          {
            v21 = [v18 mutableCopy];
            FigCFDictionarySetCGRect();
            if (FigCFDictionaryGetCGRectIfPresent())
            {
              FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a2, a3, a4);
              FigCFDictionarySetCGRect();
            }

            if (FigCFDictionaryGetCGRectIfPresent())
            {
              FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a2, a3, a4);
              FigCFDictionarySetCGRect();
            }

            [v13 addObject:v21];
          }
        }
      }

      v15 = [a1 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v15);
  }

  return v13;
}

void *BWCorrectRectanglesInDetectedObjectsInfo(void *a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [a1 allKeys];
  result = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
  v36 = result;
  if (result)
  {
    v35 = *v47;
    v34 = *off_1E798ACE8;
    v18 = *off_1E798B5C0;
    v39 = *off_1E798B470;
    v19 = *off_1E798B5D0;
    v32 = *off_1E798C2F8;
    do
    {
      v20 = 0;
      do
      {
        if (*v47 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v20;
        v21 = *(*(&v46 + 1) + 8 * v20);
        v22 = [objc_msgSend(a1 objectForKeyedSubscript:{v21), "objectForKeyedSubscript:", v34}];
        v23 = [MEMORY[0x1E695DF70] array];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v24 = [v22 countByEnumeratingWithState:&v41 objects:v40 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v42;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v42 != v26)
              {
                objc_enumerationMutation(v22);
              }

              v28 = *(*(&v41 + 1) + 8 * i);
              correctRectangleInDictionaryForKey(v28, v18, a2, a3, a4, a5, a6, a7, a8, a9);
              if (v29)
              {
                if (objc_msgSend_isEqualToString_(v21))
                {
                  correctRectangleInDictionaryForKey(v28, v39, a2, a3, a4, a5, a6, a7, a8, a9);
                  correctRectangleInDictionaryForKey(v28, v19, a2, a3, a4, a5, a6, a7, a8, a9);
                }
              }

              else
              {
                [v23 addObject:v28];
              }
            }

            v25 = [v22 countByEnumeratingWithState:&v41 objects:v40 count:16];
          }

          while (v25);
        }

        if ([v23 count])
        {
          [v22 removeObjectsInArray:v23];
        }

        if (objc_msgSend_isEqualToString_(v21))
        {
          v30 = [objc_msgSend(a1 objectForKeyedSubscript:{v21), "objectForKeyedSubscript:", v32}];
          if (v30)
          {
            correctRectangleInDictionaryForKey(v30, v18, a2, a3, a4, a5, a6, a7, a8, a9);
            if ((v31 & 1) == 0)
            {
              [a1 removeObjectForKey:v21];
            }
          }
        }

        v20 = v38 + 1;
      }

      while ((v38 + 1) != v36);
      result = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
      v36 = result;
    }

    while (result);
  }

  return result;
}

void correctRectangleInDictionaryForKey(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    v19.origin.x = FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a3, a4, a5);
    width = v19.size.width;
    height = v19.size.height;
    v21.origin.x = a7;
    v21.origin.y = a8;
    v21.size.width = a9;
    v21.size.height = a10;
    v20 = CGRectIntersection(v19, v21);
    if (v20.size.width * v20.size.height > width * height * 0.5)
    {
      FigCFDictionarySetCGRect();
    }
  }
}

void *BWCreateTransformedFacesArray(void *a1, _OWORD *a2, int a3, int a4)
{
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v6 = *(MEMORY[0x1E695F058] + 16);
  v23.origin = *MEMORY[0x1E695F058];
  v23.size = v6;
  v22.origin = v23.origin;
  v22.size = v6;
  v21.origin = v23.origin;
  v21.size = v6;
  v20 = 0;
  v19 = 0;
  if ([a1 count])
  {
    v7 = 0;
    do
    {
      [a1 objectAtIndexedSubscript:v7];
      if (FigCFDictionaryGetCGRectIfPresent())
      {
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        v9 = a2[1];
        *&v18.a = *a2;
        *&v18.c = v9;
        *&v18.tx = a2[2];
        CGRectApplyAffineTransform(v23, &v18);
        FigCFDictionarySetCGRect();
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          v10 = a2[1];
          *&v18.a = *a2;
          *&v18.c = v10;
          *&v18.tx = a2[2];
          CGRectApplyAffineTransform(v22, &v18);
          FigCFDictionarySetCGRect();
        }

        if (FigCFDictionaryGetCGRectIfPresent())
        {
          v11 = a2[1];
          *&v18.a = *a2;
          *&v18.c = v11;
          *&v18.tx = a2[2];
          CGRectApplyAffineTransform(v21, &v18);
          FigCFDictionarySetCGRect();
        }

        if (FigCFDictionaryGetInt32IfPresent())
        {
          v12 = HIDWORD(v20);
          if (a4)
          {
            v12 = -HIDWORD(v20);
          }

          FigCaptureNormalizeAngle(v12 + a3);
          FigCFDictionarySetInt32();
        }

        if (FigCFDictionaryGetInt32IfPresent())
        {
          if (a4)
          {
            v13 = -v20;
          }

          else
          {
            v13 = v20;
          }

          FigCaptureNormalizeAngle(v13);
          FigCFDictionarySetInt32();
        }

        if (FigCFDictionaryGetInt32IfPresent())
        {
          FigCaptureNormalizeAngle(v19);
          FigCFDictionarySetInt32();
        }

        [v16 addObject:MutableCopy];
        CFRelease(MutableCopy);
      }

      ++v7;
    }

    while ([a1 count] > v7);
  }

  return v16;
}

void *BWCreateCorrectedDetectedObjectsArray(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  *&v24[16] = a8;
  *&v24[24] = a9;
  *v24 = a6;
  *&v24[8] = a7;
  v12 = [a1 count];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = [a1 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(a1);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          v30.origin.x = FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a2, a3, a4);
          width = v30.size.width;
          height = v30.size.height;
          v31 = CGRectIntersection(v30, *v24);
          if (v31.size.width * v31.size.height > width * height * 0.5)
          {
            v21 = [v18 mutableCopy];
            FigCFDictionarySetCGRect();
            [v13 addObject:v21];
          }
        }
      }

      v15 = [a1 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v15);
  }

  return v13;
}

uint64_t BWCreateSampleBufferFromSemanticMasksDictionary(void *a1, __int128 *a2, const void *a3, void *a4)
{
  v35[0] = 0;
  *a4 = 0;
  if (!a1)
  {
    BWCreateSampleBufferFromSemanticMasksDictionary_cold_3(0, a2);
    return 4294954516;
  }

  v34 = *a2;
  v7 = mscsnu_createSampleBufferWithPTS(&v34, v35);
  if (v7)
  {
    v21 = v7;
    BWCreateSampleBufferFromSemanticMasksDictionary_cold_1(v7, v35, &v34);
    value = v34.value;
    if (!v34.value)
    {
      return v21;
    }

    goto LABEL_23;
  }

  v23 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v25 = *off_1E798B540;
  [v8 setObject:a3 forKeyedSubscript:?];
  value = v35[0];
  v10 = *off_1E798A3C8;
  CMSetAttachment(v35[0], *off_1E798A3C8, v8, 1u);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = [a1 countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    allocator = *MEMORY[0x1E695E480];
LABEL_5:
    v14 = 0;
    while (1)
    {
      if (*v31 != v13)
      {
        objc_enumerationMutation(a1);
      }

      v15 = *(*(&v30 + 1) + 8 * v14);
      target = 0;
      v16 = [a1 objectForKeyedSubscript:v15];
      cf = 0;
      v34 = *a2;
      v17 = BWSampleBufferCreateFromPixelBuffer(v16, &v34, &cf, &target);
      if (v17)
      {
        break;
      }

      v18 = CVBufferCopyAttachment(v16, v10, 0);
      if (v18)
      {
        v19 = CFAutorelease(v18);
        if (v19)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, v19);
          CFDictionarySetValue(MutableCopy, v25, a3);
          CMSetAttachment(target, v10, MutableCopy, 1u);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          CMRemoveAttachment(v16, v10);
        }
      }

      BWSampleBufferSetAttachedMedia(value, v15, target);
      if (target)
      {
        CFRelease(target);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v12 == ++v14)
      {
        v12 = [a1 countByEnumeratingWithState:&v30 objects:v29 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        goto LABEL_20;
      }
    }

    v21 = v17;
    BWCreateSampleBufferFromSemanticMasksDictionary_cold_2(v17, &cf, &target);
    if (!value)
    {
      return v21;
    }

LABEL_23:
    CFRelease(value);
    return v21;
  }

LABEL_20:
  v21 = 0;
  *v23 = value;
  return v21;
}

uint64_t mscsnu_createSampleBufferWithPTS(CMTime *a1, void *a2)
{
  v8 = 0;
  *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
  sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
  sampleTimingArray.presentationTimeStamp = *a1;
  sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
  v3 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v8);
  v4 = v8;
  if (!v3)
  {
    if (v8)
    {
      v5 = CFRetain(v8);
      v4 = v8;
    }

    else
    {
      v5 = 0;
    }

    *a2 = v5;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

uint64_t BWCreateSampleBufferWithDetectedObjectsInfo(uint64_t a1, CMTime *a2, uint64_t a3, void *a4)
{
  v12 = *a2;
  target = 0;
  v7 = mscsnu_createSampleBufferWithPTS(&v12, &target);
  v8 = v7;
  if (v7)
  {
    BWCreateSampleBufferWithDetectedObjectsInfo_cold_1(v7);
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a3];
    [v9 setObject:a1 forKeyedSubscript:*off_1E798B220];
    v10 = target;
    CMSetAttachment(target, *off_1E798A3C8, v9, 1u);
    *a4 = v10;
  }

  return v8;
}

uint64_t BWCreateSampleBufferWithEyeReliefResultDictionary(const void *a1, CMTime *a2, const void *a3, void *a4)
{
  v11 = *a2;
  target = 0;
  v7 = mscsnu_createSampleBufferWithPTS(&v11, &target);
  v8 = v7;
  if (v7)
  {
    BWCreateSampleBufferWithEyeReliefResultDictionary_cold_1(v7);
  }

  else
  {
    v9 = target;
    CMSetAttachment(target, *off_1E798A368, a1, 1u);
    CMSetAttachment(v9, *off_1E798A3C8, a3, 1u);
    *a4 = v9;
  }

  return v8;
}

uint64_t BWCreateSampleBufferWithTrackedFacesDictionary(const void *a1, CMTime *a2, const void *a3, void *a4)
{
  v11 = *a2;
  target = 0;
  v7 = mscsnu_createSampleBufferWithPTS(&v11, &target);
  v8 = v7;
  if (v7)
  {
    BWCreateSampleBufferWithTrackedFacesDictionary_cold_1(v7);
  }

  else
  {
    v9 = target;
    CMSetAttachment(target, *off_1E798A510, a1, 1u);
    CMSetAttachment(v9, *off_1E798A3C8, a3, 1u);
    *a4 = v9;
  }

  return v8;
}

uint64_t BWCreateSampleBufferWithFaceIDReadinessDictionary(const void *a1, CMTime *a2, const void *a3, void *a4)
{
  v11 = *a2;
  target = 0;
  v7 = mscsnu_createSampleBufferWithPTS(&v11, &target);
  v8 = v7;
  if (v7)
  {
    BWCreateSampleBufferWithFaceIDReadinessDictionary_cold_1(v7);
  }

  else
  {
    v9 = target;
    CMSetAttachment(target, *off_1E798A370, a1, 1u);
    CMSetAttachment(v9, *off_1E798A3C8, a3, 1u);
    *a4 = v9;
  }

  return v8;
}

uint64_t BWCreateSampleBufferWithMotionToWakeDictionary(const void *a1, CMTime *a2, const void *a3, void *a4)
{
  v11 = *a2;
  target = 0;
  v7 = mscsnu_createSampleBufferWithPTS(&v11, &target);
  v8 = v7;
  if (v7)
  {
    BWCreateSampleBufferWithMotionToWakeDictionary_cold_1(v7);
  }

  else
  {
    v9 = target;
    CMSetAttachment(target, *off_1E798A3D0, a1, 1u);
    CMSetAttachment(v9, *off_1E798A3C8, a3, 1u);
    *a4 = v9;
  }

  return v8;
}

BOOL BWIsStillImageSampleBuffer(const void *a1, _BYTE *a2)
{
  v3 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v4 = v3;
  if (a2)
  {
    *a2 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  if (![objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}])
  {
    return [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}] || (objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", *off_1E798B350), "BOOLValue") & 1) != 0;
  }

  result = 1;
  if (a2)
  {
    *a2 = 1;
  }

  return result;
}

void dmc_removeAttachmentFromPixelBufferIfPrivate(const __CFString *cf2, uint64_t a2, const void *a3)
{
  v5 = 0;
  v6 = *MEMORY[0x1E6965D88];
  v12[0] = *MEMORY[0x1E6965D00];
  v12[1] = v6;
  v7 = *MEMORY[0x1E6966198];
  v12[2] = *MEMORY[0x1E6965F98];
  v12[3] = v7;
  v8 = *MEMORY[0x1E69661D8];
  v12[4] = *MEMORY[0x1E69661E0];
  v12[5] = v8;
  v9 = *MEMORY[0x1E69661D0];
  v12[6] = *MEMORY[0x1E69661C8];
  v12[7] = v9;
  v10 = *MEMORY[0x1E69661B8];
  v12[8] = *MEMORY[0x1E69661A8];
  v12[9] = v10;
  v11 = *MEMORY[0x1E69661F8];
  v12[10] = *MEMORY[0x1E69661A0];
  v12[11] = v11;
  v12[12] = *MEMORY[0x1E6965F30];
  while (!CFEqual(v12[v5], cf2))
  {
    if (++v5 == 13)
    {

      CMRemoveAttachment(a3, cf2);
      return;
    }
  }
}

uint64_t bweis_storageTypeLengthInBytes(int a1)
{
  result = 4;
  if (a1 <= 131079)
  {
    if (a1 == 65552)
    {
      return 2;
    }

    if (a1 != 65568)
    {
      return 0;
    }
  }

  else
  {
    if (a1 == 131080)
    {
      return 1;
    }

    if (a1 != 131104)
    {
      return a1 == 262152;
    }
  }

  return result;
}

uint64_t bweis_storageLengthInBytes(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = 4;
  if (v1 <= 131079)
  {
    if (v1 == 65552)
    {
      v2 = 2;
      return *(a1 + 104) * *(a1 + 112) * *(a1 + 96) * *(a1 + 88) * *(a1 + 80) * v2;
    }

    if (v1 != 65568)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v1 == 131080)
    {
LABEL_5:
      v2 = 1;
      return *(a1 + 104) * *(a1 + 112) * *(a1 + 96) * *(a1 + 88) * *(a1 + 80) * v2;
    }

    if (v1 != 131104)
    {
      if (v1 == 262152)
      {
        goto LABEL_5;
      }

LABEL_8:
      v2 = 0;
    }
  }

  return *(a1 + 104) * *(a1 + 112) * *(a1 + 96) * *(a1 + 88) * *(a1 + 80) * v2;
}

void sub_1ACAE0CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACAE0FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACAE1964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t CMIOExtensionFigCaptureDeviceCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ([*(DerivedStorage + 40) objectForKey:a2])
  {
    if (FigCFEqual())
    {
      v7 = *(DerivedStorage + 40);
      if (v7)
      {
LABEL_16:
        v7 = CFRetain(v7);
      }
    }

    else if (FigCFEqual())
    {
      v7 = [*(DerivedStorage + 8) copy];
    }

    else if (FigCFEqual())
    {
      v7 = *(DerivedStorage + 32);
      if (v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!FigCFEqual())
      {
        if (FigCFEqual())
        {
          v21 = 0;
          v22 = &v21;
          v23 = 0x3052000000;
          v24 = __Block_byref_object_copy__24;
          v25 = __Block_byref_object_dispose__24;
          v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
          dispatch_assert_queue_not_V2(*(DerivedStorage + 48));
          v10 = *(DerivedStorage + 48);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke;
          block[3] = &unk_1E798FC10;
          block[4] = &v21;
          block[5] = DerivedStorage;
          dispatch_async_and_wait(v10, block);
          *a4 = *(v22 + 5);
        }

        else
        {
          v11 = cmioefcd_cmioExtensionPropertyForDevicePropertyKey(a2);
          if (v11)
          {
            v12 = v11;
          }

          else
          {
            v12 = a2;
          }

          dispatch_assert_queue_not_V2(*(DerivedStorage + 48));
          v21 = 0;
          v22 = &v21;
          v23 = 0x2020000000;
          LOBYTE(v24) = 1;
          v13 = dispatch_semaphore_create(0);
          v14 = objc_alloc(MEMORY[0x1E695DFD8]);
          v19 = v12;
          v15 = [v14 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v19, 1)}];
          v16 = *(DerivedStorage + 48);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_4;
          v18[3] = &unk_1E7998278;
          v18[8] = DerivedStorage;
          v18[9] = v12;
          v18[6] = &v21;
          v18[7] = &v27;
          v18[10] = a4;
          v18[4] = v15;
          v18[5] = v13;
          dispatch_async(v16, v18);
          v17 = dispatch_time(0, 5000000000);
          dispatch_semaphore_wait(v13, v17);
          atomic_store(0, v22 + 24);
        }

        _Block_object_dispose(&v21, 8);
        goto LABEL_9;
      }

      v7 = *DerivedStorage;
      if (*DerivedStorage)
      {
        goto LABEL_16;
      }
    }

    *a4 = v7;
LABEL_9:
    v8 = *(v28 + 6);
    goto LABEL_10;
  }

  v8 = 4294954509;
LABEL_10:
  _Block_object_dispose(&v27, 8);
  return v8;
}

void sub_1ACAE363C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t CMIOExtensionFigCaptureDeviceSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ([*(DerivedStorage + 40) objectForKey:a2])
  {
    v6 = cmioefcd_cmioExtensionPropertyForDevicePropertyKey(a2);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = a2;
    }

    if ([objc_msgSend(*(DerivedStorage + 16) "availableProperties")])
    {
      v27 = v7;
      v28 = a3;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 1;
      v9 = dispatch_semaphore_create(0);
      v10 = *(DerivedStorage + 16);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __CMIOExtensionFigCaptureDeviceSetProperty_block_invoke;
      v22[3] = &unk_1E79982A0;
      v22[5] = &v29;
      v22[6] = &v23;
      v22[4] = v9;
      [v10 setPropertyValues:v8 reply:v22];
      v11 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v9, v11);
      atomic_store(0, v24 + 24);
    }

    else
    {
      if (![objc_msgSend(*(DerivedStorage + 16) "streams")])
      {
LABEL_15:
        v12 = *(v30 + 6);
        goto LABEL_16;
      }

      v13 = dispatch_semaphore_create(0);
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 1;
      v14 = [objc_msgSend(*(DerivedStorage + 16) "streams")];
      if ([objc_msgSend(v14 "availableProperties")])
      {
        v20 = v7;
        v21 = a3;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __CMIOExtensionFigCaptureDeviceSetProperty_block_invoke_2;
        v19[3] = &unk_1E79982A0;
        v19[5] = &v29;
        v19[6] = &v23;
        v19[4] = v13;
        [v14 setPropertyValues:v15 reply:v19];
      }

      else
      {
        v16 = atomic_load(v24 + 24);
        if (v16)
        {
          dispatch_semaphore_signal(v13);
        }
      }

      v17 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v13, v17);
      atomic_store(0, v24 + 24);
    }

    _Block_object_dispose(&v23, 8);
    goto LABEL_15;
  }

  v12 = 4294954509;
LABEL_16:
  _Block_object_dispose(&v29, 8);
  return v12;
}

void sub_1ACAE3928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

void __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  if ([*(*(a1 + 40) + 16) availableProperties])
  {
    dispatch_group_enter(v2);
  }

  if ([objc_msgSend(*(*(a1 + 40) + 16) "streams")])
  {
    v3 = [objc_msgSend(*(*(a1 + 40) + 16) "streams")];
    if ([v3 availableProperties])
    {
      dispatch_group_enter(v2);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*(a1 + 40) + 16);
  v5 = [v4 availableProperties];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_2;
  v11[3] = &unk_1E7998228;
  v6 = *(a1 + 32);
  v11[5] = &v12;
  v11[6] = v6;
  v11[4] = v2;
  [v4 propertyStatesForProperties:v5 reply:v11];
  if (v3)
  {
    v7 = [v3 availableProperties];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_3;
    v10[3] = &unk_1E7998228;
    v8 = *(a1 + 32);
    v10[5] = &v12;
    v10[6] = v8;
    v10[4] = v2;
    [v3 propertyStatesForProperties:v7 reply:v10];
  }

  v9 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v2, v9);
  atomic_store(0, v13 + 24);

  _Block_object_dispose(&v12, 8);
}

void __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_2(void *a1, void *a2)
{
  v2 = atomic_load((*(a1[5] + 8) + 24));
  if (v2)
  {
    cmioefcd_addSupportedPropertiesWithValue(a2, *(*(a1[6] + 8) + 40));
    v4 = a1[4];

    dispatch_group_leave(v4);
  }
}

void *cmioefcd_addSupportedPropertiesWithValue(void *a1, void *a2)
{
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [a1 allKeys];
  result = [obj countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v22;
    v7 = *off_1E798B838;
    v19 = *off_1E798B848;
    v8 = *off_1E798B830;
    v16 = *off_1E798B820;
    v17 = *off_1E798B828;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = [a1 objectForKeyedSubscript:{v10, v16}];
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v12 setObject:v10 forKeyedSubscript:v7];
        if ([v11 value])
        {
          [v12 setObject:objc_msgSend(v11 forKeyedSubscript:{"value"), v19}];
        }

        if (![v11 attributes])
        {
          v14 = v12;
          v13 = MEMORY[0x1E695E118];
          v15 = v8;
          goto LABEL_14;
        }

        [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(objc_msgSend(v11, "attributes"), "isReadOnly")), v8}];
        if ([objc_msgSend(v11 "attributes")])
        {
          [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"attributes"), "minValue"), v17}];
        }

        if ([objc_msgSend(v11 "attributes")])
        {
          v13 = [objc_msgSend(v11 "attributes")];
          v14 = v12;
          v15 = v16;
LABEL_14:
          [v14 setObject:v13 forKeyedSubscript:v15];
        }

        [a2 addObject:v12];
        v9 = v9 + 1;
      }

      while (v5 != v9);
      result = [obj countByEnumeratingWithState:&v21 objects:v20 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_3(void *a1, void *a2)
{
  v2 = atomic_load((*(a1[5] + 8) + 24));
  if (v2)
  {
    cmioefcd_addSupportedPropertiesWithValue(a2, *(*(a1[6] + 8) + 40));
    v4 = a1[4];

    dispatch_group_leave(v4);
  }
}

uint64_t cmioefcd_cmioExtensionPropertyForDevicePropertyKey(uint64_t a1)
{
  if (cmioefcd_cmioExtensionPropertyForDevicePropertyKey_onceToken != -1)
  {
    cmioefcd_cmioExtensionPropertyForDevicePropertyKey_cold_1();
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

LABEL_3:
  v2 = cmioefcd_cmioExtensionPropertyForDevicePropertyKey_sDevicePropertyKeysToCMIOExtensionProperties;

  return [v2 objectForKeyedSubscript:a1];
}

void *__CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_4(uint64_t a1)
{
  v2 = [objc_msgSend(*(*(a1 + 64) + 16) "availableProperties")];
  v3 = *(*(a1 + 64) + 16);
  if (v2)
  {
    v4 = *(a1 + 32);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_5;
    v20 = &unk_1E7998250;
    v22 = *(a1 + 56);
    v23 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    v21 = *(a1 + 40);
    v5 = &v17;
    return [v3 propertyStatesForProperties:v4 reply:{v5, v10, v11, v12, v13, v14, v15, *&v16, v17, v18, v19, v20, v21, v22, *&v23}];
  }

  result = [objc_msgSend(v3 "streams")];
  if (result)
  {
    v7 = [objc_msgSend(*(*(a1 + 64) + 16) "streams")];
    result = [objc_msgSend(v7 "availableProperties")];
    if (result)
    {
      v4 = *(a1 + 32);
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_6;
      v13 = &unk_1E7998250;
      v15 = *(a1 + 56);
      v16 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
      v14 = *(a1 + 40);
      v5 = &v10;
      v3 = v7;
      return [v3 propertyStatesForProperties:v4 reply:{v5, v10, v11, v12, v13, v14, v15, *&v16, v17, v18, v19, v20, v21, v22, *&v23}];
    }
  }

  v8 = atomic_load((*(*(a1 + 48) + 8) + 24));
  if (v8)
  {
    v9 = *(a1 + 40);

    return dispatch_semaphore_signal(v9);
  }

  return result;
}

intptr_t __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_5(intptr_t result, void *a2, void *a3)
{
  v3 = atomic_load((*(*(result + 40) + 8) + 24));
  if (v3)
  {
    v5 = result;
    *(*(*(result + 48) + 8) + 24) = [a3 code];
    v6 = [objc_msgSend(a2 objectForKeyedSubscript:{*(v5 + 64)), "value"}];
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    **(v5 + 56) = v6;
    v7 = *(v5 + 32);

    return dispatch_semaphore_signal(v7);
  }

  return result;
}

intptr_t __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_6(intptr_t result, void *a2, void *a3)
{
  v3 = atomic_load((*(*(result + 40) + 8) + 24));
  if (v3)
  {
    v5 = result;
    *(*(*(result + 48) + 8) + 24) = [a3 code];
    v6 = [objc_msgSend(a2 objectForKeyedSubscript:{*(v5 + 64)), "value"}];
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    **(v5 + 56) = v6;
    v7 = *(v5 + 32);

    return dispatch_semaphore_signal(v7);
  }

  return result;
}

void *__cmioefcd_cmioExtensionPropertyForDevicePropertyKey_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v1 = *off_1E798A000;
  v2 = *off_1E798A020;
  v3 = *off_1E7989FF8;
  v4 = *off_1E7989FD0;
  v5 = CMIOExtensionPropertyFromPropertyAddress();
  result = [v0 initWithObjectsAndKeys:{@"CMIOExtensionPropertyDeviceHidden", v1, @"CMIOExtensionPropertyDeviceReadyToUnhide", v2, @"CMIOExtensionPropertyRapportDeviceUniqueID", v3, @"DockedTrackingActive", v4, v5, *off_1E7989FC8, CMIOExtensionPropertyFromPropertyAddress(), *off_1E7989FC0, 0}];
  cmioefcd_cmioExtensionPropertyForDevicePropertyKey_sDevicePropertyKeysToCMIOExtensionProperties = result;
  return result;
}

void *__CMIOExtensionFigCaptureDeviceSetProperty_block_invoke(void *a1, void *a2)
{
  result = [a2 code];
  *(*(a1[5] + 8) + 24) = result;
  v4 = atomic_load((*(a1[6] + 8) + 24));
  if (v4)
  {
    v5 = a1[4];

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

void *__CMIOExtensionFigCaptureDeviceSetProperty_block_invoke_2(void *a1, void *a2)
{
  result = [a2 code];
  *(*(a1[5] + 8) + 24) = result;
  v4 = atomic_load((*(a1[6] + 8) + 24));
  if (v4)
  {
    v5 = a1[4];

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

void __cmioefcd_copySupportedPropertiesDict_block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  if ([*(*(a1 + 40) + 16) availableProperties])
  {
    dispatch_group_enter(v2);
  }

  if ([objc_msgSend(*(*(a1 + 40) + 16) "streams")])
  {
    v3 = [objc_msgSend(*(*(a1 + 40) + 16) "streams")];
    if ([v3 availableProperties])
    {
      dispatch_group_enter(v2);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*(a1 + 40) + 16);
  v5 = [v4 availableProperties];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __cmioefcd_copySupportedPropertiesDict_block_invoke_2;
  v9[3] = &unk_1E79982C8;
  v9[5] = v2;
  v9[6] = &v10;
  v9[4] = *(a1 + 32);
  [v4 propertyStatesForProperties:v5 reply:v9];
  if (v3)
  {
    v6 = [v3 availableProperties];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __cmioefcd_copySupportedPropertiesDict_block_invoke_3;
    v8[3] = &unk_1E79982C8;
    v8[5] = v2;
    v8[6] = &v10;
    v8[4] = *(a1 + 32);
    [v3 propertyStatesForProperties:v6 reply:v8];
  }

  v7 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v2, v7);
  atomic_store(0, v11 + 24);

  _Block_object_dispose(&v10, 8);
}

void __cmioefcd_copySupportedPropertiesDict_block_invoke_2(void *a1, void *a2)
{
  v2 = atomic_load((*(a1[6] + 8) + 24));
  if (v2)
  {
    cmioefcd_addSupportedProperty(a2, a1[4]);
    v4 = a1[5];

    dispatch_group_leave(v4);
  }
}

void *cmioefcd_addSupportedProperty(void *a1, void *a2)
{
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [a1 allKeys];
  result = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v23;
    v5 = *off_1E798A160;
    v15 = *off_1E798A178;
    v6 = *off_1E798A140;
    v7 = *off_1E798A148;
    v8 = *off_1E798A150;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = [a1 objectForKeyedSubscript:{v10, v15}];
        v19[0] = v5;
        if (cmioefcd_devicePropertyTypeForCMIOExtensionProperty_onceToken != -1)
        {
          cmioefcd_addSupportedProperty_cold_1();
        }

        if ([cmioefcd_devicePropertyTypeForCMIOExtensionProperty_sDevicePropertyTypeByCMIOExtensionPropertyNames objectForKeyedSubscript:v10])
        {
          v12 = [cmioefcd_devicePropertyTypeForCMIOExtensionProperty_sDevicePropertyTypeByCMIOExtensionPropertyNames objectForKeyedSubscript:v10];
        }

        else if (v10)
        {
          v12 = v15;
        }

        else
        {
          v12 = 0;
        }

        v19[1] = v6;
        v20[0] = v12;
        if ([objc_msgSend(v11 "attributes")])
        {
          v13 = v7;
        }

        else
        {
          v13 = v8;
        }

        v20[1] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
        if (cmioefcd_devicePropertyKeyForCMIOExtensionProperty_onceToken != -1)
        {
          cmioefcd_addSupportedProperty_cold_2();
        }

        if ([cmioefcd_devicePropertyKeyForCMIOExtensionProperty_sDevicePropertyKeysByCMIOExtensionPropertyNames objectForKeyedSubscript:v10])
        {
          v10 = [cmioefcd_devicePropertyKeyForCMIOExtensionProperty_sDevicePropertyKeysByCMIOExtensionPropertyNames objectForKeyedSubscript:v10];
        }

        [a2 setObject:v14 forKeyedSubscript:v10];
        v9 = v9 + 1;
      }

      while (v3 != v9);
      result = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

void __cmioefcd_copySupportedPropertiesDict_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = atomic_load((*(*(a1 + 48) + 8) + 24));
  if (v2)
  {
    cmioefcd_addSupportedProperty(a2, *(a1 + 32));
    v4 = *(a1 + 40);

    dispatch_group_leave(v4);
  }
}

void *__cmioefcd_devicePropertyTypeForCMIOExtensionProperty_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  result = [v0 initWithObjectsAndKeys:{*MEMORY[0x1E6963420], *off_1E798A168, @"CMIOExtensionPropertyRapportDeviceUniqueID", 0}];
  cmioefcd_devicePropertyTypeForCMIOExtensionProperty_sDevicePropertyTypeByCMIOExtensionPropertyNames = result;
  return result;
}

void *__cmioefcd_devicePropertyKeyForCMIOExtensionProperty_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  result = [v0 initWithObjectsAndKeys:{*off_1E7989FD0, *MEMORY[0x1E6963420], *off_1E7989FF8, @"CMIOExtensionPropertyRapportDeviceUniqueID", 0}];
  cmioefcd_devicePropertyKeyForCMIOExtensionProperty_sDevicePropertyKeysByCMIOExtensionPropertyNames = result;
  return result;
}

void *__cmioefcd_devicePropertyChangedNotificationForCMIOExtensionProperty_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v1 = *off_1E7989FA0;
  v2 = *off_1E7989FA8;
  v3 = *off_1E7989F90;
  v4 = *off_1E7989F88;
  v5 = CMIOExtensionPropertyFromPropertyAddress();
  result = [v0 initWithObjectsAndKeys:{v1, @"CMIOExtensionPropertyDeviceHidden", v2, @"CMIOExtensionPropertyDeviceReadyToUnhide", v3, @"DockedTrackingActive", v4, v5, *off_1E7989F80, CMIOExtensionPropertyFromPropertyAddress(), 0}];
  cmioefcd_devicePropertyChangedNotificationForCMIOExtensionProperty_sCMIOExtensionPropertiesToDevicePropertyChangedNotifications = result;
  return result;
}

uint64_t FigFlashlightGetClassID(uint64_t a1)
{
  if (FigFlashlightGetClassID_onceToken != -1)
  {
    FigFlashlightGetClassID_cold_1();
  }

  return FigFlashlightGetClassID_sFigFlashlightClassID;
}

uint64_t __FigFlashlightGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&sFigFlashlightClassDesc, ClassID, 1, &FigFlashlightGetClassID_sFigFlashlightClassID);
}

uint64_t csp_getCenterStageFramingMode(uint64_t a1)
{
  cf = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(a1, @"CenterStageFramingMode", *MEMORY[0x1E695E480], &cf);
    v3 = cf;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 intValue];
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t csp_getCinematicFramingFieldOfViewRestrictedToWide(uint64_t a1)
{
  v6 = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(a1, @"CenterStageFieldOfViewRestrictedToWide", *MEMORY[0x1E695E480], &v6);
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 BOOLValue];

  return v4;
}

BOOL csp_getCenterStageRectOfInterest(uint64_t a1)
{
  v5 = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(a1, @"CenterStageRectOfInterest", *MEMORY[0x1E695E480], &v5);
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  memset(&rect, 0, sizeof(rect));
  CGRectMakeWithDictionaryRepresentation(v3, &rect);

  result = CGRectEqualToRect(rect, *MEMORY[0x1E695F058]);
  if (!result)
  {
    return CGRectIsNull(rect);
  }

  return result;
}

void *csp_enableAdaptiveOverscanByVideoStabilizationMethods(void *a1)
{
  result = [a1 count];
  if (result)
  {
    if ([a1 containsObject:&unk_1F2244908] & 1) != 0 || (objc_msgSend(a1, "containsObject:", &unk_1F22447B8))
    {
      return 0;
    }

    else
    {
      return ([a1 containsObject:&unk_1F2244830] ^ 1);
    }
  }

  return result;
}

uint64_t csp_variableFrameRateVideoGain(void *a1)
{
  v1 = [a1 sensorIDDictionary];
  v2 = [objc_msgSend(objc_msgSend(v1 objectForKeyedSubscript:{@"VariableFrameRateVideoParameters", "objectForKeyedSubscript:", @"AEMaxGainForFrameRate", "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", 60)}];

  return [v2 floatValue];
}

void *csp_getVideoDataConfigurationFromConfigurations(void *a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *v11;
LABEL_3:
  v5 = 0;
  while (1)
  {
    if (*v11 != v4)
    {
      objc_enumerationMutation(a1);
    }

    v6 = *(*(&v10 + 1) + 8 * v5);
    v7 = [v6 sinkConfiguration];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 sinkType] == 6)
    {
      return v6;
    }

    if (v3 == ++v5)
    {
      v3 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
      if (v3)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t OUTLINED_FUNCTION_94_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  return [a10 countByEnumeratingWithState:a3 objects:a4 count:{16, a6, a7, a8}];
}

BOOL OUTLINED_FUNCTION_95_5(uint64_t a1, int a2)
{

  return FigCaptureFrameRateNotEqual(v2, v3, a1, a2);
}

uint64_t captureStreamListener(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, __CFDictionary *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 88))
  {
    return result;
  }

  v8 = result;
  result = CFEqual(a3, *off_1E798B870);
  if (!result)
  {
    return result;
  }

  if (a5)
  {
    v9 = 0;
  }

  else
  {
    a5 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = a5;
  }

  v10 = *(v8 + 84);
  if (v10 == 1)
  {
    v11 = @"FixedFocusPoints";
    goto LABEL_11;
  }

  if (v10 == 5)
  {
    v11 = @"FocusAtPoint";
LABEL_11:
    CFDictionaryAddValue(a5, @"FocusMode", v11);
  }

  v12 = *(v8 + 7664);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v14 < 0 == v13)
  {
    *(v8 + 7664) = v14;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (v9)
  {
    CFRelease(v9);
  }

  *(v8 + 81) = 0;

  return FigMemoryBarrier();
}

uint64_t FigSampleBufferAutofocusProcessorAddTimestampedMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMSampleBufferGetPresentationTimeStamp(&time, v8);
  Seconds = CMTimeGetSeconds(&time);
  FigSimpleMutexLock();
  v12 = (DerivedStorage + 17384);
  v13 = 20;
  while (*(v12 - 1) != Seconds)
  {
    v12 += 2;
    if (!--v13)
    {
      goto LABEL_6;
    }
  }

  v14 = *v12;
  if (*v12)
  {
LABEL_10:
    v17 = *off_1E7989DF8;
    v18 = [v14 objectForKeyedSubscript:*off_1E7989DF8];
    if ([v18 count])
    {
      v19 = CMGetAttachment(v8, *off_1E798A3C8, 0);
      v20 = *off_1E798C0E0;
      v21 = [v19 objectForKeyedSubscript:*off_1E798C0E0];
      v22 = [v14 objectForKeyedSubscript:v20];
      if (v21 && v22 != 0)
      {
        v24 = v22;
        if ((objc_msgSend_isEqualToString_(v21) & 1) == 0)
        {
          CameraParametersForPortType = af_sbp_getCameraParametersForPortType(v9, v21);
          if (CameraParametersForPortType)
          {
            v26 = CameraParametersForPortType;
            v27 = af_sbp_getCameraParametersForPortType(v9, v24);
            if (v27)
            {
              v28 = *v26;
              if (*v26 > 0.0)
              {
                v29 = *v27;
                if (*v27 > 0.0)
                {
                  v30 = [objc_msgSend(v18 objectAtIndexedSubscript:{0), "intValue"}];
                  v31 = [objc_msgSend(v18 objectAtIndexedSubscript:{1), "intValue"}];
                  v32 = [objc_msgSend(v18 objectAtIndexedSubscript:{2), "intValue"}];
                  v33 = [objc_msgSend(v18 objectAtIndexedSubscript:{3), "intValue"}];
                  v34 = (1000.0 - 1000.0 / (v28 / v29)) * 0.5;
                  v35 = ((v28 / v29) * (v30 - v34));
                  v36 = ((v28 / v29) * (v31 - v34));
                  v37 = ((v28 / v29) * v32);
                  v38 = ((v28 / v29) * v33);
                  v39 = MEMORY[0x1E695DF70];
                  v40 = [MEMORY[0x1E696AD98] numberWithShort:v35];
                  v41 = [MEMORY[0x1E696AD98] numberWithShort:v36];
                  v42 = [MEMORY[0x1E696AD98] numberWithShort:v37];
                  v43 = [v39 arrayWithObjects:{v40, v41, v42, objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", v38), 0}];
                  v44 = [v14 mutableCopy];
                  [v44 setObject:v43 forKeyedSubscript:v17];
LABEL_21:
                  if (v44)
                  {
                    v45 = v44;
                  }

                  else
                  {
                    v45 = v14;
                  }

                  CFDictionaryApplyFunction(v45, insertKeyAndValue, v6);
                  goto LABEL_25;
                }
              }

              FigSampleBufferAutofocusProcessorAddTimestampedMetadata_cold_1();
            }

            else
            {
              FigSampleBufferAutofocusProcessorAddTimestampedMetadata_cold_2();
            }
          }

          else
          {
            FigSampleBufferAutofocusProcessorAddTimestampedMetadata_cold_3();
          }
        }
      }
    }

    v44 = 0;
    goto LABEL_21;
  }

LABEL_6:
  v15 = *(DerivedStorage + 17360);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 19;
  }

  v14 = *(DerivedStorage + 17376 + 16 * v16 + 8);
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_25:
  v46 = CMBaseObjectGetDerivedStorage();
  v47 = v46;
  v48 = (v46 + 7538);
  if (*(v46 + 652))
  {
    v49 = (v46 + 7840);
    LOBYTE(time.value) = 0;
    v50 = 16;
    do
    {
      v51 = strlen(&time);
      if (v50 == 16)
      {
        v52 = "";
      }

      else
      {
        v52 = ", ";
      }

      v53 = *(v49 - 16);
      v54 = *v49++;
      snprintf(&time + v51, 0x2000 - v51, "%s(%lld, %lld)", v52, v53, v54);
      --v50;
    }

    while (v50);
    v55 = *MEMORY[0x1E695E480];
    v56 = CFStringCreateWithCString(*MEMORY[0x1E695E480], &time, 0x600u);
    CFDictionaryAddValue(v6, @"MatrixFocusBand", v56);
    CFRelease(v56);
    v57 = 0;
    v58 = *(v47 + 7704);
    do
    {
      if (v58 >= 1)
      {
        --v58;
      }

      else
      {
        v58 = 31;
      }

      snprintf(&time, 0x2000uLL, "MatrixScores%d", v57);
      v59 = CFStringCreateWithCString(v55, &time, 0x600u);
      v60 = *(v47 + 8032 + 8 * v58);
      if (v60)
      {
        CFDictionaryAddValue(v6, v59, v60);
      }

      CFRelease(v59);
      ++v57;
    }

    while (v57 != 8);
    LOBYTE(time.value) = 0;
    v61 = (v47 + 8300);
    v62 = 16;
    do
    {
      v63 = strlen(&time);
      snprintf(&time + v63, 0x2000 - v63, "(%.3f %.3f %.3f) ", *v61, v61[60], v61[120]);
      ++v61;
      --v62;
    }

    while (v62);
    v64 = strlen(&time);
    snprintf(&time + v64, 0x2000 - v64, "angle=%.3f", *(v47 + 9020));
    v65 = CFStringCreateWithCString(v55, &time, 0x600u);
    CFDictionaryAddValue(v6, @"MatrixAccelerometer", v65);
    CFRelease(v65);
    v66 = *(v47 + 8288);
    if (v66)
    {
      CFDictionaryAddValue(v6, @"FocusScanHistory", v66);
    }
  }

  if (v48[1555] == 1)
  {
    v67 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 13, MEMORY[0x1E695E9C0]);
    v69 = CFNumberCreate(v67, kCFNumberDoubleType, (v47 + 9096));
    CFArrayAppendValue(Mutable, v69);
    CFRelease(v69);
    v70 = (v47 + 9128);
    v71 = 7;
    do
    {
      v72 = CFNumberCreate(v67, kCFNumberDoubleType, v70);
      CFArrayAppendValue(Mutable, v72);
      CFRelease(v72);
      v70 += 8;
      --v71;
    }

    while (v71);
    v73 = CFNumberCreate(v67, kCFNumberDoubleType, (v47 + 16360));
    CFArrayAppendValue(Mutable, v73);
    CFRelease(v73);
    v74 = CFNumberCreate(v67, kCFNumberDoubleType, (v47 + 16368));
    CFArrayAppendValue(Mutable, v74);
    CFRelease(v74);
    *&time.value = *(v47 + 1788);
    v75 = CFNumberCreate(v67, kCFNumberDoubleType, &time);
    CFArrayAppendValue(Mutable, v75);
    CFRelease(v75);
    *&time.value = *(v47 + 1792);
    v76 = CFNumberCreate(v67, kCFNumberDoubleType, &time);
    CFArrayAppendValue(Mutable, v76);
    CFRelease(v76);
    v77 = CFNumberCreate(v67, kCFNumberShortType, (v47 + 17353));
    CFArrayAppendValue(Mutable, v77);
    CFRelease(v77);
    CFDictionaryAddValue(v6, @"HDRscene_debug", Mutable);
    CFRelease(Mutable);
    if (*v48 == 1)
    {
      v78 = 256;
      v79 = CFArrayCreateMutable(v67, 256, MEMORY[0x1E695E9C0]);
      v80 = (v47 + 10216);
      do
      {
        v81 = CFNumberCreate(v67, kCFNumberDoubleType, v80);
        CFArrayAppendValue(v79, v81);
        CFRelease(v81);
        v80 += 8;
        --v78;
      }

      while (v78);
      CFDictionaryAddValue(v6, @"HDRscene_histR", v79);
      CFRelease(v79);
      v82 = 256;
      v83 = CFArrayCreateMutable(v67, 256, MEMORY[0x1E695E9C0]);
      v84 = (v47 + 12264);
      do
      {
        v85 = CFNumberCreate(v67, kCFNumberDoubleType, v84);
        CFArrayAppendValue(v83, v85);
        CFRelease(v85);
        v84 += 8;
        --v82;
      }

      while (v82);
      CFDictionaryAddValue(v6, @"HDRscene_histG", v83);
      CFRelease(v83);
      v86 = 256;
      v87 = CFArrayCreateMutable(v67, 256, MEMORY[0x1E695E9C0]);
      v88 = (v47 + 14312);
      do
      {
        v89 = CFNumberCreate(v67, kCFNumberDoubleType, v88);
        CFArrayAppendValue(v87, v89);
        CFRelease(v89);
        v88 += 8;
        --v86;
      }

      while (v86);
      CFDictionaryAddValue(v6, @"HDRscene_histB", v87);
      CFRelease(v87);
    }
  }

  CFDictionaryRemoveValue(v6, *off_1E798B398);
  CFDictionaryRemoveValue(v6, *off_1E798B390);
  CFDictionaryRemoveValue(v6, *off_1E798B388);
  CFDictionaryRemoveValue(v6, *off_1E798B3A0);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 88))
  {
    return 0;
  }

  v4 = DerivedStorage;
  *(DerivedStorage + 88) = 1;
  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    FigCoreMotionRelease(v5);
    *(v4 + 48) = 0;
  }

  FigImageControl_InvalidateExposure(a1);
  if (*(v4 + 7424) == 1)
  {
    v3 = [*(v4 + 8) sendCommandProperty:*off_1E798C250];
    *(v4 + 7424) = 0;
  }

  else
  {
    v3 = 0;
  }

  v6 = *(v4 + 64);
  if (v6)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {
      v7(v6, 0, 0);
    }

    CFRelease(*(v4 + 64));
    *(v4 + 64) = 0;
  }

  if (*(v4 + 17368))
  {
    FigSimpleMutexLock();
    v8 = 0;
    v9 = v4 + 17384;
    do
    {
      v10 = *(v9 + v8);
      if (v10)
      {
        CFRelease(v10);
        *(v9 + v8) = 0;
      }

      v8 += 16;
    }

    while (v8 != 320);
    *(v4 + 17360) = 0;
    FigSimpleMutexUnlock();
    FigSimpleMutexDestroy();
    *(v4 + 17368) = 0;
  }

  setPropertiesOnStream(a1);
  FigSimpleQueueRelease();
  *(v4 + 72) = 0;
  *v4 = 0;
  v11 = *(v4 + 8);
  if (v11)
  {
    v36 = v3;
    if (!*(v4 + 652))
    {
      [v11 unregisterForNotification:*off_1E798B870 listener:a1];
    }

    v12 = CMBaseObjectGetDerivedStorage();
    if (*(v12 + 7664) >= 1)
    {
      v13 = 0;
      v14 = MEMORY[0x1E695E9D8];
      v15 = MEMORY[0x1E695E9E8];
      v16 = *MEMORY[0x1E695E480];
      while (1)
      {
        Mutable = CFDictionaryCreateMutable(v16, 1, v14, v15);
        v18 = Mutable;
        v19 = *(v12 + 84);
        if (v19 == 1)
        {
          break;
        }

        if (v19 == 5)
        {
          v20 = @"FocusAtPoint";
LABEL_27:
          CFDictionaryAddValue(Mutable, @"FocusMode", v20);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v18);
        if (++v13 >= *(v12 + 7664))
        {
          goto LABEL_29;
        }
      }

      v20 = @"FixedFocusPoints";
      goto LABEL_27;
    }

LABEL_29:
    *(v12 + 7664) = 0;
    v21 = *(v4 + 8);
    v3 = v36;
    if (v21)
    {
      CFRelease(v21);
      *(v4 + 8) = 0;
    }
  }

  v22 = *(v4 + 16);
  if (v22)
  {
    CFRelease(v22);
    *(v4 + 16) = 0;
  }

  v23 = *(v4 + 24);
  if (v23)
  {
    CFRelease(v23);
    *(v4 + 24) = 0;
  }

  v24 = *(v4 + 32);
  if (v24)
  {
    CFRelease(v24);
    *(v4 + 32) = 0;
  }

  v25 = *(v4 + 680);
  if (v25)
  {
    CFRelease(v25);
    *(v4 + 680) = 0;
  }

  v26 = *(v4 + 9032);
  if (v26)
  {
    CFRelease(v26);
    *(v4 + 9032) = 0;
  }

  v27 = *(v4 + 9040);
  if (v27)
  {
    CFRelease(v27);
    *(v4 + 9040) = 0;
  }

  v28 = *(v4 + 7544);
  if (v28)
  {
    CFRelease(v28);
    *(v4 + 7544) = 0;
  }

  v29 = *(v4 + 8288);
  if (v29)
  {
    CFRelease(v29);
    *(v4 + 8288) = 0;
  }

  v30 = 0;
  v31 = v4 + 8032;
  do
  {
    v32 = *(v31 + v30);
    if (v32)
    {
      CFRelease(v32);
      *(v31 + v30) = 0;
    }

    v30 += 8;
  }

  while (v30 != 256);

  *(v4 + 9064) = 0;
  *(v4 + 9072) = 0;
  v33 = *(v4 + 6296);
  if (v33)
  {
    CFRelease(v33);
    *(v4 + 6296) = 0;
  }

  v34 = *(v4 + 6288);
  if (v34)
  {
    CFRelease(v34);
    *(v4 + 6288) = 0;
  }

  return v3;
}

__CFString *copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_Autofocus %p>", a1);
  return Mutable;
}

uint64_t setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 88))
  {
    return 4294954511;
  }

  v7 = DerivedStorage;
  result = 0;
  *v7 = a2;
  v7[7] = a3;
  return result;
}

uint64_t finishPendingProcessing(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 88))
  {
    return 4294954511;
  }

  else
  {
    return 0;
  }
}

uint64_t pg_outOfBoundsCallback(uint64_t a1, uint64_t a2)
{
  v4 = +[FigPulseGenerator sharedFigPulseGenerator];
  v5 = [v4 delegate];

  return [v5 pulseGenerator:v4 updatedTriggerID:a1 withOutOfBoundsError:a2];
}

uint64_t pg_lockLostCallback(uint64_t a1, uint64_t a2)
{
  v4 = +[FigPulseGenerator sharedFigPulseGenerator];
  v5 = [v4 delegate];

  return [v5 pulseGenerator:v4 updatedTriggerID:a1 withLockState:a2];
}

uint64_t pg_sessionStoppedCallback(uint64_t a1, uint64_t a2)
{
  v4 = +[FigPulseGenerator sharedFigPulseGenerator];
  v5 = [v4 delegate];

  return [v5 pulseGenerator:v4 updatedTriggerID:a1 withSessionStoppedExitStatus:a2];
}

uint64_t pg_triggerPresentCallback(uint64_t a1, uint64_t a2)
{
  v4 = +[FigPulseGenerator sharedFigPulseGenerator];
  v5 = [v4 delegate];

  return [v5 pulseGenerator:v4 updatedTriggerID:a1 withTriggerIsPresent:a2];
}