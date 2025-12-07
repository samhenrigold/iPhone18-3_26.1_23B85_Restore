void sub_2441FDBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2441FDD80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

double ReverbValueFromReverbLevel(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v1 = &CSReverbIntensityOff;
  }

  else
  {
    v1 = *(&off_278E0AC78 + a1 - 1);
  }

  return *v1;
}

uint64_t ReverbLevelFromReverbValue(double a1)
{
  if (1.0 + -2.22044605e-16 <= a1)
  {
    return 3;
  }

  if (0.6 + -2.22044605e-16 <= a1)
  {
    return 2;
  }

  return 1;
}

__CFString *NSStringFromCSReverbLevel(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E0AC90[a1];
  }
}

id CSArtworkPlaceholderImage(uint64_t a1)
{
  v1 = MEMORY[0x277D755B0];
  v2 = MEMORY[0x277D755D8];
  v3 = [MEMORY[0x277D74300] systemFontOfSize:a1];
  v4 = [v2 configurationWithFont:v3];
  v5 = [v1 _systemImageNamed:@"music" withConfiguration:v4];

  return v5;
}

void sub_244207EA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 128));
  _Unwind_Resume(a1);
}

void sub_244208A74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_244208DA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_244209170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24420954C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244209808(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_244209AEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_244209DD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24420A0B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24420A8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24420AD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24420B884(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_24420D1F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

id ContinuitySingLog(uint64_t a1)
{
  if (ContinuitySingLog_onceToken != -1)
  {
    ContinuitySingLog_cold_1();
  }

  v2 = ContinuitySingLog___logObj;

  return v2;
}

uint64_t __ContinuitySingLog_block_invoke()
{
  ContinuitySingLog___logObj = os_log_create("com.apple.ContinuitySing", "default");

  return MEMORY[0x2821F96F8]();
}

void sub_24420F2AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_2442110E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244213060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_CSErrorCodeDescription(uint64_t a1)
{
  if ((a1 + 117) > 0x11)
  {
    return @"ContinuitySingErrorCodeNone";
  }

  else
  {
    return off_278E0B728[a1 + 117];
  }
}

void sub_2442152EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244215AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244216168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244217BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2442189BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244218B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244219060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak(&a33);
  objc_destroyWeak((v36 - 120));
  objc_destroyWeak((v36 - 112));
  _Unwind_Resume(a1);
}

void sub_244219504(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_244219CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 112));
  _Unwind_Resume(a1);
}

void sub_24421A16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  objc_destroyWeak(va);
  objc_destroyWeak((v23 - 112));
  _Unwind_Resume(a1);
}

void sub_24421A650(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_24421B724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24421C418(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24421D364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24421D780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24421DAB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24421DD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244220300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244220A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x2Au);
}

__CFString *CSIdentifierForMessageID(uint64_t a1)
{
  result = @"com.apple.ContinuitySing.CSMessageIDGenericRequest";
  if (a1 > 1000)
  {
    v3 = @"com.apple.ContinuitySing.vocal";
    v4 = @"com.apple.ContinuitySing.displayModeEvent";
    v5 = @"com.apple.ContinuitySing.startSinging";
    if (a1 != 1011)
    {
      v5 = @"com.apple.ContinuitySing.CSMessageIDGenericRequest";
    }

    if (a1 != 1010)
    {
      v4 = v5;
    }

    if (a1 != 1009)
    {
      v3 = v4;
    }

    v6 = @"com.apple.ContinuitySing.audioMeasurementEvent";
    v7 = @"com.apple.ContinuitySing.clientDisconnect";
    if (a1 != 1008)
    {
      v7 = @"com.apple.ContinuitySing.CSMessageIDGenericRequest";
    }

    if (a1 != 1007)
    {
      v6 = v7;
    }

    if (a1 <= 1008)
    {
      v3 = v6;
    }

    v8 = @"com.apple.ContinuitySing.disconnect";
    v9 = @"com.apple.ContinuitySing.addedToQueue";
    if (a1 != 1006)
    {
      v9 = @"com.apple.ContinuitySing.CSMessageIDGenericRequest";
    }

    if (a1 != 1005)
    {
      v8 = v9;
    }

    v10 = @"com.apple.ContinuitySing.reaction";
    v11 = @"com.apple.ContinuitySing.reverb";
    if (a1 != 1002)
    {
      v11 = @"com.apple.ContinuitySing.CSMessageIDGenericRequest";
    }

    if (a1 != 1001)
    {
      v10 = v11;
    }

    if (a1 <= 1004)
    {
      v8 = v10;
    }

    if (a1 <= 1006)
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
      case 1:
        result = @"com.apple.ContinuitySing.CSMessageIDGenericResponse";
        break;
      case 2:
        result = @"com.apple.ContinuitySing.microphoneVolumeRequest";
        break;
      case 3:
        result = @"com.apple.ContinuitySing.microphoneVolumeResponse";
        break;
      case 4:
        result = @"com.apple.ContinuitySing.microphoneVolumeIncrease";
        break;
      case 5:
        result = @"com.apple.ContinuitySing.microphoneVolumeIncreaseResponse";
        break;
      case 6:
        result = @"com.apple.ContinuitySing.microphoneVolumeDecrease";
        break;
      case 7:
        result = @"com.apple.ContinuitySing.microphoneVolumeDecreaseResponse";
        break;
      case 8:
        result = @"com.apple.ContinuitySing.reverbRequest";
        break;
      case 9:
        result = @"com.apple.ContinuitySing.reverbResponse";
        break;
      case 14:
        result = @"com.apple.ContinuitySing.sessionUpdateRequest";
        break;
      case 15:
        result = @"com.apple.ContinuitySing.sessionUpdate";
        break;
      case 16:
        result = @"com.apple.ContinuitySing.enableMicRequest";
        break;
      case 17:
        result = @"com.apple.ContinuitySing.enableMicResponse";
        break;
      case 18:
        result = @"com.apple.ContinuitySing.groupSessionTokenRequest";
        break;
      case 19:
        result = @"com.apple.ContinuitySing.groupSessionTokenResponse";
        break;
      case 20:
        result = @"com.apple.ContinuitySing.clientCheckinRequest";
        break;
      case 21:
        result = @"com.apple.ContinuitySing.clientCheckinResponse";
        break;
      case 22:
        result = @"com.apple.ContinuitySing.handshake";
        break;
      case 23:
        result = @"com.apple.ContinuitySing.handshakeResponse";
        break;
      case 26:
        result = @"com.apple.ContinuitySing.attributionRequest";
        break;
      case 27:
        result = @"com.apple.ContinuitySing.attributionRespone";
        break;
      case 28:
        result = @"com.apple.ContinuitySing.avatarRequest";
        break;
      case 29:
        result = @"com.apple.ContinuitySing.avatarResponse";
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_244225E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244228638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24422A430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v12 + 32));
  objc_destroyWeak((v11 + 32));
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_24422BB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  objc_destroyWeak((v41 + 64));
  objc_destroyWeak((v40 + 48));
  objc_destroyWeak(&a40);
  objc_destroyWeak((v42 - 168));
  _Block_object_dispose((v42 - 160), 8);
  objc_destroyWeak((v42 - 120));
  _Unwind_Resume(a1);
}

void sub_24422D128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_24422E528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24422E6A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_24422EFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24422F1A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_24422FA20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_244230C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2442317C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_2442319F4(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24423769C;

  return sub_244231AAC(a1, a2);
}

uint64_t sub_244231AAC(double a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_244257998();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_2442579C8();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE00, &qword_24425CA70);
  *(v3 + 96) = swift_task_alloc();
  v6 = sub_244257318();
  *(v3 + 104) = v6;
  *(v3 + 112) = *(v6 - 8);
  *(v3 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE08, &qword_24425C1A0);
  *(v3 + 128) = swift_task_alloc();
  v7 = sub_2442579F8();
  *(v3 + 136) = v7;
  *(v3 + 144) = *(v7 - 8);
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_244231CF4, 0, 0);
}

uint64_t sub_244231CF4()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  sub_244257958();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v7 = *(v0 + 3);
    (*(*(v0 + 18) + 32))(*(v0 + 19), *(v0 + 16), *(v0 + 17));
    v8 = sub_2442579D8();
    if (v8 > 0)
    {
      if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v11 = v0[3];
        if (v11 > -9.22337204e18)
        {
          if (v11 < 9.22337204e18)
          {
            sub_2442579D8();
            goto LABEL_11;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v12 = v0[3];
      if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
LABEL_11:
          v13 = *(v0 + 4);
          v8 = sub_2442579E8();
          if (v8 >= 1)
          {
            if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v14 = v0[4];
              if (v14 > -9.22337204e18)
              {
                if (v14 < 9.22337204e18)
                {
                  sub_2442579E8();
                  goto LABEL_19;
                }

LABEL_33:
                __break(1u);
LABEL_34:
                swift_once();
LABEL_25:
                v9 = qword_27EDDC328;
                *(v0 + 20) = qword_27EDDC328;
                v8 = sub_244232110;
                v10 = 0;

                return MEMORY[0x2822009F8](v8, v9, v10);
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v15 = v0[4];
            if (v15 > -9.22337204e18)
            {
              if (v15 < 9.22337204e18)
              {
LABEL_19:
                v16 = *(v0 + 14);
                v18 = *(v0 + 11);
                v17 = *(v0 + 12);
                v19 = *(v0 + 10);
                v26 = *(v0 + 9);
                v27 = *(v0 + 13);
                v20 = *(v0 + 7);
                v21 = *(v0 + 8);
                v22 = *(v0 + 6);
                sub_2442579B8();
                (*(v20 + 104))(v21, *MEMORY[0x277D2B210], v22);
                sub_2442579A8();
                (*(v20 + 8))(v21, v22);
                (*(v19 + 8))(v18, v26);
                if ((*(v16 + 48))(v17, 1, v27) == 1)
                {
                  v23 = *(v0 + 12);
                  (*(*(v0 + 18) + 8))(*(v0 + 19), *(v0 + 17));
                  v5 = &qword_27EDDBE00;
                  v6 = &qword_24425CA70;
                  v4 = v23;
                  goto LABEL_21;
                }

                (*(*(v0 + 14) + 32))(*(v0 + 15), *(v0 + 12), *(v0 + 13));
                if (qword_27EDDC320 == -1)
                {
                  goto LABEL_25;
                }

                goto LABEL_34;
              }

LABEL_40:
              __break(1u);
              return MEMORY[0x2822009F8](v8, v9, v10);
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v4 = *(v0 + 16);
  v5 = &qword_27EDDBE08;
  v6 = &qword_24425C1A0;
LABEL_21:
  sub_244237440(v4, v5, v6);

  v24 = *(v0 + 1);

  return v24(0);
}

uint64_t sub_244232110()
{
  v1 = sub_24423528C(*(v0 + 120));
  *(v0 + 168) = v1;

  return MEMORY[0x2822009F8](sub_244232180, v1, 0);
}

uint64_t sub_244232180()
{
  v1 = v0[21];
  v2 = *(v1 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_image);
  v0[22] = v2;
  if (v2)
  {
    v0[24] = v2;
    v3 = v2;

    return MEMORY[0x2822009F8](sub_244237698, 0, 0);
  }

  else
  {
    v4 = sub_244235488();
    v5 = swift_task_alloc();
    v0[23] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE10, qword_24425C1A8);
    *v5 = v0;
    v5[1] = sub_2442322E0;
    v7 = v0[21];

    return MEMORY[0x2822007B8](v0 + 2, v1, v4, 0x7472416863746566, 0xEE0029286B726F77, sub_2442376A4, v7, v6);
  }
}

uint64_t sub_2442322E0()
{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_2442323F0, v1, 0);
}

uint64_t sub_2442323F0()
{
  *(v0 + 192) = *(v0 + 16);
  v1 = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_244237698, 0, 0);
}

uint64_t sub_244232464(double a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_244257998();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_2442579C8();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE00, &qword_24425CA70);
  *(v3 + 96) = swift_task_alloc();
  v6 = sub_244257318();
  *(v3 + 104) = v6;
  *(v3 + 112) = *(v6 - 8);
  *(v3 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE08, &qword_24425C1A0);
  *(v3 + 128) = swift_task_alloc();
  v7 = sub_2442579F8();
  *(v3 + 136) = v7;
  *(v3 + 144) = *(v7 - 8);
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2442326AC, 0, 0);
}

