uint64_t FigCaptureBinaryPlistGetTypeForObjectAtOffset(void *a1, uint64_t a2)
{
  v2 = *(*a1 + a2);
  if (v2 <= 0x23)
  {
    return *(*a1 + a2);
  }

  else
  {
    return v2 & 0xF0;
  }
}

uint64_t OUTLINED_FUNCTION_193(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _os_log_send_and_compose_impl();
}

unsigned __int8 *FigCaptureBinaryPlistGetDataAndCountForObjectAtOffset(void *a1, uint64_t a2)
{
  v2 = (*a1 + a2);
  result = v2 + 1;
  v4 = (*v2 - 64) >> 4;
  v5 = v4 > 9;
  v6 = (1 << v4) & 0x347;
  if (v5 || v6 == 0)
  {
    abort();
  }

  if ((*v2 & 0xF) == 0xF)
  {
    v8 = (v2 + 2);
    bp_readNinc(&v8, v2[1]);
    return v8;
  }

  return result;
}

unint64_t bp_readNinc(unint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  if (a2 > 15)
  {
    if (a2 <= 17)
    {
      if (a2 != 16)
      {
LABEL_8:
        *a1 = (v2 + 2);
        return __rev16(*v2);
      }

      goto LABEL_15;
    }

    if (a2 != 18)
    {
      if (a2 != 19)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
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

        goto LABEL_8;
      }

LABEL_15:
      *a1 = (v2 + 1);
      return *v2;
    }

    if (a2 != 4)
    {
      if (a2 != 8)
      {
        goto LABEL_11;
      }

LABEL_14:
      *a1 = v2 + 1;
      return bswap64(*v2);
    }
  }

  *a1 = (v2 + 4);
  return bswap32(*v2);
}

unint64_t FigCaptureBinaryPlistFindIndexForStringInObject(uint64_t a1, uint64_t a2, const char *a3, size_t a4)
{
  v4 = (*a1 + a2);
  v5 = *v4;
  v23 = (v4 + 1);
  if ((v5 & 0xE0 | 0x10) != 0xD0)
  {
    abort();
  }

  v9 = v5 & 0xF;
  if ((v5 & 0xF) == 0xF)
  {
    v23 = (v4 + 2);
    v9 = bp_readNinc(&v23, v4[1]);
  }

  if (v9)
  {
    v10 = 0;
    v11 = v23;
LABEL_6:
    v12 = v9 - 1;
    while (1)
    {
      v13 = (v10 + v12) >> 1;
      Noffset = bp_readNoffset(v11, *(a1 + 42), v13 * *(a1 + 42));
      v15 = bp_readNoffset(*(a1 + 8), *(a1 + 41), Noffset * *(a1 + 41));
      v16 = *(*a1 + v15);
      if (v16 > 0x23)
      {
        v16 &= 0xF0u;
      }

      if (v16 != 80)
      {
        break;
      }

      DataAndCountForObjectAtOffset = FigCaptureBinaryPlistGetDataAndCountForObjectAtOffset(a1, v15);
      v19 = v17;
      if (v17 >= a4)
      {
        v20 = a4;
      }

      else
      {
        v20 = v17;
      }

      v21 = strncmp(a3, DataAndCountForObjectAtOffset, v20);
      if (v21)
      {
        if (v10 == v12)
        {
          return -1;
        }

        if (v21 < 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v19 == a4)
        {
          return v13;
        }

        if (v10 == v12)
        {
          return -1;
        }

        if (v19 >= a4)
        {
LABEL_24:
          if (v13 <= v10 + 1)
          {
            v9 = v10 + 1;
          }

          else
          {
            v9 = (v10 + v12) >> 1;
          }

          goto LABEL_6;
        }
      }

      if (v13 + 1 < v12)
      {
        v10 = v13 + 1;
      }

      else
      {
        v10 = v12;
      }
    }

    if (v10 != v12)
    {
      goto LABEL_24;
    }
  }

  return -1;
}

unint64_t FigCaptureBinaryPlistGetOffsetForValueAtIndexInObject(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (*a1 + a2);
  v5 = *v3;
  v4 = *v3;
  v14 = (v3 + 1);
  if ((v5 & 0xF0) != 0xD0)
  {
    FigCaptureBinaryPlistGetOffsetForValueAtIndexInObject_cold_1();
  }

  v8 = v4 & 0xF;
  if ((v4 & 0xF) == 0xF)
  {
    v14 = (v3 + 2);
    v8 = bp_readNinc(&v14, v3[1]);
  }

  if (v8 <= a3)
  {
    FigCaptureBinaryPlistGetOffsetForValueAtIndexInObject_cold_2();
  }

  Noffset = bp_readNoffset(v14, *(a1 + 42), (v8 + a3) * *(a1 + 42));
  v10 = *(a1 + 41);
  v11 = Noffset * v10;
  v12 = *(a1 + 8);

  return bp_readNoffset(v12, v10, v11);
}

uint64_t FigCaptureBinaryPlistGetIntForObjectAtOffset(void *a1, uint64_t a2)
{
  v2 = (*a1 + a2);
  v3 = *v2;
  if (v3 <= 0x11)
  {
    if (*v2 > 0xFu)
    {
      if (v3 == 16)
      {
        return v2[1];
      }

      else
      {
        if (v3 != 17)
        {
          goto LABEL_22;
        }

        return __rev16(*(v2 + 1));
      }
    }

    else if (v3 == 8)
    {
      return 0;
    }

    else
    {
      if (v3 != 9)
      {
        goto LABEL_22;
      }

      return 1;
    }
  }

  else if (*v2 <= 0x20u)
  {
    if (v3 == 18)
    {
      return bswap32(*(v2 + 1));
    }

    else
    {
      if (v3 != 19)
      {
        goto LABEL_22;
      }

      return bswap64(*(v2 + 1));
    }
  }

  else
  {
    switch(v3)
    {
      case '!':
        return COERCE_SHORT_FLOAT(bswap32(*(v2 + 1)) >> 16);
      case '""':
        return COERCE_FLOAT(bswap32(*(v2 + 1)));
      case '#':
        return COERCE_DOUBLE(bswap64(*(v2 + 1)));
      default:
LABEL_22:
        abort();
    }
  }
}

id OUTLINED_FUNCTION_162@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + a2) = a1;
  v5 = *(v3 + 3984);

  return objc_alloc_init(v5);
}

void __FigCaptureSessionPrewarm_block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    captureSession_prewarmMemoryPool(*(a1 + 41), *(a1 + 32));
  }
}

double OUTLINED_FUNCTION_133_1(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = v8;
  v10 = v7;

  *&result = CGRectUnion(*&a1, *&a5);
  return result;
}

BOOL OUTLINED_FUNCTION_133_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

void __flashlight_postNotificationWithPayload_block_invoke(uint64_t a1)
{
  if (dword_1EB58DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }
}

BOOL OUTLINED_FUNCTION_191(NSObject *a1)
{
  v2 = STACK[0x8EB];

  return os_log_type_enabled(a1, v2);
}

uint64_t fvcs_ambientViewingEnvironment(int a1)
{
  v2[0] = (10000 * a1) >> 24;
  v2[1] = (10000 * a1) >> 16;
  v2[2] = (10000 * a1) >> 8;
  v2[3] = 16 * a1;
  v3 = 1111495485;
  return [MEMORY[0x1E695DEF0] dataWithBytes:v2 length:8];
}

uint64_t FigMotionGetGravityFactor(const __CFDictionary *a1, CFDictionaryRef theDict, _DWORD *a3)
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"FocalLengthCharacterization");
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFArrayGetTypeID())
      {
        FocalLengthParametersFromArrayUsingModuleInfo = GetFocalLengthParametersFromArrayUsingModuleInfo(a1, v6, &v14);
        if (FocalLengthParametersFromArrayUsingModuleInfo)
        {
          v12 = FocalLengthParametersFromArrayUsingModuleInfo;
          FigMotionGetGravityFactor_cold_2(FocalLengthParametersFromArrayUsingModuleInfo, v9);
          return v12;
        }

        if ((v15 & 1) == 0)
        {
          v10 = GetFocalLengthParametersFromArrayUsingModuleInfo(0, v6, &v14);
          if (v10)
          {
            v12 = v10;
            FigMotionGetGravityFactor_cold_3(v10, v11);
            return v12;
          }
        }

        goto LABEL_7;
      }

      FigMotionGetGravityFactor_cold_1(&v18);
    }

    else
    {
      FigMotionGetGravityFactor_cold_4(&v18);
    }

    return v18;
  }

LABEL_7:
  v12 = 0;
  *a3 = DWORD2(v16);
  return v12;
}

unint64_t FigCaptureBinaryPlistGetOffsetForObjectAtIndexInObject(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (*a1 + a2);
  v4 = *v3;
  v14 = (v3 + 1);
  if ((v4 & 0xF0u) - 160 > 0x30 || ((1 << ((v4 & 0xF0u) + 96)) & 0x1000100000001) == 0)
  {
    abort();
  }

  v8 = v4 & 0xF;
  if ((v4 & 0xF) == 0xF)
  {
    v14 = (v3 + 2);
    v8 = bp_readNinc(&v14, v3[1]);
  }

  if (v8 <= a3)
  {
    FigCaptureBinaryPlistGetOffsetForObjectAtIndexInObject_cold_1();
  }

  Noffset = bp_readNoffset(v14, *(a1 + 42), *(a1 + 42) * a3);
  v10 = *(a1 + 41);
  v11 = Noffset * v10;
  v12 = *(a1 + 8);

  return bp_readNoffset(v12, v10, v11);
}

double fvcd_stillImageStabilizationIntegrationTimeThresholdFromSensorIDDictionary(void *a1)
{
  if (a1)
  {
    v1 = [a1 objectForKeyedSubscript:@"StillImageStabilization"];
    v2 = 0.0;
    if (v1)
    {
      v3 = [v1 objectForKeyedSubscript:@"IntegrationTimeThresholdDenominator"];
      if (v3)
      {
        [v3 doubleValue];
        return 1.0 / v4;
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
    return 0.0;
  }

  return v2;
}

uint64_t BWActiveDeviceTypeFromPortType(void *a1, uint64_t a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, *off_1E798A0E0))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 64;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 8;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 4;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 16;
  }

  if ((objc_msgSend_isEqualToString_(a1) & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Unknown port type %@.  Does not align with any active device types", a1), 0}]);
  }

  return 32;
}

void captureSource_handleDeviceNotification(uint64_t a1, const void *a2, void *a3, uint64_t a4, void *a5)
{
  v95 = 0;
  if (objc_msgSend_isEqualToString_(a3, a2, 0x1F21A6150, a4))
  {
    v9 = [objc_msgSend(a5 objectForKeyedSubscript:{0x1F21A1ED0), "BOOLValue"}];
    v10 = kFigCaptureSourceProperty_AdjustingWhiteBalance;
LABEL_5:
    v11 = *v10;
    v12 = [MEMORY[0x1E696AD98] numberWithBool:v9 ^ 1u];
    v13 = a2;
    v14 = v11;
LABEL_6:
    v15 = 0;
LABEL_7:

    captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(v13, v14, v12, v15, 0);
    return;
  }

  if (objc_msgSend_isEqualToString_(a3))
  {
    v9 = [objc_msgSend(a5 objectForKeyedSubscript:{0x1F21A1ED0), "BOOLValue"}];
    v10 = kFigCaptureSourceProperty_AdjustingExposure;
    goto LABEL_5;
  }

  if ((objc_msgSend_isEqualToString_(a3) & 1) != 0 || (objc_msgSend_isEqualToString_(a3) & 1) != 0 || (objc_msgSend_isEqualToString_(a3) & 1) != 0 || objc_msgSend_isEqualToString_(a3))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (objc_msgSend_isEqualToString_(a3))
    {
      v17 = @"SubjectAreaChanged";
      v18 = a2;
      v19 = 0;
LABEL_16:
      captureSource_postNotificationWithPayload(v18, v17, v19);
      return;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v20 = FigAtomicAdd32();
      if (!v20)
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v61, v62, v63, v64, v65, v66);
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE12, "<<<< FigCaptureSource >>>>", 0xBD1, v5, v25, v26, v60);
        return;
      }

      if (v20 != 1 || (*(DerivedStorage + 198) & 1) != 0)
      {
        goto LABEL_28;
      }

      v21 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if ((objc_msgSend_isEqualToString_(a3) & 1) == 0 && (objc_msgSend_isEqualToString_(a3) & 1) == 0)
      {
        return;
      }

      if (FigAtomicAdd32() || (*(DerivedStorage + 198) & 1) != 0)
      {
        goto LABEL_28;
      }

      v21 = MEMORY[0x1E695E4C0];
    }

    captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, @"AdjustingFocus", *v21, 0, 0);
LABEL_28:
    if (![objc_msgSend(a5 objectForKeyedSubscript:{@"isFaceRect", "BOOLValue"}])
    {
      return;
    }

    v22 = [a5 objectForKeyedSubscript:@"FocusRectDict"];
    v23 = [a5 valueForKeyPath:@"faceData.AngleInfoRoll"];
    if (!v22 || !v23)
    {
      return;
    }

    v83 = @"FaceRect";
    v84 = @"FaceAngle";
    v89 = v22;
    v90 = v23;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v83 count:2];
    v24 = kFigCaptureSourceNotification_FaceDrivenImageProcessingFaceChanged;
    goto LABEL_32;
  }

  if (objc_msgSend_isEqualToString_(a3))
  {
    v27 = kFigCaptureSourceProperty_Option25Changed;
LABEL_39:
    v28 = *v27;
    v12 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
    v13 = a2;
    v14 = v28;
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(a3))
  {
    v27 = kFigCaptureSourceProperty_Option25Changed2;
    goto LABEL_39;
  }

  if (objc_msgSend_isEqualToString_(a3))
  {
    v12 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
    v29 = kFigCaptureSourceProperty_FocusLensPosition;
LABEL_44:
    v14 = *v29;
    v13 = a2;
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(a3))
  {
    v12 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
    v29 = kFigCaptureSourceProperty_ImageControlMode;
    goto LABEL_44;
  }

  if (objc_msgSend_isEqualToString_(a3))
  {
    captureSource_postNotificationWithPayload(a2, @"StillImageSceneChanged", a5);
    v89 = 0;
    v90 = &v89;
    v91 = 0x3052000000;
    v92 = __Block_byref_object_copy__44;
    v93 = __Block_byref_object_dispose__44;
    v94 = 0;
    v83 = 0;
    v84 = &v83;
    v85 = 0x3052000000;
    v86 = __Block_byref_object_copy__44;
    v87 = __Block_byref_object_dispose__44;
    v88 = 0;
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __captureSource_handleDeviceNotification_block_invoke;
    v82[3] = &unk_1E799DD90;
    v82[4] = a5;
    v82[5] = &v89;
    v82[6] = &v83;
    v30 = captureSource_safelyAccessStorage(a2, v82);
    if (v30)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v30, v5, v61, v62, v63, v64, v65, v66);
    }

    else
    {
      v31 = v90[5];
      if (v31)
      {
        captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, @"FlashActive", v31, 1, 0);
      }

      v32 = v84[5];
      if (v32)
      {
        captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, @"IsStillImageStabilizationScene", v32, 1, 0);
      }
    }

LABEL_51:
    _Block_object_dispose(&v83, 8);
    goto LABEL_52;
  }

  if (objc_msgSend_isEqualToString_(a3))
  {

    captureSource_updateCachedZoomFactorPropertyAndNotify(a2, a5);
  }

  else
  {
    if (objc_msgSend_isEqualToString_(a3))
    {
      v12 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v29 = kFigCaptureSourceProperty_ExposureDuration;
      goto LABEL_44;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v12 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v29 = kFigCaptureSourceProperty_ISO;
      goto LABEL_44;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v12 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v33 = kFigCaptureSourceProperty_ExposureTargetBias;
LABEL_60:
      v14 = *v33;
      v13 = a2;
      v15 = 1;
      goto LABEL_7;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v12 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v29 = kFigCaptureSourceProperty_ExposureTargetOffset;
      goto LABEL_44;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v12 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v33 = kFigCaptureSourceProperty_ActiveMaxExposureDuration;
      goto LABEL_60;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v12 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v29 = kFigCaptureSourceProperty_DeviceWhiteBalanceGains;
      goto LABEL_44;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v12 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v29 = kFigCaptureSourceProperty_GrayWorldDeviceWhiteBalanceGains;
      goto LABEL_44;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v34 = kFigCaptureSourceProperty_SceneClassificationActive;
LABEL_74:
      v35 = *v34;
      v36 = a2;
      v37 = a5;
LABEL_87:

      captureSource_postNotificationWithPayload(v36, v35, v37);
      return;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v12 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v29 = kFigCaptureSourceProperty_SceneClassificationConfidences;
      goto LABEL_44;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v38 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v39 = [a5 objectForKeyedSubscript:0x1F21A1EF0];
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v38, @"NewPropertyValue", v39, @"ManualControlRequestID", 0}];
      captureSource_restoreCurrentValuesForManualControlProperties(a2, [v39 intValue], a5, a3);
      v41 = kFigCaptureSourceNotification_ManualFocusComplete;
LABEL_86:
      v35 = *v41;
      v36 = a2;
      v37 = v40;
      goto LABEL_87;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v42 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v43 = [a5 objectForKeyedSubscript:0x1F21A1EF0];
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v42, @"NewPropertyValue", v43, @"ManualControlRequestID", 0}];
      captureSource_restoreCurrentValuesForManualControlProperties(a2, [v43 intValue], a5, a3);
      v41 = kFigCaptureSourceNotification_ManualExposureComplete;
      goto LABEL_86;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v44 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v45 = [a5 objectForKeyedSubscript:0x1F21A1EF0];
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v44, @"NewPropertyValue", v45, @"ManualControlRequestID", 0}];
      captureSource_restoreCurrentValuesForManualControlProperties(a2, [v45 intValue], a5, a3);
      v41 = kFigCaptureSourceNotification_BiasedExposureComplete;
      goto LABEL_86;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v46 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v47 = [a5 objectForKeyedSubscript:0x1F21A1EF0];
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v46, @"NewPropertyValue", v47, @"ManualControlRequestID", 0}];
      captureSource_restoreCurrentValuesForManualControlProperties(a2, [v47 intValue], a5, a3);
      v41 = kFigCaptureSourceNotification_ManualWhiteBalanceComplete;
      goto LABEL_86;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v48 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v89 = 0;
      v90 = &v89;
      v91 = 0x2020000000;
      LOBYTE(v92) = 0;
      v83 = 0;
      v84 = &v83;
      v85 = 0x2020000000;
      LOBYTE(v86) = 0;
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __captureSource_handleDeviceNotification_block_invoke_2;
      v81[3] = &unk_1E799DDB8;
      v81[4] = &v89;
      v81[5] = &v83;
      v49 = captureSource_safelyAccessStorage(a2, v81);
      if (v49)
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v49, v5, v61, v62, v63, v64, v65, v66);
      }

      else
      {
        if (*(v90 + 24) == 1)
        {
          captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, @"FlashOverheated", v48, 0, 0);
        }

        if (*(v84 + 24) == 1)
        {
          captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, @"TorchOverheated", v48, 0, 0);
        }
      }

      goto LABEL_51;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v12 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v29 = kFigCaptureSourceProperty_TorchActive;
      goto LABEL_44;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v12 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v33 = kFigCaptureSourceProperty_TorchLevel;
      goto LABEL_60;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v34 = kFigCaptureSourceNotification_ShallowDepthOfFieldStatusChanged;
      goto LABEL_74;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v79[0] = @"NewPropertyValue";
      v79[1] = @"MinAvailableVideoZoomFactor";
      v80[0] = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v80[1] = [a5 objectForKeyedSubscript:0x1F21A15B0];
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
      v24 = kFigCaptureSourceNotification_ActiveBravoCameraSelectionConfiguration;
      goto LABEL_32;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v50 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType(a2, [a5 objectForKeyedSubscript:0x1F21A1ED0], &v95);
      if (v95)
      {
        captureSource_handleDeviceNotification_cold_2();
        return;
      }

      v89 = 0;
      v90 = &v89;
      v91 = 0x3052000000;
      v92 = __Block_byref_object_copy__44;
      v93 = __Block_byref_object_dispose__44;
      v94 = 0;
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __captureSource_handleDeviceNotification_block_invoke_3;
      v78[3] = &unk_1E799DD48;
      v78[4] = &v89;
      v51 = captureSource_safelyAccessStorage(v50, v78);
      if (v51)
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v51, v5, v61, v62, v63, v64, v65, v66);
      }

      else
      {
        v52 = v90[5];
        if (v52)
        {
          v76 = @"NewPropertyValue";
          v77 = v52;
          captureSource_postNotificationWithPayload(a2, @"UnderlyingMasterSource", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1]);
        }

        if (v50)
        {
          CFRelease(v50);
        }
      }

      goto LABEL_52;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v53 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType(a2, [a5 objectForKeyedSubscript:0x1F21A1ED0], &v95);
      if (v95)
      {
        captureSource_handleDeviceNotification_cold_1();
        return;
      }

      v89 = 0;
      v90 = &v89;
      v91 = 0x3052000000;
      v92 = __Block_byref_object_copy__44;
      v93 = __Block_byref_object_dispose__44;
      v94 = 0;
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __captureSource_handleDeviceNotification_block_invoke_4;
      v75[3] = &unk_1E799DD48;
      v75[4] = &v89;
      captureSource_safelyAccessStorage(v53, v75);
      v54 = v90[5];
      if (v54)
      {
        v73 = @"NewPropertyValue";
        v74 = v54;
        captureSource_postNotificationWithPayload(a2, @"PreferredPrimaryUnderlyingCaptureSource", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1]);
      }

      if (v53)
      {
        CFRelease(v53);
      }

LABEL_52:
      _Block_object_dispose(&v89, 8);
      return;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v34 = kFigCaptureSourceNotification_FocusedAtMacro;
      goto LABEL_74;
    }

    if (objc_msgSend_isEqualToString_(a3))
    {
      v55 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v56 = qword_1ED8451C0;
      [v55 floatValue];

      [v56 updateWithPearlProjectorTemperature:?];
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(a3))
      {
        if (objc_msgSend_isEqualToString_(a3))
        {
          v71 = @"NewPropertyValue";
          v72 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
          v24 = kFigCaptureSourceNotification_ReactionsInProgressChangedNotification;
        }

        else
        {
          if (objc_msgSend_isEqualToString_(a3))
          {
            v35 = @"SourceSuppressedGesture";
            v36 = a2;
            v37 = 0;
            goto LABEL_87;
          }

          if (objc_msgSend_isEqualToString_(a3))
          {
            v69 = @"NewPropertyValue";
            v70 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
            v24 = kFigCaptureSourceNotification_StereoVideoCaptureStatusChanged;
          }

          else
          {
            if (objc_msgSend_isEqualToString_(a3))
            {
              v34 = kFigCaptureSourceNotification_LensSmudgeDetectionStatusChanged;
              goto LABEL_74;
            }

            if (objc_msgSend_isEqualToString_(a3))
            {
              v67 = @"NewPropertyValue";
              v68 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
              v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
              v24 = kFigCaptureSourceNotification_SmartFramingSuggestedFieldOfViewChanged;
            }

            else
            {
              if (!objc_msgSend_isEqualToString_(a3))
              {
                if (!objc_msgSend_isEqualToString_(a3))
                {
                  if (!objc_msgSend_isEqualToString_(a3))
                  {
                    return;
                  }

                  v12 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
                  v29 = kFigCaptureSourceProperty_DockedTrackingActive;
                  goto LABEL_44;
                }

                v34 = kFigCaptureSourceNotification_PulseGeneratorStatusChanged;
                goto LABEL_74;
              }

              v63 = @"NewPropertyValue";
              v64 = @"DynamicAspectRatioRequestID";
              v65 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
              v66 = [a5 objectForKeyedSubscript:0x1F21A5EF0];
              v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v63 count:2];
              v24 = kFigCaptureSourceNotification_LiveReconfigurationForDynamicAspectRatioComplete;
            }
          }
        }

LABEL_32:
        v17 = *v24;
        v18 = a2;
        goto LABEL_16;
      }

      v57 = [a5 objectForKeyedSubscript:0x1F216A850];
      v58 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v59 = qword_1ED8451C0;
      [v58 floatValue];

      [v59 updateWithPortType:v57 imageSensorTemperature:?];
    }
  }
}

uint64_t OUTLINED_FUNCTION_361(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);

  return [v56 countByEnumeratingWithState:va objects:&a41 count:{16, a6, a7, a8}];
}

CMAttachmentBearerRef OUTLINED_FUNCTION_84_2@<X0>(opaqueCMSampleBuffer *a1@<X1>, uint64_t a2@<X8>)
{

  return [(BWNRFProcessorController *)v2 _newOutputSampleBufferWithSampleBuffer:a1 pixelBuffer:v4 formatDescriptionInOut:&v2[a2] metadataToMerge:v3];
}

BOOL OUTLINED_FUNCTION_54_2(NSObject *a1)
{
  v2 = STACK[0x210];

  return os_log_type_enabled(a1, v2);
}

uint64_t OUTLINED_FUNCTION_54_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);

  return [v46 countByEnumeratingWithState:v47 - 208 objects:va count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_54_7()
{
  *(v0 - 36) = 0;
  *(v0 - 37) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_54_10(NSObject *a1)
{
  v3 = *(v1 - 177);

  return os_log_type_enabled(a1, v3);
}

BOOL OUTLINED_FUNCTION_54_11(NSObject *a1)
{
  v3 = *(v1 - 157);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_54_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_108_3@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);

  return [v4 setObject:0 forKeyedSubscript:v1];
}

CFMutableDictionaryRef OUTLINED_FUNCTION_136(uint64_t a1, uint64_t a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4)
{

  return CFDictionaryCreateMutable(v4, 4, a3, a4);
}

BOOL OUTLINED_FUNCTION_136_0(NSObject *a1)
{
  v3 = *(v1 - 93);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_136_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return [v20 countByEnumeratingWithState:v21 - 160 objects:va count:{16, a6, a7, a8}];
}

__n128 OUTLINED_FUNCTION_136_3()
{
  v1 = *&STACK[0x260];
  *(v0 - 256) = *&STACK[0x250];
  *(v0 - 240) = v1;
  result = *&STACK[0x270];
  *(v0 - 224) = *&STACK[0x270];
  return result;
}

void *BWFigVideoCaptureDeviceSetClientProcessHasAccessToCamera(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 80));
  v4 = +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
  v5 = *(a1 + 588);
  v6 = [*(a1 + 600) tccIdentity];
  v7 = [*(a1 + 600) mediaEnvironment];
  v8 = *(a1 + 56);
  v19[0] = *(a1 + 40);
  v19[1] = v8;
  [v4 setCameraAccess:a2 deviceType:v5 clientAuditToken:v19 tccIdentity:v6 mediaEnvironment:v7 completionHandler:0];
  os_unfair_lock_unlock((a1 + 80));
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(a1 + 656);
  result = [v9 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        BWFigVideoCaptureStreamSetClientProcessHasAccessToCamera(*(*(&v15 + 1) + 8 * v13), a2);
        v13 = v13 + 1;
      }

      while (v11 != v13);
      result = [v9 countByEnumeratingWithState:&v15 objects:v14 count:16];
      v11 = result;
    }

    while (result);
  }

  return result;
}

void *captureSource_setThermalLevelAndMaxTorchLevel(uint64_t a1, uint64_t a2, float a3)
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (([objc_msgSend(*(a1 + 104) objectForKeyedSubscript:{@"Torch", "BOOLValue"}] & 1) != 0 || objc_msgSend(objc_msgSend(*(a1 + 104), "objectForKeyedSubscript:", @"Flash"), "BOOLValue"))
  {
    *&v6 = a3;
    [*(a1 + 80) setMaxTorchLevel:v6];
  }

  result = [objc_msgSend(*(a1 + 104) objectForKeyedSubscript:{@"Sphere", "BOOLValue"}];
  if (result)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [*(a1 + 80) captureStreams];
    result = [v8 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (result)
    {
      v9 = result;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v11) setSphereThermalLevel:a2];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        result = [v8 countByEnumeratingWithState:&v13 objects:v12 count:16];
        v9 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_4()
{

  return [v0 countByEnumeratingWithState:&STACK[0x3E0] objects:&STACK[0x360] count:16];
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);

  return [v52 countByEnumeratingWithState:va objects:&a37 count:{16, a6, a7, a8}];
}

BOOL OUTLINED_FUNCTION_19_7(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v43 = a42;
  v44 = STACK[0x280];
  v45 = STACK[0x240];
  v46 = STACK[0x238];

  return CGRectEqualToRect(*&a1, *&v43);
}

BOOL OUTLINED_FUNCTION_19_9(CGRect rect)
{

  return CGRectIsNull(rect);
}

uint64_t OUTLINED_FUNCTION_19_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __int16 a34, char a35, char a36, int a37)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_19_20()
{
  *(v0 - 52) = 0;
  *(v0 - 53) = 0;
  return qword_1ED844048;
}

