uint64_t audioSession_setupGhostAudio(uint64_t a1, _OWORD *a2, CFTypeRef cf)
{
  v3 = *(a1 + 32);
  *v20 = *a2;
  *&v20[12] = *(a2 + 12);
  v24 = 0;
  if (!v3)
  {
    v17 = 4294960591;
LABEL_31:
    APSLogErrorAt();
    goto LABEL_32;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFDictionaryGetTypeID())
  {
    v17 = 4294960591;
    goto LABEL_31;
  }

  v7 = malloc_type_calloc(1uLL, 0x30uLL, 0x1060040987D7E9EuLL);
  if (!v7)
  {
    v17 = 4294895146;
    goto LABEL_31;
  }

  v8 = v7;
  *(v7 + 32) = 0;
  *v7 = CFDictionaryGetInt64Ranged();
  if (v24)
  {
    goto LABEL_42;
  }

  v8[1] = a1;
  v8[2] = CFRetain(v3);
  Value = CFDictionaryGetValue(cf, @"AudioFormat");
  if (!Value)
  {
    APSLogErrorAt();
    goto LABEL_35;
  }

  v8[3] = CFRetain(Value);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged)
  {
    APSLogErrorAt();
    v24 = -72151;
    if (gLogCategory_APReceiverAudioSessionGhost <= 90 && (gLogCategory_APReceiverAudioSessionGhost != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionGhost, "OSStatus APReceiverAudioSessionGhostCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554522, "### %@ attempting setup audio connection '%C' for a Ghost!\n", v8[2], Int64Ranged);
    }

    goto LABEL_43;
  }

  if (!CFDictionaryContainsKey(cf, @"MediaDataControl"))
  {
    v14 = 0;
    goto LABEL_19;
  }

  Int64 = CFDictionaryGetInt64();
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (v24)
  {
LABEL_42:
    APSLogErrorAt();
LABEL_43:
    v14 = 0;
    goto LABEL_37;
  }

  Count = CFArrayGetCount(TypedValue);
  if (!Count)
  {
    goto LABEL_15;
  }

  if (Count != 1)
  {
    if (Count == 2)
    {
      CFDataGetTypeID();
      CFArrayGetTypedValueAtIndex();
      goto LABEL_13;
    }

LABEL_35:
    v14 = 0;
    v19 = -6705;
LABEL_36:
    v24 = v19;
    goto LABEL_37;
  }

LABEL_13:
  CFDataGetTypeID();
  CFArrayGetTypedValueAtIndex();
LABEL_15:
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v14 = Mutable;
  if (!Mutable)
  {
    APSLogErrorAt();
    v19 = -6728;
    goto LABEL_36;
  }

  v16 = MEMORY[0x277CBED28];
  if (!Int64)
  {
    v16 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"MDC::AllowP2P", *v16);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  CFDictionarySetValue(v14, @"MDC::Label", @"GHOST");
  CFDictionarySetInt64();
  FigCFDictionarySetInt32();
  *&v22 = a1;
  *(&v22 + 1) = audioSession_handleMediaDataControlRequest_3715;
  v23 = 0;
  v21[0] = *v20;
  *(v21 + 12) = *&v20[12];
  v24 = APMediaDataControlServerCreate(v21, v14, &v22, v8 + 5);
  if (!v24)
  {
LABEL_19:
    *(a1 + 40) = v8;
    if (!v14)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  APSLogErrorAt();
LABEL_37:
  APReceiverAudioSessionGhostFinalize(v8);
  if (v14)
  {
LABEL_20:
    CFRelease(v14);
  }

LABEL_21:
  v17 = v24;
  if (v24)
  {
LABEL_32:
    APSLogErrorAt();
    return v17;
  }

  *(a1 + 48) = APReceiverAudioSessionGhostFinalize;
  *(a1 + 56) = 0;
  *(a1 + 64) = APReceiverAudioSessionGhostSetSecurityInfo;
  *(a1 + 72) = APReceiverAudioSessionGhostStartPacketProcesser;
  *(a1 + 80) = APReceiverAudioSessionGhostStopPacketProcesser;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = APReceiverAudioSessionGhostFlushAudio;
  *(a1 + 112) = APReceiverAudioSessionGhostSetRateAndAnchorTime;
  *(a1 + 120) = APReceiverAudioSessionGhostConvertProgressRTPTimeToSecond;
  *(a1 + 128) = APReceiverAudioSessionGhostReadAudio;
  *(a1 + 136) = APReceiverAudioSessionGhostUpdateLatency;
  *(a1 + 144) = APReceiverAudioSessionGhostCopyProperty;
  *(a1 + 152) = APReceiverAudioSessionGhostSetProperty;
  *(a1 + 160) = APReceiverAudioSessionGhostCopyMetrics;
  *(a1 + 168) = APReceiverAudioSessionGhostLogEnded;
  *(a1 + 176) = APReceiverAudioSessionGhostCopyAudioBufferInfo;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  if (gLogCategory_APReceiverAudioSession <= 50 && (gLogCategory_APReceiverAudioSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSession, "OSStatus audioSession_setupGhostAudio(APReceiverAudioSessionRef, sockaddr_ip, CFDictionaryRef)", 33554482, "%@ AudioSession setup for ghost source\n", *(a1 + 32));
  }

  return 0;
}

CFNumberRef APReceiverAudioSessionCopyProperty(const __CFNumber *a1, int a2, __CFString *cf1, uint64_t a4, _DWORD *a5)
{
  v6 = a1;
  v18 = 0;
  if (a1)
  {
    if (cf1)
    {
      if (cf1 == @"AirPlayArrivalToRenderLatencyMs" || CFEqual(cf1, @"AirPlayArrivalToRenderLatencyMs"))
      {
        valuePtr = 0;
        v18 = audioSession_airPlayArrivalToRenderLatencyMs(v6, &valuePtr);
        if (!v18)
        {
          v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
          if (v6)
          {
            goto LABEL_7;
          }

LABEL_38:
          APSLogErrorAt();
          v14 = -6728;
          goto LABEL_39;
        }

LABEL_36:
        APSLogErrorAt();
LABEL_37:
        v6 = 0;
        goto LABEL_7;
      }

      if (cf1 == @"WifiArrivalToRenderLatencyMs" || CFEqual(cf1, @"WifiArrivalToRenderLatencyMs"))
      {
        valuePtr = 0;
        IntWithDefault = APSSettingsGetIntWithDefault();
        v18 = audioSession_airPlayArrivalToRenderLatencyMs(v6, &valuePtr);
        if (!v18)
        {
          v16 = valuePtr + IntWithDefault;
          v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &v16);
          if (v6)
          {
            goto LABEL_7;
          }

          goto LABEL_38;
        }

        goto LABEL_36;
      }

      if (cf1 == @"IsMedia" || CFEqual(cf1, @"IsMedia"))
      {
        v10 = MEMORY[0x277CBED28];
        if (!*(v6 + 20))
        {
          v10 = MEMORY[0x277CBED10];
        }

        v11 = *v10;
      }

      else
      {
        if (cf1 == @"PlatformIOBufferSize" || CFEqual(cf1, @"PlatformIOBufferSize"))
        {
          v13 = atomic_load(v6 + 66);
          valuePtr = v13;
          v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
          if (v6)
          {
            goto LABEL_7;
          }

          goto LABEL_38;
        }

        if (cf1 == @"StreamType" || CFEqual(cf1, @"StreamType"))
        {
          v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, v6 + 24);
          if (v6)
          {
            goto LABEL_7;
          }

          goto LABEL_38;
        }

        if (cf1 != @"PKDReceiverContext" && !CFEqual(cf1, @"PKDReceiverContext"))
        {
          v15 = *(v6 + 18);
          if (!v15)
          {
            APSLogErrorAt();
            v6 = 0;
            v14 = -12782;
            goto LABEL_39;
          }

          v12 = v15(*(v6 + 5), cf1, &v18);
LABEL_21:
          v6 = v12;
          goto LABEL_7;
        }

        v11 = *(v6 + 35);
        if (!v11)
        {
          goto LABEL_37;
        }
      }

      v12 = CFRetain(v11);
      goto LABEL_21;
    }

    APSLogErrorAt();
    v6 = 0;
    v14 = -72151;
  }

  else
  {
    APSLogErrorAt();
    v14 = -72152;
  }

LABEL_39:
  v18 = v14;
LABEL_7:
  if (a5)
  {
    *a5 = v18;
  }

  return v6;
}

double audioSession_getCurrentNetworkTime(uint64_t a1, uint64_t *a2)
{
  v4 = mach_absolute_time();
  v10 = *MEMORY[0x277CEA280];
  v11 = *(MEMORY[0x277CEA280] + 16);
  UpTicksToSecondsF();
  v6 = v5;
  v7 = *(a1 + 320);
  if (v7)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v8 || v8(v7, v4, &v10))
    {
      APSLogErrorAt();
      if (!a2)
      {
        return v6;
      }

      goto LABEL_6;
    }

    v6 = v11 + *(&v10 + 1) * 5.42101086e-20;
  }

  if (a2)
  {
LABEL_6:
    *a2 = v4;
  }

  return v6;
}

void audioSession_sinkTimer(uint64_t a1)
{
  v12 = 0;
  CurrentNetworkTime = audioSession_getCurrentNetworkTime(a1, &v12);
  v3 = *(a1 + 224);
  v4 = *(a1 + 312);
  v5 = *(a1 + 304);
  v6 = *(a1 + 248);
  if (dispatch_source_get_data(*(a1 + 296)))
  {
    v7 = (CurrentNetworkTime * v3);
    v8 = (v7 - v4) * v6;
    v9 = malloc_type_malloc(v8, 0xED26B195uLL);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 128);
      if (!v11 || v11(*(a1 + 40), (v4 - v5), v12, v9, v8))
      {
        APSLogErrorAt();
      }

      else
      {
        *(a1 + 312) = v7;
      }

      free(v10);
    }

    else
    {
      APSLogErrorAt();
    }
  }
}

uint64_t APReceiverAudioSessionReadAudio(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      v3 = *(a1 + 40);

      return v2(v3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895144;
  }
}

uint64_t audioSession_airPlayArrivalToRenderLatencyMs(uint64_t a1, _DWORD *a2)
{
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  *a2 = ((*(a1 + 224) * 0.5 + (1000 * (CFObjectGetPropertyInt64Sync() + PropertyInt64Sync))) / *(a1 + 224));
  return 0;
}

uint64_t APReceiverAudioSessionApplyVolumeFade(uint64_t a1, uint64_t a2, CMTime *a3)
{
  if (a1)
  {
    time1 = *a3;
    v10 = **&MEMORY[0x277CC08F0];
    result = CMTimeCompare(&time1, &v10);
    if (result <= 0)
    {
      return APSLogErrorAt();
    }

    else
    {
      v8 = *(a1 + 184);
      if (v8)
      {
        v9 = *(a1 + 40);
        time1 = *a3;
        return v8(v9, a2, &time1);
      }
    }
  }

  else
  {

    return APSLogErrorAt();
  }

  return result;
}

uint64_t APReceiverAudioSessionSetProperty(uint64_t a1, __CFString *cf1, uint64_t a3)
{
  if (!a1)
  {
    v6 = 4294895144;
    APSLogErrorAt();
    return v6;
  }

  if (!cf1)
  {
    APSLogErrorAt();
    return 4294895145;
  }

  if (cf1 == @"PlatformIOBufferSize" || CFEqual(cf1, @"PlatformIOBufferSize"))
  {
    v6 = 0;
    atomic_store(CFGetInt64Ranged(), (a1 + 264));
    return v6;
  }

  v8 = *(a1 + 152);
  if (!v8)
  {
    APSLogErrorAt();
    return 4294954514;
  }

  v9 = *(a1 + 40);

  return v8(v9, cf1, a3);
}

void _NotifyIsPlayingAmbientAudio(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = a1 != 0;
  if (APSIsAPMSpeaker())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___NotifyIsPlayingAmbientAudio_block_invoke;
    block[3] = &unk_278C5FC48;
    block[4] = &v5;
    if (_NotifyIsPlayingAmbientAudio_sTokenOnce != -1)
    {
      dispatch_once(&_NotifyIsPlayingAmbientAudio_sTokenOnce, block);
    }

    if (*(v6 + 6))
    {
      APSLogErrorAt();
      if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _NotifyIsPlayingAmbientAudio(Boolean)", 33554522, "### Failed to register IsPlayingAmbientAudioChanged token status=%u");
      }
    }

    else
    {
      v2 = notify_set_state(_NotifyIsPlayingAmbientAudio_sToken, v1);
      *(v6 + 6) = v2;
      if (v2)
      {
        APSLogErrorAt();
        if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _NotifyIsPlayingAmbientAudio(Boolean)", 33554522, "### Failed to set IsPlayingAmbientAudioChanged token state status=%u\n");
        }
      }

      else
      {
        v3 = notify_post("com.apple.airplay.isPlayingAmbientAudioChanged");
        *(v6 + 6) = v3;
        if (v3)
        {
          APSLogErrorAt();
          if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _NotifyIsPlayingAmbientAudio(Boolean)", 33554522, "### Failed to post IsPlayingAmbientAudioChanged notification status=%u\n");
          }
        }

        else if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _NotifyIsPlayingAmbientAudio(Boolean)", 33554482, "IsPlayingAmbientAudioChanged state=%llu\n", v1);
        }
      }
    }
  }

  _Block_object_dispose(&v5, 8);
}

void sub_23E9F92BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float _GetHWVolumeSliderValue()
{
  v1 = 0.0;
  if ([objc_msgSend(MEMORY[0x277D26E58] "sharedAVSystemController")])
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      APSVolumeConvertSliderValueToDB();
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "Float32 _GetHWVolumeSliderValue()", 33554482, "[AirPlayVolume] Retrieved volumeSliderValue from AVSystemController: %f (%f dB)\n");
    }
  }

  else if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "Float32 _GetHWVolumeSliderValue()", 33554522, "### Error retrieving volume\n");
  }

  return v1;
}

void __AirPlayReceiverServerPlatformInitialize_block_invoke_2(uint64_t result)
{
  if (*(*(result + 32) + 52))
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverServerPlatformInitialize(AirPlayReceiverServerRef)_block_invoke_2", 33554482, "Sending allow playback by request\n");
    }

    AirPlayReceiverServerSendMediaRemoteCommand(*(*(result + 40) + 216), 1885495660);
    *(*(result + 32) + 52) = 0;
  }
}

void __AirPlayReceiverServerPlatformInitialize_block_invoke_3(uint64_t a1)
{
  if (CFObjectGetPropertyInt64Sync())
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverServerPlatformInitialize(AirPlayReceiverServerRef)_block_invoke_3", 33554482, "Sending prevent playback by request\n");
    }

    AirPlayReceiverServerSendMediaRemoteCommand(*(*(a1 + 40) + 216), 1885499506);
    *(*(a1 + 32) + 52) = 1;
  }
}

uint64_t __AirPlayReceiverServerPlatformInitialize_block_invoke_5(uint64_t a1, const void *a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  if ([MEMORY[0x277CBEB68] null] == a4 || a4 == 0)
  {
    v11 = *(a1 + 32);
    v12 = a2;
    v13 = a3;
    v14 = 0;
  }

  else
  {
    v15 = CFGetTypeID(a4);
    if (v15 != CFDictionaryGetTypeID())
    {
      return 4294960582;
    }

    v11 = *(a1 + 32);
    v12 = a2;
    v13 = a3;
    v14 = a4;
  }

  return AirPlayReceiverServerControl(v11, 1, v12, v13, v14, a5);
}

void AirPlayReceiverServerPlatformFinalize(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x277CCAB98] defaultCenter];
    [v1 removeObserver:a1 name:*MEMORY[0x277CB8068] object:0];
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 removeObserver:a1 name:*MEMORY[0x277CB80A0] object:0];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:a1 name:*MEMORY[0x277CB8098] object:0];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    v4 = *(a1 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 16) = 0;
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 24) = 0;
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 32) = 0;
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 40) = 0;
    }

    [a1 _unregisterAVSystemControllerNotifications];
    [*(a1 + 152) invalidate];

    *(a1 + 152) = 0;
    v8 = *(a1 + 128);
    if (v8 != -1)
    {
      notify_cancel(v8);
      *(a1 + 128) = -1;
    }

    v9 = *(a1 + 132);
    if (v9 != -1)
    {
      notify_cancel(v9);
      *(a1 + 132) = -1;
    }

    v10 = *(a1 + 136);
    if (v10 != -1)
    {
      notify_cancel(v10);
      *(a1 + 136) = -1;
    }

    v11 = *(a1 + 140);
    if (v11 != -1)
    {
      notify_cancel(v11);
      *(a1 + 140) = -1;
    }

    v12 = *(a1 + 144);
    if (v12 != -1)
    {
      notify_cancel(v12);
      *(a1 + 144) = -1;
    }

    [*(a1 + 168) setDelegate:0];
    v13 = *(a1 + 120);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 120) = 0;
    }

    *(a1 + 168) = 0;
    *(a1 + 64) = 0;

    *(a1 + 56) = 0;
    v14 = *(a1 + 176);
    if (v14)
    {
      dispatch_release(v14);
      *(a1 + 176) = 0;
    }
  }
}

uint64_t AirPlayReceiverServerPlatformControl(uint64_t a1, CFTypeRef cf1, const void *a3, const __CFDictionary *a4)
{
  v8 = *(a1 + 16);
  if (CFEqual(cf1, @"dacpStatus"))
  {
    if (*(a1 + 250))
    {
      Int64 = CFDictionaryGetInt64();
      if (Int64)
      {
        if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverServerPlatformControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "### DACP error %#m\n", Int64);
        }

        notify_set_state(v8[32], Int64);
        notify_post("com.apple.airplay.dacp.error");
      }
    }

    return 0;
  }

  if (!CFEqual(cf1, @"updatePrefs"))
  {
    if (CFEqual(cf1, @"updateActiveSessionRegistration"))
    {
      Value = CFDictionaryGetValue(a4, @"session");
      if (Value)
      {
        v11 = Value;
        v12 = CFDictionaryGetInt64();
        [v8 updateActiveSessionRegistration:v11 regType:v12 regOp:CFDictionaryGetInt64()];
        return 0;
      }
    }

    else if (CFEqual(cf1, @"updateHijackID"))
    {
      if (CFDictionaryGetValue(a4, @"hijackID"))
      {
        return 0;
      }
    }

    else
    {
      if (CFEqual(cf1, @"reportSessionStall"))
      {
        _TriggerWiFiDECaptureIfNeeded(a1, a4);
        return 0;
      }

      if (!CFEqual(cf1, @"triggerStackShot"))
      {
        if (CFEqual(cf1, @"partnerProcessDeath"))
        {
          if (FigCFEqual())
          {
            v15 = -[AVAudioSession opaqueSessionID]([+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager session], "opaqueSessionID");
            if (gLogCategory_AirPlayReceiverPlatform <= 30)
            {
              v16 = v15;
              if (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize())
              {
                LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverServerPlatformControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "Media AVAudioSessionID changed: %u -> %u\n", v8[26], v16);
              }
            }

            v8[26] = -[AVAudioSession opaqueSessionID]([+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager session], "opaqueSessionID");
          }

          return 0;
        }

        return -6714;
      }

      if (!a3 || (v14 = CFGetTypeID(a3), v14 == CFStringGetTypeID()))
      {
        if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverServerPlatformControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Triggering stackshot due to: %@\n", a3);
        }

        WriteStackshotReport_async();
        return 0;
      }
    }

    APSLogErrorAt();
    return -6705;
  }

  return 0;
}

void _TriggerWiFiDECaptureIfNeeded(void *a1, uint64_t a2)
{
  v7 = 0;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _TriggerWiFiDECaptureIfNeeded(AirPlayReceiverServerRef, CFDictionaryRef)", 33554482, "Dispatching onto HTTP queue in order to call WiFiDiagnosticExtension for stall state: %u\n", Int64Ranged);
  }

  CFRetain(a1);
  v4 = a1[11];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___TriggerWiFiDECaptureIfNeeded_block_invoke;
  block[3] = &__block_descriptor_44_e5_v8__0l;
  v6 = Int64Ranged;
  block[4] = a1;
  dispatch_async(v4, block);
}

__CFString *AirPlayReceiverServerPlatformCopyProperty(int a1, int a2, CFTypeRef cf1, uint64_t a4, int *a5)
{
  if (CFEqual(cf1, @"audioJackStatus"))
  {
    v7 = @"connected";
  }

  else
  {
    if (!CFEqual(cf1, @"skewCompensation"))
    {
      v7 = 0;
      v8 = -6714;
      if (!a5)
      {
        return v7;
      }

      goto LABEL_6;
    }

    v7 = *MEMORY[0x277CBED28];
  }

  CFRetain(v7);
  v8 = 0;
  if (a5)
  {
LABEL_6:
    *a5 = v8;
  }

  return v7;
}

uint64_t AirPlayReceiverServerPlatformSetProperty(uint64_t a1, int a2, CFTypeRef cf1, uint64_t a4, const void *a5)
{
  if (!cf1)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 16);
  if (CFEqual(cf1, @"receiverSessionCount"))
  {
    if (a5)
    {
      v8 = CFGetTypeID(a5);
      if (v8 == CFNumberGetTypeID())
      {
        [v7 setReceiverSessionCountAndUpdateStateIfNeeded:CFGetInt64()];
        return 0;
      }
    }

LABEL_21:
    APSLogErrorAt();
    return 4294960591;
  }

  if (CFEqual(cf1, @"mainMediaReceiverSession"))
  {
    if (!APSMultiPrimariesEnabled())
    {
      goto LABEL_24;
    }

    if (a5)
    {
      v9 = CFGetTypeID(a5);
      if (APReceiverRequestProcessorGetClassID_once != -1)
      {
        dispatch_once(&APReceiverRequestProcessorGetClassID_once, &__block_literal_global_303);
      }

      if (v9 != CMBaseClassGetCFTypeID())
      {
LABEL_24:
        APSLogErrorAt();
        return 4294960561;
      }
    }

    [v7 setMainMediaReceiverSession:a5];
    return 0;
  }

  if (!CFEqual(cf1, @"isMuted"))
  {
    return 4294960582;
  }

  if (!a5)
  {
    goto LABEL_21;
  }

  v11 = CFGetTypeID(a5);
  if (v11 != CFBooleanGetTypeID())
  {
    goto LABEL_21;
  }

  result = APSIsAPMSpeaker();
  if (result)
  {
    Value = CFBooleanGetValue(a5);
    _SetHWIsMuted(v7, 0, Value);
    return 0;
  }

  return result;
}

uint64_t _SetHWIsMuted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    v6 = "yes";
    if (*(a1 + 88))
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    if (!v3)
    {
      v6 = "no";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus _SetHWIsMuted(AirPlayReceiverPlatform *const, const AirPlayReceiverSessionRef, Boolean)", 33554482, "[AirPlayVolume] Current isMuted = '%s', new isMuted = '%s'.\n", v7, v6);
  }

  if (*(a1 + 88) != v3)
  {
    *(a1 + 88) = v3;
    if (a2)
    {
      v8 = AirPlayReceiverSessionAddMuteRequest(a2, v3);
      if (v8)
      {
        v12 = v8;
        APSLogErrorAt();
        return v12;
      }
    }

    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      if (*(a1 + 88))
      {
        v9 = "yes";
      }

      else
      {
        v9 = "no";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus _SetHWIsMuted(AirPlayReceiverPlatform *const, const AirPlayReceiverSessionRef, Boolean)", 33554482, "[AirPlayVolume] Setting AVSystemController_FullMuteAttribute to %s.\n", v9);
    }

    v10 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 88) != 0];
    [v10 setAttribute:v11 forKey:*MEMORY[0x277D26BE8] error:0];
  }

  return 0;
}

void _AirPlayReceiverSessionPlatformInvalidate(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v21 = v2;
    v3 = a1[3];
    v4 = *(v3 + 16);
    if (*(v3 + 249) && v2[24])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetNumber();
      *(v21 + 24) = 0;
      *(v21 + 7) = 0;
      v6 = a1[75];
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v7)
      {
        v7(v6, Mutable);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    v8 = a1[6];
    Empty = CFDictionaryGetEmpty();
    if (v8)
    {
      v10 = Empty;
      if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _ClearMRNowPlayingInfoForSession(AirPlayReceiverSessionRef)", 33554482, "[%{ptr}] Clearing now playing info.\n", a1);
      }

      [*(v8 + 48) setMRNowPlayingInfo:v10 withMergePolicy:1];
    }

    v11 = v21;
    if (*(v4 + 160))
    {
      [*(v21 + 6) setDelegate:0];
      v11 = v21;
    }

    v12 = v21;
    *(v21 + 6) = 0;
    v13 = *(v21 + 11);
    if (v13)
    {
      IOPMAssertionRelease(v13);
      v12 = v21;
      *(v21 + 11) = 0;
      if (gLogCategory_AirPlayReceiverPlatform <= 40)
      {
        if (gLogCategory_AirPlayReceiverPlatform != -1 || (v14 = _LogCategory_Initialize(), v12 = v21, v14))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _AirPlayReceiverSessionPlatformInvalidate(AirPlayReceiverSessionRef)", 33554472, "Allowing idle sleep on audio stop\n");
          v12 = v21;
        }
      }
    }

    v15 = v12[1];
    if (v15)
    {
      v16 = *(v15 + 32);
      v17 = *(*(a1[3] + 216) + 48);
      v18 = v17 && v17 == v16;
      if (v18 && APSIsMemberOfHTGroup())
      {
        [+[APAVAudioSessionManager ambientSessionManager](APAVAudioSessionManager setDuckOthers:"setDuckOthers:error:" error:0, 0];
      }
    }

    v19 = v21;
    v20 = *(v21 + 7);
    if (v20)
    {
      [v20 setResult:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", *MEMORY[0x277CCA590], -6723, 0)}];

      v19 = v21;
      *(v21 + 7) = 0;
    }

    a1[6] = 0;
    v19[1] = 0;
  }
}

