uint64_t FigImageControl_VideoModeChange(uint64_t a1, unsigned int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = DerivedStorage + 0x4000;
  v28 = 0;
  v7 = 616;
  if ((a2 & 0xFFFFFFFE) == 2)
  {
    v7 = 612;
  }

  v8 = *(DerivedStorage + v7);
  valuePtr = v8;
  if (a2 <= 6)
  {
    if (((1 << a2) & 0x68) != 0)
    {
LABEL_7:
      if (*(v6 + 1353) == 1)
      {
        unlockAEnow(a1);
      }

      FigImageControl_RestoreAEValues(a1);
LABEL_10:
      v10 = 0;
      v11 = 1;
      if (!v8)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (((1 << a2) & 6) != 0)
    {
      v9 = FigCapturePlatformIdentifier();
      FigImageControl_SetExposureStabilityZone(a1, 0, *&dword_1AD056F00[v9 < 10]);
      goto LABEL_7;
    }
  }

  v15 = FigCapturePlatformIdentifier();
  FigImageControl_SetExposureStabilityZone(a1, 0, *&dword_1AD056F08[v15 < 10]);
  if (a2 != 4)
  {
    goto LABEL_7;
  }

  if (*(v6 + 1352))
  {
    goto LABEL_10;
  }

  v16 = *off_1E798BC00;
  *(v5 + 17704) = [*(v5 + 8) copyProperty:*off_1E798BC00 error:0];
  v17 = *off_1E798BC10;
  *(v5 + 17712) = [*(v5 + 8) copyProperty:*off_1E798BC10 error:0];
  v18 = *off_1E798BBE8;
  *(v5 + 17720) = [*(v5 + 8) copyProperty:*off_1E798BBE8 error:0];
  v19 = *off_1E798BBF0;
  *(v5 + 17728) = [*(v5 + 8) copyProperty:*off_1E798BBF0 error:0];
  *(v5 + 17696) = [*(v5 + 8) copyProperty:*off_1E798C018 error:0];
  v27 = *(v5 + 1532);
  v20 = *MEMORY[0x1E695E480];
  v21 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v27);
  if (captureStreamSetPropertyOnActivityScheduler(a1, v16, v21))
  {
    FigImageControl_VideoModeChange_cold_1();
  }

  CFRelease(v21);
  v27 = *(v5 + 1536);
  v22 = CFNumberCreate(v20, kCFNumberIntType, &v27);
  if (captureStreamSetPropertyOnActivityScheduler(a1, v17, v22))
  {
    FigImageControl_VideoModeChange_cold_2();
  }

  CFRelease(v22);
  v27 = *(v5 + 1540);
  v23 = CFNumberCreate(v20, kCFNumberIntType, &v27);
  if (captureStreamSetPropertyOnActivityScheduler(a1, v18, v23))
  {
    FigImageControl_VideoModeChange_cold_3();
  }

  CFRelease(v23);
  v27 = *(v5 + 1544);
  v24 = CFNumberCreate(v20, kCFNumberIntType, &v27);
  v25 = captureStreamSetPropertyOnActivityScheduler(a1, v19, v24);
  v10 = v25;
  if (v25)
  {
    FigImageControl_VideoModeChange_cold_4(v25);
  }

  CFRelease(v24);
  v28 = *(v5 + 1528);
  v26 = v28;
  *(v6 + 1352) = 1;
  v11 = v26 == 0;
  if (v8)
  {
LABEL_11:
    v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v10 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BBD0, v12);
    CFRelease(v12);
  }

LABEL_12:
  if (!v11)
  {
    v13 = CFNumberCreate(0, kCFNumberIntType, &v28);
    v10 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C018, v13);
    CFRelease(v13);
  }

  return v10;
}

uint64_t FigImageControl_SetExposureStabilityZone(uint64_t a1, int a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = llroundf((exp2f(a3) + -1.0) * 1024.0);
  v8 = v7 >> 2;
  if (v7 >> 2 > 7)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  if (!v9)
  {
    v8 = 8;
  }

  v19 = v8;
  valuePtr = v7;
  if (v8 > v7)
  {
    valuePtr = v8;
  }

  v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (*(DerivedStorage + 511) == 1)
  {
    v11 = *MEMORY[0x1E695E480];
    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v19);
    v13 = *off_1E798B9D8;
    keys[0] = *off_1E798B9E0;
    keys[1] = v13;
    values[0] = v10;
    values[1] = v12;
    v14 = CFDictionaryCreate(v11, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v15 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC18, v14);
    CFRelease(v14);
    CFRelease(v12);
  }

  else
  {
    v15 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC18, v10);
  }

  CFRelease(v10);
  return v15;
}

uint64_t captureStreamSetPropertyOnActivityScheduler(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 4294954516;
  if (!a1 || !a2)
  {
    return v7;
  }

  v8 = DerivedStorage;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v10 = Mutable;
  CFDictionaryAddValue(Mutable, @"propertyKey", a2);
  if (a3)
  {
    CFDictionaryAddValue(v10, @"propertyValue", a3);
  }

  v11 = CMSimpleQueueEnqueue(*(v8 + 72), v10);
  if (v11)
  {
    v7 = v11;
    CFRelease(v10);
    return v7;
  }

  v12 = *(v8 + 64);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v13)
  {
    return 4294954514;
  }

  return v13(v12);
}

void FigImageControl_RestoreAEValues(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 17736) == 1)
  {
    v3 = DerivedStorage;
    captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC00, *(DerivedStorage + 17704));
    v4 = *(v3 + 17704);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 17704) = 0;
    }

    captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC10, *(v3 + 17712));
    v5 = *(v3 + 17712);
    if (v5)
    {
      CFRelease(v5);
      *(v3 + 17712) = 0;
    }

    captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BBE8, *(v3 + 17720));
    v6 = *(v3 + 17720);
    if (v6)
    {
      CFRelease(v6);
      *(v3 + 17720) = 0;
    }

    captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BBF0, *(v3 + 17728));
    v7 = *(v3 + 17728);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 17728) = 0;
    }

    captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C018, *(v3 + 17696));
    v8 = *(v3 + 17696);
    if (v8)
    {
      CFRelease(v8);
      *(v3 + 17696) = 0;
    }

    *(v3 + 17736) = 0;
  }
}

double OUTLINED_FUNCTION_231()
{
  result = 0.0;
  v0[2] = 0u;
  v0[3] = 0u;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_231_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [v65 countByEnumeratingWithState:&STACK[0x250] objects:&a65 count:{16, a6, a7, a8}];
}

uint64_t FigImageControl_SetExposureBias(uint64_t a1, int a2, float a3)
{
  v19 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = llroundf(exp2f(a3) * 256.0);
  valuePtr = v7;
  *(DerivedStorage + 7524) = a3;
  if (v7 <= 0)
  {
    v8 = 1;
    goto LABEL_5;
  }

  if (v7 >= 0x10000)
  {
    v8 = 0xFFFF;
LABEL_5:
    valuePtr = v8;
  }

  if (a2 >= 1 && (*(DerivedStorage + 513) & 1) != 0)
  {
    v9 = *off_1E798BE20;
    v10 = *off_1E798A1C8;
    keys[0] = *off_1E798BE20;
    keys[1] = v10;
    v11 = *MEMORY[0x1E695E480];
    values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    cf = CFNumberCreate(v11, kCFNumberSInt32Type, &v19);
    v12 = CFDictionaryCreate(v11, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(values);
    CFRelease(cf);
  }

  else
  {
    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v9 = *off_1E798BE20;
  }

  v13 = captureStreamSetPropertyOnActivityScheduler(a1, v9, v12);
  CFRelease(v12);
  return v13;
}

uint64_t FigImageControl_ConfigureHDRSceneDetection(uint64_t a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 9093) = a2;
  *(DerivedStorage + 9092) = 0;
  v5 = *off_1E798BA80;
  v9 = *MEMORY[0x1E695E4D0];
  keys = v5;
  v6 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v9, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BEE8, v6);
  CFRelease(v6);
  return v7;
}

uint64_t FigImageControl_AutoExposure(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) != 1 || *(DerivedStorage + 7476) != a2 || *(DerivedStorage + 7480) != a3 || *(DerivedStorage + 7484) != a4 || *(DerivedStorage + 7488) != a5)
  {
    *(DerivedStorage + 7464) = 1;
    *(DerivedStorage + 7476) = a2;
    *(DerivedStorage + 7480) = a3;
    *(DerivedStorage + 7484) = a4;
    *(DerivedStorage + 7488) = a5;
    *(DerivedStorage + 7456) = 0;
  }

  return 0;
}

uint64_t FigImageControl_UnlockWhiteBalance(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 7428) = 1;
  *(DerivedStorage + 7444) = 0;
  return 0;
}

void *af_sbp_getFocusParametersFromDictionary(void *result, _DWORD *a2, _DWORD *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, void *a7)
{
  v12 = result;
  if (a2)
  {
    result = [result objectForKeyedSubscript:@"far"];
    if (result)
    {
      result = [objc_msgSend(v12 objectForKeyedSubscript:{@"far", "floatValue"}];
      *a2 = v14;
    }
  }

  if (a3)
  {
    result = [v12 objectForKeyedSubscript:@"near"];
    if (result)
    {
      result = [objc_msgSend(v12 objectForKeyedSubscript:{@"near", "floatValue"}];
      *a3 = v15;
    }
  }

  if (a4)
  {
    result = [v12 objectForKeyedSubscript:@"smooth"];
    if (result)
    {
      result = [objc_msgSend(v12 objectForKeyedSubscript:{@"smooth", "BOOLValue"}];
      *a4 = result;
    }
  }

  if (a5)
  {
    result = [v12 objectForKeyedSubscript:@"highFrameRate"];
    if (result)
    {
      result = [objc_msgSend(v12 objectForKeyedSubscript:{@"highFrameRate", "BOOLValue"}];
      *a5 = result;
    }
  }

  if (a6)
  {
    result = FigCFDictionaryGetCGRectIfPresent();
  }

  if (a7)
  {
    result = [v12 objectForKeyedSubscript:@"ContinuousAutoFocusAreaOfInterestByPortType"];
    *a7 = result;
  }

  return result;
}

uint64_t FigImageControl_ContinuousAutoFocus(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int a6, unsigned int a7, unsigned int a8, id *a9, void *a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((a7 | a6) >= 0x100)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "|___ fsbp_IC_Focus ___|", 0x97F, v42, v26, v27, a9);
  }

  else
  {
    v18 = DerivedStorage;
    v19 = (DerivedStorage + 4096);
    if (a7 <= a6)
    {
      v20 = a6;
    }

    else
    {
      v20 = a7;
    }

    if (a7 < a6)
    {
      a6 = a7;
    }

    if (*(DerivedStorage + 7612) != 1 || *(DerivedStorage + 7620) != a2 || *(DerivedStorage + 7624) != a3 || *(DerivedStorage + 7628) != a4 || *(DerivedStorage + 7632) != a5 || *(DerivedStorage + 7644) != a6 || *(DerivedStorage + 7648) != v20 || __PAIR64__(*(DerivedStorage + 7584), *(DerivedStorage + 7583)) != __PAIR64__(a9, a8) || (v21 = v20, v22 = [*(DerivedStorage + 9064) isEqualToDictionary:a10], v20 = v21, (v22 & 1) == 0))
    {
      v23 = *(v18 + 521);
      if (v23 == 1)
      {
        v24 = *(v18 + 624);
      }

      else
      {
        v24 = 0;
      }

      *(v18 + 7612) = 1;
      v29 = *(v18 + 7596);
      if (!v29)
      {
        LOBYTE(v23) = 0;
      }

      if (v29 == -1)
      {
        LOBYTE(v23) = v24;
      }

      *(v18 + 7620) = a2;
      *(v18 + 7624) = a3;
      *(v18 + 7628) = a4;
      *(v18 + 7632) = a5;
      *(v18 + 7644) = a6;
      *(v18 + 7648) = v20;
      if (a6)
      {
        v30 = 0;
      }

      else
      {
        v30 = v20 == 255;
      }

      v31 = !v30;
      v19[3486] = v31;
      v19[3488] = a9;
      v19[3487] = a8;
      v19[3490] = v23 & 1;
      if (*(v18 + 621) == 1 && *(v18 + 656) < 120)
      {
        v32 = 1;
      }

      else
      {
        v32 = *(v18 + 622);
      }

      v19[3489] = v32 & 1;
      v19[3484] = 0;
      *(v18 + 7696) = 999;

      *(v18 + 9064) = a10;
      v33 = CMBaseObjectGetDerivedStorage();
      v34 = 274877907 * v33[4536] * a4;
      LODWORD(v34) = (v34 >> 38) + (v34 >> 63);
      v35 = 274877907 * v33[4537] * a5;
      LODWORD(v35) = (v35 >> 38) + (v35 >> 63);
      v36 = __OFSUB__(v35, v34);
      v37 = v35 - v34;
      v39 = v37 < 0 != v36 || v37 < 5;
      if (v39)
      {
        v40 = 5;
      }

      else
      {
        v40 = 3;
      }

      if (v39)
      {
        v41 = 3;
      }

      else
      {
        v41 = 5;
      }

      v33[1909] = v40;
      v33[1910] = v41;
    }

    return 0;
  }
}

uint64_t FigImageControl_SetUseFaceLocationForMetering(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7473) != a2)
  {
    *(DerivedStorage + 7473) = a2;
    *(DerivedStorage + 7457) = 1;
  }

  return 0;
}

Float64 OUTLINED_FUNCTION_275(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, CMTime *time, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 timea, uint64_t time_16, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  timea = *(v59 + 24);
  time_16 = a59;

  return CMTimeGetSeconds(&timea);
}

uint64_t FigImageControl_Focus_StartNow(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 7616);
  if (!v4)
  {
    v4 = *(DerivedStorage + 7612);
  }

  if (v4 != 1)
  {
    return 0;
  }

  if (!*(DerivedStorage + 652))
  {
    return 0;
  }

  v5 = (DerivedStorage + 7580);
  if (*(DerivedStorage + 7586) != 1 || *(DerivedStorage + 7585) != 1)
  {
    return 0;
  }

  if (*(DerivedStorage + 9064))
  {
    FigImageControl_Focus_StartNow_cold_1(DerivedStorage, a1);
  }

  else
  {
    setupFocusWindowMatrix(a1, *(DerivedStorage + 7620), *(DerivedStorage + 7624), *(DerivedStorage + 7628), *(DerivedStorage + 7632), *(DerivedStorage + 560), *(DerivedStorage + 7636), *(DerivedStorage + 7640), 0);
  }

  v8 = 0;
  v9 = 0;
  getDefaultFocusScanRange(a1, &v9 + 1, &v9, &v8 + 1, &v8);
  setupSearchPositions(a1, HIDWORD(v9), v9, SHIDWORD(v8), v8, 1, 0, 1.0);
  v6 = off_1E798C2F0;
  if (!*(v3 + 561))
  {
    v6 = off_1E798C2E8;
  }

  result = doFocusNow(a1, 0, *v6, 0);
  *(v3 + 7587) = 0;
  *(v3 + 540) = vmulq_f32(vcvtq_f32_s32(*(v3 + 7620)), vdupq_n_s32(0x3A83126Fu));
  *(v3 + 7672) = 0;
  *v5 = 1;
  *(v3 + 6232) = 1;
  *(v3 + 6248) = 0;
  *(v3 + 7608) = 0;
  return result;
}

_BYTE *setupFocusWindowMatrixByPortType(uint64_t a1, void *a2, int a3, int a4, int a5, int a6)
{
  LODWORD(v78) = a4;
  HIDWORD(v74) = a3;
  result = CMBaseObjectGetDerivedStorage();
  v12 = result + 7585;
  if ((result[9085] & 1) == 0)
  {
    v13 = result;
    if ([a2 count] && a5 * v78 < 17)
    {
      HIDWORD(v48) = a6;
      v14 = [MEMORY[0x1E695DF90] dictionary];
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      HIDWORD(v78) = a5 * v78;
      v65 = OUTLINED_FUNCTION_5_59(v14, v15, v16, v17, v18, v19, v20, v21, v43, v45, v6, v48, a1, v12, v13, v53, v55, v57, v58, v60, v61, v14, v64, v66, v68, v70, v72, v74, v76, v78, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height);
      if (v65)
      {
        v62 = *v82;
        v22 = v79;
        v77 = *off_1E798A280;
        v23 = *off_1E798A2B8;
        v73 = *off_1E798A1D8;
        v71 = *off_1E798A278;
        v24 = -v79;
        v56 = *(MEMORY[0x1E695F050] + 16);
        v59 = *MEMORY[0x1E695F050];
        v54 = a2;
        while (2)
        {
          v25 = 0;
          do
          {
            if (*v82 != v62)
            {
              objc_enumerationMutation(a2);
            }

            v26 = *(*(&v81 + 1) + 8 * v25);
            rect.origin = v59;
            rect.size = v56;
            CGRectMakeWithDictionaryRepresentation([a2 objectForKeyedSubscript:v26], &rect);
            if (CGRectIsNull(rect))
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0();
              return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
            }

            v67 = v26;
            v69 = v25;
            v27 = [MEMORY[0x1E695DF70] array];
            if (SHIDWORD(v79) >= 1)
            {
              v28 = 0;
              v29 = rect.size.width / v22;
              v30 = rect.size.height / a5;
              do
              {
                v31 = [MEMORY[0x1E695DF90] dictionary];
                [MEMORY[0x1E696AD98] numberWithDouble:rect.origin.x + (v29 * (v28 + v24 * (v28 / v79)))];
                [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
                [MEMORY[0x1E696AD98] numberWithDouble:rect.origin.y + (v30 * (v28 / v79))];
                [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
                *&v32 = v29;
                [MEMORY[0x1E696AD98] numberWithFloat:v32];
                [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
                *&v33 = v30;
                [MEMORY[0x1E696AD98] numberWithFloat:v33];
                [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
                [v31 setObject:&unk_1F2244E48 forKeyedSubscript:v23];
                if (!v28 && HIDWORD(v75))
                {
                  [MEMORY[0x1E696AD98] numberWithInt:4096];
                  [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
                  [v31 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v71];
                }

                [v27 addObject:v31];
                ++v28;
              }

              while (HIDWORD(v79) != v28);
            }

            v34 = [v63 setObject:v27 forKeyedSubscript:v67];
            v25 = v69 + 1;
            a2 = v54;
          }

          while (v69 + 1 != v65);
          v65 = OUTLINED_FUNCTION_5_59(v34, v35, v36, v37, v38, v39, v40, v41, v44, v46, v47, v49, v50, v51, v52, v54, v56, *(&v56 + 1), v59, *(&v59 + 1), v62, v63, v65, v67, v69, v71, v73, v75, v77, v79, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height);
          if (v65)
          {
            continue;
          }

          break;
        }
      }

      result = v63;
      *(v52 + 9072) = result;
      if (*v51 == 1)
      {
        v42 = *off_1E798CC68;
        if (HIDWORD(v49))
        {
          return captureStreamSetPropertyOnActivityScheduler(v50, v42, v63);
        }

        else
        {
          return af_sbp_setPropertyOnStandaloneOrSynchronizedStreams(v50, v42, v63);
        }
      }

      else
      {
        atomic_fetch_add_explicit((v52 + 7604), 1u, memory_order_relaxed);
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }
  }

  return result;
}

uint64_t af_sbp_setPropertyOnStandaloneOrSynchronizedStreams(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = [objc_msgSend(*(DerivedStorage + 32) "supportedProperties")];
  v7 = 32;
  if (!v6)
  {
    v7 = 8;
  }

  v8 = *(DerivedStorage + v7);

  return [v8 setProperty:a2 value:a3];
}

const __CFDictionary *setPropertiesOnStream(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CMSimpleQueueDequeue(*(DerivedStorage + 72));
  if (result)
  {
    v3 = result;
    v4 = *off_1E798BD70;
    cf2 = *off_1E798BC30;
    v31 = *off_1E798BC50;
    v30 = *off_1E798CC68;
    v29 = *off_1E798BCB0;
    v26 = *off_1E798C0D0;
    v27 = DerivedStorage + 7968;
    allocator = *MEMORY[0x1E695E480];
    v25 = *off_1E798BEE8;
    v24 = *off_1E798BCA0;
    do
    {
      Value = CFDictionaryGetValue(v3, @"propertyKey");
      v6 = CFDictionaryGetValue(v3, @"propertyValue");
      v7 = CMBaseObjectGetDerivedStorage();
      v8 = [objc_msgSend(*(v7 + 32) "supportedProperties")];
      v9 = 32;
      if (!v8)
      {
        v9 = 8;
      }

      v10 = [*(v7 + v9) setProperty:Value value:{v6, v24}];
      if (!v10)
      {
        goto LABEL_14;
      }

      v11 = v10;
      if (CFEqual(Value, v4))
      {
        v12 = (DerivedStorage + 6340);
      }

      else if (CFEqual(Value, cf2))
      {
        v12 = (DerivedStorage + 7460);
      }

      else
      {
        if (!CFEqual(Value, v31) && !CFEqual(Value, v30))
        {
          if (!CFEqual(Value, v29) && !CFEqual(Value, v26))
          {
            if (!CFEqual(Value, v25))
            {
              CFEqual(Value, v24);
            }

            goto LABEL_14;
          }

          Mutable = CFDictionaryCreateMutable(allocator, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v14 = Mutable;
          v15 = *(DerivedStorage + 84);
          if (v15 == 1)
          {
            v16 = @"FixedFocusPoints";
LABEL_22:
            CFDictionaryAddValue(Mutable, @"FocusMode", v16);
          }

          else if (v15 == 5)
          {
            v16 = @"FocusAtPoint";
            goto LABEL_22;
          }

          v17 = *(DerivedStorage + 7664);
          v18 = __OFSUB__(v17, 1);
          v19 = v17 - 1;
          if (v19 < 0 == v18)
          {
            *(DerivedStorage + 7664) = v19;
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
          }

          if (v14)
          {
            CFRelease(v14);
          }

          if (v11 == -12688)
          {
            memset_pattern16((DerivedStorage + 7712), &unk_1AD055E90, 0x80uLL);
            v20 = 0;
            v21 = -128;
            *&v22 = 0x100000001;
            *(&v22 + 1) = 0x100000001;
            do
            {
              v23 = (v27 + v21);
              *v23 = 0uLL;
              v23[1] = 0uLL;
              *(v27 + v20) = v22;
              v20 += 16;
              v21 += 32;
            }

            while (v21);
            *(DerivedStorage + 6232) = 1;
            *(DerivedStorage + 6248) = 1;
          }

          *(DerivedStorage + 81) = 0;
          FigMemoryBarrier();
          goto LABEL_14;
        }

        v12 = (DerivedStorage + 7604);
      }

      atomic_fetch_add_explicit(v12, 1u, memory_order_relaxed);
LABEL_14:
      CFRelease(v3);
      result = CMSimpleQueueDequeue(*(DerivedStorage + 72));
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t getDefaultFocusScanRange(uint64_t a1, _DWORD *a2, int *a3, _DWORD *a4, int *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  v10 = *(result + 636);
  if (v10 <= 0)
  {
    v10 = 12;
  }

  v11 = 692;
  if (!*(result + 40))
  {
    v11 = 688;
  }

  if (*(result + 7582) == 1)
  {
    v12 = *(result + 7648);
    v13 = *(result + 7644);
    if (2 * v10 * (v12 - v13) / 255 < v10)
    {
      v10 = 2 * v10 * (v12 - v13) / 255;
    }

    if (v10 <= 5)
    {
      v10 = 5;
    }
  }

  else
  {
    v13 = *(result + v11);
    if (*(result + 5664) != 4 && v13 <= *(result + 632))
    {
      v13 = *(result + 632);
    }

    v12 = 255;
  }

  *a2 = v13;
  *a3 = v12;
  *a4 = v13;
  *a5 = v10;
  return result;
}

uint64_t setupSearchPositions(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, float a8)
{
  v12 = a3;
  v13 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = llroundf((a8 * -0.16667) + 21.0);
  valuePtr = 0;
  v52 = v16;
  if (a4 <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = a4;
  }

  if (v17 >= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  v19 = v18 == v13;
  v46 = v18;
  v20 = computeAFSearchPositions(a1, v13, v12, v18, a5, v19);
  *(DerivedStorage + 172) = a5;
  if (a5 >= 1)
  {
    v21 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v20, v21);
      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
      *(DerivedStorage + 92 + 4 * v21++) = valuePtr;
    }

    while (a5 != v21);
  }

  if (!*(DerivedStorage + 504) || *(DerivedStorage + 505) != v19 || *(DerivedStorage + 506) != a6 || (*(DerivedStorage + 500) != v16 ? (v23 = a6 == 0) : (v23 = 1), !v23))
  {
    *(DerivedStorage + 504) = 1;
    *(DerivedStorage + 505) = v19;
    *(DerivedStorage + 500) = v16;
    *(DerivedStorage + 506) = a6;
    if (a6)
    {
      v49 = 66;
      v50 = 56;
      v48 = 42;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      valuePtr = 2;
      v25 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(Mutable, *off_1E798A218, v25);
      CFRelease(v25);
      v26 = CFNumberCreate(0, kCFNumberIntType, &v50);
      CFDictionaryAddValue(Mutable, *off_1E798A210, v26);
      CFRelease(v26);
      v27 = CFNumberCreate(0, kCFNumberIntType, &v49);
      CFDictionaryAddValue(Mutable, *off_1E798A228, v27);
      CFRelease(v27);
      v28 = CFNumberCreate(0, kCFNumberIntType, &v52);
      CFDictionaryAddValue(Mutable, *off_1E798A220, v28);
      CFRelease(v28);
      v29 = CFNumberCreate(0, kCFNumberIntType, &v48);
      CFDictionaryAddValue(Mutable, *off_1E798A208, v29);
      CFRelease(v29);
      v30 = *off_1E798BCA8;
      v31 = *off_1E798A1B8;
      if (a7)
      {
        captureStreamSetPropertyOnActivityScheduler(a1, v30, v31);
        captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C008, Mutable);
        if (!Mutable)
        {
          goto LABEL_42;
        }
      }

      else
      {
        af_sbp_setPropertyOnStandaloneOrSynchronizedStreams(a1, v30, v31);
        af_sbp_setPropertyOnStandaloneOrSynchronizedStreams(a1, *off_1E798C008, Mutable);
        if (!Mutable)
        {
          goto LABEL_42;
        }
      }

      CFRelease(Mutable);
      goto LABEL_42;
    }

    v32 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (*(DerivedStorage + 640))
    {
      v33 = 1;
    }

    else
    {
      v33 = 2;
    }

    valuePtr = v33;
    v34 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v32, *off_1E798A1A8, v34);
    CFRelease(v34);
    v35 = *MEMORY[0x1E695E4D0];
    CFDictionaryAddValue(v32, *off_1E798A1A0, *MEMORY[0x1E695E4D0]);
    if (v46 == v13)
    {
      v36 = v35;
    }

    else
    {
      v36 = *MEMORY[0x1E695E4C0];
    }

    CFDictionaryAddValue(v32, *off_1E798A190, v36);
    valuePtr = 56;
    v37 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v32, *off_1E798A198, v37);
    CFRelease(v37);
    v38 = *off_1E798BC38;
    if (a7)
    {
      captureStreamSetPropertyOnActivityScheduler(a1, v38, v32);
      if (!v32)
      {
LABEL_34:
        if (*(DerivedStorage + 514) == 1)
        {
          v39 = *off_1E798BCA8;
          v40 = *off_1E798A1C0;
          if (a7)
          {
            captureStreamSetPropertyOnActivityScheduler(a1, v39, v40);
            if (!*(DerivedStorage + 640))
            {
LABEL_41:
              v42 = *off_1E798BC48;
LABEL_43:
              v43 = captureStreamSetPropertyOnActivityScheduler(a1, v42, v20);
              goto LABEL_49;
            }

            v41 = *off_1E798BC40;
LABEL_40:
            captureStreamSetPropertyOnActivityScheduler(a1, v41, v35);
            goto LABEL_41;
          }

          af_sbp_setPropertyOnStandaloneOrSynchronizedStreams(a1, v39, v40);
          if (!*(DerivedStorage + 640))
          {
LABEL_47:
            v42 = *off_1E798BC48;
            goto LABEL_48;
          }

          v41 = *off_1E798BC40;
        }

        else
        {
          if (!*(DerivedStorage + 640))
          {
            goto LABEL_42;
          }

          v41 = *off_1E798BC40;
          if (a7)
          {
            goto LABEL_40;
          }
        }

        af_sbp_setPropertyOnStandaloneOrSynchronizedStreams(a1, v41, v35);
        goto LABEL_47;
      }
    }

    else
    {
      af_sbp_setPropertyOnStandaloneOrSynchronizedStreams(a1, v38, v32);
      if (!v32)
      {
        goto LABEL_34;
      }
    }

    CFRelease(v32);
    goto LABEL_34;
  }

LABEL_42:
  v42 = *off_1E798BC48;
  if (a7)
  {
    goto LABEL_43;
  }

LABEL_48:
  v43 = af_sbp_setPropertyOnStandaloneOrSynchronizedStreams(a1, v42, v20);
LABEL_49:
  v44 = v43;
  if (v20)
  {
    CFRelease(v20);
  }

  return v44;
}

__CFArray *computeAFSearchPositions(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v13 = *(DerivedStorage + 664);
  if (v13 == 0.0)
  {
    v16 = a3;
    if (*(DerivedStorage + 640))
    {
      v22 = 0;
      v21 = a4;
      v19 = v16 - a2;
      v14 = 0.0;
      v13 = 255.0;
      v33 = 900.0;
      goto LABEL_17;
    }

    v14 = 0.0;
    v15 = 900.0;
    v13 = 255.0;
  }

  else
  {
    v14 = *(DerivedStorage + 668);
    v15 = *(DerivedStorage + 672);
    v16 = a3;
    if (v14 > 0.0)
    {
      v17 = v13 * v14;
      if (v13 >= v16)
      {
        v16 = v14 * v16;
      }

      else
      {
        v16 = (v13 * v14) + ((v16 - v13) * v15);
      }

      if (v13 >= a2)
      {
        v18 = v14 * a2;
      }

      else
      {
        v18 = v17 + ((a2 - v13) * v15);
      }

      v19 = v16 - v18;
      v20 = a4;
      v33 = *(DerivedStorage + 672);
      if (v13 >= a4)
      {
        v21 = v14 * v20;
      }

      else
      {
        v21 = v17 + ((v20 - v13) * v15);
      }

      goto LABEL_16;
    }
  }

  v16 = (v13 / (v15 - v16)) + -1.0;
  v19 = v16 - ((v13 / (v15 - a2)) + -1.0);
  v33 = v15;
  v21 = (v13 / (v15 - a4)) + -1.0;
LABEL_16:
  v22 = 1;
LABEL_17:
  if (a5 >= 1)
  {
    v23 = 0;
    if (a6)
    {
      v24 = a5 - 1;
    }

    else
    {
      v24 = a5;
    }

    v25 = v24;
    while (1)
    {
      v26 = v19 * v23;
      v27 = v21 + (v26 / v25);
      if (v27 > v16)
      {
        break;
      }

      if ((v21 + (v26 / (a5 - 1))) <= v16)
      {
        goto LABEL_26;
      }

      valuePtr = a3;
      v28 = a3;
LABEL_33:
      v29 = *(DerivedStorage + 688);
      v30 = v28 < v29;
      if (v28 <= v29)
      {
        v28 = *(DerivedStorage + 688);
      }

      if (v30 || v28 >= 256)
      {
        if (v28 >= 255)
        {
          v28 = 255;
        }

        valuePtr = v28;
      }

      v31 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFArrayAppendValue(Mutable, v31);
      CFRelease(v31);
      if (a5 == ++v23)
      {
        return Mutable;
      }
    }

    v27 = v27 - v19;
LABEL_26:
    if (v22)
    {
      if (v14 <= 0.0)
      {
        v27 = v33 - (v13 / (v27 + 1.0));
      }

      else if ((v14 * v13) >= v27)
      {
        v27 = v27 / v14;
      }

      else
      {
        v27 = v13 + ((v27 + (-v13 * v14)) / v33);
      }
    }

    v28 = (v27 + 0.5);
    valuePtr = v28;
    goto LABEL_33;
  }

  return Mutable;
}

uint64_t doFocusNow(uint64_t a1, int a2, const void *a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 5000;
  if (*(DerivedStorage + 81) == 1)
  {
    doFocusNow_cold_2();
    return 0;
  }

  v9 = DerivedStorage;
  v10 = DerivedStorage + 7583;
  v11 = *off_1E798AD28;
  v12 = 9;
  if (*(DerivedStorage + 7583) == 1)
  {
    if (*(DerivedStorage + 660) >= 9)
    {
      v12 = 9;
    }

    else
    {
      v12 = *(DerivedStorage + 660);
    }

    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = *(DerivedStorage + 7585);
  v41 = v12;
  v43 = v13;
  v15 = *(DerivedStorage + 40);
  v16 = v15 > 6 || ((1 << v15) & 0x6E) == 0;
  v39 = a4;
  v37 = v11;
  v38 = a1;
  if (v16)
  {
    v17 = a2;
    v18 = off_1E798AD98;
  }

  else
  {
    if (v14 && (a2 & 1) == 0)
    {
      v43 = 2;
    }

    v17 = a2;
    v18 = off_1E798ADA8;
    if (v15 - 5 >= 2)
    {
      v18 = off_1E798ADB0;
    }
  }

  v19 = *v18;
  if (*(DerivedStorage + 18200))
  {
    v20 = *off_1E798ADA0;
  }

  else
  {
    v20 = v19;
  }

  if (*(DerivedStorage + 680))
  {
    v20 = *(DerivedStorage + 680);
  }

  value = v20;
  storePreviousFocusState(DerivedStorage);
  *(v9 + 6220) = 0;
  *(v9 + 5496) = 0;
  *(v9 + 80) = 256;
  *(v10 + 714) = 0;
  v21 = *(v9 + 7588) + 1;
  *(v9 + 7588) = v21;
  v40 = v21;
  v22 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v24 = CFNumberCreate(v22, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(v22, kCFNumberSInt32Type, &v43);
  v26 = CFNumberCreate(v22, kCFNumberSInt32Type, &v41);
  v27 = CFNumberCreate(v22, kCFNumberSInt32Type, &v40);
  v28 = *MEMORY[0x1E695E4D0];
  v29 = *MEMORY[0x1E695E4C0];
  if (v17)
  {
    v30 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v30 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, *off_1E798AD70, v30);
  CFDictionarySetValue(Mutable, *off_1E798AD78, v24);
  CFDictionarySetValue(Mutable, *off_1E798AD80, a3);
  if (v14)
  {
    v31 = v28;
  }

  else
  {
    v31 = v29;
  }

  CFDictionarySetValue(Mutable, *off_1E798AD58, v31);
  CFDictionarySetValue(Mutable, *off_1E798AD88, v25);
  CFDictionarySetValue(Mutable, *off_1E798AD68, value);
  CFDictionarySetValue(Mutable, *off_1E798AD50, v37);
  CFDictionarySetValue(Mutable, *off_1E798AD60, v26);
  CFDictionarySetValue(Mutable, *off_1E798A1C8, v27);
  CFRelease(v24);
  CFRelease(v25);
  CFRelease(v26);
  CFRelease(v27);
  sendFocusStartNotification(v38, v17 ^ 1);
  v32 = *off_1E798BE78;
  if (v39)
  {
    v33 = captureStreamSetPropertyOnActivityScheduler(v38, v32, Mutable);
  }

  else
  {
    v33 = af_sbp_setPropertyOnStandaloneOrSynchronizedStreams(v38, v32, Mutable);
  }

  v34 = v33;
  if (v33)
  {
    doFocusNow_cold_1(v33);
    if (!Mutable)
    {
      return v34;
    }

    goto LABEL_35;
  }

  if (Mutable)
  {
LABEL_35:
    CFRelease(Mutable);
  }

  return v34;
}

__n128 storePreviousFocusState(uint64_t a1)
{
  LODWORD(v1) = *(a1 + 6220);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = (a1 + 5816);
    v4 = (a1 + 6056);
    do
    {
      *v3 = *(v3 - 20);
      ++v3;
      *v4 = *(v4 - 20);
      ++v4;
      ++v2;
      v1 = *(a1 + 6220);
    }

    while (v2 < v1);
  }

  *(a1 + 5680) = *(a1 + 5672);
  *(a1 + 5696) = *(a1 + 5688);
  *(a1 + 6224) = v1;
  *(a1 + 6240) = *(a1 + 6232);
  *(a1 + 6256) = *(a1 + 6248);
  *(a1 + 6272) = *(a1 + 6264);
  result = *(a1 + 5704);
  *(a1 + 5720) = result;
  return result;
}

void sendFocusStartNotification(uint64_t a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 7616);
  if (!v5)
  {
    v5 = *(DerivedStorage + 7612);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = Mutable;
  v8 = v5 == 2;
  if (v5 == 2)
  {
    v9 = 5;
  }

  else
  {
    v9 = 1;
  }

  v10 = kFigAutofocusSampleBufferProcessorFocusMode_FocusAtPoint;
  if (!v8)
  {
    v10 = kFigAutofocusSampleBufferProcessorFocusMode_FixedFocusPoints;
  }

  CFDictionaryAddValue(Mutable, @"FocusMode", *v10);
  v11 = *(v4 + 7672);
  *(v4 + 84) = v9;
  v12 = 7688;
  v13 = 7684;
  v14 = 7680;
  v15 = (v11 & 1) == 0;
  if (v11)
  {
    v16 = 7676;
  }

  else
  {
    v16 = 180;
  }

  if (v15)
  {
    v14 = 244;
  }

  if (v15)
  {
    v13 = 308;
  }

  if (v15)
  {
    v12 = 372;
  }

  v22.size.height = (*(v4 + v12) * 0.001);
  v22.size.width = (*(v4 + v13) * 0.001);
  v22.origin.y = (*(v4 + v14) * 0.001);
  v22.origin.x = (*(v4 + v16) * 0.001);
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v22);
  CFDictionaryAddValue(v7, @"FocusRectDict", DictionaryRepresentation);
  CFRelease(DictionaryRepresentation);
  if (*(v4 + 7672) == 1)
  {
    CFDictionaryAddValue(v7, @"isFaceRect", *MEMORY[0x1E695E4D0]);
    v18 = *(v4 + 9032);
    if (v18)
    {
      v19 = *(v4 + 556);
      if (CFArrayGetCount(v18) > v19)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 9032), *(v4 + 556));
        CFDictionaryAddValue(v7, @"faceData", ValueAtIndex);
      }
    }
  }

  if ((a2 & 1) == 0)
  {
    ++*(v4 + 7664);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (v7)
  {

    CFRelease(v7);
  }
}

void *cs_findOwnerOfUpstreamPoolFeedingInput(void *a1)
{
  while (1)
  {
    v1 = [objc_msgSend(a1 "connection")];
    v2 = v1;
    if (!v1 || ![v1 passthroughMode])
    {
      break;
    }

    a1 = [objc_msgSend(objc_msgSend(v2 "node")];
  }

  return v2;
}

void __captureSession_performBlockOnWorkerQueue_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  objc_autoreleasePoolPop(v2);
}

void __FigCaptureSessionAttachToClient_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v49 = *(a1 + 48);
  v50 = v2;
  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v49);
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_10();
    kdebug_trace();
  }

  os_unfair_lock_lock((*(a1 + 32) + 384));
  v5 = cs_configurationContainsVideoSource(*(*(a1 + 32) + 512));
  os_unfair_lock_unlock((*(a1 + 32) + 384));
  v6 = +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(a1 + 64);
  v49 = *(a1 + 48);
  v50 = v8;
  LOBYTE(v44) = 1;
  [v6 setSessionStateForSessionID:v7 running:1 containsVideoSource:v5 clientAuditToken:&v49 tccIdentity:0 mediaEnvironment:0 sessionIsPrewarming:v44 completionHandler:0];
  os_unfair_lock_lock((*(a1 + 32) + 84));
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v9 + 36) = *(a1 + 64);
  *(v9 + 20) = v10;
  v11 = *(a1 + 32);
  v11[4]._os_unfair_lock_opaque = PIDFromAuditToken;
  os_unfair_lock_unlock(v11 + 21);
  dispatch_sync(*(*(a1 + 32) + 152), &__block_literal_global_78);
  v12 = *(*(a1 + 32) + 104);
  v45 = *(a1 + 48);
  v47 = *(a1 + 64);
  if (v12)
  {
    v13 = *(a1 + 48);
    *(v12 + 24) = *(a1 + 64);
    *(v12 + 8) = v13;
    v49 = v45;
    v50 = v47;
    *(v12 + 40) = FigCaptureGetPIDFromAuditToken(&v49);
    [v12 _updateLoggingPrefix];
  }

  if (dword_1ED844050)
  {
    v14 = OUTLINED_FUNCTION_63_9();
    v15 = OUTLINED_FUNCTION_108(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8(v16, v17, v18, v19, v20);
  }

  captureSession_transitionToSessionLaunchPrewarmStatus(*(a1 + 40), 2);
  *(*(a1 + 32) + 454) = 0;
  captureSession_cleanupSavedPreviewImageQueueData(*(a1 + 40));
  v23 = *(a1 + 32);
  if ((*(v23 + 320) & 1) != 0 || !*(v23 + 280) && (v31 = FigCaptureAudiomxdSupportEnabled(v21, v22), v23 = *(a1 + 32), v31))
  {

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FigCaptureSession-%d", *(*(a1 + 32) + 16)];
    v46 = OUTLINED_FUNCTION_56_10(*(a1 + 32));
    v48 = v25;
    v26 = objc_alloc(MEMORY[0x1E698D710]);
    v49 = v46;
    v50 = v48;
    v27 = [v26 initSiblingSession:0xFFFFFFFFLL auditToken:&v49 clientIdentifier:v24 autoReconnect:0];
    v28 = *(a1 + 32);
    *(v28 + 280) = v27;
    if (dword_1ED844050)
    {
      v29 = OUTLINED_FUNCTION_63_9();
      v30 = OUTLINED_FUNCTION_108(v29);
      if (OUTLINED_FUNCTION_6(v30))
      {
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_8_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_17_8(v32, v33, v34, v35, v36);
      v28 = *(a1 + 32);
    }

    [*(v28 + 784) micSourcePipeline];
    v49 = OUTLINED_FUNCTION_56_10(*(a1 + 32));
    v50 = v37;
    [(FigCaptureMicSourcePipeline *)v38 updateWithAudioSession:v39 clientAuditToken:&v49];
    *(*(a1 + 32) + 320) = 0;
    captureSession_startObservingAudioInterruptionNotification(*(a1 + 40));
    v23 = *(a1 + 32);
  }

  v49 = OUTLINED_FUNCTION_56_10(v23);
  v50 = v40;
  [v41 updateClientAuditToken:&v49];
  v42 = *(a1 + 40);
  v43 = *(a1 + 64);
  v49 = *(a1 + 48);
  v50 = v43;
  captureSession_createClientApplicationStateMonitor(v42, &v49);
  if (*v4 == 1)
  {
    OUTLINED_FUNCTION_10();
    kdebug_trace();
  }
}

void captureSession_transitionToSessionLaunchPrewarmStatus(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 448) = a2;
}