uint64_t sub_2442326AC()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  sub_244257988();
  sub_244234D50();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v7 = *(v0 + 3);
    (*(*(v0 + 18) + 32))(*(v0 + 19), *(v0 + 16), *(v0 + 17));
    v8 = sub_2442579D8();
    if (v8 > 0)
    {
      if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v11 = v0[3];
        if (v11 > -9.22337204e18)
        {
          if (v11 < 9.22337204e18)
          {
            sub_2442579D8();
            goto LABEL_11;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v12 = v0[3];
      if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
LABEL_11:
          v13 = *(v0 + 4);
          v8 = sub_2442579E8();
          if (v8 >= 1)
          {
            if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v14 = v0[4];
              if (v14 > -9.22337204e18)
              {
                if (v14 < 9.22337204e18)
                {
                  sub_2442579E8();
                  goto LABEL_19;
                }

LABEL_33:
                __break(1u);
LABEL_34:
                swift_once();
LABEL_25:
                v9 = qword_27EDDC328;
                *(v0 + 20) = qword_27EDDC328;
                v8 = sub_244232110;
                v10 = 0;

                return MEMORY[0x2822009F8](v8, v9, v10);
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v15 = v0[4];
            if (v15 > -9.22337204e18)
            {
              if (v15 < 9.22337204e18)
              {
LABEL_19:
                v16 = *(v0 + 14);
                v18 = *(v0 + 11);
                v17 = *(v0 + 12);
                v19 = *(v0 + 10);
                v26 = *(v0 + 9);
                v27 = *(v0 + 13);
                v20 = *(v0 + 7);
                v21 = *(v0 + 8);
                v22 = *(v0 + 6);
                sub_2442579B8();
                (*(v20 + 104))(v21, *MEMORY[0x277D2B210], v22);
                sub_2442579A8();
                (*(v20 + 8))(v21, v22);
                (*(v19 + 8))(v18, v26);
                if ((*(v16 + 48))(v17, 1, v27) == 1)
                {
                  v23 = *(v0 + 12);
                  (*(*(v0 + 18) + 8))(*(v0 + 19), *(v0 + 17));
                  v5 = &qword_27EDDBE00;
                  v6 = &qword_24425CA70;
                  v4 = v23;
                  goto LABEL_21;
                }

                (*(*(v0 + 14) + 32))(*(v0 + 15), *(v0 + 12), *(v0 + 13));
                if (qword_27EDDC320 == -1)
                {
                  goto LABEL_25;
                }

                goto LABEL_34;
              }

LABEL_40:
              __break(1u);
              return MEMORY[0x2822009F8](v8, v9, v10);
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v4 = *(v0 + 16);
  v5 = &qword_27EDDBE08;
  v6 = &qword_24425C1A0;
LABEL_21:
  sub_244237440(v4, v5, v6);

  v24 = *(v0 + 1);

  return v24(0);
}

uint64_t sub_244232AD0(double a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_244257998();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_2442579C8();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE00, &qword_24425CA70);
  *(v3 + 96) = swift_task_alloc();
  v6 = sub_244257318();
  *(v3 + 104) = v6;
  *(v3 + 112) = *(v6 - 8);
  *(v3 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE08, &qword_24425C1A0);
  *(v3 + 128) = swift_task_alloc();
  v7 = sub_2442579F8();
  *(v3 + 136) = v7;
  *(v3 + 144) = *(v7 - 8);
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_244232D18, 0, 0);
}

uint64_t sub_244232D18()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  sub_244257A08();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v7 = *(v0 + 3);
    (*(*(v0 + 18) + 32))(*(v0 + 19), *(v0 + 16), *(v0 + 17));
    v8 = sub_2442579D8();
    if (v8 > 0)
    {
      if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v11 = v0[3];
        if (v11 > -9.22337204e18)
        {
          if (v11 < 9.22337204e18)
          {
            sub_2442579D8();
            goto LABEL_11;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v12 = v0[3];
      if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
LABEL_11:
          v13 = *(v0 + 4);
          v8 = sub_2442579E8();
          if (v8 >= 1)
          {
            if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v14 = v0[4];
              if (v14 > -9.22337204e18)
              {
                if (v14 < 9.22337204e18)
                {
                  sub_2442579E8();
                  goto LABEL_19;
                }

LABEL_33:
                __break(1u);
LABEL_34:
                swift_once();
LABEL_25:
                v9 = qword_27EDDC328;
                *(v0 + 20) = qword_27EDDC328;
                v8 = sub_244232110;
                v10 = 0;

                return MEMORY[0x2822009F8](v8, v9, v10);
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v15 = v0[4];
            if (v15 > -9.22337204e18)
            {
              if (v15 < 9.22337204e18)
              {
LABEL_19:
                v16 = *(v0 + 14);
                v18 = *(v0 + 11);
                v17 = *(v0 + 12);
                v19 = *(v0 + 10);
                v26 = *(v0 + 9);
                v27 = *(v0 + 13);
                v20 = *(v0 + 7);
                v21 = *(v0 + 8);
                v22 = *(v0 + 6);
                sub_2442579B8();
                (*(v20 + 104))(v21, *MEMORY[0x277D2B210], v22);
                sub_2442579A8();
                (*(v20 + 8))(v21, v22);
                (*(v19 + 8))(v18, v26);
                if ((*(v16 + 48))(v17, 1, v27) == 1)
                {
                  v23 = *(v0 + 12);
                  (*(*(v0 + 18) + 8))(*(v0 + 19), *(v0 + 17));
                  v5 = &qword_27EDDBE00;
                  v6 = &qword_24425CA70;
                  v4 = v23;
                  goto LABEL_21;
                }

                (*(*(v0 + 14) + 32))(*(v0 + 15), *(v0 + 12), *(v0 + 13));
                if (qword_27EDDC320 == -1)
                {
                  goto LABEL_25;
                }

                goto LABEL_34;
              }

LABEL_40:
              __break(1u);
              return MEMORY[0x2822009F8](v8, v9, v10);
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v4 = *(v0 + 16);
  v5 = &qword_27EDDBE08;
  v6 = &qword_24425C1A0;
LABEL_21:
  sub_244237440(v4, v5, v6);

  v24 = *(v0 + 1);

  return v24(0);
}

uint64_t sub_244233134(double a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_244257998();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_2442579C8();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE00, &qword_24425CA70);
  *(v3 + 96) = swift_task_alloc();
  v6 = sub_244257318();
  *(v3 + 104) = v6;
  *(v3 + 112) = *(v6 - 8);
  *(v3 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE08, &qword_24425C1A0);
  *(v3 + 128) = swift_task_alloc();
  v7 = sub_2442579F8();
  *(v3 + 136) = v7;
  *(v3 + 144) = *(v7 - 8);
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24423337C, 0, 0);
}

uint64_t sub_24423337C()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  sub_2442574A8();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v7 = *(v0 + 3);
    (*(*(v0 + 18) + 32))(*(v0 + 19), *(v0 + 16), *(v0 + 17));
    v8 = sub_2442579D8();
    if (v8 > 0)
    {
      if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v11 = v0[3];
        if (v11 > -9.22337204e18)
        {
          if (v11 < 9.22337204e18)
          {
            sub_2442579D8();
            goto LABEL_11;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v12 = v0[3];
      if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
LABEL_11:
          v13 = *(v0 + 4);
          v8 = sub_2442579E8();
          if (v8 >= 1)
          {
            if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v14 = v0[4];
              if (v14 > -9.22337204e18)
              {
                if (v14 < 9.22337204e18)
                {
                  sub_2442579E8();
                  goto LABEL_19;
                }

LABEL_33:
                __break(1u);
LABEL_34:
                swift_once();
LABEL_25:
                v9 = qword_27EDDC328;
                *(v0 + 20) = qword_27EDDC328;
                v8 = sub_244233798;
                v10 = 0;

                return MEMORY[0x2822009F8](v8, v9, v10);
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v15 = v0[4];
            if (v15 > -9.22337204e18)
            {
              if (v15 < 9.22337204e18)
              {
LABEL_19:
                v16 = *(v0 + 14);
                v18 = *(v0 + 11);
                v17 = *(v0 + 12);
                v19 = *(v0 + 10);
                v26 = *(v0 + 9);
                v27 = *(v0 + 13);
                v20 = *(v0 + 7);
                v21 = *(v0 + 8);
                v22 = *(v0 + 6);
                sub_2442579B8();
                (*(v20 + 104))(v21, *MEMORY[0x277D2B210], v22);
                sub_2442579A8();
                (*(v20 + 8))(v21, v22);
                (*(v19 + 8))(v18, v26);
                if ((*(v16 + 48))(v17, 1, v27) == 1)
                {
                  v23 = *(v0 + 12);
                  (*(*(v0 + 18) + 8))(*(v0 + 19), *(v0 + 17));
                  v5 = &qword_27EDDBE00;
                  v6 = &qword_24425CA70;
                  v4 = v23;
                  goto LABEL_21;
                }

                (*(*(v0 + 14) + 32))(*(v0 + 15), *(v0 + 12), *(v0 + 13));
                if (qword_27EDDC320 == -1)
                {
                  goto LABEL_25;
                }

                goto LABEL_34;
              }

LABEL_40:
              __break(1u);
              return MEMORY[0x2822009F8](v8, v9, v10);
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v4 = *(v0 + 16);
  v5 = &qword_27EDDBE08;
  v6 = &qword_24425C1A0;
LABEL_21:
  sub_244237440(v4, v5, v6);

  v24 = *(v0 + 1);

  return v24(0);
}

uint64_t sub_244233798()
{
  v1 = sub_24423528C(*(v0 + 120));
  *(v0 + 168) = v1;

  return MEMORY[0x2822009F8](sub_244233808, v1, 0);
}

uint64_t sub_244233808()
{
  v1 = v0[21];
  v2 = *(v1 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_image);
  v0[22] = v2;
  if (v2)
  {
    v0[24] = v2;
    v3 = v2;

    return MEMORY[0x2822009F8](sub_244233AEC, 0, 0);
  }

  else
  {
    v4 = sub_244235488();
    v5 = swift_task_alloc();
    v0[23] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE10, qword_24425C1A8);
    *v5 = v0;
    v5[1] = sub_244233968;
    v7 = v0[21];

    return MEMORY[0x2822007B8](v0 + 2, v1, v4, 0x7472416863746566, 0xEE0029286B726F77, sub_2442376A4, v7, v6);
  }
}

uint64_t sub_244233968()
{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_244233A78, v1, 0);
}

uint64_t sub_244233A78()
{
  *(v0 + 192) = *(v0 + 16);
  v1 = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_244233AEC, 0, 0);
}

uint64_t sub_244233AEC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[24];

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_244233BE0(double a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_244257998();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_2442579C8();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE00, &qword_24425CA70);
  *(v3 + 96) = swift_task_alloc();
  v6 = sub_244257318();
  *(v3 + 104) = v6;
  *(v3 + 112) = *(v6 - 8);
  *(v3 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE08, &qword_24425C1A0);
  *(v3 + 128) = swift_task_alloc();
  v7 = sub_2442579F8();
  *(v3 + 136) = v7;
  *(v3 + 144) = *(v7 - 8);
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_244233E28, 0, 0);
}

uint64_t sub_244233E28()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  sub_244257938();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v7 = *(v0 + 3);
    (*(*(v0 + 18) + 32))(*(v0 + 19), *(v0 + 16), *(v0 + 17));
    v8 = sub_2442579D8();
    if (v8 > 0)
    {
      if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v11 = v0[3];
        if (v11 > -9.22337204e18)
        {
          if (v11 < 9.22337204e18)
          {
            sub_2442579D8();
            goto LABEL_11;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v12 = v0[3];
      if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
LABEL_11:
          v13 = *(v0 + 4);
          v8 = sub_2442579E8();
          if (v8 >= 1)
          {
            if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v14 = v0[4];
              if (v14 > -9.22337204e18)
              {
                if (v14 < 9.22337204e18)
                {
                  sub_2442579E8();
                  goto LABEL_19;
                }

LABEL_33:
                __break(1u);
LABEL_34:
                swift_once();
LABEL_25:
                v9 = qword_27EDDC328;
                *(v0 + 20) = qword_27EDDC328;
                v8 = sub_244232110;
                v10 = 0;

                return MEMORY[0x2822009F8](v8, v9, v10);
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v15 = v0[4];
            if (v15 > -9.22337204e18)
            {
              if (v15 < 9.22337204e18)
              {
LABEL_19:
                v16 = *(v0 + 14);
                v18 = *(v0 + 11);
                v17 = *(v0 + 12);
                v19 = *(v0 + 10);
                v26 = *(v0 + 9);
                v27 = *(v0 + 13);
                v20 = *(v0 + 7);
                v21 = *(v0 + 8);
                v22 = *(v0 + 6);
                sub_2442579B8();
                (*(v20 + 104))(v21, *MEMORY[0x277D2B210], v22);
                sub_2442579A8();
                (*(v20 + 8))(v21, v22);
                (*(v19 + 8))(v18, v26);
                if ((*(v16 + 48))(v17, 1, v27) == 1)
                {
                  v23 = *(v0 + 12);
                  (*(*(v0 + 18) + 8))(*(v0 + 19), *(v0 + 17));
                  v5 = &qword_27EDDBE00;
                  v6 = &qword_24425CA70;
                  v4 = v23;
                  goto LABEL_21;
                }

                (*(*(v0 + 14) + 32))(*(v0 + 15), *(v0 + 12), *(v0 + 13));
                if (qword_27EDDC320 == -1)
                {
                  goto LABEL_25;
                }

                goto LABEL_34;
              }

LABEL_40:
              __break(1u);
              return MEMORY[0x2822009F8](v8, v9, v10);
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v4 = *(v0 + 16);
  v5 = &qword_27EDDBE08;
  v6 = &qword_24425C1A0;
LABEL_21:
  sub_244237440(v4, v5, v6);

  v24 = *(v0 + 1);

  return v24(0);
}

uint64_t sub_244234244(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 48) = a2;
  *(v5 + 56) = v4;
  *(v5 + 40) = a1;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  v6 = sub_244257998();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_2442579C8();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE00, &qword_24425CA70);
  *(v5 + 112) = swift_task_alloc();
  v8 = sub_244257318();
  *(v5 + 120) = v8;
  *(v5 + 128) = *(v8 - 8);
  *(v5 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE08, &qword_24425C1A0);
  *(v5 + 144) = swift_task_alloc();
  v9 = sub_2442579F8();
  *(v5 + 152) = v9;
  *(v5 + 160) = *(v9 - 8);
  *(v5 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_244234490, 0, 0);
}

uint64_t sub_244234490()
{
  v1 = *(v0 + 19);
  v2 = *(v0 + 20);
  v3 = *(v0 + 18);
  (*(*(v0 + 6) + 8))(*(v0 + 5));
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v7 = *(v0 + 3);
    (*(*(v0 + 20) + 32))(*(v0 + 21), *(v0 + 18), *(v0 + 19));
    v8 = sub_2442579D8();
    if (v8 >= 1)
    {
      if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v11 = v0[3];
        if (v11 > -9.22337204e18)
        {
          if (v11 < 9.22337204e18)
          {
            sub_2442579D8();
            goto LABEL_11;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v12 = v0[3];
      if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
LABEL_11:
          v13 = *(v0 + 4);
          v8 = sub_2442579E8();
          if (v8 >= 1)
          {
            if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v14 = v0[4];
              if (v14 > -9.22337204e18)
              {
                if (v14 < 9.22337204e18)
                {
                  sub_2442579E8();
                  goto LABEL_19;
                }

LABEL_33:
                __break(1u);
LABEL_34:
                swift_once();
LABEL_25:
                v9 = qword_27EDDC328;
                *(v0 + 22) = qword_27EDDC328;
                v8 = sub_2442348C0;
                v10 = 0;

                return MEMORY[0x2822009F8](v8, v9, v10);
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v15 = v0[4];
            if (v15 > -9.22337204e18)
            {
              if (v15 < 9.22337204e18)
              {
LABEL_19:
                v16 = *(v0 + 16);
                v18 = *(v0 + 13);
                v17 = *(v0 + 14);
                v19 = *(v0 + 12);
                v26 = *(v0 + 11);
                v27 = *(v0 + 15);
                v20 = *(v0 + 9);
                v21 = *(v0 + 10);
                v22 = *(v0 + 8);
                sub_2442579B8();
                (*(v20 + 104))(v21, *MEMORY[0x277D2B210], v22);
                sub_2442579A8();
                (*(v20 + 8))(v21, v22);
                (*(v19 + 8))(v18, v26);
                if ((*(v16 + 48))(v17, 1, v27) == 1)
                {
                  v23 = *(v0 + 14);
                  (*(*(v0 + 20) + 8))(*(v0 + 21), *(v0 + 19));
                  v5 = &qword_27EDDBE00;
                  v6 = &qword_24425CA70;
                  v4 = v23;
                  goto LABEL_21;
                }

                (*(*(v0 + 16) + 32))(*(v0 + 17), *(v0 + 14), *(v0 + 15));
                if (qword_27EDDC320 == -1)
                {
                  goto LABEL_25;
                }

                goto LABEL_34;
              }

LABEL_40:
              __break(1u);
              return MEMORY[0x2822009F8](v8, v9, v10);
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v4 = *(v0 + 18);
  v5 = &qword_27EDDBE08;
  v6 = &qword_24425C1A0;
LABEL_21:
  sub_244237440(v4, v5, v6);

  v24 = *(v0 + 1);

  return v24(0);
}

uint64_t sub_2442348C0()
{
  v1 = sub_24423528C(*(v0 + 136));
  *(v0 + 184) = v1;

  return MEMORY[0x2822009F8](sub_244234930, v1, 0);
}

uint64_t sub_244234930()
{
  v1 = v0[23];
  v2 = *(v1 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_image);
  v0[24] = v2;
  if (v2)
  {
    v0[26] = v2;
    v3 = v2;

    return MEMORY[0x2822009F8](sub_244234C14, 0, 0);
  }

  else
  {
    v4 = sub_244235488();
    v5 = swift_task_alloc();
    v0[25] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE10, qword_24425C1A8);
    *v5 = v0;
    v5[1] = sub_244234A90;
    v7 = v0[23];

    return MEMORY[0x2822007B8](v0 + 2, v1, v4, 0x7472416863746566, 0xEE0029286B726F77, sub_2442358F8, v7, v6);
  }
}

uint64_t sub_244234A90()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_244234BA0, v1, 0);
}

uint64_t sub_244234BA0()
{
  *(v0 + 208) = *(v0 + 16);
  v1 = *(v0 + 192);

  return MEMORY[0x2822009F8](sub_244234C14, 0, 0);
}

uint64_t sub_244234C14()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[26];

  v8 = v0[1];

  return v8(v7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_244234D50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE20, &qword_24425C350);
  swift_allocObject();
  sub_2442578A8();
  sub_244257978();
}

uint64_t sub_244234E5C(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24423769C;

  return sub_244232464(a1, a2);
}

uint64_t sub_244234F18(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24423769C;

  return sub_244232AD0(a1, a2);
}

uint64_t sub_244234FD4(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24423508C;

  return sub_244233134(a1, a2);
}

uint64_t sub_24423508C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24423518C(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24423769C;

  return sub_244233BE0(a1, a2);
}

uint64_t sub_244235244()
{
  type metadata accessor for ArtworkDownloaderManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  qword_27EDDC328 = v0;
  return result;
}

uint64_t sub_24423528C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_244257318();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 112);
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  v9 = sub_2442364BC(a1);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    (*(v5 + 16))(v7, a1, v4);
    type metadata accessor for ArtworkDownloader(0);
    v11 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v11 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_image) = 0;
    *(v11 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_fetchTask) = 0;
    *(v11 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations) = MEMORY[0x277D84F90];
    (*(v5 + 32))(v11 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_url, v7, v4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_244236908(v11, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 112) = v15;
    swift_endAccess();
    return v11;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  return v11;
}

unint64_t sub_244235488()
{
  result = qword_27EDDC338;
  if (!qword_27EDDC338)
  {
    type metadata accessor for ArtworkDownloader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC338);
  }

  return result;
}

uint64_t type metadata accessor for ArtworkDownloader(uint64_t a1)
{
  result = qword_27EDDC358;
  if (!qword_27EDDC358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24423552C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_244235564(uint64_t a1, uint64_t a2)
{
  v4 = sub_244257318();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE18, &qword_24425C328);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 16))(v10, a1, v7);
  v11 = OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations;
  v12 = *(a2 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v11) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_244236FB8(0, v12[2] + 1, 1, v12);
    *(a2 + v11) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_244236FB8((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  (*(v8 + 32))(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v10, v7);
  *(a2 + v11) = v12;
  v16 = OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_fetchTask;
  if (!*(a2 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_fetchTask))
  {
    v17 = [objc_opt_self() sharedSession];
    v18 = v25;
    (*(v25 + 16))(v6, a2 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_url, v4);
    v19 = sub_2442572F8();
    (*(v18 + 8))(v6, v4);
    aBlock[4] = sub_2442371A8;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_244235DC8;
    aBlock[3] = &block_descriptor;
    v20 = _Block_copy(aBlock);

    v21 = [v17 dataTaskWithURL:v19 completionHandler:v20];
    _Block_release(v20);

    v22 = *(a2 + v16);
    *(a2 + v16) = v21;
    v23 = v21;

    if (v23)
    {
      [v23 resume];
    }
  }
}

uint64_t sub_244235924(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_244257BD8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;
  v10[5] = a1;
  v10[6] = a2;

  sub_2442373BC(a1, a2);
  sub_244235AD8(0, 0, v8, &unk_24425C370, v10);
}

uint64_t sub_244235A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_244235A74, a4, 0);
}

uint64_t sub_244235A74()
{
  sub_244235E90(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_244235AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2442373D0(a3, v25 - v10);
  v12 = sub_244257BD8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_244237440(v11, &qword_27EDDBE28, &qword_24425C360);
  }

  else
  {
    sub_244257BC8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_244257B68();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_244257AA8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_244237440(a3, &qword_27EDDBE28, &qword_24425C360);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_244237440(a3, &qword_27EDDBE28, &qword_24425C360);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_244235DC8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_244257338();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_244236264(v6, v10);
}

void sub_244235E90(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE18, &qword_24425C328);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - v8;
  if (a2 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_allocWithZone(MEMORY[0x277D755B0]);
    sub_244236210(a1, a2);
    v12 = sub_244257328();
    v10 = [v11 initWithData_];

    sub_244236264(a1, a2);
  }

  v13 = *(v3 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_image);
  *(v3 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_image) = v10;

  v14 = OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations;
  v15 = *(v3 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations);
  v16 = *(v15 + 16);
  if (v16)
  {
    v25[1] = *(v3 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations);
    v26 = OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_continuations;
    v17 = OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_image;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = v15 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v22 = *(v18 + 56);

    do
    {
      v19(v9, v21, v6);
      v27 = *(v3 + v17);
      v23 = v27;
      sub_244257B88();
      (*(v18 - 8))(v9, v6);
      v21 += v22;
      --v16;
    }

    while (v16);

    v14 = v26;
  }

  *(v3 + v14) = MEMORY[0x277D84F90];

  v24 = *(v3 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_fetchTask);
  *(v3 + OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_fetchTask) = 0;
}

uint64_t sub_2442360A0()
{
  v1 = OBJC_IVAR____TtC14ContinuitySingP33_0966ECFEC73A60E9F4456608686DCC0E17ArtworkDownloader_url;
  v2 = sub_244257318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_244236150(uint64_t a1)
{
  result = sub_244257318();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_244236210(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_244236264(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_244236278(a1, a2);
  }

  return a1;
}

uint64_t sub_244236278(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2442362CC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2442363C4;

  return v6(a1);
}

uint64_t sub_2442363C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2442364BC(uint64_t a1)
{
  sub_244257318();
  sub_24423764C(&qword_27EDDBE40, MEMORY[0x277CC9270]);
  v2 = sub_244257A28();

  return sub_244236B8C(a1, v2);
}

uint64_t sub_244236540(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_244257318();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE38, &qword_24425C398);
  v39 = v4;
  result = sub_244257E58();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_24423764C(&qword_27EDDBE40, MEMORY[0x277CC9270]);
      result = sub_244257A28();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_244236908(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_244257318();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2442364BC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_244236D38();
      goto LABEL_7;
    }

    sub_244236540(v17, a3 & 1);
    v22 = sub_2442364BC(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_244236AD4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_244257ED8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_244236AD4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_244257318();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_244236B8C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_244257318();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_24423764C(&qword_27EDDBE48, MEMORY[0x277CC9278]);
      v15 = sub_244257A38();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

char *sub_244236D38()
{
  v1 = v0;
  v33 = sub_244257318();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE38, &qword_24425C398);
  v3 = *v0;
  v4 = sub_244257E48();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_244236FB8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE30, &qword_24425C390);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE18, &qword_24425C328) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE18, &qword_24425C328) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2442371C8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    sub_244236278(*(v0 + 40), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_244237220()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2442372C8;

  return sub_244235A50(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2442372C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2442373BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_244236210(result, a2);
  }

  return result;
}

uint64_t sub_2442373D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_244237440(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2442374A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2442374D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2442376A0;

  return sub_2442362CC(a1, v4);
}

uint64_t sub_244237590(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2442372C8;

  return sub_2442362CC(a1, v4);
}

uint64_t sub_24423764C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_244257318();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for PickerDataSource(uint64_t a1)
{
  result = qword_27EDDC4B0;
  if (!qword_27EDDC4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_2442376F4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE50, &qword_24425C3B0);
  MEMORY[0x28223BE20](v11 - 8);
  v12 = &v4[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_completionHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v4[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dismissedHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_source] = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dataSource;
  type metadata accessor for PickerDataSource(0);
  v15 = swift_allocObject();
  sub_244238358();
  *&v5[v14] = v15;
  v36.receiver = v5;
  v36.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v36, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dataSource;
  sub_244238548();
  v18 = v16;

  v34 = sub_244257748();
  v35 = v19;
  sub_2442385A0();
  sub_2442577F8();

  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE78, &unk_24425C3B8));
  v21 = sub_244257778();
  [v18 addSubview_];

  v22 = *&v18[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_completionHandler];
  v23 = *&v18[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_completionHandler + 8];
  v24 = (*&v16[v17] + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_completionHandler);
  v25 = *v24;
  v26 = v24[1];
  *v24 = v22;
  v24[1] = v23;

  sub_2442385F4(v22, v23);
  sub_244238604(v25, v26);

  v27 = *&v16[v17];
  v28 = *&v18[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dismissedHandler];
  v29 = *&v18[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dismissedHandler + 8];

  sub_2442385F4(v28, v29);

  v30 = (v27 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
  v31 = *(v27 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
  v32 = *(v27 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler + 8);
  *v30 = v28;
  v30[1] = v29;
  sub_244238604(v31, v32);

  return v18;
}

id sub_244237B54()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_244237C00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v36 - v9;
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_source;
  *&v11[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_source] = a2;

  v13 = OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dataSource;
  v14 = *&v11[v12];
  swift_getKeyPath();
  swift_getKeyPath();
  v36[1] = v14;

  sub_2442576D8();
  v15 = &v11[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_completionHandler];
  v16 = *&v11[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_completionHandler];
  v17 = *&v11[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_completionHandler + 8];
  *v15 = a3;
  *(v15 + 1) = a4;

  sub_244238604(v16, v17);
  v18 = (*&v11[v13] + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_completionHandler);
  v19 = *v18;
  v20 = v18[1];
  *v18 = a3;
  v18[1] = a4;

  sub_244238604(v19, v20);

  v21 = swift_allocObject();
  *(v21 + 2) = v11;
  *(v21 + 3) = a3;
  *(v21 + 4) = a4;
  v22 = &v11[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dismissedHandler];
  v23 = *&v11[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dismissedHandler];
  v24 = *&v11[OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dismissedHandler + 8];
  *v22 = sub_244238C2C;
  v22[1] = v21;

  v25 = v11;
  sub_244238604(v23, v24);
  v26 = (*&v11[v13] + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
  v27 = *v26;
  v28 = v26[1];
  *v26 = sub_244238C2C;
  v26[1] = v21;

  sub_244238604(v27, v28);

  result = [a1 view];
  if (result)
  {
    v30 = result;
    [result addSubview_];

    v31 = sub_244257BD8();
    (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
    sub_244257BB8();
    v32 = v25;
    v33 = sub_244257BA8();
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D85700];
    v34[2] = v33;
    v34[3] = v35;
    v34[4] = v32;
    sub_244235AD8(0, 0, v10, &unk_24425C418, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_244237F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_244257BB8();
  *(v4 + 24) = sub_244257BA8();
  v6 = sub_244257B68();

  return MEMORY[0x2822009F8](sub_244237FC4, v6, v5);
}

uint64_t sub_244237FC4()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 1;
  swift_retain_n();
  sub_2442576D8();
  sub_244238104();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_244238090()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2442576C8();

  return v1;
}

uint64_t sub_244238104()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2442576C8();

  if ((v8 & 1) == 0)
  {
    v2 = (v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
    v3 = *(v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
    if (v3)
    {
      v4 = v2[1];

      v3(v5);
      sub_244238604(v3, v4);
      v6 = *v2;
    }

    else
    {
      v6 = 0;
    }

    v7 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    return sub_244238604(v6, v7);
  }

  return result;
}

uint64_t sub_2442381C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2442576C8();

  return v1;
}

uint64_t sub_24423823C()
{
  v1 = OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource__source;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEC8, &qword_24425C5E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource__isPresentingPicker;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBED0, &qword_24425C5E8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_244238604(*(v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_completionHandler), *(v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_completionHandler + 8));
  sub_244238604(*(v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler), *(v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler + 8));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_244238358()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBED0, &qword_24425C5E8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEC8, &qword_24425C5E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource__source;
  v15 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE88, &qword_24425C458);
  sub_2442576B8();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource__isPresentingPicker;
  v14[7] = 0;
  sub_2442576B8();
  (*(v2 + 32))(v0 + v10, v4, v1);
  v11 = (v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_completionHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
  *v12 = 0;
  v12[1] = 0;
  return v0;
}

unint64_t sub_244238548()
{
  result = qword_27EDDC470;
  if (!qword_27EDDC470)
  {
    type metadata accessor for PickerDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC470);
  }

  return result;
}

unint64_t sub_2442385A0()
{
  result = qword_27EDDC478;
  if (!qword_27EDDC478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC478);
  }

  return result;
}

uint64_t sub_2442385F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_244238604(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_244238614@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PickerDataSource(0);
  result = sub_2442576A8();
  *a2 = result;
  return result;
}

uint64_t sub_244238654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE98, &qword_24425C540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEA0, &qword_24425C548);
  MEMORY[0x28223BE20](v23);
  v9 = v20 - v8;
  v22 = sub_244257818();
  v29 = v22;
  type metadata accessor for PickerDataSource(0);
  sub_244238548();
  sub_244257758();
  swift_getKeyPath();
  sub_244257768();

  v20[1] = v27;
  v20[2] = v26;
  v21 = v28;
  sub_244257758();
  swift_getKeyPath();
  sub_244257768();

  v10 = *MEMORY[0x277D7EF08];
  v11 = sub_2442574F8();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v7, v10, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_244257968();
  sub_24423927C();

  sub_2442577B8();

  sub_244237440(v7, &qword_27EDDBE98, &qword_24425C540);

  v14 = [objc_opt_self() systemRedColor];
  v15 = sub_244257808();
  KeyPath = swift_getKeyPath();
  v25 = v15;
  v17 = sub_244257738();
  v18 = &v9[*(v23 + 36)];
  *v18 = KeyPath;
  v18[1] = v17;
  sub_24423932C();
  sub_2442577F8();
  return sub_244239460(v9);
}

uint64_t sub_2442389F8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2442576C8();

  *a2 = v4;
  return result;
}

uint64_t sub_244238A78(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2442576D8();
  return sub_244238104();
}

uint64_t sub_244238AF0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2442576C8();

  *a2 = v4;
  return result;
}

uint64_t sub_244238B70(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2442576D8();
}

uint64_t sub_244238BEC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_244238C2C()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];
  return v1(MEMORY[0x277D84F90]);
}

uint64_t sub_244238C6C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_244238CAC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2442376A0;

  return sub_244237F2C(v3, v4, v5, v2);
}

