uint64_t FigCaptureDeferredPhotoProcessorServerStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[0] = 1;
  v10[1] = captureDeferredPhotoProcessorServer_handleReplyMessage;
  v11 = 0u;
  v12 = 0u;
  if (captureDeferredPhotoProcessorServer_initializeStatics_onceToken != -1)
  {
    FigCaptureDeferredPhotoProcessorServerStart_cold_1();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v7 = FigCaptureXPCServerStart("com.apple.coremedia.deferredmedia.photoprocessor", v10, Mutable, &FigCaptureDeferredPhotoProcessorServerStart_sProcessorServer);
  v8 = v7;
  if (v7)
  {
    FigCaptureDeferredPhotoProcessorServerStart_cold_2(v7);
    if (!Mutable)
    {
      return v8;
    }

    goto LABEL_5;
  }

  if (Mutable)
  {
LABEL_5:
    CFRelease(Mutable);
  }

  return v8;
}

uint64_t captureDeferredPhotoProcessorServer_handleReplyMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v4 = OpCode;
    captureDeferredPhotoProcessorServer_handleReplyMessage_cold_1();
  }

  else
  {
    v4 = 4294966630;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return v4;
}

uint64_t captureDeferredPhotoProcessorServer_getAndRetainProcessorObjectFromMessage(uint64_t a1, xpc_object_t xdict, CFTypeRef *a3)
{
  xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v3 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v3)
  {
    v5 = v3;
    captureDeferredPhotoProcessorServer_getAndRetainProcessorObjectFromMessage_cold_1();
  }

  else
  {
    captureDeferredPhotoProcessorServer_getAndRetainProcessorObjectFromMessage_cold_3();
    return 4294954513;
  }

  return v5;
}

void captureDeferredPhotoProcessorServer_servedObjectRefconDestructor(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {
        v3(v2);
      }

      CFRelease(*a1);
    }

    free(a1);
  }
}

uint64_t captureDeferredPhotoProcessorServer_serializeNotification(int a1, int a2, int a3, CFDictionaryRef theDict, uint64_t a5, const char *a6)
{
  cf = 0;
  if (!theDict)
  {
    return 0;
  }

  if (captureDeferredPhotoProcessor_createSerializedNotification(a3, theDict, a6, &cf))
  {
    captureDeferredPhotoProcessorServer_serializeNotification_cold_1();
  }

  else
  {
    if (!FigXPCMessageSetCFDictionary())
    {
      v6 = 2;
      goto LABEL_5;
    }

    captureDeferredPhotoProcessorServer_serializeNotification_cold_2();
  }

  v6 = 1;
LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t clspm_registerForNotifyName(const char *a1, dispatch_queue_t queue, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __clspm_registerForNotifyName_block_invoke;
  v8[3] = &unk_1E79997E8;
  v8[4] = a3;
  v8[5] = &v9;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __clspm_registerForNotifyName_block_invoke_2;
  handler[3] = &unk_1E7999810;
  handler[4] = v8;
  if (!notify_register_dispatch(a1, &v12, queue, handler))
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __clspm_registerForNotifyName_block_invoke_3;
    v6[3] = &unk_1E798FEA0;
    v6[4] = v8;
    dispatch_async(queue, v6);
  }

  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __clspm_registerForNotifyName_block_invoke(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(*(a1 + 40) + 8) + 24), &state64);
  return (*(*(a1 + 32) + 16))();
}

uint64_t FigCaptureReferenceFrameSelection(const __CFArray *a1, int *a2)
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  *a2 = -1;
  if (!a1)
  {
    FigCaptureReferenceFrameSelection_cold_4(&v19);
    return v19;
  }

  Count = CFArrayGetCount(a1);
  if (Count <= 0)
  {
    FigCaptureReferenceFrameSelection_cold_3(&v19);
    return v19;
  }

  if (Count > 7)
  {
    FigCaptureReferenceFrameSelection_cold_2(&v19);
    return v19;
  }

  v5 = 0;
  v6 = *off_1E798B1A0;
  v7 = Count & 7;
  v8 = v17;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, v6);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt64Type, v8);
      }
    }

    ++v5;
    v8 = (v8 + 8);
  }

  while (v7 != v5);
  v11 = 0;
  v12 = 0x8000000000000000;
  v13 = -1;
  do
  {
    v14 = *(v17 + v11);
    v15 = v12 < v14;
    if (v12 <= v14)
    {
      v12 = *(v17 + v11);
    }

    if (v15)
    {
      v13 = v11;
    }

    ++v11;
  }

  while (v7 != v11);
  *a2 = v13;
  if (v13 == -1)
  {
    FigCaptureReferenceFrameSelection_cold_1(&v19);
    return v19;
  }

  return 0;
}

uint64_t FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection(CFArrayRef theArray, int *a2)
{
  if (checkFigCaptureSampleBufferProcessorCommonTrace_checkFigCaptureSampleBufferProcessorCommonTraceOnceToken == -1)
  {
    if (!theArray)
    {
      goto LABEL_27;
    }
  }

  else
  {
    FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_1();
    if (!theArray)
    {
      goto LABEL_27;
    }
  }

  if (CFArrayGetCount(theArray) >= 1)
  {
    v12 = a2;
    key = *off_1E798B6B0;
    v14 = *off_1E798B6C0;
    v17 = *off_1E798B540;
    v16 = *off_1E798B300;
    v15 = *off_1E798B320;
    v4 = *off_1E798B4A8;
    v13 = *off_1E798B208;
    v5 = *off_1E798B2A8;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (CFDictionaryGetValue(ValueAtIndex, key) && (v7 = CFDictionaryGetValue(ValueAtIndex, v14)) != 0 && (LODWORD(valuePtr) = 0, CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr), (LOBYTE(valuePtr) & 0x11) != 1))
    {
      v10 = 2;
    }

    else
    {
      if (CFDictionaryGetValue(ValueAtIndex, v17))
      {
        if (CFDictionaryGetValue(ValueAtIndex, v16))
        {
          if (CFDictionaryGetValue(ValueAtIndex, v15))
          {
            v20 = 0;
            Value = CFDictionaryGetValue(ValueAtIndex, v4);
            if (Value || (Value = CFDictionaryGetValue(ValueAtIndex, v13)) != 0)
            {
              CFNumberGetValue(Value, kCFNumberSInt32Type, &v20);
              valuePtr = 0.0;
              v9 = CFDictionaryGetValue(ValueAtIndex, v5);
              if (v9)
              {
                CFNumberGetValue(v9, kCFNumberDoubleType, &valuePtr);
                FigCaptureComputeImageGainFromMetadata();
              }

              FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_3(&valuePtr, &v20);
            }

            else
            {
              FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_4(&v20);
            }
          }

          else
          {
            FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_5();
          }
        }

        else
        {
          FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_6();
        }
      }

      else
      {
        FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_7();
      }

      v10 = 1;
    }

    a2 = v12;
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_27:
  FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_8();
  v10 = 0;
  if (a2)
  {
LABEL_16:
    *a2 = v10;
  }

LABEL_17:
  if (v10)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t FigCapturePTSBasedReferenceFrameSelection(int a1, const __CFArray *a2, CMTime *a3, unsigned int a4, _DWORD *a5, int *a6)
{
  if (checkFigCaptureSampleBufferProcessorCommonTrace_checkFigCaptureSampleBufferProcessorCommonTraceOnceToken != -1)
  {
    FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_1();
  }

  time = *a3;
  Seconds = CMTimeGetSeconds(&time);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    if (Count >= 5)
    {
      FigCapturePTSBasedReferenceFrameSelection_cold_2(&time);
      return LODWORD(time.value);
    }
  }

  else
  {
    Count = 0;
  }

  if (a4 <= 0)
  {
    FigCapturePTSBasedReferenceFrameSelection_cold_11(&time);
    return LODWORD(time.value);
  }

  if (Count < a4)
  {
    FigCapturePTSBasedReferenceFrameSelection_cold_10(&time);
    return LODWORD(time.value);
  }

  if (!a1)
  {
    IsUsableForPTSBasedReferenceFrameSelection = FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection(a2, 0);
    if (IsUsableForPTSBasedReferenceFrameSelection)
    {
      v42 = IsUsableForPTSBasedReferenceFrameSelection;
      FigCapturePTSBasedReferenceFrameSelection_cold_3();
      return v42;
    }
  }

  v15 = 0;
  v16 = *off_1E798A420;
  v17 = -1;
  v18 = 1.79769313e308;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v15);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, v16);
      if (!Value)
      {
        return 4294954516;
      }

      CMTimeMakeFromDictionary(&time, Value);
      v21 = vabdd_f64(CMTimeGetSeconds(&time), Seconds);
      if (v21 < v18)
      {
        v18 = v21;
        v17 = v15;
      }
    }

    ++v15;
  }

  while (Count != v15);
  if (v17 == -1)
  {
    FigCapturePTSBasedReferenceFrameSelection_cold_9(&time);
    return LODWORD(time.value);
  }

  time.value = 0;
  *&time.timescale = 0;
  if (!a2 || (v22 = CFArrayGetCount(a2), v22 <= 0))
  {
    FigCapturePTSBasedReferenceFrameSelection_cold_7(&v51);
    goto LABEL_66;
  }

  if (v22 > 0xB)
  {
    FigCapturePTSBasedReferenceFrameSelection_cold_6(&v51);
LABEL_66:
    v42 = v51;
    if (v51)
    {
      goto LABEL_67;
    }

    return v42;
  }

  v45 = a4;
  v46 = a6;
  v47 = a5;
  v23 = 0;
  key = *off_1E798B300;
  v48 = *off_1E798B310;
  v24 = *off_1E798B320;
  v44 = v22;
  v25 = v22 & 0xF;
  v26 = -1;
  v27 = 1.1755e-38;
  while (1)
  {
    v28 = CFArrayGetValueAtIndex(a2, v23);
    if (v28)
    {
      break;
    }

LABEL_44:
    if (++v23 == v25)
    {
      if (v26 == -1)
      {
        FigCapturePTSBasedReferenceFrameSelection_cold_5(&v51);
        goto LABEL_66;
      }

      LODWORD(v41) = v26;
      if (v45 == 1)
      {
        goto LABEL_57;
      }

      if (v45 == 2)
      {
        if (v26)
        {
          v41 = v26 - 1;
          if (v26 != v44 - 1)
          {
            if (*(&time.value + v41) < *(&time.value + v26 + 1))
            {
              LODWORD(v41) = v26;
            }

            if (!v46)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }

LABEL_57:
          if (!v46)
          {
LABEL_59:
            if (v47)
            {
              *v47 = v41;
            }

            return 0;
          }

LABEL_58:
          *v46 = v26;
          goto LABEL_59;
        }
      }

      else if (v26 >= v45)
      {
        LODWORD(v41) = v26 - v45 + 1;
        if (!v46)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      LODWORD(v41) = 0;
      goto LABEL_57;
    }
  }

  v29 = v28;
  v51 = 0;
  v30 = CFDictionaryGetValue(v28, key);
  if (!v30)
  {
    goto LABEL_35;
  }

  v31 = v30;
  v32 = CFDictionaryGetValue(v29, v48);
  valuePtr = 0;
  if (v32)
  {
    CFNumberGetValue(v32, kCFNumberSInt32Type, &valuePtr);
  }

  if (CFArrayGetCount(v31) >= 1)
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = CFArrayGetValueAtIndex(v31, v33);
      CFNumberGetValue(v35, kCFNumberSInt64Type, &v51);
      v36 = valuePtr == 2 && v33 == 0;
      v37 = (v51 * 0.1);
      if (!v36)
      {
        v37 = 0;
      }

      v34 += v51 + v37;
      ++v33;
    }

    while (CFArrayGetCount(v31) > v33);
  }

  else
  {
LABEL_35:
    v34 = 0;
  }

  v38 = CFDictionaryGetValue(v29, v24);
  if (v38)
  {
    valuePtr = 0;
    CFNumberGetValue(v38, kCFNumberSInt32Type, &valuePtr);
    if (valuePtr)
    {
      v34 >>= 2;
    }
  }

  if (v34)
  {
    v39 = v23 - v17;
    if (v23 - v17 < 0)
    {
      v39 = v17 - v23;
    }

    v40 = findReferenceFrameIndex_kDistanceFromCenterWeights[v39] * v34;
    *(&time.value + v23) = v40;
    if (v40 > v27)
    {
      v27 = v40;
      v26 = v23;
    }

    goto LABEL_44;
  }

  FigCapturePTSBasedReferenceFrameSelection_cold_4(&v51, &valuePtr);
  v42 = valuePtr;
  if (!valuePtr)
  {
    return v42;
  }

LABEL_67:
  FigCapturePTSBasedReferenceFrameSelection_cold_8(v42);
  return v42;
}

uint64_t hallPositionIndexFromPortType(const void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  if (a1)
  {
    if (a2)
    {
      if (CFEqual(a1, *off_1E798A0C0))
      {
        result = 0;
        *a2 = 0;
      }

      else if (CFEqual(a1, *off_1E798A0D8))
      {
        result = 0;
        *a2 = 1;
      }

      else
      {
        emitter = fig_log_get_emitter();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE11, "(Fig)", 0x73, v9, v14, v15, a9);
      }
    }

    else
    {
      hallPositionIndexFromPortType_cold_1(&v16);
      return v16;
    }
  }

  else
  {
    hallPositionIndexFromPortType_cold_2(&v17);
    return v17;
  }

  return result;
}

uint64_t bravoTransitionCameraIndexFromPortType(const void *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  if (!a1)
  {
    bravoTransitionCameraIndexFromPortType_cold_2(&v18);
    return v18;
  }

  if (!a2)
  {
    bravoTransitionCameraIndexFromPortType_cold_1(&v17);
    return v17;
  }

  if (CFEqual(a1, *off_1E798A0C0))
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  if (CFEqual(a1, *off_1E798A0D8))
  {
    result = 0;
    v13 = 1;
LABEL_9:
    *a2 = v13;
    return result;
  }

  if (CFEqual(a1, *off_1E798A0D0))
  {
    result = 0;
    v13 = 2;
    goto LABEL_9;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE11, "(Fig)", 0x8C, v9, v15, v16, a9);
}

float FigMotionDeltaRotationFromQuaternion(long double *a1)
{
  v2 = *a1;
  v3 = sqrt(1.0 - v2 * v2);
  if (v3 <= 1.0e-10)
  {
    return a1[1] + a1[1];
  }

  else
  {
    v7 = v3;
    v4 = acos(v2);
    return (v4 + v4) * a1[1] / v7;
  }
}

float FigMotionRotationRateFromDeltaQuaternion(long double *a1, float32x2_t *a2, double a3)
{
  if (a3 >= 0.00000001)
  {
    v8 = a3;
    v4 = FigMotionDeltaRotationFromQuaternion(a1);
    HIDWORD(a3) = v5;
    *a2 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*&a3), vdupq_lane_s64(*&v8, 0)));
    *&a3 = v6 / v8;
    a2[1].i32[0] = LODWORD(a3);
  }

  return *&a3;
}

uint64_t FigMotionCalculateAdjustedFocusPosition(int *a1, float a2, float a3)
{
  v3 = *a1 - (a3 * a2);
  if (v3 >= 0.0)
  {
    if (v3 <= 255.0)
    {
      v4 = (v3 + 0.5);
    }

    else
    {
      v4 = 255;
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return 0;
}

uint64_t FigMotionGetGravityZ(const __CFDictionary *a1, float *a2)
{
  v12 = 0;
  if (!a1)
  {
    FigMotionGetGravityZ_cold_3(&v13);
    return v13;
  }

  Value = CFDictionaryGetValue(a1, *off_1E798B3D0);
  if (!Value)
  {
    FigMotionGetGravityZ_cold_2(&v13);
    return v13;
  }

  v4 = FigMotionISPMotionDataFromCFData(Value, &v12);
  if (v4)
  {
    v10 = v4;
    FigMotionGetGravityZ_cold_1();
    return v10;
  }

  v5 = *(v12 + 1);
  if (v5 < 1)
  {
    v7 = 0.0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = v12 + 44;
    v7 = 0.0;
    v8 = *(v12 + 1);
    do
    {
      v9 = *v6;
      v6 += 40;
      v7 = v7 + (v9 * 0.000015259);
      --v8;
    }

    while (v8);
  }

  v7 = v7 / v5;
LABEL_8:
  v10 = 0;
  *a2 = v7;
  return v10;
}

uint64_t FigMotionComputeBlurScores(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v71 = v9;
  v88 = v10;
  if (!v5 || (v11 = v8, v12 = v7, v13 = v6, v14 = v5, Count = CFArrayGetCount(v5), Count <= 0))
  {
    FigMotionComputeBlurScores_cold_13(v89);
    return LODWORD(v89[0].value);
  }

  v70 = v11;
  v77 = v12;
  bzero(v86, 0x2818uLL);
  bzero(v85, 0x4038uLL);
  theArray = v14;
  v75 = CFArrayGetCount(v14);
  if (v75 <= 0)
  {
    FigMotionComputeBlurScores_cold_2(&v98);
  }

  else
  {
    bzero(&v90, 0x14A0uLL);
    bzero(v89, 0x2FD0uLL);
    v15 = 0;
    v16 = 0;
    v17 = v86[0];
    while (1)
    {
      v78 = v16;
      ValueAtIndex = CFArrayGetValueAtIndex(v14, v16);
      if (!ValueAtIndex)
      {
        break;
      }

      v98.i32[0] = 0;
      LODWORD(v97[0].f64[0]) = 0;
      MotionDataFromISP = FigMotionGetMotionDataFromISP(ValueAtIndex, &v90, 0, 110, &v98, 0, v89, 510, v97);
      if (MotionDataFromISP)
      {
        v57 = MotionDataFromISP;
        v86[0] = v17;
        fig_log_get_emitter();
        LODWORD(v62) = v57;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v62, v4, v63, v64, v65, v66, Count, v68);
LABEL_52:
        FigMotionComputeBlurScores_cold_3(v57);
        return v57;
      }

      v20 = v98.u32[0];
      v21 = v91;
      if (v98.i32[0] >= 1)
      {
        do
        {
          *&v86[2 * v15 + 2] = *(v21 - 1) + -0.005;
          v22 = &v86[8 * v15 + 514];
          v23 = *v21;
          v24 = *(v21 + 1);
          v21 += 6;
          *v22 = v23;
          v22[1] = v24;
          v17 = (v17 + 1);
          v15 = v17;
          --v20;
        }

        while (v20);
      }

      v25 = LODWORD(v97[0].f64[0]);
      if (SLODWORD(v97[0].f64[0]) >= 1)
      {
        v26 = v85[v13];
        p_timescale = &v89[0].timescale;
        do
        {
          *&v85[1024 * v13 + 2 + 2 * v26] = *(p_timescale - 1);
          v28 = *p_timescale;
          p_timescale += 6;
          *&v85[1024 * v13 + 2050 + 2 * v26] = v28;
          v26 = (v85[v13] + 1) & 0x1FF;
          v85[v13] = v26;
          --v25;
        }

        while (v25);
      }

      v16 = v78 + 1;
      if (v78 + 1 == v75)
      {
        v86[0] = v17;
        v29 = v11;
        v30 = v13;
        goto LABEL_14;
      }
    }

    FigMotionComputeBlurScores_cold_1(v17, v86, &v98);
  }

  v57 = v98.u32[0];
  v29 = v11;
  v30 = v13;
  if (v98.i32[0])
  {
    goto LABEL_52;
  }

LABEL_14:
  v31 = 0;
  v32 = v30 - 2;
  v72 = v88;
  v76 = (v30 - 3) < 2;
  key = *off_1E798A420;
  v33 = v12;
  while (1)
  {
    *(v29 + 4 * v31) = 2139095039;
    v34 = CFArrayGetValueAtIndex(theArray, v31);
    v83 = 0.0;
    v84 = 0.0;
    v82 = 0.0;
    if (v72 <= 0.0 && !FigCFDictionaryGetFloatIfPresent())
    {
      FigMotionComputeBlurScores_cold_4(v89);
      return LODWORD(v89[0].value);
    }

    FigCFDictionaryGetDoubleIfPresent();
    FigCFDictionaryGetDoubleIfPresent();
    v83 = v83 / 1000000.0;
    Value = CFDictionaryGetValue(v34, key);
    if (!Value)
    {
      FigMotionComputeBlurScores_cold_12(v89);
      return LODWORD(v89[0].value);
    }

    CMTimeMakeFromDictionary(v89, Value);
    Seconds = CMTimeGetSeconds(v89);
    FigMotionComputeFramePTSOffsetFromISPCrop(v34, &v82);
    v37 = v82;
    v38 = *(MEMORY[0x1E695F058] + 16);
    v80 = *MEMORY[0x1E695F058];
    v81 = v38;
    SensorValidCropRect = FigMotionGetSensorValidCropRect(v34, &v80, v39, v40, v41, v42, v43, v44, v62);
    if (SensorValidCropRect)
    {
      v57 = SensorValidCropRect;
      FigMotionComputeBlurScores_cold_5();
      return v57;
    }

    v73 = v31;
    v46 = *(&v81 + 1);
    if (v71 < 2)
    {
      v47 = v46 >> 1;
      v79 = *(&v81 + 1);
    }

    else
    {
      v47 = 0;
      v79 = vcvtms_u32_f32((v46 - 1) / (v71 - 1));
    }

    v48 = 0.0;
    if (v47 < v46)
    {
      break;
    }

LABEL_41:
    v29 = v70;
    *(v70 + 4 * v31++) = v48 / v71;
    if ((v73 + 1) == Count)
    {
      return 0;
    }
  }

  v49 = Seconds + v37;
  while (1)
  {
    if (v12)
    {
      v50 = v49 - v84 + v83 * v47 / (v46 - 1);
      memset(v97, 0, sizeof(v97));
      memset(v96, 0, sizeof(v96));
      v90 = 0u;
      memset(v91, 0, sizeof(v91));
      memset(v89, 0, 144);
      v51 = v84 / v33;
      v92 = v76;
      *(&v89[0].value + 1) = v88;
      v52 = 0.0;
      while (1)
      {
        FigMotionComputeQuaternionForTimeStamp(v86, v97, v87, v50);
        if (!v87[0])
        {
          break;
        }

        FigMotionComputeQuaternionForTimeStamp(v86, v96, v87, v51 + v50);
        if (!v87[0])
        {
          FigMotionComputeBlurScores_cold_8(&v98);
          goto LABEL_39;
        }

        v98 = *&v97[0].f64[0];
        v99 = vnegq_f64(*(v97 + 8));
        v100 = -v97[1].f64[1];
        v95[0] = FigMotionMultiplyQuaternions(&v98, v96);
        v95[1] = v53;
        v95[2] = v54;
        v95[3] = v55;
        v98 = 0;
        FigMotionComputeTranslationFromCameraMotion(v95, &v90, v89, &v98);
        if (v32 > 2)
        {
          v94 = 0;
          v93 = 0;
          v59 = FigMotionComputeLensMovementAndSagForTimeStamp(v85, &v94, 0, v13, v50, 1.0);
          if (v59)
          {
            v57 = v59;
            FigMotionComputeBlurScores_cold_6();
            goto LABEL_45;
          }

          v60 = FigMotionComputeLensMovementAndSagForTimeStamp(v85, &v93, 0, v13, v51 + v50, 1.0);
          v57 = v60;
          if (v60)
          {
            FigMotionComputeBlurScores_cold_7(v60);
            goto LABEL_45;
          }

          v58 = vsub_f32(v98, vsub_f32(v93, v94));
        }

        else
        {
          v57 = v56;
          v58 = v98;
        }

        v52 = v52 + sqrtf(COERCE_FLOAT(vmul_f32(v58, v58).i32[1]) + (v58.f32[0] * v58.f32[0]));
        v50 = v51 + v50;
        if (!--v12)
        {
          goto LABEL_34;
        }
      }

      FigMotionComputeBlurScores_cold_9(&v98);
LABEL_39:
      v57 = v98.u32[0];
      goto LABEL_34;
    }

    FigMotionComputeBlurScores_cold_10(&v98);
    v57 = v98.u32[0];
    v52 = 0.0;
LABEL_34:
    if (v57)
    {
      break;
    }

    v48 = v48 + v52;
    v12 = v77;
    v47 += v79;
    if (v47 >= v46)
    {
      goto LABEL_41;
    }
  }

LABEL_45:
  FigMotionComputeBlurScores_cold_11(v57);
  return v57;
}

uint64_t FigMotionComputeQuaternionAndAttitudeFromArray(const __CFArray *a1, uint64_t a2, long double *a3, double a4)
{
  if (!a1)
  {
    FigMotionComputeQuaternionAndAttitudeFromArray_cold_2(&valuePtr);
    goto LABEL_20;
  }

  Count = CFArrayGetCount(a1);
  *buffer = 0u;
  v27 = 0u;
  if (Count < 1)
  {
    goto LABEL_19;
  }

  v9 = 0;
  v10 = Count & 0x7FFFFFFF;
  v11 = 1.0;
  v12 = -1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
    if (ValueAtIndex)
    {
      v14 = ValueAtIndex;
      if (CFArrayGetCount(ValueAtIndex) >= 1)
      {
        v15 = CFArrayGetValueAtIndex(v14, 0);
        if (v15)
        {
          valuePtr = 0.0;
          CFNumberGetValue(v15, kCFNumberDoubleType, &valuePtr);
          v16 = valuePtr - a4;
          v17 = fabsf(v16);
          if (v11 > v17)
          {
            v18 = CFArrayGetValueAtIndex(v14, 2);
            if (v18)
            {
              v19 = v18;
              v28.length = CFDataGetLength(v18);
              v28.location = 0;
              CFDataGetBytes(v19, v28, buffer);
              v11 = v17;
              v12 = v9;
            }
          }
        }
      }
    }

    ++v9;
  }

  while (v10 != v9);
  if (v12 < 0)
  {
LABEL_19:
    FigMotionComputeQuaternionAndAttitudeFromArray_cold_1(&valuePtr);
LABEL_20:
    v23 = LODWORD(valuePtr);
    if (!LODWORD(valuePtr))
    {
      goto LABEL_14;
    }

LABEL_17:
    FigMotionComputeQuaternionAndAttitudeFromArray_cold_3(v23);
    return v23;
  }

  if (v11 > 0.011)
  {
    low_freq_error_logging();
    v23 = 4294954513;
    goto LABEL_17;
  }

  v20 = v27;
  *a2 = *buffer;
  *(a2 + 16) = v20;
LABEL_14:
  v21 = *(a2 + 16);
  *a3 = -atan2(*(a2 + 8) * (*(a2 + 24) + *(a2 + 24)) - *a2 * (v21 + v21), 1.0 - *(a2 + 8) * (*(a2 + 8) + *(a2 + 8)) - v21 * (v21 + v21));
  a3[1] = asin(*a2 * (*(a2 + 8) + *(a2 + 8)) + *(a2 + 16) * (*(a2 + 24) + *(a2 + 24)));
  v22 = *(a2 + 24);
  v23 = 0;
  a3[2] = -atan2(*(a2 + 8) * (*(a2 + 16) + *(a2 + 16)) - *a2 * (v22 + v22), 1.0 - *(a2 + 8) * (*(a2 + 8) + *(a2 + 8)) - v22 * (v22 + v22));
  return v23;
}

