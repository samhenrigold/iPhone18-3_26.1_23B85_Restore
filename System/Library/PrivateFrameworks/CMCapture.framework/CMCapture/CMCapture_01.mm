uint64_t OUTLINED_FUNCTION_18_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [a20 countByEnumeratingWithState:&STACK[0x240] objects:&a65 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_18_30()
{

  return [v0 setObject:0 forKeyedSubscript:?];
}

CFTypeRef OUTLINED_FUNCTION_18_31(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return fcdpp_copyAttachedMediaSurfaceDataFromSampleBufferIntoNotificationPayload(v8, a2, a3, 1, v7, a6, a7);
}

uint64_t OUTLINED_FUNCTION_18_34()
{
  *(v0 - 52) = 0;
  *(v0 - 53) = 0;
  return qword_1ED844348;
}

BOOL OUTLINED_FUNCTION_18_35(NSObject *a1)
{
  v2 = STACK[0x257];

  return os_log_type_enabled(a1, v2);
}

uint64_t OUTLINED_FUNCTION_18_37@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v3 + a2);

  return [a1 newError:4294954516 sourceNode:v3 stillImageSettings:v5 metadata:0];
}

uint64_t OUTLINED_FUNCTION_137()
{

  return [v1 addObject:v0];
}

uint64_t OUTLINED_FUNCTION_137_0(uint64_t a1)
{
  v5 = *(v1 + *(v2 + 3044));

  return [v5 URLByAppendingPathComponent:a1 isDirectory:0];
}

uint64_t OUTLINED_FUNCTION_137_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{

  return [v57 countByEnumeratingWithState:&STACK[0x200] objects:&a57 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_137_5(void *a1, const char *a2, uint64_t a3)
{

  return [a1 addInput:a3 sequenceNumber:0 portType:v3 bufferTypes:v4];
}

__n128 OUTLINED_FUNCTION_36_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a43, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __n128 a44)
{
  result = a44;
  *&STACK[0x400] = a44;
  STACK[0x410] = v44;
  return result;
}

double OUTLINED_FUNCTION_36_2(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{

  return FigCaptureTransformRectToCoordinateSpaceOfRect(a1.n128_f64[0], a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0], v9, v10, v11);
}

CMTime *OUTLINED_FUNCTION_36_3@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 144) = a1;

  return CMTimeConvertScale((v2 - 128), (v2 - 160), v1, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
}

void OUTLINED_FUNCTION_36_5()
{
  STACK[0x700] = 0;
  STACK[0x6F8] = 0;
  STACK[0x708] = 0;
}

uint64_t OUTLINED_FUNCTION_36_7()
{

  return [v0 countByEnumeratingWithState:&STACK[0x6E0] objects:&STACK[0x660] count:16];
}

uint64_t OUTLINED_FUNCTION_36_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, __int16 a49, char a50, char a51, int a52)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_36_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return [v32 countByEnumeratingWithState:va objects:&a17 count:{16, a6, a7, a8}];
}

double OUTLINED_FUNCTION_36_12()
{
  result = 0.0;
  *&STACK[0x850] = 0u;
  *&STACK[0x840] = 0u;
  *&STACK[0x830] = 0u;
  *&STACK[0x820] = 0u;
  return result;
}

double OUTLINED_FUNCTION_36_13()
{
  result = 0.0;
  *(v0 - 80) = 0u;
  *(v0 - 64) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_108(NSObject *a1)
{
  v3 = *(v1 - 93);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_36_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_36_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = v9;
  v12 = *(v10 + 3784);

  return [v12 arrayWithObjects:&a9 count:{1, a5, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_36_18@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = a1;
  v4 = *(v1 + 3784);

  return [v4 arrayWithObjects:v2 - 120 count:1];
}

__SecTask *FigCaptureClientHasEntitlementWithSecTask(__SecTask *a1, __CFString *a2)
{
  v2 = a1;
  error = 0;
  if (!a1)
  {
    return v2;
  }

  if ([(__CFString *)a2 length])
  {
    v4 = SecTaskCopyValueForEntitlement(v2, a2, &error);
    v2 = 0;
    v5 = error;
    if (error || !v4)
    {
      goto LABEL_9;
    }

    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID())
    {
      v2 = (CFBooleanGetValue(v4) != 0);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = error;
LABEL_9:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_68_5()
{
  v2 = *(v0 - 128);

  return [v2 code];
}

uint64_t captureSourceServer_serializeNotification(int a1, uint64_t a2, CFTypeRef cf1, const __CFDictionary *a4, void *a5)
{
  MutableCopy = a4;
  if (!a4)
  {
    return MutableCopy;
  }

  if (CFEqual(cf1, @"ActiveFormat"))
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v18 = 0;
    v17 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    MutableCopy = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(arg[0]) = 0;
    v13 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v13, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSource/ClientServer/FigCaptureSourceServer.m", 1987, @"LastShownDate:FigCaptureSourceServer.m:1987", @"LastShownBuild:FigCaptureSourceServer.m:1987", 0);
    free(v13);
    return MutableCopy;
  }

  if (!CFDictionaryContainsKey(MutableCopy, @"ClientShouldIgnoreNotification") && !CFDictionaryContainsKey(MutableCopy, @"ProxyShouldIgnoreNotification"))
  {
    return 0;
  }

  arg[0] = 0;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    v12 = 4294954514;
LABEL_18:
    captureSourceServer_serializeNotification_cold_1(v12);
    return 1;
  }

  v11 = *MEMORY[0x1E695E480];
  v12 = v10(a2, 0x1F21A1970, *MEMORY[0x1E695E480], arg);
  if (arg[0])
  {
    CFAutorelease(arg[0]);
  }

  if (v12)
  {
    goto LABEL_18;
  }

  if ([arg[0] BOOLValue])
  {
    if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
  {
    return 1;
  }

LABEL_14:
  Count = CFDictionaryGetCount(MutableCopy);
  MutableCopy = CFDictionaryCreateMutableCopy(v11, Count, MutableCopy);
  CFDictionaryRemoveValue(MutableCopy, @"ClientShouldIgnoreNotification");
  CFDictionaryRemoveValue(MutableCopy, @"ProxyShouldIgnoreNotification");
  if (MutableCopy)
  {
    *a5 = MutableCopy;
    return 4;
  }

  return MutableCopy;
}

void __captureSource_postNotificationWithPayload_block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t captureSource_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, const void **a4)
{
  v72 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a2)
    {
      v7 = DerivedStorage;
      if (CFEqual(a2, @"SourceToken"))
      {
        v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v7);
LABEL_7:
        v9 = v8;
        result = 0;
        *a4 = v9;
        return result;
      }

      if (CFEqual(a2, @"ClientAuditToken"))
      {
        v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v7 + 16 length:32];
        goto LABEL_7;
      }

      if (CFEqual(a2, @"PrewarmingEnabled"))
      {
        v11 = *(v7 + 216);
        goto LABEL_10;
      }

      if (CFEqual(a2, @"IsProxy"))
      {
        v12 = MEMORY[0x1E695E4C0];
LABEL_15:
        v13 = *v12;
        *a4 = *v12;
        CFRetain(v13);
        return 0;
      }

      if (CFEqual(a2, @"HasProxy"))
      {
        v11 = *(v7 + 217);
LABEL_10:
        if (v11)
        {
          v12 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v12 = MEMORY[0x1E695E4C0];
        }

        goto LABEL_15;
      }

      FigSimpleMutexLock();
      if (*(v7 + 12))
      {
        captureSource_CopyProperty_cold_1(&v72);
        goto LABEL_22;
      }

      v14 = [objc_msgSend(*(v7 + 104) objectForKeyedSubscript:{@"DeviceType", "intValue"}];
      if (CFEqual(a2, @"AttributesDictionary"))
      {
        DictionaryRepresentation = *(v7 + 104);
LABEL_21:
        *a4 = DictionaryRepresentation;
LABEL_22:
        FigSimpleMutexUnlock();
        return v72;
      }

      if (CFEqual(a2, @"ISPChromaNoiseReductionForPairingDisabled_FigCaptureSessionOnly"))
      {
        DictionaryRepresentation = [*(v7 + 104) objectForKeyedSubscript:0x1F21A06B0];
        if (!DictionaryRepresentation)
        {
          goto LABEL_21;
        }

LABEL_25:
        DictionaryRepresentation = CFRetain(DictionaryRepresentation);
        goto LABEL_21;
      }

      if (CFEqual(a2, @"LockedForConfiguration"))
      {
        if (*(v7 + 64) <= 0)
        {
          v16 = MEMORY[0x1E695E4C0];
        }

        else
        {
          v16 = MEMORY[0x1E695E4D0];
        }

LABEL_57:
        v24 = *v16;
        *a4 = *v16;
        CFRetain(v24);
        goto LABEL_22;
      }

      if (CFEqual(a2, @"LensPosition"))
      {
        v17 = *(v7 + 80);
        if (v17 && ([v17 isPropertyObserved:0x1F218A1B0] & 1) == 0)
        {
          [*(v7 + 80) lensPosition];
LABEL_37:
          v18 = [MEMORY[0x1E696AD98] numberWithFloat:?];
LABEL_44:
          [*(v7 + 144) setObject:v18 forKeyedSubscript:a2];
        }
      }

      else
      {
        if (CFEqual(a2, @"ExposureDuration"))
        {
          v19 = *(v7 + 80);
          if (v19 && ([v19 isPropertyObserved:0x1F21A0F30] & 1) == 0)
          {
            v61 = 0uLL;
            *&v62 = 0;
            v20 = *(v7 + 80);
            if (v20)
            {
              objc_msgSend_exposureDuration(v20);
            }

            v21 = *MEMORY[0x1E695E480];
            *time = v61;
            *&time[16] = v62;
            v18 = CMTimeCopyAsDictionary(time, v21);
            goto LABEL_44;
          }

          goto LABEL_45;
        }

        if (CFEqual(a2, @"ISO"))
        {
          v23 = *(v7 + 80);
          if (v23 && ([v23 isPropertyObserved:0x1F218A7D0] & 1) == 0)
          {
            [*(v7 + 80) ISO];
            goto LABEL_37;
          }
        }

        else
        {
          if (!CFEqual(a2, @"ExposureTargetOffset"))
          {
            if (CFEqual(a2, @"DeviceWhiteBalanceGains"))
            {
              v28 = *(v7 + 80);
              if (!v28 || ([v28 isPropertyObserved:0x1F21A1090] & 1) != 0)
              {
                goto LABEL_45;
              }

              [*(v7 + 80) deviceWhiteBalanceGains];
            }

            else
            {
              if (!CFEqual(a2, @"GrayWorldDeviceWhiteBalanceGains"))
              {
                if (CFEqual(a2, @"SceneClassificationConfidences"))
                {
                  v34 = *(v7 + 80);
                  if (v34)
                  {
                    if (([v34 isPropertyObserved:0x1F21A1910] & 1) == 0)
                    {
                      v18 = [*(v7 + 80) sceneClassificationConfidences];
                      goto LABEL_44;
                    }
                  }
                }

                goto LABEL_45;
              }

              v33 = *(v7 + 80);
              if (!v33 || ([v33 isPropertyObserved:0x1F21A10B0] & 1) != 0)
              {
                goto LABEL_45;
              }

              [*(v7 + 80) grayWorldDeviceWhiteBalanceGains];
            }

            *&v61 = __PAIR64__(v30, v29);
            DWORD2(v61) = v31;
            v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v61 length:12];
            goto LABEL_44;
          }

          v25 = *(v7 + 80);
          if (v25 && ([v25 isPropertyObserved:0x1F21A0FF0] & 1) == 0)
          {
            [*(v7 + 80) exposureTargetOffset];
            goto LABEL_37;
          }
        }
      }

LABEL_45:
      if (CFEqual(a2, @"FlashActive"))
      {
        v22 = [*(v7 + 80) isFlashScene];
        goto LABEL_55;
      }

      if (CFEqual(a2, @"IsHDRScene"))
      {
        v22 = [*(v7 + 80) isHDRScene];
        goto LABEL_55;
      }

      if (CFEqual(a2, @"IsStillImageStabilizationScene"))
      {
        v22 = [*(v7 + 80) isSISScene];
LABEL_55:
        v16 = MEMORY[0x1E695E4D0];
        if (!v22)
        {
          v16 = MEMORY[0x1E695E4C0];
        }

        goto LABEL_57;
      }

      if (CFEqual(a2, @"DigitalFlashStatus"))
      {
        v26 = MEMORY[0x1E696AD98];
        v27 = [*(v7 + 80) digitalFlashStatus];
LABEL_64:
        DictionaryRepresentation = [v26 numberWithInt:v27];
        goto LABEL_25;
      }

      if (CFEqual(a2, @"DigitalFlashExposureTimes"))
      {
        v32 = [*(v7 + 80) digitalFlashExposureTimes];
LABEL_79:
        DictionaryRepresentation = v32;
        goto LABEL_21;
      }

      if (CFEqual(a2, @"AutoFocusPositionSensorCalibration"))
      {
        v32 = -[FigCaptureCalibrationMonitor runAutoFocusPositionSensorCalibrationAndGetResultsForDeviceType:devicePosition:](+[FigCaptureCalibrationMonitor sharedInstance](FigCaptureCalibrationMonitor, "sharedInstance"), "runAutoFocusPositionSensorCalibrationAndGetResultsForDeviceType:devicePosition:", v14, [objc_msgSend(*(v7 + 104) objectForKeyedSubscript:{@"Position", "intValue"}]);
        goto LABEL_79;
      }

      if (CFEqual(a2, @"CameraPoseMatrix"))
      {
        if (v14 <= 0xD && ((1 << v14) & 0x3350) != 0)
        {
          goto LABEL_22;
        }

        v35 = [*(v7 + 104) objectForKeyedSubscript:@"CaptureDeviceID"];
        if (!v35)
        {
          goto LABEL_22;
        }

        v36 = v35;
        v37 = [objc_msgSend(*(v7 + 104) objectForKeyedSubscript:{@"Position", "intValue"}];
        [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
        v38 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
        if ([v38 length] == 48)
        {
          [v38 getBytes:time length:48];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          DWORD2(v62) = v69;
          DWORD2(v61) = v68;
          *&v61 = vzip1q_s32(*time, *&time[16]).u64[0];
          *&v62 = vtrn2q_s32(*time, *&time[16]).u64[0];
          DWORD2(v64) = v71;
          DWORD2(v63) = v70;
          *&v63 = vzip1q_s32(vdupq_laneq_s32(*time, 2), vdupq_laneq_s32(*&time[16], 2)).u64[0];
          *&v64 = vuzp2q_s32(vuzp2q_s32(*time, *&time[16]), *time).u64[0];
          DictionaryRepresentation = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v61 length:64];
          goto LABEL_21;
        }

        if (!v38)
        {
          goto LABEL_22;
        }

        goto LABEL_97;
      }

      if (CFEqual(a2, @"OverheadCameraMode"))
      {
        v26 = MEMORY[0x1E696AD98];
        v27 = [*(v7 + 80) overheadCameraMode];
        goto LABEL_64;
      }

      if (CFEqual(a2, @"CenterStageRectOfInterest"))
      {
        [*(v7 + 80) centerStageRectOfInterest];
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v73);
        goto LABEL_21;
      }

      if (CFEqual(a2, @"CenterStageFramingMode"))
      {
        v26 = MEMORY[0x1E696AD98];
        v27 = [*(v7 + 80) centerStageFramingMode];
        goto LABEL_64;
      }

      if (CFEqual(a2, @"CenterStageMetadataDeliveryEnabled"))
      {
        v40 = MEMORY[0x1E696AD98];
        v41 = [*(v7 + 80) centerStageMetadataDeliveryEnabled];
      }

      else if (CFEqual(a2, @"CenterStageFieldOfViewRestrictedToWide"))
      {
        v40 = MEMORY[0x1E696AD98];
        v41 = [*(v7 + 80) centerStageFieldOfViewRestrictedToWide];
      }

      else
      {
        if (!CFEqual(a2, @"SceneClassificationActive"))
        {
          if (CFEqual(a2, @"SupportedCMIOExtensionProperties"))
          {
            v42 = [*(v7 + 80) device];
            v43 = *off_1E7989FE0;
          }

          else
          {
            if (CFEqual(a2, @"SerializedProcessingSettings"))
            {
              v44 = objc_alloc_init(FigCaptureStillImageProcessingSettings);
              if ([*(v7 + 80) sensorRawPoolEnabled])
              {
                v45 = [*(v7 + 80) sensorRawPoolRequirements];
                v46 = [objc_msgSend(v45 objectForKeyedSubscript:{*MEMORY[0x1E6966130]), "unsignedIntValue"}];
                v47 = [objc_msgSend(v45 objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "intValue"}];
                v48 = [objc_msgSend(v45 objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "intValue"}];
                v49 = [*(v7 + 80) ultraHighResSensorRawPoolDimensions];
                v50 = v48 << 32;
                v51 = v47;
              }

              else
              {
                v49 = 0;
                v50 = 0;
                v51 = 0;
                v46 = 0;
              }

              [objc_msgSend(*(v7 + 80) "zoomCommandHandler")];
              *&v54 = v53 * *(v7 + 136);
              [(FigCaptureStillImageProcessingSettings *)v44 setUiZoomFactor:v54];
              [(FigCaptureStillImageProcessingSettings *)v44 setSensorRawPixelFormat:v46];
              [(FigCaptureStillImageProcessingSettings *)v44 setSensorRawDimensions:v51 | v50];
              [(FigCaptureStillImageProcessingSettings *)v44 setUltraHighResSensorRawDimensions:v49];
              -[FigCaptureStillImageProcessingSettings setCameraInfoByPortType:](v44, "setCameraInfoByPortType:", [*(v7 + 80) cameraInfoByPortTypeIncludingLSCGains:0 includeCameraInfoForSensorRawProcessing:v46 != 0]);
              -[FigCaptureStillImageProcessingSettings setModuleCalibrationByPortType:](v44, "setModuleCalibrationByPortType:", [*(v7 + 80) moduleCalibrationByPortType]);
              *&v61 = 0;
              v55 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v44 requiringSecureCoding:1 error:&v61];
              if (v55)
              {
                *a4 = v55;
              }

              else
              {
                v72 = -12783;
              }

              goto LABEL_22;
            }

            if (CFEqual(a2, @"ClientBundleIdentifier"))
            {
              v52 = *(v7 + 72);
              if (v52)
              {
                DictionaryRepresentation = CFStringCreateCopy(*MEMORY[0x1E695E480], v52);
                goto LABEL_21;
              }

LABEL_97:
              v39 = -12783;
LABEL_98:
              v72 = v39;
              goto LABEL_22;
            }

            DictionaryRepresentation = [*(v7 + 144) objectForKeyedSubscript:a2];
            if (DictionaryRepresentation)
            {
              goto LABEL_25;
            }

            if (![*(v7 + 80) device] || !BWDeviceTypeIsExtensionDeviceType(v14))
            {
              v39 = -12784;
              goto LABEL_98;
            }

            if (dword_1ED844030)
            {
              v66 = 0;
              v65 = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v57 = v66;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v65))
              {
                v58 = v57;
              }

              else
              {
                v58 = v57 & 0xFFFFFFFE;
              }

              if (v58)
              {
                *time = 136315394;
                *&time[4] = "captureSource_CopyProperty";
                *&time[12] = 2112;
                *&time[14] = a2;
                LODWORD(v60) = 22;
                v59 = time;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v42 = [*(v7 + 80) device];
            v43 = a2;
          }

          DictionaryRepresentation = [v42 copyProperty:v43 error:&v72];
          goto LABEL_21;
        }

        v40 = MEMORY[0x1E696AD98];
        v41 = [*(v7 + 80) smartCameraEnabled];
      }

      DictionaryRepresentation = [v40 numberWithBool:v41];
      goto LABEL_25;
    }

    captureSource_CopyProperty_cold_2(&v61);
  }

  else
  {
    captureSource_CopyProperty_cold_3(&v61);
  }

  return v61;
}

void captureSource_postNotificationWithPayload(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v7 = DerivedStorage;
    v8 = FigSimpleMutexCheckIsNotLockedOnThisThread();
    if (a2)
    {
      CFRetain(a2);
      if (a3)
      {
        CFRetain(a3);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v9 = *(v7 + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __captureSource_postNotificationWithPayload_block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = a2;
      block[5] = a1;
      block[6] = a3;
      dispatch_async(v9, block);
    }

    else
    {
      captureSource_postNotificationWithPayload_cold_1(v8);
    }
  }

  else
  {
    captureSource_postNotificationWithPayload_cold_2();
  }
}

uint64_t captureSource_setPropertyInternal(const void *a1, void *Value, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = [objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{@"DeviceType", "intValue"}];
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (CFEqual(Value, @"ActiveFormat_FigCaptureSessionOnly"))
  {
    v9 = kFigCaptureSourceProperty_ActiveFormat;
  }

  else if (CFEqual(Value, @"ActiveMaxFrameRate_FigCaptureSessionOnly"))
  {
    v9 = kFigCaptureSourceProperty_ActiveMaxFrameRate;
  }

  else
  {
    if (!CFEqual(Value, @"ActiveMinFrameRate_FigCaptureSessionOnly"))
    {
      goto LABEL_20;
    }

    v9 = kFigCaptureSourceProperty_ActiveMinFrameRate;
  }

  v10 = *v9;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    Value = v10;
LABEL_9:
    [*(DerivedStorage + 144) setObject:a3 forKeyedSubscript:{Value, v117, v118}];
    v14 = *(DerivedStorage + 217);
    v15 = [*(DerivedStorage + 240) count];
    if (v11)
    {
      if (v15 ? 1 : v14)
      {
        v17 = [MEMORY[0x1E695DF90] dictionary];
        [v17 setObject:v13 forKeyedSubscript:@"OldPropertyValue"];
        [v17 setObject:a3 forKeyedSubscript:@"NewPropertyValue"];
        v18 = &kFigCaptureSourceNotificationKey_ProxyShouldIgnoreNotification;
        if (!v12)
        {
          v18 = &kFigCaptureSourceNotificationKey_ClientShouldIgnoreNotification;
        }

        [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v18];
        captureSource_postNotificationWithPayload(a1, Value, v17);
      }
    }

    goto LABEL_17;
  }

LABEL_20:
  v21 = CFEqual(Value, @"PropertySetByProxy");
  v120 = v21 != 0;
  if (v21)
  {
    if (*(DerivedStorage + 217))
    {
      Value = CFDictionaryGetValue(a3, @"PropertyKey");
      a3 = CFDictionaryGetValue(a3, @"PropertyValue");
LABEL_23:
      v22 = 0;
      goto LABEL_27;
    }

    captureSource_setPropertyInternal_cold_2();
LABEL_74:
    v13 = 0;
    goto LABEL_75;
  }

  if (!CFEqual(Value, @"PropertySetByAttachedSource"))
  {
    goto LABEL_23;
  }

  if (![*(DerivedStorage + 240) count])
  {
    captureSource_setPropertyInternal_cold_1();
    goto LABEL_74;
  }

  v22 = [(__CFDictionary *)a3 objectForKeyedSubscript:0x1F21A1A90];
  Value = [(__CFDictionary *)a3 objectForKeyedSubscript:0x1F21A19F0];
  a3 = [(__CFDictionary *)a3 objectForKeyedSubscript:0x1F21A1A10];
LABEL_27:
  if (CFEqual(Value, @"VideoZoomFactor"))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  if (CFEqual(Value, @"PrewarmingEnabled"))
  {
    x_low = 0;
    v13 = 0;
    *(DerivedStorage + 216) = [(__CFDictionary *)a3 BOOLValue];
    goto LABEL_34;
  }

  if (CFEqual(Value, @"HasProxy"))
  {
    x_low = 0;
    v13 = 0;
    *(DerivedStorage + 217) = [(__CFDictionary *)a3 BOOLValue];
    goto LABEL_34;
  }

  v119 = isKindOfClass;
  if (*(DerivedStorage + 217) == 1)
  {
    v13 = [*(DerivedStorage + 144) objectForKeyedSubscript:Value];
  }

  else
  {
    v13 = 0;
  }

  if (!*(DerivedStorage + 13))
  {
    if (!CFEqual(Value, @"TorchLevel"))
    {
      goto LABEL_46;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(__CFDictionary *)a3 floatValue];
      captureSource_handleThirdPartyTorchLevelCommand(a1, v26);
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_61(v125);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"ActiveMinFrameRate"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = FigCaptureFrameRateFromData(a3);
      [*(DerivedStorage + 80) setMinimumFrameRate:{v24, v25}];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_3(v125);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"ActiveMaxFrameRate"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!*(DerivedStorage + 224))
      {
        v35 = FigCaptureFrameRateFromData(a3);
        [*(DerivedStorage + 80) setMaximumFrameRate:{v35, v36}];
        goto LABEL_46;
      }

      v150[0] = 0x1F21A0BF0;
      v149[0] = 0x1F21A19F0;
      v149[1] = 0x1F21A1A10;
      v27 = MEMORY[0x1E696AD98];
      v28 = FigCaptureFrameRateFromData(a3);
      *&v30 = FigCaptureFrameRateAsFloat(v28, v29);
      v31 = [v27 numberWithFloat:v30];
      v149[2] = 0x1F21A1A90;
      v32 = *(DerivedStorage + 232);
      v150[1] = v31;
      v150[2] = v32;
      v33 = FigCaptureSourceSetProperty(*(DerivedStorage + 224), 0x1F21A1A70, [MEMORY[0x1E695DF20] dictionaryWithObjects:v150 forKeys:v149 count:3]);
      goto LABEL_54;
    }

    captureSource_setPropertyInternal_cold_4(v125);
LABEL_95:
    x_low = LODWORD(v125[0].origin.x);
    goto LABEL_55;
  }

  if (CFEqual(Value, @"ExternalSyncDeviceSignalCompensationDelay"))
  {
    memset(v125, 0, 24);
    CMTimeMakeFromDictionary(v125, [(__CFDictionary *)a3 objectForKeyedSubscript:@"ExternalSyncDeviceSignalCompensationDelay"]);
    if (BYTE4(v125[0].origin.y))
    {
      v34 = +[FigPulseGenerator sharedFigPulseGenerator];
      *&v124.value = v125[0].origin;
      v124.epoch = *&v125[0].size.width;
      [v34 applySignalCompensationDelay:&v124];
    }

    goto LABEL_46;
  }

  if (CFEqual(Value, @"FrameDurationBounds"))
  {
    memset(v125, 0, 24);
    CMTimeMakeFromDictionary(v125, [(__CFDictionary *)a3 objectForKeyedSubscript:@"FrameDurationMin"]);
    memset(&v124, 0, sizeof(v124));
    CMTimeMakeFromDictionary(&v124, [(__CFDictionary *)a3 objectForKeyedSubscript:@"FrameDurationMax"]);
    v37 = *(DerivedStorage + 80);
    origin = v125[0].origin;
    width = v125[0].size.width;
    v146 = v124;
    [v37 setActiveVideoMinFrameDuration:&origin activeVideoMaxFrameDuration:&v146];
    goto LABEL_46;
  }

  if (CFEqual(Value, @"ActiveDepthDataMaxFrameRate"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(__CFDictionary *)a3 floatValue];
      [*(DerivedStorage + 80) setDepthMaxFrameRate:?];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_5(v125);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"SecondaryClientTargetFrameRate"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = *(DerivedStorage + 80);
      [(__CFDictionary *)a3 floatValue];
      [v38 setMaximumFrameRate:v22 attachedSessionID:?];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_6(v125);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"FocusOperation"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_7(v125);
      goto LABEL_95;
    }

    v33 = captureSource_setFocusOperation(a1, a3, v39, v40, v41, v42, v43, v44, v117);
LABEL_54:
    x_low = v33;
    goto LABEL_55;
  }

  if (CFEqual(Value, @"CinematicVideoFocusOperation"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(DerivedStorage + 80) setCinematicVideoFocus:a3];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_8(v125);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"SimulatedAperture"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = *(DerivedStorage + 80);
      [(__CFDictionary *)a3 floatValue];
      [v45 setSimulatedAperture:?];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_9(v125);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"ObservedPropertyCounts"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_10(v125);
      goto LABEL_95;
    }

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v46 = [(__CFDictionary *)a3 countByEnumeratingWithState:&v142 objects:v141 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v143;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v143 != v48)
          {
            objc_enumerationMutation(a3);
          }

          [*(DerivedStorage + 80) setProperty:*(*(&v142 + 1) + 8 * i) isObserved:{objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](a3, "objectForKeyedSubscript:", *(*(&v142 + 1) + 8 * i)), "intValue") > 0}];
        }

        v47 = [(__CFDictionary *)a3 countByEnumeratingWithState:&v142 objects:v141 count:16];
      }

      while (v47);
    }

    goto LABEL_46;
  }

  if (CFEqual(Value, @"ExposureOperation"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_11(v125);
      goto LABEL_95;
    }

    v33 = captureSource_setExposureOperation(a1, a3, v50, v51, v52, v53, v54, v55, v117);
    goto LABEL_54;
  }

  if (CFEqual(Value, @"ActiveMaxExposureDuration"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memset(v125, 0, 24);
      CMTimeMakeFromDictionary(v125, a3);
      v56 = *(DerivedStorage + 80);
      *&v124.value = v125[0].origin;
      v124.epoch = *&v125[0].size.width;
      [v56 setMaxExposureDurationClientOverride:&v124];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_12(v125);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"ExposureTargetBiasOperation"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_13(v125);
      goto LABEL_95;
    }

    v33 = captureSource_setExposureTargetBiasOperation(a1, a3);
    goto LABEL_54;
  }

  if (CFEqual(Value, @"WhiteBalanceOperation"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_14(v125);
      goto LABEL_95;
    }

    v33 = captureSource_setWhiteBalanceOperation(a1, a3, v57, v58, v59, v60, v61, v62, v117);
    goto LABEL_54;
  }

  if (CFEqual(Value, @"TorchLevel"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_15(v125);
      goto LABEL_95;
    }

    v63 = *(DerivedStorage + 80);
    [(__CFDictionary *)a3 floatValue];
    v33 = [v63 setTorchLevel:?];
    goto LABEL_54;
  }

  if (CFEqual(Value, @"AutoTorchEnabled"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_16(v125);
      goto LABEL_95;
    }

    v33 = [*(DerivedStorage + 80) setAutomaticallyAdjustsTorch:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
    goto LABEL_54;
  }

  if (CFEqual(Value, @"ProvidesStortorgetMetadata"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_17(v125);
      goto LABEL_95;
    }

    v33 = [*(DerivedStorage + 80) setProvidesStortorgetMetadata:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
    goto LABEL_54;
  }

  if (CFEqual(Value, @"AutoAdjustImageControlMode"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_18(v125);
      goto LABEL_95;
    }

    v33 = [*(DerivedStorage + 80) setAutomaticallyAdjustsImageControlMode:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
    goto LABEL_54;
  }

  if (CFEqual(Value, @"ImageControlMode"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_19(v125);
      goto LABEL_95;
    }

    v33 = [*(DerivedStorage + 80) setImageControlMode:{-[__CFDictionary intValue](a3, "intValue")}];
    goto LABEL_54;
  }

  if (CFEqual(Value, @"TimeLapseCaptureRate"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = *(DerivedStorage + 80);
      [(__CFDictionary *)a3 floatValue];
      [v64 setTimeLapseCaptureRate:?];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_20(v125);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"UltraHighResolutionZeroShutterLagEnabled"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(DerivedStorage + 80) setUltraHighResolutionZeroShutterLagEnabled:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_21(v125);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"FaceDrivenAEAFMode"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_22(v125);
      goto LABEL_95;
    }

    v33 = captureSource_setFaceDrivenAEAFMode(a1, [(__CFDictionary *)a3 intValue]);
    goto LABEL_54;
  }

  if (CFEqual(Value, @"FaceDetectionConfiguration"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(DerivedStorage + 80) setFaceDetectionConfiguration:a3];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_23(v125);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"StillImageSceneMonitoringConfiguration"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_24(v125);
      goto LABEL_95;
    }

    v33 = [*(DerivedStorage + 80) setStillImageSceneMonitoringFlashMode:objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](a3 hdrMode:"objectForKeyedSubscript:" qualityPrioritization:@"FlashMode" digitalFlashMode:{"intValue"), objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](a3, "objectForKeyedSubscript:", @"HDRMode", "intValue"), objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](a3, "objectForKeyedSubscript:", @"QualityPrioritization", "intValue"), objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](a3, "objectForKeyedSubscript:", @"DigitalFlashMode", "intValue")}];
    goto LABEL_54;
  }

  if (CFEqual(Value, @"VideoZoomFactor"))
  {
    if ((v119 & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(__CFDictionary *)a3 floatValue];
        [*(DerivedStorage + 80) setZoomFactor:?];
        v11 = 1;
LABEL_170:
        v12 = v120;
        goto LABEL_9;
      }

      x_low = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0x7D8, v3, v77, v78, v117);
      if (!x_low)
      {
LABEL_169:
        v11 = 0;
        goto LABEL_170;
      }

      goto LABEL_34;
    }

    v65 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomFactor"];
    v121 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomRampRate"];
    v66 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomRampDuration"];
    v67 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomRampType"];
    v68 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomRampTuning"];
    v69 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomRampCommandID"];
    if (v65)
    {
      if (v121)
      {
        if (v66)
        {
          if (v67)
          {
            if (v68)
            {
              v70 = v69;
              if (v69)
              {
                [v65 floatValue];
                v72 = v71;
                if ([v67 intValue] == 3)
                {
                  v73 = [v68 intValue];
                  v74 = *(DerivedStorage + 80);
                  v75 = [v70 intValue];
                  LODWORD(v76) = v72;
                  [v74 rampToVideoZoomFactor:(v73 + 1) withTuning:v75 commandID:v76];
                }

                else
                {
                  v79 = *(DerivedStorage + 80);
                  v80 = [v67 intValue];
                  [v121 floatValue];
                  v82 = v81;
                  [v66 doubleValue];
                  v84 = v83;
                  v85 = [v70 intValue];
                  LODWORD(v86) = v72;
                  LODWORD(v87) = v82;
                  [v79 rampToVideoZoomFactor:v80 withRampType:v85 rate:v86 duration:v87 commandID:v84];
                }

                goto LABEL_47;
              }

              captureSource_setPropertyInternal_cold_25();
            }

            else
            {
              captureSource_setPropertyInternal_cold_26(v69);
            }
          }

          else
          {
            captureSource_setPropertyInternal_cold_27(v69);
          }
        }

        else
        {
          captureSource_setPropertyInternal_cold_28(v69);
        }
      }

      else
      {
        captureSource_setPropertyInternal_cold_29(v69);
      }
    }

    else
    {
      captureSource_setPropertyInternal_cold_30(v69);
    }