void sub_244238D6C(uint64_t a1)
{
  sub_244238E44(319);
  if (v1 <= 0x3F)
  {
    sub_244238EF0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_244238E44(uint64_t a1)
{
  if (!qword_27EDDBE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDBE88, &qword_24425C458);
    v1 = sub_2442576E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDDBE80);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_244238EF0()
{
  if (!qword_27EDDBE90)
  {
    v0 = sub_2442576E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDDBE90);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_244238F4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_244238F94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_244238FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  sub_244257BB8();
  v3[4] = sub_244257BA8();
  v5 = sub_244257B68();

  return MEMORY[0x2822009F8](sub_244239094, v5, v4);
}

uint64_t sub_244239094()
{
  v1 = v0[3];

  v2 = (v1 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_completionHandler);
  v3 = *(v1 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_completionHandler);
  if (v3)
  {
    v4 = v0[2];
    v5 = v2[1];

    v3(v4);
    sub_244238604(v3, v5);
    v6 = *v2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v0[3];
  v8 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_244238604(v6, v8);
  v9 = (v7 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
  v10 = *(v7 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler);
  v11 = *(v7 + OBJC_IVAR____TtC14ContinuitySingP33_5B54654BDEC69E43728C3C1F71B19E1916PickerDataSource_dismissedHandler + 8);
  *v9 = 0;
  v9[1] = 0;
  sub_244238604(v10, v11);
  v12 = v0[1];

  return v12();
}

uint64_t sub_2442391A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2442391E0(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2442372C8;

  return sub_244238FFC(a1, v6, v4);
}

unint64_t sub_24423927C()
{
  result = qword_27EDDBEA8;
  if (!qword_27EDDBEA8)
  {
    sub_244257968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDBEA8);
  }

  return result;
}

uint64_t sub_2442392D4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x245D5C0F0]();
  *a1 = result;
  return result;
}

unint64_t sub_24423932C()
{
  result = qword_27EDDBEB0;
  if (!qword_27EDDBEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDBEA0, &qword_24425C548);
    sub_244257968();
    sub_24423927C();
    swift_getOpaqueTypeConformance2();
    sub_2442393FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDBEB0);
  }

  return result;
}

unint64_t sub_2442393FC()
{
  result = qword_27EDDBEB8;
  if (!qword_27EDDBEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDBEC0, &qword_24425C5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDBEB8);
  }

  return result;
}

uint64_t sub_244239460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEA0, &qword_24425C548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2442394C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDBEA0, &qword_24425C548);
  sub_24423932C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_244239520(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBED8, &qword_24425C608);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEE0, &qword_24425C610);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEE8, &qword_24425C618);
  v3[10] = swift_task_alloc();
  v4 = sub_2442573A8();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_244239698, 0, 0);
}

uint64_t sub_244239698()
{
  if (*(v0[5] + 16))
  {
    v1 = swift_task_alloc();
    v0[15] = v1;
    *v1 = v0;
    v1[1] = sub_2442397A4;
    v2 = v0[6];

    return sub_24423A8C8(v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2442397A4()
{

  return MEMORY[0x2822009F8](sub_2442398A0, 0, 0);
}

uint64_t sub_2442398A0()
{
  v53 = v0;
  sub_244257478();
  v1 = sub_244257438();

  if (v1)
  {
    v2 = v0[14];
    v3 = v0[11];
    v4 = v0[12];
    sub_244257478();
    v5 = sub_244257428();

    v6 = MEMORY[0x277D2A8D8];
    if ((v5 & 1) == 0)
    {
      v6 = MEMORY[0x277D2A8D0];
    }

    (*(v4 + 104))(v2, *v6, v3);

    v7 = sub_244257508();
    v8 = sub_244257C58();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[5];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v52 = v11;
      *v10 = 136315138;
      v12 = sub_244257948();
      v13 = MEMORY[0x245D5C4A0](v9, v12);
      v15 = sub_24423CC9C(v13, v14, &v52);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_2441FB000, v7, v8, "enqueuing songs %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x245D5D2D0](v11, -1, -1);
      MEMORY[0x245D5D2D0](v10, -1, -1);
    }

    v16 = v0[5];
    v0[16] = sub_244257468();
    v0[4] = v16;
    v17 = v0 + 4;
    v18 = swift_task_alloc();
    v0[17] = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEF0, &qword_24425C628);
    v20 = sub_244257948();
    v21 = sub_24423D4F8(&qword_27EDDBEF8, &qword_27EDDBEF0, &qword_24425C628, MEMORY[0x277D83970]);
    *v18 = v0;
    v18[1] = sub_24423A004;
    v22 = v0[14];
LABEL_16:
    v55 = v21;
    v56 = MEMORY[0x277CD81D8];

    return MEMORY[0x282189BB8](v17, v22, 0xD000000000000018, 0x8000000244262E50, 0, 0xF000000000000000, v19, v20);
  }

  v23 = v0[10];
  sub_244257468();
  sub_244257398();

  v24 = sub_2442573D8();
  v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
  sub_244237440(v23, &qword_27EDDBEE8, &qword_24425C618);
  if (v25 != 1)
  {
    v42 = sub_244257508();
    v43 = sub_244257C58();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2441FB000, v42, v43, "could not queue after current entry, but there is a current entry, so queueing song at tail", v44, 2u);
      MEMORY[0x245D5D2D0](v44, -1, -1);
    }

    v46 = v0[12];
    v45 = v0[13];
    v47 = v0[11];
    v48 = v0[5];

    v49 = sub_244257468();
    v0[3] = v48;
    v17 = v0 + 3;
    v0[19] = v49;
    (*(v46 + 104))(v45, *MEMORY[0x277D2A8E0], v47);
    v50 = swift_task_alloc();
    v0[20] = v50;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEF0, &qword_24425C628);
    v20 = sub_244257948();
    v21 = sub_24423D4F8(&qword_27EDDBEF8, &qword_27EDDBEF0, &qword_24425C628, MEMORY[0x277D83970]);
    *v50 = v0;
    v50[1] = sub_24423A134;
    v22 = v0[13];
    goto LABEL_16;
  }

  v26 = sub_244257508();
  v27 = sub_244257C58();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v0[5];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v52 = v30;
    *v29 = 136315138;
    v31 = sub_244257948();
    v32 = MEMORY[0x245D5C4A0](v28, v31);
    v34 = sub_24423CC9C(v32, v33, &v52);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_2441FB000, v26, v27, "player sees no active queue entry, playing songs %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x245D5D2D0](v30, -1, -1);
    MEMORY[0x245D5D2D0](v29, -1, -1);
  }

  v35 = v0[8];
  v36 = v0[9];
  v37 = v0[5];
  v38 = sub_244257948();
  (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
  v39 = sub_244257368();
  (*(*(v39 - 8) + 56))(v35, 1, 1, v39);
  v0[2] = v37;
  sub_2442573F8();
  swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEF0, &qword_24425C628);
  sub_24423D4F8(&qword_27EDDBEF8, &qword_27EDDBEF0, &qword_24425C628, MEMORY[0x277D83970]);
  v40 = sub_2442573C8();
  v0[22] = v40;
  sub_2442573B8();
  v41 = swift_task_alloc();
  v0[23] = v41;
  *v41 = v0;
  v41[1] = sub_24423A320;

  return MEMORY[0x282189B30](v40);
}

