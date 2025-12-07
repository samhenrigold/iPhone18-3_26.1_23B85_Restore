uint64_t ARDeviceSupported()
{
  if (ARDeviceSupported_onceToken[0] != -1)
  {
    ARDeviceSupported_cold_1();
  }

  return ARDeviceSupported_supported;
}

void __ARDeviceSupported_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = [v0 BOOLValue];
  ARDeviceSupported_supported = v1;
  if ((v1 & 1) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_57 != -1)
    {
      ARVersionStringForIdentifier_cold_2();
    }

    v2 = ARShouldUseLogTypeError_internalOSVersion_57;
    v3 = _ARLogGeneral_52(v1);
    v4 = v3;
    if (v2 == 1)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v10 = 0;
        v5 = "ARKit is not supported on this device (via MobileGestalt).";
        v6 = &v10;
        v7 = v4;
        v8 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v7, v8, v5, v6, 2u);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v9 = 0;
      v5 = "Error: ARKit is not supported on this device (via MobileGestalt).";
      v6 = &v9;
      v7 = v4;
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }
}

uint64_t ARDeviceHasGPSCapability(uint64_t a1, uint64_t a2)
{
  if (ARDeviceHasGPSCapability_onceToken != -1)
  {
    ARDeviceHasGPSCapability_cold_1();
  }

  return s_deviceHasGPSCapability;
}

void __ARDeviceHasGPSCapability_block_invoke()
{
  v0 = MGCopyAnswer();
  s_deviceHasGPSCapability = [v0 BOOLValue];
}

uint64_t __ARAppleNeuralEngine_block_invoke()
{
  result = MGGetBoolAnswer();
  s_deviceSupportsANE = result;
  return result;
}

uint64_t ARAppleNeuralEngine()
{
  if (ARAppleNeuralEngine_onceToken != -1)
  {
    ARAppleNeuralEngine_cold_1();
  }

  return s_deviceSupportsANE;
}

id _ARLogGeneral(uint64_t a1)
{
  if (_ARLogGeneral_onceToken != -1)
  {
    _ARLogGeneral_cold_1();
  }

  v2 = _ARLogGeneral_logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

{
  if (_ARLogGeneral(void)::onceToken != -1)
  {
    _ARLogGeneral();
  }

  v2 = _ARLogGeneral(void)::logObj;

  return v2;
}

id _ARLogSensor(uint64_t a1)
{
  if (_ARLogSensor_onceToken != -1)
  {
    _ARLogSensor_cold_1();
  }

  v2 = _ARLogSensor_logObj;

  return v2;
}

{
  if (_ARLogSensor(void)::onceToken != -1)
  {
    _ARLogSensor();
  }

  v2 = _ARLogSensor(void)::logObj;

  return v2;
}

void sub_1C24208A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, __int16 a11, __int16 a12, uint64_t a13, __int16 a14, __int128 a15)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(exception_object);
    v18 = v17;
    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARDepthSensorSettings initWithVideoFormat:];
    }

    v19 = ARShouldUseLogTypeError_internalOSVersion;
    v20 = _ARLogSensor(v17);
    v21 = v20;
    if (v19 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = [v16 logPrefix];
        v25 = [v15 timeOfFlightProjectorMode];
        v26 = [v18 reason];
        LODWORD(a9) = 138544642;
        *(&a9 + 4) = v23;
        WORD6(a9) = 2048;
        *(&a9 + 14) = v16;
        a12 = 2112;
        a13 = v24;
        a14 = 2112;
        WORD1(a15) = 2048;
        *(&a15 + 4) = v25;
        WORD6(a15) = 2112;
        *(&a15 + 14) = v26;
        _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Unable to set projector mode to %@. Current projector mode of the device: %ld. Exception: %@", &a9, 0x3Eu);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = [v16 logPrefix];
      v30 = [v15 timeOfFlightProjectorMode];
      v31 = [v18 reason];
      LODWORD(a9) = 138544642;
      *(&a9 + 4) = v28;
      WORD6(a9) = 2048;
      *(&a9 + 14) = v16;
      a12 = 2112;
      a13 = v29;
      a14 = 2112;
      WORD1(a15) = 2048;
      *(&a15 + 4) = v30;
      WORD6(a15) = 2112;
      *(&a15 + 14) = v31;
      _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Unable to set projector mode to %@. Current projector mode of the device: %ld. Exception: %@", &a9, 0x3Eu);
    }

    objc_end_catch();
    JUMPOUT(0x1C2420864);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ARAVTimeOfFlightProjectorModeFromARTimeOfFlightProjectMode(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"ARTimeOfFlightProjectorModeNormal"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"ARTimeOfFlightProjectorModeShortRange"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"ARTimeOfFlightProjectorModeNormalShortHybrid"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"ARTimeOfFlightProjectorModeHighQualityMacro"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion = result;
  return result;
}

__CFString *NSStringFromMagneticFieldCalibrationAccuracy(int a1)
{
  if ((a1 + 1) > 3)
  {
    return &stru_1F4208A80;
  }

  else
  {
    return off_1E817BC98[a1 + 1];
  }
}

id NSStringFromAttitudeReferenceFrame(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"XArbitraryZVertical"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"XArbitraryCorrectedZVertical"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v3 addObject:@"XMagneticNorthZVertical"];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"XTrueNorthZVertical"];
  }

LABEL_6:
  v4 = [v3 componentsJoinedByString:@" | "];

  return v4;
}

id _ARLogSensor_0(uint64_t a1)
{
  if (_ARLogSensor_onceToken_0 != -1)
  {
    _ARLogSensor_cold_1_0();
  }

  v2 = _ARLogSensor_logObj_0;

  return v2;
}

void sub_1C2421EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C2422050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __ARShouldUseLogTypeError_block_invoke_0()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_0 = result;
  return result;
}

void sub_1C2422B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = ARFaceTrackingImageSensor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void ___ZL12_ARLogSensorv_block_invoke()
{
  v0 = os_log_create("com.apple.ARKit", "Sensor");
  v1 = _ARLogSensor(void)::logObj;
  _ARLogSensor(void)::logObj = v0;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

id _ARLogSensor_1(uint64_t a1)
{
  if (_ARLogSensor_onceToken_1 != -1)
  {
    _ARLogSensor_cold_1_1();
  }

  v2 = _ARLogSensor_logObj_1;

  return v2;
}

id _ARLogSession(uint64_t a1)
{
  if (_ARLogSession_onceToken != -1)
  {
    _ARLogSession_cold_1();
  }

  v2 = _ARLogSession_logObj;

  return v2;
}

{
  if (_ARLogSession(void)::onceToken != -1)
  {
    _ARLogSession();
  }

  v2 = _ARLogSession(void)::logObj;

  return v2;
}

void sub_1C242BB00(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf, int a14, __int16 a15, __int16 a16, id a17, __int128 a18)
{
  if (a2 == 1)
  {
    v20 = objc_begin_catch(a1);
    v21 = v20;
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v22 = _MergedGlobals;
    v23 = _ARLogSensor_1(v20);
    v24 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v22 = NSStringFromClass(v25);
        v26 = [v18 logPrefix];
        v27 = [v21 reason];
        LODWORD(buf) = 138544130;
        *(&buf + 4) = v22;
        WORD6(buf) = 2048;
        *(&buf + 14) = v18;
        a16 = 2112;
        a17 = v26;
        LOWORD(a18) = 2112;
        *(&a18 + 2) = v27;
        _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Unable to set capture device active format: %@", &buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v22 = NSStringFromClass(v28);
      v29 = [v18 logPrefix];
      v30 = [v21 reason];
      LODWORD(buf) = 138544130;
      *(&buf + 4) = v22;
      WORD6(buf) = 2048;
      *(&buf + 14) = v18;
      a16 = 2112;
      a17 = v29;
      LOWORD(a18) = 2112;
      *(&a18 + 2) = v30;
      _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Unable to set capture device active format: %@", &buf, 0x2Au);
    }

    v31 = [v21 reason];
    if (v31)
    {
      a11 = *MEMORY[0x1E696A588];
      v22 = [v21 reason];
      a12 = v22;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a12 forKeys:&a11 count:1];
    }

    else
    {
      v32 = MEMORY[0x1E695E0F8];
    }

    ARErrorWithCodeAndUserInfo(102, v32);
    objc_claimAutoreleasedReturnValue();

    if (v31)
    {
    }

    objc_end_catch();
    JUMPOUT(0x1C242BA9CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1C242C0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 buf, int a26, __int16 a27, __int16 a28, uint64_t a29, __int128 a30)
{
  if (a2 == 1)
  {
    v32 = objc_begin_catch(exception_object);
    v33 = v32;
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v34 = _MergedGlobals;
    v35 = _ARLogSensor_1(v32);
    v36 = v35;
    if (v34 == 1)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = [v30 logPrefix];
        v40 = [v33 reason];
        LODWORD(buf) = 138544386;
        *(&buf + 4) = v38;
        WORD6(buf) = 2048;
        *(&buf + 14) = v30;
        a28 = 2112;
        a29 = v39;
        LOWORD(a30) = 2048;
        *(&a30 + 2) = v31;
        WORD5(a30) = 2112;
        *(&a30 + 12) = v40;
        _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Unable to set image sensor depth rate to %f: %@", &buf, 0x34u);
      }
    }

    else if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = [v30 logPrefix];
      v44 = [v33 reason];
      LODWORD(buf) = 138544386;
      *(&buf + 4) = v42;
      WORD6(buf) = 2048;
      *(&buf + 14) = v30;
      a28 = 2112;
      a29 = v43;
      LOWORD(a30) = 2048;
      *(&a30 + 2) = v31;
      WORD5(a30) = 2112;
      *(&a30 + 12) = v44;
      _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Unable to set image sensor depth rate to %f: %@", &buf, 0x34u);
    }

    objc_end_catch();
    JUMPOUT(0x1C242C0BCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C242D34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 location, int a16, __int16 a17, __int16 a18, id a19, __n128 a20, __n128 a21, uint64_t a22, __int128 a23)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  if (a2 == 1)
  {
    v31 = objc_begin_catch(a1);
    v32 = v31;
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v33 = _MergedGlobals;
    v34 = _ARLogSensor_1(v31);
    v35 = v34;
    if (v33 == 1)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = [v24 logPrefix];
        [v23 maxWhiteBalanceGain];
        v40 = v39;
        v41 = [v32 reason];
        LODWORD(location) = 138545154;
        *(&location + 4) = v37;
        WORD6(location) = 2048;
        *(&location + 14) = v24;
        a18 = 2112;
        a19 = v38;
        a20.n128_u16[0] = 2048;
        *(a20.n128_f64 + 2) = v26;
        a20.n128_u16[5] = 2048;
        *(&a20.n128_f64[1] + 4) = v27;
        a21.n128_u16[2] = 2048;
        *(a21.n128_f64 + 6) = v28;
        a21.n128_u16[7] = 2048;
        *&a22 = v40;
        LOWORD(a23) = 2112;
        *(&a23 + 2) = v41;
        _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Unable to set custom white balance gains %.2f, %.2f, %.2f, valid range is [1.0-%.1f] : %@", &location, 0x52u);
      }
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      v44 = [v24 logPrefix];
      [v23 maxWhiteBalanceGain];
      v46 = v45;
      v47 = [v32 reason];
      LODWORD(location) = 138545154;
      *(&location + 4) = v43;
      WORD6(location) = 2048;
      *(&location + 14) = v24;
      a18 = 2112;
      a19 = v44;
      a20.n128_u16[0] = 2048;
      *(a20.n128_f64 + 2) = v26;
      a20.n128_u16[5] = 2048;
      *(&a20.n128_f64[1] + 4) = v27;
      a21.n128_u16[2] = 2048;
      *(a21.n128_f64 + 6) = v28;
      a21.n128_u16[7] = 2048;
      *&a22 = v46;
      LOWORD(a23) = 2112;
      *(&a23 + 2) = v47;
      _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Unable to set custom white balance gains %.2f, %.2f, %.2f, valid range is [1.0-%.1f] : %@", &location, 0x52u);
    }

    objc_end_catch();
    JUMPOUT(0x1C242D244);
  }

  _Unwind_Resume(a1);
}

void sub_1C242DD68(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18, __int128 buf, int a20, __int16 a21, __int16 a22, id a23, __int128 a24)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  if (a2 == 1)
  {
    v28 = objc_begin_catch(a1);
    v29 = v28;
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v30 = _MergedGlobals;
    v31 = _ARLogSensor_1(v28);
    v32 = v31;
    if (v30 == 1)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = [v24 logPrefix];
        v36 = [v29 reason];
        LODWORD(buf) = 138544130;
        *(&buf + 4) = v34;
        WORD6(buf) = 2048;
        *(&buf + 14) = v24;
        a22 = 2112;
        a23 = v35;
        LOWORD(a24) = 2112;
        *(&a24 + 2) = v36;
        _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Unable to set fixed lens position: %@", &buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = [v24 logPrefix];
      v40 = [v29 reason];
      LODWORD(buf) = 138544130;
      *(&buf + 4) = v38;
      WORD6(buf) = 2048;
      *(&buf + 14) = v24;
      a22 = 2112;
      a23 = v39;
      LOWORD(a24) = 2112;
      *(&a24 + 2) = v40;
      _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Unable to set fixed lens position: %@", &buf, 0x2Au);
    }

    objc_end_catch();
    JUMPOUT(0x1C242DD24);
  }

  _Unwind_Resume(a1);
}

void sub_1C242F6AC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 buf, int a24, __int16 a25, __int16 a26, id a27, __int16 a28)
{
  if (a2 == 1)
  {
    v30 = objc_begin_catch(a1);
    v31 = v30;
    if (qword_1EBF41CA8 != -1)
    {
      [ARImageSensor reconfigure:];
    }

    v32 = _MergedGlobals;
    v33 = _ARLogSensor_1(v30);
    v34 = v33;
    if (v32 == 1)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        v32 = NSStringFromClass(v35);
        v36 = [v28 logPrefix];
        v37 = [v31 reason];
        LODWORD(buf) = 138544130;
        *(&buf + 4) = v32;
        WORD6(buf) = 2048;
        *(&buf + 14) = v28;
        a26 = 2112;
        a27 = v36;
        a28 = 2112;
        *(v29 + 34) = v37;
        _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ Unable to setup vision data parameters: %@", &buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v38 = objc_opt_class();
      v32 = NSStringFromClass(v38);
      v39 = [v28 logPrefix];
      v40 = [v31 reason];
      LODWORD(buf) = 138544130;
      *(&buf + 4) = v32;
      WORD6(buf) = 2048;
      *(&buf + 14) = v28;
      a26 = 2112;
      a27 = v39;
      a28 = 2112;
      *(v29 + 34) = v40;
      _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ Unable to setup vision data parameters: %@", &buf, 0x2Au);
    }

    v41 = [v31 reason];
    if (v41)
    {
      a21 = *MEMORY[0x1E696A588];
      v32 = [v31 reason];
      a22 = v32;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a22 forKeys:&a21 count:1];
    }

    else
    {
      v42 = MEMORY[0x1E695E0F8];
    }

    ARErrorWithCodeAndUserInfo(102, v42);
    objc_claimAutoreleasedReturnValue();
    if (v41)
    {
    }

    objc_end_catch();
    JUMPOUT(0x1C242EB8CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t __ARShouldUseLogTypeError_block_invoke_1()
{
  result = os_variant_has_internal_content();
  _MergedGlobals = result;
  return result;
}

__IOHIDServiceClient *copyHIDServicePlugin(__IOHIDEventSystemClient *a1, int a2, int a3, const char *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = a3;
  valuePtr = a2;
  if (!a1)
  {
    return 0;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v8 = CFNumberCreate(v6, kCFNumberSInt32Type, &v35);
  *keys = xmmword_1E817BD70;
  values[0] = v7;
  values[1] = v8;
  v9 = CFDictionaryCreate(v6, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  IOHIDEventSystemClientSetMatching();
  v10 = IOHIDEventSystemClientCopyServices(a1);
  v11 = v10;
  if (!v10 || CFArrayGetCount(v10) < 1 || (Count = CFArrayGetCount(v11), Count < 1))
  {
    ValueAtIndex = 0;
    goto LABEL_27;
  }

  v13 = Count;
  v32 = v8;
  v33 = v7;
  v14 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
    v16 = IOHIDServiceClientCopyProperty(ValueAtIndex, @"PrimaryUsage");
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    v18 = [v16 intValue];
    v19 = v35;
    CFRelease(v17);
    if (v18 != v19)
    {
      goto LABEL_21;
    }

    if (!a4 || !*a4)
    {
      break;
    }

    v20 = IOHIDServiceClientCopyProperty(ValueAtIndex, @"LocationID");
    if (v20)
    {
      v21 = v20;
      v22 = CFGetTypeID(v20);
      if (v22 == CFStringGetTypeID())
      {
        CStringPtr = CFStringGetCStringPtr(v21, 0x8000100u);
        v24 = strlen(a4);
        if (v24 != strlen(CStringPtr))
        {
          goto LABEL_20;
        }

        v25 = a4;
        v26 = CStringPtr;
        v27 = v24;
      }

      else
      {
        v28 = CFGetTypeID(v21);
        if (v28 != CFNumberGetTypeID() || (v34 = 0, !CFNumberGetValue(v21, kCFNumberLongType, &v34)) || (snprintf(__str, 0x20uLL, "%lu", v34), v29 = strlen(a4), v29 != strlen(__str)))
        {
LABEL_20:
          CFRelease(v21);
          goto LABEL_21;
        }

        v26 = __str;
        v25 = a4;
        v27 = v29;
      }

      v30 = strncmp(v25, v26, v27);
      CFRelease(v21);
      if (!v30)
      {
        break;
      }
    }

LABEL_21:
    if (v13 == ++v14)
    {
      ValueAtIndex = 0;
      goto LABEL_26;
    }
  }

  CFRetain(ValueAtIndex);
LABEL_26:
  v8 = v32;
  v7 = v33;
LABEL_27:
  CFRelease(v9);
  CFRelease(v7);
  CFRelease(v8);
  if (v11)
  {
    CFRelease(v11);
  }

  return ValueAtIndex;
}

void rawIOHIDEventCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v7) = info.denom;
  LODWORD(v6) = info.numer;
  v8 = v6 / v7 * 0.000000001 * IOHIDEventGetTimeStamp();
  if (IOHIDEventGetType() == 13)
  {
    kdebug_trace();
    [v5 accelerometerDidOutputEvent:a4 timestamp:v8];
LABEL_5:
    kdebug_trace();
    goto LABEL_6;
  }

  if (IOHIDEventGetType() == 20)
  {
    kdebug_trace();
    [v5 gyroscopeDidOutputEvent:a4 timestamp:v8];
    goto LABEL_5;
  }

LABEL_6:
}

