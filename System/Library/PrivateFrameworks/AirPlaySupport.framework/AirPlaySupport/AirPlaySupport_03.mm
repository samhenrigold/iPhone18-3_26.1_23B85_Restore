uint64_t hoseSBAR_getAudioBytesPerSec(__int128 *a1, const __CFDictionary *a2, double a3, double a4, double a5)
{
  v6 = a1;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0;
  v18 = 0;
  valuePtr = 0;
  if (!a1)
  {
    HIDWORD(v21) = 2;
    v6 = &v20;
  }

  v7 = *(v6 + 2);
  if (v7 == 1819304813)
  {
    LODWORD(a4) = *(v6 + 7);
    LODWORD(a5) = *(v6 + 8);
    v10 = *v6 * *&a4 * *&a5;
    return (v10 * 0.125);
  }

  if (v7 == 1634492771)
  {
    v8 = *(v6 + 3);
    if ((v8 - 1) >= 3)
    {
      v9 = 0.0;
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90)
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_36;
          }

          v8 = *(v6 + 3);
        }

        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "int32_t hoseSBAR_getAudioBytesPerSec(AudioStreamBasicDescription *, CFDictionaryRef)", 33554522, "Unknown ALAC format flag: %d\n", v8);
      }
    }

    else
    {
      v9 = dbl_22234D558[v8 - 1];
    }

LABEL_36:
    LODWORD(a4) = *(v6 + 7);
    v10 = v9 * (*v6 * *&a4);
    return (v10 * 0.125);
  }

  if (!a2)
  {
    v12 = 0;
    goto LABEL_17;
  }

  ASBDToAPAudioFormat(v6, &v19);
  if (v19 < 2)
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (v19 > 0x3FFFFFFF)
  {
    if (v19 <= 0x7FFFFFFFFFFFLL)
    {
      if (v19 > 0xFFFFFFFFFFLL)
      {
        if (v19 <= 0x7FFFFFFFFFFLL)
        {
          switch(v19)
          {
            case 0x10000000000:
              v11 = 40;
              goto LABEL_11;
            case 0x20000000000:
              v11 = 41;
              goto LABEL_11;
            case 0x40000000000:
              v11 = 42;
              goto LABEL_11;
          }
        }

        else if (v19 > 0x1FFFFFFFFFFFLL)
        {
          if (v19 == 0x200000000000)
          {
            v11 = 45;
            goto LABEL_11;
          }

          if (v19 == 0x400000000000)
          {
            v11 = 46;
            goto LABEL_11;
          }
        }

        else
        {
          if (v19 == 0x80000000000)
          {
            v11 = 43;
            goto LABEL_11;
          }

          if (v19 == 0x100000000000)
          {
            v11 = 44;
            goto LABEL_11;
          }
        }
      }

      else if (v19 <= 0x1FFFFFFFFLL)
      {
        switch(v19)
        {
          case 0x40000000:
            v11 = 30;
            goto LABEL_11;
          case 0x80000000:
            v11 = 31;
            goto LABEL_11;
          case 0x100000000:
            v11 = 32;
            goto LABEL_11;
        }
      }

      else if (v19 > 0x3FFFFFFFFFLL)
      {
        if (v19 == 0x4000000000)
        {
          v11 = 38;
          goto LABEL_11;
        }

        if (v19 == 0x8000000000)
        {
          v11 = 39;
          goto LABEL_11;
        }
      }

      else
      {
        if (v19 == 0x200000000)
        {
          v11 = 33;
          goto LABEL_11;
        }

        if (v19 == 0x400000000)
        {
          v11 = 34;
          goto LABEL_11;
        }
      }
    }

    else if (v19 <= 0x3FFFFFFFFFFFFFLL)
    {
      if (v19 <= 0x3FFFFFFFFFFFFLL)
      {
        switch(v19)
        {
          case 0x800000000000:
            v11 = 47;
            goto LABEL_11;
          case 0x1000000000000:
            v11 = 48;
            goto LABEL_11;
          case 0x2000000000000:
            v11 = 49;
            goto LABEL_11;
        }
      }

      else if (v19 > 0xFFFFFFFFFFFFFLL)
      {
        if (v19 == 0x10000000000000)
        {
          v11 = 52;
          goto LABEL_11;
        }

        if (v19 == 0x20000000000000)
        {
          v11 = 53;
          goto LABEL_11;
        }
      }

      else
      {
        if (v19 == 0x4000000000000)
        {
          v11 = 50;
          goto LABEL_11;
        }

        if (v19 == 0x8000000000000)
        {
          v11 = 51;
          goto LABEL_11;
        }
      }
    }

    else if (v19 > 0x3FFFFFFFFFFFFFFLL)
    {
      if (v19 > 0x1FFFFFFFFFFFFFFFLL)
      {
        if (v19 == 0x2000000000000000)
        {
          v11 = 61;
          goto LABEL_11;
        }

        if (v19 == 0x4000000000000000)
        {
          v11 = 62;
          goto LABEL_11;
        }
      }

      else
      {
        if (v19 == 0x400000000000000)
        {
          v11 = 58;
          goto LABEL_11;
        }

        if (v19 == 0x1000000000000000)
        {
          v11 = 60;
          goto LABEL_11;
        }
      }
    }

    else if (v19 > 0xFFFFFFFFFFFFFFLL)
    {
      if (v19 == 0x100000000000000)
      {
        v11 = 56;
        goto LABEL_11;
      }

      if (v19 == 0x200000000000000)
      {
        v11 = 57;
        goto LABEL_11;
      }
    }

    else
    {
      if (v19 == 0x40000000000000)
      {
        v11 = 54;
        goto LABEL_11;
      }

      if (v19 == 0x80000000000000)
      {
        v11 = 55;
        goto LABEL_11;
      }
    }
  }

  else if (v19 < 0x8000)
  {
    if (v19 > 255)
    {
      if (v19 <= 2047)
      {
        switch(v19)
        {
          case 256:
            v11 = 8;
            goto LABEL_11;
          case 512:
            v11 = 9;
            goto LABEL_11;
          case 1024:
            v11 = 10;
            goto LABEL_11;
        }
      }

      else if (v19 >= 0x2000)
      {
        if (v19 == 0x2000)
        {
          v11 = 13;
          goto LABEL_11;
        }

        if (v19 == 0x4000)
        {
          v11 = 14;
          goto LABEL_11;
        }
      }

      else
      {
        if (v19 == 2048)
        {
          v11 = 11;
          goto LABEL_11;
        }

        if (v19 == 4096)
        {
          v11 = 12;
          goto LABEL_11;
        }
      }
    }

    else if (v19 <= 7)
    {
      switch(v19)
      {
        case 0x8000000000000000:
          v11 = 63;
          goto LABEL_11;
        case 2:
          v11 = 1;
          goto LABEL_11;
        case 4:
          v11 = 2;
          goto LABEL_11;
      }
    }

    else if (v19 > 31)
    {
      if (v19 == 32)
      {
        v11 = 5;
        goto LABEL_11;
      }

      if (v19 == 128)
      {
        v11 = 7;
        goto LABEL_11;
      }
    }

    else
    {
      if (v19 == 8)
      {
        v11 = 3;
        goto LABEL_11;
      }

      if (v19 == 16)
      {
        v11 = 4;
        goto LABEL_11;
      }
    }
  }

  else if (v19 < 0x400000)
  {
    if (v19 < 0x40000)
    {
      switch(v19)
      {
        case 0x8000:
          v11 = 15;
          goto LABEL_11;
        case 0x10000:
          v11 = 16;
          goto LABEL_11;
        case 0x20000:
          v11 = 17;
          goto LABEL_11;
      }
    }

    else if (v19 >= 0x100000)
    {
      if (v19 == 0x100000)
      {
        v11 = 20;
        goto LABEL_11;
      }

      if (v19 == 0x200000)
      {
        v11 = 21;
        goto LABEL_11;
      }
    }

    else
    {
      if (v19 == 0x40000)
      {
        v11 = 18;
        goto LABEL_11;
      }

      if (v19 == 0x80000)
      {
        v11 = 19;
        goto LABEL_11;
      }
    }
  }

  else if (v19 > 0x3FFFFFF)
  {
    if (v19 > 0xFFFFFFF)
    {
      if (v19 == 0x10000000)
      {
        v11 = 28;
        goto LABEL_11;
      }

      if (v19 == 0x20000000)
      {
        v11 = 29;
        goto LABEL_11;
      }
    }

    else
    {
      if (v19 == 0x4000000)
      {
        v11 = 26;
        goto LABEL_11;
      }

      if (v19 == 0x8000000)
      {
        v11 = 27;
        goto LABEL_11;
      }
    }
  }

  else if (v19 > 0xFFFFFF)
  {
    if (v19 == 0x1000000)
    {
      v11 = 24;
      goto LABEL_11;
    }

    if (v19 == 0x2000000)
    {
      v11 = 25;
      goto LABEL_11;
    }
  }

  else
  {
    if (v19 == 0x400000)
    {
      v11 = 22;
      goto LABEL_11;
    }

    if (v19 == 0x800000)
    {
      v11 = 23;
      goto LABEL_11;
    }
  }

  v11 = 35;
  if (v19 != 0x800000000)
  {
    v11 = 0;
  }

LABEL_11:
  valuePtr = v11;
  v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  Value = CFDictionaryGetValue(a2, v12);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &v18);
    v14 = v18 / 8;
    goto LABEL_18;
  }

LABEL_17:
  v18 = 409600;
  v14 = 51200;
LABEL_18:
  v15 = ((*(v6 + 7) + 1) >> 1) * v14;
  if (v12)
  {
    CFRelease(v12);
  }

  return v15;
}

void __hoseSBAR_createSynchronizerAndRenderer_embedded_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  valuePtr = 0;
  if (!v4 && !*(DerivedStorage + 280))
  {
    v11 = 0;
    v21 = 0;
    v13 = *(DerivedStorage + 272);
    v28 = "F";
LABEL_39:
    v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v30)
    {
      v20 = v30(v3, *MEMORY[0x277CD6428], v13);
      HIDWORD(valuePtr) = v20;
      if (!v20)
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50)
        {
          goto LABEL_51;
        }

        if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize())
        {
          if (*(v6 + 280))
          {
            v31 = "T";
          }

          else
          {
            v31 = "F";
          }

          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_createAndAddFigAudioSessionToAudioRenderer(APSEndpointStreamAudioHoseSBARRef, FigSampleBufferAudioRendererRef, Boolean)", 33554482, "[%{ptr}] Added FigAudioSession %{ptr} to Renderer: %{ptr}. clientPID=%@ shadowSessionID=%@ createNewAudioSession=%s prefersShadowSession=%s\n", v2, v13, v3, *(v6 + 48), *(v6 + 296), v28, v31, valuePtr);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v20 = 4294954514;
      HIDWORD(valuePtr) = -12782;
    }

    goto LABEL_57;
  }

  v7 = *MEMORY[0x277CBECE8];
  UsingAuxiliaryAVAudioSession = FigAudioSessionCreateUsingAuxiliaryAVAudioSession();
  HIDWORD(valuePtr) = UsingAuxiliaryAVAudioSession;
  if (UsingAuxiliaryAVAudioSession)
  {
    v29 = UsingAuxiliaryAVAudioSession;
    APSLogErrorAt(UsingAuxiliaryAVAudioSession);
    v11 = 0;
    v21 = 0;
    goto LABEL_35;
  }

  v9 = FigCFEqual();
  v10 = "Buffered";
  if (!v9)
  {
    v10 = "RealTime";
  }

  if (v4)
  {
    v11 = CFStringCreateF(&valuePtr + 4, "shadowSessionForFigSbarOnAudio-%{ptr}-%s", v2, v10);
    v12 = HIDWORD(valuePtr);
    if (HIDWORD(valuePtr))
    {
      goto LABEL_33;
    }
  }

  else
  {
    v11 = CFStringCreateF(&valuePtr + 4, "shadowSessionForFigSbarOnMusic-%{ptr}-%s", v2, v10);
    v12 = HIDWORD(valuePtr);
    if (HIDWORD(valuePtr))
    {
      goto LABEL_33;
    }
  }

  v13 = *(v6 + 264);
  if (!v13 || (v14 = *(CMBaseObjectGetVTable() + 16)) == 0)
  {
    v12 = 4294948075;
LABEL_32:
    HIDWORD(valuePtr) = v12;
    goto LABEL_33;
  }

  v15 = *(v14 + 56);
  if (!v15)
  {
    v12 = 4294948071;
    goto LABEL_32;
  }

  v12 = v15(v13, *MEMORY[0x277D271E0], v11);
  HIDWORD(valuePtr) = v12;
  if (v12)
  {
LABEL_33:
    APSLogErrorAt(v12);
    v21 = 0;
    goto LABEL_34;
  }

  v16 = *(CMBaseObjectGetVTable() + 16);
  if (!v16)
  {
    v12 = 4294948075;
LABEL_60:
    HIDWORD(valuePtr) = v12;
    goto LABEL_33;
  }

  v17 = *(v16 + 56);
  if (!v17)
  {
    v12 = 4294948071;
    goto LABEL_60;
  }

  v12 = v17(v13, *MEMORY[0x277D27298], *MEMORY[0x277CBED10]);
  HIDWORD(valuePtr) = v12;
  if (v12)
  {
    goto LABEL_33;
  }

  v18 = *(CMBaseObjectGetVTable() + 16);
  if (!v18)
  {
    v12 = 4294948075;
LABEL_66:
    HIDWORD(valuePtr) = v12;
    goto LABEL_33;
  }

  v19 = *(v18 + 56);
  if (!v19)
  {
    v12 = 4294948071;
    goto LABEL_66;
  }

  v12 = v19(v13, *MEMORY[0x277D271A8], *MEMORY[0x277D27060]);
  HIDWORD(valuePtr) = v12;
  if (v12)
  {
    goto LABEL_33;
  }

  LODWORD(valuePtr) = 16;
  v20 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
  v21 = v20;
  if (!v20)
  {
    goto LABEL_57;
  }

  v20 = FigAudioSessionSetMXSessionProperty(v13, *MEMORY[0x277D27280], v20);
  HIDWORD(valuePtr) = v20;
  if (v20)
  {
    goto LABEL_57;
  }

  v22 = *(v6 + 48);
  if (v22)
  {
    v23 = *(CMBaseObjectGetVTable() + 16);
    if (v23)
    {
      v24 = *(v23 + 56);
      if (v24)
      {
        v20 = v24(v13, *MEMORY[0x277D271E8], v22);
        HIDWORD(valuePtr) = v20;
        if (v20)
        {
          goto LABEL_57;
        }

        goto LABEL_26;
      }

      v20 = 4294948071;
    }

    else
    {
      v20 = 4294948075;
    }

    HIDWORD(valuePtr) = v20;
    goto LABEL_57;
  }

LABEL_26:
  v25 = *(v6 + 296);
  if (!v25)
  {
LABEL_30:
    v28 = "T";
    goto LABEL_39;
  }

  v26 = *(CMBaseObjectGetVTable() + 16);
  if (!v26)
  {
    v20 = 4294948075;
LABEL_76:
    HIDWORD(valuePtr) = v20;
    goto LABEL_57;
  }

  v27 = *(v26 + 56);
  if (!v27)
  {
    v20 = 4294948071;
    goto LABEL_76;
  }

  v20 = v27(v13, *MEMORY[0x277D27340], v25);
  HIDWORD(valuePtr) = v20;
  if (!v20)
  {
    goto LABEL_30;
  }

LABEL_57:
  APSLogErrorAt(v20);
LABEL_34:
  v29 = HIDWORD(valuePtr);
  if (!HIDWORD(valuePtr))
  {
    goto LABEL_51;
  }

LABEL_35:
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 90)
  {
    goto LABEL_49;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1)
  {
    goto LABEL_37;
  }

  if (_LogCategory_Initialize())
  {
    v29 = HIDWORD(valuePtr);
LABEL_37:
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_createAndAddFigAudioSessionToAudioRenderer(APSEndpointStreamAudioHoseSBARRef, FigSampleBufferAudioRendererRef, Boolean)", 33554522, "####### Error [%{ptr}] creating and adding the FigAudioSession to the Renderer: %d\n", v2, v29);
  }

LABEL_49:
  v32 = *(v6 + 264);
  if (v32)
  {
    CFRelease(v32);
    *(v6 + 264) = 0;
  }

LABEL_51:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

uint64_t hoseSBAR_setVolumeFadeInCurve(uint64_t a1, CMTime *a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v22, 0, sizeof(v22));
  lhs = *a2;
  rhs = *a3;
  CMTimeAdd(&v22, &lhs, &rhs);
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v18 = 4294894966;
    APSLogErrorAt(0);
    return v18;
  }

  v9 = Mutable;
  v10 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
  if (!v10)
  {
    v18 = 4294894966;
    APSLogErrorAt(0);
    goto LABEL_18;
  }

  v11 = v10;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    lhs = *a3;
    Seconds = CMTimeGetSeconds(&lhs);
    lhs = *a2;
    v13 = CMTimeGetSeconds(&lhs);
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_setVolumeFadeInCurve(APSEndpointStreamAudioHoseSBARRef, CMTime, CMTime)", 33554482, "[%{ptr}] Apply fade-in volume curve with duration: %.3fs, start at:%.3f", a1, *&Seconds, *&v13);
  }

  lhs = *a2;
  appended = FigCFArrayAppendCMTime();
  if (appended)
  {
    v18 = appended;
    goto LABEL_16;
  }

  appended = FigCFArrayAppendDouble();
  if (appended)
  {
    v18 = appended;
    goto LABEL_16;
  }

  v15 = *MEMORY[0x277CD6398];
  CFArrayAppendValue(v11, *MEMORY[0x277CD6398]);
  lhs = v22;
  appended = FigCFArrayAppendCMTime();
  if (appended)
  {
    v18 = appended;
    goto LABEL_16;
  }

  appended = FigCFArrayAppendDouble();
  if (appended)
  {
    v18 = appended;
    goto LABEL_16;
  }

  CFArrayAppendValue(v11, v15);
  CFDictionarySetValue(v9, *MEMORY[0x277CD63A0], v11);
  v16 = *(DerivedStorage + 104);
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v17)
  {
    v18 = 4294954514;
LABEL_15:
    appended = v18;
LABEL_16:
    APSLogErrorAt(appended);
    goto LABEL_17;
  }

  v18 = v17(v16, *MEMORY[0x277CD6448], v9);
  if (v18)
  {
    goto LABEL_15;
  }

LABEL_17:
  CFRelease(v11);
LABEL_18:
  CFRelease(v9);
  return v18;
}

void hoseSBAR_handleTimedManagerTriggeredNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  if (a5 && (v7 = CFGetTypeID(a5), v7 == CFDictionaryGetTypeID()))
  {
    ValueIfPresent = FigCFDictionaryGetValueIfPresent();
    if (ValueIfPresent)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_handleTimedManagerTriggeredNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] TimedManagerTimerTriggerNotification: AudioFormat changed to %s", a2, "");
      }

      ValueIfPresent = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (ValueIfPresent)
      {
        v9 = ValueIfPresent;
        CFDictionarySetValue(ValueIfPresent, @"AudioFormat", 0);
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        CFBooleanGetTypeID();
        v10 = CFDictionaryGetTypedValue() == *MEMORY[0x277CBED28];
        APSLogErrorAt(0);
        APSLogErrorAt(0);
        APSLogErrorAt(0);
        hoseSBAR_setPreferencesOnAudioSessionSetValues(a2, v10, 0, 0.0);
        CFRelease(v9);
        return;
      }
    }
  }

  else
  {
    ValueIfPresent = 0;
  }

  APSLogErrorAt(ValueIfPresent);
}

uint64_t hoseSBAR_setPreferencesOnAudioSessionSetValues(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v6 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  v9 = APSIsAPMSpeaker_sIsAPMSpeaker;
  result = FigCFEqual();
  if (result)
  {
    v11 = 0;
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v11 = *(DerivedStorage + 264);
    if (v9)
    {
      return result;
    }
  }

  v12 = *(DerivedStorage + 272);
  v33 = a4;
  v13 = *MEMORY[0x277CBECE8];
  v14 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloat64Type, &v33);
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x277D27308];
    if (v12 && (v17 = hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(a1, v12, 0, *MEMORY[0x277D27308], v14, v6), v17))
    {
      v29 = v17;
    }

    else
    {
      if (!v11 || (v17 = hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(a1, v11, 1, *v16, v15, v6), !v17))
      {
        CFRelease(v15);
        goto LABEL_13;
      }

      v29 = v17;
    }

    APSLogErrorAt(v17);
    CFRelease(v15);
    v30 = v29;
    return APSLogErrorAt(v30);
  }

  APSLogErrorAt(0);
LABEL_13:
  v18 = *(DerivedStorage + 272);
  valuePtr = a3;
  v19 = CFNumberCreate(v13, kCFNumberSInt32Type, &valuePtr);
  if (v19)
  {
    v20 = v19;
    v21 = MEMORY[0x277D27300];
    if (v18 && (v22 = hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(a1, v18, 0, *MEMORY[0x277D27300], v19, v6), v22))
    {
      v31 = v22;
    }

    else
    {
      if (!v11 || (v22 = hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(a1, v11, 1, *v21, v20, v6), !v22))
      {
        CFRelease(v20);
        goto LABEL_19;
      }

      v31 = v22;
    }

    APSLogErrorAt(v22);
    CFRelease(v20);
    v30 = v31;
    return APSLogErrorAt(v30);
  }

  APSLogErrorAt(0);
LABEL_19:
  v23 = *(DerivedStorage + 272);
  v24 = CMBaseObjectGetDerivedStorage();
  v25 = *(v24 + 704);
  if (v25)
  {
    result = *(v25 + 56);
  }

  else
  {
    APSLogErrorAt(0);
    result = 4294901760;
  }

  if (*(v24 + 281) && (result = APSAudioFormatDoesAudioChannelLayoutTagHaveHeights(result), result))
  {
    v26 = MEMORY[0x277D270A8];
  }

  else
  {
    v26 = MEMORY[0x277D270A0];
  }

  v27 = *v26;
  v28 = MEMORY[0x277D272F0];
  if (v23)
  {
    result = hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(a1, v23, 0, *MEMORY[0x277D272F0], *v26, v6);
    if (result)
    {
      v32 = result;
LABEL_41:
      APSLogErrorAt(result);
      v30 = v32;
      return APSLogErrorAt(v30);
    }
  }

  if (v11)
  {
    result = hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(a1, v11, 1, *v28, v27, v6);
    if (result)
    {
      v32 = result;
      goto LABEL_41;
    }
  }

  return result;
}

uint64_t hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  cf = 0;
  v11 = *MEMORY[0x277CBECE8];
  v12 = "Shadow Session";
  if (!a3)
  {
    v12 = "Parent Session";
  }

  v13 = CFStringCreateWithFormat(v11, 0, @"%s", v12);
  if (!v13)
  {
    APSLogErrorAt(0);
    v17 = 4294894966;
    goto LABEL_27;
  }

  if (a6)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(APSEndpointStreamAudioHoseRef, FigAudioSessionRef, Boolean, CFStringRef, CFTypeRef, Boolean)", 33554482, "[%{ptr}] Force Setting %@: %@ to %@.", a1, a4, a5, v13);
    }

    v18 = *(CMBaseObjectGetVTable() + 16);
    if (v18)
    {
      v19 = *(v18 + 56);
      if (v19)
      {
        v17 = v19(a2, a4, a5);
        if (!v17)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v17 = 4294948071;
      }
    }

    else
    {
      v17 = 4294948075;
    }

    v20 = v17;
    goto LABEL_26;
  }

  v14 = *(CMBaseObjectGetVTable() + 16);
  if (!v14)
  {
    v17 = 4294948075;
LABEL_25:
    v20 = v17;
    goto LABEL_26;
  }

  v15 = *(v14 + 48);
  if (!v15)
  {
    v17 = 4294948071;
    goto LABEL_25;
  }

  v16 = v15(a2, a4, v11, &cf);
  if (v16)
  {
    v17 = v16;
    goto LABEL_25;
  }

  if (!FigCFEqual())
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(APSEndpointStreamAudioHoseRef, FigAudioSessionRef, Boolean, CFStringRef, CFTypeRef, Boolean)", 33554482, "[%{ptr}] Setting %@: %@ to %@.", a1, a4, a5, v13);
    }

    v22 = *(CMBaseObjectGetVTable() + 16);
    if (v22)
    {
      v23 = *(v22 + 56);
      if (v23)
      {
        v17 = v23(a2, a4, a5);
        if (!v17)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v17 = 4294948071;
      }
    }

    else
    {
      v17 = 4294948075;
    }

    v20 = v17;
LABEL_26:
    APSLogErrorAt(v20);
    goto LABEL_27;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_setMXSessionPropertyOnAudioSessionIfNecessary(APSEndpointStreamAudioHoseRef, FigAudioSessionRef, Boolean, CFStringRef, CFTypeRef, Boolean)", 33554482, "[%{ptr}] Not Setting %@ on %@ as preference has not changed.", a1, a4, v13);
  }

  v17 = 0;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v17;
}

uint64_t hoseSBAR_handleDriftThresholdExceededNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  v8 = result;
  memset(&v19, 0, sizeof(v19));
  memset(&v18, 0, sizeof(v18));
  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || (result = _LogCategory_Initialize(), result))
    {
      CMTimeMakeFromDictionary(&time, a5);
      Seconds = CMTimeGetSeconds(&time);
      result = LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_handleDriftThresholdExceededNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Drift from remote timebase exceeded by %1.6f secs", a2, *&Seconds);
    }
  }

  if (*(v8 + 281) && *(v8 + 480))
  {
    CMTimebaseGetTime(&v18, *(v8 + 120));
    time = v18;
    hoseSBAR_getMediaTimeForSynchronizerTime(&v17, a2, &time);
    v10 = *(v8 + 112);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v11)
    {
      time = **&MEMORY[0x277CC0898];
      v12 = v11(v10, &time, 0.0);
      if (!v12)
      {
        v12 = APSClockDriftMonitorSuspend(*(v8 + 1000));
        if (!v12)
        {
          hoseSBAR_waitForTimebaseRate(a2, 0.0);
          hoseSBAR_updateSynchronizerState(a2, 0);
          CMTimeMakeFromDictionary(&v16, a5);
          time = v18;
          rhs = v16;
          CMTimeAdd(&v19, &time, &rhs);
          v13 = *(v8 + 112);
          v15 = v19;
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v14)
          {
            time = v17;
            rhs = v15;
            v12 = v14(v13, &time, &rhs, 1.0);
            if (!v12)
            {
              v12 = APSClockDriftMonitorResume(*(v8 + 1000));
              if (!v12)
              {
                hoseSBAR_waitForTimebaseRate(a2, 1.0);
                CMTimebaseSetTimerDispatchSourceToFireImmediately(*(v8 + 120), *(v8 + 648));
                return hoseSBAR_updateSynchronizerState(a2, 1);
              }
            }
          }

          else
          {
            v12 = 4294954514;
          }
        }
      }
    }

    else
    {
      v12 = 4294954514;
    }

    return APSLogErrorAt(v12);
  }

  return result;
}

__n128 hoseSBAR_getMediaTimeForSynchronizerTime(CMTime *a1, uint64_t a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = MEMORY[0x277CC0898];
  a1->epoch = *(MEMORY[0x277CC0898] + 16);
  result = *v6;
  *&a1->value = *v6;
  if (*(DerivedStorage + 128))
  {
    result = *&a3->value;
    *&a1->value = *&a3->value;
    a1->epoch = a3->epoch;
  }

  else if (*(DerivedStorage + 612))
  {
    lhs = *a3;
    v8 = *(DerivedStorage + 600);
    CMTimeSubtract(a1, &lhs, &v8);
  }

  return result;
}

uint64_t hoseSBAR_waitForTimebaseRate(uint64_t a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    v5 = *(DerivedStorage + 120);
    Rate = CMTimebaseGetRate(v5);
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_waitForTimebaseRate(APSEndpointStreamAudioHoseSBARRef, Float64)", 33554482, "[%{ptr}] hoseSBAR_waitForTimebaseRate( %1.3f) called. synchronizerTimebase: [%p], current Timebase rate: %1.3f", a1, *&a2, v5, *&Rate);
  }

  if (CMTimebaseGetRate(*(DerivedStorage + 120)) != a2)
  {
    v7 = *(DerivedStorage + 120);
    if (v7)
    {
      if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        if (gAPSEndpointStreamAudioHoseSBARTimebaseRateChangeListenerInitOnce != -1)
        {
          dispatch_once_f(&gAPSEndpointStreamAudioHoseSBARTimebaseRateChangeListenerInitOnce, 0, _APSEndpointStreamAudioHoseSBARTimebaseRateChangeListenerGetTypeID);
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          v9 = Instance;
          Instance[2] = 0.0;
          Instance[3] = 0.0;
          Instance[4] = 0.0;
          *(Instance + 3) = CFRetain(v7);
          v9[2] = a2;
          v10 = dispatch_semaphore_create(0);
          *(v9 + 4) = v10;
          if (v10)
          {
            CMNotificationCenterGetDefaultLocalCenter();
            v11 = FigNotificationCenterAddWeakListener();
            if (!v11)
            {
              v12 = CFRetain(v9);
              CFRelease(v9);
              if (CMTimebaseGetRate(*(DerivedStorage + 120)) != a2)
              {
                if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_waitForTimebaseRate(APSEndpointStreamAudioHoseSBARRef, Float64)", 33554482, "[%{ptr}] hoseSBAR_waitForTimebaseRate( %1.3f) waiting...", a1, *&a2);
                }

                v13 = v12[4];
                v14 = dispatch_time(0, 2500000000);
                if (dispatch_semaphore_wait(v13, v14))
                {
                  if (CMTimebaseGetRate(*(DerivedStorage + 120)) != a2)
                  {
                    APSLogErrorAt(0);
                    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
                    {
                      v15 = *(DerivedStorage + 120);
                      v16 = CMTimebaseGetRate(v15);
                      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_waitForTimebaseRate(APSEndpointStreamAudioHoseSBARRef, Float64)", 33554522, "### [%{ptr}] hoseSBAR_waitForTimebaseRate( %1.3f) timed out! synchronizerTimebase: [%p], current Timebase rate: %1.3f", a1, *&a2, v15, *&v16);
                    }

                    v17 = 4294960574;
                    goto LABEL_31;
                  }

                  if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50)
                  {
                    v17 = 0;
LABEL_31:
                    CFRelease(v12);
                    return v17;
                  }

                  if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize())
                  {
                    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_waitForTimebaseRate(APSEndpointStreamAudioHoseSBARRef, Float64)", 33554482, "[%{ptr}] hoseSBAR_waitForTimebaseRate( %1.3f) timed out, but Timebase Rate is now correct. Continuing.", a1, *&a2);
                  }
                }
              }

              goto LABEL_26;
            }

            v17 = v11;
            APSLogErrorAt(v11);
          }

          else
          {
            APSLogErrorAt(0);
            v17 = 4294894966;
          }

          CFRelease(v9);
        }

        else
        {
          APSLogErrorAt(0);
          v17 = 4294960568;
        }