void captureSession_cleanupSavedPreviewImageQueueData(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  DerivedStorage[71] = 0;
  DerivedStorage[70] = 0;

  DerivedStorage[72] = 0;
}

uint64_t FigMotionSphereShiftStateInitialize(float32x2_t *a1, const __CFDictionary *a2, __int32 a3)
{
  if (a1)
  {
    v6 = a1 + 6;
    memset_pattern16(a1, &unk_1AD056290, 0x18uLL);
    v7 = 3;
    v8 = vneg_f32(0x3F0000003FLL);
    do
    {
      *v6 = v8;
      v6[-3] = 0;
      v6[3] = v8;
      ++v6;
      --v7;
    }

    while (v7);
    a1[12].i32[1] = a3;
    BravoDataFromDictionary = FigMotionGetBravoDataFromDictionary(a2, &a1[12] + 4);
    v10 = BravoDataFromDictionary;
    if (BravoDataFromDictionary)
    {
      FigMotionSphereShiftStateInitialize_cold_1(BravoDataFromDictionary);
    }

    else
    {
      a1[68].i32[1] = -1;
      a1[22].i32[0] = 1;
      FigMotionAdjustBravoDataForReferenceCamera(&a1[12] + 4);
      a1[79] = 0x3FA999999999999ALL;
    }
  }

  else
  {
    FigMotionSphereShiftStateInitialize_cold_2(&v12);
    return v12;
  }

  return v10;
}

uint64_t FigMotionGetBravoDataFromDictionary(const __CFDictionary *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    Value = CFDictionaryGetValue(a1, *off_1E798A0C0);
    if (Value)
    {
      v5 = Value;
      v6 = CFDictionaryGetValue(a1, *off_1E798A0D8);
      v7 = CFDictionaryGetValue(a1, *off_1E798A0D0);
      if (v6 | v7)
      {
        v8 = v7;
        memset_pattern16((a2 + 28), &unk_1AD056280, 0xCuLL);
        memset_pattern16((a2 + 40), &unk_1AD056280, 0xCuLL);
        *(a2 + 64) = 0x100000001;
        *(a2 + 72) = 1;
        v9 = a2 + 108;
        v10 = 80;
        do
        {
          *(a2 + v10) = 1065353216;
          *v9 = 0uLL;
          *(v9 + 16) = 0uLL;
          *(v9 + 32) = 0uLL;
          *v9 = 1065353216;
          v10 += 4;
          *(v9 + 20) = 1065353216;
          *(v9 + 40) = 1065353216;
          v9 += 48;
        }

        while (v10 != 108);
        if (v6 && (v11 = FigMotionExtractCameraInfo(v6, a2, 1u, 2), v11))
        {
          v17 = v11;
          FigMotionGetBravoDataFromDictionary_cold_1();
        }

        else if (v8 && (v12 = FigMotionExtractCameraInfo(v8, a2, 2u, 4), v12))
        {
          v17 = v12;
          FigMotionGetBravoDataFromDictionary_cold_2();
        }

        else
        {
          CameraInfo = FigMotionExtractCameraInfo(v5, a2, 0, 6);
          if (CameraInfo)
          {
            v17 = CameraInfo;
            FigMotionGetBravoDataFromDictionary_cold_3();
          }

          else
          {
            for (i = 0; i != 3; ++i)
            {
              v15 = 0;
              v16 = dword_1AD05626C[i];
              do
              {
                *(a2 + 80 + 4 * BravoCurrentToReferenceMapping[3 * v16 + dword_1AD05626C[v15]]) = *(a2 + 28 + 4 * dword_1AD05626C[v15]) / *(a2 + 28 + 4 * v16);
                ++v15;
              }

              while (v15 != 3);
            }

            return 0;
          }
        }
      }

      else
      {
        FigMotionGetBravoDataFromDictionary_cold_4(&v19);
        return v19;
      }
    }

    else
    {
      FigMotionGetBravoDataFromDictionary_cold_5(&v20);
      return v20;
    }
  }

  else
  {
    FigMotionGetBravoDataFromDictionary_cold_6(&v21);
    return v21;
  }

  return v17;
}

uint64_t FigMotionExtractCameraInfo(const __CFDictionary *a1, uint64_t a2, unsigned int a3, int a4)
{
  v7 = a3;
  if (a1)
  {
    if (FigCFDictionaryGetFloatIfPresent())
    {
      v8 = 0.0;
      if (0.0 <= 1.0e-10)
      {
        v8 = 1.0;
      }

      *(a2 + 28 + 4 * v7) = v8;
      goto LABEL_6;
    }

    FigMotionExtractCameraInfo_cold_1(&point);
  }

  else
  {
    FigMotionExtractCameraInfo_cold_2(&point);
  }

  x_low = LODWORD(point.x);
  if (LODWORD(point.x))
  {
    emitter = fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "Fig", "err == 0 ", "bail", 0, "FigMotionProcessingUtilities.c", 2402, x_low);
    return x_low;
  }

LABEL_6:
  Value = CFDictionaryGetValue(a1, *off_1E7989E80);
  if (Value)
  {
    v10 = Value;
    if (CFDataGetLength(Value) == 48)
    {
      v23.location = 0;
      v23.length = 48;
      CFDataGetBytes(v10, v23, (a2 + 48 * a4 + 108));
      goto LABEL_9;
    }

    FigMotionExtractCameraInfo_cold_3(&point);
  }

  else
  {
    FigMotionExtractCameraInfo_cold_4(&point);
  }

  x_low = LODWORD(point.x);
  if (LODWORD(point.x))
  {
    v21 = fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, "Fig", "err == 0 ", "bail", 0, "FigMotionProcessingUtilities.c", 2405, x_low);
    return x_low;
  }

LABEL_9:
  v11 = a2 + 64;
  if (a1)
  {
    if (FigCFDictionaryGetFloatIfPresent())
    {
      x_low = 0;
      *(a2 + 52 + 4 * v7) = 0;
      *(v11 + 4 * v7) = 1;
      goto LABEL_12;
    }

    FigMotionExtractCameraInfo_cold_5(&point);
  }

  else
  {
    FigMotionExtractCameraInfo_cold_6(&point);
  }

  x_low = LODWORD(point.x);
LABEL_12:
  v13 = *off_1E7989F10;
  if (CFDictionaryContainsKey(a1, *off_1E7989F10))
  {
    v14 = CFDictionaryGetValue(a1, v13);
    if (v14)
    {
      v15 = a2 + 8 * v7;
      point = *MEMORY[0x1E695EFF8];
      CGPointMakeWithDictionaryRepresentation(v14, &point);
      v16 = point;
LABEL_17:
      *(v15 + 4) = vcvt_f32_f64(v16);
      goto LABEL_18;
    }

    FigMotionExtractCameraInfo_cold_7();
  }

  else
  {
    v17 = *(v11 + 4 * v7);
    v18 = CFDictionaryGetValue(a1, *off_1E7989F08);
    if (v18)
    {
      v15 = a2 + 8 * v7;
      point = *MEMORY[0x1E695EFF8];
      CGPointMakeWithDictionaryRepresentation(v18, &point);
      v16 = vmulq_n_f64(point, v17);
      goto LABEL_17;
    }

    FigMotionExtractCameraInfo_cold_8();
  }

LABEL_18:
  if (x_low)
  {
    FigMotionExtractCameraInfo_cold_9(x_low);
  }

  return x_low;
}

double FigMotionAdjustBravoDataForReferenceCamera(uint64_t a1)
{
  if (a1)
  {
    if ((*a1 & 6) != 0)
    {
      _computeExtrinsicMatrixBetweenCamera(a1, 0, 6, 2);
      _computeExtrinsicMatrixBetweenCamera(a1, 5, 4, 2);
      _invertExtrinsicMatrixStoredInBravoData(a1, 2, 1);
      _computeExtrinsicMatrixBetweenCamera(a1, 1, 6, 4);
      _invertExtrinsicMatrixStoredInBravoData(a1, 0, 1);
      _invertExtrinsicMatrixStoredInBravoData(a1, 0, 2);
      result = 0.0;
      *(a1 + 396) = 0u;
      *(a1 + 412) = 0u;
      *(a1 + 428) = 0u;
      *(a1 + 396) = 1065353216;
      *(a1 + 416) = 1065353216;
      *(a1 + 436) = 1065353216;
    }
  }

  return result;
}

uint64_t _computeExtrinsicMatrixBetweenCamera(uint64_t a1, int a2, int a3, int a4)
{
  v4 = 0;
  v5 = a1 + 108;
  v6 = (a1 + 108 + 48 * a3);
  v7 = (a1 + 108 + 48 * a4);
  v8 = v34;
  v9 = v33;
  v10 = v6;
  v11 = v7;
  do
  {
    v12 = 0;
    v13 = v9;
    do
    {
      *&v8[8 * v12] = v10[v12];
      *v13 = v11[v12];
      v13 += 3;
      ++v12;
    }

    while (v12 != 3);
    ++v4;
    v8 += 24;
    ++v9;
    v11 += 4;
    v10 += 4;
  }

  while (v4 != 3);
  v14 = 0;
  v15 = v33;
  do
  {
    v16 = 0;
    v17 = v34;
    do
    {
      v18 = 0;
      v19 = 0.0;
      v20 = v17;
      do
      {
        v21 = *v20;
        v20 += 3;
        v19 = v19 + *&v15[v18] * v21;
        v18 += 8;
      }

      while (v18 != 24);
      *&v32[6 * v14 + 3 + 2 * v16++] = v19;
      ++v17;
    }

    while (v16 != 3);
    ++v14;
    v15 += 24;
  }

  while (v14 != 3);
  v22 = 0;
  v23 = 0;
  v24 = v6[7] - v7[7];
  v25 = v5 + 48 * a2;
  v32[0] = v6[3] - v7[3];
  v32[1] = v24;
  v32[2] = v6[11] - v7[11];
  v26 = v25;
  do
  {
    v27 = 0;
    v28 = (4 * v23) | 3;
    *(v25 + 4 * v28) = 0;
    result = v22;
    do
    {
      v30 = *(&v32[3] + result);
      *(v26 + v27 * 4) = v30;
      v31 = *(v25 + 4 * v28) + *&v33[result] * v32[v27];
      *(v25 + 4 * v28) = v31;
      ++v27;
      result += 8;
    }

    while (v27 != 3);
    ++v23;
    v22 += 24;
    v26 += 16;
  }

  while (v23 != 3);
  return result;
}

float _invertExtrinsicMatrixStoredInBravoData(uint64_t a1, int a2, int a3)
{
  v3 = 0;
  v4 = BravoCurrentToReferenceMapping[3 * a3 + a2];
  v5 = (a1 + 108 + 48 * BravoCurrentToReferenceMapping[3 * a2 + a3]);
  do
  {
    *(a1 + 108 + 48 * v4 + v3 * 4) = v5[dword_1AD05623C[v3]];
    ++v3;
  }

  while (v3 != 12);
  v6 = (a1 + 48 * v4 + 120);
  v7 = 3;
  do
  {
    result = -(((*(v6 - 2) * v5[7]) + (*(v6 - 3) * v5[3])) + (*(v6 - 1) * v5[11]));
    *v6 = result;
    v6 += 4;
    --v7;
  }

  while (v7);
  return result;
}

uint64_t __captureSource_handleDeviceNotification_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 12))
  {
    *(*(*(a1 + 32) + 8) + 40) = [*(a2 + 104) objectForKeyedSubscript:@"DeviceType"];
  }

  return 0;
}

uint64_t __captureSource_handleDeviceNotification_block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 12))
  {
    *(*(*(a1 + 32) + 8) + 40) = [*(a2 + 104) objectForKeyedSubscript:@"DeviceType"];
  }

  return 0;
}

__CFString *BWStringFromCaptureDeviceType(int a1)
{
  if ((a1 - 1) > 0x13)
  {
    return @"Unspecified";
  }

  else
  {
    return off_1E79919C8[a1 - 1];
  }
}

uint64_t captureSession_startObservingAudioInterruptionNotification(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  IsCurrentDispatchQueue = _FigIsCurrentDispatchQueue();
  if (!IsCurrentDispatchQueue)
  {
    IsCurrentDispatchQueue = captureSession_startObservingAudioInterruptionNotification_cold_1();
  }

  if (!FigCaptureAudiomxdSupportEnabled(IsCurrentDispatchQueue, v3))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!_FigIsCurrentDispatchQueue())
    {
      captureSession_startObservingAudioInterruptionNotification_cold_2();
    }

    if (!DerivedStorage[36])
    {
      return 4294954510;
    }

    if (!DerivedStorage[43])
    {
      v10 = [FigWeakReference weakReferenceToObject:a1];
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = *MEMORY[0x1E69AFB80];
      v13 = DerivedStorage[36];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __captureSession_startObservingCMSessionInterruptionNotification_block_invoke;
      v18[3] = &unk_1E798FC90;
      v18[4] = v10;
      v8 = [v11 addObserverForName:v12 object:v13 queue:0 usingBlock:v18];
      goto LABEL_15;
    }

LABEL_16:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_startObservingAudioInterruptionNotification_cold_3();
  }

  if (!DerivedStorage[35])
  {
    return 4294954510;
  }

  if (DerivedStorage[43])
  {
    goto LABEL_16;
  }

  v5 = [FigWeakReference weakReferenceToObject:a1];
  v6 = DerivedStorage[35];
  v7 = *MEMORY[0x1E698D558];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __captureSession_startObservingAVAudioSessionInterruptionNotification_block_invoke;
  v17[3] = &unk_1E798FC90;
  v17[4] = v5;
  v8 = [v6 addObserverForType:1 name:v7 block:v17];
  if (v8)
  {
LABEL_15:
    v14 = v8;
    result = 0;
    DerivedStorage[43] = v14;
    return result;
  }

  v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 4294954510;
}

uint64_t cfse_addEndpointInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, __CFString *a8, void *a9)
{
  v11 = MEMORY[0x1E695DF90];
  v25 = @"endpoint-pid";
  v26 = @"endpoint-proxy-pid";
  v32[0] = a1;
  v32[1] = a2;
  v27 = @"endpoint";
  v28 = @"endpoint-uid";
  v12 = @"unknown";
  v32[2] = a3;
  v32[3] = a4;
  v29 = @"endpoint-type";
  v30 = @"endpoint-audit-token";
  if (a8)
  {
    v12 = a8;
  }

  v32[4] = a5;
  v32[5] = a6;
  v31 = @"endpoint-camera-uid";
  v32[6] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v25 count:7];
  v14 = [v11 dictionaryWithDictionary:{v13, v25, v26, v27, v28, v29, v30}];
  v15 = v14;
  if (a7)
  {
    [v14 setObject:a7 forKeyedSubscript:@"endpoint-proxy-audit-token"];
  }

  v16 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v15];
  if (![a9 count] || objc_msgSend_isEqualToString_(a5))
  {
    return [a9 addObject:v16];
  }

  if (objc_msgSend_isEqualToString_(a5))
  {
    v18 = a9;
    v19 = v16;
    v20 = 0;
    return [v18 insertObject:v19 atIndex:v20];
  }

  isEqualToString = objc_msgSend_isEqualToString_(a5);
  v22 = [a9 count];
  if (isEqualToString)
  {
    if (v22)
    {
      v23 = 0;
      while ((objc_msgSend_isEqualToString_([objc_msgSend(a9 objectAtIndexedSubscript:{v23), "objectForKeyedSubscript:", @"endpoint-type"}]) & 1) != 0)
      {
        if (++v23 >= [a9 count])
        {
          return [a9 addObject:v16];
        }
      }

LABEL_23:
      v18 = a9;
      v19 = v16;
      v20 = v23;
      return [v18 insertObject:v19 atIndex:v20];
    }
  }

  else if (v22)
  {
    v23 = 0;
    while (1)
    {
      v24 = [a9 objectAtIndexedSubscript:v23];
      if ((objc_msgSend_isEqualToString_([v24 objectForKeyedSubscript:@"endpoint-type"]) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v24, "objectForKeyedSubscript:", @"endpoint-type")) & 1) == 0)
      {
        break;
      }

      if (++v23 >= [a9 count])
      {
        return [a9 addObject:v16];
      }
    }

    goto LABEL_23;
  }

  return [a9 addObject:v16];
}