id _ARLogSensor_2(uint64_t a1)
{
  if (_ARLogSensor_onceToken_3 != -1)
  {
    _ARLogSensor_cold_1_2();
  }

  v2 = _ARLogSensor_logObj_3;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_2()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_1 = result;
  return result;
}

uint64_t rawGyroscopeCallback(uint64_t a1, void *a2)
{
  kdebug_trace();
  [a2 gyroscopeOutput:a1];

  return kdebug_trace();
}

uint64_t rawAccelerometerCallback(uint64_t a1, void *a2)
{
  kdebug_trace();
  [a2 accelerometerOutput:a1];

  return kdebug_trace();
}

uint64_t rawMagnetometerCallback(uint64_t a1, void *a2)
{
  kdebug_trace();
  [a2 magnetometerOutput:a1];

  return kdebug_trace();
}

id _ARLogSensor_3(uint64_t a1)
{
  if (_ARLogSensor_onceToken_4 != -1)
  {
    _ARLogSensor_cold_1_3();
  }

  v2 = _ARLogSensor_logObj_4;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_3()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_2 = result;
  return result;
}

id _ARLogSensor_4(uint64_t a1)
{
  if (_ARLogSensor_onceToken_5 != -1)
  {
    _ARLogSensor_cold_1_4();
  }

  v2 = _ARLogSensor_logObj_5;

  return v2;
}

id _ARLogGeneral_0(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_0 != -1)
  {
    _ARLogGeneral_cold_1_0();
  }

  v2 = _ARLogGeneral_logObj_0;

  return v2;
}

void sub_1C24381C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  os_unfair_lock_unlock(v13 + 6);
  _Unwind_Resume(a1);
}

void sub_1C2439FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C243A238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ComputeExtrinsicsMap(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v17 = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 uniqueID];
        v12 = [v4 uniqueID];
        v13 = [v11 isEqualToString:v12];

        if ((v13 & 1) == 0)
        {
          v14 = [MEMORY[0x1E69870A0] extrinsicMatrixFromDevice:v10 toDevice:v4];
          if (v14)
          {
            v15 = [v10 deviceType];
            [v17 setObject:v14 forKeyedSubscript:v15];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  return v17;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_4()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_3 = result;
  return result;
}

id ARReplaySensorClassForMovieURL(void *a1, void *a2)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3 || (v3 = [v3 isFileURL], (v3 & 1) == 0))
  {
    if (!a2)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v11 = MEMORY[0x1E696AEC0];
    v12 = ARKitCoreBundle(v3);
    v13 = [v12 localizedStringForKey:@"Replay URL is missing or not a fileURL: %@" value:&stru_1F4208A80 table:@"Localizable"];
    v7 = [v11 stringWithFormat:v13, v4];

    v14 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v33[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [v14 errorWithDomain:@"com.apple.arkit.error" code:102 userInfo:v9];
    *a2 = v10 = 0;
    goto LABEL_9;
  }

  v27 = 0;
  v5 = [v4 getResourceValue:&v27 forKey:*MEMORY[0x1E695DBB0] error:a2];
  v6 = v27;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_13;
  }

  v8 = [v6 BOOLValue];
  if ((v8 & 1) == 0)
  {
    if (a2)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = ARKitCoreBundle(v8);
      v17 = [v16 localizedStringForKey:@"Replay URL is not readable: %@" value:&stru_1F4208A80 table:@"Localizable"];
      v9 = [v15 stringWithFormat:v17, v4];

      v18 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A578];
      v31 = v9;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *a2 = [v18 errorWithDomain:@"com.apple.arkit.error" code:102 userInfo:v19];

LABEL_20:
      v10 = 0;
      goto LABEL_9;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v9 = [MEMORY[0x1E6988168] assetWithURL:v4];
  if (!v9)
  {
    if (a2)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = ARKitCoreBundle(0);
      v23 = [v22 localizedStringForKey:@"Replay URL is not valid AVURLAsset: %@" value:&stru_1F4208A80 table:@"Localizable"];
      v24 = [v21 stringWithFormat:v23, v4];

      v25 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v29 = v24;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      *a2 = [v25 errorWithDomain:@"com.apple.arkit.error" code:102 userInfo:v26];
    }

    goto LABEL_20;
  }

  v10 = objc_opt_class();
LABEL_9:

LABEL_14:
LABEL_15:

  return v10;
}

uint64_t replayModeByApplyingUserDefaultOverrides(uint64_t a1)
{
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.replaySensor.deterministicMode"])
  {
    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.replaySensor.deterministicMode.useMovieFPS"])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.replay.filepath.manual"])
  {
    return 3;
  }

  else
  {
    return a1;
  }
}

__CFString *NSStringFromARReplayMode(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Realtime";
  }

  else
  {
    return off_1E817BFC8[a1 - 1];
  }
}

id _ARLogSensor_5(uint64_t a1)
{
  if (_ARLogSensor_onceToken_6 != -1)
  {
    _ARLogSensor_cold_1_5();
  }

  v2 = _ARLogSensor_logObj_6;

  return v2;
}

id _ARLogGeneral_1(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_1 != -1)
  {
    _ARLogGeneral_cold_1_1();
  }

  v2 = _ARLogGeneral_logObj_1;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_5()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_4 = result;
  return result;
}

void sub_1C24462F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a49)
  {
    operator delete(a49);
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(a1, a2);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_0()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E817BBB8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t *std::vector<unsigned int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1C2446850(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::allocator<unsigned int>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_1()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_0()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

BOOL ___ZL18ARSkipCrashOnCrashv_block_invoke()
{
  result = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.skipCrashOnARCrash"];
  ARSkipCrashOnCrash(void)::skipCrashOnCrash = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_1()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_2()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

BOOL ___ZL18ARSkipCrashOnCrashv_block_invoke_0()
{
  result = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.skipCrashOnARCrash"];
  ARSkipCrashOnCrash(void)::skipCrashOnCrash = result;
  return result;
}

id _ARLogTechnique(uint64_t a1)
{
  if (_ARLogTechnique(void)::onceToken != -1)
  {
    _ARLogTechnique();
  }

  v2 = _ARLogTechnique(void)::logObj;

  return v2;
}

{
  if (_ARLogTechnique_onceToken != -1)
  {
    _ARLogTechnique_cold_1();
  }

  v2 = _ARLogTechnique_logObj;

  return v2;
}

{
  if (_ARLogTechnique(void)::onceToken != -1)
  {
    _ARLogTechnique();
  }

  v2 = _ARLogTechnique(void)::logObj;

  return v2;
}

{
  if (_ARLogTechnique(void)::onceToken != -1)
  {
    _ARLogTechnique();
  }

  v2 = _ARLogTechnique(void)::logObj;

  return v2;
}

{
  if (_ARLogTechnique(void)::onceToken != -1)
  {
    _ARLogTechnique();
  }

  v2 = _ARLogTechnique(void)::logObj;

  return v2;
}

{
  if (_ARLogTechnique(void)::onceToken != -1)
  {
    _ARLogTechnique();
  }

  v2 = _ARLogTechnique(void)::logObj;

  return v2;
}

{
  if (_ARLogTechnique(void)::onceToken != -1)
  {
    _ARLogTechnique();
  }

  v2 = _ARLogTechnique(void)::logObj;

  return v2;
}

{
  if (_ARLogTechnique(void)::onceToken != -1)
  {
    _ARLogTechnique();
  }

  v2 = _ARLogTechnique(void)::logObj;

  return v2;
}

{
  if (_ARLogTechnique(void)::onceToken != -1)
  {
    _ARLogTechnique();
  }

  v2 = _ARLogTechnique(void)::logObj;

  return v2;
}

{
  if (_ARLogTechnique(void)::onceToken != -1)
  {
    _ARLogTechnique();
  }

  v2 = _ARLogTechnique(void)::logObj;

  return v2;
}

{
  if (_ARLogTechnique(void)::onceToken != -1)
  {
    _ARLogTechnique();
  }

  v2 = _ARLogTechnique(void)::logObj;

  return v2;
}

{
  if (_ARLogTechnique(void)::onceToken != -1)
  {
    _ARLogTechnique();
  }

  v2 = _ARLogTechnique(void)::logObj;

  return v2;
}

{
  if (_ARLogTechnique(void)::onceToken != -1)
  {
    _ARLogTechnique();
  }

  v2 = _ARLogTechnique(void)::logObj;

  return v2;
}

{
  if (_ARLogTechnique(void)::onceToken != -1)
  {
    _ARLogTechnique();
  }

  v2 = _ARLogTechnique(void)::logObj;

  return v2;
}

{
  if (_ARLogTechnique(void)::onceToken != -1)
  {
    _ARLogTechnique();
  }

  v2 = _ARLogTechnique(void)::logObj;

  return v2;
}

uint64_t anonymous namespace::FillRegistrationDataFrom(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  if (a3 != 16 || a5 != 17 || (v8 = *a4, COERCE_FLOAT(*a4) != 0.0) || *(&v8 + 1) != 0.0 || *(&v8 + 2) != 0.0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Please sync with arkit team if this happen!";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v9 = (a2 + 4);
  v10 = (result + 4);
  v11 = 16;
  do
  {
    *(v10 - 1) = *(v9 - 1);
    v12 = *v9;
    v9 += 2;
    *v10 = v12;
    v10 += 2;
    --v11;
  }

  while (v11);
  v13 = 0;
  v14 = (result + 136);
  do
  {
    if (v13 < 7)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 + 1;
    }

    v16 = v13 + 1;
    v17 = &a4[v15];
    *(v14 - 2) = *v17;
    *(v14 - 1) = v17[1];
    *v14 = v17[2];
    v14 += 3;
    v13 = v16;
  }

  while (v16 != 16);
  v18 = 0;
  v19 = result + 320;
  do
  {
    v20 = 0;
    v21 = a6;
    do
    {
      *(v19 + v20) = *(v21 + 4 * (v18 & 3));
      v21 += 16;
      v20 += 12;
    }

    while (v20 != 36);
    ++v18;
    v19 += 4;
  }

  while (v18 != 3);
  v22 = 0;
  v28 = xmmword_1C25C85D0;
  v29 = unk_1C25C85E0;
  v30 = xmmword_1C25C85F0;
  v31 = unk_1C25C8600;
  v23 = &v28;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      LODWORD(v23[i]) = *(a7 + i * 16 + 4 * (v22 & 3));
    }

    ++v22;
    v23 = (v23 + 4);
  }

  while (v22 != 3);
  v25 = v29;
  *(result + 356) = v28;
  *(result + 372) = v25;
  v26 = v31;
  *(result + 388) = v30;
  *(result + 404) = v26;
  *(result + 488) = a8;
  return result;
}

void sub_1C2449804(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_1C2449DD4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1C691A740](v1);
  _Unwind_Resume(a1);
}

void ___ZL13_ARLogGeneralv_block_invoke_2()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

void ___ZL15_ARLogTechniquev_block_invoke()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

uint64_t *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_1C2449EE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void _ZNSt3__120__shared_ptr_emplaceIN5arkit3btr15ScaleCorrectionENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F42050F8;
  *&v1 = 10;
  *(&v1 + 1) = 0x3CA3D70A3A83126FLL;
  v2 = 5;
  v3 = xmmword_1C25C85C0;
  v4 = 0x3FF9999A3D4CCCCDLL;
  v5 = 1;
  arkit::btr::ScaleCorrection::ScaleCorrection((a1 + 3), &v1);
}

void std::__shared_ptr_emplace<arkit::btr::ScaleCorrection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F42050F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691A790);
}

void std::__shared_ptr_emplace<arkit::btr::ScaleCorrection>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

id _ARLogGeneral_2(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_2 != -1)
  {
    _ARLogGeneral_cold_1_2();
  }

  v2 = _ARLogGeneral_logObj_2;

  return v2;
}