void _HandleReceiverUINotification(int a1, void *a2, CFTypeRef cf1, uint64_t a4, uint64_t a5)
{
  if (CFEqual(cf1, @"stopAudio"))
  {
    if (a5)
    {
      Int64 = CFDictionaryGetInt64();
      v9 = a2[6];
      if (v9)
      {
        if (*(v9 + 28) == Int64)
        {
          CFRetain(a2);
          v10 = a2[2];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = ___HandleReceiverUINotification_block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0l;
          block[4] = a2;
          dispatch_async(v10, block);
        }

        else if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _HandleReceiverUINotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "Ignoring audio stop from stale session ID %u (current %u)\n");
        }
      }
    }

    else
    {

      APSLogErrorAt();
    }
  }

  else if (CFEqual(cf1, @"startPlayingOverP2P") || CFEqual(cf1, @"stopPlayingOverP2P"))
  {
    CFObjectControlAsync();
  }

  else if (CFEqual(cf1, @"startingVideo") || CFEqual(cf1, @"updateAudioMode"))
  {
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();

    _UpdateAVAudioSessionAudioMode(TypedValue);
  }

  else if (CFEqual(cf1, @"MakeNowPlayingSession"))
  {
    v12 = a2[6];
    if (v12)
    {
      [*(v12 + 48) makeNowPlayingPlayer];
      if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _HandleReceiverUINotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "Setting session %{ptr} as current now playing session\n", a2);
      }
    }
  }
}

uint64_t _UpdateAVAudioSessionAudioMode(uint64_t a1)
{
  v3 = 0;
  result = [+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager setAudioMode:"setAudioMode:isLongForm:error:" isLongForm:a1 error:1, &v3];
  if (result)
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50)
    {
      if (gLogCategory_AirPlayReceiverPlatform != -1)
      {
        return LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _UpdateAVAudioSessionAudioMode(CFStringRef)", 33554482, "Audio session mode updated to %@\n", a1);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _UpdateAVAudioSessionAudioMode(CFStringRef)", 33554482, "Audio session mode updated to %@\n", a1);
      }
    }
  }

  else if (gLogCategory_AirPlayReceiverPlatform <= 60)
  {
    if (gLogCategory_AirPlayReceiverPlatform != -1)
    {
      return LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _UpdateAVAudioSessionAudioMode(CFStringRef)", 33554492, "### Set audio session mode to %@ failed: %@\n", a1, v3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _UpdateAVAudioSessionAudioMode(CFStringRef)", 33554492, "### Set audio session mode to %@ failed: %@\n", a1, v3);
    }
  }

  return result;
}

uint64_t AirPlayReceiverSessionPlatformControl(uint64_t a1, CFTypeRef cf1)
{
  v4 = *(a1 + 48);
  if (CFEqual(cf1, @"duckAudio"))
  {
    v17 = 0;
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] DuckAudio\n", a1);
    }

    v8 = *(*(*(a1 + 24) + 216) + 48);
    if (v8)
    {
      v9 = v8 == *(a1 + 32);
    }

    else
    {
      v9 = 0;
    }

    if (v9 && APSIsMemberOfHTGroup())
    {
      [+[APAVAudioSessionManager ambientSessionManager](APAVAudioSessionManager setDuckOthers:"setDuckOthers:error:" error:1, &v17];
      v5 = NSErrorToOSStatus();
      if (v5)
      {
        APSLogErrorAt();
        if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "### DuckAudio failed with error %@\n", v17);
        }
      }

      return v5;
    }

LABEL_76:
    APSLogErrorAt();
    return 4294960587;
  }

  if (!CFEqual(cf1, @"unduckAudio"))
  {
    if (CFEqual(cf1, @"handleMediaAudioStartingForSession"))
    {
      v5 = *(a1 + 48);
      if (!v5)
      {
        return v5;
      }

      v6 = *(a1 + 24);
      if (*(v6 + 249))
      {
        v7 = *(v6 + 16);
        if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _HandleMediaAudioStartingForSession(AirPlayReceiverSessionRef)", 33554482, "[%{ptr}] Media audio starting.\n", a1);
        }

        if (*(v7 + 160))
        {
          [*(v5 + 48) setDelegate:v5];
        }
      }

      v5 = *(a1 + 48);
      if (!v5)
      {
        return v5;
      }

      if (!APSIsAPMSpeaker())
      {
        if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _SetInitialSoftwareVolumeIfNeeded(AirPlayReceiverSessionRef)", 33554482, "[AirPlayVolume] [%{ptr}] setting initial software volume %f\n", a1, *(v5 + 32));
        }

        _SetSessionSoftwareVolumeSliderValue(a1, *(v5 + 32));
      }
    }

    else if (CFEqual(cf1, @"handleMediaAudioStoppingForSession"))
    {
      if (*(a1 + 48) && gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _HandleMediaAudioStoppingForSession(AirPlayReceiverSessionRef)", 33554482, "[%{ptr}] Media audio stopping.\n", a1);
      }
    }

    else if (!CFEqual(cf1, @"startSession"))
    {
      if (CFEqual(cf1, @"stopSession"))
      {
        _AirPlayReceiverSessionPlatformInvalidate(a1);
      }

      else
      {
        if (!CFEqual(cf1, @"EnsurePlatformIsReadyToAcceptAudio"))
        {
          if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "[%{ptr}] Unknown command %@\n", a1, cf1);
          }

          return 4294960582;
        }

        if (*(a1 + 683))
        {
          APSLogErrorAt();
          return 4294960561;
        }

        v15 = *(v4 + 56);
        if (v15)
        {
          if (gLogCategory_AirPlayReceiverPlatform <= 50)
          {
            if (gLogCategory_AirPlayReceiverPlatform != -1 || (v16 = _LogCategory_Initialize(), v15 = *(v4 + 56), v16))
            {
              LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Waiting for StartNowPlayingSession result from task [%{ptr}]\n", a1, v15);
              v15 = *(v4 + 56);
            }
          }

          [v15 result];
          v5 = NSErrorToOSStatus();
          if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Received StartNowPlayingSession result from task [%{ptr}]: %#m\n", a1, *(v4 + 56), v5);
          }

          return v5;
        }
      }
    }

    return 0;
  }

  v17 = 0;
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] UnduckAudio\n", a1);
  }

  v10 = *(*(*(a1 + 24) + 216) + 48);
  if (v10)
  {
    v11 = v10 == *(a1 + 32);
  }

  else
  {
    v11 = 0;
  }

  if (!v11 || !APSIsMemberOfHTGroup())
  {
    goto LABEL_76;
  }

  [+[APAVAudioSessionManager ambientSessionManager](APAVAudioSessionManager setDuckOthers:"setDuckOthers:error:" error:0, &v17];
  v12 = NSErrorToOSStatus();
  v5 = 0;
  if (v12)
  {
    v13 = v12;
    APSLogErrorAt();
    if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "### UnduckAudio failed with error %@\n", v17);
    }

    return v13;
  }

  return v5;
}

uint64_t _SetSessionSoftwareVolumeSliderValue(uint64_t a1, float a2)
{
  APSVolumeConvertSliderValueToLinearGain();
  valuePtr = v4;
  if (gLogCategory_AirPlayReceiverPlatform <= 50)
  {
    v5 = v4;
    if (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus _SetSessionSoftwareVolumeSliderValue(const AirPlayReceiverSessionRef, Float32)", 33554482, "[AirPlayVolume] Setting software volume to %f (%f linear)\n", a2, v5);
    }
  }

  v6 = *MEMORY[0x277CBECE8];
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloat32Type, &valuePtr);
  if (!v7)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v8 = v7;
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    CFRelease(v8);
    return 4294960568;
  }

  v10 = Mutable;
  CFDictionarySetValue(Mutable, @"volumeLinear", v8);
  AirPlayReceiverSessionControl(a1, v11, @"volumeChanged", 0, v10, 0);
  v12 = *(a1 + 600);
  if (v12)
  {
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v13)
    {
      v13(v12, @"Volume", v8);
    }
  }

  CFRelease(v8);
  CFRelease(v10);
  return 0;
}

CFNumberRef AirPlayReceiverSessionPlatformCopyProperty(uint64_t a1, int a2, CFTypeRef cf1, uint64_t a4, int *a5)
{
  if (CFEqual(cf1, @"volume"))
  {
    if (a1)
    {
      if (APSIsAPMSpeaker())
      {
        _GetHWVolumeSliderValue();
      }

      else
      {
        _GetSWVolumeSliderValue(*(*(a1 + 48) + 32));
      }

      APSVolumeConvertSliderValueToDB();
      valuePtr = v9;
      result = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
      if (result)
      {
        v8 = 0;
        if (!a5)
        {
          return result;
        }

        goto LABEL_10;
      }

      APSLogErrorAt();
      v8 = -6728;
    }

    else
    {
      APSLogErrorAt();
      v8 = -6705;
      APSLogErrorAt();
    }

    result = 0;
    if (!a5)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    v8 = -6714;
    if (!a5)
    {
      return result;
    }
  }

LABEL_10:
  *a5 = v8;
  return result;
}

float _GetSWVolumeSliderValue(float a1)
{
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "Float32 _GetSWVolumeSliderValue(AirPlayReceiverSessionRef)", 33554482, "[AirPlayVolume] Retrieved volumeSliderValue: %f\n", a1);
  }

  return a1;
}

uint64_t AirPlayReceiverSessionPlatformSetProperty(uint64_t a1, int a2, CFTypeRef cf1, __CFString *a4, const __CFArray *a5)
{
  v5 = *(a1 + 48);
  if (!v5)
  {
    return 0;
  }

  v10 = *(*(a1 + 24) + 16);
  if (CFEqual(cf1, @"mrNowPlayingInfo"))
  {
    if (a4 != @"replace")
    {
      if (a4)
      {
        if (CFEqual(a4, @"replace"))
        {
          goto LABEL_6;
        }

        a4 = 0;
      }

      v11 = "Update";
LABEL_22:
      v16 = gLogCategory_AirPlayReceiverPlatform;
      if (*(v10 + 50))
      {
        if (gLogCategory_AirPlayReceiverPlatform <= 50)
        {
          if (gLogCategory_AirPlayReceiverPlatform != -1)
          {
LABEL_25:
            if (v16 > 30)
            {
              v17 = 1;
            }

            else
            {
              v17 = v16 == -1 && _LogCategory_Initialize() == 0;
            }

            LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformSetProperty(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFTypeRef)", 33554482, "[%{ptr}] Video is active - Dropping audio now playing info with merge policy [%s]%?{end} ==> %.64@\n", a1, v11, v17, a5);
            return 0;
          }

          if (_LogCategory_Initialize())
          {
            v16 = gLogCategory_AirPlayReceiverPlatform;
            goto LABEL_25;
          }
        }

        return 0;
      }

      if (gLogCategory_AirPlayReceiverPlatform <= 50)
      {
        if (gLogCategory_AirPlayReceiverPlatform != -1)
        {
LABEL_30:
          if (v16 > 30)
          {
            v18 = 1;
          }

          else
          {
            v18 = v16 == -1 && _LogCategory_Initialize() == 0;
          }

          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformSetProperty(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFTypeRef)", 33554482, "[%{ptr}] Setting audio now playing info with merge policy [%s]%?{end} ==> %.64@\n", a1, v11, v18, a5);
          goto LABEL_53;
        }

        if (_LogCategory_Initialize())
        {
          v16 = gLogCategory_AirPlayReceiverPlatform;
          goto LABEL_30;
        }
      }

LABEL_53:
      [*(v5 + 48) setMRNowPlayingInfo:a5 withMergePolicy:a4];
      return 0;
    }

LABEL_6:
    a4 = 1;
    v11 = "Replace";
    goto LABEL_22;
  }

  if (CFEqual(cf1, @"metaData"))
  {
    if (*(*(a1 + 24) + 249))
    {
      [*(v5 + 48) setAPNowPlayingInfo:a5];
      if (*(v5 + 24))
      {
        v12 = *(a1 + 600);
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v13)
        {
          v13(v12, @"AudioMetadata", a5);
        }
      }
    }

    return 0;
  }

  if (CFEqual(cf1, @"progress"))
  {
    if (*(*(a1 + 24) + 249) && *(v5 + 24))
    {
      v14 = *(a1 + 600);
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v15)
      {
        v15(v14, @"AudioProgress", a5);
      }

      [*(v5 + 48) setAPNowPlayingInfo:a5];
      if (gLogCategory_AirPlayReceiverPlatform <= 10 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformSetProperty(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFTypeRef)", 33554442, "New progress: %@\n", a5);
      }
    }

    return 0;
  }

  if (CFEqual(cf1, @"volume"))
  {
    CFGetDouble();
    APSVolumeConvertDBToClampedSliderValue();
    v20 = v19;
    if (APSIsAPMSpeaker())
    {
      v21 = *(*(a1 + 24) + 16);
      if (v21)
      {
        if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
        {
          APSVolumeConvertSliderValueToDB();
          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus _SetHWVolumeSliderValue(AirPlayReceiverPlatform *, const AirPlayReceiverSessionRef, Float32)", 33554482, "[AirPlayVolume] Setting volume to dB=%f (sliderValue = %f)\n", v22, v20);
        }

        if (!APSVolumeSliderValuesAreNoticeablyDifferent() && *(v21 + 88) == (v20 == 0.0))
        {
          return 0;
        }

        valuePtr = v20;
        v29 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr);
        if (v29)
        {
          v30 = v29;
          v31 = _AddVolumeOrMuteRequest(a1, v29);
          if (v31)
          {
            IsMuted = v31;
            APSLogErrorAt();
            CFRelease(v30);
          }

          else
          {
            *(a1 + 712) = valuePtr;
            CFRelease(v30);
            if (!*(v21 + 88) || (*(v21 + 88) = 0, v32 = AirPlayReceiverSessionAddMuteRequest(a1, 0), !v32))
            {
              *(v21 + 84) = v20;
              if (gLogCategory_AirPlayReceiverPlatform <= 40)
              {
                if (gLogCategory_AirPlayReceiverPlatform == -1)
                {
                  if (!_LogCategory_Initialize())
                  {
                    goto LABEL_80;
                  }

                  v20 = *(v21 + 84);
                }

                LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus _SetHWVolumeSliderValue(AirPlayReceiverPlatform *, const AirPlayReceiverSessionRef, Float32)", 33554472, "[AirPlayVolume] Setting hardware volume to %f\n", v20);
              }

LABEL_80:
              v33 = [MEMORY[0x277D26E58] sharedAVSystemController];
              LODWORD(v34) = *(v21 + 84);
              if (([v33 setVolumeTo:@"Audio/Video" forCategory:v34] & 1) == 0 && gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus _SetHWVolumeSliderValue(AirPlayReceiverPlatform *, const AirPlayReceiverSessionRef, Float32)", 33554522, "### Error updating volume to %f.\n");
              }

              return 0;
            }

            IsMuted = v32;
          }
        }

        else
        {
          APSLogErrorAt();
          IsMuted = 4294960568;
        }

        APSLogErrorAt();
      }

      else
      {
        APSLogErrorAt();
        IsMuted = 4294960591;
      }
    }

    else
    {
      IsMuted = _SetSWVolumeSliderValue(a1, 0, v20);
      if (!IsMuted)
      {
        return IsMuted;
      }
    }

LABEL_112:
    APSLogErrorAt();
    return IsMuted;
  }

  if (!CFEqual(cf1, @"isMuted"))
  {
    if (CFEqual(cf1, @"mrPlaybackState"))
    {
      v28 = CFGetInt64Ranged();
      if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformSetProperty(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFTypeRef)", 33554482, "[%{ptr}] Setting MR playback state to %u\n", a1, v28);
      }

      [*(v5 + 48) setMRPlaybackState:v28];
    }

    else if (CFEqual(cf1, @"mrSupportedCommandsFromSender"))
    {
      if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        if (a5)
        {
          Count = CFArrayGetCount(a5);
        }

        else
        {
          Count = 0;
        }

        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformSetProperty(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFTypeRef)", 33554482, "[%{ptr}] Setting %d supported commands from sender\n", a1, Count);
      }

      [*(v5 + 48) setMRSupportedCommandsFromSerializedArray:a5];
    }

    else
    {
      if (!CFEqual(cf1, @"mrNowPlayingClient"))
      {
        return 4294960582;
      }

      if (a5 && (v36 = CFGetTypeID(a5), v36 == CFDataGetTypeID()))
      {
        [*(v5 + 48) setMRNowPlayingClient:a5];
      }

      else
      {
        APSLogErrorAt();
      }
    }

    return 0;
  }

  v23 = CFGetInt64();
  if (a4)
  {
    v24 = CFGetTypeID(a4);
    if (v24 == CFDictionaryGetTypeID())
    {
      FigCFDictionaryGetBooleanIfPresent();
    }
  }

  if (gLogCategory_AirPlayReceiverPlatform <= 40 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    v27 = "no";
    if (v23)
    {
      v27 = "yes";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverSessionPlatformSetProperty(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFTypeRef)", 33554472, "[AirPlayVolume] [%s] received isMuted = %s (user)\n", "AirPlayReceiverSessionPlatformSetProperty", v27);
  }

  IsMuted = _SetIsMuted(a1, v23 != 0);
  if (IsMuted)
  {
    goto LABEL_112;
  }

  return IsMuted;
}