double captureSession_createClientApplicationStateMonitor(const void *a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (*(DerivedStorage + 120))
  {
    v6 = *(DerivedStorage + 36);
    v22 = *(DerivedStorage + 20);
    v23 = v6;
    PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v22);
    v8 = a2[1];
    v22 = *a2;
    v23 = v8;
    if (PIDFromAuditToken == FigCaptureGetPIDFromAuditToken(&v22))
    {
      v25 = 0;
      v24 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v25;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v24))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v20 = 136315138;
        v21 = "captureSession_createClientApplicationStateMonitor";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return result;
    }

    [*(v5 + 120) invalidate];
  }

  v12 = a2[1];
  v22 = *a2;
  v23 = v12;
  if (FigCaptureClientIsRunningInMediaserverd(&v22))
  {
    v13 = 0;
  }

  else
  {
    v14 = a2[1];
    v22 = *a2;
    v23 = v14;
    v13 = FigCaptureClientIsAVConferenced(&v22) == 0;
  }

  *(v5 + 128) = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __captureSession_createClientApplicationStateMonitor_block_invoke;
  v17[3] = &__block_descriptor_80_e5_v8__0l;
  v15 = a2[1];
  v18 = *a2;
  v19 = v15;
  v17[4] = v5;
  v17[5] = a1;
  captureSession_performBlockOnWorkerQueue(a1, v17);
  return result;
}

void __captureSession_createClientApplicationStateMonitor_block_invoke(uint64_t a1)
{
  v2 = [FigCaptureClientApplicationStateMonitor alloc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __captureSession_createClientApplicationStateMonitor_block_invoke_2;
  v14[3] = &__block_descriptor_48_e14_v20__0i8i12i16l;
  v3 = *(a1 + 48);
  v15 = *(a1 + 32);
  v4 = *(v15 + 96);
  v5 = *(a1 + 64);
  v13[0] = v3;
  v13[1] = v5;
  v6 = [(FigCaptureClientApplicationStateMonitor *)v2 initWithClientAuditToken:v13 mediaEnvironment:v4 forThirdPartyTorch:0 applicationAndLayoutStateHandler:v14];
  *(*(a1 + 32) + 120) = v6;
  v7 = [(FigCaptureClientApplicationStateMonitor *)v6 applicationID];
  v8 = [(NSString *)v7 copy];
  *(*(a1 + 32) + 88) = v8;
  *(*(a1 + 32) + 452) = [FigCaptureGetSupportedPrewarmingBundleIdentifiers(v8 v9)];
  if ((objc_msgSend_isEqualToString_(v7) & 1) != 0 || (isEqualToString = objc_msgSend_isEqualToString_(v7), isEqualToString))
  {
    os_unfair_lock_lock(&sFigCaptureSessionCameraAppStartupTelemetry);
    byte_1ED844960 = 1;
    os_unfair_lock_unlock(&sFigCaptureSessionCameraAppStartupTelemetry);
  }

  if (v7 && [FigCaptureGetSupportedPrewarmingBundleIdentifiers(isEqualToString v11)])
  {
    *(*(a1 + 32) + 112) = 1;
    os_unfair_lock_lock(&sFigCaptureSessionPrewarming);
    if (!qword_1ED844908)
    {
      qword_1ED844908 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v12 = [FigWeakReference weakReferenceToObject:*(a1 + 40)];
    [qword_1ED844908 setObject:v12 forKeyedSubscript:v7];
    os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
    [+[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedDisplayLayoutMonitor")];
  }
}

__SecTask *FigCaptureClientIsSwiftPlaygroundsDevelopmentAppWithSecTask(__SecTask *result)
{
  if (result)
  {
    return FigCaptureClientHasEntitlementWithSecTask(result, @"com.apple.developer.swift-playgrounds-app.development-build");
  }

  return result;
}

__SecTask *FigCaptureClientIsAllowedToRunInBackground(_OWORD *a1)
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
  v5 = FigCaptureClientHasEntitlementWithSecTask(v3, @"com.apple.private.avfoundation.background-camera-access");
  CFRelease(v4);
  return v5;
}

__CFString *FigCaptureFrameRateAsString(unint64_t a1, int a2)
{
  if (a2 == 2)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3g", *&a1, v3];
  }

  if (a2 == 1)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%d/%d", a1, HIDWORD(a1)];
  }

  return @"?";
}

void *BWCIFilterArrayDescription(void *a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:&stru_1F216A3D0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = "";
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 appendFormat:@"%s%@", v6, objc_msgSend(*(*(&v10 + 1) + 8 * v7++), "name")];
        v6 = ", ";
      }

      while (v4 != v7);
      v4 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v6 = ", ";
    }

    while (v4);
  }

  return v2;
}

__CFString *FigCaptureBKSApplicationStateToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return @"--- Undefined state ---";
  }

  else
  {
    return off_1E799E058[a1];
  }
}

void sub_1AC990E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t FigCaptureSpeakerInterferenceMitigationIsSupported()
{
  if (!FigCaptureCurrentProcessIsAudiomxd() && !FigCaptureCurrentProcessIsCameracaptured() && !FigCaptureCurrentProcessIsMediaserverd() && !FigCaptureCurrentProcessIsXCTest())
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"This function may not be called outside of cameracaptured userInfo:{mediaserverd, or audiomxd", 0}]);
  }

  return [&unk_1F2248298 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", MGGetProductType())}];
}

uint64_t FigCaptureCurrentProcessIsAudiomxd()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = SecTaskCopySigningIdentifier(v0, 0);
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  CFRelease(v1);
  return isEqualToString;
}

uint64_t FigCaptureMicrophoneInterferenceMitigationIsSupported()
{
  if (!FigCaptureCurrentProcessIsAudiomxd() && !FigCaptureCurrentProcessIsCameracaptured() && !FigCaptureCurrentProcessIsXCTest())
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"This function may not be called outside of cameracaptured or audiomxd" userInfo:0]);
  }

  return [&unk_1F22482B0 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", MGGetProductType())}];
}

void __captureSession_createClientApplicationStateMonitor_block_invoke_2(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (*(*(result + 32) + 128) == 1)
  {
    captureSession_updateSessionStateWithApplicationAndLayoutState(*(result + 40), a3 == 1, (a4 - 3) < 2, a4 == 3, a4 == 4);
  }
}

void captureSession_updateSessionStateWithApplicationAndLayoutState(const void *a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = 0.0;
  if (!*DerivedStorage)
  {
    v11 = DerivedStorage;
    os_unfair_lock_lock((DerivedStorage + 384));
    v12 = *(v11 + 400);
    *(v11 + 400) = a2;
    *(v11 + 401) = a3;
    *(v11 + 402) = a4;
    *(v11 + 403) = a5;
    if (*(v11 + 456) == 2)
    {
      [*(v11 + 488) setWindowed:{objc_msgSend(*(v11 + 488), "windowed") | a4}];
      [*(v11 + 488) setPipEnabled:{objc_msgSend(*(v11 + 488), "pipEnabled") | a5}];
    }

    v13 = (a2 ^ 1) & v12;
    if (*(v11 + 399) == 1 && a3 != 0)
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __captureSession_updateSessionStateWithApplicationAndLayoutState_block_invoke;
      v41[3] = &__block_descriptor_40_e5_v8__0l;
      v41[4] = v11;
      captureSession_performBlockOnWorkerQueue(a1, v41);
      if (*(v11 + 672) == 1)
      {
        *(v11 + 680) = 1;
      }
    }

    if ((v13 | *(v11 + 400)))
    {
      *(v11 + 404) = 0;

      *(v11 + 408) = 0;
      *(v11 + 416) = 0;
      if (*(v11 + 398) == 1)
      {
        *(v11 + 433) = 0;
      }
    }

    v15 = a2 & (v12 ^ 1);
    if (v13)
    {
      if (*(v11 + 397) == 1)
      {
        v38[0] = 0;
        if (!captureSession_checkClientSessionIsAllowedToRun(a1, *(v11 + 512), 0, v38, 0))
        {
          if (v38[0] == 4)
          {
            v16 = 4;
          }

          else
          {
            v16 = 3;
          }

          os_unfair_lock_lock((v11 + 900));
          v17 = *(v11 + 896);
          os_unfair_lock_unlock((v11 + 900));
          [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
        }

        captureSession_cancelPrewarmingTimeoutTimer(a1);
        *(v11 + 397) = 0;
        *(v11 + 624) = mach_absolute_time();
        shouldStartDeferredGraphSetup = captureSession_shouldStartDeferredGraphSetup(v11, &v42);
      }

      else
      {
        shouldStartDeferredGraphSetup = 0;
      }

      if (*(v11 + 632) > 0.0)
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        if (v19 > *(v11 + 632))
        {
          if (dword_1ED844050)
          {
            v40 = 0;
            v39 = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v21 = v40;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v39))
            {
              v22 = v21;
            }

            else
            {
              v22 = v21 & 0xFFFFFFFE;
            }

            if (v22)
            {
              v34 = 136315138;
              v35 = "captureSession_updateSessionStateWithApplicationAndLayoutState";
              LODWORD(v30) = 12;
              v29 = &v34;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *(v11 + 396) = 0;
        }

        *(v11 + 632) = 0;
      }
    }

    else
    {
      shouldStartDeferredGraphSetup = 0;
    }

    if (v15)
    {
      *(v11 + 624) = 0;
    }

    captureSession_updateRunningCondition(a1, 0, 0);
    os_unfair_lock_unlock((v11 + 384));
    if (shouldStartDeferredGraphSetup)
    {
      if (dword_1ED844050)
      {
        v40 = 0;
        v39 = OS_LOG_TYPE_DEFAULT;
        v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v25 = v40;
        if (os_log_type_enabled(v24, v39))
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 & 0xFFFFFFFE;
        }

        if (v26)
        {
          v27 = *(v11 + 104);
          v34 = 136315394;
          v35 = "captureSession_updateSessionStateWithApplicationAndLayoutState";
          v36 = 2114;
          v37 = v27;
          LODWORD(v30) = 22;
          v29 = &v34;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      captureSession_startDeferredGraphSetupOnWorkerQueueAfter(a1, v42);
    }

    if (v15)
    {
      if (cs_clientWantsAudioResumptionOnBackground(*(v11 + 88), v23))
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __captureSession_updateSessionStateWithApplicationAndLayoutState_block_invoke_1301;
        v33[3] = &__block_descriptor_40_e5_v8__0l;
        v33[4] = v11;
        captureSession_performBlockOnWorkerQueue(a1, v33);
      }

      [BWAutoFocusPositionSensorMonitor clientHasBeenBackgrounded:v29];
      os_unfair_lock_lock((v11 + 900));
      v28 = *(v11 + 896);
      os_unfair_lock_unlock((v11 + 900));
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __captureSession_updateSessionStateWithApplicationAndLayoutState_block_invoke_2;
      v31[3] = &__block_descriptor_36_e5_v8__0l;
      v32 = v28;
      captureSession_performBlockOnWorkerQueue(a1, v31);
    }
  }
}

uint64_t captureSession_shouldStartDeferredGraphSetup(uint64_t a1, float *a2)
{
  if (*(a1 + 601) == 1)
  {
    v2 = 0;
    if ((*(a1 + 400) & 1) == 0 && (*(a1 + 603) & 1) == 0)
    {
      if (*(a1 + 112) == 1 && *(a1 + 602) != 1)
      {
        v2 = 0;
        return v2 & 1;
      }

      if (*(a1 + 184))
      {
        v2 = 1;
        if (!a2)
        {
          return v2 & 1;
        }
      }

      else
      {
        v2 = *(a1 + 604);
        if (!a2)
        {
          return v2 & 1;
        }
      }

      if (v2)
      {
        v4 = 0.1;
        if (*(a1 + 616) == 1 && *(a1 + 624))
        {
          mach_absolute_time();
          v5 = ((FigHostTimeToNanoseconds() / 1000) / -1000000.0) + 0.5;
          v6 = fminf(v5, 0.5) + 0.1;
          if (v5 <= 0.0)
          {
            v4 = 0.1;
          }

          else
          {
            v4 = v6;
          }
        }

        *a2 = v4;
        v2 = 1;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void captureSession_updateRunningCondition(const void *a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 388);
  os_unfair_lock_assert_owner((DerivedStorage + 384));
  if (*(DerivedStorage + 396) != 1)
  {
    v9 = a2;
    if ((v6 & 1) == 0)
    {
      v12 = 0;
      v15 = 0;
      v13 = 0;
      v9 = -16409;
      goto LABEL_62;
    }

    goto LABEL_7;
  }

  if (!v6)
  {
    if (*(DerivedStorage + 398) == 1)
    {
      if ((*(DerivedStorage + 400) != 1 || *(DerivedStorage + 397) == 1) && (*(DerivedStorage + 401) != 1 || *(DerivedStorage + 399) == 1) && (*(DerivedStorage + 404) & 1) == 0 && (*(DerivedStorage + 416) & 1) == 0 && ![*(DerivedStorage + 424) count] && (*(DerivedStorage + 433) != 1 || *(DerivedStorage + 432) != 1))
      {
        goto LABEL_59;
      }

      if (*(DerivedStorage + 400))
      {
        v12 = -16403;
LABEL_61:
        v9 = 0;
        v15 = 0;
        v13 = 0;
        *(DerivedStorage + 464) = 0;
        goto LABEL_62;
      }

      if (*(DerivedStorage + 404))
      {
        v12 = -16407;
        goto LABEL_61;
      }

      if (*(DerivedStorage + 401))
      {
        v12 = -16408;
        goto LABEL_61;
      }

      if (*(DerivedStorage + 416))
      {
        v12 = -16952;
        goto LABEL_61;
      }

      if (*(DerivedStorage + 433) != 1 || (*(DerivedStorage + 432) & 1) == 0)
      {
        if ([*(DerivedStorage + 424) count])
        {
          v12 = -73176;
        }

        else
        {
          FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
          v44 = 0;
          v43 = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v42 = 0;
          v18 = _os_log_send_and_compose_impl();
          FigCapturePleaseFileRadar(FrameworkRadarComponent, v18, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 18924, @"LastShownDate:FigCaptureSession.m:18924", @"LastShownBuild:FigCaptureSession.m:18924", 0);
          free(v18);
          v12 = 0;
        }

        goto LABEL_61;
      }
    }

    else if (*(DerivedStorage + 433) != 1 || *(DerivedStorage + 432) != 1)
    {
LABEL_59:
      v12 = 0;
      v9 = 0;
      v15 = 0;
      v13 = 1;
      *(DerivedStorage + 388) = 1;
      goto LABEL_62;
    }

    v12 = -16404;
    goto LABEL_61;
  }

  if (*(DerivedStorage + 433) == 1 && (*(DerivedStorage + 432) & 1) != 0)
  {
    v9 = -16404;
    goto LABEL_7;
  }

  if (*(DerivedStorage + 398) != 1)
  {
LABEL_52:
    v12 = 0;
    v9 = 0;
    v15 = 0;
    v13 = 0;
    goto LABEL_62;
  }

  if (*(DerivedStorage + 400) == 1 && *(DerivedStorage + 397) != 1)
  {
    v9 = -16403;
  }

  else
  {
    if (*(DerivedStorage + 404) == 1)
    {
      if ((*(DerivedStorage + 405) & 1) == 0)
      {
        if (*(DerivedStorage + 456))
        {
          *(DerivedStorage + 405) = 1;
        }

        FigCaptureSessionServerInvokeContinuityCameraMultitaskingDialogIfNeeded(v7, v8);
        v9 = -16407;
        goto LABEL_7;
      }

      FigCaptureSessionServerInvokeContinuityCameraMultitaskingDialogIfNeeded(v7, v8);
      goto LABEL_52;
    }

    if (*(DerivedStorage + 401) == 1)
    {
      if (*(DerivedStorage + 399))
      {
        goto LABEL_52;
      }

      v9 = -16408;
    }

    else if (*(DerivedStorage + 416))
    {
      v9 = -16952;
    }

    else
    {
      if (![*(DerivedStorage + 424) count])
      {
        goto LABEL_52;
      }

      v9 = -73176;
    }
  }

LABEL_7:
  *(DerivedStorage + 388) = 0;
  if (*(DerivedStorage + 392) || [*(DerivedStorage + 424) count])
  {
    IsFatal = cs_errorIsFatal(a2);
  }

  else
  {
    IsFatal = 0;
  }

  v11 = cs_errorIsFatal(v9);
  v12 = 0;
  v13 = 0;
  if (IsFatal | v11 ^ 1)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  *(DerivedStorage + 392) = v14;
  v15 = 1;
LABEL_62:
  if (dword_1ED844050)
  {
    v26 = v13;
    v44 = 0;
    v43 = OS_LOG_TYPE_DEFAULT;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = v26;
  }

  if (!v13)
  {
    if (!v15)
    {
      goto LABEL_66;
    }

LABEL_71:
    if (dword_1ED844050)
    {
      v44 = 0;
      v43 = OS_LOG_TYPE_DEFAULT;
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v22 = v44;
      if (os_log_type_enabled(v21, v43))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        v24 = *(DerivedStorage + 104);
        v36 = 136315650;
        v37 = "captureSession_updateRunningCondition";
        v38 = 2114;
        v39 = v24;
        v40 = 1024;
        v41 = v9;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __captureSession_updateRunningCondition_block_invoke_722;
    v32[3] = &__block_descriptor_44_e5_v8__0l;
    v32[4] = a1;
    v33 = v9;
    captureSession_performBlockOnWorkerQueue(a1, v32);
    if (!v12)
    {
      goto LABEL_84;
    }

    goto LABEL_79;
  }

  if (dword_1ED844050)
  {
    v44 = 0;
    v43 = OS_LOG_TYPE_DEFAULT;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __captureSession_updateRunningCondition_block_invoke;
  v34[3] = &__block_descriptor_41_e5_v8__0l;
  v34[4] = a1;
  v35 = a3;
  captureSession_performBlockOnWorkerQueue(a1, v34);
  if (v15)
  {
    goto LABEL_71;
  }

LABEL_66:
  if (!v12)
  {
    goto LABEL_84;
  }

LABEL_79:
  if (cs_errorIsFatal(v12))
  {
    captureSession_updateRunningCondition_cold_1();
  }

  if ((a3 & 1) != 0 || v12 != *(DerivedStorage + 392))
  {
    *(DerivedStorage + 392) = v12;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __captureSession_updateRunningCondition_block_invoke_2;
    v30[3] = &__block_descriptor_44_e5_v8__0l;
    v30[4] = a1;
    v31 = v12;
    captureSession_performBlockOnWorkerQueue(a1, v30);
LABEL_84:
    v25 = a3 ^ 1;
    if (!v9)
    {
      v25 = 1;
    }

    if (((v15 | v25) & 1) == 0)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __captureSession_updateRunningCondition_block_invoke_3;
      v28[3] = &__block_descriptor_44_e5_v8__0l;
      v28[4] = a1;
      v29 = v9;
      captureSession_performBlockOnWorkerQueue(a1, v28);
    }
  }
}

void captureSession_updateDeferredGraphSetupStartCondition(const void *a1, _BYTE *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    captureSession_updateDeferredGraphSetupStartCondition_cold_1(DerivedStorage);
    return;
  }

  v7 = DerivedStorage;
  v10 = 0.0;
  os_unfair_lock_lock(DerivedStorage + 96);
  if (*a2 == a3)
  {

    os_unfair_lock_unlock((v7 + 384));
    return;
  }

  *a2 = a3;
  if ((v7 + 602) == a2)
  {
    if (!dword_1ED844050)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v7 + 601) == a2 && a3)
  {
    if (!dword_1ED844050)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v7 + 603) == a2 && a3 && dword_1ED844050)
  {
LABEL_16:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_17:
  shouldStartDeferredGraphSetup = captureSession_shouldStartDeferredGraphSetup(v7, &v10);
  os_unfair_lock_unlock((v7 + 384));
  if (shouldStartDeferredGraphSetup)
  {
    captureSession_startDeferredGraphSetupOnWorkerQueueAfter(a1, v10);
  }
}

uint64_t csr_serializeObjectUsingNSSecureCoding(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v2 encodeObject:a1 forKey:*MEMORY[0x1E696A508]];
  v3 = [v2 encodedData];

  return v3;
}

CFTypeRef FigCaptureSourceServerCopySourceForToken(int a1)
{
  if (captureSourceServer_initializeStatics_onceToken != -1)
  {
    FigCaptureSourceServerCopySourceForToken_cold_1();
  }

  if (FigSimpleMutexLock())
  {
    return 0;
  }

  if (CFArrayGetCount(sSourceList) < 1)
  {
LABEL_12:
    v2 = 0;
  }

  else
  {
    v3 = 0;
    v4 = *MEMORY[0x1E695E480];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(sSourceList, v3);
      v9 = 0;
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v6(ValueAtIndex, @"SourceToken", v4, &v9);
      }

      if (v9)
      {
        v7 = [v9 intValue];

        if (v7 == a1)
        {
          break;
        }
      }

      if (++v3 >= CFArrayGetCount(sSourceList))
      {
        goto LABEL_12;
      }
    }

    v2 = CFRetain(ValueAtIndex);
  }

  FigSimpleMutexUnlock();
  return v2;
}

void *fcsc_findFormatByUniqueID(uint64_t a1, void *a2)
{
  [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *v12;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(a2);
      }

      v7 = *(*(&v11 + 1) + 8 * i);
      if ((objc_msgSend_isEqualToString_([v7 uniqueID]) & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        if (objc_msgSend_isEqualToString_([objc_msgSend(v7 "geometricDistortionCorrectionFormat")]))
        {
          v8 = [v7 geometricDistortionCorrectionFormat];
        }

        else if (objc_msgSend_isEqualToString_([objc_msgSend(v7 "cinematicFramingFormat")]))
        {
          v8 = [v7 cinematicFramingFormat];
        }

        else
        {
          if (!objc_msgSend_isEqualToString_([objc_msgSend(v7 "smartCropFormat")]))
          {
            continue;
          }

          v8 = [v7 smartCropFormat];
        }

        v7 = v8;
      }

      if (v7)
      {
        return v7;
      }
    }

    v4 = [a2 countByEnumeratingWithState:&v11 objects:v10 count:16];
  }

  while (v4);
  return 0;
}

uint64_t fcsc_deserializeDataUsingNSSecureCoding(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a1 error:&v6];
  if (v6)
  {
    fcsc_deserializeDataUsingNSSecureCoding_cold_1(&v6);
    v4 = 0;
  }

  else
  {
    [v3 setDelegate:{+[FigCaptureCIFilterUnarchiverDelegate sharedInstance](FigCaptureCIFilterUnarchiverDelegate, "sharedInstance")}];
    v4 = [v3 decodeObjectOfClasses:a2 forKey:*MEMORY[0x1E696A508]];
    [v3 finishDecoding];
  }

  return v4;
}

uint64_t FigCaptureRotationDegreesWithMirroring(uint64_t result, int a2)
{
  if (a2)
  {
    if (result % 360 <= 0)
    {
      v2 = 0;
    }

    else
    {
      v2 = 360;
    }

    return (v2 - result % 360);
  }

  return result;
}

unint64_t FigCaptureConvertDimensionsForAspectRatio(unint64_t a1, int a2)
{
  v2 = HIDWORD(a1);
  if (a2)
  {
    if (a1 > SHIDWORD(a1))
    {
      LODWORD(v2) = a1;
    }

    v3 = 1.0;
    v4 = 1.0;
    if (a2 <= 4)
    {
      v5 = a2 - 1;
      v3 = dbl_1AD055268[v5];
      v4 = dbl_1AD055288[v5];
    }

    v6 = round(v3 * v2 * 0.5);
    LODWORD(a1) = (v6 + v6);
    v7 = round(v4 * v2 * 0.5);
    v2 = (v7 + v7);
  }

  return a1 | (v2 << 32);
}

uint64_t FigCaptureClientApplicationIDIsMagnifier(uint64_t a1)
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

  if (qword_1ED845208 != -1)
  {
    dispatch_once(&qword_1ED845208, &__block_literal_global_107_0);
  }

LABEL_5:
  v2 = qword_1ED845210;

  return [v2 containsObject:a1];
}

uint64_t cs_configurationChangesAreLiveReconfigurable(void *a1, void *a2, uint64_t a3)
{
  if ((a1 != 0) != (a2 != 0))
  {
    return 0;
  }

  v60 = v12;
  v61 = v11;
  v62 = v10;
  v63 = v9;
  v64 = v8;
  v65 = v7;
  v66 = v4;
  v67 = v3;
  v68 = v5;
  v69 = v6;
  v16 = [a1 copy];
  v51 = a2;
  v17 = [a2 copy];
  v18 = [objc_msgSend(v16 "connectionConfigurations")];
  v52 = v17;
  v53 = v16;
  v19 = cs_configurationsTransitionBetweenCenterStageAndManualFraming(v16, v17);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v18;
  v20 = [v18 countByEnumeratingWithState:&v56 objects:v55 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v57;
    v23 = *MEMORY[0x1E695EFF8];
    v24 = *(MEMORY[0x1E695EFF8] + 8);
    v25 = *MEMORY[0x1E695F058];
    v26 = *(MEMORY[0x1E695F058] + 8);
    v27 = *(MEMORY[0x1E695F058] + 16);
    v28 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v57 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v56 + 1) + 8 * i);
        [v30 setEnabled:1];
        [objc_msgSend(v30 "irisSinkConfiguration")];
        [objc_msgSend(v30 "irisSinkConfiguration")];
        [objc_msgSend(objc_msgSend(v30 "irisSinkConfiguration")];
        [objc_msgSend(v30 "irisSinkConfiguration")];
        [objc_msgSend(objc_msgSend(v30 "irisSinkConfiguration")];
        [objc_msgSend(objc_msgSend(v30 "irisSinkConfiguration")];
        [objc_msgSend(objc_msgSend(v30 "irisSinkConfiguration")];
        [objc_msgSend(objc_msgSend(v30 "irisSinkConfiguration")];
        [objc_msgSend(objc_msgSend(v30 "irisSinkConfiguration")];
        [objc_msgSend(objc_msgSend(v30 "irisSinkConfiguration")];
        [objc_msgSend(objc_msgSend(v30 "irisSinkConfiguration")];
        [objc_msgSend(v30 "videoPreviewSinkConfiguration")];
        [objc_msgSend(v30 "videoPreviewSinkConfiguration")];
        [objc_msgSend(v30 "videoPreviewSinkConfiguration")];
        [objc_msgSend(v30 "videoPreviewSinkConfiguration")];
        [objc_msgSend(v30 "videoPreviewSinkConfiguration")];
        [objc_msgSend(v30 "videoPreviewSinkConfiguration")];
        if ([objc_msgSend(v30 "sinkConfiguration")] == 8)
        {
          [v30 setMetadataRectOfInterest:{v25, v26, v27, v28}];
          [v30 setFaceTrackingSuspended:0];
          [v30 setObjectDetectionTargetFrameRate:0.0];
          [v30 setMotionToWakeTargetFrameRate:0.0];
        }

        [objc_msgSend(v30 "sourceConfiguration")];
        [objc_msgSend(v30 "sourceConfiguration")];
        if ([objc_msgSend(objc_msgSend(v30 "sourceConfiguration")])
        {
          [objc_msgSend(v30 "sourceConfiguration")];
          [objc_msgSend(v30 "sourceConfiguration")];
          v31 = v21;
          v32 = v22;
          v33 = a3;
          v34 = [objc_msgSend(objc_msgSend(objc_msgSend(v30 "sourceConfiguration")];
          [v34 setObject:0 forKeyedSubscript:0x1F217F950];
          [v34 setObject:0 forKeyedSubscript:0x1F217F9D0];
          [v34 setObject:0 forKeyedSubscript:0x1F217FA10];
          [v34 setObject:0 forKeyedSubscript:0x1F217FA30];
          [v34 setObject:0 forKeyedSubscript:0x1F217FA50];
          v35 = v4;
          v36 = v3;
          v37 = v19;
          v38 = [[FigCaptureSourceVideoFormat alloc] initWithFigCaptureStreamFormatDictionary:v34];
          [objc_msgSend(v30 "sourceConfiguration")];

          v19 = v37;
          v3 = v36;
          v4 = v35;

          a3 = v33;
          v22 = v32;
          v21 = v31;
        }

        [objc_msgSend(v30 "sourceConfiguration")];
        [objc_msgSend(v30 "sourceConfiguration")];
        [objc_msgSend(v30 "sourceConfiguration")];
        [objc_msgSend(v30 "sourceConfiguration")];
        v4 = v4 & 0xFFFFFFFF00000000 | 2;
        [objc_msgSend(v30 "sourceConfiguration")];
        v3 = v3 & 0xFFFFFFFF00000000 | 2;
        [objc_msgSend(v30 "sourceConfiguration")];
        [objc_msgSend(v30 "sourceConfiguration")];
        [objc_msgSend(v30 "sourceConfiguration")];
        if (v19)
        {
          [objc_msgSend(v30 "sourceConfiguration")];
          [objc_msgSend(v30 "sourceConfiguration")];
          [objc_msgSend(v30 "sourceConfiguration")];
          [objc_msgSend(v30 "sourceConfiguration")];
          [objc_msgSend(v30 "sourceConfiguration")];
          [objc_msgSend(v30 "sourceConfiguration")];
        }

        [objc_msgSend(v30 "sourceConfiguration")];
        if (a3)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v30 setOutputWidth:0];
            [v30 setOutputHeight:0];
          }

          [objc_msgSend(v30 "sourceConfiguration")];
          [objc_msgSend(v30 "sourceConfiguration")];
        }

        [objc_msgSend(v30 "videoDataSinkConfiguration")];
      }

      v21 = [obj countByEnumeratingWithState:&v56 objects:v55 count:16];
    }

    while (v21);
  }

  [v53 setConfigurationID:{objc_msgSend(v52, "configurationID")}];
  [v53 setContinuityCameraIsWired:0];
  [v52 setContinuityCameraIsWired:0];
  [v53 setSuppressVideoEffects:0];
  [v52 setSuppressVideoEffects:0];
  [v53 setSmartStyle:0];
  [v52 setSmartStyle:0];
  v39 = [v53 isEqual:v52];

  if (!v39)
  {
    return 0;
  }

  IsConfiguredForBackgroundBlur = cs_configurationIsConfiguredForBackgroundBlur(a1);
  if (IsConfiguredForBackgroundBlur != cs_configurationIsConfiguredForBackgroundBlur(v51))
  {
    return 0;
  }

  IsConfiguredForStudioLighting = cs_configurationIsConfiguredForStudioLighting(a1);
  if (IsConfiguredForStudioLighting != cs_configurationIsConfiguredForStudioLighting(v51))
  {
    return 0;
  }

  IsConfiguredForReactionEffects = cs_configurationIsConfiguredForReactionEffects(a1);
  if (IsConfiguredForReactionEffects != cs_configurationIsConfiguredForReactionEffects(v51))
  {
    return 0;
  }

  IsConfiguredForBackgroundReplacement = cs_configurationIsConfiguredForBackgroundReplacement(a1);
  if (IsConfiguredForBackgroundReplacement != cs_configurationIsConfiguredForBackgroundReplacement(v51))
  {
    return 0;
  }

  v44 = cs_configurationVideoZoomFactorBySourceTypeConfiguredForDepthData(a1);
  result = [v44 isEqualToDictionary:cs_configurationVideoZoomFactorBySourceTypeConfiguredForDepthData(v51)];
  if (result)
  {
    v45 = [objc_msgSend(a1 "connectionConfigurations")];
    if (!v45)
    {
      return 1;
    }

    v46 = v45;
    v47 = 0;
    while (1)
    {
      v48 = [objc_msgSend(a1 "connectionConfigurations")];
      v49 = [objc_msgSend(v51 "connectionConfigurations")];
      LODWORD(v48) = [v48 enabled];
      if (v48 != [v49 enabled] && (FigCaptureConnectionWithSinkTypeRequiresGraphRebuildForEnabledChange(objc_msgSend(objc_msgSend(v49, "sinkConfiguration"), "sinkType")) & 1) != 0)
      {
        break;
      }

      ++v47;
      result = 1;
      if (v46 == v47)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t cs_configurationsTransitionBetweenCenterStageAndManualFraming(void *a1, void *a2)
{
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [a1 connectionConfigurations];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [objc_msgSend(v8 "sourceConfiguration")];
        if (v9 & 1) != 0 || ([objc_msgSend(v8 "sourceConfiguration")])
        {
          v11 = v9 ^ 1;
          v10 = v9 ^ 1;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v25 count:16];
      v10 = 0;
      v11 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
    v11 = 1;
  }

LABEL_13:
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [a2 connectionConfigurations];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
LABEL_15:
    v16 = 0;
    while (1)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v21 + 1) + 8 * v16);
      if ([objc_msgSend(v17 "sourceConfiguration")])
      {
        v18 = 1;
        return v10 & v18;
      }

      if ([objc_msgSend(v17 "sourceConfiguration")])
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v14)
        {
          goto LABEL_15;
        }

        goto LABEL_25;
      }
    }

    if (v11)
    {
      goto LABEL_25;
    }

    return 1;
  }

  else
  {
LABEL_25:
    v18 = 0;
    return v10 & v18;
  }
}