void AppClipCodeUpdateCallbackHandler(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v141 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v11 = a1;
  v12 = v11;
  if (!a8)
  {
    *&v132 = 0.0;
    NumberOfTrackingData = AppC3DTrackingResultGetNumberOfTrackingData();
    kdebug_trace();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v140 = 0;
    v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:NumberOfTrackingData];
    v21 = v20;
    if (!NumberOfTrackingData)
    {
LABEL_116:
      v103 = objc_opt_new();
      [v103 setTrackedAppClipCodes:v21];
      v104 = *(v12 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __AppClipCodeUpdateCallbackHandler_block_invoke_34;
      block[3] = &unk_1E817C240;
      v122 = v12;
      v105 = v103;
      v123 = v105;
      v124 = a3;
      dispatch_async(v104, block);
      [v21 count];
      kdebug_trace();

      _Block_object_dispose(buf, 8);
      goto LABEL_117;
    }

    v22 = 0.0;
    v109 = v20;
    while (1)
    {
      *&v132 = 0.0;
      v23 = AppC3DTrackingResultCopyTransform();
      log = v25;
      theData = v24;
      obj = v27;
      v114 = v26;
      v28 = *&v132;
      if (*&v132 == 0.0)
      {
        Id = AppC3DTrackingResultGetId();
        v28 = *&v132;
        if (*&v132 == 0.0)
        {
          [MEMORY[0x1E696AD98] numberWithUnsignedLong:Id];
          v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v41 = [v21 objectForKey:*&v28];

          if (v41)
          {
            if (ARShouldUseLogTypeError_onceToken_5 != -1)
            {
              [ARAppClipCodeTechnique prepare:];
            }

            v43 = ARShouldUseLogTypeError_internalOSVersion_5;
            v44 = _ARLogTechnique(v42);
            v45 = v44;
            if (v43 == 1)
            {
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *v133 = 138412546;
                v134 = v28;
                v135 = 2048;
                v136 = a3;
                v46 = v45;
                v47 = OS_LOG_TYPE_ERROR;
                v48 = "ARAppClipCodeTechnique: Duplicate instance ID %@ detected at time %F";
                goto LABEL_50;
              }
            }

            else if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              *v133 = 138412546;
              v134 = v28;
              v135 = 2048;
              v136 = a3;
              v46 = v45;
              v47 = OS_LOG_TYPE_INFO;
              v48 = "Error: ARAppClipCodeTechnique: Duplicate instance ID %@ detected at time %F";
LABEL_50:
              _os_log_impl(&dword_1C241C000, v46, v47, v48, v133, 0x16u);
            }

LABEL_87:

            goto LABEL_40;
          }

          Confidence = AppC3DTrackingResultGetConfidence();
          v45 = v132;
          if (*&v132 != 0.0)
          {
            if (ARShouldUseLogTypeError_onceToken_5 != -1)
            {
              [ARAppClipCodeTechnique prepare:];
            }

            v52 = ARShouldUseLogTypeError_internalOSVersion_5;
            v53 = _ARLogTechnique(Confidence);
            v54 = v53;
            if (v52 == 1)
            {
              v21 = v109;
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                *v133 = 134218498;
                v134 = a3;
                v135 = 2048;
                v136 = v22;
                v137 = 2112;
                v138 = v45;
                v55 = v54;
                v56 = OS_LOG_TYPE_ERROR;
                v57 = "ARAppClipCodeTechnique: Could not retrieve confidence at time %F index:%lu Error: %@";
                goto LABEL_55;
              }
            }

            else
            {
              v21 = v109;
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                *v133 = 134218498;
                v134 = a3;
                v135 = 2048;
                v136 = v22;
                v137 = 2112;
                v138 = v45;
                v55 = v54;
                v56 = OS_LOG_TYPE_INFO;
                v57 = "Error: ARAppClipCodeTechnique: Could not retrieve confidence at time %F index:%lu Error: %@";
LABEL_55:
                _os_log_impl(&dword_1C241C000, v55, v56, v57, v133, 0x20u);
              }
            }

LABEL_86:

            v86 = [v45 code];
            *(*&buf[8] + 24) = v86;
            goto LABEL_87;
          }

          v58 = v51;
          if (+[ARAppClipCodeTechnique shouldRunCameraOrScannerPerformanceTestingMode])
          {
            v59 = 1;
          }

          else
          {
            IsScaleReliable = AppC3DTrackingResultIsScaleReliable();
            v45 = v132;
            if (*&v132 != 0.0)
            {
              if (ARShouldUseLogTypeError_onceToken_5 != -1)
              {
                [ARAppClipCodeTechnique prepare:];
              }

              v61 = ARShouldUseLogTypeError_internalOSVersion_5;
              v62 = _ARLogTechnique(IsScaleReliable);
              v54 = v62;
              if (v61 == 1)
              {
                v21 = v109;
                if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_86;
                }

                *v133 = 134218498;
                v134 = a3;
                v135 = 2048;
                v136 = v22;
                v137 = 2112;
                v138 = v45;
                v63 = v54;
                v64 = OS_LOG_TYPE_ERROR;
                v65 = "ARAppClipCodeTechnique: Could not determine scale reliability at time %F index:%lu Error: %@";
              }

              else
              {
                v21 = v109;
                if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_86;
                }

                *v133 = 134218498;
                v134 = a3;
                v135 = 2048;
                v136 = v22;
                v137 = 2112;
                v138 = v45;
                v63 = v54;
                v64 = OS_LOG_TYPE_INFO;
                v65 = "Error: ARAppClipCodeTechnique: Could not determine scale reliability at time %F index:%lu Error: %@";
              }

              _os_log_impl(&dword_1C241C000, v63, v64, v65, v133, 0x20u);
              goto LABEL_86;
            }

            v59 = IsScaleReliable;
          }

          Size = AppC3DTrackingResultGetSize();
          v45 = v132;
          if (*&v132 != 0.0)
          {
            if (ARShouldUseLogTypeError_onceToken_5 != -1)
            {
              [ARAppClipCodeTechnique prepare:];
            }

            v69 = ARShouldUseLogTypeError_internalOSVersion_5;
            v70 = _ARLogTechnique(Size);
            v54 = v70;
            if (v69 == 1)
            {
              v21 = v109;
              if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_86;
              }

              *v133 = 134218498;
              v134 = a3;
              v135 = 2048;
              v136 = v22;
              v137 = 2112;
              v138 = v45;
              v71 = v54;
              v72 = OS_LOG_TYPE_ERROR;
              v73 = "ARAppClipCodeTechnique: Could not retrieve size at time %F index:%lu Error: %@";
            }

            else
            {
              v21 = v109;
              if (!os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
              {
                goto LABEL_86;
              }

              *v133 = 134218498;
              v134 = a3;
              v135 = 2048;
              v136 = v22;
              v137 = 2112;
              v138 = v45;
              v71 = v54;
              v72 = OS_LOG_TYPE_INFO;
              v73 = "Error: ARAppClipCodeTechnique: Could not retrieve size at time %F index:%lu Error: %@";
            }

            _os_log_impl(&dword_1C241C000, v71, v72, v73, v133, 0x20u);
            goto LABEL_86;
          }

          v74 = v67;
          v75 = v68;
          v45 = objc_opt_new();
          [v45 setCodeToWorldVisionTransform:theData, log, v114, obj];
          [v45 setSize:v74, v75];
          LODWORD(v76) = v58;
          [v45 setConfidence:v76];
          [v45 setIsScaleReliable:v59];
          [v45 setUrlDecodingStateInternal:0];
          [v21 setObject:v45 forKey:*&v28];
          Data = AppC3DTrackingResultCreateData();
          theDataa = Data;
          v78 = v132;
          if (*&v132 == 0.0 && Data)
          {
            Data = CFDataGetLength(Data);
            if (Data)
            {
              Metadata = AppC3DTrackingResultGetMetadata();
              loga = v132;
              if (*&v132 != 0.0)
              {
                if (ARShouldUseLogTypeError_onceToken_5 != -1)
                {
                  [ARAppClipCodeTechnique prepare:];
                }

                v80 = ARShouldUseLogTypeError_internalOSVersion_5;
                v81 = _ARLogTechnique(Metadata);
                v82 = v81;
                if (v80 == 1)
                {
                  v21 = v109;
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                  {
                    *v133 = 134218498;
                    v134 = a3;
                    v135 = 2048;
                    v136 = v22;
                    v137 = 2112;
                    v138 = loga;
                    v83 = v82;
                    v84 = OS_LOG_TYPE_ERROR;
                    v85 = "ARAppClipCodeTechnique: Could not access result metadata at time %F index:%lu Error: %@";
                    goto LABEL_103;
                  }
                }

                else
                {
                  v21 = v109;
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                  {
                    *v133 = 134218498;
                    v134 = a3;
                    v135 = 2048;
                    v136 = v22;
                    v137 = 2112;
                    v138 = loga;
                    v83 = v82;
                    v84 = OS_LOG_TYPE_INFO;
                    v85 = "Error: ARAppClipCodeTechnique: Could not access result metadata at time %F index:%lu Error: %@";
LABEL_103:
                    _os_log_impl(&dword_1C241C000, v83, v84, v85, v133, 0x20u);
                  }
                }

                goto LABEL_104;
              }

              DataVersion = AppC3DTrackingResultGetDataVersion();
              loga = v132;
              if (*&v132 == 0.0)
              {
                v95 = DataVersion;
                [v45 setUrlEncodingVersion:DataVersion];
                v108 = v95;
                loga = [MEMORY[0x1E696AD98] numberWithLong:v95];
                obja = *(v12 + 13);
                objc_sync_enter(obja);
                v96 = [*(v12 + 13) objectForKeyedSubscript:theDataa];
                v115 = [v96 objectForKeyedSubscript:loga];

                objc_sync_exit(obja);
                if (v115)
                {
                  v97 = [v115 url];
                  [v45 setUrl:v97];

                  -[NSObject setUrlDecodingStateInternal:](v45, "setUrlDecodingStateInternal:", [v115 urlDecodingStateInternal]);
                }

                else
                {
                  v106 = *(v12 + 13);
                  objc_sync_enter(v106);
                  v98 = [*(v12 + 13) objectForKeyedSubscript:theDataa];
                  v99 = v98 == 0;

                  if (v99)
                  {
                    v100 = objc_opt_new();
                    [*(v12 + 13) setObject:v100 forKeyedSubscript:theDataa];
                  }

                  objb = objc_opt_new();
                  [objb setUrlDecodingStateInternal:2];
                  v101 = [*(v12 + 13) objectForKeyedSubscript:theDataa];
                  [v101 setObject:objb forKeyedSubscript:loga];

                  objc_sync_exit(v106);
                  objc = *(v12 + 14);
                  v107 = [v12 ignoreURLLimitation];
                  v125[0] = MEMORY[0x1E69E9820];
                  v125[1] = 3221225472;
                  v125[2] = __AppClipCodeUpdateCallbackHandler_block_invoke;
                  v125[3] = &unk_1E817C218;
                  v130 = a3;
                  v131 = v22;
                  v129 = buf;
                  v126 = v12;
                  v102 = theDataa;
                  v127 = v102;
                  v128 = loga;
                  [objc decodeURLWithEncodedData:v102 codingVersion:v108 requiresAuthorization:v107 ^ 1u completionHandler:v125];
                }
              }

              else
              {
                if (ARShouldUseLogTypeError_onceToken_5 != -1)
                {
                  [ARAppClipCodeTechnique prepare:];
                }

                v89 = ARShouldUseLogTypeError_internalOSVersion_5;
                v90 = _ARLogTechnique(DataVersion);
                v82 = v90;
                if (v89 == 1)
                {
                  v21 = v109;
                  if (!os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_104;
                  }

                  *v133 = 134218498;
                  v134 = a3;
                  v135 = 2048;
                  v136 = v22;
                  v137 = 2112;
                  v138 = loga;
                  v91 = v82;
                  v92 = OS_LOG_TYPE_ERROR;
                  v93 = "ARAppClipCodeTechnique: Could not get URL coding version from result metadata at time %F index:%lu Error: %@";
                }

                else
                {
                  v21 = v109;
                  if (!os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                  {
                    goto LABEL_104;
                  }

                  *v133 = 134218498;
                  v134 = a3;
                  v135 = 2048;
                  v136 = v22;
                  v137 = 2112;
                  v138 = loga;
                  v91 = v82;
                  v92 = OS_LOG_TYPE_INFO;
                  v93 = "Error: ARAppClipCodeTechnique: Could not get URL coding version from result metadata at time %F index:%lu Error: %@";
                }

                _os_log_impl(&dword_1C241C000, v91, v92, v93, v133, 0x20u);
LABEL_104:

                v94 = [loga code];
                *(*&buf[8] + 24) = v94;
                [v45 setUrlDecodingStateInternal:1];
              }

              goto LABEL_87;
            }

            v78 = v132;
          }

          if (v78)
          {
            logb = _ARLogTechnique(Data);
            if (os_log_type_enabled(logb, OS_LOG_TYPE_INFO))
            {
              *v133 = 134218498;
              v134 = a3;
              v135 = 2048;
              v136 = v22;
              v137 = 2112;
              v138 = v78;
              _os_log_impl(&dword_1C241C000, logb, OS_LOG_TYPE_INFO, "ARAppClipCodeTechnique: Could not create decoded data at time %F index:%lu Error: %@", v133, 0x20u);
            }

            v87 = [v78 code];
            *(*&buf[8] + 24) = v87;
          }

          if (theDataa)
          {
            CFRelease(theDataa);
          }

          goto LABEL_87;
        }

        if (ARShouldUseLogTypeError_onceToken_5 != -1)
        {
          [ARAppClipCodeTechnique prepare:];
        }

        v36 = ARShouldUseLogTypeError_internalOSVersion_5;
        v37 = _ARLogTechnique(Id);
        v31 = v37;
        if (v36 == 1)
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *v133 = 134218498;
            v134 = a3;
            v135 = 2048;
            v136 = v22;
            v137 = 2112;
            v138 = *&v28;
            v38 = v31;
            v39 = OS_LOG_TYPE_ERROR;
            v40 = "ARAppClipCodeTechnique: Could not get id at time %F index:%lu Error: %@";
LABEL_38:
            _os_log_impl(&dword_1C241C000, v38, v39, v40, v133, 0x20u);
          }
        }

        else if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *v133 = 134218498;
          v134 = a3;
          v135 = 2048;
          v136 = v22;
          v137 = 2112;
          v138 = *&v28;
          v38 = v31;
          v39 = OS_LOG_TYPE_INFO;
          v40 = "Error: ARAppClipCodeTechnique: Could not get id at time %F index:%lu Error: %@";
          goto LABEL_38;
        }
      }

      else
      {
        if (ARShouldUseLogTypeError_onceToken_5 != -1)
        {
          [ARAppClipCodeTechnique prepare:];
        }

        v29 = ARShouldUseLogTypeError_internalOSVersion_5;
        v30 = _ARLogTechnique(v23);
        v31 = v30;
        if (v29 == 1)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *v133 = 134218498;
            v134 = a3;
            v135 = 2048;
            v136 = v22;
            v137 = 2112;
            v138 = *&v28;
            v32 = v31;
            v33 = OS_LOG_TYPE_ERROR;
            v34 = "ARAppClipCodeTechnique: Could not copy tranform at time %F index:%lu Error: %@";
LABEL_28:
            _os_log_impl(&dword_1C241C000, v32, v33, v34, v133, 0x20u);
          }
        }

        else if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *v133 = 134218498;
          v134 = a3;
          v135 = 2048;
          v136 = v22;
          v137 = 2112;
          v138 = *&v28;
          v32 = v31;
          v33 = OS_LOG_TYPE_INFO;
          v34 = "Error: ARAppClipCodeTechnique: Could not copy tranform at time %F index:%lu Error: %@";
          goto LABEL_28;
        }
      }

      v49 = [*&v28 code];
      *(*&buf[8] + 24) = v49;
LABEL_40:

      if (NumberOfTrackingData == ++*&v22)
      {
        goto LABEL_116;
      }
    }
  }

  if (ARShouldUseLogTypeError_onceToken_5 != -1)
  {
    AppClipCodeUpdateCallbackHandler_cold_1();
  }

  v13 = ARShouldUseLogTypeError_internalOSVersion_5;
  v14 = _ARLogTechnique(v11);
  v15 = v14;
  if (v13 == 1)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      *&buf[4] = a3;
      *&buf[12] = 2112;
      *&buf[14] = a8;
      v16 = "ARAppClipCodeTechnique: Error during app clip code tracking at time %F, Error: %@";
      v17 = v15;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v17, v18, v16, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    *&buf[4] = a3;
    *&buf[12] = 2112;
    *&buf[14] = a8;
    v16 = "Error: ARAppClipCodeTechnique: Error during app clip code tracking at time %F, Error: %@";
    v17 = v15;
    v18 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  [v12 pushResultData:MEMORY[0x1E695E0F0] forTimestamp:a3];
  [a8 code];
  kdebug_trace();

LABEL_117:
}

void sub_1C244CD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  objc_sync_exit(obj);
  _Block_object_dispose((v19 - 192), 8);
  _Unwind_Resume(a1);
}

void __AppClipCodeUpdateCallbackHandler_block_invoke(void *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (v5)
    {
      v16 = *(a1[4] + 104);
      objc_sync_enter(v16);
      v17 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
      v18 = [v17 objectForKeyedSubscript:a1[6]];
      [v18 setUrl:v5];

      v19 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
      v20 = [v19 objectForKeyedSubscript:a1[6]];
      [v20 setUrlDecodingStateInternal:8];

      objc_sync_exit(v16);
      goto LABEL_33;
    }

    if (ARShouldUseLogTypeError_onceToken_5 != -1)
    {
      AppClipCodeUpdateCallbackHandler_cold_1();
    }

    v24 = ARShouldUseLogTypeError_internalOSVersion_5;
    v25 = _ARLogTechnique(v6);
    v26 = v25;
    if (v24 == 1)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = a1[8];
        v28 = a1[9];
        v40 = 134218240;
        v41 = v27;
        v42 = 2048;
        v43 = v28;
        v29 = "ARAppClipCodeTechnique: Decoded URL at time %F index:%lu is nil.";
        v30 = v26;
        v31 = OS_LOG_TYPE_ERROR;
LABEL_27:
        _os_log_impl(&dword_1C241C000, v30, v31, v29, &v40, 0x16u);
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v32 = a1[8];
      v33 = a1[9];
      v40 = 134218240;
      v41 = v32;
      v42 = 2048;
      v43 = v33;
      v29 = "Error: ARAppClipCodeTechnique: Decoded URL at time %F index:%lu is nil.";
      v30 = v26;
      v31 = OS_LOG_TYPE_INFO;
      goto LABEL_27;
    }

    v34 = *(a1[4] + 104);
    objc_sync_enter(v34);
    v35 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
    v36 = [v35 objectForKeyedSubscript:a1[6]];
    [v36 setUrlDecodingStateInternal:7];

    objc_sync_exit(v34);
    goto LABEL_33;
  }

  if (ARShouldUseLogTypeError_onceToken_5 != -1)
  {
    AppClipCodeUpdateCallbackHandler_cold_1();
  }

  v8 = ARShouldUseLogTypeError_internalOSVersion_5;
  v9 = _ARLogTechnique(v6);
  v10 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[8];
      v12 = a1[9];
      v40 = 134218498;
      v41 = v11;
      v42 = 2048;
      v43 = v12;
      v44 = 2112;
      v45 = v7;
      v13 = "ARAppClipCodeTechnique: Could not decode URL at time %F index:%lu Error: %@";
      v14 = v10;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_11:
      _os_log_impl(&dword_1C241C000, v14, v15, v13, &v40, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v21 = a1[8];
    v22 = a1[9];
    v40 = 134218498;
    v41 = v21;
    v42 = 2048;
    v43 = v22;
    v44 = 2112;
    v45 = v7;
    v13 = "Error: ARAppClipCodeTechnique: Could not decode URL at time %F index:%lu Error: %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_INFO;
    goto LABEL_11;
  }

  *(*(a1[7] + 8) + 24) = [v7 code];
  if ([v7 code])
  {
    if ([v7 code] == 1)
    {
      v23 = 3;
    }

    else if ([v7 code] == 2)
    {
      v23 = 4;
    }

    else if ([v7 code] == 3)
    {
      v23 = 5;
    }

    else if ([v7 code] == 4)
    {
      v23 = 6;
    }

    else
    {
      v23 = 7;
    }
  }

  else
  {
    v23 = 7;
  }

  v37 = *(a1[4] + 104);
  objc_sync_enter(v37);
  v38 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
  v39 = [v38 objectForKeyedSubscript:a1[6]];
  [v39 setUrlDecodingStateInternal:v23];

  objc_sync_exit(v37);
LABEL_33:
}

void __AppClipCodeUpdateCallbackHandler_block_invoke_34(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 pushResultData:v3 forTimestamp:*(a1 + 48)];
}

Class initBCSAppClipCodeURLDecoder()
{
  if (BarcodeSupportLibrary_sOnce != -1)
  {
    initBCSAppClipCodeURLDecoder_cold_1();
  }

  result = objc_getClass("BCSAppClipCodeURLDecoder");
  classBCSAppClipCodeURLDecoder = result;
  getBCSAppClipCodeURLDecoderClass = BCSAppClipCodeURLDecoderFunction;
  return result;
}

void *__BarcodeSupportLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/BarcodeSupport.framework/BarcodeSupport", 2);
  BarcodeSupportLibrary_sLib = result;
  return result;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_6()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_5 = result;
  return result;
}

void sub_1C244DDC8(_Unwind_Exception *a1)
{
  v9 = v6;

  _Unwind_Resume(a1);
}

void sub_1C244DF20(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ARDepthEstimationTechnique;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1C244E160(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_3()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL15_ARLogTechniquev_block_invoke_0()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

id _ARLogTechnique_0(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_0 != -1)
  {
    _ARLogTechnique_cold_1_0();
  }

  v2 = _ARLogTechnique_logObj_0;

  return v2;
}

id textureForSizeWithPixelFormatAndMetalDevice(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = MEMORY[0x1E69741C0];
  v8 = a2;
  v10 = [v7 texture2DDescriptorWithPixelFormat:getMTLPixelFormat(a1 width:v9) height:a3 mipmapped:a4, 0];
  [v10 setUsage:19];
  v11 = [v8 newTextureWithDescriptor:v10];

  return v11;
}

__IOSurface *bindPixelBufferToMTL2DTextureWithMetalDevice(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    MTLPixelFormat = getMTLPixelFormat(PixelFormatType, v6);
    WidthOfPlane = IOSurfaceGetWidthOfPlane(IOSurface, 0);
    v9 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:MTLPixelFormat width:WidthOfPlane height:IOSurfaceGetHeightOfPlane(IOSurface mipmapped:0), 0];
    v10 = v9;
    if (v9)
    {
      [v9 setUsage:23];
      IOSurface = [v3 newTextureWithDescriptor:v10 iosurface:IOSurface plane:0];
    }

    else
    {
      IOSurface = 0;
    }
  }

  return IOSurface;
}

id _ARLogGeneral_3(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_3 != -1)
  {
    _ARLogGeneral_cold_1_3();
  }

  v2 = _ARLogGeneral_logObj_3;

  return v2;
}

void sub_1C24536E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void (*a58)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  a58(&a56, a2, a3, a4, a5, a6, a7, a8);
  (STACK[0x278])(&STACK[0x268]);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2B8], 8);
  (STACK[0x2E8])(&STACK[0x2D8]);
  (STACK[0x310])(&STACK[0x300]);
  (STACK[0x348])(&STACK[0x338]);
  _Block_object_dispose(&STACK[0x360], 8);
  (STACK[0x390])(&STACK[0x380]);
  _Block_object_dispose(&STACK[0x3A8], 8);
  (STACK[0x3D8])(&STACK[0x3C8]);
  _Block_object_dispose(&STACK[0x3F0], 8);
  _Unwind_Resume(a1);
}

double matrixForImageRotation(uint64_t a1)
{
  v1 = 0.0;
  if ((a1 - 1) <= 2)
  {
    v1 = flt_1C25C8718[a1 - 1];
  }

  v2 = __sincosf_stret(v1);
  *&v3 = v2.__cosval;
  *(&v3 + 1) = -v2.__sinval;
  return v3;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_7()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_6 = result;
  return result;
}

uint64_t getMTLPixelFormat(uint64_t a1, uint64_t a2)
{
  if (a1 <= 1278226487)
  {
    if (a1 == 843264104)
    {
      return 65;
    }

    if (a1 == 1111970369)
    {
      return 80;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x4C303038:
        return 10;
      case 0x52476841:
        return 115;
      case 0x52474241:
        return 70;
    }
  }

  v14 = v2;
  v15 = v3;
  if (ARShouldUseLogTypeError_onceToken_6 != -1)
  {
    [ARDepthTechnique initWithPrioritization:temporalSmoothing:];
  }

  v5 = ARShouldUseLogTypeError_internalOSVersion_6;
  v6 = _ARLogGeneral_3(a1);
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v8 = "error unsupported pixelformat";
      v9 = &v13;
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_19:
      _os_log_impl(&dword_1C241C000, v10, v11, v8, v9, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v12 = 0;
    v8 = "Error: error unsupported pixelformat";
    v9 = &v12;
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_19;
  }

  return 0;
}