uint64_t sub_24423A004()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24423A434;
  }

  else
  {
    v2 = sub_24423D59C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24423A134()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(v5 + 168) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24423A5C4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24423A320()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_24423A73C;
  }

  else
  {
    v2 = sub_24423D5A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24423A434()
{
  v1 = sub_244257C48();
  v2 = sub_244257508();
  v3 = os_log_type_enabled(v2, v1);
  v4 = v0[18];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v4;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2441FB000, v2, v1, "Failed to enqueue song to system music player: %@", v5, 0xCu);
    sub_244237440(v6, &qword_27EDDBF00, &qword_24425CA80);
    MEMORY[0x245D5D2D0](v6, -1, -1);
    MEMORY[0x245D5D2D0](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 8))(v0[14], v0[11]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24423A5C4()
{
  v1 = sub_244257C48();
  v2 = sub_244257508();
  v3 = os_log_type_enabled(v2, v1);
  v4 = *(v0 + 168);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v4;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2441FB000, v2, v1, "Failed to enqueue song to system music player: %@", v5, 0xCu);
    sub_244237440(v6, &qword_27EDDBF00, &qword_24425CA80);
    MEMORY[0x245D5D2D0](v6, -1, -1);
    MEMORY[0x245D5D2D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24423A73C()
{
  v1 = sub_244257C48();
  v2 = sub_244257508();
  v3 = os_log_type_enabled(v2, v1);
  v4 = *(v0 + 192);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v4;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2441FB000, v2, v1, "Failed to play songs on system music player: %@", v5, 0xCu);
    sub_244237440(v6, &qword_27EDDBF00, &qword_24425CA80);
    MEMORY[0x245D5D2D0](v6, -1, -1);
    MEMORY[0x245D5D2D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24423A8C8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_244257378();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24423A994, 0, 0);
}

uint64_t sub_24423A994(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[5];
  v5 = v1[6];
  sub_244257478();
  sub_244257408();

  (*(v5 + 104))(v3, *MEMORY[0x277D2A8A0], v4);
  sub_24423D4B0(&qword_27EDDBF08, MEMORY[0x277D2A8A8], MEMORY[0x277D2A8B0]);
  v6 = sub_244257A38();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v7(v2, v4);
  if (v6)
  {
    v8 = sub_244257508();
    v9 = sub_244257C58();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2441FB000, v8, v9, "waiting for music player state to become valid...", v10, 2u);
      MEMORY[0x245D5D2D0](v10, -1, -1);
    }

    v11 = v1[4];

    v1[2] = 0;
    v12 = swift_task_alloc();
    v1[9] = v12;
    *(v12 + 16) = v1 + 2;
    *(v12 + 24) = v11;
    v13 = swift_task_alloc();
    v1[10] = v13;
    *v13 = v1;
    v13[1] = sub_24423AC1C;
    v14 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v13, 0, 0, 0xD00000000000001ALL, 0x8000000244262E70, sub_24423D290, v12, v14);
  }

  else
  {

    v15 = v1[1];

    return v15();
  }
}

uint64_t sub_24423AC1C()
{

  return MEMORY[0x2822009F8](sub_24423AD34, 0, 0);
}

uint64_t sub_24423AD34()
{
  v11 = v0;

  v1 = sub_244257508();
  v2 = sub_244257C58();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    sub_244257478();
    sub_244257408();

    v5 = sub_244257A88();
    v7 = sub_24423CC9C(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2441FB000, v1, v2, "music player state validated: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x245D5D2D0](v4, -1, -1);
    MEMORY[0x245D5D2D0](v3, -1, -1);
  }

  if (*(v0 + 16))
  {
    sub_244257698();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24423AEC4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBED8, &qword_24425C608);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF10, &qword_24425C638);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBEE8, &qword_24425C618);
  v3[10] = swift_task_alloc();
  v4 = sub_2442573A8();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24423B03C, 0, 0);
}

uint64_t sub_24423B03C()
{
  if (*(v0[5] + 16))
  {
    v1 = swift_task_alloc();
    v0[15] = v1;
    *v1 = v0;
    v1[1] = sub_24423B148;
    v2 = v0[6];

    return sub_24423A8C8(v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24423B148()
{

  return MEMORY[0x2822009F8](sub_24423B244, 0, 0);
}

uint64_t sub_24423B244(uint64_t a1)
{
  v55 = v1;
  sub_244257478();
  v2 = sub_244257438();

  if (v2)
  {
    v3 = v1[14];
    v4 = v1[11];
    v5 = v1[12];
    sub_244257478();
    v6 = sub_244257428();

    v7 = MEMORY[0x277D2A8D8];
    if ((v6 & 1) == 0)
    {
      v7 = MEMORY[0x277D2A8D0];
    }

    (*(v5 + 104))(v3, *v7, v4);

    v8 = sub_244257508();
    v9 = sub_244257C58();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v1[5];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v54 = v12;
      *v11 = 136315138;
      v13 = sub_2442578F8();
      v14 = MEMORY[0x245D5C4A0](v10, v13);
      v16 = sub_24423CC9C(v14, v15, &v54);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2441FB000, v8, v9, "enqueuing music videos %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x245D5D2D0](v12, -1, -1);
      MEMORY[0x245D5D2D0](v11, -1, -1);
    }

    v17 = v1[5];
    v1[16] = sub_244257468();
    v1[4] = v17;
    v18 = v1 + 4;
    v19 = swift_task_alloc();
    v1[17] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF18, &qword_24425C640);
    v21 = sub_2442578F8();
    v22 = sub_24423D4F8(&qword_27EDDBF20, &qword_27EDDBF18, &qword_24425C640, MEMORY[0x277D83970]);
    v23 = sub_24423D4B0(&qword_27EDDBF28, MEMORY[0x277CD7E50], MEMORY[0x277D2AE88]);
    *v19 = v1;
    v19[1] = sub_24423BA44;
    v24 = v1[14];
LABEL_16:
    v57 = v22;
    v58 = v23;

    return MEMORY[0x282189BB8](v18, v24, 0xD000000000000018, 0x8000000244262E50, 0, 0xF000000000000000, v20, v21);
  }

  v25 = v1[10];
  sub_244257468();
  sub_244257398();

  v26 = sub_2442573D8();
  v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
  sub_244237440(v25, &qword_27EDDBEE8, &qword_24425C618);
  if (v27 != 1)
  {
    v44 = sub_244257508();
    v45 = sub_244257C58();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2441FB000, v44, v45, "could not queue after current entry, but there is a current entry, so queueing music video at tail", v46, 2u);
      MEMORY[0x245D5D2D0](v46, -1, -1);
    }

    v48 = v1[12];
    v47 = v1[13];
    v49 = v1[11];
    v50 = v1[5];

    v51 = sub_244257468();
    v1[3] = v50;
    v18 = v1 + 3;
    v1[19] = v51;
    (*(v48 + 104))(v47, *MEMORY[0x277D2A8E0], v49);
    v52 = swift_task_alloc();
    v1[20] = v52;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF18, &qword_24425C640);
    v21 = sub_2442578F8();
    v22 = sub_24423D4F8(&qword_27EDDBF20, &qword_27EDDBF18, &qword_24425C640, MEMORY[0x277D83970]);
    v23 = sub_24423D4B0(&qword_27EDDBF28, MEMORY[0x277CD7E50], MEMORY[0x277D2AE88]);
    *v52 = v1;
    v52[1] = sub_24423BC1C;
    v24 = v1[13];
    goto LABEL_16;
  }

  v28 = sub_244257508();
  v29 = sub_244257C58();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = v1[5];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v54 = v32;
    *v31 = 136315138;
    v33 = sub_2442578F8();
    v34 = MEMORY[0x245D5C4A0](v30, v33);
    v36 = sub_24423CC9C(v34, v35, &v54);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_2441FB000, v28, v29, "playing sees no active queue entry, playing music videos %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x245D5D2D0](v32, -1, -1);
    MEMORY[0x245D5D2D0](v31, -1, -1);
  }

  v37 = v1[8];
  v38 = v1[9];
  v39 = v1[5];
  v40 = sub_2442578F8();
  (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
  v41 = sub_244257368();
  (*(*(v41 - 8) + 56))(v37, 1, 1, v41);
  v1[2] = v39;
  sub_2442573F8();
  swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF18, &qword_24425C640);
  sub_24423D4F8(&qword_27EDDBF20, &qword_27EDDBF18, &qword_24425C640, MEMORY[0x277D83970]);
  sub_24423D4B0(&qword_27EDDBF28, MEMORY[0x277CD7E50], MEMORY[0x277D2AE88]);
  v42 = sub_2442573C8();
  v1[22] = v42;
  sub_2442573B8();
  v43 = swift_task_alloc();
  v1[23] = v43;
  *v43 = v1;
  v43[1] = sub_24423BE08;

  return MEMORY[0x282189B30](v42);
}

uint64_t sub_24423BA44()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24423BFB4;
  }

  else
  {
    v2 = sub_24423BB74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24423BB74()
{
  (*(v0[12] + 8))(v0[14], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24423BC1C()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(v5 + 168) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24423C144, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24423BE08()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_24423C2BC;
  }

  else
  {
    v2 = sub_24423BF1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24423BF1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24423BFB4()
{
  v1 = sub_244257C48();
  v2 = sub_244257508();
  v3 = os_log_type_enabled(v2, v1);
  v4 = v0[18];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v4;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2441FB000, v2, v1, "Failed to enqueue music videos to system music player: %@", v5, 0xCu);
    sub_244237440(v6, &qword_27EDDBF00, &qword_24425CA80);
    MEMORY[0x245D5D2D0](v6, -1, -1);
    MEMORY[0x245D5D2D0](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 8))(v0[14], v0[11]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24423C144()
{
  v1 = sub_244257C48();
  v2 = sub_244257508();
  v3 = os_log_type_enabled(v2, v1);
  v4 = *(v0 + 168);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v4;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2441FB000, v2, v1, "Failed to enqueue music videos to system music player: %@", v5, 0xCu);
    sub_244237440(v6, &qword_27EDDBF00, &qword_24425CA80);
    MEMORY[0x245D5D2D0](v6, -1, -1);
    MEMORY[0x245D5D2D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24423C2BC()
{
  v1 = sub_244257C48();
  v2 = sub_244257508();
  v3 = os_log_type_enabled(v2, v1);
  v4 = *(v0 + 192);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v4;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2441FB000, v2, v1, "Failed to play music videos on system music player: %@", v5, 0xCu);
    sub_244237440(v6, &qword_27EDDBF00, &qword_24425CA80);
    MEMORY[0x245D5D2D0](v6, -1, -1);
    MEMORY[0x245D5D2D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24423C448(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF30, &qword_24425C648);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  sub_244257478();
  v10 = sub_244257418();

  v15[1] = v10;
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v9, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF38, &qword_24425C650);
  sub_24423D4F8(&qword_27EDDBF40, &qword_27EDDBF38, &qword_24425C650, MEMORY[0x277CBCD90]);
  v13 = sub_244257728();

  *a2 = v13;
}

uint64_t sub_24423C638(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_244257838();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_244257858();
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF30, &qword_24425C648);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  sub_24423D30C();
  v13 = sub_244257C78();
  (*(v10 + 16))(v12, a2, v9);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v19;
  (*(v10 + 32))(v15 + v14, v12, v9);
  aBlock[4] = sub_24423D428;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24423CC58;
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);

  sub_244257848();
  v23 = MEMORY[0x277D84F90];
  sub_24423D4B0(&qword_27EDDBF50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF58, &qword_24425C658);
  sub_24423D4F8(&qword_27EDDBF60, &qword_27EDDBF58, &qword_24425C658, MEMORY[0x277D83970]);
  sub_244257CC8();
  MEMORY[0x245D5C5F0](0, v8, v5, v16);
  _Block_release(v16);

  (*(v22 + 8))(v5, v3);
  (*(v20 + 8))(v8, v21);
}

uint64_t sub_24423C9F0()
{
  v0 = sub_244257378();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_244257478();
  sub_244257408();

  (*(v1 + 104))(v4, *MEMORY[0x277D2A8A0], v0);
  sub_24423D4B0(&qword_27EDDBF08, MEMORY[0x277D2A8A8], MEMORY[0x277D2A8B0]);
  v7 = sub_244257A38();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if ((v7 & 1) == 0)
  {
    sub_244257478();
    v9 = sub_244257448();

    if (v9 & 1) != 0 || (sub_244257478(), v10 = sub_244257458(), , (v10))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF30, &qword_24425C648);
      sub_244257B88();
    }
  }
}

uint64_t sub_24423CC58(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_24423CC9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24423CD68(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24423D540(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24423CD68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24423CE74(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_244257DB8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_24423CE74(uint64_t a1, unint64_t a2)
{
  v3 = sub_24423CEC0(a1, a2);
  sub_24423CFF0(&unk_285796F80);
  return v3;
}

void *sub_24423CEC0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24423D0DC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_244257DB8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_244257AD8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24423D0DC(v10, 0);
        result = sub_244257D78();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24423CFF0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24423D150(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24423D0DC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF68, &unk_24425C660);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24423D150(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF68, &unk_24425C660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_24423D29C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF30, &qword_24425C648) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_24423C638(v2, v3);
}

unint64_t sub_24423D30C()
{
  result = qword_27EDDBF48;
  if (!qword_27EDDBF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDDBF48);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF30, &qword_24425C648);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24423D428()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF30, &qword_24425C648);

  return sub_24423C9F0();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24423D4B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24423D4F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24423D540(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24423D5A8()
{
  v0 = sub_244257528();
  __swift_allocate_value_buffer(v0, qword_27EDDC5E0);
  __swift_project_value_buffer(v0, qword_27EDDC5E0);
  return sub_244257518();
}

id CSReactionView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *CSReactionView.init()()
{
  v1 = OBJC_IVAR___CSReactionView_avatarStackView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D75A70]) init];
  v2 = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR___CSReactionView_senderReactions] = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR___CSReactionView_senderAvatarViews] = v2;
  *&v0[OBJC_IVAR___CSReactionView_activeEmojiLabels] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR___CSReactionView_cleanupTimer] = 0;
  v3 = OBJC_IVAR___CSReactionView_glowView;
  type metadata accessor for GlowView();
  *&v0[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v33.receiver = v0;
  v33.super_class = type metadata accessor for CSReactionView();
  v4 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR___CSReactionView_glowView;
  v6 = *&v4[OBJC_IVAR___CSReactionView_glowView];
  v7 = v4;
  [v7 addSubview_];
  v8 = OBJC_IVAR___CSReactionView_avatarStackView;
  [*&v7[OBJC_IVAR___CSReactionView_avatarStackView] setAxis_];
  [*&v7[v8] setSpacing_];
  [v7 addSubview_];
  [*&v4[v5] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v7[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFA0, &qword_24425C6A8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24425C670;
  v10 = [*&v4[v5] leadingAnchor];
  v11 = [v7 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v9 + 32) = v12;
  v13 = [*&v4[v5] trailingAnchor];
  v14 = [v7 trailingAnchor];

  v15 = [v13 constraintEqualToAnchor_];
  *(v9 + 40) = v15;
  v16 = [*&v4[v5] bottomAnchor];
  v17 = [v7 bottomAnchor];

  v18 = [v16 constraintEqualToAnchor_];
  *(v9 + 48) = v18;
  v19 = [*&v4[v5] topAnchor];
  v20 = [v7 topAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(v9 + 56) = v21;
  v22 = [*&v7[v8] centerXAnchor];
  v23 = [v7 centerXAnchor];

  v24 = [v22 constraintEqualToAnchor_];
  *(v9 + 64) = v24;
  v25 = [*&v7[v8] centerYAnchor];
  v26 = [v7 bottomAnchor];

  v27 = [v25 constraintEqualToAnchor:v26 constant:-80.0];
  *(v9 + 72) = v27;
  v28 = [*&v7[v8] heightAnchor];
  v29 = [v28 constraintEqualToConstant_];

  *(v9 + 80) = v29;
  sub_244243124(0, &qword_27EDDBFA8, 0x277CCAAD0);
  v30 = sub_244257B18();

  [v32 activateConstraints_];

  return v7;
}

id CSReactionView.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___CSReactionView_cleanupTimer];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CSReactionView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_24423DD1C()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_2442439F0;
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24423E3B0;
  v6[3] = &block_descriptor_55;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:5.0];
  _Block_release(v3);
  v5 = *(v0 + OBJC_IVAR___CSReactionView_cleanupTimer);
  *(v0 + OBJC_IVAR___CSReactionView_cleanupTimer) = v4;
}

uint64_t sub_24423DE2C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_244257BD8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_244257BB8();

  v7 = sub_244257BA8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;

  sub_24423E0DC(0, 0, v3, &unk_24425C750, v8);
}

uint64_t sub_24423DFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_244257BB8();
  v4[7] = sub_244257BA8();
  v6 = sub_244257B68();

  return MEMORY[0x2822009F8](sub_24423E040, v6, v5);
}