uint64_t FigMotionClearFocalLengthData(uint64_t a1)
{
  if (a1)
  {
    memset_pattern16((a1 + 484), &unk_1AD056290, 0xCuLL);
    memset_pattern16((a1 + 496), &unk_1AD056290, 0xCuLL);
    memset_pattern16((a1 + 508), &unk_1AD056290, 0xCuLL);
    return 0;
  }

  else
  {
    FigMotionClearFocalLengthData_cold_1(&v3);
    return v3;
  }
}

uint64_t FigMotionStashQuadraBinningFactor(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    FigCFDictionaryGetInt32IfPresent();
    return 0;
  }

  else
  {
    FigMotionStashQuadraBinningFactor_cold_1(&v4);
    return v4;
  }
}

uint64_t FigMotionStashFocalLengthData(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    FigCFDictionaryGetFloatIfPresent();
    FigCFDictionaryGetFloatIfPresent();
    FigCFDictionaryGetFloatIfPresent();
    return 0;
  }

  else
  {
    FigMotionStashFocalLengthData_cold_1(&v4);
    return v4;
  }
}

uint64_t FigMotionUpdateBaseZoomFactorAdjustment(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    FigCFDictionaryGetFloatIfPresent();
    return 0;
  }

  else
  {
    FigMotionUpdateBaseZoomFactorAdjustment_cold_1(&v4);
    return v4;
  }
}

uint64_t FigMotionComputeBravoTranslation(uint64_t a1, uint64_t a2, int a3, float32x2_t *a4, float32x2_t *a5, float a6, float a7)
{
  _S8 = a6;
  v36 = 0.0;
  if (!FigCFDictionaryGetFloatIfPresent())
  {
    if (!FigCFDictionaryGetFloatIfPresent() && !FigCFDictionaryGetFloatIfPresent())
    {
      FigMotionComputeBravoTranslation_cold_1(&v37);
      return v37;
    }

    v36 = 0.0 * a7;
  }

  v14 = *(a2 + 444);
  v35 = *(a2 + 4 + 8 * v14);
  _D1 = *(a2 + 4 + 8 * a3);
  v16 = BravoCurrentToReferenceMapping[3 * v14 + a3];
  v17 = (*(a2 + 4 * v16 + 80) * *(a2 + 40 + 4 * a3)) / *(a2 + 40 + 4 * v14);
  v18 = (*(a2 + 64 + 4 * a3) * _S8) / *(a2 + 64 + 4 * v14);
  v19 = COERCE_FLOAT(*a4) + (v17 * (v18 * *&v35));
  v20 = COERCE_FLOAT(HIDWORD(*a4)) - (COERCE_FLOAT(HIDWORD(*a4)) + (v17 * (v18 * *(&v35 + 1))));
  __asm { FMLA            S4, S8, V1.S[1] }

  v34.f32[0] = COERCE_FLOAT(*a4) + (_S8 * *&_D1);
  v34.i32[1] = _S4;
  v26 = a2 + 48 * v16;
  v27 = COERCE_FLOAT(*a4) - v19;
  *v13.i32 = ((v20 * *(v26 + 144)) + (*(v26 + 140) * v27)) + (*(v26 + 148) * v36);
  v28 = 0;
  if (fabsf(*v13.i32) > 0.00000001 && v36 > 0.00000001)
  {
    v30.i32[0] = *(v26 + 108);
    v31.i32[0] = *(v26 + 112);
    v29 = (v26 + 108);
    v32.i32[0] = v29[2];
    v31.i32[1] = v29[5];
    v30.i32[1] = v29[4];
    v32.i32[1] = v29[6];
    v28 = vsub_f32(vadd_f32(v34, vdiv_f32(vmul_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(v31, v20), v30, v27), v32, v36), v36), vdup_lane_s32(v13, 0))), *a4);
  }

  result = 0;
  *a5 = v28;
  return result;
}

uint64_t FigMotionGetTimeStampAtPositionRatio(const __CFDictionary *a1, double *a2, __n128 a3)
{
  if (!a1 || !a2)
  {
    FigMotionGetTimeStampAtPositionRatio_cold_5(&time);
    return LODWORD(time.value);
  }

  v4 = a3.n128_f32[0];
  v14 = 0.0;
  if (!FigCFDictionaryGetDoubleIfPresent())
  {
    FigMotionGetTimeStampAtPositionRatio_cold_4(&time);
    return LODWORD(time.value);
  }

  v13 = 0.0;
  if (!FigCFDictionaryGetDoubleIfPresent())
  {
    FigMotionGetTimeStampAtPositionRatio_cold_3(&time);
    return LODWORD(time.value);
  }

  v13 = v13 / 1000000.0;
  Value = CFDictionaryGetValue(a1, *off_1E798A420);
  if (!Value)
  {
    FigMotionGetTimeStampAtPositionRatio_cold_2(&time);
    return LODWORD(time.value);
  }

  CMTimeMakeFromDictionary(&time, Value);
  Seconds = CMTimeGetSeconds(&time);
  v11 = 0.0;
  v8 = FigMotionComputeFramePTSOffsetFromISPCrop(a1, &v11);
  v9 = v8;
  if (v8)
  {
    FigMotionGetTimeStampAtPositionRatio_cold_1(v8);
  }

  else
  {
    *a2 = Seconds + v11 + v14 * -0.5 + v4 * v13;
  }

  return v9;
}

uint64_t FigMotionComputeMotionBlur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, unsigned int a6, float *a7, unint64_t a8, float32x2_t *a9)
{
  if (a6 < 2)
  {
    v16 = *(a2 + 72);
    v15 = 0.0;
  }

  else
  {
    v14 = *(a2 + 64);
    v15 = v14 / (a6 + -1.0);
    v16 = *(a2 + 72) + v14 * -0.5;
  }

  v17 = *(a2 + 48);
  if (a7)
  {
    *a7 = 0.0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  if (a6 >= 1)
  {
    v18 = v17 * 0.5;
    v19 = v16 - v18;
    v20 = v16 + v18;
    v21 = 1.0 / a6;
    v22 = (a8 | a9) != 0;
    v23 = a6;
    v24 = a5;
    do
    {
      v43 = 1;
      v42 = 1;
      memset(v41, 0, sizeof(v41));
      memset(v40, 0, sizeof(v40));
      FigMotionComputeQuaternionForTimeStamp(a1, v41, &v43, v19);
      FigMotionComputeQuaternionForTimeStamp(a1, v40, &v42, v20);
      if (v43)
      {
        v25 = v42 == 0;
      }

      else
      {
        v25 = 1;
      }

      if (!v25)
      {
        v26 = v21;
        if (a5)
        {
          v26 = *v24;
        }

        v37 = v26;
        v44 = v41[0].f64[0];
        v45 = vnegq_f64(*(v41 + 8));
        v46 = -v41[1].f64[1];
        v27 = FigMotionMultiplyQuaternions(&v44, v40);
        v44 = v27;
        v45.f64[0] = v28;
        v45.f64[1] = v29;
        v46 = v30;
        v31 = 0;
        if (a4 && *(a2 + 12))
        {
          v38 = 0;
          v39 = 0;
          FigMotionComputeLensMovementAndSagForTimeStamp(a4, &v39, 0, *(a2 + 136), v19, *(a2 + 16));
          FigMotionComputeLensMovementAndSagForTimeStamp(a4, &v38, 0, *(a2 + 136), v20, *(a2 + 16));
          v31 = vsub_f32(v38, v39);
        }

        if (a7)
        {
          v32 = acos(v27);
          *&v32 = (v32 + v32) * 180.0 / 3.14159265;
          *a7 = *a7 + (*&v32 * v37);
        }

        if (v22)
        {
          v39 = 0;
          FigMotionComputeTranslationFromCameraMotion(&v44, a3, a2, &v39);
          v33 = vsub_f32(v39, v31);
          if (a8)
          {
            *a8 = *a8 + (sqrtf(COERCE_FLOAT(vmul_f32(v33, v33).i32[1]) + (v33.f32[0] * v33.f32[0])) * v37);
          }

          if (a9)
          {
            *a9 = vmla_n_f32(*a9, v33, v37);
          }
        }
      }

      v19 = v15 + v19;
      v20 = v15 + v20;
      ++v24;
      --v23;
    }

    while (v23);
  }

  return 0;
}

int32x2_t FigMotionComputeTranslationFromCameraMotion(double *a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  FigMotionRotationMatrixFromQuaternion(a1, *(a2 + 48), v13);
  *result.i32 = v14;
  if (fabsf(v14) >= 0.00000001)
  {
    v8 = *(a3 + 4);
    if (v8 == 0.0)
    {
      v9 = *a3;
      v10 = *(a2 + 20);
      v11 = 32;
      if (v10 > v9)
      {
        v11 = 24;
      }

      v12 = 36;
      if (v10 > v9)
      {
        v12 = 28;
      }

      v8 = *(a3 + 8) * (*(a2 + v11) + (*(a2 + v12) * v9));
    }

    result = vdiv_f32(vmul_n_f32(__PAIR64__(LODWORD(v13[5]), LODWORD(v13[2])), v8), vdup_lane_s32(result, 0));
    *a4 = result;
  }

  return result;
}

uint64_t low_freq_error_logging()
{
  mach_absolute_time();
  result = FigHostTimeToNanoseconds();
  if (low_freq_error_logging_last_log)
  {
    v1 = (result - low_freq_error_logging_last_log) >= 0x3B9ACA00;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (low_freq_error_logging_filtered)
    {
      low_freq_error_logging_filtered = 0;
    }

    low_freq_error_logging_last_log = result;
  }

  else
  {
    ++low_freq_error_logging_filtered;
  }

  return result;
}

uint64_t FigMotionComputeAverageQuaternionForTimePeriod(uint64_t a1, _OWORD *a2, _OWORD *a3, double a4, double a5)
{
  v6 = 0;
  v7 = 0;
  v27 = 0x3FF0000000000000uLL;
  v28 = 0uLL;
  do
  {
    v8 = *(a1 + v6);
    if (v8 > a4 + -0.002 && v8 < a5 + 0.002 && v7 <= 19)
    {
      v11 = a2[1];
      v12 = &v26[2 * v7];
      *v12 = *a2;
      v12[1] = v11;
      ++v7;
    }

    a2 += 2;
    v6 += 8;
  }

  while (v6 != 2048);
  if (v7)
  {
    v13 = 0;
    while (vabdd_f64(*(a1 + v13), a4) >= 0.003)
    {
      v13 += 8;
      if (v13 == 2048)
      {
        v14 = 4294967293;
        goto LABEL_22;
      }
    }

    v15 = 0;
    while (vabdd_f64(*(a1 + v15), a5) >= 0.003)
    {
      v15 += 8;
      if (v15 == 2048)
      {
        v14 = 4294967292;
        goto LABEL_22;
      }
    }

    if (v7 >= 1)
    {
      v17 = v7;
      v18 = v26;
      v19 = 1;
      do
      {
        v20 = 1.0 - 1.0 / v19;
        FigMotionInterpolateQuaternionsByAngle(v18, v20, &v27);
        *&v27 = v21;
        *(&v27 + 1) = v22;
        *&v28 = v23;
        *(&v28 + 1) = v24;
        v18 += 2;
        ++v19;
        --v17;
      }

      while (v17);
    }

    v14 = 0;
    v25 = v28;
    *a3 = v27;
    a3[1] = v25;
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
LABEL_22:
    low_freq_error_logging();
  }

  return v14;
}

uint64_t GetFocalLengthParametersFromArrayUsingModuleLensID(CFNumberRef number, CFArrayRef theArray, uint64_t a3)
{
  valuePtr = 0;
  if (number && !CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    GetFocalLengthParametersFromArrayUsingModuleLensID_cold_1(&v19);
  }

  else
  {
    if (CFArrayGetCount(theArray) < 1)
    {
      return 0;
    }

    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
      TypeID = CFDictionaryGetTypeID();
      if (TypeID != CFGetTypeID(ValueAtIndex))
      {
        GetFocalLengthParametersFromArrayUsingModuleLensID_cold_2(&v19);
        return v19;
      }

      if (!number)
      {
        break;
      }

      Value = CFDictionaryGetValue(ValueAtIndex, @"LensID");
      if (!Value)
      {
        break;
      }

      v10 = Value;
      v11 = valuePtr;
      if (CFArrayGetCount(Value) >= 1)
      {
        v12 = 0;
        do
        {
          v19 = -1;
          FigCFArrayGetIntAtIndex();
          if (!v19 || v19 == v11)
          {
            goto LABEL_17;
          }
        }

        while (CFArrayGetCount(v10) > ++v12);
      }

      if (CFArrayGetCount(theArray) <= ++v6)
      {
        return 0;
      }
    }

LABEL_17:
    v15 = CFDictionaryGetValue(ValueAtIndex, @"LensCoefficient");
    if (v15)
    {
      v16 = v15;
      v17 = CFNumberGetTypeID();
      if (v17 == CFGetTypeID(v16))
      {
        *(a3 + 20) = 0;
        *(a3 + 28) = 0;
        *(a3 + 36) = 0;
        CFNumberGetValue(v16, kCFNumberFloatType, (a3 + 24));
        result = 0;
        *(a3 + 32) = *(a3 + 24);
        *(a3 + 16) = 1;
        return result;
      }
    }

    GetFocalLengthParametersFromArrayUsingModuleLensID_cold_3(&v19);
  }

  return v19;
}