uint64_t _SetSWVolumeSliderValue(uint64_t a1, int a2, float a3)
{
  if (a1)
  {
    v6 = *(a1 + 48);
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      APSVolumeConvertSliderValueToDB();
      if (*(v6 + 36))
      {
        v8 = 62;
      }

      else
      {
        v8 = 61;
      }

      if (a2)
      {
        v9 = 61;
      }

      else
      {
        v9 = v8;
      }

      v10 = v7;
      if (*(v6 + 36))
      {
        v11 = a2 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        v12 = "no";
      }

      else
      {
        v12 = "yes";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus _SetSWVolumeSliderValue(const AirPlayReceiverSessionRef, Float32, Boolean)", 33554482, "[AirPlayVolume] Setting volume to dB=%f (sliderValue = %f, muted =%c %s)\n", v10, a3, v9, v12);
    }

    result = APSVolumeSliderValuesAreNoticeablyDifferent();
    if (result)
    {
      *(v6 + 32) = a3;
      if (!a2)
      {
        *(v6 + 36) = 0;
        APSVolumeConvertSliderValueToDB();
        CFObjectSetPropertyDouble();
      }

      return _SetSessionSoftwareVolumeSliderValue(a1, a3);
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return result;
}

uint64_t _SetIsMuted(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  if (!APSIsAPMSpeaker())
  {
    APSVolumeConvertDBToSliderValue();
    APSVolumeConvertDBToSliderValue();
    v6 = *(a1 + 48);
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      if (*(v6 + 36))
      {
        v7 = "yes";
      }

      else
      {
        v7 = "no";
      }

      if (a2)
      {
        v8 = "yes";
      }

      else
      {
        v8 = "no";
      }

      v9 = *(v6 + 40);
      APSVolumeConvertSliderValueToDB();
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus _SetSWIsMuted(const AirPlayReceiverSessionRef, Boolean)", 33554482, "[AirPlayVolume] Current isMuted = '%s', new isMuted = '%s', mutedVolume = %f (%f dB).\n", v7, v8, v9, v10);
    }

    if (*(v6 + 36) != a2)
    {
      v11 = *(*(a1 + 48) + 32);
      _GetSWVolumeSliderValue(v11);
      v12 = *(v6 + 40);
      if (v12 <= 0.0)
      {
        *(v6 + 40) = 1045220557;
        v12 = 0.2;
      }

      APSVolumeConvertDBToSliderValue();
      if (a2 == 1)
      {
        v12 = v13;
      }

      else
      {
        v11 = v13;
      }

      *(v6 + 40) = v11;
      *(v6 + 36) = a2;
      if (gLogCategory_AirPlayReceiverPlatform > 50)
      {
        goto LABEL_28;
      }

      if (gLogCategory_AirPlayReceiverPlatform == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_28:
          v15 = _SetSWVolumeSliderValue(a1, 1, v12);
          if (v15)
          {
            APSLogErrorAt();
          }

          return v15;
        }

        LODWORD(a2) = *(v6 + 36);
        v11 = *(v6 + 40);
      }

      v14 = "yes";
      if (!a2)
      {
        v14 = "no";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus _SetSWIsMuted(const AirPlayReceiverSessionRef, Boolean)", 33554482, "[AirPlayVolume] Emulating mute by setting volume to %f; muted=%s, volumeBeforeMute=%f.\n", v12, v14, v11);
      goto LABEL_28;
    }

    return 0;
  }

  v4 = *(*(a1 + 24) + 16);

  return _SetHWIsMuted(v4, a1, a2);
}

void sysInfo_updateAdvertiserInfoAndNotify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 56) = 0;
  }

  v6 = *MEMORY[0x277CBECE8];
  v73 = 0;
  v7 = APAdvertiserInfoCreate(v6, &v73);
  if (v7)
  {
    v54 = v7;
    APSLogErrorAt();
    v8 = v73;
    goto LABEL_89;
  }

  v8 = v73;
  v9 = CFObjectSetPropertyInt64();
  if (v9)
  {
    v54 = v9;
LABEL_128:
    APSLogErrorAt();
    goto LABEL_89;
  }

  v10 = CFObjectSetPropertyInt64();
  if (v10)
  {
    v54 = v10;
    goto LABEL_128;
  }

  __str[0] = 0;
  if (IsAppleTV() || APSIsAPMSpeaker())
  {
    v11 = *(a1 + 720);
    if (v11)
    {
      CFDataGetBytePtr(v11);
      HardwareAddressToCString();
      v12 = CFObjectSetPropertyCString();
      if (v12)
      {
        v54 = v12;
        goto LABEL_128;
      }
    }
  }

  DeviceNameInternal = sysInfo_getDeviceNameInternal(a1, __str, 0x401uLL);
  if (DeviceNameInternal)
  {
    v54 = DeviceNameInternal;
    goto LABEL_128;
  }

  v14 = CFObjectSetPropertyCString();
  if (v14)
  {
    v54 = v14;
    goto LABEL_128;
  }

  HardwareAddressToCString();
  v15 = CFObjectSetPropertyCString();
  if (v15)
  {
    v54 = v15;
    goto LABEL_128;
  }

  v18 = *(a1 + 120);
  if (v18)
  {
    APAdvertiserInfoSetProperty(v8, v16, @"deviceEnclosureColor", v17, v18);
  }

  FeaturesInternal = sysInfo_createFeaturesInternal(a1);
  if (FeaturesInternal)
  {
    v22 = FeaturesInternal;
    v23 = APAdvertiserInfoSetProperty(v8, v20, @"featuresEx", v21, FeaturesInternal);
    if (v23)
    {
      v54 = v23;
      goto LABEL_120;
    }

    sysInfo_getStatusFlags(a1);
    v24 = CFObjectSetPropertyInt64();
    if (v24)
    {
      v54 = v24;
      goto LABEL_120;
    }

    v28 = *(a1 + 144);
    if (!v28)
    {
LABEL_29:
      v35 = *(a1 + 160);
      if (v35)
      {
        v36 = APAdvertiserInfoSetProperty(v8, v25, @"parentGroupID", v27, v35);
        if (v36)
        {
          v54 = v36;
          goto LABEL_120;
        }

        v37 = CFObjectSetProperty();
        if (v37)
        {
          v54 = v37;
          goto LABEL_120;
        }
      }

      v38 = *(a1 + 256);
      if (v38)
      {
        v39 = APAdvertiserInfoSetProperty(v8, v25, @"persistentGroupUUID", v27, v38);
        if (v39)
        {
          v54 = v39;
          goto LABEL_120;
        }

        if (*(a1 + 240) >= 1)
        {
          CFObjectSetPropertyInt64();
        }

        CFObjectSetPropertyInt64();
        APAdvertiserInfoSetProperty(v8, v40, @"persistentGroupModel", v41, *(a1 + 296));
        v42 = *(a1 + 280);
        if (v42)
        {
          APAdvertiserInfoSetProperty(v8, v25, @"persistentGroupMemberID", v27, v42);
        }
      }

      v43 = *(a1 + 176);
      if (v43)
      {
        v44 = APAdvertiserInfoSetProperty(v8, v25, @"tightSyncUUID", v27, v43);
        if (v44)
        {
          v54 = v44;
          goto LABEL_120;
        }

        APAdvertiserInfoSetProperty(v8, v45, @"tightSyncGroupModel", v46, *(a1 + 200));
      }

      __str[0] = 0;
      sysInfo_getDeviceModel(__str, v25, v26);
      if (__str[0])
      {
        v47 = CFObjectSetPropertyCString();
        if (v47)
        {
          v54 = v47;
          goto LABEL_120;
        }
      }

      v48 = CFObjectSetPropertyInt64();
      if (v48)
      {
        v54 = v48;
        goto LABEL_120;
      }

      v49 = CFObjectSetPropertyCString();
      if (v49)
      {
        v54 = v49;
        goto LABEL_120;
      }

      v52 = *(a1 + 464);
      if (v52)
      {
        v53 = APAdvertiserInfoSetProperty(v8, v50, @"publicCUAirPlayPairingIdentity", v51, v52);
        if (v53)
        {
          v54 = v53;
          goto LABEL_120;
        }
      }

      else if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_createAdvertiserInfo(APReceiverSystemInfoRef, CFAllocatorRef, APAdvertiserInfoRef *)", 33554482, "### There is no AirPlay pairing identity to advertise...\n");
      }

      v55 = *(a1 + 456);
      if (v55)
      {
        v56 = APAdvertiserInfoSetProperty(v8, v50, @"publicCUSystemPairingIdentity", v51, v55);
        if (v56)
        {
          v54 = v56;
          goto LABEL_120;
        }
      }

      else if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_createAdvertiserInfo(APReceiverSystemInfoRef, CFAllocatorRef, APAdvertiserInfoRef *)", 33554482, "### There is no system pairing identity to advertise...\n");
      }

      PairingPublicKeyID = sysInfo_getPairingPublicKeyID(v75);
      if (PairingPublicKeyID)
      {
        if (gLogCategory_APReceiverSystemInfo <= 50)
        {
          v58 = PairingPublicKeyID;
          if (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_createAdvertiserInfo(APReceiverSystemInfoRef, CFAllocatorRef, APAdvertiserInfoRef *)", 33554482, "### Add pairing public key to advertiser info failed: %#m\n", v58);
          }
        }
      }

      else
      {
        DataToHexCStringEx();
        v59 = CFObjectSetPropertyCString();
        if (v59)
        {
          v54 = v59;
          goto LABEL_120;
        }
      }

      APSVersionUtilsGetShortVersionLength();
      v60 = CFObjectSetPropertyCString();
      if (v60)
      {
        v54 = v60;
      }

      else
      {
        v74 = 0;
        v77 = 0u;
        v78 = 0u;
        GestaltGetCString();
        if (!v74 && (v74 = CFObjectSetPropertyCString()) == 0 || (APSLogErrorAt(), (v54 = v74) == 0))
        {
          VONlh32NYbFTEnv();
          v61 = CFObjectSetPropertyInt64();
          if (v61)
          {
            v54 = v61;
          }

          else
          {
            snprintf(__str, 0x401uLL, "%u", 65537);
            v62 = CFObjectSetPropertyCString();
            if (v62)
            {
              v54 = v62;
            }

            else
            {
              v63 = CFObjectSetPropertyInt64();
              if (v63)
              {
                v54 = v63;
              }

              else
              {
                v64 = CFObjectSetPropertyInt64();
                if (v64)
                {
                  v54 = v64;
                }

                else
                {
                  v65 = APSFeaturesHasFeature() != 0;
                  if (APSFeaturesHasFeature())
                  {
                    v66 = (2 * v65) | 4;
                  }

                  else
                  {
                    v66 = 2 * v65;
                  }

                  if (APSFeaturesHasFeature())
                  {
                    v67 = v66 + 1;
                  }

                  else
                  {
                    v67 = v66;
                  }

                  if (v67 && (v68 = CFObjectSetPropertyInt64()) != 0)
                  {
                    v54 = v68;
                  }

                  else
                  {
                    v69 = CFObjectSetProperty();
                    if (v69)
                    {
                      v54 = v69;
                    }

                    else
                    {
                      v70 = CFObjectSetPropertyCString();
                      if (v70)
                      {
                        v54 = v70;
                      }

                      else
                      {
                        v71 = *(a1 + 316);
                        if (v71 != 2 && !*(a1 + 424) || (v72 = CFObjectSetPropertyInt64()) == 0)
                        {
                          v54 = 0;
                          *(a1 + 56) = v8;
                          v73 = 0;
                          v8 = 0;
LABEL_88:
                          CFRelease(v22);
                          goto LABEL_89;
                        }

                        v54 = v72;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_120:
      APSLogErrorAt();
      goto LABEL_88;
    }

    if (*(a1 + 256))
    {
      v29 = 288;
    }

    else
    {
      if (!*(a1 + 176))
      {
        v30 = 0;
        goto LABEL_24;
      }

      v29 = 208;
    }

    v30 = *(a1 + v29);
LABEL_24:
    v31 = APAdvertiserInfoSetProperty(v8, v25, @"groupID", v27, v28);
    if (v31)
    {
      v54 = v31;
      goto LABEL_120;
    }

    v32 = CFObjectSetProperty();
    if (v32)
    {
      v54 = v32;
      goto LABEL_120;
    }

    v33 = CFObjectSetProperty();
    if (v33)
    {
      v54 = v33;
      goto LABEL_120;
    }

    if (v30)
    {
      v34 = APAdvertiserInfoSetProperty(v8, v25, @"groupPublicName", v27, v30);
      if (v34)
      {
        v54 = v34;
        goto LABEL_120;
      }
    }

    goto LABEL_29;
  }

  APSLogErrorAt();
  v54 = -6728;
LABEL_89:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v54)
  {
    APSLogErrorAt();
  }

  else
  {
    if (a2)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    sysInfo_handleInfoDictUpdate(a1);
  }
}

uint64_t sysInfo_getDeviceNameInternal(uint64_t a1, char *__dst, size_t __size)
{
  if (__size)
  {
    v5 = *(a1 + 400);
    if (v5)
    {
LABEL_3:
      strlcpy(__dst, v5, __size);
      return 0;
    }

    *__dst = 0;
    strlcpy(__dst, (a1 + 336), __size);
    result = 0;
    if (!*__dst)
    {
      v5 = "AirPlay";
      goto LABEL_3;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895275;
  }

  return result;
}

uint64_t sysInfo_createFeaturesInternal(uint64_t a1)
{
  Mutable = APSFeaturesCreateMutable();
  if (Mutable)
  {
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    if (!*(a1 + 568))
    {
      APSFeaturesSetFeature();
      if (!APSIsAPMSpeaker() && !APSSettingsGetInt64() && !*(a1 + 682))
      {
        APSFeaturesSetFeature();
        APSFeaturesSetFeature();
        if (!APSSettingsGetIntWithDefault())
        {
          APSFeaturesSetFeature();
        }

        if (APSSettingsGetIntWithDefault())
        {
          APSFeaturesSetFeature();
        }

        if (APSSettingsGetIntWithDefault())
        {
          APSFeaturesSetFeature();
        }

        if (APSSettingsGetIntWithDefault())
        {
          APSFeaturesSetFeature();
        }

        APSFeaturesSetFeature();
        APSFeaturesSetFeature();
        APSFeaturesSetFeature();
        APSFeaturesSetFeature();
      }
    }

    if (!APSIsAPMSpeaker())
    {
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
    }

    if (APSIsAPValeriaScreenSender())
    {
      APSFeaturesSetFeature();
    }

    if (!APSIsAPMSpeaker())
    {
      APSFeaturesSetFeature();
    }

    if (!APSIsAPMSpeaker() && GestaltGetBoolean())
    {
      APSFeaturesSetFeature();
    }

    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    if (!*(a1 + 315))
    {
      APSFeaturesSetFeature();
      if (!*(a1 + 568))
      {
        APSFeaturesSetFeature();
      }

      APSFeaturesSetFeature();
    }

    if (APSSettingsGetInt64())
    {
      APSFeaturesSetFeature();
    }

    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    if (*(a1 + 311))
    {
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      if (*(a1 + 311))
      {
        if (GestaltGetBoolean())
        {
          APSFeaturesSetFeature();
        }
      }
    }

    if (!*(a1 + 312))
    {
      APSFeaturesSetFeature();
    }

    APSFeaturesSetFeature();
    if (APSSettingsIsFeatureEnabled())
    {
      APSFeaturesSetFeature();
    }

    if (APSSettingsIsFeatureEnabled())
    {
      APSFeaturesSetFeature();
    }

    if (APSIsAPMSpeaker())
    {
      APSFeaturesSetFeature();
    }

    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    if (IsAppleTV())
    {
      APSFeaturesSetFeature();
    }

    if (IsAppleTV() || APSIsAPMSpeaker())
    {
      APSFeaturesSetFeature();
    }

    if (IsAppleTV())
    {
      APSFeaturesSetFeature();
    }

    if (*(a1 + 128))
    {
      APSFeaturesSetFeature();
    }

    if (APSIsProximityReceiverEnabled())
    {
      APSFeaturesSetFeature();
    }

    if (APSIsOpenNANReceiverEnabled())
    {
      APSFeaturesSetFeature();
    }

    if (!APSFeaturesIsEmpty())
    {
      APSFeaturesClearAllFeatures();
    }

    if (APSIsSetMRInfoCommandEnabled())
    {
      APSFeaturesSetFeature();
    }

    if (APSIsAPMSpeaker())
    {
      APSFeaturesSetFeature();
    }

    if (APSSettingsGetIntWithDefault())
    {
      APSFeaturesSetFeature();
    }

    if (APSSettingsIsFeatureEnabled() && FVDUtilsEncryptedDecodeSupported())
    {
      APSFeaturesSetFeature();
    }
  }

  else
  {
    APSLogErrorAt();
  }

  return Mutable;
}

uint64_t sysInfo_getStatusFlags(_BYTE *a1)
{
  if (a1[480])
  {
    v2 = 8;
  }

  else
  {
    v2 = (a1[481] != 0) << 7;
  }

  if (a1[433])
  {
    v2 |= 0x200u;
  }

  if (a1[129])
  {
    v3 = 524292;
  }

  else
  {
    v3 = 4;
  }

  v4 = v3 | v2;
  if (APSSettingsGetInt64() && a1[307])
  {
    v4 |= 0x40u;
  }

  if (a1[682])
  {
    v5 = v4 | 0x40000;
  }

  else
  {
    v5 = v4;
  }

  if (a1[309])
  {
    v5 |= 0x100u;
  }

  if (a1[310])
  {
    v6 = v5 | 0x400;
  }

  else
  {
    v6 = v5;
  }

  if (a1[169] && APSMultiPrimariesEnabled())
  {
    v6 |= 0x800u;
  }

  if (a1[225])
  {
    v7 = v6 | 0x20000;
  }

  else
  {
    v7 = v6;
  }

  if (a1[226])
  {
    v8 = v7 | 0x100000;
  }

  else
  {
    v8 = v7;
  }

  if (IsAppleTV() || APSIsAPMSpeaker() || a1[314])
  {
    if (a1[305])
    {
      v9 = v8 | 0x1000;
    }

    else
    {
      v9 = v8;
    }

    if (a1[304])
    {
      v9 |= 0x8000u;
    }

    if (a1[308])
    {
      v8 = v9 | 0x10000;
    }

    else
    {
      v8 = v9;
    }
  }

  if (APSIsAPMSpeaker())
  {
    if (a1[184])
    {
      v10 = v8 | 0x2000;
    }

    else
    {
      v10 = v8;
    }

    if (a1[306])
    {
      return v10 | 0x200000;
    }

    else
    {
      return v10;
    }
  }

  return v8;
}

__n128 sysInfo_getDeviceModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  GetDeviceModelString();
  if (!*a1)
  {
    if (APSIsAPMSpeaker())
    {
      *(a1 + 16) = 49;
      v5 = "AudioAccessory1,1";
LABEL_4:
      result = *v5;
      *a1 = *v5;
      return result;
    }

    if (!*a1)
    {
      *(a1 + 16) = 49;
      v5 = "AirPlayGeneric1,1";
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sysInfo_getPairingPublicKeyID(uint64_t a1)
{
  v1 = gQblcfSzZBQsYCCV();
  if (v1)
  {
    v2 = v1;
    goto LABEL_5;
  }

  v2 = KUY675K4ryxHGzD5GVD();
  CFRelease(0);
  if (v2)
  {
LABEL_5:
    APSLogErrorAt();
  }

  return v2;
}

void sysInfo_handleInfoDictUpdate(uint64_t a1)
{
  v10 = 0;
  cf = 0;
  if (!IsAppleTV() && !APSIsAPMSpeaker())
  {
    v5 = 0;
    goto LABEL_27;
  }

  v2 = CFArrayEnsureCreatedAndAppend();
  if (v2)
  {
    v9 = v2;
  }

  else
  {
    v3 = CFArrayEnsureCreatedAndAppend();
    if (!v3)
    {
      v4 = *MEMORY[0x277CBECE8];
      sysInfo_copyInfoDictInternal(a1, cf, *MEMORY[0x277CBECE8], &v10);
      v5 = v10;
      if (v10)
      {
        Mutable = CFDictionaryCreateMutable(v4, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v7 = Mutable;
        if (Mutable)
        {
          CFDictionarySetValue(Mutable, @"InfoDict", v5);
          v8 = APSXPCClientSendCommandCreatingReply();
          if (!v8)
          {
            goto LABEL_8;
          }

          v9 = v8;
          APSLogErrorAt();
        }

        else
        {
          APSLogErrorAt();
          v9 = 4294960568;
        }

        goto LABEL_21;
      }

      APSLogErrorAt();
LABEL_27:
      v7 = 0;
      goto LABEL_8;
    }

    v9 = v3;
  }

  APSLogErrorAt();
  v5 = 0;
  v7 = 0;
LABEL_21:
  if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_handleInfoDictUpdate(APReceiverSystemInfoRef)", 33554522, "### Failed to sending info dict to APReceiverServices due to err: %#m\n", v9);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t sysInfo_copyInfoDictInternal(uint64_t a1, const __CFArray *a2, CFAllocatorRef allocator, __CFDictionary **a4)
{
  v43[4] = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v39 = 4294895276;
    APSLogErrorAt();
    v23 = 0;
    v34 = 0;
    FeaturesInternal = 0;
    goto LABEL_102;
  }

  HardwareAddressToCString();
  CFDictionarySetCString();
  FeaturesInternal = sysInfo_createFeaturesInternal(a1);
  if (!APSFeaturesIsEmpty())
  {
    v43[0] = 0;
    v9 = APSFeaturesCopyStringRepresentation();
    if (v9)
    {
      v39 = v9;
      APSLogErrorAt();
      v23 = 0;
      goto LABEL_114;
    }

    CFDictionarySetValue(Mutable, @"featuresEx", v43[0]);
    CFRelease(v43[0]);
    APSFeaturesGetLegacyFlags();
    CFDictionarySetInt64();
  }

  v10 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(Mutable, @"keepAliveSendStatsAsBody", *MEMORY[0x277CBED28]);
  v11 = *MEMORY[0x277CBED10];
  if (*(a1 + 681))
  {
    v12 = v10;
  }

  else
  {
    v12 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"canRecordScreenStream", v12);
  if (*(a1 + 684))
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  CFDictionarySetValue(Mutable, @"forwardFrameUserData", v13);
  if (*(a1 + 682))
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  CFDictionarySetValue(Mutable, @"screenDemoMode", v14);
  if (sysInfo_getReceiverHDRCapability_sCheckOnce != -1)
  {
    dispatch_once(&sysInfo_getReceiverHDRCapability_sCheckOnce, &__block_literal_global_561);
  }

  CFDictionarySetValue(Mutable, @"receiverHDRCapability", sysInfo_getReceiverHDRCapability_capability);
  if (*(a1 + 683))
  {
    CFDictionarySetValue(Mutable, @"supportsSenderUIEvents", v10);
  }

  __dst[0] = 0;
  sysInfo_getDeviceModel(__dst, v15, v16);
  CFDictionarySetCString();
  v17 = *(a1 + 120);
  if (v17)
  {
    CFDictionarySetValue(Mutable, @"deviceEnclosureColor", v17);
  }

  __dst[0] = 0;
  sysInfo_getDeviceNameInternal(a1, __dst, 0x401uLL);
  CFDictionarySetCString();
  __dst[0] = 0;
  GetSystemBuildVersionString();
  CFDictionarySetCString();
  CFDictionarySetCString();
  PairingPublicKeyID = sysInfo_getPairingPublicKeyID(v43);
  if (PairingPublicKeyID)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      v19 = PairingPublicKeyID;
      if (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_copyInfoDictInternal(APReceiverSystemInfoRef, CFArrayRef, CFAllocatorRef, CFDictionaryRef *)", 33554482, "### Add pairing public key to info failed: %#m\n", v19);
      }
    }
  }

  else
  {
    CFDictionarySetData();
  }

  v20 = *(a1 + 464);
  if (v20)
  {
    CFDictionarySetValue(Mutable, @"pi", v20);
  }

  v21 = *(a1 + 456);
  if (v21)
  {
    CFDictionarySetValue(Mutable, @"psi", v21);
  }

  APSVersionUtilsGetShortVersionLength();
  CFDictionarySetCString();
  sysInfo_getStatusFlags(a1);
  CFDictionarySetInt64();
  if (a2)
  {
    CFArrayGetCount(a2);
    CFArrayApplyBlock();
  }

  VONlh32NYbFTEnv();
  CFDictionarySetInt64();
  v22 = *MEMORY[0x277CBECE8];
  v23 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v23)
  {
    v39 = 4294895276;
    APSLogErrorAt();
LABEL_114:
    v34 = 0;
    goto LABEL_102;
  }

  v41 = a4;
  if (APSFeaturesHasFeature())
  {
    CFDictionarySetValue(v23, @"supportsUIForAudioOnlyContent", v10);
    CFDictionarySetValue(v23, @"supportsFPSSecureStop", v10);
    if (APSSettingsGetIntWithDefault())
    {
      v24 = v10;
    }

    else
    {
      v24 = v11;
    }

    CFDictionarySetValue(v23, @"supportsStopAtEndOfQueue", v24);
LABEL_45:
    v28 = APSSettingsIsFeatureEnabled() != 0;
    goto LABEL_46;
  }

  HasFeature = APSFeaturesHasFeature();
  if (HasFeature)
  {
    v26 = v10;
  }

  else
  {
    v26 = v11;
  }

  CFDictionarySetValue(v23, @"supportsUIForAudioOnlyContent", v26);
  CFDictionarySetValue(v23, @"supportsFPSSecureStop", v26);
  if (APSSettingsGetIntWithDefault())
  {
    v27 = v10;
  }

  else
  {
    v27 = v11;
  }

  CFDictionarySetValue(v23, @"supportsStopAtEndOfQueue", v27);
  if (HasFeature)
  {
    goto LABEL_45;
  }

  v28 = 0;
LABEL_46:
  if (gLogCategory_APReceiverSystemInfo <= 30 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    v29 = "false";
    if (v28)
    {
      v29 = "true";
    }

    LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_copyInfoDictInternal(APReceiverSystemInfoRef, CFArrayRef, CFAllocatorRef, CFDictionaryRef *)", 33554462, "Supports Offline HLS: %s\n", v29);
  }

  if (v28)
  {
    v30 = v10;
  }

  else
  {
    v30 = v11;
  }

  CFDictionarySetValue(v23, @"supportsOfflineHLS", v30);
  APSFeaturesHasFeature();
  CFDictionarySetValue(v23, @"supportsV2ArtworkMetadata", v11);
  if (APSSettingsIsFeatureEnabled())
  {
    CFDictionarySetValue(v23, @"supportsCoordinatedAirPlayVideo", v10);
  }

  CFDictionarySetValue(v23, @"supportsAirPlayVideoWithSharePlay", v10);
  CFDictionarySetValue(Mutable, @"playbackCapabilities", v23);
  CFRelease(v23);
  v31 = CFDictionaryCreateMutable(v22, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v31)
  {
    v32 = v31;
    APAudioFormatGetSupportedTransportAudioFormatsForRealTimeReceiver();
    CFDictionarySetInt64();
    APAudioFormatGetSupportedTransportAudioFormatsForBufferedReceiver();
    CFDictionarySetInt64();
    APAudioFormatGetSupportedTransportAudioFormatsForScreenReceiver();
    CFDictionarySetInt64();
    APAudioFormatGetSupportedTransportAudioFormatsLowLatencyReceiver();
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"supportedFormats", v32);
    CFRelease(v32);
  }

  else if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_copyInfoDictInternal(APReceiverSystemInfoRef, CFArrayRef, CFAllocatorRef, CFDictionaryRef *)", 33554522, "### Failed to allocate supported formats \n");
  }

  v33 = CFDictionaryCreateMutable(v22, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v33)
  {
    if (APSSettingsGetIntWithDefault())
    {
      v23 = APSAudioFormatDescriptionListCreateForMediumLatencyReceiver();
      if (v23 && !APSAudioFormatDescriptionListCreateAdvertisementArray())
      {
        CFDictionarySetValue(v33, @"mediumLatencyAudioStream", 0);
        CFDictionarySetValue(Mutable, @"supportedAudioFormatsExtended", v33);
      }
    }

    else
    {
      v23 = 0;
    }

    if (IsAppleTV() && !*(a1 + 306))
    {
      FigCFDictionaryGetValue();
      FigCFDictionaryGetValue();
    }

    v34 = APSAudioFormatDescriptionListCreateForBufferedReceiverWithAudioCapabilities();
    if (v34)
    {
      AdvertisementArray = APSAudioFormatDescriptionListCreateAdvertisementArray();
      if (AdvertisementArray)
      {
        if (gLogCategory_APReceiverSystemInfo <= 90)
        {
          v36 = AdvertisementArray;
          if (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_copyInfoDictInternal(APReceiverSystemInfoRef, CFArrayRef, CFAllocatorRef, CFDictionaryRef *)", 33554522, "### Failed to create advertisment array due to err: %#m\n", v36);
          }
        }
      }

      else
      {
        CFDictionarySetValue(v33, @"bufferStream", 0);
        CFDictionarySetValue(Mutable, @"supportedAudioFormatsExtended", v33);
      }
    }

    else
    {
      if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_copyInfoDictInternal(APReceiverSystemInfoRef, CFArrayRef, CFAllocatorRef, CFDictionaryRef *)", 33554522, "### Failed to allocate format list\n");
      }

      v34 = 0;
    }
  }

  else
  {
    if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_copyInfoDictInternal(APReceiverSystemInfoRef, CFArrayRef, CFAllocatorRef, CFDictionaryRef *)", 33554522, "### Failed to allocate supported formats \n");
    }

    v34 = 0;
    v23 = 0;
  }

  v37 = *(a1 + 696);
  if (v37)
  {
    CFDictionarySetValue(Mutable, @"volumeControlType", v37);
  }

  CFDictionarySetDouble();
  if (APSSettingsIsFeatureEnabled())
  {
    CFDictionarySetInt64();
    if (*(a1 + 713))
    {
      v38 = v10;
    }

    else
    {
      v38 = v11;
    }

    CFDictionarySetValue(Mutable, @"isMuted", v38);
  }

  *v41 = Mutable;
  if (v33)
  {
    CFRelease(v33);
  }

  v39 = 0;
  Mutable = 0;
LABEL_102:
  if (v34)
  {
    CFRelease(v34);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (FeaturesInternal)
  {
    CFRelease(FeaturesInternal);
  }

  return v39;
}

void __sysInfo_copyInfoDictInternal_block_invoke(uint64_t a1, CFTypeRef cf1)
{
  cf = 0;
  if (CFEqual(cf1, @"txtAirPlay"))
  {
    v4 = *(*(a1 + 32) + 56);
    if (!v4)
    {
      return;
    }

    APAdvertiserInfoCopyAirPlayDataWithNANServiceType(v4, 0, &cf);
    goto LABEL_10;
  }

  if (CFEqual(cf1, @"txtRAOP"))
  {
    v5 = *(*(a1 + 32) + 56);
    if (!v5)
    {
      return;
    }

    APAdvertiserInfoCopyRAOPData(v5, &cf);
    goto LABEL_10;
  }

  if (!CFEqual(cf1, @"displayCapabilities"))
  {
    if (!CFEqual(cf1, @"uglServerInfo"))
    {
      goto LABEL_10;
    }

    v6 = *(a1 + 32);
    if (!*(v6 + 313))
    {
      goto LABEL_10;
    }

    v7 = *(v6 + 752);
    if (v7 && gLogCategory_APReceiverSystemInfo <= 50)
    {
      if (gLogCategory_APReceiverSystemInfo == -1)
      {
        v9 = _LogCategory_Initialize();
        v6 = *(a1 + 32);
        if (!v9)
        {
          goto LABEL_20;
        }

        v7 = *(v6 + 752);
      }

      Value = FigCFDictionaryGetValue();
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_copyInfoDictInternal(APReceiverSystemInfoRef, CFArrayRef, CFAllocatorRef, CFDictionaryRef *)_block_invoke", 33554482, "<APUGLPort> UGL-RCServer Info provided to info dict: [%{ptr}], port %@\n", v7, Value);
      v6 = *(a1 + 32);
    }

LABEL_20:
    v10 = *(v6 + 752);
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    cf = v10;
    goto LABEL_10;
  }

  if (!APSSettingsIsFeatureEnabled())
  {
    return;
  }

  [objc_msgSend(MEMORY[0x277CD9E40] "mainDisplay")];
  APSDisplayUtilsCopyDisplayCapabilities();
LABEL_10:
  FigCFDictionarySetValue();
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __sysInfo_getReceiverHDRCapability_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = GetDeviceModelString();
  if (*v6 == 0x355654656C707041 && *&v6[3] == 0x332C355654656CLL)
  {
    v5 = @"1080p60";
  }

  else if (*v6 ^ 0x365654656C707041 | *&v6[3] ^ 0x322C365654656CLL)
  {
    v5 = @"4k60";
  }

  else
  {
    v5 = @"4k30";
  }

  sysInfo_getReceiverHDRCapability_capability = v5;
  return result;
}

uint64_t __APReceiverSystemInfoGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APReceiverSystemInfoGetTypeID_typeID = result;
  return result;
}

void sysInfo_Finalize(uint64_t a1)
{
  [*(a1 + 728) invalidate];

  *(a1 + 728) = 0;
  v2 = *(a1 + 328);
  if (v2)
  {
    [v2 invalidate];

    *(a1 + 328) = 0;
  }

  v3 = *(a1 + 36);
  if (v3 != -1)
  {
    notify_cancel(v3);
    *(a1 + 36) = -1;
  }

  v4 = *(a1 + 24);
  if (v4 != -1)
  {
    notify_cancel(v4);
    *(a1 + 24) = -1;
  }

  v5 = *(a1 + 28);
  if (v5 != -1)
  {
    notify_cancel(v5);
    *(a1 + 28) = -1;
  }

  v6 = *(a1 + 40);
  if (v6 != -1)
  {
    notify_cancel(v6);
    *(a1 + 40) = -1;
  }

  v7 = *(a1 + 44);
  if (v7 != -1)
  {
    notify_cancel(v7);
    *(a1 + 44) = -1;
  }

  v8 = *(a1 + 48);
  if (v8 != -1)
  {
    notify_cancel(v8);
    *(a1 + 48) = -1;
  }

  v9 = *(a1 + 32);
  if (v9 != -1)
  {
    notify_cancel(v9);
    *(a1 + 32) = -1;
  }

  v10 = *(a1 + 400);
  if (v10)
  {
    free(v10);
    *(a1 + 400) = 0;
  }

  v11 = *(a1 + 120);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 120) = 0;
  }

  v12 = *(a1 + 760);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 760) = 0;
  }

  v13 = *(a1 + 464);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 464) = 0;
  }

  v14 = *(a1 + 456);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 456) = 0;
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 56) = 0;
  }

  v16 = *(a1 + 720);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 720) = 0;
  }

  v17 = *(a1 + 736);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 736) = 0;
  }

  v18 = *(a1 + 72);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 72) = 0;
  }

  v19 = *(a1 + 752);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 752) = 0;
  }

  *(a1 + 744) = 0;
  v20 = *(a1 + 416);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 416) = 0;
  }

  v21 = *(a1 + 144);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 144) = 0;
  }

  v22 = *(a1 + 160);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 160) = 0;
  }

  v23 = *(a1 + 176);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 176) = 0;
  }

  v24 = *(a1 + 200);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 200) = 0;
  }

  v25 = *(a1 + 192);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 192) = 0;
  }

  v26 = *(a1 + 208);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 208) = 0;
  }

  v27 = *(a1 + 216);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 216) = 0;
  }

  v28 = *(a1 + 232);
  if (v28)
  {
    CFRelease(v28);
    *(a1 + 232) = 0;
  }

  v29 = *(a1 + 256);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 256) = 0;
  }

  v30 = *(a1 + 264);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 264) = 0;
  }

  v31 = *(a1 + 280);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 280) = 0;
  }

  v32 = *(a1 + 296);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 296) = 0;
  }

  v33 = *(a1 + 288);
  if (v33)
  {
    CFRelease(v33);
    *(a1 + 288) = 0;
  }

  v34 = *(a1 + 696);
  if (v34)
  {
    CFRelease(v34);
    *(a1 + 696) = 0;
  }

  v35 = *(a1 + 704);
  if (v35)
  {
    CFRelease(v35);
    *(a1 + 704) = 0;
  }

  v36 = *(a1 + 552);
  if (v36)
  {
    dispatch_release(v36);
    *(a1 + 552) = 0;
  }

  v37 = *(a1 + 584);
  if (v37)
  {
    CFRelease(v37);
    *(a1 + 584) = 0;
  }

  v38 = *(a1 + 640);
  if (v38)
  {
    CFRelease(v38);
    *(a1 + 640) = 0;
  }

  v39 = *(a1 + 648);
  if (v39)
  {
    CFRelease(v39);
    *(a1 + 648) = 0;
  }

  v40 = *(a1 + 656);
  if (v40)
  {
    CFRelease(v40);
    *(a1 + 656) = 0;
  }

  v41 = *(a1 + 664);
  if (v41)
  {
    CFRelease(v41);
    *(a1 + 664) = 0;
  }

  v42 = *(a1 + 576);
  if (v42)
  {
    dispatch_release(v42);
    *(a1 + 576) = 0;
  }

  v43 = *(a1 + 16);
  if (v43)
  {
    dispatch_release(v43);
    *(a1 + 16) = 0;
  }

  v44 = *(a1 + 88);
  if (v44)
  {
    CFRelease(v44);
    *(a1 + 88) = 0;
  }
}