uint64_t sub_24423E040()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_24423E418();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24423E0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2442373D0(a3, v25 - v10);
  v12 = sub_244257BD8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_244242DFC(v11);
  }

  else
  {
    sub_244257BC8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_244257B68();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_244257AA8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFD8, &qword_24425C768);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_244242DFC(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_244242DFC(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFD8, &qword_24425C768);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_24423E3B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_24423E418()
{
  if (qword_27EDDC5D8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = sub_244257528();
    __swift_project_value_buffer(v1, qword_27EDDC5E0);
    v2 = v0;
    v3 = sub_244257508();
    v4 = sub_244257C38();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134218496;
      *(v5 + 4) = *(*&v2[OBJC_IVAR___CSReactionView_senderAvatarViews] + 16);
      *(v5 + 12) = 2048;
      v6 = OBJC_IVAR___CSReactionView_senderReactions;
      swift_beginAccess();
      *(v5 + 14) = *(*&v2[v6] + 16);
      *(v5 + 22) = 2048;
      v7 = OBJC_IVAR___CSReactionView_activeEmojiLabels;
      swift_beginAccess();
      v8 = *&v2[v7];
      if ((v8 & 0xC000000000000001) != 0)
      {

        v9 = sub_244257D08();
      }

      else
      {
        v9 = *(v8 + 16);
      }

      *(v5 + 24) = v9;

      _os_log_impl(&dword_2441FB000, v3, v4, "FORCE CLEANUP TRIGGERED - avatars: %ld, sender reactions: %ld, active emoji labels: %ld", v5, 0x20u);
      MEMORY[0x245D5D2D0](v5, -1, -1);
    }

    else
    {
    }

    v10 = OBJC_IVAR___CSReactionView_senderReactions;
    swift_beginAccess();
    *&v2[v10] = MEMORY[0x277D84F98];

    v11 = OBJC_IVAR___CSReactionView_activeEmojiLabels;
    swift_beginAccess();
    v27 = v11;
    v12 = *&v2[v11];
    if ((v12 & 0xC000000000000001) != 0)
    {

      sub_244257CF8();
      sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
      sub_24424316C();
      sub_244257C18();
      v12 = v29;
      v13 = v30;
      v0 = v31;
      v14 = v32;
      v15 = v33;
    }

    else
    {
      v16 = -1 << *(v12 + 32);
      v13 = v12 + 56;
      v0 = ~v16;
      v17 = -v16;
      v18 = v17 < 64 ? ~(-1 << v17) : -1;
      v15 = v18 & *(v12 + 56);

      v14 = 0;
    }

    v26 = v0;
    v19 = (v0 + 64) >> 6;
    if (v12 < 0)
    {
      break;
    }

LABEL_15:
    v20 = v14;
    v21 = v15;
    v22 = v14;
    if (v15)
    {
LABEL_19:
      v23 = (v21 - 1) & v21;
      v0 = *(*(v12 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
      if (v0)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        goto LABEL_25;
      }

      v21 = *(v13 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  while (sub_244257D28())
  {
    sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
    swift_dynamicCast();
    v0 = v28;
    v22 = v14;
    v23 = v15;
    if (!v28)
    {
      break;
    }

LABEL_23:
    [v0 removeFromSuperview];

    v14 = v22;
    v15 = v23;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  sub_2442431D4(v12);
  *&v2[v27] = MEMORY[0x277D84FA0];

  (*((*MEMORY[0x277D85000] & **&v2[OBJC_IVAR___CSReactionView_glowView]) + 0x90))(v24);
  v25 = *&v2[OBJC_IVAR___CSReactionView_cleanupTimer];
  *&v2[OBJC_IVAR___CSReactionView_cleanupTimer] = 0;
}

uint64_t sub_24423E8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v66 = &v55 - v14;
  v15 = *&v4[OBJC_IVAR___CSReactionView_glowView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFB0, &qword_24425C6B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24425C680;
  v65 = a1;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  v17 = *((*MEMORY[0x277D85000] & *v15) + 0x68);

  v17(v16);

  v18 = OBJC_IVAR___CSReactionView_senderReactions;
  swift_beginAccess();
  v64 = v5;
  v19 = *&v5[v18];
  v20 = MEMORY[0x277D84F90];
  if (*(v19 + 16))
  {

    v21 = sub_2442410B8(a3, a4);
    if (v22)
    {
      v23 = *(*(v19 + 56) + 8 * v21);
      swift_bridgeObjectRetain_n();
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v24 = v65;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
    v24 = v65;
  }

  v25 = *(v23 + 2);
  if (v25)
  {
    v26 = &v23[16 * v25 + 16];
    v28 = *v26;
    v27 = *(v26 + 1);

    if (v28 == v24 && v27 == a2)
    {
    }

    v30 = sub_244257EB8();

    if (v30)
    {
    }
  }

  else
  {
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_244240FAC(0, *(v23 + 2) + 1, 1, v23);
  }

  v32 = *(v23 + 2);
  v31 = *(v23 + 3);
  if (v32 >= v31 >> 1)
  {
    v23 = sub_244240FAC((v31 > 1), v32 + 1, 1, v23);
  }

  *(v23 + 2) = v32 + 1;
  v33 = &v23[16 * v32];
  *(v33 + 4) = v24;
  *(v33 + 5) = a2;
  v60 = a2;
  v34 = v64;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = *&v34[v18];
  *&v34[v18] = 0x8000000000000000;
  v61 = a3;
  sub_2442413D8(v23, a3, a4, isUniquelyReferenced_nonNull_native);
  v62 = a4;

  *&v34[v18] = v71;
  swift_endAccess();
  [*&v34[OBJC_IVAR___CSReactionView_cleanupTimer] invalidate];
  sub_24423DD1C();
  v63 = swift_allocObject();
  *(v63 + 16) = v20;
  v59 = sub_244257BB8();
  v36 = sub_244257BD8();
  v37 = 0;
  v38 = *(v36 - 8);
  v39 = *(v38 + 56);
  v38 += 56;
  v58 = v39;
  v56 = (v38 - 8);
  v57 = v38;
  v55 = (v38 - 48);
  v40 = v63;
  do
  {
    v41 = v13;
    v42 = v66;
    v58(v66, 1, 1, v36);
    v43 = v60;

    v44 = v62;

    v45 = v64;

    v46 = sub_244257BA8();
    v47 = swift_allocObject();
    v47[2] = v46;
    v47[3] = MEMORY[0x277D85700];
    v47[4] = v45;
    v47[5] = v61;
    v47[6] = v44;
    v47[7] = v65;
    v47[8] = v43;
    v47[9] = v40;
    v47[10] = v37;
    v48 = v42;
    v13 = v41;
    sub_2442373D0(v48, v41);
    LODWORD(v45) = (*v56)(v41, 1, v36);

    if (v45 == 1)
    {
      sub_244242DFC(v41);
    }

    else
    {
      sub_244257BC8();
      (*v55)(v41, v36);
    }

    v49 = v47[2];
    swift_unknownObjectRetain();

    if (v49)
    {
      swift_getObjectType();
      v50 = sub_244257B68();
      v52 = v51;
      swift_unknownObjectRelease();
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    sub_244242DFC(v66);
    v53 = swift_allocObject();
    *(v53 + 16) = &unk_24425C6C0;
    *(v53 + 24) = v47;
    if (v52 | v50)
    {
      v67 = 0;
      v68 = 0;
      v69 = v50;
      v70 = v52;
    }

    ++v37;
    swift_task_create();
  }

  while (v37 != 12);
}

uint64_t sub_24423EEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = v13;
  v8[35] = v14;
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[29] = a4;
  sub_244257BB8();
  v8[36] = sub_244257BA8();
  v10 = sub_244257B68();
  v8[37] = v10;
  v8[38] = v9;

  return MEMORY[0x2822009F8](sub_24423EF64, v10, v9);
}

uint64_t sub_24423EF64()
{
  v1 = sub_2442419B4(0x3B9ACA01uLL);
  *(v0 + 312) = v1;
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 320) = v3;
    *v3 = v0;
    v3[1] = sub_24423F014;
    v1 = v2;
  }

  return MEMORY[0x282200480](v1);
}

uint64_t sub_24423F014()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_244243C50;
  }

  else
  {
    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_24423F138;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

void sub_24423F138()
{
  v94 = v0;
  v1 = *(v0 + 232);

  v2 = OBJC_IVAR___CSReactionView_senderReactions;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = *(v0 + 240);
    v4 = *(v0 + 248);

    v6 = sub_2442410B8(v5, v4);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);

      v9 = *(v8 + 16);
      if (v9)
      {
        v11 = *(v0 + 256);
        v10 = *(v0 + 264);
        v12 = (v8 + 16 + 16 * v9);
        v14 = *v12;
        v13 = v12[1];

        if (v14 == v11 && v13 == v10)
        {
        }

        else
        {
          v16 = sub_244257EB8();

          if ((v16 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v17 = *(v0 + 272);
        v18 = [objc_allocWithZone(MEMORY[0x277D756C0]) init];
        v19 = sub_244257A48();
        [v18 setText_];

        v20 = [objc_opt_self() systemFontOfSize_];
        [v18 setFont_];

        v21 = v18;
        [v21 sizeToFit];
        swift_beginAccess();
        v22 = v21;
        MEMORY[0x245D5C470]();
        if (*((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_244257B48();
        }

        v23 = *(v0 + 280);
        v24 = *(v0 + 232);
        sub_244257B58();
        swift_endAccess();
        swift_beginAccess();
        v25 = v22;
        sub_24424177C(&v93, v25);
        a = v93.a;
        swift_endAccess();

        v27 = sub_2442419B4(0x20000000000001uLL);
        v28 = vcvtd_n_f64_u64(v27, 0x35uLL) * 200.0 + -100.0;
        if (v27 == 0x20000000000000)
        {
          v29 = 100.0;
        }

        else
        {
          v29 = v28;
        }

        v30 = sub_2442419B4(0x20000000000001uLL);
        v31 = vcvtd_n_f64_u64(v30, 0x35uLL) * 200.0 + -100.0;
        if (v30 == 0x20000000000000)
        {
          v32 = 100.0;
        }

        else
        {
          v32 = v31;
        }

        [v24 bounds];
        v33 = CGRectGetMidX(v96) + v29;
        [v24 bounds];
        v34 = v32 + CGRectGetMaxY(v97) + -200.0;
        [v25 setCenter_];

        v35 = sub_2442419B4(0x20000000000001uLL);
        v36 = vcvtd_n_f64_u64(v35, 0x35uLL) * 0.5 + 0.5;
        if (v35 == 0x20000000000000)
        {
          v36 = 1.0;
        }

        CGAffineTransformMakeScale(&v93, v36, v36);
        v37 = *&v93.c;
        v38 = *&v93.tx;
        *(v0 + 16) = *&v93.a;
        *(v0 + 32) = v37;
        *(v0 + 48) = v38;
        [v25 setTransform_];

        [v24 addSubview_];
        if (v23 <= 4)
        {
          v39 = *(v0 + 232);
          [v39 bounds];
          v40 = CGRectGetWidth(v98) * 0.25;
          [v39 bounds];
          v41 = CGRectGetWidth(v99) * 0.5;
          if (v40 > v41)
          {
            __break(1u);
          }

          else if (COERCE__INT64(fabs(v41 - v40)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v42 = sub_2442419B4(0x20000000000001uLL);
            v43 = v40 + (v41 - v40) * vcvtd_n_f64_u64(v42, 0x35uLL);
            if (v42 == 0x20000000000000)
            {
              v43 = v41;
            }

            v44 = v33 - v43;
            goto LABEL_40;
          }

          __break(1u);
          goto LABEL_53;
        }

        v45 = *(v0 + 280);
        [*(v0 + 232) bounds];
        Width = CGRectGetWidth(v100);
        v47 = Width;
        if (v45 > 9)
        {
          if (Width < 0.0)
          {
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_56:
            __break(1u);
            return;
          }

          v52 = sub_2442419B4(0x20000000000001uLL);
          v51 = v47 * vcvtd_n_f64_u64(v52, 0x35uLL) + 0.0;
          if (v52 == 0x20000000000000)
          {
            v51 = v47;
          }
        }

        else
        {
          v48 = Width * 0.25;
          [*(v0 + 232) bounds];
          v49 = CGRectGetWidth(v101) * 0.5;
          if (v48 > v49)
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          if (COERCE__INT64(fabs(v49 - v48)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v50 = sub_2442419B4(0x20000000000001uLL);
          v51 = v48 + (v49 - v48) * vcvtd_n_f64_u64(v50, 0x35uLL);
          if (v50 == 0x20000000000000)
          {
            v51 = v49;
          }
        }

        v44 = v33 + v51;
LABEL_40:
        v91 = v44;
        v86 = *(v0 + 256);
        v87 = *(v0 + 272);
        v89 = *(v0 + 264);
        v90 = *(v0 + 248);
        v85 = *(v0 + 240);
        v88 = *(v0 + 232);
        v53 = *(v0 + 312) / 1000000000.0;
        v54 = sub_2442419B4(0x20000000000001uLL);
        v55 = vcvtd_n_f64_u64(v54, 0x35uLL) * 320.0 + -160.0;
        if (v54 == 0x20000000000000)
        {
          v56 = 160.0;
        }

        else
        {
          v56 = v55;
        }

        v57 = [objc_allocWithZone(MEMORY[0x277D75200]) init];
        [v57 moveToPoint_];
        v58 = (v33 + v91) * 0.5;
        v59 = (v56 - v34) * 0.5;
        v60 = sub_2442419B4(0x20000000000001uLL);
        v61 = vcvtd_n_f64_u64(v60, 0x35uLL) * 100.0 + -50.0;
        if (v60 == 0x20000000000000)
        {
          v61 = 50.0;
        }

        v62 = v58 + v61;
        v63 = sub_2442419B4(0x20000000000001uLL);
        v64 = vcvtd_n_f64_u64(v63, 0x35uLL) * 100.0 + -50.0;
        if (v63 == 0x20000000000000)
        {
          v64 = 50.0;
        }

        v65 = v34 + v59 + v64;
        v66 = sub_2442419B4(0x20000000000001uLL);
        v67 = sub_2442419B4(0x20000000000001uLL);
        v68.i64[0] = v66;
        v68.i64[1] = v67;
        v69.f64[0] = v91;
        v69.f64[1] = v34 + v59 + v59;
        [v57 addCurveToPoint:v91 controlPoint1:v56 controlPoint2:{v62, v65, vaddq_f64(v69, vbslq_s8(vceqq_s64(v68, vdupq_n_s64(0x20000000000000uLL)), vdupq_n_s64(0x4049000000000000uLL), vaddq_f64(vmulq_f64(vmulq_f64(vcvtq_f64_u64(v68), vdupq_n_s64(0x3CA0000000000000uLL)), vdupq_n_s64(0x4059000000000000uLL)), vdupq_n_s64(0xC049000000000000))))}];
        v92 = v57;
        v70 = sub_244257A48();
        v71 = [objc_opt_self() animationWithKeyPath_];

        v72 = [v92 CGPath];
        [v71 setPath_];

        v73 = v71;
        [v73 setDuration_];

        [v73 setCalculationMode_];
        v74 = [v25 layer];

        v75 = sub_244257A48();
        [v74 addAnimation:v73 forKey:v75];

        v84 = objc_opt_self();
        v76 = swift_allocObject();
        *(v76 + 16) = v25;
        *(v0 + 96) = sub_244243278;
        *(v0 + 104) = v76;
        *(v0 + 64) = MEMORY[0x277D85DD0];
        *(v0 + 72) = 1107296256;
        *(v0 + 80) = sub_24423CC58;
        *(v0 + 88) = &block_descriptor_1;
        v77 = _Block_copy((v0 + 64));
        v78 = v25;

        v79 = swift_allocObject();
        v79[2] = v87;
        v79[3] = v86;
        v79[4] = v89;
        v79[5] = v85;
        v79[6] = v90;
        v79[7] = v88;
        v79[8] = v78;
        *(v0 + 144) = sub_2442433B0;
        *(v0 + 152) = v79;
        *(v0 + 112) = MEMORY[0x277D85DD0];
        *(v0 + 120) = 1107296256;
        *(v0 + 128) = sub_24423FB4C;
        *(v0 + 136) = &block_descriptor_49;
        v80 = _Block_copy((v0 + 112));
        v81 = v78;

        v82 = v88;

        [v84 animateWithDuration:0 delay:v77 options:v80 animations:0.3 completion:1.5 - (v53 + 0.3)];

        _Block_release(v80);
        _Block_release(v77);

        goto LABEL_48;
      }
    }
  }

LABEL_48:
  v83 = *(v0 + 8);

  v83();
}

double sub_24423FB4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_24423FC9C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v32 = a2;
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v30 = sub_244257BB8();
  v12 = sub_244257BD8();
  v13 = 0;
  v14 = *(v12 - 8);
  v15 = *(v14 + 56);
  v28 = v14 + 56;
  v29 = v15;
  v16 = (v14 + 48);
  v27 = (v14 + 8);
  v15(v11, 1, 1, v12);
  while (1)
  {
    v17 = v32;

    v18 = v33;
    v19 = sub_244257BA8();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = MEMORY[0x277D85700];
    *(v20 + 32) = v13;
    *(v20 + 40) = v31;
    *(v20 + 48) = v17;
    *(v20 + 56) = v18;
    *(v20 + 64) = a3;
    *(v20 + 72) = a4;
    sub_2442373D0(v11, v9);
    LODWORD(v18) = (*v16)(v9, 1, v12);

    if (v18 == 1)
    {
      sub_244242DFC(v9);
    }

    else
    {
      sub_244257BC8();
      (*v27)(v9, v12);
    }

    v21 = *(v20 + 16);
    swift_unknownObjectRetain();

    if (v21)
    {
      swift_getObjectType();
      v22 = sub_244257B68();
      v24 = v23;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    sub_244242DFC(v11);
    v25 = swift_allocObject();
    *(v25 + 16) = &unk_24425C6D8;
    *(v25 + 24) = v20;
    if (v24 | v22)
    {
      v34 = 0;
      v35 = 0;
      v36 = v22;
      v37 = v24;
    }

    ++v13;
    swift_task_create();

    if (v13 == 15)
    {
      break;
    }

    v29(v11, 1, 1, v12);
  }
}

uint64_t sub_24423FF74(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 144) = a1;
  *(v9 + 152) = a2;
  *(v9 + 128) = a8;
  *(v9 + 136) = a9;
  *(v9 + 112) = a6;
  *(v9 + 120) = a7;
  sub_244257BB8();
  *(v9 + 160) = sub_244257BA8();
  v11 = sub_244257B68();
  *(v9 + 168) = v11;
  *(v9 + 176) = v10;

  return MEMORY[0x2822009F8](sub_244240014, v11, v10);
}

uint64_t sub_244240014(uint64_t a1)
{
  v3 = v1[14];
  v4 = 22222222 * v3;
  v1[23] = 22222222 * v3;
  if ((v3 * 22222222) >> 64 != (22222222 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 0)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v5 = swift_task_alloc();
  v1[24] = v5;
  *v5 = v1;
  v5[1] = sub_2442400D4;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_2442400D4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_244243C60;
  }

  else
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_2442401F8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2442401F8()
{
  v45 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v42 = *(v0 + 184) / 1000000000.0;
  v4 = [objc_allocWithZone(MEMORY[0x277D756C0]) init];
  *(v0 + 200) = v4;
  v5 = sub_244257A48();
  [v4 setText_];

  v6 = [objc_opt_self() systemFontOfSize_];
  [v4 setFont_];

  v7 = v4;
  [v7 sizeToFit];
  *(v0 + 208) = OBJC_IVAR___CSReactionView_activeEmojiLabels;
  swift_beginAccess();
  v8 = v7;
  sub_24424177C(&v44, v8);
  a = v44.a;
  swift_endAccess();

  [v8 setCenter_];
  v10 = sub_2442419B4(0x20000000000001uLL);
  v11 = vcvtd_n_f64_u64(v10, 0x35uLL) * 0.5 + 0.5;
  if (v10 == 0x20000000000000)
  {
    v11 = 1.0;
  }

  CGAffineTransformMakeScale(&v44, v11, v11);
  v12 = *&v44.c;
  v13 = *&v44.tx;
  *(v0 + 16) = *&v44.a;
  *(v0 + 32) = v12;
  *(v0 + 48) = v13;
  [v8 setTransform_];

  [v3 addSubview_];
  [v3 bounds];
  MidX = CGRectGetMidX(v47);
  v14 = [objc_allocWithZone(MEMORY[0x277D75200]) init];
  *(v0 + 216) = v14;
  [v14 moveToPoint_];
  v15 = (-100.0 - v1) * 0.5;
  v16 = sub_2442419B4(0x20000000000001uLL);
  v17 = vcvtd_n_f64_u64(v16, 0x35uLL) * 100.0 + -50.0;
  if (v16 == 0x20000000000000)
  {
    v17 = 50.0;
  }

  v18 = (v2 + MidX) * 0.5 + v17;
  v19 = sub_2442419B4(0x20000000000001uLL);
  v20 = vcvtd_n_f64_u64(v19, 0x35uLL) * 100.0 + -50.0;
  if (v19 == 0x20000000000000)
  {
    v20 = 50.0;
  }

  v21 = v1 + v15 + v20;
  v22 = sub_2442419B4(0x20000000000001uLL);
  v23 = sub_2442419B4(0x20000000000001uLL);
  v24.i64[0] = v22;
  v24.i64[1] = v23;
  v25.f64[0] = MidX;
  v25.f64[1] = v1 + v15 + v15;
  [v14 addCurveToPoint:MidX controlPoint1:-100.0 controlPoint2:{v18, v21, vaddq_f64(v25, vbslq_s8(vceqq_s64(v24, vdupq_n_s64(0x20000000000000uLL)), vdupq_n_s64(0x4049000000000000uLL), vaddq_f64(vmulq_f64(vmulq_f64(vcvtq_f64_u64(v24), vdupq_n_s64(0x3CA0000000000000uLL)), vdupq_n_s64(0x4059000000000000uLL)), vdupq_n_s64(0xC049000000000000))))}];
  v26 = sub_244257A48();
  v27 = [objc_opt_self() animationWithKeyPath_];
  *(v0 + 224) = v27;

  v28 = [v14 CGPath];
  [v27 setPath_];

  v29 = v27;
  v30 = sub_2442419B4(0x20000000000001uLL);
  v31 = vcvtd_n_f64_u64(v30, 0x35uLL) * 0.25 + 0.0;
  if (v30 == 0x20000000000000)
  {
    v31 = 0.25;
  }

  [v29 setDuration_];
  [v29 setCalculationMode_];
  [v29 setAutoreverses_];
  LODWORD(v32) = 1.0;
  [v29 setRepeatCount_];
  v33 = [v8 layer];

  v34 = sub_244257A48();
  [v33 addAnimation:v29 forKey:v34];

  [v29 duration];
  v36 = v35;

  v38 = (v36 + -0.05) * 1000000000.0;
  if (COERCE__INT64(fabs(v38)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v38 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v38 >= 1.84467441e19)
  {
LABEL_17:
    __break(1u);
    return MEMORY[0x282200480](v37);
  }

  v39 = v38;
  v40 = swift_task_alloc();
  *(v0 + 232) = v40;
  *v40 = v0;
  v40[1] = sub_2442407A4;
  v37 = v39;

  return MEMORY[0x282200480](v37);
}

uint64_t sub_2442407A4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_244243C6C;
  }

  else
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_2442408C8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2442408C8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];

  swift_beginAccess();
  v4 = sub_2442423B0(v3);
  swift_endAccess();

  [v3 removeFromSuperview];
  v5 = v0[1];

  return v5();
}

id CSReactionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_244240F78(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AvatarImageView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_244240FAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFB0, &qword_24425C6B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2442410B8(uint64_t a1, uint64_t a2)
{
  sub_244257EF8();
  sub_244257AB8();
  v4 = sub_244257F08();

  return sub_244241554(a1, a2, v4);
}

void sub_244241130(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFE0, &qword_24425C778);
  v35 = v4;
  v6 = sub_244257E58();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_244257EF8();
      sub_244257AB8();
      v25 = sub_244257F08();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_2442413D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2442410B8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_244241130(v16, a4 & 1);
      v11 = sub_2442410B8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_244257ED8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_24424160C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_244241554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_244257EB8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_24424160C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFE0, &qword_24425C778);
  v2 = *v0;
  v3 = sub_244257E48();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_24424177C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_244257D18();

    if (v9)
    {

      sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_244257D08();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_244241A40(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_244241C30(v20 + 1);
    }

    v18 = v8;
    sub_244241E58(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
  v11 = sub_244257C98();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_244241EDC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_244257CA8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

unint64_t sub_2442419B4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x245D5D2E0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x245D5D2E0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_244241A40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFD0, &qword_24425C740);
    v2 = sub_244257D68();
    v15 = v2;
    sub_244257CF8();
    if (sub_244257D28())
    {
      sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_244241C30(v9 + 1);
        }

        v2 = v15;
        result = sub_244257C98();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_244257D28());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

void sub_244241C30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFD0, &qword_24425C740);
  v4 = sub_244257D58();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_244257C98();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_244241E58(uint64_t a1, uint64_t a2)
{
  sub_244257C98();
  result = sub_244257CE8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_244241EDC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_244241C30(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24424204C();
      goto LABEL_12;
    }

    sub_24424219C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_244257C98();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_244257CA8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_244257EC8();
  __break(1u);
}

void sub_24424204C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFD0, &qword_24425C740);
  v2 = *v0;
  v3 = sub_244257D48();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_24424219C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFD0, &qword_24425C740);
  v4 = sub_244257D58();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_244257C98();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_2442423B0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_244257D38();

    if (v6)
    {
      v7 = sub_244242548(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
  v10 = sub_244257C98();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_244257CA8();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24424204C();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_2442426B0(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_244242548(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_244257D08();
  v5 = swift_unknownObjectRetain();
  v6 = sub_244241A40(v5, v4);
  v15 = v6;

  v7 = sub_244257C98();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_244243124(0, &qword_27EDDBFC0, 0x277D756C0);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_244257CA8();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_2442426B0(v9);
  result = sub_244257CA8();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2442426B0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_244257CD8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_244257C98();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

uint64_t sub_244242850(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_244242944;

  return v5(v2 + 32);
}

uint64_t sub_244242944()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_244242A58(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_244242B4C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t sub_244242AE8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_244242B4C(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_244242B4C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_244257D08();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

void sub_244242BB0()
{
  v1 = OBJC_IVAR___CSReactionView_avatarStackView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75A70]) init];
  v2 = MEMORY[0x277D84F98];
  *(v0 + OBJC_IVAR___CSReactionView_senderReactions) = MEMORY[0x277D84F98];
  *(v0 + OBJC_IVAR___CSReactionView_senderAvatarViews) = v2;
  *(v0 + OBJC_IVAR___CSReactionView_activeEmojiLabels) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR___CSReactionView_cleanupTimer) = 0;
  v3 = OBJC_IVAR___CSReactionView_glowView;
  type metadata accessor for GlowView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_244257E28();
  __break(1u);
}

uint64_t sub_244242C9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_244242CD4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_244242D2C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2442372C8;

  return sub_24423EEB8(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_244242DFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_244242E64()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_244242EAC()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = v0[8];
  v7 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2442376A0;

  return sub_24423FF74(v6, v7, v8, v9, v10, v2, v3, v4, v5);
}

uint64_t sub_244242F74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_244243054(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_244243074(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGPoint()
{
  if (!qword_27EDDBFB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EDDBFB8);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_244243124(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_24424316C()
{
  result = qword_27EDDBFC8;
  if (!qword_27EDDBFC8)
  {
    sub_244243124(255, &qword_27EDDBFC0, 0x277D756C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDBFC8);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_244243240()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_244243278(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  CGAffineTransformMakeScale(&v5, 0.00001, 0.00001);
  [v3 setTransform_];

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_244243358()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_2442433B0(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  v10 = *(v3 + 16);
  if (v10 >> 62)
  {
    if (sub_244257D08())
    {
      goto LABEL_5;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    swift_beginAccess();
    v11 = *(v3 + 16);
    if (v11 >> 62)
    {
      if (sub_244257D08())
      {
LABEL_7:
        v12 = sub_244242AE8();
        if (v12)
        {
LABEL_11:

          swift_endAccess();
          goto LABEL_17;
        }

        v13 = *(v3 + 16);
        if (v13 >> 62)
        {
          v41 = sub_244257D08();
          v15 = __OFSUB__(v41, 1);
          v16 = v41 - 1;
          if (!v15)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v15 = __OFSUB__(v14, 1);
          v16 = v14 - 1;
          if (!v15)
          {
LABEL_10:
            v12 = sub_244242A58(v16);
            goto LABEL_11;
          }
        }

        __break(1u);
        return;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_36;
  }

  if (qword_27EDDC5D8 != -1)
  {
LABEL_36:
    swift_once();
  }

  v17 = sub_244257528();
  __swift_project_value_buffer(v17, qword_27EDDC5E0);

  v18 = sub_244257508();
  v19 = sub_244257C48();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v4;
    v23 = v7;
    v24 = v6;
    v25 = v21;
    v43[0] = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_24423CC9C(v22, v5, v43);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_24423CC9C(v24, v23, v43);
    _os_log_impl(&dword_2441FB000, v18, v19, "WARNING: labels array already empty during completion for %s, sender: %s", v20, 0x16u);
    swift_arrayDestroy();
    v26 = v25;
    v6 = v24;
    v7 = v23;
    MEMORY[0x245D5D2D0](v26, -1, -1);
    MEMORY[0x245D5D2D0](v20, -1, -1);
  }

LABEL_17:
  swift_beginAccess();
  v27 = sub_2442423B0(v9);
  swift_endAccess();

  [v9 removeFromSuperview];
  swift_beginAccess();
  v28 = *(v3 + 16);
  if (!(v28 >> 62))
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_30:

    return;
  }

  if (sub_244257D08())
  {
    goto LABEL_30;
  }

LABEL_19:
  v29 = OBJC_IVAR___CSReactionView_senderReactions;
  swift_beginAccess();
  v30 = *(v8 + v29);
  if (*(v30 + 16))
  {

    v31 = sub_2442410B8(v6, v7);
    if (v32)
    {
      v33 = *(*(v30 + 56) + 8 * v31);

      v34 = *(v33 + 2);
      if (v34)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v34 - 1) > *(v33 + 3) >> 1)
        {
          v33 = sub_244240FAC(isUniquelyReferenced_nonNull_native, v34, 1, v33);
        }

        sub_2442438F8(0, 1, 0);
      }

      goto LABEL_28;
    }
  }

  v33 = MEMORY[0x277D84F90];
LABEL_28:
  swift_beginAccess();

  v36 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v8 + v29);
  *(v8 + v29) = 0x8000000000000000;
  sub_2442413D8(v33, v6, v7, v36);

  *(v8 + v29) = v42;
  swift_endAccess();
  v37 = *(v33 + 2);

  if (v37 || *(*(v8 + OBJC_IVAR___CSReactionView_senderAvatarViews) + 16))
  {
    goto LABEL_30;
  }

  (*((*MEMORY[0x277D85000] & **(v8 + OBJC_IVAR___CSReactionView_glowView)) + 0x90))(v38);
  v39 = OBJC_IVAR___CSReactionView_cleanupTimer;
  [*(v8 + OBJC_IVAR___CSReactionView_cleanupTimer) invalidate];
  v40 = *(v8 + v39);
  *(v8 + v39) = 0;
}

unint64_t sub_2442438F8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2442439B8()
{
  MEMORY[0x245D5D3C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2442439F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_244243A38(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2442376A0;

  return sub_24423DFA8(a1, v5, v6, v4);
}

uint64_t sub_244243AD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2442376A0;

  return sub_244242850(a1, v4);
}

uint64_t sub_244243B90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2442372C8;

  return sub_244242850(a1, v4);
}

void sub_244243C70()
{
  type metadata accessor for CSDefaults();
  v0 = swift_allocObject();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_244257A48();
  v3 = [v1 initWithSuiteName_];

  *(v0 + 16) = v3;
  qword_27EDDCB38 = v0;
}

uint64_t sub_244243D00()
{
  v0 = swift_allocObject();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_244257A48();
  v3 = [v1 initWithSuiteName_];

  *(v0 + 16) = v3;
  return v0;
}

uint64_t *sub_244243D8C()
{
  if (qword_27EDDC5F8 != -1)
  {
    swift_once();
  }

  return &qword_27EDDCB38;
}

uint64_t sub_244243DDC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_244257A48();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_244257CB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9 = v7;
    v10 = v8;
    if (*(&v8 + 1))
    {
      sub_24424413C(&v9);
      v4 = sub_244257A48();
      v5 = [v1 BOOLForKey_];

      return v5;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  sub_24424413C(&v9);
  return 1;
}

id sub_244243EE0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_244257A48();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_244257CB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9 = v7;
    v10 = v8;
    if (*(&v8 + 1))
    {
      sub_24424413C(&v9);
      v4 = sub_244257A48();
      v5 = [v1 BOOLForKey_];

      return v5;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  sub_24424413C(&v9);
  return 0;
}

void sub_244243FE4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_244257A48();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_244257CB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    v7 = v5;
    v8 = v6;
    if (*(&v6 + 1))
    {
      sub_24424413C(&v7);
      v4 = sub_244257A48();
      [v1 doubleForKey_];

      return;
    }
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  sub_24424413C(&v7);
}

uint64_t sub_244244104()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_24424413C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFE8, &qword_24425C780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2442441C8()
{
  v0 = sub_244257528();
  __swift_allocate_value_buffer(v0, qword_27EDDC608);
  __swift_project_value_buffer(v0, qword_27EDDC608);
  return sub_244257518();
}

id sub_24424424C()
{
  result = [objc_allocWithZone(type metadata accessor for CSTipsManager()) init];
  qword_27EDDCB40 = result;
  return result;
}

void sub_244244354(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = (v1 + OBJC_IVAR___CSTipsManager____lazy_storage___micTip);
  v5 = *(v1 + OBJC_IVAR___CSTipsManager____lazy_storage___micTip);
  v4 = *(v1 + OBJC_IVAR___CSTipsManager____lazy_storage___micTip + 8);
  v6 = *(v1 + OBJC_IVAR___CSTipsManager____lazy_storage___micTip + 16);
  v7 = *(v1 + OBJC_IVAR___CSTipsManager____lazy_storage___micTip + 24);
  v8 = v5;
  v9 = v4;
  v10 = *(v1 + OBJC_IVAR___CSTipsManager____lazy_storage___micTip + 32);
  v11 = v6;
  v12 = v7;
  v13 = v10;
  if (v4 == 1)
  {
    v31 = v10;
    v32 = v7;
    v33 = v6;
    v34 = v5;
    v35 = a1;
    v14 = sub_244257A48();
    v15 = objc_opt_self();
    v16 = [v15 bundleWithIdentifier_];

    if (v16)
    {
      v17 = sub_244257278();
      v19 = v18;
      v20 = sub_244257278();
      v22 = v21;
      v23 = [v15 bundleForClass_];
      v24 = sub_244257A48();
      v25 = [objc_opt_self() imageNamed:v24 inBundle:v23 withConfiguration:0];

      sub_2442471D0(v17, v19, v20, v22, v25, &v37);
      v8 = v37;
      v9 = v38;
      v11 = v39;
      v12 = v40;
      v13 = v41;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }

    v37 = v8;
    v38 = v9;
    v39 = v11;
    v40 = v12;
    v41 = v13;
    v26 = *v3;
    v27 = v3[1];
    v28 = v3[2];
    v29 = v3[3];
    v30 = v3[4];
    *v3 = v8;
    v3[1] = v9;
    v3[2] = v11;
    v3[3] = v12;
    v3[4] = v13;
    sub_24424699C(&v37, v36, &qword_27EDDC058, &qword_24425C828);
    sub_24424675C(v26, v27, v28, v29, v30);
    v5 = v34;
    a1 = v35;
    v6 = v33;
    v4 = 1;
    v10 = v31;
    v7 = v32;
  }

  sub_244246A04(v5, v4, v6, v7, v10);
  *a1 = v8;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
}

double sub_244244624(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  sub_244244354(&v42);
  v10 = v43;
  if (v43)
  {
    v11 = v45;
    v46 = v44;
    if (*(v3 + OBJC_IVAR___CSTipsManager_micTipView))
    {
      v47 = v42;
      v48 = v43;
      sub_2442462F0(&v47);
      v49 = v44;
      sub_244237440(&v49, &qword_27EDDC008, &unk_24425CA30);
      v41[0] = v11;
      sub_244237440(v41, &qword_27EDDBE10, qword_24425C1A8);
    }

    else
    {
      v39 = v42;
      if (qword_27EDDC600 != -1)
      {
        swift_once();
      }

      v40 = v11;
      v12 = sub_244257528();
      __swift_project_value_buffer(v12, qword_27EDDC608);
      v13 = a1;
      v14 = a2;
      v15 = sub_244257508();
      v16 = sub_244257C58();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412546;
        *(v17 + 4) = v13;
        *(v17 + 12) = 2112;
        *(v17 + 14) = v14;
        *v18 = v13;
        v18[1] = v14;
        v19 = v13;
        v20 = v14;
        _os_log_impl(&dword_2441FB000, v15, v16, "registerMicTip inViewController: %@, sourceView: %@", v17, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBF00, &qword_24425CA80);
        swift_arrayDestroy();
        MEMORY[0x245D5D2D0](v18, -1, -1);
        MEMORY[0x245D5D2D0](v17, -1, -1);
      }

      v38 = v14;

      v21 = sub_244246AD0();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFF8, &qword_24425C7D8);
      v23 = *(v22 - 8);
      MEMORY[0x28223BE20](v22);
      v25 = &v38 - v24;
      (*(v23 + 16))(&v38 - v24, v21, v22);
      sub_244257648();
      (*(v23 + 8))(v25, v22);
      v26 = OBJC_IVAR___CSTipsManager_tipObservationTask;
      v27 = *(v3 + OBJC_IVAR___CSTipsManager_tipObservationTask);
      if (v27)
      {
        v47 = v39;
        v48 = v10;

        sub_2442462F0(&v47);
        v49 = v44;
        sub_244237440(&v49, &qword_27EDDC008, &unk_24425CA30);
        v41[0] = v40;
        v28 = v41;
      }

      else
      {
        v29 = sub_244257BD8();
        (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v31 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v32 = v39;
        v33 = v40;
        v47 = v39;
        v48 = v10;
        v49 = v46;
        v50 = v40;
        sub_244257BB8();
        v38 = v38;
        sub_244245DC0(&v47, v41);
        sub_24424699C(&v49, v41, &qword_27EDDC008, &unk_24425CA30);
        sub_24424699C(&v50, v41, &qword_27EDDBE10, qword_24425C1A8);

        v34 = sub_244257BA8();
        v35 = swift_allocObject();
        v36 = MEMORY[0x277D85700];
        *(v35 + 16) = v34;
        *(v35 + 24) = v36;
        *(v35 + 32) = v32;
        *(v35 + 40) = v10;
        *(v35 + 48) = v46;
        *(v35 + 64) = v33;
        *(v35 + 72) = v30;
        v37 = v38;
        *(v35 + 80) = v31;
        *(v35 + 88) = v37;

        v27 = sub_244235AD8(0, 0, v8, &unk_24425C7E8, v35);
        sub_2442462F0(&v47);
        sub_244237440(&v49, &qword_27EDDC008, &unk_24425CA30);
        v28 = &v50;
      }

      sub_244237440(v28, &qword_27EDDBE10, qword_24425C1A8);
      *(v3 + v26) = v27;
    }
  }

  return result;
}

uint64_t sub_244244B8C()
{
  MEMORY[0x245D5D3C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_244244BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[45] = a6;
  v7[46] = a7;
  v7[43] = a4;
  v7[44] = a5;
  v7[47] = sub_244257BB8();
  v7[48] = sub_244257BA8();
  v9 = sub_244257B68();
  v7[49] = v9;
  v7[50] = v8;

  return MEMORY[0x2822009F8](sub_244244C64, v9, v8);
}

uint64_t sub_244244C64()
{
  v1 = *(v0 + 344);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC018, &qword_24425C800);
  *(v0 + 408) = v2;
  *(v0 + 416) = *(v2 - 8);
  *(v0 + 424) = swift_task_alloc();
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(v0 + 144) = *v1;
  *(v0 + 160) = v4;
  *(v0 + 176) = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC020, &qword_24425C808);
  v6 = *(v5 - 8);
  v7 = swift_task_alloc();
  sub_2442467E8();
  sub_244257538();
  *(v0 + 432) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC030, &qword_24425C810);
  swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC038, &qword_24425C818);
  swift_task_alloc();
  MEMORY[0x245D5C740](v5);
  sub_24423D4F8(&qword_27EDDC040, &qword_27EDDC038, &qword_24425C818, MEMORY[0x277D857C0]);
  sub_244257BF8();

  sub_244257DF8();
  (*(v6 + 8))(v7, v5);
  sub_244257E08();

  swift_beginAccess();
  swift_beginAccess();
  v8 = sub_244257BA8();
  *(v0 + 440) = v8;
  if (v8)
  {
    swift_getObjectType();
    v9 = sub_244257B68();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v0 + 448) = v9;
  *(v0 + 456) = v11;

  return MEMORY[0x2822009F8](sub_244244F98, v9, v11);
}

uint64_t sub_244244F98()
{
  v1 = v0[55];
  v2 = sub_244257678();
  v0[58] = v2;
  v0[59] = *(v2 - 8);
  v0[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC048, &qword_24425C820);
  v3 = swift_task_alloc();
  v0[61] = v3;
  v0[62] = sub_244257DE8();
  sub_24423D4F8(&qword_27EDDC050, &qword_27EDDC030, &qword_24425C810, MEMORY[0x277D857B0]);
  v4 = swift_task_alloc();
  v0[63] = v4;
  *v4 = v0;
  v4[1] = sub_244245138;
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v3, v1, v5);
}

uint64_t sub_244245138()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 448);
    v4 = *(v2 + 456);
    v5 = sub_24424543C;
  }

  else
  {
    (*(v2 + 496))();
    v3 = *(v2 + 448);
    v4 = *(v2 + 456);
    v5 = sub_244245260;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_244245260()
{
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[59];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {

    sub_244237440(v1, &qword_27EDDC048, &qword_24425C820);

    v4 = v0[49];
    v5 = v0[50];

    return MEMORY[0x2822009F8](sub_244245D30, v4, v5);
  }

  else
  {
    (*(v3 + 32))(v0[60], v1, v2);

    v6 = sub_244257DF8();
    v0[64] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[65] = v8;
    *v8 = v0;
    v8[1] = sub_2442454AC;
    v9 = v0[60];

    return (v11)(v0 + 66, v9);
  }
}

uint64_t sub_24424543C()
{
  (*(v0 + 496))();
}

uint64_t sub_2442454AC()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 472);
  v4 = *(*v0 + 464);

  (*(v3 + 8))(v2, v4);
  *(v1 + 529) = *(v1 + 528);
  v5 = *(v1 + 456);
  v6 = *(v1 + 448);

  return MEMORY[0x2822009F8](sub_244245658, v6, v5);
}

uint64_t sub_244245658()
{

  v1 = *(v0 + 392);
  v2 = *(v0 + 400);

  return MEMORY[0x2822009F8](sub_2442456C8, v1, v2);
}

uint64_t sub_2442456C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ((*(v0 + 529) & 1) == 0)
    {
      sub_244245F30(1);
      goto LABEL_19;
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
LABEL_19:

      v39 = sub_244257BA8();
      v0[55] = v39;
      if (v39)
      {
        swift_getObjectType();
        v40 = sub_244257B68();
        v13 = v41;
      }

      else
      {
        v40 = 0;
        v13 = 0;
      }

      v0[56] = v40;
      v0[57] = v13;
      v11 = sub_244244F98;
      v12 = v40;

      return MEMORY[0x2822009F8](v11, v12, v13);
    }

    v4 = v3;
    if (([v0[46] isHidden] & 1) != 0 || (sub_244244354(v0 + 8), (v5 = v0[9]) == 0))
    {
LABEL_14:

      goto LABEL_19;
    }

    v6 = v0[8];
    v7 = v0[12];
    v0[35] = v6;
    v0[36] = v5;
    *(v0 + 33) = *(v0 + 5);
    v0[41] = v7;
    v0[16] = &type metadata for CSMicTip;
    v0[17] = sub_2442467E8();
    v8 = swift_allocObject();
    v0[13] = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
    *(v8 + 32) = *(v0 + 5);
    *(v8 + 48) = v7;
    v9 = objc_allocWithZone(sub_244257558());
    sub_244245DC0((v0 + 35), (v0 + 37));
    sub_24424699C((v0 + 33), (v0 + 39), &qword_27EDDC008, &unk_24425CA30);
    sub_24424699C((v0 + 41), (v0 + 42), &qword_27EDDBE10, qword_24425C1A8);
    v10 = sub_244257568();
    [v10 setOverrideUserInterfaceStyle_];
    v11 = [v4 view];
    if (v11)
    {
      v14 = v11;
      [v11 addSubview_];

      v11 = [v4 view];
      if (v11)
      {
        v42 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFA0, &qword_24425C6A8);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_24425C7C0;
        v16 = [v10 centerXAnchor];
        v11 = [v4 view];
        if (v11)
        {
          v17 = v11;
          v18 = v0[46];
          v19 = [v11 centerXAnchor];

          v20 = [v16 constraintEqualToAnchor_];
          *(v15 + 32) = v20;
          v21 = [v10 topAnchor];
          v22 = [v18 bottomAnchor];
          v23 = [v21 constraintEqualToAnchor_];

          *(v15 + 40) = v23;
          v24 = [v10 widthAnchor];
          v25 = [v18 widthAnchor];
          v26 = [v24 constraintEqualToAnchor_];

          *(v15 + 48) = v26;
          sub_244246884();
          v27 = sub_244257B18();

          [v42 addConstraints_];

          [v10 setAlpha_];
          v28 = objc_opt_self();
          v29 = swift_allocObject();
          *(v29 + 16) = v10;
          v0[6] = sub_2442468D0;
          v0[7] = v29;
          v0[2] = MEMORY[0x277D85DD0];
          v0[3] = 1107296256;
          v0[4] = sub_24423CC58;
          v0[5] = &block_descriptor_38;
          v30 = _Block_copy(v0 + 2);
          v31 = v10;

          [v28 animateWithDuration:v30 animations:0.25];
          _Block_release(v30);
          if (qword_27EDDC600 != -1)
          {
            swift_once();
          }

          v32 = sub_244257528();
          __swift_project_value_buffer(v32, qword_27EDDC608);
          v33 = sub_244257508();
          v34 = sub_244257C58();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_2441FB000, v33, v34, "didPresentMicTip", v35, 2u);
            MEMORY[0x245D5D2D0](v35, -1, -1);
          }

          v36 = *&v2[OBJC_IVAR___CSTipsManager_micTipView];
          *&v2[OBJC_IVAR___CSTipsManager_micTipView] = v31;

          sub_2442462F0((v0 + 35));
          sub_244237440((v0 + 33), &qword_27EDDC008, &unk_24425CA30);
          sub_244237440((v0 + 41), &qword_27EDDBE10, qword_24425C1A8);
          goto LABEL_14;
        }