uint64_t FigMotionCalculateAdjustedLensPosition(const __CFDictionary *a1, uint64_t a2, float *a3, float a4, float a5)
{
  valuePtr = 0;
  if (!a1)
  {
    FigMotionCalculateAdjustedLensPosition_cold_3(&v19);
    return v19;
  }

  Value = CFDictionaryGetValue(a1, *off_1E798B208);
  if (!Value)
  {
    FigMotionCalculateAdjustedLensPosition_cold_2(&v19);
    return v19;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v10 = valuePtr - (*(a2 + 40) * a4);
  if (v10 >= 0.0)
  {
    if (v10 <= 255.0)
    {
      v11 = (v10 + 0.5);
    }

    else
    {
      v11 = 255;
    }
  }

  else
  {
    v11 = 0;
  }

  valuePtr = v11;
  if ((*(a2 + 16) & 1) == 0)
  {
    FigMotionCalculateAdjustedLensPosition_cold_1(&v19);
    return v19;
  }

  result = 0;
  v13 = v11;
  v14 = *(a2 + 20) <= v11;
  v15 = 32;
  if (!v14)
  {
    v15 = 24;
  }

  v16 = *(a2 + v15);
  v17 = 28;
  if (v14)
  {
    v17 = 36;
  }

  *a3 = (v16 + (*(a2 + v17) * v13)) * a5;
  return result;
}

double FigMotionApplyDigitalZoomToTransform(int a1, float *a2, int8x16_t a3, int32x4_t a4, double a5, double a6, int8x16_t a7)
{
  if (*a3.i32 > 0.0)
  {
    *a7.i32 = 1.0 / *a3.i32;
    if (a1)
    {
      v7 = 1.0 / *a3.i32;
    }

    else
    {
      v7 = *a3.i32;
    }

    v8 = *a4.i64;
    *a4.i32 = (1.0 - v7) * v8;
    v9 = a5;
    v10 = (1.0 - v7) * v9;
    if (a1)
    {
      *a3.i32 = FigMotionPostMultiplyScalingTranslationToTransform(a2, 1.0 / *a3.i32, *a4.i32, *a7.i32, v10);
    }

    else
    {
      *a3.i64 = FigMotionPreMultiplyScalingTranslationToTransform(a2, a3, a4, *a3.i32, v10, a7);
    }
  }

  return *a3.i64;
}

uint64_t FigMotionComputeTransformFromCameraMotion(double *a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, float *a6)
{
  v8 = 0uLL;
  v9 = 0uLL;
  if (a4)
  {
    v9 = vcvtq_f64_f32(*a4);
  }

  v10 = *(a3 + 4);
  v11 = *a2;
  if (a5)
  {
    v8 = vcvtq_f64_f32(*a5);
  }

  v19 = v10;
  v20 = vaddq_f64(v11, v9);
  v17 = v10;
  v18 = vsubq_f64(v11, v8);
  v16 = v11;
  FigMotionRotationMatrixFromQuaternion(a1, *(a2 + 48), v21);
  FigMotionComputeTransformFromRotation(&v19, &v17, v21, a6);
  v12 = *(a3 + 20);
  if (v12 > 0.0)
  {
    v13 = v16.f64[0];
    v14 = v16.f64[1];
    FigMotionPostMultiplyScalingTranslationToTransform(a6, 1.0 / v12, (1.0 - (1.0 / v12)) * v13, 1.0 / v12, (1.0 - (1.0 / v12)) * v14);
  }

  return 0;
}

float FigMotionRotationMatrixFromQuaternion(double *a1, int a2, float *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  if (a2)
  {
    v4 = -v4;
    v6 = -a1[3];
  }

  else
  {
    v6 = a1[3];
  }

  v7 = v3 + v3;
  v8 = v4 + v4;
  v9 = v6 + v6;
  v10 = v3;
  v11 = v4;
  v12 = v6;
  v13 = v12 * v9;
  v14 = (1.0 - (v11 * v8)) - v13;
  v15 = 1.0 - (v10 * v7);
  v16 = v15 - v13;
  a3[8] = v15 - (v11 * v8);
  v17 = v11 * v9;
  v18 = v5;
  v19 = v18 * v7;
  v20 = v17 - v19;
  a3[4] = v16;
  a3[5] = v19 + v17;
  v21 = (v10 * v8) - (v18 * v9);
  *a3 = v14;
  a3[1] = (v10 * v8) + (v18 * v9);
  v22 = v10 * v9;
  v23 = v18 * v8;
  a3[2] = v22 - v23;
  a3[3] = v21;
  result = v23 + v22;
  a3[6] = result;
  a3[7] = v20;
  return result;
}

void FigMotionAttitudeFromQuaternion(long double *a1, double a2, double a3, double a4, double a5)
{
  v9 = a4 + a4;
  v10 = a5 + a5;
  v11 = a3 + a3;
  v12 = 1.0 - a3 * (a3 + a3);
  a1[2] = -atan2(a3 * (a4 + a4) - a2 * (a5 + a5), v12 - a5 * (a5 + a5));
  *a1 = -atan2(a3 * v10 - a2 * v9, v12 - a4 * v9);
  a1[1] = asin(a2 * v11 + a4 * v10);
}

float FigMotionAdjustParallaxShiftForScalingFactor(float result, double a2, float a3, float a4)
{
  if (a3 > 0.0 && vabds_f32(a3, a4) > 0.001)
  {
    return result * (a4 / a3);
  }

  return result;
}

uint64_t FigMotionComputeDistortionCenter(const __CFDictionary *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, float64x2_t *a6, float a7, float a8, double a9, uint64_t a10, uint64_t a11)
{
  value = 0;
  point = *MEMORY[0x1E695EFF8];
  v25 = point;
  v23 = point;
  if (a1 && a6)
  {
    v13 = a5;
    v14 = a4;
    v18 = (a2 + -1.0) * 0.5;
    v19 = (a3 + -1.0) * 0.5;
    v26.f64[0] = v18;
    v26.f64[1] = v19;
    if (FigMotionComputeSensorCroppedReferenceCenter(a1, &v25, a3, a4, a5, a6, a10, a11))
    {
      if (CFDictionaryGetValueIfPresent(a1, *off_1E798B250, &value) && CGPointMakeWithDictionaryRepresentation(value, &point))
      {
        v26.f64[0] = v18 + (point.x - v25.f64[0]) * a8 * v14;
        v26.f64[1] = v19 + (point.y - v25.f64[1]) * a8 * v13;
      }

      else if (CFDictionaryGetValueIfPresent(a1, *off_1E798B520, &value) && CGPointMakeWithDictionaryRepresentation(value, &v23))
      {
        v26.f64[0] = v18 + (v23.x - v25.f64[0]) * a8 * v14;
        v26.f64[1] = v19 + (v23.y - v25.f64[1]) * a8 * v13;
        if (FigMotionAdjustPointForSphereMovement(a1, &v26, a7, a8, a9, v20, v21))
        {
          FigMotionComputeDistortionCenter_cold_1();
        }
      }
    }

    result = 0;
    *a6 = v26;
  }

  else
  {
    FigMotionComputeDistortionCenter_cold_2(&v26);
    return LODWORD(v26.f64[0]);
  }

  return result;
}

uint64_t FigMotionMapPointFromRawToBuffer(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, float64_t a6, float64_t a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a1 && a5)
  {
    v12 = a4;
    v13 = a3;
    v16 = MEMORY[0x1E695F058];
    v32 = *(MEMORY[0x1E695F058] + 16);
    v33 = *MEMORY[0x1E695F058];
    v36 = *MEMORY[0x1E695F058];
    v37 = v32;
    SensorValidCropRect = FigMotionGetSensorValidCropRect(a1, &v36, a3, a4, a5, a9, a10, a11, *&v32.width);
    v18 = SensorValidCropRect;
    if (SensorValidCropRect)
    {
      FigMotionMapPointFromRawToBuffer_cold_1(SensorValidCropRect);
    }

    else
    {
      FigCFDictionaryGetCGRectIfPresent();
      v39.origin = v33;
      v39.size = v32;
      if (CGRectEqualToRect(v39, *v16))
      {
        v19 = -1;
      }

      else
      {
        v19 = 0;
      }

      v20 = vdupq_n_s64(v19);
      v21.i64[0] = a2;
      v21.i64[1] = SHIDWORD(a2);
      v22 = vbslq_s8(v20, vcvtq_f64_s64(v21), v32);
      __asm { FMOV            V1.2D, #-1.0 }

      v21.i64[0] = v13;
      v21.i64[1] = v12;
      __asm { FMOV            V5.2D, #0.5 }

      v29 = vmlaq_f64(vbicq_s8(v33, v20), _Q5, vaddq_f64(v22, _Q1));
      v30 = vmlaq_f64(v36, _Q5, vaddq_f64(v37, _Q1));
      _Q5.f64[0] = a6;
      _Q5.f64[1] = a7;
      *a5 = vmlaq_f64(v29, vcvtq_f64_s64(v21), vmulq_n_f64(vsubq_f64(_Q5, v30), a8));
    }
  }

  else
  {
    FigMotionMapPointFromRawToBuffer_cold_2(&v38);
    return v38;
  }

  return v18;
}

uint64_t FigMotionComputeRawSensorCenterInBuffer(const __CFDictionary *a1, uint64_t a2, int a3, int a4, float64x2_t *a5, float a6)
{
  if (a1 && a5)
  {
    FigCFDictionaryGetIntIfPresent();
    FigMotionComputeRawSensorCenterInBuffer_cold_2(&v7);
  }

  else
  {
    FigMotionComputeRawSensorCenterInBuffer_cold_3(&v7);
  }

  return v7;
}

void FigMotionComputeParallaxShift(uint64_t a1, uint64_t a2, float a3, float a4, float a5, uint64_t a6, int a7, uint64_t a8)
{
  v26 = NAN;
  if (a2)
  {
    v14 = *(a2 + 524);
  }

  else
  {
    v14 = 0.0;
  }

  *a8 = 0;
  FloatIfPresent = FigCFDictionaryGetFloatIfPresent();
  v16 = FigCFDictionaryGetFloatIfPresent();
  FigCFDictionaryGetFloatIfPresent();
  if (v16)
  {
    v17 = FloatIfPresent == 0;
  }

  else
  {
    v17 = 1;
  }

  v19 = v17 || a7 != 0;
  if (a2 && (v19 & 1) != 0)
  {
    v20 = a2 + 4 * *(a2 + 448);
    v21 = *(v20 + 484);
    v26 = *(v20 + 496);
    v22 = 1.0;
  }

  else
  {
    v22 = 1.0;
    v21 = NAN;
  }

  v23 = v21 + -10.0;
  v24 = 0.0;
  if (v26 > 0.0 && v23 > v26)
  {
    v24 = ((v22 * NAN) * a5) / fmaxf(((v23 * v26) / (v23 - v26)) / 1000.0, v14);
  }

  *a8 = v24 * a3;
  *(a8 + 4) = v24 * a4;
}

uint64_t FigMotionComputeWideToNarrowShift(const __CFDictionary *a1, const __CFDictionary *a2, const void *a3, float64x2_t *a4, float64x2_t *a5, unsigned int a6, unsigned int a7, int a8, double a9, double a10, __n128 a11, uint64_t a12, int *a13, float32x2_t *a14, double *a15, float64x2_t *a16)
{
  if (!a1)
  {
    FigMotionComputeWideToNarrowShift_cold_11(&v93);
    return v93.u32[0];
  }

  if (!a14)
  {
    FigMotionComputeWideToNarrowShift_cold_10(&v93);
    return v93.u32[0];
  }

  if (!a15)
  {
    FigMotionComputeWideToNarrowShift_cold_9(&v93);
    return v93.u32[0];
  }

  v86 = a11.n128_f32[0];
  HIDWORD(v82) = a7;
  v21 = a13;
  if (!a13)
  {
    v21 = &a14[12] + 1;
  }

  v22 = *v21;
  v97 = 0;
  v23 = *off_1E798B540;
  Value = CFDictionaryGetValue(a1, *off_1E798B540);
  v31 = bravoTransitionCameraIndexFromPortType(Value, &v97, v25, v26, v27, v28, v29, v30, v82);
  if (v31)
  {
    v80 = v31;
    FigMotionComputeWideToNarrowShift_cold_1();
    return v80;
  }

  v96 = 0;
  if (a2)
  {
    a3 = CFDictionaryGetValue(a2, v23);
  }

  v38 = bravoTransitionCameraIndexFromPortType(a3, &v96, v32, v33, v34, v35, v36, v37, v83);
  if (v38)
  {
    v80 = v38;
    FigMotionComputeWideToNarrowShift_cold_2();
    return v80;
  }

  v43 = v96;
  v44 = v97;
  if (!a2 && !v97)
  {
    a14[20].i32[v96 + 1] = a14[22].i32[0];
  }

  v45 = a14[19].f32[v44];
  if (v45 <= 0.0)
  {
    v46 = 1.0;
  }

  else
  {
    v46 = 1.0 / v45;
  }

  v47 = a14[19].f32[v43];
  if (v47 <= 0.0)
  {
    v48 = 1.0;
  }

  else
  {
    v48 = 1.0 / v47;
  }

  v95 = 1.0;
  if (FigMotionComputeLensPositionScalingFactor(a1, a6, v39, (a14[20].i32[v44 + 1] * a8), v40, &v95, v41, v42))
  {
    FigMotionComputeWideToNarrowShift_cold_3();
  }

  v94 = 0;
  v51 = v46 * v95;
  v52 = 0uLL;
  v90 = v46 * v95;
  if ((v22 & 1) == 0)
  {
    v53 = 0.0;
    v54 = 0.0;
    v55 = 0.0;
    v88 = 0u;
    if ((v22 & 4) == 0)
    {
      goto LABEL_42;
    }

LABEL_36:
    v72 = v96;
    v71 = v97;
    if (v97 == 2)
    {
      a14[68].i32[1] = v96;
      v73 = 1;
      if (!a2)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v73 = 0;
      if (!a2)
      {
LABEL_41:
        v74 = &a14[6 * BravoCurrentToReferenceMapping[3 * v72 + v71]];
        FigMotionComputeParallaxShift(a1, &a14[12] + 4, v74[27].f32[1], v74[29].f32[1], v51, v71, v73, &a14[69]);
        v51 = v90;
        v75 = a14[69];
        v94 = vmla_n_f32(v94, v75, v86);
        v52 = vcvtq_f64_f32(v75);
        v54 = v94.f32[1];
        goto LABEL_42;
      }
    }

    FigMotionStashFocalLengthData(a2, &a14[12] + 4, v72);
    FigCFDictionaryGetInt32IfPresent();
    v51 = v90;
    v72 = v96;
    v71 = v97;
    goto LABEL_41;
  }

  v56 = FigMotionComputeAverageSpherePosition(a1, &v94, v49, v50);
  if (v56)
  {
    v80 = v56;
    FigMotionComputeWideToNarrowShift_cold_4();
    return v80;
  }

  v60 = v96;
  v59 = v97;
  v51 = v90;
  v61 = v90 * ((v48 * ((((a14[22].f32[BravoCurrentToReferenceMapping[3 * v96 + v97] + 1] * a14[17].f32[v97 + 1]) / a14[17].f32[v96 + 1]) * a14[20].i32[v97 + 1]) / a14[20].i32[v96 + 1])) / v46);
  if (a2)
  {
    v89 = v90 * ((v48 * ((((a14[22].f32[BravoCurrentToReferenceMapping[3 * v96 + v97] + 1] * a14[17].f32[v97 + 1]) / a14[17].f32[v96 + 1]) * a14[20].i32[v97 + 1]) / a14[20].i32[v96 + 1])) / v46);
    v93 = 0;
    v62 = FigMotionComputeAverageSpherePosition(a2, &v93, v57, v58);
    if (v62)
    {
      v80 = v62;
      FigMotionComputeWideToNarrowShift_cold_5(v62, &v93);
      return v80;
    }

    v61 = v89;
    v51 = v90;
    v94 = vmla_n_f32(vmul_n_f32(vneg_f32(v93), v89), v94, v90);
    v60 = v96;
    v59 = v97;
    v54 = v94.f32[1];
  }

  else
  {
    v63 = &a14[v97 + 6];
    if (vabds_f32(v94.f32[0], *v63) < (0.8 / v90))
    {
      v64 = v63[1];
      if (vabds_f32(v94.f32[1], v64) < (0.8 / v90))
      {
        v94.f32[0] = (v94.f32[0] * 0.06) + (*v63 * 0.94);
        v94.f32[1] = (v94.f32[1] * 0.06) + (v64 * 0.94);
      }
    }

    v65 = v94;
    *v63 = v94;
    v66 = &a14[v60 + 70];
    v67 = a14[v60 + 3];
    *v66 = v67;
    v68 = &a14[v60 + 6];
    v69 = v67.f32[0];
    if (vabds_f32(v67.f32[0], *v68) < (0.8 / v61))
    {
      v70 = v68[1];
      if (vabds_f32(v67.f32[1], v70) < (0.8 / v61))
      {
        *v66 = (v67.f32[0] * 0.06) + (*v68 * 0.94);
        *(v66 + 4) = (v67.f32[1] * 0.06) + (v70 * 0.94);
        v67 = *v66;
        LODWORD(v69) = *v66;
      }
    }

    *v68 = v67;
    v54 = (v65.f32[1] * v90) - (*(v66 + 4) * v61);
    v94.f32[0] = (v65.f32[0] * v90) - (v69 * v61);
    v94.f32[1] = v54;
  }

  v55 = v94.f32[0];
  v53 = v54;
  v88 = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(vneg_f32(a14[v60 + 9]), v61), a14[v59 + 9], v51));
  v52 = 0uLL;
  if ((v22 & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_42:
  v76 = 0uLL;
  if ((v22 & 2) != 0)
  {
    v93 = 0;
    if (a5)
    {
      if (a4)
      {
        v91 = v52;
        v92 = vmul_f32(vcvt_f32_s32(vadd_s32(__PAIR64__(v84, a6), -1)), 0x3F0000003F000000);
        v78 = v96;
        v77 = v97;
        a14[v96 + 13] = vcvt_f32_f64(*a5);
        a14[v77 + 13] = vcvt_f32_f64(*a4);
        a14[68].i32[0] = v78;
        v79 = FigMotionComputeBravoTranslation(a1, &a14[12] + 4, v77, &v92, &v93, v95, v51);
        if (v79)
        {
          v80 = v79;
          FigMotionComputeWideToNarrowShift_cold_6();
          return v80;
        }

        v94.f32[0] = v93.f32[0] + v94.f32[0];
        v54 = v93.f32[1] + v94.f32[1];
        v76 = vcvtq_f64_f32(v93);
        v52 = v91;
        goto LABEL_47;
      }

      FigMotionComputeWideToNarrowShift_cold_7(v98);
    }

    else
    {
      FigMotionComputeWideToNarrowShift_cold_8(v98);
    }

    return v98[0];
  }

LABEL_47:
  *a15 = v94.f32[0];
  a15[1] = v54;
  v80 = 0;
  if (a16)
  {
    a16->f64[0] = v55;
    a16->f64[1] = v53;
    a16[1] = v88;
    a16[2] = v52;
    a16[3] = v76;
  }

  return v80;
}

uint64_t FigMotionSphereShiftStateUpdateWithMetadata(uint64_t a1, CFDictionaryRef theDict)
{
  v36 = 0;
  Value = CFDictionaryGetValue(theDict, *off_1E798B540);
  v11 = bravoTransitionCameraIndexFromPortType(Value, &v36, v5, v6, v7, v8, v9, v10, v31);
  v12 = v11;
  if (v11)
  {
    FigMotionSphereShiftStateUpdateWithMetadata_cold_1(v11);
  }

  else
  {
    HIDWORD(v32) = 0;
    FigMotionStashFocalLengthData(theDict, a1 + 100, v36);
    FigMotionStashQuadraBinningFactor(theDict, a1 + 100, v36);
    FigMotionComputeShiftStateAverageSpherePositionWithFrameSkipping(a1, theDict, v36);
    FigMotionUpdateBaseZoomFactorAdjustment(theDict, a1 + 100, v36);
    v13 = 0;
    *(a1 + 72 + 8 * v36) = vcvt_f32_f64(vmlaq_n_f64(vmulq_n_f64(vcvtq_f64_f32(*(a1 + 72 + 8 * v36)), 1.0 - *(a1 + 632)), vcvtq_f64_f32(*(a1 + 24 + 8 * v36)), *(a1 + 632)));
    v14 = *off_1E798A0D8;
    v35[0] = *off_1E798A0C0;
    v35[1] = v14;
    v35[2] = *off_1E798A0D0;
    v34 = 0;
    v15 = *off_1E798B730;
    key = *off_1E798B728;
    do
    {
      v16 = v35[v13];
      if (!CFEqual(Value, v16) && !bravoTransitionCameraIndexFromPortType(v16, &v34, v17, v18, v19, v20, v21, v22, v32))
      {
        v23 = CFDictionaryGetValue(theDict, v15);
        if (v23)
        {
          v24 = v16;
        }

        else
        {
          v23 = theDict;
          v24 = key;
        }

        v25 = CFDictionaryGetValue(v23, v24);
        v26 = v25;
        if (v25)
        {
          FigMotionStashFocalLengthData(v25, a1 + 100, v34);
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetFloatIfPresent();
        }

        FigMotionComputeShiftStateAverageSpherePositionWithFrameSkipping(a1, v26, v34);
        *(a1 + 72 + 8 * v34) = vcvt_f32_f64(vmlaq_n_f64(vmulq_n_f64(vcvtq_f64_f32(*(a1 + 72 + 8 * v34)), 1.0 - *(a1 + 632)), vcvtq_f64_f32(*(a1 + 24 + 8 * v34)), *(a1 + 632)));
      }

      ++v13;
    }

    while (v13 != 3);
    v27 = *(a1 + 548);
    v28 = v36;
    if (v27 == -1 || v36 != v27)
    {
      *(a1 + 176) = *(a1 + 168);
    }

    *(a1 + 548) = v28;
    return HIDWORD(v32);
  }

  return v12;
}

float32x2_t FigMotionComputeShiftStateAverageSpherePositionWithFrameSkipping(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a1 + 560;
  v5 = a3;
  *(a1 + 560 + 8 * a3) = 0;
  if (a2 && FigCFDictionaryGetInt32IfPresent() && FigCFDictionaryGetInt32IfPresent())
  {
    result = vmul_f32(vcvt_f32_s32(0), vdup_n_s32(0x3B800000u));
    *(v4 + 8 * v5) = result;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 96) | v7;
  *(a1 + 96) |= v7;
  if (v8)
  {
    v9 = a1 + 24;
    v10 = (a1 + 8 * v5);
    if (v7)
    {
      v11 = *(v4 + 8 * v5);
      result = vmul_f32(vadd_f32(*(v9 + 8 * v5), v11), 0x3F0000003F000000);
      *(v9 + 8 * v5) = result;
      *v10 = v11;
    }

    else
    {
      result = vmul_f32(vadd_f32(*v10, *(v9 + 8 * v5)), 0x3F0000003F000000);
      *(v9 + 8 * v5) = result;
    }
  }

  return result;
}

uint64_t FigMotionHardwareAvailable()
{
  v4 = 0u;
  v5 = 0u;
  *__big = 0u;
  v3 = 0u;
  v1 = 64;
  if ((FigMotionHardwareAvailable_checked & 1) == 0)
  {
    FigMotionHardwareAvailable_available = 1;
    if (!sysctlbyname("hw.model", __big, &v1, 0, 0) && strnstr(__big, "DEV", 0x40uLL))
    {
      FigMotionHardwareAvailable_available = 0;
    }

    FigMotionHardwareAvailable_checked = 1;
  }

  return FigMotionHardwareAvailable_available;
}

uint64_t FigMotionComputeAverageQuaternionFromArray(const __CFArray *a1, _OWORD *a2, double a3, double a4)
{
  if (!a1)
  {
    FigMotionComputeAverageQuaternionFromArray_cold_4(&v33);
    return v33;
  }

  Count = CFArrayGetCount(a1);
  v36 = 0u;
  v37 = 0u;
  if (Count < 1)
  {
    goto LABEL_21;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = Count & 0x7FFFFFFF;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
    if (ValueAtIndex)
    {
      v15 = ValueAtIndex;
      if (CFArrayGetCount(ValueAtIndex) >= 1)
      {
        v16 = CFArrayGetValueAtIndex(v15, 0);
        if (v16)
        {
          v17 = v16;
          v18 = CFArrayGetValueAtIndex(v15, 2);
          if (v18)
          {
            v19 = v18;
            valuePtr = 0.0;
            CFNumberGetValue(v17, kCFNumberDoubleType, &valuePtr);
            v20 = valuePtr;
            if (valuePtr > a3 + -0.0025 && valuePtr < a4 + 0.0025 && v10 <= 19)
            {
              v33 = 0u;
              v34 = 0u;
              v40.length = CFDataGetLength(v19);
              v40.location = 0;
              CFDataGetBytes(v19, v40, &v33);
              v20 = valuePtr;
              v21 = &v38[48 * v10];
              v21[1] = valuePtr;
              v22 = v34;
              *(v21 + 1) = v33;
              *(v21 + 2) = v22;
              ++v10;
            }

            v11 |= vabdd_f64(v20, a3) < 0.0035;
            v12 |= vabdd_f64(v20, a4) < 0.0035;
          }
        }
      }
    }

    ++v9;
  }

  while (v13 != v9);
  if (!v10)
  {
LABEL_21:
    FigMotionComputeAverageQuaternionFromArray_cold_3(&v33);
    return v33;
  }

  if ((v11 & 1) == 0)
  {
    FigMotionComputeAverageQuaternionFromArray_cold_1(&v33);
    return v33;
  }

  if ((v12 & 1) == 0)
  {
    FigMotionComputeAverageQuaternionFromArray_cold_2(&v33);
    return v33;
  }

  v36 = 0x3FF0000000000000uLL;
  v37 = 0uLL;
  if (v10 >= 1)
  {
    v23 = v10;
    v24 = &v39;
    v25 = 1;
    do
    {
      v26 = 1.0 - 1.0 / v25;
      FigMotionInterpolateQuaternionsByAngle(v24, v26, &v36);
      *&v36 = v27;
      *(&v36 + 1) = v28;
      *&v37 = v29;
      *(&v37 + 1) = v30;
      v24 += 6;
      ++v25;
      --v23;
    }

    while (v23);
  }

  result = 0;
  v32 = v37;
  *a2 = v36;
  a2[1] = v32;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  v66 = 0;
  if (!a3)
  {
    FigSampleBufferProcessorCreateForMotionAttachments_cold_17(&valuePtr);
LABEL_60:
    v53 = valuePtr;
    goto LABEL_53;
  }

  v3 = a3;
  v5 = *MEMORY[0x1E695E480];
  FigSampleBufferProcessorGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v53 = v6;
    FigSampleBufferProcessorCreateForMotionAttachments_cold_1();
    goto LABEL_53;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 464) = 0x100000001;
  *(DerivedStorage + 40) = 0;
  *(DerivedStorage + 560) = 0;
  *(DerivedStorage + 64) = 3;
  *(DerivedStorage + 592) = 0;
  *(DerivedStorage + 568) = 0x3F6CAC083126E979;
  FigMotionInitializeQuaternion((DerivedStorage + 480));
  *(DerivedStorage + 472) = 0;
  if (a2)
  {
    FigCFDictionaryGetIntIfPresent();
    CFDictionaryGetValue(a2, *off_1E798A9D0);
    FigCFDictionaryGetDoubleIfPresent();
    Value = CFDictionaryGetValue(a2, *off_1E798A968);
    if (!Value)
    {
      FigSampleBufferProcessorCreateForMotionAttachments_cold_8(&valuePtr);
      goto LABEL_60;
    }

    v9 = Value;
    theDict = CFDictionaryGetValue(a2, *off_1E798A970);
    if (!theDict)
    {
      FigSampleBufferProcessorCreateForMotionAttachments_cold_7(&valuePtr);
      goto LABEL_60;
    }

    Count = CFArrayGetCount(v9);
    if (Count > 7)
    {
      FigSampleBufferProcessorCreateForMotionAttachments_cold_6(&valuePtr);
      goto LABEL_60;
    }

    v11 = Count;
    v56 = v3;
    v57 = v5;
    v64 = a2;
    if (Count >= 1)
    {
      v12 = 0;
      v13 = *off_1E798A0E8;
      key = *off_1E798A9B8;
      v61 = *off_1E7989F18;
      cf2 = *off_1E798A0E0;
      v58 = *off_1E798A0F8;
      v59 = *off_1E7989EF8;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
        if (!ValueAtIndex)
        {
          FigSampleBufferProcessorCreateForMotionAttachments_cold_5(&valuePtr);
          goto LABEL_60;
        }

        v15 = ValueAtIndex;
        if (!CFEqual(ValueAtIndex, v13))
        {
          v65 = 0;
          v22 = portIndexFromPortType(v15, &v65, v16, v17, v18, v19, v20, v21, v55);
          if (v22)
          {
            v53 = v22;
            FigSampleBufferProcessorCreateForMotionAttachments_cold_2();
            goto LABEL_53;
          }

          v23 = v65;
          v24 = CFDictionaryGetValue(a2, key);
          if (v24)
          {
            v25 = CFDictionaryGetValue(v24, v15);
          }

          else
          {
            v25 = 0;
          }

          v26 = CFDictionaryGetValue(theDict, v15);
          if (!v26)
          {
            FigSampleBufferProcessorCreateForMotionAttachments_cold_4(&valuePtr);
            goto LABEL_60;
          }

          v27 = v26;
          LODWORD(valuePtr) = 0;
          v28 = CFDictionaryGetValue(v26, v61);
          if (v28)
          {
            CFNumberGetValue(v28, kCFNumberFloatType, &valuePtr);
          }

          if (CFEqual(v15, cf2) || CFEqual(v15, v58))
          {
            FigCFDictionaryGetBooleanIfPresent();
          }

          v29 = CFDictionaryGetValue(v27, v59);
          if (v29)
          {
            CameraCharacterizationData = FigMotionGetCameraCharacterizationData(v29, v25, v15, DerivedStorage + 72 + 56 * v23, *&valuePtr);
            if (CameraCharacterizationData)
            {
              v53 = CameraCharacterizationData;
              FigSampleBufferProcessorCreateForMotionAttachments_cold_3(CameraCharacterizationData, &valuePtr, &v65);
              goto LABEL_53;
            }
          }

          a2 = v64;
        }

        ++v12;
      }

      while (v11 != v12);
    }

    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    v31 = CFDictionaryGetValue(a2, @"MotionAttachmentTypes");
    v5 = v57;
    if (v31)
    {
      v32 = v31;
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(v32))
      {
        Mutable = CFDictionaryCreateMutable(v57, 8, MEMORY[0x1E695E9D8], 0);
        for (i = 0; i != 8; ++i)
        {
          CFDictionarySetValue(Mutable, *(&off_1E7999B20 + i), dword_1AD0562C8[i]);
        }

        v36 = CFArrayGetCount(v32);
        if (v36 >= 1)
        {
          v37 = 0;
          v38 = v36 & 0x7FFFFFFF;
          do
          {
            v39 = CFArrayGetValueAtIndex(v32, v37);
            valuePtr = 0;
            if (CFDictionaryGetValueIfPresent(Mutable, v39, &valuePtr))
            {
              *(DerivedStorage + 40) |= valuePtr;
            }

            ++v37;
          }

          while (v38 != v37);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }

    FigCFDictionaryGetIntIfPresent();
    v40 = CFDictionaryGetValue(v64, @"MotionCallbackThreadPriority");
    v3 = v56;
    if (v40)
    {
      CFNumberGetValue(v40, kCFNumberSInt32Type, &v66);
    }
  }

  *v3 = cf;
  cf = 0;
  *(DerivedStorage + 24) = 1;
  *(DerivedStorage + 28) = 2;
  v41 = malloc_type_calloc(*(DerivedStorage + 64), 8uLL, 0x2004093837F09uLL);
  *(DerivedStorage + 48) = v41;
  if (!v41)
  {
    FigSampleBufferProcessorCreateForMotionAttachments_cold_16(&valuePtr);
    goto LABEL_60;
  }

  v42 = *(DerivedStorage + 40);
  if (!v42 || v42 >= 512)
  {
    FigSampleBufferProcessorCreateForMotionAttachments_cold_15(&valuePtr);
    goto LABEL_60;
  }

  if ((v42 & 0x180) != 0)
  {
    *(DerivedStorage + 576) = 1;
    v43 = malloc_type_malloc(12 * *(DerivedStorage + 64) + 12, 0x10000403E1C8BA9uLL);
    *(DerivedStorage + 640) = v43;
    if (v43)
    {
      v44 = malloc_type_malloc(0x14A0uLL, 0x1000040AC875A91uLL);
      *(DerivedStorage + 600) = v44;
      if (v44)
      {
        v45 = CFArrayCreateMutable(v5, (*(DerivedStorage + 64) << 8) + 256, MEMORY[0x1E695E9C0]);
        *(DerivedStorage + 584) = v45;
        if (v45)
        {
          v46 = 0;
          v47 = 1;
          v48 = MEMORY[0x1E695E9C0];
          do
          {
            v49 = v47;
            v50 = CFArrayCreateMutable(v5, (*(DerivedStorage + 64) << 9) + 512, v48);
            *(DerivedStorage + 624 + 8 * v46) = v50;
            if (!v50)
            {
              FigSampleBufferProcessorCreateForMotionAttachments_cold_11(&valuePtr);
              goto LABEL_60;
            }

            v47 = 0;
            v46 = 1;
          }

          while ((v49 & 1) != 0);
          v51 = malloc_type_malloc(0x2FD0uLL, 0x1000040504FFAC1uLL);
          *(DerivedStorage + 608) = v51;
          if (v51)
          {
            v52 = malloc_type_malloc(0x528uLL, 0x10000403E1C8BA9uLL);
            *(DerivedStorage + 616) = v52;
            if (v52)
            {
              goto LABEL_52;
            }

            FigSampleBufferProcessorCreateForMotionAttachments_cold_9(&valuePtr);
          }

          else
          {
            FigSampleBufferProcessorCreateForMotionAttachments_cold_10(&valuePtr);
          }
        }

        else
        {
          FigSampleBufferProcessorCreateForMotionAttachments_cold_12(&valuePtr);
        }
      }

      else
      {
        FigSampleBufferProcessorCreateForMotionAttachments_cold_13(&valuePtr);
      }
    }

    else
    {
      FigSampleBufferProcessorCreateForMotionAttachments_cold_14(&valuePtr);
    }

    goto LABEL_60;
  }

  *(DerivedStorage + 32) = FigCoreMotionAllocWithPriority(1, 1, 1, v66, 0.033333, 0.005);
LABEL_52:
  *(DerivedStorage + 656) = 0;
  *(DerivedStorage + 664) = 0;
  sbp_ma_resetStorage(DerivedStorage);
  v53 = 0;
LABEL_53:
  if (cf)
  {
    CFRelease(cf);
  }

  return v53;
}

void sbp_ma_resetStorage(uint64_t a1)
{
  *(a1 + 44) = 0;
  *(a1 + 56) = -*(a1 + 64);
  sbp_ma_releaseBufferedFrames(a1);
  *(a1 + 652) = 0;
  *(a1 + 648) = ~*(a1 + 64);
  v2 = *(a1 + 656);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 656) = 0;
  }
}

uint64_t sbp_ma_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = 0;
  if (!*DerivedStorage)
  {
    v2 = DerivedStorage;
    *DerivedStorage = 1;
    v3 = *(DerivedStorage + 32);
    if (v3)
    {
      FigCoreMotionRelease(v3);
      *(v2 + 32) = 0;
    }

    v4 = *(v2 + 600);
    if (v4)
    {
      *(v2 + 600) = 0;
      free(v4);
    }

    v5 = *(v2 + 608);
    if (v5)
    {
      *(v2 + 608) = 0;
      free(v5);
    }

    v6 = *(v2 + 616);
    if (v6)
    {
      *(v2 + 616) = 0;
      free(v6);
    }

    v7 = *(v2 + 584);
    if (v7)
    {
      CFRelease(v7);
      *(v2 + 584) = 0;
    }

    v8 = 0;
    v9 = v2 + 624;
    v10 = 1;
    do
    {
      v11 = v10;
      v12 = *(v9 + 8 * v8);
      if (v12)
      {
        CFRelease(v12);
        *(v9 + 8 * v8) = 0;
      }

      v10 = 0;
      v8 = 1;
    }

    while ((v11 & 1) != 0);
    v13 = *(v2 + 640);
    if (v13)
    {
      *(v2 + 640) = 0;
      free(v13);
    }

    sbp_ma_releaseBufferedFrames(v2);
    v14 = *(v2 + 48);
    if (v14)
    {
      *(v2 + 48) = 0;
      free(v14);
    }

    *(v2 + 24) = 0;
  }

  return 0;
}

__CFString *sbp_ma_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_MotionAttachments %p>", a1);
  return Mutable;
}

uint64_t sbp_ma_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  if (a1 && a4)
  {
    if (!*CMBaseObjectGetDerivedStorage())
    {
      return 4294954512;
    }

    emitter = fig_log_get_emitter();
    v13 = v9;
    v14 = 4294954511;
    v15 = 211;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v13 = v9;
    v14 = 4294954516;
    v15 = 206;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v14, "|___ fsbp_MotionAttachments ___|", v15, v13, v11, v12, a9);
}

uint64_t sbp_ma_setProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  if (a1)
  {
    if (!*CMBaseObjectGetDerivedStorage())
    {
      return 4294954512;
    }

    emitter = fig_log_get_emitter();
    v13 = v9;
    v14 = 4294954511;
    v15 = 252;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v13 = v9;
    v14 = 4294954516;
    v15 = 247;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v14, "|___ fsbp_MotionAttachments ___|", v15, v13, v11, v12, a9);
}