LABEL_40:
        APSLogErrorAt(v17);
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_waitForTimebaseRate(APSEndpointStreamAudioHoseSBARRef, Float64)", 33554522, "### [%{ptr}] hoseSBAR_waitForTimebaseRate( %1.3f) failed to create listener!", a1, *&a2);
        }

        return v17;
      }

      v17 = 4294894965;
    }

    else
    {
      v17 = 4294894965;
    }

    APSLogErrorAt(0);
    goto LABEL_40;
  }

  v12 = 0;
LABEL_26:
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    v18 = CMTimebaseGetRate(*(DerivedStorage + 120));
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_waitForTimebaseRate(APSEndpointStreamAudioHoseSBARRef, Float64)", 33554482, "[%{ptr}] hoseSBAR_waitForTimebaseRate( %1.3f) rate now %1.3f", a1, *&a2, *&v18);
  }

  v17 = 0;
  if (v12)
  {
    goto LABEL_31;
  }

  return v17;
}

uint64_t hoseSBAR_updateSynchronizerState(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = CMBaseObjectGetDerivedStorage();
  v5 = result;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || (result = _LogCategory_Initialize(), result))
    {
      v6 = hoseSBAR_synchronizerStateToName(*(v5 + 480));
      v7 = hoseSBAR_synchronizerStateToName(v2);
      Rate = CMTimebaseGetRate(*(v5 + 120));
      result = LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_updateSynchronizerState(APSEndpointStreamAudioHoseSBARRef, APSEndpointStreamAudioHoseSBARSynchronizerState)", 33554482, "[%{ptr}] Updating hose state from %s to %s; currentRate: %1.3f\n", a1, v6, v7, *&Rate);
    }
  }

  *(v5 + 480) = v2;
  return result;
}

const char *hoseSBAR_synchronizerStateToName(int a1)
{
  if (!a1)
  {
    return "Stopped";
  }

  if (a1 == 1)
  {
    return "Started";
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "const char *hoseSBAR_synchronizerStateToName(APSEndpointStreamAudioHoseSBARSynchronizerState)", 33554522, "Unknown hose state: %d", a1);
  }

  return "Unknown?";
}

uint64_t hoseSBARTimebaseRateChangeListener_timebaseRateChangedNotification(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    v3 = *(a2 + 24);
    Rate = CMTimebaseGetRate(v3);
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBARTimebaseRateChangeListener_timebaseRateChangedNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "hoseSBARTimebaseRateChangeListener_timebaseRateChangedNotification called. Notifying Timebase: [%p], Notifying Timebase Rate: %1.3f, requested rate: %1.3f", v3, Rate, *(a2 + 16));
  }

  if (CMTimebaseGetRate(*(a2 + 24)) == *(a2 + 16))
  {
    dispatch_semaphore_signal(*(a2 + 32));
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListener();
  }

  else
  {

    return APSLogErrorAt(0);
  }
}

uint64_t _APSEndpointStreamAudioHoseSBARTimebaseRateChangeListenerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSEndpointStreamAudioHoseSBARTimebaseRateChangeListenerTypeID = result;
  return result;
}

void _APSEndpointStreamAudioHoseSBARTimebaseRateChangeListenerFinalize(uint64_t a1)
{
  if (*(a1 + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void hoseSBAR_renewAudioIOAssertionDispatch(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 144);
  if (v3 && (v4 = *(DerivedStorage + 152), v5 = dispatch_time(0, 1000000000 * v3), v6 = APSAudioIOAssertionTimingControllerAssertUntilTime(v4, v5), v6))
  {
    APSLogErrorAt(v6);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  CFRelease(a1);
}

void hoseSBAR_sbarLowWaterTimerFired()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_sbarLowWaterTimerFired(void *)", 33554482, "[%{ptr}] lowWaterTimerFire, filling to high water", v1);
    }

    v2 = hoseSBAR_fillSBARToHighWater(v1);
    if (v2)
    {
      APSLogErrorAt(v2);
    }

    CFRelease(v1);
  }
}

uint64_t hoseSBAR_fillSBARToHighWater(uint64_t a1)
{
  v117 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  cf = 0;
  if (*(DerivedStorage + 282))
  {
    if (!*(DerivedStorage + 129) || !*(DerivedStorage + 128))
    {
      goto LABEL_8;
    }
  }

  else if ((*(DerivedStorage + 612) & 1) == 0 || (*(DerivedStorage + 564) & 1) == 0)
  {
    goto LABEL_199;
  }

  if ((*(DerivedStorage + 588) & 1) == 0)
  {
LABEL_199:
    v43 = 0;
    v3 = 0;
    goto LABEL_187;
  }

LABEL_8:
  if (CMBufferQueueIsEmpty(*(DerivedStorage + 664)))
  {
    goto LABEL_199;
  }

  v3 = 0;
  allocator = *MEMORY[0x277CBECE8];
  key = *MEMORY[0x277CC0760];
  v94 = *MEMORY[0x277CC1AA8];
  v95 = v2;
  v92 = *MEMORY[0x277CD6420];
  while (2)
  {
    v4 = *(v2 + 104);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v5 || v5(v4))
    {
      v43 = 0;
      goto LABEL_187;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v6 = CMBaseObjectGetDerivedStorage();
    memset(&v111, 0, sizeof(v111));
    CMTimeMake(&v111, 500, 1000);
    v98 = *MEMORY[0x277CC0898];
    *&start.value = *MEMORY[0x277CC0898];
    v97 = *(MEMORY[0x277CC0898] + 16);
    start.epoch = v97;
    lhs = **&MEMORY[0x277CC08F0];
    v7 = *(v6 + 688);
    if (v7 && CFArrayGetCount(*(v7 + 40)))
    {
      APSLogErrorAt(0);
      APSCMSampleBufferMergerFlush(*(v6 + 688));
      v43 = 4294960587;
      goto LABEL_196;
    }

    v96 = v3;
    v8 = 0;
    while (1)
    {
      v9 = CMBufferQueueCopyHead(*(v6 + 664));
      v10 = v9;
      if (!v9)
      {
        break;
      }

      CMSampleBufferGetPresentationTimeStamp(&time1.duration, v9);
      value = time1.duration.value;
      timescale = time1.duration.timescale;
      flags = time1.duration.flags;
      epoch = time1.duration.epoch;
      if (!*(v6 + 129))
      {
        goto LABEL_36;
      }

      if ((*(v6 + 444) & 1) == 0)
      {
        goto LABEL_36;
      }

      if ((time1.duration.flags & 1) == 0)
      {
        goto LABEL_36;
      }

      *&time1.duration.value = *(v6 + 432);
      time1.duration.epoch = *(v6 + 448);
      time2.start.value = value;
      time2.start.timescale = timescale;
      time2.start.flags = flags;
      time2.start.epoch = epoch;
      if ((CMTimeCompare(&time1.duration, &time2.start) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v15 = CMBaseObjectGetDerivedStorage();
      *&time1.duration.value = v98;
      time1.duration.epoch = v97;
      if (*(v15 + 420))
      {
        v16 = v15;
        CMTimebaseGetTime(&time2.start, *(v15 + 120));
        v116.value = time2.start.value;
        v17 = time2.start.flags;
        v116.timescale = time2.start.timescale;
        if (time2.start.flags)
        {
          v18 = time2.start.epoch;
          goto LABEL_27;
        }

        v17 = *(v16 + 396);
        if (v17)
        {
          v116.value = *(v16 + 384);
          v116.timescale = *(v16 + 392);
          v18 = *(v16 + 400);
LABEL_27:
          *&time2.start.value = *(v16 + 408);
          time2.start.epoch = *(v16 + 424);
          rhs.start.value = v116.value;
          rhs.start.timescale = v116.timescale;
          rhs.start.flags = v17;
          rhs.start.epoch = v18;
          CMTimeSubtract(&time1.duration, &time2.start, &rhs.start);
          *&time2.start.value = *&time1.duration.value;
          time2.start.epoch = time1.duration.epoch;
          *&rhs.start.value = *(v16 + 232);
          rhs.start.epoch = *(v16 + 248);
          v19 = CMTimeCompare(&time2.start, &rhs.start) >> 31;
          goto LABEL_28;
        }
      }

      v19 = 1;
LABEL_28:
      if (v19)
      {
        v20 = 50;
      }

      else
      {
        v20 = 30;
      }

      if (v20 >= gLogCategory_APSEndpointStreamAudioHoseSBAR && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        *&time1.duration.value = *(v6 + 432);
        time1.duration.epoch = *(v6 + 448);
        Seconds = CMTimeGetSeconds(&time1.duration);
        v100 = *(v6 + 432);
        v22 = *(v6 + 440);
        time1.duration.value = value;
        time1.duration.timescale = timescale;
        time1.duration.flags = flags;
        time1.duration.epoch = epoch;
        v23 = CMTimeGetSeconds(&time1.duration);
        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_dequeueAndRetainMergedBufferForSBAR(APSEndpointStreamAudioHoseSBARRef, CMSampleBufferRef *)", v20 | 0x2000000u, "[%{ptr}] discontinuity, yielding until low water. lastEndPTSDequeuedForSBAR=%1.6f (%lld/%d), peekSBufPTS=%1.6f (%lld/%d), isBelowLowWaterLevel=%d\n", a1, *&Seconds, v100, v22, *&v23, value, timescale, v19);
      }

      if (!v19)
      {
        break;
      }

LABEL_36:
      CMBaseObjectGetDerivedStorage();
      if (CMGetAttachment(v10, @"HoseSBARCryptorID", 0))
      {
        UInt64 = FigCFNumberGetUInt64();
        if (!FigCFDictionaryGetValue())
        {
          if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
          {
            v90 = 4294960569;
            LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_attachCryptorIfNecessary(APSEndpointStreamAudioHoseSBARRef, CMSampleBufferRef)", 33554522, "[%{ptr}] Failed to look up cryptor 0x%llx, error: %#m", a1, UInt64);
          }

          break;
        }

        FigSampleBufferSetDecryptor();
        CMRemoveAttachment(v10, @"HoseSBARCryptorID");
      }

      v101 = value;
      CMBaseObjectGetDerivedStorage();
      sbuf.value = 0;
      sampleSizeArray.value = 0;
      LODWORD(v114) = 0;
      formatDescriptionOut.value = 0;
      v25 = CMGetAttachment(v10, @"HoseSBARMagicCookieID", 0);
      if (!v25)
      {
        v40 = 1;
        goto LABEL_64;
      }

      memset(&time1, 0, sizeof(time1));
      memset(&time2, 0, 40);
      memset(&rhs, 0, 32);
      v26 = FigCFNumberGetUInt64();
      v27 = FigCFDictionaryGetValue();
      if (!v27)
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_copySBufWithMagicCookieIfNecessary(APSEndpointStreamAudioHoseSBARRef, CMSampleBufferRef, CMSampleBufferRef *)", 33554522, "[%{ptr}] Failed to look up magic cookie 0x%llx, magicCookieID: %@ error: %#m", a1, v26, v25, 4294960569);
        }

        goto LABEL_83;
      }

      v28 = v27;
      if (!CMGetAttachment(v10, @"HoseSBARAudioFormatIndex", 0))
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_copySBufWithMagicCookieIfNecessary(APSEndpointStreamAudioHoseSBARRef, CMSampleBufferRef, CMSampleBufferRef *)", 33554522, "[%{ptr}] Audio format attachment not found, error: %#m", a1, 4294960569, v90, v91);
        }

        goto LABEL_83;
      }

      v29 = FigCFDictionaryGetValue();
      if (v29)
      {
        formatDescriptionOut.value = CFRetain(v29);
        if (formatDescriptionOut.value)
        {
          goto LABEL_49;
        }
      }

      else
      {
        formatDescriptionOut.value = 0;
      }

      v30 = FigCFNumberGetUInt64();
      v31 = APAudioFormatIndexToASBD(v30, &time2);
      if (v31 || (v31 = APAudioFormatIndexToAudioChannelLayout(v30, &rhs.start.value, &v114), v31) || (BytePtr = CFDataGetBytePtr(v28), Length = CFDataGetLength(v28), v31 = CMAudioFormatDescriptionCreate(allocator, &time2, v114, &rhs, Length, BytePtr, 0, &formatDescriptionOut), v31))
      {
        APSLogErrorAt(v31);
        goto LABEL_83;
      }

LABEL_49:
      DataBuffer = CMSampleBufferGetDataBuffer(v10);
      sampleSizeArray.value = CMBlockBufferGetDataLength(DataBuffer);
      CMSampleBufferGetPresentationTimeStamp(&time1.presentationTimeStamp, v10);
      CMSampleBufferGetDuration(&v116, v10);
      time1.duration = v116;
      CMSampleBufferGetDecodeTimeStamp(&v116, v10);
      time1.decodeTimeStamp = v116;
      v35 = CMSampleBufferCreateReady(allocator, DataBuffer, formatDescriptionOut.value, 1, 1, &time1, 1, &sampleSizeArray, &sbuf);
      if (!v35)
      {
        SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v10, 0);
        v37 = CMSampleBufferGetSampleAttachmentsArray(sbuf.value, 1u);
        if (SampleAttachmentsArray)
        {
          v38 = v37;
          if (CFArrayGetCount(SampleAttachmentsArray) >= 1)
          {
            CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
            CFArrayGetValueAtIndex(v38, 0);
            FigCFDictionaryAddEntriesToDictionaryWithRecursion();
          }
        }

        CMPropagateAttachments(v10, sbuf.value);
        CMRemoveAttachment(sbuf.value, @"HoseSBARMagicCookieID");
        CMRemoveAttachment(sbuf.value, @"HoseSBARAudioFormatIndex");
        FigSampleBufferGetDecryptor();
        FigSampleBufferSetDecryptor();
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_copySBufWithMagicCookieIfNecessary(APSEndpointStreamAudioHoseSBARRef, CMSampleBufferRef, CMSampleBufferRef *)", 33554462, "[%{ptr}] Create SBuf with correct magic cookie information", a1);
        }

        v25 = sbuf.value;
        sbuf.value = 0;
        v39 = 1;
        goto LABEL_58;
      }

      APSLogErrorAt(v35);
      if (sbuf.value)
      {
        CFRelease(sbuf.value);
      }

LABEL_83:
      v25 = 0;
      v39 = 0;
LABEL_58:
      if (formatDescriptionOut.value)
      {
        CFRelease(formatDescriptionOut.value);
      }

      if (!v39)
      {
        goto LABEL_94;
      }

      if (v25)
      {
        CFRetain(v25);
        CFRelease(v10);
        v40 = 0;
        v10 = v25;
      }

      else
      {
        v40 = 1;
      }

LABEL_64:
      CMSampleBufferGetOutputDuration(&start, v10);
      if (v8)
      {
        time2.start = lhs;
        rhs.start = start;
        CMTimeAdd(&time1.duration, &time2.start, &rhs.start);
        time2.start = v111;
        if (CMTimeCompare(&time1.duration, &time2.start) > 0)
        {
          goto LABEL_95;
        }
      }

      if (!APSCMSampleBufferMergerTryMerge(*(v6 + 688), v10))
      {
        goto LABEL_94;
      }

      v41 = CMBufferQueueDequeueAndRetain(*(v6 + 664));
      if (v41)
      {
        CFRelease(v41);
      }

      CMSampleBufferGetDuration(&time2.start, v10);
      rhs.start.value = v101;
      rhs.start.timescale = timescale;
      rhs.start.flags = flags;
      rhs.start.epoch = epoch;
      CMTimeAdd(&time1.duration, &rhs.start, &time2.start);
      *(v6 + 432) = *&time1.duration.value;
      *(v6 + 448) = time1.duration.epoch;
      time1.duration = lhs;
      time2.start = start;
      CMTimeAdd(&lhs, &time1.duration, &time2.start);
      CFRelease(v10);
      if ((v40 & 1) == 0)
      {
        CFRelease(v25);
      }

      if (++v8 == 32)
      {
        v10 = 0;
        v25 = 0;
        goto LABEL_95;
      }
    }

    v25 = 0;
LABEL_94:
    if (!v8)
    {
      v43 = 0;
      cf = 0;
      v3 = v96;
      goto LABEL_98;
    }

LABEL_95:
    v42 = APSCMSampleBufferMergerCopyMergedSBuf(*(v6 + 688), &cf);
    v43 = v42;
    v3 = v96;
    if (v42)
    {
      APSLogErrorAt(v42);
    }

LABEL_98:
    if (v10)
    {
      CFRelease(v10);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    APSCMSampleBufferMergerFlush(*(v6 + 688));
    if (v43)
    {
LABEL_196:
      v89 = v43;
      goto LABEL_198;
    }

    v44 = cf;
    if (!cf)
    {
      v43 = 0;
      goto LABEL_190;
    }

    v45 = CMBaseObjectGetDerivedStorage();
    *&v116.value = v98;
    v116.epoch = v97;
    v46 = *(MEMORY[0x277CC0898] + 12);
    v113 = 0;
    v114 = v46;
    epoch_high = *(MEMORY[0x277CC0898] + 20);
    v47 = *(MEMORY[0x277CC08C8] + 16);
    *&time1.duration.value = *MEMORY[0x277CC08C8];
    *&time1.duration.epoch = v47;
    *&time1.presentationTimeStamp.timescale = *(MEMORY[0x277CC08C8] + 32);
    *&time2.start.value = *&time1.duration.value;
    *&time2.start.epoch = v47;
    *&time2.duration.timescale = *&time1.presentationTimeStamp.timescale;
    *&v111.value = v98;
    v111.epoch = v97;
    CMSampleBufferGetOutputPresentationTimeStamp(&v116, v44);
    v48 = (v45 + 624);
    if (*(v45 + 636))
    {
      rhs.start = v116;
      *&start.value = *v48;
      start.epoch = *(v45 + 640);
      if (CMTimeCompare(&rhs.start, &start) < 0)
      {
        v52 = 0;
        v43 = 0;
LABEL_116:
        v2 = v95;
        goto LABEL_174;
      }
    }

    start = v116;
    hoseSBAR_getSynchronizerTimeForMediaTime(&rhs.start, a1, &start);
    v49 = rhs.start.value;
    v50 = rhs.start.timescale;
    v114 = *&rhs.start.flags;
    epoch_high = HIDWORD(rhs.start.epoch);
    v51 = CMSampleBufferCreateCopy(allocator, v44, &v113);
    if (v51)
    {
      v43 = v51;
LABEL_182:
      APSLogErrorAt(v51);
      v52 = 0;
      goto LABEL_116;
    }

    rhs.start.value = v49;
    rhs.start.timescale = v50;
    *&rhs.start.flags = v114;
    HIDWORD(rhs.start.epoch) = epoch_high;
    v51 = CMSampleBufferSetOutputPresentationTimeStamp(v113, &rhs.start);
    if (v51)
    {
      v43 = v51;
      goto LABEL_182;
    }

    CMSampleBufferGetOutputDuration(&rhs.start, v44);
    start = v116;
    CMTimeRangeMake(&time1, &start, &rhs.start);
    if (*(v45 + 636))
    {
      *&rhs.start.value = *&time1.duration.value;
      *&rhs.start.epoch = *&time1.duration.epoch;
      v54 = *v48;
      *&rhs.duration.timescale = *&time1.presentationTimeStamp.timescale;
      *&start.value = v54;
      start.epoch = *(v45 + 640);
      v53 = v94;
      if (CMTimeRangeContainsTime(&rhs, &start))
      {
        memset(&rhs, 0, 24);
        *&start.value = *v48;
        start.epoch = *(v45 + 640);
        lhs = v116;
        CMTimeSubtract(&rhs.start, &start, &lhs);
        v55 = CMGetAttachment(v113, key, 0);
        if (v55)
        {
          CMTimeMakeFromDictionary(&v111, v55);
          lhs = v111;
          sbuf = rhs.start;
          CMTimeAdd(&start, &lhs, &sbuf);
          CMSampleBufferGetOutputDuration(&lhs, v113);
          if ((CMTimeCompare(&start, &lhs) & 0x80000000) == 0)
          {
            CMSampleBufferGetOutputDuration(&lhs, v113);
            sbuf = rhs.start;
            CMTimeAdd(&start, &lhs, &sbuf);
            rhs.start = start;
          }
        }

        start = rhs.start;
        v52 = CMTimeCopyAsDictionary(&start, allocator);
        CMSetAttachment(v113, key, v52, 1u);
      }

      else
      {
        v52 = 0;
      }
    }

    else
    {
      v52 = 0;
      v53 = v94;
    }

    v56 = v53;
    v57 = CMGetAttachment(v113, v53, 0);
    if (FigCFEqual())
    {
      CMRemoveAttachment(v113, v56);
    }

    else
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_enqueueIntoSBARDecryptedMediaSBufInternal(APSEndpointStreamAudioHoseSBARRef, CMSampleBufferRef)", 33554482, "[%{ptr}] Forwarding Loudness info to sbar %@", a1, v57);
      }

      v58 = *(v45 + 976);
      *(v45 + 976) = v57;
      if (v57)
      {
        CFRetain(v57);
      }

      if (v58)
      {
        CFRelease(v58);
      }
    }

    v59 = CMGetAttachment(v113, @"HoseSBARSourceAudioFormatIndex", 0);
    if (v59)
    {
      v60 = v59;
      if (!FigCFEqual())
      {
        v61 = CMBaseObjectGetDerivedStorage();
        rhs.start.value = 0;
        start.value = 0;
        v62 = FigCFNumberGetUInt64();
        if (v62)
        {
          v63 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(allocator, v62, 0, &rhs.start.value);
          if (v63)
          {
            goto LABEL_143;
          }

          v63 = rhs.start.value;
          if (!rhs.start.value)
          {
            goto LABEL_143;
          }

          if (*(rhs.start.value + 44) >= 3u)
          {
            v63 = APSBadgingConvertAPSourceFormatToMATSourceFormat(rhs.start.value, &start.value);
            if (v63)
            {
              goto LABEL_143;
            }

            if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_setSourceFormatOnSBARIfNessary(APSEndpointStreamAudioHoseSBARRef, CFNumberRef)", 33554482, "[%{ptr}] Forwarding source format info to sbar %@", a1, start.value);
            }

            v64 = *(v61 + 104);
            v65 = start.value;
            v66 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v66)
            {
              v63 = 4294954514;
              goto LABEL_143;
            }

            v63 = v66(v64, v92, v65);
            if (v63)
            {
LABEL_143:
              APSLogErrorAt(v63);
            }
          }

          if (rhs.start.value)
          {
            CFRelease(rhs.start.value);
          }

          if (start.value)
          {
            CFRelease(start.value);
          }
        }

        v67 = *(v45 + 984);
        *(v45 + 984) = v60;
        CFRetain(v60);
        if (v67)
        {
          CFRelease(v67);
        }
      }
    }

    CMRemoveAttachment(v113, @"HoseSBARSourceAudioFormatIndex");
    CMSampleBufferGetOutputDuration(&rhs.start, v113);
    start.value = v49;
    start.timescale = v50;
    *&start.flags = v114;
    HIDWORD(start.epoch) = epoch_high;
    CMTimeRangeMake(&time2, &start, &rhs.start);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      CMTimebaseGetTime(&rhs.start, *(v45 + 120));
      v68 = CMTimeGetSeconds(&rhs.start);
      rhs.start.value = v49;
      rhs.start.timescale = v50;
      *&rhs.start.flags = v114;
      HIDWORD(rhs.start.epoch) = epoch_high;
      v69 = CMTimeGetSeconds(&rhs.start);
      rhs = time2;
      CMTimeRangeGetEnd(&start, &rhs);
      v70 = CMTimeGetSeconds(&start);
      rhs = time2;
      CMTimeRangeGetEnd(&start, &rhs);
      v71 = start.value;
      rhs = time2;
      CMTimeRangeGetEnd(&lhs, &rhs);
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_enqueueIntoSBARDecryptedMediaSBufInternal(APSEndpointStreamAudioHoseSBARRef, CMSampleBufferRef)", 33554462, "[%{ptr}] Enqueueing into sbar nowSynchronizerTime: %1.3f; sbuf time: [%1.3f:%1.3f] (%llu/%u) (%llu/%u)", a1, *&v68, *&v69, *&v70, v49, v50, v71, lhs.timescale);
    }

    v72 = *(v45 + 104);
    v73 = v113;
    v74 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v74)
    {
      v43 = 4294954514;
LABEL_169:
      APSLogErrorAt(v43);
      goto LABEL_173;
    }

    v75 = v74(v72, v73);
    if (v75)
    {
      v43 = v75;
      goto LABEL_169;
    }

    if ((*(v45 + 396) & 1) == 0)
    {
      *(v45 + 384) = v49;
      *(v45 + 392) = v50;
      *(v45 + 396) = v114;
      *(v45 + 404) = epoch_high;
    }

    rhs = time2;
    CMTimeRangeGetEnd(&sbuf, &rhs);
    *(v45 + 408) = sbuf;
    if (*(v45 + 420))
    {
      v76 = *(v45 + 120);
      v77 = *(v45 + 680);
      sbuf = *(v45 + 408);
      sampleSizeArray = *(v45 + 232);
      CMTimeSubtract(&rhs.start, &sbuf, &sampleSizeArray);
      CMTimebaseSetTimerDispatchSourceNextFireTime(v76, v77, &rhs.start, 0);
    }

    v78 = hoseSBAR_configureUnderrunTrackingIfNeeded(a1);
    if (v78)
    {
      v43 = v78;
      APSLogErrorAt(v78);
      goto LABEL_116;
    }

    v79 = mach_absolute_time();
    if (v79 > *(v45 + 744))
    {
      v80 = v79;
      memset(&sbuf, 0, sizeof(sbuf));
      CMTimebaseGetTime(&sbuf, *(v45 + 120));
      memset(&sampleSizeArray, 0, sizeof(sampleSizeArray));
      rhs.start.value = v49;
      rhs.start.timescale = v50;
      *&rhs.start.flags = v114;
      HIDWORD(rhs.start.epoch) = epoch_high;
      formatDescriptionOut = sbuf;
      CMTimeSubtract(&sampleSizeArray, &rhs.start, &formatDescriptionOut);
      rhs.start = sampleSizeArray;
      v81 = CMTimeGetSeconds(&rhs.start);
      if (v81 >= 1.0)
      {
        v82 = "";
      }

      else
      {
        v82 = "#######";
      }

      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
      {
        v83 = v81;
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize())
        {
          rhs.start = sbuf;
          v84 = CMTimeGetSeconds(&rhs.start);
          rhs.start.value = v49;
          rhs.start.timescale = v50;
          *&rhs.start.flags = v114;
          HIDWORD(rhs.start.epoch) = epoch_high;
          v85 = CMTimeGetSeconds(&rhs.start);
          rhs = time2;
          CMTimeRangeGetEnd(&formatDescriptionOut, &rhs);
          v86 = CMTimeGetSeconds(&formatDescriptionOut);
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_enqueueIntoSBARDecryptedMediaSBufInternal(APSEndpointStreamAudioHoseSBARRef, CMSampleBufferRef)", 33554482, "[%{ptr}] Enqueueing to sbar aheadBy: %1.3f; nowSyncerTime: %1.3f; sbufTime: [%1.3f:%1.3f] (%d) %s", a1, *&v83, *&v84, *&v85, *&v86, *(v45 + 740), v82);
        }
      }

      v87 = *(v45 + 752);
      *(v45 + 744) = v80 + UpTicksPerSecond() / 0x3E8uLL * v87;
    }

    v43 = 0;
    ++*(v45 + 740);
LABEL_173:
    v2 = v95;
LABEL_174:
    if (v113)
    {
      CFRelease(v113);
    }

    if (v52)
    {
      CFRelease(v52);
    }

    if (!v43)
    {
      v3 = (v3 + 1);
      continue;
    }

    break;
  }

  v89 = v43;
LABEL_198:
  APSLogErrorAt(v89);
LABEL_187:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_190:
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_fillSBARToHighWater(APSEndpointStreamAudioHoseSBARRef)", 33554462, "[%{ptr}] Enqueued to HighWater: %d buffs\n", a1, v3);
  }

  return v43;
}

__n128 hoseSBAR_getSynchronizerTimeForMediaTime(CMTime *a1, uint64_t a2, __n128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = MEMORY[0x277CC0898];
  a1->epoch = *(MEMORY[0x277CC0898] + 16);
  result = *v6;
  *&a1->value = *v6;
  if (*(DerivedStorage + 128))
  {
    result = *a3;
    *&a1->value = *a3;
    a1->epoch = a3[1].n128_i64[0];
  }

  else if (*(DerivedStorage + 612))
  {
    lhs = *(DerivedStorage + 600);
    v8 = *a3->n128_u8;
    CMTimeAdd(a1, &lhs, &v8);
  }

  return result;
}

uint64_t hoseSBAR_configureUnderrunTrackingIfNeeded(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v3 = *(MEMORY[0x277CC08C8] + 16);
  *&v14.start.value = *MEMORY[0x277CC08C8];
  *&v14.start.epoch = v3;
  *&v14.duration.timescale = *(MEMORY[0x277CC08C8] + 32);
  if ((*(DerivedStorage + 768) & 1) != 0 && (*(DerivedStorage + 792) & 1) != 0 && !*(DerivedStorage + 796) && (*(DerivedStorage + 780) & 0x8000000000000000) == 0 || (*(DerivedStorage + 396) & 1) == 0)
  {
    return 0;
  }

  *&v12.start.value = *(DerivedStorage + 384);
  v12.start.epoch = *(DerivedStorage + 400);
  duration = **&MEMORY[0x277CC08B0];
  CMTimeRangeMake(&v14, &v12.start, &duration);
  v4 = *MEMORY[0x277CBECE8];
  v12 = v14;
  v5 = CMTimeRangeCopyAsDictionary(&v12, v4);
  if (!v5)
  {
    APSLogErrorAt(0);
    return 4294894966;
  }

  v6 = v5;
  v7 = *(v2 + 104);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v8)
  {
    v9 = 4294954514;
    goto LABEL_11;
  }

  v9 = v8(v7, *MEMORY[0x277CD6438], v6);
  if (v9)
  {
LABEL_11:
    APSLogErrorAt(v9);
    goto LABEL_12;
  }

  v10 = *&v14.start.epoch;
  *(v2 + 756) = *&v14.start.value;
  *(v2 + 772) = v10;
  *(v2 + 788) = *&v14.duration.timescale;
LABEL_12:
  CFRelease(v6);
  return v9;
}