BOOL OUTLINED_FUNCTION_19_23(NSObject *a1)
{
  v3 = *(v1 - 53);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_19_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);

  return [v34 countByEnumeratingWithState:va objects:&a19 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_19_26()
{
  v3 = *(v0 + *v1);

  return [v3 videoFormat];
}

uint64_t OUTLINED_FUNCTION_19_30()
{

  return [v0 objectAtIndexedSubscript:v1];
}

uint64_t OUTLINED_FUNCTION_19_31(uint64_t a1)
{

  return [v1 isEqual:a1];
}

CFTypeRef OUTLINED_FUNCTION_19_32(uint64_t a1, const __CFString *a2)
{

  return CMGetAttachment(v2, a2, 0);
}

__n128 OUTLINED_FUNCTION_101_1()
{
  result = *(v0 - 112);
  *(v0 - 144) = result;
  *(v0 - 128) = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_101_2(int a1)
{
  if (v2 <= a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return *(v1 + *v5);
}

uint64_t OUTLINED_FUNCTION_101_3()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_101_4(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;

  dispatch_async(a1, (v2 - 40));
}

uint64_t OUTLINED_FUNCTION_70_3(void *a1, const char *a2, uint64_t a3)
{

  return [a1 errorWithDomain:a3 code:-16134 userInfo:0];
}

__n128 OUTLINED_FUNCTION_122_2()
{
  result = *v0;
  *(v1 - 176) = *v0;
  *(v1 - 160) = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_37_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_122_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return [v32 countByEnumeratingWithState:v33 - 128 objects:va count:{16, a6, a7, a8}];
}

uint64_t FigCaptureGetPIDVersionFromAuditToken(_OWORD *a1)
{
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  return audit_token_to_pidversion(&v3);
}

__n128 OUTLINED_FUNCTION_107_1@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_107_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{

  return [a18 addObject:{a1, a4, a5, a6, a7, a8}];
}

__n128 OUTLINED_FUNCTION_107_3()
{
  result = *v0;
  *v1 = *v0;
  v1[1].n128_u64[0] = *(v2 - 72);
  return result;
}

uint64_t captureSource_setFaceDrivenAEAFMode(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 80);
  if (v4)
  {
    v5 = [v4 setFaceDetectionDrivenImageProcessingMode:a2];
    v6 = v5;
    if (v5)
    {
      captureSource_setFaceDrivenAEAFMode_cold_1(v5);
    }

    else
    {
      [*(DerivedStorage + 144) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", a2), @"FaceDrivenAEAFMode"}];
    }
  }

  else
  {
    captureSource_setFaceDrivenAEAFMode_cold_2();
    return 4294954516;
  }

  return v6;
}

double OUTLINED_FUNCTION_71_2()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_3()
{
  *(v0 - 52) = 0;
  *(v0 - 53) = 0;
  return qword_1ED844628;
}

BOOL OUTLINED_FUNCTION_71_4(NSObject *a1)
{
  v3 = *(v1 - 93);

  return os_log_type_enabled(a1, v3);
}

uint64_t fvcd_timeLapseCaptureConfigurationForStreamingImageIntent(int a1)
{
  if ((a1 & 0xFFFFFFFE) != 6)
  {
    return 0;
  }

  v6[4] = v1;
  v6[5] = v2;
  v3 = a1 == 7;
  v6[0] = [MEMORY[0x1E696AD98] numberWithFloat:*off_1E798C780];
  v5[1] = *off_1E798C788;
  v6[1] = [MEMORY[0x1E696AD98] numberWithBool:v3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
}

unint64_t captureSource_setDeskViewEnabled(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v11 = *(DerivedStorage + 80);
    if (v11)
    {
      v12 = [objc_msgSend(v11 "captureStream")];
      v13 = *off_1E798BDF0;
      v14 = [MEMORY[0x1E696AD98] numberWithBool:a2];

      return [v12 setPropertyIfSupported:v13 value:v14];
    }

    else
    {
      captureSource_setDeskViewEnabled_cold_1(&v16, v4, v5, v6, v7, v8, v9, v10);
      return v16;
    }
  }

  else
  {
    captureSource_setDeskViewEnabled_cold_2(&v17, v4, v5, v6, v7, v8, v9, v10);
    return v17;
  }
}

uint64_t __captureSource_handleDeviceNotification_block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = [objc_msgSend(*(a2 + 104) objectForKeyedSubscript:{@"Flash", "BOOLValue"}];
  *(*(*(a1 + 40) + 8) + 24) = [objc_msgSend(*(a2 + 104) objectForKeyedSubscript:{@"Torch", "BOOLValue"}];
  return 0;
}

void captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(const void *a1, const void *a2, const void *a3, char a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    FigSimpleMutexCheckIsLockedOnThisThread();
  }

  else
  {
    FigSimpleMutexLock();
  }

  v10 = [*(DerivedStorage + 144) objectForKeyedSubscript:a2];
  if (v10 && (v11 = CFRetain(v10)) != 0)
  {
    v12 = v11;
    if (a3)
    {
      v13 = 1;
      goto LABEL_10;
    }

    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v13 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v16, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSource/FigCaptureSource.m", 1468, @"LastShownDate:FigCaptureSource.m:1468", @"LastShownBuild:FigCaptureSource.m:1468", 0);
  }

  else
  {
    v14 = FigCaptureGetFrameworkRadarComponent();
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v14, v16, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSource/FigCaptureSource.m", 1464, @"LastShownDate:FigCaptureSource.m:1464", @"LastShownBuild:FigCaptureSource.m:1464", 0);
    v13 = 0;
    v12 = 0;
  }

  free(v16);
LABEL_10:
  [*(DerivedStorage + 144) setObject:a3 forKeyedSubscript:a2];
  if ((a5 & 1) == 0)
  {
    FigSimpleMutexUnlock();
  }

  v17 = v13 ^ 1;
  if (!a3)
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0 && ((a4 & 1) != 0 || !FigCFEqual()))
  {
    v18 = [MEMORY[0x1E695DF90] dictionary];
    [v18 setObject:v12 forKeyedSubscript:@"OldPropertyValue"];
    [v18 setObject:a3 forKeyedSubscript:@"NewPropertyValue"];
    captureSource_postNotificationWithPayload(a1, a2, v18);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t OUTLINED_FUNCTION_31_2()
{
  *(v0 - 124) = 0;
  *(v0 - 125) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_31_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return [v0 countByEnumeratingWithState:&STACK[0x7A0] objects:&STACK[0x720] count:16];
}

uint64_t OUTLINED_FUNCTION_31_9()
{
  v3 = *(v0 + *(v1 + 2984));

  return [v3 input];
}

uint64_t OUTLINED_FUNCTION_31_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{

  return [v55 setObject:0 forKeyedSubscript:{a55, a5, a6, a7, a8}];
}

CMTime *OUTLINED_FUNCTION_31_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CMTime *time, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t timea)
{
  v35 = *(v33 - 128);

  return CMTimeConvertScale((v33 - 160), &timea, v35, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
}

uint64_t OUTLINED_FUNCTION_31_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_43_4(void *a1, const char *a2)
{

  return [a1 objectAtIndexedSubscript:v2];
}

uint64_t OUTLINED_FUNCTION_43_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, int a21)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_43_9(NSObject *a1)
{
  v3 = *(v1 - 117);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_43_10(uint64_t a1)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_43_13()
{
  result = 0.0;
  *(v0 - 96) = 0u;
  *(v0 - 80) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_14(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [a1 arrayWithObjects:&a9 count:{2, a5, a6, a7, a8}];
}

uint64_t csr_notificationFilter(uint64_t a1, int a2, void *a3, CFDictionaryRef theDict, __CFDictionary **a5)
{
  if (theDict)
  {
    v58 = CFDictionaryGetValue(theDict, @"FormatDescription_Serialized");
    number = CFDictionaryGetValue(theDict, @"MasterClockType");
  }

  else
  {
    v58 = 0;
    number = 0;
  }

  v57 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_SampleBuffer_SerializedSurface);
  xobj = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_Surface_Serialized);
  v54 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_PreviewSampleBuffer_SerializedSurface);
  v61 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_PreviewSurface_Serialized);
  v60 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_ThumbnailSurface_Serialized);
  v59 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_DepthDataSurface_Serialized);
  v7 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_ConstantColorConfidenceMapSurface_Serialized);
  v8 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_PortraitEffectsMatteSurface_Serialized);
  v9 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_HairSegmentationMatteSurface_Serialized);
  v10 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_SkinSegmentationMatteSurface_Serialized);
  v11 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_TeethSegmentationMatteSurface_Serialized);
  v12 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_GlassesSegmentationMatteSurface_Serialized);
  v13 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_DeferredPhotoProxySurface_Serialized);
  v14 = xpc_dictionary_get_value(a3, kFigCaptureSessionRemoteQueueUpdatedNotificationPayloadKey_RemoteQueueReceiver_Serialized);
  v67 = 0;
  v68[0] = 0;
  v66 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = *MEMORY[0x1E695E480];
  FigXPCMessageCreateBlockBufferData();
  FigXPCMessageCreateBlockBufferData();
  if (!v58 && !v57 && !xobj && !v61 && !v60 && !v59 && !v7 && !v8 && !v9 && !v10 && !v11 && !v12 && !v13 && !v14 && !number)
  {
    return 0;
  }

  xdict = v14;
  v53 = v8;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    csr_notificationFilter_cold_1();
    goto LABEL_93;
  }

  if (v58)
  {
    value = 0;
    FormatDescriptionFromSerializedDictionary = FigRemote_CreateFormatDescriptionFromSerializedDictionary();
    if (FormatDescriptionFromSerializedDictionary)
    {
      csr_notificationFilter_cold_2(FormatDescriptionFromSerializedDictionary, &value);
      goto LABEL_93;
    }

    CFDictionarySetValue(MutableCopy, @"FormatDescription", value);
    CFRelease(value);
    CFDictionaryRemoveValue(MutableCopy, @"FormatDescription_Serialized");
  }

  v19 = number;
  if (v68[0] | v57)
  {
    if (v57)
    {
      v20 = IOSurfaceLookupFromXPCObject(v57);
      SampleBufferFromSerializedAtomBlockBufferAndSurface = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface();
      if (v20)
      {
        CFRelease(v20);
      }

      v19 = number;
      if (!SampleBufferFromSerializedAtomBlockBufferAndSurface)
      {
        goto LABEL_29;
      }
    }

    else
    {
      SampleBufferFromSerializedAtomBlockBufferAndSurface = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface();
      if (!SampleBufferFromSerializedAtomBlockBufferAndSurface)
      {
LABEL_29:
        CFDictionarySetValue(MutableCopy, @"SampleBuffer", v67);
        goto LABEL_30;
      }
    }

    csr_notificationFilter_cold_3(SampleBufferFromSerializedAtomBlockBufferAndSurface);
    goto LABEL_93;
  }

LABEL_30:
  if (xobj)
  {
    v22 = IOSurfaceLookupFromXPCObject(xobj);
    if (!v22)
    {
      csr_notificationFilter_cold_17();
      goto LABEL_93;
    }

    v23 = v22;
    CFDictionarySetValue(MutableCopy, @"Surface", v22);
    CFRelease(v23);
  }

  if (!(v66 | v54))
  {
    goto LABEL_39;
  }

  if (v54)
  {
    v24 = IOSurfaceLookupFromXPCObject(v54);
    v25 = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface();
    if (v24)
    {
      CFRelease(v24);
    }

    v19 = number;
    if (!v25)
    {
      goto LABEL_38;
    }

LABEL_79:
    csr_notificationFilter_cold_4(v25);
    goto LABEL_93;
  }

  v25 = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface();
  if (v25)
  {
    goto LABEL_79;
  }

LABEL_38:
  CFDictionarySetValue(MutableCopy, @"PreviewSampleBuffer", cf);
LABEL_39:
  if (v61)
  {
    v26 = IOSurfaceLookupFromXPCObject(v61);
    if (!v26)
    {
      csr_notificationFilter_cold_16();
      goto LABEL_93;
    }

    v27 = v26;
    CFDictionarySetValue(MutableCopy, @"PreviewSurface", v26);
    CFRelease(v27);
  }

  if (v60)
  {
    v28 = IOSurfaceLookupFromXPCObject(v60);
    if (!v28)
    {
      csr_notificationFilter_cold_15();
      goto LABEL_93;
    }

    v29 = v28;
    CFDictionarySetValue(MutableCopy, @"ThumbnailSurface", v28);
    CFRelease(v29);
  }

  if (v59)
  {
    v30 = IOSurfaceLookupFromXPCObject(v59);
    if (!v30)
    {
      csr_notificationFilter_cold_14();
      goto LABEL_93;
    }

    v31 = v30;
    CFDictionarySetValue(MutableCopy, @"DepthDataSurface", v30);
    CFRelease(v31);
  }

  if (v7)
  {
    v32 = IOSurfaceLookupFromXPCObject(v7);
    if (!v32)
    {
      csr_notificationFilter_cold_13();
      goto LABEL_93;
    }

    v33 = v32;
    CFDictionarySetValue(MutableCopy, @"ConstantColorConfidenceMapSurface", v32);
    CFRelease(v33);
  }

  if (v53)
  {
    v34 = IOSurfaceLookupFromXPCObject(v53);
    if (!v34)
    {
      csr_notificationFilter_cold_12();
      goto LABEL_93;
    }

    v35 = v34;
    CFDictionarySetValue(MutableCopy, @"PortraitEffectsMatteSurface", v34);
    CFRelease(v35);
  }

  if (v9)
  {
    v36 = IOSurfaceLookupFromXPCObject(v9);
    if (!v36)
    {
      csr_notificationFilter_cold_11();
      goto LABEL_93;
    }

    v37 = v36;
    CFDictionarySetValue(MutableCopy, @"HairSegmentationMatteSurface", v36);
    CFRelease(v37);
  }

  if (v10)
  {
    v38 = IOSurfaceLookupFromXPCObject(v10);
    if (!v38)
    {
      csr_notificationFilter_cold_10();
      goto LABEL_93;
    }

    v39 = v38;
    CFDictionarySetValue(MutableCopy, @"SkinSegmentationMatteSurface", v38);
    CFRelease(v39);
  }

  if (v11)
  {
    v40 = IOSurfaceLookupFromXPCObject(v11);
    if (!v40)
    {
      csr_notificationFilter_cold_9();
      goto LABEL_93;
    }

    v41 = v40;
    CFDictionarySetValue(MutableCopy, @"TeethSegmentationMatteSurface", v40);
    CFRelease(v41);
  }

  if (v12)
  {
    v42 = IOSurfaceLookupFromXPCObject(v12);
    if (!v42)
    {
      csr_notificationFilter_cold_8();
      goto LABEL_93;
    }

    v43 = v42;
    CFDictionarySetValue(MutableCopy, @"GlassesSegmentationMatteSurface", v42);
    CFRelease(v43);
  }

  if (!v13)
  {
    goto LABEL_69;
  }

  v44 = IOSurfaceLookupFromXPCObject(v13);
  if (v44)
  {
    v45 = v44;
    CFDictionarySetValue(MutableCopy, @"DeferredPhotoProxySurface", v44);
    CFRelease(v45);
LABEL_69:
    if (v19)
    {
      v46 = csr_masterClockFromClockType(DerivedStorage, v19);
      if (!v46)
      {
        csr_notificationFilter_cold_6();
LABEL_95:
        v50 = 0;
        goto LABEL_96;
      }

      CFDictionarySetValue(MutableCopy, @"MasterClock", v46);
    }

    if (xdict)
    {
      value = 0;
      v47 = FigRemoteQueueReceiverCreateFromXPCObject(v15, xdict, &value);
      v48 = v47;
      if (v47)
      {
        csr_notificationFilter_cold_5(v47);
      }

      else
      {
        CFDictionarySetValue(MutableCopy, @"RemoteQueueReceiver", value);
        CFRelease(value);
      }

      v49 = a5;
      v50 = v48 != 0;
      goto LABEL_97;
    }

    goto LABEL_95;
  }

  csr_notificationFilter_cold_7();
LABEL_93:
  v50 = 1;
LABEL_96:
  v49 = a5;
LABEL_97:
  if (v67)
  {
    CFRelease(v67);
  }

  if (v68[0])
  {
    CFRelease(v68[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  v51 = !v50;
  if (!MutableCopy)
  {
    v51 = 1;
  }

  if ((v51 & 1) == 0)
  {
    CFRelease(MutableCopy);
    MutableCopy = 0;
  }

  *v49 = MutableCopy;
  if (v50)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

uint64_t csr_notificationFilter_0(int a1, CFTypeRef cf1)
{
  if (!CFEqual(cf1, @"ActiveFormat"))
  {
    return 0;
  }

  FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  v4 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v5 = _os_log_send_and_compose_impl();
  FigCapturePleaseFileRadar(FrameworkRadarComponent, v5, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSource/ClientServer/FigCaptureSourceRemote.m", 192, @"LastShownDate:FigCaptureSourceRemote.m:192", @"LastShownBuild:FigCaptureSourceRemote.m:192", 0);
  free(v5);
  return v4;
}

id cs_copyActiveCaptureDevice()
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v0 = qword_1ED8451D0;
  v1 = [qword_1ED8451D0 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *v11;
LABEL_3:
  v4 = 0;
  while (1)
  {
    if (*v11 != v3)
    {
      objc_enumerationMutation(v0);
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v6 = DerivedStorage;
      FigSimpleMutexLock();
      v7 = [*(v6 + 80) device];
      FigSimpleMutexUnlock();
      if (v7)
      {
        return v7;
      }
    }

    if (v2 == ++v4)
    {
      v2 = [v0 countByEnumeratingWithState:&v10 objects:v9 count:16];
      if (v2)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t cs_updateTimeOfFlightAFEnabledStatus()
{
  v0 = _MergedGlobals_13 & ~HIBYTE(_MergedGlobals_13) & 1;
  v1 = cs_copyActiveCaptureDevice();
  v2 = [v1 setProperty:*off_1E798A040 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v0)}];
  if (v2)
  {
    v10 = v2;
    cs_updateTimeOfFlightAFEnabledStatus_cold_1();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = qword_1ED8451D0;
    v4 = [qword_1ED8451D0 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __cs_updateTimeOfFlightAFEnabledStatus_block_invoke;
          v12[3] = &__block_descriptor_33_e200_i16__0__FigCaptureSourceStorage_qiCC____8I____OpaqueFigSimpleMutex__q____CFString__i______OpaqueFigCaptureSource_f___i__OpaqueFigFlashlight__iBBB__OpaqueFigSimpleMutex__BB__OpaqueFigCaptureSource____8l;
          v13 = v0;
          v9 = captureSource_safelyAccessStorage(v8, v12);
        }

        v10 = v9;
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v5);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

uint64_t __cs_updateTimeOfFlightAFEnabledStatus_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [objc_msgSend(*(a2 + 104) objectForKeyedSubscript:{@"Position", "intValue"}];
  v5 = [objc_msgSend(*(a2 + 104) objectForKeyedSubscript:{@"Focus", "BOOLValue"}];
  if (v4 == 1 && v5 != 0)
  {
    [*(a2 + 80) setTimeOfFlightAFEnabled:*(a1 + 32)];
  }

  return 0;
}

uint64_t captureSession_checkClientSessionIsAllowedToRun(uint64_t a1, void *a2, _BYTE *a3, int *a4, _BYTE *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_assert_owner((DerivedStorage + 384));
  if (!*(DerivedStorage + 448))
  {
    v11 = *(DerivedStorage + 36);
    v22[0] = *(DerivedStorage + 20);
    v22[1] = v11;
    if (!FigCaptureAuditTokenIsValid(v22))
    {
      return 4294950893;
    }
  }

  v12 = cs_configurationUsesSourceType(a2, 1);
  if (*(DerivedStorage + 433))
  {
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  else if (!v12 || (*(DerivedStorage + 400) & 1) == 0 && (*(DerivedStorage + 401) != 1 || *(DerivedStorage + 399) == 1) && (*(DerivedStorage + 416) & 1) == 0 && ![*(DerivedStorage + 424) count])
  {
    goto LABEL_24;
  }

  if (*(DerivedStorage + 400) == 1 && *(DerivedStorage + 397) != 1)
  {
    v13 = 4294950893;
    goto LABEL_25;
  }

  if (*(DerivedStorage + 401) == 1 && *(DerivedStorage + 399) != 1)
  {
    v13 = 4294950888;
    goto LABEL_25;
  }

  if (*(DerivedStorage + 416))
  {
    v13 = 4294950344;
    goto LABEL_25;
  }

  if ([*(DerivedStorage + 424) count])
  {
    v13 = 4294894120;
    goto LABEL_25;
  }

  if ((*(DerivedStorage + 433) & 1) == 0)
  {
LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

LABEL_5:
  v13 = 0;
  *(DerivedStorage + 433) = 0;
LABEL_25:
  if (a3)
  {
    *a3 = *(DerivedStorage + 397);
  }

  if (a4)
  {
    if (*(DerivedStorage + 397) == 1)
    {
      v14 = *(DerivedStorage + 440);
      v15 = (objc_msgSend_isEqualToString_(v14) & 1) != 0 || (objc_msgSend_isEqualToString_(v14) & 1) != 0 || (objc_msgSend_isEqualToString_(v14) & 1) != 0 || (objc_msgSend_isEqualToString_(v14) & 1) != 0 || *(DerivedStorage + 448) == 2;
    }

    else
    {
      v15 = cs_configurationContainsVideoSource(*(DerivedStorage + 504));
    }

    v16 = [+[FigCaptureDeviceLockStateMonitor sharedDeviceLockStateMonitor](FigCaptureDeviceLockStateMonitor "sharedDeviceLockStateMonitor")];
    if (v15)
    {
      v19 = v16;
      v20 = *(DerivedStorage + 113);
      if (captureSession_clientIsCameraOrDerivative(a1))
      {
        IsVisualIntelligenceCamera = 1;
      }

      else
      {
        IsVisualIntelligenceCamera = captureSession_clientIsVisualIntelligenceCamera(a1);
      }

      if ((v19 & v20 & IsVisualIntelligenceCamera) != 0)
      {
        v17 = 4;
      }

      else
      {
        v17 = 3;
      }
    }

    else if (*(DerivedStorage + 397))
    {
      v17 = 2;
    }

    else
    {
      v17 = 3;
    }

    *a4 = v17;
  }

  if (a5)
  {
    *a5 = *(DerivedStorage + 403);
  }

  return v13;
}

void *cs_configurationUsesSourceType(void *result, int a2)
{
  if (result)
  {
    v3 = [result connectionConfigurations];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __cs_configurationUsesSourceType_block_invoke;
    v4[3] = &__block_descriptor_36_e50_B32__0__FigCaptureConnectionConfiguration_8Q16_B24l;
    v5 = a2;
    return ([v3 indexOfObjectPassingTest:v4] != 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

FigCaptureCameraSourcePipelineConfiguration *captureSession_createCameraSourcePipelineConfigurationFromParsedConfiguration(uint64_t a1, void *a2, int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, float a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, char a15, _DWORD *a16)
{
  v430 = __PAIR64__(a8, a7);
  v427 = __PAIR64__(a6, a4);
  v21 = a16;
  v495 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = [a2 stillImageConnectionConfiguration];
  v23 = [a2 metadataObjectConnectionConfigurations];
  v465 = [a2 videoPreviewSinkConnectionConfiguration];
  v24 = [a2 videoCaptureConnectionConfigurations];
  newValue = [a2 previewDerivedConnectionConfigurations];
  v439 = [a2 depthDataConnectionConfiguration];
  v25 = [a2 cameraConfiguration];
  v475 = [a2 videoDataConnectionConfigurations];
  v401 = [a2 pointCloudDataConnectionConfigurations];
  v26 = FigCaptureConnectionConfigurationWithSinkType([a2 videoCaptureConnectionConfigurations], 4);
  v468 = [v25 requiredFormat];
  v445 = [v22 irisSinkConfiguration];
  IntAttribute = FigCaptureSourceGetIntAttribute([v25 source], 0x1F21A0530, &v495);
  if (!v495)
  {
    HIDWORD(v421) = IntAttribute;
    HIDWORD(v395) = a3;
    v462 = v22;
    v398 = a5;
    v452 = v26;
    v480 = v24;
    v436 = FigCaptureConnectionConfigurationWithSinkType(v24, 4);
    HIDWORD(v456) = cs_cinematicVideoCaptureEnabled(a2);
    v442 = a2;
    v28 = cs_pulseGeneratorFrameRate(a2);
    v366 = v29;
    v369 = v28;
    memset(v494, 0, sizeof(v494));
    obj = v23;
    v30 = OUTLINED_FUNCTION_73_3(v28, v29, v494, v493);
    if (v30)
    {
      v33 = v30;
      v31 = 0;
      v32 = 0;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          OUTLINED_FUNCTION_10_18();
          if (!v51)
          {
            objc_enumerationMutation(v23);
          }

          v35 = *(*(&v494[0] + 1) + 8 * i);
          if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v35))
          {
            BoolAttribute = FigCaptureSourceGetBoolAttribute([objc_msgSend(v35 "sourceConfiguration")], 0x1F219FFF0, &v495);
            v31 |= BoolAttribute;
            v32 |= BoolAttribute ^ 1;
          }
        }

        v33 = [v23 countByEnumeratingWithState:v494 objects:v493 count:16];
      }

      while (v33);
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    if (BWDeviceSupportsCoreMediaFaceTracking())
    {
      v37 = [v465 previewDepthFilterRenderingEnabled] & (HIDWORD(v456) ^ 1);
      v31 &= v37 ^ 1;
      LODWORD(v421) = v37;
      v32 |= v37;
    }

    else
    {
      LODWORD(v421) = 0;
    }

    v38 = v445;
    if ([v25 source])
    {
      v41 = FigCaptureSourceGetBoolAttribute([v25 source], @"GeometricDistortionCorrection", 0);
      v420 = [v468 intelligentDistortionCorrectionSupported];
      if (v41)
      {
        v39 = [v25 geometricDistortionCorrectionEnabled];
        v41 = [v25 geometricDistortionCorrectionEnabled];
        v40 = 1;
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }
    }

    else
    {
      v420 = [v468 intelligentDistortionCorrectionSupported];
      v39 = 0;
      v40 = 0;
      v41 = 0;
    }

    v449 = a1;
    if (([v25 cinematicFramingEnabled] & 1) != 0 || (objc_msgSend(v25, "deskCamEnabled") & 1) != 0 || objc_msgSend(v25, "manualCinematicFramingEnabled"))
    {
      if ([v25 source])
      {
        v42 = FigCaptureSourceGetBoolAttribute([v25 source], @"geometricDistortionCorrectionForSmartCropEnabled", 0);
      }

      else
      {
        v42 = 0;
      }

      if ([objc_msgSend(v25 "requiredFormat")])
      {
        v39 = 0;
        if (![v25 cinematicFramingEnabled])
        {
          v43 = 0;
          HIDWORD(v471) = 0;
          goto LABEL_55;
        }

        v43 = 0;
        HIDWORD(v471) = 0;
        if (((v40 | v42) & 1) == 0)
        {
          goto LABEL_55;
        }

        v39 = 1;
LABEL_33:
        v498 = 0u;
        v499 = 0u;
        v500 = 0u;
        v501 = 0u;
        OUTLINED_FUNCTION_55_10();
        v44 = [v480 countByEnumeratingWithState:? objects:? count:?];
        if (v44)
        {
          v46 = v44;
          HIDWORD(v471) = 0;
LABEL_38:
          v47 = 0;
          while (1)
          {
            OUTLINED_FUNCTION_49_7();
            if (!v51)
            {
              objc_enumerationMutation(v480);
            }

            v48 = *(*(&v498 + 1) + 8 * v47);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v49 = [v48 sinkConfiguration];
              if ([v49 sinkType] == 4 || objc_msgSend(v49, "sinkType") == 6)
              {
                v50 = [v48 videoStabilizationType] == 2 ? objc_msgSend(objc_msgSend(v48, "sourceConfiguration"), "proResRawCaptureEnabled") : 0;
                HIDWORD(v471) = 1;
                v51 = [v48 videoStabilizationType] != 4 && v50 == 0;
                if (v51)
                {
                  break;
                }
              }
            }

            if (v46 == ++v47)
            {
              OUTLINED_FUNCTION_55_10();
              v46 = [v480 countByEnumeratingWithState:? objects:? count:?];
              if (v46)
              {
                goto LABEL_38;
              }

              v45 = HIDWORD(v471) ^ 1;
              goto LABEL_35;
            }
          }
        }

        else
        {
          v45 = 1;
LABEL_35:
          HIDWORD(v471) = v45;
        }

        v43 = 1;
        v38 = v445;
        a1 = v449;
LABEL_55:
        LODWORD(v416) = v43;
        if ([v468 isStillImageStabilizationSupported])
        {
          HIDWORD(v388) = 1;
        }

        else
        {
          HIDWORD(v388) = [v468 configureForStillImageStabilizationSupport];
        }

        shouldEnableGreenGhostMitigation = cs_shouldEnableGreenGhostMitigation(v25);
        if ([objc_msgSend(v25 "requiredFormat")] > 0)
        {
          v53 = 1;
        }

        else
        {
          v53 = shouldEnableGreenGhostMitigation;
        }

        HIDWORD(v412) = v53;
        if (v39)
        {
          v54 = v462;
          if ([v468 gdcInStillImageSinkPipelineSupported])
          {
            LODWORD(v412) = FigCaptureSourceGetBoolAttribute([v25 source], @"GeometricDistortionCorrectionExpandsImageDimensions", 0);
          }

          else
          {
            LODWORD(v412) = 0;
          }
        }

        else
        {
          LODWORD(v412) = 0;
          v54 = v462;
        }

        HIDWORD(v384) = [v38 optimizesImagesForOfflineVideoStabilization];
        if ([v38 irisMovieCaptureEnabled])
        {
          LODWORD(v384) = [v38 irisMovieAutoTrimMethod] != 0;
        }

        else
        {
          LODWORD(v384) = 0;
        }

        HIDWORD(v380) = [v465 previewDepthFilterRenderingEnabled];
        if ([FigVideoCaptureConnectionConfiguration cameraIntrinsicMatrixDeliveryEnabled:v480 doingFaceTracking:v32 & 1]|| [FigVideoCaptureConnectionConfiguration cameraIntrinsicMatrixDeliveryEnabled:newValue doingFaceTracking:v32 & 1])
        {
          LODWORD(v380) = 1;
        }

        else
        {
          if (v54)
          {
            v492 = v54;
            v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v492 count:1];
          }

          else
          {
            v55 = 0;
          }

          LODWORD(v380) = [FigVideoCaptureConnectionConfiguration cameraIntrinsicMatrixDeliveryEnabled:v55 doingFaceTracking:v32 & 1];
          v54 = v462;
        }

        HIDWORD(v376) = FigCaptureMetadataObjectConfigurationsRequireOfflineVideoStabilizationMotionData(obj);
        LODWORD(v395) = captureSession_clientIsCameraOrDerivative(a1);
        HIDWORD(v408) = captureSession_clientSetsUserInitiatedCaptureRequestTime(a1);
        v56 = FigCaptureZeroShutterLagEnabled(v25, v38, [v54 stillImageSinkConfiguration], SBYTE4(v408));
        LODWORD(v408) = FigCaptureSoftISPEnabled(v25, [v54 sinkConfiguration]);
        if (v408)
        {
          v57 = v468;
          if ([v468 isDeepFusionSupported])
          {
            v58 = [objc_msgSend(v54 "irisSinkConfiguration")] == 3;
          }

          else
          {
            v58 = 0;
          }
        }

        else
        {
          v58 = 0;
          v57 = v468;
        }

        if ([objc_msgSend(v54 "irisSinkConfiguration")])
        {
          v59 = 1;
        }

        else
        {
          v59 = [objc_msgSend(v54 "irisSinkConfiguration")] | v58;
        }

        LODWORD(v376) = v59;
        if ([v25 geometricDistortionCorrectionEnabled] & v420)
        {
          LODWORD(v404) = 1;
        }

        else
        {
          LODWORD(v404) = [objc_msgSend(v54 "irisSinkConfiguration")];
        }

        HIDWORD(v392) = FigCaptureSourceGetBoolAttribute([v25 source], 0x1F219F9F0, 0);
        v60 = 0.0;
        if (cs_shouldEnableOverCapture(v25))
        {
          [v57 spatialOverCapturePercentage];
          v60 = v61;
        }

        if ([v25 backgroundBlurEnabled] & 1) != 0 || (objc_msgSend(v25, "studioLightingEnabled"))
        {
          LOBYTE(v62) = 0;
        }

        else
        {
          v62 = [v25 backgroundReplacementEnabled] ^ 1;
        }

        HIDWORD(v404) = v56;
        if ([v57 isHighPhotoQualitySupported])
        {
          LODWORD(v388) = ([v445 maxQualityPrioritization] > 1) & v62;
        }

        else
        {
          LODWORD(v388) = 0;
        }

        HIDWORD(v416) = v39;
        v63 = [MEMORY[0x1E695DF70] array];
        v64 = [v54 videoStabilizationType];
        if (v64)
        {
          [v54 videoStabilizationType];
          v64 = [v63 addObject:{objc_msgSend(OUTLINED_FUNCTION_4(), "numberWithInt:")}];
        }

        v490 = 0u;
        v491 = 0u;
        v488 = 0u;
        v489 = 0u;
        v72 = OUTLINED_FUNCTION_104_2(v64, v65, v66, v67, v68, v69, v70, v71, v341, v345, v348, v351, v354, v359, v362, v366, v369, v372, v376, v380, v384, v388, v392, v395, v398, v401, v404, v408, v412, v416, v421, a16, v427, v430, newValue, v436, v439, v442, v25, v449, v452, v456, DerivedStorage, v462, v465, v468, v471, v475, obj, v480);
        if (v72)
        {
          v73 = v72;
          v74 = *v489;
          do
          {
            for (j = 0; j != v73; ++j)
            {
              if (*v489 != v74)
              {
                objc_enumerationMutation(v481);
              }

              v76 = *(*(&v488 + 1) + 8 * j);
              objc_opt_class();
              OUTLINED_FUNCTION_88_3();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                isKindOfClass = [v76 videoStabilizationType];
                if (isKindOfClass)
                {
                  isKindOfClass = [v63 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v76, "videoStabilizationType"))}];
                }
              }
            }

            v73 = OUTLINED_FUNCTION_104_2(isKindOfClass, v78, v79, v80, v81, v82, v83, v84, v342, v346, v349, v352, v355, v360, v363, v367, v370, v373, v377, v381, v385, v389, v393, v396, v399, v402, v405, v409, v413, v417, v422, v425, v428, v431, newValuea, v437, v440, v443, v446, v450, v453, v457, v460, v463, v466, v469, v472, v476, obja, v481);
          }

          while (v73);
        }

        v85 = v450;
        v86 = v466;
        v87 = cs_shouldEnablePreviewStabilization(v450, v466);
        v93 = 1;
        v94 = v446;
        if ((v87 & 1) == 0)
        {
          memset(v487, 0, 64);
          v95 = OUTLINED_FUNCTION_74_5(v87, v88, v487, v486, v89, v90, v91, v92, v342, v346, v349, v352, v355, v360, v363, v367, v370, v373, v377, v381, v385, v389, v393, v396, v399, v402, v405, v409, v413, v417, v422, v425, v428, v431, newValuea, v437, v440, v443, v446, v450, v453, v457, v460, v463, v466, v469, v472, v476);
          if (v95)
          {
            v96 = v95;
            while (2)
            {
              for (k = 0; k != v96; ++k)
              {
                OUTLINED_FUNCTION_21_20();
                if (!v51)
                {
                  objc_enumerationMutation(v476);
                }

                v98 = cs_shouldEnablePreviewStabilization(v85, *(*(&v487[0] + 1) + 8 * k));
                if (v98)
                {
                  v93 = 1;
                  goto LABEL_120;
                }
              }

              v96 = OUTLINED_FUNCTION_74_5(v98, v99, v487, v486, v100, v101, v102, v103, v342, v346, v349, v352, v355, v360, v363, v367, v370, v373, v377, v381, v385, v389, v393, v396, v399, v402, v405, v409, v413, v417, v422, v425, v428, v431, newValuea, v437, v440, v443, v446, v450, v453, v457, v460, v463, v466, v469, v472, v476);
              if (v96)
              {
                continue;
              }

              break;
            }

            v93 = 0;
LABEL_120:
            v86 = v466;
          }

          else
          {
            v93 = 0;
          }
        }

        HIDWORD(v373) = v93;
        v104 = cs_shouldEnableLowLatencyStabilization(v86);
        v105 = cs_shouldEnableLowLatencyStabilization(v453);
        if (v104)
        {
          v111 = 2;
        }

        else
        {
          v111 = 1;
        }

        v112 = v104 | v105;
        memset(v485, 0, 32);
        if (v105)
        {
          v113 = v111;
        }

        else
        {
          v113 = v104;
        }

        memset(&v485[2], 0, 32);
        v114 = OUTLINED_FUNCTION_74_5(v105, v106, v485, v484, v107, v108, v109, v110, v342, v346, v349, v352, v355, v360, v363, v367, v370, v373, v377, v381, v385, v389, v393, v396, v399, v402, v405, v409, v413, v417, v422, v425, v428, v431, newValuea, v437, v440, v443, v446, v450, v453, v457, v460, v463, v466, v469, v472, v476);
        if (v114)
        {
          v115 = v114;
          do
          {
            for (m = 0; m != v115; ++m)
            {
              OUTLINED_FUNCTION_21_20();
              if (!v51)
              {
                objc_enumerationMutation(v477);
              }

              v117 = cs_shouldEnableLowLatencyStabilization(*(*(&v485[0] + 1) + 8 * m));
              v112 |= v117;
              v113 += v112 & 1;
            }

            v115 = OUTLINED_FUNCTION_74_5(v117, v118, v485, v484, v119, v120, v121, v122, v343, v347, v350, v353, v356, v361, v364, v368, v371, v374, v378, v382, v386, v390, v394, v397, v400, v403, v406, v410, v414, v418, v423, v426, v429, v432, newValueb, v438, v441, v444, v447, v451, v454, v458, v461, v464, v467, v470, v473, v477);
          }

          while (v115);
        }

        v123 = [v477 count];
        v124 = v467;
        v125 = v467 != 0;
        if (v454)
        {
          ++v125;
        }

        LODWORD(v394) = v113 == v125 + v123;
        v26 = objc_alloc_init(FigCaptureCameraSourcePipelineConfiguration);
        v126 = [v94 lensSmudgeDetectionEnabled];
        if ([v94 source])
        {
          HIDWORD(v361) = v126;
          v496 = 0;
          v128 = FigCaptureSourceGetIntAttribute([v94 source], @"DeviceType", 0);
          v357 = 0x310u >> v128;
          v358 = v128 < 0xA;
          LODWORD(v361) = [v94 imageControlMode];
          v498 = 0u;
          v499 = 0u;
          v500 = 0u;
          v501 = 0u;
          OUTLINED_FUNCTION_55_10();
          v129 = [v63 countByEnumeratingWithState:? objects:? count:?];
          if (v129)
          {
            v131 = v129;
            while (2)
            {
              for (n = 0; n != v131; ++n)
              {
                OUTLINED_FUNCTION_6_30();
                if (!v51)
                {
                  objc_enumerationMutation(v63);
                }

                if (+[FigCaptureVISPipeline visPipelineIsRequiredForFigCaptureVideoStabilizationType:](FigCaptureVISPipeline, [*(*(&v498 + 1) + 8 * n) intValue]))
                {
                  v130 = 1;
                  goto LABEL_149;
                }
              }

              OUTLINED_FUNCTION_55_10();
              v131 = [v63 countByEnumeratingWithState:? objects:? count:?];
              if (v131)
              {
                continue;
              }

              break;
            }

            v130 = 0;
LABEL_149:
            v94 = v447;
            v124 = v467;
          }

          else
          {
            v130 = 0;
          }

          HIDWORD(v353) = v358 & v357;
          HIDWORD(v356) = [v94 cinematicFramingEnabled];
          LODWORD(v356) = [v94 deskCamEnabled];
          LODWORD(v353) = [v94 manualCinematicFramingEnabled];
          HIDWORD(v350) = FigCapturePixelFormatIsPackedBayerRaw([objc_msgSend(v94 "requiredFormat")]);
          v133 = [v94 source];
          v134 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v134)
          {
            v134(v133, @"AttributesDictionary", *MEMORY[0x1E695E480], &v496);
            v135 = v496;
          }

          else
          {
            v135 = 0;
          }

          v136 = [objc_msgSend(v135 objectForKeyedSubscript:{@"ISPMotionData", "BOOLValue"}];
          v137 = [objc_msgSend(v496 objectForKeyedSubscript:{@"Sphere", "BOOLValue"}];

          v138 = BYTE4(v386) | BYTE4(v378) | v130;
          v139 = BYTE4(v374) | v378 | v382 | BYTE4(v353) | v138 | v112 | BYTE4(v350);
          if (v361 == 4)
          {
            v138 = 1;
          }

          v140 = BYTE4(v374) | BYTE4(v361) | BYTE4(v356) | v356 | v353 | v378 | v382 | BYTE4(v382) | v386 | v138 | v112 | BYTE4(v350);
          if (v361 == 4)
          {
            v141 = 1;
          }

          else
          {
            v141 = v130;
          }

          v142 = v139 & v137;
          v143 = v142 | ~v140 | v136;
          v144 = v140 & 1;
          if (v142)
          {
            v144 = 2;
          }

          if (v141)
          {
            v145 = 3;
          }

          else
          {
            v145 = 0;
          }

          if (v143)
          {
            v127 = v144;
          }

          else
          {
            v127 = v145;
          }
        }

        else
        {
          v127 = 0;
        }

        [(FigCaptureCameraSourcePipelineConfiguration *)v26 setMotionAttachmentsSource:v127];
        v146 = OUTLINED_FUNCTION_9_19();
        [(FigCaptureMovieFileSinkPipelineConfiguration *)v146 setPrimaryVideoConnectionConfiguration:v147];
        if (![v94 depthDataDeliveryEnabled])
        {
          v150 = 0;
LABEL_198:
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setDepthType:v150];
          [v470 maxContinuousZoomFactorForDepthDataDelivery];
          v166 = v165;
          if (v165 > 0.0)
          {
            v167 = FigCaptureSourceGetIntAttribute([v94 source], @"DeviceType", 0);
            if (v167 <= 9 && ((1 << v167) & 0x310) != 0)
            {
              v168 = v166;
              v169 = 0.1999;
            }

            else
            {
              v168 = v166;
              v169 = 0.0999;
            }

            v166 = v168 + v169;
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setMaxContinuousZoomFactorForDepthDataDelivery:v166];
          v170 = [v94 sourceType] == 1 && (objc_msgSend(v94, "videoStabilizationStrength") == 3 || objc_msgSend(v94, "videoStabilizationStrength") == 4);
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setActionCameraEnabled:v170];
          if (v94)
          {
            objc_msgSend_maxExposureDurationClientOverride(v94);
          }

          else
          {
            memset(&v483, 0, sizeof(v483));
          }

          cf[0] = v483;
          v171 = [objc_msgSend(v94 requiredFormat];
          v172 = [v94 requiredMaxFrameRate];
          v174 = FigCaptureFrameRateAsFloat(v172, v173);
          v175 = HIDWORD(v171);
          if (v171 == 3840 && v175 == 2160 || v171 == 2160 && v175 == 3840)
          {
            v176 = [v94 requiredMaxFrameRate];
            v178 = v177;
            v179 = [v94 requiredMinFrameRate];
            LODWORD(v176) = FigCaptureFrameRateEqual(v176, v178, v179, v180);
            IsCameraOrDerivative = captureSession_clientIsCameraOrDerivative(v451);
            if (v176 && llroundf(v174) == 24 && IsCameraOrDerivative)
            {
              CMTimeMake(&v482, 1, 50);
              cf[0] = v482;
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setMaxExposureDurationFrameworkOverride:?];
            }
          }

          else
          {
            captureSession_clientIsCameraOrDerivative(v451);
          }

          v182 = [v94 source];
          if (*(v461 + 88) && (v183 = v182, [&unk_1F2248D30 containsObject:?]))
          {
            cf[0].value = 0;
            v184 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v184)
            {
              v184(v183, 0x1F21A0C70, *MEMORY[0x1E695E480], cf);
            }

            v185 = FigCFEqual() != 0;
            if (cf[0].value)
            {
              CFRelease(cf[0].value);
            }
          }

          else
          {
            v185 = 0;
          }

          [(FigCaptureMovieFileSinkPipelineConfiguration *)v26 setOfflineVISEnabled:v185];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setCoreMediaFaceTrackingEnabled:?];
          [v124 setCoreMediaFaceTrackingEnabled:v423 & 1];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setIspFaceTrackingEnabled:?];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageGeometricDistortionCorrectionEnabled:?];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setVideoCaptureGeometricDistortionCorrectionEnabled:?];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setPreviewGeometricDistortionCorrectionEnabled:v418];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageGeometricDistortionCorrectionExpansionCoversOverscan:v414];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageLocalHistogramClippingDataMetadataEnabled:?];
          v186 = *(v461 + 816) == 1 && [v63 count] != 0;
          v187 = v454;
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setOfflineVISEnabled:v186];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setZeroShutterLagEnabled:?];
          if (((HIDWORD(v406) | HIDWORD(v410) ^ 1) & 1) == 0)
          {
            [v470 configureForStillImageStabilizationSupport];
          }

          v188 = OUTLINED_FUNCTION_9_19();
          [(FigCaptureCameraSourcePipelineConfiguration *)v188 setConfigureForZeroShutterLagSupport:v189];
          if (SHIDWORD(v423) < 3)
          {
            v190 = 0;
          }

          else
          {
            v190 = [v470 isSIFRSupported] & (BYTE4(v390) | v390);
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setConfigureForSIFRStillImageCaptureIfAvailable:v190];
          v191 = [objc_msgSend(v464 "irisSinkConfiguration")];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setSoftISPEnabled:v410];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 softISPEnabled];
          OUTLINED_FUNCTION_96_2();
          if ((v193 & 1) == 0)
          {
            v192 = [v470 configureForSoftISPSupport];
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setSensorRawStillImageOutputsEnabledIfAvailable:v192];
          if (HIDWORD(v410))
          {
            v194 = [v470 configureForSoftISPSupport];
          }

          else
          {
            v194 = 0;
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setConfigureForSoftISPSupport:v194];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setEnableStillImageSensorOverscanIfAvailable:v406];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setOverCapturePercentage:v60];
          v195 = v60 > 0.0;
          if (!((v60 > 0.0) | (BYTE4(v410) ^ 1) & 1))
          {
            v195 = [v470 configureForSpatialOverCaptureSupport];
          }

          [(FigCaptureMovieFileSinkPipelineConfiguration *)v26 setSemanticStyleRenderingEnabled:v195];
          [objc_msgSend(v464 "irisSinkConfiguration")];
          OUTLINED_FUNCTION_96_2();
          if ((v197 & 1) == 0)
          {
            v196 = [v470 configureForDigitalFlashSupport];
          }

          [(FigCaptureMovieFileSinkPipelineConfiguration *)v26 setP3ToBT2020ConversionEnabled:v196];
          [objc_msgSend(v464 "irisSinkConfiguration")];
          OUTLINED_FUNCTION_96_2();
          if ((v199 & 1) == 0)
          {
            v198 = [v470 configureForStereoPhotoCaptureSupport];
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setConfigureForStereoPhotoCaptureSupport:v198];
          [v94 depthDataDeliveryEnabled];
          OUTLINED_FUNCTION_96_2();
          if ((v201 & 1) == 0)
          {
            v200 = [v470 configureForDepthDataDelivery];
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setConfigureForDepthDataDeliverySupport:v200];
          if (FigCaptureCurrentProcessIsCameracaptured() && os_variant_is_darwinos() && [v94 imageControlMode])
          {
            v202 = [v94 imageControlMode];
            goto LABEL_266;
          }

          if (!v94)
          {
            goto LABEL_264;
          }

          if ([objc_msgSend(v94 "requiredFormat")])
          {
            v202 = 0;
            goto LABEL_266;
          }

          v500 = 0u;
          v501 = 0u;
          v498 = 0u;
          v499 = 0u;
          OUTLINED_FUNCTION_55_10();
          v211 = OUTLINED_FUNCTION_74_5(v203, v204, v205, v206, v207, v208, v209, v210, v343, v347, v350, v353, v356, v361, v364, v368, v371, v374, v378, v382, v386, v390, v394, v397, v400, v403, v406, v410, v414, v418, v423, v426, v429, v432, newValueb, v438, v441, v444, v447, v451, v454, v458, v461, v464, v467, v470, v473, v477);
          if (v211)
          {
            v212 = v211;
            while (2)
            {
              for (ii = 0; ii != v212; ++ii)
              {
                OUTLINED_FUNCTION_6_30();
                if (!v51)
                {
                  objc_enumerationMutation(v477);
                }

                if (![objc_msgSend(*(*(&v498 + 1) + 8 * ii) "videoDataSinkConfiguration")])
                {
                  v202 = 2;
                  goto LABEL_266;
                }
              }

              OUTLINED_FUNCTION_55_10();
              v212 = OUTLINED_FUNCTION_74_5(v214, v215, v216, v217, v218, v219, v220, v221, v343, v347, v350, v353, v356, v361, v364, v368, v371, v375, v379, v383, v387, v391, v394, v397, v400, v403, v407, v411, v415, v419, v424, v426, v429, v432, newValueb, v438, v441, v444, v448, v451, v455, v458, v461, v464, v467, v470, v474, v477);
              v202 = 1;
              if (v212)
              {
                continue;
              }

              break;
            }
          }

          else
          {
LABEL_264:
            v202 = 1;
          }