LABEL_27:
        __break(1u);
        return MEMORY[0x2822009F8](v11, v12, v13);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  (*(v0[52] + 8))(v0[53], v0[51]);

  v37 = v0[1];

  return v37();
}

uint64_t sub_244245D30()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_244245E1C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_244245E84()
{
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[11];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2442372C8;

  return sub_244244BC4(v5, v6, v7, (v0 + 4), v2, v3, v4);
}

void sub_244245F30(char a1)
{
  v2 = *(v1 + OBJC_IVAR___CSTipsManager_micTipView);
  if (v2)
  {
    v4 = qword_27EDDC600;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_244257528();
    __swift_project_value_buffer(v6, qword_27EDDC608);
    v22 = v5;
    v7 = sub_244257508();
    v8 = sub_244257C58();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v22;
      *v10 = v2;
      v11 = v22;
      _os_log_impl(&dword_2441FB000, v7, v8, "Dismiss mic tip view %@", v9, 0xCu);
      sub_244237440(v10, &qword_27EDDBF00, &qword_24425CA80);
      MEMORY[0x245D5D2D0](v10, -1, -1);
      MEMORY[0x245D5D2D0](v9, -1, -1);
    }

    if (a1)
    {
      v12 = objc_opt_self();
      v13 = swift_allocObject();
      *(v13 + 16) = v22;
      v27 = sub_24424665C;
      v28 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_24423CC58;
      v26 = &block_descriptor_2;
      v14 = _Block_copy(&aBlock);
      v15 = v22;

      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      v27 = sub_2442466B8;
      v28 = v16;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_24423FB4C;
      v26 = &block_descriptor_16;
      v17 = _Block_copy(&aBlock);
      v18 = v15;

      [v12 animateWithDuration:v14 animations:v17 completion:0.25];

      _Block_release(v17);
      _Block_release(v14);
      return;
    }

    [v22 removeFromSuperview];
  }

  else
  {
    if (qword_27EDDC600 != -1)
    {
      swift_once();
    }

    v19 = sub_244257528();
    __swift_project_value_buffer(v19, qword_27EDDC608);
    v22 = sub_244257508();
    v20 = sub_244257C38();
    if (os_log_type_enabled(v22, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2441FB000, v22, v20, "No mic tip view to dismiss", v21, 2u);
      MEMORY[0x245D5D2D0](v21, -1, -1);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_244246680()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_2442466B8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [v3 removeFromSuperview];

  return result;
}

void sub_24424675C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 != 1)
  {
    sub_24424676C(a1, a2, a3, a4, a5);
  }
}