void hoseSBAR_purgeTimerFired()
{
  v83 = *MEMORY[0x277D85DE8];
  memset(v70, 0, sizeof(v70));
  memset(&v69, 0, sizeof(v69));
  *&v68.value = *MEMORY[0x277CC0898];
  v0 = *(MEMORY[0x277CC0898] + 16);
  v68.epoch = v0;
  *&v67.value = *&v68.value;
  v67.epoch = v0;
  v81 = *MEMORY[0x277CC0898];
  v82 = *(MEMORY[0x277CC0898] + 8);
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v1)
  {
    goto LABEL_66;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  *&time2.value = *&v68.value;
  time2.epoch = v0;
  *&v78.value = *&v68.value;
  v78.epoch = v0;
  *&v77.value = *&v68.value;
  v77.epoch = v0;
  *&v76.value = *&v68.value;
  v76.epoch = v0;
  *&v75.value = *&v68.value;
  v75.epoch = v0;
  v73 = 0;
  hostTime = 0;
  v72 = 0uLL;
  v4 = *(v3 + 64);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    v6 = 4294954514;
    goto LABEL_12;
  }

  v6 = v5(v4, &v72);
  if (v6)
  {
    goto LABEL_12;
  }

  *(&v72 + 1) = 0;
  v7 = *(v3 + 64);
  *&lhs.value = v72;
  lhs.epoch = v73;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    v6 = 4294954514;
    goto LABEL_12;
  }

  time = lhs;
  v6 = v8(v7, &time, &hostTime);
  if (v6)
  {
LABEL_12:
    APSLogErrorAt(v6);
    goto LABEL_13;
  }

  CMClockMakeHostTimeFromSystemUnits(&v78, hostTime);
  HostTimeClock = CMClockGetHostTimeClock();
  v10 = *(v3 + 120);
  time = v78;
  CMSyncConvertTime(&v77, &time, HostTimeClock, v10);
  v11 = CMClockGetHostTimeClock();
  TimeOfDayClock = FigGetTimeOfDayClock();
  time = v78;
  CMSyncConvertTime(&v75, &time, v11, TimeOfDayClock);
  time = v77;
  hoseSBAR_getMediaTimeForSynchronizerTime(&v76, v1, &time);
  v13 = v73 + *(&v72 + 1) * 5.42101086e-20;
  CMTimeMakeWithSeconds(&time, v13, 1000);
  lhs = v75;
  CMTimeSubtract(&time2, &lhs, &time);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    time = v77;
    Seconds = CMTimeGetSeconds(&time);
    time = v76;
    v15 = CMTimeGetSeconds(&time);
    time = v75;
    v16 = CMTimeGetSeconds(&time);
    time = time2;
    v17 = CMTimeGetSeconds(&time);
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_performSynchronizationDebugLogging(APSEndpointStreamAudioHoseSBARRef)", 33554482, "[%{ptr}] Network Time: %1.6f; SynchronizerTime: %1.6f; mediaTime: %1.6f; wallClockTime: %1.6f; wallVsNetDiff(should be similar for all playing devices): %1.6f;", v1, *&v13, *&Seconds, *&v15, *&v16, *&v17);
  }

LABEL_13:
  CMTimebaseGetTimeWithLogging();
  CMBufferQueueGetDuration(&time, *(DerivedStorage + 656));
  v18 = CMTimeGetSeconds(&time);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
  {
    v19 = v18;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize())
    {
      v20 = v19;
      v21 = *(DerivedStorage + 120);
      Rate = CMTimebaseGetRate(v21);
      time = v70[1];
      v23 = CMTimeGetSeconds(&time);
      LODWORD(v24) = ((((v20 / 120.0) * 100.0) / -100.0 + 1.0) * 50.0) & ~(((((v20 / 120.0) * 100.0) / -100.0 + 1.0) * 50.0) >> 31);
      if (v24 >= 50)
      {
        v24 = 50;
      }

      else
      {
        v24 = v24;
      }

      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_purgeTimerFired(void *)", 33554482, "[%{ptr}] synchronizerTimebase: %p synchronizerRate: %1.1f nowSynchronizerTime: %1.3f BufferedMSecs (%d) BufferedSecs (%3.3f) %s\n", v1, v21, *&Rate, *&v23, (v20 * 1000.0), v20, &asc_222352949[v24]);
    }
  }

  hoseSBAR_maybeTriggerPullAudioBBuffs(v1);
  if (CMTimebaseGetRate(*(DerivedStorage + 120)) == 0.0)
  {
    APSLogErrorAt(0);
LABEL_66:
    v42 = 0;
LABEL_67:
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    goto LABEL_43;
  }

  v70[0] = v70[1];
  time2 = v70[1];
  hoseSBAR_getMediaTimeForSynchronizerTime(&time, v1, &time2);
  value = time.value;
  timescale = time.timescale;
  flags = time.flags;
  epoch = time.epoch;
  CMTimeMake(&time, 1, 1);
  time2 = v70[1];
  CMTimeAdd(&v69, &time2, &time);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    v29 = *(DerivedStorage + 656);
    v30 = epoch;
    v31 = *(DerivedStorage + 664);
    time = v70[1];
    v32 = CMTimeGetSeconds(&time);
    v33 = CMTimebaseGetRate(*(DerivedStorage + 120));
    time = v70[0];
    v34 = CMTimeGetSeconds(&time);
    time = v69;
    v35 = CMTimeGetSeconds(&time);
    v60 = v31;
    epoch = v30;
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_purgeTimerFired(void *)", 33554462, "[%{ptr}] Purging the bufferStash [%{ptr}] and buffersForSBAR [%{ptr}]; nowSynchronizer: %1.3f; rate: %1.3f purgeUntil: %1.3f; purgeUntilMedia: %lld/%d; scheduling for %1.3f", v1, v29, v60, *&v32, *&v33, *&v34, value, timescale, *&v35);
  }

  if (flags & 1) == 0 || (v36 = *(DerivedStorage + 656), time.value = value, time.timescale = timescale, time.flags = flags, time.epoch = epoch, hoseSBAR_pruneBufferQueueToTimestamp(v1, &time, v36), v37 = *(DerivedStorage + 664), time.value = value, time.timescale = timescale, time.flags = flags, time.epoch = epoch, hoseSBAR_pruneBufferQueueToTimestamp(v1, &time, v37), CMBufferQueueGetEndPresentationTimeStamp(&time, *(DerivedStorage + 664)), v81 = time.value, v38 = time.flags, v82 = time.timescale, (time.flags & 1) == 0) || (v39 = time.epoch, time.value = value, time.timescale = timescale, time.flags = flags, time.epoch = epoch, time2.value = v81, time2.timescale = v82, time2.flags = v38, time2.epoch = v39, (CMTimeCompare(&time, &time2) & 0x80000000) == 0) || (*(DerivedStorage + 840))
  {
    v42 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
LABEL_42:
    hoseSBAR_updateBufferingPriority(v1);
    v51 = *(DerivedStorage + 120);
    v52 = *(DerivedStorage + 648);
    time = v69;
    CMTimebaseSetTimerDispatchSourceNextFireTime(v51, v52, &time, 0);
    goto LABEL_43;
  }

  Count = CFDictionaryGetCount(*(DerivedStorage + 944));
  if (Count < 1)
  {
    v46 = &unk_27D00A000;
    v66 = 0;
    v42 = 0;
    goto LABEL_51;
  }

  v41 = Count;
  v42 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  if (!v42 || (v43 = malloc_type_calloc(v41, 8uLL, 0x6004044C4A2DFuLL)) == 0)
  {
    APSLogErrorAt(0);
    goto LABEL_67;
  }

  v44 = v42;
  v66 = v43;
  CFDictionaryGetKeysAndValues(*(DerivedStorage + 944), v42, v43);
  for (i = 0; i != v41; ++i)
  {
    CMTimeMakeFromDictionary(&v68, v66[i]);
    time.value = value;
    time.timescale = timescale;
    time.flags = flags;
    time.epoch = epoch;
    time2 = v68;
    if ((CMTimeCompare(&time, &time2) & 0x80000000) == 0)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_purgeTimerFired(void *)", 33554482, "Purge magic cookie with magicCookieID: %@", v44[i]);
      }

      CFDictionaryRemoveValue(*(DerivedStorage + 952), v44[i]);
      CFDictionaryRemoveValue(*(DerivedStorage + 944), v44[i]);
    }
  }

  v46 = &unk_27D00A000;
  v42 = v44;
LABEL_51:
  v53 = CFDictionaryGetCount(*(DerivedStorage + 936));
  if (v53 < 1)
  {
    v47 = 0;
    v49 = 0;
    v50 = 0;
    v48 = v66;
    goto LABEL_42;
  }

  v54 = v53;
  keys = malloc_type_calloc(v53, 8uLL, 0x6004044C4A2DFuLL);
  if (keys)
  {
    v61 = v42;
    v64 = v54;
    v55 = malloc_type_calloc(v54, 8uLL, 0x6004044C4A2DFuLL);
    if (v55)
    {
      v56 = v46;
      v47 = keys;
      v65 = v55;
      CFDictionaryGetKeysAndValues(*(DerivedStorage + 936), keys, v55);
      v50 = 0;
      v57 = 0;
      allocator = *MEMORY[0x277CBECE8];
      while (1)
      {
        CMTimeMakeFromDictionary(&v67, v65[v57]);
        time.value = value;
        time.timescale = timescale;
        time.flags = flags;
        time.epoch = epoch;
        time2 = v67;
        if ((CMTimeCompare(&time, &time2) & 0x80000000) == 0)
        {
          v58 = v56[164];
          if (v58 <= 50 && (v58 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_purgeTimerFired(void *)", 33554482, "Purge old cryptor with cryptorID: %@", v47[v57]);
          }

          Mutable = CFDictionaryCreateMutable(allocator, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v50 = Mutable;
          if (!Mutable)
          {
            APSLogErrorAt(0);
            v42 = v61;
            v49 = v65;
            v48 = v66;
            goto LABEL_43;
          }

          CFDictionarySetValue(Mutable, @"CryptorID", v47[v57]);
          CMNotificationCenterGetDefaultLocalCenter();
          v47 = keys;
          FigDispatchAsyncPostNotification();
          CFDictionaryRemoveValue(*(DerivedStorage + 928), keys[v57]);
          CFDictionaryRemoveValue(*(DerivedStorage + 936), keys[v57]);
        }

        if (v64 == ++v57)
        {
          v42 = v61;
          v49 = v65;
          v48 = v66;
          goto LABEL_42;
        }
      }
    }

    APSLogErrorAt(0);
    v49 = 0;
    v50 = 0;
    v48 = v66;
    v47 = keys;
  }

  else
  {
    APSLogErrorAt(0);
    v47 = 0;
    v49 = 0;
    v50 = 0;
    v48 = v66;
  }

LABEL_43:
  free(v42);
  free(v47);
  free(v48);
  free(v49);
  if (v1)
  {
    CFRelease(v1);
  }

  if (v50)
  {
    CFRelease(v50);
  }
}

void hoseSBAR_maybeTriggerPullAudioBBuffs(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 457))
    {
      if (*(DerivedStorage + 460))
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_maybeTriggerPullAudioBBuffs(APSEndpointStreamAudioHoseSBARRef)", 33554462, "[%{ptr}] flush from time in flight\n", a1);
        }
      }

      else
      {
        CFRetain(a1);
        v4 = *(v3 + 352);

        dispatch_async_f(v4, a1, hoseSBAR_pullAudioBBuffsDispatchFunction);
      }
    }

    else if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_maybeTriggerPullAudioBBuffs(APSEndpointStreamAudioHoseSBARRef)", 33554462, "[%{ptr}] no data from audio engine: no kick", a1);
    }
  }
}

void hoseSBAR_pruneBufferQueueToTimestamp(uint64_t a1, uint64_t a2, opaqueCMBufferQueue *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 12) & 1) == 0 || !a3)
  {

    APSLogErrorAt(0);
    return;
  }

  v6 = CMBufferQueueCopyHead(a3);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  while (1)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&time, v7);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    if (time.flags)
    {
      epoch = time.epoch;
      goto LABEL_13;
    }

    CMBufferQueueGetMinPresentationTimeStamp(&time, a3);
    v16 = time.value;
    flags = time.flags;
    v17 = time.timescale;
    if ((time.flags & 1) == 0)
    {
      break;
    }

    epoch = time.epoch;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      time.value = v16;
      time.timescale = v17;
      time.flags = flags;
      time.epoch = epoch;
      Seconds = CMTimeGetSeconds(&time);
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_pruneBufferQueueToTimestamp(APSEndpointStreamAudioHoseSBARRef, CMTime, CMBufferQueueRef)", 33554462, "[%{ptr}] sbuf in bufferQueue [%{ptr}] has invalid PTS. Setting currentOPTS to minOPTS: %1.3f. Sbuf: %@", a1, a3, *&Seconds, v7);
    }

    value = v16;
    timescale = v17;
LABEL_13:
    time = *a2;
    time2.value = value;
    time2.timescale = timescale;
    time2.flags = flags;
    time2.epoch = epoch;
    if (CMTimeCompare(&time, &time2) < 0)
    {
      goto LABEL_26;
    }

    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      time.value = value;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = epoch;
      v11 = CMTimeGetSeconds(&time);
      time = *a2;
      v12 = CMTimeGetSeconds(&time);
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_pruneBufferQueueToTimestamp(APSEndpointStreamAudioHoseSBARRef, CMTime, CMBufferQueueRef)", 33554462, "[%{ptr}] pruning sbuf from bufferQueue [%{ptr}] because currentOPTS %1.3f <= inPruneTimestamp %1.3f. Sbuf: %@", a1, a3, *&v11, *&v12, v7);
    }

    v13 = CMBufferQueueDequeueAndRetain(a3);
    if (v13)
    {
      CFRelease(v13);
    }

    CFRelease(v7);
    v7 = CMBufferQueueCopyHead(a3);
    if (!v7)
    {
      return;
    }
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_pruneBufferQueueToTimestamp(APSEndpointStreamAudioHoseSBARRef, CMTime, CMBufferQueueRef)", 33554462, "[%{ptr}] bufferQueue [%{ptr}] has no valid minimum PTS.", a1, a3);
  }

LABEL_26:
  CFRelease(v7);
}

uint64_t hoseSBAR_updateBufferingPriority(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v9, 0, sizeof(v9));
  CMTimebaseGetTime(&v9, *(DerivedStorage + 120));
  v8 = **&MEMORY[0x277CC08A0];
  if (*(DerivedStorage + 420))
  {
    lhs = *(DerivedStorage + 408);
    v6 = v9;
    CMTimeSubtract(&v8, &lhs, &v6);
  }

  if (hoseSBAR_getBufferingPriorityThreshold_sHoseSBARBufferingPriorityThresholdOnce != -1)
  {
    dispatch_once(&hoseSBAR_getBufferingPriorityThreshold_sHoseSBARBufferingPriorityThresholdOnce, &__block_literal_global_368);
  }

  lhs = *hoseSBAR_getBufferingPriorityThreshold_sHoseSBARBufferingPriorityThreshold;
  v6 = v8;
  if (CMTimeCompare(&v6, &lhs) < 0)
  {
    v3 = 36;
  }

  else
  {
    v3 = 37;
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 308) != v3)
  {
    *(DerivedStorage + 308) = v3;
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    APSCMNotificationCenterPostNotificationAsync(DefaultLocalCenter, @"BufferingPriorityChanged", a1, 0, 0, *(DerivedStorage + 8), QOS_CLASS_USER_INITIATED);
  }

  return FigSimpleMutexUnlock();
}

double __hoseSBAR_getBufferingPriorityThreshold_block_invoke()
{
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"hoseSBARBufferingPriorityThresholdMs", 0, 10000);
  CMTimeMake(&v2, IntWithOverrideAndDefault, 1000);
  result = *&v2.value;
  *hoseSBAR_getBufferingPriorityThreshold_sHoseSBARBufferingPriorityThreshold = v2;
  return result;
}

void hoseSBAR_pullAudioBBuffsDispatchFunction(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    goto LABEL_83;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 457))
  {
    if (*(DerivedStorage + 460))
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_pullAudioBBuffsDispatchFunction(void *)", 33554462, "[%{ptr}] flush from time in flight\n", a1);
      }
    }

    else
    {
      if (!hoseSBAR_hoseIsAboveHighWater(a1))
      {
        v28 = v3;
        if (!*(CMBaseObjectGetDerivedStorage() + 488))
        {
          if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_pullAudioBBuffsInternal(APSEndpointStreamAudioHoseSBARRef)", 33554482, "[%{ptr}] No callbacks", a1);
          }

          goto LABEL_80;
        }

        v4 = 0;
        allocator = *MEMORY[0x277CBECE8];
        v5 = MEMORY[0x277CC0898];
        while (1)
        {
LABEL_7:
          if (hoseSBAR_hoseIsAboveHighWater(a1))
          {
            v26 = 0;
            if (!v4)
            {
              goto LABEL_79;
            }

LABEL_78:
            CFRelease(v4);
LABEL_79:
            if (v26)
            {
              started = v26;
            }

            else
            {
LABEL_80:
              if (*(v28 + 282) || (started = hoseSBAR_startTheSynchronizerIfNecessary(a1, 1), !started))
              {
                started = hoseSBAR_fillSBARToHighWater(a1);
                if (!started)
                {
                  goto LABEL_83;
                }
              }
            }

            APSLogErrorAt(started);
            goto LABEL_83;
          }

          if (v4)
          {
            CFRelease(v4);
          }

          v6 = CMBaseObjectGetDerivedStorage();
          *theArray = 0;
          if (!*(v6 + 488))
          {
            if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "CMBlockBufferRef hoseSBAR_copyAndDequeueNextAudioBBuff(APSEndpointStreamAudioHoseSBARRef)", 33554482, "[%{ptr}] No callbacks", a1);
            }

            goto LABEL_24;
          }

          v7 = v6;
          v8 = *(v6 + 464);
          if (v8)
          {
            Count = CFArrayGetCount(v8);
            MutableCopy = *(v7 + 464);
            if (Count)
            {
              goto LABEL_18;
            }

            if (MutableCopy)
            {
              CFRelease(MutableCopy);
              *(v7 + 464) = 0;
            }
          }

          (*(*(v7 + 488) + 8))(*(v7 + 496), a1, theArray, 0);
          if (!*theArray || !CFArrayGetCount(*theArray))
          {
            *(v7 + 457) = 0;
            if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 10 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "CMBlockBufferRef hoseSBAR_copyAndDequeueNextAudioBBuff(APSEndpointStreamAudioHoseSBARRef)", 33554442, "[%{ptr}] No data from Audio Engine", a1);
            }

            goto LABEL_24;
          }

          MutableCopy = CFArrayCreateMutableCopy(allocator, 0, *theArray);
          *(v7 + 464) = MutableCopy;
          if (!MutableCopy)
          {
            APSLogErrorAt(0);
LABEL_24:
            v4 = 0;
            goto LABEL_25;
          }

LABEL_18:
          ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, 0);
          v4 = CFRetain(ValueAtIndex);
          if (v4)
          {
            FigSimpleMutexLock();
            *(v7 + 320) = 1;
            FigSimpleMutexUnlock();
            CFArrayRemoveValueAtIndex(*(v7 + 464), 0);
          }

LABEL_25:
          if (*theArray)
          {
            CFRelease(*theArray);
          }

          if (!v4)
          {
            goto LABEL_80;
          }

          v12 = CMBaseObjectGetDerivedStorage();
          v33[0] = 0;
          memset(theArray, 0, sizeof(theArray));
          v31 = *v5;
          CMBaseObjectGetDerivedStorage();
          if (FigCFEqual())
          {
            v13 = *(CMBaseObjectGetDerivedStorage() + 712);
            (*(*(v12 + 96) + 8))(a1, v4, theArray, v33);
            *v30 = *theArray;
            *&v30[12] = *&theArray[12];
            hoseSBAR_getMediaTimeForTransportTime(&v31, a1, v30);
            if (v13)
            {
              v14 = 1;
              while (1)
              {
                v15 = v33[0];
                if (v13[16] == 1)
                {
                  v16 = *(v13 + 5);
                  if (((v16 - v33[0]) & 0x800000) == 0 && ((v16 ^ v33[0]) & 0xFFFFFF) != 0)
                  {
                    break;
                  }

                  v17 = *(v13 + 13);
                  if (((v17 - v33[0]) & 0x800000) == 0 && ((v17 ^ v33[0]) & 0xFFFFFF) != 0)
                  {
                    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30)
                    {
                      if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1)
                      {
                        goto LABEL_66;
                      }

                      if (_LogCategory_Initialize())
                      {
                        v15 = v33[0];
                        v16 = *(v13 + 5);
                        v17 = *(v13 + 13);
LABEL_66:
                        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "Boolean hoseSBAR_processFlushesOnIncomingBBuf(APSEndpointStreamAudioHoseSBARRef, CMBlockBufferRef)", 33554462, "[%{ptr}] Process FlushWithinRange [%{ptr}] -- discarding packet with Seq: %u, FlushFromSeq: %u, FlushUntilSeq: %u", a1, v13, v15, v16, v17);
                      }
                    }

                    goto LABEL_7;
                  }

                  if (((v17 + 20 - v33[0]) & 0x800000) != 0 || (((v17 + 20) ^ v33[0]) & 0xFFFFFF) == 0)
                  {
                    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
                    {
                      if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
                      {
                        if (!_LogCategory_Initialize())
                        {
                          goto LABEL_54;
                        }

                        v15 = v33[0];
                        v16 = *(v13 + 5);
                        v17 = *(v13 + 13);
                      }

                      *v30 = v31;
                      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "Boolean hoseSBAR_processFlushesOnIncomingBBuf(APSEndpointStreamAudioHoseSBARRef, CMBlockBufferRef)", 33554482, "[%{ptr}] Discarding FlushWithinRage operation [%{ptr}] at Seq: %u, Timestamap: %1.6f FlushFromSeq: %u, FlushUntilSeq: %u", a1, v13, v15, v30, v16, v17);
                    }

                    goto LABEL_54;
                  }

LABEL_45:
                  if ((v14 & 1) == 0)
                  {
                    goto LABEL_54;
                  }

                  v13 = *v13;
                  v14 = 1;
                  if (!v13)
                  {
                    break;
                  }
                }

                else
                {
                  v18 = *(v13 + 13);
                  if (((v18 - v33[0]) & 0x800000) == 0 && ((v18 ^ v33[0]) & 0xFFFFFF) != 0)
                  {
                    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 30)
                    {
                      goto LABEL_7;
                    }

                    if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1)
                    {
                      goto LABEL_63;
                    }

                    if (_LogCategory_Initialize())
                    {
                      v15 = v33[0];
                      v18 = *(v13 + 13);
LABEL_63:
                      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "Boolean hoseSBAR_processFlushesOnIncomingBBuf(APSEndpointStreamAudioHoseSBARRef, CMBlockBufferRef)", 33554462, "[%{ptr}] Process Flush [%{ptr}] -- discarding packet with Seq: %u, FlushUntilSeq: %u", a1, v13, v15, v18);
                      goto LABEL_7;
                    }

                    goto LABEL_7;
                  }

                  if (((v18 + 20 - v33[0]) & 0x800000) == 0 && (((v18 + 20) ^ v33[0]) & 0xFFFFFF) != 0)
                  {
                    goto LABEL_45;
                  }

                  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
                  {
                    if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
                    {
                      if (!_LogCategory_Initialize())
                      {
                        goto LABEL_54;
                      }

                      v15 = v33[0];
                      v18 = *(v13 + 13);
                    }

                    *v30 = v31;
                    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "Boolean hoseSBAR_processFlushesOnIncomingBBuf(APSEndpointStreamAudioHoseSBARRef, CMBlockBufferRef)", 33554482, "[%{ptr}] Discarding Flush operation [%{ptr}] at Seq: %u, Timestamp: %1.6f FlushUntilSeq: %u", a1, v13, v15, v30, v18, v27);
                  }

LABEL_54:
                  v19 = CMBaseObjectGetDerivedStorage();
                  v20 = *v13;
                  v21 = *(v13 + 1);
                  v22 = (v19 + 720);
                  if (*v13)
                  {
                    v22 = (*v13 + 8);
                  }

                  *v22 = v21;
                  *v21 = v20;
                  free(v13);
                  v23 = CMBaseObjectGetDerivedStorage();
                  v14 = 0;
                  v13 = *(v23 + 712);
                  if (!v13)
                  {
                    break;
                  }
                }
              }
            }
          }

          v24 = hoseSBAR_enqueueAudioBBuffToInternalBuffersInternal(a1, v4);
          if (v24)
          {
            v26 = v24;
            APSLogErrorAt(v24);
            goto LABEL_78;
          }
        }
      }

      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_pullAudioBBuffsDispatchFunction(void *)", 33554462, "[%{ptr}] above high water; no kick", a1);
      }
    }
  }

  else if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_pullAudioBBuffsDispatchFunction(void *)", 33554462, "[%{ptr}] no data from audio engine: no kick", a1);
  }

LABEL_83:
  CFRelease(a1);
}

BOOL hoseSBAR_hoseIsAboveHighWater(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = **&MEMORY[0x277CC0898];
  CMBufferQueueGetDuration(&time1, *(DerivedStorage + 656));
  v8 = *(DerivedStorage + 208);
  if ((CMTimeCompare(&time1, &v8) & 0x80000000) == 0)
  {
    return 1;
  }

  if ((*(DerivedStorage + 396) & 1) == 0)
  {
    return 0;
  }

  v3 = (DerivedStorage + 408);
  if (CMTimebaseGetRate(*(DerivedStorage + 120)) == 0.0)
  {
    *&time1.value = *v3;
    time1.epoch = *(DerivedStorage + 424);
    v8 = *(DerivedStorage + 384);
    p_time1 = &time1;
    v5 = &v8;
  }

  else
  {
    CMTimebaseGetTime(&time1, *(DerivedStorage + 120));
    *&v8.value = *v3;
    v8.epoch = *(DerivedStorage + 424);
    p_time1 = &v8;
    v5 = &time1;
  }

  CMTimeSubtract(&v10, p_time1, v5);
  time1 = v10;
  v8 = *(DerivedStorage + 208);
  if (CMTimeCompare(&time1, &v8) < 0)
  {
    return 0;
  }

  v6 = *(DerivedStorage + 104);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v7)
  {
    return 1;
  }

  return v7(v6) != 0;
}

CMTime *hoseSBAR_getMediaTimeForTransportTime(CMTime *result, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x277CC0898];
  *&result->value = *MEMORY[0x277CC0898];
  result->epoch = *(v3 + 16);
  v4 = (a3 + 4);
  if (*a3 == 1)
  {
    return hoseSBAR_getMediaTimeForRTPTime(result, a2, *v4);
  }

  if (*a3 == 2 && (*(a3 + 16) & 0x1D) == 1 && *(a3 + 20) == 0)
  {
    *&result->value = *v4;
    result->epoch = *(a3 + 20);
  }

  return result;
}