LABEL_266:
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setAutoImageControlMode:v202];
          cs_shouldEnableVideoHDRImageStatisticsFromConnectionConfigurations(v470, v438, v477);
          v222 = OUTLINED_FUNCTION_10_29();
          [(FigCaptureCameraSourcePipelineConfiguration *)v222 setVideoHDRImageStatisticsEnabled:v223];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setGraphContainsMultipleVideoSources:v429];
          v224 = [objc_msgSend(v464 "irisSinkConfiguration")];
          v225 = 0.1;
          if (!v224)
          {
            v225 = 0.0;
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setAdditionalVISOverscanWhenRecording:v225];
          if (FigCaptureMetadataObjectConfigurationsRequiresLumaHistograms(obja))
          {
            ShouldIncludeDiagnosticMetadata = FigCaptureMetadataUtilitiesShouldIncludeDiagnosticMetadata();
          }

          else
          {
            ShouldIncludeDiagnosticMetadata = 0;
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setLumaHistogramsEnabled:?];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setContinuityCameraIsWired:?];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setContinuityCameraClientDeviceClass:v432];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setClientIsVOIP:?];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setSuppressVideoEffects:a10];
          if (!v191)
          {
LABEL_272:
            v227 = -[FigCaptureCameraSourcePipeline colorSpaceProperties]([*(v461 + 784) cameraSourcePipelineWithSourceID:{objc_msgSend(objc_msgSend(v444, "cameraConfiguration"), "sourceID")}]);
            v228 = cs_shouldEnableVideoSTF(v481, SBYTE4(v458), v227);
            v229 = [objc_msgSend(FigCaptureSourceGetAttribute(objc_msgSend(v94 "source")];
            v230 = [v470 isVideoSTFMetadataEnabled];
            v231 = 0;
            if (v230)
            {
              v232 = v191 ^ 1 | v229;
              v233 = v467;
              if (v232)
              {
                v231 = [v94 imageControlMode] != 4;
              }
            }

            else
            {
              v233 = v467;
            }

            [(FigCaptureCameraSourcePipelineConfiguration *)v26 setVideoSTFMetadataEnabled:?];
            if (v191 && [objc_msgSend(v233 "videoPreviewSinkConfiguration")] && objc_msgSend(v470, "isStudioAndContourPreviewRenderingSupported"))
            {
              [objc_msgSend(objc_msgSend(v233 "sourceConfiguration")];
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStreamingForegroundSegmentationEnabled:?];
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setIspFaceTrackingEnabled:?];
            }

            if ([v94 depthDataDeliveryEnabled] && objc_msgSend(objc_msgSend(v94, "depthDataFormat"), "RGBIRStereoFusionSupported"))
            {
              [objc_msgSend(v233 "videoPreviewSinkConfiguration")];
              v234 = OUTLINED_FUNCTION_10_29();
              [(FigCaptureCameraSourcePipelineConfiguration *)v234 setRGBIRStereoFusionEnabled:v235];
            }

            if ([(FigCaptureCameraSourcePipelineConfiguration *)v26 RGBIRStereoFusionEnabled])
            {
              if (FigCapturePlatformIdentifier() >= 8)
              {
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setRGBIRStereoFusionMinDepthThresholdMM:?];
                if (FigCapturePlatformIdentifier() > 8 || [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")])
                {
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setRGBIRStereoFusionMaxDepthThresholdMM:?];
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setRGBIRStereoFusionFixedDepthThresholdMM:?];
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setRGBIRStereoFusionFixedDepthValueMM:?];
                }
              }
            }

            if (HIDWORD(v458))
            {
              if ([(FigCaptureCameraSourcePipelineConfiguration *)v26 depthType]== 2 || [(FigCaptureCameraSourcePipelineConfiguration *)v26 depthType]== 1)
              {
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setDepthDimensionsOverride:?];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStrictDepthModePreferred:?];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setDepthOutputEnabled:?];
              }

              else if ([(FigCaptureCameraSourcePipelineConfiguration *)v26 depthType]== 3)
              {
                v325 = OUTLINED_FUNCTION_23_15();
                [(FigCaptureCameraSourcePipelineConfiguration *)v325 setVideoCaptureGeometricDistortionCorrectionEnabled:v326];
                v327 = OUTLINED_FUNCTION_23_15();
                [(FigCaptureCameraSourcePipelineConfiguration *)v327 setPreviewGeometricDistortionCorrectionEnabled:v328];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setCaptureDimensionsForFSDNetSecondary:?];
              }

              else
              {
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 depthType];
              }

              v236 = FigCaptureSourceGetBoolAttribute([v94 source], 0x1F21A0010, 0);
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setMidFrameSynchronizationEnabled:?];
              v237 = OUTLINED_FUNCTION_23_15();
              [(FigCaptureCameraSourcePipelineConfiguration *)v237 setConfigureForSIFRStillImageCaptureIfAvailable:v238];
              v239 = OUTLINED_FUNCTION_23_15();
              [(FigCaptureCameraSourcePipelineConfiguration *)v239 setConfigureForZeroShutterLagSupport:v240];
              v241 = OUTLINED_FUNCTION_23_15();
              [(FigCaptureMovieFileSinkPipelineConfiguration *)v241 setSemanticStyleRenderingEnabled:v242];
              v243 = OUTLINED_FUNCTION_23_15();
              [(FigCaptureMovieFileSinkPipelineConfiguration *)v243 setP3ToBT2020ConversionEnabled:v244];
              v245 = OUTLINED_FUNCTION_23_15();
              [(FigCaptureCameraSourcePipelineConfiguration *)v245 setConfigureForSoftISPSupport:v246];
              v247 = OUTLINED_FUNCTION_23_15();
              [(FigCaptureCameraSourcePipelineConfiguration *)v247 setSensorRawStillImageOutputsEnabledIfAvailable:v248];
              v249 = 1;
            }

            else
            {
              v249 = [v444 cameraCalibrationDataConnectionConfigurations] != 0;
            }

            [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStreamingCameraCalibrationDataDeliveryEnabled:v249];
            v250 = [v187 stereoVideoCaptureEnabled];
            if ((v250 & HIDWORD(v458)) == 1)
            {
              v336 = v364;
              OUTLINED_FUNCTION_9_38();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v343, v347, v350, v353, v356, v361, v364, v368);
              v339 = qword_1ED844048;
              v340 = 3742;
            }

            else
            {
              v251 = v250;
              v252 = OUTLINED_FUNCTION_9_19();
              [(FigCaptureCameraSourcePipelineConfiguration *)v252 setStereoVideoCaptureEnabled:v253];
              if (!v251 || [v187 videoStabilizationMethod] == 2 || objc_msgSend(v187, "videoStabilizationMethod") == 3 || objc_msgSend(v187, "videoStabilizationMethod") == 5)
              {
                if ([(FigCaptureCameraSourcePipelineConfiguration *)v26 stereoVideoCaptureEnabled])
                {
                  v254 = OUTLINED_FUNCTION_23_15();
                  [(FigCaptureCameraSourcePipelineConfiguration *)v254 setVideoCaptureGeometricDistortionCorrectionEnabled:v255];
                  v256 = OUTLINED_FUNCTION_23_15();
                  [(FigCaptureCameraSourcePipelineConfiguration *)v256 setPreviewGeometricDistortionCorrectionEnabled:v257];
                  v258 = FigCaptureSourceGetBoolAttribute([v94 source], 0x1F21A0010, 0);
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setMidFrameSynchronizationEnabled:?];
                  v259 = OUTLINED_FUNCTION_23_15();
                  [(FigCaptureCameraSourcePipelineConfiguration *)v259 setConfigureForSIFRStillImageCaptureIfAvailable:v260];
                  v261 = OUTLINED_FUNCTION_23_15();
                  [(FigCaptureCameraSourcePipelineConfiguration *)v261 setConfigureForZeroShutterLagSupport:v262];
                  v263 = OUTLINED_FUNCTION_23_15();
                  [(FigCaptureMovieFileSinkPipelineConfiguration *)v263 setSemanticStyleRenderingEnabled:v264];
                  v265 = OUTLINED_FUNCTION_23_15();
                  [(FigCaptureMovieFileSinkPipelineConfiguration *)v265 setP3ToBT2020ConversionEnabled:v266];
                  v267 = OUTLINED_FUNCTION_23_15();
                  [(FigCaptureCameraSourcePipelineConfiguration *)v267 setConfigureForSoftISPSupport:v268];
                  v269 = OUTLINED_FUNCTION_23_15();
                  [(FigCaptureCameraSourcePipelineConfiguration *)v269 setSensorRawStillImageOutputsEnabledIfAvailable:v270];
                }

                if ((v458 & 0x100000000) != 0 || [(FigCaptureCameraSourcePipelineConfiguration *)v26 stereoVideoCaptureEnabled])
                {
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 midFrameSynchronizationEnabled];
                  v271 = OUTLINED_FUNCTION_10_29();
                  [(FigCaptureCameraSourcePipelineConfiguration *)v271 setMidFrameSynchronizationEnabled:v272];
                }

                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setCameraConfiguration:v94];
                [v444 multiCamClientCompositingPrimaryCameraVideoStabilizationStrength];
                v273 = OUTLINED_FUNCTION_10_29();
                [(FigCaptureCameraSourcePipelineConfiguration *)v273 setMultiCamClientCompositingPrimaryCameraVideoStabilizationStrength:v274];
                [v444 connectionConfigurations];
                v275 = OUTLINED_FUNCTION_10_29();
                [(FigCaptureCameraSourcePipelineConfiguration *)v275 setConnectionConfigurations:v276];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setVideoPreviewSinkConnectionConfiguration:v233];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setPreviewDerivedConnectionConfigurations:?];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setVideoCaptureConnectionConfigurations:v481];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageConnectionConfiguration:v464];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setDepthDataConnectionConfiguration:v441];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setPointCloudDataConnectionConfigurations:v403];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setClientIsCameraOrDerivative:v397];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setDeferredTimeOfFlightNodePrepareEnabled:?];
                v277 = (v397 & 0x100000000) != 0 || FigCaptureFrameRateIsValidRational(v371, v368);
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setClockSynchronizationEnabled:v277];
                v278 = OUTLINED_FUNCTION_23_15();
                [(FigCaptureCameraSourcePipelineConfiguration *)v278 setDepthConversionEnabled:v279];
                [v444 visionDataConnectionConfigurations];
                v280 = OUTLINED_FUNCTION_10_29();
                [(FigCaptureCameraSourcePipelineConfiguration *)v280 setVisionDataConnectionConfigurations:v281];
                [v444 metadataObjectConnectionConfigurations];
                v282 = OUTLINED_FUNCTION_10_29();
                [(FigCaptureCameraSourcePipelineConfiguration *)v282 setMetadataObjectConnectionConfigurations:v283];
                [v444 movieFileDetectedObjectMetadataConnectionConfigurations];
                v284 = OUTLINED_FUNCTION_10_29();
                [(FigCaptureCameraSourcePipelineConfiguration *)v284 setMovieFileDetectedObjectMetadataConnectionConfigurations:v285];
                +[FigCaptureCameraParameters stillImageMaxLossyCompressionLevel];
                v286 = OUTLINED_FUNCTION_10_29();
                [(FigCaptureCameraSourcePipelineConfiguration *)v286 setStillImageMaxLossyCompressionLevel:v287];
                +[FigCaptureCameraParameters previewMaxLossyCompressionLevel];
                v288 = OUTLINED_FUNCTION_10_29();
                [(FigCaptureCameraSourcePipelineConfiguration *)v288 setPreviewMaxLossyCompressionLevel:v289];
                +[FigCaptureCameraParameters videoDataMaxLossyCompressionLevel];
                v290 = OUTLINED_FUNCTION_10_29();
                [(FigCaptureCameraSourcePipelineConfiguration *)v290 setVideoDataMaxLossyCompressionLevel:v291];
                +[FigCaptureCameraParameters movieFileMaxLossyCompressionLevelForPixelFormat:](FigCaptureCameraParameters, "movieFileMaxLossyCompressionLevelForPixelFormat:", [v470 format]);
                v292 = OUTLINED_FUNCTION_10_29();
                [(FigCaptureCameraSourcePipelineConfiguration *)v292 setMovieFileMaxLossyCompressionLevel:v293];
                v294 = 0;
                if (a12)
                {
                  v294 = (v233 | v477 | v187 | v464) != 0;
                }

                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setSmartStyleLearningEnabled:v294];
                v295 = [(FigCaptureCameraSourcePipelineConfiguration *)v26 smartStyleLearningEnabled];
                if (v464)
                {
                  v296 = v295;
                }

                else
                {
                  v296 = 0;
                }

                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setSmartStyleReversibilityEnabled:v296];
                v297 = OUTLINED_FUNCTION_9_19();
                [(FigCaptureCameraSourcePipelineConfiguration *)v297 setSmartStyle:v298];
                if (![(FigCaptureCameraSourcePipelineConfiguration *)v26 smartStyleLearningEnabled])
                {
                  goto LABEL_318;
                }

                [objc_msgSend(v400 "device")];
                if (!v495)
                {
                  [v470 isDynamicAspectRatioSupported];
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageLocalHistogramClippingDataMetadataEnabled:?];
                  v299 = FigCapturePlatformIdentifier() > 10;
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setPreLTMThumbnailEnabled:v299];
                  if (FigCapturePlatformIdentifier() < 12)
                  {
                    v300 = 0;
                  }

                  else
                  {
                    v300 = [(FigCaptureCameraSourcePipelineConfiguration *)v26 preLTMThumbnailEnabled];
                  }

                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setPostLTMThumbnailEnabled:v300];
                  [OUTLINED_FUNCTION_98_4() intermediateStyleRendererThumbnailSizeForUseCase:?];
                  v301 = OUTLINED_FUNCTION_97_4();
                  [(FigCaptureCameraSourcePipelineConfiguration *)v301 setLtmThumbnailOutputDimensions:v302];
                  v303 = FigCapturePlatformIdentifier() == 11;
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setPostColorProcessingThumbnailEnabled:v303];
                  v304 = FigCapturePlatformIdentifier() > 11;
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setWeightSegmentMapEnabled:v304];
                  [OUTLINED_FUNCTION_98_4() styleEngineWeightPlaneCountForUseCase:?];
                  v305 = OUTLINED_FUNCTION_10_29();
                  [(FigCaptureCameraSourcePipelineConfiguration *)v305 setWeightSegmentMapNumberOfSegments:v306];
                  [OUTLINED_FUNCTION_98_4() styleRendererWeightPlaneSigmaForUseCase:?];
                  v307 = OUTLINED_FUNCTION_10_29();
                  [(FigCaptureCameraSourcePipelineConfiguration *)v307 setWeightSegmentMapSmoothingSigma:v308];
                  [OUTLINED_FUNCTION_98_4() styleEngineThumbnailSizeForUseCase:?];
                  v309 = OUTLINED_FUNCTION_97_4();
                  [(FigCaptureCameraSourcePipelineConfiguration *)v309 setWeightSegmentMapOutputDimensions:v310];