uint64_t captureSessionRemote_commonAsyncMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (captureSessionRemote_createBasicMessage(a1, a2))
  {
    if (FigXPCMessageSetCFString())
    {
      captureSessionRemote_commonAsyncMessage_cold_1();
    }

    else if (FigXPCMessageSetCFData())
    {
      captureSessionRemote_commonAsyncMessage_cold_2();
    }

    else if (FigXPCRemoteClientSendAsyncMessage())
    {
      captureSessionRemote_commonAsyncMessage_cold_3();
    }
  }

  else
  {
    captureSessionRemote_commonAsyncMessage_cold_4();
  }

  return FigXPCRelease();
}

uint64_t captureSessionServer_handleCommonNoArgumentMessage(uint64_t a1, void *a2, void (*a3)(CFTypeRef))
{
  v7 = 0;
  v4 = captureSessionServer_messageUnpackCopy(a1, a2, 0, &v7, 0, 0, 0);
  v5 = v7;
  if (v7)
  {
    a3(v7);
    CFRelease(v5);
  }

  return v4;
}

uint64_t FigCaptureSessionStartRunning(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v2)
  {

    return v2(a1);
  }

  else
  {
    v4 = @"ErrorStatus";
    v5 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

void captureSession_StartRunning(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v6 = 0;
    v5 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    os_unfair_lock_lock((DerivedStorage + 384));
    if (*(DerivedStorage + 464) == 0.0)
    {
      *(DerivedStorage + 464) = CFAbsoluteTimeGetCurrent();
    }

    os_unfair_lock_unlock((DerivedStorage + 384));
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __captureSession_updatePrewarmedLaunchClientForStartRunning_block_invoke;
    v4[3] = &__block_descriptor_40_e5_v8__0l;
    v4[4] = a1;
    captureSession_performBlockOnWorkerQueue(a1, v4);
    captureSession_updateSessionStateWithNewInputCondition(a1, (DerivedStorage + 396), 1, 0, 1);
  }
}

void captureSession_updateSessionStateWithNewInputCondition(const void *a1, _BYTE *a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return;
  }

  v11 = DerivedStorage;
  os_unfair_lock_lock((DerivedStorage + 384));
  v12 = (v11 + 396);
  if (a3 && v12 == a2)
  {
    *(v11 + 433) = 0;
    *(v11 + 404) = 0;

    *(v11 + 408) = 0;
    *(v11 + 416) = 0;
  }

  if ((a3 & 1) == 0 && ((v11 + 404) == a2 || (v11 + 416) == a2))
  {
    *(v11 + 404) = 0;

    *(v11 + 408) = 0;
    *(v11 + 416) = 0;
    goto LABEL_32;
  }

  if (*(v11 + 392) || [*(v11 + 424) count])
  {
    IsFatal = cs_errorIsFatal(a4);
    v14 = *(v11 + 456);
    v15 = v14 == 3;
    v16 = v14 == 3 && a4 == -12689;
    if (IsFatal && v12 == a2 && (a3 & 1) == 0)
    {
      *(v11 + 433) = 0;
      *(v11 + 404) = 0;

      *(v11 + 408) = 0;
      *(v11 + 416) = 0;
      if ((*(v11 + 388) & 1) == 0)
      {
        *(v11 + 392) = 0;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __captureSession_updateSessionStateWithNewInputCondition_block_invoke;
        v20[3] = &__block_descriptor_44_e5_v8__0l;
        v20[4] = a1;
        v21 = a4;
        captureSession_performBlockOnWorkerQueue(a1, v20);
      }

      goto LABEL_31;
    }
  }

  else
  {
    v17 = *(v11 + 456);
    v15 = v17 == 3;
    v16 = v17 == 3 && a4 == -12689;
  }

  if (a4 == -16406 && v15 && v12 == a2 && (a3 & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((v11 + 404) != a2)
  {
    v16 = 0;
  }

  if (v16 && a3)
  {
LABEL_26:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a4 = 0;
    goto LABEL_32;
  }

LABEL_31:
  *a2 = a3;
LABEL_32:
  if (*(v11 + 400) == 1 && (*(v11 + 397) & 1) == 0)
  {
    *(v11 + 404) = 0;

    *(v11 + 408) = 0;
    *(v11 + 416) = 0;
    if (*(v11 + 398) == 1)
    {
      *(v11 + 433) = 0;
    }
  }

  if (*(v11 + 397) == 1 && a3 && ((v11 + 404) == a2 || (v11 + 416) == a2))
  {
    if (dword_1ED844050)
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  captureSession_updateRunningCondition(a1, a4, a5);
  os_unfair_lock_unlock((v11 + 384));
}

int64_t captureSourceRemote_UpdateCameraHistory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, void *a8)
{
  xdict = 0;
  *a8 = 0;
  v13 = csr_ensureClientEstablished_0();
  if (v13)
  {
    int64 = v13;
    captureSourceRemote_UpdateCameraHistory_cold_1();
  }

  else
  {
    v14 = captureSourceRemote_createBasicMessage(a1, 1969449075, &xdict);
    if (v14)
    {
      int64 = v14;
      captureSourceRemote_UpdateCameraHistory_cold_2();
    }

    else
    {
      v15 = FigXPCMessageSetCFString();
      if (v15)
      {
        int64 = v15;
        captureSourceRemote_UpdateCameraHistory_cold_3();
      }

      else if (a4 && (v16 = FigXPCMessageSetCFDictionary(), v16))
      {
        int64 = v16;
        captureSourceRemote_UpdateCameraHistory_cold_4();
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithUnsignedInt:{a5, 0}];
        v17 = FigXPCMessageSetCFNumber();
        if (v17)
        {
          int64 = v17;
          captureSourceRemote_UpdateCameraHistory_cold_5();
        }

        else
        {
          xpc_dictionary_set_BOOL(xdict, kFigCaptureSourceRemoteUpdateCameraHistoryMessageKey_UpdateCameraHistoryDownplayOverrideList, a6 != 0);
          xpc_dictionary_set_BOOL(xdict, kFigCaptureSourceRemoteUpdateCameraHistoryMessageKey_CameraCanBeInOverrideList, a7 != 0);
          v18 = FigXPCRemoteClientSendSyncMessageCreatingReply();
          if (v18)
          {
            int64 = v18;
            captureSourceRemote_UpdateCameraHistory_cold_6();
          }

          else if (!v22 || (v19 = MEMORY[0x1B26F2E20](), v19 == MEMORY[0x1E69E9E98]))
          {
            int64 = 0xFFFFFFFFLL;
          }

          else if (v19 == MEMORY[0x1E69E9E80])
          {
            int64 = xpc_dictionary_get_int64(v22, kFigCaptureSourceServerMessagePayload_ErrorStatus);
            if (!int64)
            {
              FigXPCMessageCopyCFArray();
            }
          }

          else
          {
            int64 = 0;
          }
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return int64;
}

uint64_t captureSourceServer_handleUpdateCameraHistoryMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  valuePtr = 0;
  v16 = 0;
  pid = xpc_connection_get_pid(a1);
  v7 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2, &v21);
  if (v7)
  {
    updated = v7;
    captureSourceServer_handleUpdateCameraHistoryMessage_cold_1();
LABEL_9:
    xpc_dictionary_set_int64(a3, kFigCaptureSourceServerMessagePayload_ErrorStatus, updated);
    goto LABEL_15;
  }

  v8 = FigXPCMessageCopyCFString();
  if (v8)
  {
    updated = v8;
    captureSourceServer_handleUpdateCameraHistoryMessage_cold_2();
    goto LABEL_9;
  }

  v9 = FigXPCMessageCopyCFDictionary();
  if (v9)
  {
    updated = v9;
    captureSourceServer_handleUpdateCameraHistoryMessage_cold_3();
    goto LABEL_9;
  }

  v10 = FigXPCMessageCopyCFNumber();
  if (v10)
  {
    updated = v10;
    captureSourceServer_handleUpdateCameraHistoryMessage_cold_4();
    goto LABEL_9;
  }

  CFNumberGetValue(v18, kCFNumberIntType, &valuePtr);
  if (v20)
  {
    if (css_cameraInfoIsValid(v19))
    {
      if (valuePtr - 1 <= 0x12)
      {
        v11 = xpc_dictionary_get_BOOL(a2, kFigCaptureSourceRemoteUpdateCameraHistoryMessageKey_UpdateCameraHistoryDownplayOverrideList);
        v12 = xpc_dictionary_get_BOOL(a2, kFigCaptureSourceRemoteUpdateCameraHistoryMessageKey_CameraCanBeInOverrideList);
        updated = FigCaptureSourceUpdateCameraHistory(v21, pid, v20, v19, valuePtr, v11, v12, &v16);
        if (updated)
        {
          goto LABEL_9;
        }
      }
    }
  }

  xpc_dictionary_set_int64(a3, kFigCaptureSourceServerMessagePayload_ErrorStatus, 0);
  if (v16)
  {
    FigXPCMessageSetCFArray();
  }

  if (dword_1ED843FB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  updated = 0;
LABEL_15:
  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return updated;
}

void *css_cameraInfoIsValid(void *a1)
{
  if ([a1 count] != 3)
  {
    return 0;
  }

  result = [a1 objectForKeyedSubscript:@"CreatorID"];
  if (result)
  {
    result = [a1 objectForKeyedSubscript:@"DeviceUID"];
    if (result)
    {
      return ([a1 objectForKeyedSubscript:@"OverrideRanking"] != 0);
    }
  }

  return result;
}

uint64_t FigCaptureSourceUpdateCameraHistory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(CMBaseObjectGetVTable() + 16);
  if (*v16 < 3uLL)
  {
    return 4294954514;
  }

  v17 = v16[8];
  if (!v17)
  {
    return 4294954514;
  }

  return v17(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t captureSource_UpdateCameraHistory(uint64_t a1, uint64_t a2, __CFString *a3, void *a4, unsigned int a5, int a6, int a7, void *a8)
{
  v14 = a2;
  *a8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 12))
  {
    return 4294954511;
  }

  v17 = DerivedStorage;
  v43 = a5;
  FigSimpleMutexLock();
  v18 = *(v17 + 208);
  FigSimpleMutexUnlock();
  v19 = [v18 objectForKey:a3];
  if (dword_1ED844030)
  {
    v53 = 0;
    v52 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a6)
  {
    cs_updateCameraHistoryDownplayOverrideListForPreferenceKey(a3);
    v21 = [(__CFString *)a3 componentsSeparatedByString:@"/"];
    v22 = v19;
    if ([v21 count] == 3)
    {
      v41 = a6;
      v23 = MEMORY[0x1E696AEC0];
      v24 = [v21 firstObject];
      v40 = [v21 lastObject];
      v25 = v23;
      a6 = v41;
      v26 = [v25 stringWithFormat:@"%@/override/%@", v24, v40];
      v22 = v19;
      if (v26)
      {
        v27 = [sCameraHistoriesUpdatedWithOverridingCamera objectForKeyedSubscript:a3];
        v22 = v19;
        if ((cs_cameraInfosAreEqualExcludingRank(v27, a4) & 1) == 0)
        {
          v28 = a4;
          if (!a7)
          {
            v22 = v19;
            if (!v27)
            {
              goto LABEL_19;
            }

            v28 = 0;
          }

          [sCameraHistoriesUpdatedWithOverridingCamera setObject:v28 forKeyedSubscript:a3];
          if (dword_1ED844030)
          {
            v53 = 0;
            v52 = OS_LOG_TYPE_DEFAULT;
            v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v30 = v53;
            if (os_log_type_enabled(v29, v52))
            {
              v31 = v30;
            }

            else
            {
              v31 = v30 & 0xFFFFFFFE;
            }

            if (v31)
            {
              v44 = 136315907;
              v45 = "cs_updateCameraHistoriesUpdatedWithOverridingCameraForPreferenceKey";
              v46 = 1025;
              v47 = v14;
              v48 = 2113;
              v49 = @"camera-histories-updated-with-overriding-camera";
              v50 = 2113;
              *v51 = sCameraHistoriesUpdatedWithOverridingCamera;
              LODWORD(v39) = 38;
              v38 = &v44;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigSimpleMutexLock();
          [sTemporaryCameraHistoryItems setObject:sCameraHistoriesUpdatedWithOverridingCamera forKeyedSubscript:@"camera-histories-updated-with-overriding-camera"];
          [sServerUserDefaults setObject:sTemporaryCameraHistoryItems forKey:@"tmp"];
          FigSimpleMutexUnlock();
          v22 = v19;
          a6 = v41;
        }
      }
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_19:
  if (![v19 count])
  {
LABEL_23:
    LODWORD(v32) = -1;
LABEL_25:
    if (v19)
    {
      v33 = [MEMORY[0x1E695DF70] arrayWithArray:v19];
      v22 = v33;
      if (v32 >= 1)
      {
        [v33 removeObjectAtIndex:v32];
      }
    }

    else
    {
      v22 = [MEMORY[0x1E695DF70] array];
    }

    while ([v22 count] >= v43)
    {
      [v22 removeLastObject];
    }

    [v22 insertObject:a4 atIndex:0];
    [v18 setObject:v22 forKey:a3];

    goto LABEL_32;
  }

  v32 = 0;
  while ((cs_cameraInfosAreEqualExcludingRank(a4, [v19 objectAtIndexedSubscript:v32]) & 1) == 0)
  {
    if ([v19 count] <= ++v32)
    {
      goto LABEL_23;
    }
  }

  if (v32)
  {
    goto LABEL_25;
  }

  if (dword_1ED844030)
  {
    v42 = a6;
    v53 = 0;
    v52 = OS_LOG_TYPE_DEFAULT;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v36 = v53;
    if (os_log_type_enabled(v35, v52))
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 & 0xFFFFFFFE;
    }

    if (v37)
    {
      v44 = 136315907;
      v45 = "captureSource_UpdateCameraHistory";
      v46 = 1025;
      v47 = v14;
      v48 = 2113;
      v49 = a3;
      v50 = 2113;
      *v51 = a4;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();

    if (v42)
    {
      goto LABEL_32;
    }

    return 0;
  }

  if (!a6)
  {
    return 0;
  }

LABEL_32:
  if (v22)
  {
    v34 = CFRetain(v22);
  }

  else
  {
    v34 = 0;
  }

  result = 0;
  *a8 = v34;
  return result;
}

uint64_t cs_cameraInfosAreEqualExcludingRank(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      v5 = [a1 objectForKeyedSubscript:@"CreatorID"];
      [a2 objectForKeyedSubscript:@"CreatorID"];
      result = objc_msgSend_isEqualToString_(v5);
      if (result)
      {
        v6 = [a1 objectForKeyedSubscript:@"DeviceUID"];
        [a2 objectForKeyedSubscript:@"DeviceUID"];

        return objc_msgSend_isEqualToString_(v6);
      }
    }
  }

  return result;
}

uint64_t captureSession_updateGraphConfiguration(const void *a1, void *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v423 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_updateGraphConfiguration_cold_1();
  }

  *a4 = 0;
  *a5 = 0;
  v11 = captureSession_clientSetsUserInitiatedCaptureRequestTime(a1);
  v305 = [[FigCaptureSessionParsedConfiguration alloc] initWithSessionConfiguration:a2 clientSetsUserInitiatedCaptureRequestTime:v11 restrictions:*(DerivedStorage + 496)];
  if (!v305)
  {
    captureSession_updateGraphConfiguration_cold_6(&v423, v12, v13, v14, v15, v16, v17, v18);
    return v423;
  }

  v19 = [[FigCaptureSessionParsedConfiguration alloc] initWithSessionConfiguration:a3 clientSetsUserInitiatedCaptureRequestTime:v11 restrictions:*(DerivedStorage + 496)];
  if (!v19)
  {
    captureSession_updateGraphConfiguration_cold_5(&v423, v20, v21, v22, v23, v24, v25, v26);
    return v423;
  }

  v309 = v19;
  v422 = 0u;
  v421 = 0u;
  v420 = 0u;
  v419 = 0u;
  v27 = *(DerivedStorage + 776);
  v28 = [v27 countByEnumeratingWithState:&v419 objects:v418 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v420;
    do
    {
      v31 = 0;
      do
      {
        if (*v420 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(DerivedStorage + 776) objectForKeyedSubscript:*(*(&v419 + 1) + 8 * v31)];
        if (v32)
        {
          v33 = *(v32 + 8);
        }

        else
        {
          v33 = 0;
        }

        cs_updateConfigurationsWithCaptureSource(a2, v33);
        ++v31;
      }

      while (v29 != v31);
      v34 = [v27 countByEnumeratingWithState:&v419 objects:v418 count:16];
      v29 = v34;
    }

    while (v34);
  }

  v337 = DerivedStorage;
  v338 = a5;
  v333 = a2;
  v303 = a4;
  v308 = a3;
  v417 = 0u;
  v416 = 0u;
  v415 = 0u;
  v414 = 0u;
  v35 = [*(DerivedStorage + 784) previewSinkPipelines];
  v36 = [v35 countByEnumeratingWithState:&v414 objects:v413 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v415;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v415 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v414 + 1) + 8 * i);
        if ([v40 sinkID])
        {
          v41 = [v40 sinkID];
          v42 = [v40 filters];
          [v40 portraitLightingEffectStrength];
          v44 = v43;
          v45 = [v40 semanticStyle];
          [v40 primaryCaptureRectAspectRatio];
          v47 = v46;
          [v40 primaryCaptureRectCenter];
          cs_updateConfigurationsWithPreviewSinkProperties(v333, v41, v42, v45, [v40 primaryCaptureRectUniqueID], v44, v47, v48, v49);
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v414 objects:v413 count:16];
    }

    while (v37);
  }

  v435 = 0u;
  v436 = 0u;
  v437 = 0u;
  v438 = 0u;
  v50 = [v333 sourceConfigurations];
  v51 = [v50 countByEnumeratingWithState:&v435 objects:v434 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v436;
    v54 = v308;
    v55 = v337;
    while (2)
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v436 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v57 = *(*(&v435 + 1) + 8 * j);
        if ([v57 sourceType] == 1)
        {
          v58 = [v57 outputAspectRatio];
          goto LABEL_36;
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v435 objects:v434 count:16];
      if (v52)
      {
        continue;
      }

      break;
    }

    v58 = 0;
  }

  else
  {
    v58 = 0;
    v54 = v308;
    v55 = v337;
  }

LABEL_36:
  v433 = 0u;
  v432 = 0u;
  v431 = 0u;
  *type = 0u;
  v59 = [v54 sourceConfigurations];
  v60 = [v59 countByEnumeratingWithState:type objects:&v424 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v431;
    while (2)
    {
      for (k = 0; k != v61; ++k)
      {
        if (*v431 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*&type[8] + 8 * k);
        if ([v64 sourceType] == 1)
        {
          v65 = [v64 outputAspectRatio];
          goto LABEL_46;
        }
      }

      v61 = [v59 countByEnumeratingWithState:type objects:&v424 count:16];
      if (v61)
      {
        continue;
      }

      break;
    }
  }

  v65 = 0;