void sbp_ma_releaseBufferedFrames(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 64);
    if (v2 >= 1)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(*(a1 + 48) + 8 * i);
        if (v4)
        {
          CFRelease(v4);
          *(*(a1 + 48) + 8 * i) = 0;
          v2 = *(a1 + 64);
        }
      }
    }
  }
}

uint64_t sbp_ma_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0FLL, "|___ fsbp_MotionAttachments ___|", 0x13C, v9, v14, v15, a9);
  }

  else
  {
    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 16) = a3;
    return 0;
  }
}

uint64_t sbp_ma_processSampleBuffer(uint64_t a1, void *a2)
{
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (*DerivedStorage)
  {
    sbp_ma_processSampleBuffer_cold_1(&v37 + 1);
    v30 = 0;
    v24 = HIDWORD(v37);
    goto LABEL_38;
  }

  if (!DerivedStorage[576])
  {
    goto LABEL_27;
  }

  v7 = *off_1E798A3C8;
  v8 = CMGetAttachment(a2, *off_1E798A3C8, 0);
  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = v8;
  v10 = *off_1E798CE60;
  Value = CFDictionaryGetValue(v8, *off_1E798CE60);
  if (!Value)
  {
    v21 = CMGetAttachment(a2, v7, 0);
    v22 = v21;
    if (*(v6 + 664))
    {
      v23 = CFDictionaryGetValue(v21, *off_1E798CE58);
      if (!v23)
      {
        sbp_ma_processSampleBuffer_cold_8(&v37 + 1);
        v24 = HIDWORD(v37);
        if (!HIDWORD(v37))
        {
          goto LABEL_27;
        }

        goto LABEL_22;
      }

      v22 = v23;
      CFDictionaryGetValue(v23, *off_1E798CE68);
      if (FigCFEqual())
      {
        goto LABEL_27;
      }
    }

    v24 = sbp_ma_extractAndBufferISPMotionDataFromMetadataDictionary(v6, v22);
    if (!v24)
    {
      goto LABEL_27;
    }

LABEL_22:
    sbp_ma_processSampleBuffer_cold_9(v24);
LABEL_48:
    v30 = 0;
    goto LABEL_38;
  }

  v12 = Value;
  if (*(v6 + 64) != 1)
  {
    sbp_ma_processSampleBuffer_cold_2();
  }

  if (*(v6 + 44))
  {
    sbp_ma_processSampleBuffer_cold_3();
  }

  if (*(v6 + 64) == 1)
  {
    v13 = *(v6 + 656);
    if (v13)
    {
      CFRelease(v13);
      *(v6 + 656) = 0;
    }

    *(v6 + 664) = 1;
    FormatDescription = CMSampleBufferGetFormatDescription(a2);
    if (FormatDescription)
    {
      v15 = FormatDescription;
      v36 = v2;
      Count = CFArrayGetCount(v12);
      *(v6 + 656) = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Count >= 1)
      {
        v17 = 0;
        v18 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v12, v17);
          v20 = sbp_ma_processInitialCinematicFutureMetadata(v6, v18, ValueAtIndex, v15);
          if (v20)
          {
            break;
          }

          ++v17;
          v18 = ValueAtIndex;
          if (Count == v17)
          {
            goto LABEL_24;
          }
        }

        v24 = v20;
        sbp_ma_processSampleBuffer_cold_4();
        goto LABEL_44;
      }

      ValueAtIndex = 0;
LABEL_24:
      v25 = CFDictionaryGetValue(v9, *off_1E798CE58);
      if (v25)
      {
        v26 = sbp_ma_processInitialCinematicFutureMetadata(v6, ValueAtIndex, v25, v15);
        if (v26)
        {
          v24 = v26;
          sbp_ma_processSampleBuffer_cold_5();
LABEL_44:
          v3 = v2;
LABEL_45:
          v35 = *(v6 + 656);
          if (v35)
          {
            CFRelease(v35);
            *(v6 + 656) = 0;
          }

          fig_log_get_emitter();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v3, v36, v37, v38, v39, v40, v41);
          goto LABEL_48;
        }

        CFDictionaryRemoveValue(v9, v10);
        goto LABEL_27;
      }

      sbp_ma_processSampleBuffer_cold_6(&v37 + 1);
      v24 = HIDWORD(v37);
      v3 = v2;
    }

    else
    {
      sbp_ma_processSampleBuffer_cold_7(&v37 + 1);
      v24 = HIDWORD(v37);
    }

    if (v24)
    {
      goto LABEL_45;
    }
  }

LABEL_27:
  v27 = *(v6 + 64);
  if (v27)
  {
    if (*(v6 + 44) == v27)
    {
      v28 = *(v6 + 48);
      v29 = *(v6 + 56);
      v30 = *(v28 + 8 * v29);
      *(v28 + 8 * v29) = 0;
    }

    else
    {
      v30 = 0;
    }

    *(*(v6 + 48) + 8 * *(v6 + 60)) = CFRetain(a2);
    FigMotionIncreaseRingIndex((v6 + 60), *(v6 + 64));
    FigMotionIncreaseRingIndex((v6 + 56), *(v6 + 64));
    v31 = *(v6 + 44);
    if (v31 < *(v6 + 64))
    {
      *(v6 + 44) = v31 + 1;
    }
  }

  else
  {
    v30 = CFRetain(a2);
  }

  if (v30)
  {
    v32 = sbp_ma_attachMotionData(v6, v30);
    v24 = v32;
    if (v32)
    {
      sbp_ma_processSampleBuffer_cold_10(v32);
    }
  }

  else
  {
    v24 = 0;
  }

LABEL_38:
  v33 = *(v6 + 8);
  if (v33)
  {
    v33(*(v6 + 16), v24, v30);
    v24 = 0;
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v24;
}

uint64_t sbp_ma_finishPendingProcessing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0FLL, "|___ fsbp_MotionAttachments ___|", 0x4CF, v9, v12, v13, a9);
  }

  else
  {
    v15 = DerivedStorage;
    if (*(DerivedStorage + 64) >= 1)
    {
      v16 = *(DerivedStorage + 56);
      if ((v16 & 0x80000000) == 0)
      {
        for (i = *(*(DerivedStorage + 48) + 8 * v16); i; i = *(*(v15 + 48) + 8 * *(v15 + 56)))
        {
          if (*(v15 + 640))
          {
            FigMotionIncreaseRingIndex((v15 + 648), *(v15 + 64) + 1);
          }

          v18 = sbp_ma_attachMotionData(v15, i);
          v19 = v18;
          if (v18)
          {
            sbp_ma_finishPendingProcessing_cold_1(v18);
          }

          v20 = *(v15 + 8);
          if (v20)
          {
            v20(*(v15 + 16), v19, i);
          }

          CFRelease(i);
          *(*(v15 + 48) + 8 * *(v15 + 56)) = 0;
          FigMotionIncreaseRingIndex((v15 + 56), *(v15 + 64));
        }
      }
    }

    sbp_ma_resetStorage(v15);
    return 0;
  }
}

uint64_t sbp_ma_attachMotionData(uint64_t a1, CMSampleBufferRef sbuf)
{
  memset(&v22, 0, sizeof(v22));
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  if (!FormatDescription)
  {
    sbp_ma_attachMotionData_cold_4(&v21);
    return LODWORD(v21.value);
  }

  v5 = FormatDescription;
  v6 = *off_1E798A3C8;
  v7 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  Mutable = v7;
  if (!v7)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      sbp_ma_attachMotionData_cold_3(&v21);
      return LODWORD(v21.value);
    }
  }

  if (*(a1 + 664))
  {
    v9 = *(a1 + 656);
    if (v9)
    {
      CFDictionarySetValue(Mutable, *off_1E798CE60, v9);
      v10 = *(a1 + 656);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 656) = 0;
      }
    }

    v11 = *off_1E798CE58;
    Value = CFDictionaryGetValue(Mutable, *off_1E798CE58);
    if (Value)
    {
      v13 = Value;
      CFDictionaryGetValue(Value, *off_1E798CE68);
      if (FigCFEqual())
      {
        CFDictionaryRemoveValue(Mutable, v11);
        value_low = 0;
        if (!v7)
        {
          goto LABEL_19;
        }

        return value_low;
      }

      v16 = CFDictionaryGetValue(v13, *off_1E798A420);
      if (v16)
      {
        CMTimeMakeFromDictionary(&v22, v16);
        v21 = v22;
        v17 = a1;
        v18 = v13;
        goto LABEL_18;
      }

      v20 = sbp_ma_attachMotionData_cold_1();
    }

    else
    {
      v20 = sbp_ma_attachMotionData_cold_2();
    }

    value_low = LODWORD(v21.value);
    if ((v20 & 1) == 0)
    {
      return value_low;
    }

    goto LABEL_19;
  }

  v15 = CMGetAttachment(sbuf, *off_1E798A420, 0);
  if (v15)
  {
    CMTimeMakeFromDictionary(&v22, v15);
  }

  else
  {
    CMSampleBufferGetPresentationTimeStamp(&v22, sbuf);
  }

  v21 = v22;
  v17 = a1;
  v18 = Mutable;
LABEL_18:
  value_low = sbp_ma_addMotionDataToMetadataDictionary(v17, v18, &v21, v5);
  if (!v7)
  {
LABEL_19:
    CMSetAttachment(sbuf, v6, Mutable, 1u);
    CFRelease(Mutable);
  }

  return value_low;
}

uint64_t sbp_ma_processInitialCinematicFutureMetadata(uint64_t a1, const __CFDictionary *a2, CFDictionaryRef theDict, const opaqueCMFormatDescription *a4)
{
  v7 = sbp_ma_extractAndBufferISPMotionDataFromMetadataDictionary(a1, theDict);
  if (v7)
  {
    v10 = v7;
    sbp_ma_processInitialCinematicFutureMetadata_cold_1();
  }

  else if (a2)
  {
    Value = CFDictionaryGetValue(a2, *off_1E798A420);
    if (Value)
    {
      memset(&v13, 0, sizeof(v13));
      CMTimeMakeFromDictionary(&v13, Value);
      v12 = v13;
      v9 = sbp_ma_addMotionDataToMetadataDictionary(a1, a2, &v12, a4);
      v10 = v9;
      if (v9)
      {
        sbp_ma_processInitialCinematicFutureMetadata_cold_2(v9);
      }

      else
      {
        CFArrayAppendValue(*(a1 + 656), a2);
      }
    }

    else
    {
      sbp_ma_processInitialCinematicFutureMetadata_cold_3(&v13);
      return LODWORD(v13.value);
    }
  }

  else
  {
    return 0;
  }

  return v10;
}

uint64_t sbp_ma_extractAndBufferISPMotionDataFromMetadataDictionary(uint64_t a1, CFDictionaryRef theDict)
{
  v2 = theDict;
  v57 = 0;
  v55 = 0;
  v56 = 0;
  v4 = *(a1 + 64);
  v5 = *(a1 + 560);
  MotionDataFromISP = FigMotionGetMotionDataFromISP(theDict, *(a1 + 600), *(a1 + 616), 110, &v55 + 1, &v56, *(a1 + 608), 510, &v55);
  if (MotionDataFromISP)
  {
    v36 = MotionDataFromISP;
    sbp_ma_extractAndBufferISPMotionDataFromMetadataDictionary_cold_1();
  }

  else
  {
    if (SHIDWORD(v55) >= 1)
    {
      v49 = v2;
      v7 = (v4 << 8) + 256;
      v8 = *MEMORY[0x1E695E4C0];
      if (v5 < 1)
      {
        Count = CFArrayGetCount(*(a1 + 584));
        if (Count + SHIDWORD(v55) < v7 && SHIDWORD(v55) >= 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = *MEMORY[0x1E695E480];
          v20 = 8;
          do
          {
            valuePtr = *(*(a1 + 600) + v20) - *(a1 + 568);
            v21 = CFNumberCreate(v19, kCFNumberDoubleType, &valuePtr);
            v22 = CFDataCreate(v19, (*(a1 + 600) + v20 + 8), 32);
            v23 = CFDataCreate(v19, (*(a1 + 616) + v17), 12);
            values = v21;
            v51 = v8;
            v52 = v22;
            v53 = v23;
            v24 = CFArrayCreate(v19, &values, 4, MEMORY[0x1E695E9C0]);
            CFArrayAppendValue(*(a1 + 584), v24);
            if (v21)
            {
              CFRelease(v21);
            }

            if (v22)
            {
              CFRelease(v22);
            }

            if (v23)
            {
              CFRelease(v23);
            }

            if (v24)
            {
              CFRelease(v24);
            }

            ++v18;
            v17 += 12;
            v20 += 48;
          }

          while (v18 < SHIDWORD(v55));
        }
      }

      else
      {
        v9 = 0;
        v10 = *MEMORY[0x1E695E480];
        v11 = 8;
        v12 = MEMORY[0x1E695E9C0];
        do
        {
          valuePtr = *(*(a1 + 600) + v11) - *(a1 + 568);
          v13 = CFNumberCreate(v10, kCFNumberDoubleType, &valuePtr);
          v14 = CFDataCreate(v10, (*(a1 + 600) + v11 + 8), 32);
          values = v13;
          v51 = v8;
          v52 = v14;
          v15 = CFArrayCreate(v10, &values, 3, v12);
          CFArraySetValueAtIndex(*(a1 + 584), *(a1 + 592), v15);
          *(a1 + 592) = (*(a1 + 592) + 1) % v7;
          if (v13)
          {
            CFRelease(v13);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          ++v9;
          v11 += 48;
        }

        while (v9 < SHIDWORD(v55));
      }

      v25 = *(a1 + 640);
      v2 = v49;
      if (v25)
      {
        v26 = (v25 + 12 * *(a1 + 652));
        v27 = v56;
        v26[1].i32[0] = v57;
        *v26 = v27;
        FigMotionIncreaseRingIndex((a1 + 652), *(a1 + 64) + 1);
        FigMotionIncreaseRingIndex((a1 + 648), *(a1 + 64) + 1);
      }
    }

    if (v55 < 1)
    {
      return 0;
    }

    else
    {
      LODWORD(valuePtr) = 0;
      Value = CFDictionaryGetValue(v2, *off_1E798B540);
      v35 = hallPositionIndexFromPortType(Value, &valuePtr, v29, v30, v31, v32, v33, v34, v48);
      v36 = v35;
      if (v35)
      {
        sbp_ma_extractAndBufferISPMotionDataFromMetadataDictionary_cold_2(v35);
      }

      else
      {
        v37 = (*(a1 + 64) << 9) + 512;
        v38 = CFArrayGetCount(*(a1 + 624 + 8 * LODWORD(valuePtr)));
        if (v38 + v55 < v37 && v55 >= 1)
        {
          v40 = 0;
          v41 = 0;
          v42 = *MEMORY[0x1E695E480];
          v43 = MEMORY[0x1E695E9C0];
          do
          {
            v44 = CFNumberCreate(v42, kCFNumberDoubleType, (*(a1 + 608) + v40));
            v45 = CFDataCreate(v42, (*(a1 + 608) + v40 + 8), 8);
            values = v44;
            v51 = v45;
            v46 = CFArrayCreate(v42, &values, 2, v43);
            CFArrayAppendValue(*(a1 + 624 + 8 * LODWORD(valuePtr)), v46);
            if (v44)
            {
              CFRelease(v44);
            }

            if (v45)
            {
              CFRelease(v45);
            }

            if (v46)
            {
              CFRelease(v46);
            }

            ++v41;
            v40 += 24;
          }

          while (v41 < v55);
        }
      }
    }
  }

  return v36;
}

uint64_t sbp_ma_addMotionDataToMetadataDictionary(uint64_t a1, const __CFDictionary *a2, CMTime *a3, CMVideoFormatDescriptionRef videoDesc)
{
  v108 = 0.0;
  v107 = 0;
  bytes = 0;
  if (!*(a1 + 24))
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_15();
    return 0;
  }

  v7 = *(a1 + 560);
  memset(v105, 0, sizeof(v105));
  Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
  v8 = (a1 + 72);
  v9 = (a1 + 80);
  v10 = 7;
  do
  {
    *(v9 - 1) = (Dimensions.width + -1.0) * 0.5;
    *v9 = (Dimensions.height + -1.0) * 0.5;
    v9 += 7;
    --v10;
  }

  while (v10);
  Value = CFDictionaryGetValue(a2, *off_1E798B540);
  if (!Value)
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_14(&time);
    return LODWORD(time.value);
  }

  v12 = Value;
  if (CFEqual(Value, *off_1E798A0E8))
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_1(&time);
    return LODWORD(time.value);
  }

  time = *a3;
  Seconds = CMTimeGetSeconds(&time);
  time.value = 0;
  if (FigMotionComputeFramePTSOffsetFromISPCrop(a2, &time.value))
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_2();
  }

  v14 = Seconds + *&time.value;
  FigCFDictionarySetDouble();
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigCFDictionaryGetInt32IfPresent();
  }

  if (FigCFDictionaryGetDoubleIfPresent() && v108 <= 0.0)
  {
    v108 = 0.0;
  }

  if (*(a1 + 576))
  {
    v15 = *(a1 + 648);
    if ((v15 & 0x80000000) == 0)
    {
      v16 = *(a1 + 640) + 12 * v15;
      v17 = *(v16 + 8);
      bytes = *v16;
      LODWORD(v107) = v17;
    }
  }

  else
  {
    v18 = *(a1 + 32);
    if (v18)
    {
      FigCoreMotionGetGravity(v18, &bytes, &bytes + 4, &v107);
    }
  }

  v19 = *MEMORY[0x1E695E480];
  v20 = CFDataCreate(*MEMORY[0x1E695E480], &bytes, 12);
  if (!v20)
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_13();
    return 0;
  }

  v21 = v20;
  CFDictionarySetValue(a2, *off_1E798D158, v20);
  CFRelease(v21);
  LODWORD(valuePtr[0]) = 1065353216;
  LODWORD(values) = 0;
  v101 = v12;
  v28 = portIndexFromPortType(v12, &values, v22, v23, v24, v25, v26, v27, v94);
  if (v28)
  {
    value_low = v28;
    sbp_ma_addMotionDataToMetadataDictionary_cold_3();
    goto LABEL_118;
  }

  LODWORD(v112[0]) = 1;
  Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
  v32 = LODWORD(v112[0]);
  if (Int32IfPresent && SLODWORD(v112[0]) <= 0)
  {
    v32 = 1;
    LODWORD(v112[0]) = 1;
  }

  v100 = v7;
  if (FigMotionComputeLensPositionScalingFactor(a2, Dimensions.width, HIDWORD(*&Dimensions), (*(a1 + 464) * v32), (*(a1 + 468) * v32), valuePtr, v30, v31))
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_4();
  }

  FigCFDictionarySetFloat();
  v33 = *&v8[56 * values + 44];
  if (v33 <= 0.0)
  {
    v34 = *valuePtr;
  }

  else
  {
    v34 = *valuePtr * v33;
  }

  if (!FigCFDictionaryGetFloatIfPresent() || *(v105 + 1) <= 0.00000011921)
  {
    v35 = *(a1 + 472);
    if (CFDictionaryContainsKey(a2, *off_1E798B530))
    {
      if (CFEqual(v12, *off_1E798A0D0) || (LODWORD(time.value) = 0, FigCFDictionaryGetIntIfPresent()) && LODWORD(time.value) || (CFEqual(v12, *off_1E798A0E0) || CFEqual(v12, *off_1E798A0F8)) && v35)
      {
        LODWORD(time.value) = 0;
        FigCFDictionaryGetFloatIfPresent();
        v36 = v34 * *&time.value;
        *(v105 + 1) = v34 * *&time.value;
        if ((v34 * *&time.value) > 0.00000011921)
        {
LABEL_40:
          v8 = (a1 + 72);
          if (v36 <= 0.00000011921)
          {
            *(v105 + 1) = Dimensions.width * 0.7;
          }

          goto LABEL_42;
        }
      }
    }

    v37 = FigMotionCalculateAdjustedLensPosition(a2, a1 + 72 + 56 * values, v105 + 1, *&v107, *valuePtr);
    if (!v37)
    {
      v36 = *(v105 + 1);
      goto LABEL_40;
    }

    value_low = v37;
    sbp_ma_addMotionDataToMetadataDictionary_cold_5();
LABEL_118:
    v93 = time.value;
    fig_log_get_emitter();
    LODWORD(v95) = value_low;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v95, v93, v96, v98, v99, v101, *&Dimensions, v103);
    return value_low;
  }

LABEL_42:
  FigCFDictionarySetFloat();
  FigCFDictionarySetFloat();
  if ((*(a1 + 40) & 0x80) != 0 && v7 <= 0)
  {
    v44 = sbp_ma_copyAndFlushISPData(*(a1 + 584));
    if (v44)
    {
      v45 = v44;
      valuePtr[0] = -*(a1 + 568);
      v46 = CFNumberCreate(v19, kCFNumberDoubleType, valuePtr);
      v47 = *off_1E798D170;
      time.value = *off_1E798D178;
      *&time.timescale = v47;
      *&values = v46;
      *(&values + 1) = v45;
      v48 = CFDictionaryCreate(v19, &time, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(a2, *off_1E798D190, v48);
      CFRelease(v48);
      CFRelease(v45);
      CFRelease(v46);
    }
  }

  if ((*(a1 + 41) & 1) == 0)
  {
    value_low = 0;
    goto LABEL_65;
  }

  Mutable = CFArrayCreateMutable(v19, 2, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_8(&time);
    return LODWORD(time.value);
  }

  v51 = Mutable;
  v97 = v8;
  v52 = 0;
  value_low = 0;
  v53 = a1 + 624;
  v54 = 1;
  v55 = MEMORY[0x1E695E9C0];
  do
  {
    v56 = v54;
    if (CFArrayGetCount(*(v53 + 8 * v52)) < 1)
    {
      goto LABEL_56;
    }

    v57 = *(v53 + 8 * v52);
    LODWORD(values) = v52;
    v58 = sbp_ma_copyAndFlushISPData(v57);
    if (!v58)
    {
      goto LABEL_55;
    }

    v59 = v58;
    v60 = CFNumberCreate(v19, kCFNumberIntType, &values);
    if (v60)
    {
      v61 = v60;
      v109[0] = v60;
      v109[1] = v59;
      v62 = CFArrayCreate(v19, v109, 2, v55);
      if (v62)
      {
        v63 = v62;
        CFArrayAppendValue(v51, v62);
        CFRelease(v61);
        CFRelease(v63);
        CFRelease(v59);
LABEL_55:
        value_low = 0;
        goto LABEL_56;
      }

      sbp_ma_addMotionDataToMetadataDictionary_cold_6(v109, v61, &time);
    }

    else
    {
      sbp_ma_addMotionDataToMetadataDictionary_cold_7(&time);
    }

    value_low = LODWORD(time.value);
    CFRelease(v59);
    if (value_low)
    {
      fig_log_get_emitter();
      LODWORD(v95) = value_low;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v95, v98, v97, v98, v99, v101, *&Dimensions, v103);
    }

LABEL_56:
    v54 = 0;
    v52 = 1;
  }

  while ((v56 & 1) != 0);
  Copy = CFArrayCreateCopy(v19, v51);
  v7 = v100;
  if (Copy)
  {
    v65 = Copy;
    CFDictionarySetValue(a2, *off_1E798D188, Copy);
    CFRelease(v65);
  }

  CFRelease(v51);
  v8 = v97;
LABEL_65:
  v66 = *(a1 + 32);
  if (v66)
  {
    if (v7 <= 0)
    {
      time.value = 0;
      FigCoreMotionCopyMotionData(v66, &time);
      v38 = time.value;
      if (time.value)
      {
        CFDictionarySetValue(a2, *off_1E798D198, time.value);
        CFRelease(time.value);
      }
    }
  }

  if ((*(a1 + 40) & 0x56) == 0)
  {
    return value_low;
  }

  v67 = SHIDWORD(v107);
  if (*(a1 + 32))
  {
    v68 = v14 + v108 * -0.5 + 0.005;
  }

  else
  {
    v68 = v14 + v108 * -0.5;
  }

  v69 = v68 + v67 / 1000000.0;
  if (v7 < 1)
  {
    v71 = v68;
  }

  else
  {
    v70 = *(a1 + 560);
    v71 = v68 + (Dimensions.width - v70) / (2 * Dimensions.width) * (v69 - v68);
    v69 = v68 + (v70 + Dimensions.width) / (2 * Dimensions.width) * (v69 - v68);
  }

  v104 = 0;
  v72 = portIndexFromPortType(v101, &v104, v38, v39, v40, v41, v42, v43, v95);
  if (v72)
  {
    value_low = v72;
    sbp_ma_addMotionDataToMetadataDictionary_cold_9();
    return value_low;
  }

  v115[0] = 0;
  values = xmmword_1AD0562A8;
  v114 = unk_1AD0562B8;
  memset(v112, 0, sizeof(v112));
  v73 = *(a1 + 584);
  v74 = *(a1 + 28);
  if (!v73)
  {
    if (v74 >= 2)
    {
      if (v74 != 2)
      {
LABEL_88:
        v77 = v114;
        *(a1 + 480) = values;
        *(a1 + 496) = v77;
        goto LABEL_89;
      }

      AverageQuaternion = FigCoreMotionGetAverageQuaternion(*(a1 + 32), &values, 0);
    }

    else
    {
      AverageQuaternion = FigCoreMotionGetQuaternionAndAttitude(*(a1 + 32), &values, 0, v112, 0);
    }

    v115[0] = AverageQuaternion;
    goto LABEL_88;
  }

  if (v74 < 2)
  {
    v75 = FigMotionComputeQuaternionAndAttitudeFromArray(v73, a1 + 480, v112, v68 + v67 / 2000000.0);
    goto LABEL_84;
  }

  if (v74 == 2)
  {
    v75 = FigMotionComputeAverageQuaternionFromArray(v73, (a1 + 480), v71, v69);
LABEL_84:
    v115[0] = v75;
  }