LABEL_318:
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setRebuildingGraphForTrueVideoTransition:a14];
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setTrueVideoTransitionPreviousPhotoGraphZoomFactor:a9];
                  [objc_msgSend(v464 "sinkConfiguration")];
                  v311 = [OUTLINED_FUNCTION_28() objectForKeyedSubscript:?];
                  if ([objc_msgSend(v464 "sinkConfiguration")] == 10)
                  {
                    IsBayerRaw = FigCapturePixelFormatIsBayerRaw([v311 rawOutputFormat]);
                    objc_msgSend_worstCaseMaxBracketedCaptureBufferCountForPreparedSettings_stillImageCaptureSettings_captureDevice_(BWStillImageCoordinatorNode);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_10();
                    objc_msgSend_worstCaseMaxBracketedCaptureBufferCountForPreparedSettings_stillImageCaptureSettings_captureDevice_(v313);
                    IsBayerRaw = 0;
                  }

                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageOutputRetainedBufferCountOverride:?];
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageOutputSushiRawAttachmentOptionEnabled:?];
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStructuredLightAFAssistEnabled:?];
                  if ([objc_msgSend(v467 "videoPreviewSinkConfiguration")])
                  {
                    LOBYTE(v496) = 0;
                    LODWORD(cf[0].value) = 0;
                    LODWORD(v498) = 0;
                    cs_getZoomPIPOverlayConfiguration(v467, &v496, cf, &v498);
                    [(FigCaptureCameraSourcePipelineConfiguration *)v26 setZoomPIPSingleStreamModeEnabled:v496];
                    [(FigCaptureCameraSourcePipelineConfiguration *)v26 setZoomPIPMinimumUIZoomFactor:?];
                    [(FigCaptureCameraSourcePipelineConfiguration *)v26 setZoomPIPSlaveStreamingFrameRate:?];
                  }

                  v314 = OUTLINED_FUNCTION_9_19();
                  [(FigCaptureCameraSourcePipelineConfiguration *)v314 setPreferredMasterPortType:v315];
                  v316 = [v470 preferredPreviewMaxFrameRate];
                  if (v187)
                  {
                    v317 = v316;
                    if (![v477 count] && v317 >= 1)
                    {
                      v318 = OUTLINED_FUNCTION_9_19();
                      [(FigCaptureCameraSourcePipelineConfiguration *)v318 setTargetFrameRateWhenNotRecording:v319];
                    }
                  }

                  v320 = FigCaptureSessionMotionCompensatedTemporalFilteringStatusForVideoCaptureConnectionConfiguration(v187, v94) == 0;
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setTemporalNoiseReductionStrengthHighEnabled:v320];
                  [v94 isSmartFramingEnabled];
                  v321 = OUTLINED_FUNCTION_10_29();
                  [(FigCaptureCameraSourcePipelineConfiguration *)v321 setSmartFramingEnabled:v322];
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setAudioMixWithOthersEnabled:a15];
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setLowLatencyStabilizationEnabledInSourcePipeline:?];
                }

LABEL_328:
                v21 = v426;
                goto LABEL_329;
              }

              v336 = v364;
              OUTLINED_FUNCTION_9_38();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v343, v347, v350, v353, v356, v361, v364, v368);
              v339 = qword_1ED844048;
              v340 = 3749;
            }

            v495 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v339, 0xFFFFCE14, "<<<< FigCaptureSession >>>>", v340, v336, v337, v338, v344);
            goto LABEL_328;
          }

          v329 = cs_stillImageDepthDataType(v94);
          v330 = v329;
          if ((v329 & 0xFFFFFFFE) == 4)
          {
            if (captureSession_clientIsCameraOrDerivative(v451))
            {
              v333 = 2;
            }

            else
            {
              v333 = 8;
            }

            if (v330 != 4)
            {
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageSensorInterfaceRawRetainedBufferCount:v333];
              goto LABEL_339;
            }

            [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageFocusPixelDataRetainedBufferCount:v333];
            v334 = v26;
            v335 = v333;
          }

          else
          {
            if (v329 != 2)
            {
LABEL_339:
              v331 = [v470 isSIFRStillImageCaptureWithDepthDataDisabled] ^ 1;
              v332 = [(FigCaptureCameraSourcePipelineConfiguration *)v26 configureForSIFRStillImageCaptureIfAvailable];
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setConfigureForSIFRStillImageCaptureIfAvailable:?];
              goto LABEL_272;
            }

            if (captureSession_clientIsCameraOrDerivative(v451))
            {
              v335 = 3;
            }

            else
            {
              v335 = 4;
            }

            v334 = v26;
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v334 setStillImageSashimiRawRetainedBufferCount:v335];
          goto LABEL_339;
        }

        v148 = [objc_msgSend(v94 "depthDataFormat")];
        if (v148 == 1751410032 || v148 == 1717855600)
        {
          HIDWORD(v386) = [v124 previewDepthFilterRenderingEnabled];
        }

        else
        {
          HIDWORD(v386) = 1;
        }

        LODWORD(v386) = [objc_msgSend(v441 "depthDataSinkConfiguration")];
        v151 = FigCaptureSourceGetIntAttribute([v94 source], @"DeviceType", 0);
        v153 = v151 != 6 && v151 != 12;
        v154 = FigCaptureSourceGetIntAttribute([v94 source], @"DeviceType", 0);
        v155 = v154 < 0xA;
        v156 = 0x310u >> v154;
        v157 = v94;
        v158 = v155 & v156;
        v159 = cs_stillImageDepthDataType(v157);
        v160 = v159;
        HIDWORD(v382) = v159 > 0xA;
        v161 = [v124 previewDepthDataDeliveryEnabled];
        v162 = FigCaptureMetadataObjectConfigurationsRequireFaceTracking(obja);
        if (v438 && v161 && ([v467 previewDepthFilterRenderingEnabled] & 1) != 0 || objc_msgSend(v447, "isCinematicVideoCaptureEnabled"))
        {
          if (v158)
          {
            v163 = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")] == 0;
            v164 = 3;
          }

          else
          {
            v163 = !v153;
            v164 = 4;
          }

          if (v163)
          {
            v150 = 1;
          }

          else
          {
            v150 = v164;
          }
        }

        else
        {
          if ((v441 != 0 || (v158 & 1) == 0) | (v161 | v162) & 1)
          {
            v94 = v447;
            if ((HIDWORD(v386) | v153 | v386))
            {
              if ((BYTE4(v382) | (0x11u >> v160) | (0x660u >> v160)))
              {
                v150 = 4;
              }

              else
              {
                v150 = 1;
              }
            }

            else
            {
              v150 = 2;
            }

            goto LABEL_197;
          }

          v150 = 0;
        }

        v94 = v447;
LABEL_197:
        v124 = v467;
        goto LABEL_198;
      }

      v39 = 0;
    }

    else if (v41)
    {
      goto LABEL_33;
    }

    v43 = 0;
    HIDWORD(v471) = 0;
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_14_21();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v341, v345, v348, v351, v354, v359, v362, v365);
LABEL_329:
  v323 = v495;
  if (v21)
  {
    *v21 = v495;
  }

  if (v323)
  {
    return 0;
  }

  else
  {
    return v26;
  }
}

void *FigCaptureConnectionConfigurationWithSinkType(void *a1, int a2)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v12;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v12 != v6)
    {
      objc_enumerationMutation(a1);
    }

    v8 = *(*(&v11 + 1) + 8 * v7);
    if ([objc_msgSend(v8 "sinkConfiguration")] == a2)
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t FigCaptureSourceGetIntAttribute(void *a1, uint64_t a2, int *a3)
{
  Attribute = FigCaptureSourceGetAttribute(a1, a2, a3);

  return [Attribute intValue];
}

uint64_t cs_cinematicVideoCaptureEnabled(void *a1)
{
  v2 = [a1 cameraConfiguration];
  v3 = FigCaptureConnectionConfigurationWithSinkType([a1 videoCaptureConnectionConfigurations], 4);
  v4 = [a1 videoPreviewSinkConnectionConfiguration];
  if (v3)
  {
    v5 = v4;
    if ([v4 previewDepthDataDeliveryEnabled])
    {
      if ([v5 previewDepthFilterRenderingEnabled])
      {
        return 1;
      }
    }
  }

  return [v2 isCinematicVideoCaptureEnabled];
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresFaceTracking(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *MEMORY[0x1E69629E8];

  return [v1 containsObject:v2];
}

uint64_t BWDeviceSupportsCoreMediaFaceTracking()
{
  if (BWDeviceIsiPhone_onceToken != -1)
  {
    BWDeviceIsiPhone_cold_1();
  }

  if (BWDeviceIsiPhone_isiPhone != 1)
  {
    return 0;
  }

  v0 = FigCapturePlatformIdentifier();
  if (v0 > 9)
  {
    return 1;
  }

  ModelSpecificName = FigCaptureGetModelSpecificName(v0, v1);

  return [&unk_1F2248700 containsObject:ModelSpecificName];
}

uint64_t FigCaptureSourceGetBoolAttribute(void *a1, uint64_t a2, int *a3)
{
  Attribute = FigCaptureSourceGetAttribute(a1, a2, a3);

  return [Attribute BOOLValue];
}

id FigCaptureSourceGetAttribute(id a1, uint64_t a2, int *a3)
{
  v10 = 0;
  if (a1)
  {
    v5 = a1;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = v6(v5, @"AttributesDictionary", *MEMORY[0x1E695E480], &v10);
      a1 = v10;
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = [v10 objectForKeyedSubscript:a2];
        a1 = v10;
      }
    }

    else
    {
      a1 = 0;
      v8 = 0;
      v7 = -12782;
    }
  }

  else
  {
    v8 = 0;
    v7 = -12780;
  }

  if (a3)
  {
    *a3 = v7;
  }

  return v8;
}

uint64_t cs_shouldEnableGreenGhostMitigation(void *a1)
{
  if ([objc_msgSend(a1 "requiredFormat")] < 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = [a1 depthDataDeliveryEnabled];
    v3 = v2 ^ 1 | [objc_msgSend(FigCaptureSourceGetAttribute(objc_msgSend(a1 "source")];
  }

  return v3 & 1;
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresAppClipCodeNode(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *off_1E798D0E8;

  return [v1 containsObject:v2];
}

uint64_t FigCaptureMetadataObjectConfigurationsRequireOfflineVideoStabilizationMotionData(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    v5 = *MEMORY[0x1E69629D8];
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if ([objc_msgSend(*(*(&v8 + 1) + 8 * v6) "metadataIdentifiers")])
        {
          return 1;
        }

        ++v6;
      }

      while (v3 != v6);
      result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t captureSession_clientIsCameraOrDerivative(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v3 = *(DerivedStorage + 88);

  return FigCaptureClientApplicationIDIsCameraOrDerivative(v3, v2);
}

uint64_t captureSession_clientSetsUserInitiatedCaptureRequestTime(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (objc_msgSend_isEqualToString_(*(DerivedStorage + 88)))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(*(DerivedStorage + 88));
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(DerivedStorage + 784) movieFileSinkPipelines];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) momentCaptureMovieRecordingEnabled])
        {
          return 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return isEqualToString;
}

uint64_t FigCaptureZeroShutterLagEnabled(void *a1, void *a2, void *a3, char a4)
{
  if ([a1 sourceDeviceType] == 10)
  {
    return 0;
  }

  if (([objc_msgSend(a1 "requiredFormat")] & 1) != 0 || (result = objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isHighPhotoQualitySupported"), result))
  {
    if (![objc_msgSend(a1 "requiredFormat")] || (objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isLearnedNRSupported") & 1) == 0 && (objc_msgSend(objc_msgSend(a1, "requiredFormat"), "capturesStillsFromVideoStream") & 1) == 0 && (objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isBinned") & 1) == 0 && objc_msgSend(a2, "maxQualityPrioritization") >= 2)
    {
      if (![objc_msgSend(a1 "requiredFormat")])
      {
        goto LABEL_16;
      }

      if ([a2 zeroShutterLagEnabled])
      {
        v9 = 0;
        if (a4)
        {
LABEL_16:
          if ([a1 spatialOverCaptureEnabled])
          {
            return 1;
          }

          if ([objc_msgSend(a1 "requiredFormat")] & 1) == 0 && (objc_msgSend(a1, "depthDataDeliveryEnabled") & 1) != 0 || (objc_msgSend(a2, "bravoConstituentPhotoDeliveryEnabled") & 1) != 0 || objc_msgSend(a1, "imageControlMode") == 4 || (objc_msgSend(a1, "backgroundBlurEnabled") & 1) != 0 || (objc_msgSend(a1, "cinematicFramingEnabled") & 1) != 0 || (objc_msgSend(a1, "studioLightingEnabled"))
          {
            return 0;
          }

          return [a1 backgroundReplacementEnabled] ^ 1;
        }
      }

      else
      {
        v9 = [a3 zeroShutterLagEnabled] ^ 1;
        if (a4)
        {
          goto LABEL_16;
        }
      }

      if ((([a2 responsiveCaptureEnabled] ^ 1) & v9 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

  return result;
}

void *FigCaptureSoftISPEnabled(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a1 sourceDeviceType] == 10)
  {
    return 0;
  }

  v13 = 0;
  v4 = [a1 source];
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"AttributesDictionary", *MEMORY[0x1E695E480], &v13);
    v6 = v13;
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_msgSend(v6 objectForKeyedSubscript:{0x1F21774D0), "BOOLValue"}];
  v8 = [objc_msgSend(v13 objectForKeyedSubscript:{@"Flash", "BOOLValue"}];

  if (!v7)
  {
    return 0;
  }

  if ([a2 sinkType] == 10)
  {
    if (([a1 depthDataDeliveryEnabled] & v8) != 1 || (objc_msgSend(objc_msgSend(a1, "requiredFormat"), "swfrSupported") & 1) != 0 || objc_msgSend(a1, "sourceDeviceType") == 6 || objc_msgSend(a1, "sourceDeviceType") == 12 || objc_msgSend(a1, "sourcePosition") == 2 && objc_msgSend(a1, "sourceDeviceType") == 7)
    {
      v9 = ![a1 depthDataDeliveryEnabled] || objc_msgSend(objc_msgSend(v13, "objectForKeyedSubscript:", @"StillImageDepthDataType"), "intValue") != 8;
      if (([objc_msgSend(a1 "requiredFormat")] & 1) != 0 || ((objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isLearnedNRSupported") ^ 1) & v9 & 1) == 0)
      {
        if ([a2 maxQualityPrioritization] != 1)
        {
          goto LABEL_28;
        }

        if ([a1 depthDataDeliveryEnabled] & v8) == 1 && (objc_msgSend(objc_msgSend(a1, "requiredFormat"), "swfrSupported"))
        {
          v11 = [a1 sourceDeviceType];
          v12 = [a2 constantColorEnabled];
          if (v11 != 6)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v12 = [a2 constantColorEnabled];
        }

        if (v12)
        {
LABEL_28:
          if ([a1 imageControlMode] != 4 && (objc_msgSend(a1, "backgroundBlurEnabled") & 1) == 0 && (objc_msgSend(a1, "cinematicFramingEnabled") & 1) == 0 && (objc_msgSend(a1, "studioLightingEnabled") & 1) == 0)
          {
            return ([a1 backgroundReplacementEnabled] ^ 1);
          }
        }
      }
    }

    return 0;
  }

  result = [objc_msgSend(a1 "requiredFormat")];
  if (result)
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t cs_shouldEnableOverCapture(void *a1)
{
  if ([a1 sourceType] != 1)
  {
    return 0;
  }

  IntAttribute = FigCaptureSourceGetIntAttribute([a1 source], @"DeviceType", 0);
  v3 = IntAttribute > 9 || ((1 << IntAttribute) & 0x310) == 0;
  if (v3 || ([objc_msgSend(objc_msgSend(a1 "requiredFormat")] & 1) == 0 && !objc_msgSend(objc_msgSend(objc_msgSend(a1, "requiredFormat"), "AVCaptureSessionPresets"), "containsObject:", @"AVCaptureSessionPresetHigh") || objc_msgSend(a1, "imageControlMode") == 4)
  {
    return 0;
  }

  return [a1 spatialOverCaptureEnabled];
}

void *cs_shouldEnableLowLatencyStabilization(void *result)
{
  if (result)
  {
    v1 = result;
    result = [objc_msgSend(objc_msgSend(result "sourceConfiguration")];
    if (result)
    {
      result = 0;
      if ([v1 videoStabilizationMethod] == 6 && ((objc_msgSend(objc_msgSend(v1, "sourceConfiguration"), "spatialOverCaptureEnabled") & 1) != 0 || !objc_msgSend(v1, "previewDepthDataDeliveryEnabled") || (objc_msgSend(v1, "previewDepthFilterRenderingEnabled") & 1) == 0))
      {
        v2 = [v1 sourceConfiguration];
        v3 = [v2 requiredMaxFrameRate];
        if (FigCaptureFrameRateAsInt(v3, v4) <= 60 && [v2 imageControlMode] != 4 && objc_msgSend(v2, "imageControlMode") != 5 && objc_msgSend(v2, "imageControlMode") != 6)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t getSTExecutableIdentityClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__36;
  v0 = getSTExecutableIdentityClass_softClass;
  v7 = __Block_byref_object_dispose__36;
  v8 = getSTExecutableIdentityClass_softClass;
  if (!getSTExecutableIdentityClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSTExecutableIdentityClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getSTExecutableIdentityClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC942630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getSTAttributedEntityClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__36;
  v0 = getSTAttributedEntityClass_softClass;
  v7 = __Block_byref_object_dispose__36;
  v8 = getSTAttributedEntityClass_softClass;
  if (!getSTAttributedEntityClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSTAttributedEntityClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getSTAttributedEntityClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC94271C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigCaptureClientIsRunningInMediaserverd(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v8.val = *a1;
  *&v8.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v8);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = SecTaskCopySigningIdentifier(v3, 0);
  isEqualToString = objc_msgSend_isEqualToString_(v5);

  CFRelease(v4);
  return isEqualToString;
}

uint64_t getPATCCAccessClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__6;
  v0 = getPATCCAccessClass_softClass;
  v7 = __Block_byref_object_dispose__6;
  v8 = getPATCCAccessClass_softClass;
  if (!getPATCCAccessClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPATCCAccessClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPATCCAccessClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC942890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_52_8()
{
  *(v0 - 100) = 0;
  *(v0 - 101) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_52_10()
{
  v1 = STACK[0x2C0];

  return [v1 countByEnumeratingWithState:&STACK[0xF20] objects:&STACK[0xEA0] count:16];
}

BOOL OUTLINED_FUNCTION_52_15(NSObject *a1)
{
  v3 = *(v1 - 125);

  return os_log_type_enabled(a1, v3);
}

__n128 OUTLINED_FUNCTION_56_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14, uint64_t a15)
{
  result = a14;
  *(v15 - 176) = a14;
  *(v15 - 160) = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_56_3()
{
  v1 = STACK[0x218];

  return [v1 countByEnumeratingWithState:&STACK[0x460] objects:&STACK[0x3E0] count:16];
}

uint64_t OUTLINED_FUNCTION_56_8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return [a9 countByEnumeratingWithState:v12 - 160 objects:va count:{16, a6}];
}

uint64_t OUTLINED_FUNCTION_56_9()
{
  v1 = STACK[0x2D0];

  return [v1 countByEnumeratingWithState:&STACK[0xAE0] objects:&STACK[0xA60] count:16];
}

uint64_t FigCaptureClientIsAVConferenced(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v8.val = *a1;
  *&v8.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v8);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = SecTaskCopySigningIdentifier(v3, 0);
  isEqualToString = objc_msgSend_isEqualToString_(v5);

  CFRelease(v4);
  return isEqualToString;
}

uint64_t OUTLINED_FUNCTION_117_3()
{
  v3 = *(v1 + 3480);

  return [v3 numberWithInt:v0];
}

uint64_t OUTLINED_FUNCTION_117_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);

  return [v30 countByEnumeratingWithState:va objects:&a15 count:{16, a6, a7, a8}];
}

void OUTLINED_FUNCTION_117_5(int a1@<W8>)
{
  *(v2 + 4) = v1;
  LOWORD(STACK[0x20C]) = 1024;
  *(v2 + 14) = a1;
  LOWORD(STACK[0x212]) = 1024;
  LODWORD(STACK[0x214]) = -12688;
}

uint64_t OUTLINED_FUNCTION_92_1()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

void *OUTLINED_FUNCTION_92_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x310], 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_92_5(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return [a1 dictionaryWithObjects:va forKeys:&a9 count:{1, a6, a7, a8}];
}

uint64_t getPAApplicationClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__6;
  v0 = getPAApplicationClass_softClass;
  v7 = __Block_byref_object_dispose__6;
  v8 = getPAApplicationClass_softClass;
  if (!getPAApplicationClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPAApplicationClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPAApplicationClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC942D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{

  return [a46 countByEnumeratingWithState:a3 objects:a4 count:{16, a6, a7, a8}];
}

__SecTask *FigCaptureClientIsNonStandard(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v7.val = *a1;
  *&v7.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v7);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = FigCaptureClientHasEntitlementWithSecTask(v3, @"com.apple.private.avfoundation.capture.nonstandard-client.allow");
  CFRelease(v4);
  return v5;
}

uint64_t captureSource_setFocusOperation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = FigSimpleMutexCheckIsLockedOnThisThread();
  if (!a2)
  {
    captureSource_setFocusOperation_cold_5(v13);
    return 4294954516;
  }

  v14 = [a2 objectForKey:@"FocusMode"];
  if (!v14)
  {
    captureSource_setFocusOperation_cold_4(&v39);
    return LODWORD(v39.origin.x);
  }

  v15 = [v14 intValue];
  v18 = v15;
  if ((v15 - 1) < 2)
  {
    v19 = *(MEMORY[0x1E695F058] + 16);
    v39.origin = *MEMORY[0x1E695F058];
    v39.size = v19;
    if (![objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{@"FocusPointOfInterest", "BOOLValue"}])
    {
      goto LABEL_7;
    }

    v20 = [a2 objectForKeyedSubscript:@"FocusRect"];
    if (v20)
    {
      if (CGRectMakeWithDictionaryRepresentation(v20, &v39))
      {
LABEL_7:
        v21 = [a2 objectForKeyedSubscript:@"FocusRangeRestriction"];
        if (v21)
        {
          v22 = [v21 intValue];
        }

        else
        {
          v22 = 0;
        }

        v30 = [a2 objectForKeyedSubscript:@"SmoothFocus"];
        if (v30)
        {
          v35 = [v30 BOOLValue];
        }

        else
        {
          v35 = 0;
        }

        if (v22 >= 3)
        {
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844028, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xC45, v9, v31, v32, *&v39.origin.x);
        }

        LODWORD(v33) = dword_1AD056ED4[v22];
        LODWORD(v34) = dword_1AD056EE0[v22];
        v36 = [*(DerivedStorage + 80) setFocusModeAutoWithRect:0 restrictToRect:v18 == 2 continuous:v35 smooth:0 rangeRestrictionNear:*&v39.origin rangeRestrictionFar:*&v39.size isFocusRectInOverscanSpace:{v33, v34}];
        if (v36)
        {
          v38 = v36;
          captureSource_setFocusOperation_cold_2();
          return v38;
        }

        if (![a2 objectForKeyedSubscript:@"FaceDrivenAEAFMode"])
        {
          return 0;
        }

        return captureSource_setFaceDrivenAEAFMode(a1, [objc_msgSend(a2 objectForKeyedSubscript:{@"FaceDrivenAEAFMode", "intValue"}]);
      }

      captureSource_setFocusOperation_cold_1(&v40);
    }

    else
    {
      captureSource_setFocusOperation_cold_3(&v40);
    }

    return v40;
  }

  if (v15)
  {
    v29 = qword_1ED844028;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xC6B, v9, v16, v17, a9);
  }

  else
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"FocusPosition", "floatValue"}];
    v24 = v23;
    v25 = [objc_msgSend(a2 objectForKeyedSubscript:{@"RequestID", "intValue"}];
    v26 = *(DerivedStorage + 80);
    LODWORD(v27) = v24;

    return [v26 setFocusModeManualWithLensPosition:v25 requestID:v27];
  }
}

uint64_t captureSource_setExposureOperation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    captureSource_setExposureOperation_cold_9(DerivedStorage);
    return 4294954516;
  }

  v13 = DerivedStorage;
  v14 = [a2 objectForKeyedSubscript:@"ExposureMode"];
  if (!v14)
  {
    captureSource_setExposureOperation_cold_8(&rect);
    return LODWORD(rect.origin.x);
  }

  v15 = [v14 intValue];
  switch(v15)
  {
    case 0:
      v38 = *(v13 + 80);

      return [v38 setExposureModeLocked];
    case 3:
      v23 = [a2 objectForKeyedSubscript:@"ExposureDuration"];
      if (v23)
      {
        memset(&rect, 0, 24);
        CMTimeMakeFromDictionary(&rect, v23);
        v24 = [a2 objectForKeyedSubscript:@"ExposureActiveMinFrameRate"];
        if (v24)
        {
          [v24 doubleValue];
          v26 = v25;
          v27 = [a2 objectForKeyedSubscript:@"ExposureActiveMaxFrameRate"];
          if (v27)
          {
            [v27 doubleValue];
            v29 = v28;
            v30 = [a2 objectForKeyedSubscript:@"ISO"];
            if (v30)
            {
              [v30 floatValue];
              v32 = v31;
              v33 = [objc_msgSend(a2 objectForKeyedSubscript:{@"RequestID", "intValue"}];
              v34 = *(v13 + 80);
              origin = rect.origin;
              width = rect.size.width;
              LODWORD(v35) = v32;
              return [v34 setExposureModeCustomWithExposureDuration:&origin minFrameRate:v33 maxFrameRate:v26 ISO:v29 requestID:v35];
            }

            captureSource_setExposureOperation_cold_1(&origin);
          }

          else
          {
            captureSource_setExposureOperation_cold_2(&origin);
          }
        }

        else
        {
          captureSource_setExposureOperation_cold_3(&origin);
        }

        return LODWORD(origin.x);
      }

      captureSource_setExposureOperation_cold_4(&rect);
      return LODWORD(rect.origin.x);
    case 2:
      v18 = *(MEMORY[0x1E695F058] + 16);
      rect.origin = *MEMORY[0x1E695F058];
      rect.size = v18;
      v19 = [a2 objectForKeyedSubscript:@"ExposureRect"];
      if (v19)
      {
        if (CGRectMakeWithDictionaryRepresentation(v19, &rect))
        {
          v20 = [objc_msgSend(a2 objectForKeyedSubscript:{@"ExposureRectIsDefault", "BOOLValue"}];
          v21 = [*(v13 + 80) setExposureModeAutoWithRect:v20 isDefaultRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
          if (v21)
          {
            v36 = v21;
            captureSource_setExposureOperation_cold_6();
            return v36;
          }

          if (![a2 objectForKeyedSubscript:@"FaceDrivenAEAFMode"])
          {
            return 0;
          }

          return captureSource_setFaceDrivenAEAFMode(a1, [objc_msgSend(a2 objectForKeyedSubscript:{@"FaceDrivenAEAFMode", "intValue"}]);
        }

        captureSource_setExposureOperation_cold_5(&origin);
      }

      else
      {
        captureSource_setExposureOperation_cold_7(&origin);
      }

      return LODWORD(origin.x);
  }

  v39 = qword_1ED844028;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xCC3, v9, v16, v17, a9);
}

unint64_t captureSource_setExposureTargetBiasOperation(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = [a2 objectForKeyedSubscript:@"Bias"];
  if (v4)
  {
    [v4 floatValue];
    v6 = v5;
    v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"RequestID", "intValue"}];
    v8 = *(DerivedStorage + 80);
    LODWORD(v9) = v6;

    return [v8 setExposureTargetBias:v7 requestID:v9];
  }

  else
  {
    captureSource_setExposureTargetBiasOperation_cold_1(&v11);
    return v11;
  }
}

uint64_t captureSource_setWhiteBalanceOperation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    captureSource_setWhiteBalanceOperation_cold_4(DerivedStorage);
    return 4294954516;
  }

  v12 = DerivedStorage;
  v13 = [a2 objectForKeyedSubscript:@"WhiteBalanceMode"];
  if (!v13)
  {
    captureSource_setWhiteBalanceOperation_cold_3(&v26);
    return v26;
  }

  v14 = [v13 intValue];
  if (!v14)
  {
    v19 = [a2 objectForKeyedSubscript:@"DeviceWhiteBalanceGains"];
    if (v19)
    {
      v20 = v19;
      if ([v19 length] == 12)
      {
        v27 = 0;
        v26 = 0;
        [v20 getBytes:&v26 length:12];
        v21 = [objc_msgSend(a2 objectForKeyedSubscript:{@"RequestID", "intValue"}];
        LODWORD(v23) = HIDWORD(v26);
        LODWORD(v22) = v26;
        LODWORD(v24) = v27;
        return [*(v12 + 80) setWhiteBalanceModeLockedWithGains:v21 requestID:{v22, v23, v24}];
      }

      captureSource_setWhiteBalanceOperation_cold_1(&v26);
    }

    else
    {
      captureSource_setWhiteBalanceOperation_cold_2(&v26);
    }

    return v26;
  }

  if (v14 == 2)
  {
    v17 = *(v12 + 80);

    return [v17 setWhiteBalanceModeAuto];
  }

  else
  {
    v25 = qword_1ED844028;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 0xFFFFCE14, "<<<< FigCaptureSource >>>>", 0xD19, v9, v15, v16, a9);
  }
}

double FigCaptureBinaryPlistGetRealForObjectAtOffset(void *a1, uint64_t a2, double a3)
{
  v3 = (*a1 + a2);
  v4 = *v3;
  if (v4 > 0x12)
  {
    if (*v3 <= 0x21u)
    {
      if (v4 == 19)
      {
        return bswap64(*(v3 + 1));
      }

      if (v4 == 33)
      {
        _H0 = bswap32(*(v3 + 1)) >> 16;
        __asm { FCVT            D0, H0 }

        return result;
      }

      goto LABEL_24;
    }

    if (v4 != 34)
    {
      if (v4 == 35 || v4 == 48)
      {
        return COERCE_DOUBLE(bswap64(*(v3 + 1)));
      }

      goto LABEL_24;
    }

    return COERCE_FLOAT(bswap32(*(v3 + 1)));
  }

  else if (*v3 <= 0xFu)
  {
    result = 0.0;
    if (v4 != 8)
    {
      if (v4 == 9)
      {
        return 1.0;
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (v4 != 16)
    {
      if (v4 == 17)
      {
        return (bswap32(*(v3 + 1)) >> 16);
      }

      if (v4 == 18)
      {
        return bswap32(*(v3 + 1));
      }

LABEL_24:
      abort();
    }

    LOBYTE(a3) = v3[1];
    return *&a3;
  }

  return result;
}

void *cs_shouldEnablePreviewStabilization(uint64_t a1, void *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = [objc_msgSend(objc_msgSend(a2 "sourceConfiguration")];
      if (result)
      {
        result = 0;
        if (((captureSession_clientIsCameraOrDerivative(a1) & 1) != 0 || [a2 videoStabilizationMethod] == 4) && ((objc_msgSend(objc_msgSend(a2, "sourceConfiguration"), "spatialOverCaptureEnabled") & 1) != 0 || !objc_msgSend(a2, "previewDepthDataDeliveryEnabled") || (objc_msgSend(a2, "previewDepthFilterRenderingEnabled") & 1) == 0))
        {
          v5 = [a2 sourceConfiguration];
          v6 = [v5 requiredMaxFrameRate];
          if (FigCaptureFrameRateAsInt(v6, v7) <= 60 && [v5 imageControlMode] != 4 && objc_msgSend(v5, "imageControlMode") != 5 && objc_msgSend(v5, "imageControlMode") != 6)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

unsigned int FigCaptureFrameRateAsInt(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    v2 = *&a1;
  }

  else
  {
    v2 = 0.0;
    if (a2 == 1)
    {
      v2 = a1 / SHIDWORD(a1);
    }
  }

  return llroundf(v2);
}

void *cs_stillImageDepthDataType(void *a1)
{
  v3 = 0;
  result = [a1 source];
  if (result)
  {
    return FigCaptureSourceGetIntAttribute([a1 source], @"StillImageDepthDataType", &v3);
  }

  return result;
}

void BWFigVideoCaptureStreamSetClientProcessHasAccessToCamera(uint64_t a1, char a2)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 376));
    *(a1 + 380) = a2;

    os_unfair_lock_unlock((a1 + 376));
  }
}

uint64_t cs_shouldEnableVideoHDRImageStatistics(void *a1, int a2, uint64_t a3)
{
  if (FigCapturePixelFormatIsTenBit([a1 format]) && (FigCapturePixelFormatIsUsedForProRes(objc_msgSend(a1, "format")) & 1) == 0 && a2)
  {
    return 1;
  }

  return a3;
}

uint64_t cs_shouldEnableVideoHDRImageStatisticsFromConnectionConfigurations(void *a1, uint64_t a2, void *a3)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a3);
        }

        if ([objc_msgSend(*(*(&v13 + 1) + 8 * v9) "sinkConfiguration")])
        {
          v10 = 1;
          return cs_shouldEnableVideoHDRImageStatistics(a1, a2 != 0, v10);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
  return cs_shouldEnableVideoHDRImageStatistics(a1, a2 != 0, v10);
}

uint64_t FigCapturePixelFormatIsTenBit(int a1)
{
  result = 1;
  if (a1 <= 1701738597)
  {
    if (a1 > 762869297)
    {
      if (a1 > 1278226735)
      {
        if (a1 <= 1534621231)
        {
          if (a1 == 1278226736)
          {
            return result;
          }

          v3 = 1534617136;
        }

        else
        {
          if (a1 == 1534621232 || a1 == 1651587122)
          {
            return result;
          }

          v3 = 1651847472;
        }
      }

      else
      {
        if (a1 <= 796419633)
        {
          if (a1 == 762869298)
          {
            return result;
          }

          v4 = 26160;
        }

        else
        {
          if (a1 == 796419634 || a1 == 796423728)
          {
            return result;
          }

          v4 = 30258;
        }

        v3 = v4 | 0x2F780000;
      }

      goto LABEL_55;
    }

    if (a1 <= 645428783)
    {
      v6 = -26160;
    }

    else
    {
      if (a1 > 762865199)
      {
        if (a1 == 762865200 || a1 == 762865202)
        {
          return result;
        }

        v3 = 762869296;
        goto LABEL_55;
      }

      v6 = -30256;
    }

    v7 = a1 + (v6 | 0xD9870000);
    if (v7 > 4 || ((1 << v7) & 0x15) == 0)
    {
      return 0;
    }

    return result;
  }

  if (a1 > 2016687155)
  {
    if (a1 <= 2088265265)
    {
      if (a1 <= 2019963441)
      {
        if (a1 == 2016687156)
        {
          return result;
        }

        v3 = 2019963440;
        goto LABEL_55;
      }

      if (a1 == 2019963442 || a1 == 2019963956)
      {
        return result;
      }

      v5 = 26160;
LABEL_49:
      v3 = v5 | 0x7C780000;
      goto LABEL_55;
    }

    if (a1 <= 2088269361)
    {
      if (a1 == 2088265266)
      {
        return result;
      }

      v5 = 30256;
      goto LABEL_49;
    }

    if (a1 == 2088269362 || a1 == 2105042480)
    {
      return result;
    }

    v3 = 2105046576;
LABEL_55:
    if (a1 == v3)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 1885745711)
  {
    if (a1 <= 1885746227)
    {
      if (a1 == 1885745712)
      {
        return result;
      }

      v3 = 1885745714;
    }

    else
    {
      if (a1 == 1885746228 || a1 == 2016686640)
      {
        return result;
      }

      v3 = 2016686642;
    }

    goto LABEL_55;
  }

  if (a1 <= 1882468911)
  {
    if (a1 == 1701738598)
    {
      return result;
    }

    v3 = 1701738614;
    goto LABEL_55;
  }

  if (a1 != 1882468912 && a1 != 1882468914)
  {
    v3 = 1882469428;
    goto LABEL_55;
  }

  return result;
}

uint64_t FigCaptureMetadataObjectConfigurationsRequiresLumaHistograms(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    v5 = *off_1E798D150;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if ([objc_msgSend(*(*(&v8 + 1) + 8 * v6) "metadataIdentifiers")])
        {
          return 1;
        }

        ++v6;
      }

      while (v3 != v6);
      result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t FigCaptureMetadataObjectConfigurationsRequireFaceTracking(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    v5 = *MEMORY[0x1E69629E8];
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if ([objc_msgSend(*(*(&v8 + 1) + 8 * v6) "metadataIdentifiers")])
        {
          return 1;
        }

        ++v6;
      }

      while (v3 != v6);
      result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

float FigCaptureFrameRateAsFloat(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    return *&a1;
  }

  result = 0.0;
  if (a2 == 1)
  {
    return a1 / SHIDWORD(a1);
  }

  return result;
}

void *cs_shouldEnableVideoSTF(void *a1, char a2, int a3)
{
  v6 = [FigVideoCaptureConnectionConfiguration videoStabilizationMethods:a1 includeIris:1];
  v7 = [objc_msgSend(objc_msgSend(objc_msgSend(a1 objectAtIndexedSubscript:{0), "sourceConfiguration"), "requiredFormat"), "isVideoSTFSupported"}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [a1 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(a1);
      }

      v12 = *(*(&v22 + 1) + 8 * v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v12 "irisSinkConfiguration")])
      {
        return 0;
      }

      if (v9 == ++v11)
      {
        v9 = [a1 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [a1 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
LABEL_12:
    v16 = 0;
    while (1)
    {
      if (*v23 != v15)
      {
        objc_enumerationMutation(a1);
      }

      v17 = *(*(&v22 + 1) + 8 * v16);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([objc_msgSend(v17 "irisSinkConfiguration")])
        {
          return 0;
        }
      }

      if (v14 == ++v16)
      {
        v14 = [a1 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v14)
        {
          goto LABEL_12;
        }

        break;
      }
    }
  }

  result = 0;
  v20 = a3 != 10 && a3 != 12;
  if (v7)
  {
    if ((a2 & 1) == 0)
    {
      if ([v6 containsObject:&unk_1F2244D70])
      {
        return v20;
      }

      if ([v6 containsObject:&unk_1F2244D88])
      {
        return v20;
      }

      result = [v6 containsObject:&unk_1F2244DA0];
      if (result)
      {
        return v20;
      }
    }
  }

  return result;
}

uint64_t csp_projectorModeFromPointCloudDataConnectionConfigurations(void *a1)
{
  if (![a1 count])
  {
    return 0;
  }

  v2 = [objc_msgSend(a1 "firstObject")];
  if ([a1 count] >= 2)
  {
    v3 = 1;
    do
    {
      if (v2 != [objc_msgSend(a1 objectAtIndexedSubscript:{v3), "projectorMode"}])
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Projector modes from connection configs with the same source need to be the same" userInfo:0]);
      }

      ++v3;
    }

    while ([a1 count] > v3);
  }

  return v2;
}