void sub_1C2454EE4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void std::vector<ARTexturedPlane>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ARTexturedPlane>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ARTexturedPlane>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; i -= 224)
  {

    std::__tree<std::array<unsigned char,16ul>>::destroy(i - 32, *(i - 24));
  }

  *(result + 8) = a2;
}

void std::__tree<std::array<unsigned char,16ul>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::array<unsigned char,16ul>>::destroy(a1, *a2);
    std::__tree<std::array<unsigned char,16ul>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(a1, a2[1]);

    std::__tree<std::array<unsigned char,16ul>>::destroy((a2 + 30), a2[31]);

    operator delete(a2);
  }
}

float arkit::ExponentialSmoother<float>::step(uint64_t a1, float *a2, float a3, float a4, float a5)
{
  if (a5 <= 0.0 || a5 > 1.0)
  {
    arkit::ExponentialSmoother<float>::step();
  }

  if (a3 <= 0.0)
  {
    arkit::ExponentialSmoother<float>::step();
  }

  if (a4 <= 0.0)
  {
    arkit::ExponentialSmoother<float>::step();
  }

  v8 = *a2;
  if (*(a1 + 4) == 1)
  {
    v9 = a4 / log(1.0 - a5);
    v10 = expf(a3 / v9);
    v8 = ((1.0 - (1.0 - v10)) * *a1) + ((1.0 - v10) * v8);
  }

  *a1 = v8;
  *(a1 + 4) = 1;
  return v8;
}

void sub_1C2456164(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void sub_1C24563D0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  MEMORY[0x1C691A790](v24, 0x1020C405A8B1BAELL, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<arkit::Landmark>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      std::allocator<arkit::Landmark>::allocate_at_least[abi:ne200100](a1, a2);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }
}

void sub_1C2456508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<arkit::Landmark>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 8) = *(v2 + 8);
      v2 += 12;
      v5 += 12;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void std::allocator<arkit::Landmark>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<arkit::Landmark>::__emplace_back_slow_path<arkit::Landmark const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    std::allocator<arkit::Landmark>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 12 * v2;
  __p = 0;
  v11 = v7;
  v13 = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  v12 = 12 * v2 + 12;
  std::vector<arkit::Landmark>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 12) % 0xCuLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1C2456870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2456930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<arkit::FaceTrackingData>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<arkit::FaceTrackingData *,std::shared_ptr<arkit::FaceTrackingData>::__shared_ptr_default_delete<arkit::FaceTrackingData,arkit::FaceTrackingData>,std::allocator<arkit::FaceTrackingData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691A790);
}

uint64_t std::__shared_ptr_pointer<arkit::FaceTrackingData *,std::shared_ptr<arkit::FaceTrackingData>::__shared_ptr_default_delete<arkit::FaceTrackingData,arkit::FaceTrackingData>,std::allocator<arkit::FaceTrackingData>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<arkit::FaceTrackingData>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 40);
    if (v2)
    {
      *(a2 + 48) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1C691A790);
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_4()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_3()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

void ___ZL15_ARLogTechniquev_block_invoke_1()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

id _ARLogTechnique_1(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_1 != -1)
  {
    _ARLogTechnique_cold_1_1();
  }

  v2 = _ARLogTechnique_logObj_1;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_8()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_7 = result;
  return result;
}

id _ARLogTechnique_2(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_3 != -1)
  {
    _ARLogTechnique_cold_1_2();
  }

  v2 = _ARLogTechnique_logObj_3;

  return v2;
}

id _ARLogTechnique_3(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_4 != -1)
  {
    _ARLogTechnique_cold_1_3();
  }

  v2 = _ARLogTechnique_logObj_4;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_9()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_8 = result;
  return result;
}

void sub_1C2463768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  v32 = *(v30 - 128);
  if (v32)
  {
    *(v30 - 120) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void ___ZL15_ARLogTechniquev_block_invoke_2()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

void ___ZL13_ARLogGeneralv_block_invoke_4()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_5()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void std::__shared_ptr_emplace<arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>>::__shared_ptr_emplace[abi:ne200100]<int,std::allocator<arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>>,0>(void *a1, int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4205580;
  arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>::KeyMapBuffer();
}

void std::__shared_ptr_emplace<arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4205580;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691A790);
}

void **std::__shared_ptr_emplace<arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>>::__on_zero_shared(uint64_t a1)
{
  std::deque<void const*>::~deque[abi:ne200100]((a1 + 64));

  return std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::~__hash_table((a1 + 24));
}

uint64_t std::deque<void const*>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<void const**>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<void const**>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void **std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<float>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<float>::__append(this, __sz - v2);
  }
}

void sub_1C2466084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  v17 = *(v15 - 48);
  if (v17)
  {
    *(v15 - 40) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2466108(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ARUndistortionMapping;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1C2466340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C24663C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ARImageDistortionCorrectionTechnique;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void std::vector<float>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C24682C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1C2468338(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL15_ARLogTechniquev_block_invoke_3()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_6()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

id _ARLogTechnique_4(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_5 != -1)
  {
    _ARLogTechnique_cold_1_4();
  }

  v2 = _ARLogTechnique_logObj_5;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_10()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_9 = result;
  return result;
}

id _ARLogTechnique_5(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_6 != -1)
  {
    _ARLogTechnique_cold_1_5();
  }

  v2 = _ARLogTechnique_logObj_6;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_11()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_10 = result;
  return result;
}

id _ARLogTechnique_6(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_7 != -1)
  {
    _ARLogTechnique_cold_1_6();
  }

  v2 = _ARLogTechnique_logObj_7;

  return v2;
}

void sub_1C246C5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void (*)(uint64_t *, uint64_t));
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  va_copy(va3, va2);
  v17 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  v21 = va_arg(va3, void);
  v7(va, a2);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Block_object_dispose(va3, 8);
  _Unwind_Resume(a1);
}

uint64_t __ARShouldUseLogTypeError_block_invoke_12()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_11 = result;
  return result;
}

void sub_1C246EFEC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ARMLImageProcessingTechnique;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void std::vector<espresso_buffer_t>::resize(void *result, unint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<espresso_buffer_t>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 168 * a2;
  }
}

void std::vector<__CVPixelBufferPool *>::resize(void *result, unint64_t a2, __n128 a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<__CVPixelBufferPool *>::__append(result, a2 - v3, a3);
  }
}

void sub_1C2472E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_7()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_5()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

void ___ZL15_ARLogTechniquev_block_invoke_4()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

void std::vector<espresso_buffer_t>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCF3CF3CF3CF3CF3DLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 168 * ((168 * a2 - 168) / 0xA8) + 168;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCF3CF3CF3CF3CF3DLL * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x186186186186186)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v7 = 0xCF3CF3CF3CF3CF3DLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0xC30C30C30C30C3)
    {
      v9 = 0x186186186186186;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::allocator<espresso_buffer_t>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 168 * v6;
    v12 = 168 * ((168 * a2 - 168) / 0xA8) + 168;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::allocator<espresso_buffer_t>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<__CVPixelBufferPool *>::__append(uint64_t a1, unint64_t a2, __n128 a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v6 += 8 * a2;
    }

    *(a1 + 8) = v6;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v9 = v5 - *a1;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<__CVPixelBufferPool *>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    v12 = &v11[8 * a2];
    v13 = *(a1 + 8) - *a1;
    v14 = &v11[-v13];
    memcpy(&v11[-v13], *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void std::allocator<__CVPixelBufferPool *>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

id _ARLogTechnique_7(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_8 != -1)
  {
    _ARLogTechnique_cold_1_7();
  }

  v2 = _ARLogTechnique_logObj_8;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_13()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_12 = result;
  return result;
}

void sub_1C247411C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___ZL15_ARLogTechniquev_block_invoke_5()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_8()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_6()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

id _ARLogTechnique_8(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_9 != -1)
  {
    _ARLogTechnique_cold_1_8();
  }

  v2 = _ARLogTechnique_logObj_9;

  return v2;
}

id _ARLogTechnique_9(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_10 != -1)
  {
    _ARLogTechnique_cold_1_9();
  }

  v2 = _ARLogTechnique_logObj_10;

  return v2;
}

id _ARLogGeneral_4(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_4 != -1)
  {
    _ARLogGeneral_cold_1_4();
  }

  v2 = _ARLogGeneral_logObj_4;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_14()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_13 = result;
  return result;
}

void arkit::computeBoundingBoxes(uint64_t a1, void *a2, uint64x2_t **a3, uint64x2_t ***a4, uint64x2_t *a5)
{
  v75 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v62 = *(a1 + 8);
  v59 = v9;
  v10 = [v9 detectedObjects];
  std::vector<arkit::IntRect>::reserve(a3, [v10 count]);

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v11 = [v59 detectedObjects];
  v58 = a4;
  v12 = [v11 countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (v12)
  {
    v13 = *v71;
    v60 = vcvtq_f64_u64(v62);
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v71 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v70 + 1) + 8 * i) boundingBox];
        v16.f64[0] = v15;
        v16.f64[1] = v17;
        v18 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(v16, v60)));
        v19 = vextq_s8(v18, v18, 8uLL);
        v22 = vcvtpd_u64_f64((v15 + v21) * v60.f64[0]);
        v23.i64[0] = vcvtpd_u64_f64((v17 + v20) * v60.f64[1]);
        v23.i64[1] = v22;
        v25 = a3[1];
        v24 = a3[2];
        if (v25 >= v24)
        {
          v61 = v23;
          v63 = v19;
          v27 = (v25 - *a3) >> 5;
          v28 = v27 + 1;
          if ((v27 + 1) >> 59)
          {
            _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
          }

          v29 = v24 - *a3;
          if (v29 >> 4 > v28)
          {
            v28 = v29 >> 4;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFE0)
          {
            v30 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v28;
          }

          if (v30)
          {
            std::allocator<arkit::IntRect>::allocate_at_least[abi:ne200100](a3, v30);
          }

          v31 = (32 * v27);
          *v31 = v19;
          v31[1] = v23;
          i64 = 32 * v27 + 32;
          v32 = a3[1] - *a3;
          v33 = 32 * v27 - v32;
          memcpy(v31 - v32, *a3, v32);
          v34 = *a3;
          *a3 = v33;
          a3[1] = i64;
          a3[2] = 0;
          if (v34)
          {
            operator delete(v34);
          }

          v23 = v61;
          v19 = v63;
        }

        else
        {
          *v25 = v19;
          v25[1] = v23;
          i64 = v25[2].i64;
        }

        a3[1] = i64;
        v35 = vbslq_s8(vcgtq_u64(a5[1], v23), a5[1], v23);
        *a5 = vbslq_s8(vcgtq_u64(*a5, v19), v19, *a5);
        a5[1] = v35;
      }

      v12 = [v11 countByEnumeratingWithState:&v70 objects:v74 count:16];
    }

    while (v12);
  }

  std::vector<arkit::BoundingBoxGroup>::reserve(v58, ((a3[1] - *a3) >> 5) >> 1);
  __p = 0;
  v65 = 0;
  v66 = 0;
  *&v36 = -1;
  *(&v36 + 1) = -1;
  v67 = v36;
  v68 = 0;
  v69 = 0;
  std::vector<arkit::BoundingBoxGroup::Element>::reserve(&__p, (a3[1] - *a3) >> 5);
  v37 = *a3;
  v38 = a3[1];
  if (*a3 != v38)
  {
    do
    {
      v39 = *v58;
      v40 = v58[1];
      if (*v58 != v40)
      {
        while (1)
        {
          v41 = *v39;
          v42 = v39[1];
          if (*v39 != v42)
          {
            break;
          }

LABEL_26:
          v39 += 8;
          if (v39 == v40)
          {
            goto LABEL_30;
          }
        }

        while (1)
        {
          v43 = vorrq_s8(vandq_s8(vcgeq_u64(*v37, v41[1]), vcgtq_u64(*v37, *v41)), vandq_s8(vcgeq_u64(*v41, v37[1]), vcgtq_u64(*v41, *v37)));
          if ((vorrq_s8(vdupq_laneq_s64(v43, 1), v43).u64[0] & 0x8000000000000000) == 0)
          {
            break;
          }

          v41 += 7;
          if (v41 == v42)
          {
            goto LABEL_26;
          }
        }
      }

      if (v39 == v40)
      {
LABEL_30:
        if (&v37[2] == v38)
        {
LABEL_31:
          v44 = v38;
        }

        else
        {
          v45 = v37 + 2;
          while (1)
          {
            v46 = v45[1];
            v47 = vorrq_s8(vandq_s8(vcgeq_u64(*v37, v46), vcgtq_u64(*v37, *v45)), vandq_s8(vcgeq_u64(*v45, v37[1]), vcgtq_u64(*v45, *v37)));
            if ((vorrq_s8(vdupq_laneq_s64(v47, 1), v47).u64[0] & 0x8000000000000000) == 0)
            {
              break;
            }

            v48 = __p;
            if (__p != v65)
            {
              do
              {
                v49 = vorrq_s8(vandq_s8(vcgeq_u64(*v45, v48[1]), vcgtq_u64(*v45, *v48)), vandq_s8(vcgeq_u64(*v48, v46), vcgtq_u64(*v48, *v45)));
                if ((vorrq_s8(vdupq_laneq_s64(v49, 1), v49).u64[0] & 0x8000000000000000) == 0)
                {
                  goto LABEL_39;
                }

                v48 += 7;
              }

              while (v48 != v65);
            }

            v45 += 2;
            if (v45 == v38)
            {
              goto LABEL_31;
            }
          }

LABEL_39:
          arkit::BoundingBoxGroup::append(&__p, v45);
          if (v45 == v38 || (v50 = v45 + 2, &v45[2] == v38))
          {
            v44 = v45;
          }

          else
          {
            v44 = v45;
            do
            {
              v51 = v45[2];
              v52 = v45[3];
              v45 = v50;
              v53 = vorrq_s8(vandq_s8(vcgeq_u64(v51, v37[1]), vcgtq_u64(v51, *v37)), vandq_s8(vcgeq_u64(*v37, v52), vcgtq_u64(*v37, v51)));
              if ((vorrq_s8(vdupq_laneq_s64(v53, 1), v53).u64[0] & 0x8000000000000000) != 0)
              {
                for (j = __p; j != v65; j += 7)
                {
                  v55 = vorrq_s8(vandq_s8(vcgeq_u64(v51, j[1]), vcgtq_u64(v51, *j)), vandq_s8(vcgeq_u64(*j, v52), vcgtq_u64(*j, v51)));
                  if ((vorrq_s8(vdupq_laneq_s64(v55, 1), v55).u64[0] & 0x8000000000000000) == 0)
                  {
                    goto LABEL_43;
                  }
                }

                v56 = v45[1];
                *v44 = *v45;
                *(v44 + 1) = v56;
                v44 += 32;
              }

              else
              {
LABEL_43:
                arkit::BoundingBoxGroup::append(&__p, v45);
              }

              v50 = v45 + 2;
            }

            while (&v45[2] != v38);
          }
        }

        if (v65 == __p)
        {
          v37 += 2;
        }

        else
        {
          arkit::BoundingBoxGroup::append(&__p, v37);
          v44 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<arkit::IntRect *>,std::__wrap_iter<arkit::IntRect *>>(v37->i8, v37[2].i8, v44);
          std::vector<arkit::BoundingBoxGroup>::push_back[abi:ne200100](v58, &__p);
          v65 = __p;
          *&v57 = -1;
          *(&v57 + 1) = -1;
          v67 = v57;
          v68 = 0;
          v69 = 0;
        }
      }

      else
      {
        arkit::BoundingBoxGroup::append(v39, v37);
        v44 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<arkit::IntRect *>,std::__wrap_iter<arkit::IntRect *>>(v37->i8, v37[2].i8, v38);
      }

      v38 = v44;
    }

    while (v37 != v44);
    if (v37 != a3[1])
    {
      a3[1] = v37;
    }
  }

  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }
}

void sub_1C247BAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<arkit::IntRect>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::allocator<arkit::IntRect>::allocate_at_least[abi:ne200100](a1, a2);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }
}

uint64_t *std::vector<arkit::BoundingBoxGroup>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      std::allocator<arkit::BoundingBoxGroup>::allocate_at_least[abi:ne200100](result, a2);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void sub_1C247BCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<arkit::BoundingBoxGroup>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<arkit::BoundingBoxGroup::Element>::reserve(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      std::allocator<arkit::BoundingBoxGroup::Element>::allocate_at_least[abi:ne200100](a1, a2);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }
}