LABEL_89:
  v78 = CFNumberCreate(v19, kCFNumberSInt32Type, v115);
  CFDictionarySetValue(a2, *off_1E798D1A0, v78);
  CFRelease(v78);
  if ((*(a1 + 40) & 0x52) != 0)
  {
    LODWORD(v105[0]) = 0;
    FigCFDictionaryGetInt32IfPresent();
    FigMotionCalculateAdjustedFocusPosition(v105, *&v107, *&v8[56 * v104 + 40]);
    if (!*(a1 + 544))
    {
      v79 = *(a1 + 496);
      *(a1 + 512) = *(a1 + 480);
      *(a1 + 528) = v79;
      *(a1 + 544) = 1;
    }

    v80 = FigMotionMultiplyByInverseOfQuaternion((a1 + 512), (a1 + 480));
    valuePtr[0] = v80;
    valuePtr[1] = v81;
    valuePtr[2] = v82;
    valuePtr[3] = v83;
    v84 = *(a1 + 496);
    *(a1 + 512) = *(a1 + 480);
    *(a1 + 528) = v84;
    v85 = *(a1 + 40);
    if ((v85 & 0x40) != 0)
    {
      memset(&time, 0, sizeof(time));
      FigMotionAttitudeFromQuaternion(&time.value, v80, v81, v82, v83);
      v86 = CFDataCreate(v19, &time, 24);
      CFDictionarySetValue(a2, *off_1E798D160, v86);
      if (v86)
      {
        CFRelease(v86);
      }

      v85 = *(a1 + 40);
    }

    if ((v85 & 2) != 0)
    {
      *&v88 = FigMotionComputeTranslationFromCameraMotion(valuePtr, &v8[56 * v104], v105, &time);
      v115[0] = v87.i32[0];
      if (!v87.i32[0])
      {
        *(a1 + 552) = vadd_f32(time.value, *(a1 + 552));
        v89 = CFDataCreate(v19, (a1 + 552), 8);
        CFDictionarySetValue(a2, *off_1E798D1C0, v89);
        if (v89)
        {
          CFRelease(v89);
        }

        v85 = *(a1 + 40);
        goto LABEL_101;
      }

      sbp_ma_addMotionDataToMetadataDictionary_cold_10(*&v87, &time, v88);
    }

    else
    {
LABEL_101:
      if ((v85 & 0x10) != 0)
      {
        v90 = FigMotionComputeTransformFromCameraMotion(valuePtr, &v8[56 * v104], v105, 0, 0, &time);
        v115[0] = v90;
        if (v90)
        {
          sbp_ma_addMotionDataToMetadataDictionary_cold_11(v90, &time);
        }

        else
        {
          v91 = CFDataCreate(v19, &time, 36);
          CFDictionarySetValue(a2, *off_1E798D1B8, v91);
          if (v91)
          {
            CFRelease(v91);
          }
        }
      }
    }
  }

  value_low = v115[0];
  if (v115[0])
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_12(v115[0]);
  }

  return value_low;
}

const __CFArray *sbp_ma_copyAndFlushISPData(const __CFArray *theArray)
{
  if (theArray)
  {
    v1 = theArray;
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], theArray);
    CFArrayRemoveAllValues(v1);
    return Copy;
  }

  return theArray;
}

uint64_t F32toF16_0(float a1)
{
  v1 = HIWORD(LODWORD(a1)) & 0x8000;
  v2 = (LODWORD(a1) >> 23);
  v3 = ((((LODWORD(a1) & 0x7FFFFFu) >> 13) | (LODWORD(a1) >> 23 << 10)) + 0x4000) | v1;
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

float F16toF32(unsigned int a1)
{
  v1 = (a1 >> 10) & 0x1F;
  v2 = a1 & 0x3FF;
  if (v1 == 31)
  {
    LODWORD(result) = v2 | 0x7F800000;
  }

  else if (v1)
  {
    v4 = (1 << (v1 - 15));
    if (v1 <= 0xE)
    {
      LODWORD(v4) = ((15 - v1) << 23) ^ 0x3F800000;
    }

    result = (vcvts_n_f32_u32(v2, 0xAuLL) + 1.0) * v4;
  }

  else if ((a1 & 0x3FF) != 0)
  {
    result = vcvts_n_f32_u32(v2, 0x18uLL);
  }

  else
  {
    result = 0.0;
  }

  if ((a1 & 0x8000u) != 0)
  {
    return -result;
  }

  return result;
}

const void **BWPreviewSynchronizerCreate(const void *a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x10200403042BB7FuLL);
  v3 = v2;
  *v2 = 0;
  if (a1)
  {
    *v2 = CFRetain(a1);
    *(v3 + 1) = 0u;
    *(v3 + 3) = 0u;
  }

  else
  {
    BWPreviewSynchronizerCreate_cold_1(v2, &v5);
    return v5;
  }

  return v3;
}

double BWPreviewSynchronizerReset(uint64_t a1)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  return 0.0;
}

double BWPreviewSynchronizerGetInsertionTime(double *a1, void *a2)
{
  v4 = CACurrentMediaTime();
  if (a2)
  {
    v23 = **&MEMORY[0x1E6960CC0];
    v5 = CMGetAttachment(a2, *off_1E798A420, 0);
    if (v5)
    {
      CMTimeMakeFromDictionary(&v23, v5);
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(&v23, a2);
    }

    v22 = v23;
    Seconds = CMTimeGetSeconds(&v22);
    v7 = a1[3];
    if (v7 <= 0.0)
    {
      a1[3] = Seconds;
      v7 = Seconds;
    }

    v8 = Seconds - v7;
    v9 = a1[2];
    if (v8 <= v9 * 1.9 || v9 == 0.0)
    {
      v11 = v8;
    }

    else
    {
      v11 = a1[2];
    }

    if (CAImageQueueGetTimes() < 2)
    {
      v20 = a1[1];
      if (v20 > 0.0)
      {
        v4 = v20 + a1[4];
      }
    }

    else
    {
      v12 = *&v23.value;
      v13 = *&v23.timescale - *&v23.value;
      v14 = v11 / (*&v23.timescale - *&v23.value);
      v15 = round(v14);
      if (v14 >= 1.0)
      {
        v14 = v15;
      }

      if (v14 >= 1.0)
      {
        v16 = v14 + 0.35;
      }

      else
      {
        v16 = v14 * 1.35;
      }

      a1[4] = v13;
      v17 = v12 - v13 + v13 * v16;
      v18 = v13 * 0.5;
      v19 = v17 + v13 * 0.01;
      if (v17 - a1[1] <= v18)
      {
        v4 = v19;
      }

      else
      {
        v4 = v17;
      }
    }

    a1[2] = v11;
    a1[3] = Seconds;
    a1[1] = v4;
  }

  else
  {
    BWPreviewSynchronizerGetInsertionTime_cold_1();
  }

  return v4;
}

void sub_1ACB7D4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMCameraCaptureAutoFocusROIClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMCameraCaptureAutoFocusROI");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getBMCameraCaptureAutoFocusROIClass_block_invoke_cold_1();
  }

  getBMCameraCaptureAutoFocusROIClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t BiomeLibraryLibrary()
{
  v2[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __BiomeLibraryLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7999B80;
    v4 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = BiomeLibraryLibraryCore_frameworkLibrary;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    BiomeLibraryLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBiomeLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeLibraryLibrary();
  result = dlsym(v2, "BiomeLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FigVirtualDisplaySourceCameraViewfinderStreamCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  if (a2)
  {
    FigVirtualDisplaySourceGetClassID();
    v4 = CMDerivedObjectCreate();
    if (v4)
    {
      v7 = v4;
      FigVirtualDisplaySourceCameraViewfinderStreamCreate_cold_1();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = 0;
      v6 = VTPixelTransferSessionCreate(a1, (DerivedStorage + 56));
      v7 = v6;
      if (v6)
      {
        FigVirtualDisplaySourceCameraViewfinderStreamCreate_cold_2(v6);
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    FigVirtualDisplaySourceCameraViewfinderStreamCreate_cold_3(a1);
    return 4294954516;
  }

  return v7;
}

uint64_t stream_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    stream_Invalidate_cold_1();
  }

  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 40) = 0;
  }

  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 48) = 0;
  }

  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 56) = 0;
  }

  return 0;
}

uint64_t stream_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(*MEMORY[0x1E6973EE0], a2))
  {
    v7 = @"CameraViewfinderStream";
    goto LABEL_3;
  }

  if (CFEqual(@"Destination", a2))
  {
    v7 = *(DerivedStorage + 40);
    if (!v7)
    {
      v8 = 0;
      goto LABEL_4;
    }

LABEL_3:
    v8 = CFRetain(v7);
LABEL_4:
    result = 0;
    *a4 = v8;
    return result;
  }

  return 4294954512;
}

uint64_t stream_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(@"Destination", a2))
  {
    return 4294954512;
  }

  v6 = *(DerivedStorage + 40);
  *(DerivedStorage + 40) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t stream_PlugProcessor(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (*DerivedStorage || *(DerivedStorage + 48))
    {
      stream_PlugProcessor_cold_1();
      return 4294955223;
    }

    else
    {
      *(DerivedStorage + 48) = a2;
      CFRetain(a2);
      return 0;
    }
  }

  else
  {
    stream_PlugProcessor_cold_2(DerivedStorage);
    return 4294955226;
  }
}

uint64_t stream_UnplugProcessor(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (!*DerivedStorage)
    {
      v5 = *(DerivedStorage + 48);
      if (v5 == a2)
      {
        CFRelease(v5);
        result = 0;
        *(v4 + 48) = 0;
        return result;
      }
    }

    stream_UnplugProcessor_cold_1();
  }

  else
  {
    stream_UnplugProcessor_cold_2(DerivedStorage);
  }

  return 4294955226;
}

uint64_t stream_Start(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || (v2 = DerivedStorage, !*(DerivedStorage + 48)))
  {
    stream_Start_cold_6();
    return 4294955226;
  }

  v3 = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v16 = 0;
  v14 = *MEMORY[0x1E695F058];
  v4 = *(v3 + 48);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v5)
  {
    v12 = 4294954514;
LABEL_18:
    stream_Start_cold_4(v12);
    goto LABEL_10;
  }

  v6 = v5(v4, &v16, &v15);
  if (v6)
  {
    v12 = v6;
    goto LABEL_18;
  }

  v7 = FigDisplayModes_LookupTimingModeIDByIndex();
  if (v7)
  {
    v12 = v7;
    stream_Start_cold_1();
  }

  else
  {
    v8 = *(v3 + 48);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v9)
    {
      v10 = v9(v8, 0, 0);
      if (!v10)
      {
        DimensionsFromTimingMode = FigDisplayModes_ExtractDimensionsFromTimingMode();
        v12 = DimensionsFromTimingMode;
        if (DimensionsFromTimingMode)
        {
          stream_Start_cold_2(DimensionsFromTimingMode);
        }

        else
        {
          *(v2 + 8) = v14;
          *(v2 + 24) = xmmword_1AD0563E0;
        }

        goto LABEL_10;
      }

      v12 = v10;
    }

    else
    {
      v12 = 4294954514;
    }

    stream_Start_cold_3(v12);
  }

LABEL_10:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v12)
  {
    stream_Start_cold_5(v12);
  }

  else
  {
    *v2 = 1;
  }

  return v12;
}

uint64_t utlLandmarkToC0(uint64_t a1, double *a2, double *a3, float64x2_t *a4, float64x2_t a5)
{
  if (!a2)
  {
    utlLandmarkToC0_cold_3(a1, 0, a3, a4);
    return 0;
  }

  if (!a3)
  {
    utlLandmarkToC0_cold_2(a1);
    return 0;
  }

  if (!a4)
  {
    utlLandmarkToC0_cold_1(a1);
    return 0;
  }

  a5.f64[0] = *a3 + *a2 * a3[2];
  v5 = 1.0 - (a3[1] + a2[1] * a3[3]);
  a4->f64[0] = a5.f64[0];
  a4->f64[1] = v5;
  rotatedC0toSensorOrientation(a1, a4, a5);
  return 1;
}

float64x2_t rotatedC0toSensorOrientation(int a1, float64x2_t *a2, float64x2_t result)
{
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 != 7)
      {
        if (a1 != 8)
        {
          return result;
        }

        v5 = a2->f64[0];
        v3 = 1.0 - a2->f64[1];
        goto LABEL_16;
      }

      v4 = a2->f64[0];
      v3 = 1.0 - a2->f64[1];
    }

    else
    {
      if (a1 == 5)
      {
        v3 = a2->f64[1];
        v5 = a2->f64[0];
LABEL_16:
        result.f64[0] = v5;
        a2->f64[0] = v3;
LABEL_17:
        a2->f64[1] = result.f64[0];
        return result;
      }

      v3 = a2->f64[1];
      v4 = a2->f64[0];
    }

    v5 = 1.0 - v4;
    goto LABEL_16;
  }

  if (a1 == 2)
  {
    result.f64[0] = 1.0 - a2->f64[0];
    a2->f64[0] = result.f64[0];
    return result;
  }

  if (a1 != 3)
  {
    if (a1 != 4)
    {
      return result;
    }

    result.f64[0] = 1.0 - a2->f64[1];
    goto LABEL_17;
  }

  __asm { FMOV            V1.2D, #1.0 }

  result = vsubq_f64(_Q1, *a2);
  *a2 = result;
  return result;
}

void vcn_encoderCallback(uint64_t a1, void *value, uint64_t a3, uint64_t a4, opaqueCMSampleBuffer *target)
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58])
  {
    LODWORD(v34) = 0;
    CMSampleBufferGetPresentationTimeStamp(&time, target);
    CMTimeGetSeconds(&time);
    CMSampleBufferGetDecodeTimeStamp(&time, target);
    CMTimeGetSeconds(&time);
    FigCFDictionaryGetIntIfPresent();
    if (*v9 == 1)
    {
      [a1 pipelineTraceID];
      kdebug_trace();
    }
  }

  if (!a3)
  {
LABEL_13:
    if (!value)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (target)
  {
    v10 = *(a1 + 304);
    v11 = @"encoder callback, but returned sample buffer?!?";
LABEL_12:
    [v10 logErrorNumber:a3 errorString:v11];
    goto LABEL_13;
  }

  v34 = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (value)
  {
    CMTimeMakeFromDictionary(&time, [value objectForKeyedSubscript:{@"VideoCompressorNodeAttachedPTS", a4}]);
    v34 = time.value;
    flags = time.flags;
    timescale = time.timescale;
    epoch = time.epoch;
    [value setObject:0 forKeyedSubscript:@"VideoCompressorNodeAttachedPTS"];
  }

  else
  {
    flags = *(MEMORY[0x1E6960C70] + 12);
    epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  v14 = *(a1 + 304);
  if ((flags & 1) == 0)
  {
    v11 = @"encoder callback leaking";
    v10 = *(a1 + 304);
    goto LABEL_12;
  }

  time.value = v34;
  time.timescale = timescale;
  time.flags = flags;
  time.epoch = epoch;
  [v14 logErrorNumber:a3 errorString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"encoder callback dropping %.4lf", CMTimeGetSeconds(&time))}];
  time.value = v34;
  time.timescale = timescale;
  time.flags = flags;
  time.epoch = epoch;
  [*(a1 + 16) emitDroppedSample:{+[BWDroppedSample newDroppedSampleWithReason:pts:](BWDroppedSample, "newDroppedSampleWithReason:pts:", 0x1F219C030, &time)}];
  if (value)
  {
LABEL_14:
    CMSetAttachment(target, *off_1E798A3C8, value, 1u);
  }

LABEL_15:
  if (target)
  {
    DataBuffer = CMSampleBufferGetDataBuffer(target);
    if (DataBuffer)
    {
      v16 = DataBuffer;
      DataLength = CMBlockBufferGetDataLength(DataBuffer);
      if (*(a1 + 344) && DataLength != 0)
      {
        +[BWBufferometer trackBuffer:trackedSize:tag:bufferType:](BWBufferometer, "trackBuffer:trackedSize:tag:bufferType:", v16, DataLength, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Compressed Video", objc_msgSend(a1, "name")], @"CMBlockBuffer");
      }
    }

    v19 = *(a1 + 296);
    if (v19)
    {
      CMSetAttachment(target, @"FileCompletionScaledThumbnailSourcePixelBuffer", v19, 1u);
      v20 = *(a1 + 296);
      if (v20)
      {
        CFRelease(v20);
        *(a1 + 296) = 0;
      }
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = *(a1 + 360);
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v30 + 1) + 8 * i);
          CMSetAttachment(target, v26, [value objectForKeyedSubscript:v26], 1u);
          [value setObject:0 forKeyedSubscript:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v23);
    }

    v27 = *(a1 + 176);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __vcn_encoderCallback_block_invoke;
    block[3] = &unk_1E7990178;
    block[4] = a1;
    block[5] = target;
    dispatch_sync(v27, block);
  }
}

uint64_t __vcn_encoderCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 226) & 1) == 0)
  {
    *(v2 + 226) = 1;
    if (dword_1ED8441F0)
    {
      v8 = 0;
      v7 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return [*(*(a1 + 32) + 16) emitSampleBuffer:{*(a1 + 40), v5, v6}];
}

uint64_t rl_concreteRendererWithParametersForType(uint64_t result, void *a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t a6, int a7)
{
  if (!a3 || !a4)
  {
    return result;
  }

  if (result > 2)
  {
    if (result <= 4)
    {
      if (result != 3)
      {
        *a3 = [a2 provideCoreImageFilterRenderer];
        if (a7)
        {
          v13 = a6;
        }

        else
        {
          v13 = 0;
        }

        v14 = [[BWCoreImageFilterRendererParameters alloc] initWithFilters:a5 originalOutputFilter:v13];
        goto LABEL_23;
      }

      result = [a2 provideStillImageCoreImageBlurMapRenderer];
LABEL_21:
      *a3 = result;
      return result;
    }

    if (result != 5)
    {
      if (result == 6)
      {
        result = [a2 provideApplySmartStyleRenderer];
        goto LABEL_21;
      }

      return result;
    }

    *a3 = [a2 provideMetalFilterRenderer];
    v14 = -[BWMetalColorCubeRendererParameters initWithColorFilter:colorLookupCache:]([BWMetalColorCubeRendererParameters alloc], "initWithColorFilter:colorLookupCache:", [a5 lastObject], objc_msgSend(a2, "provideColorLookupCache"));
LABEL_23:
    result = v14;
LABEL_24:
    *a4 = result;
    return result;
  }

  switch(result)
  {
    case 0:
      v15 = [a2 provideStreamingSDOFFilterRenderer];
      *a3 = v15;
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if ((result & 1) == 0)
      {
        return result;
      }

      if ([a5 count] < 2)
      {
        result = 0;
        goto LABEL_24;
      }

      v14 = -[BWStreamingCVAFilterRendererParameters initWithColorFilter:colorLookupCache:studioAndContourRenderingEnabled:stageRenderingEnabled:]([BWStreamingCVAFilterRendererParameters alloc], "initWithColorFilter:colorLookupCache:studioAndContourRenderingEnabled:stageRenderingEnabled:", [a5 lastObject], objc_msgSend(a2, "provideColorLookupCache"), objc_msgSend(v15, "studioAndContourRenderingEnabled"), objc_msgSend(v15, "stageRenderingEnabled"));
      goto LABEL_23;
    case 1:
      result = [a2 provideStillImageMetalBlurMapRenderer];
      break;
    case 2:
      result = [a2 provideStillImageMetalSDOFRenderer];
      break;
    default:
      return result;
  }

  *a3 = result;
  *a4 = 0;
  return result;
}

uint64_t visn_pixelFormatsArrayFromPixelFormatTypeValue(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = a1;
    return [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }
}

void *visn_setSynchronizedSlaveFrameLivePhotoKeyFrameMetadata(uint64_t a1, uint64_t a2, const void *a3)
{
  result = BWSampleBufferGetAttachedMedia(a3, @"SynchronizedSlaveFrame");
  if (result)
  {
    v6 = CMGetAttachment(result, *off_1E798A3C8, 0);
    [v6 setObject:a1 forKeyedSubscript:*off_1E798D4B0];
    v7 = *off_1E798A0A0;

    return [v6 setObject:a2 forKeyedSubscript:v7];
  }

  return result;
}

double visn_transformRectangle(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7)
{
  v7 = 0;
  v27 = a4 * a2;
  v28 = a5 * SHIDWORD(a2);
  v29 = v27 + a6 * a2;
  v30 = v28;
  v31 = v27;
  v32 = v28 + a7 * SHIDWORD(a2);
  v33 = v29;
  v34 = v32;
  do
  {
    v8 = 0;
    v9 = &v27 + 2 * v7;
    v10 = *v9;
    v11 = v9[1];
    v12 = (a1 + 8);
    do
    {
      v13 = v11 * *(v12 - 1) + *(v12 - 2) * v10;
      v14 = *v12;
      v12 += 3;
      *&v13 = v13 + v14;
      v25.i32[v8++] = LODWORD(v13);
    }

    while (v8 != 3);
    v15 = v26;
    v16 = vld1_dup_f32(v15);
    *&v26[16 * v7++ + 8] = vcvtq_f64_f32(vdiv_f32(v25, v16));
  }

  while (v7 != 4);
  v17 = 0;
  v18 = 3.4028e38;
  v19 = 1.1755e-38;
  v20 = 1.1755e-38;
  v21 = 3.4028e38;
  do
  {
    v22 = *&v26[v17 + 8];
    v21 = fminf(v21, v22);
    v23 = *&v26[v17 + 16];
    v18 = fminf(v18, v23);
    v20 = fmaxf(v20, v22);
    v19 = fmaxf(v19, v23);
    v17 += 16;
  }

  while (v17 != 64);
  return (fmaxf(fminf(a3, v21 - ((a2 - a3) / 2)), 0.0) / a3);
}

void cmclsc_handleCaptureSessionDidStopRunningNotification(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  isEqualToString = objc_msgSend_isEqualToString_(a3, a2, @"DidStopRunning");
  if (a5)
  {
    if (a4)
    {
      if (isEqualToString)
      {
        v9 = CFGetTypeID(a5);
        if (v9 == CFDictionaryGetTypeID())
        {
          v10 = [objc_msgSend(a5 objectForKeyedSubscript:{@"ErrorStatus", "intValue"}];
          if (dword_1EB58E740)
          {
            v21 = 0;
            v20 = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (v10 == -16406)
          {
            v12 = a2[4] == a4;
            v13 = a2[13] == a4;
            objc_initWeak(location, a2);
            v14 = a2[1];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __cmclsc_handleCaptureSessionDidStopRunningNotification_block_invoke;
            block[3] = &unk_1E7999E98;
            objc_copyWeak(&v16, location);
            v17 = v12;
            v18 = v13;
            dispatch_async(v14, block);
            objc_destroyWeak(&v16);
            objc_destroyWeak(location);
          }
        }
      }
    }
  }
}

void sub_1ACB9C2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t FigCaptureSessionSetConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v4)
  {

    return v4(a1, a2);
  }

  else
  {
    v6 = @"ErrorStatus";
    v7 = &unk_1F2245A90;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

void sub_1ACB9CBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB9D138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1ACB9D728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB9F2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __cmclsc_handleCaptureSessionDidStopRunningNotification_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(a1 + 40) == 1 && [WeakRetained[3] count])
    {
      if (dword_1EB58E740)
      {
        v19 = 0;
        v18 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v6 = v3 + 4;
      v7 = (v3 + 12);
      [v3 _stopSession:v3[4] sessionRunningInOut:{v3 + 12, v14, v15}];
      [v3 _resolveVideoCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
      v8 = v3[4];
      v9 = v3[10];
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v10)
      {
        v10(v8, v9);
      }

      else
      {
        *v16 = @"ErrorStatus";
        v17[0] = &unk_1F2245A90;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:1];
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      [v3 _resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues];
    }

    else
    {
      if (*(a1 + 41) != 1 || *(v3 + 161) != 1)
      {
        goto LABEL_18;
      }

      if (dword_1EB58E740)
      {
        v19 = 0;
        v18 = 0;
        v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v6 = v3 + 13;
      v7 = (v3 + 20);
      [v3 _stopSession:v3[13] sessionRunningInOut:{v3 + 20, v14, v15}];
      [v3 _resolveMetadataCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
      v11 = v3[13];
      v12 = v3[18];
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v13)
      {
        v13(v11, v12);
      }

      else
      {
        *v16 = @"ErrorStatus";
        v17[0] = &unk_1F2245A90;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:1];
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }
    }

    [v3 _startSession:*v6 sessionRunningInOut:v7];
LABEL_18:
  }
}

__CFString *CMCaptureLocalGetSinkIDForReceiverType(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7999F00[a1];
  }
}

void *sClamshellStateChangeHandler(void *result, const char *a2, int a3, char a4)
{
  if (a3 == -536657664)
  {
    return [result clamshellStateChangeHandler:a4 & 1];
  }

  return result;
}