uint64_t __sysInfo_registerForNotificationsAsNeeded_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 153))
  {
    result = *(v1 + 144);
    if (result)
    {
      v2 = *(v1 + 160);
      if (v2)
      {
        result = CFEqual(result, v2);
        if (result)
        {
          if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_registerForNotificationsAsNeeded(APReceiverSystemInfoRef, Boolean)_block_invoke", 33554482, "In a group -- Simulating UserStop to break away from the group.\n");
          }

          CMNotificationCenterGetDefaultLocalCenter();

          return CMNotificationCenterPostNotification();
        }
      }
    }
  }

  return result;
}

void __sysInfo_registerForNotificationsAsNeeded_block_invoke_4(uint64_t a1)
{
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_registerForNotificationsAsNeeded(APReceiverSystemInfoRef, Boolean)_block_invoke_4", 33554482, "Prefs changed\n");
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  sysInfo_updatePrefs(v2, 0, v3);
}

void __sysInfo_registerForNotificationsAsNeeded_block_invoke_5(uint64_t a1)
{
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_registerForNotificationsAsNeeded(APReceiverSystemInfoRef, Boolean)_block_invoke_5", 33554482, "PSG info changed\n");
  }

  v2 = *(a1 + 32);

  sysInfo_updatePrefs(v2, 0, 1);
}

uint64_t __sysInfo_registerForNotificationsAsNeeded_block_invoke_6(uint64_t result)
{
  if (*(*(result + 32) + 176))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_registerForNotificationsAsNeeded(APReceiverSystemInfoRef, Boolean)_block_invoke_6", 33554482, "TightSync buddy requested inSystemInfo to stop. Simulating UserStop UI event.\n");
    }

    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void __sysInfo_registerForNotificationsAsNeeded_block_invoke_8(uint64_t a1)
{
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_registerForNotificationsAsNeeded(APReceiverSystemInfoRef, Boolean)_block_invoke_8", 33554482, "ManagedConfiguration settings changed\n");
  }

  v2 = *(a1 + 32);

  sysInfo_updatePrefs(v2, 0, 0);
}

void __APReceiverSystemInfoCreate_block_invoke(uint64_t a1)
{
  sysInfo_updateAPGroupInfo(*(a1 + 32));
  v2 = *(a1 + 32);
  if (!*(v2 + 568))
  {
    sysInfo_handleCloudConnectivityChange(v2, *(v2 + 24), 1);
    sysInfo_handleConferenceRoomModeChange(*(a1 + 32), *(*(a1 + 32) + 28), 1);
    sysInfo_updatePrefs(*(a1 + 32), 1, 1);
    v2 = *(a1 + 32);
  }

  sysInfo_updateAdvertiserInfoAndNotify(v2, 0, 0);
  sysInfo_updatePowerAssertionState(*(a1 + 32));
  v3 = *(a1 + 32);

  sysInfo_handleDeviceNameChanged(v3);
}

void sysInfo_updateAPGroupInfo(unsigned __int8 *a1)
{
  v2 = *(a1 + 18);
  v3 = a1[152];
  v4 = a1[153];
  if (v2)
  {
    CFRetain(*(a1 + 18));
  }

  if (!a1[224])
  {
    v6 = *(a1 + 20);
    if (v6)
    {
      if (gLogCategory_APReceiverSystemInfo >= 51)
      {
        v10 = *(a1 + 18);
      }

      else
      {
        if (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updateAPGroupInfo(APReceiverSystemInfoRef)", 33554482, "Updating AP groupInfo to reflect parent group info...\n");
        }

        v6 = *(a1 + 20);
        v10 = *(a1 + 18);
        if (!v6)
        {
          goto LABEL_29;
        }
      }

      CFRetain(v6);
LABEL_29:
      *(a1 + 18) = v6;
      if (v10)
      {
        CFRelease(v10);
      }

      *(a1 + 76) = a1[168];
      goto LABEL_57;
    }
  }

  if (APSIsAPMSpeaker())
  {
    v5 = 1;
  }

  else
  {
    v5 = IsAppleTV() != 0;
  }

  if (APSIsMemberOfHTGroup())
  {
    v7 = APSIsAPMSpeaker() == 0;
  }

  else
  {
    v7 = 1;
  }

  if (a1[314])
  {
    v8 = gLogCategory_APReceiverSystemInfo;
    if (!*(a1 + 18))
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updateAPGroupInfo(APReceiverSystemInfoRef)", 33554482, "<APUGL> Initializing airPlayGroupID to bootUUID %@\n", *(a1 + 27));
      }

      v11 = *(a1 + 27);
      if (v11)
      {
        v11 = CFRetain(v11);
      }

      *(a1 + 18) = v11;
      v8 = gLogCategory_APReceiverSystemInfo;
    }

    *(a1 + 76) = 257;
    if (v8 <= 50 && (v8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updateAPGroupInfo(APReceiverSystemInfoRef)", 33554482, "IsSilentPrimary: %d -> %d\n", a1[305], 1);
    }

    a1[305] = 1;
  }

  else
  {
    if (a1[129])
    {
      if (a1[225])
      {
        TypedValue = 0;
      }

      else if (a1[130])
      {
        TypedValue = *(a1 + 17);
      }

      else
      {
        CFStringGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
      }

      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updateAPGroupInfo(APReceiverSystemInfoRef)", 33554482, "Setting AP groupInfo to default with group context ID %@...\n", TypedValue);
      }
    }

    v12 = *(a1 + 18);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 18) = 0;
    }

    if (IsAppleTV() || APSIsAPMSpeaker())
    {
      APSCopyClusterInfo();
    }

    v13 = *(a1 + 27);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    cf = v13;
    *(a1 + 18) = APSCreateGroupID();
    if (v5)
    {
      v14 = a1[480] == 0;
    }

    else
    {
      v7 = 0;
      v14 = 0;
    }

    a1[152] = v14;
    a1[153] = v7;
    CFRelease(cf);
  }

LABEL_57:
  if (gLogCategory_APReceiverSystemInfo <= 50)
  {
    if (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updateAPGroupInfo(APReceiverSystemInfoRef)", 33554482, "AirPlay Group ID: %'@ -> %'@\n", v2, *(a1 + 18));
    }

    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      if (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updateAPGroupInfo(APReceiverSystemInfoRef)", 33554482, "AirPlay Group contains group leader: %d -> %d\n", v3, a1[152]);
      }

      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updateAPGroupInfo(APReceiverSystemInfoRef)", 33554482, "Is AirPlay group leader: %d -> %d\n", v4, a1[153]);
      }
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void sysInfo_handleCloudConnectivityChange(uint64_t a1, int token, int a3)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v5 = state64;
  v6 = state64 != 0;
  v7 = *(a1 + 307);
  if (v7 != v6)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      if (gLogCategory_APReceiverSystemInfo != -1)
      {
LABEL_4:
        v8 = "yes";
        if (v7)
        {
          v9 = "yes";
        }

        else
        {
          v9 = "no";
        }

        if (!v5)
        {
          v8 = "no";
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_handleCloudConnectivityChange(APReceiverSystemInfoRef, int, Boolean)", 33554482, "CloudConnectivityEnabled change: %s -> %s\n", v9, v8);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        v7 = *(a1 + 307);
        goto LABEL_4;
      }
    }

LABEL_11:
    *(a1 + 307) = v6;
    if (!a3)
    {
      sysInfo_updateAdvertiserInfoAndNotify(a1, @"AdvertisingParameterChanged", 0);
    }
  }
}

void sysInfo_handleConferenceRoomModeChange(uint64_t a1, int token, int a3)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v5 = state64;
  v6 = state64 != 0;
  v7 = *(a1 + 309);
  if (v7 != v6)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      if (gLogCategory_APReceiverSystemInfo != -1)
      {
LABEL_4:
        v8 = "yes";
        if (v7)
        {
          v9 = "yes";
        }

        else
        {
          v9 = "no";
        }

        if (!v5)
        {
          v8 = "no";
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_handleConferenceRoomModeChange(APReceiverSystemInfoRef, int, Boolean)", 33554482, "ConferenceRoomModeEnabled change: %s -> %s\n", v9, v8);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        v7 = *(a1 + 309);
        goto LABEL_4;
      }
    }

LABEL_11:
    *(a1 + 309) = v6;
    if (!a3)
    {
      sysInfo_updateAdvertiserInfoAndNotify(a1, @"AdvertisingParameterChanged", 0);
    }
  }
}

void sysInfo_updatePrefs(uint64_t a1, int a2, int a3)
{
  cf1[8] = *MEMORY[0x277D85DE8];
  v66 = 0;
  if (*(a1 + 568))
  {
    return;
  }

  APSSettingsSynchronize();
  v6 = APSSettingsGetInt64() != 0;
  [MEMORY[0x277D262A0] sharedConnection];
  v7 = objc_opt_respondsToSelector() ^ 1;
  v8 = v7 & v6;
  if ((v7 & 1) == 0 && v6)
  {
    v8 = [objc_msgSend(MEMORY[0x277D262A0] "sharedConnection")];
  }

  v9 = v8 & 1;
  if (*(a1 + 64) != v9)
  {
    *(a1 + 64) = v9;
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      v10 = "yes";
      if (v9)
      {
        v11 = "no";
      }

      else
      {
        v11 = "yes";
      }

      if (!v9)
      {
        v10 = "no";
      }

      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "AirPlay enabled: %s -> %s", v11, v10);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v12 = APSSettingsGetInt64() != 0;
  if (*(a1 + 80) != v12)
  {
    *(a1 + 80) = v12;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v13 = APSSettingsGetInt64() != 0;
  if (*(a1 + 310) == v13)
  {
    v14 = 0;
  }

  else
  {
    *(a1 + 310) = v13;
    v14 = 1;
  }

  if (*(a1 + 315) || APSGetAccessControlConfig())
  {
    v66 = *(a1 + 320);
    goto LABEL_24;
  }

  v17 = *(a1 + 316);
  if (v17)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      if (gLogCategory_APReceiverSystemInfo == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_247;
        }

        v17 = *(a1 + 316);
      }

      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Access control type: %d -> %d\n", v17, 0);
    }

LABEL_247:
    *(a1 + 316) = 0;
    v14 = 1;
  }

LABEL_24:
  v15 = v66;
  v16 = *(a1 + 320);
  if (v66 == v16)
  {
    goto LABEL_34;
  }

  if (gLogCategory_APReceiverSystemInfo <= 50)
  {
    if (gLogCategory_APReceiverSystemInfo == -1)
    {
      v18 = _LogCategory_Initialize();
      v15 = v66;
      if (!v18)
      {
        goto LABEL_33;
      }

      v16 = *(a1 + 320);
    }

    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Access control level HK: %d -> %d\n", v16, v15);
    v15 = v66;
  }

LABEL_33:
  *(a1 + 320) = v15;
  v14 = 1;
LABEL_34:
  if (!a3)
  {
    v21 = 0;
    v19 = 0;
    v22 = 1;
    goto LABEL_101;
  }

  cf1[0] = 0;
  APSCopyPersistentGroupInfo();
  v19 = 0;
  v20 = *(a1 + 240);
  if (v20)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      if (gLogCategory_APReceiverSystemInfo == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_41;
        }

        v20 = *(a1 + 240);
      }

      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Persistent Group Size changed %'u -> %'u\n", v20, 0);
    }

LABEL_41:
    *(a1 + 240) = 0;
    v19 = 1;
    v14 = 1;
  }

  v23 = *(a1 + 248);
  v22 = v23 == 0;
  if (v23)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      if (gLogCategory_APReceiverSystemInfo == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_48;
        }

        v23 = *(a1 + 248);
      }

      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Persistent Group Type changed %'u -> %'u\n", v23, 0);
    }

LABEL_48:
    *(a1 + 248) = 0;
    v21 = 1;
    v19 = 1;
    v14 = 1;
    goto LABEL_49;
  }

  v21 = 0;
LABEL_49:
  v24 = *(a1 + 256);
  if (cf1[0] != v24 && (!cf1[0] || !v24 || !CFEqual(cf1[0], v24)))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Persistent Group UUID changed '%@' -> '%@'\n", *(a1 + 256), cf1[0]);
    }

    v25 = *(a1 + 256);
    v26 = cf1[0];
    *(a1 + 256) = cf1[0];
    if (v26)
    {
      CFRetain(v26);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    v21 = 1;
    v19 = 1;
    v14 = 1;
  }

  if (*(a1 + 264))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Persistent Group Leader UUID changed '%@' -> '%@'\n", *(a1 + 264), 0);
    }

    v27 = *(a1 + 264);
    *(a1 + 264) = 0;
    if (v27)
    {
      CFRelease(v27);
    }
  }

  if (*(a1 + 280))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Persistent Group MemberID changed '%@' -> '%@'\n", *(a1 + 280), 0);
    }

    v28 = *(a1 + 280);
    *(a1 + 280) = 0;
    if (v28)
    {
      CFRelease(v28);
    }

    v19 = 1;
    v14 = 1;
  }

  v29 = *(a1 + 272);
  if (!*(a1 + 272))
  {
    goto LABEL_83;
  }

  if (gLogCategory_APReceiverSystemInfo <= 50)
  {
    if (gLogCategory_APReceiverSystemInfo == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_82;
      }

      v29 = *(a1 + 272);
    }

    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Persistent Group isGroupLeader flag changed '%d' -> '%d'", v29, 0);
  }

LABEL_82:
  *(a1 + 272) = 0;
LABEL_83:
  if (*(a1 + 296))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Persistent Group Model changed %@ -> %@\n", *(a1 + 296), 0);
    }

    v30 = *(a1 + 296);
    *(a1 + 296) = 0;
    if (v30)
    {
      CFRelease(v30);
    }

    v14 = 1;
  }

  if (*(a1 + 288))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Persistent Group Name changed %@ -> %@\n", *(a1 + 288), 0);
    }

    v31 = *(a1 + 288);
    *(a1 + 288) = 0;
    if (v31)
    {
      CFRelease(v31);
    }

    v14 = 1;
  }

  if (cf1[0])
  {
    CFRelease(cf1[0]);
    cf1[0] = 0;
  }

LABEL_101:
  cf1[0] = 0;
  APSCopyTightSyncInfo();
  if (*(a1 + 176))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Tight Sync UUID changed '%@' -> '%@'\n", *(a1 + 176), cf1[0]);
    }

    v32 = *(a1 + 176);
    *(a1 + 176) = cf1[0];
    if (v32)
    {
      CFRelease(v32);
    }

    if (!a2)
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Simulating UserStop UI event on tightSyncUUID change\n");
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (*(a1 + 305) && *(a1 + 176) && !*(a1 + 129))
      {
        if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Silent primary became a tight sync buddy => stop the buddy. Posting StopTightSyncBuddy notification.\n");
        }

        notify_post("kAirPlayWHANotification_InterruptedByPreWHASender");
      }
    }

    v19 = 1;
    v14 = 1;
  }

  if (*(a1 + 192))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Tight Group Leader UUID changed '%@' -> '%@'\n", *(a1 + 192), 0);
    }

    v33 = *(a1 + 192);
    *(a1 + 192) = 0;
    if (v33)
    {
      CFRelease(v33);
    }
  }

  if (*(a1 + 184))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Tight Sync isGroupLeader flag changed '%d' -> '%d'", 1, 0);
    }

    *(a1 + 184) = 0;
    v19 = 1;
    v14 = 1;
  }

  if (*(a1 + 200))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "TightSync Group Model changed %@ -> %@\n", *(a1 + 200), 0);
    }

    v34 = *(a1 + 200);
    *(a1 + 200) = 0;
    if (v34)
    {
      CFRelease(v34);
    }

    v14 = 1;
  }

  if (*(a1 + 208))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "TightSync Group Name changed %@ -> %@\n", *(a1 + 208), 0);
    }

    v35 = *(a1 + 208);
    *(a1 + 208) = 0;
    if (v35)
    {
      CFRelease(v35);
    }

    v14 = 1;
  }

  if (cf1[0])
  {
    CFRelease(cf1[0]);
    cf1[0] = 0;
  }

  v36 = *(a1 + 256);
  if (v36 && *(a1 + 248) == 1)
  {
    v37 = IsAppleTV();
    APSSettingsSetValue();
  }

  else if (*(a1 + 176) && !*(a1 + 248) || v36 && *(a1 + 248) <= 1u)
  {
    v37 = APSSettingsGetInt64() != 0;
  }

  else
  {
    APSSettingsRemoveValue();
    v37 = 0;
  }

  v38 = *(a1 + 306);
  if (v37 != v38)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      if (gLogCategory_APReceiverSystemInfo == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_158;
        }

        v38 = *(a1 + 306);
      }

      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "isClusterLeader flag changed '%d' -> '%d'", v38, v37);
    }

LABEL_158:
    *(a1 + 306) = v37;
    v14 = 1;
  }

  Int64 = APSSettingsGetInt64();
  v40 = Int64 != 0;
  if (*(a1 + 304) != v40)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      v41 = Int64;
      if (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "isAppleMusicSubscriber flag changed '%d' -> '%d'", v41 == 0, v40);
      }
    }

    *(a1 + 304) = v40;
    v14 = 1;
  }

  v42 = APSSettingsGetInt64();
  v43 = v42 != 0;
  if (*(a1 + 308) != v43)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      v44 = v42;
      if (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "cloudLibraryIsOn flag changed '%d' -> '%d'", v44 == 0, v43);
      }
    }

    *(a1 + 308) = v43;
    v14 = 1;
  }

  v45 = APSSettingsGetInt64();
  v46 = v45 != 0;
  v47 = v45;
  if (*(a1 + 311) != v46)
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "supports1588Clock flag changed '%d' -> '%d'", v47 == 0, v46);
    }

    *(a1 + 311) = v46;
    v14 = 1;
  }

  v48 = APSSettingsGetInt64();
  if (v48 != *(a1 + 676))
  {
    *(a1 + 676) = v48;
  }

  v49 = APSGetP2PAllow();
  if (v49 != *(a1 + 408))
  {
    *(a1 + 408) = v49;
    v21 = 1;
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  v51 = *(a1 + 409);
  if (v51 != IntWithDefault)
  {
    v52 = IntWithDefault;
    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      if (gLogCategory_APReceiverSystemInfo != -1)
      {
LABEL_184:
        v53 = "yes";
        if (v51)
        {
          v54 = "yes";
        }

        else
        {
          v54 = "no";
        }

        if (!v52)
        {
          v53 = "no";
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePrefs(APReceiverSystemInfoRef, Boolean, Boolean)", 33554482, "Restrict to infra advertising: %s -> %s\n", v54, v53);
        goto LABEL_191;
      }

      if (_LogCategory_Initialize())
      {
        v51 = *(a1 + 409);
        goto LABEL_184;
      }
    }

LABEL_191:
    *(a1 + 409) = v52;
    v21 = 1;
  }

  v55 = APSSettingsGetInt64() != 0;
  if (*(a1 + 410) != v55)
  {
    *(a1 + 410) = v55;
  }

  v56 = APSSettingsCopyValue();
  v57 = *(a1 + 416);
  if (v56 == v57)
  {
LABEL_203:
    if (!v56)
    {
      goto LABEL_205;
    }

    goto LABEL_204;
  }

  if (!v57 || !v56)
  {
    if (!v56)
    {
      goto LABEL_201;
    }

    goto LABEL_200;
  }

  if (!CFEqual(v56, *(a1 + 416)))
  {
    v57 = *(a1 + 416);
LABEL_200:
    CFRetain(v56);
LABEL_201:
    *(a1 + 416) = v56;
    if (v57)
    {
      CFRelease(v57);
    }

    goto LABEL_203;
  }

LABEL_204:
  CFRelease(v56);
LABEL_205:
  if (!*(a1 + 315))
  {
    v58 = APSSettingsGetInt64() != 0;
    if (*(a1 + 432) != v58)
    {
      *(a1 + 432) = v58;
      v14 = 1;
    }

    v59 = APSSettingsGetInt64() != 0;
    if (*(a1 + 433) != v59)
    {
      *(a1 + 433) = v59;
      v14 = 1;
    }

    v60 = APSSettingsGetInt64() != 0;
    v61 = *(a1 + 480);
    if (v61 != v60)
    {
      sysInfo_deleteLegacyPairingPeers();
      *(a1 + 480) = v60;
      sysInfo_updatePINInternal(a1, v60);
      v61 = *(a1 + 480);
      v19 = 1;
      v14 = 1;
    }

    *(a1 + 472) = 0;
    if (v61)
    {
      APSSettingsGetCString();
      if (*(a1 + 472))
      {
        sysInfo_handleAuthStringUpdate((a1 + 472));
      }
    }

    if (*(a1 + 480))
    {
      goto LABEL_219;
    }

    LOBYTE(cf1[0]) = 0;
    APSSettingsGetCString();
    if (sysInfo_updatePlayPassword(a1, cf1))
    {
      sysInfo_deleteLegacyPairingPeers();
      v14 = 1;
    }

    if (*(a1 + 480))
    {
LABEL_219:
      v62 = 3;
    }

    else if (*(a1 + 481))
    {
      v62 = 2;
    }

    else
    {
      if (!*(a1 + 433))
      {
        *(a1 + 428) = 0;
        goto LABEL_221;
      }

      v62 = 1;
    }

    *(a1 + 428) = v62;
  }

LABEL_221:
  v63 = APSSettingsGetInt64() != 0;
  if (*(a1 + 560) != v63)
  {
    *(a1 + 560) = v63;
  }

  v64 = APSSettingsGetInt64();
  if (v64 >= 1)
  {
    v65 = v64;
  }

  else
  {
    v65 = 30;
  }

  *(a1 + 564) = v65;
  if (v19)
  {
    sysInfo_updateAPGroupInfo(a1);
  }

  if (v21)
  {
    sysInfo_updateAdvertiserInfoAndNotify(a1, @"P2PSettingChanged", 0);
  }

  if (v14)
  {
    sysInfo_updateAdvertiserInfoAndNotify(a1, @"AdvertisingParameterChanged", 0);
  }

  if (!v22)
  {
    sysInfo_updatePowerAssertionState(a1);
  }
}