LABEL_75:
    x_low = 4294954516;
    goto LABEL_34;
  }

  if (CFEqual(Value, @"VideoZoomRampAcceleration"))
  {
    goto LABEL_46;
  }

  if (CFEqual(Value, @"SubjectAreaChangeMonitoringEnabled"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_31(v125);
      goto LABEL_95;
    }

    v33 = [*(DerivedStorage + 80) setSubjectAreaChangeMonitoringEnabled:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
    goto LABEL_54;
  }

  if (CFEqual(Value, @"BravoCameraSelection"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v125[0].origin.x = 0.0;
      v125[0].origin.y = 0.0;
      [(__CFDictionary *)a3 getBytes:v125 length:16];
      [*(DerivedStorage + 80) setBravoStreamSelectionConfiguration:{*&v125[0].origin.x, *&v125[0].origin.y}];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_32(v125);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"EligibleFallbackCaptureSourceDeviceTypes"))
  {
    if (a3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        captureSource_setPropertyInternal_cold_33(v125);
        goto LABEL_95;
      }
    }

    v88 = [objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{@"Position", "intValue"}];
    v89 = [MEMORY[0x1E695DF70] array];
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v90 = [(__CFDictionary *)a3 countByEnumeratingWithState:&v137 objects:v136 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v138;
      do
      {
        for (j = 0; j != v91; ++j)
        {
          if (*v138 != v92)
          {
            objc_enumerationMutation(a3);
          }

          [v89 addObject:{BWCaptureDevicePositionAndDeviceTypeToPortType(v88, objc_msgSend(*(*(&v137 + 1) + 8 * j), "intValue"))}];
        }

        v91 = [(__CFDictionary *)a3 countByEnumeratingWithState:&v137 objects:v136 count:16];
      }

      while (v91);
    }

    [*(DerivedStorage + 80) setBravoStreamSelectionEligibleFallbackPortTypes:v89];
    goto LABEL_46;
  }

  if (CFEqual(Value, @"NonDestructiveCropSize"))
  {
    v125[0].origin = *MEMORY[0x1E695F060];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (CGSizeMakeWithDictionaryRepresentation(a3, v125))
      {
        [*(DerivedStorage + 80) setNonDestructiveCropSize:{v125[0].origin.x, v125[0].origin.y}];
        x_low = 0;
        goto LABEL_55;
      }

      captureSource_setPropertyInternal_cold_35(&v124);
    }

    else
    {
      captureSource_setPropertyInternal_cold_34(&v124);
    }

    x_low = LODWORD(v124.value);
LABEL_55:
    if (!x_low)
    {
      goto LABEL_46;
    }

LABEL_34:
    [*(DerivedStorage + 240) count];
    if (!v13)
    {
      return x_low;
    }

    goto LABEL_18;
  }

  if (CFEqual(Value, @"AutoFlashEnabled"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_36(v125);
      goto LABEL_95;
    }

    v125[0].origin.x = 0.0;
    v94 = [(__CFDictionary *)a3 BOOLValue];
    [*(DerivedStorage + 80) setAutoFlashEnabled:v94 error:v125];
    x_low = [*&v125[0].origin.x code];
    v95 = [*(DerivedStorage + 144) objectForKeyedSubscript:@"StillImageSceneMonitoringConfiguration"];
    v134[0] = @"FlashMode";
    if (v94)
    {
      v96 = 2;
    }

    else
    {
      v96 = 0;
    }

    v135[0] = [MEMORY[0x1E696AD98] numberWithInt:v96];
    v134[1] = @"HDRMode";
    v135[1] = [v95 objectForKeyedSubscript:?];
    v134[2] = @"QualityPrioritization";
    v135[2] = [v95 objectForKeyedSubscript:?];
    v134[3] = @"DigitalFlashMode";
    v135[3] = [v95 objectForKeyedSubscript:?];
    [*(DerivedStorage + 144) setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v135, v134, 4), @"StillImageSceneMonitoringConfiguration"}];
    goto LABEL_55;
  }

  if (CFEqual(Value, @"StillImageStabilizationAutomaticallyEnabled"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_37(v125);
      goto LABEL_95;
    }

    v97 = [(__CFDictionary *)a3 BOOLValue];
    [*(DerivedStorage + 80) setStillImageStabilizationSceneDetectionEnabled:v97];
    v98 = [*(DerivedStorage + 144) objectForKeyedSubscript:@"StillImageSceneMonitoringConfiguration"];
    v132[0] = @"FlashMode";
    v133[0] = [v98 objectForKeyedSubscript:?];
    v132[1] = @"HDRMode";
    v133[1] = [v98 objectForKeyedSubscript:?];
    v132[2] = @"QualityPrioritization";
    if (v97)
    {
      v99 = 2;
    }

    else
    {
      v99 = 1;
    }

    v133[2] = [MEMORY[0x1E696AD98] numberWithInt:v99];
    v132[3] = @"DigitalFlashMode";
    v133[3] = [v98 objectForKeyedSubscript:?];
    [*(DerivedStorage + 144) setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v133, v132, 4), @"StillImageSceneMonitoringConfiguration"}];
  }

  else if (CFEqual(Value, @"ResumeAdjustingFocusNotifications_FigCaptureSessionOnly"))
  {
    if (*(DerivedStorage + 198) == 1)
    {
      v100 = *(DerivedStorage + 80);
      v131[0] = MEMORY[0x1E69E9820];
      v131[1] = 3221225472;
      v131[2] = __captureSource_setPropertyInternal_block_invoke;
      v131[3] = &__block_descriptor_48_e5_v8__0l;
      v131[4] = DerivedStorage;
      v131[5] = a1;
      [v100 performBlockOnNotificationQueue:v131];
    }
  }

  else if (CFEqual(Value, @"VideoHDRSuspended"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_38(v125);
      goto LABEL_95;
    }

    v101 = [(__CFDictionary *)a3 BOOLValue];
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v102 = [*(DerivedStorage + 80) captureStreams];
    v103 = [v102 countByEnumeratingWithState:&v127 objects:v126 count:16];
    if (v103)
    {
      v104 = v103;
      v105 = *v128;
      do
      {
        for (k = 0; k != v104; ++k)
        {
          if (*v128 != v105)
          {
            objc_enumerationMutation(v102);
          }

          [*(*(&v127 + 1) + 8 * k) setHighlightRecoverySuspended:v101];
        }

        v104 = [v102 countByEnumeratingWithState:&v127 objects:v126 count:16];
      }

      while (v104);
    }
  }

  else
  {
    if (CFEqual(Value, @"DigitalFlashMode"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setStreamingDigitalFlashMode:{-[__CFDictionary intValue](a3, "intValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_39(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"GlobalToneMappingEnabled"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setGlobalToneMappingEnabled:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_40(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"OverheadCameraMode"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setOverheadCameraMode:{-[__CFDictionary intValue](a3, "intValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_41(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"DeskViewCameraZoomFactor"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(__CFDictionary *)a3 floatValue];
        [*(DerivedStorage + 80) setDeskViewCameraZoomFactor:?];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_42(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"CenterStageRectOfInterest"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        memset(v125, 0, 32);
        CGRectMakeWithDictionaryRepresentation(a3, v125);
        [*(DerivedStorage + 80) setCenterStageRectOfInterest:{v125[0].origin.x, v125[0].origin.y, v125[0].size.width, v125[0].size.height}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_43(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"CenterStageFramingMode"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setCenterStageFramingMode:{-[__CFDictionary intValue](a3, "intValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_44(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"CenterStageMetadataDeliveryEnabled"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setCenterStageMetadataDeliveryEnabled:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_45(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"StartPanningAtPoint"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v125[0].origin.x = 0.0;
        v125[0].origin.y = 0.0;
        CGPointMakeWithDictionaryRepresentation(a3, &v125[0].origin);
        [*(DerivedStorage + 80) startPanningAtPoint:{v125[0].origin.x, v125[0].origin.y}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_46(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"PanWithTranslation"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v125[0].origin.x = 0.0;
        v125[0].origin.y = 0.0;
        CGPointMakeWithDictionaryRepresentation(a3, &v125[0].origin);
        [*(DerivedStorage + 80) panWithTranslation:{v125[0].origin.x, v125[0].origin.y}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_47(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"PortraitEffectStudioLightQuality"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setPortraitEffectStudioLightQuality:{-[__CFDictionary intValue](a3, "intValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_48(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"BackgroundBlurAperture"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(__CFDictionary *)a3 floatValue];
        [*(DerivedStorage + 80) setBackgroundBlurAperture:?];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_49(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"StudioLightingIntensity"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(__CFDictionary *)a3 floatValue];
        [*(DerivedStorage + 80) setStudioLightingIntensity:?];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_50(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"GesturesEnabled"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setGesturesEnabled:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_51(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"SuppressedGesturesEnabled"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setSuppressedGesturesEnabled:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_52(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"BackgroundReplacementPixelBuffer"))
    {
      if (!a3 || (v107 = CFGetTypeID(a3), v107 == CVPixelBufferGetTypeID()))
      {
        [*(DerivedStorage + 80) setBackgroundReplacementPixelBuffer:a3];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_53(v125);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"PerformOneShotFraming"))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        captureSource_setPropertyInternal_cold_54(v125);
        goto LABEL_95;
      }

      if ([(__CFDictionary *)a3 BOOLValue])
      {
        [*(DerivedStorage + 80) performOneShotFraming];
      }
    }

    else if (CFEqual(Value, @"ResetFraming"))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        captureSource_setPropertyInternal_cold_55(v125);
        goto LABEL_95;
      }

      if ([(__CFDictionary *)a3 BOOLValue])
      {
        [*(DerivedStorage + 80) resetFraming];
      }
    }

    else
    {
      if (CFEqual(Value, @"CenterStageFieldOfViewRestrictedToWide"))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(DerivedStorage + 80) setCenterStageFieldOfViewRestrictedToWide:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
          goto LABEL_46;
        }

        captureSource_setPropertyInternal_cold_56(v125);
        goto LABEL_95;
      }

      if (!CFEqual(Value, @"Hidden"))
      {
        if (CFEqual(Value, @"EnabledSmartFramingFieldsOfView"))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(DerivedStorage + 80) setSmartFramingEnabledFieldsOfView:a3];
            goto LABEL_46;
          }

          captureSource_setPropertyInternal_cold_58(v125);
          goto LABEL_95;
        }

        if (CFEqual(Value, @"SmartFramingMonitorRunning"))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(DerivedStorage + 80) setSmartFramingIsMonitoringScene:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
            goto LABEL_46;
          }

          captureSource_setPropertyInternal_cold_59(v125);
          goto LABEL_95;
        }

        if (!CFEqual(Value, @"DeskViewEnabled"))
        {
          if (![*(DerivedStorage + 80) device] || !BWDeviceTypeIsExtensionDeviceType(v8))
          {
            x_low = 4294954512;
            goto LABEL_34;
          }

          if (dword_1ED844030)
          {
            LODWORD(origin.x) = 0;
            LOBYTE(v146.value) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v33 = [objc_msgSend(*(DerivedStorage + 80) device];
          goto LABEL_54;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          captureSource_setPropertyInternal_cold_60(v125, v109, v110, v111, v112, v113, v114, v115);
          goto LABEL_95;
        }

        v33 = captureSource_setDeskViewEnabled(a1, [(__CFDictionary *)a3 BOOLValue]);
        goto LABEL_54;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        captureSource_setPropertyInternal_cold_57(v125);
        goto LABEL_95;
      }

      if ([*(DerivedStorage + 80) device])
      {
        [objc_msgSend(*(DerivedStorage + 80) "device")];
      }

      else if (dword_1ED844030)
      {
        LODWORD(origin.x) = 0;
        LOBYTE(v146.value) = 0;
        v108 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

LABEL_46:
  if ((v119 & 1) == 0)
  {
    goto LABEL_169;
  }

LABEL_47:
  if (!*(DerivedStorage + 13))
  {
    [*(DerivedStorage + 144) setObject:-[__CFDictionary objectForKeyedSubscript:](a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"ZoomFactor", Value}];
    v122[0] = 0x1F21A13D0;
    v123[0] = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomFactor"];
    v122[1] = 0x1F21A1C90;
    v123[1] = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomFactor"];
    v122[2] = 0x1F21A1470;
    v122[3] = 0x1F21A1CB0;
    v123[2] = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomRampCommandID"];
    v123[3] = MEMORY[0x1E695E118];
    captureSource_postNotificationWithPayload(a1, @"VideoZoomRampUpdate", [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:v122 count:4]);
  }

  [*(DerivedStorage + 240) count];
LABEL_17:
  x_low = 0;
  if (v13)
  {
LABEL_18:
    CFRelease(v13);
  }

  return x_low;
}

BOOL fcsf_isHighResPhotoFormat(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if (a1 == 2016 && v1 == 1512)
  {
    return 1;
  }

  v5 = a1 == 2048 && v1 == 1536;
  v2 = 1;
  if ((a1 & 0xFFFFFFF7FFFFFFFFLL) != 0x79000000A20 && !v5 && (a1 != 2736 || v1 != 2052))
  {
    v7 = v1 == 2320 || v1 == 2316;
    if (a1 == 3088 && v7 || a1 == 3264 && v1 == 2448 || a1 == 3680 && v1 == 2760)
    {
      return 1;
    }

    return a1 == 4032 && v1 == 3024;
  }

  return v2;
}

uint64_t captureSource_copyCaptureSourcesForStreamUniqueIDs(void *a1, const __CFArray *a2)
{
  v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a1;
  v12 = [a1 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v12)
  {
    v11 = *v16;
    do
    {
      v4 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v15 + 1) + 8 * v4);
        if (CFArrayGetCount(a2) >= 1)
        {
          v6 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            [*(DerivedStorage + 104) objectForKeyedSubscript:@"UniqueID"];
            if (objc_msgSend_isEqualToString_(v5))
            {
              [v13 setObject:ValueAtIndex forKeyedSubscript:{BWCaptureDevicePositionAndDeviceTypeToPortType(objc_msgSend(objc_msgSend(*(DerivedStorage + 104), "objectForKeyedSubscript:", @"Position", "intValue"), objc_msgSend(objc_msgSend(*(DerivedStorage + 104), "objectForKeyedSubscript:", @"DeviceType", "intValue"))}];
            }

            ++v6;
          }

          while (CFArrayGetCount(a2) > v6);
        }

        ++v4;
      }

      while (v4 != v12);
      v12 = [obj countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v12);
  }

  return [v13 copy];
}

uint64_t FigCaptureClientHasAccessToCamera(_OWORD *a1)
{
  v2 = a1[1];
  *v10.val = *a1;
  *&v10.val[4] = v2;
  if (audit_token_to_pid(&v10))
  {
    result = FigCameraUsageProhibited();
    if (!result || (v5 = a1[1], *v10.val = *a1, *&v10.val[4] = v5, result = FigCameraUsageAllowedForClient(&v10), result))
    {
      TCCServer = FigCaptureGetTCCServer(result, v4);
      v7 = *MEMORY[0x1E69D5520];
      v8 = a1[1];
      *v10.val = *a1;
      *&v10.val[4] = v8;
      if (FigCaptureTCCAccessCheckAuditToken(TCCServer, v7, &v10))
      {
        return 1;
      }

      else
      {
        v9 = a1[1];
        *v10.val = *a1;
        *&v10.val[4] = v9;
        return FigCaptureClientIsRunningInXCTest(&v10) != 0;
      }
    }
  }

  else
  {
    FigCaptureClientHasAccessToCamera_cold_1();
    return 0;
  }

  return result;
}

BOOL FigCameraUsageProhibited()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v2 = [v1 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE00]] == 2;
  objc_autoreleasePoolPop(v0);
  return v2;
}

BOOL FigCaptureTCCAccessCheckAuditToken(uint64_t a1, uint64_t a2, __int128 *a3)
{
  tcc_service_singleton_for_CF_name();
  v3 = tcc_credential_create_for_process_with_audit_token();
  v4 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000uLL;
  tcc_server_message_request_authorization();

  v5 = v8[3] == 2;
  _Block_object_dispose(&v7, 8);
  return v5;
}

void sub_1AC92B218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigCaptureGetTCCServer(uint64_t a1, uint64_t a2)
{
  if (FigCaptureGetTCCServer_onceToken != -1)
  {
    FigCaptureGetTCCServer_cold_1();
  }

  return FigCaptureGetTCCServer_sFigCaptureTCCServer;
}

uint64_t __FigCaptureTCCAccessCheckAuditToken_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    result = tcc_authorization_record_get_authorization_right();
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t FigVideoCaptureSourceSetClientProcessRequiresDynamicTCCAccessChecks(uint64_t a1, char a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 8) == 1)
  {
    v4 = result;
    if (!*(result + 12))
    {
      FigSimpleMutexLock();
      *(v4 + 197) = a2;

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

id *FigVideoCaptureSourceSetClientProcessHasAccessToCamera(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 12))
  {
    v4 = result;
    if (*(result + 2) == 1)
    {
      result = [objc_msgSend(result[13] objectForKeyedSubscript:{@"DeviceType", "intValue"}];
      if ((result - 17) >= 4)
      {
        FigSimpleMutexLock();
        *(v4 + 196) = a2;
        v5 = v4[10];
        if (v5)
        {
          BWFigVideoCaptureDeviceSetClientProcessHasAccessToCamera(v5, a2);
        }

        return FigSimpleMutexUnlock();
      }
    }
  }

  return result;
}

uint64_t __csr_createFormatsArrayFromSerializedSource_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[FigCaptureSourceVideoFormat alloc] initWithXPCEncoding:a3];
  [*(a1 + 32) addObject:v4];
  if ([(FigCaptureSourceFormat *)v4 format]== 875704438 && *(a1 + 40) == 1)
  {
    v5 = [(FigCaptureSourceVideoFormat *)v4 copyWithNewPixelFormat:875704422];
    if (v5)
    {
      v6 = v5;
      [*(a1 + 32) addObject:v5];
    }
  }

  return 1;
}

uint64_t captureSourceServer_handleSourceCopyPropertyMessage(uint64_t a1, void *a2, uint64_t a3)
{
  cf1 = 0;
  v9 = 0;
  cf = 0;
  v3 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2, &v9);
  if (v3)
  {
    v6 = v3;
    captureSourceServer_handleSourceCopyPropertyMessage_cold_1();
  }

  else
  {
    v4 = FigXPCMessageCopyCFString();
    if (v4)
    {
      v6 = v4;
      captureSourceServer_handleSourceCopyPropertyMessage_cold_2();
    }

    else
    {
      captureSourceServer_handleSourceCopyPropertyMessage_cold_5(&v10);
      v6 = v10;
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t captureSourceRemote_LockForConfiguration(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigAtomicIncrement32();
  return 0;
}

uint64_t captureSourceRemote_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"Clock"))
  {
    v7 = *(DerivedStorage + 16);
    v8 = a3 ? CFRetain(a3) : 0;
    *(DerivedStorage + 16) = v8;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (*(DerivedStorage + 48) < 1)
  {
    v10 = 4294950844;
  }

  else
  {
    ObjectID = captureSourceRemote_getObjectID(a1, &v12);
    if (ObjectID)
    {
      v10 = ObjectID;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_12();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else
    {
      v10 = FigXPCSendStdSetPropertyMessage();
      if (v10)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_12();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v10;
}

uint64_t captureSourceServer_handleSourceSetPropertyMessage(uint64_t a1, void *a2)
{
  v7 = 0;
  v2 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2, &v7);
  if (v2)
  {
    v5 = v2;
    captureSourceServer_handleSourceSetPropertyMessage_cold_1(v2, &v7, &v8);
    v3 = v8;
  }

  else
  {
    v3 = v7;
    v4 = FigXPCHandleStdSetPropertyMessage();
    v5 = v4;
    if (v4)
    {
      captureSourceServer_handleSourceSetPropertyMessage_cold_2(v4);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

uint64_t captureSourceRemote_UnlockForConfiguration(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((FigAtomicDecrement32() & 0x80000000) != 0)
  {
    *(DerivedStorage + 48) = 0;
  }

  return 0;
}

uint64_t captureSourceRemote_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, const void **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    captureSourceRemote_CopyProperty_cold_7(DerivedStorage);
    goto LABEL_51;
  }

  v9 = DerivedStorage;
  if (!CFEqual(a2, @"Clock"))
  {
    if (CFEqual(a2, @"AttributesDictionary"))
    {
      CFRetain(*(v9 + 32));
      v11 = 0;
      v12 = *(v9 + 32);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"Formats"))
    {
      CFRetain(*(v9 + 40));
      v11 = 0;
      v12 = *(v9 + 40);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"SourceToken"))
    {
      v14 = (v9 + 24);
      if (!*(v9 + 24))
      {
        goto LABEL_23;
      }

      v15 = *MEMORY[0x1E695E480];
      v16 = kCFNumberSInt64Type;
    }

    else
    {
      if (CFEqual(a2, @"LockedForConfiguration"))
      {
        captureSourceRemote_CopyProperty_cold_8(v9, a4);
        goto LABEL_51;
      }

      if (!CFEqual(a2, @"LockedForConfigurationCount"))
      {
        if (CFEqual(a2, @"ServerConnectionDied"))
        {
          v11 = 0;
          if (*(v9 + 9))
          {
            v17 = MEMORY[0x1E695E4D0];
          }

          else
          {
            v17 = MEMORY[0x1E695E4C0];
          }

          v12 = *v17;
          goto LABEL_9;
        }

        goto LABEL_23;
      }

      v15 = *MEMORY[0x1E695E480];
      v14 = (v9 + 48);
      v16 = kCFNumberSInt32Type;
    }

    v11 = 0;
    *a4 = CFNumberCreate(v15, v16, v14);
    goto LABEL_10;
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    CFRetain(v10);
    v11 = 0;
    v12 = *(v9 + 16);
LABEL_9:
    *a4 = v12;
    goto LABEL_10;
  }

LABEL_23:
  v18 = CFEqual(a2, @"Clock");
  if (!v18)
  {
    v35 = 0;
    v24 = captureSourceRemote_createBasicMessage(a1, 778268793, &v35);
    if (v24)
    {
      v11 = v24;
      captureSourceRemote_CopyProperty_cold_2();
    }

    else
    {
      v25 = FigXPCMessageSetCFString();
      if (v25)
      {
        v11 = v25;
        captureSourceRemote_CopyProperty_cold_3();
      }

      else
      {
        v26 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v26)
        {
          v27 = FigXPCRelease();
          captureSourceRemote_CopyProperty_cold_6(v27);
LABEL_51:
          v11 = 0;
          goto LABEL_10;
        }

        v11 = v26;
        captureSourceRemote_CopyProperty_cold_4();
      }
    }

    FigXPCRelease();
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v11, v29, 0, v29, v31, v32, v33, v34);
    goto LABEL_10;
  }

  if (*(v9 + 52) == 2 && (FigCaptureAudiomxdSupportEnabled(v18, v19) & 1) != 0)
  {
    v11 = 4294954509;
  }

  else
  {
    v39 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v30 = MEMORY[0x1E69E9820];
    v20 = FigAudioDeviceClockRemoteCreateForServerObject();
    v11 = v20;
    if (v20 == 1315914603 || v20 == 0)
    {
      v22 = *(v36 + 6);
      if (v22)
      {
        if (v22 == 1)
        {
          if (v39)
          {
            fig_log_get_emitter();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, 0, v30, -1073741824, __captureSourceRemote_copyClock_block_invoke, byte_1E7990BE8, &v35);
          }

          HostTimeClock = CMClockGetHostTimeClock();
          if (HostTimeClock)
          {
            HostTimeClock = CFRetain(HostTimeClock);
          }

          v39 = HostTimeClock;
        }
      }

      else if (v39)
      {
        fig_log_get_emitter();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, 0, v30, -1073741824, __captureSourceRemote_copyClock_block_invoke, byte_1E7990BE8, &v35);
      }

      v11 = 0;
      *(v9 + 16) = v39;
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v11, v4, 0, v30, -1073741824, __captureSourceRemote_copyClock_block_invoke, byte_1E7990BE8, &v35);
    }

    _Block_object_dispose(&v35, 8);
    v28 = *(v9 + 16);
    if (v28)
    {
      v28 = CFRetain(v28);
    }

    *a4 = v28;
    if (v11)
    {
      captureSourceRemote_CopyProperty_cold_1(v11);
    }
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v11;
}

void sub_1AC92C218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t FigCaptureFitAspectInsideDimensions(uint64_t a1, uint64_t a2, float a3)
{
  if (a3 == 0.0)
  {
    a3 = a1 / SHIDWORD(a1);
  }

  if ((a1 / SHIDWORD(a1)) >= a3)
  {
    v4 = (SHIDWORD(a1) / SHIDWORD(a2) * HIDWORD(a2));
    v3 = llroundf((a3 * v4) / a2) * a2;
    if (v3 > a1)
    {
      v3 -= a2;
      v4 = llroundf((v3 / a3) / SHIDWORD(a2)) * HIDWORD(a2);
    }
  }

  else
  {
    v3 = a1 / a2 * a2;
    v4 = llroundf((v3 / a3) / SHIDWORD(a2)) * HIDWORD(a2);
    if (v4 > SHIDWORD(a1))
    {
      v4 = (v4 - HIDWORD(a2));
      v3 = llroundf((a3 * v4) / a2) * a2;
    }
  }

  return v3 | (v4 << 32);
}

uint64_t FigCaptureFrameRateAsData(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = a2;
  return [MEMORY[0x1E695DEF0] dataWithBytes:&v3 length:12];
}

uint64_t FigCaptureSourceCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 8);
  result = VTable + 8;
  v11 = *(v10 + 48);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t FigCaptureSourceCopyProperty_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t captureSource_setPropertyWithDeviceCheck(const void *a1, int a2, uint64_t a3, void *a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    captureSource_setPropertyWithDeviceCheck_cold_5(&v23);
    return v23;
  }

  v11 = DerivedStorage;
  FigSimpleMutexLock();
  if (*(v11 + 12))
  {
    captureSource_setPropertyWithDeviceCheck_cold_1(&v23, v12, v13, v14, v15, v16, v17, v18);
    goto LABEL_20;
  }

  if (a3)
  {
    v19 = *(v11 + 80) == a3;
    if (!a2)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (!v19)
    {
      captureSource_setPropertyWithDeviceCheck_cold_2(&v23);
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  v19 = 0;
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (*(v11 + 64) > 0)
  {
    if (BWDeviceTypeIsExtensionDeviceType([objc_msgSend(*(v11 + 104) objectForKeyedSubscript:{@"DeviceType", "intValue"}]) || objc_msgSend(*(v11 + 152), "containsObject:", a4))
    {
      v20 = captureSource_setPropertyInternal(a1, a4, a5);
      v21 = v20;
      if (v20)
      {
        captureSource_setPropertyWithDeviceCheck_cold_3(v20);
      }
    }

    else
    {
      v21 = 4294954512;
    }

    goto LABEL_14;
  }

  captureSource_setPropertyWithDeviceCheck_cold_4(&v23);
LABEL_20:
  v21 = v23;
LABEL_14:
  FigSimpleMutexUnlock();
  return v21;
}

void __captureSourceServer_handleCopySourcesMessage_block_invoke(uint64_t a1)
{
  if ((gFigXPCServerCaptureSource_block_invoke_registeredForChanges & 1) == 0)
  {
    gFigXPCServerCaptureSource_block_invoke_registeredForChanges = 1;
    FigCameraUsageRegisterChangeHandler(&__block_literal_global_126);
  }

  v2 = *(a1 + 56);
  *v13.val = *(a1 + 40);
  *&v13.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(*MEMORY[0x1E695E480], &v13);
  if (v3)
  {
    v4 = v3;
    v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.tcc.delegated-services", 0);
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFArrayGetTypeID())
      {
        v14.length = CFArrayGetCount(v6);
        v14.location = 0;
        v8 = CFArrayContainsValue(v6, v14, *MEMORY[0x1E69D5520]) != 0;
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 56);
  *v13.val = *(a1 + 40);
  *&v13.val[4] = v9;
  HasAccessToCamera = FigCaptureClientHasAccessToCamera(&v13);
  if (CFArrayGetCount(*(a1 + 32)) >= 1)
  {
    v11 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v11);
      FigVideoCaptureSourceSetClientProcessRequiresDynamicTCCAccessChecks(ValueAtIndex, v8);
      FigVideoCaptureSourceSetClientProcessHasAccessToCamera(ValueAtIndex, HasAccessToCamera);
      ++v11;
    }

    while (v11 < CFArrayGetCount(*(a1 + 32)));
  }

  CFRelease(*(a1 + 32));
}