uint64_t FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType_block_invoke;
  v5[3] = &unk_1E799DD20;
  v5[4] = &v6;
  v5[5] = a2;
  *a3 = captureSource_safelyAccessStorage(a1, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1AC9448BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(uint64_t a1, char *a2, uint64_t a3, _DWORD *a4)
{
  v27 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__44;
  v25 = __Block_byref_object_dispose__44;
  v26 = 0;
  v8 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType(a1, a3, &v27);
  v9 = v8;
  v10 = v27;
  if (v27)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v27, v4, v14, v15, v16, v17, v18, v19);
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (v8)
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType_block_invoke;
      v17 = &unk_1E799DCD0;
      v19 = &v21;
      v20 = a3;
      v18 = a2;
      v10 = captureSource_safelyAccessStorage(v8, &v14);
LABEL_4:
      CFRelease(v9);
      goto LABEL_6;
    }

    v11 = a2;
    v10 = 0;
    v22[5] = v11;
  }

LABEL_6:
  if (a4)
  {
    *a4 = v10;
  }

  v12 = v22[5];
  _Block_object_dispose(&v21, 8);
  return v12;
}

void sub_1AC944A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigCaptureMetadataUtilitiesNormalizeCropRect(double a1, double a2, double a3, double a4, double a5, double a6)
{
  result = CGRectIsEmpty(*&a1);
  if ((result & 1) == 0)
  {
    return CMINormalizeCropRect();
  }

  return result;
}

uint64_t csp_variableFrameRateVideoEnabled(void *a1)
{
  v2 = [objc_msgSend(a1 "requiredFormat")];
  v3 = [a1 videoStabilizationStrength];
  v4 = [a1 variableFrameRateVideoCaptureEnabled];
  if (v3 < 3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 & v2;
  if (dword_1ED844130)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v6;
}

uint64_t FigCapturePixelFormatIs422(int a1)
{
  result = 1;
  if (a1 > 1882468913)
  {
    if (a1 > 2019963441)
    {
      if (a1 == 2019963442 || a1 == 2088265266)
      {
        return result;
      }

      v3 = 2088269362;
    }

    else
    {
      if (a1 == 1882468914 || a1 == 1885745714)
      {
        return result;
      }

      v3 = 2016686642;
    }

LABEL_16:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 > 762869297)
  {
    if (a1 == 762869298 || a1 == 796419634)
    {
      return result;
    }

    v3 = 796423730;
    goto LABEL_16;
  }

  if (a1 != 645424690 && a1 != 645428786)
  {
    v3 = 762865202;
    goto LABEL_16;
  }

  return result;
}

BOOL OUTLINED_FUNCTION_363(NSObject *a1)
{
  v3 = *(v1 - 101);

  return os_log_type_enabled(a1, v3);
}

float FigVideoCaptureSourceUIBaseZoomFactor(uint64_t a1, _DWORD *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1065353216;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigVideoCaptureSourceUIBaseZoomFactor_block_invoke;
  v4[3] = &unk_1E799DD48;
  v4[4] = &v5;
  *a2 = captureSource_safelyAccessStorage(a1, v4);
  v2 = v6[6];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1AC944FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FigVideoCaptureSourceUIBaseZoomFactor_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 136);
  if (v2 == 0.0)
  {
    v2 = 1.0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v2;
  return 0;
}

double BWAspectRatioValueFromAspectRatio(int a1)
{
  result = 0.0;
  if ((a1 - 1) <= 5)
  {
    return dbl_1AD055138[a1 - 1];
  }

  return result;
}

uint64_t BWUtilitiesUnderlyingDeviceTypeFromPortType(void *a1, uint64_t a2)
{
  v2 = a2;
  if (objc_msgSend_isEqualToString_(a1, a2, *off_1E798A0C0))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 7;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    if (v2 - 15 >= 2)
    {
      return 2;
    }

    else
    {
      return v2;
    }
  }

  else if (objc_msgSend_isEqualToString_(a1))
  {
    if (v2 == 11)
    {
      return 11;
    }

    else
    {
      return 7;
    }
  }

  else if (objc_msgSend_isEqualToString_(a1))
  {
    return 5;
  }

  else if (objc_msgSend_isEqualToString_(a1))
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

uint64_t FigCaptureConnectionConfigurationsFilterWithBlock(void *a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __FigCaptureConnectionConfigurationsFilterWithBlock_block_invoke;
  v3[3] = &unk_1E799B9F0;
  v3[4] = a2;
  return [a1 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v3)}];
}

void *FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(*(&v10 + 1) + 8 * v6), "underlyingDeviceType")}];
        if (([v2 containsObject:v7] & 1) == 0)
        {
          [v2 addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v4);
  }

  return v2;
}

BOOL __csp_filterConnectionConfigurationsForSourceDeviceTypes_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 36);
  return [a2 underlyingDeviceType] == v4 || objc_msgSend(a2, "underlyingDeviceType") == v3;
}

void *FigCaptureConnectionConfigurationWithUnderlyingDeviceType(void *a1, int a2)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v12;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v12 != v6)
    {
      objc_enumerationMutation(a1);
    }

    v8 = *(*(&v11 + 1) + 8 * v7);
    if ([v8 underlyingDeviceType] == a2)
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresMotionToWake(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *off_1E798D140;

  return [v1 containsObject:v2];
}

void *csp_shouldUseActionCameraCompanionIndex(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_80();
  result = [objc_msgSend(v5 "requiredFormat")];
  if (result)
  {
    result = 0;
    if (([v4 depthDataDeliveryEnabled] & 1) == 0)
    {
      v7 = [FigVideoCaptureConnectionConfiguration videoStabilizationMethods:v3 includeIris:0];
      if ([v7 containsObject:&unk_1F2244788] & 1) != 0 || (objc_msgSend(v7, "containsObject:", &unk_1F2244920))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t csp_formatIndex(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10, unsigned __int8 a11, char a12, unsigned __int8 *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, void *a17, uint64_t *a18)
{
  v26 = [a1 shouldPreferSIFRFormatWithHighlightRecoveryEnabled:a11];
  v62 = [a1 formatIndex];
  v65 = [a1 fesInputCropDimensions];
  v64 = [a1 cropDimensionsForFES];
  v63 = [a1 sensorCropDimensions];
  [a1 sensorCenterOffset];
  v28 = v27;
  v30 = v29;
  v66 = [a1 postGDCCropDimensions];
  v31 = [a1 isSIFRSupported];
  if (a3 && [a1 depthCompanionFormat] && v26 == objc_msgSend(objc_msgSend(a1, "depthCompanionFormat"), "sifrEnabled") && (a12 & 1) == 0)
  {
    v32 = [objc_msgSend(a1 "depthCompanionFormat")];
    v33 = [objc_msgSend(a1 "depthCompanionFormat")];
    v34 = [objc_msgSend(a1 "depthCompanionFormat")];
    v35 = [objc_msgSend(a1 "depthCompanionFormat")];
    [objc_msgSend(a1 "depthCompanionFormat")];
    v28 = v36;
    v30 = v37;
    v38 = [a1 depthCompanionFormat];
LABEL_40:
    v56 = [v38 sifrEnabled];
    goto LABEL_41;
  }

  if (a7 && [a1 midFrameSynchronizationOptimizedCompanionFormat])
  {
    v32 = [objc_msgSend(a1 "midFrameSynchronizationOptimizedCompanionFormat")];
    v33 = [objc_msgSend(a1 "midFrameSynchronizationOptimizedCompanionFormat")];
    v34 = [objc_msgSend(a1 "midFrameSynchronizationOptimizedCompanionFormat")];
    v35 = [objc_msgSend(a1 "midFrameSynchronizationOptimizedCompanionFormat")];
    [objc_msgSend(a1 "midFrameSynchronizationOptimizedCompanionFormat")];
    v28 = v39;
    v30 = v40;
    v38 = [a1 midFrameSynchronizationOptimizedCompanionFormat];
    goto LABEL_40;
  }

  if (a8 && [a1 stereoVideoCompanionFormat])
  {
    v32 = [objc_msgSend(a1 "stereoVideoCompanionFormat")];
    v33 = [objc_msgSend(a1 "stereoVideoCompanionFormat")];
    v34 = [objc_msgSend(a1 "stereoVideoCompanionFormat")];
    v35 = [objc_msgSend(a1 "stereoVideoCompanionFormat")];
    [objc_msgSend(a1 "stereoVideoCompanionFormat")];
    v28 = v41;
    v30 = v42;
    v38 = [a1 stereoVideoCompanionFormat];
    goto LABEL_40;
  }

  [a1 ultraHighResCompanionFormat];
  if (a4 && [a1 fsdNetCompanionFormat] && v26 == objc_msgSend(objc_msgSend(a1, "fsdNetCompanionFormat"), "sifrEnabled"))
  {
    v32 = [objc_msgSend(a1 "fsdNetCompanionFormat")];
    v33 = [objc_msgSend(a1 "fsdNetCompanionFormat")];
    v34 = [objc_msgSend(a1 "fsdNetCompanionFormat")];
    v35 = [objc_msgSend(a1 "fsdNetCompanionFormat")];
    [objc_msgSend(a1 "fsdNetCompanionFormat")];
    v28 = v57;
    v30 = v58;
    v38 = [a1 fsdNetCompanionFormat];
    goto LABEL_40;
  }

  if (a2)
  {
    v43 = [a1 frontEndScalerCompanionFormats];
    if ([v43 count])
    {
      v44 = [v43 firstObject];
      if (a9)
      {
        v44 = [v43 lastObject];
      }

      v45 = v44;
      if (!v44)
      {
        csp_formatIndex_cold_1();
      }

      if (v26 == [v45 sifrEnabled])
      {
        v32 = [v45 formatIndex];
        v33 = [v45 fesInputCropDimensions];
        v34 = [v45 outputCropDimensionsWhenFesIsEnabled];
        v35 = [v45 sensorCropDimensions];
        [v45 sensorCenterOffset];
        v28 = v59;
        v30 = v60;
        v66 = [v45 postGDCCropDimensions];
        v38 = v45;
        goto LABEL_40;
      }
    }
  }

  if ((v26 & 1) == 0 && [a1 nonSIFRCompanionFormat])
  {
    v32 = [objc_msgSend(a1 "nonSIFRCompanionFormat")];
    v33 = [objc_msgSend(a1 "nonSIFRCompanionFormat")];
    v34 = [objc_msgSend(a1 "nonSIFRCompanionFormat")];
    v35 = [objc_msgSend(a1 "nonSIFRCompanionFormat")];
    [objc_msgSend(a1 "nonSIFRCompanionFormat")];
    v28 = v46;
    v30 = v47;
    v38 = [a1 nonSIFRCompanionFormat];
    goto LABEL_40;
  }

  if (a5 && [a1 actionCameraCompanionFormat])
  {
    v32 = [objc_msgSend(a1 "actionCameraCompanionFormat")];
    v35 = [objc_msgSend(a1 "actionCameraCompanionFormat")];
    [objc_msgSend(a1 "actionCameraCompanionFormat")];
    v28 = v48;
    v30 = v49;
    v50 = a14;
    v51 = a15;
    v34 = v64;
    v33 = v65;
    goto LABEL_42;
  }

  if (a6 && [a1 fullBinSIFRCompanionFormat])
  {
    v32 = [objc_msgSend(a1 "fullBinSIFRCompanionFormat")];
    v33 = [objc_msgSend(a1 "fullBinSIFRCompanionFormat")];
    v34 = [objc_msgSend(a1 "fullBinSIFRCompanionFormat")];
    v35 = [objc_msgSend(a1 "fullBinSIFRCompanionFormat")];
    [objc_msgSend(a1 "fullBinSIFRCompanionFormat")];
    v28 = v52;
    v30 = v53;
    v38 = [a1 fullBinSIFRCompanionFormat];
    goto LABEL_40;
  }

  if (a10 && [a1 hasSensorHDRCompanionIndex])
  {
    v32 = [a1 sensorHDRCompanionIndex];
    v33 = [a1 fesInputCropDimensions];
    v34 = [a1 cropDimensionsForFES];
    v35 = [a1 sensorCropDimensions];
    [a1 sensorCenterOffset];
    v28 = v54;
    v30 = v55;
    v66 = [a1 postGDCCropDimensions];
    v56 = [a1 isSIFRSupported];
LABEL_41:
    v31 = v56;
    v50 = a14;
    v51 = a15;
    goto LABEL_42;
  }

  if (v26)
  {
    v32 = v62;
    if (([a1 isSIFRSupported] & 1) == 0)
    {
      [a1 isSIFRSupported];
    }

    v50 = a14;
    v51 = a15;
  }

  else
  {
    v50 = a14;
    v51 = a15;
    v32 = v62;
  }

  v34 = v64;
  v33 = v65;
  v35 = v63;
LABEL_42:
  if (v50)
  {
    *v50 = v33;
  }

  if (v51)
  {
    *v51 = v34;
  }

  if (a16)
  {
    *a16 = v35;
  }

  if (a17)
  {
    *a17 = v28;
    a17[1] = v30;
  }

  if (a18)
  {
    *a18 = v66;
  }

  if (a13)
  {
    *a13 = v31;
  }

  return v32;
}

CGAffineTransform *OUTLINED_FUNCTION_128_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 t1_32, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, CGAffineTransform *t1, CGAffineTransform *t2, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t t1a, uint64_t t1_8, uint64_t t1_16, uint64_t t1_24, __n128 t2a, uint64_t t2b)
{
  t2a = a9;

  return CGAffineTransformConcat((v38 - 192), &t1a, &t2b);
}

uint64_t OUTLINED_FUNCTION_128_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return [v18 countByEnumeratingWithState:v19 - 144 objects:va count:{16, a6, a7, a8}];
}

void OUTLINED_FUNCTION_128_4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, unsigned int a36)
{
  v38 = a1[4];
  v39 = a1[5];
  v40 = a1[6];
  v41 = a1[7];

  [(BWPhotonicEngineNode *)v38 _processorControllerDidFinishProcessingInputForPortType:v39 processorType:v41 captureRequestIdentifier:v40, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36];
}

uint64_t __FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (!v3)
  {
    v3 = *(a2 + 120);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 objectForKeyedSubscript:*(a1 + 40)];
  return 0;
}

uint64_t FigCaptureLongerDimensionForDimensions(uint64_t result)
{
  if (result <= SHIDWORD(result))
  {
    return HIDWORD(result);
  }

  else
  {
    return result;
  }
}

uint64_t OUTLINED_FUNCTION_146(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 connectOutput:v4 toInput:a4 pipelineStage:0];
}

uint64_t OUTLINED_FUNCTION_146_2(uint64_t a1)
{
  v2 = *(a1 + 208);

  return [v2 workerQueue];
}

__n128 OUTLINED_FUNCTION_88()
{
  result = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_88_0@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(a2 + 132) = 0;
  a8 = 0;
  a7 = 0;

  return [a1 getBytes:&a7 length:12];
}

CMTime *OUTLINED_FUNCTION_88_1@<X0>(CMTime *a1@<X8>)
{

  return CMTimeMake(a1, 5, 1000);
}

uint64_t FigMotionGetCameraCharacterizationData(const __CFDictionary *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, float a5)
{
  if (a1 && a2)
  {
    *(a4 + 40) = 0;
    v9 = FigCFEqual() || FigCFEqual() || FigCFEqual() != 0;
    *(a4 + 48) = v9;
    Value = CFDictionaryGetValue(a2, @"FocalLengthCharacterization");
    if (Value)
    {
      v11 = Value;
      TypeID = CFArrayGetTypeID();
      if (TypeID != CFGetTypeID(v11))
      {
        goto LABEL_12;
      }

      FigCFDictionaryGetIntIfPresent();
      v13 = CFDictionaryGetValue(a1, *off_1E798A260);
      FocalLengthParametersFromArrayUsingModuleLensID = GetFocalLengthParametersFromArrayUsingModuleLensID(v13, v11, a4);
      if (!FocalLengthParametersFromArrayUsingModuleLensID)
      {
        if ((*(a4 + 16) & 1) == 0)
        {
          v15 = GetFocalLengthParametersFromArrayUsingModuleLensID(0, v11, a4);
          if (v15)
          {
            v16 = v15;
            FigMotionGetCameraCharacterizationData_cold_2();
            goto LABEL_15;
          }
        }

LABEL_12:
        v16 = 0;
        if (a5 <= 0.0)
        {
          *(a4 + 44) = 0;
        }

        else
        {
          *(a4 + 44) = 1.0 / a5;
        }

        goto LABEL_15;
      }

      v16 = FocalLengthParametersFromArrayUsingModuleLensID;
      FigMotionGetCameraCharacterizationData_cold_1();
    }

    else
    {
      FigMotionGetCameraCharacterizationData_cold_5();
      v16 = -12783;
    }
  }

  else
  {
    FigMotionGetCameraCharacterizationData_cold_6(&v18);
    v16 = v18;
  }

LABEL_15:
  if (*(a4 + 16))
  {
    return v16;
  }

  else
  {
    return 4294954513;
  }
}

uint64_t FigCapturePlatformSupportsUniversalLossyCompression()
{
  if (fcp_identifyPlatform_identifyPlatformOnceToken != -1)
  {
    FigCapturePlatformReconfigure_cold_1();
  }

  return sPlatformSupportsUniversalLossyCompression;
}

uint64_t BWDeviceIsiPhone(uint64_t a1, uint64_t a2)
{
  if (BWDeviceIsiPhone_onceToken != -1)
  {
    BWDeviceIsiPhone_cold_1();
  }

  return BWDeviceIsiPhone_isiPhone;
}