uint64_t hoseSBAR_enqueueAudioBBuffToInternalBuffersInternal(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v60 = 0;
  memset(v59, 0, 28);
  v58 = 0;
  v61 = *(MEMORY[0x277CC0898] + 12);
  epoch_high = *(MEMORY[0x277CC0898] + 20);
  v57 = 0;
  v56 = 0;
  *value = 0u;
  *uuid = 0u;
  memset(v54, 0, sizeof(v54));
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  *v50 = 0u;
  memset(v48, 0, sizeof(v48));
  v46 = *MEMORY[0x277CC0898];
  v47 = *(MEMORY[0x277CC0898] + 16);
  v5 = (*(*(DerivedStorage + 96) + 8))(a1, a2, v59, &v58);
  if (v5)
  {
    v36 = v5;
LABEL_126:
    APSLogErrorAt(v5);
LABEL_141:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v9 = 0;
    v15 = 0;
    goto LABEL_92;
  }

  v5 = (*(*(DerivedStorage + 96) + 16))(a1, a2, &v60, v48);
  if (v5)
  {
    v36 = v5;
    goto LABEL_126;
  }

  *time = v59[0];
  *&time[12] = *(v59 + 12);
  hoseSBAR_updateRTPRolloverStateAssumingIncreasingTransportTimes(a1, time);
  *time = v59[0];
  *&time[12] = *(v59 + 12);
  hoseSBAR_getMediaTimeForTransportTime(&lhs, a1, time);
  epoch_high = HIDWORD(lhs.epoch);
  v61 = *&lhs.flags;
  rhs = *(DerivedStorage + 184);
  CMTimeSubtract(time, &lhs, &rhs);
  v6 = *time;
  v7 = *&time[8];
  v61 = *&time[12];
  epoch_high = *&time[20];
  if (LOBYTE(v54[0]))
  {
    if (!CMBlockBufferGetDataLength(v60))
    {
      v8 = *MEMORY[0x277CBECE8];
      v5 = CMSampleBufferCreate(*MEMORY[0x277CBECE8], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &v57);
      if (!v5)
      {
        v9 = CFNumberCreate(v8, kCFNumberSInt64Type, &uuid[1]);
        CMSetAttachment(v57, *MEMORY[0x277CC0750], v9, 1u);
        v41 = 0;
        cf = 0;
        v40 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
LABEL_75:
        if (!*(DerivedStorage + 129))
        {
          UInt32 = 0;
          goto LABEL_79;
        }

        UInt32 = FigCFNumberCreateUInt32();
        if (UInt32)
        {
          CMSetAttachment(v57, @"HoseSBARTransportSeqNum", UInt32, 0);
LABEL_79:
          CMBufferQueueEnqueue(*(DerivedStorage + 656), v57);
          CMBufferQueueEnqueue(*(DerivedStorage + 664), v57);
          v36 = 0;
          goto LABEL_80;
        }

        v36 = 4294894966;
        APSLogErrorAt(0);
LABEL_80:
        v37 = cf;
        v38 = v40;
        if (!cf)
        {
LABEL_82:
          if (v38)
          {
            CFRelease(v38);
          }

          if (v10)
          {
            CFRelease(v10);
          }

LABEL_86:
          v18 = v41;
          if (!v14)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        }

LABEL_81:
        CFRelease(v37);
        goto LABEL_82;
      }

      v36 = v5;
      goto LABEL_126;
    }

    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_enqueueAudioBBuffToInternalBuffersInternal(APSEndpointStreamAudioHoseSBARRef, CMBlockBufferRef)", 33554482, "[%{ptr}] Encountered sbuf with transitionID with non-empty media data. Discarding sbuf seq=%u\n", a1, v58);
    }

LABEL_140:
    v36 = 0;
    goto LABEL_141;
  }

  v16 = *&v48[0];
  if (!CMBlockBufferGetDataLength(v60))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_enqueueAudioBBuffToInternalBuffersInternal(APSEndpointStreamAudioHoseSBARRef, CMBlockBufferRef)", 33554482, "[%{ptr}] Discarded an empty audio buffer seq=%u\n", a1, v58);
    }

    goto LABEL_140;
  }

  v17 = *MEMORY[0x277CBECE8];
  *time = v6;
  *&time[8] = v7;
  *&time[12] = v61;
  *&time[20] = epoch_high;
  v5 = CMTimeCopyAsDictionary(time, v17);
  if (!v5)
  {
    v36 = 4294894966;
    goto LABEL_126;
  }

  v18 = v5;
  v41 = v5;
  if (value[0])
  {
    Int64 = CFNumberCreateInt64();
    if (!Int64)
    {
      goto LABEL_143;
    }

    v14 = Int64;
    if (!FigCFDictionaryGetCMTimeIfPresent() || (BYTE12(v46) & 1) != 0 && (*time = v46, *&time[16] = v47, lhs.value = v6, lhs.timescale = v7, *&lhs.flags = v61, HIDWORD(lhs.epoch) = epoch_high, CMTimeCompare(time, &lhs) < 0))
    {
      CFDictionarySetValue(*(DerivedStorage + 944), v14, v18);
    }

    if (value[1])
    {
      CFDictionarySetValue(*(DerivedStorage + 952), v14, value[1]);
    }

    v20 = CFDictionaryContainsKey(*(DerivedStorage + 952), v14);
    if (v20 && !CFDictionaryContainsKey(*(DerivedStorage + 960), v14))
    {
      v21 = 1;
    }

    else
    {
      CFRelease(v14);
      v14 = 0;
      v21 = v20 != 0;
    }
  }

  else
  {
    v21 = 0;
    v14 = 0;
  }

  *time = v6;
  *&time[8] = v7;
  *&time[12] = v61;
  *&time[20] = epoch_high;
  lhs = *(v54 + 4);
  v22 = hoseSBAR_createSbufWithAudioDataAndOPTS(a1, v60, time, v16, v51, v14, &lhs, &v57);
  if (v22)
  {
    v36 = v22;
    APSLogErrorAt(v22);
    v15 = 0;
    UInt32 = 0;
    v9 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_86;
  }

  if (value[0])
  {
    v23 = v21;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) != 0 || *(DerivedStorage + 968))
  {
    cf = 0;
    goto LABEL_29;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v26 = CFNumberCreateInt64();
  if (v26)
  {
    v14 = v26;
    v27 = CFNumberCreateInt64();
    if (!v27)
    {
      v36 = 4294894966;
      APSLogErrorAt(0);
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v9 = 0;
      UInt32 = 0;
      v15 = 0;
      v18 = v41;
LABEL_87:
      CFRelease(v14);
LABEL_88:
      if (!v18)
      {
        goto LABEL_90;
      }

      goto LABEL_89;
    }

    v28 = v27;
    CMSetAttachment(v57, @"HoseSBARMagicCookieID", v14, 0);
    cf = v28;
    CMSetAttachment(v57, @"HoseSBARAudioFormatIndex", v28, 0);
LABEL_29:
    if (*(&v48[0] + 1))
    {
      v40 = CFNumberCreateInt64();
      if (!v40)
      {
        v36 = 4294894966;
        APSLogErrorAt(0);
        v38 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v9 = 0;
        UInt32 = 0;
        v15 = 0;
        v37 = cf;
        if (!cf)
        {
          goto LABEL_82;
        }

        goto LABEL_81;
      }

      CMSetAttachment(v57, @"HoseSBARSourceAudioFormatIndex", cf, 0);
    }

    else
    {
      v40 = 0;
    }

    if (*&v48[1])
    {
      v10 = CFNumberCreateInt64();
      if (!v10)
      {
        v36 = 4294894966;
        APSLogErrorAt(0);
        v11 = 0;
        goto LABEL_134;
      }

      if (!FigCFDictionaryGetCMTimeIfPresent() || (BYTE12(v46) & 1) != 0 && (*time = v46, *&time[16] = v47, lhs.value = v6, lhs.timescale = v7, *&lhs.flags = v61, HIDWORD(lhs.epoch) = epoch_high, CMTimeCompare(time, &lhs) < 0))
      {
        CFDictionarySetValue(*(DerivedStorage + 936), v10, v41);
      }

      CMSetAttachment(v57, @"HoseSBARCryptorID", v10, 0);
    }

    else
    {
      v10 = 0;
    }

    if ((BYTE4(v48[2]) & 1) == 0)
    {
      v11 = 0;
LABEL_54:
      if ((BYTE12(v49) & 1) == 0)
      {
        v12 = 0;
LABEL_62:
        if (v56)
        {
          v31 = FigCFEqual();
          v32 = "Buffered";
          if (!v31)
          {
            v32 = "RealTime";
          }

          v15 = CFStringCreateF(0, "HoseSbar-ToInternalBuffer-%{ptr}-%s", a1, v32);
          CMSetAttachment(v57, *MEMORY[0x277CD62C0], v56, 1u);
          FigEndpointStreamAudioEngineSbufTracerDebugPrint();
        }

        else
        {
          v15 = 0;
        }

        if (v50[1])
        {
          CMSetAttachment(v57, *MEMORY[0x277CC1AA8], v50[1], 1u);
        }

        if (uuid[0])
        {
          SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v57, 1u);
          v13 = CFUUIDCreateString(v17, uuid[0]);
          if (!v13)
          {
            APSLogErrorAt(0);
            v36 = 4294894965;
            APSSignalErrorAt(0xFFFEE575, "Failed to create CFString from CFUUID", "hoseSBAR_enqueueAudioBBuffToInternalBuffersInternal");
            v9 = 0;
            UInt32 = 0;
            goto LABEL_80;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
          if (ValueAtIndex)
          {
            CFDictionarySetValue(ValueAtIndex, *MEMORY[0x277CC1A90], v13);
          }
        }

        else
        {
          v13 = 0;
        }

        v9 = 0;
        goto LABEL_75;
      }

      *time = v49;
      *&time[16] = v50[0];
      v12 = CMTimeCopyAsDictionary(time, v17);
      if (v12)
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          *time = v49;
          *&time[16] = v50[0];
          Seconds = CMTimeGetSeconds(time);
          *time = v6;
          *&time[8] = v7;
          *&time[12] = v61;
          *&time[20] = epoch_high;
          v30 = CMTimeGetSeconds(time);
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_enqueueAudioBBuffToInternalBuffersInternal(APSEndpointStreamAudioHoseSBARRef, CMBlockBufferRef)", 33554482, "[%{ptr}] Received TrimAtEnd marker with trim duration %1.3f seconds, Timestamp = %1.6f (%lld/%d)", a1, *&Seconds, *&v30, v6, v7);
        }

        CMSetAttachment(v57, *MEMORY[0x277CC0758], v12, 1u);
        goto LABEL_62;
      }

      v36 = 4294894966;
      APSLogErrorAt(0);
LABEL_136:
      v13 = 0;
      v9 = 0;
      UInt32 = 0;
      v15 = 0;
      goto LABEL_80;
    }

    *time = *(&v48[1] + 8);
    *&time[16] = *(&v48[2] + 1);
    v11 = CMTimeCopyAsDictionary(time, v17);
    if (v11)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        *time = *(&v48[1] + 8);
        *&time[16] = *(&v48[2] + 1);
        v24 = CMTimeGetSeconds(time);
        *time = v6;
        *&time[8] = v7;
        *&time[12] = v61;
        *&time[20] = epoch_high;
        v25 = CMTimeGetSeconds(time);
        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_enqueueAudioBBuffToInternalBuffersInternal(APSEndpointStreamAudioHoseSBARRef, CMBlockBufferRef)", 33554482, "[%{ptr}] Received TrimAtStart marker with trim duration %1.3f seconds, Timestamp = %1.6f (%lld/%d)", a1, *&v24, *&v25, v6, v7);
      }

      CMSetAttachment(v57, *MEMORY[0x277CC0760], v11, 1u);
      goto LABEL_54;
    }

    v36 = 4294894966;
    APSLogErrorAt(0);
LABEL_134:
    v12 = 0;
    goto LABEL_136;
  }

  v18 = v41;
LABEL_143:
  v36 = 4294894966;
  APSLogErrorAt(0);
  v15 = 0;
  UInt32 = 0;
  v9 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
LABEL_89:
  CFRelease(v18);
LABEL_90:
  if (UInt32)
  {
    CFRelease(UInt32);
  }

LABEL_92:
  if (v60)
  {
    CFRelease(v60);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v50[1])
  {
    CFRelease(v50[1]);
  }

  if (uuid[0])
  {
    CFRelease(uuid[0]);
  }

  if (value[1])
  {
    CFRelease(value[1]);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  return v36;
}

uint64_t hoseSBAR_startTheSynchronizerIfNecessary(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = *MEMORY[0x277CC08F0];
  v24 = *(MEMORY[0x277CC08F0] + 16);
  memset(&v22, 0, sizeof(v22));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v22, HostTimeClock);
  if (!*(DerivedStorage + 282))
  {
    v6 = hoseSBAR_enqueueIntoSBARPrimingSBufIfNecessary(a1);
    if (v6)
    {
      v16 = v6;
      goto LABEL_27;
    }
  }

  if (*(DerivedStorage + 152))
  {
    v7 = *(DerivedStorage + 368);
    if (a1)
    {
      v8 = CFRetain(a1);
    }

    else
    {
      v8 = 0;
    }

    dispatch_async_f(v7, v8, hoseSBAR_renewAudioIOAssertionDispatch);
  }

  if (*(DerivedStorage + 128))
  {
    if ((*(DerivedStorage + 588) & 1) == 0)
    {
      return 0;
    }

    v23 = *(DerivedStorage + 576);
    v24 = *(DerivedStorage + 592);
    v22 = *(DerivedStorage + 552);
  }

  v9 = *(DerivedStorage + 480);
  if (v9 == 1 || a2 && (*(DerivedStorage + 396) & 1) != 0)
  {
    return 0;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50)
  {
    goto LABEL_18;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1)
  {
    goto LABEL_16;
  }

  if (_LogCategory_Initialize())
  {
    v9 = *(DerivedStorage + 480);
LABEL_16:
    v10 = hoseSBAR_synchronizerStateToName(v9);
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_startTheSynchronizerIfNecessary(APSEndpointStreamAudioHoseSBARRef, Boolean)", 33554482, "[%{ptr}] Ensuring the synchronizer is started; current state: %s", a1, v10);
  }

LABEL_18:
  v11 = *(DerivedStorage + 112);
  v21 = v22;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v12)
  {
    v16 = 4294954514;
LABEL_26:
    v6 = v16;
LABEL_27:
    APSLogErrorAt(v6);
    return v16;
  }

  v26 = v23;
  v27 = v24;
  v25 = v21;
  v13 = v12(v11, &v26, &v25, 1.0);
  if (v13)
  {
    v16 = v13;
    goto LABEL_26;
  }

  v6 = APSClockDriftMonitorResume(*(DerivedStorage + 1000));
  if (v6)
  {
    v16 = v6;
    goto LABEL_27;
  }

  v14 = hoseSBAR_waitForTimebaseRate(a1, 1.0);
  if (!v14)
  {
    CMTimebaseSetTimerDispatchSourceToFireImmediately(*(DerivedStorage + 120), *(DerivedStorage + 648));
    v17 = MEMORY[0x277CC0898];
    *(DerivedStorage + 600) = *MEMORY[0x277CC0898];
    *(DerivedStorage + 616) = *(v17 + 16);
    hoseSBAR_updateSynchronizerState(a1, 1);
    v16 = 0;
    *(DerivedStorage + 376) = mach_absolute_time();
    return v16;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90)
  {
    v15 = v14;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_startTheSynchronizerIfNecessary(APSEndpointStreamAudioHoseSBARRef, Boolean)", 33554522, "### [%{ptr}] Starting the Synchronizer failed with err: %#m", a1, v15);
    }
  }

  v18 = *(DerivedStorage + 112);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v19)
  {
    v26 = *MEMORY[0x277CC0898];
    v27 = *(MEMORY[0x277CC0898] + 16);
    v19(v18, &v26, 0.0);
  }

  v6 = APSClockDriftMonitorSuspend(*(DerivedStorage + 1000));
  v16 = v6;
  if (v6)
  {
    goto LABEL_27;
  }

  return v16;
}

uint64_t hoseSBAR_enqueueIntoSBARPrimingSBufIfNecessary(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v17, 0, sizeof(v17));
  CMTimeMake(&v17, -1, 1);
  cf = 0;
  blockBufferOut = 0;
  if (*(DerivedStorage + 672))
  {
    goto LABEL_27;
  }

  if (*(DerivedStorage + 128))
  {
    v3 = CMBufferQueueCopyHead(*(DerivedStorage + 664));
    if (v3)
    {
      v4 = v3;
      CMSampleBufferGetOutputPresentationTimeStamp(&time, v3);
      *&v17.timescale = *&time.timescale;
      v17.epoch = time.epoch;
      v17.value = time.value - time.timescale;
      goto LABEL_6;
    }

LABEL_27:
    v12 = 0;
    goto LABEL_22;
  }

  v4 = 0;
LABEL_6:
  v5 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, 0x40uLL, *MEMORY[0x277CBECE8], 0, 0, 0x40uLL, 1u, &blockBufferOut);
  if (v5)
  {
    v12 = v5;
    goto LABEL_20;
  }

  v6 = *(DerivedStorage + 704);
  if (v6)
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = 0;
  }

  time = v17;
  v5 = hoseSBAR_createSbufWithAudioDataAndOPTS(a1, blockBufferOut, &time, v7, 0, 0, MEMORY[0x277CC0898], &cf);
  if (v5)
  {
    v12 = v5;
LABEL_20:
    APSLogErrorAt(v5);
    if (!v4)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    time = v17;
    Seconds = CMTimeGetSeconds(&time);
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_enqueueIntoSBARPrimingSBufIfNecessary(APSEndpointStreamAudioHoseSBARRef)", 33554482, "[%{ptr}] Enqueueing priming sbuf with opts: %1.3f\n", a1, *&Seconds);
  }

  v9 = *(DerivedStorage + 104);
  v10 = cf;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v11)
  {
    v12 = 4294954514;
    goto LABEL_19;
  }

  v12 = v11(v9, v10);
  if (v12)
  {
LABEL_19:
    v5 = v12;
    goto LABEL_20;
  }

  *(DerivedStorage + 672) = 1;
  if (v4)
  {
LABEL_21:
    CFRelease(v4);
  }

LABEL_22:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t hoseSBAR_createSbufWithAudioDataAndOPTS(uint64_t a1, OpaqueCMBlockBuffer *a2, CMTime *a3, unint64_t a4, UInt32 a5, uint64_t a6, uint64_t a7, void *a8)
{
  keys[2] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v81 = 0;
  sampleBufferOut = 0;
  packetDescriptions.mStartOffset = 0;
  *&packetDescriptions.mVariableFramesInPacket = 0;
  v14 = *(MEMORY[0x277CC0918] + 48);
  *&sampleTimingArray.presentationTimeStamp.timescale = *(MEMORY[0x277CC0918] + 32);
  *&sampleTimingArray.decodeTimeStamp.value = v14;
  sampleTimingArray.decodeTimeStamp.epoch = *(MEMORY[0x277CC0918] + 64);
  v15 = *(MEMORY[0x277CC0918] + 16);
  *&sampleTimingArray.duration.value = *MEMORY[0x277CC0918];
  *&sampleTimingArray.duration.epoch = v15;
  v16 = CMBaseObjectGetDerivedStorage();
  memset(&asbd, 0, sizeof(asbd));
  memset(&layout, 0, sizeof(layout));
  v88 = 0;
  memset(&magicCookieSize_4, 0, sizeof(magicCookieSize_4));
  keys[0] = 0;
  magicCookieSize = 0;
  values[0] = 0;
  desc = 0;
  formatDescriptionOut = 0;
  v17 = APAudioFormatIndexToASBD(a4, &asbd);
  v18 = MEMORY[0x277CBECE8];
  v19 = &unk_27D00A000;
  if (v17)
  {
    v27 = v17;
    APSLogErrorAt(v17);
    v25 = 0;
    v26 = 0;
    goto LABEL_162;
  }

  mFramesPerPacket = asbd.mFramesPerPacket;
  if (a5)
  {
    mFramesPerPacket = a5;
  }

  asbd.mFramesPerPacket = mFramesPerPacket;
  v77 = a2;
  v78 = a3;
  if (!*(v16 + 696))
  {
    goto LABEL_15;
  }

  v21 = *(v16 + 704);
  if (!v21)
  {
    if (!a4)
    {
      APSLogErrorAt(0);
      v22 = 0;
      mFramesPerPacket = asbd.mFramesPerPacket;
      goto LABEL_8;
    }

LABEL_15:
    v23 = 0;
    v24 = a6 == 0;
    goto LABEL_16;
  }

  if (*(v21 + 64) != a4)
  {
    goto LABEL_15;
  }

  v22 = *(v21 + 36);
LABEL_8:
  v23 = v22 == mFramesPerPacket;
  v24 = a6 == 0;
  if (!a6 && v22 == mFramesPerPacket)
  {
    v25 = CFRetain(*(v16 + 696));
    v26 = 0;
    v27 = 0;
LABEL_11:
    a2 = v77;
    a3 = v78;
    goto LABEL_162;
  }

LABEL_16:
  mFormatID = asbd.mFormatID;
  mChannelsPerFrame = asbd.mChannelsPerFrame;
  v73 = v24;
  if (a4 > 0x3F || ((1 << a4) & 0xC03E000E00000000) == 0)
  {
    v30 = *(v16 + 281) != 0;
    goto LABEL_28;
  }

  if (*(v16 + 281))
  {
    v30 = 1;
LABEL_28:
    *(v16 + 968) = 0;
    v31 = a4;
    if (a4 <= 0x3F)
    {
      v31 = a4;
      if (((1 << a4) & 0xC03E000E00000000) != 0)
      {
        v31 = a4;
        if (v30)
        {
          goto LABEL_116;
        }
      }
    }

    goto LABEL_115;
  }

  if (hoseSBAR_allowAtmosPlayback_initOnce != -1)
  {
    dispatch_once(&hoseSBAR_allowAtmosPlayback_initOnce, &__block_literal_global_912);
  }

  if (hoseSBAR_allowAtmosPlayback_isAtmosAllowed)
  {
    v30 = 0;
    goto LABEL_28;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_copyFormatDescriptionForAudioFormat(APSEndpointStreamAudioHoseSBARRef, APAudioFormatIndex, uint32_t, CFNumberRef, Boolean *, CMAudioFormatDescriptionRef *)", 33554482, "[%{ptr}] Forcing DDPAtmos to EnhancedAC3 codec, 6 channels.  Original %{asbd}", a1, &asbd);
  }

  v32 = 1902207795;
  if (asbd.mFormatID <= 1902207794)
  {
    if (asbd.mFormatID <= 1685220712)
    {
      if (asbd.mFormatID <= 1667524656)
      {
        if (asbd.mFormatID <= 1667326823)
        {
          if (asbd.mFormatID == 1633771875 || asbd.mFormatID == 1667312947)
          {
            goto LABEL_114;
          }

          v34 = 24931;
        }

        else if (asbd.mFormatID > 1667330146)
        {
          if (asbd.mFormatID == 1667330147)
          {
            goto LABEL_114;
          }

          v34 = 30307;
        }

        else
        {
          if (asbd.mFormatID == 1667326824)
          {
            goto LABEL_114;
          }

          v34 = 25456;
        }

        v35 = v34 | 0x63610000;
        goto LABEL_113;
      }

      if (asbd.mFormatID <= 1667656802)
      {
        if (asbd.mFormatID == 1667524657 || asbd.mFormatID == 1667574579)
        {
          goto LABEL_114;
        }

        v35 = 1667575091;
        goto LABEL_113;
      }

      if (asbd.mFormatID > 1668047202)
      {
        if (asbd.mFormatID != 1668047203)
        {
          v35 = 1668641633;
          goto LABEL_113;
        }
      }

      else if (asbd.mFormatID != 1667656803)
      {
        v35 = 1667790435;
        goto LABEL_113;
      }

      goto LABEL_114;
    }

    if (asbd.mFormatID <= 1885430578)
    {
      if (asbd.mFormatID <= 1701733237)
      {
        if (asbd.mFormatID == 1685220713 || asbd.mFormatID == 1700886115)
        {
          goto LABEL_114;
        }

        v35 = 1701733217;
        goto LABEL_113;
      }

      if (asbd.mFormatID > 1882599479)
      {
        if (asbd.mFormatID != 1882599480)
        {
          v35 = 1885430115;
          goto LABEL_113;
        }
      }

      else if (asbd.mFormatID != 1701733238)
      {
        v35 = 1869117027;
        goto LABEL_113;
      }

      goto LABEL_114;
    }

    if (asbd.mFormatID <= 1885547314)
    {
      if (asbd.mFormatID - 1885430579 <= 0x3D && ((1 << (LOBYTE(asbd.mFormatID) - 51)) & 0x2020000000000001) != 0)
      {
        goto LABEL_114;
      }

      goto LABEL_179;
    }

    if (asbd.mFormatID <= 1886745440)
    {
      if (asbd.mFormatID != 1885547315)
      {
        v35 = 1885692723;
        goto LABEL_113;
      }

      goto LABEL_114;
    }

    if (asbd.mFormatID == 1886745441)
    {
      goto LABEL_114;
    }

    v36 = 24931;
LABEL_105:
    v35 = v36 | 0x71610000;
    goto LABEL_113;
  }

  if (asbd.mFormatID <= 1902667125)
  {
    if (asbd.mFormatID > 1902324530)
    {
      if (asbd.mFormatID <= 1902405732)
      {
        if (asbd.mFormatID == 1902324531 || asbd.mFormatID == 1902403958)
        {
          goto LABEL_114;
        }

        v37 = 26673;
      }

      else
      {
        if (asbd.mFormatID > 1902469938)
        {
          if (asbd.mFormatID == 1902469939)
          {
            goto LABEL_114;
          }

          v35 = 1902537827;
          goto LABEL_113;
        }

        if (asbd.mFormatID == 1902405733)
        {
          goto LABEL_114;
        }

        v37 = 28024;
      }

      v35 = v37 | 0x71640000;
      goto LABEL_113;
    }

    if (asbd.mFormatID - 1902207795 <= 0x3D && ((1 << (LOBYTE(asbd.mFormatID) - 51)) & 0x2020000000000001) != 0 || asbd.mFormatID - 1902212657 <= 0x34 && ((1 << (LOBYTE(asbd.mFormatID) - 49)) & 0x14000000000001) != 0)
    {
      goto LABEL_114;
    }

    v36 = 28771;
    goto LABEL_105;
  }

  if (asbd.mFormatID > 2053202738)
  {
    if (asbd.mFormatID <= 2053319474)
    {
      if (asbd.mFormatID - 2053202739 <= 0x3D && ((1 << (LOBYTE(asbd.mFormatID) - 51)) & 0x2020000000000001) != 0)
      {
        goto LABEL_114;
      }

      v33 = 30307;
      goto LABEL_108;
    }

    if (asbd.mFormatID <= 2053923170)
    {
      if (asbd.mFormatID != 2053319475)
      {
        v35 = 2053464883;
        goto LABEL_113;
      }

      goto LABEL_114;
    }

    if (asbd.mFormatID == 2053923171)
    {
      goto LABEL_114;
    }

    v35 = 2054517601;
LABEL_113:
    if (asbd.mFormatID == v35)
    {
      goto LABEL_114;
    }

LABEL_179:
    v32 = 1700998451;
    goto LABEL_114;
  }

  if (asbd.mFormatID <= 1902998903)
  {
    if (asbd.mFormatID == 1902667126 || asbd.mFormatID == 1902671459)
    {
      goto LABEL_114;
    }

    v35 = 1902928227;
    goto LABEL_113;
  }

  if (asbd.mFormatID > 1903587384)
  {
    if (asbd.mFormatID != 1903587385)
    {
      v33 = 24931;
LABEL_108:
      v35 = v33 | 0x7A610000;
      goto LABEL_113;
    }
  }

  else if (asbd.mFormatID != 1902998904)
  {
    v35 = 1903522657;
    goto LABEL_113;
  }

LABEL_114:
  asbd.mFormatID = v32;
  asbd.mChannelsPerFrame = 6;
  *(v16 + 968) = 1;
  v31 = 50;
LABEL_115:
  v38 = APAudioFormatIndexToAudioChannelLayout(v31, &layout, &v88);
  if (v38)
  {
    v27 = v38;
    APSLogErrorAt(v38);
    v25 = 0;
    v26 = 0;
    goto LABEL_11;
  }

LABEL_116:
  v72 = v23;
  if (FigCFDictionaryGetValueIfPresent() && !*(v16 + 968))
  {
    v39 = a1;
    values[0] = CFDataGetBytePtr(keys[0]);
    magicCookieSize = CFDataGetLength(keys[0]);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      UInt64 = FigCFNumberGetUInt64();
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_copyFormatDescriptionForAudioFormat(APSEndpointStreamAudioHoseSBARRef, APAudioFormatIndex, uint32_t, CFNumberRef, Boolean *, CMAudioFormatDescriptionRef *)", 33554482, "[%{ptr}] Created new format with Magic Cookie: 0x%llx", a1, UInt64);
    }
  }

  else
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_copyFormatDescriptionForAudioFormat(APSEndpointStreamAudioHoseSBARRef, APAudioFormatIndex, uint32_t, CFNumberRef, Boolean *, CMAudioFormatDescriptionRef *)", 33554482, "[%{ptr}] Created new format with default Magic Cookie", a1);
    }

    v39 = a1;
    if ((asbd.mFormatID & 0xEFFFFFFF) == 0x616C6163)
    {
      LODWORD(magicCookieSize_4.value) = bswap32(asbd.mFramesPerPacket);
      BYTE4(magicCookieSize_4.value) = 0;
      BYTE5(magicCookieSize_4.value) = APAudioFormatIndexGetBitsPerChannel(a4);
      HIWORD(magicCookieSize_4.value) = 2600;
      LOBYTE(magicCookieSize_4.timescale) = 14;
      BYTE1(magicCookieSize_4.timescale) = asbd.mChannelsPerFrame;
      HIWORD(magicCookieSize_4.timescale) = -256;
      magicCookieSize_4.flags = 0;
      LODWORD(magicCookieSize_4.epoch) = 0;
      HIDWORD(magicCookieSize_4.epoch) = bswap32(asbd.mSampleRate);
      values[0] = &magicCookieSize_4;
      magicCookieSize = 24;
      goto LABEL_136;
    }

    if (asbd.mFormatID > 1667330146)
    {
      if (asbd.mFormatID == 1667330147)
      {
LABEL_133:
        APAudioFormatGetMagicCookieForAPAC(a4, values, &magicCookieSize, asbd.mSampleRate);
        goto LABEL_136;
      }

      v41 = 1902211171;
LABEL_132:
      if (asbd.mFormatID != v41)
      {
        goto LABEL_136;
      }

      goto LABEL_133;
    }

    if (asbd.mFormatID != 1633772320)
    {
      v41 = 1634754915;
      goto LABEL_132;
    }

    APAudioFormatGetMagicCookieForAACLC(asbd.mChannelsPerFrame, values, &magicCookieSize, asbd.mSampleRate);
  }