LABEL_46:
  v66 = cs_configurationChangesAreLiveReconfigurable(v333, v54, v58 != v65);
  v67 = [*(v55 + 752) supportsLiveReconfiguration];
  v68 = v58 == v65 || v66 == 0;
  if (v68 || (v67 & 1) != 0)
  {
    if (v66)
    {
      captureSession_updateGraphForVideoPreviewSinkConfigurationChanges(a1, v309, 1);
      if (*(v55 + 452) != 1 || (v58 == v65 ? (v69 = *(v55 + 448) == 2) : (v69 = 0), !v69))
      {
        captureSession_waitForGraphToStart(a1, 0);
      }

      if (v58 == v65)
      {
        captureSession_updateGraphForMetadataConnectionConfigurationChanges(a1, v309);
        captureSession_updateGraphForVideoPreviewSinkConfigurationChanges(a1, v309, 0);
        captureSession_updateGraphForStillImageSinkConfigurationChanges(a1, v309);
        captureSession_updateGraphForConnectionConfigurationEnabledChanges(a1, v305, v309, v338);
        shouldSetCinematicFramingControlsWhileRunning = cs_shouldSetCinematicFramingControlsWhileRunning(v333, v54);
        captureSession_updateGraphForSourceConfigurationChanges(a1, v309, shouldSetCinematicFramingControlsWhileRunning);
        captureSession_updateGraphForCinematographyConfigurationChanges(a1, v309);
        captureSession_updateGraphForVideoDataSinkConfigurationChanges(a1, v309);
      }

      else
      {
        v306 = a1;
        v70 = [MEMORY[0x1E695DF70] array];
        v409 = 0u;
        v410 = 0u;
        v411 = 0u;
        v412 = 0u;
        v71 = [*(v55 + 784) stillImageSinkPipelineSessionStorages];
        v72 = [v71 countByEnumeratingWithState:&v409 objects:v408 count:16];
        if (v72)
        {
          v73 = v72;
          v74 = *v410;
          do
          {
            for (m = 0; m != v73; ++m)
            {
              if (*v410 != v74)
              {
                objc_enumerationMutation(v71);
              }

              v76 = *(*(&v409 + 1) + 8 * m);
              v404 = 0u;
              v405 = 0u;
              v406 = 0u;
              v407 = 0u;
              v77 = [v76 stillImageSinkPipelines];
              v78 = [v77 countByEnumeratingWithState:&v404 objects:v403 count:16];
              if (v78)
              {
                v79 = v78;
                v80 = *v405;
                do
                {
                  for (n = 0; n != v79; ++n)
                  {
                    if (*v405 != v80)
                    {
                      objc_enumerationMutation(v77);
                    }

                    v82 = *(*(&v404 + 1) + 8 * n);
                    if ([objc_msgSend(v82 "stillImageCoordinatorNode")])
                    {
                      [v70 addObject:{objc_msgSend(v82, "stillImageCoordinatorNode")}];
                    }
                  }

                  v79 = [v77 countByEnumeratingWithState:&v404 objects:v403 count:16];
                }

                while (v79);
              }
            }

            v73 = [v71 countByEnumeratingWithState:&v409 objects:v408 count:16];
          }

          while (v73);
        }

        if ([v70 count])
        {
          v83 = *(v337 + 160);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __captureSession_updateGraphConfiguration_block_invoke;
          block[3] = &unk_1E7998380;
          block[6] = v337;
          v84 = v306;
          block[7] = v306;
          block[4] = v70;
          v85 = v308;
          block[5] = v308;
          dispatch_async(v83, block);
        }

        else
        {
          v84 = v306;
          v85 = v308;
          captureSession_liveReconfigureForOutputAspectRatioChange();
        }

        captureSession_updateGraphForMetadataConnectionConfigurationChanges(v84, v309);
        captureSession_updateGraphForVideoPreviewSinkConfigurationChanges(v84, v309, 0);
        captureSession_updateGraphForStillImageSinkConfigurationChanges(v84, v309);
        captureSession_updateGraphForConnectionConfigurationEnabledChanges(v84, v305, v309, v338);
        v86 = cs_shouldSetCinematicFramingControlsWhileRunning(v333, v85);
        captureSession_updateGraphForSourceConfigurationChanges(v84, v309, v86);
        captureSession_updateGraphForCinematographyConfigurationChanges(v84, v309);
        captureSession_updateGraphForVideoDataSinkConfigurationChanges(v84, v309);
        *v338 = 0;
      }

      return v423;
    }
  }

  else
  {
    v89 = [*(v55 + 752) nodesUnsupportedForLiveReconfiguration];
    v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported BWNodes: %@", v89];
    LODWORD(v435) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v92 = v435;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
    {
      v93 = v92;
    }

    else
    {
      v93 = v92 & 0xFFFFFFFE;
    }

    if (v93)
    {
      v424 = 136315138;
      v425 = "captureSession_updateGraphConfiguration";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(v434[0]) = 0;
    v94 = _os_log_send_and_compose_impl();
    v299 = 0;
    FigCapturePleaseFileRadar(1, v94, v90, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 16585, @"LastShownDate:FigCaptureSession.m:16585", @"LastShownBuild:FigCaptureSession.m:16585", 0);
    free(v94);
  }

  v95 = *(v55 + 768);
  v304 = [v54 configuresAppAudioSessionToMixWithOthers];
  v302 = v95;
  if (v95 == 1)
  {
    isTrueVideoCaptureEnabled = cs_isTrueVideoCaptureEnabled(v305);
    v398 = 0u;
    v399 = 0u;
    v400 = 0u;
    v401 = 0u;
    v97 = [(FigCaptureSessionParsedConfiguration *)v309 parsedMovieFileSinkConfigurations];
    v98 = [(NSArray *)v97 countByEnumeratingWithState:&v398 objects:v397 count:16];
    if (v98)
    {
      v101 = v98;
      v102 = *v399;
      while (2)
      {
        for (ii = 0; ii != v101; ++ii)
        {
          if (*v399 != v102)
          {
            objc_enumerationMutation(v97);
          }

          v104 = [objc_msgSend(*(*(&v398 + 1) + 8 * ii) "videoConnectionConfigurations")];
          if ([objc_msgSend(v104 "movieFileSinkConfiguration")])
          {
            v105 = [objc_msgSend(objc_msgSend(v104 "sourceConfiguration")];
            v106 = HIDWORD(v105);
            if (v105 == 3840 && v106 == 2160 || (v106 == 3840 ? (v107 = v105 == 2160) : (v107 = 0), v107))
            {
              v300 = 0;
            }

            else
            {
              v300 = 40;
            }

            v108 = [*(v55 + 784) firstColorCameraSourcePipeline];
            if (isTrueVideoCaptureEnabled)
            {
              v99 = [(FigCaptureCameraSourcePipeline *)v108 trueVideoTransitionPreviousPhotoGraphZoomFactor];
              v339 = 0;
            }

            else
            {
              v109 = [-[FigCaptureCameraSourcePipeline captureDevice](v108) zoomCommandHandler];
              [v109 rampTargetZoomFactor];
              if (v110 == 0.0)
              {
                [v109 appliedZoomFactor];
              }

              v99 = v110;
              v339 = 1;
            }

            v100 = 1;
            goto LABEL_115;
          }
        }

        v101 = [(NSArray *)v97 countByEnumeratingWithState:&v398 objects:v397 count:16];
        if (v101)
        {
          continue;
        }

        break;
      }
    }

    if (isTrueVideoCaptureEnabled)
    {
      v99 = -[FigCaptureCameraSourcePipeline trueVideoTransitionPreviousPhotoGraphZoomFactor]([*(v55 + 784) firstColorCameraSourcePipeline]);
      v100 = 0;
      v300 = 100;
      v339 = 1;
    }

    else
    {
      v339 = 0;
      v100 = 0;
      v99 = -1.0;
      v300 = 100;
    }

LABEL_115:
    v301 = isTrueVideoCaptureEnabled | v100;
  }

  else
  {
    v100 = 0;
    v339 = 0;
    v99 = -1.0;
    v300 = 100;
    v301 = 0;
  }

  v311 = v100;
  v111 = [MEMORY[0x1E695DF90] dictionary];
  v335 = [MEMORY[0x1E695DF90] dictionary];
  v315 = [MEMORY[0x1E695DF90] dictionary];
  v307 = a1;
  if (v302 && [(NSArray *)[(FigCaptureSessionParsedConfiguration *)v309 parsedCameraSourceConfigurations] count])
  {
    v124 = [MEMORY[0x1E695DFA8] set];
    v330 = [MEMORY[0x1E695DF90] dictionary];
    v393 = 0u;
    v394 = 0u;
    v395 = 0u;
    v396 = 0u;
    v125 = [(FigCaptureSessionParsedConfiguration *)v305 parsedCameraSourceConfigurations];
    v126 = [(NSArray *)v125 countByEnumeratingWithState:&v393 objects:v392 count:16];
    if (v126)
    {
      v127 = v126;
      v128 = *v394;
      do
      {
        for (jj = 0; jj != v127; ++jj)
        {
          if (*v394 != v128)
          {
            objc_enumerationMutation(v125);
          }

          v130 = [*(*(&v393 + 1) + 8 * jj) cameraConfiguration];
          v131 = [v130 sourceID];
          [v124 addObject:v131];
          v132 = MEMORY[0x1E696AD98];
          [v130 videoZoomFactor];
          [v330 setObject:objc_msgSend(v132 forKeyedSubscript:{"numberWithFloat:"), v131}];
        }

        v127 = [(NSArray *)v125 countByEnumeratingWithState:&v393 objects:v392 count:16];
      }

      while (v127);
    }

    v133 = [MEMORY[0x1E695DFA8] set];
    v388 = 0u;
    v389 = 0u;
    v390 = 0u;
    v391 = 0u;
    obj = [(FigCaptureSessionParsedConfiguration *)v309 parsedCameraSourceConfigurations];
    v134 = [(NSArray *)obj countByEnumeratingWithState:&v388 objects:v387 count:16];
    v135 = 1;
    v55 = v337;
    if (v134)
    {
      v136 = v134;
      v328 = *v389;
      v316 = v133;
      do
      {
        v137 = 0;
        v318 = v136;
        do
        {
          if (*v389 != v328)
          {
            objc_enumerationMutation(obj);
          }

          v138 = *(*(&v388 + 1) + 8 * v137);
          v139 = [v138 cameraConfiguration];
          v140 = [v139 sourceID];
          [v133 addObject:v140];
          if ([v124 containsObject:v140])
          {
            v141 = [v139 sourceDeviceType];
            if (v141 <= 9 && ((1 << v141) & 0x310) != 0)
            {
              v326 = v135;
              v143 = [*(v55 + 784) cameraSourcePipelineWithSourceID:v140];
              [-[FigCaptureCameraSourcePipeline captureDevice](v143) masterCaptureStreamLastFrameEIT];
              v145 = v144;
              v146 = [objc_msgSend(-[FigCaptureCameraSourcePipeline captureDevice](v143) "masterCaptureStream")];
              v147 = [(FigCaptureCameraSourcePipeline *)v143 captureSource];
              v320 = v146;
              v148 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(v147, [v139 requiredFormat], v146, &v423);
              if (v423)
              {
                captureSession_updateGraphConfiguration_cold_2();
                return v423;
              }

              if ([v139 variableFrameRateVideoCaptureEnabled])
              {
                [v148 variableFrameRateVideoCaptureFromFWAEMaxGain];
              }

              else if ([v139 lowLightVideoCaptureEnabled])
              {
                [v148 lowLightVideoAEMaxGain];
              }

              else
              {
                [v148 aeMaxGain];
              }

              v150 = v149;
              if ([FigCaptureConnectionConfigurationWithSinkType(objc_msgSend(v138 "videoCaptureConnectionConfigurations")])
              {
                [v148 stereoVideoAEMaxGain];
                if (v151 != 0.0)
                {
                  [v148 stereoVideoAEMaxGain];
                  v150 = v152;
                }
              }

              v153 = 24.0;
              v322 = v148;
              if (([v139 variableFrameRateVideoCaptureEnabled] & 1) == 0 && (objc_msgSend(v139, "lowLightVideoCaptureEnabled") & 1) == 0)
              {
                v154 = [v139 requiredMinFrameRate];
                v312 = v312 & 0xFFFFFFFF00000000 | v155;
                v153 = FigCaptureFrameRateAsFloat(v154, v312);
              }

              [objc_msgSend(v330 objectForKeyedSubscript:{v140), "floatValue"}];
              v157 = v156;
              [v139 videoZoomFactor];
              if (v158 > v157)
              {
                v159 = v158;
                v160 = [objc_msgSend(objc_msgSend(-[FigCaptureCameraSourcePipeline captureDevice](v143) "clientBaseZoomFactorsByPortType")];
                v383 = 0u;
                v384 = 0u;
                v385 = 0u;
                v386 = 0u;
                v161 = [v160 countByEnumeratingWithState:&v383 objects:v382 count:16];
                if (v161)
                {
                  v162 = v161;
                  v163 = *v384;
LABEL_164:
                  v164 = 0;
                  while (1)
                  {
                    if (*v384 != v163)
                    {
                      objc_enumerationMutation(v160);
                    }

                    [*(*(&v383 + 1) + 8 * v164) floatValue];
                    if (v159 >= v165 && v157 < v165)
                    {
                      break;
                    }

                    if (v157 < v165 && v159 < v165)
                    {
                      goto LABEL_179;
                    }

                    if (v162 == ++v164)
                    {
                      v162 = [v160 countByEnumeratingWithState:&v383 objects:v382 count:16];
                      if (v162)
                      {
                        goto LABEL_164;
                      }

                      goto LABEL_179;
                    }
                  }

                  v168 = [(FigCaptureCameraSourcePipeline *)v143 captureDevice];
                  *&v169 = v159;
                  [v168 preferredMasterPortTypeForZoomFactor:v169];
                  if (!objc_msgSend_isEqualToString_(v320))
                  {
                    goto LABEL_183;
                  }
                }
              }

LABEL_179:
              if (v145 <= (v150 / v153) || v311 && objc_msgSend_isEqualToString_(v320))
              {
                [v315 setObject:v320 forKeyedSubscript:v140];
              }

LABEL_183:

              v55 = v337;
              v135 = v326;
              v133 = v316;
              v136 = v318;
            }
          }

          v170 = cs_pulseGeneratorFrameRate(v138);
          v135 &= !FigCaptureFrameRateIsValidRational(v170, v171);
          ++v137;
        }

        while (v137 != v136);
        v136 = [(NSArray *)obj countByEnumeratingWithState:&v388 objects:v387 count:16];
      }

      while (v136);
    }

    v325 = v135;
    v172 = [v124 isEqualToSet:v133];
    v378 = 0u;
    v379 = 0u;
    v380 = 0u;
    v381 = 0u;
    v173 = [(FigCaptureSessionParsedConfiguration *)v309 parsedCameraSourceConfigurations];
    v174 = [(NSArray *)v173 countByEnumeratingWithState:&v378 objects:v377 count:16];
    if (v174)
    {
      v263 = v174;
      v264 = *v379;
      v54 = v308;
      while (2)
      {
        for (kk = 0; kk != v263; ++kk)
        {
          if (*v379 != v264)
          {
            objc_enumerationMutation(v173);
          }

          if (cs_timeOfFlightAssistedAutoFocusEnabled([*(*(&v378 + 1) + 8 * kk) cameraConfiguration]))
          {
            v310 = 1;
            goto LABEL_313;
          }
        }

        v263 = [(NSArray *)v173 countByEnumeratingWithState:&v378 objects:v377 count:16];
        if (v263)
        {
          continue;
        }

        break;
      }

      v310 = 0;
    }

    else
    {
      v310 = 0;
      v54 = v308;
    }

LABEL_313:
    if (v172)
    {
      v376 = 0u;
      v375 = 0u;
      v374 = 0u;
      v373 = 0u;
      v313 = [(FigCaptureSessionParsedConfiguration *)v309 parsedCameraSourceConfigurations];
      v317 = [(NSArray *)v313 countByEnumeratingWithState:&v373 objects:v372 count:16];
      v112 = 0;
      if (v317)
      {
        v314 = *v374;
        while (2)
        {
          for (mm = 0; mm != v317; ++mm)
          {
            if (*v374 != v314)
            {
              objc_enumerationMutation(v313);
            }

            v332 = *(*(&v373 + 1) + 8 * mm);
            v280 = [objc_msgSend(v332 "cameraConfiguration")];
            v281 = [*(v55 + 784) cameraSourcePipelineWithSourceID:v280];
            v329 = [(FigCaptureSessionParsedConfiguration *)v309 parsedMicSourceConfiguration]!= 0;
            v324 = [(NSArray *)[(FigCaptureSessionParsedConfiguration *)v309 parsedCameraSourceConfigurations] count]> 1;
            v321 = [(FigCaptureCameraSourcePipeline *)v281 captureDevice];
            v282 = captureSession_createCameraSourcePipelineConfigurationFromParsedConfiguration(v307, v332, v329, v324, v321, -[FigCaptureSessionParsedConfiguration continuityCameraIsWired](v309, "continuityCameraIsWired"), -[FigCaptureSessionParsedConfiguration continuityCameraClientDeviceClass](v309, "continuityCameraClientDeviceClass"), -[FigCaptureSessionParsedConfiguration clientIsVOIP](v309, "clientIsVOIP"), v99, -[FigCaptureSessionParsedConfiguration suppressVideoEffects](v309, "suppressVideoEffects"), [v315 objectForKeyedSubscript:v280], -[FigCaptureSessionParsedConfiguration smartStyleRenderingEnabled](v309, "smartStyleRenderingEnabled"), -[FigCaptureSessionParsedConfiguration smartStyle](v309, "smartStyle"), v339, v304, &v423);
            if (v423)
            {
              captureSession_updateGraphConfiguration_cold_3();
              return v423;
            }

            LOBYTE(v424) = 0;
            v434[0] = 0;
            [FigCaptureCameraSourcePipeline newConfigurationRequiresStreamRestart:tnrConfigurationChanged:newFormatIndexByPortTypeOut:];
            if (v283)
            {
              v113 = 0;
              v54 = v308;
              v55 = v337;
              goto LABEL_119;
            }

            v54 = v308;
            v55 = v337;
            if (!v434[0])
            {
              [FigCaptureCameraSourcePipeline nondisruptiveSwitchingFormatIndicesByPortTypeForConfiguration:];
            }

            [v111 setObject:? forKeyedSubscript:?];
            [v335 setObject:v282 forKeyedSubscript:v280];
            v112 |= v424;
          }

          v317 = [(NSArray *)v313 countByEnumeratingWithState:&v373 objects:v372 count:16];
          if (v317)
          {
            continue;
          }

          break;
        }
      }

      v113 = 1;
    }

    else
    {
      v112 = 0;
      v113 = 0;
    }
  }

  else
  {
    v310 = 0;
    v112 = 0;
    v113 = 0;
    v325 = 1;
  }

LABEL_119:
  v371 = 0u;
  v370 = 0u;
  v369 = 0u;
  v368 = 0u;
  v114 = [*(v55 + 784) cameraSourcePipelines];
  v115 = [v114 countByEnumeratingWithState:&v368 objects:v367 count:16];
  if (v115)
  {
    v116 = v115;
    v117 = *v369;
    do
    {
      for (nn = 0; nn != v116; ++nn)
      {
        if (*v369 != v117)
        {
          objc_enumerationMutation(v114);
        }

        v119 = *(*(&v368 + 1) + 8 * nn);
        [(FigCaptureCameraSourcePipeline *)v119 setKeepISPStreamingWhenStopping:v113];
        [(FigCaptureCameraSourcePipeline *)v119 setDisableTemporalNoiseReductionWhenStopping:?];
        [(FigCaptureCameraSourcePipeline *)v119 setEmitsFramesWhileStopping:v339];
      }

      v116 = [v114 countByEnumeratingWithState:&v368 objects:v367 count:16];
    }

    while (v116);
  }

  if ([(FigCaptureSessionParsedConfiguration *)v305 parsedMicSourceConfiguration])
  {
    v120 = [(FigCaptureSessionParsedConfiguration *)v309 parsedMicSourceConfiguration];
    if (v120)
    {
      if (FigCaptureAudiomxdSupportEnabled(v120, v121))
      {
        v366 = 0u;
        v365 = 0u;
        v364 = 0u;
        v363 = 0u;
        v122 = [(FigCaptureSessionParsedMicSourceConfiguration *)[(FigCaptureSessionParsedConfiguration *)v309 parsedMicSourceConfiguration] micConnectionConfigurations];
        v123 = [(NSArray *)v122 countByEnumeratingWithState:&v363 objects:v362 count:16];
        if (v123)
        {
          v270 = v123;
          v271 = *v364;
LABEL_325:
          v272 = 0;
          while (1)
          {
            if (*v364 != v271)
            {
              objc_enumerationMutation(v122);
            }

            if ([objc_msgSend(*(*(&v363 + 1) + 8 * v272) "sourceConfiguration")])
            {
              break;
            }

            if (v270 == ++v272)
            {
              v270 = [(NSArray *)v122 countByEnumeratingWithState:&v363 objects:v362 count:16];
              if (v270)
              {
                goto LABEL_325;
              }

              goto LABEL_130;
            }
          }
        }

        else
        {
LABEL_130:
          if (v325)
          {
            v434[0] = 0;
            [*(v55 + 280) setMXSessionProperty:*MEMORY[0x1E69AFF10] value:MEMORY[0x1E695E118] error:v434];
            v423 = [v434[0] code];
            [-[FigCaptureMicSourcePipeline sourceNode](objc_msgSend(*(v55 + 784) "micSourcePipeline"))];
          }
        }
      }

      else
      {
        v423 = CMSessionSetProperty();
      }
    }
  }

  if ((v339 & (v311 ^ 1)) != 0)
  {
    v175 = v333;
  }

  else
  {
    v175 = v54;
  }

  v176 = [v175 smartStyleRenderingEnabled];
  if (v302)
  {
    captureSession_stopGraph(v307, 0, v301, v113, v311, v300, v176);
  }

  if (v113)
  {
    v361 = 0u;
    v360 = 0u;
    v358 = 0u;
    v359 = 0u;
    v177 = [v111 countByEnumeratingWithState:&v358 objects:v357 count:16];
    if (v177)
    {
      v178 = v177;
      v179 = *v359;
      do
      {
        for (i1 = 0; i1 != v178; ++i1)
        {
          if (*v359 != v179)
          {
            objc_enumerationMutation(v111);
          }

          v181 = *(*(&v358 + 1) + 8 * i1);
          v182 = [*(v337 + 784) cameraSourcePipelineWithSourceID:v181];
          v183 = [v111 objectForKeyedSubscript:v181];
          v184 = [v335 objectForKeyedSubscript:v181];
          [-[FigCaptureCameraSourcePipelineConfiguration cameraConfiguration](v184) maxFrameRateClientOverride];
          v186 = v185;
          v187 = [-[FigCaptureCameraSourcePipelineConfiguration cameraConfiguration](v184) requiredMinFrameRate];
          v189 = FigCaptureFrameRateAsInt(v187, v188);
          v190 = [-[FigCaptureCameraSourcePipelineConfiguration cameraConfiguration](v184) requiredMaxFrameRate];
          v192 = FigCaptureFrameRateAsInt(v190, v191);
          [-[FigCaptureCameraSourcePipeline captureDevice](v182) setNondisruptiveSwitchingFormatIndicesByPortType:v183 maximumAllowedFrameRate:v186 minimumFrameRate:v189 maximumFrameRate:v192];
        }

        v178 = [v111 countByEnumeratingWithState:&v358 objects:v357 count:16];
      }

      while (v178);
    }
  }

  if ([(NSArray *)[(FigCaptureSessionParsedConfiguration *)v309 parsedCameraSourceConfigurations] count])
  {
    if ([*(v337 + 904) count])
    {
      v194 = v113;
    }

    else
    {
      v194 = 1;
    }

    v193 = v311;
    if (v194 & 1) != 0 || ((v310 ^ 1))
    {
      goto LABEL_218;
    }

    v195 = [MEMORY[0x1E695DF90] dictionary];
    v196 = [MEMORY[0x1E695DF90] dictionary];
    v353 = 0u;
    v354 = 0u;
    v355 = 0u;
    v356 = 0u;
    v323 = [(FigCaptureSessionParsedConfiguration *)v309 parsedCameraSourceConfigurations];
    v334 = [(NSArray *)v323 countByEnumeratingWithState:&v353 objects:v352 count:16];
    if (!v334)
    {
      goto LABEL_210;
    }

    v331 = *v354;
    v327 = v196;
LABEL_282:
    v252 = 0;
    while (1)
    {
      if (*v354 != v331)
      {
        objc_enumerationMutation(v323);
      }

      v253 = *(*(&v353 + 1) + 8 * v252);
      v254 = [MEMORY[0x1E695DF70] array];
      v255 = [MEMORY[0x1E695DF70] array];
      v256 = [v253 cameraConfiguration];
      v257 = [v256 sourceDeviceType];
      if (v257 > 0xD)
      {
        goto LABEL_293;
      }

      if (((1 << v257) & 0x1350) != 0)
      {
        v258 = BWUnderlyingDeviceTypesForCompositeDeviceType(v257);
        [v254 addObjectsFromArray:v258];
        if ([v258 count])
        {
          v259 = 0;
          do
          {
            [v255 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v256, "sourcePosition"))}];
            ++v259;
          }

          while ([v258 count] > v259);
        }

        goto LABEL_295;
      }

      if (v257 == 13)
      {
        v260 = v254;
        v261 = &unk_1F2244D70;
      }

      else
      {
LABEL_293:
        v261 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v256, "sourceDeviceType")}];
        v260 = v254;
      }

      [v260 addObject:v261];
      [v255 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v256, "sourcePosition"))}];
LABEL_295:
      Attribute = FigCaptureSourceGetAttribute([v256 source], @"CaptureDeviceID", &v423);
      if (v423)
      {
        captureSession_updateGraphConfiguration_cold_4();
        return v423;
      }

      if ([v195 objectForKeyedSubscript:Attribute])
      {
        [objc_msgSend(v195 objectForKeyedSubscript:{Attribute), "addObjectsFromArray:", v254}];
        v196 = v327;
        [objc_msgSend(v327 objectForKeyedSubscript:{Attribute), "addObjectsFromArray:", v255}];
      }

      else
      {
        [v195 setObject:v254 forKeyedSubscript:Attribute];
        v196 = v327;
        [v327 setObject:v255 forKeyedSubscript:Attribute];
      }

      if (++v252 == v334)
      {
        v334 = [(NSArray *)v323 countByEnumeratingWithState:&v353 objects:v352 count:16];
        if (!v334)
        {
LABEL_210:
          v350 = 0u;
          v351 = 0u;
          v348 = 0u;
          v349 = 0u;
          v197 = [v195 countByEnumeratingWithState:&v348 objects:v347 count:16];
          if (v197)
          {
            v198 = v197;
            v199 = *v349;
            do
            {
              for (i2 = 0; i2 != v198; ++i2)
              {
                if (*v349 != v199)
                {
                  objc_enumerationMutation(v195);
                }

                v423 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
              }

              v198 = [v195 countByEnumeratingWithState:&v348 objects:v347 count:16];
            }

            while (v198);
          }

          v193 = v311;
          goto LABEL_218;
        }

        goto LABEL_282;
      }
    }
  }

  v193 = v311;