void sub_24424676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

unint64_t sub_2442467E8()
{
  result = qword_27EDDC028;
  if (!qword_27EDDC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC028);
  }

  return result;
}

uint64_t sub_24424683C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_244246884()
{
  result = qword_27EDDBFA8;
  if (!qword_27EDDBFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDDBFA8);
  }

  return result;
}

double sub_2442468DC(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(v3 + 16);
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [v5 setAlpha_];

  return result;
}

uint64_t sub_24424699C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_244246A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 != 1)
  {
    sub_244246A14(a1, a2, a3, a4, a5);
  }
}

void sub_244246A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = a5;
  }
}

unint64_t sub_244246A7C()
{
  result = qword_27EDDC060;
  if (!qword_27EDDC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC060);
  }

  return result;
}

uint64_t sub_244246AD0()
{
  if (qword_27EDDC630 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFF8, &qword_24425C7D8);

  return __swift_project_value_buffer(v0, qword_27EDDCB48);
}

uint64_t sub_244246B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v32 = a2;
  v30 = sub_2442572A8();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC090, &qword_24425C918);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC098, &qword_24425C920);
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC0A0, &qword_24425C928);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC0A8, &qword_24425C930);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  sub_24423D4F8(&qword_27EDDC0B0, &qword_27EDDC0A8, &qword_24425C930, MEMORY[0x277CC90F8]);
  sub_2442572C8();
  swift_getKeyPath();
  sub_244257288();

  (*(v14 + 8))(v16, v13);
  swift_getKeyPath();
  v17 = MEMORY[0x277CC90C0];
  sub_24423D4F8(&qword_27EDDC0B8, &qword_27EDDC0A0, &qword_24425C928, MEMORY[0x277CC90C0]);
  sub_244257288();

  (*(v10 + 8))(v12, v9);
  v35 = 1;
  sub_2442572B8();
  v19 = v27;
  v18 = v28;
  v20 = v30;
  (*(v28 + 104))(v27, *MEMORY[0x277CC8FC8], v30);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC0C0, &unk_24425C9A0);
  v22 = v32;
  *(v32 + 24) = v21;
  v22[4] = sub_244247764();
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_24423D4F8(&qword_27EDDC0F0, &qword_27EDDC098, &qword_24425C920, v17);
  sub_24423D4F8(&qword_27EDDC0F8, &qword_27EDDC090, &qword_24425C918, MEMORY[0x277CC9080]);
  v23 = v29;
  v24 = v33;
  sub_244257298();
  (*(v18 + 8))(v19, v20);
  (*(v34 + 8))(v6, v24);
  return (*(v31 + 8))(v8, v23);
}

uint64_t sub_244247068@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFF8, &qword_24425C7D8);
  result = sub_244257668();
  *a1 = result;
  return result;
}

uint64_t sub_2442470B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFF8, &qword_24425C7D8);
  __swift_allocate_value_buffer(v0, qword_27EDDCB48);
  __swift_project_value_buffer(v0, qword_27EDDCB48);
  return sub_244257658();
}

uint64_t sub_244247128(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_244257578();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2442471D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_2442471E4()
{
  result = qword_27EDDC088;
  if (!qword_27EDDC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC088);
  }

  return result;
}

uint64_t sub_244247250()
{
  sub_244246A7C();

  return sub_2442577A8();
}

uint64_t sub_2442472A4()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  sub_244246A7C();

  return sub_2442577A8();
}

uint64_t sub_244247314()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  return sub_244257828();
}

uint64_t sub_24424735C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC068, &qword_24425C830);
  sub_244257628();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24425C680;
  if (qword_27EDDC630 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFF8, &qword_24425C7D8);
  v2 = __swift_project_value_buffer(v1, qword_27EDDCB48);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3);
  sub_244257578();
  sub_244247128(&qword_27EDDC070, MEMORY[0x282211D20]);
  sub_244247128(&qword_27EDDC078, MEMORY[0x282211D18]);
  sub_244257638();
  return v0;
}