LABEL_136:
  v74 = v39;
  v42 = *v18;
  v43 = magicCookieSize;
  v44 = values[0];
  v45 = CMAudioFormatDescriptionCreate(*v18, &asbd, v88, &layout, magicCookieSize, values[0], 0, &formatDescriptionOut);
  if (v45)
  {
    v27 = v45;
    APSLogErrorAt(v45);
    v25 = 0;
    v26 = 0;
    a2 = v77;
LABEL_270:
    a3 = v78;
LABEL_272:
    a1 = v74;
    v19 = &unk_27D00A000;
    goto LABEL_162;
  }

  v46 = *(v16 + 696);
  v47 = formatDescriptionOut;
  *(v16 + 696) = formatDescriptionOut;
  if (v47)
  {
    CFRetain(v47);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (!v73)
  {
    FigCFDictionarySetValue();
  }

  v48 = *(v16 + 704);
  if (v48)
  {
    CFRelease(v48);
  }

  asbd.mFormatID = mFormatID;
  asbd.mChannelsPerFrame = mChannelsPerFrame;
  v49 = APAudioFormatIndexToAudioChannelLayout(a4, &layout, &v88);
  a2 = v77;
  if (v49)
  {
    v27 = v49;
    APSLogErrorAt(v49);
    v25 = 0;
    v26 = 0;
    goto LABEL_270;
  }

  v50 = CMAudioFormatDescriptionCreate(v42, &asbd, v88, &layout, v43, v44, 0, &desc);
  a3 = v78;
  if (v50)
  {
    v27 = v50;
    APSLogErrorAt(v50);
    v25 = 0;
    v26 = 0;
    goto LABEL_272;
  }

  v51 = (v16 + 704);
  v52 = APSAudioFormatDescriptionCreateWithCMFormatDescription(v42, desc, (v16 + 704));
  v19 = &unk_27D00A000;
  if (v52)
  {
    v27 = v52;
    APSLogErrorAt(v52);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = formatDescriptionOut;
    formatDescriptionOut = 0;
    if (v72)
    {
      v27 = 0;
      v26 = 0;
      a1 = v74;
      goto LABEL_164;
    }

    cf = 0;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      APSAudioFormatDescriptionCopyDebugString(*v51, &cf);
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_copyFormatDescriptionForAudioFormat(APSEndpointStreamAudioHoseSBARRef, APAudioFormatIndex, uint32_t, CFNumberRef, Boolean *, CMAudioFormatDescriptionRef *)", 33554482, "[%{ptr}] Transport audio format changed %{asbd} channelLayoutTag 0x%08x - %@", v74, &asbd, layout.mChannelLayoutTag, cf);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v27 = 0;
    v26 = 1;
  }

  a1 = v74;
LABEL_162:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

LABEL_164:
  if (desc)
  {
    CFRelease(desc);
  }

  if (v27)
  {
    v69 = v27;
    goto LABEL_275;
  }

  if (!v26)
  {
    v61 = *v18;
    goto LABEL_252;
  }

  if (CMTimebaseGetRate(*(DerivedStorage + 120)) == 0.0)
  {
    v62 = CMBaseObjectGetDerivedStorage();
    v61 = *v18;
    Mutable = CFDictionaryCreateMutable(*v18, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v64 = Mutable;
      CFDictionarySetValue(Mutable, @"AudioFormat", *(v62 + 704));
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      hoseSBAR_setPreferencesOnAudioSession(a1, 0);
LABEL_251:
      CFRelease(v64);
      goto LABEL_252;
    }
  }

  else
  {
    magicCookieSize_4 = *a3;
    v53 = v19;
    v54 = CMBaseObjectGetDerivedStorage();
    v55 = *(v54 + 704);
    CMTimeMake(&asbd, 1, 1);
    *&layout.mChannelLayoutTag = *&magicCookieSize_4.value;
    *&layout.mChannelDescriptions[0].mChannelFlags = magicCookieSize_4.epoch;
    CMTimeSubtract(&magicCookieSize_4, &layout, &asbd);
    v56 = v53[164];
    if (v56 <= 50 && (v56 != -1 || _LogCategory_Initialize()))
    {
      CMTimebaseGetTime(&asbd, *(v54 + 120));
      Seconds = CMTimeGetSeconds(&asbd);
      *&asbd.mSampleRate = *&magicCookieSize_4.value;
      *&asbd.mBytesPerPacket = magicCookieSize_4.epoch;
      v58 = CMTimeGetSeconds(&asbd);
      if (v55)
      {
        v59 = v55[8];
        v60 = "PCM/24000/16/1";
        switch(v59)
        {
          case 2:
            v60 = "PCM/8000/16/1";
            break;
          case 3:
            v60 = "PCM/8000/16/2";
            break;
          case 4:
            v60 = "PCM/16000/16/1";
            break;
          case 5:
            v60 = "PCM/16000/16/2";
            break;
          case 6:
            break;
          case 7:
            v60 = "PCM/24000/16/2";
            break;
          case 8:
            v60 = "PCM/32000/16/1";
            break;
          case 9:
            v60 = "PCM/32000/16/2";
            break;
          case 10:
            v60 = "PCM/44100/16/1";
            break;
          case 11:
            v60 = "PCM/44100/16/2";
            break;
          case 12:
            v60 = "PCM/44100/24/1";
            break;
          case 13:
            v60 = "PCM/44100/24/2";
            break;
          case 14:
            v60 = "PCM/48000/16/1";
            break;
          case 15:
            v60 = "PCM/48000/16/2";
            break;
          case 16:
            v60 = "PCM/48000/24/1";
            break;
          case 17:
            v60 = "PCM/48000/24/2";
            break;
          case 18:
            v60 = "ALAC/44100/16/2";
            break;
          case 19:
            v60 = "ALAC/44100/24/2";
            break;
          case 20:
            v60 = "ALAC/48000/16/2";
            break;
          case 21:
            v60 = "ALAC/48000/24/2";
            break;
          case 22:
            v60 = "AAC-LC/44100/2";
            break;
          case 23:
            v60 = "AAC-LC/48000/2";
            break;
          case 24:
            v60 = "AAC-ELD/44100/2";
            break;
          case 25:
            v60 = "AAC-ELD/48000/2";
            break;
          case 26:
            v60 = "AAC-ELD/16000/1";
            break;
          case 27:
            v60 = "AAC-ELD/24000/1";
            break;
          case 28:
            v60 = "OPUS/16000/1";
            break;
          case 29:
            v60 = "OPUS/24000/1";
            break;
          case 30:
            v60 = "OPUS/48000/1";
            break;
          case 31:
            v60 = "AAC-ELD/44100/1";
            break;
          case 32:
            v60 = "AAC-ELD/48000/1";
            break;
          case 38:
            v60 = "PCM/48000/16/5.1.2";
            break;
          case 39:
            v60 = "AAC_LC/48000/5.1";
            break;
          case 40:
            v60 = "AAC_LC/48000/5.1.2";
            break;
          case 41:
            v60 = "AAC_ELD/48000/5.1";
            break;
          case 42:
            v60 = "AAC_ELD/48000/5.1.2";
            break;
          case 43:
            v60 = "AAC-ELD/32000/1";
            break;
          case 44:
            v60 = "PCM/48000/16/5.1";
            break;
          case 45:
            v60 = "PCM/48000/32f/1";
            break;
          case 46:
            v60 = "PCM/48000/32f/2";
            break;
          case 47:
            v60 = "PCM/48000/32f/5.1";
            break;
          case 48:
            v60 = "PCM/48000/32f/5.1.2";
            break;
          case 49:
            v60 = "DDPLUS/48000/2";
            break;
          case 50:
            v60 = "DDPLUS/48000/5.1";
            break;
          case 51:
            v60 = "DDPLUS/48000/5.1.2";
            break;
          case 52:
            v60 = "DDPLUS/48000/7.1.4";
            break;
          case 53:
            v60 = "DDPLUS/48000/9.1.6";
            break;
          case 54:
            v60 = "QAAC/48000/2";
            break;
          case 55:
            v60 = "QAAC/48000/5.1";
            break;
          case 56:
            v60 = "QAAC/48000/5.1.2";
            break;
          case 57:
            v60 = "QAACHE/48000/2";
            break;
          case 69:
            v60 = "PCM/48000/32f/7.1.4";
            break;
          case 78:
            v60 = "PCM/48000/16/7.1";
            break;
          case 79:
            v60 = "PCM/48000/32f/7.1";
            break;
          case 80:
            v60 = "PCM/48000/16/5.1.4";
            break;
          case 81:
            v60 = "PCM/48000/32f/5.1.4";
            break;
          case 82:
            v60 = "PCM/48000/16/7.1.2";
            break;
          case 83:
            v60 = "PCM/48000/32f/7.1.2";
            break;
          case 84:
            v60 = "PCM/48000/16/7.1.4";
            break;
          case 85:
            v60 = "ALAC/44100/20/2";
            break;
          case 86:
            v60 = "ALAC/48000/20/2";
            break;
          case 90:
            v60 = "AAC_LC/48000/7.1";
            break;
          case 93:
            v60 = "PCM/48000/16/9.1.6";
            break;
          case 94:
            v60 = "PCM/48000/32f/9.1.6";
            break;
          default:
            v65 = v59 - 33;
            if (v59 - 33) < 0x3C && ((0xDC01BEFFA000007uLL >> v65))
            {
              v60 = off_2784A4890[v65];
            }

            else
            {
              v60 = "MP3/48000/2";
              if (v59 != 75)
              {
                v60 = "";
              }
            }

            break;
        }
      }

      else
      {
        v60 = "";
      }

      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_scheduleFormatChangeHandlingForAudioSessionOnTimer(APSEndpointStreamAudioHoseSBARRef, CMTime, Boolean)", 33554482, "[%{ptr}] hoseSBAR_scheduleHandlingFormatChangeForAudioSessionOnTimer synchronizerTimebase=%1.3f, OPTS=%1.3f, newAudioFormat=%s", a1, *&Seconds, *&v58, v60);
    }

    v61 = *v18;
    keys[0] = @"ForceSetPreferences";
    keys[1] = @"NewAudioFormat";
    values[0] = *MEMORY[0x277CBED10];
    values[1] = v55;
    v66 = CFDictionaryCreate(v61, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v66)
    {
      v64 = v66;
      v67 = *(v54 + 992);
      *&asbd.mSampleRate = *&magicCookieSize_4.value;
      *&asbd.mBytesPerPacket = magicCookieSize_4.epoch;
      v68 = APSTimedInfoManagerAddTimedInfo(v67, &asbd, v64);
      if (v68)
      {
        APSLogErrorAt(v68);
      }

      goto LABEL_251;
    }
  }

  APSLogErrorAt(0);
LABEL_252:
  packetDescriptions.mStartOffset = 0;
  packetDescriptions.mVariableFramesInPacket = 352;
  packetDescriptions.mDataByteSize = CMBlockBufferGetDataLength(a2);
  *&asbd.mSampleRate = *&a3->value;
  *&asbd.mBytesPerPacket = a3->epoch;
  v69 = CMAudioSampleBufferCreateReadyWithPacketDescriptions(v61, a2, v25, 1, &asbd, &packetDescriptions, &sampleBufferOut);
  if (v69)
  {
    v27 = v69;
  }

  else
  {
    v69 = APSAPACApplyIndependentDecodableDependancy(sampleBufferOut);
    if (v69)
    {
      v27 = v69;
    }

    else
    {
      if ((*(a7 + 12) & 1) == 0)
      {
        v27 = 0;
        *a8 = sampleBufferOut;
        sampleBufferOut = 0;
        if (!v25)
        {
          goto LABEL_257;
        }

        goto LABEL_256;
      }

      CMSampleBufferGetPresentationTimeStamp(&sampleTimingArray.presentationTimeStamp, sampleBufferOut);
      *&sampleTimingArray.duration.value = *a7;
      sampleTimingArray.duration.epoch = *(a7 + 16);
      v69 = CMSampleBufferCreateCopyWithNewTiming(v61, sampleBufferOut, 1, &sampleTimingArray, &v81);
      v27 = v69;
      if (!v69)
      {
        *a8 = v81;
        v81 = 0;
        if (!v25)
        {
          goto LABEL_257;
        }

LABEL_256:
        CFRelease(v25);
        goto LABEL_257;
      }
    }
  }

LABEL_275:
  APSLogErrorAt(v69);
  if (v25)
  {
    goto LABEL_256;
  }

LABEL_257:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  return v27;
}

uint64_t hoseSBAR_setPreferencesOnAudioSession(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 704);
  if (v5 || (v9 = DerivedStorage, APSLogErrorAt(0), (v5 = *(v9 + 704)) != 0))
  {
    v6 = *(v5 + 16);
LABEL_3:
    v7 = *(v5 + 44);
    goto LABEL_4;
  }

  APSLogErrorAt(0);
  v5 = *(v9 + 704);
  if (v5)
  {
    v6 = 0.0;
    goto LABEL_3;
  }

  APSLogErrorAt(0);
  v7 = 0;
  v6 = 0.0;
LABEL_4:

  return hoseSBAR_setPreferencesOnAudioSessionSetValues(a1, a2, v7, v6);
}

uint64_t __hoseSBAR_allowAtmosPlayback_block_invoke()
{
  result = MGGetProductType();
  if (result == 1540760353 || result == 4240173202 || result == 2702125347)
  {
    hoseSBAR_allowAtmosPlayback_isAtmosAllowed = 1;
  }

  return result;
}

uint64_t hoseSBAR_updateRTPRolloverStateAssumingIncreasingTransportTimes(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v6 = *(DerivedStorage + 96);
  result = DerivedStorage + 96;
  if (*v6 == 1)
  {
    *v8 = *a2;
    *&v8[12] = *(a2 + 12);
    RTPTimeForTransportTime = hoseSBAR_getRTPTimeForTransportTime(a1, v8, &v9);
    if (v9)
    {
      return hoseSBAR_updateRTPRolloverStateAssumingIncreasingRTPTimes(a1, RTPTimeForTransportTime);
    }

    else
    {
      return APSLogErrorAt(0);
    }
  }

  return result;
}

uint64_t hoseSBAR_getRTPTimeForTransportTime(uint64_t a1, uint64_t a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = (a2 + 4);
  if (*a2 == 1)
  {
    result = *v7;
    v10 = 1;
    if (!a3)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (*a2 != 2)
  {
    goto LABEL_7;
  }

  if ((*(a2 + 16) & 0x1D) != 1 || *(a2 + 20) != 0)
  {
    goto LABEL_7;
  }

  v11 = *(DerivedStorage + 88);
  if (!v11)
  {
    APSLogErrorAt(0);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
LABEL_8:
          v10 = 0;
          if (!a3)
          {
            return result;
          }

          goto LABEL_11;
        }
      }

      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "uint32_t hoseSBAR_getRTPTimeForTransportTime(APSEndpointStreamAudioHoseSBARRef, APSAudioTransportTime, Boolean *)", 33554522, "### [%{ptr}] hoseSBAR_getRTPTimeForTransportTime must not be called when using mixed sample rate stream\n", a1);
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  *&time.value = *v7;
  time.epoch = *(a2 + 20);
  v10 = 1;
  CMTimeConvertScale(&v13, &time, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  result = LODWORD(v13.value);
  if (a3)
  {
LABEL_11:
    *a3 = v10;
  }

  return result;
}

uint64_t hoseSBAR_updateRTPRolloverStateAssumingIncreasingRTPTimes(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = result;
  if (!*(result + 736))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_updateRTPRolloverStateAssumingIncreasingRTPTimes(APSEndpointStreamAudioHoseSBARRef, uint32_t)", 33554482, "[%{ptr}] RTP Rollover Detection: Initial RTP Time: %u\n", a1, a2);
      }
    }

    goto LABEL_18;
  }

  v6 = *(result + 732);
  if (v6 - a2 < 1)
  {
    if (v6 <= a2)
    {
      goto LABEL_18;
    }

    v7 = (*(result + 728) + 1);
    *(result + 728) = v7;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50)
    {
      goto LABEL_18;
    }

    if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_18;
      }

      v7 = *(v5 + 728);
      v6 = *(v5 + 732);
    }

    result = LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_updateRTPRolloverStateAssumingIncreasingRTPTimes(APSEndpointStreamAudioHoseSBARRef, uint32_t)", 33554482, "[%{ptr}] RTP Rollover Detection: Rollover: new count: %d; inRTPTime: %u; lastRTPTimeEncountered: %u\n", a1, v7, a2, v6);
LABEL_18:
    *(v5 + 732) = a2;
    *(v5 + 736) = 1;
    return result;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1)
    {
      return LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_updateRTPRolloverStateAssumingIncreasingRTPTimes(APSEndpointStreamAudioHoseSBARRef, uint32_t)", 33554482, "[%{ptr}] RTP Rollover Detection: Non-increasing RTP Time; last: %u, current: %u\n", a1, v6, a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v6 = *(v5 + 732);
      return LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_updateRTPRolloverStateAssumingIncreasingRTPTimes(APSEndpointStreamAudioHoseSBARRef, uint32_t)", 33554482, "[%{ptr}] RTP Rollover Detection: Non-increasing RTP Time; last: %u, current: %u\n", a1, v6, a2);
    }
  }

  return result;
}

CMTime *hoseSBAR_getMediaTimeForRTPTime(CMTime *a1, uint64_t a2, unsigned int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 88);
  *a1 = **&MEMORY[0x277CC0898];
  if (**(DerivedStorage + 96) == 1)
  {
    if (*(DerivedStorage + 736))
    {
      v8 = *(DerivedStorage + 732);
      v9 = a3 >= v8;
      v10 = a3 - v8;
      v11 = !v9;
      v12 = v10 != 0 && v9;
      v13 = v10 < 1;
      if (v10 < 1)
      {
        v14 = -1;
      }

      else
      {
        v14 = 1;
      }

      if (v13)
      {
        v11 = v12;
      }

      if (!v11)
      {
        v14 = 0;
      }

      v15 = a3 | ((*(DerivedStorage + 728) + v14) << 32);

      return CMTimeMake(a1, v15, v7);
    }

    else
    {
      result = APSLogErrorAt(0);
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90)
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1)
        {
          return LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "CMTime hoseSBAR_getMediaTimeForRTPTime(APSEndpointStreamAudioHoseSBARRef, uint32_t)", 33554522, "### [%{ptr}] RTP Rollover Detection: mediaTimeStartTime Query before rollover state was initialized\n", a2);
        }

        result = _LogCategory_Initialize();
        if (result)
        {
          return LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "CMTime hoseSBAR_getMediaTimeForRTPTime(APSEndpointStreamAudioHoseSBARRef, uint32_t)", 33554522, "### [%{ptr}] RTP Rollover Detection: mediaTimeStartTime Query before rollover state was initialized\n", a2);
        }
      }
    }
  }

  else
  {
    result = APSLogErrorAt(0);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1)
      {
        return LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "CMTime hoseSBAR_getMediaTimeForRTPTime(APSEndpointStreamAudioHoseSBARRef, uint32_t)", 33554522, "### [%{ptr}] hoseSBAR_getMediaTimeForRTPTime must only be called for TransportTimeType RTP\n", a2);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "CMTime hoseSBAR_getMediaTimeForRTPTime(APSEndpointStreamAudioHoseSBARRef, uint32_t)", 33554522, "### [%{ptr}] hoseSBAR_getMediaTimeForRTPTime must only be called for TransportTimeType RTP\n", a2);
      }
    }
  }

  return result;
}

void hoseSBAR_handleSynchronizerTimebaseRateChangedNotification(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    if (CMTimebaseGetRate(*(DerivedStorage + 120)) != 0.0)
    {
      CMTimebaseSetTimerDispatchSourceToFireImmediately(*(v3 + 120), *(v3 + 648));
      if (*(v3 + 420))
      {
        v4 = *(v3 + 120);
        v5 = *(v3 + 680);
        lhs = *(v3 + 408);
        v6 = *(v3 + 232);
        CMTimeSubtract(&fireTime, &lhs, &v6);
        CMTimebaseSetTimerDispatchSourceNextFireTime(v4, v5, &fireTime, 1u);
      }
    }
  }
}

void hoseSBAR_handleSBARUnderrunNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 104) != a4)
  {
    goto LABEL_15;
  }

  if (!a5)
  {
    goto LABEL_15;
  }

  v9 = DerivedStorage;
  v10 = CFGetTypeID(a5);
  if (v10 != CFDictionaryGetTypeID())
  {
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    if ((*(v9 + 816) & 1) == 0)
    {
      FigCFDictionaryGetCMTimeIfPresent();

      hoseSBAR_beginUnderrunIfNeeded(a2);
      return;
    }

    goto LABEL_15;
  }

  if (!FigCFEqual())
  {
    return;
  }

  if ((*(v9 + 816) & 1) == 0)
  {
LABEL_15:

    APSLogErrorAt(0);
    return;
  }

  v11 = MEMORY[0x277CC0898];
  *(v9 + 804) = *MEMORY[0x277CC0898];
  *(v9 + 820) = *(v11 + 16);
  FigCFDictionaryGetCMTimeRangeIfPresent();

  hoseSBAR_endUnderrun(a2);
}

_BYTE *hoseSBAR_beginUnderrunIfNeeded(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if ((result[840] & 1) == 0)
  {
    v3 = result;
    if (result[816] & 1) != 0 && (result[612])
    {
      v4 = result + 828;
      v5 = result + 804;
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_beginUnderrunIfNeeded(APSEndpointStreamAudioHoseSBARRef)", 33554522, "### [%{ptr}] Underrun Began", a1);
      }

      *&v6.value = *v5;
      v6.epoch = *(v3 + 820);
      hoseSBAR_getMediaTimeForSynchronizerTime(&v7, a1, &v6);
      *v4 = *&v7.value;
      *(v3 + 844) = v7.epoch;
      CMNotificationCenterGetDefaultLocalCenter();

      return FigDispatchAsyncPostNotification();
    }
  }

  return result;
}

void hoseSBAR_endUnderrun(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 840))
  {
    v3 = DerivedStorage;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_endUnderrun(APSEndpointStreamAudioHoseRef)", 33554482, "[%{ptr}] Underrun Ended", a1);
    }

    v4 = v3 + 828;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&lhs, HostTimeClock);
    rhs = *(v3 + 504);
    CMTimeSubtract(&time, &lhs, &rhs);
    Seconds = CMTimeGetSeconds(&time);
    v7 = (v3 + 852);
    if (*(v3 + 864) & 1) != 0 && (*(v3 + 888))
    {
      v8 = v3 + 876;
      if (!*(v8 + 16) && (*v8 & 0x8000000000000000) == 0)
      {
        v12 = Seconds;
        v13 = *v8;
        time.epoch = *(v8 + 16);
        *&time.value = v13;
        if (CMTimeGetSeconds(&time) < 5.0 && v12 >= 20.0)
        {
          if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
          {
            v14 = *v8;
            time.epoch = *(v8 + 16);
            *&time.value = v14;
            v15 = CMTimeGetSeconds(&time);
            LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_endUnderrun(APSEndpointStreamAudioHoseRef)", 33554482, "[%{ptr}] Posting underrun notification to WiFi underrunRangeDuration: %1.3f timeSinceLastSetRateOne: %1.3f", a1, *&v15, *&v12);
          }

          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.airplay.bufferedaudiounderrun", 0, 0, 1u);
        }
      }
    }

    v9 = MEMORY[0x277CC0898];
    *v4 = *MEMORY[0x277CC0898];
    *(v4 + 16) = *(v9 + 16);
    v10 = MEMORY[0x277CC08C8];
    v11 = *(MEMORY[0x277CC08C8] + 16);
    *v7 = *MEMORY[0x277CC08C8];
    v7[1] = v11;
    v7[2] = *(v10 + 32);
  }
}

_BYTE *hoseSBAR_handleSBARWasFlushedAutomaticallyAndRebuildCouldBenefitFidelityNotification(uint64_t a1, void *a2, uint64_t a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*result)
  {
    return result;
  }

  v6 = result;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_handleSBARWasFlushedAutomaticallyAndRebuildCouldBenefitFidelityNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] SBAR notification %@, re-enqueuing sbufs from buffer stash\n", a2, a3);
  }

  v7 = *(v6 + 122);
  if (v7)
  {
    CFRelease(v7);
    *(v6 + 122) = 0;
  }

  v8 = *(v6 + 123);
  if (v8)
  {
    CFRelease(v8);
    *(v6 + 123) = 0;
  }

  v9 = *(v6 + 13);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v10)
  {
    v11 = v10(v9);
    if (!v11)
    {
      v6[672] = 0;
      v12 = MEMORY[0x277CC08C8];
      v13 = *(MEMORY[0x277CC08C8] + 16);
      *(v6 + 756) = *MEMORY[0x277CC08C8];
      *(v6 + 772) = v13;
      *(v6 + 788) = *(v12 + 32);
      v11 = hoseSBAR_transferStashedSBufsIntoBuffersForSBAR(a2);
      if (!v11)
      {
        v14 = *(v6 + 15);
        v15 = *(v6 + 81);

        return CMTimebaseSetTimerDispatchSourceToFireImmediately(v14, v15);
      }
    }
  }

  else
  {
    v11 = 4294954514;
  }

  return APSLogErrorAt(v11);
}

uint64_t hoseSBAR_transferStashedSBufsIntoBuffersForSBAR(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBufferQueueReset(*(DerivedStorage + 664));
  if (v3)
  {
    v4 = v3;
    goto LABEL_7;
  }

  v3 = CMBufferQueueCallForEachBuffer(*(DerivedStorage + 656), hoseSBAR_transferStashedSBufsIntoBuffersForSBARCallback, a1);
  if (v3)
  {
    v4 = v3;
    goto LABEL_7;
  }

  v3 = hoseSBAR_fillSBARToHighWater(a1);
  v4 = v3;
  if (v3)
  {
LABEL_7:
    APSLogErrorAt(v3);
  }

  return v4;
}

uint64_t hoseSBAR_transferStashedSBufsIntoBuffersForSBARCallback(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBufferQueueEnqueue(*(DerivedStorage + 664), a1);
  v5 = v4;
  if (v4)
  {
    APSLogErrorAt(v4);
  }

  return v5;
}

_BYTE *hoseSBAR_handleSBARLowWaterNotification(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {

    return hoseSBAR_fillSBARToHighWater(a2);
  }

  return result;
}

uint64_t FigAudioSessionSetMXSessionProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(CMBaseObjectGetVTable() + 16);
  if (!v6)
  {
    return 4294948075;
  }

  v7 = *(v6 + 56);
  if (!v7)
  {
    return 4294948071;
  }

  return v7(a1, a2, a3);
}

__n128 __hoseSBAR_getCallbacksForSampleBuffersSortedByTransportSeqNum_block_invoke()
{
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  getSize_high = HIDWORD(CallbacksForUnsortedSampleBuffers->getSize);
  result = *(&CallbacksForUnsortedSampleBuffers->getDecodeTimeStamp + 4);
  v3 = *(&CallbacksForUnsortedSampleBuffers->compare + 4);
  xmmword_27D00B8A0 = *(&CallbacksForUnsortedSampleBuffers->getDuration + 4);
  unk_27D00B8B0 = v3;
  hoseSBAR_getCallbacksForSampleBuffersSortedByTransportSeqNum_sCallbacks = *&CallbacksForUnsortedSampleBuffers->version;
  *algn_27D00B890 = result;
  dword_27D00B8C0 = getSize_high;
  *(&xmmword_27D00B8A0 + 12) = hoseSBAR_sbufCompareTransportSeqNum;
  return result;
}

uint64_t hoseSBAR_sbufCompareTransportSeqNum(const void *a1, const void *a2)
{
  CMGetAttachment(a1, @"HoseSBARTransportSeqNum", 0);
  UInt32 = FigCFNumberGetUInt32();
  CMGetAttachment(a2, @"HoseSBARTransportSeqNum", 0);
  v4 = FigCFNumberGetUInt32();
  v5 = ((v4 ^ UInt32) & 0xFFFFFF) != 0;
  if (((((v4 - UInt32) & 0x800000) == 0) & v5) != 0)
  {
    return -1;
  }

  else
  {
    return *&v5 & ((v4 - UInt32) >> 23);
  }
}

uint64_t hoseSBAR_decodeRTPData(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  totalLengthOut = 0;
  theBuffer = 0;
  v30 = 0;
  dataPointerOut = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  dataLength = 0;
  blockBufferOut = 0;
  v8 = *MEMORY[0x277CBECE8];
  if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
  {
    dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
  }

  ContiguousCopy = APSCMBlockBufferCreateContiguousCopy(v8, APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator, a2, &theBuffer);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
    goto LABEL_15;
  }

  ContiguousCopy = CMBlockBufferGetDataPointer(theBuffer, 0, 0, &totalLengthOut, &dataPointerOut);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
    goto LABEL_15;
  }

  ContiguousCopy = APSTransportMessageGetAudioDataPointer(theBuffer, &v28, &dataLength);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 72))
  {
    ContiguousCopy = APSTransportMessageGetAudioAADPointer(theBuffer, &v30, &v29);
    if (ContiguousCopy)
    {
      v18 = ContiguousCopy;
      goto LABEL_15;
    }

    v10 = *(DerivedStorage + 72);
    v12 = v29;
    v11 = v30;
    v14 = dataLength;
    v13 = v28;
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v15)
    {
      v16 = v15(v10, v11, v12, v13, v14, v13, v14, &v26);
      if (!v16)
      {
        v17 = v26;
        if (!v26)
        {
          goto LABEL_11;
        }

LABEL_17:
        ContiguousCopy = CMBlockBufferCreateWithBufferReference(v8, theBuffer, v28 - dataPointerOut, v17, 1u, &blockBufferOut);
        if (ContiguousCopy)
        {
          v18 = ContiguousCopy;
          goto LABEL_15;
        }

        goto LABEL_18;
      }

      v18 = v16;
    }

    else
    {
      v18 = 4294954514;
    }

    ContiguousCopy = v18;
    goto LABEL_15;
  }

  v17 = dataLength;
  v26 = dataLength;
  if (dataLength)
  {
    goto LABEL_17;
  }

LABEL_11:
  ContiguousCopy = CMBlockBufferCreateEmpty(v8, 0, 1u, &blockBufferOut);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
LABEL_15:
    APSLogErrorAt(ContiguousCopy);
    goto LABEL_27;
  }

LABEL_18:
  if (a3)
  {
    v19 = blockBufferOut;
    if (blockBufferOut)
    {
      v19 = CFRetain(blockBufferOut);
    }

    *a3 = v19;
  }

  if (a4)
  {
    v20 = *(DerivedStorage + 80);
    if (v20)
    {
      v20 = *(v20 + 64);
    }

    v18 = 0;
    *a4 = v20;
    *(a4 + 16) = 0;
    *(a4 + 160) = 0;
    v21 = MEMORY[0x277CC0898];
    v22 = *MEMORY[0x277CC0898];
    *(a4 + 24) = *MEMORY[0x277CC0898];
    v23 = *(v21 + 16);
    *(a4 + 40) = v23;
    *(a4 + 48) = v22;
    *(a4 + 64) = v23;
  }

  else
  {
    v18 = 0;
  }

LABEL_27:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v18;
}

uint64_t hoseSBAR_decodeRTPHeader(int a1, OpaqueCMBlockBuffer *a2, uint64_t a3, _DWORD *a4)
{
  v12 = 0;
  destination = 0;
  AudioDataTimestamp = APSTransportMessageGetAudioDataTimestamp(a2, &v12);
  if (AudioDataTimestamp)
  {
    v9 = AudioDataTimestamp;
LABEL_10:
    APSLogErrorAt(AudioDataTimestamp);
    return v9;
  }

  AudioDataTimestamp = APSTransportMessageGetAudioDataSequenceNumber(a2, &destination);
  if (AudioDataTimestamp)
  {
    v9 = AudioDataTimestamp;
    goto LABEL_10;
  }

  if (a3)
  {
    v8 = v12;
    *a3 = 1;
    *(a3 + 4) = v8;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  v9 = 0;
  if (a4)
  {
    *a4 = destination;
  }

  return v9;
}

uint64_t hoseSBAR_decodeAPAPData(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DataLength = CMBlockBufferGetDataLength(a2);
  v32 = 0;
  blockBufferOut = 0;
  v21 = a1;
  v22 = 0uLL;
  v23 = 0;
  v24 = *MEMORY[0x277CC0898];
  v25 = *(MEMORY[0x277CC0898] + 16);
  v26 = v24;
  v27 = v25;
  memset(cf, 0, sizeof(cf));
  *(&cf[9] + 4) = v25;
  *(&cf[7] + 4) = v24;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v10 = *MEMORY[0x277CBECE8];
  if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
  {
    dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
  }

  v11 = CMBlockBufferCreateWithMemoryBlock(v10, 0, DataLength, APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator, 0, 0, DataLength, 1u, &blockBufferOut);
  if (v11)
  {
    v19 = v11;
LABEL_35:
    APSLogErrorAt(v11);
    goto LABEL_20;
  }

  v11 = APSAPAPBBufDecode(v10, a2, blockBufferOut, *(DerivedStorage + 72), 0, 0, hoseSBAR_decodeAPAPExtensionItem, &v21, &v32);
  if (v11)
  {
    v19 = v11;
    goto LABEL_35;
  }

  if (a3)
  {
    v12 = v32;
    if (v32)
    {
      v12 = CFRetain(v32);
    }

    *a3 = v12;
  }

  if (a4)
  {
    *a4 = v22;
    v13 = cf[0];
    *(a4 + 16) = v23;
    *(a4 + 24) = v24;
    *(a4 + 40) = v25;
    *(a4 + 48) = v26;
    *(a4 + 64) = v27;
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    *(a4 + 72) = v13;
    v14 = *&cf[3];
    *(a4 + 80) = *&cf[1];
    *(a4 + 96) = v14;
    v15 = cf[5];
    if (cf[5])
    {
      v15 = CFRetain(cf[5]);
    }

    v16 = cf[6];
    *(a4 + 112) = v15;
    *(a4 + 120) = v16;
    *(a4 + 128) = cf[7];
    *(a4 + 132) = *(&cf[7] + 4);
    *(a4 + 148) = *(&cf[9] + 4);
    v17 = v30;
    *(a4 + 160) = v29;
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *(a4 + 168) = v17;
    v18 = v31;
    if (v31)
    {
      v18 = CFRetain(v31);
    }

    v19 = 0;
    *(a4 + 176) = v18;
  }

  else
  {
    v19 = 0;
  }

LABEL_20:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (cf[5])
  {
    CFRelease(cf[5]);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v19;
}

uint64_t hoseSBAR_decodeAPAPExtensionItem(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  switch(a1)
  {
    case 2:
      v8 = DerivedStorage;
      v24.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v24);
      v7 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      value = v24.value;
      if (!v24.value)
      {
        value = *(v8 + 704);
        if (value)
        {
          value = *(value + 64);
        }
      }

      *(a3 + 8) = value;
      return v7;
    case 3:
      v24.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v24);
      v7 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      *(a3 + 24) = v24.value;
      return v7;
    case 4:
      v26 = 0;
      destination = 0;
      BigUIntAsUInt64 = CMBlockBufferCopyDataBytes(a2, 0, 0xCuLL, &destination);
      if (BigUIntAsUInt64)
      {
        v7 = BigUIntAsUInt64;
        goto LABEL_65;
      }

      CMTimeMake(&v24, bswap64(destination), bswap32(v26));
      v27 = v24.value;
      flags = v24.flags;
      timescale = v24.timescale;
      if ((v24.flags & 1) == 0)
      {
        goto LABEL_66;
      }

      v7 = 0;
      epoch = v24.epoch;
      *(a3 + 32) = v27;
      *(a3 + 40) = timescale;
      *(a3 + 44) = flags;
      *(a3 + 48) = epoch;
      return v7;
    case 5:
      v26 = 0;
      destination = 0;
      BigUIntAsUInt64 = CMBlockBufferCopyDataBytes(a2, 0, 0xCuLL, &destination);
      if (BigUIntAsUInt64)
      {
        v7 = BigUIntAsUInt64;
        goto LABEL_65;
      }

      CMTimeMake(&v24, bswap64(destination), bswap32(v26));
      v27 = v24.value;
      v13 = v24.flags;
      timescale = v24.timescale;
      if ((v24.flags & 1) == 0)
      {
        goto LABEL_66;
      }

      v7 = 0;
      v14 = v24.epoch;
      *(a3 + 56) = v27;
      *(a3 + 64) = timescale;
      *(a3 + 68) = v13;
      *(a3 + 72) = v14;
      return v7;
    case 7:
      v24.value = 0;
      BigUIntAsUInt64 = APSAPAPExtensionConvertSoundCheckInfoBBufAndMergeIntoLoudnessInfoDict(a2, *(a3 + 80), &v24);
      v7 = BigUIntAsUInt64;
      if (!BigUIntAsUInt64)
      {
        goto LABEL_42;
      }

      goto LABEL_65;
    case 8:
      v24.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v24);
      v7 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      *(a3 + 88) = v24.value;
      return v7;
    case 9:
      v24.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferCopyAsUUID(a2, &v24);
      v7 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      v17 = *(a3 + 120);
      if (v17)
      {
        CFRelease(v17);
      }

      *(a3 + 120) = v24.value;
      return v7;
    case 10:
      v24.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v24);
      v7 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      *(a3 + 128) = v24.value;
      *(a3 + 136) = 1;
      return v7;
    case 11:
      v24.value = 0;
      BigUIntAsUInt64 = APSAPAPExtensionConvertLoudnessParametersBBufAndMergeIntoLoudnessInfoDict(a2, *(a3 + 80), &v24);
      v7 = BigUIntAsUInt64;
      if (!BigUIntAsUInt64)
      {
        goto LABEL_42;
      }

      goto LABEL_65;
    case 12:
      v24.value = 0;
      BigUIntAsUInt64 = APSAPAPExtensionConvertMediaKindBBufAndMergeIntoLoudnessInfoDict(a2, *(a3 + 80), &v24);
      v7 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