LABEL_218:
  v201 = v301;
  v202 = v193 & v302;
  v203 = v308;
  if (v113 && [objc_msgSend(*(v337 + 784) "cameraSourcePipelines")] == 1 && -[NSArray count](-[FigCaptureSessionParsedConfiguration parsedCameraSourceConfigurations](v309, "parsedCameraSourceConfigurations"), "count") == 1)
  {
    v204 = [-[NSArray firstObject](-[FigCaptureSessionParsedConfiguration parsedCameraSourceConfigurations](v309 "parsedCameraSourceConfigurations")];
    v205 = [-[NSArray firstObject](-[FigCaptureSessionParsedConfiguration parsedCameraSourceConfigurations](v305 "parsedCameraSourceConfigurations")];
    v206 = [v204 requiredFormat];
    v207 = [v205 requiredFormat];
    v208 = [v204 sourceID];
    if ([v206 isDynamicAspectRatioSupported] && objc_msgSend(v207, "isDynamicAspectRatioSupported"))
    {
      v209 = [v204 outputAspectRatio];
      v210 = v209 == [v205 outputAspectRatio];
    }

    else
    {
      v266 = FigCaptureAspectRatioForDimensions([v206 dimensions]);
      v210 = v266 == FigCaptureAspectRatioForDimensions([v207 dimensions]);
    }

    v267 = v210;
    if ([v204 cinematicFramingEnabled])
    {
      v268 = [objc_msgSend(v204 "requiredFormat")];
    }

    else
    {
      v268 = 0;
    }

    if ([v205 cinematicFramingEnabled])
    {
      v273 = [objc_msgSend(v205 "requiredFormat")];
    }

    else
    {
      v273 = 0;
    }

    v274 = -[FigCaptureCameraSourcePipelineConfiguration lowLatencyStabilizationEnabledInSourcePipeline]([v335 objectForKeyedSubscript:v208]);
    v275 = v274 ^ -[FigCaptureCameraSourcePipeline lowLatencyStabilizationEnabled]([objc_msgSend(*(v337 + 784) "cameraSourcePipelines")]) ^ 1;
    if ((v267 & (v275 | (v268 == v273))) == 1)
    {
      v193 = v311;
      if (dword_1ED844050)
      {
        LODWORD(v435) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v276 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v277 = v435;
        if (os_log_type_enabled(v276, type[0]))
        {
          v278 = v277;
        }

        else
        {
          v278 = v277 & 0xFFFFFFFE;
        }

        if (v278)
        {
          v424 = 136315906;
          v425 = "captureSession_updateGraphConfiguration";
          v426 = 1024;
          *v427 = 1;
          *&v427[4] = 1024;
          *&v427[6] = v275 & 1;
          *v428 = 1024;
          *&v428[2] = v268 == v273;
          LODWORD(v299) = 30;
          v298 = &v424;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v203 = v308;
        v193 = v311;
      }

      -[FigCaptureCameraSourcePipeline rtscProcessorsBySourceDeviceType]([objc_msgSend(*(v337 + 784) cameraSourcePipelines]);
    }

    else
    {
      v193 = v311;
    }

    v201 = v301;
  }

  captureSession_teardownGraph();
  v211 = v202 | v201 ^ 1;
  v212 = v307;
  if ((v211 & 1) == 0)
  {
    captureSession_suspendTrueVideoVISProcessing(v307);
  }

  v423 = captureSession_buildGraphWithConfiguration(v307, v203, v315, v201);
  v213 = [-[NSArray firstObject](-[FigCaptureSessionParsedConfiguration parsedCameraSourceConfigurations](v305 "parsedCameraSourceConfigurations")];
  [objc_msgSend(v213 "requiredFormat")];
  v217 = v214 <= 59.0 && ((v215 = [objc_msgSend(v213 "requiredFormat")], v216 = HIDWORD(v215), v215 != 3840) || v216 != 2160) && (v215 != 2160 || v216 != 3840);
  v219 = [-[FigCaptureCameraSourcePipeline captureDevice](objc_msgSend(*(v337 + 784) "firstColorCameraSourcePipeline"))];
  if (((v211 | v217) & 1) == 0 && v219 <= 1)
  {
    captureSession_resumeTrueVideoVISProcessingForSemaphore(v307, 0);
  }

  if (v423)
  {
    LODWORD(v435) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v220 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v221 = v435;
    if (os_log_type_enabled(v220, type[0]))
    {
      v222 = v221;
    }

    else
    {
      v222 = v221 & 0xFFFFFFFE;
    }

    if (v222)
    {
      v223 = *(v337 + 104);
      v424 = 136315906;
      v425 = "captureSession_updateGraphConfiguration";
      v426 = 2114;
      *v427 = v223;
      *&v427[8] = 1024;
      *v428 = v423;
      *&v428[4] = 2114;
      v429 = v203;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v302)
    {
      os_unfair_lock_lock((v337 + 384));
      v250 = *(v337 + 337);
      os_unfair_lock_unlock((v337 + 384));
      v251 = *(v337 + 280);
      if (v251 && v250)
      {
        v434[0] = 0;
        [v251 setActive:0 error:v434];
        os_unfair_lock_lock((v337 + 384));
        *(v337 + 337) = 0;
        os_unfair_lock_unlock((v337 + 384));
      }

      captureSession_resetSessionRunningStateOnFatalError(v307, v423);
      captureSession_transitionToSessionStatus(v307, 0, v423);
    }

    return v423;
  }

  v224 = [-[NSArray firstObject](-[FigCaptureSessionParsedConfiguration parsedCameraSourceConfigurations](v309 "parsedCameraSourceConfigurations")];
  v225 = [-[NSArray firstObject](-[FigCaptureSessionParsedConfiguration parsedCameraSourceConfigurations](v305 "parsedCameraSourceConfigurations")];
  v226 = [v224 sourcePosition];
  v227 = [v224 sourcePosition];
  v228 = v227 == 2;
  if (v227 == 2)
  {
    v229 = v113;
  }

  else
  {
    v229 = 1;
  }

  if (v226 == 1)
  {
    v228 = 1;
  }

  if ((v229 & 1) == 0)
  {
    [v224 videoZoomFactor];
    v228 = v230 > 1.0;
  }

  if (((v193 | v339 ^ 1) & 1) != 0 || !v228)
  {
    goto LABEL_397;
  }

  v345 = 0u;
  v346 = 0u;
  v343 = 0u;
  v344 = 0u;
  v231 = [(FigCaptureSessionParsedConfiguration *)v309 parsedCameraSourceConfigurations];
  v232 = [(NSArray *)v231 countByEnumeratingWithState:&v343 objects:v342 count:16];
  if (!v232)
  {
    v249 = 0.0;
    v269 = 0.0;
    goto LABEL_380;
  }

  v233 = v232;
  v336 = v225;
  v234 = *v344;
  v235 = *off_1E798A0C0;
  v340 = *off_1E798A0D0;
  do
  {
    v236 = 0;
    do
    {
      if (*v344 != v234)
      {
        objc_enumerationMutation(v231);
      }

      v237 = [*(*(&v343 + 1) + 8 * v236) cameraConfiguration];
      v238 = [v237 sourceID];
      [v237 videoZoomFactor];
      v240 = v239;
      v241 = [*(v337 + 784) cameraSourcePipelineWithSourceID:v238];
      v242 = [-[FigCaptureCameraSourcePipeline captureDevice](v241) clientBaseZoomFactorsByPortType];
      [objc_msgSend(v242 objectForKeyedSubscript:{v235), "floatValue"}];
      if (v240 >= v243)
      {
        v244 = [objc_msgSend(-[FigCaptureCameraSourcePipeline captureDevice](v241) "preferredMasterPortType")];
      }

      else
      {
        v244 = 0;
      }

      v245 = [-[FigCaptureCameraSourcePipeline captureDevice](v241) thermalSystemPressureLevel];
      if ([v237 sourceDeviceType] == 9)
      {
        [objc_msgSend(v242 objectForKeyedSubscript:{v235), "floatValue"}];
        if (v113)
        {
          v212 = v307;
          if (v240 < v284)
          {
            v249 = 0.116;
LABEL_373:
            v203 = v308;
            goto LABEL_374;
          }

          [objc_msgSend(v242 objectForKeyedSubscript:{*off_1E798A0D8), "floatValue"}];
          v286 = ((v240 >= v288) | v244 & 1) == 0;
          v249 = 0.033;
          v287 = 0.116;
        }

        else
        {
          v212 = v307;
          if (v240 < v284)
          {
            v249 = 0.3;
            goto LABEL_373;
          }

          [objc_msgSend(v242 objectForKeyedSubscript:{*off_1E798A0D8), "floatValue"}];
          v286 = ((v240 >= v289) | v244 & 1) == 0;
          v249 = 0.183;
          v287 = 0.3;
        }

LABEL_371:
        if (!v286)
        {
          v249 = v287;
        }

        goto LABEL_373;
      }

      if ([v237 sourceDeviceType] == 8)
      {
        v212 = v307;
        if (v113)
        {
          v249 = 0.033;
          goto LABEL_373;
        }

        [objc_msgSend(v242 objectForKeyedSubscript:{v235), "floatValue"}];
        v286 = ((v240 < v285) | v244 & 1) == 0;
        v249 = 0.166;
        v287 = 0.266;
        goto LABEL_371;
      }

      if ([v237 sourcePosition] == 2)
      {
        v249 = *&dword_1AD055F20[[v336 outputAspectRatio] == 3];
        v212 = v307;
        goto LABEL_373;
      }

      v203 = v308;
      if ([v237 sourcePosition] == 1)
      {
        v246 = [v237 sourceDeviceType];
        if (v246 > 9 || ((1 << v246) & 0x310) == 0)
        {
          v247 = [v237 sourceDeviceType];
          if ((v247 > 0x14 || ((1 << v247) & 0x100420) == 0) && v247 - 21 < 0xFFFFFFFC)
          {
            v249 = 0.166;
            if (v113)
            {
              v249 = 0.033;
            }

            goto LABEL_403;
          }
        }
      }

      ++v236;
    }

    while (v233 != v236);
    v248 = [(NSArray *)v231 countByEnumeratingWithState:&v343 objects:v342 count:16];
    v233 = v248;
  }

  while (v248);
  v249 = 0.0;
LABEL_403:
  v212 = v307;
LABEL_374:
  if (v245 == 1)
  {
    v269 = 0.033;
  }

  else if (v245 == 2)
  {
    v269 = 0.083;
  }

  else
  {
    v269 = 0.133;
    if (v245 <= 2)
    {
      v269 = 0.0;
    }
  }

LABEL_380:
  v290 = v249 + v269;
  if ((v249 + v269) <= 0.0)
  {
    if (dword_1ED844050)
    {
      LODWORD(v435) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v294 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v295 = v435;
      if (os_log_type_enabled(v294, type[0]))
      {
        v296 = v295;
      }

      else
      {
        v296 = v295 & 0xFFFFFFFE;
      }

      if (v296)
      {
        v424 = 136315138;
        v425 = "captureSession_updateGraphConfiguration";
        LODWORD(v299) = 12;
        v298 = &v424;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    captureSession_makeCommittedConfigurationLive(v212, [v203 configurationID], @"True Video exit live immediately");
  }

  else
  {
    if (dword_1ED844050)
    {
      LODWORD(v435) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v291 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v292 = v435;
      if (os_log_type_enabled(v291, type[0]))
      {
        v293 = v292;
      }

      else
      {
        v293 = v292 & 0xFFFFFFFE;
      }

      if (v293)
      {
        v424 = 136315394;
        v425 = "captureSession_updateGraphConfiguration";
        v426 = 2048;
        *v427 = (v290 * 1000.0);
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v341[0] = MEMORY[0x1E69E9820];
    v341[1] = 3221225472;
    v341[2] = __captureSession_updateGraphConfiguration_block_invoke_776;
    v341[3] = &unk_1E7998C60;
    v341[4] = v203;
    v341[5] = v212;
    v297 = CMBaseObjectGetDerivedStorage();
    captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(v212, *(v297 + 760), v341, v290);
  }

LABEL_397:
  *v303 = v302;
  return v423;
}

uint64_t __cspc_filterOutUnsupportedConnections_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sourceConfiguration];
  v4 = [a2 sinkConfiguration];
  v5 = [v3 sourceType];
  v6 = [v4 sinkType];
  result = 0;
  if (v5 <= 4 && ((1 << v5) & 0x16) != 0)
  {
    result = 0;
    if (v6 <= 0x10 && ((1 << v6) & 0x1BDFA) != 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (FigCaptureMetadataObjectConfigurationRequiresObjectDetection(a2) & 1) != 0 || (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(a2) & 1) != 0 || (FigCaptureMetadataObjectConfigurationRequiresOfflineVideoStabilizationMotionData(a2) & 1) != 0 || (FigCaptureMetadataObjectConfigurationRequiresMetadataDetectorPipeline(a2) & 1) != 0 || (FigCaptureMetadataObjectConfigurationRequiresSceneClassification(a2) & 1) != 0 || (FigCaptureMetadataObjectConfigurationRequiresVideoPreviewHistogramPipeline(a2) & 1) != 0 || (FigCaptureMetadataObjectConfigurationRequiresEyeReliefStatus(a2) & 1) != 0 || (FigCaptureMetadataObjectConfigurationRequiresFaceIDReadiness(a2) & 1) != 0 || (FigCaptureMetadataObjectConfigurationRequiresMotionToWake(a2) & 1) != 0 || (result = FigCaptureMetadataObjectConfigurationRequiresSpatialAudioMix(a2), result))
      {
        objc_opt_class();
        return ((objc_opt_isKindOfClass() & 1) == 0 || !FigCaptureMetadataObjectConfigurationRequiresFaceTracking(a2) || [objc_msgSend(a2 "sourceConfiguration")] != 13) && ((objc_msgSend(a2, "enabled") & 1) != 0 || (FigCaptureConnectionWithSinkTypeRequiresGraphRebuildForEnabledChange(v6) & 1) == 0);
      }
    }
  }

  return result;
}

void *FigCaptureConnectionConfigurationWithSinkTypeAndMediaType(void *a1, int a2, int a3)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a1 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v14;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v14 != v8)
    {
      objc_enumerationMutation(a1);
    }

    v10 = *(*(&v13 + 1) + 8 * v9);
    if ([objc_msgSend(v10 "sinkConfiguration")] == a2 && objc_msgSend(v10, "mediaType") == a3)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [a1 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t FigVideoCaptureSourceCopySupplementalTimeOfFlightCaptureSource(uint64_t a1, _DWORD *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigVideoCaptureSourceCopySupplementalTimeOfFlightCaptureSource_block_invoke;
  v4[3] = &unk_1E799DD48;
  v4[4] = &v5;
  *a2 = captureSource_safelyAccessStorage(a1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1AC999B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FigVideoCaptureSourceCopySupplementalTimeOfFlightCaptureSource_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return 0;
}

void *cspc_timeOfFlightFormatWithMaximumPoints(void *a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = *v12;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(a1);
      }

      v8 = *(*(&v11 + 1) + 8 * i);
      if ([v8 maxPoints] > v5)
      {
        v5 = [v8 maxPoints];
        v4 = v8;
      }
    }

    v3 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  }

  while (v3);
  return v4;
}

uint64_t FigCaptureSetOptimalVideoPreviewDataConnectionDimensions(void *a1)
{
  v2 = [a1 sourceConfiguration];
  v6 = [objc_msgSend(v2 "requiredFormat")];
  v3 = FigCaptureRotationDegreesWithMirroring([a1 rotationDegrees], objc_msgSend(a1, "mirroringEnabled"));
  *&v4 = FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v6, v3);
  [a1 setOutputWidth:{v6, v4}];
  return [a1 setOutputHeight:HIDWORD(v6)];
}

void *cspc_getMultiCamClientCompositingEnabledStates(void *a1, _BYTE *a2, _BYTE *a3)
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [a1 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (result)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(a1);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if ([v10 mediaType] == 1986618469)
        {
          [v10 sinkConfiguration];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v6)
            {
              v6 = 1;
            }

            else
            {
              v6 = [objc_msgSend(v10 "sinkConfiguration")];
            }
          }

          else
          {
            [v10 sinkConfiguration];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (v7 & 1 | ((isKindOfClass & 1) == 0))
            {
              v7 |= isKindOfClass;
            }

            else
            {
              v7 = [objc_msgSend(v10 "sinkConfiguration")];
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v5 != v9);
      result = [a1 countByEnumeratingWithState:&v15 objects:v14 count:16];
      v5 = result;
    }

    while (result);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (a2)
  {
    *a2 = v6 & 1;
  }

  if (a3)
  {
    *a3 = v7 & 1;
  }

  return result;
}

uint64_t cspc_getVideoStabilizationType(void *a1, char a2, int a3, char a4)
{
  v8 = [a1 sourceConfiguration];
  v9 = [v8 source];
  v10 = [v8 requiredFormat];
  v21 = a1;
  v11 = [objc_msgSend(+[FigVideoCaptureConnectionConfiguration videoStabilizationMethods:includeIris:](FigVideoCaptureConnectionConfiguration videoStabilizationMethods:objc_msgSend(MEMORY[0x1E695DEC8] includeIris:{"arrayWithObjects:count:", &v21, 1), 1), "firstObject"), "intValue"}];
  if (v11 <= 6 && ((1 << v11) & 0x51) != 0)
  {
    v9 = 0;
    goto LABEL_6;
  }

  if (v9)
  {
    v20 = 0;
    if ([a1 physicalMirroringForMovieRecordingEnabled])
    {
      v9 = 2;
      goto LABEL_6;
    }

    if (v11 - 2 < 2 || v11 == 5)
    {
      if ([v10 stabilizationTypeOverrideForCinematic])
      {
        v16 = [v10 stabilizationTypeOverrideForCinematic];
LABEL_35:
        v9 = v16;
        goto LABEL_6;
      }
    }

    else if (v11 == 1 && [v10 stabilizationTypeOverrideForStandard])
    {
      v16 = [v10 stabilizationTypeOverrideForStandard];
      goto LABEL_35;
    }

    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(v9, @"AttributesDictionary", *MEMORY[0x1E695E480], &v20);
      v18 = v20;
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_msgSend(v18 objectForKeyedSubscript:{@"ISPMotionData", "BOOLValue"}];
    if (v11 <= 5 && ((1 << v11) & 0x2C) != 0)
    {
      v9 = 2;
    }

    else if (v19)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

LABEL_6:
  if (a2)
  {
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else if (!v11 || (a4 & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((v11 | 2) != 6)
  {
    v9 = 2;
    if (!a3)
    {
      return v9;
    }

    goto LABEL_13;
  }

LABEL_12:
  if (a3)
  {
LABEL_13:
    if ((v9 - 3) >= 2)
    {
      return v9;
    }

    else
    {
      return 2;
    }
  }

  if (v9 == 4)
  {
    v13 = [a1 outputWidth];
    if (([a1 outputHeight] * v13) <= 12175360)
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }

  return v9;
}

void cs_updateConfigurationsWithCaptureSource(void *a1, void *a2)
{
  v45 = 0;
  v46[0] = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  is_darwinos = os_variant_is_darwinos();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [a1 connectionConfigurations];
  v7 = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v34;
    v11 = *MEMORY[0x1E695E480];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(*(&v33 + 1) + 8 * i) sourceConfiguration];
        if ([v13 source] == a2)
        {
          if ((v9 & 1) == 0)
          {
            v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v14)
            {
              v14(a2, @"ActiveMaxFrameRate", v11, v46);
            }

            v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v15)
            {
              v15(a2, @"ActiveMinFrameRate", v11, &v45);
            }

            v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v16)
            {
              v16(a2, @"VideoZoomFactor", v11, &v44);
            }

            v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v17)
            {
              v17(a2, @"FaceDetectionConfiguration", v11, &v43);
            }

            v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v18)
            {
              v18(a2, @"AutoAdjustImageControlMode", v11, &v42);
            }

            if (([v42 BOOLValue] & 1) == 0)
            {
              v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v19)
              {
                v19(a2, @"ImageControlMode", v11, &v41);
              }
            }

            v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v20)
            {
              v20(a2, @"FaceDrivenAEAFMode", v11, &v40);
            }

            v21 = [v13 sourceDeviceType];
            if (v21 <= 9 && ((1 << v21) & 0x310) != 0)
            {
              v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v22)
              {
                v22(a2, @"EligibleFallbackCaptureSourceDeviceTypes", v11, &v39);
              }
            }

            v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v23)
            {
              v23(a2, @"NonDestructiveCropSize", v11, &v38);
            }

            v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v24)
            {
              v24(a2, @"SimulatedAperture", v11, &v37);
            }
          }

          if (!((v46[0] == 0) | is_darwinos & 1))
          {
            v25 = FigCaptureFrameRateFromData(v46[0]);
            v3 = v3 & 0xFFFFFFFF00000000 | v26;
            [v13 setRequiredMaxFrameRate:{v25, v3}];
          }

          if (!((v45 == 0) | is_darwinos & 1))
          {
            v27 = FigCaptureFrameRateFromData(v45);
            v2 = v2 & 0xFFFFFFFF00000000 | v28;
            [v13 setRequiredMinFrameRate:{v27, v2}];
          }

          if (!((v44 == 0) | is_darwinos & 1))
          {
            [v44 floatValue];
            [v13 setVideoZoomFactor:?];
          }

          if (v43)
          {
            [v13 setFaceDetectionConfiguration:?];
          }

          if (v41)
          {
            [v13 setImageControlMode:{objc_msgSend(v41, "intValue")}];
          }

          if (v40)
          {
            [v13 setFaceDrivenAEAFMode:{objc_msgSend(v40, "intValue")}];
          }

          if (v39)
          {
            [v13 setFallbackPrimaryConstituentDeviceTypes:?];
          }

          if (v37)
          {
            [v37 floatValue];
            [v13 setSimulatedAperture:?];
          }

          if (v38)
          {
            size = *MEMORY[0x1E695F060];
            if (CGSizeMakeWithDictionaryRepresentation(v38, &size))
            {
              [v13 setNonDestructiveCropEnabled:1];
              [v13 setNormalizedNonDestructiveCropSize:{size.width, size.height}];
            }
          }

          v9 = 1;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v8);
    v29 = v45;
  }

  else
  {
    v29 = 0;
  }
}

uint64_t FigCaptureFrameRateFromData(void *a1)
{
  v4 = 0;
  v3 = 0;
  if ([a1 length] == 12)
  {
    [a1 getBytes:&v3 length:12];
  }

  return v3;
}

void *cs_updateConfigurationsWithPreviewSinkProperties(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, double a7, double a8, double a9)
{
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [a1 connectionConfigurations];
  result = [v17 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (result)
  {
    v19 = result;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v25 + 1) + 8 * v21) videoPreviewSinkConfiguration];
        if ([objc_msgSend(v22 "sinkID")])
        {
          [v22 setFilters:a3];
          *&v23 = a6;
          [v22 setPortraitLightingEffectStrength:v23];
          [v22 setSemanticStyle:a4];
          if ([v22 primaryCaptureRectModificationEnabled])
          {
            [v22 setPrimaryCaptureRectAspectRatio:a7];
            [v22 setPrimaryCaptureRectCenter:{a8, a9}];
            [v22 setPrimaryCaptureRectUniqueID:a5];
          }
        }

        v21 = v21 + 1;
      }

      while (v19 != v21);
      result = [v17 countByEnumeratingWithState:&v25 objects:v24 count:16];
      v19 = result;
    }

    while (result);
  }

  return result;
}

uint64_t cs_configurationIsConfiguredForBackgroundBlur(void *a1)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v1 = [a1 connectionConfigurations];
  v2 = [v1 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v1);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        if ([objc_msgSend(v10 "sourceConfiguration")])
        {
          v7 |= [a1 suppressVideoEffects] ^ 1;
        }

        v11 = [objc_msgSend(objc_msgSend(v10 "sourceConfiguration")];
        if ([objc_msgSend(v10 "sourceConfiguration")])
        {
          if ([v10 stillImageSinkConfiguration] || objc_msgSend(v10, "irisSinkConfiguration"))
          {
            v5 = 1;
            v6 = 1;
          }

          else
          {
            v5 = 1;
          }
        }

        v4 |= v11;
        if (v7 & v5 & 1) != 0 && (v6)
        {
          LOBYTE(v5) = 1;
          v6 = 1;
          LOBYTE(v7) = 1;
          goto LABEL_21;
        }

        ++v9;
      }

      while (v3 != v9);
      v12 = [v1 countByEnumeratingWithState:&v27 objects:v26 count:16];
      v3 = v12;
    }

    while (v12);
  }

  else
  {
    v4 = 0;
    LOBYTE(v5) = 0;
    v6 = 0;
    LOBYTE(v7) = 0;
  }

LABEL_21:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [a1 sourceConfigurations];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
LABEL_23:
    v17 = 0;
    while (1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v13);
      }

      if ([*(*(&v22 + 1) + 8 * v17) isCinematicVideoCaptureEnabled])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v15)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

    v18 = 1;
    if ((v4 & 1) == 0)
    {
      return FigCaptureVideoEffectEnabledInGraph(@"backgroundblur", v7 & 1, v5 & 1, 0, v6 & 1, v18, 0);
    }
  }

  else
  {
LABEL_29:
    v18 = 0;
    if ((v4 & 1) == 0)
    {
      return FigCaptureVideoEffectEnabledInGraph(@"backgroundblur", v7 & 1, v5 & 1, 0, v6 & 1, v18, 0);
    }
  }

  return 1;
}

uint64_t cs_configurationIsConfiguredForStudioLighting(void *a1)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v1 = [a1 connectionConfigurations];
  v2 = [v1 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v1);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        if ([objc_msgSend(v10 "sourceConfiguration")])
        {
          v7 |= [a1 suppressVideoEffects] ^ 1;
        }

        v11 = [objc_msgSend(objc_msgSend(v10 "sourceConfiguration")];
        if ([objc_msgSend(v10 "sourceConfiguration")])
        {
          if ([v10 stillImageSinkConfiguration] || objc_msgSend(v10, "irisSinkConfiguration"))
          {
            v5 = 1;
            v6 = 1;
          }

          else
          {
            v5 = 1;
          }
        }

        v4 |= v11;
        if (v7 & v5 & 1) != 0 && (v6)
        {
          LOBYTE(v5) = 1;
          v6 = 1;
          LOBYTE(v7) = 1;
          goto LABEL_21;
        }

        ++v9;
      }

      while (v3 != v9);
      v12 = [v1 countByEnumeratingWithState:&v27 objects:v26 count:16];
      v3 = v12;
    }

    while (v12);
  }

  else
  {
    v4 = 0;
    LOBYTE(v5) = 0;
    v6 = 0;
    LOBYTE(v7) = 0;
  }

LABEL_21:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [a1 sourceConfigurations];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
LABEL_23:
    v17 = 0;
    while (1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v13);
      }

      if ([*(*(&v22 + 1) + 8 * v17) isCinematicVideoCaptureEnabled])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v15)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

    v18 = 1;
    if ((v4 & 1) == 0)
    {
      return FigCaptureVideoEffectEnabledInGraph(@"studiolighting", v7 & 1, v5 & 1, 0, v6 & 1, v18, 0);
    }
  }

  else
  {
LABEL_29:
    v18 = 0;
    if ((v4 & 1) == 0)
    {
      return FigCaptureVideoEffectEnabledInGraph(@"studiolighting", v7 & 1, v5 & 1, 0, v6 & 1, v18, 0);
    }
  }

  return 1;
}

uint64_t cs_configurationIsConfiguredForReactionEffects(void *a1)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v1 = [a1 connectionConfigurations];
  v2 = [v1 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v1);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        if ([objc_msgSend(v10 "sourceConfiguration")])
        {
          v7 |= [a1 suppressVideoEffects] ^ 1;
        }

        v11 = [objc_msgSend(objc_msgSend(v10 "sourceConfiguration")];
        if ([objc_msgSend(v10 "sourceConfiguration")])
        {
          if ([v10 stillImageSinkConfiguration] || objc_msgSend(v10, "irisSinkConfiguration"))
          {
            v5 = 1;
            v6 = 1;
          }

          else
          {
            v5 = 1;
          }
        }

        v4 |= v11;
        if (v7 & v5 & 1) != 0 && (v6)
        {
          LOBYTE(v5) = 1;
          v6 = 1;
          LOBYTE(v7) = 1;
          goto LABEL_21;
        }

        ++v9;
      }

      while (v3 != v9);
      v12 = [v1 countByEnumeratingWithState:&v27 objects:v26 count:16];
      v3 = v12;
    }

    while (v12);
  }

  else
  {
    v4 = 0;
    LOBYTE(v5) = 0;
    v6 = 0;
    LOBYTE(v7) = 0;
  }

LABEL_21:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [a1 sourceConfigurations];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
LABEL_23:
    v17 = 0;
    while (1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v13);
      }

      if ([*(*(&v22 + 1) + 8 * v17) isCinematicVideoCaptureEnabled])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v15)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

    v18 = 1;
    if ((v4 & 1) == 0)
    {
      return FigCaptureVideoEffectEnabledInGraph(@"reactioneffects", v7 & 1, v5 & 1, 0, v6 & 1, v18, 0);
    }
  }

  else
  {
LABEL_29:
    v18 = 0;
    if ((v4 & 1) == 0)
    {
      return FigCaptureVideoEffectEnabledInGraph(@"reactioneffects", v7 & 1, v5 & 1, 0, v6 & 1, v18, 0);
    }
  }

  return 1;
}

uint64_t cs_configurationIsConfiguredForBackgroundReplacement(void *a1)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v1 = [a1 connectionConfigurations];
  v2 = [v1 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v1);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        if ([objc_msgSend(v10 "sourceConfiguration")])
        {
          v7 |= [a1 suppressVideoEffects] ^ 1;
        }

        v11 = [objc_msgSend(objc_msgSend(v10 "sourceConfiguration")];
        if ([objc_msgSend(v10 "sourceConfiguration")])
        {
          if ([v10 stillImageSinkConfiguration] || objc_msgSend(v10, "irisSinkConfiguration"))
          {
            v5 = 1;
            v6 = 1;
          }

          else
          {
            v5 = 1;
          }
        }

        v4 |= v11;
        if (v7 & v5 & 1) != 0 && (v6)
        {
          LOBYTE(v5) = 1;
          v6 = 1;
          LOBYTE(v7) = 1;
          goto LABEL_21;
        }

        ++v9;
      }

      while (v3 != v9);
      v12 = [v1 countByEnumeratingWithState:&v27 objects:v26 count:16];
      v3 = v12;
    }

    while (v12);
  }

  else
  {
    v4 = 0;
    LOBYTE(v5) = 0;
    v6 = 0;
    LOBYTE(v7) = 0;
  }

LABEL_21:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [a1 sourceConfigurations];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
LABEL_23:
    v17 = 0;
    while (1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v13);
      }

      if ([*(*(&v22 + 1) + 8 * v17) isCinematicVideoCaptureEnabled])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v15)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

    v18 = 1;
    if ((v4 & 1) == 0)
    {
      return FigCaptureVideoEffectEnabledInGraph(@"backgroundreplacement", v7 & 1, v5 & 1, 0, v6 & 1, v18, 0);
    }
  }

  else
  {
LABEL_29:
    v18 = 0;
    if ((v4 & 1) == 0)
    {
      return FigCaptureVideoEffectEnabledInGraph(@"backgroundreplacement", v7 & 1, v5 & 1, 0, v6 & 1, v18, 0);
    }
  }

  return 1;
}

void *cs_configurationVideoZoomFactorBySourceTypeConfiguredForDepthData(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a1 sourceConfigurations];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 depthDataDeliveryEnabled])
        {
          v9 = MEMORY[0x1E696AD98];
          [v8 videoZoomFactor];
          v10 = [v9 numberWithFloat:?];
          [v2 setObject:v10 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v8, "sourceDeviceType"))}];
          return v2;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v2;
}

void *captureSession_updateGraphForVideoPreviewSinkConfigurationChanges(uint64_t a1, void *a2, char a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_updateGraphForVideoPreviewSinkConfigurationChanges_cold_1();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [a2 parsedPreviewSinkConfigurations];
  result = [v6 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [objc_msgSend(*(*(&v19 + 1) + 8 * v10) "videoPreviewSinkConnectionConfiguration")];
        v12 = [*(DerivedStorage + 784) previewSinkPipelineWithSinkID:{objc_msgSend(v11, "sinkID")}];
        if ((a3 & 1) == 0)
        {
          [v11 primaryCaptureRectAspectRatio];
          v14 = v13;
          [v11 primaryCaptureRectCenter];
          [v12 setPrimaryCaptureRectAspectRatio:0 center:0 trueVideoTransitionPercentComplete:objc_msgSend(v11 smartFramingTransitionPercentComplete:"primaryCaptureRectUniqueID") smartFramingTransitionTargetFieldOfView:v14 fencePortSendRight:v15 uniqueID:{v16, 0.0, 0.0}];
        }

        v17 = [v11 semanticStyle];
        if (v17)
        {
          [v12 setSemanticStyle:v17 animated:0];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [v6 countByEnumeratingWithState:&v19 objects:v18 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

void captureSession_makeCommittedConfigurationLive(const void *a1, void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 384));
  v6 = *(DerivedStorage + 512);
  v24 = *(DerivedStorage + 520);
  v25 = v6;
  if (v6 == v24)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    if ([v6 configurationID] != a2)
    {
      v32[0] = 0;
      v31 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = *(DerivedStorage + 520);
    v14 = *(DerivedStorage + 512);
    *(DerivedStorage + 520) = v14;
    v13 = [v14 configurationID];
    v12 = *(DerivedStorage + 456) == 2;
    v11 = cs_configurationContainsVideoSource(*(DerivedStorage + 520));
    v10 = cs_configurationContainsStillImageSinkConfiguration(*(DerivedStorage + 520));
    v9 = cs_configurationContainsMovieFileSinkConfiguration(*(DerivedStorage + 520));
  }

  os_unfair_lock_unlock((DerivedStorage + 384));

  if (v13)
  {
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", v13), @"ConfigurationID", 0, @"ErrorStatus", 0}];
    v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v15];
    [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v12), 0x1F2186470}];
    [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v11), 0x1F2186410}];
    [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v10), 0x1F2186430}];
    [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v9), 0x1F2186450}];
    captureSession_postNotificationWithPayload(a1, @"ConfigurationDidBecomeLive", v16);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [*(DerivedStorage + 520) connectionConfigurations];
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * i);
          if ([v22 mediaType] == 1986618469)
          {
            [-[FigCaptureCameraSourcePipeline captureDevice](objc_msgSend(*(DerivedStorage + 784) cameraSourcePipelineWithSourceID:{objc_msgSend(objc_msgSend(v22, "sourceConfiguration"), "sourceID"))), "liveReconfigureForOutputAspectRatioCompleted:forConfigurationID:", objc_msgSend(objc_msgSend(v22, "sourceConfiguration"), "outputAspectRatioRequestID"), v13}];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v26 count:16];
      }

      while (v19);
    }
  }

  v23 = *(DerivedStorage + 552);
  if (v23)
  {
    *(DerivedStorage + 552) = 0;
    captureSession_postNotificationWithPayload(a1, @"IrisPreparationComplete", v23);
  }

  if (v25 != v24)
  {
    captureSession_transitionToSessionStatus(a1, 2u, 0);
  }
}