uint64_t FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v4 = a4;
    v5 = a3;
    v6 = a1;
    if (sCaptureDeferredPhotoProcessorRemoteClient)
    {
      goto LABEL_11;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"ServerConnectionDied");
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69633C0], *MEMORY[0x1E695E4D0]);
    v8 = FigXPCRemoteClientCreate();
    if (!sCaptureDeferredPhotoProcessorRemoteClient)
    {
      v9 = 1;
      v10 = 250;
      v11 = 250000;
      do
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        usleep(v11);
        v8 = FigXPCRemoteClientCreate();
        if (sCaptureDeferredPhotoProcessorRemoteClient)
        {
          break;
        }

        v10 += 250;
        v11 += 250000;
      }

      while (v9++ < 3);
    }

    v4 = a4;
    v5 = a3;
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v6 = a1;
    if (v8)
    {
      FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_1(v8);
    }

    else
    {
LABEL_11:
      v14 = FigXPCCreateBasicMessage();
      if (v14)
      {
        v8 = v14;
        FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_2(v14, v15);
      }

      else if (v5 && (v16 = FigXPCMessageSetCFString(), v16))
      {
        v8 = v16;
        FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_3(v16, v17);
      }

      else
      {
        v18 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (v18)
        {
          v8 = v18;
          FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_4(v18, v19);
        }

        else
        {
          uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
          if (uint64)
          {
            v22 = uint64;
            FigCaptureDeferredPhotoProcessorGetClassID(uint64, v21);
            v23 = CMDerivedObjectCreate();
            if (v23)
            {
              v8 = v23;
              FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_5(v23);
            }

            else
            {
              *CMBaseObjectGetDerivedStorage() = v22;
              FigXPCRemoteClientAssociateObject();
              DerivedStorage = CMBaseObjectGetDerivedStorage();
              *(DerivedStorage + 12) = 0;
              *(DerivedStorage + 16) = v6;
              v25 = FigCFWeakReferenceHolderCreateWithReferencedObject();
              *(DerivedStorage + 24) = v25;
              if (v25)
              {
                v8 = 0;
                *v4 = 0;
              }

              else
              {
                FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_6(0, v26);
                v8 = 4294954510;
              }
            }
          }

          else
          {
            FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_7(0, v21);
            v8 = 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  else
  {
    FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_8(a1, a2, a3);
    v8 = 4294954516;
  }

  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t cdpr_notificationFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = 0;
  v6 = captureDeferredPhotoProcessor_createDeserializedNotification(a2, a3, a4, &v9);
  if (v6)
  {
    cdpr_notificationFilter_cold_1(v6, &v9, &v10, &v11);
    v8 = v10;
    result = v11;
  }

  else
  {
    result = 4;
    v8 = v9;
  }

  *a5 = v8;
  return result;
}

uint64_t cdpr_messageHandler(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  FigXPCMessageCopyCFString();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 12));
  if (*(DerivedStorage + 9))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = 4294950474;
  }

  else
  {
    v4 = FigXPCMessageCopyCFDictionary();
    if (v4)
    {
      v7 = v4;
      cdpr_messageHandler_cold_1();
    }

    else
    {
      DeserializedNotification = captureDeferredPhotoProcessor_createDeserializedNotification(v12, a2, v11, &v10);
      if (DeserializedNotification)
      {
        v7 = DeserializedNotification;
        cdpr_messageHandler_cold_2();
      }

      else
      {
        if (*(DerivedStorage + 16))
        {
          v6 = FigCFWeakReferenceHolderCopyReferencedObject();
          v7 = v6;
          if (!v6)
          {
            goto LABEL_8;
          }

          (*(DerivedStorage + 16))(v6, v12, v10);
          CFRelease(v7);
        }

        v7 = 0;
      }
    }
  }

LABEL_8:
  os_unfair_lock_unlock((DerivedStorage + 12));
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v7;
}

__CFString *captureDeferredPhotoProcessorRemote_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 8))
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptureDeferredPhotoProcessorRemote %p retainCount: %ld%s allocator: %p, objectID: %lld>", a1, v5, v6, v7, *DerivedStorage);
  return Mutable;
}

uint64_t captureDeferredPhotoProcessorRemote_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  if (a4)
  {
    v8 = DerivedStorage;
    if (CFEqual(a2, @"ServerConnectionDied"))
    {
      v9 = 0;
      if (*(v8 + 9))
      {
        v10 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v10 = MEMORY[0x1E695E4C0];
      }

      *a4 = *v10;
    }

    else
    {
      ObjectID = captureDeferredPhotoProcessorRemote_getObjectID(a1, &v14);
      if (ObjectID)
      {
        v9 = ObjectID;
        captureDeferredPhotoProcessorRemote_CopyProperty_cold_1();
      }

      else
      {
        v12 = FigXPCSendStdCopyPropertyMessage();
        v9 = v12;
        if (v12)
        {
          captureDeferredPhotoProcessorRemote_CopyProperty_cold_2(v12);
        }
      }
    }
  }

  else
  {
    captureDeferredPhotoProcessorRemote_CopyProperty_cold_3(DerivedStorage);
    v9 = 0;
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v9;
}

uint64_t captureDeferredPhotoProcessorRemote_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  ObjectID = captureDeferredPhotoProcessorRemote_getObjectID(a1, &v7);
  if (ObjectID)
  {
    v5 = ObjectID;
    captureDeferredPhotoProcessorRemote_SetProperty_cold_1();
  }

  else
  {
    v4 = FigXPCSendStdSetPropertyMessage();
    v5 = v4;
    if (v4)
    {
      captureDeferredPhotoProcessorRemote_SetProperty_cold_2(v4);
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t captureDeferredPhotoProcessorRemote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    captureDeferredPhotoProcessorRemote_getObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 9))
    {
      captureDeferredPhotoProcessorRemote_getObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  return result;
}

uint64_t captureDeferredPhotoProcessorRemote_CopyUnfinishedPhotoIdentifiers(uint64_t a1)
{
  v3 = 0;
  if (captureDeferredPhotoProcessorRemote_createBasicMessage(a1, 1668311411, &v3))
  {
    captureDeferredPhotoProcessorRemote_CopyUnfinishedPhotoIdentifiers_cold_1();
  }

  else if (FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    captureDeferredPhotoProcessorRemote_CopyUnfinishedPhotoIdentifiers_cold_2();
  }

  else
  {
    v1 = FigXPCMessageCopyCFObject();
    if (v1)
    {
      captureDeferredPhotoProcessorRemote_CopyUnfinishedPhotoIdentifiers_cold_3(v1);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return 0;
}

uint64_t captureDeferredPhotoProcessorRemote_ProcessPhoto(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v4 = captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage(a1, 1885893743, a2, a3, &v10);
  if (v4)
  {
    v8 = v4;
    captureDeferredPhotoProcessorRemote_ProcessPhoto_cold_1();
  }

  else
  {
    v5 = FigXPCMessageSetCFString();
    if (v5)
    {
      v8 = v5;
      captureDeferredPhotoProcessorRemote_ProcessPhoto_cold_2();
    }

    else
    {
      v6 = FigXPCMessageSetCFArray();
      if (v6)
      {
        v8 = v6;
        captureDeferredPhotoProcessorRemote_ProcessPhoto_cold_3();
      }

      else
      {
        v7 = FigXPCRemoteClientSendSyncMessage();
        v8 = v7;
        if (v7)
        {
          captureDeferredPhotoProcessorRemote_ProcessPhoto_cold_4(v7);
        }
      }
    }
  }

  FigXPCRelease();
  return v8;
}

uint64_t captureDeferredPhotoProcessorRemote_CancelPhotoProcessing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v3 = captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage(a1, 1668311156, a2, a3, &v7);
  if (v3)
  {
    v5 = v3;
    captureDeferredPhotoProcessorRemote_CancelPhotoProcessing_cold_1();
  }

  else
  {
    v4 = FigXPCRemoteClientSendSyncMessage();
    v5 = v4;
    if (v4)
    {
      captureDeferredPhotoProcessorRemote_CancelPhotoProcessing_cold_2(v4);
    }
  }

  FigXPCRelease();
  return v5;
}

uint64_t captureDeferredPhotoProcessorRemote_DeletePersistentStorageForPhoto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v3 = captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage(a1, 1685091188, a2, a3, &v7);
  if (v3)
  {
    v5 = v3;
    captureDeferredPhotoProcessorRemote_DeletePersistentStorageForPhoto_cold_1();
  }

  else
  {
    v4 = FigXPCRemoteClientSendSyncMessage();
    v5 = v4;
    if (v4)
    {
      captureDeferredPhotoProcessorRemote_DeletePersistentStorageForPhoto_cold_2(v4);
    }
  }

  FigXPCRelease();
  return v5;
}

const char *captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  ObjectID = captureDeferredPhotoProcessorRemote_getObjectID(a1, &v12);
  if (ObjectID)
  {
    v7 = ObjectID;
    captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription_cold_1();
LABEL_11:
    v8 = v14;
    fig_log_get_emitter();
    v9 = v7;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9, v8, v10, 0, 0, v12, v13, v14);
    goto LABEL_7;
  }

  v3 = FigXPCCreateBasicMessage();
  if (v3)
  {
    v7 = v3;
    captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription_cold_2();
    goto LABEL_11;
  }

  v4 = FigXPCMessageSetCFString();
  if (v4)
  {
    v7 = v4;
    captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription_cold_3();
    goto LABEL_11;
  }

  if (FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription_cold_4();
  }

  else
  {
    v5 = FigXPCMessageCopyCFString();
    if (v5)
    {
      captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription_cold_5(v5);
    }
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v11;
}

uint64_t captureDeferredPhotoProcessorRemote_createBasicMessage(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  if (a3)
  {
    ObjectID = captureDeferredPhotoProcessorRemote_getObjectID(a1, &v8);
    if (ObjectID)
    {
      v6 = ObjectID;
      captureDeferredPhotoProcessorRemote_createBasicMessage_cold_1(ObjectID);
    }

    else
    {
      v5 = FigXPCCreateBasicMessage();
      v6 = v5;
      if (v5)
      {
        captureDeferredPhotoProcessorRemote_createBasicMessage_cold_2(v5);
      }

      else
      {
        *a3 = v9;
      }
    }
  }

  else
  {
    captureDeferredPhotoProcessorRemote_createBasicMessage_cold_3(a1);
    return 4294954516;
  }

  return v6;
}

uint64_t captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = 0;
  v13 = 0;
  if (a5)
  {
    ObjectID = captureDeferredPhotoProcessorRemote_getObjectID(a1, &v12);
    if (ObjectID)
    {
      v10 = ObjectID;
      captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage_cold_1(ObjectID);
    }

    else
    {
      v7 = FigXPCCreateBasicMessage();
      if (v7)
      {
        v10 = v7;
        captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage_cold_2(v7);
      }

      else
      {
        v8 = FigXPCMessageSetCFString();
        if (v8)
        {
          v10 = v8;
          captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage_cold_3(v8);
        }

        else
        {
          v9 = FigXPCMessageSetCFString();
          v10 = v9;
          if (v9)
          {
            captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage_cold_4(v9);
          }

          else
          {
            *a5 = v13;
          }
        }
      }
    }
  }

  else
  {
    captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage_cold_5(a1);
    return 4294954516;
  }

  return v10;
}

uint64_t BWStillImageCaptureIDForSampleBuffer(const void *a1)
{
  v2 = CMGetAttachment(a1, @"StillSettings", 0);
  if (!v2)
  {
    v2 = CMGetAttachment(a1, @"BWStillImageCaptureSettings", 0);
    if (!v2)
    {
      return -1;
    }
  }

  return [v2 settingsID];
}

uint64_t BWStillImageProcessingFlagsForSampleBuffer(const void *a1)
{
  v1 = CMGetAttachment(a1, @"StillImageProcessingFlags", 0);

  return [v1 unsignedIntValue];
}

void BWStillImageSetProcessingFlagsForSampleBuffer(const void *a1, int a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(a1, @"StillImageProcessingFlags", 0), "unsignedIntValue") | a2}];

  CMSetAttachment(a1, @"StillImageProcessingFlags", v3, 1u);
}

void BWStillImageUnsetProcessingFlagsForSampleBuffer(const void *a1, int a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(a1, @"StillImageProcessingFlags", 0), "unsignedIntValue") & ~a2}];

  CMSetAttachment(a1, @"StillImageProcessingFlags", v3, 1u);
}

unint64_t BWCropRectDimensionsForZoomFactor(uint64_t a1, __n128 a2, double a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  a4.n128_f64[0] = 1.0 / a2.n128_f32[0];
  a6.n128_f64[0] = a1 / SHIDWORD(a1);
  a2.n128_u64[0] = 0;
  a5.n128_u64[0] = a4.n128_u64[0];
  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(a1, a1 >> 32, a2, 0.0, a4, a5, a6, a7);
  width = v10.size.width;
  height = v10.size.height;
  if (CGRectIsNull(v10))
  {
    BWCropRectDimensionsForZoomFactor_cold_1();
  }

  return width | (height << 32);
}

void *BWGetWhiteBalanceMetadataFromFrameStatistics(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(a1, "awbStable")), *off_1E798B148}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(a1, "awbLocked")), *off_1E798B118}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbRGain")), *off_1E798B120}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbGGain")), *off_1E798B0F8}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbBGain")), *off_1E798B0C0}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbComboRGain")), *off_1E798B0D8}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbComboGGain")), *off_1E798B0D0}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbComboBGain")), *off_1E798B0C8}];
  if ([a1 awbSkinRGain] && objc_msgSend(a1, "awbSkinGGain") && objc_msgSend(a1, "awbSkinBGain"))
  {
    [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbSkinRGain")), *off_1E798B138}];
    [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbSkinGGain")), *off_1E798B130}];
    [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbSkinBGain")), *off_1E798B128}];
  }

  if ([a1 awbSpatialCCMMixingFactor])
  {
    [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a1, "awbSpatialCCMMixingFactor")), *off_1E798B140}];
  }

  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"colorCorrectionMatrix"), *off_1E798B1E0}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a1, "cct")), *off_1E798B1D0}];
  return v2;
}

uint64_t BWCopyWhiteBalanceMetadata(void *a1, void *a2)
{
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B1D0), *off_1E798B1D0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B118), *off_1E798B118}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B148), *off_1E798B148}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B120), *off_1E798B120}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0F8), *off_1E798B0F8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0C0), *off_1E798B0C0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0D8), *off_1E798B0D8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0D0), *off_1E798B0D0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0C8), *off_1E798B0C8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0F0), *off_1E798B0F0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0E8), *off_1E798B0E8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0E0), *off_1E798B0E0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B138), *off_1E798B138}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B130), *off_1E798B130}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B128), *off_1E798B128}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B1E0), *off_1E798B1E0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B140), *off_1E798B140}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"AwbOutputMetadata", @"AwbOutputMetadata"}];
  v4 = [a1 objectForKeyedSubscript:@"MIWBOutputMetadata"];

  return [a2 setObject:v4 forKeyedSubscript:@"MIWBOutputMetadata"];
}

uint64_t BWCopyLTMMetadata(void *a1, void *a2)
{
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B440), *off_1E798B440}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B438), *off_1E798B438}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B7C8), *off_1E798B7C8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A730), *off_1E798A730}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A6B8), *off_1E798A6B8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A6C8), *off_1E798A6C8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A550), *off_1E798A550}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A728), *off_1E798A728}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A6B0), *off_1E798A6B0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A6C0), *off_1E798A6C0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A548), *off_1E798A548}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B450), *off_1E798B450}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B338), *off_1E798B338}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B358), *off_1E798B358}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B1A8), *off_1E798B1A8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A6A8), *off_1E798A6A8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A6A0), *off_1E798A6A0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A6E8), *off_1E798A6E8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B490), *off_1E798B490}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B4A0), *off_1E798B4A0}];
  v4 = *off_1E798B498;
  v5 = [a1 objectForKeyedSubscript:*off_1E798B498];

  return [a2 setObject:v5 forKeyedSubscript:v4];
}

uint64_t BWInferenceTypeForInferenceAttachmentKey(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, 0x1F219E990) & 1) != 0 || (objc_msgSend_isEqualToString_(a1))
  {
    return 104;
  }

  if (objc_msgSend_isEqualToString_(a1) & 1) != 0 || (objc_msgSend_isEqualToString_(a1))
  {
    return 802;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 201;
  }

  return 0;
}

id BWPortTypesWithResolutionFlavor(void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [a1 objectForKeyedSubscript:v9];
        if ([v10 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}])
        {
          [v4 addObject:v9];
        }
      }

      v6 = [a1 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }

  result = [v4 count];
  if (result)
  {
    return [v4 copy];
  }

  return result;
}

uint64_t BWCameraSensorOrientationCompensationDegreesCWForRequestedSettings(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || [a1 orientationMetadataExplicitlySet])
  {
    return 0;
  }

  return a2;
}

uint64_t dcn_convertU16toFloatForImage_NEON(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3, int32x2_t a4)
{
  a4.i32[0] = *(a3 + 8);
  v71 = a4;
  a4.i32[0] = *(a3 + 4);
  v72 = a4;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v11 = CVPixelBufferGetBytesPerRow(a2);
  v12 = FigDepthFormatIs16Bit(PixelFormatType);
  if (v12)
  {
    v13 = 16;
  }

  else
  {
    v13 = 32;
  }

  v69 = *(a3 + 12);
  v70 = v12;
  v14 = CVPixelBufferLockBaseAddress(a1, 1uLL);
  if (v14)
  {
    v67 = v14;
    dcn_convertU16toFloatForImage_NEON_cold_1();
  }

  else
  {
    v15 = CVPixelBufferLockBaseAddress(a2, 0);
    if (v15)
    {
      v67 = v15;
      dcn_convertU16toFloatForImage_NEON_cold_2(v15, a1);
    }

    else
    {
      if (FigDepthFormatIsDepth(PixelFormatType))
      {
        v16 = *(a3 + 16) ^ 1;
      }

      else
      {
        v16 = 0;
      }

      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      v18 = CVPixelBufferGetBaseAddress(a2);
      v19 = vdupq_n_s32(v69);
      v20 = vdupq_lane_s32(v71, 0);
      v21 = vdupq_lane_s32(v72, 0);
      if (v16)
      {
        if (v70)
        {
          if (Height)
          {
            v22 = 0;
            v23.i64[0] = 0x3F0000003FLL;
            v23.i64[1] = 0x3F0000003FLL;
            v24 = vnegq_f32(v23);
            do
            {
              if (Width)
              {
                v25 = 0;
                v26 = v18;
                v27 = BaseAddress;
                do
                {
                  v28 = *v27++;
                  v29 = vmovl_u16(*v28.i8);
                  v30 = vmovl_high_u16(v28);
                  v31 = vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v29)), 0);
                  v32 = vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v30)), 0);
                  v33 = vrecpeq_f32(v31);
                  v34 = vrecpeq_f32(v32);
                  *v26 = vcvt_hight_f16_f32(vcvt_f16_f32(vbslq_s8(vceqq_s32(v19, v29), v24, vmulq_f32(v33, vrecpsq_f32(v31, v33)))), vbslq_s8(vceqq_s32(v19, v30), v24, vmulq_f32(v34, vrecpsq_f32(v32, v34))));
                  v25 += 8;
                  v26 = (v26 + v13);
                }

                while (Width > v25);
              }

              ++v22;
              BaseAddress = (BaseAddress + BytesPerRow);
              v18 = (v18 + v11);
            }

            while (v22 != Height);
          }
        }

        else if (Height)
        {
          v44 = 0;
          v45.i64[0] = 0x3F0000003FLL;
          v45.i64[1] = 0x3F0000003FLL;
          v46 = vnegq_f32(v45);
          do
          {
            if (Width)
            {
              v47 = 0;
              v48 = BaseAddress;
              v49 = v18;
              do
              {
                v50 = *v48++;
                v51 = vmovl_u16(*v50.i8);
                v52 = vmovl_high_u16(v50);
                v53 = vceqq_s32(v19, v51);
                v54 = vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v51)), 0);
                v55 = vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v52)), 0);
                v56 = vrecpeq_f32(v54);
                v57 = vrecpeq_f32(v55);
                *v49 = vbslq_s8(v53, v46, vmulq_f32(v56, vrecpsq_f32(v54, v56)));
                v49[1] = vbslq_s8(vceqq_s32(v19, v52), v46, vmulq_f32(v57, vrecpsq_f32(v55, v57)));
                v49 += 2;
                v47 += 8;
              }

              while (Width > v47);
            }

            ++v44;
            BaseAddress = (BaseAddress + BytesPerRow);
            v18 = (v18 + v11);
          }

          while (v44 != Height);
        }
      }

      else if (v70)
      {
        if (Height)
        {
          v35 = 0;
          v36.i64[0] = 0x3F0000003FLL;
          v36.i64[1] = 0x3F0000003FLL;
          v37 = vnegq_f32(v36);
          do
          {
            if (Width)
            {
              v38 = 0;
              v39 = v18;
              v40 = BaseAddress;
              do
              {
                v41 = *v40++;
                v42 = vmovl_u16(*v41.i8);
                v43 = vmovl_high_u16(v41);
                *v39 = vcvt_hight_f16_f32(vcvt_f16_f32(vbslq_s8(vceqq_s32(v19, v42), v37, vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v42)), 0))), vbslq_s8(vceqq_s32(v19, v43), v37, vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v43)), 0)));
                v38 += 8;
                v39 = (v39 + v13);
              }

              while (Width > v38);
            }

            ++v35;
            BaseAddress = (BaseAddress + BytesPerRow);
            v18 = (v18 + v11);
          }

          while (v35 != Height);
        }
      }

      else if (Height)
      {
        v58 = 0;
        v59.i64[0] = 0x3F0000003FLL;
        v59.i64[1] = 0x3F0000003FLL;
        v60 = vnegq_f32(v59);
        do
        {
          if (Width)
          {
            v61 = 0;
            v62 = v18;
            v63 = BaseAddress;
            do
            {
              v64 = *v63++;
              v65 = vmovl_u16(*v64.i8);
              v66 = vmovl_high_u16(v64);
              *v62 = vbslq_s8(vceqq_s32(v19, v65), v60, vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v65)), 0));
              v62[1] = vbslq_s8(vceqq_s32(v19, v66), v60, vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v66)), 0));
              v62 += 2;
              v61 += 8;
            }

            while (Width > v61);
          }

          ++v58;
          BaseAddress = (BaseAddress + BytesPerRow);
          v18 = (v18 + v11);
        }

        while (v58 != Height);
      }

      CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      CVPixelBufferUnlockBaseAddress(a2, 0);
      return 0;
    }
  }

  return v67;
}

double pixelSumComputeCompatibleROI(int a1, double a2)
{
  v2 = a2;
  if (a1 - 32 < a2)
  {
    v2 = a1 - 32;
  }

  v3 = v2 & 0xF;
  if (v2 <= 0)
  {
    v3 = -(-v2 & 0xF);
  }

  return ((v2 - v3) & ~((v2 - v3) >> 31));
}

uint64_t pixelSumForROI(__CVBuffer *a1, int32x4_t *a2, int32x4_t *a3, double a4, double a5, double a6, double a7)
{
  if (!a1 || !a2 || !a3)
  {
    pixelSumForROI_cold_7();
    return 0xFFFFFFFFLL;
  }

  if ((CVPixelBufferGetPixelFormatType(a1) & 0xFFFFFFEF) != 0x34323066)
  {
    pixelSumForROI_cold_1();
    return 4294967294;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  if ((BytesPerRowOfPlane & 0xF) != 0)
  {
    pixelSumForROI_cold_2();
    return 4294967293;
  }

  v18 = CVPixelBufferLockBaseAddress(a1, 1uLL);
  if (v18)
  {
    v20 = v18;
    pixelSumForROI_cold_3(v18);
    return v20;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (a4 >= 0.0)
  {
    v20 = 0xFFFFFFFFLL;
    if (a4 < Width && a5 >= 0.0)
    {
      v22 = a5 >= Height || a6 < 1.0;
      v23 = v22 || a7 < 1.0;
      v24 = !v23 && a4 + a6 <= Width;
      if (v24 && a5 + a7 <= Height)
      {
        if (((BaseAddressOfPlane + a4) & 0xF) != 0)
        {
          pixelSumForROI_cold_4();
          v20 = 4294967294;
        }

        else
        {
          v26 = a6;
          if ((a6 & 0x1F) != 0)
          {
            pixelSumForROI_cold_5();
            v20 = 4294967292;
          }

          else
          {
            v27 = a7;
            if ((a7 & 3) == 0)
            {
              v28 = &BaseAddressOfPlane[a4 + BytesPerRowOfPlane * a5];
              if (PixelSumASM(v28, a6, a7, BytesPerRowOfPlane, a2, a3))
              {
                if (v27)
                {
                  v29 = 0;
                  v30 = v28;
                  do
                  {
                    if (v26)
                    {
                      if (v26 >= 0x10)
                      {
                        v33 = 0;
                        v34 = 0uLL;
                        v35 = 0uLL;
                        v36 = 0uLL;
                        v37 = 0uLL;
                        do
                        {
                          v38 = v30[v33 / 0x10];
                          v39 = vmovl_u8(*v38.i8);
                          v40 = vmovl_high_u8(v38);
                          v37 = vaddw_high_u16(v37, v40);
                          v36 = vaddw_u16(v36, *v40.i8);
                          v35 = vaddw_high_u16(v35, v39);
                          v34 = vaddw_u16(v34, *v39.i8);
                          v33 += 16;
                        }

                        while (v26 != v33);
                        v32 = vaddvq_s32(vaddq_s32(vaddq_s32(v34, v36), vaddq_s32(v35, v37)));
                      }

                      else
                      {
                        v31 = 0;
                        v32 = 0;
                        do
                        {
                          v32 += v30->u8[v31++];
                        }

                        while (v26 != v31);
                      }
                    }

                    else
                    {
                      v32 = 0;
                    }

                    a2->i32[v29] = v32;
                    v30 = (v30 + BytesPerRowOfPlane);
                    ++v29;
                  }

                  while (v29 != v27);
                }

                if (v26)
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (v27)
                    {
                      v42 = 0;
                      v43 = 0;
                      v44 = v27;
                      do
                      {
                        v43 += v28->u8[v42];
                        v42 += BytesPerRowOfPlane;
                        --v44;
                      }

                      while (v44);
                    }

                    else
                    {
                      v43 = 0;
                    }

                    a3->i32[i] = v43;
                    v28 = (v28 + 1);
                  }
                }
              }

              v20 = 0;
              goto LABEL_10;
            }

            pixelSumForROI_cold_6();
            v20 = 4294967291;
          }
        }
      }
    }
  }

  else
  {
    v20 = 0xFFFFFFFFLL;
  }

  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v7, v45, v46, v47, v48, v49, v50);
LABEL_10:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v20;
}