LABEL_42:
      v21 = *(a3 + 80);
      if (v21)
      {
        CFRelease(v21);
      }

      *(a3 + 80) = v24.value;
      return v7;
    case 13:
      v26 = 0;
      destination = 0;
      BigUIntAsUInt64 = CMBlockBufferCopyDataBytes(a2, 0, 0xCuLL, &destination);
      if (BigUIntAsUInt64)
      {
        v7 = BigUIntAsUInt64;
        goto LABEL_65;
      }

      CMTimeMake(&v24, bswap64(destination), bswap32(v26));
      v27 = v24.value;
      v11 = v24.flags;
      timescale = v24.timescale;
      if (v24.flags)
      {
        v7 = 0;
        v12 = v24.epoch;
        *(a3 + 140) = v27;
        *(a3 + 148) = timescale;
        *(a3 + 152) = v11;
        *(a3 + 156) = v12;
      }

      else
      {
LABEL_66:
        APSLogErrorAt(0);
        v7 = 4294960559;
      }

      break;
    case 14:
      v24.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v24);
      v7 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      *(a3 + 96) = v24.value;
      return v7;
    case 15:
      v24.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v24);
      v7 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      *(a3 + 104) = v24.value;
      return v7;
    case 16:
      v24.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v24);
      v7 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      *(a3 + 112) = v24.value;
      return v7;
    case 17:
      v24.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v24);
      v7 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      *(a3 + 168) = v24.value;
      return v7;
    case 18:
      DataLength = CMBlockBufferGetDataLength(a2);
      v19 = malloc_type_calloc(1uLL, DataLength, 0x100004077774924uLL);
      BigUIntAsUInt64 = CMBlockBufferCopyDataBytes(a2, 0, DataLength, v19);
      if (BigUIntAsUInt64)
      {
        v7 = BigUIntAsUInt64;
LABEL_65:
        APSLogErrorAt(BigUIntAsUInt64);
      }

      else
      {
        v20 = CFDataCreate(*MEMORY[0x277CBECE8], v19, DataLength);
        if (v20)
        {
          *(a3 + 176) = v20;
          free(v19);
          v7 = 0;
        }

        else
        {
          APSLogErrorAt(0);
          v7 = 4294960587;
        }
      }

      break;
    case 19:
      v24.value = 0;
      BigUIntAsUInt64 = APSAPAPExtensionConvertSbufTracerBBufToSbufTracerDict(a2, &v24);
      v7 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      v22 = *(a3 + 184);
      if (v22)
      {
        CFRelease(v22);
      }

      *(a3 + 184) = v24.value;
      return v7;
    case 20:
      v24.value = 0;
      BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a2, &v24);
      v7 = BigUIntAsUInt64;
      if (BigUIntAsUInt64)
      {
        goto LABEL_65;
      }

      *(a3 + 16) = v24.value;
      return v7;
    default:
      return v7;
  }

  return v7;
}

uint64_t hoseSBAR_decodeAPAPHeader(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277CC0898];
  v14 = *(MEMORY[0x277CC0898] + 16);
  v12 = 0;
  v6 = APSAPAPBBufDecodeHeader(a2, &v13, &v12);
  v7 = v6;
  if (v6)
  {
    APSLogErrorAt(v6);
  }

  else
  {
    if (a3)
    {
      v8 = HIDWORD(v13);
      if ((BYTE12(v13) & 0x1D) == 1 && v14 == 0)
      {
        v15 = v13;
        v16 = DWORD2(v13);
        v10 = 2;
      }

      else
      {
        v8 = 0;
        v10 = 0;
        v16 = 0;
        v15 = 0;
      }

      *a3 = v10;
      *(a3 + 4) = v15;
      *(a3 + 12) = v16;
      *(a3 + 16) = v8;
      *(a3 + 20) = 0;
    }

    if (a4)
    {
      *a4 = v12;
    }
  }

  return v7;
}

uint64_t hoseSBAR_decodeBufferedRTPData(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  totalLengthOut = 0;
  theBuffer = 0;
  v28 = 0;
  dataPointerOut = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  dataLength = 0;
  blockBufferOut = 0;
  destination = 0;
  v8 = *MEMORY[0x277CBECE8];
  if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
  {
    dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
  }

  ContiguousCopy = APSCMBlockBufferCreateContiguousCopy(v8, APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator, a2, &theBuffer);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
    goto LABEL_15;
  }

  ContiguousCopy = CMBlockBufferGetDataPointer(theBuffer, 0, 0, &totalLengthOut, &dataPointerOut);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
    goto LABEL_15;
  }

  ContiguousCopy = APSTransportMessageGetBufferedAudioDataPointer(theBuffer, &v26, &dataLength);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 72))
  {
    ContiguousCopy = APSTransportMessageGetBufferedAudioAADPointer(theBuffer, &v28, &v27);
    if (ContiguousCopy)
    {
      v18 = ContiguousCopy;
      goto LABEL_15;
    }

    v10 = *(DerivedStorage + 72);
    v12 = v27;
    v11 = v28;
    v14 = dataLength;
    v13 = v26;
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v15)
    {
      v16 = v15(v10, v11, v12, v13, v14, v13, v14, &v24);
      if (!v16)
      {
        v17 = v24;
        if (!v24)
        {
          goto LABEL_11;
        }

LABEL_17:
        ContiguousCopy = CMBlockBufferCreateWithBufferReference(v8, theBuffer, v26 - dataPointerOut, v17, 1u, &blockBufferOut);
        if (ContiguousCopy)
        {
          v18 = ContiguousCopy;
          goto LABEL_15;
        }

        goto LABEL_18;
      }

      v18 = v16;
    }

    else
    {
      v18 = 4294954514;
    }

    ContiguousCopy = v18;
    goto LABEL_15;
  }

  v17 = dataLength;
  v24 = dataLength;
  if (dataLength)
  {
    goto LABEL_17;
  }

LABEL_11:
  ContiguousCopy = CMBlockBufferCreateEmpty(v8, 0, 1u, &blockBufferOut);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
LABEL_15:
    APSLogErrorAt(ContiguousCopy);
    goto LABEL_29;
  }

LABEL_18:
  ContiguousCopy = APSTransportMessageGetBufferedAudioDataFormatIndex(a2, &destination);
  if (ContiguousCopy)
  {
    v18 = ContiguousCopy;
    goto LABEL_15;
  }

  if (a3)
  {
    v19 = blockBufferOut;
    if (blockBufferOut)
    {
      v19 = CFRetain(blockBufferOut);
    }

    *a3 = v19;
  }

  if (a4)
  {
    v20 = destination;
    if (!destination)
    {
      v20 = *(DerivedStorage + 80);
      if (v20)
      {
        v20 = *(v20 + 64);
      }
    }

    v18 = 0;
    *a4 = v20;
    a4[2] = 0;
    a4[20] = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_29:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v18;
}

uint64_t hoseSBAR_decodeBufferedRTPHeader(int a1, OpaqueCMBlockBuffer *a2, uint64_t a3, _DWORD *a4)
{
  destination = 0;
  BufferedAudioDataTimestamp = APSTransportMessageGetBufferedAudioDataTimestamp(a2, &destination + 1);
  if (BufferedAudioDataTimestamp)
  {
    v9 = BufferedAudioDataTimestamp;
LABEL_10:
    APSLogErrorAt(BufferedAudioDataTimestamp);
    return v9;
  }

  BufferedAudioDataTimestamp = APSTransportMessageGetBufferedAudioDataExtendedSequenceNumber(a2, &destination);
  if (BufferedAudioDataTimestamp)
  {
    v9 = BufferedAudioDataTimestamp;
    goto LABEL_10;
  }

  if (a3)
  {
    v8 = HIDWORD(destination);
    *a3 = 1;
    *(a3 + 4) = v8;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  v9 = 0;
  if (a4)
  {
    *a4 = destination;
  }

  return v9;
}

uint64_t hoseSBAR_GetLastSentMediaTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 324);
    *(a2 + 16) = *(v4 + 340);
    *a2 = v5;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294894965;
  }
}

uint64_t hoseSBAR_SetLastSentMediaTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(a2 + 16);
  *(DerivedStorage + 324) = *a2;
  *(DerivedStorage + 340) = v4;
  FigSimpleMutexUnlock();
  return 0;
}

__CFString *hoseSBAR_protocolDriverHoseDataBaseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APSEndpointStreamAudioHoseSBAR <APSAudioProtocolDriverHoseDataBaseProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t hoseSBAR_audioHoseSetMagicCookie(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseSetMagicCookie(APSEndpointStreamAudioHoseRef, uint64_t, CFDataRef, APSEndpointStreamAudioHoseSetMagicCookieCompletionHandler, void *)", 33554482, "[%{ptr}] Set Magic Cookie [%{ptr}] with magicCookieID: 0x%llx", a1, a3, a2);
  }

  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  v14[0] = v11;
  v14[1] = a2;
  if (a3)
  {
    v12 = CFRetain(a3);
  }

  else
  {
    v12 = 0;
  }

  v14[2] = v12;
  v14[3] = a4;
  v14[4] = a5;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseSetMagicCookieCallbackDispatchInternal, v14, 0x28uLL);
  return 0;
}

void hoseSBAR_audioHoseSetMagicCookieCallbackDispatchInternal(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    v6 = DerivedStorage;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseSetMagicCookieCallbackInternal(APSEndpointStreamAudioHoseSBARRef, uint64_t, CFDataRef)", 33554482, "[%{ptr}] Storing magic cookie [%{ptr}] with magicCookieID 0x%llx", v3, v4, v2);
    }

    Int64 = CFNumberCreateInt64();
    if (Int64)
    {
      v8 = Int64;
      CFDictionarySetValue(*(v6 + 952), Int64, v4);
      CFRelease(v8);
      v9 = 0;
    }

    else
    {
      APSLogErrorAt(0);
      v9 = 4294894966;
    }
  }

  else
  {
    v9 = 4294894965;
    APSLogErrorAt(0);
  }

  v10 = a1[3];
  if (v10)
  {
    v10(*a1, a1[1], v9, a1[4]);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v11 = a1[2];
  if (v11)
  {

    CFRelease(v11);
  }
}

uint64_t hoseSBAR_audioHoseSetCryptor(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseSetCryptor(APSEndpointStreamAudioHoseRef, uint64_t, FigCPECryptorRef, APSEndpointStreamAudioHoseSetCryptorCompletionHandler, void *)", 33554482, "[%{ptr}] Set Cryptor [%{ptr}] with cryptorID: 0x%llx", a1, a3, a2);
  }

  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  v14[0] = v11;
  v14[1] = a2;
  if (a3)
  {
    v12 = CFRetain(a3);
  }

  else
  {
    v12 = 0;
  }

  v14[2] = v12;
  v14[3] = a4;
  v14[4] = a5;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseSetCryptorCallbackDispatchInternal, v14, 0x28uLL);
  return 0;
}

void hoseSBAR_audioHoseSetCryptorCallbackDispatchInternal(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    v6 = DerivedStorage;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseSetCryptorCallbackInternal(APSEndpointStreamAudioHoseSBARRef, uint64_t, FigCPECryptorRef)", 33554482, "[%{ptr}] Storing cryptor [%{ptr}] with cryptorID 0x%llx", v3, v4, v2);
    }

    Int64 = CFNumberCreateInt64();
    if (Int64)
    {
      v8 = Int64;
      CFDictionarySetValue(*(v6 + 928), Int64, v4);
      CFRelease(v8);
      v9 = 0;
    }

    else
    {
      APSLogErrorAt(0);
      v9 = 4294894966;
    }
  }

  else
  {
    v9 = 4294894965;
    APSLogErrorAt(0);
  }

  v10 = a1[3];
  if (v10)
  {
    v10(*a1, a1[1], v9, a1[4]);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v11 = a1[2];
  if (v11)
  {

    CFRelease(v11);
  }
}

uint64_t hoseSBAR_audioHoseGetAnchor(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseGetAnchor(APSEndpointStreamAudioHoseRef, uint32_t, APSEndpointStreamAudioHoseSetRateCompletionHandler, void *)", 33554482, "[%{ptr}] Get Anchor: %u", a1, a2);
  }

  if (a1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  LODWORD(v12) = a2;
  v13 = a3;
  v14 = a4;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseGetAnchorCallbackDispatchInternal, &v11, 0x38uLL);
  return 0;
}

void hoseSBAR_audioHoseGetAnchorCallbackDispatchInternal(uint64_t a1)
{
  memset(v29, 0, 28);
  *&v28.value = kAPSNetworkTimeInvalid;
  v28.epoch = 0x100000000;
  v2 = *a1;
  v3 = *(a1 + 8);
  memset(v35, 0, sizeof(v35));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v34 = 0;
  v33 = **&MEMORY[0x277CC0898];
  v32 = v33;
  *&v31.value = kAPSNetworkTimeInvalid;
  v31.epoch = 0x100000000;
  if (v3 != 1)
  {
    v8 = 4294894965;
    goto LABEL_8;
  }

  v5 = DerivedStorage;
  epoch = DerivedStorage[2].epoch;
  time = DerivedStorage[22];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    v8 = 4294954514;
    goto LABEL_4;
  }

  v12 = v5 + 22;
  hostTime = time;
  v13 = v7(epoch, &hostTime, &v34);
  if (v13 != -71976)
  {
    v8 = v13;
    if (v13)
    {
      goto LABEL_4;
    }

    v14 = *v5[4].value;
    hostTime = v5[24];
    hoseSBAR_getTransportTimeForMediaTime(v35, v2, &hostTime, v14);
    if (*v35 == 1 || *v35 == 2 && (v35[16] & 0x1D) == 1 && !*&v35[20])
    {
      hostTime = *v12;
LABEL_16:
      v8 = 0;
      v29[0] = *v35;
      *(v29 + 12) = *&v35[12];
      v28 = hostTime;
      goto LABEL_4;
    }

    v8 = 4294894965;
LABEL_8:
    APSLogErrorAt(0);
    goto LABEL_4;
  }

  CMTimebaseGetTime(&hostTime, v5[5].value);
  hoseSBAR_getMediaTimeForSynchronizerTime(&v33, v2, &hostTime);
  v15 = v5[4].epoch;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v16)
  {
    v8 = 4294954514;
LABEL_25:
    APSLogErrorAt(v8);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseGetAnchorCallbackInternal(APSEndpointStreamAudioHoseSBARRef, uint32_t, APSAudioTransportTime *, APSNetworkTime *)", 33554522, "[%{ptr}] FigSampleBufferRenderSynchronizerConvertTime failed, err %d\n", v2, v8);
    }

    goto LABEL_4;
  }

  hostTime = v33;
  v17 = v16(v15, 1831681640, &hostTime, &v32);
  if (v17)
  {
    v8 = v17;
    goto LABEL_25;
  }

  v18 = v5[2].epoch;
  hostTime = v32;
  v19 = CMClockConvertHostTimeToSystemUnits(&hostTime);
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v20)
  {
    v21 = v20(v18, v19, &v31);
    if (!v21)
    {
      v22 = *v5[4].value;
      hostTime = v33;
      hoseSBAR_getTransportTimeForMediaTime(v35, v2, &hostTime, v22);
      v23 = *&v31.value;
      hostTime = v31;
      v24 = v31.epoch;
      v5[24] = v33;
      v5[23] = v32;
      v5[22].epoch = v24;
      *&v12->value = v23;
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        v25 = SLODWORD(v5[22].epoch) + *&v5[22].timescale * 5.42101086e-20;
        time = v5[23];
        Seconds = CMTimeGetSeconds(&time);
        time = v5[24];
        v27 = CMTimeGetSeconds(&time);
        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseGetAnchorCallbackInternal(APSEndpointStreamAudioHoseSBARRef, uint32_t, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "[%{ptr}] Updated anchor data: net: %1.6f; host: %1.6f; media: %1.6f ", v2, *&v25, *&Seconds, *&v27);
      }

      goto LABEL_16;
    }

    v8 = v21;
  }

  else
  {
    v8 = 4294954514;
  }

  APSLogErrorAt(v8);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseGetAnchorCallbackInternal(APSEndpointStreamAudioHoseSBARRef, uint32_t, APSAudioTransportTime *, APSNetworkTime *)", 33554522, "[%{ptr}] ConvertUpTicksToNetworkTime failed, err %d\n", v2, v8);
  }

LABEL_4:
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *a1;
    v11 = *(a1 + 24);
    *v35 = v29[0];
    *&v35[12] = *(v29 + 12);
    hostTime = v28;
    v9(v10, v35, &hostTime, v8, v11);
  }

  CFRelease(*a1);
}

CMTime *hoseSBAR_getTransportTimeForMediaTime(CMTime *result, uint64_t a2, uint64_t a3, int a4)
{
  result->value = 0;
  *&result->timescale = 0;
  LODWORD(result[1].value) = 0;
  result->epoch = 0;
  v4 = *(a3 + 12);
  if (v4)
  {
    v5 = result;
    if (a4 == 2)
    {
      if ((*(a3 + 12) & 0x1D) == 1 && !*(a3 + 16))
      {
        LODWORD(result->value) = 2;
        *(&result->value + 4) = *a3;
        result->flags = *(a3 + 8);
        LODWORD(result->epoch) = v4;
        *(&result->epoch + 4) = 0;
      }

      else
      {
        result->value = 0;
        *&result->timescale = 0;
        LODWORD(result[1].value) = 0;
        result->epoch = 0;
      }
    }

    else if (a4 == 1)
    {
      *&v10.value = *a3;
      v10.epoch = *(a3 + 16);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (**(DerivedStorage + 96) == 1)
      {
        v8 = *(DerivedStorage + 88);
        time = v10;
        result = CMTimeConvertScale(&v12, &time, v8, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        if (v12.flags)
        {
          value = v12.value;
          *&v5->timescale = 0;
          v5->epoch = 0;
          LODWORD(v5[1].value) = 0;
          LODWORD(v5->value) = 1;
          HIDWORD(v5->value) = value;
          return result;
        }
      }

      else
      {
        APSLogErrorAt(0);
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "uint32_t hoseSBAR_getRTPTimeForMediaTime(APSEndpointStreamAudioHoseSBARRef, CMTime, Boolean *)", 33554522, "### [%{ptr}] hoseSBAR_getRTPTimeForMediaTime must only be called for TransportTimeType RTP\n", a2);
        }
      }

      return APSLogErrorAt(0);
    }
  }

  return result;
}

uint64_t hoseSBAR_protocolDriverHoseSetRate(const void *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v6[0] = *a3;
  *(v6 + 12) = *(a3 + 12);
  hoseSBAR_audioHoseSetRate(a1, a2, v6, a4, a5);
  return 0;
}

uint64_t hoseSBAR_audioHoseSetRate(const void *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseSetRate(APSEndpointStreamAudioHoseRef, uint32_t, APSAudioTransportTime, APSEndpointStreamAudioHoseSetRateCompletionHandler, void *)", 33554482, "[%{ptr}] Set Rate and get anchor: %u", a1, a2);
  }

  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  v13 = v11;
  v14 = a2;
  *v15 = *a3;
  *&v15[12] = *(a3 + 12);
  v16 = a4;
  v17 = a5;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseSetRateCallbackDispatchInternal, &v13, 0x38uLL);
  return 0;
}

void hoseSBAR_audioHoseSetRateCallbackDispatchInternal(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v14[0] = *(a1 + 12);
  *(v14 + 12) = *(a1 + 24);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (v3 == 1)
  {
    if (*(DerivedStorage + 588))
    {
      v7 = 4294894965;
      v6 = 0;
    }

    else
    {
      *v15 = v14[0];
      *&v15[12] = *(v14 + 12);
      v6 = hoseSBAR_audioHosePrepareRTPTimestampsAndTransferBufferForSBAR(v2, v15, &kAPSNetworkTimeInvalid, MEMORY[0x277CC0898], &kAPSAudioTransportTime_Invalid);
      v7 = v6;
      if (!v6)
      {
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(v15, HostTimeClock);
        *(v5 + 504) = *v15;
        *(v5 + 520) = *&v15[16];
        goto LABEL_5;
      }
    }
  }

  else
  {
    v7 = 4294894965;
    v6 = 0;
  }

  APSLogErrorAt(v6);
LABEL_5:
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *a1;
    v11 = *(a1 + 48);
    *v15 = v14[0];
    *&v15[12] = *(v14 + 12);
    v12 = *(v5 + 528);
    v13 = *(v5 + 544);
    v9(v10, v15, &v12, v7, v11);
  }

  CFRelease(*a1);
}

uint64_t hoseSBAR_audioHosePrepareRTPTimestampsAndTransferBufferForSBAR(void *a1, _OWORD *a2, __int128 *a3, CMTime *a4, _OWORD *a5)
{
  v70 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v63.value = *MEMORY[0x277CC0898];
  v11 = *(MEMORY[0x277CC0898] + 16);
  v63.epoch = v11;
  v61 = *&v63.value;
  v62 = v11;
  v56 = *&v63.value;
  v59 = kAPSNetworkTimeInvalid;
  v60 = 0x100000000;
  *&v58.value = *&v63.value;
  v58.epoch = v11;
  *hostTime = *a2;
  *&hostTime[12] = *(a2 + 12);
  hoseSBAR_updateRTPRolloverStateAssumingIncreasingTransportTimes(a1, hostTime);
  *hostTime = *a2;
  *&hostTime[12] = *(a2 + 12);
  hoseSBAR_getMediaTimeForTransportTime(&lhs, a1, hostTime);
  value = lhs.value;
  flags = lhs.flags;
  timescale = lhs.timescale;
  epoch = lhs.epoch;
  *hostTime = *a5;
  *&hostTime[12] = *(a5 + 12);
  hoseSBAR_getMediaTimeForTransportTime(&lhs, a1, hostTime);
  v66 = lhs.value;
  v67 = lhs.timescale;
  if ((flags & 1) == 0)
  {
    v48 = 4294894965;
    APSLogErrorAt(0);
    *hostTime = *a2;
    *&hostTime[12] = *(a2 + 12);
    v49 = APSAudioTransportTimeCopyDebugDesc(hostTime);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHosePrepareRTPTimestampsAndTransferBufferForSBAR(APSEndpointStreamAudioHoseSBARRef, APSAudioTransportTime, APSNetworkTime, CMTime, APSAudioTransportTime)", 33554482, "### [%{ptr}] SetRate: Invalid SynchronizerTime from transportTime=%@\n", a1, v49);
    }

LABEL_57:
    v50 = CMBaseObjectGetDerivedStorage();
    v51 = hoseSBAR_stopTheSynchronizer(a1);
    if (!v51)
    {
      v52 = *(v50 + 104);
      v53 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v53)
      {
        v51 = v53(v52);
        if (!v51)
        {
          *(v50 + 600) = v56;
          *(v50 + 616) = v11;
          *(v50 + 544) = 0x100000000;
          *(v50 + 528) = kAPSNetworkTimeInvalid;
          *(v50 + 552) = v56;
          *(v50 + 568) = v11;
          *(v50 + 592) = v11;
          *(v50 + 576) = v56;
          *(v50 + 640) = v11;
          *(v50 + 624) = v56;
          v51 = hoseSBAR_transferStashedSBufsIntoBuffersForSBAR(a1);
          if (!v51)
          {
            if (!v49)
            {
              return v48;
            }

LABEL_62:
            CFRelease(v49);
            return v48;
          }
        }
      }

      else
      {
        v51 = 4294954514;
      }
    }

    APSLogErrorAt(v51);
    if (!v49)
    {
      return v48;
    }

    goto LABEL_62;
  }

  v14 = lhs.flags;
  v15 = lhs.epoch;
  *(DerivedStorage + 624) = v66;
  *(DerivedStorage + 632) = v67;
  *(DerivedStorage + 636) = v14;
  *(DerivedStorage + 640) = v15;
  *hostTime = *a5;
  *&hostTime[12] = *(a5 + 12);
  hoseSBAR_updateRTPRolloverStateOnFlushFromTransportTime(a1, hostTime);
  v16 = CMBaseObjectGetDerivedStorage();
  memset(hostTime, 0, 24);
  CMTimeMake(hostTime, 30, 1000);
  if (*(v16 + 900))
  {
    *&hostTime[16] = *(v16 + 920);
    *hostTime = *(v16 + 904);
  }

  lhs.value = value;
  lhs.timescale = timescale;
  lhs.flags = flags;
  lhs.epoch = epoch;
  rhs = *hostTime;
  v17 = hoseSBAR_setVolumeFadeInCurve(a1, &lhs, &rhs);
  if (v17)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90)
    {
      v18 = v17;
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_audioHoseApplyFadeInVolume(APSEndpointStreamAudioHoseRef, CMTime)", 33554522, "[%{ptr}] Failed to apply fade-in volume curve, error: %#m", a1, v18);
      }
    }
  }

  else if (*(v16 + 900))
  {
    v19 = *(v16 + 256);
    lhs = *(v16 + 904);
    v20 = hoseSBAR_postNotifyStyleAudioFadeAppliedForAirPlayPlayback(a1, "com.apple.mediaexperience.fadeinappliedforplaybackhandoff", v19, &lhs);
    if (v20)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90)
      {
        v21 = v20;
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_audioHoseApplyFadeInVolume(APSEndpointStreamAudioHoseRef, CMTime)", 33554522, "[%{ptr}] Failed to post volume fade-in notification, error: %#m", a1, v21);
        }
      }
    }
  }

  v22 = *a3;
  *(DerivedStorage + 544) = *(a3 + 2);
  *(DerivedStorage + 528) = v22;
  v23 = (DerivedStorage + 552);
  v24 = *&a4->value;
  *(DerivedStorage + 568) = a4->epoch;
  *(DerivedStorage + 552) = v24;
  *(DerivedStorage + 576) = value;
  *(DerivedStorage + 584) = timescale;
  *(DerivedStorage + 588) = flags;
  *(DerivedStorage + 592) = epoch;
  if (*(DerivedStorage + 129) && *(DerivedStorage + 128))
  {
    started = hoseSBAR_transferStashedSBufsIntoBuffersForSBAR(a1);
    if (started)
    {
      v48 = started;
      goto LABEL_78;
    }

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  started = hoseSBAR_startTheSynchronizerIfNecessary(a1, 0);
  if (started)
  {
    v48 = started;
LABEL_78:
    APSLogErrorAt(started);
LABEL_56:
    v49 = 0;
    goto LABEL_57;
  }

  v27 = (DerivedStorage + 576);
  v28 = *(DerivedStorage + 112);
  if ((*(DerivedStorage + 564) & 1) == 0)
  {
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v29)
    {
      v55 = v26;
      *hostTime = value;
      *&hostTime[8] = timescale;
      *&hostTime[12] = flags;
      *&hostTime[16] = epoch;
      v30 = v29(v28, 1831681640, hostTime, &v61);
      if (!v30)
      {
        v31 = v61;
        *v23 = v61;
        v32 = v62;
        *(DerivedStorage + 568) = v62;
        v33 = *(DerivedStorage + 64);
        *hostTime = v31;
        *&hostTime[16] = v32;
        v34 = CMClockConvertHostTimeToSystemUnits(hostTime);
        v35 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v35)
        {
          v36 = v35(v33, v34, &v59);
          if (!v36)
          {
            *(DerivedStorage + 528) = v59;
            *(DerivedStorage + 544) = v60;
            v37 = MEMORY[0x277CC08F0];
            *(DerivedStorage + 600) = *MEMORY[0x277CC08F0];
            *(DerivedStorage + 616) = *(v37 + 16);
            v26 = v55;
            goto LABEL_29;
          }

          v48 = v36;
        }

        else
        {
          v48 = 4294954514;
        }

        APSLogErrorAt(v48);
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHosePrepareRTPTimestampsAndTransferBufferForSBAR(APSEndpointStreamAudioHoseSBARRef, APSAudioTransportTime, APSNetworkTime, CMTime, APSAudioTransportTime)", 33554522, "### [%{ptr}] ConvertUpTicksToNetworkTime failed, err %#m\n", a1, v48);
        }

        goto LABEL_56;
      }

      v48 = v30;
    }

    else
    {
      v48 = 4294954514;
    }

    APSLogErrorAt(v48);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHosePrepareRTPTimestampsAndTransferBufferForSBAR(APSEndpointStreamAudioHoseSBARRef, APSAudioTransportTime, APSNetworkTime, CMTime, APSAudioTransportTime)", 33554522, "### [%{ptr}] Failed to convert MediaTime to HostTime, error: %#m", a1, v48);
    }

    goto LABEL_56;
  }

  lhs = *a4;
  v38 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v38)
  {
    v48 = 4294954514;
LABEL_38:
    APSLogErrorAt(v48);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHosePrepareRTPTimestampsAndTransferBufferForSBAR(APSEndpointStreamAudioHoseSBARRef, APSAudioTransportTime, APSNetworkTime, CMTime, APSAudioTransportTime)", 33554522, "### [%{ptr}] Failed to convert HostTime to MediaTime, error: %#m", a1, v48);
    }

    goto LABEL_56;
  }

  *hostTime = lhs;
  v39 = v38(v28, 1747795565, hostTime, &v63);
  if (v39)
  {
    v48 = v39;
    goto LABEL_38;
  }

  lhs = v63;
  *&rhs.value = *v27;
  rhs.epoch = *(DerivedStorage + 592);
  CMTimeSubtract(hostTime, &lhs, &rhs);
  *(DerivedStorage + 600) = *hostTime;
  *(DerivedStorage + 616) = *&hostTime[16];