int8x16_t arkit::BoundingBoxGroup::append(uint64_t a1, uint64x2_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v4->i64 - *a1) >> 4);
    v9 = v8 + 1;
    if ((v8 + 1) > 0x249249249249249)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x124924924924924)
    {
      v11 = 0x249249249249249;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<arkit::BoundingBoxGroup::Element>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v12 = a2[1];
    v13 = 112 * v8;
    *v13 = *a2;
    *(v13 + 16) = v12;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 2139095039;
    *(v13 + 72) = 0;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0;
    *(v13 + 96) = 0;
    *(v13 + 104) = 2139095039;
    i64 = 112 * v8 + 112;
    v14 = *(a1 + 8) - *a1;
    v15 = 112 * v8 - v14;
    memcpy((v13 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = i64;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v4[2].i32[0] = 0;
    v4[2].i64[1] = 0;
    v4[3].i32[0] = 0;
    v4[3].i64[1] = 0;
    v4[4].i32[0] = 2139095039;
    v4[4].i32[2] = 0;
    v4[5].i64[0] = 0;
    v4[5].i32[2] = 0;
    v4[6].i32[2] = 2139095039;
    i64 = v4[7].i64;
    v4[6].i64[0] = 0;
  }

  *(a1 + 8) = i64;
  v17 = *(a1 + 48);
  *(a1 + 32) = vbslq_s8(vcgtq_u64(*(a1 + 32), *a2), *a2, *(a1 + 32));
  result = vbslq_s8(vcgtq_u64(v17, a2[1]), v17, a2[1]);
  *(a1 + 48) = result;
  return result;
}

uint64_t std::vector<arkit::BoundingBoxGroup>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<arkit::BoundingBoxGroup>::__emplace_back_slow_path<arkit::BoundingBoxGroup>(a1, a2);
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v4 = *(a2 + 48);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = v4;
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

void sub_1C247C17C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ARPersonOcclusionTechnique;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1C247E2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  *(v36 - 176) = &a31;
  std::vector<arkit::BoundingBoxGroup>::__destroy_vector::operator()[abi:ne200100]((v36 - 176));
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::vector<int>::pointer arkit::RobustExpFilter<float>::filter(std::vector<int> *this, float *a2, size_t a3)
{
  result = this->__begin_;
  end = this->__end_;
  v8 = end - result;
  if (v8 == a3 >> 2)
  {
    if (end != result)
    {
      v9 = 0;
      begin = this[1].__begin_;
      do
      {
        v11 = *&result[v9];
        *&v12 = ((v11 + (*&this[3].__begin_ * *&begin[v9])) * 0.7) + (a2[v9] * 0.3);
        result[v9] = v12;
        *&begin[v9] = ((1.0 - *&this[3].__end_cap_.__value_) * *&begin[v9]) + (*&this[3].__end_cap_.__value_ * (*&v12 - v11));
        ++v9;
      }

      while (v8 > v9);
    }
  }

  else
  {
    v14 = a3 >> 2;
    std::vector<float>::resize(this, a3 >> 2);
    memcpy(this->__begin_, a2, a3);
    v16 = 0;
    std::vector<float>::resize(&this[1].__begin_, v14, &v16, v15);
    return this->__begin_;
  }

  return result;
}

void *arkit::fillInstanceDepthBufferOutsideAllDetections(void *result, unsigned __int8 **a2, void *a3, uint64_t *a4)
{
  v4 = a4[1];
  if (v4)
  {
    v5 = 0;
    v6 = *a2;
    v7 = *result;
    v8 = result[3];
    v9 = *a3;
    v10 = a3[3];
    v12 = a2[2];
    v11 = a2[3];
    do
    {
      if (v12)
      {
        v13 = v6;
        v14 = v7;
        v15 = v9;
        v16 = v12;
        do
        {
          if (*v13++)
          {
            *v15 = *v14;
          }

          ++v15;
          ++v14;
          --v16;
        }

        while (v16);
        v4 = a4[1];
      }

      ++v5;
      v9 = (v9 + v10);
      v7 = (v7 + v8);
      v6 = &v11[v6];
    }

    while (v4 > v5);
  }

  v18 = a4[3];
  if (v4 < v18)
  {
    v19 = result[3];
    v20 = a3[3];
    v22 = a2[2];
    v21 = a2[3];
    v23 = (*a3 + v4 * v20);
    v24 = (*result + v4 * v19);
    v25 = &(*a2)[v4 * v21];
    do
    {
      v26 = *a4;
      if (*a4)
      {
        v27 = v25;
        v28 = v24;
        v29 = v23;
        do
        {
          if (*v27++)
          {
            *v29 = *v28;
          }

          ++v29;
          ++v28;
          --v26;
        }

        while (v26);
      }

      v31 = a4[2];
      if (v31 >= v22)
      {
        v18 = a4[3];
      }

      else
      {
        do
        {
          if (v25[v31])
          {
            v23[v31] = v24[v31];
          }

          ++v31;
        }

        while (v22 != v31);
        v18 = a4[3];
      }

      ++v4;
      v23 = (v23 + v20);
      v24 = (v24 + v19);
      v25 = &v21[v25];
    }

    while (v4 < v18);
  }

  v32 = a2[1];
  if (v18 < v32)
  {
    v33 = result[3];
    v34 = a3[3];
    v36 = a2[2];
    v35 = a2[3];
    v37 = (*a3 + v18 * v34);
    v38 = (*result + v18 * v33);
    v39 = &(*a2)[v18 * v35];
    do
    {
      if (v36)
      {
        v40 = v39;
        result = v38;
        v41 = v37;
        v42 = v36;
        do
        {
          if (*v40++)
          {
            *v41 = *result;
          }

          ++v41;
          result = (result + 4);
          --v42;
        }

        while (v42);
      }

      ++v18;
      v37 = (v37 + v34);
      v38 = (v38 + v33);
      v39 = &v35[v39];
    }

    while (v18 != v32);
  }

  return result;
}

void sub_1C247EA20(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void std::allocator<arkit::IntRect>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator<arkit::BoundingBoxGroup>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<arkit::BoundingBoxGroup>,arkit::BoundingBoxGroup*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v7 = *(v6 + 48);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = v7;
      v6 += 64;
      a4 += 64;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v8;
        operator delete(v8);
      }

      v5 += 64;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<arkit::BoundingBoxGroup>,arkit::BoundingBoxGroup*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<arkit::BoundingBoxGroup>,arkit::BoundingBoxGroup*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<arkit::BoundingBoxGroup>,arkit::BoundingBoxGroup*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<arkit::BoundingBoxGroup>,arkit::BoundingBoxGroup*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 64);
      v3 -= 64;
      v4 = v5;
      if (v5)
      {
        *(v1 - 56) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<arkit::BoundingBoxGroup>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<arkit::BoundingBoxGroup>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<arkit::BoundingBoxGroup>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 64);
    *(a1 + 16) = v2 - 64;
    if (v5)
    {
      *(v2 - 56) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }
}

void std::allocator<arkit::BoundingBoxGroup::Element>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<arkit::IntRect *>,std::__wrap_iter<arkit::IntRect *>>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 32 == a2)
    {
      v9 = *__src;
      v11 = *(__src + 1);
      memmove(__src, __src + 32, v6);
      v4 = &__src[v6];
      *v4 = v9;
      *(v4 + 1) = v11;
    }

    else if (a2 + 32 == a3)
    {
      v4 = __src + 32;
      v10 = *(a3 - 2);
      v12 = *(a3 - 1);
      v7 = a3 - 32 - __src;
      if (a3 - 32 != __src)
      {
        memmove(__src + 32, __src, v7);
      }

      *__src = v10;
      *(__src + 1) = v12;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<arkit::IntRect *>>(__src, a2, a3);
    }
  }

  return v4;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<arkit::IntRect *>>(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 5;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 5)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 32;
      v6 = a2 + 32;
      do
      {
        v8 = *(v5 - 2);
        v7 = *(v5 - 1);
        v9 = *(v6 - 1);
        *(v5 - 2) = *(v6 - 2);
        *(v5 - 1) = v9;
        *(v6 - 2) = v8;
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 32;
        v10 = v6 == a3;
        v6 += 32;
      }

      while (!v10);
    }
  }

  else
  {
    v11 = v4 >> 5;
    v12 = (a2 - a1) >> 5;
    do
    {
      v13 = v12;
      v12 = v11;
      v11 = v13 % v11;
    }

    while (v11);
    v14 = &a1[32 * v12];
    do
    {
      v15 = *(v14 - 2);
      v16 = *(v14 - 1);
      v14 -= 32;
      v27 = v16;
      v17 = &v14[a2 - a1];
      v18 = v14;
      do
      {
        v19 = v17;
        v20 = *(v17 + 1);
        *v18 = *v17;
        *(v18 + 1) = v20;
        v21 = a3 - v17;
        v17 += 32 * v3;
        v22 = __OFSUB__(v3, v21 >> 5);
        v24 = v3 - (v21 >> 5);
        v23 = (v24 < 0) ^ v22;
        v25 = &a1[32 * v24];
        if (!v23)
        {
          v17 = v25;
        }

        v18 = v19;
      }

      while (v17 != v14);
      *v19 = v15;
      *(v19 + 1) = v27;
    }

    while (v14 != a1);
    return &a1[v4];
  }

  return a2;
}

uint64_t std::vector<arkit::BoundingBoxGroup>::__emplace_back_slow_path<arkit::BoundingBoxGroup>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::allocator<arkit::BoundingBoxGroup>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v8 = v2 << 6;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v9 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v9;
  *&v18 = (v2 << 6) + 64;
  v10 = a1[1];
  v11 = (v2 << 6) + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<arkit::BoundingBoxGroup>,arkit::BoundingBoxGroup*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<arkit::BoundingBoxGroup>::~__split_buffer(&v16);
  return v15;
}

void sub_1C247F03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<arkit::BoundingBoxGroup>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_9()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL15_ARLogTechniquev_block_invoke_6()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

void std::vector<arkit::BoundingBoxGroup>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<arkit::BoundingBoxGroup>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<arkit::BoundingBoxGroup>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 64);
      v4 -= 64;
      v5 = v6;
      if (v6)
      {
        *(v2 - 56) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *std::__shared_ptr_emplace<arkit::RobustExpFilter<float>>::__shared_ptr_emplace[abi:ne200100]<double,double,double,double,double,double,double,double,std::allocator<arkit::RobustExpFilter<float>>,0>(void *a1, double *a2, double *a3, double *a4, double *a5, double *a6, uint64_t a7, double *a8, double *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4205AD0;
  std::construct_at[abi:ne200100]<arkit::RobustExpFilter<float>,double,double,double,double,double,double,double,double,arkit::RobustExpFilter<float>*>((a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9);
  return a1;
}

void std::__shared_ptr_emplace<arkit::RobustExpFilter<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4205AD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691A790);
}

float32x2_t std::construct_at[abi:ne200100]<arkit::RobustExpFilter<float>,double,double,double,double,double,double,double,double,arkit::RobustExpFilter<float>*>(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, uint64_t a7, double *a8, double *a9)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  v14 = *a8;
  v15 = *a9;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = v9;
  *(a1 + 52) = v10;
  *(a1 + 56) = v11;
  *(a1 + 60) = v12;
  *(a1 + 64) = v13;
  *(a1 + 68) = v14;
  *(a1 + 72) = v14;
  *(a1 + 76) = v15;
  v16 = v11 - v10;
  if ((v11 - v10) < 0.000001)
  {
    v16 = 0.000001;
  }

  *(a1 + 80) = 1.0 / v16;
  v17.f32[0] = v13 - v12;
  if ((v13 - v12) < 0.000001)
  {
    v17.f32[0] = 0.000001;
  }

  v17.f32[1] = v14 + 1.0;
  __asm { FMOV            V1.2S, #1.0 }

  result = vdiv_f32(_D1, v17);
  *(a1 + 84) = result;
  return result;
}

void std::__destroy_at[abi:ne200100]<arkit::RobustExpFilter<float>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void std::vector<float>::resize(void *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (result[1] - *result) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(result, a2 - v4, a3, a4);
  }
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_1C25C8A20)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_1C25C8A10)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_1C25C8A20)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_1C25C8A10)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

id _ARLogTechnique_10(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_11 != -1)
  {
    _ARLogTechnique_cold_1_10();
  }

  v2 = _ARLogTechnique_logObj_11;

  return v2;
}

id _ARLogGeneral_5(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_5 != -1)
  {
    _ARLogGeneral_cold_1_5();
  }

  v2 = _ARLogGeneral_logObj_5;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_15()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_14 = result;
  return result;
}

BOOL __ARSkipCrashOnCrash_block_invoke()
{
  result = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.skipCrashOnARCrash"];
  ARSkipCrashOnCrash_skipCrashOnCrash = result;
  return result;
}

void sub_1C2480C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ARPlaneEstimationTechnique;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C2481A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void (*a44)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a44(&a42, a2, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    a66 = __p;
    operator delete(__p);
  }

  v70 = *(v68 - 168);
  if (v70)
  {
    *(v68 - 160) = v70;
    operator delete(v70);
  }

  _Unwind_Resume(a1);
}

void ___ZL15_ARLogTechniquev_block_invoke_7()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

uint64_t *std::vector<CV3DSurfaceDetectionPoint3D>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<CV3DSurfaceDetectionPoint3D>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1C2481C80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CV3DSurfaceDetectionPoint3D>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<CV3DSurfaceDetectionPoint3D>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::allocator<CV3DSurfaceDetectionPoint3D>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

id ARStreamIdentifierForDeviceTypeAndPosition(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 isEqualToString:*MEMORY[0x1E6986930]])
  {
    v4 = *MEMORY[0x1E6990C88];
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%ld", v3, a2];
  }

  v5 = v4;

  return v5;
}

id AVCaptureDeviceTypeFromST2StreamIdentifier(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x1E6986950];
  if ([v1 isEqualToString:*MEMORY[0x1E6990C90]])
  {
    v3 = *MEMORY[0x1E6986948];

    v2 = v3;
  }

  if (([v1 isEqualToString:@"JasperCamera"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E6990C88]))
  {
    v4 = *MEMORY[0x1E6986930];

    v2 = v4;
  }

  return v2;
}

id AVCaptureDeviceTypeFromStreamIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"."];
  v3 = [v2 firstObject];

  if ([v3 containsString:@"AVCaptureDeviceType"])
  {
    if ([v3 isEqualToString:@"AVCaptureDeviceTypeBuiltInSuperWideAngleCamera"])
    {
      v4 = *MEMORY[0x1E6986948];

      v3 = v4;
    }

    v5 = v3;
    v3 = v5;
  }

  else
  {
    v5 = AVCaptureDeviceTypeFromST2StreamIdentifier(v1);
  }

  return v5;
}

uint64_t AVCaptureDevicePositionFromST2StreamIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E6990C80]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E6990C90]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"JasperCamera"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x1E6990C88]];
  }

  return v2;
}

uint64_t AVCaptureDevicePositionFromStreamIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"AVCaptureDeviceType"])
  {
    v2 = [v1 componentsSeparatedByString:@"."];

    if ([v2 count] < 2)
    {
      v4 = 0;
    }

    else
    {
      v3 = [v2 objectAtIndexedSubscript:1];
      v4 = [v3 integerValue];
    }

    v1 = v2;
  }

  else
  {
    v4 = AVCaptureDevicePositionFromST2StreamIdentifier(v1);
  }

  return v4;
}

uint64_t ARDeviceOrientationForCameraPositionAndVideoTransform(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v4;
  *&t1.tx = a2[2];
  v9 = *ARVideoTransformPortrait;
  if (CGAffineTransformEqualToTransform(&t1, &v9))
  {
    return 1;
  }

  v6 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v6;
  *&t1.tx = a2[2];
  v9 = *ARVideoTransformPortraitUpsideDown;
  if (CGAffineTransformEqualToTransform(&t1, &v9))
  {
    return 2;
  }

  v7 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v7;
  *&t1.tx = a2[2];
  v9 = *ARVideoTransformLandscapeLeft;
  if (CGAffineTransformEqualToTransform(&t1, &v9))
  {
    if (a1 == 2)
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v8 = a2[1];
    *&t1.a = *a2;
    *&t1.c = v8;
    *&t1.tx = a2[2];
    v9 = *ARVideoTransformLandscapeRight;
    if (CGAffineTransformEqualToTransform(&t1, &v9))
    {
      if (a1 == 2)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }

    else if (a1 == 2)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }
}

__n128 ARVideoTransformForDeviceOrientation@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 2)
  {
    if (a1 == 4)
    {
      v2 = ARVideoTransformLandscapeRight;
      goto LABEL_9;
    }

LABEL_7:
    v2 = ARVideoTransformLandscapeLeft;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v2 = ARVideoTransformPortrait;
    goto LABEL_9;
  }

  if (a1 != 2)
  {
    goto LABEL_7;
  }

  v2 = ARVideoTransformPortraitUpsideDown;
LABEL_9:
  v3 = *(v2 + 1);
  *a2 = *v2;
  *(a2 + 16) = v3;
  result = *(v2 + 2);
  *(a2 + 32) = result;
  return result;
}

id ARMetadataIdentifierForARRecordableResultsClass(objc_class *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromClass(a1);
  v3 = [v1 stringWithFormat:@"%@%@", @"mdta/com.apple.arkit.result.", v2];

  return v3;
}

id ARMetadataIdentifierForARSensorDataClass(uint64_t a1, uint64_t a2)
{
  if (objc_opt_class() == a1)
  {
    v5 = MEMORY[0x1E698BF38];
    v6 = MEMORY[0x1E698BF60];
    goto LABEL_9;
  }

  if (objc_opt_class() == a1)
  {
    v5 = MEMORY[0x1E698BED8];
    v6 = MEMORY[0x1E698BF50];
LABEL_9:
    if (!a2)
    {
      v5 = v6;
    }

    goto LABEL_11;
  }

  if (objc_opt_class() == a1)
  {
    v5 = MEMORY[0x1E698BF40];
  }

  else
  {
    if (objc_opt_class() != a1)
    {
      if (objc_opt_class() != a1)
      {
        v4 = 0;
        goto LABEL_12;
      }

      v5 = MEMORY[0x1E698BF10];
      v6 = MEMORY[0x1E698BF58];
      goto LABEL_9;
    }

    v5 = MEMORY[0x1E698BF18];
  }

LABEL_11:
  v4 = *v5;
LABEL_12:

  return v4;
}

id _ARLogTechnique_11(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_12 != -1)
  {
    _ARLogTechnique_cold_1_11();
  }

  v2 = _ARLogTechnique_logObj_12;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_16()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_15 = result;
  return result;
}

id _ARLogTechnique_12(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_13 != -1)
  {
    _ARLogTechnique_cold_1_12();
  }

  v2 = _ARLogTechnique_logObj_13;

  return v2;
}

void sub_1C2489634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void (*a29)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void (*a34)(char *), uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a29(&a27, a2, a3, a4, a5, a6, a7, a8);
  a34(&a32);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose((v65 - 208), 8);
  a64(&a62);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Unwind_Resume(a1);
}

id _createAllocationError()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696A578];
  v4[0] = @"Failed to allocate buffer for scene depth";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = ARErrorWithCodeAndUserInfo(151, v0);

  return v1;
}

id _createADError(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = a1;
  v1 = MEMORY[0x1E695DF20];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = ARErrorWithCodeAndUserInfo(151, v3);

  return v4;
}

id _createResamplingError(int a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to resample scene depth output buffer with error %li", a1];
  v5 = *MEMORY[0x1E696A578];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = ARErrorWithCodeAndUserInfo(151, v2);

  return v3;
}

id _ARLogGeneral_6(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_6 != -1)
  {
    _ARLogGeneral_cold_1_6();
  }

  v2 = _ARLogGeneral_logObj_6;

  return v2;
}

id _createPoolAllocationError(int a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to allocate buffer pool for scene depth with error %li", a1];
  v5 = *MEMORY[0x1E696A578];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = ARErrorWithCodeAndUserInfo(151, v2);

  return v3;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_17()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_16 = result;
  return result;
}