BOOL OUTLINED_FUNCTION_135_0(NSObject *a1)
{
  v3 = *(v1 - 133);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_135_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return [v18 _indexOfBufferBeforeOrEqualToPTS:va inputIndex:0 applyFrameDropsMitigation:{1, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_135_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{

  return [a45 setObject:a1 forKeyedSubscript:{v45, a5, a6, a7, a8}];
}

CGFloat OUTLINED_FUNCTION_134(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{

  return FigCaptureMetadataUtilitiesScaleRect2D(a1.n128_f64[0], a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0], v7);
}

uint64_t OUTLINED_FUNCTION_134_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return [v28 countByEnumeratingWithState:va objects:&a13 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_134_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [v65 countByEnumeratingWithState:&a65 objects:&a55 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_134_2(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [a1 countByEnumeratingWithState:v9 - 112 objects:&a9 count:{16, a6, a7, a8}];
}

void *BWInvertRowMajorViewMatrixData(void *result)
{
  if (result)
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    [result getBytes:&v16 length:{objc_msgSend(result, "length")}];
    v1 = vzip1q_s32(v16, v18);
    v2 = vzip1q_s32(v17, 0);
    v3 = vzip1q_s32(v1, v2);
    v4 = vzip2q_s32(v1, v2);
    v5 = vzip1q_s32(vzip2q_s32(v16, v18), vdupq_laneq_s32(v17, 2));
    v6 = vzip1q_s32(v3, v5);
    v7 = vdupq_lane_s32(*v4.i8, 1);
    v8 = vzip1q_s32(v6, v4);
    v9 = vzip1q_s32(vzip2q_s32(v3, v5), vdupq_lane_s32(*v18.i8, 1));
    v10 = vzip2q_s32(v6, v7);
    v11 = vnegq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v16, v16, 3), v17, v17, 3), v18, v18, 3));
    v12 = vzip1q_s32(v8, v9);
    v13 = vzip2q_s32(v8, v9);
    v14 = vzip1q_s32(v10, v11);
    v15[0] = vzip1q_s32(v12, v14);
    v15[1] = vzip2q_s32(v12, v14);
    v15[2] = vzip1q_s32(v13, vzip2q_s32(v10, v11));
    return [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:48];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_149(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);

  return [v56 countByEnumeratingWithState:va objects:&a41 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_83_4()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_64_1(void *a1, const char *a2, uint64_t a3)
{

  return [a1 processorController:a3 didFinishProcessingBuffer:v3 metadata:v4 type:19 captureFrameFlags:0 processorInput:? err:?];
}

uint64_t OUTLINED_FUNCTION_86_2()
{
  v4 = *(v0 + *(v2 + 3628));

  return [v4 objectForKeyedSubscript:v1];
}

CFTypeRef OUTLINED_FUNCTION_4_12@<X0>(CMAttachmentBearerRef target@<X1>, const __CFString *a2@<X8>)
{

  return CMGetAttachment(target, a2, 0);
}

uint64_t OUTLINED_FUNCTION_86_5()
{
  *(v0 - 100) = 0;
  *(v0 - 101) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_46_4()
{
  v3 = *(v1 + *(v0 + 2812));

  return [v3 inputs];
}

uint64_t OUTLINED_FUNCTION_46_6()
{
  *(v0 - 92) = 0;
  *(v0 - 93) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_46_7(CFTypeRef value)
{

  CMSetAttachment(v2, v1, value, 1u);
}

uint64_t OUTLINED_FUNCTION_46_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [v64 objectForKeyedSubscript:{a64, a4, a5, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_46_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, __int16 a40, char a41, char a42, int a43)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_46_14(uint64_t a1)
{

  return objc_opt_isKindOfClass();
}

uint64_t OUTLINED_FUNCTION_46_16@<X0>(uint64_t a1@<X8>)
{

  return CMSimpleQueueCreate(v3, v2, (v1 + a1));
}

uint64_t OUTLINED_FUNCTION_46_18()
{
  *(v0 - 92) = 0;
  *(v0 - 93) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_131()
{
  v3 = *(v0 + *v1);

  return [v3 videoFormat];
}

BOOL OUTLINED_FUNCTION_131_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int16 a38, char a39, os_log_type_t type, int a41)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_131_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [v65 countByEnumeratingWithState:v66 - 176 objects:&a65 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_131_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return [v32 countByEnumeratingWithState:v33 - 160 objects:va count:{16, a6, a7, a8}];
}

BOOL OUTLINED_FUNCTION_55(NSObject *a1)
{
  v2 = STACK[0x250];

  return os_log_type_enabled(a1, v2);
}

__n128 OUTLINED_FUNCTION_55_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14, uint64_t a15)
{
  result = a14;
  *(v15 - 208) = a14;
  *(v15 - 192) = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return [v32 countByEnumeratingWithState:v33 - 160 objects:va count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_55_9()
{
  v1 = STACK[0x308];

  return [v1 countByEnumeratingWithState:&STACK[0x770] objects:&STACK[0x6F0] count:16];
}

CMTime *OUTLINED_FUNCTION_55_13@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16, uint64_t a7, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a11, uint64_t a12)
{
  rhs_16 = a1;

  return CMTimeAdd(&a12, &lhsa, &rhsa);
}

CFTypeRef OUTLINED_FUNCTION_55_14(uint64_t a1, const __CFString *a2)
{

  return CMGetAttachment(v2, a2, 0);
}

double OUTLINED_FUNCTION_73_2()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_73_5()
{
  v3 = *(v0 + 280);

  return [v3 addObject:v1];
}

uint64_t captureSession_buildGraphWithConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v936 = v4;
  v949 = v6;
  v962 = v7;
  v9 = v8;
  v971 = v10;
  v946 = v11;
  v955 = v12;
  v14 = v13;
  v1036 = v5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1230 = 0;
  v1229 = 0;
  v1228 = 0;
  v977 = v14;
  v953 = [v14 configuresAppAudioSessionToMixWithOthers];
  v1039 = DerivedStorage;
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_buildGraphWithConfiguration_cold_1();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v16 = v1036;
  if (dword_1ED844050)
  {
    LODWORD(v1268[0]) = 0;
    LOBYTE(v1246) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = v1036;
  }

  if (*(DerivedStorage + 752))
  {
    captureSession_buildGraphWithConfiguration_cold_2();
    goto LABEL_984;
  }

  v18 = [*(DerivedStorage + 776) count];
  os_unfair_lock_lock((v1039 + 384));
  v1230 = captureSession_checkClientSessionIsAllowedToRun(v16, v977, &v1229 + 1, &v1228, &v1229);
  os_unfair_lock_unlock((v1039 + 384));
  HIDWORD(v937) = v1230 == 0;
  if (v1230)
  {
    captureSession_buildGraphWithConfiguration_cold_3(v1230, v19);
    goto LABEL_961;
  }

  if (FigCapturePlatformIdentifier() < 10)
  {
    v20 = 1;
  }

  else if (v1228 == 4)
  {
    v20 = 3;
  }

  else
  {
    v20 = [v977 allCameraSourcesAreMetadataCameras] ^ 1;
  }

  v1040 = v20;
  v21 = *(v1039 + 832);
  if (v21 && v946)
  {
    if (*(v1039 + 112) == 1)
    {
      [+[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedDisplayLayoutMonitor")];
      v21 = *(v1039 + 832);
    }

    v21 = [[BWFigCaptureSession alloc] initWithFigCaptureSession:v1036];
    *(v1039 + 832) = v21;
    if (*(v1039 + 112) == 1)
    {
      [+[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedDisplayLayoutMonitor")];
      v21 = *(v1039 + 832);
    }
  }

  if (!v21)
  {
    captureSession_buildGraphWithConfiguration_cold_28();
    goto LABEL_984;
  }

  v22 = objc_alloc_init(BWGraph);
  *(v1039 + 752) = v22;
  if (!v22)
  {
    captureSession_buildGraphWithConfiguration_cold_27();
LABEL_984:
    HIDWORD(v937) = 0;
    if (LODWORD(v1273[0]))
    {
      goto LABEL_856;
    }

    goto LABEL_962;
  }

  v23 = *(v1039 + 88);
  ++*(v1039 + 760);
  v1038 = v22;
  [(BWGraph *)v22 setClientApplicationID:v23];
  [*(v1039 + 752) setClientPID:*(v1039 + 16)];
  [*(v1039 + 752) setClientExpectsCameraMountedInLandscapeOrientation:{objc_msgSend(v977, "clientExpectsCameraMountedInLandscapeOrientation")}];
  [*(v1039 + 752) setStatusDelegate:*(v1039 + 832)];
  [*(v1039 + 752) setInterruptionDelegate:*(v1039 + 832)];
  v25 = objc_alloc_init(FigCaptureSessionPipelines);
  *(v1039 + 784) = v25;
  v945 = (v1039 + 88);
  v26 = *(v1039 + 832);
  if (v26)
  {
    objc_setProperty_nonatomic(v26, v24, v25, 16);
    v27 = *(v1039 + 832);
    if (v27)
    {
      *(v27 + 24) = *(v1039 + 760);
    }
  }

  [+[FigCaptureDisplayLayoutMonitor sharedContinuityDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor sharedContinuityDisplayLayoutMonitor];
  v947 = [+[FigCaptureDisplayLayoutMonitor sharedContinuityDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedContinuityDisplayLayoutMonitor")];
  [*(v1039 + 752) beginConfiguration];
  [*(v1039 + 752) setMemoryAnalyticsReportingEnabled:1];
  [objc_msgSend(*(v1039 + 752) "memoryAnalyticsPayload")];
  [objc_msgSend(*(v1039 + 752) "memoryAnalyticsPayload")];
  if ([*(v1039 + 752) memoryAnalyticsReportingEnabled])
  {
    [+[FigCaptureMemoryReporter sharedInstance](FigCaptureMemoryReporter resetPeakFootprint];
  }

  shouldEnableDeferredNodePrepare = captureSession_shouldEnableDeferredNodePrepare([v977 connectionConfigurations]);
  v1224 = 0u;
  v1225 = 0u;
  v1226 = 0u;
  v1227 = 0u;
  v29 = [v977 connectionConfigurations];
  v30 = [v29 countByEnumeratingWithState:&v1224 objects:v1223 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v1225;
    while (2)
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v1225 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v1224 + 1) + 8 * i);
        v35 = [v34 irisSinkConfiguration];
        if (v35)
        {
          v36 = v35;
          if ([v34 mediaType] == 1986618469)
          {
            [-[FigCaptureSessionPipelines movieFileSinkPipelineWithSinkID:](v25 movieFileSinkPipelineWithSinkID:{objc_msgSend(v36, "sinkID")), "setMomentCaptureMovieRecordingEnabled:", objc_msgSend(v36, "momentCaptureMovieRecordingEnabled")}];
            goto LABEL_38;
          }
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v1224 objects:v1223 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

LABEL_38:
  if (!cs_configurationUsesSourceType(v977, 2))
  {
    goto LABEL_39;
  }

  LODWORD(v1268[0]) = 0;
  if (!cs_audioIsPlayingToBuiltInSpeaker([MEMORY[0x1E698D710] sharedInstance], v1268))
  {
    goto LABEL_39;
  }

  if (([v977 configuresAppAudioSession] & 1) == 0 && LODWORD(v1268[0]) == *(v1039 + 16))
  {
    if (dword_1ED844050)
    {
      LODWORD(v1246) = 0;
      LOBYTE(v1243[0]) = 0;
      v158 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v159 = v1246;
      if (os_log_type_enabled(v158, v1243[0]))
      {
        v160 = v159;
      }

      else
      {
        v160 = v159 & 0xFFFFFFFE;
      }

      if (v160)
      {
        LODWORD(v1271[0]) = 136315394;
        *(v1271 + 4) = "captureSession_buildGraphWithConfiguration";
        WORD6(v1271[0]) = 1024;
        *(v1271 + 14) = v1268[0];
        LODWORD(v916) = 18;
        v909 = v1271;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_39:
    HIDWORD(v940) = 0;
    goto LABEL_40;
  }

  HIDWORD(v940) = 1;
LABEL_40:
  v37 = v1039;
  v38 = [[FigCaptureSessionParsedConfiguration alloc] initWithSessionConfiguration:v977 clientSetsUserInitiatedCaptureRequestTime:captureSession_clientSetsUserInitiatedCaptureRequestTime(v1036) restrictions:*(v1039 + 496)];
  if (!v38)
  {
    v810 = qword_1ED844048;
    v811 = 4294950895;
    v812 = 13480;
    goto LABEL_837;
  }

  v41 = v38;
  *(v1039 + 816) = [(FigCaptureSessionParsedConfiguration *)v38 useOfflineVISPipeline];
  v1035 = v41;
  if (shouldEnableDeferredNodePrepare)
  {
    shouldEnableDeferredNodePrepare = captureSession_shouldEnableDeferredNodePrepare([(FigCaptureSessionParsedConfiguration *)v41 connectionConfigurationsToBuild]);
    v37 = v1039;
  }

  if (dword_1ED844050)
  {
    LODWORD(v1268[0]) = 0;
    LOBYTE(v1246) = 0;
    v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v43 = v1268[0];
    if (os_log_type_enabled(v42, v1246))
    {
      v44 = v43;
    }

    else
    {
      v44 = v43 & 0xFFFFFFFE;
    }

    if (v44)
    {
      v45 = *(v1039 + 104);
      LODWORD(v1271[0]) = 136315650;
      *(v1271 + 4) = "captureSession_buildGraphWithConfiguration";
      WORD6(v1271[0]) = 2114;
      *(v1271 + 14) = v45;
      WORD3(v1271[1]) = 1024;
      DWORD2(v1271[1]) = shouldEnableDeferredNodePrepare;
      LODWORD(v916) = 28;
      v909 = v1271;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v37 = v1039;
  }

  [*(v37 + 752) setDeferredNodePrepareSupported:{shouldEnableDeferredNodePrepare, v909}];
  *(v37 + 184) = [v977 automaticallyRunsDeferredStart];
  memset(v1271, 0, sizeof(v1271));
  v1272 = 0u;
  v46 = [(FigCaptureSessionParsedConfiguration *)v41 parsedMetadataSinkConfigurations];
  v47 = [(NSArray *)v46 countByEnumeratingWithState:v1271 objects:v1273 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = **&v1271[1];
    v50 = *off_1E798D130;
LABEL_52:
    v51 = 0;
    while (1)
    {
      if (**&v1271[1] != v49)
      {
        objc_enumerationMutation(v46);
      }

      if ([objc_msgSend(objc_msgSend(*(*(&v1271[0] + 1) + 8 * v51) "metadataObjectConnectionConfiguration")])
      {
        break;
      }

      if (v48 == ++v51)
      {
        v48 = [(NSArray *)v46 countByEnumeratingWithState:v1271 objects:v1273 count:16];
        if (v48)
        {
          goto LABEL_52;
        }

        goto LABEL_58;
      }
    }

    v52 = 4;
    if (!objc_msgSend_isEqualToString_(*v945))
    {
      goto LABEL_63;
    }

    v53 = @"Face ID";
  }

  else
  {
LABEL_58:
    v52 = 1;
    if ((objc_msgSend_isEqualToString_(*v945) & 1) == 0)
    {
      goto LABEL_63;
    }

    v53 = @"Attention Detection";
  }

  [*(v1039 + 752) setUserFriendlyClientName:v53];
LABEL_63:
  v54 = [MEMORY[0x1E695DF70] array];
  memset(v1271, 0, sizeof(v1271));
  v1272 = 0u;
  v55 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedCameraSourceConfigurations];
  v56 = [(NSArray *)v55 countByEnumeratingWithState:v1271 objects:v1273 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = **&v1271[1];
    do
    {
      for (j = 0; j != v57; ++j)
      {
        if (**&v1271[1] != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = *(*(&v1271[0] + 1) + 8 * j);
        v61 = [objc_msgSend(v60 "cameraConfiguration")];
        if (v61 != 5 && v61 != 10)
        {
          [v54 addObject:v60];
        }
      }

      v57 = [(NSArray *)v55 countByEnumeratingWithState:v1271 objects:v1273 count:16];
    }

    while (v57);
  }

  v951 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithArray:{v54), "count"}];
  *(v1039 + 769) = [(FigCaptureSessionParsedConfiguration *)v1035 empty];
  v63 = (v971 & 1) == 0 && captureSession_shouldPrewarmMemoryPool();
  SystemStyleFromDefaults = [(FigCaptureSessionParsedConfiguration *)v1035 smartStyle];
  v64 = *(CMBaseObjectGetDerivedStorage() + 88);
  SystemStyle = FigCaptureSmartStyleSettingsGetSystemStyle(v64);
  if (SystemStyle)
  {
    if (([SystemStyle isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0)
    {
      SystemStyleBackgroundedTimestamp = FigCaptureSmartStyleSettingsGetSystemStyleBackgroundedTimestamp(v64);
      [objc_msgSend(MEMORY[0x1E695DF00] "now")];
      v68 = v67;
      [SystemStyleBackgroundedTimestamp doubleValue];
      if (v68 - v69 > 30.0)
      {
        FigCaptureSmartStyleSettingsClearSystemStyleAndBackgroundedTimestampForBundleID(v64);
      }
    }
  }

  if (!SystemStyleFromDefaults)
  {
    SystemStyleFromDefaults = captureSession_getSystemStyleFromDefaults(v1036);
  }

  v70 = 0;
  v1063 = 0;
  v71 = v1036;
  if (cs_isTrueVideoCaptureEnabled(v1035))
  {
    captureSession_resumeTrueVideoVISProcessingForSemaphore(v1036, 0);
    os_unfair_lock_lock((v1039 + 868));
    *(v1039 + 856) = dispatch_semaphore_create(1);
    *(v1039 + 864) = 0;
    os_unfair_lock_unlock((v1039 + 868));
  }

  v1037 = (v1039 + 776);
  v1075 = v25;
  if (![(NSArray *)[(FigCaptureSessionParsedConfiguration *)v1035 parsedCameraSourceConfigurations] count])
  {
    os_unfair_lock_lock((v1039 + 384));
    v88 = *(v1039 + 397);
    v89 = [*(v1039 + 512) tccIdentity];
    os_unfair_lock_unlock((v1039 + 384));
    v90 = +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
    v91 = *(v1039 + 8);
    v92 = *(v1039 + 36);
    v1273[0] = *(v1039 + 20);
    v1273[1] = v92;
    v916 = 0;
    LOBYTE(v910) = v88;
    [v90 setSessionStateForSessionID:v91 running:1 containsVideoSource:0 clientAuditToken:v1273 tccIdentity:v89 mediaEnvironment:0 sessionIsPrewarming:? completionHandler:?];
    v1053 = 0;
    goto LABEL_109;
  }

  if (v18)
  {
    v1053 = 0;
    if (v63)
    {
      goto LABEL_922;
    }

    goto LABEL_89;
  }

  LODWORD(v938) = v52;
  v941 = @"com.apple.biometrickitd";
  LODWORD(v943) = v63;
  v101 = [(NSArray *)[(FigCaptureSessionParsedConfiguration *)v1035 parsedCameraSourceConfigurations] count];
  v1054 = [MEMORY[0x1E695DF70] arrayWithCapacity:v101];
  v944 = v101;
  v1025 = [MEMORY[0x1E695DF70] arrayWithCapacity:v101];
  v1219 = 0u;
  v1220 = 0u;
  v1221 = 0u;
  v1222 = 0u;
  v102 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedCameraSourceConfigurations];
  v103 = [(NSArray *)v102 countByEnumeratingWithState:&v1219 objects:v1218 count:16];
  if (v103)
  {
    v104 = v103;
    v105 = 0;
    v1015 = *v1220;
    v106 = MEMORY[0x1E695E118];
    do
    {
      for (k = 0; k != v104; ++k)
      {
        if (*v1220 != v1015)
        {
          objc_enumerationMutation(v102);
        }

        v108 = *(*(&v1219 + 1) + 8 * k);
        v109 = [v108 cameraConfiguration];
        v110 = [MEMORY[0x1E695DF90] dictionary];
        v111 = cs_stereoVideoCaptureEnabled(v108);
        if (FigCaptureSourceGetBoolAttribute([objc_msgSend(v108 "cameraConfiguration")], 0x1F21A0010, 0))
        {
          v112 = 0;
        }

        else if (cs_cinematicVideoCaptureEnabled(v108))
        {
          v112 = 1;
        }

        else
        {
          v112 = cs_stereoVideoCaptureEnabled(v108);
        }

        if (cs_timeOfFlightAssistedAutoFocusEnabled(v109))
        {
          [v110 setObject:v106 forKeyedSubscript:0x1F21A0930];
        }

        if (FigCaptureSourceGetBoolAttribute([v109 source], 0x1F219F9F0, 0))
        {
          [v110 setObject:v106 forKeyedSubscript:@"StructuredLightAssistedAutoFocusEnabled"];
        }

        if ([v109 depthDataDeliveryEnabled])
        {
          v113 = [v109 sourceDeviceType];
          if (v113 == 12 || v113 == 6)
          {
            [v110 setObject:v106 forKeyedSubscript:0x1F21A0950];
          }
        }

        if (v112)
        {
          [v110 setObject:v106 forKeyedSubscript:0x1F21A09B0];
        }

        if (*(v1039 + 112) == 1)
        {
          [v110 setObject:v106 forKeyedSubscript:@"SuspendAdjustingFocusNotifications"];
        }

        [v110 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v1040), @"CaptureDeviceClientPriority"}];
        if ([objc_msgSend(objc_msgSend(v108 "stillImageConnectionConfiguration")])
        {
          [v110 setObject:v106 forKeyedSubscript:0x1F21A0990];
        }

        v105 |= v111;
        [v1054 addObject:{objc_msgSend(v109, "source")}];
        [(__CFArray *)v1025 addObject:v110];
      }

      v104 = [(NSArray *)v102 countByEnumeratingWithState:&v1219 objects:v1218 count:16];
    }

    while (v104);
  }

  else
  {
    v105 = 0;
  }

  v1217 = 0;
  v1043 = HIBYTE(v1229);
  v137 = v1229;
  v973 = [v977 xctestAuthorizedToStealDevice];
  newValuea = [v977 tccIdentity];
  objb = *(v1039 + 96);
  v138 = v1228;
  v1267 = 0;
  v139 = CMBaseObjectGetDerivedStorage();
  v140 = [FigWeakReference weakReferenceToObject:v1036];
  v141 = +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
  v142 = [MEMORY[0x1E695DF70] array];
  v1017 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(*(v139 + 904), "allKeys")}];
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_buildGraphWithConfiguration_cold_4();
  }

  v968 = v138;
  v979 = v140;
  v1266 = 0u;
  v1265 = 0u;
  v1264 = 0u;
  v1263 = 0u;
  v143 = [v1054 countByEnumeratingWithState:&v1263 objects:v1273 count:16];
  v964 = v137;
  if (v143)
  {
    v144 = v143;
    v1008 = *v1264;
    while (2)
    {
      for (m = 0; m != v144; ++m)
      {
        if (*v1264 != v1008)
        {
          objc_enumerationMutation(v1054);
        }

        v146 = *(*(&v1263 + 1) + 8 * m);
        Attribute = FigCaptureSourceGetAttribute(v146, @"CaptureDeviceID", &v1267);
        if (v1267)
        {
          captureSession_buildGraphWithConfiguration_cold_5();
          goto LABEL_892;
        }

        if (([v142 containsObject:Attribute] & 1) == 0)
        {
          [v142 addObject:Attribute];
        }

        if ([v1017 containsObject:Attribute])
        {
          [v1017 removeObject:Attribute];
        }

        IntAttribute = FigCaptureSourceGetIntAttribute(v146, @"DeviceType", &v1267);
        if (v1267)
        {
          captureSession_buildGraphWithConfiguration_cold_6();
          goto LABEL_892;
        }

        if ((IntAttribute - 17) < 4)
        {
          v149 = 1;
          goto LABEL_197;
        }
      }

      v144 = [v1054 countByEnumeratingWithState:&v1263 objects:v1273 count:16];
      if (v144)
      {
        continue;
      }

      break;
    }
  }

  v149 = 0;
LABEL_197:
  v1262 = 0u;
  v1261 = 0u;
  v1260 = 0u;
  v1259 = 0u;
  v150 = [v142 countByEnumeratingWithState:&v1259 objects:v1271 count:16];
  if (v150)
  {
    v151 = v150;
    v152 = *v1260;
    do
    {
      for (n = 0; n != v151; ++n)
      {
        if (*v1260 != v152)
        {
          objc_enumerationMutation(v142);
        }

        v154 = *(*(&v1259 + 1) + 8 * n);
        v155 = [*(v139 + 904) objectForKeyedSubscript:v154];
        if (v155)
        {
          v156 = v155;
          if ([v141 streamsInUseForDevice:v155])
          {
            [v141 invalidateVideoDevice:v156 forPID:*(v139 + 16)];
            [*(v139 + 904) setObject:0 forKeyedSubscript:v154];
          }
        }
      }

      v151 = [v142 countByEnumeratingWithState:&v1259 objects:v1271 count:16];
    }

    while (v151);
  }

  if (![*(v139 + 904) count])
  {
    os_unfair_lock_lock((v139 + 900));
    v157 = *(v139 + 896);
    if (v157)
    {
      *(v139 + 896) = 0;
      os_unfair_lock_unlock((v139 + 900));
      [v141 unregisterClient:v157];
    }

    else
    {
      os_unfair_lock_unlock((v139 + 900));
    }

    v814 = v973;
    v815 = [*(v139 + 120) clientType];
    v816 = *(v139 + 16);
    if (v1043)
    {
      v817 = 0;
      v814 = 0;
LABEL_842:
      v818 = v979;
      v819 = v968;
      goto LABEL_862;
    }

    v820 = v815;
    if (v815 == 5)
    {
      goto LABEL_859;
    }

    if (v815 == 6)
    {
      v821 = *(v139 + 36);
      v1243[0] = *(v139 + 20);
      v1243[1] = v821;
      v818 = v979;
      if (FigCaptureClientIsFacemetricsd(v1243) || (objc_msgSend_isEqualToString_(*(v139 + 88)) & 1) != 0)
      {
        v817 = 0;
        v814 = 0;
        v819 = 1;
        goto LABEL_862;
      }

      if (objc_msgSend_isEqualToString_(*(v139 + 88)))
      {
        v817 = 0;
        v814 = 0;
        v819 = 3;
        goto LABEL_862;
      }

      if (objc_msgSend_isEqualToString_(*(v139 + 88)) & 1) != 0 || (objc_msgSend_isEqualToString_(*(v139 + 88)))
      {
        v817 = 0;
        v819 = 5;
      }

      else if (objc_msgSend_isEqualToString_(*(v139 + 88)))
      {
        v817 = 0;
        v819 = 2;
      }

      else
      {
        v819 = 2;
        if ((objc_msgSend_isEqualToString_(*(v139 + 88)) & 1) == 0)
        {
          v817 = 0;
          v814 = 0;
          if (objc_msgSend_isEqualToString_(*(v139 + 88)))
          {
            v819 = v938;
          }

          else
          {
            v819 = 2;
          }

LABEL_862:
          os_unfair_lock_lock((v139 + 384));
          if ([*(v139 + 512) allCameraSourcesAreMetadataCameras])
          {
            v823 = 2;
          }

          else
          {
            v823 = 0;
          }

          os_unfair_lock_unlock((v139 + 384));
          v824 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<FigCaptureSession: %p>", v1036];
          v825 = *(v139 + 88);
          v1258[0] = MEMORY[0x1E69E9820];
          v1258[1] = 3221225472;
          v1258[2] = __captureSession_activateCameraCaptureSourcesAndCreateDevices_block_invoke;
          v1258[3] = &unk_1E7998E48;
          v1258[4] = v818;
          v1258[5] = v139;
          v916 = v1258;
          LODWORD(v910) = v823;
          v826 = [v141 registerClientWithPID:v816 clientApplicationID:v825 clientDescription:v824 clientPriority:v819 canStealFromClientsWithSamePriority:v814 deviceSharingWithOtherClientsAllowed:v817 clientType:? deviceAvailabilityChangedHandler:?];
          os_unfair_lock_lock((v139 + 900));
          *(v139 + 896) = v826;
          os_unfair_lock_unlock((v139 + 900));
          goto LABEL_866;
        }

        v817 = 0;
      }

      v814 = 1;
      goto LABEL_862;
    }

    v822 = *(v139 + 36);
    v1243[0] = *(v139 + 20);
    v1243[1] = v822;
    if (FigCaptureClientIsAVConferenced(v1243))
    {
LABEL_859:
      v816 = 0;
      v819 = 3;
      v817 = 1;
LABEL_860:
      v814 = 1;
      goto LABEL_861;
    }

    if (v820 == 8)
    {
      v817 = 0;
    }

    else
    {
      if (v964)
      {
        v817 = 0;
        v819 = 2;
        goto LABEL_860;
      }

      if ((objc_msgSend_isEqualToString_(*(v139 + 88)) & 1) == 0)
      {
        if (!v149)
        {
          v817 = 0;
          v814 = 1;
          goto LABEL_842;
        }

        isEqualToString = objc_msgSend_isEqualToString_(*(v139 + 88));
        v817 = 0;
        v814 = isEqualToString ^ 1u;
        if (isEqualToString)
        {
          v819 = 1;
        }

        else
        {
          v819 = v968;
        }

LABEL_861:
        v818 = v979;
        goto LABEL_862;
      }

      v817 = 0;
      v814 = 0;
    }

    v819 = 2;
    goto LABEL_861;
  }

LABEL_866:
  v1257 = 0u;
  v1256 = 0u;
  v1255 = 0u;
  v1254 = 0u;
  v827 = [v142 countByEnumeratingWithState:&v1254 objects:v1268 count:16];
  v70 = 0;
  if (v827)
  {
    v828 = v827;
    v829 = *v1255;
    do
    {
      for (ii = 0; ii != v828; ++ii)
      {
        if (*v1255 != v829)
        {
          objc_enumerationMutation(v142);
        }

        v831 = *(*(&v1254 + 1) + 8 * ii);
        if (![*(v139 + 904) objectForKeyedSubscript:v831])
        {
          v832 = [v141 copyDeviceWithID:v831 forClient:*(v139 + 896) informClientWhenDeviceAvailableAgain:v1043 ^ 1u error:&v1267];
          if (!v832)
          {
            goto LABEL_893;
          }

          v833 = v832;
          [*(v139 + 904) setObject:v832 forKeyedSubscript:v831];
        }
      }

      v828 = [v142 countByEnumeratingWithState:&v1254 objects:v1268 count:16];
    }

    while (v828);
  }

  v1253 = 0u;
  v1252 = 0u;
  v1251 = 0u;
  v1250 = 0u;
  v834 = [v1017 countByEnumeratingWithState:&v1250 objects:&v1246 count:16];
  if (v834)
  {
    v835 = v834;
    v836 = *v1251;
    do
    {
      for (jj = 0; jj != v835; ++jj)
      {
        if (*v1251 != v836)
        {
          objc_enumerationMutation(v1017);
        }

        v838 = *(*(&v1250 + 1) + 8 * jj);
        [v141 takeBackDevice:objc_msgSend(*(v139 + 904) forClient:"objectForKeyedSubscript:" informClientWhenDeviceAvailableAgain:v838) prefersDeviceInvalidatedImmediately:{*(v139 + 896), 0, 0}];
        [*(v139 + 904) setObject:0 forKeyedSubscript:v838];
      }

      v835 = [v1017 countByEnumeratingWithState:&v1250 objects:&v1246 count:16];
    }

    while (v835);
  }

  v1267 = FigVideoCaptureSourcesActivateAndCreateDevices(v1054, v1025, *(v139 + 88), newValuea, objb, *(v139 + 904), v105 & 1, v971, &v1217);
  if (v1267)
  {
    goto LABEL_894;
  }

  os_unfair_lock_lock((v139 + 384));
  v839 = cs_configurationContainsVideoSource(*(v139 + 512));
  v840 = *(v139 + 397);
  if (dword_1ED844050)
  {
    v1245 = 0;
    v1244 = OS_LOG_TYPE_DEFAULT;
    v841 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v842 = v1245;
    if (os_log_type_enabled(v841, v1244))
    {
      v843 = v842;
    }

    else
    {
      v843 = v842 & 0xFFFFFFFE;
    }

    if (v843)
    {
      v844 = [*(v139 + 512) sourceConfigurations];
      v1239 = 136315394;
      v1240 = "captureSession_activateCameraCaptureSourcesAndCreateDevices";
      v1241 = 2112;
      v1242 = v844;
      v910 = &v1239;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_unlock((v139 + 384));
  v845 = +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
  v846 = *(v139 + 8);
  v847 = *(v139 + 36);
  v1243[0] = *(v139 + 20);
  v1243[1] = v847;
  v916 = 0;
  LOBYTE(v910) = v840;
  [v845 setSessionStateForSessionID:v846 running:1 containsVideoSource:v839 clientAuditToken:v1243 tccIdentity:newValuea mediaEnvironment:objb sessionIsPrewarming:? completionHandler:?];
LABEL_892:
  v70 = 0;
LABEL_893:
  if (v1267)
  {
LABEL_894:
    v1238 = 0u;
    v1237 = 0u;
    v1236 = 0u;
    v1235 = 0u;
    v848 = [*(v139 + 904) allKeys];
    v849 = [v848 countByEnumeratingWithState:&v1235 objects:&v1231 count:16];
    v25 = v1075;
    if (v849)
    {
      v850 = v849;
      v851 = *v1236;
      do
      {
        for (kk = 0; kk != v850; ++kk)
        {
          if (*v1236 != v851)
          {
            objc_enumerationMutation(v848);
          }

          v853 = *(*(&v1235 + 1) + 8 * kk);
          [v141 takeBackDevice:objc_msgSend(*(v139 + 904) forClient:"objectForKeyedSubscript:" informClientWhenDeviceAvailableAgain:v853) prefersDeviceInvalidatedImmediately:{*(v139 + 896), 0, 0}];
          [*(v139 + 904) setObject:0 forKeyedSubscript:v853];
        }

        v850 = [v848 countByEnumeratingWithState:&v1235 objects:&v1231 count:16];
      }

      while (v850);
    }

    v1230 = v1267;
    if (v1267)
    {
      LODWORD(v910) = v1267;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", qword_1ED844048, "<<<< FigCaptureSession >>>> Fig", "err == 0 ", "bail", 0, "FigCaptureSession.m", 13618, v910);
      goto LABEL_961;
    }
  }

  else
  {
    v1230 = 0;
    v25 = v1075;
  }

  v1052 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v944];
  v1213 = 0u;
  v1214 = 0u;
  v1215 = 0u;
  v1216 = 0u;
  v1024 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedCameraSourceConfigurations];
  v854 = [(NSArray *)v1024 countByEnumeratingWithState:&v1213 objects:v1212 count:16];
  if (!v854)
  {
    v1053 = 0;
    goto LABEL_920;
  }

  v855 = v854;
  LODWORD(v856) = 0;
  v1053 = 0;
  v1034 = *v1214;
  do
  {
    v857 = 0;
    v856 = v856;
    do
    {
      v858 = v1063;
      if (*v1214 != v1034)
      {
        objc_enumerationMutation(v1024);
      }

      v859 = [*(*(&v1213 + 1) + 8 * v857) cameraConfiguration];
      v860 = [v1217 objectAtIndexedSubscript:v856];
      v861 = [v859 lockedFrameRate];
      if (FigCaptureFrameRateIsValidRational(v861, v862))
      {
        v70 = [v859 lockedFrameRate];
        v1053 = 0;
        v858 = v863;
      }

      v864 = [v859 externalSyncFrameRate];
      if (FigCaptureFrameRateIsValidRational(v864, v865))
      {
        v70 = [v859 externalSyncFrameRate];
        v858 = v866;
        v1053 = 1;
      }

      v141 = v141 & 0xFFFFFFFF00000000 | v858;
      v1063 = v858;
      if (FigCaptureFrameRateIsValidRational(v70, v141))
      {
        [+[FigPulseGenerator sharedFigPulseGenerator](FigPulseGenerator "sharedFigPulseGenerator")];
        *&v1268[0] = 0;
        v139 = v139 & 0xFFFFFFFF00000000 | v858;
        v1230 = [+[FigPulseGenerator sharedFigPulseGenerator](FigPulseGenerator "sharedFigPulseGenerator")];
        if (v1230)
        {
          FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
          LODWORD(v1246) = 0;
          LOBYTE(v1243[0]) = 0;
          v868 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v869 = v1246;
          if (os_log_type_enabled(v868, v1243[0]))
          {
            v870 = v869;
          }

          else
          {
            v870 = v869 & 0xFFFFFFFE;
          }

          if (v870)
          {
            LODWORD(v1271[0]) = 136315650;
            *(v1271 + 4) = "captureSession_buildGraphWithConfiguration";
            if (v1053)
            {
              v871 = @"Genlock";
            }

            else
            {
              v871 = @"LFD";
            }

            WORD6(v1271[0]) = 2112;
            *(v1271 + 14) = v871;
            WORD3(v1271[1]) = 1024;
            DWORD2(v1271[1]) = v1230;
            _os_log_send_and_compose_impl();
          }

          else if (v1053)
          {
            v871 = @"Genlock";
          }

          else
          {
            v871 = @"LFD";
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          LODWORD(v1273[0]) = 138412546;
          *(v1273 + 4) = v871;
          WORD6(v1273[0]) = 1024;
          *(v1273 + 14) = v1230;
          v872 = _os_log_send_and_compose_impl();
          FigCapturePleaseFileRadar(FrameworkRadarComponent, v872, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 13649, @"LastShownDate:FigCaptureSession.m:13649", @"LastShownBuild:FigCaptureSession.m:13649", 0);
          free(v872);
          goto LABEL_961;
        }

        [v860 setMsgClock:*&v1268[0]];
      }

      [v860 setClientExpectsCameraMountedInLandscapeOrientation:{objc_msgSend(v977, "clientExpectsCameraMountedInLandscapeOrientation")}];
      [v1052 setObject:-[FigCaptureSessionActiveCameraCaptureSource initWithSource:device:]([FigCaptureSessionActiveCameraCaptureSource alloc] forKeyedSubscript:{objc_msgSend(v859, "source"), v860), objc_msgSend(v859, "sourceID")}];
      ++v856;
      ++v857;
      v25 = v1075;
    }

    while (v855 != v857);
    v855 = [(NSArray *)v1024 countByEnumeratingWithState:&v1213 objects:v1212 count:16];
  }

  while (v855);
LABEL_920:
  *(v1039 + 776) = [v1052 copy];

  os_unfair_lock_lock((v1039 + 384));
  v71 = v1036;
  v1230 = captureSession_checkClientSessionIsAllowedToRun(v1036, *(v1039 + 512), 0, 0, 0);
  os_unfair_lock_unlock((v1039 + 384));
  if (v1230)
  {
    captureSession_buildGraphWithConfiguration_cold_7();
    goto LABEL_961;
  }

  if (v943)
  {
LABEL_922:
    captureSession_buildGraphWithConfiguration_cold_8(v71, v945);
  }

LABEL_89:
  v72 = [(NSArray *)[(FigCaptureSessionParsedConfiguration *)v1035 parsedCameraSourceConfigurations] count]== 0;
  os_unfair_lock_lock(&sFigCaptureSessionPrewarming);
  captureSession_cancelMemoryPoolPrewarmingLocked(0, v72);
  os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
  [(BWGraph *)v1038 setMemoryPool:+[BWMemoryPool sharedMemoryPool]];
  v1211 = 0u;
  v1210 = 0u;
  v1209 = 0u;
  v1208 = 0u;
  obj = [(FigCaptureSessionParsedConfiguration *)v1035 parsedCameraSourceConfigurations];
  v1014 = [(NSArray *)obj countByEnumeratingWithState:&v1208 objects:v1207 count:16];
  if (v1014)
  {
    v1006 = *v1209;
    v957 = v70;
    do
    {
      v73 = 0;
      do
      {
        if (*v1209 != v1006)
        {
          objc_enumerationMutation(obj);
        }

        v74 = *(*(&v1208 + 1) + 8 * v73);
        v75 = [objc_msgSend(v74 "cameraConfiguration")];
        v76 = [*v1037 objectForKeyedSubscript:v75];
        v77 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedMicSourceConfiguration];
        if (v76)
        {
          v1041 = v76[2];
        }

        else
        {
          v1041 = 0;
        }

        v78 = captureSession_createCameraSourcePipelineConfigurationFromParsedConfiguration(v1036, v74, v77 != 0, v951 > 1, v1041, -[FigCaptureSessionParsedConfiguration continuityCameraIsWired](v1035, "continuityCameraIsWired"), -[FigCaptureSessionParsedConfiguration continuityCameraClientDeviceClass](v1035, "continuityCameraClientDeviceClass"), -[FigCaptureSessionParsedConfiguration clientIsVOIP](v1035, "clientIsVOIP"), v9, -[FigCaptureSessionParsedConfiguration suppressVideoEffects](v1035, "suppressVideoEffects"), [v955 objectForKeyedSubscript:v75], -[FigCaptureSessionParsedConfiguration smartStyleRenderingEnabled](v1035, "smartStyleRenderingEnabled"), SystemStyleFromDefaults, v971, v953, &v1230);
        if (v1230)
        {
          captureSession_buildGraphWithConfiguration_cold_9();
          goto LABEL_961;
        }

        if (v76)
        {
          v79 = v76[3];
        }

        else
        {
          v79 = 0;
        }

        v25 = v1075;
        v70 = v957;
        v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Source Pipeline", v79];
        v81 = [FigCaptureCameraSourcePipeline alloc];
        if (v76)
        {
          v76 = v76[2];
        }

        v82 = *(v1039 + 752);
        v83 = *(v1039 + 832);
        v84 = captureSession_inferenceScheduler(v1036);
        v85 = [(FigCaptureCameraSourcePipeline *)v81 initWithConfiguration:v78 captureDevice:v76 graph:v82 name:v80 renderDelegate:v83 ispFastSwitchEnabled:v962 rtscProcessorsBySourceDeviceType:v949 inferenceScheduler:v84 error:&v1230];
        if (!v85)
        {
          goto LABEL_961;
        }

        v86 = v85;
        [(FigCaptureCameraSourcePipeline *)v85 setBlackenFramesForContinuityDisplayConnected:v947];
        [(FigCaptureSessionPipelines *)v1075 addCameraSourcePipeline:v86];
        v73 = v73 + 1;
      }

      while (v1014 != v73);
      v87 = [(NSArray *)obj countByEnumeratingWithState:&v1208 objects:v1207 count:16];
      v1014 = v87;
    }

    while (v87);
  }

LABEL_109:
  v93 = v1035;
  if ([(FigCaptureSessionParsedConfiguration *)v1035 parsedMicSourceConfiguration])
  {
    v1206 = 0u;
    v1205 = 0u;
    v1204 = 0u;
    v1203 = 0u;
    v94 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedMovieFileSinkConfigurations];
    v95 = [(NSArray *)v94 countByEnumeratingWithState:&v1203 objects:v1202 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = 0;
      v98 = 0;
      v99 = *v1204;
      do
      {
        for (mm = 0; mm != v96; ++mm)
        {
          if (*v1204 != v99)
          {
            objc_enumerationMutation(v94);
          }

          if ([objc_msgSend(*(*(&v1203 + 1) + 8 * mm) "audioConnectionConfiguration")] == 2)
          {
            ++v97;
            ++v98;
          }
        }

        v96 = [(NSArray *)v94 countByEnumeratingWithState:&v1203 objects:v1202 count:16];
      }

      while (v96);
    }

    else
    {
      v97 = 0;
      v98 = 0;
    }

    v1201 = 0u;
    v1200 = 0u;
    v1199 = 0u;
    v1198 = 0u;
    v114 = [(FigCaptureSessionParsedConfiguration *)v1035 audioDataSinkConnectionConfigurations];
    v115 = [(NSArray *)v114 countByEnumeratingWithState:&v1198 objects:v1197 count:16];
    if (v115)
    {
      v116 = v115;
      v117 = *v1199;
      do
      {
        for (nn = 0; nn != v116; ++nn)
        {
          if (*v1199 != v117)
          {
            objc_enumerationMutation(v114);
          }

          v119 = *(*(&v1198 + 1) + 8 * nn);
          if ([v119 spatialAudioChannelLayoutTag] == 6619138)
          {
            ++v98;
          }

          else if ([v119 spatialAudioChannelLayoutTag] == 12451844)
          {
            ++v97;
          }
        }

        v116 = [(NSArray *)v114 countByEnumeratingWithState:&v1198 objects:v1197 count:16];
      }

      while (v116);
    }

    if (v97 >= 1)
    {
      v97 += FigCaptureSpatialAudioMixMetadataRequiresFOAAudioOutput(v1035);
    }

    v120 = [(FigCaptureSessionParsedConfiguration *)v1035 isAudioOnlyRecordingSession];
    v1007 = [v977 sessionPreset];
    v121 = [v977 usesAppAudioSession];
    obja = [v977 configuresAppAudioSession];
    v1026 = [v977 configuresAppAudioSessionToMixWithOthers];
    v1016 = [v977 configuresAppAudioSessionForBluetoothHighQualityRecording];
    v122 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedMicSourceConfiguration];
    LODWORD(v1231) = 0;
    v123 = CMBaseObjectGetDerivedStorage();
    v124 = [-[NSArray firstObject](-[FigCaptureSessionParsedMicSourceConfiguration micConnectionConfigurations](v122 "micConnectionConfigurations")];
    newValue = [(FigCaptureSessionParsedMicSourceConfiguration *)v122 micConnectionConfigurations];
    IsCurrentDispatchQueue = _FigIsCurrentDispatchQueue();
    if (!IsCurrentDispatchQueue)
    {
      IsCurrentDispatchQueue = captureSession_buildGraphWithConfiguration_cold_10();
    }

    if (*(v123 + 296) != v121)
    {
      captureSession_destroyAudioSessionForMicPipeline(v1036);
    }

    if (v121)
    {
      if (*(v123 + 448) == 1)
      {
        IsCurrentDispatchQueue = FigCaptureAudiomxdSupportEnabled(IsCurrentDispatchQueue, v126);
        if (IsCurrentDispatchQueue)
        {
          v127 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FigCaptureSession-%d-proxy", *(v123 + 16)];
          captureSession_destroyAudioSessionForMicPipeline(v1036);
          memset(v1273, 0, sizeof(v1273));
          FigCaptureGetCurrentProcessAuditToken(v1273);
          v1271[0] = v1273[0];
          v1271[1] = v1273[1];
          PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(v1271);
          v1271[0] = v1273[0];
          v1271[1] = v1273[1];
          IsCurrentDispatchQueue = cs_createAuxiliaryAVAudioSession(PIDFromAuditToken, v1271, v127);
          *(v123 + 280) = IsCurrentDispatchQueue;
          *(v123 + 320) = 1;
        }
      }
    }

    v129 = FigCaptureAudiomxdSupportEnabled(IsCurrentDispatchQueue, v126);
    v978 = v121;
    v1042 = v120;
    if (v129 && !*(v123 + 280))
    {
      v133 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FigCaptureSession-%d", *(v123 + 16)];
      if (v121)
      {
        v134 = *(v123 + 36);
        v1271[0] = *(v123 + 20);
        v1271[1] = v134;
        v135 = objc_alloc(MEMORY[0x1E698D710]);
        v1273[0] = v1271[0];
        v1273[1] = v1271[1];
        AuxiliaryAVAudioSession = [v135 initSiblingSession:0xFFFFFFFFLL auditToken:v1273 clientIdentifier:v133 autoReconnect:0];
      }

      else
      {
        v161 = *(v123 + 16);
        v162 = *(v123 + 36);
        v1273[0] = *(v123 + 20);
        v1273[1] = v162;
        AuxiliaryAVAudioSession = cs_createAuxiliaryAVAudioSession(v161, v1273, v133);
      }

      *(v123 + 280) = AuxiliaryAVAudioSession;
      if (!AuxiliaryAVAudioSession)
      {
        v198 = 4294954510;
        goto LABEL_959;
      }

      *(v123 + 296) = v121;
      started = captureSession_startObservingAudioInterruptionNotification(v1036);
      LODWORD(v1231) = started;
      if (!started)
      {
        v164 = CMBaseObjectGetDerivedStorage();
        if (v164)
        {
          v165 = v164;
          if (*(v164 + 304))
          {
            LODWORD(v1243[0]) = 0;
            LOBYTE(v1263) = 0;
            v890 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v891 = v1243[0];
            if (os_log_type_enabled(v890, v1263))
            {
              v892 = v891;
            }

            else
            {
              v892 = v891 & 0xFFFFFFFE;
            }

            if (v892)
            {
              v893 = v165[13];
              LODWORD(v1271[0]) = 136315394;
              *(v1271 + 4) = "captureSession_startObservingForAudiomxdDeath";
              WORD6(v1271[0]) = 2114;
              *(v1271 + 14) = v893;
              v910 = v1271;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          else
          {
            v166 = [FigWeakReference weakReferenceToObject:v1036];
            v167 = [MEMORY[0x1E698D710] sharedInstance];
            v168 = *MEMORY[0x1E698D5B0];
            *&v1271[0] = MEMORY[0x1E69E9820];
            *(&v1271[0] + 1) = 3221225472;
            *&v1271[1] = __captureSession_startObservingForAudiomxdDeath_block_invoke;
            *(&v1271[1] + 1) = &unk_1E7998E70;
            *&v1271[2] = v166;
            *(&v1271[2] + 1) = v165;
            v169 = [v167 addObserverForType:1 name:v168 block:v1271];
            v170 = [MEMORY[0x1E698D710] sharedInstance];
            v171 = *MEMORY[0x1E698D5C0];
            *&v1273[0] = MEMORY[0x1E69E9820];
            *(&v1273[0] + 1) = 3221225472;
            *&v1273[1] = __captureSession_startObservingForAudiomxdDeath_block_invoke_971;
            *(&v1273[1] + 1) = &unk_1E7998E98;
            v1274 = v166;
            v1275 = v165;
            v1276 = v1036;
            v172 = [v170 addObserverForType:1 name:v171 block:v1273];
            v165[38] = v169;
            v165[39] = v172;
          }
        }

        goto LABEL_231;
      }

      v198 = started;
      LODWORD(v1243[0]) = 0;
      LOBYTE(v1263) = 0;
      v887 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v888 = v1243[0];
      if (os_log_type_enabled(v887, v1263))
      {
        v889 = v888;
      }

      else
      {
        v889 = v888 & 0xFFFFFFFE;
      }

      if (v889)
      {
        goto LABEL_1029;
      }
    }

    else
    {
      if ((FigCaptureAudiomxdSupportEnabled(v129, v130) & 1) != 0 || *(v123 + 288))
      {
        goto LABEL_231;
      }

      if (v121)
      {
        v132 = v1036;
        if (AudioSessionGetPrimaryAudioSessionIDForAuditToken())
        {
          *(v123 + 288) = AudioSessionCopyCMSessionForSessionID();
        }

LABEL_230:
        *(v123 + 296) = v121;
        v178 = captureSession_startObservingAudioInterruptionNotification(v132);
        LODWORD(v1231) = v178;
        if (!v178)
        {
LABEL_231:
          v179 = cs_clientWantsAudioResumptionOnBackground(*(v123 + 88), v131);
          v180 = v179;
          if (v179)
          {
            v181 = *(v123 + 288);
            if ((v181 || *(v123 + 280)) && !*(v123 + 328))
            {
              v182 = *(v123 + 280);
              if (v182)
              {
                *&v1273[0] = 0;
                [v182 setMXSessionProperty:*MEMORY[0x1E69B04D0] value:MEMORY[0x1E695E118] error:v1273];
              }

              else if (v181)
              {
                LODWORD(v1231) = CMSessionSetProperty();
              }

              *(v123 + 336) = 1;
              v183 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v123 + 136));
              *(v123 + 328) = v183;
              if (v183)
              {
                v184 = v183;
                v185 = dispatch_time(0, 300000000000);
                dispatch_source_set_timer(v184, v185, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
                v186 = *(v123 + 328);
                *&v1268[0] = MEMORY[0x1E69E9820];
                *(&v1268[0] + 1) = 3221225472;
                *&v1268[1] = __captureSession_buildMicSourcePipeline_block_invoke;
                *(&v1268[1] + 1) = &__block_descriptor_40_e5_v8__0l;
                *&v1269 = v123;
                dispatch_source_set_event_handler(v186, v1268);
                dispatch_resume(*(v123 + 328));
              }
            }
          }

          v187 = objc_alloc_init(FigCaptureMicSourcePipelineConfiguration);
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v187 setPrimaryCameraConfiguration:v124];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v187 setPrimaryVideoConnectionConfiguration:?];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v187 setVideoConnectionConfigurations:?];
          [(FigCaptureMetadataSinkPipelineConfiguration *)v187 setVitalityScoringEnabled:?];
          v188 = [(FigCaptureSourceConfiguration *)[(FigCaptureSessionParsedMicSourceConfiguration *)v122 cameraConfigurationForStereoAudioCapture] sourceID];
          if (v188)
          {
            captureSession_buildGraphWithConfiguration_cold_11(v123, v188, v187);
          }

          [(FigCaptureMovieFileSinkPipelineConfiguration *)v187 setDetectedObjectMetadataConnectionConfigurations:v1007];
          [(FigCaptureMicSourcePipelineConfiguration *)v187 setConfiguresAppAudioSession:?];
          [(FigCaptureCinematographyPipelineConfiguration *)v187 setWeightSegmentMapEnabled:?];
          [(FigCaptureCinematographyPipelineConfiguration *)v187 setPreLTMThumbnailEnabled:v1026];
          [(FigCaptureCinematographyPipelineConfiguration *)v187 setPostColorProcessingThumbnailEnabled:v1016];
          [(FigCaptureMicSourcePipelineConfiguration *)v187 setClientSDKVersionToken:?];
          -[FigCaptureMicSourcePipelineConfiguration setClientOSVersionSupportsDecoupledIO:](v187, [v124 clientOSVersionSupportsDecoupledIO]);
          v1247 = *(v123 + 36);
          v1246 = *(v123 + 20);
          v1273[0] = v1246;
          v1273[1] = v1247;
          [(FigCaptureMicSourcePipelineConfiguration *)v187 setClientAuditToken:v1273];
          [(FigCaptureMicSourcePipelineConfiguration *)v187 setAudioOnlyRecordingSession:v1042];
          [(FigCaptureMicSourcePipelineConfiguration *)v187 setRemoteIOOutputFormat:?];
          if (FigCaptureFrameRateIsValidRational(v70, v1063))
          {
            *&v1243[0] = &stru_1F216A3D0;
            v189 = [+[FigPulseGenerator sharedFigPulseGenerator](FigPulseGenerator "sharedFigPulseGenerator")];
            LODWORD(v1231) = v189;
            if (!v189)
            {
              [-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v187) setClientAudioClockDeviceUID:*&v1243[0]];
              goto LABEL_253;
            }

            v190 = v189;
            if (v189 != -73195)
            {
              v191 = FigCaptureGetFrameworkRadarComponent();
              LODWORD(v1263) = 0;
              LOBYTE(v1259) = 0;
              v192 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v193 = v1263;
              if (os_log_type_enabled(v192, v1259))
              {
                v194 = v193;
              }

              else
              {
                v194 = v193 & 0xFFFFFFFE;
              }

              if (v194)
              {
                LODWORD(v1271[0]) = 136315394;
                *(v1271 + 4) = "captureSession_buildMicSourcePipeline";
                WORD6(v1271[0]) = 1024;
                *(v1271 + 14) = v190;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              LODWORD(v1273[0]) = 67109120;
              DWORD1(v1273[0]) = v190;
              v195 = _os_log_send_and_compose_impl();
              FigCapturePleaseFileRadar(v191, v195, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 4782, @"LastShownDate:FigCaptureSession.m:4782", @"LastShownBuild:FigCaptureSession.m:4782", 0);
              free(v195);
              goto LABEL_253;
            }

            v198 = 4294894101;
            LODWORD(v910) = -73195;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v910, v4, v918, v921, v924, v926, v928, v930);
            if (dword_1ED844050)
            {
              LODWORD(v1263) = 0;
              LOBYTE(v1259) = 0;
              v875 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v876 = v1263;
              if (os_log_type_enabled(v875, v1259))
              {
                v877 = v876;
              }

              else
              {
                v877 = v876 & 0xFFFFFFFE;
              }

              if (v877)
              {
                LODWORD(v1271[0]) = 136315138;
                *(v1271 + 4) = "captureSession_buildMicSourcePipeline";
                _os_log_send_and_compose_impl();
              }

              goto LABEL_958;
            }

LABEL_959:
            v1230 = v198;
LABEL_960:
            captureSession_buildGraphWithConfiguration_cold_12(v198);
LABEL_961:
            if (v1230)
            {
              goto LABEL_856;
            }

            goto LABEL_962;
          }

LABEL_253:
          os_unfair_lock_lock((v123 + 384));
          v196 = *(v123 + 337);
          os_unfair_lock_unlock((v123 + 384));
          v197 = [[FigCaptureMicSourcePipeline alloc] initWithConfiguration:v187 graph:*(v123 + 752) name:@"Microphone Source Pipeline" audioSession:*(v123 + 280) cmSession:*(v123 + 288) isAppAudioSession:v978 audioSessionIsProxy:*(v123 + 320) audioIsPlayingToBuiltinSpeaker:BYTE4(v940) numberOfCinematicStereoAudioOutputs:v98 numberOfCinematicFOAAudioOutputs:v97 audioSessionActivatedByBWGraph:v196 renderDelegate:*(v123 + 832) outErr:&v1231];
          if (v197)
          {
            [*(v123 + 784) setMicSourcePipeline:v197];
            v198 = v1231;
            v1230 = v1231;
            if (v1231)
            {
              goto LABEL_960;
            }

            v93 = v1035;
            v25 = v1075;
            if (cs_isTrueVideoCaptureEnabled(v1035) & 1) == 0 && (*(v1039 + 112))
            {
              [(BWGraph *)v1038 enableDeferredStartForSourceNode:[(FigCaptureMicSourcePipeline *)[(FigCaptureSessionPipelines *)v1075 micSourcePipeline] sourceNode] mustStartAfterNonDeferred:0];
            }

            goto LABEL_258;
          }

          v198 = 4294894099;
          LODWORD(v1243[0]) = 0;
          LOBYTE(v1263) = 0;
          v883 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v884 = v1243[0];
          if (os_log_type_enabled(v883, v1263))
          {
            v885 = v884;
          }

          else
          {
            v885 = v884 & 0xFFFFFFFE;
          }

          if (!v885)
          {
            goto LABEL_958;
          }

          v886 = *(v123 + 104);
          LODWORD(v1271[0]) = 136315906;
          *(v1271 + 4) = "captureSession_buildMicSourcePipeline";
          WORD6(v1271[0]) = 2114;
          *(v1271 + 14) = v886;
          WORD3(v1271[1]) = 1024;
          DWORD2(v1271[1]) = v1231;
          WORD6(v1271[1]) = 1024;
          *(&v1271[1] + 14) = -73197;
LABEL_998:
          _os_log_send_and_compose_impl();
          goto LABEL_958;
        }

        v198 = v178;
        LODWORD(v1243[0]) = 0;
        LOBYTE(v1263) = 0;
        v894 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v895 = v1243[0];
        if (os_log_type_enabled(v894, v1263))
        {
          v896 = v895;
        }

        else
        {
          v896 = v895 & 0xFFFFFFFE;
        }

        if (!v896)
        {
          goto LABEL_958;
        }

LABEL_1029:
        v903 = *(v123 + 104);
        LODWORD(v1271[0]) = 136315650;
        *(v1271 + 4) = "captureSession_buildMicSourcePipeline";
        WORD6(v1271[0]) = 2114;
        *(v1271 + 14) = v903;
        WORD3(v1271[1]) = 1024;
        DWORD2(v1271[1]) = v198;
        goto LABEL_998;
      }

      v173 = CMSessionCreate();
      if (v173)
      {
        v198 = v173;
        goto LABEL_959;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"FigCaptureSession-%d", *(v123 + 16)];
      v174 = CMSessionSetProperty();
      if (v174)
      {
        v198 = v174;
        LODWORD(v1243[0]) = 0;
        LOBYTE(v1263) = 0;
        v897 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v898 = v1243[0];
        if (os_log_type_enabled(v897, v1263))
        {
          v899 = v898;
        }

        else
        {
          v899 = v898 & 0xFFFFFFFE;
        }

        if (!v899)
        {
          goto LABEL_958;
        }

        goto LABEL_1029;
      }

      [MEMORY[0x1E696AD98] numberWithInt:*(v123 + 16)];
      v175 = CMSessionSetProperty();
      LODWORD(v1231) = v175;
      if (v175)
      {
        v198 = v175;
        LODWORD(v1243[0]) = 0;
        LOBYTE(v1263) = 0;
        v900 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v901 = v1243[0];
        if (os_log_type_enabled(v900, v1263))
        {
          v902 = v901;
        }

        else
        {
          v902 = v901 & 0xFFFFFFFE;
        }

        if (!v902)
        {
          goto LABEL_958;
        }

        goto LABEL_1029;
      }

      v176 = *(v123 + 36);
      v1271[0] = *(v123 + 20);
      v1271[1] = v176;
      [MEMORY[0x1E695DEF0] dataWithBytes:v1271 length:32];
      v177 = CMSessionSetProperty();
      v132 = v1036;
      if (!v177)
      {
        goto LABEL_230;
      }

      v198 = v177;
      LODWORD(v1263) = 0;
      LOBYTE(v1259) = 0;
      v904 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v905 = v1263;
      if (os_log_type_enabled(v904, v1259))
      {
        v906 = v905;
      }

      else
      {
        v906 = v905 & 0xFFFFFFFE;
      }

      if (v906)
      {
        v907 = *(v123 + 104);
        LODWORD(v1243[0]) = 136315650;
        *(v1243 + 4) = "captureSession_buildMicSourcePipeline";
        WORD6(v1243[0]) = 2114;
        *(v1243 + 14) = v907;
        WORD3(v1243[1]) = 1024;
        DWORD2(v1243[1]) = v198;
        _os_log_send_and_compose_impl();
      }
    }

LABEL_958:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_959;
  }

LABEL_258:
  v1196 = 0u;
  v1195 = 0u;
  v1194 = 0u;
  v1193 = 0u;
  v199 = [(FigCaptureSessionParsedConfiguration *)v93 metadataSourceConfigurations];
  v200 = [(NSArray *)v199 countByEnumeratingWithState:&v1193 objects:v1192 count:16];
  if (v200)
  {
    v201 = v200;
    v202 = *v1194;
    do
    {
      for (i1 = 0; i1 != v201; ++i1)
      {
        if (*v1194 != v202)
        {
          objc_enumerationMutation(v199);
        }

        v204 = *(*(&v1193 + 1) + 8 * i1);
        if ([v204 sourceSubType] != 3)
        {
          if ([v204 sourceSubType] == 1)
          {
            v205 = @"Client Supplied Metadata Source Pipeline";
          }

          else
          {
            v205 = @"Core Motion Metadata Source Pipeline";
          }

          v206 = [[FigCaptureMetadataSourcePipeline alloc] initWithConfiguration:v204 graph:*(v1039 + 752) name:v205 errorOut:&v1230];
          if (v1230)
          {
            captureSession_buildGraphWithConfiguration_cold_13();
            goto LABEL_961;
          }

          [(FigCaptureSessionPipelines *)v25 addMetadataSourcePipeline:v206];
        }
      }

      v201 = [(NSArray *)v199 countByEnumeratingWithState:&v1193 objects:v1192 count:16];
    }

    while (v201);
  }

  *&v1263 = 0;
  cs_getMasterClockAndType(v25, &v1263, 0);
  if (v1263)
  {
    v1249 = 0u;
    v1248 = 0u;
    v1247 = 0u;
    v1246 = 0u;
    v207 = [(FigCaptureSessionPipelines *)v25 cameraSourcePipelines];
    v208 = [(NSArray *)v207 countByEnumeratingWithState:&v1246 objects:v1273 count:16];
    if (v208)
    {
      v209 = v208;
      v210 = *v1247;
      do
      {
        for (i2 = 0; i2 != v209; ++i2)
        {
          if (*v1247 != v210)
          {
            objc_enumerationMutation(v207);
          }

          [(FigCaptureCameraSourcePipeline *)*(*(&v1246 + 1) + 8 * i2) setMasterClock:v1263];
        }

        v209 = [(NSArray *)v207 countByEnumeratingWithState:&v1246 objects:v1273 count:16];
      }

      while (v209);
    }

    memset(v1243, 0, 64);
    v212 = [(FigCaptureSessionPipelines *)v25 metadataSourcePipelines];
    v213 = [(NSArray *)v212 countByEnumeratingWithState:v1243 objects:v1271 count:16];
    if (v213)
    {
      v214 = v213;
      v215 = **&v1243[1];
      do
      {
        for (i3 = 0; i3 != v214; ++i3)
        {
          if (**&v1243[1] != v215)
          {
            objc_enumerationMutation(v212);
          }

          [(FigCaptureMetadataSourcePipeline *)*(*(&v1243[0] + 1) + 8 * i3) setMasterClock:v1263];
        }

        v214 = [(NSArray *)v212 countByEnumeratingWithState:v1243 objects:v1271 count:16];
      }

      while (v214);
    }
  }

  else
  {
    v217 = [(NSArray *)[(FigCaptureSessionPipelines *)v25 metadataSourcePipelines] count];
    v1231 = 0u;
    v1232 = 0u;
    v218 = v217 != 0;
    v1233 = 0u;
    v1234 = 0u;
    v219 = [(FigCaptureSessionPipelines *)v25 cameraSourcePipelines];
    v220 = [(NSArray *)v219 countByEnumeratingWithState:&v1231 objects:v1268 count:16];
    if (v220)
    {
      v221 = v220;
      v222 = *v1232;
      do
      {
        for (i4 = 0; i4 != v221; ++i4)
        {
          if (*v1232 != v222)
          {
            objc_enumerationMutation(v219);
          }

          v218 |= [(FigCaptureCameraSourcePipeline *)*(*(&v1231 + 1) + 8 * i4) requiresMasterClock];
        }

        v221 = [(NSArray *)v219 countByEnumeratingWithState:&v1231 objects:v1268 count:16];
      }

      while (v221);
    }

    if (v218)
    {
      v1230 = -12783;
      LODWORD(v910) = -12783;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", qword_1ED844048, "<<<< FigCaptureSession >>>> Fig", "err == 0 ", "bail", 0, "FigCaptureSession.m", 13825, v910);
      goto LABEL_961;
    }
  }

  v1230 = 0;
  v1188 = 0u;
  v1189 = 0u;
  v1190 = 0u;
  v1191 = 0u;
  v974 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedCinematographyConfigurations];
  newValueb = [(NSArray *)v974 countByEnumeratingWithState:&v1188 objects:v1187 count:16];
  if (newValueb)
  {
    v980 = *v1189;
    do
    {
      v224 = 0;
      do
      {
        if (*v1189 != v980)
        {
          objc_enumerationMutation(v974);
        }

        v225 = *(*(&v1188 + 1) + 8 * v224);
        v226 = [objc_msgSend(objc_msgSend(v225 "sourceConfiguration")];
        v227 = [*v1037 objectForKeyedSubscript:v226];
        v228 = [objc_msgSend(objc_msgSend(v225 "sourceConfiguration")];
        objc = v224;
        if (v227)
        {
          v229 = *(v227 + 24);
          v230 = *(v227 + 32);
        }

        else
        {
          v229 = 0;
          v230 = 0;
        }

        v231 = FigCaptureBuildSinkPipelineName(v229, v230, v228, @"Cinematography Pipeline");
        v232 = [(FigCaptureSessionPipelines *)v1075 cameraSourcePipelineWithSourceID:v226];
        [(FigCaptureCameraSourcePipeline *)v232 nextVideoCaptureOutputForSourceDeviceType:v228, v233, v234, v235, v236, v237, v238, v910, v916, v918, v921, v924, v926, v928, v930, v932, v933, v934, v935, v936, v937, v938, *(&v938 + 1), v939, v940, v941, v943];
        v1064 = v228;
        v1055 = v231;
        v1044 = v245;
        if ([(FigCaptureCameraSourcePipeline *)v232 depthType]== 3)
        {
          [(FigCaptureCameraSourcePipeline *)v232 nextVideoCaptureOutputForSourceDeviceType:v239, v240, v241, v242, v243, v244, v911, v917, v919, v922, v924, v926, v928, v930, v932, v933, v934, v935, v936, v937, v938, *(&v938 + 1), v939, v940, v941, v943];
          v1027 = v246;
          v247 = 2;
        }

        else
        {
          v1027 = [(FigCaptureCameraSourcePipeline *)v232 depthOutput];
          v247 = v228;
        }

        v1018 = [(FigCaptureCameraSourcePipeline *)v232 nextPreviewOutputForSourceDeviceType:v247 intendedForVideoDataSinkPipeline:0];
        v1009 = captureSession_inferenceScheduler(v1036);
        v248 = objc_alloc_init(FigCaptureCinematographyPipelineConfiguration);
        v1183 = 0u;
        v1184 = 0u;
        v1185 = 0u;
        v1186 = 0u;
        v249 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedMetadataSinkConfigurations];
        v250 = [(NSArray *)v249 countByEnumeratingWithState:&v1183 objects:v1182 count:16];
        if (v250)
        {
          v251 = v250;
          v252 = 0;
          v253 = *v1184;
          do
          {
            for (i5 = 0; i5 != v251; ++i5)
            {
              if (*v1184 != v253)
              {
                objc_enumerationMutation(v249);
              }

              v255 = *(*(&v1183 + 1) + 8 * i5);
              [objc_msgSend(objc_msgSend(v255 "metadataObjectConnectionConfiguration")];
              if (objc_msgSend_isEqualToString_(v226))
              {
                v252 = [objc_msgSend(v255 "metadataObjectConnectionConfiguration")];
              }
            }

            v251 = [(NSArray *)v249 countByEnumeratingWithState:&v1183 objects:v1182 count:16];
          }

          while (v251);
        }

        else
        {
          v252 = 0;
        }

        [(FigCaptureCinematographyPipelineConfiguration *)v248 setObjectMetadataIdentifiers:v252];
        -[FigCaptureMovieFileSinkPipelineConfiguration setPrimaryVideoConnectionConfiguration:](v248, [v225 videoCaptureConnectionConfigurations]);
        -[FigCaptureMovieFileSinkPipelineConfiguration setVideoConnectionConfigurations:](v248, [v225 previewConnectionConfigurations]);
        -[FigCaptureMovieFileSinkPipelineConfiguration setAudioConnectionConfiguration:](v248, [objc_msgSend(v225 "sourceConfiguration")]);
        v256 = [(FigCaptureCameraSourcePipeline *)v232 depthType];
        [(FigCaptureCameraSourcePipelineConfiguration *)v248 setRGBIRStereoFusionFixedDepthThresholdMM:v256];
        [(FigCaptureMetadataSinkPipelineConfiguration *)v248 setVitalityScoringEnabled:?];
        [(FigCaptureMovieFileSinkPipelineConfiguration *)v248 setDetectedObjectMetadataConnectionConfigurations:?];
        v257 = [(FigCaptureCameraSourcePipeline *)v232 preLTMThumbnailEnabled];
        [(FigCaptureCinematographyPipelineConfiguration *)v248 setPreLTMThumbnailEnabled:v257];
        v258 = [(FigCaptureCameraSourcePipeline *)v232 postColorProcessingThumbnailEnabled];
        [(FigCaptureCinematographyPipelineConfiguration *)v248 setPostColorProcessingThumbnailEnabled:v258];
        v259 = [(FigCaptureCameraSourcePipeline *)v232 weightSegmentMapEnabled];
        [(FigCaptureCinematographyPipelineConfiguration *)v248 setWeightSegmentMapEnabled:v259];
        v260 = [FigCaptureCinematographyPipeline alloc];
        v261 = [(FigCaptureCameraSourcePipeline *)v232 semanticMasksOutputsBySourceDeviceType:v1064];
        v262 = [(FigCaptureCameraSourcePipeline *)v232 captureDevice];
        v263 = [(FigCaptureCinematographyPipeline *)v260 initWithConfiguration:v248 videoSourceCaptureOutput:v1044 sourceSemanticMasksOutput:v261 previewOutput:v1018 auxiliaryOutput:v1027 graph:v1038 name:v1055 sourceID:v226 captureDevice:v262 inferenceScheduler:v1009 errorOut:&v1230];

        if (v1230)
        {
          goto LABEL_856;
        }

        v25 = v1075;
        [(FigCaptureSessionPipelines *)v1075 addCinematographyPipeline:v263];
        v264 = [(FigCaptureCinematographyPipeline *)v263 cinematicVideoFocusDetectionsProvider];
        [-[FigCaptureCameraSourcePipeline captureDevice](v232) setStreamingFilterDelegate:v264];
        v224 = objc + 1;
      }

      while (objc + 1 != newValueb);
      v265 = [(NSArray *)v974 countByEnumeratingWithState:&v1188 objects:v1187 count:16];
      newValueb = v265;
    }

    while (v265);
  }

  captureSession_teardownImageQueueSinkNodesIfNeeded(v1036, [(FigCaptureSessionParsedConfiguration *)v1035 parsedPreviewSinkConfigurations]);
  v1181 = 0u;
  v1180 = 0u;
  v1179 = 0u;
  v1178 = 0u;
  v942 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedPreviewSinkConfigurations];
  v950 = [(NSArray *)v942 countByEnumeratingWithState:&v1178 objects:v1177 count:16];
  if (v950)
  {
    v948 = *v1179;
    v943 = @"DeviceType";
    *&v266 = 136315394;
    v938 = v266;
    do
    {
      v267 = 0;
      do
      {
        if (*v1179 != v948)
        {
          objc_enumerationMutation(v942);
        }

        v965 = v267;
        v268 = *(*(&v1178 + 1) + 8 * v267);
        v269 = [v268 sinkID];
        v1019 = [objc_msgSend(v268 "cameraConfiguration")];
        v270 = [(FigCaptureSessionPipelines *)v25 cameraSourcePipelineWithSourceID:?];
        v271 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](v270) format];
        v1028 = [*(v1039 + 560) objectForKeyedSubscript:v269];
        v963 = [objc_msgSend(*(v1039 + 568) objectForKeyedSubscript:{v269), "BOOLValue"}];
        v959 = [objc_msgSend(*(v1039 + 576) objectForKeyedSubscript:{v269), "intValue"}];
        v1045 = [(FigCaptureCameraSourcePipeline *)v270 trueVideoCaptureEnabled];
        v1065 = v270;
        v273 = [(FigCaptureCameraSourcePipeline *)v270 trueVideoCaptureAdditionalZoomFactor];
        memset(v1268, 0, sizeof(v1268));
        v1269 = 0u;
        v1270 = 0u;
        v274 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedMovieFileSinkConfigurations];
        v275 = [(NSArray *)v274 countByEnumeratingWithState:v1268 objects:v1273 count:16];
        if (v275)
        {
          v279 = v275;
          v280 = **&v1268[1];
LABEL_331:
          v281 = 0;
          while (1)
          {
            if (**&v1268[1] != v280)
            {
              objc_enumerationMutation(v274);
            }

            v282 = [objc_msgSend(objc_msgSend(*(*(&v1268[0] + 1) + 8 * v281) "videoConnectionConfigurations")];
            v283 = [objc_msgSend(v282 "requiredFormat")];
            v284 = v283;
            v285 = HIDWORD(v283);
            [objc_msgSend(v282 "requiredFormat")];
            if ((v285 * v284) > 0x7E8FFF && v286 >= 60.0)
            {
              break;
            }

            if (v279 == ++v281)
            {
              v279 = [(NSArray *)v274 countByEnumeratingWithState:v1268 objects:v1273 count:16];
              if (v279)
              {
                goto LABEL_331;
              }

              goto LABEL_328;
            }
          }
        }

        else
        {
LABEL_328:
          v1249 = 0u;
          v1248 = 0u;
          v1247 = 0u;
          v1246 = 0u;
          v276 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedVideoDataSinkConfigurations];
          v277 = [(NSArray *)v276 countByEnumeratingWithState:&v1246 objects:v1271 count:16];
          if (!v277)
          {
LABEL_329:
            v278 = 0;
            goto LABEL_355;
          }

          v288 = v277;
          v289 = *v1247;
LABEL_343:
          v290 = 0;
          while (1)
          {
            if (*v1247 != v289)
            {
              objc_enumerationMutation(v276);
            }

            v291 = [objc_msgSend(*(*(&v1246 + 1) + 8 * v290) "videoDataConnectionConfiguration")];
            v292 = [objc_msgSend(v291 "requiredFormat")];
            v293 = v292;
            v294 = HIDWORD(v292);
            [objc_msgSend(v291 "requiredFormat")];
            if ((v294 * v293) > 0x7E8FFF && v295 >= 60.0)
            {
              break;
            }

            if (v288 == ++v290)
            {
              v288 = [(NSArray *)v276 countByEnumeratingWithState:&v1246 objects:v1271 count:16];
              if (v288)
              {
                goto LABEL_343;
              }

              goto LABEL_329;
            }
          }
        }

        v278 = 1;
LABEL_355:
        v994 = [(FigCaptureCameraSourcePipeline *)v1065 lowLatencyStabilizationEnabled];
        v981 = [(FigCaptureCameraSourcePipeline *)v1065 colorSpaceProperties];
        IsFullRange = FigCapturePixelFormatIsFullRange(v271);
        objd = [(FigCaptureCameraSourcePipeline *)v1065 videoHDRImageStatisticsEnabled];
        newValuec = [(FigCaptureSessionParsedConfiguration *)v1035 smartStyleRenderingEnabled];
        LODWORD(v1246) = 0;
        v1010 = CMBaseObjectGetDerivedStorage();
        v297 = [v268 cameraConfiguration];
        v298 = [v268 videoPreviewSinkConnectionConfiguration];
        v299 = [v268 videoThumbnailConnectionConfiguration];
        v969 = [v268 depthDataConnectionConfiguration];
        v300 = [v268 previewTimeMachineConnectionConfiguration];
        v301 = [v268 previewSmartStyleCoefficientsTimeMachineConnectionConfiguration];
        v302 = [v268 sceneClassifierConnectionConfiguration];
        v303 = [v268 metadataObjectConnectionConfiguration];
        v1056 = [v268 stillImageConnectionConfiguration];
        v304 = FigCaptureSourceGetIntAttribute([v297 source], 0x1F21A0530, &v1246);
        if (v1246)
        {
          captureSession_buildGraphWithConfiguration_cold_14();
          v305 = 0;
          v318 = v1065;
        }

        else
        {
          v952 = v304;
          v958 = v278;
          v305 = objc_alloc_init(FigCapturePreviewSinkPipelineConfiguration);
          -[FigCaptureMovieFileSinkPipelineConfiguration setPrimaryCameraConfiguration:](v305, [v268 sinkID]);
          v956 = v298;
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v305 setPrimaryVideoConnectionConfiguration:v298];
          v954 = v299;
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v305 setVideoConnectionConfigurations:v299];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v305 setAudioConnectionConfiguration:v969];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v305 setCameraDebugInfoMetadataConnectionConfiguration:v300];
          [(FigCaptureCameraSourcePipelineConfiguration *)v305 setVisionDataConnectionConfigurations:v301];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v305 setDetectedObjectMetadataConnectionConfigurations:v302];
          -[FigCaptureMovieFileSinkPipelineConfiguration setDepthDataConnectionConfiguration:](v305, [v268 sensitiveContentAnalyzerConnectionConfiguration]);
          v306 = FigCaptureMetadataObjectConfigurationRequiresMetadataDetectorPipeline(v303);
          v307 = FigCaptureMetadataObjectConfigurationRequiresVideoPreviewHistogramPipeline(v303);
          v308 = FigCaptureMetadataObjectConfigurationRequiresSceneClassification(v303);
          v309 = v268;
          if ((v306 & 1) != 0 || (v307 & 1) != 0 || v308)
          {
            [(FigCapturePreviewSinkPipelineConfiguration *)v305 setMetadataObjectConnectionConfiguration:v303];
          }

          [(FigCaptureMovieFileSinkPipelineConfiguration *)v305 setStillImageConnectionConfiguration:v1056];
          v312 = BWInferenceSmartCameraCurrentVersion(v310, v311);
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setSceneClassifierPipelineVersion:?];
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setSourceColorSpaceProperties:v981];
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setSourcePixelFormatIsFullRange:?];
          v313 = FigCaptureSourceGetIntAttribute([v297 source], @"DeviceType", 0);
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setSourceIsBravoDevice:?];
          IsCameraOrDerivative = captureSession_clientIsCameraOrDerivative(v1036);
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setClientIsCameraOrDerivative:?];
          v1273[1] = *(v1010 + 36);
          v1273[0] = *(v1010 + 20);
          v1271[0] = v1273[0];
          v1271[1] = v1273[1];
          v315 = [v1056 irisSinkConfiguration];
          isIrisMovieVitalityScoringEnabled = cs_isIrisMovieVitalityScoringEnabled(v315);
          [(FigCaptureCameraSourcePipelineConfiguration *)v305 setOfflineVISEnabled:?];
          -[FigCapturePreviewSinkPipelineConfiguration setDeferredPrepareEnabled:](v305, [objc_msgSend(v298 "sinkConfiguration")]);
          [(FigCaptureCameraSourcePipelineConfiguration *)v305 setZeroShutterLagEnabled:?];
          shouldEnableOverCapture = cs_shouldEnableOverCapture(v297);
          [(FigCaptureCameraSourcePipelineConfiguration *)v305 setConfigureForZeroShutterLagSupport:?];
          v318 = v1065;
          if ([v297 sourceType] == 1 && ((v319 = FigCaptureSourceGetIntAttribute(objc_msgSend(v297, "source"), @"DeviceType", 0), v319 > 9) || ((1 << v319) & 0x310) == 0))
          {
            v321 = v954;
            if ([objc_msgSend(objc_msgSend(v297 "requiredFormat")] && objc_msgSend(v297, "imageControlMode") != 4)
            {
              v320 = [v297 spatialOverCaptureEnabled];
            }

            else
            {
              v320 = 0;
            }
          }

          else
          {
            v320 = 0;
            v321 = v954;
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v305 setConfigureForSIFRStillImageCaptureIfAvailable:v320];
          -[FigCaptureCameraSourcePipelineConfiguration setSoftISPEnabled:](v305, [objc_msgSend(v956 "videoPreviewSinkConfiguration")]);
          if ([objc_msgSend(v1056 "irisSinkConfiguration")])
          {
            v322 = 0.100000001;
          }

          else
          {
            v322 = 0.0;
          }

          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setVideoStabilizationOverscan:v322];
          [(FigCaptureCameraSourcePipelineConfiguration *)v305 setConfigureForStereoPhotoCaptureSupport:v1045];
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setTrueVideoCaptureAdditionalZoomFactor:v273];
          v323 = cs_stillImageDepthDataType(v297) == 4;
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setFocusBlurMapForDepthFiltersEnabled:v323];
          v324 = [v297 smartCameraEnabled];
          if (v952 < 3)
          {
            v325 = v324;
          }

          else
          {
            v325 = 0;
          }

          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setSmartCameraMotionDetectionEnabled:v325];
          if (v307)
          {
            IsLaunchPrewarmingEnabled = FigCaptureSessionIsLaunchPrewarmingEnabled();
          }

          else
          {
            IsLaunchPrewarmingEnabled = 0;
          }

          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setGeneratesHistogram:?];
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setMaxLossyCompressionLevel:"previewMaxLossyCompressionLevel")];
          if (v956 | v321)
          {
            v327 = newValuec;
          }

          else
          {
            v327 = 0;
          }

          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setSmartStyleRenderingEnabled:v327];
          if ([v297 cinematicFramingEnabled])
          {
            v328 = 2;
          }

          else if ([v297 manualCinematicFramingEnabled])
          {
            v328 = 2;
          }

          else
          {
            v328 = 1;
          }

          v268 = v309;
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setSmartStyleRenderingMethod:v328];
          v329 = cs_shouldEnablePreviewStabilization(v1036, v956);
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setPreviewStabilizationEnabled:v329];
          if (v994)
          {
            v330 = 0;
          }

          else
          {
            v330 = cs_shouldEnableLowLatencyStabilization(v956);
          }

          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setLowLatencyStabilizationEnabled:v330];
          -[FigCapturePreviewSinkPipelineConfiguration setCinematicVideoEnabled:](v305, [*(v1010 + 98) cinematographyPipelineWithSourceID:{objc_msgSend(v297, "sourceID")}] != 0);
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setVideoHDRImageStatisticsEnabled:?];
          v331 = [v297 lensSmudgeDetectionEnabled];
          if (v297)
          {
            objc_msgSend_lensSmudgeDetectionInterval(v297);
            v332 = (LODWORD(v1271[0]) << 24) | (BYTE4(v1271[0]) << 56);
          }

          else
          {
            v332 = 0;
            memset(v1271, 0, 24);
          }

          v1268[0] = *(v1271 + 5);
          *(v1268 + 15) = DWORD1(v1271[1]);
          LOBYTE(v1271[0]) = v331;
          *(v1271 + 1) = v332;
          *(v1271 + 9) = v1268[0];
          DWORD2(v1271[1]) = *(v1268 + 15);
          if ([objc_msgSend(v956 videoPreviewSinkConfiguration])
          {
            LOBYTE(v1231) = 0;
            LODWORD(v1271[0]) = 0;
            LODWORD(v1243[0]) = 0;
            cs_getZoomPIPOverlayConfiguration(v956, &v1231, v1271, v1243);
            [(FigCapturePreviewSinkPipelineConfiguration *)v305 setZoomPIPSingleStreamModeEnabled:v1231];
            [(FigCapturePreviewSinkPipelineConfiguration *)v305 setZoomPIPMinimumUIZoomFactor:?];
            [(FigCapturePreviewSinkPipelineConfiguration *)v305 setZoomPIPSlaveStreamingFrameRate:?];
          }

          shouldEnablePocketDetection = cs_shouldEnablePocketDetection(v1036, v956);
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setPocketDetectionEnabled:?];
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setParallelGraphRebuildEnabled:v946];
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setIspFastSwitchEnabled:v962];
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setRebuildingGraphForTrueVideoTransition:v971];
          [(FigCaptureCameraSourcePipelineConfiguration *)v305 setStillImageConnectionConfiguration:?];
          [(FigCapturePreviewSinkPipelineConfiguration *)v305 setPreallocatePreviewStitcherOutputBufferPool:v958];
          -[FigCapturePreviewSinkPipelineConfiguration setCoreMediaFaceTrackingEnabled:](v305, [objc_msgSend(v309 "videoPreviewSinkConnectionConfiguration")]);
        }

        if (v1246)
        {
          v334 = 0;
        }

        else
        {
          v334 = v305;
        }

        v1230 = v1246;
        if (v1246)
        {
          captureSession_buildGraphWithConfiguration_cold_15();
          goto LABEL_961;
        }

        v335 = [*v1037 objectForKeyedSubscript:{objc_msgSend(v318, "sourceID")}];
        if (v335)
        {
          v336 = *(v335 + 24);
          v337 = *(v335 + 32);
        }

        else
        {
          v336 = 0;
          v337 = 0;
        }

        v338 = FigCaptureBuildSinkPipelineName(v336, v337, [objc_msgSend(v268 "videoPreviewSinkConnectionConfiguration")], @"Preview Sink Pipeline");
        v339 = [(FigCaptureSessionPipelines *)v25 cinematographyPipelineWithSourceID:v1019];
        v340 = v339;
        if (v339)
        {
          v341 = [(FigCaptureCinematographyPipeline *)v339 nextPreviewOutput];
          v1173 = 0u;
          v1174 = 0u;
          v1175 = 0u;
          v1176 = 0u;
          v342 = v1035;
          v343 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedVideoDataSinkConfigurations];
          v344 = [(NSArray *)v343 countByEnumeratingWithState:&v1173 objects:v1172 count:16];
          if (v344)
          {
            v345 = v344;
            v346 = *v1174;
            while (2)
            {
              for (i6 = 0; i6 != v345; ++i6)
              {
                if (*v1174 != v346)
                {
                  objc_enumerationMutation(v343);
                }

                if (objc_msgSend_isEqualToString_([objc_msgSend(*(*(&v1173 + 1) + 8 * i6) "cameraConfiguration")]))
                {
                  v348 = 0;
                  v318 = v1065;
                  goto LABEL_408;
                }
              }

              v345 = [(NSArray *)v343 countByEnumeratingWithState:&v1173 objects:v1172 count:16];
              if (v345)
              {
                continue;
              }

              break;
            }
          }

          v318 = v1065;
          v348 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:-[FigCaptureCameraSourcePipeline stillImageOutputsByPortType](v1065)];
        }

        else
        {
          v341 = -[FigCaptureCameraSourcePipeline nextPreviewOutputForSourceDeviceType:intendedForVideoDataSinkPipeline:](v318, [v268 sourceDeviceType], 0);
          v348 = 0;
          v342 = v1035;
        }