LABEL_29:
  started = hoseSBAR_configureUnderrunTrackingIfNeeded(a1);
  if (started)
  {
    v48 = started;
    goto LABEL_78;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  TimeOfDayClock = FigGetTimeOfDayClock();
  *hostTime = *&a4->value;
  *&hostTime[16] = a4->epoch;
  CMSyncConvertTime(&v58, hostTime, HostTimeClock, TimeOfDayClock);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    v42 = *(DerivedStorage + 544) + *(DerivedStorage + 536) * 5.42101086e-20;
    *hostTime = *v23;
    *&hostTime[16] = *(DerivedStorage + 568);
    Seconds = CMTimeGetSeconds(hostTime);
    *hostTime = *v27;
    *&hostTime[16] = *(DerivedStorage + 592);
    v44 = CMTimeGetSeconds(hostTime);
    *hostTime = v58;
    v45 = CMTimeGetSeconds(hostTime);
    *hostTime = *(DerivedStorage + 600);
    *&hostTime[16] = *(DerivedStorage + 616);
    v46 = CMTimeGetSeconds(hostTime);
    CMBufferQueueGetDuration(hostTime, *(DerivedStorage + 656));
    v47 = CMTimeGetSeconds(hostTime);
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHosePrepareRTPTimestampsAndTransferBufferForSBAR(APSEndpointStreamAudioHoseSBARRef, APSAudioTransportTime, APSNetworkTime, CMTime, APSAudioTransportTime)", 33554482, "[%{ptr}] New anchor data: net: %1.6f; host: %1.6f; media: %1.6f; wall: %1.6f; mediaToSynchronizerOffset: %1.6f; bufferedSecs: %1.3f", a1, *&v42, *&Seconds, *&v44, *&v45, *&v46, *&v47);
  }

  if (v26)
  {
    started = hoseSBAR_transferStashedSBufsIntoBuffersForSBAR(a1);
    if (started)
    {
      v48 = started;
      goto LABEL_78;
    }
  }

  hoseSBAR_beginUnderrunIfNeeded(a1);
  return 0;
}

uint64_t hoseSBAR_updateRTPRolloverStateOnFlushFromTransportTime(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v6 = *(DerivedStorage + 96);
  result = DerivedStorage + 96;
  if (*v6 == 1)
  {
    *v12 = *a2;
    *&v12[12] = *(a2 + 12);
    RTPTimeForTransportTime = hoseSBAR_getRTPTimeForTransportTime(a1, v12, &v13);
    if (!v13)
    {
      return APSLogErrorAt(0);
    }

    v8 = RTPTimeForTransportTime;
    result = CMBaseObjectGetDerivedStorage();
    if (!*(result + 736))
    {
      return APSLogErrorAt(0);
    }

    v9 = result;
    v10 = *(result + 732);
    if (v8 - v10 < 0)
    {
      if (v8 <= v10)
      {
        goto LABEL_10;
      }

      v11 = (*(result + 728) - 1);
      *(result + 728) = v11;
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50)
      {
        goto LABEL_10;
      }

      if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          goto LABEL_10;
        }

        v11 = *(v9 + 728);
        v10 = *(v9 + 732);
      }

      result = LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_updateRTPRolloverStateOnFlushFromRTPTime(APSEndpointStreamAudioHoseSBARRef, uint32_t)", 33554482, "[%{ptr}] RTP Rollover Detection: Decrementing the Rollover Count; new count: %d; inRTPTime: %u; lastRTPTimeEncountered: %u\n", a1, v11, v8, v10);
LABEL_10:
      *(v9 + 732) = v8;
    }
  }

  return result;
}

uint64_t hoseSBAR_postNotifyStyleAudioFadeAppliedForAirPlayPlayback(uint64_t a1, const char *a2, int a3, CMTime *a4)
{
  if (a3 == -1)
  {
    APSLogErrorAt(0);
    return 4294960578;
  }

  time = *a4;
  Seconds = CMTimeGetSeconds(&time);
  v8 = notify_set_state(a3, (Seconds * 1000.0));
  if (v8)
  {
    v10 = v8;
    APSLogErrorAt(0);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_postNotifyStyleAudioFadeAppliedForAirPlayPlayback(APSEndpointStreamAudioHoseSBARRef, const char *, int, CMTime)", 33554522, "[%{ptr}] Failed to set fadeInNotifyToken state (notifyStatus=%u)", a1, v10);
    }

    return 4294960582;
  }

  if (notify_post(a2))
  {
    APSLogErrorAt(0);
    return 4294960582;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR > 50)
  {
    return 0;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_postNotifyStyleAudioFadeAppliedForAirPlayPlayback(APSEndpointStreamAudioHoseSBARRef, const char *, int, CMTime)", 33554482, "[%{ptr}] Posted notifyd style notification %s with duration %.3fs", a1, a2, *&Seconds);
    return 0;
  }

  return result;
}

uint64_t hoseSBAR_stopTheSynchronizer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 112);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    v7 = 4294954514;
LABEL_6:
    v6 = v7;
LABEL_7:
    APSLogErrorAt(v6);
    return v7;
  }

  v9 = *MEMORY[0x277CC0898];
  v10 = *(MEMORY[0x277CC0898] + 16);
  v5 = v4(v3, &v9, 0.0);
  if (v5)
  {
    v7 = v5;
    goto LABEL_6;
  }

  v6 = APSClockDriftMonitorSuspend(*(DerivedStorage + 1000));
  v7 = v6;
  if (v6)
  {
    goto LABEL_7;
  }

  hoseSBAR_waitForTimebaseRate(a1, 0.0);
  hoseSBAR_updateSynchronizerState(a1, 0);
  return v7;
}

uint64_t hoseSBAR_audioHoseApplyVolumeFade(uint64_t a1, unsigned int a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v18[4] = 0;
  if (a2 >= 3)
  {
    v12 = 4294894965;
LABEL_18:
    APSLogErrorAt(0);
    return v12;
  }

  v7 = DerivedStorage;
  time1 = *a3;
  time2 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    v12 = 4294894965;
    goto LABEL_18;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    v8 = "Invalid";
    if (a2 == 2)
    {
      v8 = "FadeOut";
    }

    if (a2 == 1)
    {
      v9 = "FadeIn";
    }

    else
    {
      v9 = v8;
    }

    time1 = *a3;
    Seconds = CMTimeGetSeconds(&time1);
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseApplyVolumeFade(APSEndpointStreamAudioHoseRef, APSVolumeFadeType, CMTime)", 33554482, "[%{ptr}] Applying volume fade type %s with duration: %.3fs", a1, v9, *&Seconds);
  }

  v15 = a1;
  v16 = a2;
  v17 = *&a3->value;
  *v18 = a3->epoch;
  v11 = *(v7 + 352);
  LODWORD(time2.value) = 0;
  time1.value = &time2;
  *&time1.timescale = &v15;
  time1.epoch = hoseSBAR_audioHoseApplyVolumeFadeCallbackDispatchInternal;
  if (!v11)
  {
    return 4294960591;
  }

  dispatch_sync_f(v11, &time1, APSDispatchSyncTaskCallback);
  return LODWORD(time2.value);
}

uint64_t hoseSBAR_audioHoseApplyVolumeFadeCallbackDispatchInternal(void *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  v4 = DerivedStorage;
  v5 = *(a1 + 2);
  if (v5 == 2)
  {
    if (!*(DerivedStorage + 304))
    {
      APSLogErrorAt(0);
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseApplyVolumeFadeCallbackDispatchInternal(void *)", 33554522, "[%{ptr}] Fade-out may only be applied when audio is playing, current rate: %u\n", v2, *(v4 + 304));
      }

      return 4294960591;
    }

    *&v24.value = *(a1 + 12);
    v24.epoch = *(a1 + 28);
    v8 = CMBaseObjectGetDerivedStorage();
    v9 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      v6 = 4294894966;
      APSLogErrorAt(0);
      goto LABEL_44;
    }

    v11 = Mutable;
    v12 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
    if (!v12)
    {
      v6 = 4294894966;
      APSLogErrorAt(0);
      CFRelease(v11);
      goto LABEL_44;
    }

    v13 = v12;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      time = v24;
      Seconds = CMTimeGetSeconds(&time);
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_setVolumeFadeOutCurve(APSEndpointStreamAudioHoseSBARRef, CMTime)", 33554482, "[%{ptr}] Apply fade-out volume curve with duration: %.3fs", v2, *&Seconds);
    }

    time = **&MEMORY[0x277CC08F0];
    appended = FigCFArrayAppendCMTime();
    if (appended)
    {
      v6 = appended;
    }

    else
    {
      appended = FigCFArrayAppendDouble();
      if (appended)
      {
        v6 = appended;
      }

      else
      {
        v16 = *MEMORY[0x277CD6398];
        CFArrayAppendValue(v13, *MEMORY[0x277CD6398]);
        time = v24;
        appended = FigCFArrayAppendCMTime();
        if (appended)
        {
          v6 = appended;
        }

        else
        {
          appended = FigCFArrayAppendDouble();
          if (appended)
          {
            v6 = appended;
          }

          else
          {
            CFArrayAppendValue(v13, v16);
            CFDictionarySetValue(v11, *MEMORY[0x277CD63A0], v13);
            v17 = *(v8 + 104);
            v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v18)
            {
              v6 = v18(v17, *MEMORY[0x277CD6448], v11);
              if (!v6)
              {
                goto LABEL_28;
              }
            }

            else
            {
              v6 = 4294954514;
            }

            appended = v6;
          }
        }
      }
    }

    APSLogErrorAt(appended);
LABEL_28:
    CFRelease(v13);
    CFRelease(v11);
    if (!v6)
    {
      *(v4 + 900) = 1;
      v19 = *(a1 + 12);
      *(v4 + 920) = *(a1 + 28);
      *(v4 + 904) = v19;
      v20 = *(v4 + 260);
      time = *(a1 + 12);
      v21 = hoseSBAR_postNotifyStyleAudioFadeAppliedForAirPlayPlayback(v2, "com.apple.mediaexperience.fadeoutappliedforplaybackhandoff", v20, &time);
      if (v21)
      {
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90)
        {
          v22 = v21;
          if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseApplyVolumeFadeCallbackDispatchInternal(void *)", 33554522, "[%{ptr}] Failed to post volume fade-out notification, error: %#m", v2, v22);
          }
        }
      }

      return 0;
    }

LABEL_44:
    APSLogErrorAt(v6);
    return v6;
  }

  if (v5 != 1)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return 4294960591;
        }

        v5 = *(a1 + 2);
      }

      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseApplyVolumeFadeCallbackDispatchInternal(void *)", 33554522, "[%{ptr}] Invalid FadeType %u\n", v2, v5);
    }

    return 4294960591;
  }

  if (*(DerivedStorage + 304))
  {
    APSLogErrorAt(0);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseApplyVolumeFadeCallbackDispatchInternal(void *)", 33554522, "[%{ptr}] Fade-in may only be applied when audio is not playing, current rate: %u\n", v2, *(v4 + 304));
    }

    return 4294960591;
  }

  v6 = 0;
  *(DerivedStorage + 900) = 1;
  v7 = *(a1 + 12);
  *(DerivedStorage + 920) = *(a1 + 28);
  *(DerivedStorage + 904) = v7;
  return v6;
}

uint64_t hoseSBAR_protocolDriverHoseSetRateAndAnchorTime(const void *a1, uint64_t a2, _OWORD *a3, __int128 *a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v11[0] = *a3;
  *(v11 + 12) = *(a3 + 12);
  v9 = *a4;
  v10 = *(a4 + 2);
  v8[0] = *a5;
  *(v8 + 12) = *(a5 + 12);
  hoseSBAR_audioHoseSetRateAndAnchorTime(a1, a2, v11, &v9, v8, a6, a7);
  return 0;
}

uint64_t hoseSBAR_audioHoseSetRateAndAnchorTime(const void *a1, uint64_t a2, _OWORD *a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v21[24] = 0;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseSetRateAndAnchorTime(APSEndpointStreamAudioHoseRef, uint32_t, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime, APSEndpointStreamAudioHoseSetRateAndAnchorTimeCompletionHandler, void *)", 33554482, "[%{ptr}] Begin Rate Change: %u", a1, a2);
  }

  if (a1)
  {
    v15 = CFRetain(a1);
  }

  else
  {
    v15 = 0;
  }

  v17 = v15;
  v18 = a2;
  *v19 = *a3;
  *&v19[3] = *(a3 + 12);
  *&v19[7] = *a4;
  v20 = *(a4 + 16);
  *v21 = *a5;
  *&v21[12] = *(a5 + 12);
  v22 = a6;
  v23 = a7;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseSetRateAndAnchorTimeCallbackDispatchInternal, &v17, 0x70uLL);
  return 0;
}

void hoseSBAR_audioHoseSetRateAndAnchorTimeCallbackDispatchInternal(CFTypeRef *a1)
{
  v63 = *MEMORY[0x277D85DE8];
  timescale = 0;
  value = 0;
  *&v53.value = kAPSNetworkTimeInvalid;
  v53.epoch = 0x100000000;
  v2 = *a1;
  v3 = *(a1 + 2);
  *v52 = *(a1 + 12);
  *&v52[12] = *(a1 + 3);
  v51.epoch = a1[7];
  *&v51.value = *(a1 + 5);
  *&v50[12] = *(a1 + 76);
  *v50 = *(a1 + 4);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v49 = v3;
  if (*DerivedStorage)
  {
    APSLogErrorAt(0);
    v23 = 0;
    flags = 0;
    v21 = 0;
    v20 = 4294894964;
    goto LABEL_54;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  v6 = v5;
  if (!v3)
  {
    memset(time, 0, sizeof(time));
    *v54 = *MEMORY[0x277CC0898];
    *&v54[16] = *(MEMORY[0x277CC0898] + 16);
    v10 = *&v54[16];
    v47 = *v54;
    v59 = *v54;
    v62.value = *(v5 + 576);
    v62.timescale = *(v5 + 584);
    v11 = *(v5 + 588);
    v12 = *(v5 + 592);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseSetRateAndAnchorTime_RateToZero(APSEndpointStreamAudioHoseSBARRef, APSAudioTransportTime *)", 33554482, "[%{ptr}] SetRateAndAnchorTime Callback; rate to zero\n", v2);
    }

    v13 = hoseSBAR_stopTheSynchronizer(v2);
    if (v13)
    {
      v20 = v13;
      goto LABEL_23;
    }

    CMBufferQueueGetFirstPresentationTimeStamp(&rhs, *(v6 + 656));
    hoseSBAR_getTransportTimeForMediaTime(time, v2, &rhs, **(v6 + 96));
    *(v6 + 600) = *v54;
    *(v6 + 616) = v10;
    *(v6 + 544) = 0x100000000;
    *(v6 + 528) = kAPSNetworkTimeInvalid;
    *(v6 + 552) = v47;
    *(v6 + 568) = v10;
    *(v6 + 576) = v47;
    *(v6 + 592) = v10;
    v14 = *(v6 + 976);
    if (v14)
    {
      CFRelease(v14);
      *(v6 + 976) = 0;
    }

    v15 = *(v6 + 984);
    if (v15)
    {
      CFRelease(v15);
      *(v6 + 984) = 0;
    }

    v16 = *(v6 + 104);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v17)
    {
      v18 = v17(v16);
      if (!v18)
      {
        *(v6 + 672) = 0;
        v19 = CMBaseObjectGetDerivedStorage();
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_clearVolumeFadeCurve(APSEndpointStreamAudioHoseSBARRef)", 33554482, "[%{ptr}] Clear fade-in volume curve", v2);
        }

        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!Mutable)
        {
          v46 = 4294894966;
          APSLogErrorAt(0);
          goto LABEL_75;
        }

        v41 = Mutable;
        v42 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        if (!v42)
        {
          v46 = 4294894966;
          APSLogErrorAt(0);
          CFRelease(v41);
          goto LABEL_75;
        }

        v43 = v42;
        CFDictionarySetValue(v41, *MEMORY[0x277CD63A0], v42);
        v44 = *(v19 + 104);
        v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v45)
        {
          v46 = v45(v44, *MEMORY[0x277CD6448], v41);
          if (!v46)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v46 = 4294954514;
        }

        APSLogErrorAt(v46);
LABEL_74:
        CFRelease(v43);
        CFRelease(v41);
        if (!v46)
        {
          if (v11)
          {
            CMTimebaseGetTime(v54, *(v6 + 120));
            CMTimeMake(&rhs, 1000, 1000);
            lhs.value = v62.value;
            lhs.timescale = v62.timescale;
            lhs.flags = v11;
            lhs.epoch = v12;
            CMTimeAdd(&v59, &lhs, &rhs);
            if (*(v6 + 900))
            {
              rhs = *v54;
              lhs = v59;
              if ((CMTimeCompare(&rhs, &lhs) & 0x80000000) == 0)
              {
                *(v6 + 900) = 0;
                *(v6 + 904) = v47;
                *(v6 + 920) = v10;
              }
            }
          }

LABEL_83:
          v13 = hoseSBAR_transferStashedSBufsIntoBuffersForSBAR(v2);
          if (v13)
          {
            v20 = v13;
          }

          else
          {
            v13 = hoseSBAR_enqueueIntoSBARPrimingSBufIfNecessary(v2);
            if (!v13)
            {
              hoseSBAR_endUnderrun(v2);
              value = *&time[4];
              v21 = *time;
              flags = *&time[16];
              timescale = *&time[12];
              v23 = *&time[20];
              *(DerivedStorage + 504) = v47;
              *(DerivedStorage + 520) = v10;
              goto LABEL_53;
            }

            v20 = v13;
          }

LABEL_23:
          APSLogErrorAt(v13);
          value = *&time[4];
          v21 = *time;
          flags = *&time[16];
          timescale = *&time[12];
          v23 = *&time[20];
          APSLogErrorAt(v20);
          goto LABEL_54;
        }

LABEL_75:
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseSetRateAndAnchorTime_RateToZero(APSEndpointStreamAudioHoseSBARRef, APSAudioTransportTime *)", 33554522, "[%{ptr}] Failed to clear volume curve, error: %#m", v2, v46);
        }

        goto LABEL_83;
      }

      v20 = v18;
    }

    else
    {
      v20 = 4294954514;
    }

    v13 = v20;
    goto LABEL_23;
  }

  v59 = **&MEMORY[0x277CC0898];
  v48 = *&v59.value;
  epoch = v59.epoch;
  v58 = 0;
  *time = *v52;
  *&time[12] = *&v52[12];
  v8 = APSAudioTransportTimeCopyDebugDesc(time);
  *time = *v50;
  *&time[12] = *&v50[12];
  v9 = APSAudioTransportTimeCopyDebugDesc(time);
  *&rhs.value = v48;
  rhs.epoch = epoch;
  if ((*(v6 + 588) & 1) != 0 && gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseSetRateAndAnchorTime_RateToOne(APSEndpointStreamAudioHoseSBARRef, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "[%{ptr}] Current rate 1.0, honoring incoming SetRate 1.0 request anchorTransportTime: %@\n", v2, v8);
  }

  v24 = *(v6 + 64);
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v25)
  {
    v20 = 4294954514;
LABEL_31:
    APSLogErrorAt(v20);
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseSetRateAndAnchorTime_RateToOne(APSEndpointStreamAudioHoseSBARRef, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime, APSAudioTransportTime *, APSNetworkTime *)", 33554522, "### [%{ptr}] ConvertNetworkTimeToUpTicks failed, err %#m\n", v2, v20);
    }

    goto LABEL_39;
  }

  *time = *&v51.value;
  *&time[16] = v51.epoch;
  v26 = v25(v24, time, &v58);
  if (v26)
  {
    v20 = v26;
    goto LABEL_31;
  }

  CMClockMakeHostTimeFromSystemUnits(&v59, v58);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    *time = v59;
    Seconds = CMTimeGetSeconds(time);
    HostTimeClock = CMClockGetHostTimeClock();
    CMSyncGetTime(time, HostTimeClock);
    v29 = CMTimeGetSeconds(time);
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseSetRateAndAnchorTime_RateToOne(APSEndpointStreamAudioHoseSBARRef, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "[%{ptr}] SetRateAndAnchorTime Callback hostTimeSecs = %1.3f; (nowHost: %1.3f) anchorTransportTime: %@; firstAudibleRTP: %@\n", v2, *&Seconds, *&v29, v8, v9);
  }

  *time = *v52;
  *&time[12] = *&v52[12];
  lhs = v51;
  v62 = v59;
  *v54 = *v50;
  *&v54[12] = *&v50[12];
  v30 = hoseSBAR_audioHosePrepareRTPTimestampsAndTransferBufferForSBAR(v2, time, &lhs.value, &v62, v54);
  v20 = v30;
  if (v30)
  {
    APSLogErrorAt(v30);
  }

LABEL_39:
  if (*(v6 + 396))
  {
    *time = *(v6 + 384);
    *&time[16] = *(v6 + 400);
    hoseSBAR_getMediaTimeForSynchronizerTime(&rhs, v2, time);
    flags = rhs.flags;
    if ((rhs.flags & 0x1D) != 1 || rhs.epoch)
    {
      flags = 0;
      v21 = 0;
      timescale = 0;
      value = 0;
    }

    else
    {
      value = rhs.value;
      timescale = rhs.timescale;
      v21 = 2;
    }
  }

  else
  {
    flags = 0;
    v21 = 0;
  }

  v31 = *(v6 + 64);
  v32 = *(v6 + 376);
  v33 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v33)
  {
    v33(v31, v32, &v53);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (!v20)
  {
    v34 = CMClockGetHostTimeClock();
    CMClockGetTime(time, v34);
    v23 = 0;
    *(DerivedStorage + 504) = *time;
    *(DerivedStorage + 520) = *&time[16];
LABEL_53:
    hoseSBAR_updateBufferingPriority(v2);
    v20 = 0;
    goto LABEL_54;
  }

  APSLogErrorAt(v20);
  v23 = 0;
LABEL_54:
  if (!*DerivedStorage)
  {
    FigSimpleMutexLock();
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_audioHoseSetRateAndAnchorTimeCallbackInternal(APSEndpointStreamAudioHoseSBARRef, uint32_t, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "[%{ptr}] Finished Rate Change: %u -> %u. (err=%d)\n", v2, *(DerivedStorage + 304), v49, v20);
    }

    if (!v20 && *(DerivedStorage + 304) != v49)
    {
      v35 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(DerivedStorage + 304) = v49;
      CFDictionarySetInt64();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      CFRelease(v35);
    }

    FigSimpleMutexUnlock();
  }

  v36 = a1[12];
  if (v36)
  {
    v37 = *a1;
    v38 = *(a1 + 2);
    v39 = a1[13];
    *time = *(a1 + 12);
    *&time[12] = *(a1 + 3);
    v59 = *(a1 + 5);
    *&v54[4] = value;
    *v54 = v21;
    *&v54[12] = timescale;
    *&v54[16] = flags;
    *&v54[20] = v23;
    rhs = v53;
    (v36)(v37, v38, time, &v59, v54, &rhs, v20, v39);
  }

  CFRelease(*a1);
}

uint64_t hoseSBAR_protocolDriverHoseLegacyFlushWithinSampleRange(const void *a1, uint64_t a2, _OWORD *a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v9[0] = *a3;
  *(v9 + 12) = *(a3 + 12);
  v8[0] = *a5;
  *(v8 + 12) = *(a5 + 12);
  hoseSBAR_audioHoseFlushWithinSampleRange(a1, a2, v9, a4, v8, a6, a7);
  return 0;
}

uint64_t hoseSBAR_audioHoseFlushWithinSampleRange(const void *a1, int a2, _OWORD *a3, int a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = CFRetain(a1);
  v17 = a2;
  *v18 = *a3;
  *&v18[12] = *(a3 + 12);
  v19 = a4;
  *v20 = *a5;
  *&v20[12] = *(a5 + 12);
  v21 = a6;
  v22 = a7;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseFlushWithinSampleRangeDispatchInternal, &v16, 0x58uLL);
  return 0;
}

void hoseSBAR_audioHoseFlushWithinSampleRangeDispatchInternal(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v45 = *(a1 + 8);
  v46 = *(a1 + 40);
  v3 = *(a1 + 72);
  v44 = *(a1 + 80);
  v48[0] = *(a1 + 12);
  *(v48 + 12) = *(a1 + 24);
  v47[0] = *(a1 + 44);
  *(v47 + 12) = *(a1 + 56);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x277CC0898];
  v55 = *MEMORY[0x277CC0898];
  v56 = *(MEMORY[0x277CC0898] + 8);
  v6 = APSAudioTransportTimeCopyDebugDesc(v48);
  v7 = APSAudioTransportTimeCopyDebugDesc(v47);
  v8 = *(MEMORY[0x277CC08C8] + 16);
  *&v53.start.value = *MEMORY[0x277CC08C8];
  *&v53.start.epoch = v8;
  *&v53.duration.timescale = *(MEMORY[0x277CC08C8] + 32);
  v52 = *v5;
  v51 = v52;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    *&time[16] = *(DerivedStorage + 424);
    *time = *(DerivedStorage + 408);
    Seconds = CMTimeGetSeconds(time);
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_audioHoseFlushWithinSampleRangeInternal(APSEndpointStreamAudioHoseRef, uint32_t, APSAudioTransportTime, uint32_t, APSAudioTransportTime, APSEndpointStreamAudioHoseFlushWithinSampleRangeCompletionHandler, void *)", 33554482, "[%{ptr}] FlushCallback called - WithinRange [%@:%@] Seq [%u:%u]; lastEndOPTSEnqueued: %1.3f\n", v2, v6, v7, v45, v46, *&Seconds);
  }

  if (*DerivedStorage)
  {
    LODWORD(v24) = -72332;
    v43 = 0;
LABEL_58:
    APSLogErrorAt(v43);
    goto LABEL_71;
  }

  v10 = CMBaseObjectGetDerivedStorage();
  v11 = *(v10 + 464);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v10 + 464), i);
        hoseSBAR_enqueueAudioBBuffToInternalBuffersInternal(v2, ValueAtIndex);
      }
    }

    v16 = *(v10 + 464);
    if (v16)
    {
      CFRelease(v16);
      *(v10 + 464) = 0;
    }
  }

  *time = v48[0];
  *&time[12] = *(v48 + 12);
  hoseSBAR_getMediaTimeForTransportTime(&v52, v2, time);
  *time = v47[0];
  *&time[12] = *(v47 + 12);
  hoseSBAR_getMediaTimeForTransportTime(&v51, v2, time);
  v17 = CMBaseObjectGetDerivedStorage();
  *queueOut = 0;
  *&time[8] = v52;
  *time = 0;
  v18 = *MEMORY[0x277CBECE8];
  v19 = CMBufferQueueCreate(*MEMORY[0x277CBECE8], 0, *(v17 + 136), queueOut);
  if (v19)
  {
    v24 = v19;
LABEL_66:
    APSLogErrorAt(v19);
    goto LABEL_27;
  }

  *time = *queueOut;
  v19 = CMBufferQueueCallForEachBuffer(*(v17 + 656), hoseSBAR_bufferQueuePopBackAfterTimeCallback, time);
  if (v19)
  {
    v24 = v19;
    goto LABEL_66;
  }

  v20 = *(v17 + 656);
  v21 = *queueOut;
  *(v17 + 656) = *queueOut;
  if (v21)
  {
    CFRetain(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (*queueOut)
  {
    CFRelease(*queueOut);
    *queueOut = 0;
  }

  v19 = CMBufferQueueCreate(v18, 0, *(v17 + 136), queueOut);
  if (v19)
  {
    v24 = v19;
    goto LABEL_66;
  }

  *time = *queueOut;
  v19 = CMBufferQueueCallForEachBuffer(*(v17 + 664), hoseSBAR_bufferQueuePopBackAfterTimeCallback, time);
  if (v19)
  {
    v24 = v19;
    goto LABEL_66;
  }

  v22 = *(v17 + 664);
  v23 = *queueOut;
  *(v17 + 664) = *queueOut;
  if (v23)
  {
    CFRetain(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  v24 = 0;
LABEL_27:
  if (*queueOut)
  {
    CFRelease(*queueOut);
  }

  if (v24)
  {
    v43 = v24;
    goto LABEL_58;
  }

  *time = v48[0];
  *&time[12] = *(v48 + 12);
  hoseSBAR_getMediaTimeForTransportTime(queueOut, v2, time);
  hoseSBAR_getSynchronizerTimeForMediaTime(time, v2, queueOut);
  v55 = *time;
  v25 = *&time[12];
  v56 = *&time[8];
  if (time[12])
  {
    v26 = v6;
    v27 = v7;
    v28 = *&time[16];
    v29 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A004079E0F624uLL);
    if (v29)
    {
      v30 = v29;
      *(v29 + 8) = 0;
      v31 = CFRetain(v2);
      *(v30 + 12) = v45;
      *(v30 + 4) = *(v48 + 12);
      *(v30 + 52) = v48[0];
      *(v30 + 20) = v46;
      *(v30 + 84) = v47[0];
      *(v30 + 6) = *(v47 + 12);
      v32 = v55;
      *v30 = v31;
      *(v30 + 1) = v32;
      *(v30 + 4) = v56;
      *(v30 + 5) = v25;
      *(v30 + 3) = v28;
      *(v30 + 5) = v3;
      *(v30 + 14) = v44;
      ++*(DerivedStorage + 460);
      v33 = *(DerivedStorage + 976);
      if (v33)
      {
        CFRelease(v33);
        *(DerivedStorage + 976) = 0;
      }

      v34 = *(DerivedStorage + 984);
      if (v34)
      {
        CFRelease(v34);
        *(DerivedStorage + 984) = 0;
      }

      v35 = *(DerivedStorage + 104);
      v36 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v36)
      {
        *time = v55;
        *&time[8] = v56;
        *&time[12] = v25;
        *&time[16] = v28;
        v37 = v36(v35, time, hoseSBAR_audioEngineFlushFromTimeSBARCallback, v30);
        if (!v37)
        {
          CMBaseObjectGetDerivedStorage();
          v7 = v27;
          if (FigCFEqual())
          {
            *time = 1;
            *&time[4] = v45;
            *&time[8] = v48[0];
            *&time[20] = *(v48 + 12);
            *&time[36] = v46;
            *&time[40] = v47[0];
            *&time[52] = *(v47 + 12);
            hoseSBAR_addPendingFlushOperation(v2, time);
          }

          *queueOut = v51;
          rhs = v52;
          CMTimeSubtract(time, queueOut, &rhs);
          *queueOut = v52;
          CMTimeRangeMake(&v53, queueOut, time);
          v38 = *(DerivedStorage + 992);
          *time = v53;
          APSTimedInfoManagerFlushWithinTimeRange(v38, time);
          v39 = APSTimedInfoManagerSuspend(*(DerivedStorage + 992), 0);
          v6 = v26;
          if (v39)
          {
            LODWORD(v24) = v39;
          }

          else
          {
            v39 = APSTimedInfoManagerResume(*(DerivedStorage + 992), *(DerivedStorage + 120));
            LODWORD(v24) = v39;
            if (!v39)
            {
              goto LABEL_42;
            }
          }

          APSLogErrorAt(v39);
LABEL_42:
          v40 = 0;
          if (!v26)
          {
            goto LABEL_48;
          }

LABEL_47:
          CFRelease(v6);
          goto LABEL_48;
        }

        v24 = v37;
      }

      else
      {
        v41 = CMBaseObjectGetDerivedStorage();
        v24 = 4294954514;
        *(v30 + 8) = -12782;
        dispatch_async_f(*(v41 + 352), v30, hoseSBAR_audioEngineFlushFromTimeSBARCallbackInternal);
      }

      APSLogErrorAt(v24);
      v40 = 0;
    }

    else
    {
      APSLogErrorAt(0);
      LODWORD(v24) = -72330;
      v40 = 1;
    }

    v7 = v27;
    v6 = v26;
    if (!v26)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  APSLogErrorAt(0);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_audioHoseFlushWithinSampleRangeInternal(APSEndpointStreamAudioHoseRef, uint32_t, APSAudioTransportTime, uint32_t, APSAudioTransportTime, APSEndpointStreamAudioHoseFlushWithinSampleRangeCompletionHandler, void *)", 33554522, "[%{ptr}] Error making flush time; inFlushFromTS: %@; initialSampleRate: %u", v2, v6, *(DerivedStorage + 88));
  }

  LODWORD(v24) = 0;
LABEL_71:
  v40 = 1;
  if (v6)
  {
    goto LABEL_47;
  }

LABEL_48:
  if (v7)
  {
    CFRelease(v7);
  }

  v42 = v40 ^ 1;
  if (!v3)
  {
    v42 = 1;
  }

  if ((v42 & 1) == 0)
  {
    *time = v48[0];
    *&time[12] = *(v48 + 12);
    *queueOut = v47[0];
    *&queueOut[12] = *(v47 + 12);
    hoseSBAR_callAudioHoseFlushWithinSampleRangeCompletionHandlerInternal(v2, v3, v45, time, v46, queueOut, v24, v44);
  }

  CFRelease(*a1);
}

_OWORD *hoseSBAR_addPendingFlushOperation(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = malloc_type_calloc(1uLL, 0x58uLL, 0x10A00403B7FD5E2uLL);
  if (result)
  {
    v6 = result;
    result[1] = *a2;
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    v9 = *(a2 + 48);
    *(result + 20) = *(a2 + 64);
    result[3] = v8;
    result[4] = v9;
    result[2] = v7;
    v10 = *(DerivedStorage + 720);
    *result = 0;
    *(result + 1) = v10;
    *v10 = result;
    *(DerivedStorage + 720) = result;
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50)
    {
      if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || (result = _LogCategory_Initialize(), result))
      {
        v11 = 84;
        if (!*(v6 + 16))
        {
          v11 = 70;
        }

        return LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_addPendingFlushOperation(APSEndpointStreamAudioHoseSBARRef, const APLESFlushOperation *)", 33554482, "[%{ptr}] Adding pending flush operation: [%{ptr}] flushWithinRange: %c \n", a1, v6, v11);
      }
    }
  }

  else if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_addPendingFlushOperation(APSEndpointStreamAudioHoseSBARRef, const APLESFlushOperation *)", 33554522, "### Unable to allocate a flush node. Losing a flush.");
    }
  }

  return result;
}