void sub_1C248AE90(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ARSIPersonDetectionTechnique;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void ___ZL15_ARLogTechniquev_block_invoke_8()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_10()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_7()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

BOOL ___ZL18ARSkipCrashOnCrashv_block_invoke_1()
{
  result = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.skipCrashOnARCrash"];
  ARSkipCrashOnCrash(void)::skipCrashOnCrash = result;
  return result;
}

id _ARLogTechnique_13(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_14 != -1)
  {
    _ARLogTechnique_cold_1_13();
  }

  v2 = _ARLogTechnique_logObj_14;

  return v2;
}

id _ARLogGeneral_7(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_7 != -1)
  {
    _ARLogGeneral_cold_1_7();
  }

  v2 = _ARLogGeneral_logObj_7;

  return v2;
}

void sub_1C248C984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  a14(&a12, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ARShouldUseLogTypeError_block_invoke_18()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_17 = result;
  return result;
}

BOOL __ARSkipCrashOnCrash_block_invoke_0()
{
  result = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.skipCrashOnARCrash"];
  ARSkipCrashOnCrash_skipCrashOnCrash_0 = result;
  return result;
}

id _ARLogTechnique_14(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_15 != -1)
  {
    _ARLogTechnique_cold_1_14();
  }

  v2 = _ARLogTechnique_logObj_15;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_19()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_18 = result;
  return result;
}

void sub_1C248EA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C248ED58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C248F0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _ARLogTechnique_15(uint64_t a1)
{
  if (_ARLogTechnique_onceToken_16 != -1)
  {
    _ARLogTechnique_cold_1_15();
  }

  v2 = _ARLogTechnique_logObj_16;

  return v2;
}

id _ARLogSensor_6(uint64_t a1)
{
  if (_ARLogSensor_onceToken_7 != -1)
  {
    _ARLogSensor_cold_1_6();
  }

  v2 = _ARLogSensor_logObj_7;

  return v2;
}

double simd_matrix4x4(float32x4_t a1)
{
  _S3 = a1.i32[1];
  _S5 = a1.i32[2];
  __asm { FMLS            S2, S5, V0.S[2] }

  _S7 = a1.i32[3];
  __asm { FMLA            S2, S7, V0.S[3] }

  v10 = vmuls_lane_f32(a1.f32[2], a1, 3);
  LODWORD(v11) = _S2;
  *(&v11 + 1) = (v10 + (a1.f32[0] * a1.f32[1])) + (v10 + (a1.f32[0] * a1.f32[1]));
  __asm
  {
    FMLA            S6, S3, V0.S[1]
    FMLA            S6, S7, V0.S[3]
    FMLA            S16, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
    FMLS            S5, S3, V0.S[1]
  }

  return v11;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_20()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_19 = result;
  return result;
}

uint64_t GetCV3DSLAMCameraModelType(uint64_t a1, uint64_t a2)
{
  if (GetCV3DSLAMCameraModelType(void)::onceToken != -1)
  {
    GetCV3DSLAMCameraModelType();
  }

  return GetCV3DSLAMCameraModelType(void)::cameraModelType;
}

uint64_t ___Z26GetCV3DSLAMCameraModelTypev_block_invoke()
{
  result = CV3DSLAMCalibrationDetectRuntimeHardware();
  GetCV3DSLAMCameraModelType(void)::cameraModelType = result;
  return result;
}

uint64_t IsCV3DVIOVideoModeSupported(uint64_t a1, uint64_t a2)
{
  if (GetCV3DSLAMCameraModelType(void)::onceToken != -1)
  {
    GetCV3DSLAMCameraModelType();
  }

  v3 = GetCV3DSLAMCameraModelType(void)::cameraModelType;

  return MEMORY[0x1EEDECDB0](v3, a1);
}

void sub_1C24938F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = ARWorldTrackingTechnique;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C2493DAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C2496F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (*a19)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void (*a24)(char *), uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void (*a29)(char *))
{
  a19(&a17, a2, a3, a4, a5, a6, a7, a8);
  a24(&a22);
  a29(&a27);

  _Unwind_Resume(a1);
}

void sub_1C2497D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_1C2498F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16)
{
  if (a2 == 1)
  {
    [v17 _handleCV3DError:*(__cxa_begin_catch(a1) + 1) withDescription:@"Raycasting error" failTechnique:0];
    __cxa_end_catch();
    JUMPOUT(0x1C2498F5CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1C2499CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void (*a26)(char *), uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void (*a31)(char *))
{
  a26(&a24);
  a31(&a29);

  _Unwind_Resume(a1);
}

void sub_1C249C4C8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1C249E39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void (*a53)(uint64_t *), uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void (*a60)(uint64_t *), uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v66 + 32));
  objc_destroyWeak(&location);

  objc_destroyWeak(&a36);
  objc_destroyWeak(a9);
  objc_destroyWeak(&a48);
  a53(&a51);
  a60(&a58);
  (a65)(&a64);

  _Unwind_Resume(a1);
}

void sub_1C249FB90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  os_unfair_lock_unlock((v1 + v3));
  objc_destroyWeak((v4 - 80));
  _Unwind_Resume(a1);
}

void sub_1C24A0110(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1C24A0A84(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

double ARCascadeTransform(double *a1, double *a2, simd_float4x3 a3, const double *a4, const double *a5)
{
  *a1 = a4[3] * a3.columns[1].f32[0] + *a4 * a3.columns[0].f32[0] + a4[6] * a3.columns[2].f32[0];
  a1[1] = a4[4] * a3.columns[1].f32[0] + a4[1] * a3.columns[0].f32[0] + a4[7] * a3.columns[2].f32[0];
  a1[2] = a4[5] * a3.columns[1].f32[0] + a4[2] * a3.columns[0].f32[0] + a4[8] * a3.columns[2].f32[0];
  a1[3] = a4[3] * a3.columns[1].f32[1] + *a4 * a3.columns[0].f32[1] + a4[6] * a3.columns[2].f32[1];
  a1[4] = a4[4] * a3.columns[1].f32[1] + a4[1] * a3.columns[0].f32[1] + a4[7] * a3.columns[2].f32[1];
  a1[5] = a4[5] * a3.columns[1].f32[1] + a4[2] * a3.columns[0].f32[1] + a4[8] * a3.columns[2].f32[1];
  a1[6] = a4[3] * a3.columns[1].f32[2] + *a4 * a3.columns[0].f32[2] + a4[6] * a3.columns[2].f32[2];
  a1[7] = a4[4] * a3.columns[1].f32[2] + a4[1] * a3.columns[0].f32[2] + a4[7] * a3.columns[2].f32[2];
  a1[8] = a4[5] * a3.columns[1].f32[2] + a4[2] * a3.columns[0].f32[2] + a4[8] * a3.columns[2].f32[2];
  *a2 = a3.columns[3].f32[0] / 1000.0 + *a5 * a3.columns[0].f32[0] + a5[2] * a3.columns[2].f32[0] + a5[1] * a3.columns[1].f32[0];
  a2[1] = a3.columns[3].f32[1] / 1000.0 + *a5 * a3.columns[0].f32[1] + a5[2] * a3.columns[2].f32[1] + a5[1] * a3.columns[1].f32[1];
  result = a3.columns[3].f32[2] / 1000.0 + *a5 * a3.columns[0].f32[2] + a5[2] * a3.columns[2].f32[2] + a5[1] * a3.columns[1].f32[2];
  a2[2] = result;
  return result;
}

void sub_1C24A1818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (*a20)(char *), uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void (*a25)(char *))
{
  a20(&a18);
  a25(&a23);

  _Unwind_Resume(a1);
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_11()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_8()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

void ___ZL15_ARLogTechniquev_block_invoke_9()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

uint64_t initAudioServicesPlaySystemSound(uint64_t a1)
{
  if (AudioToolboxLibrary(void)::sOnce != -1)
  {
    initAudioServicesPlaySystemSound();
  }

  v2 = dlsym(AudioToolboxLibrary(void)::sLib, "AudioServicesPlaySystemSound");
  softLinkAudioServicesPlaySystemSound = v2;

  return v2(a1);
}

void *___ZL19AudioToolboxLibraryv_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox", 2);
  AudioToolboxLibrary(void)::sLib = result;
  return result;
}

void *std::__shared_ptr_emplace<RaycastSession>::__shared_ptr_emplace[abi:ne200100]<CV3DSLAMSession *&,void({block_pointer} {__strong}&)(CV3DRaycastResultMap const*),BOOL,std::allocator<RaycastSession>,0>(void *a1, uint64_t *a2, void **a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4205F98;
  RaycastSession::RaycastSession(a1 + 3, *a2, *a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<RaycastSession>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4205F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691A790);
}

void *std::__shared_ptr_emplace<PlaneDetectionSession>::__shared_ptr_emplace[abi:ne200100]<CV3DSLAMSession *&,PlaneDetectionConfiguration const&,void({block_pointer} {__strong}&)(CV3DPlaneDetectionPlaneList const*),void({block_pointer} {__strong}&)(CV3DPlaneDetectionSingleShotPlaneList const*),std::allocator<PlaneDetectionSession>,0>(void *a1, uint64_t *a2, const PlaneDetectionConfiguration *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4205FE8;
  PlaneDetectionSession::PlaneDetectionSession(a1 + 3, *a2, a3, *a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<PlaneDetectionSession>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4205FE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691A790);
}

void *std::__shared_ptr_emplace<PlaneDetectionSession>::__shared_ptr_emplace[abi:ne200100]<CV3DSLAMSession *&,PlaneDetectionConfiguration const&,void({block_pointer} {__strong}&)(CV3DPlaneDetectionPlaneList const*),std::allocator<PlaneDetectionSession>,0>(void *a1, uint64_t *a2, const PlaneDetectionConfiguration *a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4205FE8;
  PlaneDetectionSession::PlaneDetectionSession(a1 + 3, *a2, a3, *a4, 0);
  return a1;
}

void *std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(uint64_t a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *keys<std::array<unsigned char,16ul>,ARTexturedPlane>@<X0>(void *result@<X0>, uint64_t **a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = (a2 + 1);
  v3 = (result + 1);
  v4 = *result;
  if (*result != result + 1)
  {
    do
    {
      result = std::__tree<std::array<unsigned char,16ul>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::array<unsigned char,16ul> const&>(a2, v4 + 32, v4 + 2);
      v5 = *(v4 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

uint64_t notInLeftButRight<std::array<unsigned char,16ul>>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t **a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = (a3 + 1);
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    v6 = result;
    v7 = result + 8;
    do
    {
      result = std::__tree<std::array<unsigned char,16ul>>::find<std::array<unsigned char,16ul>>(v6, v5 + 25);
      if (v7 == result)
      {
        result = std::__tree<std::array<unsigned char,16ul>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::array<unsigned char,16ul> const&>(a3, v5 + 25, v5 + 25);
      }

      v8 = *(v5 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v5 + 2);
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v4);
  }

  return result;
}

void *intersect<std::array<unsigned char,16ul>>@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = (a3 + 1);
  v4 = (result + 1);
  v5 = *result;
  if (*result != result + 1)
  {
    v7 = (a2 + 8);
    do
    {
      result = std::__tree<std::array<unsigned char,16ul>>::find<std::array<unsigned char,16ul>>(a2, v5 + 25);
      if (v7 != result)
      {
        result = std::__tree<std::array<unsigned char,16ul>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::array<unsigned char,16ul> const&>(a3, v5 + 25, v5 + 25);
      }

      v8 = *(v5 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v5 + 2);
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v4);
  }

  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_9()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

void *std::__tree<std::array<unsigned char,16ul>>::__assign_multi<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::array<unsigned char,16ul>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 25) = *(v9 + 25);
          std::__tree<std::array<unsigned char,16ul>>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::array<unsigned char,16ul>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::array<unsigned char,16ul>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::array<unsigned char,16ul>>::__emplace_multi<std::array<unsigned char,16ul> const&>(v5, (a2 + 25));
  }

  return result;
}

void sub_1C24A86E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::array<unsigned char,16ul>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::array<unsigned char,16ul>>::__node_insert_multi(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (2)
    {
      while (2)
      {
        v3 = v4;
        v5 = 25;
        while (1)
        {
          v6 = *(a2 + v5);
          v7 = *(v3 + v5);
          if (v6 != v7)
          {
            break;
          }

          if (++v5 == 41)
          {
            goto LABEL_9;
          }
        }

        if (v6 < v7)
        {
          v4 = *v3;
          v8 = v3;
          if (*v3)
          {
            continue;
          }

          goto LABEL_12;
        }

        break;
      }

LABEL_9:
      v4 = v3[1];
      if (v4)
      {
        continue;
      }

      break;
    }

    v8 = v3 + 1;
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_12:
  std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__insert_node_at(a1, v3, v8, a2);
  return a2;
}

void *std::__tree<std::array<unsigned char,16ul>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::array<unsigned char,16ul>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::array<unsigned char,16ul>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::array<unsigned char,16ul>>::destroy(*a1, v2);
  }

  return a1;
}