uint64_t findOffsetFromSums(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6, float *a7, int *a8, float *a9)
{
  result = 0xFFFFFFFFLL;
  if (!a1 || !a2 || a3 < 0)
  {
    return result;
  }

  v14 = (2 * a4);
  if (a3 < v14)
  {
    return 4294967294;
  }

  v15 = a8;
  v17 = a9;
  if (!a3 || !a7)
  {
    if (a7)
    {
      *a7 = 0.0;
    }

    if (a9)
    {
      *a9 = 0.0;
    }

    v23 = 0;
    result = 0;
    if (a8)
    {
      goto LABEL_73;
    }

    return result;
  }

  if (((a3 - 2 * a4) & 7) != 0)
  {
    findOffsetFromSums_cold_1(0xFFFFFFFFLL);
    v17 = a9;
  }

  v71 = (a3 - 2 * a4);
  if (a5)
  {
    MemSum32(a1, a3);
    v20 = v19;
    MemSum32(a2, a3);
    LODWORD(v70) = v21 / a3;
    HIDWORD(v70) = v20 / a3;
    if (a9)
    {
      goto LABEL_12;
    }

LABEL_21:
    v22 = 0;
    goto LABEL_22;
  }

  v70 = 0;
  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_12:
  v22 = malloc_type_calloc(v14, 4uLL, 0x100004052888210uLL);
  if (!v22)
  {
    return 4294967293;
  }

LABEL_22:
  v63 = a2;
  v64 = v14;
  v66 = a7;
  v67 = v15;
  v24 = (a1 + 4 * a4 - 4);
  v62 = v14 - 1;
  v69 = a4;
  v65 = v22;
  if (v14 < 1)
  {
    v26 = 0;
    v25 = 0;
    v23 = 0x7FFFFFFF;
    v31 = a9;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 1 - a4;
    v23 = 0x7FFFFFFF;
    v28 = v22;
    v29 = v63;
    do
    {
      if (a5)
      {
        MemDiffZeroMean32(v24, HIDWORD(v70), v29, v70, v71);
      }

      else
      {
        MemDiff32(v24, v29, v71);
      }

      v31 = a9;
      if (a9)
      {
        *v28 = v30;
        v26 += v30;
      }

      v29 = (v29 + 4);
      if (v30 < v23)
      {
        v23 = v30;
        v25 = v27;
      }

      ++v28;
      ++v27;
      --v14;
    }

    while (v14);
  }

  if (v69 >= 1)
  {
    v33 = v64;
    v32 = v65;
    v26 = llround(v26 / v64);
    v34 = v66;
    v15 = v67;
    if (!v31)
    {
      goto LABEL_52;
    }

LABEL_38:
    v35 = v25 + v69;
    v36 = v69 / 5;
    v37 = ((v35 - v36) & ~((v35 - v36) >> 31)) + 1;
    v38 = 0x7FFFFFFF;
    v39 = v32;
    do
    {
      v41 = *v39++;
      v40 = v41;
      if (v41 < v38)
      {
        v38 = v40;
      }

      --v37;
    }

    while (v37);
    LODWORD(v42) = v35 + v36;
    if (v62 < v42)
    {
      LODWORD(v42) = v62;
    }

    v42 = v42;
    do
    {
      if (v32[v42] < v38)
      {
        v38 = v32[v42];
      }

      ++v42;
    }

    while (v42 < v33);
    if (v26 < 1)
    {
      v43 = 0.0;
    }

    else
    {
      v43 = (v38 - v23) / v26;
    }

    *v31 = v43;
    goto LABEL_52;
  }

  v34 = v66;
  v15 = v67;
  v33 = v64;
  v32 = v65;
  if (v31)
  {
    goto LABEL_38;
  }

LABEL_52:
  v44 = v25;
  *v34 = v25;
  if (a6)
  {
    if (v32)
    {
      v45 = v69 + v25;
      v46 = v45 - 2;
      v47 = v71;
      if (v45 < 2)
      {
        v48 = 0;
      }

      else
      {
        v48 = v32[v46];
      }

      if (v45 < v33)
      {
        if (v48)
        {
          v49 = v32[v45];
          if (v49)
          {
            v50 = &v63->i32[v46];
            v51 = &v63->i32[v45 - 1];
            if (v48 < v49)
            {
              v51 = v50;
            }

            if (v71 < 1)
            {
              v56 = 0.0;
              v55 = 0.0;
            }

            else
            {
              v54 = *v51;
              v52 = v51 + 1;
              v53 = v54;
              v55 = 0.0;
              v56 = 0.0;
              do
              {
                v58 = *v52++;
                v57 = v58;
                v59 = (v58 - v53);
                v56 = v56 + (v59 * v59);
                v60 = v24->i32[0];
                v24 = (v24 + 4);
                v55 = v55 + ((v60 - v53) * v59);
                v53 = v57;
                --v47;
              }

              while (v47);
            }

            if (fabsf(v56) > 1.0e-10)
            {
              v61 = v55 / v56;
              if (v48 >= v49)
              {
                v44 = v61 + v44;
              }

              else
              {
                v44 = v61 + -1.0 + v44;
              }
            }
          }
        }
      }
    }

    else
    {
      findOffsetFromSums_cold_2();
      v32 = 0;
      v44 = v25;
    }

    *v34 = v44;
  }

  free(v32);
  if (v15)
  {
LABEL_73:
    result = 0;
    *v15 = v23;
    return result;
  }

  return 0;
}

uint64_t PortraitLibraryCore(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = PortraitLibraryCore_frameworkLibrary;
  v6 = PortraitLibraryCore_frameworkLibrary;
  if (!PortraitLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7999FD0;
    v8 = *off_1E7999FE0;
    v9 = 0;
    v4[3] = _sl_dlopen();
    PortraitLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1ACBAA7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PortraitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PortraitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PortraitLibrary()
{
  v3 = 0;
  v0 = PortraitLibraryCore(&v3);
  if (!v0)
  {
    PortraitLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

uint64_t getPTEffectClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTEffectClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTEffectClass_softClass;
  if (!getPTEffectClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTEffectClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTEffectClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAA99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTEffectClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTEffect");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTEffectClass_block_invoke_cold_1();
  }

  getPTEffectClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTEffectDescriptorClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTEffectDescriptorClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTEffectDescriptorClass_softClass;
  if (!getPTEffectDescriptorClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTEffectDescriptorClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTEffectDescriptorClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAAAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTEffectDescriptorClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTEffectDescriptor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTEffectDescriptorClass_block_invoke_cold_1();
  }

  getPTEffectDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTTextureClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTTextureClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTTextureClass_softClass;
  if (!getPTTextureClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTTextureClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTTextureClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAAC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTTextureClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTTexture");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTTextureClass_block_invoke_cold_1();
  }

  getPTTextureClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTRenderPipelineClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTRenderPipelineClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTRenderPipelineClass_softClass;
  if (!getPTRenderPipelineClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTRenderPipelineClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTRenderPipelineClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAAD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTRenderPipelineClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTRenderPipeline");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTRenderPipelineClass_block_invoke_cold_1();
  }

  getPTRenderPipelineClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTRenderRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTRenderRequestClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTRenderRequestClass_softClass;
  if (!getPTRenderRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTRenderRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTRenderRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAAEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTRenderRequestClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTRenderRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTRenderRequestClass_block_invoke_cold_1();
  }

  getPTRenderRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTRenderPipelineDescriptorClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTRenderPipelineDescriptorClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTRenderPipelineDescriptorClass_softClass;
  if (!getPTRenderPipelineDescriptorClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTRenderPipelineDescriptorClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTRenderPipelineDescriptorClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAAFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTRenderPipelineDescriptorClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTRenderPipelineDescriptor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTRenderPipelineDescriptorClass_block_invoke_cold_1();
  }

  getPTRenderPipelineDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTTuningParametersClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTTuningParametersClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTTuningParametersClass_softClass;
  if (!getPTTuningParametersClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTTuningParametersClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTTuningParametersClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAB134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTTuningParametersClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTTuningParameters");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTTuningParametersClass_block_invoke_cold_1();
  }

  getPTTuningParametersClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTCinematographyStreamClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTCinematographyStreamClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTCinematographyStreamClass_softClass;
  if (!getPTCinematographyStreamClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTCinematographyStreamClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTCinematographyStreamClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAB278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTCinematographyStreamClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTCinematographyStream");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTCinematographyStreamClass_block_invoke_cold_1();
  }

  getPTCinematographyStreamClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTCinematographyStreamOptionsClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTCinematographyStreamOptionsClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTCinematographyStreamOptionsClass_softClass;
  if (!getPTCinematographyStreamOptionsClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTCinematographyStreamOptionsClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTCinematographyStreamOptionsClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAB3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTCinematographyStreamOptionsClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTCinematographyStreamOptions");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTCinematographyStreamOptionsClass_block_invoke_cold_1();
  }

  getPTCinematographyStreamOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTCinematographyRefinementClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTCinematographyRefinementClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTCinematographyRefinementClass_softClass;
  if (!getPTCinematographyRefinementClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTCinematographyRefinementClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTCinematographyRefinementClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAB500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTCinematographyRefinementClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTCinematographyRefinement");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTCinematographyRefinementClass_block_invoke_cold_1();
  }

  getPTCinematographyRefinementClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTCinematographyExcludeAsCinematicChoiceSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPTCinematographyExcludeAsCinematicChoiceSymbolLoc_ptr;
  v6 = getPTCinematographyExcludeAsCinematicChoiceSymbolLoc_ptr;
  if (!getPTCinematographyExcludeAsCinematicChoiceSymbolLoc_ptr)
  {
    v1 = PortraitLibrary();
    v4[3] = dlsym(v1, "PTCinematographyExcludeAsCinematicChoice");
    getPTCinematographyExcludeAsCinematicChoiceSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAB644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPTCinematographyExcludeAsCinematicChoiceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PortraitLibrary();
  result = dlsym(v2, "PTCinematographyExcludeAsCinematicChoice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPTCinematographyExcludeAsCinematicChoiceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getPTCinematographyExcludeAsCinematicChoice()
{
  PTCinematographyExcludeAsCinematicChoiceSymbolLoc = getPTCinematographyExcludeAsCinematicChoiceSymbolLoc();
  if (!PTCinematographyExcludeAsCinematicChoiceSymbolLoc)
  {
    getPTCinematographyExcludeAsCinematicChoice_cold_1();
  }

  return *PTCinematographyExcludeAsCinematicChoiceSymbolLoc;
}

uint64_t getPTGlobalCinematographyMetadataVersion1Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTGlobalCinematographyMetadataVersion1Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTGlobalCinematographyMetadataVersion1Class_softClass;
  if (!getPTGlobalCinematographyMetadataVersion1Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTGlobalCinematographyMetadataVersion1Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTGlobalCinematographyMetadataVersion1Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAB7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTGlobalCinematographyMetadataVersion1Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTGlobalCinematographyMetadataVersion1");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTGlobalCinematographyMetadataVersion1Class_block_invoke_cold_1();
  }

  getPTGlobalCinematographyMetadataVersion1Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTGlobalRenderingMetadataVersion1Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTGlobalRenderingMetadataVersion1Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTGlobalRenderingMetadataVersion1Class_softClass;
  if (!getPTGlobalRenderingMetadataVersion1Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTGlobalRenderingMetadataVersion1Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTGlobalRenderingMetadataVersion1Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAB8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTGlobalRenderingMetadataVersion1Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTGlobalRenderingMetadataVersion1");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTGlobalRenderingMetadataVersion1Class_block_invoke_cold_1();
  }

  getPTGlobalRenderingMetadataVersion1Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTGlobalRenderingMetadataVersion2Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTGlobalRenderingMetadataVersion2Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTGlobalRenderingMetadataVersion2Class_softClass;
  if (!getPTGlobalRenderingMetadataVersion2Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTGlobalRenderingMetadataVersion2Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTGlobalRenderingMetadataVersion2Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBABA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTGlobalRenderingMetadataVersion2Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTGlobalRenderingMetadataVersion2");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTGlobalRenderingMetadataVersion2Class_block_invoke_cold_1();
  }

  getPTGlobalRenderingMetadataVersion2Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTGlobalStabilizationMetadataVersion1Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTGlobalStabilizationMetadataVersion1Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTGlobalStabilizationMetadataVersion1Class_softClass;
  if (!getPTGlobalStabilizationMetadataVersion1Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTGlobalStabilizationMetadataVersion1Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTGlobalStabilizationMetadataVersion1Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBABB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTGlobalStabilizationMetadataVersion1Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTGlobalStabilizationMetadataVersion1");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTGlobalStabilizationMetadataVersion1Class_block_invoke_cold_1();
  }

  getPTGlobalStabilizationMetadataVersion1Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTGlobalVideoHeaderMetadataVersion1Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTGlobalVideoHeaderMetadataVersion1Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTGlobalVideoHeaderMetadataVersion1Class_softClass;
  if (!getPTGlobalVideoHeaderMetadataVersion1Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTGlobalVideoHeaderMetadataVersion1Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTGlobalVideoHeaderMetadataVersion1Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBABCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTGlobalVideoHeaderMetadataVersion1Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTGlobalVideoHeaderMetadataVersion1");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTGlobalVideoHeaderMetadataVersion1Class_block_invoke_cold_1();
  }

  getPTGlobalVideoHeaderMetadataVersion1Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTGlobalVideoMetadataClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTGlobalVideoMetadataClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTGlobalVideoMetadataClass_softClass;
  if (!getPTGlobalVideoMetadataClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTGlobalVideoMetadataClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTGlobalVideoMetadataClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBABDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTGlobalVideoMetadataClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTGlobalVideoMetadata");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTGlobalVideoMetadataClass_block_invoke_cold_1();
  }

  getPTGlobalVideoMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTTimedRenderingMetadataVersion1Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTTimedRenderingMetadataVersion1Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTTimedRenderingMetadataVersion1Class_softClass;
  if (!getPTTimedRenderingMetadataVersion1Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTTimedRenderingMetadataVersion1Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTTimedRenderingMetadataVersion1Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBABF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTTimedRenderingMetadataVersion1Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTTimedRenderingMetadataVersion1");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTTimedRenderingMetadataVersion1Class_block_invoke_cold_1();
  }

  getPTTimedRenderingMetadataVersion1Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTTimedRenderingMetadataVersion2Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTTimedRenderingMetadataVersion2Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTTimedRenderingMetadataVersion2Class_softClass;
  if (!getPTTimedRenderingMetadataVersion2Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTTimedRenderingMetadataVersion2Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTTimedRenderingMetadataVersion2Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAC080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTTimedRenderingMetadataVersion2Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTTimedRenderingMetadataVersion2");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTTimedRenderingMetadataVersion2Class_block_invoke_cold_1();
  }

  getPTTimedRenderingMetadataVersion2Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTTimedStabilizationMetadataVersion1Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTTimedStabilizationMetadataVersion1Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTTimedStabilizationMetadataVersion1Class_softClass;
  if (!getPTTimedStabilizationMetadataVersion1Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTTimedStabilizationMetadataVersion1Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTTimedStabilizationMetadataVersion1Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAC1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTTimedStabilizationMetadataVersion1Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTTimedStabilizationMetadataVersion1");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTTimedStabilizationMetadataVersion1Class_block_invoke_cold_1();
  }

  getPTTimedStabilizationMetadataVersion1Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTSerializationClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTSerializationClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTSerializationClass_softClass;
  if (!getPTSerializationClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTSerializationClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTSerializationClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAC308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTSerializationClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTSerialization");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTSerializationClass_block_invoke_cold_1();
  }

  getPTSerializationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTDisparityPostProcessingClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTDisparityPostProcessingClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTDisparityPostProcessingClass_softClass;
  if (!getPTDisparityPostProcessingClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTDisparityPostProcessingClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTDisparityPostProcessingClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAC44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTDisparityPostProcessingClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTDisparityPostProcessing");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTDisparityPostProcessingClass_block_invoke_cold_1();
  }

  getPTDisparityPostProcessingClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTEffectRenderRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTEffectRenderRequestClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTEffectRenderRequestClass_softClass;
  if (!getPTEffectRenderRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTEffectRenderRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTEffectRenderRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAC590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTEffectRenderRequestClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTEffectRenderRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTEffectRenderRequestClass_block_invoke_cold_1();
  }

  getPTEffectRenderRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTEffectReactionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTEffectReactionClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTEffectReactionClass_softClass;
  if (!getPTEffectReactionClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTEffectReactionClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTEffectReactionClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAC6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTEffectReactionClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTEffectReaction");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTEffectReactionClass_block_invoke_cold_1();
  }

  getPTEffectReactionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t FigCameraViewfinderServerStart(uint64_t a1, uint64_t a2)
{
  if (FigCameraViewfinderServerStart_once != -1)
  {
    FigCameraViewfinderServerStart_cold_1();
  }

  return 0;
}

FigCameraViewfinderServer *__FigCameraViewfinderServerStart_block_invoke(uint64_t a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  result = objc_alloc_init(FigCameraViewfinderServer);
  FigCameraViewfinderServerStart_serverSingleton = result;
  return result;
}

uint64_t FigSerializedDepthImageBufferMetadataComputeSerializationSize(CVPixelBufferRef pixelBuffer, _DWORD *a2, void *a3)
{
  if (a2)
  {
    *a2 = 1;
  }

  Height = CVPixelBufferGetHeight(pixelBuffer);
  *a3 = CVPixelBufferGetBytesPerRow(pixelBuffer) * Height + 16;
  return 0;
}

uint64_t FigSerializedDepthImageBufferMetadataSerializeIntoBuffer(__CVBuffer *a1, uint64_t a2, _DWORD *a3)
{
  Height = CVPixelBufferGetHeight(a1);
  if (CVPixelBufferGetBytesPerRow(a1) * Height + 16 == a2)
  {
    *a3 = 1;
    Width = CVPixelBufferGetWidth(a1);
    v8 = CVPixelBufferGetHeight(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    a3[1] = Width;
    a3[2] = v8;
    a3[3] = BytesPerRow;
    a3[4] = PixelFormatType;
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    memcpy(a3 + 5, BaseAddress, (BytesPerRow * v8));
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    return 0;
  }

  else
  {
    FigSerializedDepthImageBufferMetadataSerializeIntoBuffer_cold_1(&v13);
    return v13;
  }
}

unint64_t FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer(_DWORD *a1, uint64_t a2, CVPixelBufferRef *a3)
{
  pixelBuffer = 0;
  if (*a1 != 1)
  {
    FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_1(&v20);
    goto LABEL_27;
  }

  v6 = a1[1];
  v5 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = *a3;
  if (*a3)
  {
    pixelBuffer = *a3;
    if (v6 != CVPixelBufferGetWidth(v9))
    {
      FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_2(&v20);
      goto LABEL_27;
    }

    if (v5 != CVPixelBufferGetHeight(v9))
    {
      FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_3(&v20);
      goto LABEL_27;
    }

    if (v7 != CVPixelBufferGetPixelFormatType(v9))
    {
      FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_4(&v20);
LABEL_27:
      v17 = v20;
      goto LABEL_28;
    }

LABEL_9:
    BytesPerRow = CVPixelBufferGetBytesPerRow(v9);
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    v13 = BaseAddress;
    if (v8 == BytesPerRow)
    {
      memcpy(BaseAddress, a1 + 5, (v8 * v5));
    }

    else
    {
      if (BytesPerRow >= v8)
      {
        v14 = v8;
      }

      else
      {
        v14 = BytesPerRow;
      }

      if (BytesPerRow >= v8)
      {
        v15 = BytesPerRow - v8;
      }

      else
      {
        v15 = 0;
      }

      if (v5)
      {
        v16 = a1 + 5;
        do
        {
          memcpy(v13, v16, v14);
          if (BytesPerRow > v8)
          {
            bzero(&v13[v14], v15);
          }

          v16 = (v16 + v8);
          v13 += BytesPerRow;
          LODWORD(v5) = v5 - 1;
        }

        while (v5);
      }
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    if (*a3)
    {
      return 0;
    }

LABEL_32:
    v17 = 0;
    *a3 = pixelBuffer;
    return v17;
  }

  v10 = CVPixelBufferCreate(*MEMORY[0x1E695E480], v6, v5, v7, 0, &pixelBuffer);
  if (!v10)
  {
    v9 = pixelBuffer;
    goto LABEL_9;
  }

  v17 = v10;
  FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_5(v10);
LABEL_28:
  if (*a3)
  {
    return v17;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  return v17;
}

void *bweia_addRequirement_cmm(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_msgSend(objc_msgSend(a1 "imageDescriptor")];
  v11 = [objc_msgSend(objc_msgSend(a1 "imageDescriptor")];

  return bweia_addRequirement_base(a1, a2, a3, a4, a5, v10, v11);
}

void *__getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionCoreLibrary();
  result = dlsym(v2, "VisionCoreInferenceNetworkIdentifierCamGaze");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1ACBB593C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACBB8344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t mscsn_metadataOutputConfigurationKeyForOutputIndex(int a1)
{
  result = 0;
  if (a1 <= 11)
  {
    if (a1 == 9)
    {
      v3 = off_1E798AF30;
    }

    else
    {
      if (a1 != 10)
      {
        return result;
      }

      v3 = off_1E798AF10;
    }
  }

  else
  {
    switch(a1)
    {
      case 12:
        v3 = off_1E798AF98;
        break;
      case 14:
        v3 = off_1E798AF78;
        break;
      case 15:
        v3 = off_1E798AF68;
        break;
      default:
        return result;
    }
  }

  return *v3;
}

uint64_t mscsn_semanticMaskOutputConfigurationKeyForSemanticMaskType(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, *off_1E798AFC8))
  {
    v3 = off_1E798AEE0;
    return *v3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    v3 = off_1E798AF00;
    return *v3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    v3 = off_1E798AEF0;
    return *v3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return *off_1E798AFA8;
  }

  else
  {
    return 0;
  }
}

void mscsn_handleStreamDroppedSampleNotification(int a1, uint64_t a2, CFTypeRef cf, uint64_t a4, void *a5)
{
  if (*off_1E798B880 == cf)
  {
    v9 = [a5 objectForKeyedSubscript:{*off_1E798B850, a4}];
    if (objc_msgSend_isEqualToString_(v9))
    {
      v10 = BWDroppedSampleReasonVideoDeviceDiscontinuity;
    }

    else if (objc_msgSend_isEqualToString_(v9))
    {
      v10 = BWDroppedSampleReasonHighFrameRateAutoFocusDiscontinuity;
    }

    else
    {
      objc_msgSend_isEqualToString_(v9);
      v10 = BWDroppedSampleReasonVideoDeviceDiscontinuity;
    }

    v8 = *v10;
  }

  else
  {
    v8 = 0;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__34;
  v19 = __Block_byref_object_dispose__34;
  v20 = a2;
  CFRetain(cf);
  v11 = 0;
  v12 = (v16[5] + 436);
  while (v12[5] != 1 || (*v12 & 2) == 0)
  {
    ++v11;
    v12 += 512;
    if (v11 == 22)
    {
      v11 = 0;
      break;
    }
  }

  v13 = *(v16[5] + 432 + (v11 << 9) + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __mscsn_handleStreamDroppedSampleNotification_block_invoke;
  v14[3] = &unk_1E7999228;
  v14[6] = &v15;
  v14[7] = cf;
  v14[4] = a5;
  v14[5] = v8;
  dispatch_async(v13, v14);
  _Block_object_dispose(&v15, 8);
}

void sub_1ACBBAE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void mscsn_handlePoolReadyNotification(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__34;
  v15 = __Block_byref_object_dispose__34;
  v16 = a2;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *off_1E798B988);
    if (CFEqual(Value, *off_1E798CA78))
    {
      v7 = *(v12[5] + 3536);
      CFRetain(theDict);
      v8 = [CFDictionaryGetValue(theDict *off_1E798B998)];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __mscsn_handlePoolReadyNotification_block_invoke;
      v9[3] = &unk_1E799A2A8;
      v9[4] = &v11;
      v9[5] = theDict;
      v10 = 6;
      v9[6] = v8;
      dispatch_async(v7, v9);
    }
  }

  _Block_object_dispose(&v11, 8);
}

void sub_1ACBBAF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACBBB138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACBBB2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACBBB448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACBBB60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t mscsn_outputIndexForMetadataOutputKey(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, *off_1E798AFF0))
  {
    return 9;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 10;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 12;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 13;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 14;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 15;
  }

  if ((objc_msgSend_isEqualToString_(a1) & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Internal inconsistency, unknown metadata output key: %@", a1), 0}]);
  }

  return 16;
}

CMAttachmentBearerRef mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer(char *a1, __CVBuffer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, VTPixelTransferSessionRef *a7, CFTypeRef *a8, double a9, double a10, float a11)
{
  target = 0;
  cf = 0;
  if (!a1)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_12(0, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
LABEL_166:
    v21 = 0;
LABEL_150:
    LODWORD(v13) = 0;
    goto LABEL_151;
  }

  if (!a2)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_11(a9, a10, a11);
    goto LABEL_166;
  }

  if (!a4)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_10(a9, a10, a11);
    goto LABEL_166;
  }

  v13 = a7;
  if (!a7)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_9(a9, a10, a11);
    v21 = 0;
    goto LABEL_151;
  }

  v14 = a8;
  if (!a8)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_8(a9, a10, a11);
    goto LABEL_166;
  }

  v15 = a6;
  v19 = a3;
  v20 = a1;
  v21 = [a4 newPixelBuffer];
  if (!v21)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_7();
    goto LABEL_150;
  }

  v22 = *off_1E798A3C8;
  v23 = CMGetAttachment(v20, *off_1E798A3C8, 0);
  if (!*v13)
  {
    VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], v13);
  }

  key = *MEMORY[0x1E6965F98];
  v160 = v19;
  v159 = v22;
  v24 = CVBufferHasAttachment(v21, *MEMORY[0x1E6965F98]) || CVBufferHasAttachment(v21, *MEMORY[0x1E6965D88]) || CVBufferHasAttachment(v21, *MEMORY[0x1E6965F30]) != 0;
  v161 = v24;
  v26 = *MEMORY[0x1E695F050];
  v25 = *(MEMORY[0x1E695F050] + 8);
  v28 = *(MEMORY[0x1E695F050] + 16);
  v27 = *(MEMORY[0x1E695F050] + 24);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v165 = Height;
  v166 = Width;
  v162 = Width | (Height << 32);
  v163 = v26;
  v164 = v25;
  v169 = v28;
  if (!v15)
  {
    v153 = v26;
    v36 = v25;
    v37 = v27;
    v157 = v27;
    v38 = v27;
    v39 = v28;
    v40 = v25;
    v41 = v26;
    v42 = v38;
    goto LABEL_70;
  }

  v32 = PixelFormatType;
  v33 = CMGetAttachment(v20, @"TotalZoomFactor", 0);
  if (v33)
  {
    v33 = [v33 floatValue];
    v35 = v34;
  }

  else
  {
    v35 = 1.0;
  }

  valuePtr.origin = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  valuePtr.size = _Q0;
  if (!v23)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_2(v33);
LABEL_176:
    v59 = v27;
    v60 = v26;
    v36 = v164;
    v61 = v164;
    v62 = v26;
    v42 = v27;
    v37 = v27;
    v39 = v169;
    v40 = v164;
    v41 = v163;
    goto LABEL_69;
  }

  if (Width < 1 || Height <= 0)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_1(v33);
    goto LABEL_176;
  }

  v46 = v20;
  CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
  v180.origin.x = mscsn_validPixelBufferRectFromMetadata(v23, v162);
  x = v180.origin.x;
  v49 = v180.size.width;
  v50 = v180.size.height;
  rect1 = v180.origin.y;
  IsNull = CGRectIsNull(v180);
  v53 = IsNull;
  if (!CGRectIfPresent && IsNull && (v49 < v166 || v50 < v165))
  {
    v59 = v27;
    v60 = v163;
    v36 = v164;
    v61 = v164;
    v62 = v163;
    v42 = v27;
    v37 = v27;
    goto LABEL_48;
  }

  v158 = v27;
  FigCaptureMetadataUtilitiesScaleRect(valuePtr.origin.x, valuePtr.origin.y, valuePtr.size.width, valuePtr.size.height, (v35 / a11), v52);
  v56 = v54;
  v57 = v55;
  if (a9 == *MEMORY[0x1E695F060] && a10 == *(MEMORY[0x1E695F060] + 8) || (v56 = (a9 + 1.0) * v54, v57 = (a10 + 1.0) * v55, !v53) || (v56 < 1.0 ? (_NF = v57 < 1.0) : (_NF = 0), _NF))
  {
    v63 = x;
    v185.origin.x = (1.0 - v56) * 0.5;
    v185.origin.y = (1.0 - v57) * 0.5;
    v185.size.width = v56;
    v185.size.height = v57;
    v64 = CGRectEqualToRect(valuePtr, v185);
    v65 = v166;
    v66 = v165;
    v67 = round(v56 * v166 * 0.5);
    v39 = v67 + v67;
    if (v67 + v67 >= a5)
    {
      v69 = v64;
      v70 = round(v57 * v66 * 0.5);
      v42 = v70 + v70;
      v68 = rect1;
      if (v70 + v70 >= SHIDWORD(a5))
      {
LABEL_36:
        v71 = (v65 - v39) * 0.5;
        v72 = ceil(v71);
        v73 = floor(v71);
        if (v71 >= 0.0)
        {
          v74 = v73;
        }

        else
        {
          v74 = v72;
        }

        v75 = (v66 - v42) * 0.5;
        v76 = ceil(v75);
        v77 = floor(v75);
        if (v75 >= 0.0)
        {
          v78 = v77;
        }

        else
        {
          v78 = v76;
        }

        if (v53)
        {
          v20 = v46;
        }

        else
        {
          v79 = v63;
          v80 = v49;
          v81 = v50;
          v82 = v74;
          v186.origin.x = v74;
          v83 = v78;
          v186.origin.y = v78;
          v186.size.width = v39;
          v186.size.height = v42;
          if (CGRectContainsRect(*(&v68 - 1), v186))
          {
            v20 = v46;
            v78 = v83;
            v74 = v82;
          }

          else
          {
            v84 = v39 / v42;
            RectWithAspectRatioInsideDimensions = FigCaptureMakeRectWithAspectRatioInsideDimensions(v49 | (v50 << 32), 1, v84);
            v39 = v86;
            v42 = v87;
            v69 = 0;
            v74 = v63 + RectWithAspectRatioInsideDimensions;
            v78 = rect1 + v88;
            v20 = v46;
          }
        }

        if (v32 == 1885745712 || v32 == 1882468912)
        {
          if (v74 % 6 >= 4)
          {
            v89 = 6 * (v74 / 6) + 6;
          }

          else
          {
            v89 = 6 * (v74 / 6);
          }

          v74 = v89;
        }

        v36 = 0.0;
        rect1a = v74;
        v90 = v78;
        v62 = FigCaptureTransformRectToCoordinateSpaceOfRect(v74, v78, v39, v42, 0.0, 0.0, v65);
        v61 = v91;
        v59 = v93;
        if (v69)
        {
          v60 = v163;
          v36 = v164;
          v37 = v158;
        }

        else
        {
          v94 = FigCaptureTransformRectToCoordinateSpaceOfRect(valuePtr.origin.x, valuePtr.origin.y, valuePtr.size.width, valuePtr.size.height, v62, v91, v92);
          if (v94 >= 0.0)
          {
            v60 = v94;
          }

          else
          {
            v60 = 0.0;
          }

          if (1.0 - v60 < v96)
          {
            v96 = 1.0 - v60;
          }

          v169 = v96;
          if (v95 >= 0.0)
          {
            v36 = v95;
          }

          if (1.0 - v36 >= v97)
          {
            v37 = v97;
          }

          else
          {
            v37 = 1.0 - v36;
          }
        }

        v40 = v90;
        v41 = rect1a;
        goto LABEL_69;
      }
    }

    else
    {
      v68 = rect1;
    }

    v69 = 0;
    v42 = SHIDWORD(a5);
    v39 = a5;
    goto LABEL_36;
  }

  v37 = v158;
  v59 = v158;
  v60 = v163;
  v36 = v164;
  v61 = v164;
  v62 = v163;
  v42 = v158;