LABEL_408:
        v349 = [FigCaptureSessionPreviewSinkPipeline alloc];
        v350 = captureSession_inferenceScheduler(v1036);
        v351 = [(FigCaptureCameraSourcePipeline *)v318 captureDevice];
        v918 = *(v1039 + 832);
        v921 = v348;
        v912 = v351;
        v916 = v918;
        v352 = [FigCapturePreviewSinkPipeline initWithConfiguration:v349 sourcePreviewOutput:"initWithConfiguration:sourcePreviewOutput:imageQueueSinkNode:graph:name:inferenceScheduler:captureDevice:previewTapDelegate:zoomPIPOverlayDelegate:sourceStillImageOutputsByPortType:" imageQueueSinkNode:v334 graph:v341 name:v1028 inferenceScheduler:v1038 captureDevice:v338 previewTapDelegate:v350 zoomPIPOverlayDelegate:? sourceStillImageOutputsByPortType:?];
        if (!v352)
        {
          LODWORD(v912) = 0;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v912, v936, v918, v348, v924, v926, v928, v930);
          v1230 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x3694, v936, v873, v874, v914);
          goto LABEL_961;
        }

        v353 = v352;
        [(FigCaptureSessionPreviewSinkPipeline *)v352 setImageQueueUpdatedNotificationSent:(v959 == [(FigCapturePreviewSinkPipeline *)v352 previewRotationDegrees]) & v963];
        if (!v340)
        {
          [-[FigCaptureCameraSourcePipeline captureDevice](v318) setStreamingFilterDelegate:{-[FigCapturePreviewSinkPipeline filterNode](v353, "filterNode")}];
        }

        if ([(FigCapturePreviewSinkPipeline *)v353 depthFilterRenderingEnabled])
        {
          [(FigCapturePreviewSinkPipeline *)v353 filterNode];
          [FigCaptureCameraSourcePipeline setFaceFilteringDelegate:v318];
        }

        v354 = [(FigCaptureCinematographyPipeline *)v340 cinematicVideoFocusDetectionsProvider];
        [(FigCaptureCameraSourcePipeline *)v318 setCinematicVideoFocusDetectionsProvider:v354];
        if (v971)
        {
          os_unfair_lock_lock((v1039 + 384));
          if ([*(v1039 + 584) count])
          {
            [(BWPreviewStitcherNode *)[(FigCapturePreviewSinkPipeline *)v353 previewStitcherNode] setWaitsForFencedUpdateBeforeFirstEmit:1];
            if (dword_1ED844050)
            {
              LODWORD(v1268[0]) = 0;
              LOBYTE(v1246) = 0;
              v355 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v356 = v1268[0];
              if (os_log_type_enabled(v355, v1246))
              {
                v357 = v356;
              }

              else
              {
                v357 = v356 & 0xFFFFFFFE;
              }

              if (v357)
              {
                v358 = *(v1039 + 104);
                LODWORD(v1271[0]) = v938;
                *(v1271 + 4) = "captureSession_buildGraphWithConfiguration";
                WORD6(v1271[0]) = 2114;
                *(v1271 + 14) = v358;
                LODWORD(v916) = 22;
                v912 = v1271;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          if ((v1045 & 1) == 0)
          {
            *(v1039 + 603) = 1;
          }

          os_unfair_lock_unlock((v1039 + 384));
        }

        v1171 = 0u;
        v1170 = 0u;
        v1169 = 0u;
        v1168 = 0u;
        v1066 = [(FigCaptureSessionParsedConfiguration *)v342 parsedMovieFileSinkConfigurations];
        v359 = [(NSArray *)v1066 countByEnumeratingWithState:&v1168 objects:v1167 count:16];
        if (v359)
        {
          v360 = v359;
          v361 = *v1169;
          v1046 = 1;
          v1057 = *v1169;
          do
          {
            for (i7 = 0; i7 != v360; ++i7)
            {
              if (*v1169 != v361)
              {
                objc_enumerationMutation(v1066);
              }

              v363 = *(*(&v1168 + 1) + 8 * i7);
              v364 = [v363 primaryVideoConnectionConfiguration];
              if ([objc_msgSend(v364 "movieFileSinkConfiguration")])
              {
                v1166 = 0u;
                v1165 = 0u;
                v1164 = 0u;
                v1163 = 0u;
                v365 = [v363 videoConnectionConfigurations];
                v366 = [v365 countByEnumeratingWithState:&v1163 objects:v1162 count:16];
                if (v366)
                {
                  v367 = v366;
                  v368 = *v1164;
                  while (2)
                  {
                    for (i8 = 0; i8 != v367; ++i8)
                    {
                      if (*v1164 != v368)
                      {
                        objc_enumerationMutation(v365);
                      }

                      v370 = *(*(&v1163 + 1) + 8 * i8);
                      v371 = [objc_msgSend(v370 "sourceConfiguration")];
                      [(FigCapturePreviewSinkPipeline *)v353 sourceID];
                      if (objc_msgSend_isEqualToString_(v371))
                      {
                        v372 = [objc_msgSend(v370 "sourceConfiguration")];
                        if (v372 == [(FigCapturePreviewSinkPipeline *)v353 sourceDeviceType])
                        {
                          v1046 = v370 == v364;
                          goto LABEL_445;
                        }
                      }
                    }

                    v367 = [v365 countByEnumeratingWithState:&v1163 objects:v1162 count:16];
                    if (v367)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_445:
                  v361 = v1057;
                }
              }
            }

            v360 = [(NSArray *)v1066 countByEnumeratingWithState:&v1168 objects:v1167 count:16];
          }

          while (v360);
        }

        else
        {
          v1046 = 1;
        }

        [(FigCaptureSessionPreviewSinkPipeline *)v353 setProvidesBuffersForPreviewTap:v1046];
        v25 = v1075;
        [(FigCaptureSessionPipelines *)v1075 addPreviewSinkPipeline:v353];
        v267 = v965 + 1;
      }

      while (v965 + 1 != v950);
      v373 = [(NSArray *)v942 countByEnumeratingWithState:&v1178 objects:v1177 count:16];
      v950 = v373;
    }

    while (v373);
  }

  v1161 = 0u;
  v1160 = 0u;
  v1159 = 0u;
  v1158 = 0u;
  v1020 = [(FigCaptureSessionParsedConfiguration *)v1035 videoThumbnailSinkConfigurations];
  v1067 = [(NSArray *)v1020 countByEnumeratingWithState:&v1158 objects:v1157 count:16];
  if (v1067)
  {
    v1058 = *v1159;
    do
    {
      v374 = 0;
      do
      {
        if (*v1159 != v1058)
        {
          objc_enumerationMutation(v1020);
        }

        v375 = *(*(&v1158 + 1) + 8 * v374);
        v376 = [objc_msgSend(v375 "sourceConfiguration")];
        v377 = -[FigCaptureSessionPipelines previewSinkPipelineWithSourceID:sourceDeviceType:](v25, "previewSinkPipelineWithSourceID:sourceDeviceType:", v376, [v375 underlyingDeviceType]);
        v378 = [*v1037 objectForKeyedSubscript:v376];
        v379 = [(FigCaptureSessionPipelines *)v25 cameraSourcePipelineWithSourceID:v376];
        v380 = +[FigCaptureCameraParameters previewMaxLossyCompressionLevel];
        if (v378)
        {
          v381 = *(v378 + 24);
          LODWORD(v378) = *(v378 + 32);
        }

        else
        {
          v381 = 0;
        }

        v382 = FigCaptureBuildSinkPipelineName(v381, v378, [v375 underlyingDeviceType], @"Video Thumbnail Sink Pipeline");
        v383 = [v377 videoThumbnailSinkOutputTransform];
        v385 = v384;
        *&v1271[0] = v383;
        *(&v1271[0] + 1) = v384;
        v387 = [v377 outputTransform];
        if (*&v1271[0])
        {
          v388 = 0;
        }

        else
        {
          v388 = *(&v1271[0] + 1) == 0;
        }

        if (v388)
        {
          v389 = [(FigCaptureCameraSourcePipeline *)v379 preferredPreviewDimensions];
        }

        else
        {
          v389 = v386;
        }

        v390 = [FigCaptureVideoThumbnailSinkPipeline alloc];
        v391 = [v377 videoThumbnailSinkOutput];
        v392 = *(v1039 + 832);
        v393 = *(v1039 + 36);
        v1273[0] = *(v1039 + 20);
        v1273[1] = v393;
        v394 = [(FigCaptureVideoThumbnailSinkPipeline *)v390 initWithGraph:v1038 name:v382 videoSourceOutput:v391 videoSourceTransform:v383 outputTransform:v385 videoThumbnailConnectionConfiguration:v387 maxLossyCompressionLevel:v389 clientAuditToken:v375 notificationDelegate:v380, v1273, v392];
        if (!v394)
        {
          LODWORD(v910) = 0;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v910, v936, v918, v921, v924, v926, v928, v930);
          v810 = qword_1ED844048;
          v811 = 4294954516;
          v812 = 14081;
LABEL_837:
          v813 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v810, v811, "<<<< FigCaptureSession >>>>", v812, v936, v39, v40, v909);
          v1230 = v813;
          goto LABEL_855;
        }

        v25 = v1075;
        [(FigCaptureSessionPipelines *)v1075 addVideoThumbnailSinkPipeline:v394];
        v374 = v374 + 1;
      }

      while (v1067 != v374);
      v395 = [(NSArray *)v1020 countByEnumeratingWithState:&v1158 objects:v1157 count:16];
      v1067 = v395;
    }

    while (v395);
  }

  v1156 = 0u;
  v1155 = 0u;
  v1154 = 0u;
  v1153 = 0u;
  v966 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedVideoDataSinkConfigurations];
  newValued = [(NSArray *)v966 countByEnumeratingWithState:&v1153 objects:v1152 count:16];
  if (newValued)
  {
    v982 = *v1154;
    v960 = *MEMORY[0x1E695E480];
    do
    {
      v396 = 0;
      do
      {
        if (*v1154 != v982)
        {
          objc_enumerationMutation(v966);
        }

        v995 = v396;
        v397 = *(*(&v1153 + 1) + 8 * v396);
        v398 = [v397 videoDataConnectionConfiguration];
        v1068 = [v397 metadataObjectConnectionConfiguration];
        LOBYTE(v1246) = 0;
        v399 = [objc_msgSend(v397 "cameraConfiguration")];
        v400 = [v397 sourceDeviceType];
        v401 = [(FigCaptureSessionPipelines *)v25 cameraSourcePipelineWithSourceID:v399];
        v402 = [(FigCaptureSessionPipelines *)v25 previewSinkPipelineWithSourceID:v399 sourceDeviceType:v400];
        v403 = [(FigCaptureSessionPipelines *)v25 cinematographyPipelineWithSourceID:v399];
        v404 = [objc_msgSend(objc_msgSend(v397 "videoDataConnectionConfiguration")];
        v405 = [objc_msgSend(v397 "videoDataConnectionConfiguration")];
        if (v404)
        {
          v411 = v405 > 6;
        }

        else
        {
          v411 = 1;
        }

        v412 = v411 || ((1 << v405) & 0x51) == 0;
        v1047 = v402;
        if (v412)
        {
          if (v403)
          {
            v414 = [(FigCaptureCinematographyPipeline *)v403 nextVideoCaptureOutput];
            v415 = [(FigCaptureCinematographyPipeline *)v403 videoCaptureOutputTransform];
          }

          else
          {
            [(FigCaptureCameraSourcePipeline *)v401 nextVideoCaptureOutputForSourceDeviceType:v400 sharesBuffersWithOtherConnections:&v1246, v406, v407, v408, v409, v410, v910, v916, v918, v921, v924, v926, v928, v930, v932, v933, v934, v935, v936, v937, v938, *(&v938 + 1), v939, v940, v942, v943];
            v414 = v413;
            v415 = [(FigCaptureCameraSourcePipeline *)v401 videoCaptureOutputTransformForSourceDeviceType:v400];
          }
        }

        else if (v403)
        {
          v414 = [(FigCaptureCinematographyPipeline *)v403 nextPreviewOutput];
          v415 = [(FigCaptureCinematographyPipeline *)v403 previewOutputTransform];
        }

        else
        {
          v414 = [(FigCaptureCameraSourcePipeline *)v401 nextPreviewOutputForSourceDeviceType:v400 intendedForVideoDataSinkPipeline:1];
          v415 = [(FigCaptureCameraSourcePipeline *)v401 previewOutputTransformForSourceDeviceType:v400];
        }

        obje = v416;
        v1011 = v415;
        v417 = FigCaptureMetadataObjectConfigurationRequiresOfflineVideoStabilizationMotionData(v1068);
        v418 = FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v1068);
        v419 = [(FigCaptureCameraSourcePipeline *)v401 videoCaptureDimensionsWithoutOverscan];
        if (objc_msgSend_isEqualToString_([objc_msgSend(objc_msgSend(v397 "videoDataConnectionConfiguration")]) && objc_msgSend(objc_msgSend(objc_msgSend(v397, "videoDataConnectionConfiguration"), "videoDataSinkConfiguration"), "cinematicFramingSupported"))
        {
          v420 = [objc_msgSend(objc_msgSend(v397 "videoDataConnectionConfiguration")];
        }

        else
        {
          v420 = 0;
        }

        v1029 = v417;
        v1021 = v418;
        if (objc_msgSend_isEqualToString_([objc_msgSend(objc_msgSend(v397 "videoDataConnectionConfiguration")]) && objc_msgSend(objc_msgSend(objc_msgSend(v397, "videoDataConnectionConfiguration"), "videoDataSinkConfiguration"), "cinematicFramingSupported"))
        {
          v421 = [objc_msgSend(objc_msgSend(v397 "videoDataConnectionConfiguration")] ^ 1;
        }

        else
        {
          v421 = 0;
        }

        v422 = objc_msgSend_isEqualToString_([objc_msgSend(objc_msgSend(v397 "videoDataConnectionConfiguration")]);
        v423 = [objc_msgSend(v397 "cameraConfiguration")] | v420;
        v424 = [objc_msgSend(v397 "cameraConfiguration")];
        v425 = v423 | [objc_msgSend(v397 "cameraConfiguration")] | v422 | v424 | v421;
        if (v425)
        {
          v419 = [objc_msgSend(objc_msgSend(v397 "cameraConfiguration")];
        }

        if (([objc_msgSend(objc_msgSend(v397 "cameraConfiguration")] & v423) == 1)
        {
          v419 = [objc_msgSend(objc_msgSend(v397 "cameraConfiguration")];
          LOBYTE(v425) = 1;
        }

        v426 = [v398 videoStabilizationType];
        if ([objc_msgSend(v398 "sinkConfiguration")])
        {
          v427 = MEMORY[0x1E696AEC0];
          v910 = [(BWNodeOutput *)v414 name];
          v916 = [objc_msgSend(v398 "sinkConfiguration")];
          -[BWNodeOutput setName:](v414, "setName:", [v427 stringWithFormat:@"%@ (%@)"]);
        }

        v1059 = v414;
        v428 = v425 | FigCapturePixelFormatIsPackedBayerRaw([objc_msgSend(objc_msgSend(v397 "cameraConfiguration")]);
        v429 = [(FigCaptureCameraSourcePipeline *)v401 lowLatencyStabilizationEnabled];
        v430 = [(FigCaptureCameraSourcePipeline *)v401 motionAttachmentsSource];
        [(FigCaptureSessionParsedConfiguration *)v1035 smartStyleRenderingEnabled];
        v431 = v1246;
        v432 = CMBaseObjectGetDerivedStorage();
        v433 = objc_alloc_init(FigCaptureVideoDataSinkPipelineConfiguration);
        [(FigCaptureVideoDataSinkPipelineConfiguration *)v433 setSourceVideoTransform:v1011, obje];
        [(FigCaptureCameraSourcePipelineConfiguration *)v433 setActionCameraEnabled:?];
        [(FigCaptureVideoDataSinkPipelineConfiguration *)v433 setVisOutputDimensions:v419];
        -[FigCaptureVideoDataSinkPipelineConfiguration setVisGeneratedTransformsOutputDimensionsOverride:](v433, [objc_msgSend(objc_msgSend(v398 "sourceConfiguration")] | (objc_msgSend(objc_msgSend(objc_msgSend(v398, "sourceConfiguration"), "requiredFormat"), "videoStabilizationGeneratedTransformsOutputHeightOverride") << 32));
        [(FigCaptureCameraSourcePipelineConfiguration *)v433 setMultiCamClientCompositingPrimaryCameraVideoStabilizationStrength:v426];
        [(FigCaptureCameraSourcePipelineConfiguration *)v433 setDepthType:v430];
        [(FigCaptureVideoDataSinkPipelineConfiguration *)v433 setFaceTrackingEnabled:v1021];
        [(FigCaptureVideoDataSinkPipelineConfiguration *)v433 setOfflineVISMotionDataEnabled:v1029];
        PortTypesWithGDCInVIS = cs_getPortTypesWithGDCInVIS(v401);
        [(FigCaptureMovieFileSinkPipelineConfiguration *)v433 setCameraDebugInfoMetadataConnectionConfiguration:?];
        v435 = [v398 sourceConfiguration];
        if (!v435)
        {
          v435 = [v1068 sourceConfiguration];
        }

        [(FigCapturePreviewSinkPipelineConfiguration *)v433 setMetadataObjectConnectionConfiguration:v435];
        v436 = [v398 underlyingDeviceType];
        v25 = v1075;
        if (!v436)
        {
          v436 = [v1068 underlyingDeviceType];
        }

        [(FigCaptureVideoDataSinkPipelineConfiguration *)v433 setSourceDeviceType:v436];
        [(FigCaptureDepthDataPipelineConfiguration *)v433 setCameraInfoByPortType:v398];
        v1273[1] = *(v432 + 36);
        v1273[0] = *(v432 + 20);
        v1271[0] = v1273[0];
        v1271[1] = v1273[1];
        v437 = [objc_msgSend(v398 sourceConfiguration];
        if (cs_shouldConvertToBT2020(v401, v437))
        {
          v438 = *(v432 + 816) ^ 1;
        }

        else
        {
          v438 = 0;
        }

        [(FigCaptureCameraSourcePipelineConfiguration *)v433 setStrictDepthModePreferred:?];
        v439 = [(FigCaptureCameraSourcePipeline *)v401 colorSpaceProperties];
        [(FigCaptureCameraSourcePipelineConfiguration *)v433 setRGBIRStereoFusionMinDepthThresholdMM:v439];
        [(FigCaptureCameraSourcePipelineConfiguration *)v433 setRGBIRStereoFusionMaxDepthThresholdMM:"videoDataMaxLossyCompressionLevel")];
        [(FigCaptureVideoDataSinkPipelineConfiguration *)v433 setForcePixelTransfer:v431];
        v440 = cs_shouldEnablePreviewStabilization(v1036, v398);
        [(FigCaptureCameraSourcePipelineConfiguration *)v433 setOfflineVISEnabled:v440];
        if (v429)
        {
          v441 = 0;
        }

        else
        {
          v441 = cs_shouldEnableLowLatencyStabilization(v398);
        }

        [(FigCaptureCameraSourcePipelineConfiguration *)v433 setZeroShutterLagEnabled:v441];
        v442 = [v398 sourceConfiguration];
        if ([v442 cinematicFramingEnabled])
        {
          v443 = 2;
        }

        else if ([v442 manualCinematicFramingEnabled])
        {
          v443 = 2;
        }

        else
        {
          v443 = 1;
        }

        [(FigCaptureVideoDataSinkPipelineConfiguration *)v433 setSmartStyleRenderingMethod:v443];
        if (!v1047)
        {
          v464 = cs_shouldEnablePocketDetection(v1036, v398);
          [(FigCaptureCameraSourcePipelineConfiguration *)v433 setConfigureForZeroShutterLagSupport:v464];
        }

        [(FigCaptureMovieFileSinkPipelineConfiguration *)v433 setClientApplicationID:?];
        -[FigCaptureCameraSourcePipelineConfiguration setConfigureForSIFRStillImageCaptureIfAvailable:](v433, [objc_msgSend(v398 "videoDataSinkConfiguration")]);
        if (objc_msgSend_isEqualToString_([objc_msgSend(v398 "sinkConfiguration")]) && -[FigCaptureCameraSourcePipelineConfiguration configureForSIFRStillImageCaptureIfAvailable](v433))
        {
          -[FigCaptureCameraSourcePipelineConfiguration setSoftISPEnabled:](v433, [objc_msgSend(v398 "videoDataSinkConfiguration")]);
          v444 = [(FigCaptureCameraSourcePipelineConfiguration *)v433 softISPEnabled];
          [(FigCapturePreviewSinkPipelineConfiguration *)v433 setZoomPIPSingleStreamModeEnabled:?];
          [(FigCaptureVideoDataSinkPipelineConfiguration *)v433 setCenterStageFramingMode:?];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v433 setP3ToBT2020ConversionEnabled:?];
          [(FigCaptureCameraSourcePipelineConfiguration *)v433 setConfigureForSoftISPSupport:?];
        }

        else if (objc_msgSend_isEqualToString_([objc_msgSend(v398 "sinkConfiguration")]))
        {
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v433 setSemanticStyleRenderingEnabled:?];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v433 setMaxLossyCompressionLevel:?];
        }

        *&v1271[0] = 0;
        v445 = [(FigCaptureCameraSourcePipeline *)v401 captureSource];
        v446 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v446)
        {
          v446(v445, @"AttributesDictionary", v960, v1271);
          v447 = *&v1271[0];
          if (*&v1271[0])
          {
            v447 = [*&v1271[0] objectForKeyedSubscript:@"MotionCompensatedTemporalFilterNoiseReductionConfiguration"];
          }
        }

        else
        {
          v447 = 0;
        }

        if ([objc_msgSend(v447 objectForKeyedSubscript:{@"Supported", "BOOLValue"}])
        {
          if (objc_msgSend_isEqualToString_([objc_msgSend(v398 "sinkConfiguration")]))
          {
            v448 = 1;
          }

          else
          {
            v448 = objc_msgSend_isEqualToString_([objc_msgSend(v398 "sinkConfiguration")]);
          }

          [(FigCaptureMovieFileSinkPipelineConfiguration *)v433 setVideoSTFEnabled:v448];
          -[FigCaptureMovieFileSinkPipelineConfiguration setVideoGreenGhostMitigationEnabled:](v433, [objc_msgSend(v398 "sinkConfiguration")]);
        }

        else
        {
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v433 setVideoSTFEnabled:?];
        }

        v449 = [*(v432 + 784) cinematographyPipelineWithSourceID:{objc_msgSend(v401, "sourceID")}];
        if (v398)
        {
          v450 = v449 != 0;
          *&v1268[0] = v398;
          v451 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1268 count:1];
          v452 = [(FigCaptureCameraSourcePipeline *)v401 colorSpaceProperties];
          v453 = cs_shouldEnableVideoSTF(v451, v450, v452);
          [(FigCaptureVideoDataSinkPipelineConfiguration *)v433 setVideoSTFEnabled:v453];
        }

        -[FigCaptureMovieFileSinkPipelineConfiguration setIspFastSwitchEnabled:](v433, [objc_msgSend(v398 "sourceConfiguration")]);
        [-[FigCaptureCameraSourcePipeline captureDevice](v401) simulatedAperture];
        [(FigCaptureVideoDataSinkPipelineConfiguration *)v433 setSimulatedAperture:v454];
        v455 = [*(v432 + 776) objectForKeyedSubscript:{objc_msgSend(v401, "sourceID")}];
        if (v455)
        {
          v456 = *(v455 + 24);
          v457 = *(v455 + 32);
        }

        else
        {
          v456 = 0;
          v457 = 0;
        }

        v458 = [(FigCaptureVideoDataSinkPipelineConfiguration *)v433 sourceDeviceType];
        v459 = FigCaptureBuildSinkPipelineName(v456, v457, v458, @"Video Data Sink Pipeline");
        v460 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:-[FigCaptureCameraSourcePipeline stillImageOutputsByPortType](v401)];
        v461 = [FigCaptureVideoDataSinkPipeline alloc];
        v462 = [(FigCaptureCameraSourcePipeline *)v401 captureDevice];
        v463 = [(FigCaptureVideoDataSinkPipeline *)v461 initWithConfiguration:v433 sourceVideoOutput:v1059 captureDevice:v462 graph:*(v432 + 752) name:v459 delegate:*(v432 + 832) sourceStillImageOutputsByPortType:v460];
        if (!v463)
        {
          LODWORD(v910) = 0;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v910, v936, v918, v921, v924, v926, v928, v930);
          LODWORD(v915) = 0;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v915, v936, v920, v923, v925, v927, v929, v931);
          v810 = qword_1ED844048;
          v811 = 4294954516;
          v812 = 14212;
          goto LABEL_837;
        }

        [(FigCaptureSessionPipelines *)v1075 addVideoDataSinkPipeline:v463];
        v396 = v995 + 1;
      }

      while (newValued != v995 + 1);
      v465 = [(NSArray *)v966 countByEnumeratingWithState:&v1153 objects:v1152 count:16];
      newValued = v465;
    }

    while (v465);
  }

  captureSession_cleanUpUnusedPreparedBrackets(v1036, [(FigCaptureSessionParsedConfiguration *)v1035 parsedStillImageSinkConfigurations]);
  v1151 = 0u;
  v1150 = 0u;
  v1149 = 0u;
  v1148 = 0u;
  v466 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedStillImageSinkConfigurations];
  v467 = [(NSArray *)v466 countByEnumeratingWithState:&v1148 objects:v1147 count:16];
  if (!v467)
  {
    goto LABEL_562;
  }

  v468 = v467;
  v469 = *v1149;
  do
  {
    for (i9 = 0; i9 != v468; ++i9)
    {
      if (*v1149 != v469)
      {
        objc_enumerationMutation(v466);
      }

      v471 = *(*(&v1148 + 1) + 8 * i9);
      v472 = [v471 primaryStillImageConnectionConfiguration];
      if ([objc_msgSend(v471 "stillImageConnectionConfigurations")] < 2)
      {
        v473 = 0;
      }

      else
      {
        v473 = [objc_msgSend(v471 "stillImageConnectionConfigurations")];
      }

      v474 = [objc_msgSend(v472 "sourceConfiguration")];
      v475 = [v472 underlyingDeviceType];
      v476 = -[FigCaptureSessionPipelines cameraSourcePipelineWithSourceID:](v1075, "cameraSourcePipelineWithSourceID:", [objc_msgSend(v472 "sourceConfiguration")]);
      v477 = -[FigCaptureSessionPipelines cameraSourcePipelineWithSourceID:](v1075, "cameraSourcePipelineWithSourceID:", [objc_msgSend(v473 "sourceConfiguration")]);
      v478 = [(FigCaptureSessionPipelines *)v1075 previewSinkPipelineWithSourceID:v474 sourceDeviceType:v475];
      v479 = [(NSArray *)[(FigCaptureSessionPipelines *)v1075 videoDataSinkPipelines] firstObject];
      if ([v471 pointCloudDataConnectionConfiguration])
      {
        v480 = -[FigCaptureSessionPipelines cameraSourcePipelineWithSourceID:](v1075, "cameraSourcePipelineWithSourceID:", [objc_msgSend(objc_msgSend(v471 "pointCloudDataConnectionConfiguration")]);
      }

      else
      {
        v480 = 0;
      }

      v481 = captureSession_createStillImageSinkPipelineSessionStorage(v1036, v471, v476, v477, v480, v478, v479, [(FigCaptureSessionParsedConfiguration *)v1035 smartStyleRenderingEnabled], &v1230);
      if (v1230)
      {
        captureSession_buildGraphWithConfiguration_cold_16();
        goto LABEL_961;
      }

      [(FigCaptureSessionPipelines *)v1075 addStillImageSinkPipelineSessionStorage:v481];
    }

    v468 = [(NSArray *)v466 countByEnumeratingWithState:&v1148 objects:v1147 count:16];
  }

  while (v468);
LABEL_562:
  if ([(NSArray *)[(FigCaptureSessionParsedConfiguration *)v1035 parsedVideoDataSinkConfigurations] count])
  {
    captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary(v1036);
  }

  v1146 = 0u;
  v1145 = 0u;
  v1144 = 0u;
  v1143 = 0u;
  v482 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedVisionDataSinkConfigurations];
  v483 = [(NSArray *)v482 countByEnumeratingWithState:&v1143 objects:v1142 count:16];
  v484 = v1075;
  if (!v483)
  {
LABEL_576:
    v1141 = 0u;
    v1140 = 0u;
    v1139 = 0u;
    v1138 = 0u;
    newValuee = [(FigCaptureSessionParsedConfiguration *)v1035 parsedLiDARDepthPipelineConfigurations];
    objf = [(NSArray *)newValuee countByEnumeratingWithState:&v1138 objects:v1137 count:16];
    if (objf)
    {
      v996 = *v1139;
      v503 = 0x1E695D000uLL;
      do
      {
        v504 = 0;
        do
        {
          if (*v1139 != v996)
          {
            objc_enumerationMutation(newValuee);
          }

          v505 = *(*(&v1138 + 1) + 8 * v504);
          v506 = [objc_msgSend(objc_msgSend(v505 "depthDataConnectionConfiguration")];
          v507 = [objc_msgSend(v505 "timeOfFlightCameraConfiguration")];
          v508 = [*v1037 objectForKeyedSubscript:v506];
          v509 = [*v1037 objectForKeyedSubscript:v507];
          v510 = [(FigCaptureSessionPipelines *)v1075 cameraSourcePipelineWithSourceID:v506];
          v1012 = [(FigCaptureSessionPipelines *)v1075 cameraSourcePipelineWithSourceID:v507];
          v1069 = v505;
          v511 = [objc_msgSend(objc_msgSend(v505 "depthDataConnectionConfiguration")];
          [(FigCaptureCameraSourcePipeline *)v510 nextVideoCaptureOutputForSourceDeviceType:v511, v512, v513, v514, v515, v516, v517, v910, v916, v918, v921, v924, v926, v928, v930, v932, v933, v934, v935, v936, v937, v938, *(&v938 + 1), v939, v940, v942, v943];
          v1048 = v518;
          v1030 = FigCaptureBuildSinkPipelineName(@"LiDARDepthCamera", 13, 13, @"LiDARDepth Pipeline");
          v519 = [*(v503 + 3984) dictionary];
          if (v508)
          {
            v520 = *(v508 + 16);
          }

          else
          {
            v520 = 0;
          }

          v521 = [v520 cameraInfoByPortType];
          if (v509)
          {
            v522 = *(v509 + 16);
          }

          else
          {
            v522 = 0;
          }

          v523 = [v522 cameraInfoByPortType];
          [v519 addEntriesFromDictionary:v521];
          [v519 addEntriesFromDictionary:v523];
          v524 = [*(v503 + 3984) dictionary];
          v525 = [MEMORY[0x1E695DF70] array];
          if (v508)
          {
            v526 = *(v508 + 16);
          }

          else
          {
            v526 = 0;
          }

          [v525 addObjectsFromArray:{objc_msgSend(v526, "captureStreams")}];
          v1022 = v519;
          if (v509)
          {
            v527 = *(v509 + 16);
          }

          else
          {
            v527 = 0;
          }

          [v525 addObjectsFromArray:{objc_msgSend(v527, "captureStreams")}];
          v1136 = 0u;
          v1135 = 0u;
          v1134 = 0u;
          v1133 = 0u;
          v528 = [v525 countByEnumeratingWithState:&v1133 objects:v1132 count:16];
          if (v528)
          {
            v529 = v528;
            v530 = *v1134;
            do
            {
              for (i10 = 0; i10 != v529; ++i10)
              {
                if (*v1134 != v530)
                {
                  objc_enumerationMutation(v525);
                }

                [v524 setObject:objc_msgSend(*(*(&v1133 + 1) + 8 * i10) forKeyedSubscript:{"sensorIDString"), objc_msgSend(*(*(&v1133 + 1) + 8 * i10), "portType")}];
              }

              v529 = [v525 countByEnumeratingWithState:&v1133 objects:v1132 count:16];
            }

            while (v529);
          }

          v532 = [(FigCaptureCameraSourcePipeline *)v1012 nextPointCloudOutput];
          v533 = [FigCaptureLiDARDepthPipeline alloc];
          if (v508)
          {
            v534 = *(v508 + 16);
          }

          else
          {
            v534 = 0;
          }

          v484 = v1075;
          v503 = 0x1E695D000;
          if (v509)
          {
            v535 = *(v509 + 16);
          }

          else
          {
            v535 = 0;
          }

          v924 = &v1230;
          v918 = v1030;
          v921 = v506;
          v910 = v532;
          v916 = v1038;
          -[FigCaptureSessionPipelines addLiDARDepthPipeline:](v1075, "addLiDARDepthPipeline:", -[FigCaptureLiDARDepthPipeline initWithCaptureDevice:cameraInfoByPortType:sensorIDStringsByPortType:timeOfFlightCameraType:depthDataCaptureConnectionConfiguration:videoSourceCaptureOutput:pointCloudOutput:graph:name:rgbCameraSourceID:errorOut:](v533, "initWithCaptureDevice:cameraInfoByPortType:sensorIDStringsByPortType:timeOfFlightCameraType:depthDataCaptureConnectionConfiguration:videoSourceCaptureOutput:pointCloudOutput:graph:name:rgbCameraSourceID:errorOut:", v534, v1022, v524, [v535 timeOfFlightCameraType], objc_msgSend(v1069, "depthDataConnectionConfiguration"), v1048));
          v504 = v504 + 1;
        }

        while (v504 != objf);
        v536 = [(NSArray *)newValuee countByEnumeratingWithState:&v1138 objects:v1137 count:16];
        objf = v536;
      }

      while (v536);
    }

    v1131 = 0u;
    v1130 = 0u;
    v1129 = 0u;
    v1128 = 0u;
    v1060 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedDepthDataSinkConfigurations];
    v537 = [(NSArray *)v1060 countByEnumeratingWithState:&v1128 objects:v1127 count:16];
    if (!v537)
    {
LABEL_636:
      v1126 = 0u;
      v1125 = 0u;
      v1124 = 0u;
      v1123 = 0u;
      v1061 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedMetadataSinkConfigurations];
      v573 = [(NSArray *)v1061 countByEnumeratingWithState:&v1123 objects:v1122 count:16];
      if (v573)
      {
        v574 = v573;
        v575 = *v1124;
        v1031 = *v1124;
        do
        {
          v576 = 0;
          v1049 = v574;
          do
          {
            if (*v1124 != v575)
            {
              objc_enumerationMutation(v1061);
            }

            v577 = *(*(&v1123 + 1) + 8 * v576);
            v578 = [v577 metadataObjectConnectionConfiguration];
            if (([v578 attachMetadataToVideoBuffers] & 1) == 0)
            {
              v579 = [objc_msgSend(v578 "sourceConfiguration")];
              v580 = [v578 underlyingDeviceType];
              v581 = -[FigCaptureSessionPipelines cameraSourcePipelineWithSourceID:](v1075, "cameraSourcePipelineWithSourceID:", [objc_msgSend(v578 "sourceConfiguration")]);
              v582 = [(FigCaptureCameraSourcePipeline *)v581 motionAttachmentsSource];
              v583 = captureSession_createMetadataSinkPipelineConfiguration(v1036, v577, v582, &v1230);
              if (v1230)
              {
                captureSession_buildGraphWithConfiguration_cold_19();
                goto LABEL_961;
              }

              v584 = [(FigCaptureSessionPipelines *)v1075 depthDataSinkPipelineWithSourceID:v579 sourceDeviceType:v580];
              v1071 = [v584 pipelineStage];
              v585 = [(FigCaptureSessionPipelines *)v1075 previewSinkPipelineWithSourceID:v579 sourceDeviceType:v580];
              v586 = [(FigCaptureSessionPipelines *)v1075 videoDataSinkPipelineForMetadataWithSourceID:v579 sourceDeviceType:v580];
              v587 = [(FigCaptureSessionPipelines *)v1075 cinematographyPipelineWithSourceID:v579];
              if ((FigCaptureMetadataObjectConfigurationRequiresMetadataDetectorPipeline(v578) & 1) != 0 || (FigCaptureMetadataObjectConfigurationRequiresVideoPreviewHistogramPipeline(v578) & 1) != 0 || (v588 = [(FigCaptureMovieFileSinkPipelineConfiguration *)v583 primaryCameraConfiguration], FigCaptureMetadataObjectConfigurationRequiresSceneClassification(v588)))
              {
                v589 = [v585 metadataSinkOutput];
                if (!v589)
                {
                  v590 = [v578 underlyingDeviceType];
                  [(FigCaptureCameraSourcePipeline *)v581 nextVideoCaptureOutputForSourceDeviceType:v590, v591, v592, v593, v594, v595, v596, v910, v916, v918, v921, v924, v926, v928, v930, v932, v933, v934, v935, v936, v937, v938, *(&v938 + 1), v939, v940, v942, v943];
                  v589 = v597;
                }

                v598 = [v585 metadataSinkOutput];
                v599 = [(FigCaptureMetadataSinkPipelineConfiguration *)v583 compressed8BitInputEnabled];
                if (v598)
                {
                  v600 = 0;
                }

                else
                {
                  v600 = v599;
                }

                [(FigCaptureMetadataSinkPipelineConfiguration *)v583 setCompressed8BitInputEnabled:v600];
              }

              else
              {
                v589 = 0;
              }

              v601 = [v584 videoAndConvertedDepthDataOutput];
              if (!v601)
              {
                v601 = [(FigCaptureVideoDataSinkPipeline *)v586 faceTrackingVideoCaptureOutput];
              }

              v602 = -[FigCaptureCameraSourcePipeline metadataOutputsByCategoryForSourceDeviceType:](v581, [v578 underlyingDeviceType]);
              v603 = v602;
              if (v601 | v587)
              {
                v604 = [v602 mutableCopy];
                v603 = v604;
                if (v601)
                {
                  [v604 setObject:v601 forKeyedSubscript:&unk_1F2244DB8];
                }

                if (v587)
                {
                  [v603 setObject:-[FigCaptureCinematographyPipeline detectedObjectsOutput](v587) forKeyedSubscript:&unk_1F2244DD0];
                }
              }

              v605 = [*v1037 objectForKeyedSubscript:{objc_msgSend(v581, "sourceID")}];
              if (v605)
              {
                v606 = *(v605 + 24);
                v607 = *(v605 + 32);
              }

              else
              {
                v606 = 0;
                v607 = 0;
              }

              v608 = FigCaptureBuildSinkPipelineName(v606, v607, [v578 underlyingDeviceType], @"Metadata Sink Pipeline");
              v609 = [FigCaptureMetadataSinkPipeline alloc];
              v610 = [(FigCaptureVideoDataSinkPipeline *)v586 offlineVISMotionDataCaptureOutput];
              v611 = [(FigCaptureCameraSourcePipeline *)v581 captureDevice];
              v612 = captureSession_inferenceScheduler(v1036);
              v613 = *(v1039 + 832);
              v614 = *(v1039 + 36);
              v1273[0] = *(v1039 + 20);
              v1273[1] = v614;
              v615 = [(FigCaptureMetadataSinkPipeline *)v609 initWithConfiguration:v583 graph:v1038 name:v608 videoPreviewOutput:v589 offlineVISMotionDataSourceOutput:v610 metadataSourceOutputsByCategory:v603 captureDevice:v611 faceTrackingPipelineStage:v1071 clientAuditToken:v1273 inferenceScheduler:v612 delegate:v613];
              if (!v615)
              {
                captureSession_buildGraphWithConfiguration_cold_20();
                goto LABEL_854;
              }

              [(FigCaptureSessionPipelines *)v1075 addMetadataSinkPipeline:v615];
              v575 = v1031;
              v574 = v1049;
            }

            ++v576;
          }

          while (v574 != v576);
          v616 = [(NSArray *)v1061 countByEnumeratingWithState:&v1123 objects:v1122 count:16];
          v574 = v616;
        }

        while (v616);
      }

      v1121 = 0u;
      v1120 = 0u;
      v1119 = 0u;
      v1118 = 0u;
      v617 = v1035;
      v961 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedMovieFileSinkConfigurations];
      v618 = v1075;
      v970 = [(NSArray *)v961 countByEnumeratingWithState:&v1118 objects:v1117 count:16];
      if (v970)
      {
        v967 = *v1119;
        do
        {
          v619 = 0;
          do
          {
            if (*v1119 != v967)
            {
              objc_enumerationMutation(v961);
            }

            v620 = *(*(&v1118 + 1) + 8 * v619);
            v621 = [v620 primaryVideoConnectionConfiguration];
            v1032 = [v620 audioConnectionConfiguration];
            v983 = [v620 detectedObjectMetadataConnectionConfigurations];
            v976 = v619;
            v1023 = v621;
            if (v621)
            {
              v1062 = -[FigCaptureSessionPipelines cameraSourcePipelineWithSourceID:](v618, "cameraSourcePipelineWithSourceID:", [objc_msgSend(v621 "sourceConfiguration")]);
            }

            else
            {
              v1062 = 0;
            }

            v622 = [MEMORY[0x1E695DF90] dictionary];
            v623 = [MEMORY[0x1E695DF90] dictionary];
            v1113 = 0u;
            v1114 = 0u;
            v1115 = 0u;
            v1116 = 0u;
            v1050 = v620;
            v624 = [v620 videoConnectionConfigurations];
            v625 = [v624 countByEnumeratingWithState:&v1113 objects:v1112 count:16];
            if (v625)
            {
              v626 = v625;
              v627 = *v1114;
              do
              {
                for (i11 = 0; i11 != v626; ++i11)
                {
                  if (*v1114 != v627)
                  {
                    objc_enumerationMutation(v624);
                  }

                  v629 = *(*(&v1113 + 1) + 8 * i11);
                  v630 = [objc_msgSend(v629 "sourceConfiguration")];
                  v631 = [(FigCaptureSessionPipelines *)v1075 cinematographyPipelineWithSourceID:v630];
                  v632 = [(FigCaptureSessionPipelines *)v1075 cameraSourcePipelineWithSourceID:v630];
                  if (v631)
                  {
                    v633 = [(FigCaptureCinematographyPipeline *)v631 nextVideoCaptureOutput];
                  }

                  else
                  {
                    v634 = [v629 underlyingDeviceType];
                    [(FigCaptureCameraSourcePipeline *)v632 nextVideoCaptureOutputForSourceDeviceType:v634, v635, v636, v637, v638, v639, v640, v910, v916, v918, v921, v924, v926, v928, v930, v932, v933, v934, v935, v936, v937, v938, *(&v938 + 1), v939, v940, v942, v943];
                  }

                  [v622 setObject:v633 forKeyedSubscript:{objc_msgSend(v629, "connectionID")}];
                  [v623 setObject:-[FigCaptureCameraSourcePipeline captureDevice](v632) forKeyedSubscript:{objc_msgSend(v629, "connectionID")}];
                }

                v626 = [v624 countByEnumeratingWithState:&v1113 objects:v1112 count:16];
              }

              while (v626);
            }

            if (v1032)
            {
              v642 = v1075;
              v641 = [(FigCaptureSessionPipelines *)v1075 micSourcePipeline];
            }

            else
            {
              v641 = 0;
              v642 = v1075;
            }

            v643 = v1023;
            v644 = -[FigCaptureSessionPipelines cinematographyPipelineWithSourceID:](v642, "cinematographyPipelineWithSourceID:", [objc_msgSend(v1023 "sourceConfiguration")]);
            if ([(__CFArray *)v1032 audioCaptureMode]== 2)
            {
              v645 = HIDWORD(v940);
            }

            else
            {
              v645 = 1;
            }

            v646 = [(__CFArray *)v1032 builtInMicrophonePosition];
            if (v645)
            {
              v647 = -65536;
            }

            else
            {
              v647 = 6619138;
            }

            objg = [(FigCaptureMicSourcePipeline *)v641 nextOutputForMicSourcePosition:v646 forAudioChannelLayoutTag:v647];
            if (v645)
            {
              v997 = 0;
            }

            else
            {
              v997 = [(FigCaptureMicSourcePipeline *)v641 nextOutputForMicSourcePosition:12451844 forAudioChannelLayoutTag:?];
            }

            newValuef = v644;
            [-[FigCaptureMicSourcePipeline sourceNode](v641) setCinematicVideoCaptureEnabled:v644 != 0];
            *&v1268[0] = 0;
            cs_getMasterClockAndType(v642, v1268, 0);
            v972 = -[FigCaptureSessionPipelines previewSinkPipelineWithSourceID:sourceDeviceType:](v642, "previewSinkPipelineWithSourceID:sourceDeviceType:", [v1062 sourceID], objc_msgSend(v1023, "underlyingDeviceType"));
            v648 = -[FigCaptureCameraSourcePipeline videoCaptureOutputTransformForSourceDeviceType:](v1062, [objc_msgSend(v1023 "sourceConfiguration")]);
            v650 = v649;
            v651 = [(FigCaptureSessionParsedConfiguration *)v1035 smartStyleRenderingEnabled];
            v652 = [(FigCaptureCameraSourcePipeline *)v1062 lowLatencyStabilizationEnabled];
            MovieFileSinkPipelineConfigurationFromParsedConfiguration = captureSession_createMovieFileSinkPipelineConfigurationFromParsedConfiguration(v1036, v1050, v648, v650, v651, v652, SBYTE4(v940), v962);
            v653 = [(FigCaptureSessionPipelines *)v642 metadataSourcePipelines];
            v1013 = v641;
            if ([(NSArray *)v653 count])
            {
              v654 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v653, "count")}];
            }

            else
            {
              v654 = 0;
            }

            v1111 = 0u;
            v1110 = 0u;
            v1109 = 0u;
            v1108 = 0u;
            v655 = [(NSArray *)v653 countByEnumeratingWithState:&v1108 objects:v1107 count:16];
            if (v655)
            {
              v656 = v655;
              v657 = *v1109;
              do
              {
                for (i12 = 0; i12 != v656; ++i12)
                {
                  if (*v1109 != v657)
                  {
                    objc_enumerationMutation(v653);
                  }

                  [v654 addObject:-[FigCaptureMetadataSourcePipeline output](*(*(&v1108 + 1) + 8 * i12))];
                }

                v656 = [(NSArray *)v653 countByEnumeratingWithState:&v1108 objects:v1107 count:16];
              }

              while (v656);
            }

            if (v1062)
            {
              captureSession_buildGraphWithConfiguration_cold_21(v1037, v1062, v1023, v1273);
              v663 = *&v1273[0];
              v662 = MovieFileSinkPipelineConfigurationFromParsedConfiguration;
            }

            else
            {
              v659 = MEMORY[0x1E696AEC0];
              v660 = [(__CFArray *)v1032 builtInMicrophonePosition];
              if (v660 > 2)
              {
                v661 = 0;
              }

              else
              {
                v661 = *(&off_1E79990B0 + v660);
              }

              v662 = MovieFileSinkPipelineConfigurationFromParsedConfiguration;
              v663 = [v659 stringWithFormat:@"%@ Microphone Movie File Sink Pipeline", v661];
            }

            if (cs_shouldConvertToBT2020(v1062, [objc_msgSend(v1023 "sourceConfiguration")]))
            {
              v664 = *(v1039 + 816) ^ 1;
            }

            else
            {
              v664 = 0;
            }

            [(FigCaptureMovieFileSinkPipelineConfiguration *)v662 setP3ToBT2020ConversionEnabled:?];
            if (v1023)
            {
              v1106 = v1023;
              v695 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v1106 count:1];
              v696 = [(FigCaptureCameraSourcePipeline *)v1062 colorSpaceProperties];
              v697 = v695;
              v643 = v1023;
              v698 = cs_shouldEnableVideoSTF(v697, newValuef != 0, v696);
              [(FigCaptureMovieFileSinkPipelineConfiguration *)v662 setVideoSTFEnabled:v698];
              v699 = cs_shouldEnableVideoGreenGhostMitigation(v1023, newValuef != 0);
              [(FigCaptureMovieFileSinkPipelineConfiguration *)v662 setVideoGreenGhostMitigationEnabled:v699];
              v700 = -[FigCaptureCameraSourcePipeline isLightSourceMaskOnVideoCaptureOutputsEnabledForSourceDeviceType:](v1062, [v1023 underlyingDeviceType]);
              if (v700)
              {
                v701 = -[FigCaptureCameraSourcePipeline isKeypointDescriptorDataOnVideoCaptureOutputsEnabledForSourceDeviceType:](v1062, [v1023 underlyingDeviceType]);
              }

              else
              {
                v701 = 0;
              }

              [(FigCaptureMovieFileSinkPipelineConfiguration *)v662 setLightSourceMaskAndKeypointDescriptorDataEnabled:v701];
              if (newValuef)
              {
                v702 = 0;
              }

              else
              {
                v702 = [objc_msgSend(objc_msgSend(v1023 "sourceConfiguration")];
              }

              [(FigCaptureMovieFileSinkPipelineConfiguration *)v662 setVideoGreenGhostOfflineMetadataEnabled:v702];
              if ((v700 & [(FigCaptureMovieFileSinkPipelineConfiguration *)v662 videoGreenGhostOfflineMetadataEnabled]) == 1)
              {
                v703 = [objc_msgSend(objc_msgSend(v1023 "sourceConfiguration")];
              }

              else
              {
                v703 = 0;
              }

              [(FigCaptureMovieFileSinkPipelineConfiguration *)v662 setVideoGreenGhostOfflineLightSourceMaskEnabled:v703];
            }

            [(FigCaptureMovieFileSinkPipelineConfiguration *)v662 videoSourceCaptureTransform];
            v667 = (v666 * v665) < 0x7E9000 && [(NSArray *)[(FigCaptureSessionParsedConfiguration *)v1035 parsedCameraSourceConfigurations] count]== 1;
            newValueg = -[FigCaptureMetadataSinkPipeline smartCameraInferenceOutput](-[FigCaptureSessionPipelines metadataSinkPipelineWithSourceID:sourceDeviceType:](v642, "metadataSinkPipelineWithSourceID:sourceDeviceType:", [objc_msgSend(v643 "sourceConfiguration")], objc_msgSend(v643, "underlyingDeviceType")));
            v1033 = v663;
            if ((-[FigCaptureMovieFileSinkPipelineConfiguration boxedMetadataPostVISEnabled](v662) & 1) != 0 || ![v983 count])
            {
              v984 = 0;
              v669 = 0;
            }

            else
            {
              v668 = -[FigCaptureSessionPipelines metadataSinkPipelineWithSourceID:sourceDeviceType:](v642, "metadataSinkPipelineWithSourceID:sourceDeviceType:", [objc_msgSend(objc_msgSend(v983 "firstObject")], objc_msgSend(objc_msgSend(v983, "firstObject"), "underlyingDeviceType"));
              if (v668)
              {
                v984 = [(FigCaptureMetadataSinkPipeline *)v668 detectedObjectBoxedMetadataOutputs];
                v669 = 0;
              }

              else
              {
                v669 = [-[FigCaptureCameraSourcePipeline metadataOutputsByCategoryForSourceDeviceType:](v1062 objc_msgSend(v643];
                v984 = 0;
              }
            }

            v670 = v667;
            if ([objc_msgSend(v643 "movieFileSinkConfiguration")])
            {
              v671 = v1036;
              MultiCamClientCompositingCallback = captureSession_createMultiCamClientCompositingCallback(v1036, [objc_msgSend(v643 "sinkConfiguration")]);
            }

            else
            {
              MultiCamClientCompositingCallback = 0;
              v671 = v1036;
            }

            v673 = [FigCaptureSessionMovieFileSinkPipeline alloc];
            v674 = *(v1039 + 752);
            v675 = captureSession_inferenceScheduler(v671);
            v676 = [(FigCaptureMicSourcePipeline *)v1013 sourceNode];
            v677 = [(FigCaptureMovieFileSinkPipeline *)&v673->super.super.super.super.isa initWithConfiguration:v622 videoSourceCaptureOutputsByConnectionID:objg audioSourceCaptureOutput:v997 audioSourceCinematicAudioCaptureOutput:newValueg smartCameraInferenceOutput:v984 detectedObjectBoxedMetadataOutputs:v669 objectDetectionSourceOutput:v654 metadataSourcePipelineOutputs:v674 graph:v1033 name:v675 inferenceScheduler:v623 captureDevicesByConnectionID:v676 audioSourceDelegate:*(v1039 + 832) fileCoordinatorStatusDelegate:*(v1039 + 832) recordingStatusDelegate:*(v1039 + 832) irisRequestDelegate:MultiCamClientCompositingCallback multiCamClientCompositingCallback:*&v1268[0] masterClock:v670 delayedCompressorCleanupEnabled:?];
            if (!v677)
            {
              captureSession_buildGraphWithConfiguration_cold_22();
              goto LABEL_854;
            }

            v678 = v677;
            [v677 setCheckIfFileAlreadyExistForMFO:{objc_msgSend(v977, "checkIfFileAlreadyExistForMFO")}];
            if ([objc_msgSend(objc_msgSend(v1050 "stillImageConnectionConfiguration")])
            {
              v679 = [(FigCaptureCameraSourcePipeline *)v1062 captureDevice];
              v1273[0] = *MEMORY[0x1E6960C88];
              v1051 = v1273[0];
              *&v1273[1] = *(MEMORY[0x1E6960C88] + 16);
              v680 = *&v1273[1];
              [v679 setZeroShutterLagEarliestAllowedPTS:v1273];
              v681 = [v972 timeMachineSinkNode];
              v1273[0] = v1051;
              *&v1273[1] = v680;
              [v681 setEarliestAllowedPTS:v1273];
            }

            v618 = v1075;
            v617 = v1035;
            if ([(FigCaptureMovieFileSinkPipelineConfiguration *)MovieFileSinkPipelineConfigurationFromParsedConfiguration trueVideoCaptureEnabled])
            {
              if ([-[FigCaptureCameraSourcePipeline captureDevice](v1062) position] == 1)
              {

                v689 = [(FigCaptureMovieFileSinkPipeline *)v678 ispProcessingSession:v682];
                *(v1039 + 872) = v689;
                if (v689)
                {
                  if (dword_1ED844050)
                  {
                    LODWORD(v1246) = 0;
                    LOBYTE(v1243[0]) = 0;
                    v690 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v691 = v1246;
                    if (os_log_type_enabled(v690, v1243[0]))
                    {
                      v692 = v691;
                    }

                    else
                    {
                      v692 = v691 & 0xFFFFFFFE;
                    }

                    if (v692)
                    {
                      v693 = *(v1039 + 104);
                      v694 = *(v1039 + 872);
                      LODWORD(v1271[0]) = 136315650;
                      *(v1271 + 4) = "captureSession_buildGraphWithConfiguration";
                      WORD6(v1271[0]) = 2114;
                      *(v1271 + 14) = v693;
                      WORD3(v1271[1]) = 2048;
                      *(&v1271[1] + 1) = v694;
                      LODWORD(v916) = 32;
                      v913 = v1271;
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }
                }
              }
            }

            [(FigCaptureSessionPipelines *)v1075 addMovieFileSinkPipeline:v678, v913];

            v619 = v976 + 1;
          }

          while (v976 + 1 != v970);
          v704 = [(NSArray *)v961 countByEnumeratingWithState:&v1118 objects:v1117 count:16];
          v970 = v704;
        }

        while (v704);
      }

      v1105 = 0u;
      v1104 = 0u;
      v1103 = 0u;
      v1102 = 0u;
      v705 = [(FigCaptureSessionParsedConfiguration *)v617 audioFileSinkConnectionConfigurations];
      v706 = [(NSArray *)v705 countByEnumeratingWithState:&v1102 objects:v1101 count:16];
      if (v706)
      {
        v707 = v706;
        v708 = *v1103;
        while (2)
        {
          for (i13 = 0; i13 != v707; ++i13)
          {
            if (*v1103 != v708)
            {
              objc_enumerationMutation(v705);
            }

            v710 = *(*(&v1102 + 1) + 8 * i13);
            v711 = -[FigCaptureMicSourcePipeline nextOutputForMicSourcePosition:forAudioChannelLayoutTag:](-[FigCaptureSessionPipelines micSourcePipeline](v1075, "micSourcePipeline"), [v710 builtInMicrophonePosition], -65536);
            v712 = MEMORY[0x1E696AEC0];
            v713 = [v710 builtInMicrophonePosition];
            if (v713 > 2)
            {
              v714 = 0;
            }

            else
            {
              v714 = *(&off_1E79990B0 + v713);
            }

            v715 = -[FigCaptureAudioFileSinkPipeline initWithConfiguration:graph:name:sourceAudioOutput:recordingStatusDelegate:]([FigCaptureAudioFileSinkPipeline alloc], v710, v1038, [v712 stringWithFormat:@"%@ Microphone Audio File Sink Pipeline", v714], v711, *(v1039 + 832));
            if (!v715)
            {
              captureSession_buildGraphWithConfiguration_cold_23();
              goto LABEL_854;
            }

            [(FigCaptureSessionPipelines *)v1075 addAudioFileSinkPipeline:v715];
          }

          v707 = [(NSArray *)v705 countByEnumeratingWithState:&v1102 objects:v1101 count:16];
          if (v707)
          {
            continue;
          }

          break;
        }
      }

      v1100 = 0u;
      v1099 = 0u;
      v1098 = 0u;
      v1097 = 0u;
      v716 = [(FigCaptureSessionParsedConfiguration *)v1035 audioDataSinkConnectionConfigurations];
      v717 = [(NSArray *)v716 countByEnumeratingWithState:&v1097 objects:v1096 count:16];
      if (v717)
      {
        v718 = v717;
        v719 = *v1098;
        while (2)
        {
          for (i14 = 0; i14 != v718; ++i14)
          {
            if (*v1098 != v719)
            {
              objc_enumerationMutation(v716);
            }

            v721 = *(*(&v1097 + 1) + 8 * i14);
            if ([v721 audioCaptureMode] == 2 && objc_msgSend(-[FigCaptureMicSourcePipeline sourceNode](-[FigCaptureSessionPipelines micSourcePipeline](v1075, "micSourcePipeline")), "audioCaptureMode") == 2)
            {
              v722 = [(FigCaptureSessionPipelines *)v1075 micSourcePipeline];
              v723 = [v721 builtInMicrophonePosition];
              v724 = [v721 spatialAudioChannelLayoutTag];
              v725 = v722;
              v726 = v723;
            }

            else
            {
              v727 = [(FigCaptureSessionPipelines *)v1075 micSourcePipeline];
              v726 = [v721 builtInMicrophonePosition];
              v725 = v727;
              v724 = -65536;
            }

            v728 = [(FigCaptureMicSourcePipeline *)v725 nextOutputForMicSourcePosition:v726 forAudioChannelLayoutTag:v724];
            v729 = MEMORY[0x1E696AEC0];
            v730 = [v721 builtInMicrophonePosition];
            if (v730 > 2)
            {
              v731 = 0;
            }

            else
            {
              v731 = *(&off_1E79990B0 + v730);
            }

            v732 = [v729 stringWithFormat:@"%@ Microphone Audio Data Sink Pipeline", v731];
            v733 = [FigCaptureAudioDataSinkPipeline alloc];
            v734 = *(v1039 + 832);
            v735 = *(v1039 + 36);
            v1273[0] = *(v1039 + 20);
            v1273[1] = v735;
            v736 = [(FigCaptureAudioDataSinkPipeline *)v733 initWithConfiguration:v721 graph:v1038 name:v732 sourceAudioOutput:v728 clientAuditToken:v1273 renderDelegate:v734];
            if (!v736)
            {
              captureSession_buildGraphWithConfiguration_cold_24();
              goto LABEL_854;
            }

            [(FigCaptureSessionPipelines *)v1075 addAudioDataSinkPipeline:v736];
          }

          v718 = [(NSArray *)v716 countByEnumeratingWithState:&v1097 objects:v1096 count:16];
          if (v718)
          {
            continue;
          }

          break;
        }
      }

      v1095 = 0u;
      v1094 = 0u;
      v1093 = 0u;
      v1092 = 0u;
      v1073 = [(FigCaptureSessionParsedConfiguration *)v1035 pointCloudDataSinkConnectionConfigurations];
      v737 = [(NSArray *)v1073 countByEnumeratingWithState:&v1092 objects:v1091 count:16];
      if (v737)
      {
        v738 = v737;
        v739 = *v1093;
        while (2)
        {
          for (i15 = 0; i15 != v738; ++i15)
          {
            if (*v1093 != v739)
            {
              objc_enumerationMutation(v1073);
            }

            v741 = *(*(&v1092 + 1) + 8 * i15);
            v742 = -[FigCaptureSessionPipelines cameraSourcePipelineWithSourceID:](v1075, "cameraSourcePipelineWithSourceID:", [objc_msgSend(v741 "sourceConfiguration")]);
            v743 = MEMORY[0x1E696AEC0];
            v910 = [v742 name];
            v744 = [v743 stringWithFormat:@"%@ Point Cloud Data Sink Pipeline"];
            v745 = [(FigCaptureCameraSourcePipeline *)v742 nextPointCloudOutput];
            v746 = [FigCapturePointCloudDataSinkPipeline alloc];
            v747 = *(v1039 + 832);
            v748 = *(v1039 + 36);
            v1273[0] = *(v1039 + 20);
            v1273[1] = v748;
            v749 = [(FigCapturePointCloudDataSinkPipeline *)v746 initWithConfiguration:v741 sourceOutput:v745 graph:v1038 name:v744 clientAuditToken:v1273 delegate:v747];
            if (!v749)
            {
              captureSession_buildGraphWithConfiguration_cold_25();
              goto LABEL_854;
            }

            [(FigCaptureSessionPipelines *)v1075 addPointCloudDataSinkPipeline:v749];
          }

          v738 = [(NSArray *)v1073 countByEnumeratingWithState:&v1092 objects:v1091 count:16];
          if (v738)
          {
            continue;
          }

          break;
        }
      }

      v1089 = 0u;
      v1090 = 0u;
      v1087 = 0u;
      v1088 = 0u;
      v750 = [(FigCaptureSessionParsedConfiguration *)v1035 cameraCalibrationDataSinkConnectionConfigurations];
      v751 = [(NSArray *)v750 countByEnumeratingWithState:&v1087 objects:v1086 count:16];
      if (v751)
      {
        v752 = v751;
        v753 = *v1088;
        do
        {
          v754 = 0;
          do
          {
            if (*v1088 != v753)
            {
              objc_enumerationMutation(v750);
            }

            v755 = *(*(&v1087 + 1) + 8 * v754);
            v756 = [objc_msgSend(v755 "sourceConfiguration")];
            v757 = [v755 underlyingDeviceType];
            v758 = [(FigCaptureSessionPipelines *)v1075 cameraSourcePipelineWithSourceID:v756];
            v759 = [*v1037 objectForKeyedSubscript:{objc_msgSend(v758, "sourceID")}];
            v760 = v759;
            if (v759)
            {
              v759 = *(v759 + 24);
              v761 = *(v760 + 32);
            }

            else
            {
              v761 = 0;
            }

            v762 = FigCaptureBuildSinkPipelineName(v759, v761, v757, @"Calibration Data Sink Pipeline");
            [(FigCaptureCameraSourcePipeline *)v758 nextVideoCaptureOutputForSourceDeviceType:v757, v763, v764, v765, v766, v767, v768, v910, v916, v918, v921, v924, v926, v928, v930, v932, v933, v934, v935, v936, v937, v938, *(&v938 + 1), v939, v940, v942, v943];
            v770 = v769;
            if (v760)
            {
              v771 = *(v760 + 16);
            }

            else
            {
              v771 = 0;
            }

            v772 = [v771 cameraInfoByPortType];
            v773 = [FigCaptureCameraCalibrationDataSinkPipeline alloc];
            v774 = *(v1039 + 832);
            v775 = *(v1039 + 36);
            v1273[0] = *(v1039 + 20);
            v1273[1] = v775;
            v776 = [(FigCaptureCameraCalibrationDataSinkPipeline *)v773 initWithConfiguration:v755 sourceOutput:v770 graph:v1038 name:v762 cameraInfoByPortType:v772 clientAuditToken:v1273 delegate:v774];
            if (!v776)
            {
              LODWORD(v910) = 0;
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v910, v936, v918, v921, v924, v926, v928, v930);
              v810 = qword_1ED844048;
              v811 = 4294954516;
              v812 = 14773;
              goto LABEL_837;
            }

            [(FigCaptureSessionPipelines *)v1075 addCameraCalibrationDataSinkPipeline:v776];
            ++v754;
          }

          while (v752 != v754);
          v777 = [(NSArray *)v750 countByEnumeratingWithState:&v1087 objects:v1086 count:16];
          v752 = v777;
        }

        while (v777);
      }

      v1084 = 0u;
      v1085 = 0u;
      v1082 = 0u;
      v1083 = 0u;
      v778 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedMetadataSinkConfigurations];
      v779 = [(NSArray *)v778 countByEnumeratingWithState:&v1082 objects:v1081 count:16];
      if (v779)
      {
        v780 = v779;
        v781 = *v1083;
        do
        {
          for (i16 = 0; i16 != v780; ++i16)
          {
            if (*v1083 != v781)
            {
              objc_enumerationMutation(v778);
            }

            v783 = *(*(&v1082 + 1) + 8 * i16);
            if (captureSession_shouldUseSceneClassifierToGateMetadataDetection(v1036, [v783 sceneClassifierConnectionConfiguration], objc_msgSend(v783, "metadataObjectConnectionConfiguration")))
            {
              v784 = [objc_msgSend(objc_msgSend(v783 "metadataObjectConnectionConfiguration")];
              v785 = [objc_msgSend(v783 "metadataObjectConnectionConfiguration")];
              v786 = -[FigCaptureSessionPipelines metadataSinkPipelineWithSinkID:](v1075, "metadataSinkPipelineWithSinkID:", [objc_msgSend(objc_msgSend(v783 "metadataObjectConnectionConfiguration")]);
              v787 = [(FigCaptureSessionPipelines *)v1075 previewSinkPipelineWithSourceID:v784 sourceDeviceType:v785];
              v788 = [(FigCaptureSessionPipelines *)v1075 movieFileSinkPipelineWithSourceID:v784 sourceDeviceType:v785];
              if ([(FigCaptureMetadataSinkPipeline *)v786 mrcSceneObserver])
              {
                v789 = [(FigCaptureMetadataSinkPipeline *)v786 mrcSceneObserver];
                [(FigCaptureMovieFileSinkPipeline *)v788 setMrcSceneObserver:v789];
                [v787 setMrcSceneObserver:-[FigCaptureMetadataSinkPipeline mrcSceneObserver](v786)];
              }
            }
          }

          v780 = [(NSArray *)v778 countByEnumeratingWithState:&v1082 objects:v1081 count:16];
        }

        while (v780);
      }

      v1079 = 0u;
      v1080 = 0u;
      v1077 = 0u;
      v1078 = 0u;
      v790 = [(FigCaptureSessionParsedConfiguration *)v1035 parsedPreviewSinkConfigurations];
      v791 = [(NSArray *)v790 countByEnumeratingWithState:&v1077 objects:v1076 count:16];
      if (v791)
      {
        v792 = v791;
        v793 = *v1078;
        v1074 = v790;
        do
        {
          for (i17 = 0; i17 != v792; ++i17)
          {
            if (*v1078 != v793)
            {
              objc_enumerationMutation(v790);
            }

            v795 = *(*(&v1077 + 1) + 8 * i17);
            if ([objc_msgSend(objc_msgSend(v795 "videoPreviewSinkConnectionConfiguration")])
            {
              v796 = [objc_msgSend(v795 "cameraConfiguration")];
              v797 = [objc_msgSend(v795 "videoPreviewSinkConnectionConfiguration")];
              -[FigCaptureMovieFileSinkPipeline setSemanticStyleSceneObserver:](-[FigCaptureSessionPipelines movieFileSinkPipelineWithSourceID:sourceDeviceType:](v1075, "movieFileSinkPipelineWithSourceID:sourceDeviceType:", v796, v797), [-[FigCaptureSessionPipelines previewSinkPipelineWithSourceID:sourceDeviceType:](v1075 previewSinkPipelineWithSourceID:v796 sourceDeviceType:{v797), "semanticStyleSceneObserver"}]);
            }

            else if ([v977 smartStyleRenderingEnabled])
            {
              v798 = [objc_msgSend(v795 "cameraConfiguration")];
              v799 = [objc_msgSend(v795 "videoPreviewSinkConnectionConfiguration")];
              v800 = [(FigCaptureSessionPipelines *)v1075 cameraSourcePipelineWithSourceID:v798];
              v801 = [(FigCaptureSessionPipelines *)v1075 movieFileSinkPipelineWithSourceID:v798 sourceDeviceType:v799];
              v802 = [(FigCaptureSessionPipelines *)v1075 cinematographyPipelineWithSourceID:v798];
              v803 = [(FigCaptureSessionPipelines *)v1075 previewSinkPipelineWithSourceID:v798 sourceDeviceType:v799];
              v804 = [(FigCaptureSessionPipelines *)v1075 metadataSinkPipelineWithSourceID:v798 sourceDeviceType:v799];
              if (v802)
              {
                v805 = [(FigCaptureCinematographyPipeline *)v802 semanticStyleSceneObserver];
              }

              else
              {
                v805 = [(FigCaptureCameraSourcePipeline *)v800 semanticStyleSceneObserver];
              }

              [v803 setSemanticStyleSceneObserver:v805];
              v806 = [(FigCaptureCameraSourcePipeline *)v800 semanticStyleSceneObserver];
              [(FigCaptureMovieFileSinkPipeline *)v801 setSemanticStyleSceneObserver:v806];
              v807 = [(FigCaptureCameraSourcePipeline *)v800 semanticStyleSceneObserver];
              [(FigCaptureMetadataSinkPipeline *)v804 setSemanticStyleSceneObserver:v807];
              v790 = v1074;
            }
          }

          v792 = [(NSArray *)v790 countByEnumeratingWithState:&v1077 objects:v1076 count:16];
        }

        while (v792);
      }

      v808 = v1036;
      captureSession_purgeFileSinkCache(v1036);
      captureSession_updateGraphConnectionEnabledState(v1036, v1035);
      captureSession_buildGraphDidBecomeLiveObserver(v1036, [(FigCaptureSessionParsedConfiguration *)v1035 isMultiCamSession]);
      if ([(BWGraph *)v1038 deferredNodePrepareEnabled])
      {
        if ([(NSArray *)[(FigCaptureSessionParsedConfiguration *)v1035 parsedCameraSourceConfigurations] count])
        {
          v878 = [-[NSArray firstObject](-[FigCaptureSessionParsedConfiguration parsedCameraSourceConfigurations](v1035 "parsedCameraSourceConfigurations")];
          v879 = [v878 requiredFormat];
          v880 = FigCaptureSourceGetIntAttribute([v878 source], 0x1F21A0530, &v1230);
          if (v1230)
          {
            captureSession_buildGraphWithConfiguration_cold_26();
            goto LABEL_961;
          }

          v809 = (v880 > 2) & [v879 isPhotoFormat];
          v808 = v1036;
        }

        else
        {
          v809 = 0;
        }

        [(BWGraph *)v1038 setResumesConnectionsAsNodesArePrepared:v809 | v946];
      }

      captureSession_startMonitoringAudioPlaybackAndRouteChangeNotifications(v808, v977);
      goto LABEL_961;
    }

    v538 = v537;
    v1070 = *v1129;
LABEL_611:
    v539 = 0;
    while (1)
    {
      if (*v1129 != v1070)
      {
        objc_enumerationMutation(v1060);
      }

      v540 = *(*(&v1128 + 1) + 8 * v539);
      v541 = [v540 depthDataConnectionConfiguration];
      v542 = [v540 videoDataConnectionConfiguration];
      v543 = [v540 metadataObjectConnectionConfiguration];
      if (v542)
      {
        v544 = v542;
      }

      else
      {
        v544 = v543;
      }

      if (v541)
      {
        v545 = v541;
      }

      else
      {
        v545 = v544;
      }

      v546 = [objc_msgSend(v545 "sourceConfiguration")];
      v547 = [v545 underlyingDeviceType];
      v548 = [(FigCaptureSessionPipelines *)v484 previewSinkPipelineWithSourceID:v546 sourceDeviceType:v547];
      v549 = v484;
      v550 = [(FigCaptureSessionPipelines *)v484 videoDataSinkPipelineForMetadataWithSourceID:v546 sourceDeviceType:v547];
      v551 = [(FigCaptureSessionPipelines *)v549 cameraSourcePipelineWithSourceID:v546];
      v552 = [(FigCaptureSessionPipelines *)v549 lidarDepthPipelineWithRGBCameraSourceID:v546];
      v553 = [v552 depthDataSinkOutput];
      if ([(FigCaptureVideoDataSinkPipeline *)v550 faceTrackingVideoCaptureOutput])
      {
        v554 = [(FigCaptureVideoDataSinkPipeline *)v550 faceTrackingVideoCaptureOutput];
      }

      else
      {
        if (!v553)
        {
          v484 = v1075;
          if ([v548 depthDataSinkOutput])
          {
            v564 = [v548 depthDataSinkOutput];
          }

          else
          {
            v565 = [v545 underlyingDeviceType];
            [(FigCaptureCameraSourcePipeline *)v551 nextVideoCaptureOutputForSourceDeviceType:v565, v566, v567, v568, v569, v570, v571, v910, v916, v918, v921, v924, v926, v928, v930, v932, v933, v934, v935, v936, v937, v938, *(&v938 + 1), v939, v940, v942, v943];
          }

          v555 = v564;
          goto LABEL_625;
        }

        v554 = [v552 depthDataSinkOutput];
      }

      v555 = v554;
      v484 = v1075;
LABEL_625:
      v556 = v553 != 0;
      v557 = [(FigCaptureCameraSourcePipeline *)v551 captureDevice];
      v558 = [(FigCaptureCameraSourcePipeline *)v551 hardwareDepthFilteringEnabled];
      DepthDataPipelineConfiguration = captureSession_createDepthDataPipelineConfiguration(v1036, v540, v557, v558, v556);
      v560 = [*v1037 objectForKeyedSubscript:{objc_msgSend(v551, "sourceID")}];
      if (v560)
      {
        v561 = *(v560 + 24);
        v562 = *(v560 + 32);
      }

      else
      {
        v561 = 0;
        v562 = 0;
      }

      v563 = -[FigCaptureDepthDataPipeline initWithConfiguration:sourceOutput:graph:name:delegate:]([FigCaptureDepthDataPipeline alloc], "initWithConfiguration:sourceOutput:graph:name:delegate:", DepthDataPipelineConfiguration, v555, v1038, FigCaptureBuildSinkPipelineName(v561, v562, [v545 underlyingDeviceType], @"Depth Data Sink Pipeline"), *(v1039 + 832));
      if (!v563)
      {
        captureSession_buildGraphWithConfiguration_cold_18();
        goto LABEL_854;
      }

      [(FigCaptureSessionPipelines *)v484 addDepthDataSinkPipeline:v563];
      if (v538 == ++v539)
      {
        v572 = [(NSArray *)v1060 countByEnumeratingWithState:&v1128 objects:v1127 count:16];
        v538 = v572;
        if (!v572)
        {
          goto LABEL_636;
        }

        goto LABEL_611;
      }
    }
  }

  v485 = v483;
  v486 = *v1144;
LABEL_566:
  v487 = 0;
  while (1)
  {
    if (*v1144 != v486)
    {
      objc_enumerationMutation(v482);
    }

    v488 = *(*(&v1143 + 1) + 8 * v487);
    v489 = [v488 visionDataConnectionConfiguration];
    v490 = [v488 videoDataConnectionConfiguration];
    v491 = -[FigCaptureSessionPipelines cameraSourcePipelineWithSourceID:](v484, "cameraSourcePipelineWithSourceID:", [objc_msgSend(v489 "sourceConfiguration")]);
    v492 = [*v1037 objectForKeyedSubscript:{objc_msgSend(v491, "sourceID")}];
    if (v492)
    {
      v493 = *(v492 + 24);
      v494 = *(v492 + 32);
    }

    else
    {
      v493 = 0;
      v494 = 0;
    }

    v495 = FigCaptureBuildSinkPipelineName(v493, v494, [v489 underlyingDeviceType], @"Vision Data Sink Pipeline");
    v496 = -[FigCaptureCameraSourcePipeline visionDataOutputForSourceDeviceType:](v491, [v489 underlyingDeviceType]);
    v497 = [FigCaptureVisionDataSinkPipeline alloc];
    v498 = [(FigCaptureCameraSourcePipeline *)v491 captureDevice];
    v499 = *(v1039 + 832);
    v500 = *(v1039 + 36);
    v1273[0] = *(v1039 + 20);
    v1273[1] = v500;
    v501 = [(FigCaptureVisionDataSinkPipeline *)v497 initWithVisionDataConnectionConfiguration:v489 videoDataConnectionConfiguration:v490 graph:v1038 name:v495 visionCaptureOutput:v496 captureDevice:v498 clientAuditToken:v1273 delegate:v499];
    if (!v501)
    {
      break;
    }

    v484 = v1075;
    [(FigCaptureSessionPipelines *)v1075 addVisionDataSinkPipeline:v501];
    if (v485 == ++v487)
    {
      v502 = [(NSArray *)v482 countByEnumeratingWithState:&v1143 objects:v1142 count:16];
      v485 = v502;
      if (!v502)
      {
        goto LABEL_576;
      }

      goto LABEL_566;
    }
  }

  captureSession_buildGraphWithConfiguration_cold_17();
LABEL_854:
  v813 = v1273[0];
LABEL_855:
  HIDWORD(v937) = 1;
  if (v813)
  {
LABEL_856:
    captureSession_buildGraphWithConfiguration_cold_29();
    goto LABEL_965;
  }

LABEL_962:
  if (HIDWORD(v937))
  {
    *&v1273[0] = 0;
    [*(v1039 + 752) commitConfigurationWithID:objc_msgSend(v977 error:{"configurationID"), v1273}];
    if (*&v1273[0])
    {
      v1230 = [*&v1273[0] code];
    }
  }

LABEL_965:
  result = v1230;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
    return v1230;
  }

  return result;
}

void captureSession_prewarmMemoryPool(uint64_t a1, void *a2)
{
  os_unfair_lock_lock(&sFigCaptureSessionPrewarming);
  v4 = CFAbsoluteTimeGetCurrent() - *&qword_1ED844938;
  v5 = *&dword_1ED844928;
  if (*&dword_1ED844928 <= 0.0)
  {
    dword_1ED844928 = 1077936128;
    v5 = 3.0;
  }

  if (v4 >= v5)
  {
    if (byte_1ED844930 == 1)
    {

      getpid();
      qword_1ED844940 = FigOSTransactionCreate();
      qword_1ED844938 = CFAbsoluteTimeGetCurrent();
      cs_initMemoryPoolSize(a1, a2);
      captureSession_primeMemoryPoolPrewarmTimer();
    }

    else if (dword_1ED844050)
    {
LABEL_9:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else if (dword_1ED844050)
  {
    goto LABEL_9;
  }

  os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
}

uint64_t OUTLINED_FUNCTION_143_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);

  return [v54 countByEnumeratingWithState:v55 - 192 objects:va count:{16, a6, a7, a8}];
}

__n128 OUTLINED_FUNCTION_24_7@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  result = *(v2 - 144);
  *v3 = result;
  v3[1].n128_u64[0] = *(v2 - 128);
  return result;
}

BOOL OUTLINED_FUNCTION_24_8(NSObject *a1)
{
  v3 = *(v1 - 157);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_24_9()
{

  return [v0 objectForKeyedSubscript:v1];
}

uint64_t OUTLINED_FUNCTION_24_11(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 downScalePixelBuffer:a3 toPixelBuffer:a4 inputROI:a5 gdcParams:v5 applyGDC:{v7, v8, v9, v10}];
}

BOOL OUTLINED_FUNCTION_24_13(NSObject *a1)
{
  v3 = *(v1 - 77);

  return os_log_type_enabled(a1, v3);
}

BOOL OUTLINED_FUNCTION_24_15(NSObject *a1)
{
  v3 = *(v1 - 53);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_24_16(uint64_t a1)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_24_17(uint64_t a1)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_24_18(uint64_t a1)
{

  return [v2 connectOutput:v3 toInput:a1 pipelineStage:v1];
}

uint64_t OUTLINED_FUNCTION_80_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_113_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a39, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37, __int128 a38, __n128 a40)
{
  *(v40 - 192) = a37;
  *(v40 - 176) = a38;
  result = a40;
  *(v40 - 160) = a40;
  return result;
}

uint64_t FigVideoCaptureSourcesActivateAndCreateDevices(CFArrayRef theArray, CFArrayRef a2, void *a3, uint64_t a4, uint64_t a5, void *a6, unsigned int a7, char a8, void *a9)
{
  v14 = theArray;
  updated = 0;
  if (theArray)
  {
    theArray = CFArrayGetCount(theArray);
  }

  v175 = theArray;
  theArraya = v14;
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v175];
  v17 = [a6 objectForKeyedSubscript:?];
  FigSimpleMutexLock();
  if (v175 == Count)
  {
    v158 = v9;
    if (objc_msgSend_isEqualToString_(a3))
    {
      v219 = 0u;
      v218 = 0u;
      v217 = 0u;
      v216 = 0u;
      v18 = [a6 countByEnumeratingWithState:&v216 objects:v215 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v217;
LABEL_10:
        v21 = 0;
        while (1)
        {
          if (*v217 != v20)
          {
            objc_enumerationMutation(a6);
          }

          if ([objc_msgSend(a6 objectForKeyedSubscript:{*(*(&v216 + 1) + 8 * v21)), "invalidated"}])
          {
            break;
          }

          if (v19 == ++v21)
          {
            v19 = [a6 countByEnumeratingWithState:&v216 objects:v215 count:16];
            if (!v19)
            {
              goto LABEL_16;
            }

            goto LABEL_10;
          }
        }

        v161 = 0;
        v164 = 0;
        obj = 0;
        v61 = 0;
        v62 = -12785;
        goto LABEL_86;
      }
    }

LABEL_16:
    v168 = v16;
    v161 = [qword_1ED8451D0 copy];
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    v214 = 0u;
    v22 = qword_1ED8451D0;
    v23 = [qword_1ED8451D0 countByEnumeratingWithState:&v211 objects:v210 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v212;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v212 != v25)
          {
            objc_enumerationMutation(v22);
          }

          captureSource_deactivateInternal(*(*(&v211 + 1) + 8 * i));
        }

        v24 = [v22 countByEnumeratingWithState:&v211 objects:v210 count:16];
      }

      while (v24);
    }

    v192 = a8;
    [qword_1ED8451D0 removeAllObjects];
    v27 = v175;
    v173 = a6;
    v174 = v17;
    v187 = a2;
    if (v175 < 1)
    {
      v169 = 0;
      v163 = 0;
      v52 = 0;
      obj = 0;
      v164 = 0;
      v165 = 0;
      v51 = 0;
      v16 = v168;
      goto LABEL_65;
    }

    v176 = a7;
    v28 = 0;
    v163 = 0;
    v191 = 0;
    v29 = 0;
    v194 = 0;
    v164 = 0;
    obj = 0;
    v30 = 0;
    v31 = *off_1E798A018;
    v182 = *off_1E798A0E0;
    v178 = *off_1E798A0C0;
    v180 = *off_1E798A0F8;
    do
    {
      v32 = 0;
      v33 = v27 - v30;
      while (1)
      {
        CFArrayGetValueAtIndex(theArraya, v30 + v32);
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v30 + v32);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v36 = *(DerivedStorage + 104);
        if (!objc_msgSend_isEqualToString_([v36 objectForKeyedSubscript:@"CaptureDeviceID"]))
        {
          v28 += v32;
          goto LABEL_58;
        }

        if ((([objc_msgSend(v174 "supportedProperties")] == 0) & ~v29) == 0)
        {
          break;
        }

        v29 = 0;
        ++v32;
        a2 = v187;
        if (v33 == v32)
        {
          v165 = 0;
          v51 = 0;
          v169 = v28 + v32 - 1 > 0;
          v16 = v168;
          v17 = v174;
          goto LABEL_63;
        }
      }

      FigSimpleMutexLock();
      if (*(DerivedStorage + 12))
      {
        updated = -12785;
        goto LABEL_56;
      }

      v37 = [objc_msgSend(v36 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
      v38 = [objc_msgSend(v36 objectForKeyedSubscript:{@"Position", "intValue"}];
      if (*(DerivedStorage + 112))
      {
        if ((v37 == 12 || v37 == 6) && ([objc_msgSend(ValueAtIndex objectForKeyedSubscript:{0x1F21A0950), "BOOLValue"}] & 1) == 0)
        {
          if (v37 == 6)
          {
            v44 = v182;
          }

          else
          {
            v44 = v180;
          }

          v43 = v164;
          if (!v164)
          {
            v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v164 = v43;
          v40 = v44;
        }

        else
        {
          v39 = obj;
          if (!obj)
          {
            v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v40 = [*(DerivedStorage + 112) allKeys];
          obj = v39;
LABEL_51:
          v43 = v39;
        }
      }

      else
      {
        v41 = v38;
        v42 = v164;
        if (!v164)
        {
          v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v164 = v42;
        if (v37 != 13)
        {
          v45 = v41;
          v39 = v42;
          v40 = BWCaptureDevicePositionAndDeviceTypeToPortType(v45, v37);
          goto LABEL_51;
        }

        v43 = v42;
        v40 = v178;
      }

      [v43 addObject:v40];
      if ([objc_msgSend(ValueAtIndex objectForKeyedSubscript:{0x1F21A0930), "BOOLValue"}])
      {
        v163 |= [objc_msgSend(v36 objectForKeyedSubscript:{0x1F219F9D0), "BOOLValue"}];
      }

      if ([objc_msgSend(ValueAtIndex objectForKeyedSubscript:{@"StructuredLightAssistedAutoFocusEnabled", "BOOLValue"}])
      {
        v191 |= [objc_msgSend(v36 objectForKeyedSubscript:{0x1F219F9F0), "BOOLValue"}];
      }

LABEL_56:
      FigSimpleMutexUnlock();
      if (updated)
      {
        FigVideoCaptureSourcesActivateAndCreateDevices_cold_1();
        v61 = 0;
        v16 = v168;
        goto LABEL_223;
      }

      v28 += v32 + 1;
      v194 = 1;
      v29 = 1;
LABEL_58:
      v46 = ~v30;
      v30 += v32 + 1;
      v27 = v175;
      a2 = v187;
    }

    while (v46 + v175 != v32);
    v169 = v28 > 1;
    v17 = v174;
    if (v29)
    {
      v47 = v164;
      if (v191)
      {
        v48 = *off_1E798A0E8;
        v49 = v176;
        if ([v164 containsObject:*off_1E798A0E8])
        {
          v165 = 0;
          v16 = v168;
          v50 = obj;
          v47 = v164;
          a6 = v173;
          goto LABEL_253;
        }

        v209 = 0u;
        v207 = 0u;
        v208 = 0u;
        v206 = 0u;
        v143 = [obj countByEnumeratingWithState:&v206 objects:v205 count:16];
        a6 = v173;
        if (v143)
        {
          v144 = v143;
          v145 = *v207;
          while (2)
          {
            for (j = 0; j != v144; ++j)
            {
              if (*v207 != v145)
              {
                objc_enumerationMutation(obj);
              }

              if ([*(*(&v206 + 1) + 8 * j) containsObject:v48])
              {
                v165 = 0;
                v16 = v168;
                v50 = obj;
                v47 = v164;
                goto LABEL_253;
              }
            }

            v144 = [obj countByEnumeratingWithState:&v206 objects:v205 count:16];
            if (v144)
            {
              continue;
            }

            break;
          }
        }

        v16 = v168;
        v147 = v164;
        v52 = v194;
        if (!v164)
        {
          v147 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v148 = v147;
        [v147 addObject:v48];
        v47 = v148;
        v165 = 1;
        v50 = obj;
      }

      else
      {
        v165 = 0;
        v16 = v168;
        v50 = obj;
        a6 = v173;
        v49 = v176;
LABEL_253:
        v52 = v194;
      }

      v164 = v47;
      v51 = [BWMultiCamConfiguration configurationWithUnsynchronizedActiveStreamsPortTypes:v47 synchronizedActiveStreamsGroupsPortTypes:v50 stereoVideoCaptureEnabled:v49];
    }

    else
    {
      v165 = 0;
      v51 = 0;
      v16 = v168;
LABEL_63:
      a6 = v173;
      v52 = v194;
    }

LABEL_65:
    if (_MergedGlobals_13 == 1 && v17 != 0)
    {
      if (v192)
      {
        v52 = 1;
      }

      else
      {
        v54 = [(BWMultiCamConfiguration *)v51 isEqual:[BWMultiCamConfiguration configurationWithCurrentStateFromCaptureDevice:v17]];
        v52 = !v54;
        if (v54 & v163)
        {
          goto LABEL_71;
        }
      }

      updated = cs_resetTimeOfFlightAutoFocus(v17);
      if (updated)
      {
        FigVideoCaptureSourcesActivateAndCreateDevices_cold_2();
        goto LABEL_258;
      }
    }

LABEL_71:
    v55 = sStructuredLightAFEnabled != 1 || v17 == 0;
    v159 = v51;
    if (v55 || (v56 = [(BWMultiCamConfiguration *)v51 isEqual:[BWMultiCamConfiguration configurationWithCurrentStateFromCaptureDevice:v17]], v52 = !v56, (v165 & v56 & 1) != 0) || (v57 = v56, FigSimpleMutexCheckIsLockedOnThisThread(), sStructuredLightAFEnabled = 0, sStructuredLightAFSuspended = 1, cs_updateStructuredLightAFEnabledStatus(), !dword_1ED844030))
    {
      if ((v52 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else
    {
      LODWORD(v227[0]) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v59 = v227[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
      {
        v60 = v59;
      }

      else
      {
        v60 = v59 & 0xFFFFFFFE;
      }

      if (v60)
      {
        LODWORD(v232[0]) = 136315650;
        *(v232 + 4) = "cs_resetStructuredLightAutoFocus";
        WORD6(v232[0]) = 1024;
        *(v232 + 14) = sStructuredLightAFSuspended;
        WORD1(v232[1]) = 1024;
        DWORD1(v232[1]) = sStructuredLightAFEnabled;
        LODWORD(v151) = 24;
        v149 = v232;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v16 = v168;
      v17 = v174;
      if (v57)
      {
LABEL_88:
        v61 = [(BWMultiCamConfiguration *)v51 copyActiveSynchronizedStreamsGroupsForDevice:v17 errorOut:&updated, v149, v151];
        if (updated)
        {
          FigVideoCaptureSourcesActivateAndCreateDevices_cold_3();
        }

        else
        {
          v203 = 0u;
          v204 = 0u;
          v201 = 0u;
          v202 = 0u;
          v63 = [v17 synchronizedStreamsGroups];
          v64 = [v63 countByEnumeratingWithState:&v201 objects:v200 count:16];
          if (v64)
          {
            v65 = v64;
            v66 = *v202;
            do
            {
              for (k = 0; k != v65; ++k)
              {
                if (*v202 != v66)
                {
                  objc_enumerationMutation(v63);
                }

                v68 = *(*(&v201 + 1) + 8 * k);
                if (([v61 containsObject:v68] & 1) == 0)
                {
                  [v68 setActiveStreams:0];
                }
              }

              v65 = [v63 countByEnumeratingWithState:&v201 objects:v200 count:16];
            }

            while (v65);
            v160 = 0;
            v16 = v168;
          }

          else
          {
            v160 = 0;
          }

LABEL_100:
          if (v175 >= 1)
          {
            v69 = 0;
            v166 = *off_1E798A0F8;
            v167 = *off_1E798A0E0;
            v186 = v61;
            do
            {
              v70 = CFArrayGetValueAtIndex(theArraya, v69);
              v71 = [*(CMBaseObjectGetDerivedStorage() + 104) objectForKeyedSubscript:@"CaptureDeviceID"];
              v184 = [a6 objectForKeyedSubscript:v71];
              isEqualToString = objc_msgSend_isEqualToString_(v71);
              v185 = v69;
              v73 = CFArrayGetValueAtIndex(a2, v69);
              v74 = CMBaseObjectGetDerivedStorage();
              FigSimpleMutexCheckIsLockedOnThisThread();
              v75 = FigSimpleMutexLock();
              if (*(v74 + 12))
              {
                FigVideoCaptureSourcesActivateAndCreateDevices_cold_5(v75);
                v118 = 0;
                v101 = 4294954511;
                goto LABEL_195;
              }

              if (*(v74 + 8) != 1)
              {
                v118 = 0;
                v101 = 4294954516;
                goto LABEL_195;
              }

              captureSource_turnOffAndTeardownFigFlashlight(v70);
              v239 = 0;
              v76 = CMBaseObjectGetDerivedStorage();
              v77 = *(v76 + 104);
              v78 = *(v76 + 32);
              v237 = *(v76 + 16);
              v238 = v78;
              v179 = v77;
              v79 = [objc_msgSend(v77 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
              v80 = [v73 objectForKeyedSubscript:@"CaptureDeviceClientPriority"];
              v181 = isEqualToString;
              if (v80)
              {
                v183 = [v80 intValue];
              }

              else
              {
                v183 = 1;
              }

              v81 = [objc_msgSend(v73 objectForKeyedSubscript:{0x1F21A0950), "BOOLValue"}];
              v189 = v73;
              v190 = v70;
              v193 = v74;
              v177 = [objc_msgSend(v73 objectForKeyedSubscript:{0x1F21A09B0), "BOOLValue"}];
              if (*(v76 + 112))
              {
                v83 = v79 != 6 && v79 != 12;
                if ((v83 | v81))
                {
                  v84 = [MEMORY[0x1E695DF70] array];
                  *type = 0u;
                  v234 = 0u;
                  v235 = 0u;
                  v236 = 0u;
                  v85 = [*(v76 + 112) allKeys];
                  v86 = [v85 countByEnumeratingWithState:type objects:v232 count:16];
                  if (v86)
                  {
                    v87 = *v234;
                    while (2)
                    {
                      for (m = 0; m != v86; m = m + 1)
                      {
                        if (*v234 != v87)
                        {
                          objc_enumerationMutation(v85);
                        }

                        [*(v76 + 112) objectForKeyedSubscript:*(*&type[8] + 8 * m)];
                        v89 = CMBaseObjectGetDerivedStorage();
                        v239 = cs_addObjectToStreamsAttributes(v89, v84);
                        if (v239)
                        {
                          FigVideoCaptureSourcesActivateAndCreateDevices_cold_7();
                          v16 = v168;
                          a6 = v173;
                          v61 = v186;
                          goto LABEL_170;
                        }
                      }

                      v86 = [v85 countByEnumeratingWithState:type objects:v232 count:16];
                      if (v86)
                      {
                        continue;
                      }

                      break;
                    }

                    v16 = v168;
                    v70 = v190;
                  }

                  goto LABEL_130;
                }

                if (v79 == 6)
                {
                  v90 = v167;
                }

                else
                {
                  v90 = v166;
                }

                v86 = [MEMORY[0x1E695DF70] array];
                [*(v76 + 112) objectForKeyedSubscript:v90];
                v91 = CMBaseObjectGetDerivedStorage();
                v239 = cs_addObjectToStreamsAttributes(v91, v86);
                if (v239)
                {
                  FigVideoCaptureSourcesActivateAndCreateDevices_cold_6();
                  goto LABEL_169;
                }
              }

              else
              {
                v86 = 0;
              }

              v84 = 0;
LABEL_130:
              if (*(v76 + 120))
              {
                v86 = [MEMORY[0x1E695DF70] array];
                v228 = 0u;
                v229 = 0u;
                v230 = 0u;
                v231 = 0u;
                v92 = [*(v76 + 120) allKeys];
                v93 = [v92 countByEnumeratingWithState:&v228 objects:v227 count:16];
                if (v93)
                {
                  v94 = v93;
                  v95 = *v229;
                  while (2)
                  {
                    for (n = 0; n != v94; ++n)
                    {
                      if (*v229 != v95)
                      {
                        objc_enumerationMutation(v92);
                      }

                      v97 = *(*(&v228 + 1) + 8 * n);
                      if (v79 != 13 || (objc_msgSend_isEqualToString_(*(*(&v228 + 1) + 8 * n)) & 1) == 0)
                      {
                        [*(v76 + 120) objectForKeyedSubscript:v97];
                        v98 = CMBaseObjectGetDerivedStorage();
                        v239 = cs_addObjectToStreamsAttributes(v98, v86);
                        if (v239)
                        {
                          FigVideoCaptureSourcesActivateAndCreateDevices_cold_8();
                          v16 = v168;
                          a6 = v173;
                          v61 = v186;
                          v74 = v193;
                          goto LABEL_170;
                        }
                      }
                    }

                    v94 = [v92 countByEnumeratingWithState:&v228 objects:v227 count:16];
                    if (v94)
                    {
                      continue;
                    }

                    break;
                  }

                  v16 = v168;
                  v70 = v190;
                }

                v74 = v193;
              }

              FigSimpleMutexCheckIsLockedOnThisThread();
              FigSimpleMutexCheckIsLockedOnThisThread();
              if (*(v76 + 80))
              {
                FigVideoCaptureSourcesActivateAndCreateDevices_cold_9();
              }

              v99 = [BWFigVideoCaptureDevice alloc];
              v240[0] = v237;
              v240[1] = v238;
              LODWORD(v155) = v183;
              v100 = [(BWFigVideoCaptureDevice *)v99 initWithCaptureDevice:v184 attributes:v179 synchronizedStreamsAttributes:v84 unsynchronizedStreamsAttributes:v86 multiCamEnabled:v181 & v169 midFrameSynchronizationEnabled:v177 applicationID:a3 clientAuditToken:v240 tccIdentity:a4 mediaEnvironment:a5 deviceClientPriority:v155 error:&v239];
              *(v76 + 80) = v100;
              v101 = v239;
              if (v239)
              {
                v61 = v186;
LABEL_204:
                a6 = v173;
LABEL_205:
                FigVideoCaptureSourcesActivateAndCreateDevices_cold_11(v101);
                v118 = 0;
                goto LABEL_195;
              }

              v61 = v186;
              if (!v100)
              {
                v101 = 4294954510;
                goto LABEL_204;
              }

              [*(v76 + 80) setUltraHighResolutionZeroShutterLagSupportEnabled:{objc_msgSend(objc_msgSend(v189, "objectForKeyedSubscript:", 0x1F21A0990), "BOOLValue")}];
              [*(v76 + 144) setObject:CMClockGetHostTimeClock() forKeyedSubscript:@"Clock"];
              [*(v76 + 144) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", 1), 0x1F21A0A30}];
              v102 = CMBaseObjectGetDerivedStorage();
              *(v102 + 168) = 0;
              if (*(v102 + 80))
              {
                CMNotificationCenterGetDefaultLocalCenter();
                v103 = CMNotificationCenterAddListener();
                if (dword_1ED844030)
                {
                  v242 = 0;
                  v241 = OS_LOG_TYPE_DEFAULT;
                  v104 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v105 = v242;
                  if (os_log_type_enabled(v104, v241))
                  {
                    v106 = v105;
                  }

                  else
                  {
                    v106 = v105 & 0xFFFFFFFE;
                  }

                  if (v106)
                  {
                    v221 = 136315394;
                    v222 = "captureSource_registerDeviceNotificationListeners";
                    v223 = 2048;
                    v224 = *&v70;
                    LODWORD(v152) = 22;
                    v150 = &v221;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v74 = v193;
                }

                v239 = v103;
                if (!v103)
                {
                  if (([objc_msgSend(*(v76 + 104) objectForKeyedSubscript:{@"Torch", "BOOLValue"}] & 1) != 0 || objc_msgSend(objc_msgSend(*(v76 + 104), "objectForKeyedSubscript:", @"Flash"), "BOOLValue"))
                  {
                    v107 = *(v76 + 80);
                    [sThermalMonitor maxTorchLevel];
                    v109 = v108;
                    [sPowerMonitor maxTorchLevel];
                    v111 = (v109 >= v110 ? &sPowerMonitor : &sThermalMonitor);
                    [*v111 maxTorchLevel];
                    [v107 setMaxTorchLevel:?];
                    if (dword_1ED844030)
                    {
                      v242 = 0;
                      v241 = OS_LOG_TYPE_DEFAULT;
                      v112 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v113 = v242;
                      if (os_log_type_enabled(v112, v241))
                      {
                        v114 = v113;
                      }

                      else
                      {
                        v114 = v113 & 0xFFFFFFFE;
                      }

                      if (v114)
                      {
                        [sThermalMonitor maxTorchLevel];
                        v116 = v115;
                        [sPowerMonitor maxTorchLevel];
                        v221 = 136315650;
                        v222 = "captureSource_bringupBWFigVideoCaptureDevice";
                        v223 = 2048;
                        v224 = v116;
                        v225 = 2048;
                        v226 = v117;
                        LODWORD(v152) = 32;
                        v150 = &v221;
                        _os_log_send_and_compose_impl();
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                      v74 = v193;
                    }
                  }

                  [*(v76 + 80) sendCalibrationDataToISP];
                  BWFigVideoCaptureDeviceSetClientProcessHasAccessToCamera(*(v76 + 80), *(v76 + 196));
                  goto LABEL_169;
                }

                v135 = v158;
              }

              else
              {
                FigVideoCaptureSourcesActivateAndCreateDevices_cold_10(&v239, v240);
                v135 = *&v240[0];
                v103 = -12780;
              }

              LODWORD(v150) = v103;
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v150, v135, v153, v154, v155, v156, v157, v158);
LABEL_169:
              a6 = v173;
LABEL_170:
              v101 = v239;
              if (v239)
              {
                v70 = v190;
                goto LABEL_205;
              }

              *(v74 + 13) = 1;
              v118 = *(v74 + 80);
              v119 = [sThermalMonitor thermalLevel];
              [sPowerMonitor maxTorchLevel];
              v121 = v120;
              [sThermalMonitor maxTorchLevel];
              if (v121 >= v122)
              {
                v123 = &sThermalMonitor;
              }

              else
              {
                v123 = &sPowerMonitor;
              }

              [*v123 maxTorchLevel];
              captureSource_setThermalLevelAndMaxTorchLevel(v74, v119, v124);
              [qword_1ED8451C0 callSystemPressureLevelChangedHandler];
              if (v189 && [objc_msgSend(*(v74 + 104) objectForKeyedSubscript:{@"Focus", "BOOLValue"}])
              {
                *(v74 + 198) = [objc_msgSend(v189 objectForKeyedSubscript:{@"SuspendAdjustingFocusNotifications", "BOOLValue"}];
              }

              memset(v232, 0, 64);
              v125 = *(v74 + 160);
              v126 = [v125 countByEnumeratingWithState:v232 objects:v240 count:16];
              if (v126)
              {
                v127 = v126;
                v128 = **&v232[1];
                do
                {
                  for (ii = 0; ii != v127; ++ii)
                  {
                    if (**&v232[1] != v128)
                    {
                      objc_enumerationMutation(v125);
                    }

                    v130 = *(*(&v232[0] + 1) + 8 * ii);
                    if ((!objc_msgSend_isEqualToString_(v130) || ([objc_msgSend(*(v193 + 144) objectForKeyedSubscript:{@"AutoAdjustImageControlMode", "BOOLValue"}] & 1) == 0) && (objc_msgSend_isEqualToString_(v130) & 1) == 0 && (objc_msgSend_isEqualToString_(v130) & 1) == 0)
                    {
                      v131 = [*(v193 + 144) objectForKeyedSubscript:v130];
                      if (v131)
                      {
                        captureSource_setPropertyInternal(v190, v130, v131);
                      }
                    }
                  }

                  v127 = [v125 countByEnumeratingWithState:v232 objects:v240 count:16];
                }

                while (v127);
              }

              if (*(v193 + 197) == 1)
              {
                v132 = *(v193 + 32);
                v227[0] = *(v193 + 16);
                v227[1] = v132;
                HasAccessToCamera = FigCaptureClientHasAccessToCamera(v227);
                *(v193 + 196) = HasAccessToCamera;
                v134 = *(v193 + 80);
                v61 = v186;
                v70 = v190;
                if (v134)
                {
                  BWFigVideoCaptureDeviceSetClientProcessHasAccessToCamera(v134, HasAccessToCamera);
                }

                v101 = 0;
              }

              else
              {
                v101 = 0;
                v61 = v186;
                v70 = v190;
              }

LABEL_195:
              FigSimpleMutexUnlock();
              updated = v101;
              if (v101)
              {
                FigVideoCaptureSourcesActivateAndCreateDevices_cold_12(v101);
                goto LABEL_223;
              }

              [qword_1ED8451D0 addObject:v70];
              [v16 addObject:v118];

              v69 = v185 + 1;
              a2 = v187;
            }

            while (v185 + 1 != v175);
          }

          if (v160)
          {
            v136 = [(BWMultiCamConfiguration *)v159 multiCamConfigurationForDevice:v174 errorOut:&updated];
            if (updated)
            {
              FigVideoCaptureSourcesActivateAndCreateDevices_cold_13();
            }

            else
            {
              updated = [v174 setPropertyIfSupported:*off_1E798A018 value:v136];
              if (!updated)
              {
                goto LABEL_214;
              }

              FigVideoCaptureSourcesActivateAndCreateDevices_cold_14();
            }
          }

          else
          {
LABEL_214:
            if (_MergedGlobals_13 != (v163 & 1) && v174 && (LOBYTE(_MergedGlobals_13) = v163 & 1, (v163 & 1) != 0) && (HIBYTE(_MergedGlobals_13) = [sThermalMonitor thermalLevel] > 1, objc_msgSend(v164, "containsObject:", *off_1E798A0C8)) && (updated = cs_updateTimeOfFlightAFEnabledStatus()) != 0)
            {
              FigVideoCaptureSourcesActivateAndCreateDevices_cold_15();
            }

            else if (sStructuredLightAFEnabled != v165)
            {
              if (v174)
              {
                sStructuredLightAFEnabled = v165;
                sStructuredLightAFSuspended = [sThermalMonitor thermalLevel] > 1;
                if (sStructuredLightAFEnabled == 1)
                {
                  cs_updateStructuredLightAFTargetStreamResources();
                }
              }
            }
          }
        }

LABEL_223:
        if (!updated)
        {
          goto LABEL_232;
        }

        goto LABEL_224;
      }
    }

    updated = [v17 setPropertyIfSupported:*off_1E798A018 value:{0, v149, v151}];
    if (!updated)
    {
      [v17 resetSynchronizedStreamsGroups];
      v61 = 0;
      v160 = 1;
      goto LABEL_100;
    }

    FigVideoCaptureSourcesActivateAndCreateDevices_cold_4();
LABEL_258:
    v61 = 0;
    goto LABEL_223;
  }

  v161 = 0;
  v164 = 0;
  obj = 0;
  v61 = 0;
  v62 = -12780;
LABEL_86:
  updated = v62;
LABEL_224:

  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v137 = qword_1ED8451D0;
  v138 = [qword_1ED8451D0 countByEnumeratingWithState:&v196 objects:v195 count:16];
  if (v138)
  {
    v139 = v138;
    v140 = *v197;
    do
    {
      for (jj = 0; jj != v139; ++jj)
      {
        if (*v197 != v140)
        {
          objc_enumerationMutation(v137);
        }

        captureSource_deactivateInternal(*(*(&v196 + 1) + 8 * jj));
      }

      v139 = [v137 countByEnumeratingWithState:&v196 objects:v195 count:16];
    }

    while (v139);
  }

  [qword_1ED8451D0 removeAllObjects];
  v16 = 0;
LABEL_232:
  FigSimpleMutexUnlock();
  if (a9)
  {
    *a9 = [v16 copy];
  }

  return updated;
}

void captureSource_turnOffAndTeardownFigFlashlight(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(DerivedStorage + 176))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v3 = *(DerivedStorage + 176);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v4)
    {
      v4(v3, 0.0);
    }

    v5 = *(DerivedStorage + 176);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 176) = 0;
    }

    captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a1, @"TorchActive", &unk_1F2247860, 0, 1);
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];

    captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a1, @"TorchLevel", v6, 1, 1);
  }
}

uint64_t cs_addObjectToStreamsAttributes(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  if (*(a1 + 12))
  {
    v4 = 4294954511;
  }

  else if (*(a1 + 104))
  {
    [a2 addObject:?];
    v4 = 0;
  }

  else
  {
    v4 = 4294954513;
  }

  FigSimpleMutexUnlock();
  return v4;
}

void __FigFlashlightCreate_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) retainReferencedObject];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 32);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = *(DerivedStorage + 96);
    if (dword_1EB58DF40)
    {
      v14 = 0;
      v13 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __flashlight_videoDeviceAvailabilityListener_block_invoke;
    block[3] = &unk_1E7990030;
    block[5] = a2;
    block[6] = DerivedStorage;
    block[4] = v6;
    v12 = v8;
    dispatch_async(v10, block);
    CFRelease(v5);
  }
}

void OUTLINED_FUNCTION_129_0(CFTypeRef value)
{

  CMSetAttachment(v2, v1, value, 1u);
}

CMTime *OUTLINED_FUNCTION_129_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *lhs, uint64_t rhs_8, CMTime *rhs_16, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a19, uint64_t a20)
{
  lhs_16 = a1;

  return CMTimeAdd(&a20, &lhsa, &lhs);
}

uint64_t OUTLINED_FUNCTION_129_2(__n128 a1, double a2)
{
  v4 = a1.n128_f64[0] - a2 * v3;

  return FigCaptureCeilFloatToMultipleOf(2, v4);
}

__n128 OUTLINED_FUNCTION_42_0()
{
  result = *&STACK[0x270];
  *&STACK[0x230] = *&STACK[0x270];
  STACK[0x240] = STACK[0x280];
  return result;
}

__n128 OUTLINED_FUNCTION_42_2@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 208) = *a1;
  *(v1 - 192) = a1[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_42_3(double a1, double a2, double a3, double a4)
{
  *&STACK[0x420] = a1;
  *&STACK[0x428] = a2;
  *&STACK[0x430] = a3;
  *&STACK[0x438] = a4;
}

uint64_t OUTLINED_FUNCTION_42_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int16 a38, char a39, char a40, int a41)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_42_7()
{

  return [v0 objectAtIndexedSubscript:0];
}

uint64_t OUTLINED_FUNCTION_42_10()
{

  return [v0 count];
}

uint64_t OUTLINED_FUNCTION_42_12()
{
  *(v1 - 68) = 0;
  *(v1 - 69) = 0;
  return *(v0 + 1576);
}

BOOL OUTLINED_FUNCTION_60_2(NSObject *a1)
{
  v3 = *(v1 - 85);

  return os_log_type_enabled(a1, v3);
}

__n128 OUTLINED_FUNCTION_60_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a39, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37, __int128 a38, __n128 a40)
{
  result = a40;
  *(v40 - 176) = a38;
  *(v40 - 160) = a40;
  *(v40 - 192) = a37;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_4()
{
  v1 = STACK[0x258];

  return [v1 countByEnumeratingWithState:&STACK[0x2E0] objects:&STACK[0x260] count:16];
}

uint64_t OUTLINED_FUNCTION_60_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);

  return [v48 countByEnumeratingWithState:va objects:&a33 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_60_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return [v28 countByEnumeratingWithState:va objects:&a13 count:{16, a6, a7, a8}];
}

void __flashlight_videoDeviceAvailabilityListener_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) retainReferencedObject];
  if (v2)
  {
    v3 = v2;
    FigSimpleMutexLock();
    v4 = objc_autoreleasePoolPush();
    v5 = [objc_msgSend(objc_msgSend(*(a1 + 40) "userInfo")];
    v6 = [objc_msgSend(objc_msgSend(*(a1 + 40) "userInfo")];
    v7 = [objc_msgSend(objc_msgSend(*(a1 + 40) "userInfo")];
    v8 = [*(*(a1 + 48) + 56) invalidated];
    if (v6)
    {
      v5 |= *(*(a1 + 48) + 72) == 1;
    }

    if (dword_1EB58DF40)
    {
      v38 = 0;
      v37 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ((v8 & v5) == 1)
    {
      if (flashlight_createDeviceAndStream(v3))
      {
        goto LABEL_48;
      }

      flashlight_setLevelInternal(v3, *(*(a1 + 48) + 32));
      flashlight_setBeamWidthInternal(v3, *(*(a1 + 48) + 40));
      v8 = 0;
    }

    if (((v5 | v8) & 1) == 0)
    {
      if ([+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")])
      {
        if (dword_1EB58DF40)
        {
          v38 = 0;
          v37 = OS_LOG_TYPE_DEFAULT;
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v12 = v38;
          if (os_log_type_enabled(v11, v37))
          {
            v13 = v12;
          }

          else
          {
            v13 = v12 & 0xFFFFFFFE;
          }

          if (!v13)
          {
            goto LABEL_44;
          }

          v14 = *(a1 + 48);
          v15 = *(v14 + 112);
          v16 = *(v14 + 56);
          *v35 = 136315650;
          *&v35[4] = "flashlight_videoDeviceAvailabilityListener_block_invoke";
          *&v35[12] = 2082;
          *&v35[14] = v15;
          *&v35[22] = 2048;
          v36 = v16;
          LODWORD(v34) = 32;
          v33 = v35;
LABEL_36:
          _os_log_send_and_compose_impl();
LABEL_44:
          LOBYTE(v5) = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_48;
        }

        goto LABEL_37;
      }

      if (dword_1EB58DF40)
      {
        v38 = 0;
        v37 = OS_LOG_TYPE_DEFAULT;
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v18 = v38;
        if (os_log_type_enabled(v17, v37))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          v20 = *(*(a1 + 48) + 112);
          *v35 = 136315394;
          *&v35[4] = "flashlight_videoDeviceAvailabilityListener_block_invoke";
          *&v35[12] = 2082;
          *&v35[14] = v20;
          LODWORD(v34) = 22;
          v33 = v35;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v5 = 0;
    }

    if ((v5 | v7 | v8))
    {
      goto LABEL_48;
    }

    if (*(*(a1 + 48) + 72) == 1)
    {
      if ([+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")] <= 1)
      {
        if (dword_1EB58DF40)
        {
          v38 = 0;
          v37 = OS_LOG_TYPE_DEFAULT;
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v22 = v38;
          if (os_log_type_enabled(v21, v37))
          {
            v23 = v22;
          }

          else
          {
            v23 = v22 & 0xFFFFFFFE;
          }

          if (!v23)
          {
            goto LABEL_44;
          }

          v24 = *(*(a1 + 48) + 112);
          *v35 = 136315394;
          *&v35[4] = "flashlight_videoDeviceAvailabilityListener_block_invoke";
          *&v35[12] = 2082;
          *&v35[14] = v24;
          LODWORD(v34) = 22;
          v33 = v35;
          goto LABEL_36;
        }

LABEL_37:
        flashlight_postNotificationWithPayload(v3, @"FlashlightAvailable", [MEMORY[0x1E696AD98] numberWithBool:{1, v33, v34}]);
LABEL_57:
        objc_autoreleasePoolPop(v4);
        FigSimpleMutexUnlock();
        CFRelease(v3);
        return;
      }

      if (!dword_1EB58DF40)
      {
        flashlight_postNotificationWithPayload(v3, @"FlashlightAvailable", [MEMORY[0x1E696AD98] numberWithBool:0]);
LABEL_56:
        flashlight_teardownDevice(v3, 1);
        goto LABEL_57;
      }

      v38 = 0;
      v37 = OS_LOG_TYPE_DEFAULT;
      v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v26 = v38;
      if (os_log_type_enabled(v25, v37))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        v28 = *(*(a1 + 48) + 112);
        *v35 = 136315394;
        *&v35[4] = "flashlight_videoDeviceAvailabilityListener_block_invoke";
        *&v35[12] = 2082;
        *&v35[14] = v28;
        LODWORD(v34) = 22;
        v33 = v35;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    LOBYTE(v5) = 0;
LABEL_48:
    if (dword_1EB58DF40)
    {
      v38 = 0;
      v37 = OS_LOG_TYPE_DEFAULT;
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v30 = v38;
      if (os_log_type_enabled(v29, v37))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        v32 = *(*(a1 + 48) + 112);
        *v35 = 136315650;
        *&v35[4] = "flashlight_videoDeviceAvailabilityListener_block_invoke";
        *&v35[12] = 2082;
        *&v35[14] = v32;
        *&v35[22] = 1024;
        LODWORD(v36) = v5 & 1;
        LODWORD(v34) = 28;
        v33 = v35;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    flashlight_postNotificationWithPayload(v3, @"FlashlightAvailable", [MEMORY[0x1E696AD98] numberWithBool:{v5 & 1, v33, v34, *v35, *&v35[8], v36}]);
    if (v5)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (dword_1EB58DF40)
  {
    v38 = 0;
    v37 = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void *flashlight_postNotificationWithPayload(const void *a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return flashlight_postNotificationWithPayload_cold_1(DerivedStorage);
  }

  v7 = DerivedStorage;
  if (a1)
  {
    CFRetain(a1);
  }

  CFRetain(a2);
  v18 = @"FlashlightValue";
  v19 = a3;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v9 = *v7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __flashlight_postNotificationWithPayload_block_invoke;
  v17[3] = &unk_1E7990150;
  v17[4] = v8;
  v17[5] = v7;
  v17[6] = a2;
  v17[7] = a1;
  dispatch_async(v9, v17);
  result = FigCFEqual();
  if (result)
  {
    if (([a3 floatValue], v11 > 0.0) && *(v7 + 36) == 0.0 || (result = objc_msgSend(a3, "floatValue"), v12 == 0.0) && *(v7 + 36) > 0.0)
    {
      v13 = *(v7 + 96);
      v14 = *(v7 + 104);
      [a3 floatValue];
      FigCaptureLogTorchPowerEvent(v13, v14, v15);
      result = [a3 floatValue];
      *(v7 + 36) = v16;
    }
  }

  return result;
}

void flashlight_teardownDevice(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 80))
  {
    FigSimpleMutexCheckIsLockedOnThisThread();
  }

  v5 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = 0;
  if (v5)
  {
    if (*(DerivedStorage + 32) > 0.0)
    {
      v6 = *(DerivedStorage + 64);
      if (v6)
      {
        [v6 setProperty:*off_1E798C230 value:&unk_1F2242838];
      }
    }

    [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  }

  *(DerivedStorage + 64) = 0;
  if (*(DerivedStorage + 32) > 0.0)
  {
    *(DerivedStorage + 32) = 0;
    if (a2)
    {
      v7 = objc_alloc(MEMORY[0x1E696AD98]);
      LODWORD(v8) = *(DerivedStorage + 32);
      v9 = [v7 initWithFloat:v8];
      flashlight_postNotificationWithPayload(a1, @"FlashlightLevel", v9);
    }

    else
    {
      FigCaptureLogTorchPowerEvent(*(DerivedStorage + 96), *(DerivedStorage + 104), 0.0);
      *(DerivedStorage + 36) = *(DerivedStorage + 32);
    }
  }

  flashlight_logLevelAnalytics(DerivedStorage, 0.0);
  flashlight_logBeamWidthAnalytics(DerivedStorage, -1.0);
  dispatch_sync(*(DerivedStorage + 8), &__block_literal_global_11);
  if (*(DerivedStorage + 232))
  {
    v10 = objc_alloc_init(BWFlashlightAnalyticsPayload);
    [(BWFlashlightAnalyticsPayload *)v10 setLuxLevel:*(DerivedStorage + 352)];
    [(BWFlashlightAnalyticsPayload *)v10 setLevelUsage:DerivedStorage + 144];
    [(BWFlashlightAnalyticsPayload *)v10 setBeamWidthUsage:DerivedStorage + 248];
    [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v10];
    *(DerivedStorage + 224) = 0;
    *(DerivedStorage + 192) = 0u;
    *(DerivedStorage + 208) = 0u;
    *(DerivedStorage + 160) = 0u;
    *(DerivedStorage + 176) = 0u;
    *(DerivedStorage + 144) = 0u;
    *(DerivedStorage + 248) = 0u;
    *(DerivedStorage + 264) = 0u;
    *(DerivedStorage + 280) = 0u;
    *(DerivedStorage + 296) = 0u;
    *(DerivedStorage + 312) = 0u;
    *(DerivedStorage + 328) = 0;
  }

  *(DerivedStorage + 344) = 0;
  *(DerivedStorage + 232) = 0;
  *(DerivedStorage + 128) = 0;
  *(DerivedStorage + 240) = -1;
  *(DerivedStorage + 352) = 0x7FFFFFFF;
}

void flashlight_logLevelAnalytics(uint64_t a1, float a2)
{
  v3 = vcvtps_u32_f32(a2 * 10.0);
  if (v3 && (*(a1 + 240) & 0x80000000) != 0)
  {
    flashlight_logBeamWidthAnalytics(a1, *(a1 + 40));
    v4 = *(a1 + 344);
    v5 = *(a1 + 8);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __flashlight_logLevelAnalytics_block_invoke;
    v9[3] = &unk_1E7990178;
    v9[4] = v4;
    v9[5] = a1;
    dispatch_async(v5, v9);
  }

  if (*(a1 + 128) != v3)
  {
    v6 = mach_absolute_time();
    v7 = *(a1 + 128);
    if (v7)
    {
      v8 = v6 - *(a1 + 136);
      *(a1 + 8 * v7 + 144) += v8;
      *(a1 + 232) += v8;
    }

    *(a1 + 128) = v3;
    *(a1 + 136) = v6;
  }
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  *(v47 - 256) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_75_4()
{
  v2 = *(v0 + 3480);

  return [v2 numberWithInt:?];
}

uint64_t OUTLINED_FUNCTION_75_7(uint64_t a1, void *a2)
{

  return [a2 portType];
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{

  return [a15 countByEnumeratingWithState:a3 objects:a4 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_147_0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 enqueueInputForProcessing:a3 delegate:a4 processErrorRecoveryFrame:0 processOriginalImage:1 clientBracketSequenceNumber:0 processSemanticRendering:0 provideInferenceInputImageForProcessing:? inferencesAvailable:?];
}

uint64_t flashlight_logBeamWidthAnalytics(uint64_t result, float a2)
{
  v2 = vcvtps_s32_f32(a2 * 10.0);
  if (*(result + 240) != v2)
  {
    v3 = result;
    result = mach_absolute_time();
    v4 = *(v3 + 240);
    if ((v4 & 0x80000000) == 0)
    {
      *(v3 + 8 * v4 + 248) += result - *(v3 + 336);
    }

    *(v3 + 240) = v2;
    *(v3 + 336) = result;
  }

  return result;
}

void OUTLINED_FUNCTION_251()
{
  *(v0 + 312) = -1082130432;
  *(v0 + 316) = 0;
  *(v0 + 280) = -1082130432;
  *(v0 + 284) = 0;
}

BOOL OUTLINED_FUNCTION_155(NSObject *a1)
{
  v3 = *(v1 - 85);

  return os_log_type_enabled(a1, v3);
}

uint64_t GetFocalLengthParametersFromArrayUsingModuleInfo(const __CFDictionary *a1, const __CFArray *a2, uint64_t a3)
{
  v55 = 0;
  valuePtr = 0;
  if (a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      Value = CFDictionaryGetValue(a1, *off_1E798A260);
      v7 = CFDictionaryGetValue(a1, *off_1E798A248);
      v8 = CFDictionaryGetValue(a1, *off_1E798A258);
      if (Value)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9 || v8 == 0)
      {
        GetFocalLengthParametersFromArrayUsingModuleInfo_cold_2(&v56);
        return v56;
      }

      if (!CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr) || !CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr + 4) || !CFNumberGetValue(Value, kCFNumberSInt32Type, &v55))
      {
        emitter = fig_log_get_emitter();
        v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE11, "(Fig)", 0x753, v3, v12, v13, v49);
        if (v14)
        {
          v47 = v14;
          GetFocalLengthParametersFromArrayUsingModuleInfo_cold_1(v14, v3);
          return v47;
        }
      }
    }
  }

  v15 = a2;
  if (CFArrayGetCount(a2) < 1)
  {
    return 0;
  }

  v16 = 0;
  v50 = a3 + 20;
  v51 = a3;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v15, v16);
    v18 = CFGetTypeID(ValueAtIndex);
    if (v18 != CFDictionaryGetTypeID())
    {
      GetFocalLengthParametersFromArrayUsingModuleInfo_cold_3(&v56);
      return v56;
    }

    if (!a1)
    {
      break;
    }

    v19 = 1;
    v56 = 1;
    IntIfPresent = FigCFDictionaryGetIntIfPresent();
    if (v56 == 2)
    {
      v21 = IDsEqualAboveFirstHexDigit;
    }

    else
    {
      v21 = IDsEqual;
    }

    if (IntIfPresent)
    {
      v22 = v21;
    }

    else
    {
      v22 = IDsEqual;
    }

    v23 = CFDictionaryGetValue(ValueAtIndex, @"IntegratorID");
    if (v23)
    {
      v24 = v23;
      v25 = valuePtr;
      if (CFArrayGetCount(v23) < 1)
      {
        v19 = 0;
      }

      else
      {
        v26 = 0;
        do
        {
          v56 = -1;
          FigCFArrayGetIntAtIndex();
          if ((v22)(v56, v25))
          {
            v27 = 1;
          }

          else
          {
            v27 = v56 == 0;
          }

          v19 = v27;
          if (v27)
          {
            break;
          }

          ++v26;
        }

        while (CFArrayGetCount(v24) > v26);
      }
    }

    v28 = CFDictionaryGetValue(ValueAtIndex, @"ActuatorID");
    if (v28)
    {
      v29 = v28;
      v30 = HIDWORD(valuePtr);
      if (CFArrayGetCount(v28) < 1)
      {
        v33 = 0;
      }

      else
      {
        v31 = 0;
        do
        {
          v56 = -1;
          FigCFArrayGetIntAtIndex();
          if ((v22)(v56, v30))
          {
            v32 = 1;
          }

          else
          {
            v32 = v56 == 0;
          }

          v33 = v32;
          if (v32)
          {
            break;
          }

          ++v31;
        }

        while (CFArrayGetCount(v29) > v31);
      }
    }

    else
    {
      v33 = 1;
    }

    v34 = CFDictionaryGetValue(ValueAtIndex, @"LensID");
    if (v34)
    {
      v35 = v34;
      v36 = v55;
      if (CFArrayGetCount(v34) < 1)
      {
        v39 = 0;
      }

      else
      {
        v37 = 0;
        do
        {
          v56 = -1;
          FigCFArrayGetIntAtIndex();
          if ((v22)(v56, v36))
          {
            v38 = 1;
          }

          else
          {
            v38 = v56 == 0;
          }

          v39 = v38;
          if (v38)
          {
            break;
          }

          ++v37;
        }

        while (CFArrayGetCount(v35) > v37);
      }

      v33 &= v39;
      v15 = a2;
    }

    if ((v19 & v33) == 1)
    {
      break;
    }

    if (CFArrayGetCount(v15) <= ++v16)
    {
      return 0;
    }
  }

  if (!FigCFDictionaryGetFloatIfPresent())
  {
    GetFocalLengthParametersFromArrayUsingModuleInfo_cold_6(&v56);
    return v56;
  }

  v40 = CFDictionaryGetValue(ValueAtIndex, @"LensCoefficients");
  if (!v40)
  {
    GetFocalLengthParametersFromArrayUsingModuleInfo_cold_5(&v56);
    return v56;
  }

  v41 = v40;
  v42 = CFArrayGetTypeID();
  if (v42 != CFGetTypeID(v41))
  {
    return 0;
  }

  Count = CFArrayGetCount(v41);
  if (Count > 5)
  {
    GetFocalLengthParametersFromArrayUsingModuleInfo_cold_4(&v56);
    return v56;
  }

  v44 = v50;
  if (Count >= 1)
  {
    v45 = 0;
    v46 = Count & 0x7FFFFFFF;
    do
    {
      FigCFArrayGetFloatAtIndex();
      ++v45;
      v44 += 4;
    }

    while (v46 != v45);
  }

  v47 = 0;
  *(v51 + 16) = 1;
  return v47;
}

unint64_t bp_readNoffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 15)
  {
    if (a2 <= 17)
    {
      if (a2 != 16)
      {
        return __rev16(*(a1 + a3));
      }

      return *(a1 + a3);
    }

    if (a2 != 18)
    {
      if (a2 != 19)
      {
        goto LABEL_11;
      }

      return bswap64(*(a1 + a3));
    }
  }

  else
  {
    if (a2 <= 3)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
LABEL_11:
          abort();
        }

        return __rev16(*(a1 + a3));
      }

      return *(a1 + a3);
    }

    if (a2 != 4)
    {
      if (a2 != 8)
      {
        goto LABEL_11;
      }

      return bswap64(*(a1 + a3));
    }
  }

  return bswap32(*(a1 + a3));
}