uint64_t cs_configurationContainsVideoSource(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 sourceConfigurations];
  result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
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
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if ([v6 sourceType] == 1 && objc_msgSend(v6, "sourceDeviceType") - 17 > 3)
        {
          return 1;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
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

uint64_t cs_configurationContainsStillImageSinkConfiguration(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 sinkConfigurations];
  result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 sinkType] == 3 || objc_msgSend(v6, "sinkType") == 10)
        {
          return 1;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      result = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t cs_configurationContainsMovieFileSinkConfiguration(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = [a1 sinkConfigurations];
  result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
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
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v7 + 1) + 8 * v5) sinkType] == 4)
        {
          return 1;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
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

void captureSession_transitionToSessionStatus(const void *a1, unsigned int a2, unsigned int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = [*(DerivedStorage + 120) clientType];
  os_unfair_lock_lock((DerivedStorage + 384));
  v123 = *(DerivedStorage + 456);
  *(DerivedStorage + 456) = a2;
  v7 = *(DerivedStorage + 398);
  os_unfair_lock_unlock((DerivedStorage + 384));
  if (dword_1ED844050)
  {
    v146[0] = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v121 = v6;
  if (a2)
  {
    if (a2 == 2)
    {
      if ((objc_msgSend_isEqualToString_(*(DerivedStorage + 88)) & 1) != 0 || objc_msgSend_isEqualToString_(*(DerivedStorage + 88)))
      {
        os_unfair_lock_lock(&sFigCaptureSessionCameraAppStartupTelemetry);
        qword_1ED844980 = mach_absolute_time();
        os_unfair_lock_unlock(&sFigCaptureSessionCameraAppStartupTelemetry);
      }

      os_unfair_lock_lock((DerivedStorage + 384));
      v9 = 0.0;
      if (*(DerivedStorage + 464) > 0.0)
      {
        v9 = CFAbsoluteTimeGetCurrent() - *(DerivedStorage + 464);
        *(DerivedStorage + 464) = 0;
      }

      os_unfair_lock_unlock((DerivedStorage + 384));
      if (v9 > 0.0 && dword_1ED844050)
      {
        v146[0] = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      os_unfair_lock_lock((DerivedStorage + 384));
      v12 = cs_configurationContainsVideoSource(*(DerivedStorage + 520));
      os_unfair_lock_unlock((DerivedStorage + 384));
      captureSession_setIsUsingCamera(a1, v12);
    }

    v11 = 0;
  }

  else
  {
    captureSession_setIsUsingCamera(a1, 0);
    os_unfair_lock_lock((DerivedStorage + 384));

    *(DerivedStorage + 440) = 0;
    *(DerivedStorage + 464) = 0;
    *(DerivedStorage + 405) = 0;
    os_unfair_lock_unlock((DerivedStorage + 384));
    v11 = 1;
  }

  if (v123 != a2)
  {
    if (objc_msgSend_isEqualToString_(*(DerivedStorage + 88)))
    {
      isEqualToString = 1;
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(*(DerivedStorage + 88));
    }

    v14 = objc_msgSend_isEqualToString_(*(DerivedStorage + 88));
    if (v123)
    {
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v17 = a1;
      v18 = +[FigCaptureMemoryReporter sharedInstance];
      v19 = +[BWMemoryPool sharedMemoryPool];
      v20 = v18;
      a1 = v17;
      [(FigCaptureMemoryReporter *)v20 incrementActiveClientCount:isEqualToString clientIsCameraMessagesApp:v14 withMemoryPool:v19];
      if (!v11)
      {
LABEL_23:
        if (a2 == 1)
        {
          v21 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{captureSession_notificationPayloadWithErrorStatus(a1, a3)}];
          os_unfair_lock_lock((DerivedStorage + 384));
          [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", cs_configurationContainsVideoSource(*(DerivedStorage + 504))), 0x1F2186410}];
          [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", cs_configurationContainsStillImageSinkConfiguration(*(DerivedStorage + 504))), 0x1F2186430}];
          [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", cs_configurationContainsMovieFileSinkConfiguration(*(DerivedStorage + 504))), 0x1F2186450}];
          os_unfair_lock_unlock((DerivedStorage + 384));
          os_unfair_lock_lock((DerivedStorage + 84));
          v22 = *(DerivedStorage + 36);
          *buf = *(DerivedStorage + 20);
          v157 = v22;
          [v21 setObject:objc_msgSend(MEMORY[0x1E698E620] forKeyedSubscript:{"tokenFromAuditToken:", buf), 0x1F21863F0}];
          os_unfair_lock_unlock((DerivedStorage + 84));
          captureSession_postNotificationWithPayload(a1, @"WillStartRunning", v21);
          if ((objc_msgSend_isEqualToString_(*(DerivedStorage + 88)) & 1) == 0 && !objc_msgSend_isEqualToString_(*(DerivedStorage + 88)))
          {
            return;
          }

          os_unfair_lock_lock(&sFigCaptureSessionCameraAppStartupTelemetry);
          qword_1ED844978 = mach_absolute_time();
          if (!dword_1ED84495C)
          {
            dword_1ED84495C = 1;
            v151 = 0;
            *buf = 4;
            v31 = sysctlbyname("kern.memorystatus_level", &v151, buf, 0, 0) ? 0 : v151;
            LODWORD(qword_1ED8449A0) = v31;
            HIDWORD(qword_1ED8449A0) = [*(DerivedStorage + 840) thermalLevel];
            if (*MEMORY[0x1E695FF58])
            {
              v32 = fig_log_handle();
              if (os_signpost_enabled(v32))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_1AC90E000, v32, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CameraLaunchWithoutPrewarm", &unk_1AD0FC9CB, buf, 2u);
              }
            }
          }

          if (xmmword_1ED844988)
          {
            *(&xmmword_1ED844988 + 1) = mach_absolute_time();
            if (*MEMORY[0x1E695FF58])
            {
              v23 = fig_log_handle();
              if (os_signpost_enabled(v23))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_1AC90E000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CaptureDeviceStolenDuringLaunch", " enableTelemetry=YES ", buf, 2u);
              }
            }
          }

          os_unfair_lock_unlock(&sFigCaptureSessionCameraAppStartupTelemetry);
          os_unfair_lock_lock(&sLockScreenCameraLaunchTelemetry);
          mach_absolute_time();
          v24 = byte_1EB58EC18 | ((FigHostTimeToNanoseconds() / 1000000000.0) < 1.0);
          mach_absolute_time();
          v25 = FigHostTimeToNanoseconds();
          v26 = byte_1EB58EC04;
          if (byte_1EB58EC04 == 1 && dword_1EB58EC14 && (v24 & 1) == 0 && (v25 / 1000000000.0) > 2.0)
          {
            captureSession_reportCancelledLockScreenCameraLaunch();
            v26 = byte_1EB58EC04;
          }

          if ((v26 & 1) == 0 && ((v24 ^ 1) & 1) == 0)
          {
            byte_1EB58EC04 = 1;
            qword_1EB58EC08 = mach_absolute_time();
          }

          v27 = &sLockScreenCameraLaunchTelemetry;
        }

        else
        {
          if (a2 != 2)
          {
            if (!a2)
            {
              v15 = CMBaseObjectGetDerivedStorage();
              if (!_FigIsCurrentDispatchQueue())
              {
                captureSession_transitionToSessionStatus_cold_1();
              }

              if ((objc_msgSend_isEqualToString_(*(v15 + 88)) & 1) != 0 || objc_msgSend_isEqualToString_(*(v15 + 88)))
              {
                os_unfair_lock_lock(&sFigCaptureSessionCameraAppStartupTelemetry);
                if (a3 == -16407 && dword_1ED84495C)
                {
                  if (!xmmword_1ED844988)
                  {
                    *&xmmword_1ED844988 = mach_absolute_time();
                    byte_1ED8449AD = *(v15 + 768);
                    if (*MEMORY[0x1E695FF58])
                    {
                      v16 = fig_log_handle();
                      if (os_signpost_enabled(v16))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_1AC90E000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CaptureDeviceStolenDuringLaunch", &unk_1AD0FC9CB, buf, 2u);
                      }
                    }
                  }
                }

                else
                {
                  captureSession_abandonCameraAppSessionStartupTelemetry();
                }

                os_unfair_lock_unlock(&sFigCaptureSessionCameraAppStartupTelemetry);
                os_unfair_lock_lock(&sLockScreenCameraLaunchTelemetry);
                if (byte_1EB58EC04 == 1)
                {
                  if (a3 && a3 != -16403)
                  {
                    if (!dword_1EB58EC14)
                    {
                      if (a3 == -16407)
                      {
                        v109 = 1;
                      }

                      else
                      {
                        v109 = 2;
                      }

                      dword_1EB58EC14 = v109;
                    }
                  }

                  else
                  {
                    captureSession_reportCancelledLockScreenCameraLaunch();
                  }
                }

                os_unfair_lock_unlock(&sLockScreenCameraLaunchTelemetry);
              }

              if (dword_1ED844050)
              {
                v146[0] = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v117 = a1;
              v34 = [MEMORY[0x1E695DF90] dictionary];
              v129 = [MEMORY[0x1E695DF90] dictionary];
              v128 = [MEMORY[0x1E695DF90] dictionary];
              v127 = [MEMORY[0x1E695DF90] dictionary];
              v126 = [MEMORY[0x1E695DF90] dictionary];
              v125 = [MEMORY[0x1E695DF90] dictionary];
              v124 = [MEMORY[0x1E695DF90] dictionary];
              v35 = [MEMORY[0x1E695DF70] array];
              v152 = 0u;
              v153 = 0u;
              v154 = 0u;
              v155 = 0u;
              v36 = *(v15 + 776);
              v37 = [v36 countByEnumeratingWithState:&v152 objects:&v151 count:16];
              if (v37)
              {
                v38 = v37;
                v39 = *v153;
                do
                {
                  v40 = 0;
                  do
                  {
                    if (*v153 != v39)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v41 = *(*(&v152 + 1) + 8 * v40);
                    v42 = [*(v15 + 776) objectForKeyedSubscript:v41];
                    if (v42)
                    {
                      v43 = *(v42 + 8);
                    }

                    else
                    {
                      v43 = 0;
                    }

                    [v34 setObject:v43 forKeyedSubscript:v41];
                    ++v40;
                  }

                  while (v38 != v40);
                  v44 = [v36 countByEnumeratingWithState:&v152 objects:&v151 count:16];
                  v38 = v44;
                }

                while (v44);
              }

              v116 = DerivedStorage;
              v149 = 0u;
              v150 = 0u;
              v147 = 0u;
              v148 = 0u;
              v118 = v15;
              v45 = [*(v15 + 784) previewSinkPipelines];
              v46 = [v45 countByEnumeratingWithState:&v147 objects:v146 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v148;
                do
                {
                  for (i = 0; i != v47; ++i)
                  {
                    if (*v148 != v48)
                    {
                      objc_enumerationMutation(v45);
                    }

                    v50 = *(*(&v147 + 1) + 8 * i);
                    v51 = [v50 sinkID];
                    if (v51)
                    {
                      v52 = v51;
                      [v35 addObject:v51];
                      [v129 setObject:objc_msgSend(v50 forKeyedSubscript:{"filters"), v52}];
                      [v128 setObject:objc_msgSend(v50 forKeyedSubscript:{"semanticStyle"), v52}];
                      v53 = MEMORY[0x1E696AD98];
                      [v50 primaryCaptureRectAspectRatio];
                      [v126 setObject:objc_msgSend(v53 forKeyedSubscript:{"numberWithDouble:"), v52}];
                      [v50 primaryCaptureRectCenter];
                      [v125 setObject:CGPointCreateDictionaryRepresentation(v162) forKeyedSubscript:v52];
                      [v124 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", objc_msgSend(v50, "primaryCaptureRectUniqueID")), v52}];
                      v54 = MEMORY[0x1E696AD98];
                      [v50 portraitLightingEffectStrength];
                      [v127 setObject:objc_msgSend(v54 forKeyedSubscript:{"numberWithFloat:"), v52}];
                    }
                  }

                  v47 = [v45 countByEnumeratingWithState:&v147 objects:v146 count:16];
                }

                while (v47);
              }

              v55 = v118;
              if (*(v118 + 704) == 1)
              {
                CurrentSmartStyle = cs_getCurrentSmartStyle(v117);
              }

              else
              {
                CurrentSmartStyle = 0;
              }

              os_unfair_lock_lock((v118 + 384));
              os_unfair_lock_unlock((v118 + 384));
              captureSession_teardownGraph();
              os_unfair_lock_lock((v118 + 384));
              v57 = cs_configurationContainsVideoSource(*(v118 + 512));
              v58 = [*(v118 + 512) tccIdentity];
              os_unfair_lock_unlock((v118 + 384));
              v59 = +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
              v60 = *(v118 + 8);
              v61 = *(v118 + 96);
              v62 = *(v118 + 36);
              *buf = *(v118 + 20);
              v157 = v62;
              LOBYTE(v111) = 0;
              [v59 setSessionStateForSessionID:v60 running:0 containsVideoSource:v57 clientAuditToken:buf tccIdentity:v58 mediaEnvironment:v61 sessionIsPrewarming:v111 completionHandler:0];
              os_unfair_lock_lock((v118 + 384));
              v63 = [v34 count];
              v64 = *(v118 + 512);
              if (v63 && v64 == *(v118 + 504))
              {
                *(v118 + 512) = 0;
                os_unfair_lock_unlock((v118 + 384));
                v65 = v116;
                if (v64)
                {
                  v144 = 0u;
                  v145 = 0u;
                  v142 = 0u;
                  v143 = 0u;
                  v73 = [v34 countByEnumeratingWithState:&v142 objects:type count:16];
                  if (v73)
                  {
                    v74 = v73;
                    v75 = *v143;
                    do
                    {
                      for (j = 0; j != v74; ++j)
                      {
                        if (*v143 != v75)
                        {
                          objc_enumerationMutation(v34);
                        }

                        cs_updateConfigurationsWithCaptureSource(v64, [v34 objectForKeyedSubscript:*(*(&v142 + 1) + 8 * j)]);
                      }

                      v74 = [v34 countByEnumeratingWithState:&v142 objects:type count:16];
                    }

                    while (v74);
                  }

                  v115 = CurrentSmartStyle;
                  v139 = 0u;
                  v140 = 0u;
                  v137 = 0u;
                  v138 = 0u;
                  v77 = [v35 countByEnumeratingWithState:&v137 objects:v136 count:16];
                  if (v77)
                  {
                    v78 = v77;
                    v119 = *v138;
                    v120 = *MEMORY[0x1E695EFF8];
                    do
                    {
                      for (k = 0; k != v78; ++k)
                      {
                        if (*v138 != v119)
                        {
                          objc_enumerationMutation(v35);
                        }

                        v80 = *(*(&v137 + 1) + 8 * k);
                        v81 = [v129 objectForKeyedSubscript:v80];
                        v82 = [v127 objectForKeyedSubscript:v80];
                        v83 = [v128 objectForKeyedSubscript:v80];
                        v84 = [v126 objectForKeyedSubscript:v80];
                        v85 = [v125 objectForKeyedSubscript:v80];
                        *buf = v120;
                        CGPointMakeWithDictionaryRepresentation(v85, buf);
                        v86 = [v124 objectForKeyedSubscript:v80];
                        [v82 floatValue];
                        v88 = v87;
                        [v84 doubleValue];
                        v90 = v89;
                        v91 = [v86 longLongValue];
                        cs_updateConfigurationsWithPreviewSinkProperties(v64, v80, v81, v83, v91, v88, v90, *buf, *&buf[8]);
                      }

                      v78 = [v35 countByEnumeratingWithState:&v137 objects:v136 count:16];
                    }

                    while (v78);
                  }

                  v55 = v118;
                  v65 = v116;
                  if (*(v118 + 704) == 1)
                  {
                    [v64 setSmartStyle:v115];
                    *(v118 + 704) = 0;
                  }
                }
              }

              else
              {
                *(v118 + 512) = 0;
                os_unfair_lock_unlock((v118 + 384));
                v65 = v116;
              }

              if (FigCaptureClientApplicationIDIsVisualIntelligenceCamera(*(v55 + 88), v66))
              {
                os_unfair_lock_lock(&sFigCaptureSessionPrewarming);
                byte_1ED844950 = 0;
                os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
              }

              os_unfair_lock_lock(&sFigCaptureSessionPrewarming);
              v67 = byte_1ED844950;
              if ((byte_1ED844950 & 1) == 0)
              {
                captureSession_cancelMemoryPoolPrewarmingLocked(0, 0);
                qword_1ED844938 = 0;
              }

              os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
              if (dword_1ED844050)
              {
                v161 = 0;
                v160 = OS_LOG_TYPE_DEFAULT;
                v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v69 = v161;
                if (os_log_type_enabled(v68, v160))
                {
                  v70 = v69;
                }

                else
                {
                  v70 = v69 & 0xFFFFFFFE;
                }

                if (v70)
                {
                  v71 = *(v118 + 104);
                  v72 = "not ";
                  v131 = "captureSession_didStopRunning";
                  v130 = 136315650;
                  if (!v67)
                  {
                    v72 = "";
                  }

                  v132 = 2114;
                  v133 = v71;
                  v134 = 2080;
                  v135 = v72;
                  LODWORD(v114) = 32;
                  v112 = &v130;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if ((v67 & 1) == 0)
              {
                [+[BWMemoryPool sharedMemoryPool](BWMemoryPool disableForClientBundleId:"disableForClientBundleId:", *(v118 + 88)];
              }

              [MEMORY[0x1E695F660] clearCache];
              [MEMORY[0x1E695F648] clearCache];

              *(v118 + 912) = 0;
              v92 = v117;
              captureSession_resumeTrueVideoVISProcessingForSemaphore(v117, 0);

              *(v118 + 872) = 0;
              v93 = CMBaseObjectGetDerivedStorage();
              if (!_FigIsCurrentDispatchQueue())
              {
                captureSession_transitionToSessionStatus_cold_2();
              }

              if (FigDebugIsInternalBuild() && objc_msgSend_isEqualToString_(*(v93 + 88)))
              {
                if (dword_1ED844050)
                {
                  v161 = 0;
                  v160 = OS_LOG_TYPE_DEFAULT;
                  v94 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v95 = v161;
                  if (os_log_type_enabled(v94, v160))
                  {
                    v96 = v95;
                  }

                  else
                  {
                    v96 = v95 & 0xFFFFFFFE;
                  }

                  if (v96)
                  {
                    v97 = *(v93 + 104);
                    v130 = 136315394;
                    v131 = "captureSession_startObservingInvalidAudioRecordingState";
                    v132 = 2114;
                    v133 = v97;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v92 = v117;
                }

                v98 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v93 + 136));
                v99 = dispatch_time(0, 10000000000);
                dispatch_source_set_timer(v98, v99, 0x2540BE400uLL, 0xDE0B6B3A7640000uLL);
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&v157 = __captureSession_startObservingInvalidAudioRecordingState_block_invoke;
                *(&v157 + 1) = &__block_descriptor_48_e5_v8__0l;
                v158 = v93;
                v159 = v92;
                dispatch_source_set_event_handler(v98, buf);
                *(v93 + 208) = v98;
                dispatch_activate(v98);
              }

              if (v123 >= 1)
              {
                v100 = captureSession_notificationPayloadWithErrorStatus(v92, a3);
                v101 = cs_notificationPayloadForAttachingSession(v92, v100);
                v102 = CMBaseObjectGetDerivedStorage();
                v103 = *(v102 + 36);
                *buf = *(v102 + 20);
                v157 = v103;
                if (FigCaptureClientHasEntitlement(buf, @"com.apple.private.avfoundation.capture.camera-stolen-interruptor.allow"))
                {
                  os_unfair_lock_lock((v102 + 384));
                  if (*(v102 + 408))
                  {
                    v104 = [v101 mutableCopy];
                    [v104 setObject:*(v102 + 408) forKeyedSubscript:@"CameraStolenInterruptor"];
                    v101 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v104];
                  }

                  os_unfair_lock_unlock((v102 + 384));
                }

                captureSession_postNotificationWithPayload(v92, @"DidStopRunning", v101);
                if (v121 == 5)
                {
                  os_unfair_lock_lock(v65 + 96);
                  v105 = CMBaseObjectGetDerivedStorage();
                  os_unfair_lock_assert_owner((v105 + 384));
                  v106 = *(v105 + 648);
                  if (v106)
                  {
                    dispatch_source_cancel(v106);

                    *(v105 + 648) = 0;
                  }

                  os_unfair_lock_unlock(v65 + 96);
                }

                v107 = *(CMBaseObjectGetDerivedStorage() + 88);
                SystemStyle = FigCaptureSmartStyleSettingsGetSystemStyle(v107);
                if (SystemStyle)
                {
                  if (([SystemStyle isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0)
                  {
                    [objc_msgSend(MEMORY[0x1E695DF00] "date")];
                    FigCaptureSmartStyleSettingsSetSystemStyleBackgroundedTimestamp([MEMORY[0x1E696AD98] numberWithDouble:?], v107);
                  }
                }
              }
            }

            return;
          }

          if (v123 != 1)
          {
            return;
          }

          v28 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{captureSession_notificationPayloadWithErrorStatus(a1, a3)}];
          os_unfair_lock_lock((DerivedStorage + 384));
          [v28 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", cs_configurationContainsVideoSource(*(DerivedStorage + 520))), 0x1F2186410}];
          [v28 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v7), 0x1F2186490}];
          [v28 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", cs_configurationContainsStillImageSinkConfiguration(*(DerivedStorage + 520))), 0x1F2186430}];
          [v28 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", cs_configurationContainsMovieFileSinkConfiguration(*(DerivedStorage + 520))), 0x1F2186450}];
          v29 = *(DerivedStorage + 440);
          if (v29)
          {
            [v28 setObject:v29 forKeyedSubscript:@"PrewarmReason"];
          }

          os_unfair_lock_unlock((DerivedStorage + 384));
          os_unfair_lock_lock((DerivedStorage + 84));
          v30 = *(DerivedStorage + 36);
          *buf = *(DerivedStorage + 20);
          v157 = v30;
          [v28 setObject:objc_msgSend(MEMORY[0x1E698E620] forKeyedSubscript:{"tokenFromAuditToken:", buf), 0x1F21863F0}];
          os_unfair_lock_unlock((DerivedStorage + 84));
          captureSession_postNotificationWithPayload(a1, @"DidStartRunning", v28);
          os_unfair_lock_lock((DerivedStorage + 384));
          [*(DerivedStorage + 488) setWindowed:{*(DerivedStorage + 402) | objc_msgSend(*(DerivedStorage + 488), "windowed")}];
          [*(DerivedStorage + 488) setPipEnabled:{*(DerivedStorage + 403) | objc_msgSend(*(DerivedStorage + 488), "pipEnabled")}];
          v27 = (DerivedStorage + 384);
        }

        os_unfair_lock_unlock(v27);
        return;
      }
    }

    [+[FigCaptureMemoryReporter sharedInstance](FigCaptureMemoryReporter decrementActiveClientCount:"decrementActiveClientCount:clientIsCameraMessagesApp:" clientIsCameraMessagesApp:isEqualToString, v14];
    goto LABEL_23;
  }
}

uint64_t captureSession_notificationPayloadWithErrorStatus(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 > -16408)
  {
    switch(a2)
    {
      case 0xFFFFBFE9:
        v4 = 4;
        goto LABEL_19;
      case 0xFFFFBFEC:
        v4 = 2;
        goto LABEL_19;
      case 0xFFFFBFED:
        v4 = 1;
        goto LABEL_19;
    }
  }

  else
  {
    switch(a2)
    {
      case 0xFFFEE228:
        v6 = [*(DerivedStorage + 424) firstObject];
        if (v6)
        {
          v4 = [v6 reason];
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_19;
      case 0xFFFFBDC8:
        v4 = 6;
        goto LABEL_19;
      case 0xFFFFBFE8:
        v4 = 5;
LABEL_19:
        v12[1] = [MEMORY[0x1E696AD98] numberWithInt:{v4, @"ErrorStatus", @"ErrorReason", &unk_1F2244CC8}];
        v7 = MEMORY[0x1E695DF20];
        v8 = v12;
        v9 = &v11;
        v10 = 2;
        return [v7 dictionaryWithObjects:v8 forKeys:v9 count:v10];
    }
  }

  v13 = @"ErrorStatus";
  v14 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v7 = MEMORY[0x1E695DF20];
  v8 = &v14;
  v9 = &v13;
  v10 = 1;
  return [v7 dictionaryWithObjects:v8 forKeys:v9 count:v10];
}

void __captureSession_postNotificationWithPayload_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((*(*(a1 + 32) + 168) & 1) == 0)
  {
    v47[0] = @"WillStartRunning";
    v47[1] = @"DidStartRunning";
    v47[2] = @"DidStopRunning";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
    os_unfair_lock_lock((*(a1 + 32) + 84));
    v4 = *(a1 + 32);
    v5 = *(v4 + 36);
    v44[0] = *(v4 + 20);
    v44[1] = v5;
    IsValid = FigCaptureAuditTokenIsValid(v44);
    os_unfair_lock_unlock((*(a1 + 32) + 84));
    if (![v3 containsObject:*(a1 + 40)] || IsValid)
    {
      if (!dword_1ED844050)
      {
        goto LABEL_29;
      }

      v46 = 0;
      v45 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v46;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v45))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (!v15)
      {
        goto LABEL_28;
      }

      v16 = *(a1 + 40);
      v17 = *(*(a1 + 32) + 104);
      v36 = 136315650;
      v37 = "captureSession_postNotificationWithPayload_block_invoke";
      v38 = 2114;
      v39 = v17;
      v40 = 2114;
      v41 = v16;
      goto LABEL_27;
    }

    if (dword_1ED844050)
    {
      v46 = 0;
      v45 = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v8 = v46;
      if (os_log_type_enabled(v7, v45))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = *(a1 + 40);
        v11 = *(*(a1 + 32) + 104);
        v12 = *(a1 + 48);
        v36 = 136315906;
        v37 = "captureSession_postNotificationWithPayload_block_invoke";
        v38 = 2114;
        v39 = v11;
        v40 = 2114;
        v41 = v10;
        v42 = 2114;
        v43 = v12;
        v33 = 42;
        v32 = &v36;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (objc_msgSend_isEqualToString_(*(a1 + 40), v32, v33))
  {
    v18 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v18 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
    v19 = [v18 stringFromDate:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
    v34[0] = @"ImageQueueUpdatedPayload";
    v20 = [*(a1 + 48) copy];
    v34[1] = @"ImageQueueUpdatedTime";
    v35[0] = v20;
    v35[1] = v19;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v22 = *(*(a1 + 32) + 952);
    if (v22)
    {
    }

    *(*(a1 + 32) + 952) = v21;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (dword_1ED844050)
  {
    v46 = 0;
    v45 = OS_LOG_TYPE_DEFAULT;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v24 = v46;
    if (os_log_type_enabled(v23, v45))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (!v25)
    {
      goto LABEL_28;
    }

    v26 = *(a1 + 40);
    v27 = *(*(a1 + 32) + 104);
    v28 = *(a1 + 48);
    v36 = 136315906;
    v37 = "captureSession_postNotificationWithPayload_block_invoke";
    v38 = 2114;
    v39 = v27;
    v40 = 2114;
    v41 = v26;
    v42 = 2114;
    v43 = v28;
LABEL_27:
    _os_log_send_and_compose_impl();
LABEL_28:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_29:
  v29 = *(a1 + 40);
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = *(a1 + 56);
  if (v31)
  {
    CFRelease(v31);
  }

  objc_autoreleasePoolPop(v2);
}

void __captureSession_updatePrewarmedLaunchClientForStartRunning_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 452) == 1)
  {
    v3 = DerivedStorage;
    if ((*(DerivedStorage + 448) - 1) <= 1)
    {
      os_unfair_lock_lock((DerivedStorage + 384));
      v4 = *(v3 + 520);
      if (!v4)
      {
        v4 = *(v3 + 512);
      }

      v5 = *(v3 + 456);
      v6 = [v4 configurationID];
      v7 = *(v3 + 512);
      if (v5 == 2)
      {
        v8 = cs_configurationContainsVideoSource(v4);
        v9 = *(v3 + 398);
        v10 = cs_configurationContainsStillImageSinkConfiguration(v4);
        v11 = cs_configurationContainsMovieFileSinkConfiguration(v4);
        v12 = [*(v3 + 440) copy];
      }

      else
      {
        v12 = 0;
        v11 = 0;
        v10 = 0;
        v9 = 0;
        v8 = 0;
      }

      os_unfair_lock_unlock((v3 + 384));
      v13 = *(v3 + 152);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __captureSession_updatePrewarmedLaunchClientForStartRunning_block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v3;
      dispatch_async(v13, block);
      if (*(v3 + 454) != 1 || (v5 - 1) > 1)
      {
        if (dword_1ED844050)
        {
          v38 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        v29 = v6;
        v30 = v8;
        v31 = v9;
        v34 = v5;
        v32 = v10;
        v33 = v11;
        *&v36[0] = 0;
        *valuePtr = 0;
        cs_getMasterClockAndType(*(v3 + 784), v36, valuePtr);
        v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
        v17 = [v7 configurationID];
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", v17), @"ConfigurationID", *&v36[0], @"MasterClock", v16, @"MasterClockType", 0}];
        if (v16)
        {
          CFRelease(v16);
        }

        captureSession_postNotificationWithPayload(*(a1 + 32), @"ConfigurationCommitted", v18);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v19 = [*(v3 + 784) previewSinkPipelines];
        v20 = [v19 countByEnumeratingWithState:&v40 objects:v39 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v41;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v41 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v40 + 1) + 8 * i);
              if ([v24 sinkID])
              {
                v25 = [v24 imageQueueUpdatedPayloadToBeSentAfterCommitConfiguration];
                [v24 setImageQueueUpdatedNotificationSent:1];
                captureSession_postNotificationWithPayload(*(a1 + 32), @"ImageQueueUpdated", v25);
                captureSession_updateSavedPreviewImageQueueUpdatedNotificationSent(*(a1 + 32), v24);
                if ([v24 previewRunning])
                {
                  v26 = [v24 sinkID];
                  *valuePtr = @"SectionID";
                  *&v36[0] = v26;
                  captureSession_postNotificationWithPayload(*(a1 + 32), @"DidStartPreviewing", [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:valuePtr count:1]);
                }
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v40 objects:v39 count:16];
          }

          while (v21);
        }

        if (v34 == 2)
        {
          captureSession_postNotificationWithPayload(*(a1 + 32), @"ConfigurationDidBecomeLive", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", v29), @"ConfigurationID", 0, @"ErrorStatus", 0}]);
          v27 = [MEMORY[0x1E695DF90] dictionary];
          v28 = *(v3 + 36);
          v36[0] = *(v3 + 20);
          v36[1] = v28;
          [v27 setObject:objc_msgSend(MEMORY[0x1E698E620] forKeyedSubscript:{"tokenFromAuditToken:", v36), 0x1F21863F0}];
          [v27 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v30), 0x1F2186410}];
          [v27 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v31 & 1), 0x1F2186490}];
          [v27 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32), 0x1F2186430}];
          [v27 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v33), 0x1F2186450}];
          if (v12)
          {
            [v27 setObject:v12 forKeyedSubscript:@"PrewarmReason"];
          }

          captureSession_postNotificationWithPayload(*(a1 + 32), @"DidStartRunning", v27);
        }
      }

      captureSession_transitionToSessionLaunchPrewarmStatus(*(a1 + 32), 0);
    }
  }
}

void *captureSession_updateSavedPreviewImageQueueUpdatedNotificationSent(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = [a2 imageQueueSinkNode];
  if (result)
  {
    if (!*(DerivedStorage + 568))
    {
      *(DerivedStorage + 568) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    }

    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a2, "imageQueueUpdatedNotificationSent")}];
    v6 = *(DerivedStorage + 568);
    v7 = [a2 sinkID];

    return [v6 setObject:v5 forKeyedSubscript:v7];
  }

  return result;
}