LABEL_48:
  v39 = v169;
  v40 = v36;
  v41 = v60;
  v20 = v46;
LABEL_69:
  v153 = v60;
  v163 = v62;
  v164 = v61;
  v157 = v59;
LABEL_70:
  v98 = v41;
  v99 = v39;
  v100 = v42;
  v101 = v40;
  if (CGRectIsNull(*(&v40 - 1)))
  {
    DictionaryRepresentation = 0;
  }

  else
  {
    v181.origin.x = v41;
    v181.origin.y = v101;
    v181.size.width = v39;
    v181.size.height = v42;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v181);
  }

  v103 = v169;
  v104 = VTSessionSetProperty(*v13, *MEMORY[0x1E6983E40], DictionaryRepresentation);
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v104)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_3(v104);
  }

  else
  {
    v105 = CVPixelBufferGetWidth(v21);
    v106 = CVPixelBufferGetHeight(v21);
    v151 = v106;
    v152 = v105;
    v108 = a5 < v105 || SHIDWORD(a5) < v106;
    v170 = v108;
    if (!v108)
    {
LABEL_95:
      if (VTPixelTransferSessionTransferImage(*v13, a2, v21))
      {
        mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_4();
      }

      else
      {
        v172 = 0;
        v115 = MEMORY[0x1E6965D70];
        if (v170)
        {
          CVPixelBufferGetWidth(v21);
          CVPixelBufferGetHeight(v21);
          v116 = *v115;
          v117 = CVBufferCopyAttachment(v21, *v115, 0);
          if (v117)
          {
            v118 = CFAutorelease(v117);
          }

          else
          {
            v118 = 0;
          }

          Value = CFDictionaryGetValue(v118, *MEMORY[0x1E6965D80]);
          CFNumberGetValue(Value, kCFNumberSInt32Type, &v172 + 4);
          v120 = CFDictionaryGetValue(v118, *MEMORY[0x1E6965D60]);
          CFNumberGetValue(v120, kCFNumberSInt32Type, &v172);
          CVBufferRemoveAttachment(v21, v116);
        }

        if (!v161)
        {
          CVBufferRemoveAttachment(v21, key);
          CVBufferRemoveAttachment(v21, *MEMORY[0x1E6965D88]);
          CVBufferRemoveAttachment(v21, *MEMORY[0x1E6965F30]);
        }

        if (DictionaryRepresentation)
        {
          CVBufferRemoveAttachment(v21, *v115);
        }

        if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(v20, v21, v14, &cf))
        {
          mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_5();
        }

        else
        {
          if (!BWCMSampleBufferCreateCopyIncludingMetadata(cf, &target))
          {
            if (v160)
            {
              CMSetAttachment(target, @"StillImageCaptureType", [MEMORY[0x1E696AD98] numberWithInt:?], 1u);
            }

            v121 = CMGetAttachment(target, v159, 0);
            [v121 setObject:0 forKeyedSubscript:*off_1E798B7A0];
            if (DictionaryRepresentation)
            {
              if (v170)
              {
                v103 = v103 * (SHIDWORD(v172) / v152);
                v37 = v37 * (v172 / v151);
                v122 = (1.0 - v103) * 0.5;
                v36 = (1.0 - v37) * 0.5;
              }

              else
              {
                v122 = v153;
              }

              v182.origin.x = v122;
              v182.origin.y = v36;
              v182.size.width = v103;
              v182.size.height = v37;
              if (CGRectIsNull(v182))
              {
                [v121 setObject:0 forKeyedSubscript:*off_1E798A5C8];
              }

              else
              {
                v183.origin.x = v122;
                v183.origin.y = v36;
                v183.size.width = v103;
                v183.size.height = v37;
                v123 = CGRectCreateDictionaryRepresentation(v183);
                [v121 setObject:v123 forKeyedSubscript:*off_1E798A5C8];
                if (v123)
                {
                  CFRelease(v123);
                }
              }

              v124 = [objc_msgSend(v121 objectForKeyedSubscript:{*off_1E798B5A8), "intValue"}];
              v125 = [objc_msgSend(v121 objectForKeyedSubscript:{*off_1E798B5A0), "intValue"}];
              _ZF = v124 == v166 && v125 == v165;
              v127 = !_ZF;
              if (_ZF)
              {
                FigCFDictionarySetCGRect();
                if ([v121 objectForKeyedSubscript:*off_1E798B668])
                {
                  FigCFDictionarySetCGRect();
                }

                [v121 setObject:objc_msgSend(v121 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B5D8), *off_1E798B328}];
              }

              v184.origin.x = mscsn_validPixelBufferRectFromMetadata(v23, v162);
              v128 = v184.origin.x;
              y = v184.origin.y;
              if (CGRectIsNull(v184))
              {
                v130 = v157;
                v131 = v163;
                v132 = v164;
              }

              else
              {
                v131 = v163 - v128 / v166;
                v132 = v164 - y / v165;
                v130 = v132 * -2.0 + 1.0;
              }

              v179[0] = 0;
              v133 = *off_1E798B328;
              if (FigCFDictionaryGetInt32IfPresent())
              {
                CFDictionarySetValue(v121, v133, [MEMORY[0x1E696AD98] numberWithInt:(v130 * v179[0])]);
              }

              if (v127)
              {
                v178 = 0;
                FigCFDictionaryGetInt32IfPresent();
                FigCFDictionaryGetInt32IfPresent();
                v167 = *(MEMORY[0x1E695F058] + 16);
                v168 = *MEMORY[0x1E695F058];
                valuePtr.origin = *MEMORY[0x1E695F058];
                valuePtr.size = v167;
                if (FigCFDictionaryGetCGRectIfPresent())
                {
                  v134 = ceil(v131 * valuePtr.size.width);
                  v135 = floor(v131 * valuePtr.size.width);
                  if (v131 * valuePtr.size.width >= 0.0)
                  {
                    v136 = v135;
                  }

                  else
                  {
                    v136 = v134;
                  }

                  v137 = valuePtr.origin.x + v136;
                  v138 = ceil(v132 * valuePtr.size.height);
                  v139 = floor(v132 * valuePtr.size.height);
                  if (v132 * valuePtr.size.height < 0.0)
                  {
                    v139 = v138;
                  }

                  valuePtr.origin.x = v137;
                  valuePtr.origin.y = valuePtr.origin.y + v139;
                  valuePtr.size.width = SHIDWORD(v178) - v137 * 2.0;
                  valuePtr.size.height = v178 - valuePtr.origin.y * 2.0;
                  FigCFDictionarySetCGRect();
                }

                v175 = v168;
                v176 = v167;
                if (FigCFDictionaryGetCGRectIfPresent())
                {
                  v140 = ceil(v131 * v176.width);
                  v141 = floor(v131 * v176.width);
                  if (v131 * v176.width >= 0.0)
                  {
                    v142 = v141;
                  }

                  else
                  {
                    v142 = v140;
                  }

                  v143 = *&v175 + v142;
                  v144 = ceil(v132 * v176.height);
                  v145 = floor(v132 * v176.height);
                  if (v132 * v176.height < 0.0)
                  {
                    v145 = v144;
                  }

                  *&v175 = v143;
                  *(&v175 + 1) = *(&v175 + 1) + v145;
                  v176.width = SHIDWORD(v178) - v143 * 2.0;
                  v176.height = v178 - *(&v175 + 1) * 2.0;
                  FigCFDictionarySetCGRect();
                }
              }
            }

            if (v170)
            {
              FigCFDictionarySetCGRect();
            }

            goto LABEL_150;
          }

          mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_6();
        }
      }

      goto LABEL_174;
    }

    v148 = v20;
    v149 = v14;
    v150 = v23;
    VTSessionSetProperty(*v13, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840E0]);
    LODWORD(valuePtr.origin.x) = 0;
    v109 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    LODWORD(v175) = 0;
    v110 = CFNumberCreate(0, kCFNumberSInt32Type, &v175);
    v179[0] = a5;
    v111 = CFNumberCreate(0, kCFNumberSInt32Type, v179);
    HIDWORD(v178) = HIDWORD(a5);
    v112 = CFNumberCreate(0, kCFNumberSInt32Type, &v178 + 4);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6965D68], v109);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6965D78], v110);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6965D80], v111);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6965D60], v112);
    v114 = VTSessionSetProperty(*v13, @"DestinationCleanAperture", Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v109)
    {
      CFRelease(v109);
    }

    if (v110)
    {
      CFRelease(v110);
    }

    if (v111)
    {
      CFRelease(v111);
    }

    if (v112)
    {
      CFRelease(v112);
    }

    v23 = v150;
    if (!v114)
    {
      v20 = v148;
      v14 = v149;
      goto LABEL_95;
    }

    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v114, v11, v148, v149, v150, v11, v151, v152);
  }

LABEL_174:
  LODWORD(v13) = 1;
LABEL_151:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  result = target;
  if (target)
  {
    v147 = v13;
  }

  else
  {
    v147 = 0;
  }

  if (v147 == 1)
  {
    CFRelease(target);
    return 0;
  }

  return result;
}

void mscsn_removeNonpropagatedAttachmentsFromReflectedStreamingFrame(opaqueCMSampleBuffer *a1)
{
  mscsn_removeNonpropagatedAttachmentsFromAttachmentBearer(a1);
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  if (ImageBuffer)
  {

    mscsn_removeNonpropagatedAttachmentsFromAttachmentBearer(ImageBuffer);
  }
}

void __mscsn_handleStreamDroppedSampleNotification_block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = *off_1E798B888;
  v4 = *off_1E798B868;
  v5 = *off_1E798B880;
  v17 = *off_1E798B858;
  v6 = 22;
  do
  {
    v7 = *(*(*(a1 + 48) + 8) + 40) + 432;
    if (*(v7 + v2) == 1)
    {
      v8 = v7 + v2;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      if (CFEqual(*(a1 + 56), v3))
      {
        v11 = [*(a1 + 32) objectForKeyedSubscript:v4];
        memset(&v19, 0, sizeof(v19));
        CMTimeMakeFromDictionary(&v19, v11);
        if (v9)
        {
          v18 = v19;
          v12 = [BWDroppedSample newDroppedSampleWithReason:0x1F219BEF0 pts:&v18];
          [v10 emitDroppedSample:v12];

          v13 = *(*(*(*(a1 + 48) + 8) + 40) + 136);
          v18 = v19;
          [v13 sourceNodeDidDropFrameWithPTS:&v18];
        }
      }

      else if (CFEqual(*(a1 + 56), v5))
      {
        v14 = [*(a1 + 32) objectForKeyedSubscript:v17];
        memset(&v19, 0, sizeof(v19));
        CMTimeMakeFromDictionary(&v19, v14);
        if (v9)
        {
          v15 = *(a1 + 40);
          v18 = v19;
          v16 = [BWDroppedSample newDroppedSampleWithReason:v15 pts:&v18];
          [v10 emitDroppedSample:v16];
        }
      }
    }

    v2 += 512;
    --v6;
  }

  while (v6);
  CFRelease(*(a1 + 56));
}

void __mscsn_handlePoolReadyNotification_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 40), *off_1E798B990);
  if (Value)
  {
    v3 = Value;
    v4 = *(*(*(*(a1 + 32) + 8) + 40) + 432 + (*(a1 + 56) << 9) + 16);
    v5 = [v4 preparedPixelBufferPool];
    if (v5)
    {
      v6 = v5;
      if (([v4 providesPixelBufferPool] & 1) == 0)
      {
        [v6 setCVPixelBufferPool:v3 attributes:*(a1 + 48)];
      }
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 40);

    CFRelease(v8);
  }
}

uint64_t __multiStreamCameraSourceNode_outputSampleBuffer_block_invoke_1515(uint64_t a1)
{
  if ([*(a1 + 32) liveFormat])
  {
    [*(a1 + 32) markEndOfLiveOutputForConfigurationID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(*(a1 + 32), "liveConfigurationID"))}];
  }

  v2 = *(a1 + 32);

  return [v2 makeConfiguredFormatLive];
}

CFTypeRef CMC_CVBufferGetAttachment(__CVBuffer *a1, const __CFString *a2)
{
  result = CVBufferCopyAttachment(a1, a2, 0);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

uint64_t mscsn_sphereIsUnstableOrInActiveModeBasedOnMetadata(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:*off_1E798B6C0];
  if (v2)
  {
    v3 = ([v2 intValue] >> 4) & 1;
  }

  else
  {
    v3 = 0;
  }

  return (objc_msgSend_isEqualToString_([a1 objectForKeyedSubscript:*off_1E798C178]) | v3) & 1;
}

void mscsn_removeNonpropagatedAttachmentsFromAttachmentBearer(const void *a1)
{
  CMRemoveAttachment(a1, *off_1E798A448);
  CMRemoveAttachment(a1, *off_1E798A468);
  v2 = *off_1E798A458;

  CMRemoveAttachment(a1, v2);
}

double mscsn_validPixelBufferRectFromMetadata(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695F050];
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 16);
  if (FigCFDictionaryGetCGRectIfPresent() && *&v6 == a2 && *(&v6 + 1) == SHIDWORD(a2))
  {
    *&v5 = v4;
  }

  return *&v5;
}

__CFString *BWColorSpacePropertiesToString(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E799A2C8[a1];
  }
}

__CFString *BWStringForCacheMode(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 8;
  if (v1 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E799A330[v1];
  }
}

uint64_t pem_cmPhotoAuxImageTypeForPhotoEncoderNodeAuxImageType(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return dword_1AD056560[a1 - 1];
  }
}

uint64_t pem_cmPhotoAuxImageCustomTypeURNForPhotoEncoderNodeAuxImageType(int a1)
{
  result = 0;
  if (a1 > 7)
  {
    if (a1 <= 9)
    {
      if (a1 == 8)
      {
        v3 = MEMORY[0x1E69917D8];
      }

      else
      {
        v3 = MEMORY[0x1E69917F0];
      }
    }

    else
    {
      switch(a1)
      {
        case 10:
          v3 = MEMORY[0x1E69917C0];
          break;
        case 11:
          v3 = MEMORY[0x1E69917A8];
          break;
        case 12:
          v3 = MEMORY[0x1E6991800];
          break;
        default:
          return result;
      }
    }
  }

  else if (a1 <= 4)
  {
    if (a1 == 1)
    {
      v3 = MEMORY[0x1E69917B8];
    }

    else
    {
      if (a1 != 4)
      {
        return result;
      }

      v3 = MEMORY[0x1E69917D0];
    }
  }

  else if (a1 == 5)
  {
    v3 = MEMORY[0x1E69917E0];
  }

  else if (a1 == 6)
  {
    v3 = MEMORY[0x1E69917E8];
  }

  else
  {
    v3 = MEMORY[0x1E69917F8];
  }

  return *v3;
}

__CFString *BWInferenceTypePathComponent(int a1)
{
  result = @"unknown_inference";
  if (a1 > 169)
  {
    v3 = @"vision_faceprint";
    v4 = @"motion_analysis";
    if (a1 == 60000)
    {
      v5 = @"experiments";
    }

    else
    {
      v5 = @"unknown_inference";
    }

    if (a1 != 2001)
    {
      v4 = v5;
    }

    if (a1 != 804)
    {
      v3 = v4;
    }

    v6 = @"face_segments_with_landmarks";
    v7 = @"PhotosCuration";
    if (a1 != 803)
    {
      v7 = @"unknown_inference";
    }

    if (a1 != 802)
    {
      v6 = v7;
    }

    if (a1 <= 803)
    {
      v3 = v6;
    }

    v8 = @"matting";
    v9 = @"landmarks";
    if (a1 != 801)
    {
      v9 = @"unknown_inference";
    }

    if (a1 != 201)
    {
      v8 = v9;
    }

    v10 = @"learnednr";
    v11 = @"quadralearnednr";
    if (a1 != 171)
    {
      v11 = @"unknown_inference";
    }

    if (a1 != 170)
    {
      v10 = v11;
    }

    if (a1 <= 200)
    {
      v8 = v10;
    }

    if (a1 <= 801)
    {
      return v8;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    switch(a1)
    {
      case 101:
        result = @"smart_camera";
        break;
      case 102:
        result = @"person_segmentation";
        break;
      case 103:
        result = @"rgb_based_person_segmentation";
        break;
      case 104:
        result = @"person_semantics";
        break;
      case 105:
        result = @"streaming_person_segmentation";
        break;
      case 106:
        result = @"monoculardepth";
        break;
      case 107:
        result = @"learned_matting";
        break;
      case 108:
        result = @"faststereodisparity";
        break;
      case 109:
        result = @"videodepth";
        break;
      case 110:
        result = @"disparityfiltering";
        break;
      case 111:
        result = @"realtimefsdnet";
        break;
      case 112:
        result = @"disparityderectification";
        break;
      case 113:
        result = @"stereorectification";
        break;
      case 114:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 152:
      case 153:
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
        return result;
      case 115:
        result = @"disparitypostprocessing";
        break;
      case 116:
        result = @"text_localization";
        break;
      case 117:
        result = @"opticalflow";
        break;
      case 118:
        result = @"anst_refiner256";
        break;
      case 119:
        result = @"videodepthmonocularcmm";
        break;
      case 120:
        result = @"lens_smudge_detection";
        break;
      case 121:
        result = @"cam_gaze";
        break;
      case 150:
        result = @"fusiontracker";
        break;
      case 151:
        result = @"humanpose";
        break;
      case 159:
        result = @"deep_stereo_photo_transfer";
        break;
      case 160:
        result = @"deep_zoom";
        break;
      case 161:
        result = @"faceprint";
        break;
      default:
        if (!a1)
        {
          result = @"internal_provider";
        }

        break;
    }
  }

  return result;
}

__CFString *BWInferenceTypeShortDescription(int a1)
{
  result = @"Unknown Inference";
  if (a1 > 169)
  {
    v3 = @"vision-faceprint";
    v4 = @"motion-analysis";
    if (a1 == 60000)
    {
      v5 = @"experimental";
    }

    else
    {
      v5 = @"Unknown Inference";
    }

    if (a1 != 2001)
    {
      v4 = v5;
    }

    if (a1 != 804)
    {
      v3 = v4;
    }

    v6 = @"face-segments-with-landmarks";
    v7 = @"PhotosCuration";
    if (a1 != 803)
    {
      v7 = @"Unknown Inference";
    }

    if (a1 != 802)
    {
      v6 = v7;
    }

    if (a1 <= 803)
    {
      v3 = v6;
    }

    v8 = @"matting";
    v9 = @"landmarks";
    if (a1 != 801)
    {
      v9 = @"Unknown Inference";
    }

    if (a1 != 201)
    {
      v8 = v9;
    }

    v10 = @"Learned-Noise-Reduction";
    v11 = @"Learned-Noise-Reduction-For-Quadra";
    if (a1 != 171)
    {
      v11 = @"Unknown Inference";
    }

    if (a1 != 170)
    {
      v10 = v11;
    }

    if (a1 <= 200)
    {
      v8 = v10;
    }

    if (a1 <= 801)
    {
      return v8;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    switch(a1)
    {
      case 101:
        result = @"smartcam";
        break;
      case 102:
        result = @"person-segmentation";
        break;
      case 103:
        result = @"rgb-segmentation";
        break;
      case 104:
        result = @"person-semantics";
        break;
      case 105:
        result = @"streaming-person-segmentation";
        break;
      case 106:
        result = @"monocular-depth";
        break;
      case 107:
        result = @"learned-matting";
        break;
      case 108:
        result = @"fast-stereo-disparity";
        break;
      case 109:
        result = @"video-depth";
        break;
      case 110:
        result = @"disparity-filtering";
        break;
      case 111:
        result = @"real-time-fsdnet";
        break;
      case 112:
        result = @"disparity-derectification";
        break;
      case 113:
        result = @"stereo-rectification";
        break;
      case 114:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 152:
      case 153:
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
        return result;
      case 115:
        result = @"disparity-post-processing";
        break;
      case 116:
        result = @"text-localization";
        break;
      case 117:
        result = @"optical-flow";
        break;
      case 118:
        result = @"vmrefiner";
        break;
      case 119:
        result = @"video-depth-monocular-cmm";
        break;
      case 120:
        result = @"lens-smudge-detection";
        break;
      case 121:
        result = @"cam_gaze";
        break;
      case 150:
        result = @"fusion-tracker";
        break;
      case 151:
        result = @"human-pose";
        break;
      case 159:
        result = @"deep-stereo-photo-transfer";
        break;
      case 160:
        result = @"deep-zoom";
        break;
      case 161:
        result = @"faceprint";
        break;
      default:
        if (!a1)
        {
          result = @"internal-provider";
        }

        break;
    }
  }

  return result;
}