void *std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::array<unsigned char,16ul>>::insert[abi:ne200100]<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<std::array<unsigned char,16ul>>::insert[abi:ne200100]<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::array<unsigned char,16ul>>::__emplace_hint_unique_key_args<std::array<unsigned char,16ul>,std::array<unsigned char,16ul> const&>(v5, (v5 + 8), v4 + 25, v4 + 25);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::array<unsigned char,16ul>>::__emplace_hint_unique_key_args<std::array<unsigned char,16ul>,std::array<unsigned char,16ul> const&>(uint64_t **a1, void *a2, unsigned __int8 *a3, _OWORD *a4)
{
  v4 = *std::__tree<std::array<unsigned char,16ul>>::__find_equal<std::array<unsigned char,16ul>>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<std::array<unsigned char,16ul>>::__find_equal<std::array<unsigned char,16ul>>(void *a1, void *a2, void *a3, void *a4, unsigned __int8 *a5)
{
  if (a1 + 1 == a2)
  {
LABEL_7:
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
    }

    else
    {
      if (v8)
      {
        v9 = *a2;
        do
        {
          v10 = v9;
          v9 = v9[1];
        }

        while (v9);
      }

      else
      {
        v16 = a2;
        do
        {
          v10 = v16[2];
          v17 = *v10 == v16;
          v16 = v10;
        }

        while (v17);
      }

      v18 = 0;
      while (1)
      {
        v19 = *(v10 + v18 + 25);
        v20 = a5[v18];
        if (v19 != v20)
        {
          break;
        }

        if (++v18 == 16)
        {
          return std::__tree<std::array<unsigned char,16ul>>::__find_equal<std::array<unsigned char,16ul>>(a1, a3, a5);
        }
      }

      if (v19 >= v20)
      {
        return std::__tree<std::array<unsigned char,16ul>>::__find_equal<std::array<unsigned char,16ul>>(a1, a3, a5);
      }
    }

    if (v8)
    {
      *a3 = v10;
      return v10 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v5 = 0;
  while (1)
  {
    v6 = a5[v5];
    v7 = *(a2 + v5 + 25);
    if (v6 != v7)
    {
      break;
    }

    if (++v5 == 16)
    {
      goto LABEL_12;
    }
  }

  if (v6 < v7)
  {
    goto LABEL_7;
  }

LABEL_12:
  v11 = 0;
  while (1)
  {
    v12 = *(a2 + v11 + 25);
    v13 = a5[v11];
    if (v12 != v13)
    {
      break;
    }

    if (++v11 == 16)
    {
      goto LABEL_21;
    }
  }

  if (v12 >= v13)
  {
LABEL_21:
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v14 = a2[1];
  if (v14)
  {
    v15 = a2[1];
    do
    {
      a4 = v15;
      v15 = *v15;
    }

    while (v15);
  }

  else
  {
    v21 = a2;
    do
    {
      a4 = v21[2];
      v17 = *a4 == v21;
      v21 = a4;
    }

    while (!v17);
  }

  if (a4 != a1 + 1)
  {
    v22 = 0;
    while (1)
    {
      v23 = a5[v22];
      v24 = *(a4 + v22 + 25);
      if (v23 != v24)
      {
        break;
      }

      if (++v22 == 16)
      {
        return std::__tree<std::array<unsigned char,16ul>>::__find_equal<std::array<unsigned char,16ul>>(a1, a3, a5);
      }
    }

    if (v23 >= v24)
    {
      return std::__tree<std::array<unsigned char,16ul>>::__find_equal<std::array<unsigned char,16ul>>(a1, a3, a5);
    }
  }

  if (v14)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *std::__tree<std::array<unsigned char,16ul>>::__find_equal<std::array<unsigned char,16ul>>(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    while (2)
    {
      while (2)
      {
        v6 = v4;
        v7 = 25;
        v8 = a3;
        while (1)
        {
          v9 = *v8;
          v10 = *(v6 + v7);
          if (v9 != v10)
          {
            break;
          }

          ++v8;
          if (++v7 == 41)
          {
            goto LABEL_9;
          }
        }

        if (v9 < v10)
        {
          v4 = *v6;
          result = v6;
          if (*v6)
          {
            continue;
          }

          goto LABEL_17;
        }

        break;
      }

LABEL_9:
      v11 = 0;
      while (1)
      {
        v12 = *(v6 + v11 + 25);
        v13 = a3[v11];
        if (v12 != v13)
        {
          break;
        }

        if (++v11 == 16)
        {
          goto LABEL_17;
        }
      }

      if (v12 < v13)
      {
        result = v6 + 1;
        v4 = v6[1];
        if (v4)
        {
          continue;
        }
      }

      break;
    }
  }

  else
  {
    v6 = result;
  }

LABEL_17:
  *a2 = v6;
  return result;
}

void std::vector<ARTexturedPlane>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ARTexturedPlane>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(uint64_t **a1, unsigned __int8 *a2, uint64_t a3, __int128 **a4)
{
  v4 = *std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__find_equal<std::array<unsigned char,16ul>>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__find_equal<std::array<unsigned char,16ul>>(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    while (2)
    {
      while (2)
      {
        v6 = v4;
        v7 = 32;
        v8 = a3;
        while (1)
        {
          v9 = *v8;
          v10 = *(v6 + v7);
          if (v9 != v10)
          {
            break;
          }

          ++v8;
          if (++v7 == 48)
          {
            goto LABEL_9;
          }
        }

        if (v9 < v10)
        {
          v4 = *v6;
          result = v6;
          if (*v6)
          {
            continue;
          }

          goto LABEL_17;
        }

        break;
      }

LABEL_9:
      v11 = 0;
      while (1)
      {
        v12 = *(v6 + v11 + 32);
        v13 = a3[v11];
        if (v12 != v13)
        {
          break;
        }

        if (++v11 == 16)
        {
          goto LABEL_17;
        }
      }

      if (v12 < v13)
      {
        result = v6 + 1;
        v4 = v6[1];
        if (v4)
        {
          continue;
        }
      }

      break;
    }
  }

  else
  {
    v6 = result;
  }

LABEL_17:
  *a2 = v6;
  return result;
}

uint64_t std::__tree<std::array<unsigned char,16ul>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::array<unsigned char,16ul> const&>(uint64_t **a1, unsigned __int8 *a2, _OWORD *a3)
{
  v3 = *std::__tree<std::array<unsigned char,16ul>>::__find_equal<std::array<unsigned char,16ul>>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::array<unsigned char,16ul>>::find<std::array<unsigned char,16ul>>(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = v2;
  do
  {
    v6 = 0;
    while (1)
    {
      v7 = *(v3 + v6 + 25);
      v8 = a2[v6];
      if (v7 != v8)
      {
        break;
      }

      if (++v6 == 16)
      {
        v5 = v3;
        goto LABEL_10;
      }
    }

    if (v7 >= v8)
    {
      v5 = v3;
    }

    v3 += v7 < v8;
LABEL_10:
    v3 = *v3;
  }

  while (v3);
  if (v5 == v2)
  {
    return v2;
  }

  for (i = 25; i != 41; ++i)
  {
    v10 = *a2;
    v11 = *(v5 + i);
    if (v10 != v11)
    {
      break;
    }

    ++a2;
  }

  if (v10 < v11)
  {
    return v2;
  }

  return v5;
}

void sub_1C24A9334(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ARFaceTrackingManager;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1C24A98EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  _Block_object_dispose(&a37, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_12()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_10()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

void ___ZL15_ARLogTechniquev_block_invoke_10()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

id _ARLogGeneral_8(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_8 != -1)
  {
    _ARLogGeneral_cold_1_8();
  }

  v2 = _ARLogGeneral_logObj_8;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_21()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_20 = result;
  return result;
}

uint64_t anonymous namespace::_CV3DODTCreateWithOptionsConfigAndModel(_anonymous_namespace_ *this, CV3DODTContext **a2, const __CFDictionary *a3, CV3DMLModel *a4)
{
  CV3DODTConfigCreate();
  v4 = CV3DODTCreateWithOptionsConfigAndModel();
  CV3DODTConfigRelease();
  return v4;
}

void sub_1C24AD7B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C24AE0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ARODTHandleManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void ___ZL13_ARLogSessionv_block_invoke()
{
  v0 = os_log_create("com.apple.ARKit", "Session");
  v1 = _ARLogSession(void)::logObj;
  _ARLogSession(void)::logObj = v0;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_13()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL15_ARLogTechniquev_block_invoke_11()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

void GetConfidenceFromUncertainty(float a1)
{
  v1 = 1.0 - expf(a1 * 0.5);
  if (v1 < 0.0 || v1 > 1.0)
  {
    GetConfidenceFromUncertainty();
  }
}

void sub_1C24AEA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::shared_ptr<CV3DSLAMStateContext const>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::allocator<std::shared_ptr<CV3DSLAMStateContext const>>::allocate_at_least[abi:ne200100](result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<CV3DSLAMStateContext const>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void std::vector<std::shared_ptr<CV3DSLAMStateContext const>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void sub_1C24AFCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void (*a28)(char *), uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50)
{
  a28(&a26);

  objc_destroyWeak(&a45);
  objc_destroyWeak(&a50);
  objc_destroyWeak((v51 - 256));
  (*(v51 - 232))(v51 - 248);
  (*(v51 - 192))(v51 - 208);
  _Unwind_Resume(a1);
}

void ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(void *a1, void *a2, void *a3)
{
  v7 = a3;
  if (a1)
  {
    v5 = objc_opt_new();
    v6 = v5;
    if (a2)
    {
      [v5 setObject:a2 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    if (v7)
    {
      [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A588]];
    }

    *a1 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.arkit.ARSceneReconstructionHandler" code:1 userInfo:v6];
  }
}

void sub_1C24B02D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C24B1BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, void (*a28)(char *))
{
  a28(&a26);
  (*(v29 - 184))(v29 - 200);

  _Unwind_Resume(a1);
}

void sub_1C24B2450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  a12(&a10, a2, a3, a4, a5, a6, a7, a8);

  _Unwind_Resume(a1);
}

void sub_1C24B2A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C24B2CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C24B2E10(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, objc_super a10)
{
  a10.super_class = ARSceneReconstructionHandler;
  [(_Unwind_Exception *)&a10 dealloc:a3];
  _Unwind_Resume(a1);
}

void std::allocator<std::shared_ptr<CV3DSLAMStateContext const>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<CV3DSLAMStateContext const>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<CV3DSLAMStateContext const>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<CV3DSLAMStateContext const>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_14()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL15_ARLogTechniquev_block_invoke_12()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique(void)::logObj;
  _ARLogTechnique(void)::logObj = v0;
}

void ___ZL13_ARLogGeneralv_block_invoke_11()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

void std::vector<std::shared_ptr<CV3DSLAMStateContext const>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<CV3DSLAMStateContext const>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

id _ARLogSession_0(uint64_t a1)
{
  if (_ARLogSession_onceToken_1 != -1)
  {
    _ARLogSession_cold_1_0();
  }

  v2 = _ARLogSession_logObj_1;

  return v2;
}

void sub_1C24B3CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ARSessionRunOptionsToString(char a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (a1)
  {
    v8 = @"ResetTracking";
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }

    v8 = @"RemoveExistingAnchors";
  }

  [v2 addObject:v8];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  [v3 addObject:@"StopTrackedRaycasts"];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"ResetSceneReconstruction"];
  }

LABEL_6:
  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 componentsJoinedByString:@" | "];
  v6 = [v4 stringWithFormat:@"(%@)", v5];

  return v6;
}

BOOL TrackingStateDifferent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 camera];
  v6 = [v5 trackingState];
  v7 = [v4 camera];
  if (v6 == [v7 trackingState])
  {
    v8 = [v3 camera];
    v9 = [v8 trackingStateReason];
    v10 = [v4 camera];
    v11 = v9 != [v10 trackingStateReason];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

uint64_t ARTimerFramesPerSecond(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && ![v3 isHighResolution])
  {
    v6 = 60;
  }

  else
  {
    v6 = [v3 captureFramesPerSecond];
  }

  return v6;
}

id _ARLogGeneral_9(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_9 != -1)
  {
    _ARLogGeneral_cold_1_9();
  }

  v2 = _ARLogGeneral_logObj_9;

  return v2;
}

void sub_1C24C4398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C24C7ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state)
{
  objc_destroyWeak((v25 - 144));
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1C24C85A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, os_activity_scope_state_s state)
{
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1C24C90F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a40);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v40 - 256));
  _Unwind_Resume(a1);
}

uint64_t __ARShouldUseLogTypeError_block_invoke_22()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_21 = result;
  return result;
}

void sub_1C24CB4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double simd_quaternion(simd_float3x3 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    v8 = sqrtf(v1 + 1.0);
    v9 = vrecpe_f32(COERCE_UNSIGNED_INT(v8 + v8));
    v10 = vmul_f32(v9, vrecps_f32(COERCE_UNSIGNED_INT(v8 + v8), v9));
    v20 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v10, vrecps_f32(COERCE_UNSIGNED_INT(v8 + v8), v10)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      v21 = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      *&v22 = v21 + v21;
      v23 = vrecpe_f32(v22);
      v24 = vmul_f32(v23, vrecps_f32(v22, v23));
      v25.i32[0] = vmul_f32(v24, vrecps_f32(v22, v24)).u32[0];
      v24.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v24.i32[1] = v22;
      v25.i32[1] = 0.25;
      v20 = vmul_f32(v24, v25);
    }

    else
    {
      v4 = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v5 = vrecpe_f32(COERCE_UNSIGNED_INT(v4 + v4));
      v6 = vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(v4 + v4), v5));
      v20 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(v4 + v4), v6)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    v11 = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    v12.f32[0] = v11 + v11;
    v13 = vrecpe_f32(v12.u32[0]);
    v14 = vmul_f32(v13, vrecps_f32(v12.u32[0], v13));
    v15 = vmul_f32(v14, vrecps_f32(v12.u32[0], v14)).u32[0];
    v12.f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v15;
    v20 = vmul_f32(v12, _D5);
  }

  return *&v20;
}

id _ARLogGeneral_10(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_10 != -1)
  {
    _ARLogGeneral_cold_1_10();
  }

  v2 = _ARLogGeneral_logObj_10;

  return v2;
}

id _ARLogSensor_7(uint64_t a1)
{
  if (_ARLogSensor_onceToken_9 != -1)
  {
    _ARLogSensor_cold_1_7();
  }

  v2 = _ARLogSensor_logObj_9;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_23()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_22 = result;
  return result;
}

__CFString *NSStringFromAREnvironmentTexturing(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E817D000[a1];
  }
}

__CFString *NSStringFromARPlaneDetection(char a1)
{
  v1 = @"Vertical";
  if ((a1 & 2) == 0)
  {
    v1 = @"None";
  }

  if (a1)
  {
    v1 = @"Horizontal";
  }

  if ((~a1 & 3) != 0)
  {
    return v1;
  }

  else
  {
    return @"Horizontal|Vertical";
  }
}

__CFString *NSStringFromARWorldAlignment(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E817D018[a1];
  }
}

id NSStringFromARFrameSemantics(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (!a1)
  {
    v5 = @"None";
LABEL_15:
    [v3 addObject:v5];
    goto LABEL_16;
  }

  if ((~a1 & 3) != 0)
  {
    if ((a1 & 1) == 0)
    {
      if ((a1 & 4) != 0)
      {
        goto LABEL_12;
      }

LABEL_7:
      if ((a1 & 8) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v4 = @"Person Segmentation";
  }

  else
  {
    v4 = @"Person Segmentation with Depth";
  }

  [v2 addObject:v4];
  if ((a1 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  [v3 addObject:@"Body Detection"];
  if ((a1 & 8) != 0)
  {
LABEL_13:
    [v3 addObject:@"Scene Depth"];
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_8:
  if ((a1 & 0x10) != 0)
  {
LABEL_14:
    v5 = @"Smoothed Scene Depth";
    goto LABEL_15;
  }

LABEL_16:
  if (![v3 count])
  {
    [v3 addObject:@"Unknown"];
  }

  v6 = [v3 componentsJoinedByString:@"|"];

  return v6;
}

__CFString *NSStringFromARSceneReconstruction(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (a1)
  {
    if (a1)
    {
      [v2 addObject:@"Mesh"];
    }

    if ((~a1 & 3) == 0)
    {
      [v3 addObject:@"with classification"];
    }

    if ((~a1 & 0x11) == 0)
    {
      [v3 addObject:@"with color"];
    }

    if ((a1 & 8) != 0)
    {
      [v3 addObject:@"Keyframe"];
    }

    if ((~a1 & 0x18) == 0)
    {
      [v3 addObject:@"with color"];
    }

    if ((a1 & 0x80) != 0)
    {
      [v3 addObject:@"ObjectCapture"];
    }

    if ([v3 count])
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [v3 componentsJoinedByString:@" "];
      v6 = [v4 stringWithFormat:@"(%@)", v5];
    }

    else
    {
      v6 = @"Unknown";
    }
  }

  else
  {
    v6 = @"None";
  }

  return v6;
}

id _ARLogGeneral_11(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_11 != -1)
  {
    _ARLogGeneral_cold_1_11();
  }

  v2 = _ARLogGeneral_logObj_11;

  return v2;
}

void sub_1C24D0034(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, int a12, __int16 a13, __int16 a14, void *a15)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(a1);
    v16 = v15;
    if (ARShouldUseLogTypeError_onceToken_23 != -1)
    {
      [ARConfiguration initPrivate];
    }

    v17 = ARShouldUseLogTypeError_internalOSVersion_23;
    v18 = _ARLogGeneral_11(v15);
    v19 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [v16 reason];
        LODWORD(buf) = 138543874;
        *(&buf + 4) = v21;
        WORD6(buf) = 2048;
        a14 = 2112;
        a15 = v22;
        _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to decode jasper framerate values: %@", &buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v16 reason];
      LODWORD(buf) = 138543874;
      *(&buf + 4) = v24;
      WORD6(buf) = 2048;
      a14 = 2112;
      a15 = v25;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to decode jasper framerate values: %@", &buf, 0x20u);
    }

    objc_end_catch();
    JUMPOUT(0x1C24CFE04);
  }

  _Unwind_Resume(a1);
}

void _ARAddScalingTechniquesToTechniques(void *a1, uint64_t a2, int a3, double a4, double a5)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = [[ARMLImageDownScalingTechnique alloc] initWithSize:a4 requiredTimeInterval:a5, 0.005];
  [(ARMLImageDownScalingTechnique *)v10 setSaveIntermediateScaleResultData:a2];
  [(ARMLImageDownScalingTechnique *)v10 setCenterCropImage:0];
  if (a3)
  {
    v11 = [[ARMLImageDownScalingTechnique alloc] initWithSize:a5 requiredTimeInterval:a4, 0.005];
    [(ARMLImageDownScalingTechnique *)v11 setSaveIntermediateScaleResultData:a2];
    [(ARMLImageDownScalingTechnique *)v11 setCenterCropImage:0];
    [(ARMLImageDownScalingTechnique *)v10 setRestrictDownscalingToMatchingAspectRatio:1];
    [(ARMLImageDownScalingTechnique *)v11 setRestrictDownscalingToMatchingAspectRatio:1];
    v15[0] = v10;
    v15[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  }

  else
  {
    v14 = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  }

  v13 = [[ARParentTechnique alloc] initWithTechniques:v12];
  [v9 addObject:v13];
}

ARParentTechnique *_ARParentTechniqueForDepthTechnique(void *a1, int a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [ARParentTechnique alloc];
  if (a2)
  {
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

    v6 = [(ARParentTechnique *)v4 initWithTechniques:v5];
  }

  else
  {
    v9 = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];

    v6 = [(ARParentTechnique *)v4 initWithParallelTechniques:v5];
  }

  v7 = v6;

  return v7;
}

void ARAddNonJasperSemanticsToParent(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v31 = a1;
  v6 = MEMORY[0x1E695DFA8];
  v32 = a2;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v33 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [[ARMLImageDownScalingTechnique alloc] initWithSize:256.0 requiredTimeInterval:192.0, 0.002];
  [(ARMLImageDownScalingTechnique *)v11 setResizeUltraWideImage:ARDeviceSupportsUltraWideCamera(v11, v12)];
  [(ARMLImageDownScalingTechnique *)v11 setWideRotationStrategy:&__block_literal_global_50];
  [(ARMLImageDownScalingTechnique *)v11 setUltrawideRotationStrategy:&__block_literal_global_50];
  v13 = [ARParentTechnique alloc];
  v36[0] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v15 = [(ARParentTechnique *)v13 initWithTechniques:v14];

  v16 = [v10 addObject:v15];
  if (ARDeviceSupportsUltraWideCamera(v16, v17))
  {
    v18 = [[ARImageDistortionCorrectionTechnique alloc] initWithImageSize:256.0, 192.0];
    [v10 addObject:v18];
  }

  v19 = [ARParentTechnique alloc];
  v20 = [[ARSISemanticSegmentationTechnique alloc] initLegacyAlgorithmUsingSynchronizedUltrawideWhenAvailable:a4];
  v35 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v22 = [(ARParentTechnique *)v19 initWithParallelTechniques:v21];

  [v10 addObject:v22];
  v23 = [[ARSplitTechniqueSynchronizerTechnique alloc] initWithSynchronizedResultDataClasses:v33];
  v24 = [[ARParentTechnique alloc] initWithTechniques:v10 delegate:v23];
  v34 = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  [v31 setSplitTechniques:v25];

  if (ARDeviceSupportsUltraWideCamera(v26, v27) && a4)
  {
    v28 = [[ARSyncedUltraWideForwardingStrategy alloc] initWithMaxFrameRate:a3];
  }

  else
  {
    v28 = [[ARFrameRateLimitingStrategy alloc] initWithFrameRate:10];
  }

  v29 = v28;
  [v31 setSplitTechniqueFowardingStrategy:v28];

  [v32 insertObject:v23 atIndex:0];
}

void __ARAddNonJasperSemanticsToParent_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 180;
  if (((a2 - 2) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v4 = 0;
  }

  *a4 = v4;
  *a3 = v4;
}