uint64_t FigCapturePixelFormatIsBayerRaw(int a1)
{
  result = 1;
  if (a1 > 1734505011)
  {
    if (a1 != 1734505012 && a1 != 1735549492)
    {
      v3 = 1919379252;
LABEL_8:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else if (a1 != 1650943796 && a1 != 1650946098)
  {
    v3 = 1651798066;
    goto LABEL_8;
  }

  return result;
}

unint64_t cs_getZoomPIPOverlayConfiguration(void *a1, char *a2, float *a3, float *a4)
{
  result = [objc_msgSend(a1 "videoPreviewSinkConfiguration")];
  if (result)
  {
    v9 = [objc_msgSend(a1 "sourceConfiguration")];
    result = [objc_msgSend(a1 "sourceConfiguration")];
    if (result <= 9 && ((1 << result) & 0x310) != 0 && ((result = [objc_msgSend(objc_msgSend(a1 "sourceConfiguration")], v10 = HIDWORD(result), result != 3840) || v10 != 2160 ? (result == 2160 ? (v15 = v10 == 3840) : (v15 = 0), !v15 ? (v11 = 0) : (v11 = 1)) : (v11 = 1), (v11 & (v9 ^ 1)) != 1))
    {
      v12 = 0;
      v13 = 15.0;
    }

    else
    {
      v13 = 0.0;
      v12 = 1;
    }

    if (v9)
    {
      v13 = 0.0;
    }

    v14 = 8.0;
    if (a2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0.0;
    v14 = 0.0;
    if (a2)
    {
LABEL_21:
      *a2 = v12;
    }
  }

  if (a3)
  {
    *a3 = v14;
  }

  if (a4)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t csp_isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if (objc_msgSend_isEqualToString_([objc_msgSend(v6 "sinkConfiguration")]) && (objc_msgSend(objc_msgSend(v6, "videoDataSinkConfiguration"), "cinematicFramingSupported") & 1) != 0)
        {
          return 1;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t csp_isDeskCamEnabledInVideoDataConnectionConfiguration(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if (objc_msgSend_isEqualToString_([objc_msgSend(*(*(&v7 + 1) + 8 * v5) "sinkConfiguration")]))
        {
          return 1;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t FigCaptureVideoEffectEnabledInGraph(uint64_t a1, int a2, int a3, int a4, int a5, int a6, _BYTE *a7)
{
  v7 = (a3 ^ 1 | a5 | a6 | a4) ^ 1;
  if (a7)
  {
    *a7 = v7;
  }

  return (v7 | a2) & (a4 ^ 1u);
}

unint64_t csp_shouldApplyCropFromVideoDataOutput(void *a1)
{
  if ((FigCapturePlatformIdentifier() & 0xFFFFFFFE) != 0xA)
  {
    return 0;
  }

  if (a1)
  {
    v2 = a1[22];
    v3 = [v2 requiredFormat];
    v5 = a1[26];
    v4 = a1[27];
    v6 = a1[24];
    v7 = a1[25];
    a1 = a1[28];
    v8 = v6 == 0;
    v9 = v4 == 0;
  }

  else
  {
    v3 = [0 requiredFormat];
    v7 = 0;
    v2 = 0;
    v5 = 0;
    v8 = 1;
    v9 = 1;
  }

  if ([v2 cinematicFramingEnabled] & 1) != 0 || (objc_msgSend(v2, "deskCamEnabled"))
  {
    return 0;
  }

  v10 = [v2 manualCinematicFramingEnabled];
  result = 0;
  if ((v10 & 1) != 0 || !v5)
  {
    return result;
  }

  if ([v7 count] != 0 || !v8 || !v9 || objc_msgSend(v5, "count") > 2)
  {
    return 0;
  }

  if ([v5 count] == 2)
  {
    v12 = OUTLINED_FUNCTION_1_13();
    result = OUTLINED_FUNCTION_0_0(v13, v14, v15, v16, v17, v18, v19, v20, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v12);
    if (!result)
    {
      return result;
    }

    v21 = result;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = *v71;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        OUTLINED_FUNCTION_4_10();
        if (v27 != v25)
        {
          objc_enumerationMutation(v5);
        }

        v28 = *(v70 + 8 * i);
        v29 = [v28 videoDataSinkConfiguration];
        if (v29)
        {
          v23 = 1;
          v24 = v28;
        }

        else
        {
          v29 = [v28 depthDataSinkConfiguration];
          if (v29)
          {
            if (v28 != a1)
            {
              return 0;
            }

            v22 = 1;
          }
        }
      }

      v21 = OUTLINED_FUNCTION_0_0(v29, v30, v31, v32, v33, v34, v35, v36, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69);
    }

    while (v21);
    if ((v23 & v22 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v24 = [v5 firstObject];
    result = [v24 videoDataSinkConfiguration];
    if (!result)
    {
      return result;
    }
  }

  if (!a1 || (result = FigCaptureVideoAspectRatiosAreEqual([a1 nonRotatedOutputDimensions], objc_msgSend(v24, "nonRotatedOutputDimensions"), 0.01), result))
  {
    [v3 dimensions];
    v37 = [OUTLINED_FUNCTION_49_8() nonRotatedOutputDimensions];
    return !FigCaptureVideoAspectRatiosAreEqual(v3, v37, 0.01);
  }

  return result;
}

unint64_t csp_videoCaptureDimensionsFromConnectionConfigurations(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int a6, char a7, int a8, char a9)
{
  if (!a6)
  {
    if ([objc_msgSend(a2 "irisSinkConfiguration")])
    {
      v12 = [a2 outputWidth];
      v11 = [a2 outputHeight];
      if (FigCaptureConnectionConfigurationWithSinkType(a4, 1))
      {
        v19 = [a1 previewDimensionsForAspectRatio:a8];
        if (v12 <= v19)
        {
          v12 = v19;
        }

        if (v11 <= SHIDWORD(v19))
        {
          v11 = HIDWORD(v19);
        }

        else
        {
          v11 = v11;
        }
      }

      goto LABEL_55;
    }

    if (a2 && [a1 capturesStillsFromVideoStream] && !objc_msgSend(objc_msgSend(a1, "frontEndScalerCompanionFormats"), "count"))
    {
      v14 = FigCaptureConvertDimensionsForAspectRatio([a1 dimensions], a8);
      goto LABEL_6;
    }

    v20 = [MEMORY[0x1E695DF70] array];
    [v20 addObjectsFromArray:a3];
    [v20 addObjectsFromArray:a4];
    if (a5)
    {
      [v20 addObject:a5];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v47 objects:v46 count:16];
    if (!v21)
    {
      goto LABEL_57;
    }

    v22 = v21;
    v11 = 0;
    v12 = 0;
    v23 = *v48;
    v24 = off_1E7989000;
LABEL_21:
    v25 = 0;
    v44 = v22;
    while (1)
    {
      if (*v48 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v26 = *(*(&v47 + 1) + 8 * v25);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_53;
      }

      v27 = [v26 sinkConfiguration];
      v28 = [v27 sinkType];
      if (v28 > 5)
      {
        if (v28 == 6 || v28 == 11)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v28 == 1)
        {
          v39 = [a1 previewDimensionsForAspectRatio:a8];
          if (v12 <= v39)
          {
            v12 = v39;
          }

          if (v11 <= SHIDWORD(v39))
          {
            v11 = HIDWORD(v39);
          }

          else
          {
            v11 = v11;
          }

          goto LABEL_53;
        }

        if (v28 == 4)
        {
LABEL_34:
          v30 = v11;
          v31 = v12;
          v32 = v23;
          v33 = v24;
          v34 = v20;
          v35 = [v26 nonRotatedOutputDimensions];
          v36 = v35;
          v37 = HIDWORD(v35);
          if ([v27 sinkType] != 11 && (a7 & 1) == 0)
          {
            v38 = [a1 previewDimensionsForAspectRatio:a8];
            if (v36 <= v38)
            {
              v36 = v38;
            }

            if (v37 <= SHIDWORD(v38))
            {
              LODWORD(v37) = HIDWORD(v38);
            }
          }

          if (v31 <= v36)
          {
            v31 = v36;
          }

          v12 = v31;
          if (v30 <= v37)
          {
            v11 = v37;
          }

          else
          {
            v11 = v30;
          }

          if ([v26 underlyingDeviceType] == 13)
          {
            v12 = [a1 dimensions];
            v11 = [a1 dimensions] >> 32;
          }

          v20 = v34;
          v24 = v33;
          v23 = v32;
          v22 = v44;
        }
      }

LABEL_53:
      if (v22 == ++v25)
      {
        v22 = [v20 countByEnumeratingWithState:&v47 objects:v46 count:16];
        if (!v22)
        {
          goto LABEL_55;
        }

        goto LABEL_21;
      }
    }
  }

  v10 = [a1 sensorDimensions];
  v11 = HIDWORD(v10);
  v12 = v10;
  if (a9)
  {
    v13 = [a1 postGDCCropDimensions];
    if (v13 >= 1 && SHIDWORD(v13) >= 1)
    {
      v14 = [a1 postGDCCropDimensions];
LABEL_6:
      v11 = HIDWORD(v14);
      v12 = v14;
    }
  }

LABEL_55:
  if (!v12 || !v11)
  {
LABEL_57:
    v40 = [a1 previewDimensionsForAspectRatio:a8];
    v11 = HIDWORD(v40);
    v12 = v40;
  }

  return v12 | (v11 << 32);
}

void csp_shouldUseFESCompanionIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_81_3();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [v34 requiredFormat];
  if (([v35 cinematicFramingEnabled] & 1) == 0 && (objc_msgSend(v35, "deskCamEnabled") & 1) == 0 && objc_msgSend(objc_msgSend(v36, "frontEndScalerCompanionFormats"), "count") && v31 >= 1 && SHIDWORD(v31) >= 1)
  {
    v55 = v35;
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_47_0();
    v42 = OUTLINED_FUNCTION_52(v38, v39, v40, v41);
    if (v42)
    {
      v43 = v42;
      OUTLINED_FUNCTION_125_1();
LABEL_10:
      v44 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_32_10();
        if (!v45)
        {
          objc_enumerationMutation(v33);
        }

        v46 = *(a30 + 8 * v44);
        v47 = [v46 sinkConfiguration];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v47 sinkType] == 6)
        {
          v48 = [v36 previewDimensionsForAspectRatio:{objc_msgSend(objc_msgSend(v46, "sourceConfiguration"), "outputAspectRatio")}];
          v49 = [v46 nonRotatedOutputDimensions];
          if (([v47 optimizedForPreview] & 1) == 0 && (v49 > v48 || SHIDWORD(v49) > SHIDWORD(v48)))
          {
            break;
          }

          if ([v46 videoStabilizationMethod] && objc_msgSend(v46, "videoStabilizationMethod") != 4 && objc_msgSend(v46, "videoStabilizationMethod") != 6)
          {
            break;
          }
        }

        if (v43 == ++v44)
        {
          OUTLINED_FUNCTION_47_0();
          v43 = OUTLINED_FUNCTION_52(v51, v52, v53, v54);
          if (v43)
          {
            goto LABEL_10;
          }

          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_26:
      [objc_msgSend(objc_msgSend(v36 "frontEndScalerCompanionFormats")];
      if ([v55 geometricDistortionCorrectionEnabled])
      {
        [objc_msgSend(objc_msgSend(v36 "frontEndScalerCompanionFormats")];
      }
    }
  }

  OUTLINED_FUNCTION_80_3();
}

uint64_t OUTLINED_FUNCTION_66_0()
{
  v3 = *(v1 + 3480);

  return [v3 numberWithInt:v0];
}

Float64 OUTLINED_FUNCTION_66_1()
{
  v3 = v0 + *(v1 + 3872);
  *&STACK[0x2D0] = *v3;
  STACK[0x2E0] = *(v3 + 16);

  return CMTimeGetSeconds(&STACK[0x2D0]);
}

uint64_t OUTLINED_FUNCTION_66_2(opaqueCMSampleBuffer *a1, uint64_t a2, __CVBuffer *a3, CMVideoFormatDescriptionRef *a4)
{

  return BWSampleBufferSetAttachedMediaFromPixelBuffer(a1, a2, a3, a4, v4, 0, 1);
}

BOOL OUTLINED_FUNCTION_66_6(NSObject *a1)
{
  v2 = STACK[0x35B];

  return os_log_type_enabled(a1, v2);
}

uint64_t OUTLINED_FUNCTION_66_7()
{

  return [v0 countByEnumeratingWithState:&STACK[0x2A0] objects:&STACK[0x220] count:16];
}

void csp_shouldUseDepthCompanionIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_91();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if ([objc_msgSend(v32 "requiredFormat")] && objc_msgSend(v33, "depthDataDeliveryEnabled") && (objc_msgSend(v33, "cinematicFramingEnabled") & 1) == 0 && (objc_msgSend(v33, "deskCamEnabled") & 1) == 0 && v29 >= 1 && SHIDWORD(v29) >= 1)
  {
    [objc_msgSend(objc_msgSend(v31 "firstObject")];
    v35 = [OUTLINED_FUNCTION_8() previewDimensionsForAspectRatio:?];
    OUTLINED_FUNCTION_9_35();
    v40 = OUTLINED_FUNCTION_37(v36, v37, v38, v39);
    if (v40)
    {
      v41 = v40;
      OUTLINED_FUNCTION_82_4();
      do
      {
        for (i = 0; i != v41; ++i)
        {
          OUTLINED_FUNCTION_19_17();
          if (!v43)
          {
            objc_enumerationMutation(v31);
          }

          v44 = *(a28 + 8 * i);
          v45 = [v44 sinkConfiguration];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v45 sinkType] == 4)
            {
              goto LABEL_31;
            }

            if ([v45 sinkType] == 10)
            {
              if ([v45 irisMovieCaptureEnabled])
              {
                goto LABEL_31;
              }
            }

            else if ([v45 sinkType] == 6)
            {
              v46 = [v44 nonRotatedOutputDimensions];
              if (([v45 optimizedForPreview] & 1) == 0 && (v46 > v35 || SHIDWORD(v46) > SHIDWORD(v35)))
              {
                goto LABEL_31;
              }

              if ([v44 videoStabilizationMethod] && objc_msgSend(v44, "videoStabilizationMethod") != 4 && objc_msgSend(v44, "videoStabilizationMethod") != 6)
              {
                goto LABEL_31;
              }
            }
          }
        }

        OUTLINED_FUNCTION_17_20();
        v41 = OUTLINED_FUNCTION_37(v48, v49, v50, v51);
      }

      while (v41);
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_90_3();
}

uint64_t OUTLINED_FUNCTION_79_0()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_79_4(uint64_t a1)
{

  return _FigIsCurrentDispatchQueue();
}

void csp_dockKitNodeEnabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int16 a33, char a34, os_log_type_t a35, unsigned int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  OUTLINED_FUNCTION_58_2();
  v51 = v50;
  v52 = v49;
  if (v49)
  {
    v53 = *(v49 + 176);
  }

  else
  {
    v53 = 0;
  }

  [v53 imageControlMode];
  [v53 imageControlMode];
  [v53 imageControlMode];
  [v53 cinematicFramingEnabled];
  if ([v53 manualCinematicFramingEnabled])
  {
    [v53 isDockedTrackingEnabled];
  }

  csp_cinematicVideoEnabled(v52);
  v54 = MGGetBoolAnswer();
  if (v52)
  {
    v55 = *(v52 + 176);
  }

  else
  {
    v55 = 0;
  }

  [v55 sourceDeviceType];
  if (v51)
  {
    [v53 isDockedTrackingEnabled];
  }

  _os_feature_enabled_impl();
  if (v52)
  {
    if (*(v52 + 355) == 1)
    {
      [v53 sourcePosition];
    }

    if (v54 && *(v52 + 354) == 1)
    {
      [v53 sourceDeviceType];
    }
  }

  if (dword_1ED844130)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  OUTLINED_FUNCTION_56();
}

uint64_t csp_cinematicVideoEnabled(uint64_t a1)
{
  if (a1)
  {
    if ([*(a1 + 176) isCinematicVideoCaptureEnabled])
    {
      return 1;
    }

    if ([*(a1 + 192) previewDepthDataDeliveryEnabled])
    {
      v3 = [*(a1 + 192) previewDepthFilterRenderingEnabled];
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 208);
  }

  else
  {
    if ([0 isCinematicVideoCaptureEnabled])
    {
      return 1;
    }

    if ([0 previewDepthDataDeliveryEnabled])
    {
      v3 = [0 previewDepthFilterRenderingEnabled];
    }

    else
    {
      v3 = 0;
    }

    v4 = 0;
  }

  if (FigCaptureConnectionConfigurationWithSinkType(v4, 4))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

BOOL OUTLINED_FUNCTION_120_2(NSObject *a1)
{
  v2 = STACK[0x39B];

  return os_log_type_enabled(a1, v2);
}

uint64_t csp_willDecoupleWarperFromStreamProcessing(void *a1)
{
  if (FigCapturePlatformIdentifier() > 9)
  {
    return 0;
  }

  if ([a1 containsObject:&unk_1F2244788])
  {
    return 1;
  }

  return [a1 containsObject:&unk_1F22447B8];
}

uint64_t csp_shouldCaptureStillsFromVideoStream(void *a1, void *a2, char a3, int a4)
{
  [objc_msgSend(a1 "requiredFormat")];
  [a2 capturesStillsFromVideoStream];
  v8 = FigCaptureVideoEffectEnabledInGraph(@"backgroundblur", [a1 backgroundBlurEnabled], objc_msgSend(a1, "isBackgroundBlurSupported"), objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isBackgroundBlurProvidedBySource"), a4, objc_msgSend(a1, "isCinematicVideoCaptureEnabled"), 0);
  v9 = FigCaptureVideoEffectEnabledInGraph(@"studiolighting", [a1 studioLightingEnabled], objc_msgSend(a1, "isStudioLightingSupported"), objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isStudioLightingProvidedBySource"), a4, objc_msgSend(a1, "isCinematicVideoCaptureEnabled"), 0);
  v10 = FigCaptureVideoEffectEnabledInGraph(@"backgroundreplacement", [a1 backgroundReplacementEnabled], objc_msgSend(a1, "isBackgroundReplacementSupported"), objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isBackgroundReplacementProvidedBySource"), a4, objc_msgSend(a1, "isCinematicVideoCaptureEnabled"), 0);
  v11 = [a1 isCinematicVideoCaptureEnabled];
  if (a4)
  {
    v12 = [a2 capturesStillsFromVideoStream] & (a3 ^ 1) | v8 | v9 | v10 | v11;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t csp_trueVideoCaptureEnabled(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if ([objc_msgSend(*(*(&v7 + 1) + 8 * v5) "movieFileSinkConfiguration")])
        {
          return 1;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void *csp_stabilizationMethodWithMostOverscan(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [&unk_1F2248AD8 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(&unk_1F2248AD8);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if ([a1 containsObject:v6])
        {
          LODWORD(result) = [v6 intValue];
          if (result == 4)
          {
            return 0;
          }

          else
          {
            return result;
          }
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [&unk_1F2248AD8 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t __FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType_block_invoke(uint64_t a1, uint64_t a2)
{
  if (objc_msgSend_isEqualToString_(*(a1 + 48), a2, *off_1E798A0E8))
  {
    if ([*(a2 + 96) count] == 1)
    {
      *(*(*(a1 + 40) + 8) + 40) = [*(a2 + 96) firstObject];
      return 0;
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Only one stream format is currently supported on the IR camera. Stream format count: %lu", objc_msgSend(*(a2 + 96), "count")];
    v15 = v12;
LABEL_28:
    objc_exception_throw([v15 exceptionWithName:v13 reason:v14 userInfo:0]);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [*(a2 + 96) reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v5;
  v7 = *v19;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v18 + 1) + 8 * i);
      if ([v9 cinematicFramingFormat] && objc_msgSend(*(a1 + 32), "isValidDerivedSourceFormatForUnderlyingFormat:", objc_msgSend(v9, "cinematicFramingFormat")))
      {
        v10 = [v9 cinematicFramingFormat];
LABEL_22:
        v9 = v10;
LABEL_23:
        *(*(*(a1 + 40) + 8) + 40) = v9;
        goto LABEL_24;
      }

      if ([v9 geometricDistortionCorrectionFormat] && objc_msgSend(*(a1 + 32), "isValidDerivedSourceFormatForUnderlyingFormat:", objc_msgSend(v9, "geometricDistortionCorrectionFormat")))
      {
        v10 = [v9 geometricDistortionCorrectionFormat];
        goto LABEL_22;
      }

      if ([v9 smartCropFormat] && objc_msgSend(*(a1 + 32), "isValidDerivedSourceFormatForUnderlyingFormat:", objc_msgSend(v9, "smartCropFormat")))
      {
        v10 = [v9 smartCropFormat];
        goto LABEL_22;
      }

      if ([*(a1 + 32) isValidDerivedSourceFormatForUnderlyingFormat:v9])
      {
        goto LABEL_23;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_24:
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v16 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find the underlying capture source format for %@ on %@", objc_msgSend(*(a1 + 32), "uniqueID"), *(a1 + 48)];
    v15 = v16;
    goto LABEL_28;
  }

  return 0;
}

uint64_t BWDeviceModelHasCharleston(uint64_t a1, uint64_t a2)
{
  ModelSpecificName = FigCaptureGetModelSpecificName(a1, a2);

  return [&unk_1F22486D0 containsObject:ModelSpecificName];
}

uint64_t FigCapturePixelFormatIsUsedForProRes(int a1)
{
  LODWORD(result) = FigCapturePixelFormatIs422(a1);
  if (a1 == 1650946098 || a1 == 1651798066)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t BWCaptureDevicePositionFromPortType(void *a1, uint64_t a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, *off_1E798A0C0) & 1) != 0 || (objc_msgSend_isEqualToString_(a1) & 1) != 0 || (objc_msgSend_isEqualToString_(a1) & 1) != 0 || (objc_msgSend_isEqualToString_(a1))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2;
  }

  v3 = 2;
  if ((objc_msgSend_isEqualToString_(a1) & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(a1))
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void *FigCaptureAddDetectedObjectTypesFromMetadataIdentifiersToSet(void *a1, void *a2)
{
  if ([a1 containsObject:*MEMORY[0x1E6960388]])
  {
    [a2 addObject:*off_1E798ACB8];
  }

  if ([a1 containsObject:*MEMORY[0x1E6960390]])
  {
    [a2 addObject:*off_1E798ACB0];
  }

  if ([a1 containsObject:*off_1E798D0D0])
  {
    [a2 addObject:*off_1E798ACC0];
  }

  if ([a1 containsObject:@"mdta/com.apple.quicktime.detected-dog-head"])
  {
    [a2 addObject:*off_1E798ACA8];
  }

  if ([a1 containsObject:*MEMORY[0x1E6960378]])
  {
    [a2 addObject:*off_1E798ACA0];
  }

  if ([a1 containsObject:@"mdta/com.apple.quicktime.detected-cat-head"])
  {
    [a2 addObject:*off_1E798AC98];
  }

  if ([a1 containsObject:*MEMORY[0x1E6960368]])
  {
    [a2 addObject:*off_1E798AC90];
  }

  if ([a1 containsObject:*MEMORY[0x1E6960398]])
  {
    [a2 addObject:*off_1E798ACD8];
  }

  if ([a1 containsObject:*off_1E798D0E0])
  {
    [a2 addObject:*off_1E798ACD0];
  }

  if ([a1 containsObject:*MEMORY[0x1E6960370]])
  {
    [a2 addObject:*off_1E798AC98];
  }

  if ([a1 containsObject:*MEMORY[0x1E6960380]])
  {
    [a2 addObject:*off_1E798ACA8];
  }

  result = [a1 containsObject:*off_1E798D0D8];
  if (result)
  {
    v5 = *off_1E798ACC8;

    return [a2 addObject:v5];
  }

  return result;
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresEyeReliefStatus(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *off_1E798D128;

  return [v1 containsObject:v2];
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresFaceIDReadiness(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *off_1E798D130;

  return [v1 containsObject:v2];
}

uint64_t csp_portraitPhotoModeEnabled(uint64_t a1)
{
  if (a1)
  {
    if ([*(a1 + 192) previewDepthDataDeliveryEnabled])
    {
      v2 = [*(a1 + 192) previewDepthFilterRenderingEnabled];
    }

    else
    {
      v2 = 0;
    }

    v3 = *(a1 + 208);
  }

  else
  {
    if ([0 previewDepthDataDeliveryEnabled])
    {
      v2 = [0 previewDepthFilterRenderingEnabled];
    }

    else
    {
      v2 = 0;
    }

    v3 = 0;
  }

  if (FigCaptureConnectionConfigurationWithSinkType(v3, 4))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t csp_configureMultiStreamCameraNode(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, int a8, float a9, float a10, float a11, float a12, float a13, float a14, char a15, char a16, void *a17, char a18, int a19, int a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, int a38, int a39, int a40, int a41, char a42, char a43, void *a44, char a45, char a46, int a47, char a48, char a49, char a50, void *a51, char a52, char a53, char a54, char a55, char a56, char a57, char a58, char a59, char a60, char a61, char a62, unsigned __int8 a63)
{
  v511 = a4;
  v552 = 0;
  v551 = 0;
  v111 = [a1 captureStream];
  v112 = [a1 portType];
  v113 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType([a2 source], objc_msgSend(a2, "requiredFormat"), v112, &v552);
  if (v552)
  {
    csp_configureMultiStreamCameraNode_cold_1();
    goto LABEL_572;
  }

  v518 = v113;
  if (!v113)
  {
    csp_configureMultiStreamCameraNode_cold_10(&v552);
    v113 = 0;
    goto LABEL_572;
  }

  v114 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType([a2 source], v112, &v552);
  if (v552)
  {
    v440 = v114;
    csp_configureMultiStreamCameraNode_cold_2();
    v129 = v440;
    if (!v440)
    {
      goto LABEL_572;
    }

    goto LABEL_571;
  }

  if (!v114)
  {
    v115 = [a2 source];
    if (v115)
    {
      v114 = CFRetain(v115);
    }

    else
    {
      v114 = 0;
    }
  }

  v507 = v114;
  v505 = v112;
  v116 = [FigVideoCaptureConnectionConfiguration videoStabilizationMethods:a6 includeIris:1];
  LODWORD(v495) = csp_stabilizationMethodWithMostOverscan(v116);
  HIDWORD(v503) = FigCaptureSourceGetIntAttribute([a2 source], 0x1F21A0530, &v552);
  if (v552)
  {
    csp_configureMultiStreamCameraNode_cold_3();
    goto LABEL_32;
  }

  v501 = v116;
  LODWORD(v509) = a63;
  HIDWORD(v509) = a24;
  v504 = a17;
  HIDWORD(v497) = a7;
  LODWORD(v498) = a8;
  LODWORD(v500) = csp_willDecoupleWarperFromStreamProcessing(a17);
  if (FigCapturePlatformIdentifier() < 10)
  {
    HIDWORD(v498) = 0;
  }

  else if ([a17 containsObject:&unk_1F2244788])
  {
    HIDWORD(v498) = 1;
  }

  else
  {
    HIDWORD(v498) = [a17 containsObject:&unk_1F22447B8];
  }

  v496 = a1;
  v117 = a37;
  v118 = a18;
  HIDWORD(v502) = csp_shouldCaptureStillsFromVideoStream(a2, v113, a24, a5 != 0);
  HIDWORD(v495) = [a5 irisVISEnabled];
  LODWORD(v502) = [objc_msgSend(a5 "irisSinkConfiguration")];
  LODWORD(v503) = [a2 bravoShiftMitigationEnabled];
  v550 = 0;
  v549 = 0;
  v548 = 0;
  v547 = *MEMORY[0x1E695EFF8];
  v546 = 0;
  v119 = objc_alloc_init(BWMultiStreamCameraSourceNodeConfiguration);
  if ([v113 isVideoHDRFusionSupported])
  {
    BWColorSpaceIsHDR([a2 colorSpace]);
  }

  v120 = csp_shouldUseActionCameraCompanionIndex(a2, a6, a18);
  v517 = v111;
  LODWORD(v497) = a61;
  obj = csp_shouldUseFullBinSIFRCompanionIndex(v518, [v111 supportedFormats], a5, (a37 & a61), a63);
  v554 = 0u;
  v555 = 0u;
  v556 = 0u;
  v557 = 0u;
  v121 = [a6 countByEnumeratingWithState:&v554 objects:&v553 count:16];
  v519 = v119;
  v515 = a2;
  v508 = a5;
  if (v121)
  {
    v123 = v121;
    v124 = *v555;
    while (2)
    {
      for (i = 0; i != v123; ++i)
      {
        if (*v555 != v124)
        {
          objc_enumerationMutation(a6);
        }

        v126 = *(*(&v554 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v126 attachMetadataToVideoBuffers])
        {
          v122 = 0;
          goto LABEL_28;
        }
      }

      v123 = [a6 countByEnumeratingWithState:&v554 objects:&v553 count:16];
      if (v123)
      {
        continue;
      }

      break;
    }

    v122 = 1;
LABEL_28:
    a2 = v515;
    v117 = a37;
    v118 = a18;
  }

  else
  {
    v122 = 1;
  }

  v127 = [a2 source];
  v128 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v128)
  {
    v552 = -12782;
LABEL_31:
    csp_configureMultiStreamCameraNode_cold_9();
LABEL_32:
    v113 = v518;
    goto LABEL_33;
  }

  v463 = *MEMORY[0x1E695E480];
  v465 = @"AttributesDictionary";
  v552 = v128(v127);
  if (v552)
  {
    goto LABEL_31;
  }

  HIDWORD(v461) = v122;
  if (a83)
  {
    if (![v518 depthCompanionFormat])
    {
      csp_configureMultiStreamCameraNode_cold_8(&v552);
      goto LABEL_32;
    }

    v130 = 1;
  }

  else
  {
    v130 = a25;
  }

  HIDWORD(v494) = v130;
  LODWORD(v486) = v118;
  HIDWORD(v491) = v117;
  LODWORD(v492) = a86;
  -[BWMultiStreamCameraSourceNodeConfiguration setMachineLearningVideoNoiseReductionSupported:](v519, "setMachineLearningVideoNoiseReductionSupported:", [objc_msgSend(a2 "requiredFormat")]);
  v131 = [a3 depthType];
  LODWORD(v494) = a30;
  if (a30)
  {
    v132 = 0;
  }

  else
  {
    v132 = v131 == 3;
  }

  v133 = v132;
  LODWORD(v477) = v133;
  if (v132)
  {
    v489 = a72;
    v479 = 0;
    LODWORD(v481) = 0;
    HIDWORD(v477) = 0;
    v134 = [v518 fsdNetCompanionFormat] != 0;
    v135 = 1;
  }

  else
  {
    v134 = 0;
    HIDWORD(v479) = a95;
    LODWORD(v481) = a94;
    LODWORD(v479) = a92;
    HIDWORD(v477) = a91;
    v489 = a71;
    v135 = a15;
  }

  HIDWORD(v506) = v135;
  HIDWORD(v481) = a83;
  HIDWORD(v467) = a89;
  if (a89)
  {
    v136 = v518;
    v137 = [v518 stereoVideoCompanionFormat] != 0;
  }

  else
  {
    v137 = 0;
    v136 = v518;
  }

  v545 = 0;
  v138 = [a2 sensorHDREnabled];
  v139 = [a2 highlightRecoveryEnabled];
  [a2 geometricDistortionCorrectionEnabled];
  HIDWORD(v475) = a33;
  v140 = csp_formatIndex(v136, a24, SHIDWORD(v494), v134, v120, obj, a86, v137, v503, v138, v139, a33, &v545, &v549, &v550, &v548, &v547, &v546);
  v141 = v519;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setFormatIndex:v140];
  if ([v136 fastSwitchingMainCaptureStreamFormat])
  {
    v142 = [v518 fastSwitchingMainCaptureStreamFormat];
    v143 = [v142 frontEndScalerCompanionFormats];
    if ([v143 count])
    {
      v142 = [v143 firstObject];
    }

    v144 = [v142 formatIndex];
    v145 = [objc_msgSend(v111 "supportedFormats")];
    v146 = [v145 objectForKeyedSubscript:*off_1E798C998];
    if (v144 == -[BWMultiStreamCameraSourceNodeConfiguration formatIndex](v519, "formatIndex") || [v146 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", -[BWMultiStreamCameraSourceNodeConfiguration formatIndex](v519, "formatIndex"))}] && (v147 = csp_formatUsesFES(v145), v147 == csp_formatUsesFES(objc_msgSend(objc_msgSend(v517, "supportedFormats"), "objectAtIndexedSubscript:", -[BWMultiStreamCameraSourceNodeConfiguration formatIndex](v519, "formatIndex")))))
    {
      [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setFastSwitchingMainFormatIndex:v144];
      [objc_msgSend(v145 objectForKeyedSubscript:{*off_1E798D3F8), "floatValue"}];
      [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setFastSwitchingMainFormatMaxFrameRate:?];
    }
  }

  HIDWORD(v459) = v137;
  [a3 ultraHighResolutionZeroShutterLagSupportEnabled];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 formatIndex];
  v148 = v517;
  [v517 supportedFormats];
  [v518 configureForNonDisruptiveFullBinSIFRSwitching];
  csp_activeStreamingNondisruptiveSwitchingFormatIndices();
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setActiveStreamingNondisruptiveSwitchingFormatIndices:v149];
  -[BWMultiStreamCameraSourceNodeConfiguration setSifrBinningFactorOverrideForNondisruptiveSwitching:](v519, "setSifrBinningFactorOverrideForNondisruptiveSwitching:", [v518 sifrBinningFactorOverrideForNondisruptiveSwitching]);
  -[BWMultiStreamCameraSourceNodeConfiguration setQuadraSubPixelSwitchingParameters:](v519, "setQuadraSubPixelSwitchingParameters:", [v518 quadraSubPixelSwitchingParameters]);
  v150 = v508;
  v151 = +[FigCaptureSourceFormatDimensions identifyResolutionFlavorFromDimensions:availableHighResStillImageDimensions:aspectRatio:](FigCaptureSourceFormatDimensions, "identifyResolutionFlavorFromDimensions:availableHighResStillImageDimensions:aspectRatio:", [objc_msgSend(v508 "irisSinkConfiguration")], objc_msgSend(v518, "highResStillImageDimensions"), objc_msgSend(a2, "outputAspectRatio"));
  if ([v518 isPhotoFormat] && (v151 > 0 || (objc_msgSend(v517, "isMultipleSensorRawBufferPoolsSupported") & 1) != 0) || objc_msgSend(v518, "configureForNonDisruptiveFullBinSIFRSwitching") && a63)
  {
    if ([(BWMultiStreamCameraSourceNodeConfiguration *)v519 fastSwitchingMainFormatIndex]== -1)
    {
      v152 = [(BWMultiStreamCameraSourceNodeConfiguration *)v519 formatIndex];
    }

    else
    {
      v152 = [(BWMultiStreamCameraSourceNodeConfiguration *)v519 fastSwitchingMainFormatIndex];
    }

    v153 = v152;
    v154 = [v517 supportedFormats];
    csp_activeUltraHighResStillImageNondisruptiveSwitchingFormatIndices(v153, v154, v155, v156, v157, v158, v159, v160, v441, v444, v447, v449, v451, v453, v455, v457, v459, v461, v463, @"AttributesDictionary", v467, v469, v472, v475, v477, v479, v481, v482, v486, v489, v491, v492, v494, v495, v496, v497, v498, v500, v501, v502, v503, a17, v112, v506, v507, v508, v509, v511);
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setActiveUltraHighResStillImageNondisruptiveSwitchingFormatIndices:v161];
  }

  v162 = a3;
  if ([v518 isFastSwitchingConfigurationRequired])
  {
    v163 = [v518 frontEndScalerCompanionFormats];
    v164 = [v163 count];
    v165 = v518;
    if (v164)
    {
      v165 = [v163 firstObject];
    }

    v166 = [v165 formatIndex];
    if (v166 == [(BWMultiStreamCameraSourceNodeConfiguration *)v519 formatIndex])
    {
      v167 = [MEMORY[0x1E695DFA8] set];
      v541 = 0u;
      v542 = 0u;
      v543 = 0u;
      v544 = 0u;
      obja = FigVideoCaptureSourceGetUnderlyingFastSwitchingFormatsForFormatAndPortType([a2 source], v518, v505, &v552);
      v168 = [obja countByEnumeratingWithState:&v541 objects:v540 count:16];
      if (v168)
      {
        v169 = v168;
        v170 = *v542;
        do
        {
          for (j = 0; j != v169; ++j)
          {
            if (*v542 != v170)
            {
              objc_enumerationMutation(obja);
            }

            v172 = *(*(&v541 + 1) + 8 * j);
            v173 = [v172 frontEndScalerCompanionFormats];
            v174 = [v173 count];
            v175 = v172;
            if (v174)
            {
              v175 = [v173 firstObject];
            }

            v176 = [v175 formatIndex];
            [v167 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v176)}];
            [v517 supportedFormats];
            [v172 configureForNonDisruptiveFullBinSIFRSwitching];
            csp_activeStreamingNondisruptiveSwitchingFormatIndices();
            [v167 addObjectsFromArray:v177];
            [v167 removeObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", -[BWMultiStreamCameraSourceNodeConfiguration formatIndex](v519, "formatIndex"))}];
          }

          v169 = [obja countByEnumeratingWithState:&v541 objects:v540 count:16];
        }

        while (v169);
      }

      if ([v167 count])
      {
        v178 = [v167 allObjects];
      }

      else
      {
        v178 = 0;
      }

      v162 = a3;
      v148 = v517;
      v141 = v519;
      v150 = v508;
      [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setFastSwitchingNondisruptiveFormatIndices:v178];
      a2 = v515;
    }
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setCropDimensionsWhenFESIsEnabled:v550];
  [a2 maxFrameRateClientOverride];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setMaximumSupportedFrameRate:?];
  [objc_msgSend(a2 "requiredFormat")];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setMinimumSupportedFrameRate:?];
  v179 = [objc_msgSend(a2 "requiredFormat")];
  v545 &= v179;
  if ([objc_msgSend(objc_msgSend(v148 "stream")])
  {
    if (v545 == 1)
    {
      v553.value = 0;
      FigCaptureSourceCopyProperty(v507, v465, v463, &v553);
      if ([a2 sourcePosition] == 1)
      {
        v180 = [objc_msgSend(v553.value objectForKeyedSubscript:{@"MainToSIFRSkipRatioFor60FPS", "intValue"}];
        [(BWMultiStreamCameraSourceNodeConfiguration *)v141 maximumSupportedFrameRate];
        if (v181 != 60.0 || !v180)
        {
          [(BWMultiStreamCameraSourceNodeConfiguration *)v141 maximumSupportedFrameRate];
          if (v182 <= 60.0)
          {
            if ([v553.value objectForKeyedSubscript:@"MainToSIFRFrameRateRatio"])
            {
              v180 = [objc_msgSend(v553.value objectForKeyedSubscript:{@"MainToSIFRFrameRateRatio", "intValue"}];
            }

            else
            {
              v180 = 2;
            }
          }

          else
          {
            v180 = 4;
          }
        }
      }

      else
      {
        v183 = [objc_msgSend(v553.value objectForKeyedSubscript:{@"MainToSIFRFrameRateRatio", "intValue"}];
        if (v183 <= 1)
        {
          v180 = 1;
        }

        else
        {
          v180 = v183;
        }
      }

      [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setMainToSIFRFrameRateRatio:v180];
    }

    else
    {
      [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setMainToSIFRFrameRateRatio:1];
    }
  }

  if (v545 == 1)
  {
    v184 = [a2 highlightRecoveryEnabled];
  }

  else
  {
    v184 = 0;
  }

  HIDWORD(v473) = a49 | v184;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setHighlightRecoveryEnabledWhenConfiguredAsMasterOrSingleStream:BYTE4(v473) & 1];
  v185 = (((a32 ^ 1) & 1) != 0 || (a50 & 1) != 0 || a49) && [(BWMultiStreamCameraSourceNodeConfiguration *)v141 highlightRecoveryEnabledWhenConfiguredAsMasterOrSingleStream];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setHighlightRecoveryEnabledWhenConfiguredAsSlave:v185];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setVideoHDRImageStatisticsEnabled:a60];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setVideoHDRFusionEnabled:0];
  LODWORD(v475) = a32 ^ 1;
  if (HIDWORD(v506))
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setDolbyVisionMetadataOnVideoCaptureOutputEnabled:[(BWMultiStreamCameraSourceNodeConfiguration *)v141 videoHDRImageStatisticsEnabled]];
    v186 = 0;
  }

  else
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setDolbyVisionMetadataOnVideoCaptureOutputEnabled:0];
    v186 = [(BWMultiStreamCameraSourceNodeConfiguration *)v141 videoHDRImageStatisticsEnabled];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setDolbyVisionMetadataOnPreviewOutputEnabled:v186];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setUsesFirmwareStillImageOutput:?];
  v187 = [v518 isHighPhotoQualitySupported];
  v188 = [v518 usesPacked10BitFirmwareStillImageOutputPixelFormat];
  v189 = (v187 ^ 1) & v188;
  if ((v187 ^ 1) & 1) == 0 && (v188)
  {
    v189 = [objc_msgSend(v150 irisSinkConfiguration] > 1 || BWColorSpaceIsHDR(objc_msgSend(a2, "colorSpace"));
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setStillImageOutputRequires10BitPixelFormat:v189];
  if (([a2 cinematicFramingEnabled] & 1) != 0 || csp_isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration(a6))
  {
    v190 = v518;
    objb = [v518 isSmartCropSupported];
    v191 = 1;
  }

  else
  {
    v191 = 0;
    objb = 0;
    v190 = v518;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setSensorCropDimensions:v548];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setSensorCenterOffset:v547];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setPostGDCCropDimensions:v546];
  v192 = [v190 isDynamicAspectRatioSupported];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setDynamicAspectRatioEnabled:v192];
  v193 = 0;
  v484 = v192;
  if (v192 && (objb & 1) == 0)
  {
    v193 = [v162 smartFramingEnabled] ^ 1;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setAdaptiveSensorCropForDynamicAspectRatioEnabled:v193];
  if ([objc_msgSend(v551 objectForKeyedSubscript:{@"SensorOutputLargerThanImageCircle", "BOOLValue"}])
  {
    if ([objc_msgSend(objc_msgSend(v162 "cameraInfoByPortType")])
    {
      v194 = 1;
    }

    else
    {
      v539 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v141 = v519;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v194 = 0;
      v162 = a3;
    }
  }

  else
  {
    v194 = 0;
  }

  LODWORD(v470) = a49;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setSensorOutputLargerThanImageCircle:v194, v441, v444];
  -[BWMultiStreamCameraSourceNodeConfiguration setBaseZoomFactorOverridesByAspectRatio:](v141, "setBaseZoomFactorOverridesByAspectRatio:", [v551 objectForKeyedSubscript:@"BaseZoomFactorOverridesByAspectRatio"]);
  if (-[BWMultiStreamCameraSourceNodeConfiguration baseZoomFactorOverridesByAspectRatio](v141, "baseZoomFactorOverridesByAspectRatio") && ([v162 isBravoVariant] & 1) != 0)
  {
    goto LABEL_32;
  }

  v113 = v518;
  AspectRatioFractionalDimensionsForAspectRatio = [v518 sourceCropAspectRatio];
  if (v484 && [a2 outputAspectRatio] && (objc_msgSend(a3, "smartFramingEnabled") & 1) == 0)
  {
    AspectRatioFractionalDimensionsForAspectRatio = FigCaptureGetAspectRatioFractionalDimensionsForAspectRatio([a2 outputAspectRatio]);
  }

  v197 = AspectRatioFractionalDimensionsForAspectRatio;
  if (a99)
  {
    v536 = 0u;
    v537 = 0u;
    v534 = 0u;
    v535 = 0u;
    v198 = [a6 countByEnumeratingWithState:&v534 objects:v533 count:16];
    if (v198)
    {
      v199 = v198;
      v200 = *v535;
LABEL_134:
      v201 = 0;
      while (1)
      {
        if (*v535 != v200)
        {
          objc_enumerationMutation(a6);
        }

        v202 = *(*(&v534 + 1) + 8 * v201);
        if ([v202 videoDataSinkConfiguration])
        {
          break;
        }

        if (v199 == ++v201)
        {
          v199 = [a6 countByEnumeratingWithState:&v534 objects:v533 count:16];
          if (v199)
          {
            goto LABEL_134;
          }

          v202 = 0;
          break;
        }
      }

      v141 = v519;
    }

    else
    {
      v202 = 0;
    }

    v197 = [v202 nonRotatedOutputDimensions];
    AspectRatioFractionalDimensionsForAspectRatio = [v202 nonRotatedOutputDimensions];
  }

  v203 = AspectRatioFractionalDimensionsForAspectRatio & 0xFFFFFFFF00000000 | v197;
  if (objb)
  {
    v204 = 0;
  }

  else
  {
    v204 = v203;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setCropAspectRatio:v204];
  -[BWMultiStreamCameraSourceNodeConfiguration setHorizontalSensorBinningFactor:](v141, "setHorizontalSensorBinningFactor:", [v518 horizontalSensorBinningFactor]);
  -[BWMultiStreamCameraSourceNodeConfiguration setVerticalSensorBinningFactor:](v141, "setVerticalSensorBinningFactor:", [v518 verticalSensorBinningFactor]);
  -[BWMultiStreamCameraSourceNodeConfiguration setFesBinningFactorHorizontal:](v141, "setFesBinningFactorHorizontal:", [v518 fesBinningFactorHorizontal]);
  -[BWMultiStreamCameraSourceNodeConfiguration setVideoStabilizationEnabled:](v141, "setVideoStabilizationEnabled:", [v504 containsObject:&unk_1F2244908]);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setVideoStabilizationMethods:v501];
  -[BWMultiStreamCameraSourceNodeConfiguration setVideoStabilizationTypeISPMeshEnabled:](v141, "setVideoStabilizationTypeISPMeshEnabled:", [v504 containsObject:&unk_1F22447B8]);
  if ((a79 & 1) != 0 || a90)
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setLtmLookUpTableMetadataEnabledForStreaming:1];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setLtmThumbnailMetadataEnabledForStreaming:1];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setLtmThumbnailMetadataEnabledForStreaming:[(BWMultiStreamCameraSourceNodeConfiguration *)v141 ltmThumbnailMetadataEnabledForStreaming]];
  HIDWORD(v470) = v191;
  LODWORD(v473) = a90;
  if ((a65 & 1) != 0 || (a66 & 1) != 0 || a67)
  {
    v553.value = 0;
    v207 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v207)
    {
      v207(v507, v465, v463, &v553);
    }

    if ([objc_msgSend(v553.value objectForKeyedSubscript:{@"GeometricDistortionCorrection", "BOOLValue"}])
    {
      v206 = 1;
    }

    else if ([objc_msgSend(v553.value objectForKeyedSubscript:{@"geometricDistortionCorrectionForSmartCropEnabled", "BOOLValue"}] && objc_msgSend(objc_msgSend(a2, "requiredFormat"), "isSmartCropSupported"))
    {
      v206 = [a2 cinematicFramingEnabled];
    }

    else
    {
      v206 = 0;
    }

    BoolAttribute = FigCaptureSourceGetBoolAttribute(v507, 0x1F21A0730, &v552);

    if (v552)
    {
      csp_configureMultiStreamCameraNode_cold_4();
      goto LABEL_33;
    }
  }

  else
  {
    BoolAttribute = 0;
    v206 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setGeometricDistortionCorrectionSupported:v206];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setGeometricDistortionCorrectionOnStillImageOutputEnabled:v206 & a65];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setGeometricDistortionCorrectionOnVideoCaptureOutputEnabled:v206 & a66];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setGeometricDistortionCorrectionOnPreviewOutputEnabled:v206 & a67];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setMaximumGeometricDistortionCorrectionEnabled:v206 & BoolAttribute];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setStillImageGeometricDistortionCorrectionExpansionCoversOverscan:a68];
  -[BWMultiStreamCameraSourceNodeConfiguration setProResRawCaptureEnabled:](v519, "setProResRawCaptureEnabled:", FigCapturePixelFormatIsPackedBayerRaw([v518 format]));
  -[BWMultiStreamCameraSourceNodeConfiguration setClientVideoFormat:](v519, "setClientVideoFormat:", [v518 format]);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setDeferStreamingOutputsEnable:a70];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setSecondaryScalerIsNotAvailable:a26];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setOptimizeBandwidthForPreviewOutput:FigCapturePlatformIdentifier() > 5];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPrimaryScalerDecoupled:v500];
  v208 = [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPrimaryScalerDeprioritized:HIDWORD(v498)];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPreferredPreviewMaxFrameRate:BWGetMaximumDisplayFrequency(v208, v209)];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setStreamingRequiredWhenConfiguredAsSlave:a50];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setVisionDataRequiredWhenConfiguredAsSlave:a44 != 0];
  v210 = v515;
  *&v211 = FigVideoCaptureSourceUIBaseZoomFactor([v515 source], &v552);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setUiBaseZoomFactor:v211];
  if (v552)
  {
    csp_configureMultiStreamCameraNode_cold_5();
    goto LABEL_33;
  }

  v483 = a12;
  v487 = a9;
  v499 = a10;
  v212 = HIDWORD(v489);
  v213 = [v518 shouldPreferSIFRFormatWithHighlightRecoveryEnabled:BYTE4(v473) & 1];
  v214 = [v515 geometricDistortionCorrectionEnabled];
  [v518 stabilizationOverscanFromSensorForFESCropDimensions:v549 preferSIFRFormat:v213 geometricDistortionCorrection:v214 useFESCompanionIndex:HIDWORD(v509)];
  v216 = v215;
  v218 = v217;
  if ((v475 | HIDWORD(v475)) == 1)
  {
    v219 = [objc_msgSend(v508 "irisSinkConfiguration")] ^ 1;
  }

  else
  {
    v219 = 0;
  }

  v220 = a3;
  v222 = *MEMORY[0x1E695F060];
  v221 = *(MEMORY[0x1E695F060] + 8);
  if (a21)
  {
    if (objc_msgSend_isEqualToString_(v505))
    {
      v223 = &kFigCaptureOfflineStillImageVideoStabilizationOverscanPercentage_FrontCamera;
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(v505);
      v223 = &kFigCaptureOfflineStillImageVideoStabilizationOverscanPercentage_FrontCamera;
      if ((isEqualToString & 1) == 0)
      {
        v223 = &kFigCaptureOfflineStillImageVideoStabilizationOverscanPercentage_BackCamera;
      }
    }

    v226 = *v223;
    v224 = v226;
    goto LABEL_228;
  }

  if (v495 <= 1)
  {
    if (!v495)
    {
      v226 = *(MEMORY[0x1E695F060] + 8);
      v224 = *MEMORY[0x1E695F060];
      goto LABEL_228;
    }

    if (v495 == 1)
    {
      [v518 stabilizationOverscanPercentageOverrideForStandard];
      if (v227 <= 0.0)
      {
        v224 = 0.100000001;
      }

      else
      {
        [v518 stabilizationOverscanPercentageOverrideForStandard];
        v224 = (v228 / 100.0);
      }

      goto LABEL_224;
    }

LABEL_191:
    v224 = *MEMORY[0x1E695F060];
    v226 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_225;
  }

  if ((v495 - 2) >= 2 && v495 != 5)
  {
    if (v495 == 6)
    {
      v224 = 0.200000003;
LABEL_224:
      v226 = v224;
      goto LABEL_225;
    }

    goto LABEL_191;
  }

  if (!HIDWORD(v495))
  {
    [v518 stabilizationOverscanPercentageOverrideForCinematic];
    if (v229 <= 0.0)
    {
      v224 = 0.200000003;
    }

    else
    {
      v224 = (v229 / 100.0);
    }

    if (v486)
    {
      if ([v515 videoStabilizationStrength] == 3)
      {
        v230 = 50.0;
      }

      else
      {
        [v515 videoStabilizationStrength];
        v230 = 75.0;
      }

      v224 = (v230 / 100.0);
      csp_trueVideoCaptureEnabled(a6);
      goto LABEL_224;
    }

    if (v495 != 5)
    {
LABEL_206:
      if (csp_trueVideoCaptureEnabled(a6))
      {
        v234 = [a3 position];
        v235 = [a3 deviceType];
        objc_opt_self();
        if (v234 == 1)
        {
          v224 = 0.18;
        }

        else if (v234 == 2)
        {
          if (v235 == 7)
          {
            v224 = dbl_1AD055E30[a14 > 1.1];
          }

          else
          {
            v224 = 0.1;
          }
        }

        else
        {
          v224 = 0.0;
        }

        v220 = a3;
        [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setAdditionalVISOverscanReservedInZoom:0.0];
      }

      goto LABEL_224;
    }

    *&v459 = a13;
    [v518 stabilizationOverscanPercentageOverrideForCinematicExtendedEnhanced];
    if (v231 == 0.0)
    {
      v231 = 28.0;
    }

    v232 = v231;
    if (HIDWORD(v459))
    {
      v233 = 46.0;
    }

    else
    {
      v233 = v232;
    }

    if ([a3 cinematicVideoEnabled])
    {
      goto LABEL_204;
    }

    if ([a3 isBravoVariant])
    {
      v236 = (v233 / 100.0 + 1.0) / (v224 + 1.0) + -1.0;
      a11 = v236;
      if ((objc_msgSend_isEqualToString_(v505) & 1) == 0)
      {
        *&v237 = v236;
        [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setAdditionalVISOverscanReservedInZoom:v237];
      }

      goto LABEL_205;
    }

    if ((objc_msgSend_isEqualToString_(v505) & 1) == 0)
    {
LABEL_204:
      v224 = v233 / 100.0;
    }

LABEL_205:
    a13 = *&v459;
    goto LABEL_206;
  }

  if (v219)
  {
    v226 = v218;
  }

  else
  {
    v226 = *(MEMORY[0x1E695F060] + 8);
  }

  if (v219)
  {
    v224 = v216;
  }

  else
  {
    v224 = *MEMORY[0x1E695F060];
  }