void cso_handleCaptureSessionNotification(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  if (dword_1ED844070)
  {
    LODWORD(v73) = 0;
    LOBYTE(type) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    if (FigCFEqual())
    {
      cso_postDeferredmediadImmediateTerminationNotificationIfNecessary(a4);
      v9 = [a5 objectForKeyedSubscript:0x1F21863F0];
      v92 = 0u;
      v93 = 0u;
      if (v9)
      {
        objc_msgSend_realToken(v9);
      }

      v94 = v92;
      v95 = v93;
      PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v94);
      if (PIDFromAuditToken != -1)
      {
        v51 = [objc_msgSend(a5 objectForKeyedSubscript:{0x1F2186410), "BOOLValue"}];
        v52 = [objc_msgSend(a5 objectForKeyedSubscript:{0x1F2186430), "BOOLValue"}];
        [objc_msgSend(a5 objectForKeyedSubscript:{0x1F2186450), "BOOLValue"}];
        v53 = OUTLINED_FUNCTION_10_30();
        [(FigCaptureSessionObservatory *)v53 _setStatus:v54 clientAuditToken:v51 containsVideoSource:v52 containsStillImageSink:v55 containsMovieFileSink:a4 forCaptureSession:?];
        return;
      }

      v18 = OUTLINED_FUNCTION_9_36(PIDFromAuditToken, v11, v12, v13, v14, v15, v16, v17, v67, v70, v73, v76, v79, v82, SBYTE2(v82), SHIBYTE(v82), type);
      v26 = OUTLINED_FUNCTION_14_23(v18, v19, v20, v21, v22, v23, v24, v25, v68, v71, v74, v77, v80, v83, v85, v87, typea);
      if (!OUTLINED_FUNCTION_5_2(v26))
      {
        goto LABEL_19;
      }

LABEL_9:
      OUTLINED_FUNCTION_8_35();
      OUTLINED_FUNCTION_21(v27, v28, &v94, v29, &dword_1AC90E000);
LABEL_19:
      OUTLINED_FUNCTION_1_77();
      return;
    }

    if (FigCFEqual())
    {
      if ([objc_msgSend(a5 objectForKeyedSubscript:{0x1F2186470), "BOOLValue"}])
      {
        -[FigCaptureSessionObservatory _captureSessionDidReconfigureWhileRunning:containsVideoSource:containsStillImageSink:containsMovieFileSink:](a2, a4, [objc_msgSend(a5 objectForKeyedSubscript:{0x1F2186410), "BOOLValue"}], objc_msgSend(objc_msgSend(a5, "objectForKeyedSubscript:", 0x1F2186430), "BOOLValue"), objc_msgSend(objc_msgSend(a5, "objectForKeyedSubscript:", 0x1F2186450), "BOOLValue"));
        if (a2)
        {
          [(FigCaptureSessionAttachedSessionManager *)*(a2 + 40) sessionDidReconfigure:a4];
        }
      }
    }

    else if (FigCFEqual())
    {
      cso_postDeferredmediadImmediateTerminationNotificationIfNecessary(a4);
      v30 = [a5 objectForKeyedSubscript:0x1F21863F0];
      v92 = 0u;
      v93 = 0u;
      if (v30)
      {
        objc_msgSend_realToken(v30);
      }

      v94 = v92;
      v95 = v93;
      v31 = FigCaptureGetPIDFromAuditToken(&v94);
      if (v31 == -1)
      {
        v39 = OUTLINED_FUNCTION_9_36(v31, v32, v33, v34, v35, v36, v37, v38, v67, v70, v73, v76, v79, v82, SBYTE2(v82), SHIBYTE(v82), type);
        v47 = OUTLINED_FUNCTION_14_23(v39, v40, v41, v42, v43, v44, v45, v46, v69, v72, v75, v78, v81, v84, v86, v88, typeb);
        if (!OUTLINED_FUNCTION_5_2(v47))
        {
          goto LABEL_19;
        }

        goto LABEL_9;
      }

      v58 = [objc_msgSend(a5 objectForKeyedSubscript:{0x1F2186410), "BOOLValue"}];
      v59 = [objc_msgSend(a5 objectForKeyedSubscript:{0x1F2186430), "BOOLValue"}];
      [objc_msgSend(a5 objectForKeyedSubscript:{0x1F2186450), "BOOLValue"}];
      v60 = OUTLINED_FUNCTION_10_30();
      [(FigCaptureSessionObservatory *)v60 _setStatus:v61 clientAuditToken:v58 containsVideoSource:v59 containsStillImageSink:v62 containsMovieFileSink:a4 forCaptureSession:?];
      v63 = [objc_msgSend(a5 objectForKeyedSubscript:{0x1F2186490), "BOOLValue"}];
      if (a2)
      {
        [(FigCaptureSessionAttachedSessionManager *)*(a2 + 40) sessionDidStartRunning:a4 sessionContainsVideoSource:v58 sessionContainsCameraSource:v63];
      }
    }

    else
    {
      if (!FigCFEqual())
      {
        if (FigCFEqual() || FigCFEqual())
        {
          if ([a5 objectForKeyedSubscript:{@"ErrorStatus", v67, v70}])
          {
            return;
          }

          v48 = [a5 objectForKeyedSubscript:@"SectionID"];
          v49 = a2;
          v50 = 1;
        }

        else
        {
          if (!FigCFEqual() && !FigCFEqual())
          {
            if (FigCFEqual())
            {
              v56 = a2;
              v57 = 1;
            }

            else
            {
              if (!FigCFEqual())
              {
                return;
              }

              v56 = a2;
              v57 = 0;
            }

            [(FigCaptureSessionObservatory *)v56 _setFigAssetWriterRecording:v57 forCaptureSession:a4];
            return;
          }

          v48 = [a5 objectForKeyedSubscript:{@"SectionID", v67, v70}];
          v49 = a2;
          v50 = 0;
        }

        [(FigCaptureSessionObservatory *)v49 _setMovieFileOutputRecording:v50 sectionID:v48 forCaptureSession:a4];
        return;
      }

      [(FigCaptureSessionObservatory *)a2 _resetFigAssetWriterRecordingsCountForCaptureSession:a4];
      [(FigCaptureSessionObservatory *)a2 _setStatus:&unk_1AD055EB0 clientAuditToken:0 containsVideoSource:0 containsStillImageSink:0 containsMovieFileSink:a4 forCaptureSession:?];
      v64 = [objc_msgSend(a5 objectForKeyedSubscript:{@"ErrorReason", "intValue"}];
      v65 = [objc_msgSend(a5 objectForKeyedSubscript:{0x1F21864B0), "BOOLValue"}];
      v66 = [objc_msgSend(a5 objectForKeyedSubscript:{0x1F21864D0), "BOOLValue"}];
      if (a2)
      {
        [(FigCaptureSessionAttachedSessionManager *)*(a2 + 40) sessionDidStopRunning:a4 captureDeviceStolen:v64 == 4 sessionIsEligibleToAttach:v65 clientStartedSession:v66];
      }
    }
  }
}

void cso_postDeferredmediadImmediateTerminationNotificationIfNecessary(uint64_t a1)
{
  if (cso_postDeferredmediadImmediateTerminationNotificationIfNecessary_onceToken != -1)
  {
    cso_postDeferredmediadImmediateTerminationNotificationIfNecessary_cold_1();
  }

  cf = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(a1, @"CaptureSession_IsCameraOrDerivative", *MEMORY[0x1E695E480], &cf);
  }

  if (FigCFEqual() && cso_postDeferredmediadImmediateTerminationNotificationIfNecessary_sSupportsDeferredProcessing == 1)
  {
    notify_post(kFigCaptureDeferredNotification_deferredmediadImmediateTermination);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t captureSession_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v16 = qword_1ED844048;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFCE0FLL, "<<<< FigCaptureSession >>>>", 0x5E49, v9, v14, v15, a9);
  }

  else if (a2)
  {
    v18 = DerivedStorage;
    if (CFEqual(a2, @"CaptureSession_RemoteVideoPreviewEnabled"))
    {
      v19 = MEMORY[0x1E695E4D0];
      if (!v18[216])
      {
        v19 = MEMORY[0x1E695E4C0];
      }

      v20 = CFRetain(*v19);
      result = 0;
      *a4 = v20;
    }

    else if (CFEqual(a2, @"CaptureSession_IsCameraOrDerivative"))
    {
      captureSession_CopyProperty_cold_1(a1, a4);
      return 0;
    }

    else
    {
      return 4294954512;
    }
  }

  else
  {
    captureSession_CopyProperty_cold_2(&v21);
    return v21;
  }

  return result;
}

void fig_dispatch_async_autoreleasepool(NSObject *a1, void *a2)
{
  v3 = [a2 copy];

  dispatch_async_f(a1, v3, _executeBlockWithAutoreleasePool);
}

void _executeBlockWithAutoreleasePool(void (**a1)(void))
{
  v2 = objc_autoreleasePoolPush();
  a1[2](a1);

  objc_autoreleasePoolPop(v2);
}

const char *FigCaptureSessionStatusToString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Invalid Session Status";
  }

  else
  {
    return off_1E79990C8[a1];
  }
}

uint64_t csr_masterClockFromClockType(uint64_t a1, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  if (*(a1 + 24) != valuePtr || (result = *(a1 + 16)) == 0)
  {
    if (valuePtr == 1)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      v7 = HostTimeClock;
      if (HostTimeClock)
      {
        v5 = HostTimeClock;
        CFRetain(HostTimeClock);
        v6 = *(a1 + 16);
        if (v6)
        {
          CFRelease(v6);
          v5 = v7;
        }

        *(a1 + 16) = v5;
        *(a1 + 24) = valuePtr;
      }

      else
      {
        csr_masterClockFromClockType_cold_1();
      }
    }

    else if (valuePtr == 2)
    {
      [MEMORY[0x1E698D710] sharedInstance];
      if (CMAudioClockCreateForAudioSession())
      {
        csr_masterClockFromClockType_cold_2();
      }

      else
      {
        csr_masterClockFromClockType_cold_3();
      }
    }

    return *(a1 + 16);
  }

  return result;
}

uint64_t captureSessionRemote_SetSectionProperty(uint64_t a1, uint64_t a2, const void *a3, opaqueCMSampleBuffer *a4)
{
  BasicMessage = captureSessionRemote_createBasicMessage(a1, 1936945266);
  if (!BasicMessage)
  {
    captureSessionRemote_SetSectionProperty_cold_10();
    SerializedAtomDataAndSurfaceForSampleBuffer = 4294954510;
    goto LABEL_30;
  }

  v7 = FigXPCMessageSetCFString();
  if (v7)
  {
    SerializedAtomDataAndSurfaceForSampleBuffer = v7;
    captureSessionRemote_SetSectionProperty_cold_1();
    goto LABEL_30;
  }

  v8 = FigXPCMessageSetCFString();
  if (v8)
  {
    SerializedAtomDataAndSurfaceForSampleBuffer = v8;
    captureSessionRemote_SetSectionProperty_cold_2();
    goto LABEL_30;
  }

  if (CFEqual(a3, @"CaptureSessionMetadataSource_MetadataSampleBuffer") && (v9 = CFGetTypeID(a4), v9 == CMSampleBufferGetTypeID()))
  {
    FormatDescription = CMSampleBufferGetFormatDescription(a4);
    cf = CFRetain(FormatDescription);
    SerializedAtomDataAndSurfaceForSampleBuffer = FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBuffer();
    CFRelease(cf);
    if (SerializedAtomDataAndSurfaceForSampleBuffer)
    {
      captureSessionRemote_SetSectionProperty_cold_3(SerializedAtomDataAndSurfaceForSampleBuffer);
      goto LABEL_30;
    }

    v12 = FigXPCMessageSetAndConsumeVMData();
    if (v12)
    {
      SerializedAtomDataAndSurfaceForSampleBuffer = v12;
      captureSessionRemote_SetSectionProperty_cold_4(v12, v13);
      goto LABEL_30;
    }
  }

  else if (CFEqual(a3, @"PreviewFilters") && (v14 = CFGetTypeID(a4), v14 == CFArrayGetTypeID()))
  {
    v15 = objc_autoreleasePoolPush();
    csr_serializeObjectUsingNSSecureCoding(a4);
    v16 = FigXPCMessageSetCFData();
    if (v16)
    {
      SerializedAtomDataAndSurfaceForSampleBuffer = v16;
      captureSessionRemote_SetSectionProperty_cold_5(v16, v15);
      goto LABEL_30;
    }

    objc_autoreleasePoolPop(v15);
  }

  else if (CFEqual(a3, @"SemanticStyles") && (v17 = CFGetTypeID(a4), v17 == CFDictionaryGetTypeID()))
  {
    v18 = [(opaqueCMSampleBuffer *)a4 mutableCopy];
    empty = xpc_dictionary_create_empty();
    v20 = @"SemanticStyleSet";
    if ([(opaqueCMSampleBuffer *)a4 objectForKeyedSubscript:@"SemanticStyleSet"])
    {
      v21 = [v18 objectForKeyedSubscript:@"SemanticStyleSet"];
      v22 = &kFigCaptureSessionSetSectionProperty_SetSemanticStylesKey_SemanticStyleSet;
    }

    else
    {
      v20 = @"SemanticStyle";
      v21 = [(opaqueCMSampleBuffer *)a4 objectForKeyedSubscript:@"SemanticStyle"];
      v22 = &kFigCaptureSessionSetSectionProperty_SetSemanticStylesKey_SemanticStyle;
    }

    xpc_dictionary_set_value(empty, *v22, [v21 copyXPCEncoding]);
    [v18 setObject:0 forKeyedSubscript:v20];
    FigXPCRelease();
    v26 = [v18 objectForKeyedSubscript:@"CAContextFencePortSendRight"];
    if (v26)
    {
      [v26 port];
      xpc_dictionary_set_mach_send();
      [v18 setObject:0 forKeyedSubscript:@"CAContextFencePortSendRight"];
    }

    xpc_dictionary_set_value(BasicMessage, *MEMORY[0x1E69615B0], empty);
    SerializedAtomDataAndSurfaceForSampleBuffer = FigXPCMessageSetCFObject();

    FigXPCRelease();
    if (SerializedAtomDataAndSurfaceForSampleBuffer)
    {
      captureSessionRemote_SetSectionProperty_cold_6(SerializedAtomDataAndSurfaceForSampleBuffer);
      goto LABEL_30;
    }
  }

  else if (CFEqual(a3, @"PrimaryCaptureRect"))
  {
    v23 = [(opaqueCMSampleBuffer *)a4 objectForKeyedSubscript:@"CAContextFencePortSendRight"];
    if (v23)
    {
      [v23 port];
      xpc_dictionary_set_mach_send();
      [-[opaqueCMSampleBuffer mutableCopy](a4 "mutableCopy")];
    }

    v24 = FigXPCMessageSetCFObject();
    if (v24)
    {
      SerializedAtomDataAndSurfaceForSampleBuffer = v24;
      captureSessionRemote_SetSectionProperty_cold_7();
      goto LABEL_30;
    }
  }

  else
  {
    v25 = FigXPCMessageSetCFObject();
    if (v25)
    {
      SerializedAtomDataAndSurfaceForSampleBuffer = v25;
      captureSessionRemote_SetSectionProperty_cold_8();
      goto LABEL_30;
    }
  }

  v27 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  SerializedAtomDataAndSurfaceForSampleBuffer = v27;
  if (v27)
  {
    captureSessionRemote_SetSectionProperty_cold_9(v27);
  }

LABEL_30:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return SerializedAtomDataAndSurfaceForSampleBuffer;
}

uint64_t captureSession_SetSectionProperty(const void *a1, const void *a2, const void *a3, void *a4)
{
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (CFEqual(a3, @"PreviewFilters") || CFEqual(a3, @"PortraitLightingEffectStrength") || CFEqual(a3, @"SemanticStyles") || CFEqual(a3, @"PrimaryCaptureRect"))
          {
            if (captureSession_SetSectionProperty_onceToken != -1)
            {
              captureSession_SetSectionProperty_cold_1();
            }

            [objc_msgSend(captureSession_SetSectionProperty_sPropertyKTraceLabelsByPreviewSinkProperty objectForKeyedSubscript:{a3), "intValue"}];
            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
            }

            os_unfair_lock_lock((DerivedStorage + 384));
            v13 = *(DerivedStorage + 600);
            if (CFEqual(a3, @"PrimaryCaptureRect"))
            {
              v14 = [*(DerivedStorage + 584) objectForKeyedSubscript:a2];
              v13 |= v14 != 0;
            }

            else
            {
              v14 = 0;
            }

            os_unfair_lock_unlock((DerivedStorage + 384));
            v15 = (CFEqual(a3, @"PortraitLightingEffectStrength") == 0) & v13;
            if ((v15 & 1) == 0 && (CFEqual(a3, @"PrimaryCaptureRect") || CFEqual(a3, @"SemanticStyles")))
            {
              v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a4];
              [v16 setObject:0 forKeyedSubscript:@"CAContextFencePortSendRight"];
              a4 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v16];
            }

            CFRetain(a2);
            CFRetain(a3);
            if (a4)
            {
              CFRetain(a4);
            }

            if (v15)
            {
              if (v14)
              {
                [objc_msgSend(a4 objectForKeyedSubscript:{@"AspectRatio", "doubleValue"}];
                v18 = v17;
                v19 = [a4 objectForKeyedSubscript:@"CAContextFencePortSendRight"];
                [objc_msgSend(a4 objectForKeyedSubscript:{@"CenterX", "doubleValue"}];
                v21 = v20;
                [objc_msgSend(a4 objectForKeyedSubscript:{@"CenterY", "doubleValue"}];
                v23 = v22;
                v24 = [objc_msgSend(a4 objectForKeyedSubscript:{@"UniqueID", "longLongValue"}];
                [objc_msgSend(a4 objectForKeyedSubscript:{@"TrueVideoTransitionPercentComplete", "doubleValue"}];
                v26 = v25;
                [objc_msgSend(a4 objectForKeyedSubscript:{@"SmartFramingTransitionPercentComplete", "doubleValue"}];
                v28 = v27;
                v29 = [a4 objectForKeyedSubscript:@"SmartFramingTransitionTargetFieldOfView"];
                [v14 setPrimaryCaptureRectAspectRatio:FigCaptureSmartFramingFieldOfViewTypeFromString(v29 center:v30) trueVideoTransitionPercentComplete:v19 smartFramingTransitionPercentComplete:v24 smartFramingTransitionTargetFieldOfView:v18 fencePortSendRight:v21 uniqueID:{v23, v26, v28}];
                CFRelease(a2);
                CFRelease(a3);
                if (a4)
                {
                  CFRelease(a4);
                }
              }

              else
              {
                v52[0] = MEMORY[0x1E69E9820];
                v52[1] = 3221225472;
                v52[2] = __captureSession_SetSectionProperty_block_invoke_1349;
                v52[3] = &__block_descriptor_64_e5_v8__0l;
                v52[4] = a1;
                v52[5] = a2;
                v52[6] = a3;
                v52[7] = a4;
                captureSession_performBlockOnWorkerQueueSynchronously(a1, v52);
              }
            }

            else
            {
              v51[0] = MEMORY[0x1E69E9820];
              v51[1] = 3221225472;
              v51[2] = __captureSession_SetSectionProperty_block_invoke_2;
              v51[3] = &__block_descriptor_64_e5_v8__0l;
              v51[4] = a1;
              v51[5] = a2;
              v51[6] = a3;
              v51[7] = a4;
              captureSession_performBlockOnWorkerQueue(a1, v51);
            }

            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
            }
          }

          else
          {
            if (captureSession_SetSectionProperty_onceToken_1350 != -1)
            {
              captureSession_SetSectionProperty_cold_2();
            }

            if ([captureSession_SetSectionProperty_propertyKeysSupportingAsyncSetter containsObject:a3])
            {
              CFRetain(a2);
              CFRetain(a3);
              CFRetain(a4);
              v50[0] = MEMORY[0x1E69E9820];
              v50[1] = 3221225472;
              v50[2] = __captureSession_SetSectionProperty_block_invoke_4;
              v50[3] = &unk_1E7998FE0;
              v50[4] = &v53;
              v50[5] = a1;
              v50[6] = a2;
              v50[7] = a3;
              v50[8] = a4;
              captureSession_performBlockOnWorkerQueue(a1, v50);
            }

            else
            {
              v41 = MEMORY[0x1E69E9820];
              v42 = 3221225472;
              v43 = __captureSession_SetSectionProperty_block_invoke_5;
              v44 = &unk_1E7998FE0;
              v45 = &v53;
              v46 = a1;
              v47 = a2;
              v48 = a3;
              v49 = a4;
              captureSession_performBlockOnWorkerQueueSynchronously(a1, &v41);
            }
          }

          goto LABEL_32;
        }

        v32 = v4;
        v33 = 23732;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v40, v41, v42, v43, v44, v45);
      }

      else
      {
        v32 = v4;
        v33 = 23731;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v40, v41, v42, v43, v44, v45);
      }

      v36 = 4294954516;
    }

    else
    {
      v32 = v4;
      v33 = 23730;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v40, v41, v42, v43, v44, v45);
      v36 = 4294950896;
    }

    v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, v36, "<<<< FigCaptureSession >>>>", v33, v32, v34, v35, v39);
    *(v54 + 6) = v37;
LABEL_32:
    v12 = *(v54 + 6);
    goto LABEL_33;
  }

  v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE0FLL, "<<<< FigCaptureSession >>>>", 0x5CAF, v4, v9, v10, v38);
LABEL_33:
  _Block_object_dispose(&v53, 8);
  return v12;
}

void captureSession_setPreviewSinkProperty(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_setPreviewSinkProperty_cold_1();
  }

  v8 = [*(DerivedStorage + 784) previewSinkPipelineWithSinkID:a2];
  if (v8)
  {
    v9 = v8;
    if (CFEqual(a3, @"PreviewFilters"))
    {

      [v9 setFilters:a4];
    }

    else if (CFEqual(a3, @"PortraitLightingEffectStrength"))
    {
      [a4 floatValue];

      [v9 setPortraitLightingEffectStrength:?];
    }

    else if (CFEqual(a3, @"SemanticStyles"))
    {
      v25 = [a4 objectForKeyedSubscript:@"SemanticStyleSet"];
      v26 = [a4 objectForKeyedSubscript:@"SemanticStyle"];
      v27 = [a4 objectForKeyedSubscript:@"CAContextFencePortSendRight"];
      v28 = [objc_msgSend(a4 objectForKeyedSubscript:{@"Animated", "BOOLValue"}];
      if (v25)
      {

        [v9 setSemanticStyleSet:v25 fencePortSendRight:v27];
      }

      else
      {

        [v9 setSemanticStyle:v26 animated:v28];
      }
    }

    else if (CFEqual(a3, @"PrimaryCaptureRect"))
    {
      [objc_msgSend(a4 objectForKeyedSubscript:{@"AspectRatio", "doubleValue"}];
      v30 = v29;
      v31 = [a4 objectForKeyedSubscript:@"CAContextFencePortSendRight"];
      [objc_msgSend(a4 objectForKeyedSubscript:{@"CenterX", "doubleValue"}];
      v33 = v32;
      [objc_msgSend(a4 objectForKeyedSubscript:{@"CenterY", "doubleValue"}];
      v35 = v34;
      v36 = [objc_msgSend(a4 objectForKeyedSubscript:{@"UniqueID", "longLongValue"}];
      [objc_msgSend(a4 objectForKeyedSubscript:{@"TrueVideoTransitionPercentComplete", "doubleValue"}];
      v38 = v37;
      [objc_msgSend(a4 objectForKeyedSubscript:{@"SmartFramingTransitionPercentComplete", "doubleValue"}];
      v40 = v39;
      v41 = [a4 objectForKeyedSubscript:@"SmartFramingTransitionTargetFieldOfView"];
      [v9 setPrimaryCaptureRectAspectRatio:FigCaptureSmartFramingFieldOfViewTypeFromString(v41 center:v42) trueVideoTransitionPercentComplete:v31 smartFramingTransitionPercentComplete:v36 smartFramingTransitionTargetFieldOfView:v30 fencePortSendRight:v33 uniqueID:{v35, v38, v40}];
      if (dword_1ED844050)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else if (CFEqual(a3, @"PrimaryAndOverCaptureCompositingEnabled"))
    {
      v44 = [a4 BOOLValue] ^ 1;

      [v9 setDisplaysWidestCameraOnly:v44];
    }
  }

  else
  {
    if (cs_shouldCachePreviewSinkSessionPropertyWithKey_onceToken != -1)
    {
      captureSession_setPreviewSinkProperty_cold_2();
    }

    if ([cs_shouldCachePreviewSinkSessionPropertyWithKey_cachedPreviewSinkPropertyKeys containsObject:a3])
    {
      v10 = CMBaseObjectGetDerivedStorage();
      if (!_FigIsCurrentDispatchQueue())
      {
        captureSession_setPreviewSinkProperty_cold_3();
      }

      os_unfair_lock_lock((v10 + 384));
      v11 = *(v10 + 504);
      os_unfair_lock_unlock((v10 + 384));
      memset(v48, 0, 64);
      v45 = v11;
      v12 = [v11 connectionConfigurations];
      v13 = [v12 countByEnumeratingWithState:v48 objects:v47 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = **&v48[1];
        do
        {
          v16 = 0;
          do
          {
            if (**&v48[1] != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v48[0] + 1) + 8 * v16) videoPreviewSinkConfiguration];
            if ([objc_msgSend(v17 "sinkID")])
            {
              if (CFEqual(a3, @"PreviewFilters"))
              {
                [v17 setFilters:a4];
              }

              else if (CFEqual(a3, @"PortraitLightingEffectStrength"))
              {
                [a4 floatValue];
                [v17 setPortraitLightingEffectStrength:?];
              }

              else if (CFEqual(a3, @"SemanticStyles"))
              {
                [v17 setSemanticStyle:{objc_msgSend(a4, "objectForKeyedSubscript:", @"SemanticStyle"}];
              }

              else if (CFEqual(a3, @"PrimaryCaptureRect"))
              {
                if ([v17 primaryCaptureRectModificationEnabled])
                {
                  v46 = [objc_msgSend(a4 objectForKeyedSubscript:{@"UniqueID", "longLongValue"}];
                  if (v46 >= [v17 primaryCaptureRectUniqueID])
                  {
                    [objc_msgSend(a4 objectForKeyedSubscript:{@"AspectRatio", "doubleValue"}];
                    v19 = v18;
                    [objc_msgSend(a4 objectForKeyedSubscript:{@"CenterX", "doubleValue"}];
                    v21 = v20;
                    [objc_msgSend(a4 objectForKeyedSubscript:{@"CenterY", "doubleValue"}];
                    v23 = v22;
                    [v17 setPrimaryCaptureRectAspectRatio:v19];
                    [v17 setPrimaryCaptureRectCenter:{v21, v23}];
                    [v17 setPrimaryCaptureRectUniqueID:v46];
                  }
                }
              }
            }

            ++v16;
          }

          while (v14 != v16);
          v24 = [v12 countByEnumeratingWithState:v48 objects:v47 count:16];
          v14 = v24;
        }

        while (v24);
      }
    }
  }
}

uint64_t FigCaptureSmartFramingFieldOfViewTypeFromString(void *a1, uint64_t a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, FigCaptureSmartFramingFieldOfViewNone))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 4;
  }

  return 0;
}

void __FigCaptureLogCameraStreamingPowerEvent_block_invoke(uint64_t a1)
{
  atomic_fetch_add_explicit(&qword_1ED844EA8, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  v3 = *(a1 + 56);
  v2 = *(a1 + 60);
  v4 = *(a1 + 104);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 105);
  v9 = *(a1 + 106);
  v10 = *(a1 + 107);
  v11 = figCapturePowerLoggingCameraTypeForPortTypeAndDeviceType(*(a1 + 40), v2);
  v43 = v6;
  v42 = v8;
  if ((objc_msgSend_isEqualToString_(v5) & 1) != 0 || objc_msgSend_isEqualToString_(v5))
  {
    if (v2 == 14)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    if (v9)
    {
      v13 = v12;
    }

    else
    {
      v13 = v2 != 14;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = MEMORY[0x1E695DF90];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v4];
  v16 = [v14 dictionaryWithObjectsAndKeys:{v15, @"Streaming", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v11), @"CameraType", 0}];
  if (v4)
  {
    [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v3), @"PID"}];
    if (v10)
    {
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", *(a1 + 68)), @"PixelFormatIsTenBit"}];
      LODWORD(v18) = *(a1 + 72);
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v18), @"MaximumSupportedFrameRate"}];
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", *(a1 + 76)), @"SecondaryInterFrameReferenceEnabled"}];
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(a1 + 80)), @"SensorWidth"}];
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(a1 + 84)), @"SensorHeight"}];
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(a1 + 88)), @"VideoCaptureWidth"}];
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(a1 + 92)), @"VideoCaptureHeight"}];
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", *(a1 + 96)), @"BackgroundBlurEnabled"}];
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", *(a1 + 97)), @"StudioLightingEnabled"}];
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", *(a1 + 98)), @"ReactionEffectsEnabled"}];
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", *(a1 + 99)), @"BackgroundReplacementEnabled"}];
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", *(a1 + 100)), @"CenterStageEnabled"}];
    }

    if (v5)
    {
      [v16 setObject:v5 forKeyedSubscript:@"ApplicationID"];
    }
  }

  else
  {
    LODWORD(v17) = v7;
    [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v17), @"AverageFramerate"}];
    if (qword_1ED844EB0)
    {
      v41 = v13;
      v19 = [qword_1ED844EB0 allKeys];
      OUTLINED_FUNCTION_13_14();
      v21 = [v20 countByEnumeratingWithState:? objects:? count:?];
      if (v21)
      {
        v22 = v21;
        v23 = MEMORY[0];
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (MEMORY[0] != v23)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(8 * i);
            v26 = [objc_msgSend(qword_1ED844EB0 objectForKeyedSubscript:{v25), "intValue"}];
            v27 = MEMORY[0x1E696AD98];
            v28 = v26;
            v29 = log10f(v26);
            v30 = __exp10f((vcvtms_s32_f32(v29) - 1));
            v31 = [v27 numberWithInt:(v30 * roundf(v28 / v30))];
            [qword_1ED844EB0 setObject:v31 forKeyedSubscript:v25];
          }

          OUTLINED_FUNCTION_13_14();
          v22 = [v19 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v22);
      }

      v32 = _MergedGlobals_1;
      v33 = log10f(_MergedGlobals_1);
      v34 = __exp10f((vcvtms_s32_f32(v33) - 1));
      _MergedGlobals_1 = (v34 * roundf(v32 / v34));
      [v16 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithDictionary:", qword_1ED844EB0), @"StillImageCaptureCounts"}];

      qword_1ED844EB0 = 0;
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", _MergedGlobals_1), @"StillImageDeferredProcessingCount"}];
      _MergedGlobals_1 = 0;
      v13 = v41;
    }
  }

  [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", v42), @"ContinuityCameraIsWired"}];
  [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v13), @"ContinuityCameraType"}];
  if (v43)
  {
    [v16 setObject:v43 forKeyedSubscript:@"Timestamp"];
  }

  [qword_1ED844E98 setObject:v16 forKeyedSubscript:*(a1 + 40)];
  cpls_logCameraStreamingPowerEvents([qword_1ED844E98 allValues]);
  if ((objc_msgSend_isEqualToString_(*(a1 + 32)) & 1) != 0 || objc_msgSend_isEqualToString_(*(a1 + 32)))
  {
    v35 = cpls_portTypesReportedStreamingForCameraApp();
    v36 = *(a1 + 104);
    v37 = [v35 count];
    v38 = v37;
    if (v36)
    {
      if (*(a1 + 104))
      {
        if (v37 != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v39 = [v35 count];
      if (v38 == 1)
      {
LABEL_38:
        [(FigCapturePowerLogMissingCameraStopEventObserver *)qword_1ED844EA0 startObserving];
        goto LABEL_35;
      }

      if (v39)
      {
        goto LABEL_35;
      }
    }

    else if (v37)
    {
      goto LABEL_35;
    }

    [(FigCapturePowerLogMissingCameraStopEventObserver *)qword_1ED844EA0 stopObserving];
  }

LABEL_35:
  v40 = *(a1 + 32);
  if (v40)
  {
    CFRelease(v40);
  }
}

CFComparisonResult figCapturePowerLoggingCameraTypeForPortTypeAndDeviceType(const __CFString *a1, int a2)
{
  result = CFStringCompare(a1, *off_1E798A0C0, 0);
  if (result)
  {
    if (CFStringCompare(a1, *off_1E798A0D8, 0))
    {
      if (CFStringCompare(a1, *off_1E798A0E0, 0))
      {
        if (CFStringCompare(a1, *off_1E798A0F8, 0))
        {
          if (CFStringCompare(a1, *off_1E798A0E8, 0))
          {
            if (CFStringCompare(a1, *off_1E798A0D0, 0))
            {
              if (CFStringCompare(a1, *off_1E798A0C8, 0))
              {
                return 0;
              }

              else
              {
                return 5;
              }
            }

            else
            {
              return 4;
            }
          }

          else
          {
            return 3;
          }
        }

        else
        {
          return 6;
        }
      }

      else if ((a2 - 2) >= 9)
      {
        return 7;
      }

      else
      {
        return dword_1AD046F38[a2 - 2];
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}