void ARAddJasperTechniquesToParent(void *a1, void *a2, int a3, unsigned int a4, uint64_t a5)
{
  v66[1] = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [ARParentTechnique parentTechniqueOfClass:objc_opt_class() inArray:v7];
  if (v9)
  {
    v10 = v9;
LABEL_4:
    v11 = MEMORY[0x1E695DFA8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = 0;
    goto LABEL_5;
  }

  v10 = [ARParentTechnique parentTechniqueOfClass:objc_opt_class() inArray:v7];
  if (v10)
  {
    goto LABEL_4;
  }

  v13 = 0;
  v14 = 1;
LABEL_5:
  if (a3)
  {
    v60 = v6;
    v15 = MEMORY[0x1E695DFA8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v59 = [v15 setWithObjects:{v16, v17, v18, v19, objc_opt_class(), 0}];

    [v8 removeAllObjects];
    if (v14)
    {
      v20 = [[ARMLImageDownScalingTechnique alloc] initWithSize:256.0 requiredTimeInterval:192.0, 0.002];
      v21 = [ARParentTechnique alloc];
      v66[0] = v20;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
      v23 = [(ARParentTechnique *)v21 initWithTechniques:v22];

      [v8 addObject:v23];
      v24 = [ARDepthTechnique sceneDepthTechniqueForPrioritization:1 temporalSmoothing:a4];
      v25 = [ARParentTechnique alloc];
      v65 = v24;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
      v27 = [(ARParentTechnique *)v25 initWithParallelTechniques:v26];

      [v8 addObject:v27];
    }

    else
    {
      v20 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:v7];
    }

    v28 = objc_opt_new();
    v29 = [v8 addObject:v28];
    if (ARDeviceSupportsUltraWideCamera(v29, v30))
    {
      v31 = [[ARImageDistortionCorrectionTechnique alloc] initWithImageSize:256.0, 192.0];
      [v8 addObject:v31];
      [(ARMLImageDownScalingTechnique *)v20 setResizeUltraWideImage:1];
      [(ARMLImageDownScalingTechnique *)v20 setUltrawideRotationStrategy:&__block_literal_global_474];
    }

    v32 = [ARParentTechnique alloc];
    v33 = objc_opt_new();
    v64 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
    v35 = [(ARParentTechnique *)v32 initWithParallelTechniques:v34];

    [v8 addObject:v35];
    v13 = v59;
    v6 = v60;
  }

  if (v13)
  {
    if (v14)
    {
      v36 = v6;
    }

    else
    {
      v36 = v10;
    }

    v37 = v36;
    if ([v8 count])
    {
      v38 = [[ARParentTechnique alloc] initWithTechniques:v8];
    }

    else
    {
      v38 = objc_opt_new();
    }

    v39 = v38;
    v40 = v6;
    v41 = [v37 splitTechniques];
    v42 = [v41 arrayByAddingObject:v39];
    [v37 setSplitTechniques:v42];

    if (ARDeviceSupportsUltraWideCamera(v43, v44))
    {
      v45 = [[ARSyncedUltraWideForwardingStrategy alloc] initWithMaxFrameRate:a5];
    }

    else
    {
      v45 = [[ARFrameRateLimitingStrategy alloc] initWithFrameRate:10];
    }

    v46 = v45;
    [v37 setSplitTechniqueFowardingStrategy:v45];

    v47 = [[ARSplitTechniqueSynchronizerTechnique alloc] initWithSynchronizedResultDataClasses:v13];
    [(ARTechnique *)v39 setDelegate:v47];
    [v7 insertObject:v47 atIndex:0];

    v6 = v40;
  }

  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = v10;
      v50 = ARDeviceSupportsUltraWideCamera(v48, v49);
      v51 = [v48 splitTechniqueFowardingStrategy];
      v52 = v51;
      if (v50)
      {
        if (!v51)
        {
          v53 = [[ARSyncedUltraWideForwardingStrategy alloc] initWithMaxFrameRate:a5];
LABEL_32:
          v54 = v53;

          [v48 setDepthTechniqueProcessingStrategy:v54];
          v55 = [v48 splitTechniqueFowardingStrategy];
          v56 = v55;
          if (v55)
          {
            v57 = v55;
          }

          else
          {
            v57 = [[ARSyncedUltraWideForwardingStrategy alloc] initWithMaxFrameRate:a5];
          }

          v58 = v57;

          [v48 setDepthTechniqueProcessingStrategy:v58];
          goto LABEL_36;
        }
      }

      else if (!v51)
      {
        v53 = [[ARFrameRateLimitingStrategy alloc] initWithFrameRate:10];
        goto LABEL_32;
      }

      v53 = v51;
      goto LABEL_32;
    }
  }

LABEL_36:
}

void __ARAddJasperTechniquesToParent_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = a2 - 1;
  if ((a2 - 1) > 3)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = qword_1C25C8E50[v4];
    v6 = qword_1C25C8E70[v4];
  }

  *a4 = v5;
  *a3 = v6;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_24()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_23 = result;
  return result;
}

void sub_1C24D38C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _ARLogGeneral_12(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_13 != -1)
  {
    _ARLogGeneral_cold_1_12();
  }

  v2 = _ARLogGeneral_logObj_13;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_25()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_24 = result;
  return result;
}

void sub_1C24D67AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _ARLogGeneral_13(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_14 != -1)
  {
    _ARLogGeneral_cold_1_13();
  }

  v2 = _ARLogGeneral_logObj_14;

  return v2;
}

void sub_1C24D713C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 176), 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __ARShouldUseLogTypeError_block_invoke_26()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_25 = result;
  return result;
}

id _ARLogSensor_8(uint64_t a1)
{
  if (_ARLogSensor_onceToken_12 != -1)
  {
    _ARLogSensor_cold_1_8();
  }

  v2 = _ARLogSensor_logObj_12;

  return v2;
}

id _ARLogGeneral_14(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_15 != -1)
  {
    _ARLogGeneral_cold_1_14();
  }

  v2 = _ARLogGeneral_logObj_15;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_27()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_26 = result;
  return result;
}

id _ARLogGeneral_15(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_16 != -1)
  {
    _ARLogGeneral_cold_1_15();
  }

  v2 = _ARLogGeneral_logObj_16;

  return v2;
}

id _ARLogSensor_9(uint64_t a1)
{
  if (_ARLogSensor_onceToken_13 != -1)
  {
    _ARLogSensor_cold_1_9();
  }

  v2 = _ARLogSensor_logObj_13;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_28()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_27 = result;
  return result;
}

void sub_1C24E28E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(result, a2 - v2);
  }
}

uint64_t ARFaceLandmarkDataFromLabeledFacePosition(void *a1, __int16 *a2, __int16 *a3, __int16 *a4, float *a5, float *a6, float *a7)
{
  v13 = a1;
  v14 = 1.0;
  if ([v13 isEqualToString:@"RightEyeOuterCorner"])
  {
    v15 = 1;
    v16 = 0.0;
    v17 = 1102;
    v18 = 1181;
    v19 = 1101;
LABEL_3:
    v20 = 0.0;
    goto LABEL_20;
  }

  v20 = 0.31;
  v16 = 0.19242;
  if ([v13 isEqualToString:@"RightEyeInnerCorner"])
  {
    v15 = 1;
    v17 = 1088;
    v18 = 1089;
    v19 = 1193;
LABEL_6:
    v14 = 0.49758;
    goto LABEL_20;
  }

  v21 = 1058051330;
  v22 = 1054791163;
  if ([v13 isEqualToString:@"RightEyeLowerOuter"])
  {
    v15 = 1;
    v17 = 1106;
    v14 = 0.0;
    v18 = 1107;
    v19 = 1199;
LABEL_9:
    v16 = *&v22;
LABEL_10:
    v20 = *&v21;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"RightEyeLowerInner"])
  {
    v15 = 1;
    v17 = 1085;
    v18 = 1198;
    v19 = 1108;
    v14 = 0.20381;
    v16 = 0.0;
LABEL_13:
    v20 = 0.79619;
    goto LABEL_20;
  }

  v23 = [v13 isEqualToString:@"RightEyeUpperOuter"];
  v24 = 1059847335;
  v25 = 1051199154;
  if (v23)
  {
    v15 = 1;
    v17 = 1096;
    v18 = 1187;
    v19 = 1095;
LABEL_18:
    v14 = *&v25;
    v16 = 0.0;
LABEL_19:
    v20 = *&v24;
    goto LABEL_20;
  }

  v26 = [v13 isEqualToString:@"RightEyeUpperInner"];
  v24 = 1058721800;
  v25 = 1053450224;
  if (v26)
  {
    v15 = 1;
    v17 = 1094;
    v18 = 1189;
    v19 = 1093;
    goto LABEL_18;
  }

  v28 = [v13 isEqualToString:@"RightEyePupil"];
  v24 = 1053609165;
  if (v28)
  {
    v15 = 1;
    v17 = 1108;
    v18 = 1095;
    v19 = 1093;
    v14 = 0.3;
    v16 = 0.3;
    goto LABEL_19;
  }

  if ([v13 isEqualToString:@"LeftEyeOuterCorner"])
  {
    v15 = 1;
    v16 = 0.0;
    v17 = 1068;
    v18 = 1180;
    v19 = 1069;
    goto LABEL_3;
  }

  if ([v13 isEqualToString:@"LeftEyeInnerCorner"])
  {
    v15 = 1;
    v17 = 1082;
    v18 = 1081;
    v19 = 1168;
    goto LABEL_6;
  }

  if ([v13 isEqualToString:@"LeftEyeLowerOuter"])
  {
    v15 = 1;
    v17 = 1064;
    v14 = 0.0;
    v18 = 1063;
    v19 = 1162;
    goto LABEL_9;
  }

  v16 = 0.0;
  if ([v13 isEqualToString:@"LeftEyeLowerInner"])
  {
    v15 = 1;
    v17 = 1061;
    v18 = 1163;
    v19 = 1062;
    v14 = 0.20381;
    goto LABEL_13;
  }

  if ([v13 isEqualToString:@"LeftEyeUpperOuter"])
  {
    v15 = 1;
    v17 = 1074;
    v18 = 1174;
    v19 = 1075;
    v14 = 0.32818;
    v20 = 0.67182;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"LeftEyeUpperInner"])
  {
    v15 = 1;
    v17 = 1076;
    v18 = 1172;
    v19 = 1077;
    v14 = 0.39526;
    v20 = 0.60474;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"LeftEyePupil"])
  {
    v15 = 1;
    v17 = 1062;
    v18 = 1077;
    v19 = 1075;
    v16 = 0.3;
    v20 = 0.4;
    v14 = 0.3;
    goto LABEL_20;
  }

  v20 = 0.48977;
  v16 = 0.18919;
  v14 = 0.32105;
  if ([v13 isEqualToString:@"RightBrowOuter"])
  {
    v15 = 1;
    v17 = 334;
    v18 = 327;
    v19 = 335;
    goto LABEL_20;
  }

  v21 = 1053597916;
  v22 = 1046921939;
  if ([v13 isEqualToString:@"RightBrowMiddle"])
  {
    v15 = 1;
    v17 = 209;
    v18 = 329;
    v19 = 328;
LABEL_41:
    v14 = 0.37498;
    goto LABEL_9;
  }

  v32 = 1030661949;
  v29 = 1053234397;
  if ([v13 isEqualToString:@"RightBrowInner"])
  {
    v15 = 1;
    v17 = 329;
    v18 = 349;
    v19 = 348;
LABEL_44:
    v14 = 0.5529;
LABEL_45:
    v16 = *&v29;
    v20 = *&v32;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"LeftBrowOuter"])
  {
    v15 = 1;
    v17 = 767;
    v18 = 762;
    v19 = 768;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"LeftBrowMiddle"])
  {
    v15 = 1;
    v17 = 657;
    v18 = 764;
    v19 = 763;
    goto LABEL_41;
  }

  if ([v13 isEqualToString:@"LeftBrowInner"])
  {
    v15 = 1;
    v17 = 764;
    v18 = 782;
    v19 = 781;
    goto LABEL_44;
  }

  v20 = 0.56212;
  v16 = 0.095512;
  v14 = 0.34236;
  if ([v13 isEqualToString:@"MouthRightCorner"])
  {
    v15 = 1;
    v17 = 396;
    v18 = 190;
    v19 = 188;
    goto LABEL_20;
  }

  v21 = 1053235527;
  v22 = 1052383319;
  v30 = 1048419522;
  if ([v13 isEqualToString:@"MouthRightUp1"])
  {
    v15 = 1;
    v17 = 108;
    v18 = 107;
    v19 = 100;
LABEL_56:
    v14 = *&v30;
    goto LABEL_9;
  }

  v32 = 1027608717;
  v29 = 1047327851;
  if ([v13 isEqualToString:@"MouthRightUp2"])
  {
    v15 = 1;
    v17 = 108;
    v18 = 98;
    v19 = 96;
LABEL_59:
    v14 = 0.72171;
    goto LABEL_45;
  }

  if ([v13 isEqualToString:@"MouthRightPhiltrum"])
  {
    v15 = 1;
    v17 = 90;
    v18 = 92;
    v19 = 94;
LABEL_62:
    v14 = 0.47181;
    v16 = 0.2723;
    v20 = 0.25589;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"MouthCenterPhiltrum"])
  {
    v19 = 1;
    v17 = 541;
    v18 = 21;
    v16 = 0.7408;
    v14 = 0.2592;
    v20 = 0.0;
    v15 = 1;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"MouthLeftPhiltrum"])
  {
    v15 = 1;
    v17 = 539;
    v18 = 541;
    v19 = 543;
    goto LABEL_62;
  }

  if ([v13 isEqualToString:@"MouthLeftUp2"])
  {
    v15 = 1;
    v17 = 557;
    v18 = 547;
    v19 = 545;
    goto LABEL_59;
  }

  if ([v13 isEqualToString:@"MouthLeftUp1"])
  {
    v15 = 1;
    v17 = 557;
    v18 = 556;
    v19 = 549;
    goto LABEL_56;
  }

  if ([v13 isEqualToString:@"MouthLeftCorner"])
  {
    v15 = 1;
    v17 = 826;
    v18 = 639;
    v19 = 637;
    goto LABEL_20;
  }

  v20 = 0.094037;
  v16 = 0.13663;
  v14 = 0.76933;
  if ([v13 isEqualToString:@"MouthLeftDown1"])
  {
    v15 = 1;
    v17 = 714;
    v18 = 713;
    v19 = 571;
    goto LABEL_20;
  }

  v21 = 1056986958;
  v22 = 1034297112;
  v30 = 1054198174;
  if ([v13 isEqualToString:@"MouthLeftDown2"])
  {
    v15 = 1;
    v17 = 706;
    v18 = 723;
    v19 = 722;
    goto LABEL_56;
  }

  if ([v13 isEqualToString:@"MouthCenterLower"])
  {
    v15 = 1;
    v17 = 263;
    v18 = 27;
    v19 = 28;
    v16 = 0.093781;
    v14 = 0.90622;
    goto LABEL_3;
  }

  if ([v13 isEqualToString:@"MouthRightDown2"])
  {
    v15 = 1;
    v17 = 271;
    v18 = 288;
    v19 = 287;
    goto LABEL_56;
  }

  if ([v13 isEqualToString:@"MouthRightDown1"])
  {
    v15 = 1;
    v17 = 279;
    v18 = 278;
    v19 = 122;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"MouthInnerUp"])
  {
    v15 = 1;
    v16 = 1.0;
    v14 = 0.0;
    v17 = 542;
    v18 = 24;
    v19 = 23;
    goto LABEL_3;
  }

  v20 = 0.0;
  if ([v13 isEqualToString:@"MouthInnerDown"])
  {
    v15 = 1;
    v14 = 1.0;
    v17 = 699;
    v18 = 26;
    v19 = 25;
LABEL_87:
    v16 = 0.0;
    goto LABEL_20;
  }

  v21 = 1030023345;
  v16 = 0.7827;
  v14 = 0.16141;
  if ([v13 isEqualToString:@"MouthInnerUpRight"])
  {
    v15 = 1;
    v17 = 105;
    v18 = 254;
    v19 = 253;
    goto LABEL_10;
  }

  if ([v13 isEqualToString:@"MouthInnerUpLeft"])
  {
    v15 = 1;
    v17 = 554;
    v18 = 689;
    v19 = 688;
    goto LABEL_10;
  }

  v21 = 1050784710;
  v16 = 0.66943;
  v14 = 0.014741;
  if ([v13 isEqualToString:@"MouthInnerDownRight"])
  {
    v15 = 1;
    v17 = 275;
    v18 = 290;
    v19 = 289;
    goto LABEL_10;
  }

  if ([v13 isEqualToString:@"MouthInnerDownLeft"])
  {
    v15 = 1;
    v17 = 710;
    v18 = 725;
    v19 = 724;
    goto LABEL_10;
  }

  if ([v13 isEqualToString:@"NoseRidgeRoot"])
  {
    v15 = 1;
    v17 = 36;
    v18 = 360;
    v19 = 15;
    v20 = 0.33965;
    v14 = 0.66035;
    goto LABEL_87;
  }

  if ([v13 isEqualToString:@"NoseRidge1"])
  {
    v15 = 1;
    v17 = 606;
    v18 = 12;
    v19 = 13;
    v16 = 0.38536;
    v14 = 0.61464;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"NoseRidge2"])
  {
    v15 = 1;
    v17 = 156;
    v18 = 10;
    v19 = 9;
    v16 = 0.93626;
    v14 = 0.063743;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"NoseRidgeTip"])
  {
    v15 = 1;
    v17 = 129;
    v18 = 8;
    v19 = 7;
    v16 = 0.68;
    v14 = 0.32;
    goto LABEL_20;
  }

  v21 = 1062999407;
  v16 = 0.088421;
  v14 = 0.051877;
  if ([v13 isEqualToString:@"NoseBaseLeft"])
  {
    v15 = 1;
    v17 = 743;
    v18 = 866;
    v19 = 867;
    goto LABEL_10;
  }

  if ([v13 isEqualToString:@"NoseBaseCenterLeft"])
  {
    v15 = 1;
    v17 = 526;
    v18 = 869;
    v19 = 742;
LABEL_108:
    v14 = 0.65537;
    v16 = 0.16678;
    v20 = 0.17784;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"NoseBaseCenter"])
  {
    v15 = 1;
    v17 = 759;
    v18 = 3;
    v19 = 4;
    v16 = 0.27602;
    v14 = 0.72398;
    goto LABEL_20;
  }

  if ([v13 isEqualToString:@"NoseBaseCenterRight"])
  {
    v15 = 1;
    v17 = 77;
    v18 = 441;
    v19 = 307;
    goto LABEL_108;
  }

  if ([v13 isEqualToString:@"NoseBaseRight"])
  {
    v15 = 1;
    v17 = 308;
    v18 = 438;
    v19 = 439;
    goto LABEL_10;
  }

  v20 = 0.80801;
  v16 = 0.12549;
  v14 = 0.0665;
  if ([v13 isEqualToString:@"NoseAlaLeft1"])
  {
    v15 = 1;
    v17 = 588;
    v18 = 738;
    v19 = 739;
  }

  else if ([v13 isEqualToString:@"NoseAlaRight1"])
  {
    v15 = 1;
    v17 = 139;
    v18 = 303;
    v19 = 304;
  }

  else if ([v13 isEqualToString:@"NoseAlaLeft2"])
  {
    v15 = 1;
    v17 = 530;
    v18 = 805;
    v19 = 531;
    v20 = 0.051558;
    v16 = 0.21135;
    v14 = 0.73709;
  }

  else
  {
    v31 = [v13 isEqualToString:@"NoseAlaRight2"];
    v15 = v31;
    if (v31)
    {
      v19 = 82;
    }

    else
    {
      v19 = -1;
    }

    if (v31)
    {
      v18 = 374;
    }

    else
    {
      v18 = -1;
    }

    if (v31)
    {
      v17 = 81;
    }

    else
    {
      v17 = -1;
    }

    if (v31)
    {
      v14 = 0.73709;
    }

    else
    {
      v14 = -1.0;
    }

    if (v31)
    {
      v16 = 0.21135;
    }

    else
    {
      v16 = -1.0;
    }

    if (v31)
    {
      v20 = 0.051558;
    }

    else
    {
      v20 = -1.0;
    }
  }

LABEL_20:
  *a2 = v19;
  *a3 = v18;
  *a4 = v17;
  *a5 = v14;
  *a6 = v16;
  *a7 = v20;

  return v15;
}

uint64_t *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, a2);
  }

  return a1;
}

void sub_1C24E45F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}