LABEL_225:
  if ((v224 != v222 || v226 != v221) && ![(BWMultiStreamCameraSourceNodeConfiguration *)v519 videoStabilizationEnabled])
  {
    v374 = [v220 cinematicVideoEnabled];
    if (v495 != 4 && (v374 & 1) == 0)
    {
      v375 = v489;
      v376 = SHIDWORD(v489);
      if (v546 < 1 || SHIDWORD(v546) < 1)
      {
        *(&v475 + 1) = SHIDWORD(v489);
        if ([v515 geometricDistortionCorrectionEnabled] && (v432 = objc_msgSend(objc_msgSend(objc_msgSend(v518, "frontEndScalerCompanionFormats"), "lastObject"), "geometricDistortionCorrectedNativeDimensions"), v432 >= 1) && SHIDWORD(v432) >= 1)
        {
          v377 = v432 / HIDWORD(v432);
        }

        else
        {
          v433 = v548;
          *&v459 = a13;
          if (v548 < 1 || (LODWORD(v434) = HIDWORD(v548), SHIDWORD(v548) <= 0))
          {
            v435 = [v518 sensorDimensions];
            v433 = v435;
            v434 = HIDWORD(v435);
          }

          v436 = ([v518 horizontalSensorBinningFactor] * v433);
          v377 = v436 / ([v518 verticalSensorBinningFactor] * v434);
          v220 = a3;
          a13 = *&v459;
        }

        v375 = v489;
        v376 = SHIDWORD(v489);
      }

      else
      {
        v377 = v546 / HIDWORD(v546);
      }

      v437 = v375 / v376;
      if (v484)
      {
        v510 = v437;
        *&v459 = a13;
        v438 = (v224 + 1.0) * BWAspectRatioValueFromAspectRatio(3) / 1.60000002 + -1.0;
        v531[0] = BWAspectRatioToShortString(3);
        v558.width = v224;
        v558.height = v438;
        v532[0] = CGSizeCreateDictionaryRepresentation(v558);
        v531[1] = BWAspectRatioToShortString(4);
        v559.width = v438;
        v559.height = v224;
        v532[1] = CGSizeCreateDictionaryRepresentation(v559);
        -[BWMultiStreamCameraSourceNodeConfiguration setVisOverscanByAspectRatio:](v519, "setVisOverscanByAspectRatio:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v532 forKeys:v531 count:2]);
        if ([v515 outputAspectRatio] == 3)
        {
          v377 = 1.6;
          a13 = *&v459;
          v437 = v510;
        }

        else
        {
          v439 = [v515 outputAspectRatio];
          v377 = 0.625;
          v437 = v510;
          if (v439 != 4)
          {
            v377 = v510;
          }

          a13 = *&v459;
        }
      }

      if (vabds_f32(v437, v377) > 0.01)
      {
        if (v437 <= v377)
        {
          v224 = (v226 + 1.0) * v377 / v437 + -1.0;
        }

        else
        {
          v226 = (v224 + 1.0) * v437 / v377 + -1.0;
        }
      }
    }
  }

LABEL_228:
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setVisOverscan:v224, v226];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setSensorOverscan:v216, v218];
  *&v238 = a11;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setAdditionalVISOverscanWhenRecording:v238];
  if (v219)
  {
    v239 = v224 != v222;
    if (v226 != v221)
    {
      v239 = 1;
    }

    v240 = (v502 & HIDWORD(v495)) == 1 && v239;
    if (FigCaptureSourceGetBoolAttribute([v515 source], @"GeometricDistortionCorrectionExpandsImageDimensions", 0) && objc_msgSend(v518, "gdcInStillImageSinkPipelineSupported"))
    {
      v241 = [v518 postGDCCropDimensions];
      v243 = v241 > 0 && SHIDWORD(v241) > 0;
    }

    else
    {
      v243 = 0;
    }

    if (a64)
    {
      v244 = v216 != v222;
      if (v218 != v221)
      {
        v244 = 1;
      }

      v243 |= v244;
    }

    v245 = v240 | v243;
    if (a21)
    {
      v245 = 1;
    }

    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setIncludeOverscanOnStillImageOutput:v245 & 1];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setIncludeOverscanInStillImageFinalCropRect:a21];
    v220 = a3;
  }

  [v504 count];
  if (v503)
  {
    v246 = HIDWORD(v491);
    if (objc_msgSend_isEqualToString_(v505))
    {
      v247 = [v220 bravoTelephotoCaptureStream];
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v505))
      {
LABEL_263:
        v249 = a13;
        if (a49)
        {
          if (v216 <= v218)
          {
            v261 = v218;
          }

          else
          {
            v261 = v216;
          }

          v262 = v261;
          v248 = 1.2 / (v262 + 1.0) + -1.0;
          v250 = v248;
        }

        else if ([v220 parallaxMitigationBasedOnZoomFactorEnabled])
        {
          v250 = 0.15;
        }

        else
        {
          v250 = 0.1;
        }

        v251 = v499;
        goto LABEL_276;
      }

      v247 = [v220 captureStream];
    }

    [v247 baseZoomFactor];
    v258 = v257;
    v259 = [v220 parallaxMitigationBasedOnZoomFactorEnabled];
    LODWORD(v260) = *"fff?";
    if (v259)
    {
      *&v260 = 0.97;
    }

    *&v260 = v258 * *&v260;
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setBravoShiftMitigationMaxZoomFactor:v260];
    goto LABEL_263;
  }

  v246 = HIDWORD(v491);
  if ([+[FigVideoCaptureConnectionConfiguration videoStabilizationMethods:includeIris:](FigVideoCaptureConnectionConfiguration videoStabilizationMethods:v511 includeIris:{0), "containsObject:", &unk_1F22447B8}])
  {
    v249 = a13;
    v250 = 0.15;
    v251 = v499;
    if ((v494 - 1) > 1)
    {
      goto LABEL_276;
    }

    v252 = [v518 previewDimensions];
    v253 = HIDWORD(v252);
    v254 = v252;
    v255 = (v252 * 1.15) + 4;
    [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v517 "supportedFormats")];
    v256 = v255;
    v220 = a3;
    if ((*&v248 * v256) <= 640.0 && (*&v248 * ((v253 * 1.15) + 4)) <= ((v253 / v254) * 640.0))
    {
      goto LABEL_276;
    }
  }

  else
  {
    v251 = v499;
    v249 = a13;
    if ([v220 isBravoVariant])
    {
      goto LABEL_277;
    }

    v263 = csp_supportsNondisruptiveSwitchingZoomFactors(-[BWMultiStreamCameraSourceNodeConfiguration formatIndex](v519, "formatIndex"), -[BWMultiStreamCameraSourceNodeConfiguration activeStreamingNondisruptiveSwitchingFormatIndices](v519, "activeStreamingNondisruptiveSwitchingFormatIndices"), [v517 supportedFormats]);
    if ((v495 & 0xFFFFFFFB) == 0 || !v263)
    {
      goto LABEL_277;
    }
  }

  v250 = 0.1;
LABEL_276:
  *&v248 = v250;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setOverscanForShiftMitigation:v248];
LABEL_277:
  v264 = [v515 outputAspectRatio];
  if ([v220 smartFramingEnabled])
  {
    v265 = 0;
  }

  else
  {
    v265 = v264;
  }

  v266 = [v518 previewDimensionsForAspectRatio:v265];
  v267 = v266;
  v268 = HIDWORD(v266);
  v269 = FigCapturePlatformIdentifier();
  if ((a66 | a67) == 1 && v269 >= 7 && a32)
  {
    v270 = [objc_msgSend(v515 "depthDataFormat")];
    v271 = ((2 * v270) * 1.5);
    v272 = (((v270 >> 31) & 0xFFFFFFFE) * 1.5);
    if (v267 <= v271)
    {
      v267 = ((2 * v270) * 1.5);
    }

    if (v268 <= v272)
    {
      v268 = v272;
    }

    else
    {
      v268 = v268;
    }

    if (v489 <= v271)
    {
      v273 = ((2 * v270) * 1.5);
    }

    else
    {
      v273 = v489;
    }

    if (SHIDWORD(v489) <= v272)
    {
      LODWORD(v212) = (((v270 >> 31) & 0xFFFFFFFE) * 1.5);
    }
  }

  else
  {
    v273 = v489;
  }

  v274 = [v220 smartFramingEnabled];
  if (v273 <= v212)
  {
    v275 = v212;
  }

  else
  {
    v275 = v273;
  }

  if ((HIDWORD(v506) & v274) != 0)
  {
    v276 = v275;
  }

  else
  {
    v276 = v273;
  }

  if ((HIDWORD(v506) & v274) != 0)
  {
    v277 = v275;
  }

  else
  {
    v277 = v212;
  }

  if (objb)
  {
    v278 = [v518 postGDCCropDimensions];
    if (v278 < 1 || SHIDWORD(v278) < 1)
    {
      v279 = [v518 sensorDimensions];
    }

    else
    {
      v279 = [v518 postGDCCropDimensions];
    }

    v268 = HIDWORD(v279);
    v267 = v279;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPreferredPreviewDimensions:v267 | (v268 << 32)];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setVideoCaptureDimensions:v276 | (v277 << 32)];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setVideoCaptureDimensionsIncludeVISOverscan:v477];
  -[BWMultiStreamCameraSourceNodeConfiguration setBackgroundBlurEnabled:](v519, "setBackgroundBlurEnabled:", [v515 backgroundBlurEnabled]);
  -[BWMultiStreamCameraSourceNodeConfiguration setStudioLightingEnabled:](v519, "setStudioLightingEnabled:", [v515 studioLightingEnabled]);
  -[BWMultiStreamCameraSourceNodeConfiguration setReactionEffectsEnabled:](v519, "setReactionEffectsEnabled:", [v515 reactionEffectsEnabled]);
  -[BWMultiStreamCameraSourceNodeConfiguration setBackgroundReplacementEnabled:](v519, "setBackgroundReplacementEnabled:", [v515 backgroundReplacementEnabled]);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setCinematicFramingEnabled:HIDWORD(v470)];
  v493 = v276;
  if ([v515 deskCamEnabled])
  {
    isDeskCamEnabledInVideoDataConnectionConfiguration = 1;
  }

  else
  {
    isDeskCamEnabledInVideoDataConnectionConfiguration = csp_isDeskCamEnabledInVideoDataConnectionConfiguration(a6);
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setDeskCamEnabled:isDeskCamEnabledInVideoDataConnectionConfiguration];
  if ([v515 manualCinematicFramingEnabled])
  {
    isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration = 1;
  }

  else
  {
    isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration = csp_isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration(a6);
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setManualCinematicFramingEnabled:isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration];
  if ([v511 count])
  {
    v282 = HIDWORD(v506) ^ 1u;
  }

  else
  {
    v282 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPreviewOutputEnabled:v282];
  if ([v517 deviceType] == 5)
  {
    v283 = [v515 isCinematicVideoCaptureEnabled];
  }

  else
  {
    v283 = 0;
  }

  LODWORD(v503) = HIDWORD(v506) ^ 1;
  v490 = v277;
  v284 = [v517 deviceType] == 7 && objc_msgSend(v515, "isCinematicVideoCaptureEnabled") && objc_msgSend(v515, "sourcePosition") == 1;
  v285 = (v283 | v284) ^ 1;
  if (v508)
  {
    v286 = 0;
  }

  else
  {
    v286 = v246;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setStillImageOutputEnabled:(v508 != 0) & v285];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setForceFirmwareStillImageOutputEnabled:v286];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setRoundingOfStillImageDimensionsToMultipleOfFourEnabled:SHIDWORD(v503) < 3];
  if (a62)
  {
    if (v508)
    {
      v287 = HIDWORD(v502) ^ 1;
    }

    else
    {
      v287 = 0;
    }

    v288 = v287 | v509;
  }

  else
  {
    v288 = 0;
  }

  v289 = v508;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setSensorRawStillImageOutputEnabled:v288];
  if (-[BWMultiStreamCameraSourceNodeConfiguration sensorRawStillImageOutputEnabled](v519, "sensorRawStillImageOutputEnabled") && [v518 isHighResStillImageSupported] && objc_msgSend(v518, "isStillImageOutputDownscaledInHWISP"))
  {
    -[BWMultiStreamCameraSourceNodeConfiguration setStillImageOutputDimensionsOverride:](v519, "setStillImageOutputDimensionsOverride:", [v518 soleHighResStillImageDimensions]);
  }

  -[BWMultiStreamCameraSourceNodeConfiguration setSushiRawDimensions:](v519, "setSushiRawDimensions:", [v518 sushiRawDimensions]);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setConfigureForSoftISPSupport:v509];
  if ([a6 count])
  {
    v290 = 1;
  }

  else
  {
    v290 = HIDWORD(v506);
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setVideoCaptureOutputEnabled:v290];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setObjectDetectionStartupDeferred:a27];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setDetectedFacesOnVideoCaptureOutputEnabled:1];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setDetectedFacesOnPreviewOutputEnabled:1];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setDoingCMFaceTracking:a16];
  if ([objc_msgSend(v551 objectForKeyedSubscript:{0x1F219FFF0), "BOOLValue"}])
  {
    v291 = objc_alloc_init(BWSecureMetadataOutputConfiguration);
    -[BWSecureMetadataOutputConfiguration setObjectDetectionEnabled:](v291, "setObjectDetectionEnabled:", [a51 count] != 0);
    [(BWSecureMetadataOutputConfiguration *)v291 setEnabledDetectedObjectTypes:a51];
    [(BWSecureMetadataOutputConfiguration *)v291 setAttentionDetectionEnabled:a52];
    [(BWSecureMetadataOutputConfiguration *)v291 setEyeReliefStatusDetectionEnabled:a53];
    *&v292 = v483;
    [(BWSecureMetadataOutputConfiguration *)v291 setObjectDetectionTargetFrameRate:v292];
    [(BWSecureMetadataOutputConfiguration *)v291 setFaceTrackingEnabled:a54];
    [(BWSecureMetadataOutputConfiguration *)v291 setFaceTrackingMaxNumTrackedFaces:a47];
    *&v293 = v487;
    [(BWSecureMetadataOutputConfiguration *)v291 setFaceTrackingNetworkFailureThresholdMultiplier:v293];
    *&v294 = v251;
    [(BWSecureMetadataOutputConfiguration *)v291 setFaceTrackingFailureFieldOfViewModifier:v294];
    [(BWSecureMetadataOutputConfiguration *)v291 setFaceIDReadinessEnabled:a55];
    [(BWSecureMetadataOutputConfiguration *)v291 setFaceIDReadinessPeriocularEnabled:a56];
    [(BWSecureMetadataOutputConfiguration *)v291 setFaceIDReadinessAttentionRequired:a57];
    [(BWSecureMetadataOutputConfiguration *)v291 setFaceOcclusionDetectionEnabled:a58];
    [(BWSecureMetadataOutputConfiguration *)v291 setMotionToWakeEnabled:a59];
    *&v295 = v249;
    [(BWSecureMetadataOutputConfiguration *)v291 setMotionToWakeTargetFrameRate:v295];
    v296 = v291;
    v289 = v508;
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setSecureMetadataOutputConfiguration:v296];
  }

  else
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setEnabledDetectedObjectTypes:a51];
    if ([a51 count])
    {
      v297 = HIDWORD(v461);
    }

    else
    {
      v297 = 0;
    }

    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setDetectedObjectsOutputEnabled:v297];
  }

  v529 = 0u;
  v530 = 0u;
  v527 = 0u;
  v528 = 0u;
  v298 = [a6 countByEnumeratingWithState:&v527 objects:v526 count:16];
  if (v298)
  {
    v299 = v298;
    v300 = *v528;
    do
    {
      for (k = 0; k != v299; ++k)
      {
        if (*v528 != v300)
        {
          objc_enumerationMutation(a6);
        }

        v302 = [objc_msgSend(*(*(&v527 + 1) + 8 * k) "sinkConfiguration")];
        if (v302 <= 0xA && ((1 << v302) & 0x450) != 0)
        {
          v304 = 1;
          goto LABEL_361;
        }
      }

      v299 = [a6 countByEnumeratingWithState:&v527 objects:v526 count:16];
      v304 = 0;
    }

    while (v299);
  }

  else
  {
    v304 = 0;
  }