uint64_t sysInfo_updatePowerAssertionState(uint64_t a1)
{
  result = IsAppleTV();
  if (result)
  {
    v3 = *(a1 + 248) == 1;
  }

  else
  {
    v3 = 0;
  }

  if (!*(a1 + 736))
  {
    return result;
  }

  v4 = *(a1 + 744);
  if (v4 == v3)
  {
    return result;
  }

  if (gLogCategory_APReceiverSystemInfo <= 50)
  {
    if (gLogCategory_APReceiverSystemInfo == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v4 = *(a1 + 744);
    }

    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updatePowerAssertionState(APReceiverSystemInfoRef)", 33554482, "isPowerAssertionRaised: %d -> %d\n", v4, v3);
  }

LABEL_10:
  if (v3)
  {
    result = APSPowerAssertionRaise();
  }

  else
  {
    result = APSPowerAssertionRelease();
  }

  *(a1 + 744) = v3;
  return result;
}

void sysInfo_handleDeviceNameChanged(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_handleDeviceNameChanged(APReceiverSystemInfoRef)", 33554482, "AirPlay device name changed.\n");
  }

  __s1[0] = 0;
  GetDeviceName();
  if (strcmp(__s1, (a1 + 336)))
  {
    sysInfo_setDeviceName(a1, __s1);
  }
}

void sysInfo_setDeviceName(uint64_t a1, const char *a2)
{
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_setDeviceName(APReceiverSystemInfoRef, char *)", 33554482, "Name changed '%s' -> '%s'\n", (a1 + 336), a2);
  }

  __strlcpy_chk();

  sysInfo_updateAdvertiserInfoAndNotify(a1, @"AdvertisingDeviceSettingChanged", 0);
}

void sysInfo_deleteLegacyPairingPeers()
{
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_deleteLegacyPairingPeers(APReceiverSystemInfoRef)", 33554482, "Deleting legacy server pairing peers on pref change\n");
  }

  if (!gQblcfSzZBQsYCCV())
  {
    PHDcW8();
    CFRelease(0);
  }

  if (!PairingSessionCreate())
  {
    PairingSessionSetKeychainInfo();
    PairingSessionDeletePeer();
    CFRelease(0);
  }
}

void sysInfo_updatePINInternal(uint64_t a1, int a2)
{
  v4 = *(a1 + 552);
  if (v4)
  {
    dispatch_source_cancel(*(a1 + 552));
    dispatch_release(v4);
    *(a1 + 552) = 0;
  }

  if (*(a1 + 480) && (a2 || !*(a1 + 225)))
  {
    if (*(a1 + 472))
    {
      __strlcpy_chk();
    }

    else
    {
      RandomString();
    }

    sysInfo_handleAuthStringUpdate((a1 + 481));
  }
}

void sysInfo_handleAuthStringUpdate(_BYTE *a1)
{
  if (!IsAppleTV() && !APSIsAPMSpeaker())
  {
    return;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    if (*a1 && (v3 = CFDictionarySetCString(), v3))
    {
      v5 = v3;
    }

    else
    {
      v4 = APSXPCClientSendCommandCreatingReply();
      if (!v4)
      {
LABEL_7:

        CFRelease(Mutable);
        return;
      }

      v5 = v4;
    }

    APSLogErrorAt();
  }

  else
  {
    APSLogErrorAt();
    v5 = 4294960568;
  }

  if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_handleAuthStringUpdate(const char *)", 33554522, "### Failed to sending auth string to APReceiverServices due to err: %#m\n", v5);
  }

  if (Mutable)
  {
    goto LABEL_7;
  }
}

BOOL sysInfo_updatePlayPassword(uint64_t a1, char *__s1)
{
  v3 = strcmp(__s1, (a1 + 481));
  if (v3)
  {
    __strlcpy_chk();
    sysInfo_handleAuthStringUpdate((a1 + 481));
  }

  return v3 != 0;
}

void sysInfo_updateCurrentDisplayInfo(uint64_t a1)
{
  if (!IsAppleTV())
  {
    v3 = 0;
LABEL_36:
    v19 = 0;
    goto LABEL_32;
  }

  v2 = [MEMORY[0x277CD9E40] mainDisplay];
  v19 = [v2 currentMode];
  v3 = [v2 uniqueId];
  if (v3)
  {
    *(a1 + 680) = [v2 isOverscanned];
    v4 = *(a1 + 584);
    CFRetain(v3);
    *(a1 + 584) = v3;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (!v19)
  {
    goto LABEL_36;
  }

  v5 = [v19 width];
  v6 = [v19 height];
  [v19 refreshRate];
  v8 = v7;
  if (v5 >= 1920 && v6 >= 1080)
  {
    *(a1 + 592) = v5;
    *(a1 + 600) = v6;
    v9 = *(a1 + 648);
    v10 = [v19 hdrMode];
    v11 = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    *(a1 + 648) = v11;
    if (v9)
    {
      CFRelease(v9);
    }

    v12 = *(a1 + 664);
    v13 = [v19 colorMode];
    v14 = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    *(a1 + 664) = v14;
    if (v12)
    {
      CFRelease(v12);
    }

    v15 = *(a1 + 656);
    v16 = [v19 colorGamut];
    v17 = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    *(a1 + 656) = v17;
    if (v15)
    {
      CFRelease(v15);
    }

    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updateCurrentDisplayInfo(APReceiverSystemInfoRef)", 33554482, "Updated display info, current mode: %d x %d, %@\n", v5, v6, *(a1 + 648));
    }
  }

  if (v8 > 0.0)
  {
    v18 = v8 <= 30.0 ? 30 : 60;
    *(a1 + 672) = v18;
    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      if (gLogCategory_APReceiverSystemInfo != -1)
      {
LABEL_30:
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updateCurrentDisplayInfo(APReceiverSystemInfoRef)", 33554482, "Updated display refresh rate: %d Hz\n", v18);
        goto LABEL_32;
      }

      if (_LogCategory_Initialize())
      {
        v18 = *(a1 + 672);
        goto LABEL_30;
      }
    }
  }

LABEL_32:
}

uint64_t __APReceiverSystemInfoGetDeviceName_block_invoke(uint64_t a1)
{
  result = sysInfo_getDeviceNameInternal(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t APReceiverSystemInfoCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (a1 && a3)
  {
    v6 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APReceiverSystemInfoCopyProperty_block_invoke;
    block[3] = &unk_278C5FC70;
    block[6] = a1;
    block[7] = a3;
    block[8] = a4;
    block[4] = &v15;
    block[5] = &v11;
    dispatch_sync(v6, block);
    v7 = *(v16 + 6);
    if (v7 != -72025 && v7)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    APSLogErrorAt();
    *(v16 + 6) = -72021;
  }

  if (a5)
  {
    *a5 = *(v16 + 6);
  }

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v8;
}

void sub_23EA03EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 48), 8);
  _Unwind_Resume(a1);
}

void __APReceiverSystemInfoCopyProperty_block_invoke(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[6];
  v5 = *(a1[5] + 8);
  v20 = 0;
  if (gLogCategory_APReceiverSystemInfo <= 30 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_copyPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef, CFAllocatorRef, void *)", 33554462, "%{ptr} copy propertyKey: '%@'\n", v4, v2);
  }

  if (CFEqual(v2, @"AirPlayGroupPublicName"))
  {
    if (*(v4 + 256))
    {
      v6 = 288;
      goto LABEL_13;
    }

    if (*(v4 + 176))
    {
      v6 = 208;
LABEL_13:
      v7 = *(v4 + v6);
      if (!v7)
      {
        goto LABEL_46;
      }

      goto LABEL_28;
    }

LABEL_46:
    v8 = -72025;
    goto LABEL_47;
  }

  if (CFEqual(v2, @"AirPlayGroupID"))
  {
    v7 = *(v4 + 144);
    if (!v7)
    {
      APSLogErrorAt();
      v8 = -72023;
LABEL_47:
      v20 = v8;
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (CFEqual(v2, @"IsAirPlayGroupLeader"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 153);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"GroupContainsDiscoverableLeader"))
  {
    v11 = *(v4 + 152);
LABEL_22:
    if (*(v4 + 313))
    {
      v11 |= *(v4 + 752) != 0;
    }

    if (v11)
    {
      v9 = MEMORY[0x277CBED28];
    }

    else
    {
      v9 = MEMORY[0x277CBED10];
    }

    goto LABEL_27;
  }

  if (CFEqual(v2, @"IsSilentPrimary"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 305);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"ReceiverSessionIsActive"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 225);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"ReceiverDeviceIsPlaying"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 226);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"SystemPairingIdentity"))
  {
    v7 = *(v4 + 456);
    if (!v7)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  if (CFEqual(v2, @"LocalRouteInfo"))
  {
    v7 = *(v4 + 232);
    if (!v7)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  if (CFEqual(v2, @"TightSyncUUID"))
  {
    v7 = *(v4 + 176);
    if (!v7)
    {
      goto LABEL_46;
    }

LABEL_28:
    Int64 = CFRetain(v7);
LABEL_29:
    v13 = Int64;
LABEL_30:
    *(v5 + 24) = v13;
    v20 = 0;
    goto LABEL_31;
  }

  if (CFEqual(v2, @"IsTightSyncGroupLeader"))
  {
    if (!*(v4 + 176) || !*(v4 + 184))
    {
      v9 = MEMORY[0x277CBED10];
      goto LABEL_27;
    }

LABEL_51:
    v9 = MEMORY[0x277CBED28];
LABEL_27:
    v7 = *v9;
    goto LABEL_28;
  }

  if (CFEqual(v2, @"TightSyncGroupLeaderUUID"))
  {
    v7 = *(v4 + 192);
    if (!v7)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  if (CFEqual(v2, @"ClusterUUID"))
  {
    v14 = *(v4 + 176);
    v15 = *(v4 + 256);
LABEL_58:
    if (!(v14 | v15))
    {
      goto LABEL_46;
    }

    if (v15)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    goto LABEL_28;
  }

  if (CFEqual(v2, @"ClusterType"))
  {
    v16 = *(v4 + 256);
    if (*(v4 + 176))
    {
      if (!v16)
      {
        v7 = @"ClusterType_StereoPair";
        goto LABEL_28;
      }
    }

    else if (!v16)
    {
      goto LABEL_46;
    }

    if (*(v4 + 248) == 1)
    {
      v7 = @"ClusterType_HT";
    }

    else
    {
      v7 = @"ClusterType_Generic";
    }

    goto LABEL_28;
  }

  v17 = *MEMORY[0x277CBECE8];
  if (CFEqual(v2, @"ClusterSize"))
  {
    *valuePtr = 0;
    if (*(v4 + 256))
    {
      *valuePtr = *(v4 + 240);
    }

    else if (*(v4 + 176))
    {
      *valuePtr = 2;
    }

    Int64 = CFNumberCreate(v17, kCFNumberSInt32Type, valuePtr);
    goto LABEL_29;
  }

  if (CFEqual(v2, @"IsClusterLeader"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 306);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"ClusterLeaderUUID"))
  {
    v14 = *(v4 + 192);
    v15 = *(v4 + 264);
    goto LABEL_58;
  }

  if (CFEqual(v2, @"ParentGroupID"))
  {
    v7 = *(v4 + 160);
    if (!v7)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  if (CFEqual(v2, @"ParentGroupContainsDiscoverableLeader"))
  {
    v11 = *(v4 + 168);
    goto LABEL_22;
  }

  if (CFEqual(v2, @"ParentGroupLeaderSupportsRelay"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 169);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"ParentGroupLeaderSupportsGroupCohesion"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 170);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"AccessControlType"))
  {
    Int64 = CFNumberCreateInt64();
    if (Int64)
    {
      goto LABEL_29;
    }

LABEL_157:
    APSLogErrorAt();
    v8 = -72020;
    goto LABEL_47;
  }

  if (CFEqual(v2, @"AccessControlLevelHK"))
  {
    Int64 = CFNumberCreate(v17, kCFNumberIntType, (v4 + 320));
    if (Int64)
    {
      goto LABEL_29;
    }

    goto LABEL_157;
  }

  if (CFEqual(v2, @"EnableHKAccessControl"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(v4 + 310);
    goto LABEL_17;
  }

  if (CFEqual(v2, @"BluetoothAddress"))
  {
    v7 = *(v4 + 720);
    if (!v7)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  if (!CFEqual(v2, @"Passcode"))
  {
    if (CFEqual(v2, @"Password"))
    {
      Int64 = CFStringCreateWithCString(v17, (v4 + 481), 0x8000100u);
      if (Int64)
      {
        goto LABEL_29;
      }

      goto LABEL_157;
    }

    if (CFEqual(v2, @"SecurityMode"))
    {
      Int64 = CFNumberCreate(v17, kCFNumberSInt32Type, (v4 + 428));
      if (Int64)
      {
        goto LABEL_29;
      }

      goto LABEL_157;
    }

    if (CFEqual(v2, @"IsPINRequiredForPairing"))
    {
      v9 = MEMORY[0x277CBED28];
      v10 = *(v4 + 433);
      goto LABEL_17;
    }

    if (CFEqual(v2, @"IsPairingRequiredForAllClients"))
    {
      v9 = MEMORY[0x277CBED28];
      v10 = *(v4 + 432);
      goto LABEL_17;
    }

    if (CFEqual(v2, @"IsPINRequiredForEverySession"))
    {
      v9 = MEMORY[0x277CBED28];
      v10 = *(v4 + 480);
      goto LABEL_17;
    }

    if (CFEqual(v2, @"IsP2PAllowed"))
    {
      v9 = MEMORY[0x277CBED28];
      v10 = *(v4 + 408);
      goto LABEL_17;
    }

    if (CFEqual(v2, @"RestrictToInfraAdvertising"))
    {
      v9 = MEMORY[0x277CBED28];
      v10 = *(v4 + 409);
      goto LABEL_17;
    }

    if (CFEqual(v2, @"IsPairingRequiredForP2PClients"))
    {
      v9 = MEMORY[0x277CBED28];
      v10 = *(v4 + 410);
      goto LABEL_17;
    }

    if (CFEqual(v2, @"VolumeDB"))
    {
      Int64 = CFNumberCreate(v17, kCFNumberFloat32Type, (v4 + 692));
      if (Int64)
      {
        goto LABEL_29;
      }

      goto LABEL_157;
    }

    if (CFEqual(v2, @"VolumeControlType"))
    {
      v7 = *(v4 + 696);
      if (v7)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (!CFEqual(v2, @"VolumeControlTypeEx"))
      {
        if (CFEqual(v2, @"IsMuted"))
        {
          v9 = MEMORY[0x277CBED28];
          v10 = *(v4 + 713);
        }

        else if (CFEqual(v2, @"SupportRelativeVolumeTesting"))
        {
          v9 = MEMORY[0x277CBED28];
          v10 = *(v4 + 712);
        }

        else
        {
          if (CFEqual(v2, @"audioJackStatus"))
          {
            v7 = @"connected";
            goto LABEL_28;
          }

          if (CFEqual(v2, @"skewCompensation"))
          {
            goto LABEL_51;
          }

          if (CFEqual(v2, @"AdvertiserInfo"))
          {
            v7 = *(v4 + 56);
            if (v7)
            {
              goto LABEL_28;
            }

            goto LABEL_166;
          }

          if (CFEqual(v2, @"IsAirPlayEnabled"))
          {
            v9 = MEMORY[0x277CBED28];
            v10 = *(v4 + 64);
          }

          else
          {
            if (CFEqual(v2, @"DenyInterruptions"))
            {
              v7 = *(v4 + 88);
              if (v7)
              {
                goto LABEL_28;
              }

              v9 = MEMORY[0x277CBED28];
              v10 = *(v4 + 80);
              goto LABEL_17;
            }

            if (CFEqual(v2, @"OverscanOverride"))
            {
              Int64 = CFNumberCreate(v17, kCFNumberIntType, (v4 + 676));
              if (Int64)
              {
                goto LABEL_29;
              }

              goto LABEL_157;
            }

            if (CFEqual(v2, @"DisplayUUID"))
            {
              v13 = @"e5f7a68d-7b0f-4305-984b-974f677a150b";
              CFRetain(@"e5f7a68d-7b0f-4305-984b-974f677a150b");
              v20 = 0;
              goto LABEL_30;
            }

            if (CFEqual(v2, @"TimeoutDataSeconds"))
            {
              Int64 = CFNumberCreate(v17, kCFNumberIntType, (v4 + 564));
              if (Int64)
              {
                goto LABEL_29;
              }

              goto LABEL_157;
            }

            if (!CFEqual(v2, @"QoSDisabled"))
            {
              if (CFEqual(v2, @"DeviceID"))
              {
                HardwareAddressToCString();
                Int64 = CFStringCreateWithCString(v17, valuePtr, 0x8000100u);
                goto LABEL_29;
              }

              if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_copyPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef, CFAllocatorRef, void *)", 33554482, "unknown property %@\n", v2);
              }

              goto LABEL_166;
            }

            v9 = MEMORY[0x277CBED28];
            v10 = *(v4 + 560);
          }
        }

LABEL_17:
        if (!v10)
        {
          v9 = MEMORY[0x277CBED10];
        }

        goto LABEL_27;
      }

      v7 = *(v4 + 704);
      if (v7)
      {
        goto LABEL_28;
      }
    }

LABEL_166:
    v13 = 0;
    goto LABEL_30;
  }

  if (v3 && (v18 = CFGetTypeID(v3), v18 == CFBooleanGetTypeID()))
  {
    Value = CFBooleanGetValue(v3);
  }

  else
  {
    Value = 1;
  }

  v13 = sysInfo_copyPasscodeString(v4, Value, v17, &v20);
  if (!v20)
  {
    goto LABEL_30;
  }

  APSLogErrorAt();
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_31:
  *(*(a1[4] + 8) + 24) = v20;
}

CFStringRef sysInfo_copyPasscodeString(uint64_t a1, int a2, CFAllocatorRef alloc, int *a4)
{
  if (a2 && *(a1 + 481))
  {
    v7 = (a1 + 481);
  }

  else
  {
    sysInfo_updatePairPINIfNeeded(a1);
    v7 = (a1 + 434);
  }

  v8 = CFStringCreateWithCString(alloc, v7, 0x8000100u);
  if (!v8)
  {
    APSLogErrorAt();
    v9 = -72020;
    if (!a4)
    {
      return v8;
    }

    goto LABEL_7;
  }

  v9 = 0;
  if (a4)
  {
LABEL_7:
    *a4 = v9;
  }

  return v8;
}

void sysInfo_updatePairPINIfNeeded(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 434) || (mach_absolute_time(), UpTicksToSeconds() >= 0x3D))
  {
    if (*(a1 + 472))
    {
      __strlcpy_chk();
    }

    else
    {
      RandomString();
    }

    __strlcpy_chk();
    *(a1 + 448) = mach_absolute_time();
    if (*(a1 + 480))
    {
      __strlcpy_chk();
    }

    sysInfo_handleAuthStringUpdate(v2);
  }
}

uint64_t APReceiverSystemInfoSetProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (a1 && a3)
  {
    v5 = *(a1 + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __APReceiverSystemInfoSetProperty_block_invoke;
    v8[3] = &unk_278C60780;
    v8[4] = &v9;
    v8[5] = a1;
    v8[6] = a3;
    v8[7] = a5;
    dispatch_sync(v5, v8);
    v6 = *(v10 + 6);
  }

  else
  {
    APSLogErrorAt();
    v6 = 4294895275;
    *(v10 + 6) = -72021;
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

void __APReceiverSystemInfoSetProperty_block_invoke(void *a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  if (gLogCategory_APReceiverSystemInfo <= 30 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554462, "%{ptr} set propertyKey: '%@'\n", v2, v3);
  }

  if (CFEqual(v3, @"Passcode"))
  {
    if (!v4)
    {
      LODWORD(v5) = 0;
      *(v2 + 434) = 0;
      goto LABEL_31;
    }

    LODWORD(v5) = -72021;
LABEL_83:
    APSLogErrorAt();
    goto LABEL_31;
  }

  if (CFEqual(v3, @"Password"))
  {
    if (v4 && CFStringGetCString(v4, buffer, 64, 0x8000100u))
    {
      if (sysInfo_updatePlayPassword(v2, buffer))
      {
        if (*(v2 + 480))
        {
          v6 = 3;
        }

        else if (*(v2 + 481))
        {
          v6 = 2;
        }

        else
        {
          if (!*(v2 + 433))
          {
            *(v2 + 428) = 0;
            goto LABEL_29;
          }

          v6 = 1;
        }

        *(v2 + 428) = v6;
LABEL_29:
        sysInfo_updateAdvertiserInfoAndNotify(v2, @"AdvertisingParameterChanged", 0);
      }

LABEL_30:
      LODWORD(v5) = 0;
      goto LABEL_31;
    }

LABEL_93:
    APSLogErrorAt();
    LODWORD(v5) = -72021;
    goto LABEL_31;
  }

  if (CFEqual(v3, @"DeviceName"))
  {
    if (v4)
    {
      *buffer = 0;
      LODWORD(v5) = CFStringCopyUTF8CString();
      if (!v5)
      {
        CUSetSystemName();
        sysInfo_setDeviceName(v2, *buffer);
        free(*buffer);
        goto LABEL_31;
      }

      goto LABEL_83;
    }

    goto LABEL_30;
  }

  if (!CFEqual(v3, @"VolumeDB"))
  {
    if (CFEqual(v3, @"IsMuted"))
    {
      if (!v4 || (v8 = CFGetTypeID(v4), v8 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_83;
      }

      if (gLogCategory_APReceiverSystemInfo <= 40 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        v9 = "true";
        if (!*(v2 + 713))
        {
          v9 = "false";
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554472, "[AirPlayVolume] Updating %@: %s -> %@\n", v3, v9, v4);
      }

      LODWORD(v5) = 0;
      *(v2 + 713) = *MEMORY[0x277CBED28] == v4;
      goto LABEL_31;
    }

    if (CFEqual(v3, @"DenyInterruptions"))
    {
      if (v4)
      {
        v10 = CFGetTypeID(v4);
        if (v10 != CFBooleanGetTypeID())
        {
          LODWORD(v5) = -72021;
          goto LABEL_83;
        }
      }

      if (!FigCFEqual())
      {
        v11 = *(v2 + 88);
        *(v2 + 88) = v4;
        if (v4)
        {
          CFRetain(v4);
        }

        if (v11)
        {
          CFRelease(v11);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      goto LABEL_30;
    }

    if (CFEqual(v3, @"SupportsSenderUIEvents"))
    {
      if (!v4 || (v13 = CFGetTypeID(v4), v13 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_83;
      }

      Value = CFBooleanGetValue(v4);
      v15 = *(v2 + 683);
      if (v15 == Value)
      {
        goto LABEL_30;
      }

      v16 = Value;
      if (gLogCategory_APReceiverSystemInfo <= 50)
      {
        if (gLogCategory_APReceiverSystemInfo == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_85;
          }

          v15 = *(v2 + 683);
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "Receiver supports sender UI events changed: '%d' -> '%d'\n", v15, v16);
      }

LABEL_85:
      LODWORD(v5) = 0;
      *(v2 + 683) = v16;
      goto LABEL_31;
    }

    if (v3 == @"VolumeControlTypeEx" || v3 && CFEqual(v3, @"VolumeControlTypeEx"))
    {
      if (!v4 || (v17 = CFGetTypeID(v4), v17 != CFNumberGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_83;
      }

      v18 = *(v2 + 704);
      if (v18 == v4 || v18 && CFEqual(v18, v4))
      {
        goto LABEL_30;
      }

      FigCFNumberGetSInt32();
      APSVolumeControlTypeFromEx();
      SInt32 = FigCFNumberCreateSInt32();
      if (!SInt32)
      {
        APSLogErrorAt();
        LODWORD(v5) = -6728;
        goto LABEL_31;
      }

      v20 = SInt32;
      v21 = *(v2 + 696);
      *(v2 + 696) = SInt32;
      CFRetain(SInt32);
      if (v21)
      {
        CFRelease(v21);
      }

      v22 = *(v2 + 704);
      *(v2 + 704) = v4;
      CFRetain(v4);
      if (v22)
      {
        CFRelease(v22);
      }

LABEL_74:
      CFRelease(v20);
      goto LABEL_29;
    }

    if (CFEqual(v3, @"ReceiverDeviceIsPlaying"))
    {
      if (!v4 || (v23 = CFGetTypeID(v4), v23 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_83;
      }

      v24 = CFBooleanGetValue(v4);
      v25 = *(v2 + 226);
      if (v25 == v24)
      {
        goto LABEL_30;
      }

      v26 = v24;
      if (gLogCategory_APReceiverSystemInfo <= 50)
      {
        if (gLogCategory_APReceiverSystemInfo == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_104;
          }

          v25 = *(v2 + 226);
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "ReceiverDeviceIsPlaying changed: '%d' -> '%d'\n", v25, v26);
      }

LABEL_104:
      *(v2 + 226) = v26;
      goto LABEL_29;
    }

    if (CFEqual(v3, @"ReceiverSessionIsActive"))
    {
      if (!v4 || (v27 = CFGetTypeID(v4), v27 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_83;
      }

      v28 = CFBooleanGetValue(v4);
      v29 = *(v2 + 225);
      if (v29 == v28)
      {
        goto LABEL_30;
      }

      v30 = v28;
      if (gLogCategory_APReceiverSystemInfo <= 50)
      {
        if (gLogCategory_APReceiverSystemInfo == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_114;
          }

          v29 = *(v2 + 225);
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "ReceiverSessionIsActive changed: '%d' -> '%d'\n", v29, v30);
      }

LABEL_114:
      *(v2 + 225) = v30;
      if (!*(v2 + 130))
      {
        sysInfo_updateNonMRSourcedSilentPrimaryStatusIfNeeded(v2);
      }

      sysInfo_updateAPGroupInfo(v2);
      if (*(v2 + 480))
      {
        if (v30)
        {
          sysInfo_cancelPINUpdate(v2);
        }

        else
        {
          sysInfo_schedulePINUpdate(v2);
        }
      }

      goto LABEL_29;
    }

    cf1 = v3;
    if (CFEqual(v3, @"SecondHopEligibleSenderSessionIsActive"))
    {
      if (!v4 || (v31 = CFGetTypeID(v4), v31 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_83;
      }

      v32 = CFBooleanGetValue(v4);
      v33 = *(v2 + 224);
      if (v33 == v32)
      {
        goto LABEL_30;
      }

      v34 = v32;
      if (gLogCategory_APReceiverSystemInfo > 50)
      {
        goto LABEL_128;
      }

      if (gLogCategory_APReceiverSystemInfo == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_128;
        }

        v33 = *(v2 + 224);
      }

      LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "secondHopEligibleSenderSessionIsActive changed: '%d' -> '%d'\n", v33, v34);
LABEL_128:
      *(v2 + 224) = v34;
LABEL_129:
      sysInfo_updateAPGroupInfo(v2);
      goto LABEL_29;
    }

    if (CFEqual(v3, @"UsePTPClock"))
    {
      if (!v4 || (v35 = CFGetTypeID(v4), v35 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_83;
      }

      v36 = CFBooleanGetValue(v4);
      v37 = *(v2 + 311);
      if (v37 == v36)
      {
        goto LABEL_30;
      }

      v38 = v36;
      if (gLogCategory_APReceiverSystemInfo <= 50)
      {
        if (gLogCategory_APReceiverSystemInfo == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_140;
          }

          v37 = *(v2 + 311);
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "1588Clock support changed: '%d' -> '%d'\n", v37, v38);
      }

LABEL_140:
      *(v2 + 311) = v38;
      goto LABEL_29;
    }

    if (CFEqual(v3, @"CanRecordScreenStream"))
    {
      if (!v4 || (v39 = CFGetTypeID(v4), v39 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_83;
      }

      v40 = CFBooleanGetValue(v4);
      v41 = *(v2 + 681);
      if (v41 == v40)
      {
        goto LABEL_30;
      }

      v42 = v40;
      if (gLogCategory_APReceiverSystemInfo <= 50)
      {
        if (gLogCategory_APReceiverSystemInfo == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_150;
          }

          v41 = *(v2 + 681);
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "Can record screen changed: '%d' -> '%d'\n", v41, v42);
      }

LABEL_150:
      LODWORD(v5) = 0;
      *(v2 + 681) = v42;
      goto LABEL_31;
    }

    if (CFEqual(v3, @"ScreenDemoMode"))
    {
      if (!v4 || (v43 = CFGetTypeID(v4), v43 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_83;
      }

      v44 = CFBooleanGetValue(v4);
      v45 = *(v2 + 682);
      if (v45 == v44)
      {
        goto LABEL_30;
      }

      v46 = v44;
      if (gLogCategory_APReceiverSystemInfo <= 50)
      {
        if (gLogCategory_APReceiverSystemInfo == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_162;
          }

          v45 = *(v2 + 682);
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "Demo mode changed: '%d' -> '%d'\n", v45, v46);
      }

LABEL_162:
      *(v2 + 682) = v46;
      goto LABEL_29;
    }

    if (CFEqual(v3, @"ForwardFrameUserData"))
    {
      if (!v4 || (v47 = CFGetTypeID(v4), v47 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_83;
      }

      v48 = CFBooleanGetValue(v4);
      v49 = *(v2 + 684);
      if (v49 == v48)
      {
        goto LABEL_30;
      }

      v50 = v48;
      if (gLogCategory_APReceiverSystemInfo <= 50)
      {
        if (gLogCategory_APReceiverSystemInfo == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_176;
          }

          v49 = *(v2 + 684);
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "Forward frame user data changed: '%d' -> '%d'\n", v49, v50);
      }

LABEL_176:
      LODWORD(v5) = 0;
      *(v2 + 684) = v50;
      goto LABEL_31;
    }

    if (CFEqual(v3, @"DisplaySizeOverride"))
    {
      *buffer = *MEMORY[0x277CBF3A8];
      if (!v4)
      {
        goto LABEL_93;
      }

      v51 = CFGetTypeID(v4);
      if (v51 != CFDictionaryGetTypeID() || !CGSizeMakeWithDictionaryRepresentation(v4, buffer))
      {
        goto LABEL_93;
      }

      v52 = *buffer;
      v53 = *&buffer[8];
      if (*buffer == *(v2 + 608) && *&buffer[8] == *(v2 + 616))
      {
        goto LABEL_30;
      }

      if (gLogCategory_APReceiverSystemInfo <= 50)
      {
        if (gLogCategory_APReceiverSystemInfo == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_186;
          }

          v52 = *buffer;
          v53 = *&buffer[8];
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "Setting display size override to %d x %d\n", v52, v53);
      }

LABEL_186:
      *(v2 + 608) = *buffer;
      goto LABEL_30;
    }

    if (CFEqual(v3, @"DisplaySizeMaxOverride"))
    {
      *buffer = *MEMORY[0x277CBF3A8];
      if (!v4)
      {
        goto LABEL_93;
      }

      v54 = CFGetTypeID(v4);
      if (v54 != CFDictionaryGetTypeID() || !CGSizeMakeWithDictionaryRepresentation(v4, buffer))
      {
        goto LABEL_93;
      }

      v55 = *buffer;
      v56 = *&buffer[8];
      if (*buffer == *(v2 + 624) && *&buffer[8] == *(v2 + 632))
      {
        goto LABEL_30;
      }

      if (gLogCategory_APReceiverSystemInfo <= 50)
      {
        if (gLogCategory_APReceiverSystemInfo == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_198;
          }

          v55 = *buffer;
          v56 = *&buffer[8];
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "Setting display size max override to %d x %d\n", v55, v56);
      }

LABEL_198:
      *(v2 + 624) = *buffer;
      goto LABEL_30;
    }

    if (CFEqual(v3, @"DisplayHDRModeOverride"))
    {
      if (v4)
      {
        v57 = CFGetTypeID(v4);
        if (v57 != CFStringGetTypeID())
        {
          LODWORD(v5) = -72021;
          goto LABEL_83;
        }
      }

      if (FigCFEqual())
      {
        goto LABEL_30;
      }

      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "Setting display HDR mode override to %@\n", v4);
      }

      v5 = *(v2 + 640);
      *(v2 + 640) = v4;
      if (v4)
      {
LABEL_232:
        CFRetain(v4);
      }

LABEL_233:
      if (!v5)
      {
        goto LABEL_31;
      }

      CFRelease(v5);
      goto LABEL_30;
    }

    if (CFEqual(v3, @"RoutingContextID"))
    {
      if (!v4 || (v58 = CFGetTypeID(v4), v58 != CFStringGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_83;
      }

      if (*(v2 + 130))
      {
        if (FigCFEqual())
        {
          goto LABEL_30;
        }

        if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "MR sourced routing context ID changed: %@ to %@\n", *(v2 + 136), v4);
        }

        v73 = *(v2 + 136);
        *(v2 + 136) = v4;
        CFRetain(v4);
        if (v73)
        {
          CFRelease(v73);
        }

        goto LABEL_129;
      }

LABEL_286:
      APSLogErrorAt();
      LODWORD(v5) = -72023;
      goto LABEL_31;
    }

    if (CFEqual(v3, @"IsSilentPrimary"))
    {
      if (!v4 || (v59 = CFGetTypeID(v4), v59 != CFBooleanGetTypeID()))
      {
        LODWORD(v5) = -72021;
        goto LABEL_83;
      }

      if (!*(v2 + 130))
      {
        goto LABEL_286;
      }

      v60 = CFBooleanGetValue(v4);
      v61 = *(v2 + 305);
      if (v60 == v61)
      {
        goto LABEL_30;
      }

      v62 = v60;
      if (gLogCategory_APReceiverSystemInfo <= 50)
      {
        if (gLogCategory_APReceiverSystemInfo != -1)
        {
LABEL_206:
          v63 = "yes";
          if (v61)
          {
            v64 = "yes";
          }

          else
          {
            v64 = "no";
          }

          if (!v62)
          {
            v63 = "no";
          }

          LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "MR reports SilentPrimary change: %s -> %s\n", v64, v63);
          goto LABEL_250;
        }

        if (_LogCategory_Initialize())
        {
          v61 = *(v2 + 305);
          goto LABEL_206;
        }
      }

LABEL_250:
      *(v2 + 305) = v62;
      goto LABEL_29;
    }

    if (!CFEqual(v3, @"IsClusterLeader"))
    {
      if (CFEqual(v3, @"audioCapabilities"))
      {
        if (!v4 || (v72 = CFGetTypeID(v4), v72 != CFDictionaryGetTypeID()))
        {
          LODWORD(v5) = -72021;
          goto LABEL_83;
        }

        if (FigCFEqual())
        {
          goto LABEL_30;
        }

        if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "AudioCapabilties changed: %@ -> %@\n", *(v2 + 72), v4);
        }

        v20 = *(v2 + 72);
        *(v2 + 72) = v4;
        CFRetain(v4);
        if (!v20)
        {
          goto LABEL_29;
        }

        goto LABEL_74;
      }

      if (!CFEqual(v3, @"AirPlayGroupID"))
      {
        LODWORD(v5) = -72022;
        if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "unknown property %@\n", cf1);
        }

        goto LABEL_31;
      }

      if (v4)
      {
        v74 = CFGetTypeID(v4);
        if (v74 != CFStringGetTypeID())
        {
          LODWORD(v5) = -72021;
          goto LABEL_83;
        }
      }

      if (!*(v2 + 314))
      {
        LODWORD(v5) = -72023;
        if (gLogCategory_APReceiverSystemInfo <= 60 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554492, "Cannot set AirPlayGroup ID unless UGL server", v75);
        }

        goto LABEL_31;
      }

      if (FigCFEqual())
      {
        goto LABEL_30;
      }

      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "<APUGL> AirPlay Group ID changed: %@ -> %@\n", *(v2 + 144), v4);
      }

      v5 = *(v2 + 144);
      *(v2 + 144) = v4;
      if (v4)
      {
        goto LABEL_232;
      }

      goto LABEL_233;
    }

    if (!v4 || (v65 = CFGetTypeID(v4), v65 != CFBooleanGetTypeID()))
    {
      LODWORD(v5) = -72021;
      goto LABEL_83;
    }

    if (!*(v2 + 176) || *(v2 + 248))
    {
      if (*(v2 + 256))
      {
        v66 = *(v2 + 248);
        if (!v66)
        {
          goto LABEL_221;
        }

        if (v66 == 1)
        {
          LODWORD(v5) = -72021;
          goto LABEL_83;
        }
      }

      APSLogErrorAt();
      LODWORD(v5) = -72025;
      goto LABEL_31;
    }

LABEL_221:
    v67 = CFBooleanGetValue(v4);
    v68 = *(v2 + 306);
    if (v67 == v68)
    {
      goto LABEL_30;
    }

    v69 = v67;
    if (gLogCategory_APReceiverSystemInfo > 50)
    {
      goto LABEL_266;
    }

    if (gLogCategory_APReceiverSystemInfo == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_266:
        *(v2 + 306) = v69;
        APSSettingsSetValue();
        if (v69)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
        }

        goto LABEL_29;
      }

      v68 = *(v2 + 306);
    }

    v70 = "yes";
    if (v68)
    {
      v71 = "yes";
    }

    else
    {
      v71 = "no";
    }

    if (!v69)
    {
      v70 = "no";
    }

    LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554482, "MR reports ClusterLeader change: %s -> %s\n", v71, v70);
    goto LABEL_266;
  }

  if (!v4 || (v7 = CFGetTypeID(v4), v7 != CFNumberGetTypeID()))
  {
    LODWORD(v5) = -72021;
    goto LABEL_83;
  }

  if (gLogCategory_APReceiverSystemInfo <= 40 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_setPropertyInternal(APReceiverSystemInfoRef, CFStringRef, CFTypeRef)", 33554472, "[AirPlayVolume] Updating %@: %f -> %@\n", v3, *(v2 + 692), v4);
  }

  CFGetDouble();
  LODWORD(v5) = 0;
  *&v12 = v12;
  *(v2 + 692) = LODWORD(v12);
LABEL_31:
  *(*(a1[4] + 8) + 24) = v5;
}

void sysInfo_updateNonMRSourcedSilentPrimaryStatusIfNeeded(uint64_t a1)
{
  v5 = *(a1 + 232) && ((Int64 = CFDictionaryGetInt64(), v3 = CFDictionaryGetInt64(), !Int64) ? (v4 = v3 == 0) : (v4 = 1), !v4) && *(a1 + 225) == 0;
  v6 = *(a1 + 305);
  if (v6 == v5)
  {
    return;
  }

  if (gLogCategory_APReceiverSystemInfo <= 50)
  {
    if (gLogCategory_APReceiverSystemInfo != -1)
    {
LABEL_11:
      v7 = "yes";
      if (v6)
      {
        v8 = "yes";
      }

      else
      {
        v8 = "no";
      }

      if (!v5)
      {
        v7 = "no";
      }

      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updateNonMRSourcedSilentPrimaryStatusIfNeeded(APReceiverSystemInfoRef)", 33554482, "IsSilentPrimary change: %s -> %s\n", v8, v7);
      goto LABEL_18;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *(a1 + 305);
      goto LABEL_11;
    }
  }

LABEL_18:
  *(a1 + 305) = v5;
  sysInfo_updateAdvertiserInfoAndNotify(a1, @"AdvertisingParameterChanged", 0);
  if (*(a1 + 305) && *(a1 + 176) && !*(a1 + 129))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_updateNonMRSourcedSilentPrimaryStatusIfNeeded(APReceiverSystemInfoRef)", 33554482, "Became silent primary => stop the buddy. Posting StopTightSyncBuddy notification.\n");
    }

    notify_post("kAirPlayWHANotification_InterruptedByPreWHASender");
  }
}

void sysInfo_cancelPINUpdate(uint64_t a1)
{
  v1 = *(a1 + 552);
  if (v1)
  {
    dispatch_source_cancel(*(a1 + 552));
    dispatch_release(v1);
    *(a1 + 552) = 0;
  }
}

void sysInfo_schedulePINUpdate(dispatch_queue_t *a1)
{
  v2 = a1[69];
  if (v2)
  {
    dispatch_source_cancel(a1[69]);
    dispatch_release(v2);
    a1[69] = 0;
  }

  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, a1[2]);
  a1[69] = v3;
  if (v3)
  {
    CFRetain(a1);
    dispatch_set_context(a1[69], a1);
    dispatch_source_set_event_handler_f(a1[69], sysInfo_updatePINTimerFired);
    dispatch_source_set_cancel_handler_f(a1[69], sysInfo_updatePINTimerCanceled);
    v4 = a1[69];
    v5 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v4, v5, 0x7FFFFFFFFFFFFFFFuLL, 0x3B9ACA00uLL);
    v6 = a1[69];

    dispatch_resume(v6);
  }

  else
  {

    APSLogErrorAt();
  }
}

uint64_t APReceiverSystemInfoCopyInfoDict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a1 && a4)
  {
    v4 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APReceiverSystemInfoCopyInfoDict_block_invoke;
    block[3] = &unk_278C5FC98;
    block[4] = &v8;
    block[5] = a1;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(v4, block);
    v5 = *(v9 + 6);
  }

  else
  {
    APSLogErrorAt();
    v5 = 4294895275;
    *(v9 + 6) = -72021;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __APReceiverSystemInfoCopyInfoDict_block_invoke(uint64_t a1)
{
  result = sysInfo_copyInfoDictInternal(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t APReceiverSystemInfoAllowsP2PConnectionFromMACAddress(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APReceiverSystemInfoAllowsP2PConnectionFromMACAddress_block_invoke;
  block[3] = &unk_278C607D0;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APReceiverSystemInfoAllowsP2PConnectionFromMACAddress_block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v7 = 0u;
  v8 = 0u;
  *cStr = 0u;
  v6 = 0u;
  if (*(v2 + 416))
  {
    HardwareAddressToCString();
    v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
    cStr[0] = 0;
    v4 = 1;
    if (CFStringCompare(*(v2 + 416), v3, 1uLL))
    {
      if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "Boolean sysInfo_allowsP2PConnectionFromMACAddressInternal(APReceiverSystemInfoRef, uint8_t *)", 33554522, "*** Whitelisted Sender MAC address: %@; Sender MAC address: %@\n", *(v2 + 416), v3);
      }

      v4 = 0;
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    v4 = 1;
  }

  *(*(a1[4] + 8) + 24) = v4;
}

uint64_t __APReceiverSystemInfoCopyFeatures_block_invoke(uint64_t a1)
{
  result = sysInfo_createFeaturesInternal(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void APReceiverSystemInfoEnsurePIN(uint64_t a1)
{
  v1 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APReceiverSystemInfoEnsurePIN_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void __APReceiverSystemInfoEnsurePIN_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 481))
  {
    sysInfo_updatePairPINIfNeeded(v1);
  }
}

uint64_t __APReceiverSystemInfoGetDisplaySizeForUserVersion_block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 < 1)
  {
    v2 = 1280.0;
    v3 = 720.0;
  }

  else if (v1 == 1)
  {
    v2 = 1920.0;
    v3 = 1080.0;
  }

  else
  {
    v4 = *(result + 40);
    v2 = *(v4 + 592);
    v3 = *(v4 + 600);
    if (v2 == *MEMORY[0x277CBF3A8] && v3 == *(MEMORY[0x277CBF3A8] + 8))
    {
      v3 = 1080.0;
      v2 = 1920.0;
    }
  }

  v5 = *(*(result + 32) + 8);
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  return result;
}

uint64_t APReceiverSystemInfoCopyDisplaysInfoForUserVersion(uint64_t a1, const __CFAllocator *a2, int a3, __CFArray **a4)
{
  if (!a4)
  {
    v29 = 4294895275;
    APSLogErrorAt();
    return v29;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895276;
  }

  v9 = Mutable;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3010000000;
  v51 = 0;
  v52 = 0;
  v50 = &unk_23EAD36B9;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3010000000;
  v45 = 0;
  v46 = 0;
  v44 = &unk_23EAD36B9;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 60;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v10 = *(a1 + 576);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __sysInfo_copyMainDisplayInfo_block_invoke;
  block[3] = &unk_278C5FD68;
  block[9] = &v35;
  block[10] = a1;
  v34 = a3;
  block[4] = &v47;
  block[5] = &v41;
  block[6] = &v57;
  block[7] = &v53;
  block[8] = v39;
  dispatch_sync(v10, block);
  v12 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  if (v42[2].f64[0] == *MEMORY[0x277CBF3A8] && v42[2].f64[1] == v11)
  {
    v42[2] = v48[2];
  }

  v13 = CFDictionaryCreateMutable(a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v13)
  {
    if (*(a1 + 608) != v12 || *(a1 + 616) != v11)
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_copyMainDisplayInfo(APReceiverSystemInfoRef, uint32_t, CFAllocatorRef, CFDictionaryRef *)", 33554482, "CopyDisplaysInfo: using displaySizeOverride\n");
      }

      v48[2] = *(a1 + 608);
    }

    if (*(a1 + 624) == v12 && *(a1 + 632) == v11)
    {
      v14 = v42;
    }

    else
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_copyMainDisplayInfo(APReceiverSystemInfoRef, uint32_t, CFAllocatorRef, CFDictionaryRef *)", 33554482, "CopyDisplaysInfo: using displaySizeMaxOverride\n");
      }

      v14 = v42;
      v42[2] = *(a1 + 624);
    }

    v15 = vbslq_s8(vcgtq_f64(v14[2], v48[2]), v48[2], v14[2]);
    v48[2] = v15;
    v16 = *v15.i64;
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    v17 = v48[2].f64[1];
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_copyMainDisplayInfo(APReceiverSystemInfoRef, uint32_t, CFAllocatorRef, CFDictionaryRef *)", 33554482, "CopyDisplaysInfo: reported display size: %d x %d\n", v16, v17);
    }

    v18 = v42[2].f64[1];
    v19 = v42[2].f64[0];
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_copyMainDisplayInfo(APReceiverSystemInfoRef, uint32_t, CFAllocatorRef, CFDictionaryRef *)", 33554482, "CopyDisplaysInfo: reported display max size: %d x %d\n", v19, v18);
    }

    CFDictionarySetInt64();
    CFDictionarySetInt64();
    if (v58[3])
    {
      v20 = CopyEDIDbyUUID();
      if (v20)
      {
        CFDictionarySetValue(v13, @"edid", v20);
        CFRelease(v20);
      }
    }

    v21 = v58[3];
    if (v21)
    {
      CFRelease(v21);
    }

    CFRetain(@"e5f7a68d-7b0f-4305-984b-974f677a150b");
    v58[3] = @"e5f7a68d-7b0f-4305-984b-974f677a150b";
    CFDictionarySetValue(v13, @"uuid", @"e5f7a68d-7b0f-4305-984b-974f677a150b");
    v22 = *(a1 + 676);
    if (v22 < 0)
    {
      v22 = *(v36 + 6);
    }

    *(v36 + 6) = v22;
    v23 = *MEMORY[0x277CBED28];
    v24 = *MEMORY[0x277CBED10];
    if (v22)
    {
      v25 = *MEMORY[0x277CBED28];
    }

    else
    {
      v25 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v13, @"overscanned", v25);
    CFDictionarySetInt64();
    CFDictionarySetValue(v13, @"rotation", v23);
    if (APSSettingsGetIntWithDefault())
    {
      v26 = v23;
    }

    else
    {
      v26 = v24;
    }

    CFDictionarySetValue(v13, @"receiverSupports444", v26);
    v27 = *(a1 + 640);
    if (v27)
    {
      v54[3] = v27;
    }

    else if (!v54[3])
    {
      goto LABEL_47;
    }

    v28 = CFDictionaryCreateMutable(a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(v28, *MEMORY[0x277CD6540], v54[3]);
    CFDictionarySetValue(v13, @"HDRInfo", v28);
    CFRelease(v28);
LABEL_47:
    if (gLogCategory_APReceiverSystemInfo <= 30 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "OSStatus sysInfo_copyMainDisplayInfo(APReceiverSystemInfoRef, uint32_t, CFAllocatorRef, CFDictionaryRef *)", 33554462, "CopyDisplaysInfo: display properties: %@\n", v13);
    }

    v29 = 0;
    goto LABEL_52;
  }

  APSLogErrorAt();
  v29 = 4294960568;
LABEL_52:
  v30 = v58[3];
  if (v30)
  {
    CFRelease(v30);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
  if (v13)
  {
    CFArrayAppendValue(v9, v13);
    *a4 = v9;
    v31 = v13;
  }

  else
  {
    APSLogErrorAt();
    v31 = v9;
  }

  CFRelease(v31);
  return v29;
}

void sub_23EA0700C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 208), 8);
  _Block_object_dispose((v30 - 160), 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

CFTypeRef __sysInfo_copyMainDisplayInfo_block_invoke(uint64_t a1)
{
  sysInfo_updateCurrentDisplayInfo(*(a1 + 80));
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  if (v3 < 1)
  {
    v4 = 1280.0;
    v5 = 720.0;
  }

  else if (v3 == 1)
  {
    v4 = 1920.0;
    v5 = 1080.0;
  }

  else
  {
    v4 = *(v2 + 592);
    v5 = *(v2 + 600);
    if (v4 == *MEMORY[0x277CBF3A8] && v5 == *(MEMORY[0x277CBF3A8] + 8))
    {
      v5 = 1080.0;
      v4 = 1920.0;
    }
  }

  v6 = *(*(a1 + 32) + 8);
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(*(*(a1 + 40) + 8) + 32) = *(v2 + 592);
  result = *(*(a1 + 80) + 584);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 48) + 8) + 24) = result;
  v8 = *(*(a1 + 80) + 648);
  if (v8)
  {
    result = CFEqual(v8, *MEMORY[0x277CDA168]);
    if (result)
    {
      v9 = *MEMORY[0x277CD6530];
    }

    else
    {
      result = CFEqual(v8, *MEMORY[0x277CDA160]);
      v9 = *MEMORY[0x277CD6528];
      if (!result)
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = v9;
  v10 = *(a1 + 80);
  *(*(*(a1 + 64) + 8) + 24) = *(v10 + 672);
  *(*(*(a1 + 72) + 8) + 24) = *(v10 + 680);
  return result;
}

void APReceiverSystemInfoClearVideoCache()
{
  memset(&v4, 0, sizeof(v4));
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([(NSArray *)v0 count])
  {
    v1 = [objc_msgSend(-[NSArray objectAtIndex:](v0 objectAtIndex:{0), "stringByAppendingPathComponent:", @"AppleTV/Video/LocalAndRental/CachedMedia*", "UTF8String"}];
    if (v1)
    {
      if (!glob(v1, 0, 0, &v4))
      {
        if (v4.gl_pathc)
        {
          v3 = 0;
          do
          {
            if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APReceiverSystemInfo, "void APReceiverSystemInfoClearVideoCache(void)", 33554482, "Deleting video cache file: %s\n", v4.gl_pathv[v3]);
            }

            if (remove(v4.gl_pathv[v3], v2) && gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APReceiverSystemInfo, "void APReceiverSystemInfoClearVideoCache(void)", 33554482, "### Delete video cache file failed: %s, %#m\n", v4.gl_pathv[v3]);
            }

            ++v3;
          }

          while (v3 < v4.gl_pathc);
        }

        globfree(&v4);
      }
    }
  }
}