void hoseSBAR_callAudioHoseFlushWithinSampleRangeCompletionHandlerInternal(const void *a1, uint64_t a2, int a3, _OWORD *a4, int a5, _OWORD *a6, int a7, uint64_t a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  if (a2)
  {
    v17 = DerivedStorage;
    v18[0] = CFRetain(a1);
    v18[1] = a2;
    v19 = a3;
    *v20 = *a4;
    *&v20[12] = *(a4 + 12);
    v21 = a5;
    *v22 = *a6;
    *&v22[12] = *(a6 + 12);
    LODWORD(v23) = a7;
    v24 = a8;
    APSDispatchAsyncFHelper(*(v17 + 8), hoseSBAR_callAudioEngineFlushWithinSampleRangeCompletionHandlerCaller, v18, 0x60uLL);
  }
}

void hoseSBAR_callAudioEngineFlushWithinSampleRangeCompletionHandlerCaller(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v10[0] = *(a1 + 20);
  *(v10 + 12) = *(a1 + 32);
  v9[0] = *(a1 + 52);
  *(v9 + 12) = *(a1 + 64);
  v3(v2, v5, v10, v6, v9, v7, v8);
  CFRelease(*a1);
}

void hoseSBAR_audioEngineFlushFromTimeSBARCallbackInternal(void **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *time = *(a1 + 52);
  *&time[12] = *(a1 + 4);
  v3 = APSAudioTransportTimeCopyDebugDesc(time);
  *time = *(a1 + 84);
  *&time[12] = *(a1 + 6);
  v4 = APSAudioTransportTimeCopyDebugDesc(time);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    v5 = *a1;
    *time = *(a1 + 1);
    *&time[16] = a1[3];
    Seconds = CMTimeGetSeconds(time);
    v7 = *(a1 + 8);
    v8 = *(DerivedStorage + 460);
    *time = *(DerivedStorage + 408);
    *&time[16] = *(DerivedStorage + 424);
    v9 = CMTimeGetSeconds(time);
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_audioEngineFlushFromTimeSBARCallbackInternal(void *)", 33554482, "[%{ptr}] SBAR Callback for flushFromTime [%@:%@]; synchronizerTime: %1.3f; result: %d; outstanding call (including this): %d; lastEndOPTSEnqueued: %1.3f\n", v5, v3, v4, *&Seconds, v7, v8, *&v9);
  }

  --*(DerivedStorage + 460);
  v10 = *(a1 + 8);
  if (!v10)
  {
    *time1 = *(a1 + 1);
    *&time1[16] = a1[3];
    time2 = *(DerivedStorage + 408);
    CMTimeMinimum(time, time1, &time2);
    *(DerivedStorage + 408) = *time;
    *(DerivedStorage + 424) = *&time[16];
    *time1 = *(a1 + 1);
    *&time1[16] = a1[3];
    time2 = *(DerivedStorage + 432);
    CMTimeMinimum(time, time1, &time2);
    *(DerivedStorage + 432) = *time;
    *(DerivedStorage + 448) = *&time[16];
    if (*(DerivedStorage + 420))
    {
      v11 = *(DerivedStorage + 120);
      v12 = *(DerivedStorage + 680);
      *time1 = *(DerivedStorage + 408);
      *&time1[16] = *(DerivedStorage + 424);
      time2 = *(DerivedStorage + 232);
      CMTimeSubtract(time, time1, &time2);
      CMTimebaseSetTimerDispatchSourceNextFireTime(v11, v12, time, 1u);
    }

    v13 = *a1;
    *time = *(a1 + 52);
    *&time[12] = *(a1 + 4);
    hoseSBAR_updateRTPRolloverStateOnFlushFromTransportTime(v13, time);
    v10 = *(a1 + 8);
  }

  v14 = *a1;
  v15 = a1[5];
  v16 = *(a1 + 12);
  v17 = *(a1 + 20);
  v18 = a1[14];
  *time = *(a1 + 52);
  *&time[12] = *(a1 + 4);
  *time1 = *(a1 + 84);
  *&time1[12] = *(a1 + 6);
  hoseSBAR_callAudioHoseFlushWithinSampleRangeCompletionHandlerInternal(v14, v15, v16, time, v17, time1, v10, v18);
  hoseSBAR_maybeTriggerPullAudioBBuffs(*a1);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  CFRelease(*a1);
  free(a1);
}

void hoseSBAR_audioEngineFlushFromTimeSBARCallback(int a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a2[8] = a1;
  v5 = *(DerivedStorage + 352);

  dispatch_async_f(v5, a2, hoseSBAR_audioEngineFlushFromTimeSBARCallbackInternal);
}

uint64_t hoseSBAR_bufferQueuePopBackAfterTimeCallback(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  sampleBufferOut = 0;
  memset(&v16, 0, sizeof(v16));
  memset(&v15, 0, sizeof(v15));
  memset(&v14, 0, sizeof(v14));
  v13 = **&MEMORY[0x277CC0898];
  CMSampleBufferGetOutputPresentationTimeStamp(&v17, a1);
  time1 = v17;
  time2 = *(a2 + 8);
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    goto LABEL_4;
  }

  CMSampleBufferGetOutputDuration(&v16, a1);
  time1 = v17;
  time2 = v16;
  CMTimeAdd(&v15, &time1, &time2);
  time1 = *(a2 + 8);
  time2 = v15;
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    CMBufferQueueEnqueue(*a2, a1);
LABEL_4:
    v4 = 0;
    goto LABEL_11;
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = CMSampleBufferCreateCopy(*MEMORY[0x277CBECE8], a1, &sampleBufferOut);
  if (v6)
  {
    APSLogErrorAt(v6);
    goto LABEL_4;
  }

  time1 = v15;
  time2 = *(a2 + 8);
  CMTimeSubtract(&v14, &time1, &time2);
  v7 = *MEMORY[0x277CC0758];
  v8 = CMGetAttachment(sampleBufferOut, *MEMORY[0x277CC0758], 0);
  if (v8)
  {
    CMTimeMakeFromDictionary(&v13, v8);
    time2 = v14;
    v10 = v13;
    CMTimeAdd(&time1, &time2, &v10);
    time2 = v16;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      time2 = v14;
      v10 = v16;
      CMTimeAdd(&time1, &time2, &v10);
      v14 = time1;
    }
  }

  time1 = v14;
  v4 = CMTimeCopyAsDictionary(&time1, v5);
  if (v4)
  {
    CMSetAttachment(sampleBufferOut, v7, v4, 1u);
    CMBufferQueueEnqueue(*a2, sampleBufferOut);
  }

  else
  {
    APSLogErrorAt(0);
  }

LABEL_11:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t hoseSBAR_protocolDriverHoseLegacyFlush(const void *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v6[0] = *a3;
  *(v6 + 12) = *(a3 + 12);
  hoseSBAR_audioHoseFlush(a1, a2, v6, a4, a5);
  return 0;
}

uint64_t hoseSBAR_audioHoseFlush(const void *a1, int a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  v13 = v11;
  v14 = a2;
  *v15 = *a3;
  *&v15[12] = *(a3 + 12);
  v16 = a4;
  v17 = a5;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseFlushCallbackDispatchInternal, &v13, 0x38uLL);
  return 0;
}

void hoseSBAR_audioHoseFlushCallbackDispatchInternal(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v26[0] = *(a1 + 12);
  *(v26 + 12) = *(a1 + 24);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 480);
  v8 = APSAudioTransportTimeCopyDebugDesc(v26);
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_audioHoseFlushEverythingInternal(APSEndpointStreamAudioHoseRef, uint32_t, APSAudioTransportTime, APSEndpointStreamAudioHoseFlushCompletionHandler, void *)", 33554482, "[%{ptr}] FlushCallback called - Everything: ts: %@ seq: %u shouldStopSynchronizer: %d\n", v2, v8, v3, v7 == 1);
  }

  if (*DerivedStorage)
  {
    APSLogErrorAt(0);
    LODWORD(v24) = -72332;
    if (!v8)
    {
      goto LABEL_33;
    }

LABEL_32:
    CFRelease(v8);
    goto LABEL_33;
  }

  if (v7 != 1)
  {
    goto LABEL_11;
  }

  v9 = *(DerivedStorage + 112);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v10)
  {
    v24 = 4294954514;
LABEL_30:
    v12 = v24;
    goto LABEL_31;
  }

  *v27 = *MEMORY[0x277CC0898];
  *&v27[16] = *(MEMORY[0x277CC0898] + 16);
  v11 = v10(v9, v27, 0.0);
  if (v11)
  {
    v24 = v11;
    goto LABEL_30;
  }

  v12 = APSClockDriftMonitorSuspend(*(DerivedStorage + 1000));
  if (v12)
  {
    LODWORD(v24) = v12;
LABEL_31:
    APSLogErrorAt(v12);
    if (!v8)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  hoseSBAR_waitForTimebaseRate(v2, 0.0);
  hoseSBAR_updateSynchronizerState(v2, 0);
LABEL_11:
  FigSimpleMutexLock();
  *(DerivedStorage + 320) = 0;
  FigSimpleMutexUnlock();
  v13 = *(DerivedStorage + 104);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v14)
  {
    v14(v13);
  }

  *(DerivedStorage + 672) = 0;
  v15 = MEMORY[0x277CC08C8];
  v16 = *(MEMORY[0x277CC08C8] + 16);
  *(DerivedStorage + 756) = *MEMORY[0x277CC08C8];
  *(DerivedStorage + 772) = v16;
  *(DerivedStorage + 788) = *(v15 + 32);
  v12 = CMBufferQueueReset(*(DerivedStorage + 664));
  if (v12)
  {
    LODWORD(v24) = v12;
    goto LABEL_31;
  }

  if (v7 == 1)
  {
    hoseSBAR_enqueueIntoSBARPrimingSBufIfNecessary(v2);
  }

  CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    memset(v27, 0, 36);
    hoseSBAR_clearPendingFlushes(v2);
    v27[0] = 0;
    *&v27[36] = v3;
    *&v27[40] = v26[0];
    *&v27[52] = *(v26 + 12);
    hoseSBAR_addPendingFlushOperation(v2, v27);
  }

  v12 = APSTimedInfoManagerFlush(*(DerivedStorage + 992));
  if (v12)
  {
    LODWORD(v24) = v12;
    goto LABEL_31;
  }

  v12 = APSTimedInfoManagerSuspend(*(DerivedStorage + 992), 0);
  if (v12)
  {
    LODWORD(v24) = v12;
    goto LABEL_31;
  }

  v12 = APSTimedInfoManagerResume(*(DerivedStorage + 992), *(DerivedStorage + 120));
  if (v12)
  {
    LODWORD(v24) = v12;
    goto LABEL_31;
  }

  v17 = *(DerivedStorage + 464);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 464) = 0;
  }

  CMBufferQueueReset(*(DerivedStorage + 656));
  *(DerivedStorage + 544) = 0x100000000;
  *(DerivedStorage + 528) = kAPSNetworkTimeInvalid;
  v18 = MEMORY[0x277CC0898];
  v19 = *MEMORY[0x277CC0898];
  *(DerivedStorage + 552) = *MEMORY[0x277CC0898];
  v20 = *(v18 + 16);
  *(DerivedStorage + 568) = v20;
  *(DerivedStorage + 576) = v19;
  *(DerivedStorage + 592) = v20;
  *(DerivedStorage + 600) = v19;
  *(DerivedStorage + 616) = v20;
  *(DerivedStorage + 640) = v20;
  *(DerivedStorage + 624) = v19;
  *(DerivedStorage + 400) = v20;
  *(DerivedStorage + 384) = v19;
  *(DerivedStorage + 424) = v20;
  *(DerivedStorage + 408) = v19;
  *(DerivedStorage + 448) = v20;
  *(DerivedStorage + 432) = v19;
  *(DerivedStorage + 740) = 0;
  *(DerivedStorage + 744) = 0;
  dispatch_source_set_timer(*(DerivedStorage + 680), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  v21 = *(DerivedStorage + 976);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 976) = 0;
  }

  v22 = *(DerivedStorage + 984);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 984) = 0;
  }

  CFDictionaryRemoveAllValues(*(DerivedStorage + 928));
  CFDictionaryRemoveAllValues(*(DerivedStorage + 936));
  CFDictionaryRemoveAllValues(*(DerivedStorage + 952));
  CFDictionaryRemoveAllValues(*(DerivedStorage + 944));
  CFDictionaryRemoveAllValues(*(DerivedStorage + 960));
  v23 = CMBaseObjectGetDerivedStorage();
  LODWORD(v24) = 0;
  *(v23 + 728) = 0;
  *(v23 + 736) = 0;
  *(DerivedStorage + 456) = 0;
  if (v8)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (v5)
  {
    v25 = CMBaseObjectGetDerivedStorage();
    *&v27[48] = 0;
    *v27 = CFRetain(v2);
    *&v27[8] = v5;
    *&v27[16] = v3;
    *&v27[20] = v26[0];
    *&v27[32] = *(v26 + 12);
    *&v27[48] = v24;
    *&v27[56] = v4;
    APSDispatchAsyncFHelper(*(v25 + 8), hoseSBAR_callAudioHoseFlushCompletionHandlerCaller, v27, 0x40uLL);
  }

  CFRelease(*a1);
}

uint64_t hoseSBAR_clearPendingFlushes(uint64_t a1)
{
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_clearPendingFlushes(APSEndpointStreamAudioHoseSBARRef)", 33554482, "[${ptr}] Clear pending flush queue", a1);
  }

  while (1)
  {
    result = CMBaseObjectGetDerivedStorage();
    if (!*(result + 712))
    {
      break;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v3 = *(DerivedStorage + 712);
    if (v3)
    {
      v4 = *v3;
      v5 = v3[1];
      v6 = (DerivedStorage + 720);
      if (*v3)
      {
        v6 = (*v3 + 8);
      }

      *v6 = v5;
      *v5 = v4;
      free(v3);
    }
  }

  return result;
}

void hoseSBAR_callAudioHoseFlushCompletionHandlerCaller(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8[0] = *(a1 + 20);
  *(v8 + 12) = *(a1 + 32);
  v3(v2, v5, v8, v6, v7);
  CFRelease(*a1);
}

__CFString *hoseSBAR_protocolDriverHoseControlProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APSEndpointStreamAudioHoseSBAR <APSAudioProtocolDriverHoseControlProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t hoseSBAR_audioHoseSetCallbacks(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v7 = *(DerivedStorage + 352);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __hoseSBAR_audioHoseSetCallbacks_block_invoke;
  v9[3] = &__block_descriptor_tmp_372;
  v9[4] = DerivedStorage;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a1;
  dispatch_async(v7, v9);
  return 0;
}

void __hoseSBAR_audioHoseSetCallbacks_block_invoke(void *a1)
{
  *(a1[4] + 488) = a1[5];
  v2 = a1[4];
  v3 = *(v2 + 496);
  v4 = a1[6];
  *(v2 + 496) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t hoseSBAR_audioHoseNotifyAudioAvailable(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = CFRetain(a1);
  }

  else
  {
    v3 = 0;
  }

  v5 = v3;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_notifyAudioDataAvailableEngineCallbackDispatchInternal, &v5, 8uLL);
  return 0;
}

void hoseSBAR_notifyAudioDataAvailableEngineCallbackDispatchInternal(void **a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_notifyAudioDataAvailableEngineCallbackInternal(APSEndpointStreamAudioHoseSBARRef)", 33554462, "[%{ptr}] notifyAudioDataAvailableEngineCallback", v2);
  }

  if (!*DerivedStorage)
  {
    DerivedStorage[457] = 1;
    hoseSBAR_maybeTriggerPullAudioBBuffs(v2);
  }

  v4 = *a1;

  CFRelease(v4);
}

uint64_t hoseSBAR_audioHoseTimeAnnounce(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  if (a1)
  {
    v7 = CFRetain(a1);
  }

  else
  {
    v7 = 0;
  }

  v10 = v7;
  LODWORD(v11) = a2;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  v12 = v8;
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_audioHoseTimeAnnounceDispatchInternal, &v10, 0x18uLL);
  return 0;
}

void hoseSBAR_audioHoseTimeAnnounceDispatchInternal(CFTypeRef *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v43 = **&MEMORY[0x277CC0898];
  v42 = v43;
  if (*DerivedStorage)
  {
    goto LABEL_50;
  }

  v6 = DerivedStorage;
  if (DerivedStorage[456])
  {
    goto LABEL_50;
  }

  if (v3 <= 1952542317)
  {
    if (v3 != 1950436942)
    {
      v7 = 1951421520;
      goto LABEL_8;
    }

LABEL_13:
    dataPointerOut.value = 0;
    v41.value = 0;
    DataPointer = CMBlockBufferGetDataPointer(v4, 0, 0, 0, &dataPointerOut);
    if (DataPointer)
    {
      goto LABEL_49;
    }

    v15 = *dataPointerOut.value;
    v16 = *(dataPointerOut.value + 4);
    v17 = *(dataPointerOut.value + 8);
    v18 = *(v6 + 8);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v19)
    {
      v20 = bswap32(v16) + bswap32(v17) * 2.32830644e-10 + -2208988800.0;
      time.value = 0;
      *&time.timescale = vcvtd_n_u64_f64(v20 - floor(v20), 0x40uLL);
      time.epoch = vcvtmd_s64_f64(v20);
      v21 = v19(v18, &time, &v41);
      if (!v21)
      {
LABEL_31:
        v23 = bswap32(v15);
        v24 = UpTicksToNanoseconds();
        CMTimeMake(&v42, v24, 1000000000);
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          time = v42;
          Seconds = CMTimeGetSeconds(&time);
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_audioHoseTimeAnnounceInternal(APSEndpointStreamAudioHoseRef, OSType, CMBlockBufferRef)", 33554462, "[%{ptr}] Time Announce Callback hostTimeSecs = %f\n", v2, *&Seconds);
        }

        goto LABEL_35;
      }
    }

    else
    {
      v21 = 4294954514;
    }

    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_audioHoseTimeAnnounceInternal(APSEndpointStreamAudioHoseRef, OSType, CMBlockBufferRef)", 33554522, "### [%{ptr}] ConvertNetworkTimeToUpTicks failed, err %#m\n", v2, v21);
    }

    goto LABEL_31;
  }

  if (v3 == 1952542318)
  {
    goto LABEL_13;
  }

  v7 = 1953526896;
LABEL_8:
  if (v3 == v7)
  {
    dataPointerOut.value = 0;
    v41.value = 0;
    DataPointer = CMBlockBufferGetDataPointer(v4, 0, 0, 0, &dataPointerOut);
    if (DataPointer)
    {
      goto LABEL_49;
    }

    v9 = *(dataPointerOut.value + 4);
    v10 = *(dataPointerOut.value + 16);
    v11 = *(v6 + 8);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v12)
    {
      v13 = bswap64(v9) / 1000000000.0;
      time.value = bswap64(v10);
      *&time.timescale = vcvtd_n_u64_f64(v13 - floor(v13), 0x40uLL);
      time.epoch = vcvtmd_s64_f64(v13);
      v14 = v12(v11, &time, &v41);
      if (!v14)
      {
LABEL_29:
        v22 = UpTicksToNanoseconds();
        CMTimeMake(&v42, v22, 1000000000);
        v23 = bswap32(*dataPointerOut.value);
LABEL_35:
        hoseSBAR_updateRTPRolloverStateAssumingIncreasingRTPTimes(v2, v23);
        hoseSBAR_getMediaTimeForRTPTime(&v43, v2, v23);
        *(v6 + 23) = v42;
        v26 = *&v43.value;
        *(v6 + 36) = *&v43.value;
        epoch = v43.epoch;
        *(v6 + 74) = v43.epoch;
        v28 = MEMORY[0x277CC08F0];
        *(v6 + 600) = *MEMORY[0x277CC08F0];
        *(v6 + 77) = *(v28 + 16);
        *&dataPointerOut.value = v26;
        dataPointerOut.epoch = epoch;
        hoseSBAR_getSynchronizerTimeForMediaTime(&time, v2, &dataPointerOut);
        flags = time.flags;
        if ((time.flags & 1) == 0)
        {
          if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_audioHoseTimeAnnounceInternal(APSEndpointStreamAudioHoseRef, OSType, CMBlockBufferRef)", 33554482, "### [%{ptr}] TimeAnnounce: Invalid synchronizerTimeStartTime\n", v2, v40);
          }

          goto LABEL_50;
        }

        value = time.value;
        timescale = time.timescale;
        v32 = time.epoch;
        if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
        {
          time.value = value;
          time.timescale = timescale;
          time.flags = flags;
          time.epoch = v32;
          v33 = CMTimeGetSeconds(&time);
          time = v42;
          v34 = CMTimeGetSeconds(&time);
          HostTimeClock = CMClockGetHostTimeClock();
          CMClockGetTime(&time, HostTimeClock);
          v36 = CMTimeGetSeconds(&time);
          LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_audioHoseTimeAnnounceInternal(APSEndpointStreamAudioHoseRef, OSType, CMBlockBufferRef)", 33554482, "[%{ptr}] synchronizerTimeStartTime = %1.3f (%ld/%d) hostTimeStart = %1.3f nowHostTime = %1.3f\n", v2, *&v33, value, timescale, *&v34, *&v36, v41.value);
        }

        v37 = *(v6 + 14);
        v41 = v42;
        v38 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v38)
        {
          time.value = value;
          time.timescale = timescale;
          time.flags = flags;
          time.epoch = v32;
          dataPointerOut = v41;
          DataPointer = v38(v37, &time, &dataPointerOut, 1.0);
          if (!DataPointer)
          {
            hoseSBAR_waitForTimebaseRate(v2, 1.0);
            CMTimebaseSetTimerDispatchSourceToFireImmediately(*(v6 + 15), *(v6 + 81));
            hoseSBAR_updateSynchronizerState(v2, 1);
            v6[456] = 1;
            goto LABEL_50;
          }
        }

        else
        {
          DataPointer = 4294954514;
        }

LABEL_49:
        APSLogErrorAt(DataPointer);
        goto LABEL_50;
      }
    }

    else
    {
      v14 = 4294954514;
    }

    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_audioHoseTimeAnnounceInternal(APSEndpointStreamAudioHoseRef, OSType, CMBlockBufferRef)", 33554522, "### [%{ptr}] ConvertNetworkTimeToUpTicks failed, err %#m\n", v2, v14);
    }

    goto LABEL_29;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_audioHoseTimeAnnounceInternal(APSEndpointStreamAudioHoseRef, OSType, CMBlockBufferRef)", 33554522, "### [%{ptr}] Unexpected message received '%C'\n", v2, v3);
  }

LABEL_50:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v39 = a1[2];
  if (v39)
  {
    CFRelease(v39);
  }
}

uint64_t hoseSBAR_audioHoseSendAudio(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1734700576)
  {
    v7 = DerivedStorage;
    if (a1)
    {
      v8 = CFRetain(a1);
    }

    else
    {
      v8 = 0;
    }

    v11[0] = v8;
    if (a3)
    {
      v9 = CFRetain(a3);
    }

    else
    {
      v9 = 0;
    }

    v11[1] = v9;
    APSDispatchAsyncFHelper(*(v7 + 352), hoseSBAR_hoseSendAudioDataDispatchInternal, v11, 0x10uLL);
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960561;
  }
}

void hoseSBAR_hoseSendAudioDataDispatchInternal(CFTypeRef *a1)
{
  v3 = *a1;
  v2 = a1[1];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = v3;
  v7 = v2;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_hoseSendAudioDataInternal(APSEndpointStreamAudioHoseRef, CMBlockBufferRef)", 33554462, "[%{ptr}] SendAudioDataInternal; bbuf: %{ptr}", v3, v2, v6, v7);
  }

  if (!*DerivedStorage)
  {
    CFRetain(v3);
    CFRetain(v2);
    APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_sbarEnqueueSingleAudioBBuffDispatchFunction, &v6, 0x10uLL);
  }

  CFRelease(*a1);
  v5 = a1[1];
  if (v5)
  {
    CFRelease(v5);
  }
}

void hoseSBAR_sbarEnqueueSingleAudioBBuffDispatchFunction(uint64_t *a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 282) && (started = hoseSBAR_startTheSynchronizerIfNecessary(*a1, 1), started) || (started = hoseSBAR_enqueueAudioBBuffToInternalBuffersInternal(*a1, a1[1]), started) || (started = hoseSBAR_fillSBARToHighWater(*a1), started))
  {
    APSLogErrorAt(started);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = a1[1];
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *hoseSBAR_audioHoseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APSEndpointStreamAudioHoseSBAR <APSEndpointStreamAudioHoseProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t hoseSBAR_SetProperty(const void *a1, const void *a2, const void *a3)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus hoseSBAR_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2);
  }

  if (*DerivedStorage)
  {
    APSLogErrorAt(0);
    v19 = v24;
    v20 = -72332;
    goto LABEL_48;
  }

  if (CFEqual(a2, @"APSEndpointStreamAudioHoseProtocolProperty_IsTimelineEstablished") || CFEqual(a2, @"APSAudioProtocolDriverHoseProperty_IsTimelineEstablished"))
  {
    goto LABEL_8;
  }

  if (CFEqual(a2, @"VolumeLinear"))
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == CFNumberGetTypeID())
      {
        v10 = *(DerivedStorage + 104);
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v11)
        {
          v12 = v11(v10, *MEMORY[0x277CD6440], a3);
          *(v24 + 6) = v12;
          if (!v12)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v12 = 4294954514;
          *(v24 + 6) = -12782;
        }

LABEL_16:
        APSLogErrorAt(v12);
        goto LABEL_8;
      }
    }

    goto LABEL_50;
  }

  if (CFEqual(a2, @"BufferedClientAudioSessionID"))
  {
    if (!a3 || (v13 = CFGetTypeID(a3), v13 == CFNumberGetTypeID()))
    {
      if (!FigCFEqual())
      {
        if (a1)
        {
          CFRetain(a1);
        }

        if (a3)
        {
          CFRetain(a3);
        }

        v14 = *(DerivedStorage + 352);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __hoseSBAR_SetProperty_block_invoke;
        block[3] = &unk_2784A2C88;
        block[4] = &v23;
        block[5] = DerivedStorage;
        block[6] = a3;
        block[7] = a1;
        dispatch_async(v14, block);
      }

      goto LABEL_8;
    }

LABEL_50:
    APSLogErrorAt(0);
    v19 = v24;
    v20 = -72331;
    goto LABEL_48;
  }

  if (!CFEqual(a2, @"AudioProcessingTapID"))
  {
    if (CFEqual(a2, @"MuteStream"))
    {
      v12 = FigSampleBufferAudioRendererSetProperty(*(DerivedStorage + 104), *MEMORY[0x277CD6430], a3);
      *(v24 + 6) = v12;
      if (!v12)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s %@ unsupported\n", a1, "OSStatus hoseSBAR_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2);
    }

    v19 = v24;
    v20 = -12784;
LABEL_48:
    *(v19 + 6) = v20;
    goto LABEL_8;
  }

  if (a3)
  {
    v15 = CFGetTypeID(a3);
    if (v15 != CFNumberGetTypeID())
    {
      goto LABEL_50;
    }
  }

  if (a1)
  {
    v16 = CFRetain(a1);
  }

  else
  {
    v16 = 0;
  }

  v21[0] = v16;
  if (a3)
  {
    v17 = CFRetain(a3);
  }

  else
  {
    v17 = 0;
  }

  v21[1] = v17;
  FigSimpleMutexLock();
  APSDispatchAsyncFHelper(*(DerivedStorage + 352), hoseSBAR_setAudioProcessingTapIDInternal, v21, 0x10uLL);
  v18 = *(DerivedStorage + 312);
  *(DerivedStorage + 312) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  FigSimpleMutexUnlock();
LABEL_8:
  v7 = *(v24 + 6);
  _Block_object_dispose(&v23, 8);
  return v7;
}