LABEL_361:
  v524 = 0u;
  v525 = 0u;
  v522 = 0u;
  v523 = 0u;
  v305 = [v511 countByEnumeratingWithState:&v522 objects:v521 count:16];
  if (v305)
  {
    v306 = *v523;
    do
    {
      for (m = 0; m != v305; ++m)
      {
        if (*v523 != v306)
        {
          objc_enumerationMutation(v511);
        }

        v308 = [objc_msgSend(*(*(&v522 + 1) + 8 * m) "sinkConfiguration")];
        if (v308 <= 0xA && ((1 << v308) & 0x450) != 0)
        {
          v304 = HIDWORD(v506) | v304;
          v305 = v503;
          goto LABEL_373;
        }
      }

      v305 = [v511 countByEnumeratingWithState:&v522 objects:v521 count:16];
    }

    while (v305);
LABEL_373:
    v210 = v515;
    v289 = v508;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setVideoEncoderMetadataOnVideoCaptureOutputEnabled:v304];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setVideoEncoderMetadataOnPreviewOutputEnabled:v305];
  if (a31 && ([a3 cinematicVideoEnabled] & 1) == 0)
  {
    v310 = a38 != 0;
    v311 = 1;
  }

  else
  {
    v310 = [a3 cinematicVideoEnabled];
    v311 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setFocusBlurMapEnabled:v310];
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)v519 focusBlurMapEnabled])
  {
    v312 = 1;
  }

  else
  {
    v312 = [objc_msgSend(v289 "irisSinkConfiguration")];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setFocusBlurMapEnabled:v312];
  if (a84 && ([(BWMultiStreamCameraSourceNodeConfiguration *)v519 backgroundBlurEnabled]|| [(BWMultiStreamCameraSourceNodeConfiguration *)v519 studioLightingEnabled]))
  {
    v311 = 1;
  }

  -[BWMultiStreamCameraSourceNodeConfiguration setDetectedFacesOutputConfiguration:](v519, "setDetectedFacesOutputConfiguration:", [v210 faceDetectionConfiguration]);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setEyeDetectionRequired:v311];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setMotionAttachmentsSource:a20];
  v313 = [v210 requiredFormat];
  if ([v210 lowLightVideoCaptureEnabled])
  {
    v314 = [v313 isLowLightVideoCaptureSupported];
  }

  else
  {
    v314 = 0;
  }

  v315 = csp_variableFrameRateVideoEnabled(v210);
  v488 = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
  v316 = [a3 teleAutoVideoFrameRateAllows24FPS];
  v317 = [v210 requiredMinFrameRate];
  v319 = v318;
  v320 = [v210 requiredMaxFrameRate];
  v485 = v315;
  if (v314)
  {
    v322 = objc_msgSend_isEqualToString_(v505);
    v323 = v519;
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setLowLightVideoEnabled:1];
    if (v316 & 1 | ((v322 & 1) == 0))
    {
      v324 = 24;
    }

    else
    {
      v324 = 30;
    }

    v317 = FigCaptureFrameRateFromInt(v324);
    v319 = v325;
    v326 = FigCaptureFrameRateFromInt(0x1Eu);
    v328 = v327;
  }

  else
  {
    if (v315)
    {
      if (v488)
      {
        if (v316 & 1 | ((objc_msgSend_isEqualToString_(v505) & 1) == 0))
        {
          v329 = 24;
        }

        else
        {
          v329 = 30;
        }

        v317 = FigCaptureFrameRateFromInt(v329);
        v319 = v330;
        v320 = FigCaptureFrameRateFromInt(0x3Cu);
      }

      else
      {
        FigCaptureFrameRateFromFloat();
        v317 = v331;
        v319 = v332;
        FigCaptureFrameRateFromFloat();
      }
    }

    v326 = v320;
    v328 = v321;
    v323 = v519;
  }

  v333 = v319;
  v334 = a73;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v323 setMinFrameRate:v317, v333];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v323 setMaxFrameRate:v326, v328];
  v335 = [v515 lockedFrameRate];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v323 setLockedFrameRate:v335, v336];
  v337 = [v515 externalSyncFrameRate];
  v339 = [(BWMultiStreamCameraSourceNodeConfiguration *)v323 setExternalSyncFrameRate:v337, v338];
  if (![&unk_1F2248AC0 containsObject:{FigCaptureGetModelSpecificName(v339, v340)}] || (objc_msgSend(a3, "cinematicVideoEnabled") & 1) == 0)
  {
    -[BWMultiStreamCameraSourceNodeConfiguration setContentAwareEnhancementEnabled:](v519, "setContentAwareEnhancementEnabled:", [v518 isContentAwareEnhancementSupported]);
    -[BWMultiStreamCameraSourceNodeConfiguration setContentAwareAWBEnabled:](v519, "setContentAwareAWBEnabled:", [v518 isContentAwareAWBSupported]);
  }

  v341 = FigCapturePlatformIdentifier();
  v342 = HIDWORD(v477);
  if (v341 >= 11)
  {
    v344 = v515;
    v343 = v341 == 11 && ![v518 isPhotoFormat] || objc_msgSend(v515, "sourcePosition") == 2;
  }

  else
  {
    v343 = 1;
    v344 = v515;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setColorPostProcessingSkyEnhancementEnabled:v343];
  -[BWMultiStreamCameraSourceNodeConfiguration setMultiIlluminantWhiteBalanceEnabled:](v519, "setMultiIlluminantWhiteBalanceEnabled:", [v518 isMultiIlluminantWhiteBalanceSupported]);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setDepthType:v494];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setStrictDepthModePreferred:a74];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setRGBIRStereoFusionMinDepthThresholdMM:a75];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setRGBIRStereoFusionMaxDepthThresholdMM:a76];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setRGBIRStereoFusionFixedDepthThresholdMM:a77];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setRGBIRStereoFusionFixedDepthValueMM:a78];
  if (a73 < 1 || SHIDWORD(a73) <= 0)
  {
    v334 = [objc_msgSend(v344 "depthDataFormat")];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setDepthDimensions:v334];
  if ((v494 - 1) < 2)
  {
    v345 = a81;
  }

  else
  {
    v345 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setDepthOutputEnabled:v345];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setHardwareDepthFilteringPreferred:0];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPointCloudOutputEnabled:HIDWORD(v497)];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPointCloudOutputIsSupplementalPointCloudData:v498];
  if (([a3 cinematicVideoEnabled] & 1) == 0 && (v467 & 0x100000000) == 0)
  {
    LODWORD(v461) = HIDWORD(v502) ^ 1;
    csp_shouldEnableLightSourceMask(v518, a6, v346, v347, v348, v349, v350, v351, v442, v445, v447, v449, v451, v453, v455, v457, v459, v461, v463, v465, v467, v470, v473, v475, v477, v479);
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setLightSourceMaskOutputEnabled:v424];
    csp_shouldEnableKeypointDescriptorData(v518, a6, v425, v426, v427, v428, v429, v430, v443, v446, v448, v450, v452, v454, v456, v458, v460, v462, v464, v466, v468, v471, v474, v476, v478, v480, v481);
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setKeypointDescriptorDataOutputEnabled:v431];
  }

  v352 = *off_1E798AFD8;
  v520[0] = *off_1E798AFC8;
  v520[1] = v352;
  v353 = *off_1E798B038;
  v520[2] = *off_1E798AFD0;
  v520[3] = v353;
  v354 = [MEMORY[0x1E695DEC8] arrayWithObjects:v520 count:4];
  -[BWMultiStreamCameraSourceNodeConfiguration setEnabledSemanticMaskTypes:](v519, "setEnabledSemanticMaskTypes:", [MEMORY[0x1E695DFD8] setWithArray:v354]);
  if (v473)
  {
    v355 = [(NSSet *)[(BWMultiStreamCameraSourceNodeConfiguration *)v519 enabledSemanticMaskTypes] count]!= 0;
  }

  else
  {
    v355 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setSemanticMasksOutputEnabled:v355];
  if (v342)
  {
    v356 = FigCapturePlatformIdentifier() < 12;
    v357 = FigCapturePlatformIdentifier() > 11;
  }

  else
  {
    v356 = 0;
    v357 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPreLTMThumbnailOnPreviewOutputEnabled:[(BWMultiStreamCameraSourceNodeConfiguration *)v519 previewOutputEnabled]& v356];
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)v519 previewOutputEnabled])
  {
    v358 = 0;
  }

  else
  {
    v358 = [(BWMultiStreamCameraSourceNodeConfiguration *)v519 videoCaptureOutputEnabled]& v356;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPreLTMThumbnailOnVideoCaptureOutputEnabled:v358];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setLtmThumbnailOnPreviewOutputEnabled:[(BWMultiStreamCameraSourceNodeConfiguration *)v519 previewOutputEnabled]& v357];
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)v519 previewOutputEnabled])
  {
    v359 = 0;
  }

  else
  {
    v359 = [(BWMultiStreamCameraSourceNodeConfiguration *)v519 videoCaptureOutputEnabled]& v357;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setLtmThumbnailOnVideoCaptureOutputEnabled:v359];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPreLTMThumbnailEnabled:v342];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPostLTMThumbnailEnabled:v479];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setLtmThumbnailOutputDimensions:a93];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setWeightSegmentMapOnPreviewOutputEnabled:HIDWORD(v479) & [(BWMultiStreamCameraSourceNodeConfiguration *)v519 previewOutputEnabled]];
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)v519 previewOutputEnabled])
  {
    v360 = 0;
  }

  else
  {
    v360 = HIDWORD(v479) & [(BWMultiStreamCameraSourceNodeConfiguration *)v519 videoCaptureOutputEnabled];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setWeightSegmentMapOnVideoCaptureOutputEnabled:v360];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setWeightSegmentMapNumberOfSegments:a96];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setWeightSegmentMapSmoothingSigma:a97];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setWeightSegmentMapOutputDimensions:a98];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPostColorProcessingThumbnailOnPreviewOutputEnabled:v481 & [(BWMultiStreamCameraSourceNodeConfiguration *)v519 previewOutputEnabled]];
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)v519 previewOutputEnabled])
  {
    v361 = 0;
  }

  else
  {
    v361 = v481 & [(BWMultiStreamCameraSourceNodeConfiguration *)v519 videoCaptureOutputEnabled];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPostColorProcessingThumbnailOnVideoCaptureOutputEnabled:v361];
  -[BWMultiStreamCameraSourceNodeConfiguration setDiscardsDepthDataForStillImages:](v519, "setDiscardsDepthDataForStillImages:", [a3 isBravoVariant]);
  if (a34)
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setOriginalCameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled:[(BWMultiStreamCameraSourceNodeConfiguration *)v519 previewOutputEnabled]];
    v362 = [(BWMultiStreamCameraSourceNodeConfiguration *)v519 videoCaptureOutputEnabled];
  }

  else
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setOriginalCameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled:0];
    v362 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setOriginalCameraIntrinsicMatrixDeliveryOnVideoCaptureOutputEnabled:v362];
  if (a35)
  {
    v363 = [(BWMultiStreamCameraSourceNodeConfiguration *)v519 stillImageOutputEnabled];
  }

  else
  {
    v363 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setOriginalCameraIntrinsicMatrixDeliveryOnStillImageOutputEnabled:v363];
  v113 = v518;
  if (a34)
  {
    v364 = v502;
    if ([(BWMultiStreamCameraSourceNodeConfiguration *)v519 depthOutputEnabled])
    {
      v365 = [a3 cinematicVideoEnabled] ^ 1;
    }

    else
    {
      v365 = 0;
    }
  }

  else
  {
    v365 = 0;
    v364 = v502;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setOriginalCameraIntrinsicMatrixDeliveryOnDepthOutputEnabled:v365];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setStillImageOutputSensorInterfaceRawAttachmentOptionRetainedBufferCount:a40];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setStillImageOutputSashimiRawAttachmentOptionRetainedBufferCount:a39];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setStillImageOutputFocusPixelDataAttachmentOptionRetainedBufferCount:a38];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setFirmwareStillImageOutputRetainedBufferCountOverride:a41];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setStillImageOutputSushiRawAttachmentOptionSupportEnabled:a42];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setStillImageOutputSushiRawAttachmentOptionEnabled:a43];
  if ([v517 hasSphere])
  {
    [v517 setEnablesSphereWhenAvailable:1];
    v366 = v508 ? [objc_msgSend(v515 "requiredFormat")] | a22 : 0;
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setDiscardsUnstableSphereVideoFrames:v366 & (v364 ^ 1)];
    [v517 setAvoidsSphereRecentering:v366 & v364];
    [v517 setDepthDataDeliveryEnabled:a32];
    v367 = [a3 applicationID];
    [v517 setVisualIntelligenceCameraEnabled:{FigCaptureClientApplicationIDIsVisualIntelligenceCamera(v367, v368)}];
    if ([v517 sphereVideoSupported])
    {
      if ([objc_msgSend(v508 "irisSinkConfiguration")] == 3)
      {
        v369 = [v518 isHighPhotoQualitySupported];
      }

      else
      {
        v369 = 0;
      }

      [objc_msgSend(v551 objectForKeyedSubscript:{@"SphereVideoMaxFrameRate", "floatValue"}];
      if (v370 == 0.0)
      {
        v371 = 60.0;
      }

      else
      {
        v371 = v370;
      }

      if (([v504 count] || (v369 & 1) != 0 || objc_msgSend(v518, "isSphereAssistedAutoFocusEnabled")) && (objc_msgSend(v518, "maxSupportedFrameRate"), v372 <= v371))
      {
        v373 = HIDWORD(v495) ^ 1u;
      }

      else
      {
        v373 = 0;
      }

      [v517 setSphereVideoEnabled:v373];
    }
  }

  [v517 setPanoModeEnabled:{objc_msgSend(v515, "imageControlMode") == 4}];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setReflectsStillsOnStreamingOutputs:v364];
  -[BWMultiStreamCameraSourceNodeConfiguration setLivePhotoCaptureEnabled:](v519, "setLivePhotoCaptureEnabled:", [objc_msgSend(v508 "irisSinkConfiguration")]);
  -[BWMultiStreamCameraSourceNodeConfiguration setApplyPreviewShiftToStillImage:](v519, "setApplyPreviewShiftToStillImage:", [objc_msgSend(v508 "irisSinkConfiguration")]);
  if ((a23 & 1) == 0)
  {
    v378 = [v518 ispChromaNoiseReductionEnabled];
    if ((HIDWORD(v502) & [objc_msgSend(v551 objectForKeyedSubscript:{0x1F217F330), "BOOLValue"}]) == 1)
    {
      v379 = [v518 ispChromaNoiseReductionEnabled];
      if (v379 != [v518 isStillImageISPChromaNoiseReductionEnabled])
      {
        v378 = [v518 isStillImageISPChromaNoiseReductionEnabled];
        [v518 isStillImageISPChromaNoiseReductionEnabled];
      }
    }

    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setChromaNoiseReductionEnabled:v378];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setKeypointDetectionEnabled:0];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setStillImageKeypointDetectionEnabled:0];
  if ([objc_msgSend(objc_msgSend(v517 "stream")])
  {
    if ([objc_msgSend(v551 objectForKeyedSubscript:{@"IspMBNRSupported", "BOOLValue"}])
    {
      v380 = 2;
    }

    else if ([objc_msgSend(v551 objectForKeyedSubscript:{@"MultiPassIspMBNRSupported", "BOOLValue"}] && objc_msgSend(v518, "isISPMultiBandNoiseReductionSupported") && -[BWMultiStreamCameraSourceNodeConfiguration videoCaptureOutputEnabled](v519, "videoCaptureOutputEnabled"))
    {
      RectWithAspectRatioInsideDimensions = FigCaptureMakeRectWithAspectRatioInsideDimensions([v518 sensorDimensions], 1, -[BWMultiStreamCameraSourceNodeConfiguration videoCaptureDimensions](v519, "videoCaptureDimensions") / (-[BWMultiStreamCameraSourceNodeConfiguration videoCaptureDimensions](v519, "videoCaptureDimensions") >> 32));
      v383 = v382;
      v380 = (v383 / [(BWMultiStreamCameraSourceNodeConfiguration *)v519 videoCaptureDimensions]) <= 1.2;
    }

    else
    {
      v380 = 0;
    }

    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setIspMultiBandNoiseReductionMode:v380];
  }

  if (HIDWORD(v481))
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setVideoCaptureOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPreviewOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setDetectedObjectsOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setSemanticMasksOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPreLTMThumbnailOnPreviewOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPreLTMThumbnailOnVideoCaptureOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setLtmThumbnailOnPreviewOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setLtmThumbnailOnVideoCaptureOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setWeightSegmentMapOnPreviewOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setWeightSegmentMapOnVideoCaptureOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPostColorProcessingThumbnailOnPreviewOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setPostColorProcessingThumbnailOnVideoCaptureOutputEnabled:0];
  }

  v384 = [a3 depthType];
  v385 = 0;
  if (!v494 && v384 == 3)
  {
    v385 = v493 == 3840 && v490 == 2160 || v493 == 2160 && v490 == 3840;
  }

  if (([a3 cinematicVideoEnabled] & (HIDWORD(v481) ^ 1) & 1) != 0 || v385 || csp_trueVideoCaptureEnabled(a6) && objc_msgSend(a3, "position") == 2)
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setIncludeOverscanOnPreviewOutput:1];
  }

  [v518 lowLightVideoAEMaxGain];
  v388 = v387;
  [v518 variableFrameRateVideoCaptureFromFWAEMaxGain];
  v390 = v389;
  [v515 maxGainClientOverride];
  v392 = v391;
  [v518 aeMaxGain];
  v394 = *&v393;
  v395 = (v392 >= 1.0) | v314;
  if (v392 < 1.0)
  {
    v392 = v388;
  }

  if ((v395 & 1) == 0)
  {
    v392 = v388;
    if (([a3 cinematicVideoEnabled] & 1) == 0)
    {
      if ([a3 stereoVideoCaptureEnabled])
      {
        if (![v518 stereoVideoCompanionFormat] || (objc_msgSend(objc_msgSend(v518, "stereoVideoCompanionFormat"), "stereoVideoAEMaxGain"), v396 == 0.0))
        {
          [v518 stereoVideoAEMaxGain];
          if (*&v393 == 0.0)
          {
            v392 = v394;
            goto LABEL_520;
          }

          v397 = v518;
        }

        else
        {
          v397 = [v518 stereoVideoCompanionFormat];
        }

        [v397 stereoVideoAEMaxGain];
        goto LABEL_519;
      }

      if (v485)
      {
        v392 = v390;
      }

      else
      {
        v392 = v394;
      }

      if (!(v488 & 1 | ((v485 & 1) == 0)))
      {
        csp_variableFrameRateVideoGain(v517);
LABEL_519:
        v392 = *&v393;
      }
    }
  }

LABEL_520:
  if ((*(a29 + 12) & 1) == 0 && [v515 applyMaxExposureDurationFrameworkOverrideWhenAvailable] && objc_msgSend(v518, "maxIntegrationTimeOverride"))
  {
    CMTimeMake(&v553, 1, (1000.0 / [v518 maxIntegrationTimeOverride]));
    DWORD1(v393) = HIDWORD(v553.value);
    *a29 = v553;
  }

  v398 = a19;
  if (a32 && [a3 isBravoVariant] && (v470 & 1) == 0)
  {
    [objc_msgSend(v515 "requiredFormat")];
    if (v399 != 0.0)
    {
      [objc_msgSend(v515 "requiredFormat")];
      v392 = v400;
    }

    [objc_msgSend(v515 "requiredFormat")];
    if (*&v393 != 0.0)
    {
      [objc_msgSend(v515 "requiredFormat")];
      CMTimeMake(&v553, 1, (1000.0 / v401));
      DWORD1(v393) = HIDWORD(v553.value);
      *a29 = v553;
    }
  }

  if (a19 > 2 || v486)
  {
    if (v486)
    {
      v398 = [v515 videoStabilizationStrength];
    }

    CMTimeMake(&v553, 1, 600);
    *a29 = v553;
    if (v398 == 4)
    {
      v404 = *(a29 + 8);
    }

    else
    {
      if (v398 != 3)
      {
LABEL_543:
        [v518 actionCameraAEMaxGainScaleFactor];
        v406 = v405;
        v403 = v515;
        [v515 sourcePosition];
        v392 = v392 * v406;
        goto LABEL_544;
      }

      v404 = 250;
    }

    CMTimeMake(&v553, 1, v404);
    *a29 = v553;
    goto LABEL_543;
  }

  if (v314)
  {
    v402 = MEMORY[0x1E6960C70];
    v393 = *MEMORY[0x1E6960C70];
    *a29 = *MEMORY[0x1E6960C70];
    *(a29 + 16) = *(v402 + 16);
  }

  v403 = v515;
LABEL_544:
  *&v393 = v392;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setAeMaxGain:*&v393];
  *&v407 = v388;
  [v517 setMomentCaptureVideoRecordingAEMaxGain:v407];
  *&v553.value = *a29;
  v553.epoch = *(a29 + 16);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setMaxExposureDurationFrameworkOverride:&v553];
  [a3 setGlobalToneMappingEnabledOverride:0];
  *&v553.value = *a28;
  v553.epoch = *(a28 + 16);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setMaxExposureDurationClientOverride:&v553];
  -[BWMultiStreamCameraSourceNodeConfiguration setColorSpace:](v519, "setColorSpace:", [v403 colorSpace]);
  v408 = [FigVideoCaptureConnectionConfiguration cameraIntrinsicMatrixDeliveryEnabled:a6 doingFaceTracking:a16];
  v409 = [FigVideoCaptureConnectionConfiguration cameraIntrinsicMatrixDeliveryEnabled:v511 doingFaceTracking:a16];
  v410 = objb | a87 | v408;
  v411 = objb | a87 | v409;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setCameraIntrinsicMatrixDeliveryOnVideoCaptureOutputEnabled:(v410 | (BYTE4(v506) & v411)) & 1];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setCameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled:v503 & v411];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setCameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled:[(BWMultiStreamCameraSourceNodeConfiguration *)v519 cameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled]| a16];
  v413 = SHIDWORD(v503) > 3 || (HIDWORD(v503) & 0xFFFFFFFE) == 2;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setLtmLookUpTableMetadataEnabledForStills:v413];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setLumaHistogramMetadataEnabled:a82];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setStillImageLocalHistogramClippingDataMetadataEnabled:a69];
  if (((a36 & 1) != 0 || HIDWORD(v491)) && ![(BWMultiStreamCameraSourceNodeConfiguration *)v519 usesFirmwareStillImageOutput])
  {
    csp_configureMultiStreamCameraNode_cold_6(&v552);
LABEL_33:
    v129 = v507;
    if (!v507)
    {
      goto LABEL_572;
    }

    goto LABEL_571;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setUsesFIFOFirmwareTimeMachine:a36];
  if (HIDWORD(v491))
  {
    v414 = 4;
  }

  else
  {
    v414 = 1;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setFirmwareTimeMachineBufferCapacity:v414];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setFirmwareTimeMachineSIFREnabled:HIDWORD(v491) & v497];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setMaximumNumberOfBracketedSIFRFrames:v497];
  if ([objc_msgSend(v551 objectForKeyedSubscript:{@"ISPAPSData", "BOOLValue"}])
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setIspAPSDataEnabled:0];
  }

  if (a44)
  {
    v415 = [a44 sinkConfiguration];
    v416 = [v415 embeddedCaptureDeviceConfiguration];
    if ([a44 retainedBufferCount] >= 1)
    {
      v416 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v416];
      [v416 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(a44, "retainedBufferCount")), *off_1E798CBD8}];
    }

    v417 = [objc_msgSend(v517 "stream")];
    v418 = *off_1E798CA40;
    if ([v417 objectForKeyedSubscript:*off_1E798CA40])
    {
      v419 = [objc_msgSend(v517 "stream")];
      if (v552)
      {
        goto LABEL_570;
      }

      v416 = [v416 dictionaryWithValuesForKeys:v419];
    }

    [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setVisionDataConfiguration:v416];
    [a3 visionDataMaxFrameRate];
    v421 = v420;
    [v415 maxFrameRate];
    if (v421 <= v422)
    {
      [v415 maxFrameRate];
    }

    else
    {
      [a3 visionDataMaxFrameRate];
    }

    [a3 setVisionDataMaxFrameRate:?];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setStreamingForegroundSegmentationEnabled:a45];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setFaceTrackingEnabled:a46];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setRGBIRStereoFusionEnabled:a48];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setStillImageMaxLossyCompressionLevel:a80];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setGraphContainsMultipleVideoSources:a85];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v519 setIsAutoFocusAssistSourceNode:a88];
  v552 = [v496 configure:v519];
  if (v552)
  {
    csp_configureMultiStreamCameraNode_cold_7();
  }

LABEL_570:
  v129 = v507;
  if (v507)
  {
LABEL_571:
    CFRelease(v129);
  }

LABEL_572:

  return v552;
}

void csp_activeStreamingNondisruptiveSwitchingFormatIndices()
{
  OUTLINED_FUNCTION_84();
  HIDWORD(v63) = v2;
  HIDWORD(v51) = v3;
  if (v1)
  {
    v4 = v1;
    v62 = v0;
    v5 = [objc_msgSend(v1 "objectAtIndexedSubscript:{"objectForKeyedSubscript:", *off_1E798C998}")];
    if ([v5 count])
    {
      v47 = [MEMORY[0x1E695DF70] array];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v64 = OUTLINED_FUNCTION_37(v47, v6, &v92, &v76);
      if (v64)
      {
        obj = v5;
        v60 = *v93;
        v59 = *off_1E798C9A0;
        v67 = *off_1E798CA98;
        v66 = *off_1E798CAB0;
        v58 = *off_1E798CA80;
        v57 = *off_1E798CAB8;
        v56 = *off_1E798CAC0;
        v53 = *off_1E798C988;
        v52 = *off_1E798C980;
        v7 = *off_1E798CB18;
        v8 = *off_1E798CB08;
        v55 = *off_1E798C960;
        v50 = *off_1E798C958;
        v49 = *off_1E798D3F8;
        v61 = v4;
        do
        {
          v9 = 0;
          do
          {
            if (*v93 != v60)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v92 + 1) + 8 * v9);
            v11 = [v10 intValue];
            v12 = [v4 objectAtIndexedSubscript:v62];
            v74 = [v12 objectForKeyedSubscript:v59];
            v13 = [v4 objectAtIndexedSubscript:v11];
            v14 = [v13 objectForKeyedSubscript:v59];
            v101[0] = v67;
            v101[1] = v66;
            v101[2] = v58;
            v101[3] = v57;
            v101[4] = v56;
            v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:5];
            v72 = v15;
            if (HIDWORD(v63) && (v15 = FigCaptureSourceSensorRawHighResolutionFlavorFromDimensions([objc_msgSend(v13 objectForKeyedSubscript:{v53), "intValue"}] | (objc_msgSend(objc_msgSend(v13, "objectForKeyedSubscript:", v52), "intValue") << 32)), v15 == 2))
            {
              v100[0] = v67;
              v100[1] = v66;
              v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
              v72 = v15;
              HIDWORD(v68) = 1;
            }

            else
            {
              HIDWORD(v68) = 0;
            }

            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v23 = OUTLINED_FUNCTION_140(v15, v16, v17, v18, v19, v20, v21, v22, v48, v49, v50, v51, v52, v53, obj, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v10, v66, v67, v68, v12, v13, v9, v72, v74, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1), v95, *(&v95 + 1));
            if (v23)
            {
              v24 = v23;
              v25 = *v97;
LABEL_14:
              v26 = 0;
              while (1)
              {
                if (*v97 != v25)
                {
                  objc_enumerationMutation(v73);
                }

                v27 = *(*(&v96 + 1) + 8 * v26);
                v28 = [v75 objectForKeyedSubscript:v27];
                v29 = [objc_msgSend(v28 objectForKeyedSubscript:{v7), "intValue"}];
                v30 = [objc_msgSend(v28 objectForKeyedSubscript:{v8), "intValue"}];
                v31 = [v14 objectForKeyedSubscript:v27];
                v32 = [objc_msgSend(v31 objectForKeyedSubscript:{v7), "intValue"}];
                v33 = [objc_msgSend(v31 objectForKeyedSubscript:{v8), "intValue"}];
                if (v29 != v32 || v30 != v33)
                {
                  break;
                }

                if (v24 == ++v26)
                {
                  v24 = OUTLINED_FUNCTION_140(v33, v34, v35, v36, v37, v38, v39, v40, v47, v49, v50, v51, v52, v53, obj, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v73, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1), v95, *(&v95 + 1));
                  if (v24)
                  {
                    goto LABEL_14;
                  }

                  goto LABEL_24;
                }
              }
            }

            else
            {
LABEL_24:
              if ([objc_msgSend(v69 objectForKeyedSubscript:{v55), "BOOLValue"}])
              {
                v42 = [objc_msgSend(v69 objectForKeyedSubscript:{v50), "intValue"}];
              }

              else
              {
                v42 = 0;
              }

              v33 = [objc_msgSend(v70 objectForKeyedSubscript:{v55), "BOOLValue"}];
              if (v33)
              {
                v33 = [objc_msgSend(v70 objectForKeyedSubscript:{v50), "intValue"}];
              }

              if (HIDWORD(v68))
              {
                v43 = 4;
              }

              else
              {
                v43 = v42;
              }

              if (HIDWORD(v51))
              {
                v44 = 2;
              }

              else
              {
                v44 = v43;
              }

              if (v33 == v43 || v33 == v44)
              {
                v46 = [objc_msgSend(v69 objectForKeyedSubscript:{v49), "intValue"}];
                v33 = [objc_msgSend(v70 objectForKeyedSubscript:{v49), "intValue"}];
                if (v46 == v33)
                {
                  v33 = [v47 addObject:v65];
                }
              }
            }

            v9 = v71 + 1;
            v4 = v61;
          }

          while (v71 + 1 != v64);
          v64 = OUTLINED_FUNCTION_147(v33, v34, &v92, &v76, v37, v38, v39, v40, v47, v49, v50, v51, v52, v53, obj);
        }

        while (v64);
      }
    }
  }

  OUTLINED_FUNCTION_81();
}