void __APReceiverSystemInfoSetParentGroupInfo_block_invoke(uint64_t a1)
{
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    if (*(a1 + 56))
    {
      v2 = "yes";
    }

    else
    {
      v2 = "no";
    }

    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void APReceiverSystemInfoSetParentGroupInfo(APReceiverSystemInfoRef, CFStringRef, Boolean, Boolean, Boolean, CFDictionaryRef)_block_invoke", 33554482, "Updating parent group info. Parent Group UUID: %'@ -> %'@. Group contains discoverable leader: %s\n", *(*(a1 + 32) + 160), *(a1 + 40), v2);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 160);
  if (v3)
  {
    CFRetain(*(a1 + 40));
  }

  *(v4 + 160) = v3;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  v6[168] = *(a1 + 56);
  v6[169] = *(a1 + 57);
  v6[170] = *(a1 + 58);
  if (!FigCFEqual())
  {
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      Value = FigCFDictionaryGetValue();
      v8 = FigCFDictionaryGetValue();
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void APReceiverSystemInfoSetParentGroupInfo(APReceiverSystemInfoRef, CFStringRef, Boolean, Boolean, Boolean, CFDictionaryRef)_block_invoke", 33554482, "<APUGLPort> UGL-RCServer Info changed: port %@ -> %@\n", Value, v8);
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 752);
    v11 = *(a1 + 48);
    *(v9 + 752) = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  sysInfo_updateAPGroupInfo(*(a1 + 32));
  v12 = *(a1 + 32);

  sysInfo_updateAdvertiserInfoAndNotify(v12, @"AdvertisingParameterChanged", 0);
}

void __APReceiverSystemInfoResetParentGroupInfo_block_invoke(uint64_t a1)
{
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void APReceiverSystemInfoResetParentGroupInfo(APReceiverSystemInfoRef)_block_invoke", 33554482, "Resetting parent group info...\n");
  }

  v2 = *(a1 + 32);
  if (*(v2 + 160))
  {
    CFRelease(*(v2 + 160));
    *(*(a1 + 32) + 160) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 168) = 0;
  *(v2 + 170) = 0;
  if (*(v2 + 314))
  {
    if (gLogCategory_APReceiverSystemInfo <= 50)
    {
      if (gLogCategory_APReceiverSystemInfo != -1 || (v4 = _LogCategory_Initialize(), v2 = *(a1 + 32), v4))
      {
        Value = FigCFDictionaryGetValue();
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void APReceiverSystemInfoResetParentGroupInfo(APReceiverSystemInfoRef)_block_invoke", 33554482, "<APUGLPort> UGL-RCServer Info being cleared; port was %@\n", Value);
        v2 = *(a1 + 32);
      }
    }
  }

  if (*(v2 + 752))
  {
    CFRelease(*(v2 + 752));
    *(*(a1 + 32) + 752) = 0;
    v2 = *(a1 + 32);
  }

  sysInfo_updateAPGroupInfo(v2);
  v5 = *(a1 + 32);

  sysInfo_updateAdvertiserInfoAndNotify(v5, @"AdvertisingParameterChanged", 0);
}

void APReceiverSystemInfoHandleAPServicesReset(void *a1)
{
  if (IsAppleTV() || APSIsAPMSpeaker())
  {
    CFRetain(a1);
    v2 = a1[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APReceiverSystemInfoHandleAPServicesReset_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_async(v2, block);
  }
}

void __APReceiverSystemInfoHandleAPServicesReset_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sysInfo_copyPasscodeString(*(a1 + 32), 1, *MEMORY[0x277CBECE8], 0);
  v3 = v2;
  if (v2)
  {
    if (CFStringGetCString(v2, buffer, 64, 0x8000100u))
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void APReceiverSystemInfoHandleAPServicesReset(APReceiverSystemInfoRef)_block_invoke", 33554482, "Re-send the current authString to sender process.\n");
      }

      sysInfo_handleAuthStringUpdate(buffer);
    }

    else if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void APReceiverSystemInfoHandleAPServicesReset(APReceiverSystemInfoRef)_block_invoke", 33554522, "### Failed to get CString from authString.\n");
    }
  }

  sysInfo_handleInfoDictUpdate(*(a1 + 32));
  sysInfo_handleLocalSenderStateChanged(*(a1 + 32), 0);
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void APReceiverSystemInfoHandleAPServicesReset(APReceiverSystemInfoRef)_block_invoke", 33554482, "SenderServicesReset triggering local sender state update\n");
  }

  v4 = APSXPCClientSendCommandCreatingReply();
  if (v4)
  {
    if (gLogCategory_APReceiverSystemInfo <= 90)
    {
      v5 = v4;
      if (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void APReceiverSystemInfoHandleAPServicesReset(APReceiverSystemInfoRef)_block_invoke", 33554522, "TriggerLocalSenderStateUpdate failed with error: %#m\n", v5);
      }
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(*(a1 + 32));
}

void sysInfo_handleLocalSenderStateChanged(uint64_t Int64, const void *a2)
{
  if (a2)
  {
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v5 = CFDictionaryGetInt64() != 0;
    v6 = CFDictionaryGetInt64();
  }

  else
  {
    v5 = 0;
    TypedValue = 0;
    v6 = 0;
  }

  v7 = *(Int64 + 232);
  if (v7)
  {
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    v9 = CFDictionaryGetInt64() != 0;
    v7 = CFDictionaryGetInt64();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if (v8 == TypedValue)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
    if (v8 && TypedValue)
    {
      v10 = CFEqual(v8, TypedValue) == 0;
    }
  }

  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_handleLocalSenderStateChanged(APReceiverSystemInfoRef, CFDictionaryRef)", 33554482, "Local sender state changed, routeInfo: %@ -> %@", *(Int64 + 232), a2);
  }

  v11 = *(Int64 + 232);
  *(Int64 + 232) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v9 != v5 || v7 != v6)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (!*(Int64 + 130))
  {
    sysInfo_updateNonMRSourcedSilentPrimaryStatusIfNeeded(Int64);
    if (*(Int64 + 129) != 0 && v10)
    {
      sysInfo_updateAPGroupInfo(Int64);

      sysInfo_updateAdvertiserInfoAndNotify(Int64, @"AdvertisingParameterChanged", 0);
    }
  }
}

void __APReceiverSystemInfoHandleLocalSenderStateChanged_block_invoke(uint64_t a1)
{
  sysInfo_handleLocalSenderStateChanged(*(a1 + 32), *(a1 + 40));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void rcsMediaRemote_handleMediaDataControlFailure(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 90 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "void rcsMediaRemote_handleMediaDataControlFailure(APMediaDataControlServerRef, OSStatus, CFTypeRef)", 33554522, "### [%{ptr}] MediaDataControlServer [%{ptr}] failed with error %#m\n", a3, a1, a2);
  }

  CFRetain(a3);
  v7 = *(DerivedStorage + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __rcsMediaRemote_handleMediaDataControlFailure_block_invoke;
  block[3] = &__block_descriptor_tmp_36;
  block[4] = a3;
  v9 = a2;
  dispatch_async(v7, block);
}

void __rcsMediaRemote_handleMediaDataControlFailure_block_invoke(uint64_t a1)
{
  rcsMediaRemote_callDelegateHandleFailed(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void rcsMediaRemote_callDelegateHandleFailed(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 56))
  {
    return;
  }

  v5 = DerivedStorage;
  if (*(DerivedStorage + 64))
  {
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v6)
    {
      if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 90 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "void rcsMediaRemote_callDelegateHandleFailed(APReceiverRemoteControlSessionRef, OSStatus)", 33554522, "[%{ptr}] %###s weakDelegateContext is not NULL, but delegateContext is NULL.\n", a1, "void rcsMediaRemote_callDelegateHandleFailed(APReceiverRemoteControlSessionRef, OSStatus)");
      }

      return;
    }
  }

  else
  {
    v6 = 0;
  }

  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "void rcsMediaRemote_callDelegateHandleFailed(APReceiverRemoteControlSessionRef, OSStatus)", 33554482, "[%{ptr}] Calling delegate handleFailed for %#m.\n", a1, a2);
  }

  (*(v5 + 56))(v6, a1, a2);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t rcsMediaRemote_handleMediaDataControlRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 30 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "void rcsMediaRemote_handleMediaDataControlRequest(APMediaDataControlServerRef, CFNumberRef, APMediaDataControlMessageType, uint64_t, CFDictionaryRef, CFTypeRef)", 33554462, "[%{ptr}] Received message - messageType: %'C, groupID: %llu, replyToken: %@, message: %1.64@\n", a6, a3, a4, a2, a5);
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v12)
  {
    v13 = v12(a6, a5);
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 4294954514;
  }

  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 90 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "void rcsMediaRemote_handleMediaDataControlRequest(APMediaDataControlServerRef, CFNumberRef, APMediaDataControlMessageType, uint64_t, CFDictionaryRef, CFTypeRef)", 33554522, "### [%{ptr}] Failed to process message with error: %d\n", a6, v13);
  }

LABEL_13:

  return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v13);
}

uint64_t rcsMediaRemote_sendDataCallback(uint64_t a1, const __CFData *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v8 = Mutable;
  v9 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v9)
  {
    APSLogErrorAt();
    CFRelease(v8);
    return 4294960568;
  }

  v10 = v9;
  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
  {
    Length = CFDataGetLength(a2);
    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "OSStatus rcsMediaRemote_sendDataCallback(CFNumberRef, CFDataRef, CFTypeRef)", 33554482, "[%{ptr}-%@] Send outgoing message %d bytes\n", a3, a1, Length);
  }

  CFDictionarySetValue(v10, @"data", a2);
  CFDictionarySetValue(v8, @"params", v10);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v12)
  {
    v13 = 4294954514;
LABEL_12:
    APSLogErrorAt();
    goto LABEL_13;
  }

  v13 = v12(a3, v8);
  if (v13)
  {
    goto LABEL_12;
  }

LABEL_13:
  CFRelease(v8);
  CFRelease(v10);
  return v13;
}

uint64_t rcsMediaRemote_HandleOutgoingMessage(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 96))
  {
    APSLogErrorAt();
    v13 = 4294960587;
    goto LABEL_12;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  if (!*(v5 + 96))
  {
    APSLogErrorAt();
    goto LABEL_17;
  }

  v6 = v5;
  v7 = *(v5 + 112) + 1;
  *(v5 + 112) = v7;
  v8 = *(v5 + 48);
  if (v8)
  {
    if (!*(v5 + 64))
    {
      v10 = 0;
LABEL_9:
      CFRetain(a1);
      CFRetain(a2);
      v12 = *(v6 + 80);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 0x40000000;
      v16[2] = __rcsMediaRemote_sendOutgoingMessageInternal_block_invoke;
      v16[3] = &__block_descriptor_tmp_28;
      v16[4] = a1;
      v16[5] = v7;
      v16[6] = a2;
      v16[7] = v8;
      v16[8] = v10;
      dispatch_async(v12, v16);
      if (v10)
      {
        CFRelease(v10);
      }

      goto LABEL_11;
    }

    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v9)
    {
      v10 = v9;
      CFRetain(v9);
      goto LABEL_9;
    }

    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 90 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "OSStatus rcsMediaRemote_sendOutgoingMessageInternal(APReceiverRemoteControlSessionRef, CFDictionaryRef)", 33554522, "[%{ptr}] %###s weakDelegateContext is not NULL, but delegateContext is NULL.\n", a1, "OSStatus rcsMediaRemote_sendOutgoingMessageInternal(APReceiverRemoteControlSessionRef, CFDictionaryRef)");
    }

LABEL_17:
    v13 = 4294960587;
    APSLogErrorAt();
    goto LABEL_12;
  }

  CFRetain(a1);
  CFRetain(a2);
  v11 = *(v6 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __rcsMediaRemote_sendOutgoingMessageInternal_block_invoke_2;
  block[3] = &__block_descriptor_tmp_29;
  block[4] = a1;
  block[5] = a2;
  block[6] = v7;
  dispatch_async(v11, block);
LABEL_11:
  v13 = 0;
LABEL_12:
  FigSimpleMutexUnlock();
  return v13;
}

void __rcsMediaRemote_sendOutgoingMessageInternal_block_invoke_2(uint64_t *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = gLogCategory_APReceiverRemoteControlSessionMediaRemote;
  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50)
  {
    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v6 = gLogCategory_APReceiverRemoteControlSessionMediaRemote;
    }

    v7 = *(DerivedStorage + 88);
    if (v6 > 40)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == -1 && _LogCategory_Initialize() == 0;
    }

    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "void rcsMediaRemote_sendOutgoingMessageWithSocket(APReceiverRemoteControlSessionRef, CFDictionaryRef, uint64_t)", 33554482, "[%{ptr}] Sending outgoing message with socket [%{ptr}] (message #%llu)%?{end}: %.64@\n", v2, v7, v4, v8, v3);
  }

LABEL_11:
  v9 = *(DerivedStorage + 88);
  v10 = dispatch_time(0, 10000000000);
  v11 = APMediaDataControlServerSendRequestSync(v9, v3, v10);
  if (v11)
  {
    v13 = v11;
    APSLogErrorAt();
    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 90 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "void rcsMediaRemote_sendOutgoingMessageWithSocket(APReceiverRemoteControlSessionRef, CFDictionaryRef, uint64_t)", 33554522, "### [%{ptr}] Failed to send outgoing message with socket due to err: %#m (message #%llu)\n", v2, v13, v4);
    }

    rcsMediaRemote_callDelegateHandleFailed(v2, v13);
  }

  CFRelease(a1[4]);
  v12 = a1[5];

  CFRelease(v12);
}

void __rcsMediaRemote_sendOutgoingMessageInternal_block_invoke(uint64_t a1)
{
  v2 = gLogCategory_APReceiverRemoteControlSessionMediaRemote;
  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50)
  {
    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v2 = gLogCategory_APReceiverRemoteControlSessionMediaRemote;
    }

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v2 > 40)
    {
      v5 = 1;
    }

    else
    {
      v5 = v2 == -1 && _LogCategory_Initialize() == 0;
    }

    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "OSStatus rcsMediaRemote_sendOutgoingMessageInternal(APReceiverRemoteControlSessionRef, CFDictionaryRef)_block_invoke", 33554482, "[%{ptr}] Sending outgoing message with delegate (message #%llu)%?{end}: %.64@\n", v3, v4, v5, *(a1 + 48));
  }

LABEL_11:
  (*(a1 + 56))(*(a1 + 64), *(a1 + 32), *(a1 + 48));
  v6 = *(a1 + 64);
  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(*(a1 + 32));
  v7 = *(a1 + 48);

  CFRelease(v7);
}

uint64_t rcsMediaRemote_HandleIncomingMessage(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 104);
  if (!*(DerivedStorage + 96))
  {
    APSLogErrorAt();
    v13 = 4294960587;
    goto LABEL_10;
  }

  if (!a2)
  {
    APSLogErrorAt();
LABEL_23:
    v13 = 4294960591;
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(a2, @"params");
  if (!Value)
  {
    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 90 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "OSStatus rcsMediaRemote_HandleIncomingMessage(APReceiverRemoteControlSessionRef, CFDictionaryRef)", 33554522, "### [%{ptr}] Params not found in message #%llu\n", a1, *(DerivedStorage + 104));
    }

    goto LABEL_23;
  }

  v6 = CFDictionaryGetValue(Value, @"data");
  if (!v6)
  {
    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 90 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "OSStatus rcsMediaRemote_HandleIncomingMessage(APReceiverRemoteControlSessionRef, CFDictionaryRef)", 33554522, "### [%{ptr}] Data not found in params for message #%llu\n", a1, *(DerivedStorage + 104));
    }

    goto LABEL_23;
  }

  v7 = v6;
  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
  {
    v8 = *(DerivedStorage + 32);
    Length = CFDataGetLength(v7);
    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "OSStatus rcsMediaRemote_HandleIncomingMessage(APReceiverRemoteControlSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}-%@] Received incoming message %d bytes (message #%llu)\n", a1, v8, Length, *(DerivedStorage + 104));
  }

  v10 = CFRetain(*(DerivedStorage + 32));
  v11 = CFRetain(*(DerivedStorage + 24));
  CFRetain(v7);
  v12 = *(DerivedStorage + 72);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __rcsMediaRemote_HandleIncomingMessage_block_invoke;
  block[3] = &__block_descriptor_tmp_2323;
  block[4] = v10;
  block[5] = v7;
  block[6] = v11;
  dispatch_async(v12, block);
  v13 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t rcsMediaRemote_Start(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 96))
  {
    APSLogErrorAt();
    v4 = 4294960587;
LABEL_8:
    FigSimpleMutexUnlock();
    rcsMediaRemote_stop(a1);
    return v4;
  }

  v3 = *(DerivedStorage + 88);
  if (v3)
  {
    v6 = *(DerivedStorage + 88);
    v7 = 0;
    dispatch_sync_f(*(v3 + 112), &v6, controlServer_startInternal);
    v4 = v7;
    if (v7)
    {
      APSLogErrorAt();
      goto LABEL_8;
    }
  }

  *(DerivedStorage + 96) = 1;
  FigSimpleMutexUnlock();
  return 0;
}

void rcsMediaRemote_stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 88);
  if (v2)
  {
    v3[0] = *(DerivedStorage + 88);
    v3[1] = 0;
    dispatch_sync_f(*(v2 + 112), v3, controlServer_stopInternal);
  }
}

uint64_t CMBaseObjectNotificationBarrier(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 8);
  if (*v2 < 2uLL)
  {
    return 4294954514;
  }

  v3 = v2[8];
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

uint64_t rcsMediaRemote_SetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  APSLogErrorAt();
  return 4294960591;
}

uint64_t rcsMediaRemote_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2 || !a4)
  {
    APSLogErrorAt();
    v8 = 4294960591;
    goto LABEL_7;
  }

  if (CFEqual(a2, @"RRCS::Property::SessionID"))
  {
    SInt32 = CFRetain(*(DerivedStorage + 16));
  }

  else
  {
    if (!CFEqual(a2, @"RRCS::Property::ListenPort"))
    {
      v8 = 4294960569;
      goto LABEL_7;
    }

    if (!*(DerivedStorage + 88))
    {
      SInt32 = 0;
      v8 = 4294960561;
      goto LABEL_6;
    }

    SInt32 = FigCFNumberCreateSInt32();
    if (!SInt32)
    {
      APSLogErrorAt();
      v8 = 4294960568;
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_6:
  *a4 = SInt32;
LABEL_7:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t rcsMediaRemote_Finalize(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result;
  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50)
  {
    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "void rcsMediaRemote_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] Finalize\n", a1);
    }
  }

  if (*(v3 + 97))
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 16) = 0;
    }

    v5 = *(v3 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(v3 + 24) = 0;
    }

    v6 = *(v3 + 32);
    if (v6)
    {
      CFRelease(v6);
      *(v3 + 32) = 0;
    }

    v7 = *(v3 + 64);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 64) = 0;
    }

    v8 = *(v3 + 88);
    if (v8)
    {
      CFRelease(v8);
      *(v3 + 88) = 0;
    }

    v9 = *(v3 + 72);
    if (v9)
    {
      dispatch_release(v9);
      *(v3 + 72) = 0;
    }

    v10 = *(v3 + 80);
    if (v10)
    {
      dispatch_release(v10);
      *(v3 + 80) = 0;
    }

    result = FigSimpleMutexDestroy();
    *(v3 + 120) = 0;
  }

  else
  {
    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 100)
    {
      if (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "void rcsMediaRemote_Finalize(CMBaseObjectRef)", 33554532, "### [%{ptr}]: RCS must be invalidated before deallocation!\n", a1);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t rcsMediaRemote_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 97))
  {
    APSLogErrorAt();
    goto LABEL_14;
  }

  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50 && (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "OSStatus rcsMediaRemote_Invalidate(CMBaseObjectRef)", 33554482, "[%{ptr}] Invalidate\n", a1);
  }

  v3 = *(DerivedStorage + 32);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  if (v3)
  {
    FigSimpleMutexLock();
    CFDictionaryRemoveValue(gAPReceiverMediaRemoteService_1, v3);
    FigSimpleMutexUnlock();
    APReceiverMediaRemoteXPCService_PostEvent(@"didCloseCommChannel", v3, 0);
    if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "OSStatus APReceiverMediaRemoteXPCService_UnregisterCommChannel(CFNumberRef)", 33554482, "Unregistered commChannel %@\n", v3);
    }
  }

  else
  {
    APSLogErrorAt();
  }

  if (!*(DerivedStorage + 96))
  {
    *(DerivedStorage + 97) = 1;
LABEL_14:
    FigSimpleMutexUnlock();
    return 0;
  }

  *(DerivedStorage + 96) = 256;
  FigSimpleMutexUnlock();
  rcsMediaRemote_stop(a1);
  return 0;
}

uint64_t AirPlayReceiverServerGetTypeID()
{
  if (gAirPlayReceiverServerInitOnce != -1)
  {
    dispatch_once_f(&gAirPlayReceiverServerInitOnce, 0, _GetTypeID);
  }

  return gAirPlayReceiverServerTypeID;
}

uint64_t _GetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAirPlayReceiverServerTypeID = result;
  return result;
}

void _Finalize_2410(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _Finalize(CFTypeRef)", 33554482, "[%{ptr}] Finalizing AirPlayReceiverServer\n", a1);
  }

  if (IsAppleInternalBuild())
  {
    DebugIPC_EnsureFinalized();
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _Finalize(CFTypeRef)", 33554482, "[%{ptr}] Finalized debug handler\n", a1);
    }
  }

  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    notify_cancel(v2);
    *(a1 + 32) = -1;
  }

  CMNotificationCenterRemoveListener();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterRemoveListener();
  if (APSIsAPMSpeaker())
  {
    CMNotificationCenterRemoveListener();
    CMNotificationCenterRemoveListener();
  }

  _StopServers(a1);
  AirPlayReceiverServerPlatformFinalize(*(a1 + 16));
  v3 = *(a1 + 216);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 216) = 0;
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 160) = 0;
  }

  v5 = *(a1 + 264);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 264) = 0;
  }

  v6 = *(a1 + 224);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 224) = 0;
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    dispatch_source_cancel(*(a1 + 56));
    dispatch_release(v7);
    *(a1 + 56) = 0;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    dispatch_release(v8);
    *(a1 + 24) = 0;
  }

  v9 = *(a1 + 88);
  if (v9)
  {
    dispatch_release(v9);
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 176);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 176) = 0;
  }

  v11 = *(a1 + 184);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 184) = 0;
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 72) = 0;
  }

  v13 = *(a1 + 280);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 280) = 0;
  }

  gAirPlayReceiverServer = 0;
  v14 = *(a1 + 288);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 288) = 0;
  }
}

void _StopServers(uint64_t a1)
{
  if (*(a1 + 132))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(v2 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __APAdvertiserStop_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v2;
      dispatch_sync(v3, block);
      APAdvertiserInvalidate(*(a1 + 40));
      v4 = *(a1 + 40);
      if (v4)
      {
        CFRelease(v4);
        *(a1 + 40) = 0;
      }
    }

    if (gAirTunesDACPClient)
    {
      AirTunesDACPClient_Delete(gAirTunesDACPClient);
      gAirTunesDACPClient = 0;
    }

    v5 = *(a1 + 192);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 192) = 0;
    }

    if (*(a1 + 80))
    {
      CFObjectSetProperty();
      CFRelease(*(a1 + 80));
      *(a1 + 80) = 0;
    }

    if (*(a1 + 96))
    {
      CFObjectSetProperty();
      CFRelease(*(a1 + 96));
      *(a1 + 96) = 0;
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 72) = 0;
    }

    v7 = *(a1 + 280);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 280) = 0;
    }

    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _StopServers(AirPlayReceiverServerRef)", 33554482, "[%{ptr}] AirPlay servers stopped\n", a1);
    }

    *(a1 + 132) = 0;
  }
}