uint64_t sub_24424755C()
{
  sub_244243D8C();

  sub_244243FE4();
  v1 = v0;

  if (v1 <= 0.0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC080, &qword_24425C838);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24425C680;

  sub_244243FE4();

  v3 = sub_244257598();
  v4 = MEMORY[0x277CE1A18];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  sub_2442575A8();
  return v2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_244247674(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2442476BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_244247764()
{
  result = qword_27EDDC0C8;
  if (!qword_27EDDC0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDC0C0, &unk_24425C9A0);
    sub_244247804();
    sub_24423D4F8(&qword_27EDDC0E8, &qword_27EDDC090, &qword_24425C918, MEMORY[0x282211BD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC0C8);
  }

  return result;
}

unint64_t sub_244247804()
{
  result = qword_27EDDC0D0;
  if (!qword_27EDDC0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDC098, &qword_24425C920);
    sub_24424787C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC0D0);
  }

  return result;
}

unint64_t sub_24424787C()
{
  result = qword_27EDDC0D8;
  if (!qword_27EDDC0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDC0A0, &qword_24425C928);
    sub_24423D4F8(&qword_27EDDC0E0, &qword_27EDDC0A8, &qword_24425C930, MEMORY[0x282211BE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC0D8);
  }

  return result;
}

uint64_t sub_244247914()
{
  v0 = sub_244257528();
  __swift_allocate_value_buffer(v0, qword_27EDDC758);
  __swift_project_value_buffer(v0, qword_27EDDC758);
  return sub_244257518();
}

double sub_244247994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_244257BD8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_244257BB8();

  v10 = sub_244257BA8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  sub_244235AD8(0, 0, v8, &unk_24425CA48, v11);

  return result;
}

uint64_t sub_244247AD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_244247B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC160, &qword_24425CA58);
  v6[38] = swift_task_alloc();
  v7 = sub_244257358();
  v6[39] = v7;
  v6[40] = *(v7 - 8);
  v6[41] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC168, &unk_24425CA60);
  v6[42] = v8;
  v6[43] = *(v8 - 8);
  v6[44] = swift_task_alloc();
  v9 = sub_244257998();
  v6[45] = v9;
  v6[46] = *(v9 - 8);
  v6[47] = swift_task_alloc();
  v10 = sub_2442579C8();
  v6[48] = v10;
  v6[49] = *(v10 - 8);
  v6[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE08, &qword_24425C1A0);
  v6[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE00, &qword_24425CA70);
  v6[52] = swift_task_alloc();
  v11 = sub_244257318();
  v6[53] = v11;
  v6[54] = *(v11 - 8);
  v6[55] = swift_task_alloc();
  v12 = sub_2442578F8();
  v6[56] = v12;
  v6[57] = *(v12 - 8);
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v13 = sub_244257948();
  v6[60] = v13;
  v6[61] = *(v13 - 8);
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v14 = sub_244257968();
  v6[64] = v14;
  v6[65] = *(v14 - 8);
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v15 = sub_244257888();
  v6[69] = v15;
  v6[70] = *(v15 - 8);
  v6[71] = swift_task_alloc();
  v16 = swift_task_alloc();
  v6[72] = v16;
  v6[73] = sub_244257BB8();
  v6[74] = sub_244257BA8();
  v17 = swift_task_alloc();
  v6[75] = v17;
  *v17 = v6;
  v17[1] = sub_244247FFC;

  return MEMORY[0x282124428](v16);
}

uint64_t sub_244247FFC()
{
  v1 = *v0;

  v3 = sub_244257B68();
  *(v1 + 608) = v3;
  *(v1 + 616) = v2;

  return MEMORY[0x2822009F8](sub_244248144, v3, v2);
}

uint64_t sub_244248144()
{
  v157 = v0;
  (*(*(v0 + 560) + 104))(*(v0 + 568), *MEMORY[0x277CD7BE8], *(v0 + 552));
  sub_24424D1B4(&qword_27EDDC170, MEMORY[0x277CD7BF0], MEMORY[0x277CD7C08]);
  sub_244257AF8();
  sub_244257AF8();
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  if (*(v0 + 224) == *(v0 + 240) && *(v0 + 232) == *(v0 + 248))
  {
    v5 = *(v3 + 8);
    v5(*(v0 + 568), *(v0 + 552));
    v5(v1, v4);
  }

  else
  {
    v6 = sub_244257EB8();
    v7 = *(v3 + 8);
    v7(v2, v4);
    v7(v1, v4);

    if ((v6 & 1) == 0)
    {

      if (qword_27EDDC750 != -1)
      {
        swift_once();
      }

      v129 = sub_244257528();
      __swift_project_value_buffer(v129, qword_27EDDC758);
      v130 = sub_244257508();
      v131 = sub_244257C58();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_2441FB000, v130, v131, "Need authorization to use Music Library!", v132, 2u);
        MEMORY[0x245D5D2D0](v132, -1, -1);
      }

      goto LABEL_56;
    }
  }

  v8 = MEMORY[0x277D84F90];
  *(v0 + 256) = MEMORY[0x277D84F90];
  sub_244243D8C();

  v9 = sub_244243DDC();

  v152 = v9;
  if (v9)
  {
    if (qword_27EDDC750 != -1)
    {
      swift_once();
    }

    v10 = sub_244257528();
    __swift_project_value_buffer(v10, qword_27EDDC758);
    v11 = sub_244257508();
    v12 = sub_244257C58();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2441FB000, v11, v12, "User preference to enable queue on server", v13, 2u);
      MEMORY[0x245D5D2D0](v13, -1, -1);
    }
  }

  v14 = *(*(v0 + 280) + 16);
  *(v0 + 624) = v14;
  if (!v14)
  {
    *(v0 + 680) = v8;
    *(v0 + 672) = v8;
    *(v0 + 664) = v8;
    *(v0 + 656) = v8;
    v22 = v8;
    v154 = v8;
    v21 = v8;
    *(v0 + 848) = v152 & 1;
    if (v152)
    {
      goto LABEL_45;
    }

LABEL_47:
    v145 = v22;
    v110 = v8;
    if (qword_27EDDC750 != -1)
    {
      swift_once();
    }

    v111 = sub_244257528();
    *(v0 + 768) = __swift_project_value_buffer(v111, qword_27EDDC758);
    v112 = sub_244257508();
    v113 = sub_244257C58();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = *(v0 + 480);
      v115 = *(v0 + 448);
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v156 = v117;
      *v116 = 136315394;
      v21 = v110;

      v119 = MEMORY[0x245D5C4A0](v118, v114);
      v121 = v120;

      v122 = sub_24423CC9C(v119, v121, &v156);

      *(v116 + 4) = v122;
      *(v116 + 12) = 2080;
      v123 = v145;

      v125 = MEMORY[0x245D5C4A0](v124, v115);
      v127 = v126;

      v128 = sub_24423CC9C(v125, v127, &v156);

      *(v116 + 14) = v128;
      _os_log_impl(&dword_2441FB000, v112, v113, "Queueing tracks via media remote: %s; %s", v116, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D5D2D0](v117, -1, -1);
      MEMORY[0x245D5D2D0](v116, -1, -1);
    }

    else
    {

      v123 = v154;
    }

    *(v0 + 784) = v123;
    *(v0 + 776) = v21;
    v136 = *(v0 + 344);
    v135 = *(v0 + 352);
    v137 = *(v0 + 336);
    v138 = objc_opt_self();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 264;
    *(v0 + 24) = sub_24424A64C;
    swift_continuation_init();
    *(v0 + 136) = v137;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    *(v0 + 792) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC178, &qword_24425CA78);
    sub_244257B78();
    (*(v136 + 32))(boxed_opaque_existential_1, v135, v137);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_24424C27C;
    *(v0 + 104) = &block_descriptor_3;
    [v138 getActiveRouteWithCompletion_];
    (*(v136 + 8))(boxed_opaque_existential_1, v137);

    return MEMORY[0x282200938](v0 + 16);
  }

  v15 = 0;
  v16 = *(v0 + 520);
  v17 = MEMORY[0x277CD8360];
  v18 = MEMORY[0x277CD8358];
  v19 = MEMORY[0x277D2B210];
  v20 = MEMORY[0x277D84F90];
  *(v0 + 832) = *(v16 + 80);
  *(v0 + 632) = *(v16 + 72);
  *(v0 + 640) = *(v16 + 16);
  *(v0 + 836) = *v17;
  *(v0 + 840) = *v18;
  *(v0 + 844) = *v19;
  v21 = v20;
  v154 = v20;
  v22 = v20;
  v148 = v20;
  v150 = v20;
  do
  {
    *(v0 + 648) = v15;
    v25 = *(v0 + 836);
    v26 = *(v0 + 640);
    v27 = *(v0 + 544);
    v28 = *(v0 + 536);
    v29 = *(v0 + 520);
    v30 = *(v0 + 512);
    v26(v27, *(v0 + 280) + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(v0 + 632) * v15, v30);
    v26(v28, v27, v30);
    v31 = (*(v29 + 88))(v28, v30);
    if (v31 == v25)
    {
      v32 = *(v0 + 536);
      v33 = *(v0 + 504);
      v35 = *(v0 + 488);
      v34 = *(v0 + 496);
      v36 = *(v0 + 480);
      (*(*(v0 + 520) + 96))(v32, *(v0 + 512));
      v37 = *(v35 + 32);
      v37(v33, v32, v36);
      *(v0 + 168) = v36;
      *(v0 + 176) = &off_2857974E8;
      v38 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
      v39 = *(v35 + 16);
      v39(v38, v33, v36);
      v39(v34, v33, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_24424C6B0(0, v21[2] + 1, 1, v21, &qword_27EDDC190, &qword_24425CA88, MEMORY[0x277CD8240]);
      }

      v41 = v21[2];
      v40 = v21[3];
      if (v41 >= v40 >> 1)
      {
        v21 = sub_24424C6B0((v40 > 1), v41 + 1, 1, v21, &qword_27EDDC190, &qword_24425CA88, MEMORY[0x277CD8240]);
      }

      v42 = *(v0 + 496);
      v43 = *(v0 + 480);
      v44 = *(v0 + 488);
      (*(v44 + 8))(*(v0 + 504), v43);
      v21[2] = v41 + 1;
      v37(v21 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v41, v42, v43);
      v45 = 0;
      v46 = v21;
    }

    else
    {
      if (v31 != *(v0 + 840))
      {
        if (qword_27EDDC750 != -1)
        {
          swift_once();
        }

        v93 = *(v0 + 640);
        v94 = *(v0 + 544);
        v95 = *(v0 + 528);
        v96 = *(v0 + 512);
        v97 = sub_244257528();
        __swift_project_value_buffer(v97, qword_27EDDC758);
        v98 = sub_244257C48();
        v93(v95, v94, v96);
        v99 = sub_244257508();
        v147 = v98;
        v100 = os_log_type_enabled(v99, v98);
        v101 = *(v0 + 544);
        v102 = *(v0 + 528);
        v103 = *(v0 + 520);
        v104 = *(v0 + 512);
        if (v100)
        {
          v143 = *(v0 + 544);
          v105 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v156 = v142;
          *v105 = 136315138;
          sub_24424D1B4(&qword_27EDDC180, MEMORY[0x277CD83B0], MEMORY[0x277CD83E8]);
          v106 = sub_244257E88();
          v144 = v22;
          v108 = v107;
          v23 = *(v103 + 8);
          v23(v102, v104);
          v109 = sub_24423CC9C(v106, v108, &v156);
          v22 = v144;

          *(v105 + 4) = v109;
          _os_log_impl(&dword_2441FB000, v99, v147, "User picked a track type from the picker that we don't handle: %s", v105, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v142);
          MEMORY[0x245D5D2D0](v142, -1, -1);
          MEMORY[0x245D5D2D0](v105, -1, -1);

          v24 = v143;
        }

        else
        {

          v23 = *(v103 + 8);
          v23(v102, v104);
          v24 = v101;
        }

        v23(v24, v104);
        v23(*(v0 + 536), *(v0 + 512));
        goto LABEL_15;
      }

      v47 = *(v0 + 536);
      v49 = *(v0 + 464);
      v48 = *(v0 + 472);
      v50 = *(v0 + 448);
      v51 = *(v0 + 456);
      (*(*(v0 + 520) + 96))(v47, *(v0 + 512));
      v52 = *(v51 + 32);
      v52(v48, v47, v50);
      *(v0 + 168) = v50;
      *(v0 + 176) = sub_24424D1B4(&qword_27EDDC188, MEMORY[0x277CD7E50], &unk_24425C9C0);
      v53 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
      v54 = *(v51 + 16);
      v54(v53, v48, v50);
      v54(v49, v48, v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v154 = sub_24424C6B0(0, v154[2] + 1, 1, v154, &qword_27EDDC198, &unk_24425CA90, MEMORY[0x277CD7E50]);
      }

      v56 = v154[2];
      v55 = v154[3];
      if (v56 >= v55 >> 1)
      {
        v154 = sub_24424C6B0((v55 > 1), v56 + 1, 1, v154, &qword_27EDDC198, &unk_24425CA90, MEMORY[0x277CD7E50]);
      }

      v57 = *(v0 + 464);
      v58 = *(v0 + 448);
      v59 = *(v0 + 456);
      (*(v59 + 8))(*(v0 + 472), v58);
      v22 = v154;
      v154[2] = v56 + 1;
      v52(v154 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v56, v57, v58);
      v45 = 1;
      v46 = v150;
    }

    *(v0 + 720) = v46;
    *(v0 + 712) = v22;
    *(v0 + 704) = v154;
    *(v0 + 696) = v21;
    *(v0 + 688) = v45;
    v60 = *(v0 + 168);
    v61 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v60);
    (*(v61 + 16))(v60, v61);
    if (v62)
    {
    }

    else
    {
      v152 = 0;
    }

    *(v0 + 849) = v152 & 1;
    v63 = *(v0 + 408);
    v64 = *(v0 + 168);
    v65 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v64);
    (*(v65 + 24))(v64, v65);
    v66 = sub_2442579F8();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v63, 1, v66) == 1)
    {
      v68 = *(v0 + 424);
      v69 = *(v0 + 432);
      v70 = *(v0 + 416);
      sub_244237440(*(v0 + 408), &qword_27EDDBE08, &qword_24425C1A0);
      (*(v69 + 56))(v70, 1, 1, v68);
    }

    else
    {
      v146 = *(v0 + 844);
      v153 = *(v0 + 432);
      v155 = *(v0 + 424);
      v71 = *(v0 + 408);
      v72 = *(v0 + 392);
      v73 = *(v0 + 400);
      v74 = *(v0 + 376);
      v149 = *(v0 + 416);
      v151 = *(v0 + 384);
      v76 = *(v0 + 360);
      v75 = *(v0 + 368);
      sub_2442579B8();
      (*(v75 + 104))(v74, v146, v76);
      sub_2442579A8();
      (*(v75 + 8))(v74, v76);
      (*(v72 + 8))(v73, v151);
      (*(v67 + 8))(v71, v66);
      if ((*(v153 + 48))(v149, 1, v155) != 1)
      {
        (*(*(v0 + 432) + 32))(*(v0 + 440), *(v0 + 416), *(v0 + 424));
        *(v0 + 728) = [objc_opt_self() sharedSession];
        v140 = swift_task_alloc();
        *(v0 + 736) = v140;
        *v140 = v0;
        v140[1] = sub_2442494B0;
        v141 = *(v0 + 440);

        return MEMORY[0x28211ED00](v141, 0);
      }
    }

    sub_244237440(*(v0 + 416), &qword_27EDDBE00, &qword_24425CA70);
    v77 = *(v0 + 168);
    v78 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v77);
    (*(v78 + 32))(v77, v78);
    v79 = *(v0 + 168);
    v80 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v79);
    (*(v80 + 40))(v79, v80);
    v81 = *(v0 + 168);
    v82 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v81);
    (*(v82 + 16))(v81, v82);
    v84 = v83;
    sub_2442373BC(0, 0xF000000000000000);
    v85 = sub_244257A48();

    v86 = sub_244257A48();

    if (v84)
    {
      v87 = sub_244257A48();
    }

    else
    {
      v87 = 0;
    }

    v88 = [objc_allocWithZone(CSQueuedTrack) initWithSongTitle:v85 artistName:v86 artworkThumbnailImage:0 catalogID:v87 trackType:*(v0 + 688)];

    v89 = v88;
    MEMORY[0x245D5C470]();
    if (*((*(v0 + 256) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 256) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_244257B48();
    }

    v90 = *(v0 + 544);
    v91 = *(v0 + 520);
    v92 = *(v0 + 512);
    sub_244257B58();

    sub_244236264(0, 0xF000000000000000);
    (*(v91 + 8))(v90, v92);
    v148 = *(v0 + 256);
    __swift_destroy_boxed_opaque_existential_0((v0 + 144));
    v152 = *(v0 + 849);
    v150 = *(v0 + 720);
    v22 = *(v0 + 712);
    v154 = *(v0 + 704);
    v21 = *(v0 + 696);
LABEL_15:
    v15 = *(v0 + 648) + 1;
  }

  while (v15 != *(v0 + 624));
  v8 = v150;
  *(v0 + 680) = v150;
  *(v0 + 672) = v22;
  *(v0 + 664) = v148;
  *(v0 + 656) = v148;
  *(v0 + 848) = v152 & 1;
  if ((v152 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_45:

  (*(v0 + 288))(*(v0 + 656), *(v0 + 848));

LABEL_56:

  v133 = *(v0 + 8);

  return v133();
}