void _HandleSystemInfoNotification(int a1, void *a2, CFTypeRef cf1, uint64_t a4, uint64_t a5)
{
  if (CFEqual(cf1, @"AdvertisingDeviceSettingChanged"))
  {
    CFRetain(a2);
    v7 = a2[3];
    v8 = _HandleAdvertisingDeviceSettingChanged;
  }

  else
  {
    if (CFEqual(cf1, @"AdvertisingParameterChanged"))
    {
      v9 = CFDictionaryGetInt64() == 0;
      CFRetain(a2);
      v10 = a2[3];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = ___HandleSystemInfoNotification_block_invoke;
      v11[3] = &__block_descriptor_41_e5_v8__0l;
      v11[4] = a2;
      v12 = v9;
      dispatch_async(v10, v11);
      return;
    }

    if (CFEqual(cf1, @"EnableAirPlayStatusChanged"))
    {
      CFRetain(a2);
      v7 = a2[3];
      v8 = _HandleEnableAirPlayStatusChanged;
    }

    else if (CFEqual(cf1, @"DenyInterruptionsStatusChanged"))
    {
      CFRetain(a2);
      v7 = MEMORY[0x277D85CD0];
      v8 = _HandleDenyInterruptionsStatusChanged;
    }

    else if (CFEqual(cf1, @"SimulateUserStop"))
    {
      CFRetain(a2);
      v7 = a2[3];
      v8 = _HandleSimulateUserStop;
    }

    else if (CFEqual(cf1, @"P2PSettingChanged"))
    {
      CFRetain(a2);
      v7 = a2[3];
      v8 = _HandleP2PSettingChanged;
    }

    else if (CFEqual(cf1, @"TightSyncBuddyBecameReachable"))
    {
      CFRetain(a2);
      v7 = a2[11];
      v8 = _HandleTightSyncBuddyBecameReachable;
    }

    else
    {
      if (!CFEqual(cf1, @"PersistentConnectionConfigChanged"))
      {
        return;
      }

      CFRetain(a2);
      v7 = a2[11];
      v8 = _HandlePersistentConnectionConfigChanged;
    }
  }

  dispatch_async_f(v7, a2, v8);
}

void _HandlePersistentConnectionConfigChanged(void *cf)
{
  v2 = cf[27];
  v3 = *(v2 + 48);
  if (v3)
  {
    CFRetain(*(v2 + 48));
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _HandlePersistentConnectionConfigChanged(void *)", 33554482, "*** Closing persistent connection [%{ptr}] on cluster config change\n", v3);
    }

    AirPlayReceiverServerCloseConnection(cf, v3);
    CFRelease(v3);
  }

  CFRelease(cf);
}

uint64_t AirPlayReceiverServerCloseConnection(uint64_t result, uint64_t a2)
{
  v3 = 0;
  if (result)
  {
    if (a2)
    {
      result = _FindHTTPConnectionForSession(result, a2, &v3);
      if (result)
      {
        v2 = result;
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverServer, "void AirPlayReceiverServerCloseConnection(AirPlayReceiverServerRef, CFTypeRef)", 33554482, "*** Closing connection %##a\n", v2 + 256, v3);
        }

        return _DestroyHTTPConnection(v3, v2);
      }
    }
  }

  return result;
}

uint64_t _FindHTTPConnectionForSession(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    result = *(v4 + 56);
    if (result)
    {
      while (*(*(result + 40) + 280) != a2)
      {
        result = *(result + 16);
        if (!result)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_10;
    }
  }

LABEL_5:
  v4 = *(a1 + 96);
  if (!v4)
  {
    return 0;
  }

  result = *(v4 + 56);
  if (result)
  {
    while (*(*(result + 40) + 280) != a2)
    {
      result = *(result + 16);
      if (!result)
      {
        return result;
      }
    }

LABEL_10:
    if (a3)
    {
      *a3 = v4;
    }
  }

  return result;
}

uint64_t _DestroyHTTPConnection(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = (result + 56);
    result = *(result + 56);
    if (result)
    {
      do
      {
        if (result == a2)
        {
          *v2 = *(result + 16);
          _DestroyConnection(result);
        }

        else
        {
          v2 = (result + 16);
        }

        result = *v2;
      }

      while (*v2);
    }
  }

  return result;
}

void _DestroyConnection(_BYTE *a1)
{
  HTTPConnectionStop();
  if (a1[229] && gLogCategory_AirPlayReceiverServer <= 40 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _DestroyConnection(HTTPConnectionRef)", 33554472, "Closing B connection from %##a to %##a\n", a1 + 256, a1 + 228);
  }

  CFRelease(a1);
}

void _HandleTightSyncBuddyBecameReachable(void *a1)
{
  cf = 0;
  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(a1[27], 0, 0, &cf);
  v2 = cf;
  if (!cf)
  {
    goto LABEL_13;
  }

  if (!*(cf + 683) && !*(cf + 682))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v4 = Mutable;
      CFDictionarySetValue(Mutable, @"type", @"regroupTightSyncBuddy");
      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionRegroupTightSyncBuddyIfNeeded(AirPlayReceiverSessionRef)", 33554482, "[%{ptr}] Sending RegroupTightSyncBuddy command back to the sender\n", v2);
      }

      if (!AirPlayReceiverSessionSendCommandForObject(v2, 0, v4, 0, 0))
      {
        CFRelease(v4);
        goto LABEL_11;
      }

      APSLogErrorAt();
      CFRelease(v4);
    }

    else
    {
      APSLogErrorAt();
    }

    APSLogErrorAt();
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_13:
  CFRelease(a1);
}

void _HandleP2PSettingChanged(const void *a1)
{
  _DetermineP2PSettings(a1);
  _ConfigureServersWithP2PSettings(a1);
  _RestartAdvertising(a1);

  CFRelease(a1);
}

uint64_t _DetermineP2PSettings(uint64_t a1)
{
  result = APSIsVirtualMachine();
  if (result || *(a1 + 264) || (result = CFObjectGetPropertyInt64Sync()) != 0)
  {
    *(a1 + 52) = 0;
    *(a1 + 48) = 0;
  }

  else
  {
    v3 = APSIsMemberOfHTGroup();
    if (APSSettingsIsFeatureEnabled())
    {
      v4 = APSIsMemberOfStereoPair() != 0;
    }

    else
    {
      v4 = 0;
    }

    PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
    *(a1 + 48) = PropertyInt64Sync != 0;
    *(a1 + 49) = (IsAppleTV() | v3) != 0;
    v6 = APSIsAPMSpeaker();
    v7 = v3 != 0 || v4;
    if (!v6)
    {
      v7 = 0;
    }

    *(a1 + 52) = v7;
    result = IsAppleInternalBuild();
    if (result)
    {
      result = APSIsOpenNANReceiverEnabled();
      if (result)
      {
        *(a1 + 50) = PropertyInt64Sync != 0;
        *(a1 + 51) = PropertyInt64Sync == 0;
      }
    }
  }

  return result;
}

uint64_t _ConfigureServersWithP2PSettings(uint64_t a1)
{
  if (*(a1 + 80))
  {
    CFObjectSetProperty();
  }

  result = *(a1 + 96);
  if (result)
  {

    return CFObjectSetProperty();
  }

  return result;
}

void _RestartAdvertising(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (*(a1 + 133))
    {
      if (APAdvertiserFlushBonjourRecords(v2) || _UpdateAdvertiserInfo(a1, v3))
      {
        goto LABEL_17;
      }

      if (!*(a1 + 40))
      {
        return;
      }

      P2PConfigDictForAdvertiser = _CreateP2PConfigDictForAdvertiser(a1);
      if (!P2PConfigDictForAdvertiser)
      {
LABEL_17:

        APSLogErrorAt();
      }

      else
      {
        v5 = P2PConfigDictForAdvertiser;
        APAdvertiserSetProperty(*(a1 + 40), @"P2PConfig", P2PConfigDictForAdvertiser);

        CFRelease(v5);
      }
    }

    else if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {

      LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus _RestartAdvertising(AirPlayReceiverServerRef)", 33554482, "Ignoring advertising restart while disabled.\n");
    }
  }
}

uint64_t _UpdateAdvertiserInfo(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (*(a1 + 40))
  {
    v3 = APReceiverSystemInfoCopyProperty(*(a1 + 160), a2, @"AdvertiserInfo", 0, &v5);
    if (v5 || (v5 = APAdvertiserSetProperty(*(a1 + 40), @"advertiserInfo", v3)) != 0)
    {
      APSLogErrorAt();
      if (!v3)
      {
        return v5;
      }

      goto LABEL_10;
    }

    notify_post("com.apple.airplay.advertisingDidChange");
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus _UpdateAdvertiserInfo(AirPlayReceiverServerRef)", 33554482, "Posting advertising did change...\n");
      if (!v3)
      {
        return v5;
      }

      goto LABEL_10;
    }

    if (v3)
    {
LABEL_10:
      CFRelease(v3);
    }
  }

  return v5;
}

__CFDictionary *_CreateP2PConfigDictForAdvertiser(_BYTE *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = Mutable;
  v4 = *MEMORY[0x277CBED28];
  v5 = *MEMORY[0x277CBED10];
  if (a1[48])
  {
    v6 = *MEMORY[0x277CBED28];
  }

  else
  {
    v6 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"allowFullBonjourAdvertisingOverAWDL", v6);
  if (a1[49])
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  CFDictionarySetValue(v3, @"allowPartialBonjourAdvertisingOverAWDL", v7);
  if (a1[50])
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  CFDictionarySetValue(v3, @"allowOpenFullNANAdvertising", v8);
  if (a1[51])
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  CFDictionarySetValue(v3, @"allowOpenPartialNANAdvertising", v9);
  if (a1[52])
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  CFDictionarySetValue(v3, @"allowSecurePartialNANAdvertising", v10);
  return v3;
}

void _HandleSimulateUserStop(const void *a1)
{
  if (AirPlayReceiverServerControl(a1, 1, @"sessionDied", 0, 0, 0))
  {
    APSLogErrorAt();
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

uint64_t AirPlayReceiverServerControl(uint64_t a1, int a2, CFTypeRef cf1, const void *a4, const void *a5, CFTypeRef *a6)
{
  if (CFEqual(cf1, @"sendVolumeUpdate"))
  {
    if (!*(a1 + 132))
    {
      return 0;
    }

    v12 = malloc_type_calloc(1uLL, 0x10uLL, 0x60040FAFB2B2FuLL);
    if (!v12)
    {
      APSLogErrorAt();
      return 4294960568;
    }

    v13 = v12;
    *v12 = a1;
    v12[1] = a5;
    CFRetain(a1);
    CFRetain(a5);
    v14 = *(a1 + 88);
    v15 = _HandleVolumeUpdate;
    v16 = v13;
LABEL_5:
    dispatch_async_f(v14, v16, v15);
    return 0;
  }

  if (CFEqual(cf1, @"clearPIN"))
  {
    if (gLogCategory_AirPlayReceiverServer <= 20 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554452, "Clearing PIN\n");
    }

    started = APReceiverSystemInfoSetProperty(*(a1 + 160), v18, @"Passcode", v19, 0);
    if (!started)
    {
      return started;
    }

    goto LABEL_50;
  }

  if (CFEqual(cf1, @"prefsChanged"))
  {
    if (*(a1 + 133))
    {
      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Prefs changed\n");
      }

      APSSettingsSynchronize();
      AirPlayReceiverServerPlatformControl(a1, @"updatePrefs", 0, 0);
    }

    return 0;
  }

  if (CFEqual(cf1, @"startServer"))
  {
    *(a1 + 133) = 1;
    APSSettingsSynchronize();
    AirPlayReceiverServerPlatformControl(a1, @"updatePrefs", 0, 0);
    _StartOrStopServersIfNeeded(a1);
    return 0;
  }

  if (CFEqual(cf1, @"stopServer"))
  {
    if (*(a1 + 133))
    {
      *(a1 + 133) = 0;
      _StopServers(a1);
      dispatch_sync(*(a1 + 88), &__block_literal_global_2439);
    }

    return 0;
  }

  if (CFEqual(cf1, @"startAssistedModeAdvertising"))
  {
    if (!*(a1 + 40))
    {
      return 0;
    }

    started = _StartAssistedModeAdvertising(a1, a5, a6);
    if (!started)
    {
      return started;
    }

LABEL_50:
    APSLogErrorAt();
    return started;
  }

  if (CFEqual(cf1, @"stopAssistedModeAdvertising"))
  {
    if (*(a1 + 40))
    {
      _StopAssistedModeAdvertising(a1);
    }

    return 0;
  }

  if (CFEqual(cf1, @"startedPlayingOverAWDL"))
  {
    ++*(a1 + 128);
    v21 = *(a1 + 40);
    if (!v21 || (v22 = APAdvertiserSetProperty(v21, @"enforceSolo", *MEMORY[0x277CBED28]), !v22))
    {
      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "A peer started playing over AWDL. %d peers are currently playing over AWDL\n");
      }

      return 0;
    }

    started = v22;
    goto LABEL_50;
  }

  if (CFEqual(cf1, @"stoppedPlayingOverAWDL"))
  {
    v23 = *(a1 + 128) - 1;
    *(a1 + 128) = v23;
    if (gLogCategory_AirPlayReceiverServer > 50)
    {
      goto LABEL_57;
    }

    if (gLogCategory_AirPlayReceiverServer == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_56;
      }

      v23 = *(a1 + 128);
    }

    LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "A peer stopped playing over AWDL. %d peers are currently playing over AWDL\n", v23);
LABEL_56:
    v23 = *(a1 + 128);
LABEL_57:
    if (v23 > 0)
    {
      return 0;
    }

    *(a1 + 128) = 0;
    v24 = *(a1 + 40);
    if (!v24)
    {
      return 0;
    }

    started = APAdvertiserSetProperty(v24, @"enforceSolo", *MEMORY[0x277CBED10]);
    if (!started)
    {
      return started;
    }

    goto LABEL_50;
  }

  if (CFEqual(cf1, @"sessionDied"))
  {
    if (a4)
    {
      _RemoveConnectionForSession(a1, a4);
    }

    else
    {
      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "### All AirPlay sessions stopped\n");
      }

      _RemoveAllConnectionsOfType(a1);
    }

    return 0;
  }

  if (CFEqual(cf1, @"forceKeyFrame"))
  {
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Got '%s' command\n", "forceKeyFrame");
    }

    if (!IsAppleInternalBuild())
    {
      return 0;
    }

    CFRetain(a1);
    v14 = *(a1 + 88);
    v15 = _HandleForceKeyFrame;
    v16 = a1;
    goto LABEL_5;
  }

  if (CFEqual(cf1, @"sendRCSCommand"))
  {
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Received '%s' command\n");
    }

    return 0;
  }

  if (CFEqual(cf1, @"audioInterruptionBegan") || CFEqual(cf1, @"audioInterruptionEnded") || CFEqual(cf1, @"otherProcessStartedPlaying") || CFEqual(cf1, @"partnerProcessDeath"))
  {
    CFRetain(a1);
    CFRetain(cf1);
    if (a4)
    {
      CFRetain(a4);
    }

    if (a5)
    {
      CFRetain(a5);
    }

    v25 = *(a1 + 88);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __AirPlayReceiverServerControl_block_invoke_2;
    block[3] = &__block_descriptor_68_e5_v8__0l;
    block[4] = cf1;
    block[5] = a4;
    v27 = a2;
    block[6] = a1;
    block[7] = a5;
    dispatch_async(v25, block);
    return 0;
  }

  return AirPlayReceiverServerPlatformControl(a1, cf1, a4, a5);
}

void _StartOrStopServersIfNeeded(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (CFObjectGetPropertyInt64Sync())
  {
    if (*(a1 + 132))
    {
      return;
    }

    *(a1 + 80) = _CreateHTTPServerForPort(a1, *(a1 + 272));
    if (*(a1 + 252))
    {
      *(a1 + 96) = _CreateHTTPServerForPort(a1, 5000);
    }

    if (*(a1 + 248))
    {
      RemovePath();
    }

    if (!*(a1 + 250))
    {
LABEL_16:
      _DetermineP2PSettings(a1);
      _ConfigureServersWithP2PSettings(a1);
      v6 = a1 + 72;
      if (!*(a1 + 72))
      {
        APSWiFiTransactionCreate();
      }

      v7 = MEMORY[0x277CBECE8];
      if (*(a1 + 257))
      {
        v17 = 0;
        v18 = 0;
        *bytes = 0;
        v15 = 0;
        v16 = 0;
        if (*(a1 + 258))
        {
          if (RandomBytes() || Base64EncodeEx() || (v8 = CFStringCreateWithBytes(*v7, bytes, 0, 0x8000100u, 0), (*(a1 + 280) = v8) == 0))
          {
            APSLogErrorAt();
          }
        }

        APReceiverSystemInfoSetProperty(*(a1 + 160), v5, @"Password", v6, *(a1 + 280));
      }

      if (*(a1 + 80))
      {
        CFObjectSetProperty();
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _StartServers(AirPlayReceiverServerRef)", 33554482, "Actual HTTP server port %d \n", *(*(a1 + 80) + 48));
        }

        if (*(a1 + 257) && gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _StartServers(AirPlayReceiverServerRef)", 33554482, "<APUGLPort> Started UGL HTTP server on port %d\n", *(*(a1 + 80) + 48));
        }
      }

      if (*(a1 + 252))
      {
        if (*(a1 + 96))
        {
          CFObjectSetProperty();
          if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _StartServers(AirPlayReceiverServerRef)", 33554482, "Actual HTTP server legacy port %d \n", *(*(a1 + 96) + 48));
          }
        }
      }

      if (*(a1 + 253))
      {
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus _CreateAndStartAdvertiser(AirPlayReceiverServerRef)", 33554482, "Advertising disabled\n");
        }

        goto LABEL_60;
      }

      Mutable = CFDictionaryCreateMutable(*v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetInt64();
      v10 = *(a1 + 264);
      if (v10)
      {
        CFDictionarySetValue(Mutable, @"interfaceName", v10);
      }

      v11 = MEMORY[0x277CBED28];
      if (*(a1 + 64))
      {
        CFDictionarySetValue(Mutable, @"useAltAdvertising", *MEMORY[0x277CBED28]);
      }

      if (*(a1 + 53))
      {
        CFDictionarySetValue(Mutable, @"useAssistedModeAdvertising", *v11);
      }

      P2PConfigDictForAdvertiser = _CreateP2PConfigDictForAdvertiser(a1);
      if (!P2PConfigDictForAdvertiser || (CFDictionarySetValue(Mutable, @"P2PConfig", P2PConfigDictForAdvertiser), CFDictionarySetValue(Mutable, @"systemInfo", *(a1 + 160)), APAdvertiserCreate(Mutable, (a1 + 40))) || _UpdateAdvertiserInfo(a1, v13) || (!IsAppleInternalBuild() || !APSSettingsGetInt64()) && APAdvertiserStart(*(a1 + 40)))
      {
        APSLogErrorAt();
        if (!Mutable)
        {
LABEL_58:
          if (P2PConfigDictForAdvertiser)
          {
            CFRelease(P2PConfigDictForAdvertiser);
          }

LABEL_60:
          APSIntrospectorInit();
          *(a1 + 132) = 1;
          if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _StartServers(AirPlayReceiverServerRef)", 33554482, "[%{ptr}] AirPlay servers started\n", a1);
          }

          return;
        }
      }

      else if (!Mutable)
      {
        goto LABEL_58;
      }

      CFRelease(Mutable);
      goto LABEL_58;
    }

    v2 = malloc_type_calloc(1uLL, 0xA600uLL, 0x10F0040ACF67C9AuLL);
    if (v2)
    {
      v3 = v2;
      *v2 = 1684104048;
      v4 = v2 + 8;
      if (!pthread_mutex_init((v2 + 8), 0))
      {
        *(v3 + 9) = v4;
        if (!pthread_cond_init((v3 + 20), 0))
        {
          *(v3 + 16) = v3 + 20;
          if (!NetSocket_Create() && !pthread_create(v3 + 17, 0, _AirTunesDACPClient_Thread, v3))
          {
            *(v3 + 18) = v3 + 34;
            gAirTunesDACPClient = v3;
            goto LABEL_14;
          }
        }
      }

      APSLogErrorAt();
      AirTunesDACPClient_Delete(v3);
    }

    else
    {
      APSLogErrorAt();
    }

    v3 = gAirTunesDACPClient;
    if (!gAirTunesDACPClient)
    {
LABEL_81:
      APSLogErrorAt();
      goto LABEL_16;
    }

LABEL_14:
    if (*v3 == 1684104048)
    {
      *(v3 + 21) = _HandleDACPStatus;
      *(v3 + 22) = a1;
      goto LABEL_16;
    }

    goto LABEL_81;
  }

  _StopServers(a1);
}

uint64_t _StartAssistedModeAdvertising(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!*(a1 + 53) || *(a1 + 56))
  {
    APSLogErrorAt();
    return 4294960587;
  }

  if (!CFDictionaryGetInt64())
  {
    APSLogErrorAt();
    return 4294960591;
  }

  v5 = APAdvertiserCopyProperty(*(a1 + 40), @"assistedModeInfo", a3);
  if (v5)
  {
    v13 = v5;
LABEL_16:
    APSLogErrorAt();
    return v13;
  }

  v6 = APAdvertiserSetProperty(*(a1 + 40), @"allowAssistedModeAdvertisingOverAWDL", *MEMORY[0x277CBED28]);
  if (v6)
  {
    v13 = v6;
    goto LABEL_16;
  }

  Int64 = CFDictionaryGetInt64();
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 24));
  *(a1 + 56) = v8;
  if (v8)
  {
    CFRetain(a1);
    v9 = *(a1 + 56);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = ___StartAssistedModeAdvertising_block_invoke;
    handler[3] = &__block_descriptor_40_e5_v8__0l;
    handler[4] = a1;
    dispatch_source_set_event_handler(v9, handler);
    v10 = *(a1 + 56);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___StartAssistedModeAdvertising_block_invoke_2;
    v15[3] = &__block_descriptor_40_e5_v8__0l;
    v15[4] = a1;
    dispatch_source_set_cancel_handler(v10, v15);
    dispatch_resume(*(a1 + 56));
    v11 = *(a1 + 56);
    if (Int64)
    {
      v12 = dispatch_time(0, 1000000000 * Int64);
    }

    else
    {
      v12 = -1;
    }

    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    return 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }
}

void _StopAssistedModeAdvertising(uint64_t a1)
{
  if (*(a1 + 53))
  {
    APAdvertiserSetProperty(*(a1 + 40), @"allowAssistedModeAdvertisingOverAWDL", *MEMORY[0x277CBED10]);
    v2 = *(a1 + 56);
    if (v2)
    {
      dispatch_source_cancel(*(a1 + 56));
      dispatch_release(v2);
      *(a1 + 56) = 0;
    }
  }
}

void _RemoveConnectionForSession(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 88);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = ___RemoveConnectionForSession_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

void _RemoveAllConnectionsOfType(uint64_t a1)
{
  _RemoveHTTPServerConnectionsOfType(a1, *(a1 + 80));
  v2 = *(a1 + 96);

  _RemoveHTTPServerConnectionsOfType(a1, v2);
}

void __AirPlayReceiverServerControl_block_invoke_2(uint64_t a1)
{
  if (CFEqual(*(a1 + 32), @"partnerProcessDeath") && FigCFEqual())
  {
    AirPlayReceiverServerPlatformControl(*(a1 + 48), *(a1 + 32), *(a1 + 40), *(a1 + 56));
  }

  v7 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (gLogCategory_AirPlayReceiverServer <= 60 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _NotifySessionsAboutEvent(AirPlayReceiverServerRef, CFStringRef, CFTypeRef, CFTypeRef)", 33554492, "### Notifying all sessions about event '%@'.\n", v7);
  }

  v3 = APReceiverSessionManagerCopyAllSessions(*(v2 + 216));
  if (v3)
  {
    v4 = v3;
    CFArrayGetCount(v3);
    CFArrayApplyBlock();
    CFRelease(v4);
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 32));
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }
}

void _HandleForceKeyFrame(void *a1)
{
  cf = 0;
  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(a1[27], 2, 0, &cf);
  if (!cf)
  {
    goto LABEL_12;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"forceKeyFrame");
  if (AirPlayReceiverSessionSendCommandForObject(cf, 0, Mutable, 0, 0))
  {
    APSLogErrorAt();
    if (!Mutable)
    {
      goto LABEL_10;
    }

LABEL_9:
    CFRelease(Mutable);
    goto LABEL_10;
  }

  if (gLogCategory_AirPlayReceiverServer > 50 || gLogCategory_AirPlayReceiverServer == -1 && !_LogCategory_Initialize())
  {
    if (!Mutable)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _HandleForceKeyFrame(void *)", 33554482, "Sent '%s' command to client\n", "forceKeyFrame");
  if (Mutable)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  CFRelease(a1);
}

void _RemoveHTTPServerConnectionsOfType(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
    if (v4)
    {
      v5 = v4;
      CFRetain(a2);
      *v5 = a2;
      v5[2] = 1;
      v6 = *(a1 + 88);

      dispatch_sync_f(v6, v5, _RemoveHTTPServerConnections);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

void _RemoveHTTPServerConnections(_DWORD *a1)
{
  v2 = *a1;
  if (v2)
  {
    v4 = v2 + 7;
    v3 = v2[7];
    if (v3)
    {
      do
      {
        v5 = a1[2];
        v6 = *(*(v3 + 40) + 280);
        if (v6)
        {
          LODWORD(v6) = CFObjectGetInt64();
        }

        if (v6 == v5)
        {
          *v4 = *(v3 + 16);
          _DestroyConnection(v3);
        }

        else
        {
          v4 = (v3 + 16);
        }

        v3 = *v4;
      }

      while (*v4);
      v2 = *a1;
    }

    CFRelease(v2);
  }

  free(a1);
}