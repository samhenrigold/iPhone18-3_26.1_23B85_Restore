uint64_t APReceiverAudioSessionRealTimeCopyMetrics(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      return 0;
    }

    else
    {
      APSLogErrorAt();
      return 4294895145;
    }
  }

  else
  {
    v2 = 4294895144;
    APSLogErrorAt();
  }

  return v2;
}

uint64_t APReceiverAudioSessionRealTimeLogEnded(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    APSLogErrorAt();
    return 4294895145;
  }

  v4 = result;
  v5 = *(result + 2304);
  if (v5 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 / 0xF4240;
  }

  v7 = *(result + 2312);
  if (v7 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 / 0xF4240;
  }

  v9 = *(result + 2320);
  if (v9 == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 / 0xF4240;
  }

  v11 = *(result + 2328);
  if (v11 == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11 / 0xF4240;
  }

  v13 = *(result + 2336);
  if (v13 == -1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13 / 0xF4240;
  }

  v15 = UpTicksToSeconds();
  v16 = v15;
  if ((v15 / 0x3C) < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = 100 * *(v4 + 8888) / (v15 / 0x3C);
  }

  DataBuffer_AppendF(a2, "Glitches:    %d%%, %d total glitches, %d glitchy minute(s). %d total minutes\n", v17, *(v4 + 8876), *(v4 + 8888), v15 / 0x3C);
  DataBuffer_AppendF(a2, "Retransmits: %u sent, %u received, %u futile, %u not found, %u/%u/%u ms min/max/avg, %u/%u ms retry min/max\n", *(v4 + 2288), *(v4 + 2292), *(v4 + 2296), *(v4 + 2300), v6, v8, v10, v12, v14);
  DataBuffer_AppendF(a2, "Packets:     %u lost, %u unrecovered, %u late, %u max burst, %u big losses, %d%% compression\n", qword_27E37EED8, HIDWORD(qword_27E37EED8), dword_27E37EEE0, *(v4 + 2348), *(v4 + 2352), *(v4 + 1880) / 0x64u);
  DataBuffer_AppendF(a2, "Audio Time Sync: %d max skew, %u skew reset(s)\n", *(v4 + 2112), *(v4 + 2116));
  DataBuffer_AppendF(a2, "Glitch Histogram: %@\n", *(v4 + 2440));
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v19 = *(v4 + 8968);
  v20 = *(v4 + 8960);
  if (v19 >= v20)
  {
    v21 = v19 - v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v4 + 8976);
  if (v21 >= v22)
  {
    v23 = v21 - v22;
  }

  else
  {
    v23 = 0;
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime != -1)
    {
LABEL_29:
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeLogEnded(void *, DataBuffer *, int32_t)", 33554482, "%@ ccCountBegin: %llu. ccCountEnd: %llu. ccCount: %llu. apCCTriggerCount: %llu. nonAPCoreCaptureCount: %llu. ccCountSender: %llu. ccCountAPSender: %llu. ccCountNonAPSender: %llu. receiverIODiscontinuityCount: %u. senderIODiscontinuityCount: %llu. senderPrimaryPacketDropCount: %llu.\n", *(v4 + 32), v20, v19, v21, v22, v23, *(v4 + 8984), *(v4 + 8992), *(v4 + 9000), *(v4 + 8944), *(v4 + 9320), *(v4 + 9328));
      goto LABEL_31;
    }

    if (_LogCategory_Initialize())
    {
      v20 = *(v4 + 8960);
      v19 = *(v4 + 8968);
      v22 = *(v4 + 8976);
      goto LABEL_29;
    }
  }

LABEL_31:
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  audioSession_updateCallDurationMetric(v4, 0);
  FigCFDictionarySetInt64();
  v24 = *(v4 + 9288);
  if (v24)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionRealTime != -1 || (v25 = _LogCategory_Initialize(), v24 = *(v4 + 9288), v25))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeLogEnded(void *, DataBuffer *, int32_t)", 33554482, "%@ SenderNANWifiStats: %@\n", *(v4 + 32), v24);
      }
    }

    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFBooleanGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
  }

  v26 = *(v4 + 9296);
  if (v26)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionRealTime != -1 || (v27 = _LogCategory_Initialize(), v26 = *(v4 + 9296), v27))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeLogEnded(void *, DataBuffer *, int32_t)", 33554482, "%@ ReceiverNANWifiStats: %@\n", *(v4 + 32), v26);
      }
    }

    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFBooleanGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFNumberGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    FigCFDictionarySetValue();
  }

  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v28 = *(v4 + 2440);
  if (v28)
  {
    CFDictionaryGetValue(v28, @"Histogram_GlitchDuration");
    v29 = APSStatsHistogramCopyValuesAsRTCString();
    APSStatsHistogramGetTotalSampleCount();
    FigCFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"glitchDurationHistogram", v29);
    if (v29)
    {
      CFRelease(v29);
    }

    CFDictionaryGetValue(*(v4 + 2440), @"Histogram_StartupGlitchDuration");
    v30 = APSStatsHistogramCopyValuesAsRTCString();
    APSStatsHistogramGetTotalSampleCount();
    FigCFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"startupGlitchDurationHistogram", v30);
    if (v30)
    {
      CFRelease(v30);
    }

    CFDictionaryGetValue(*(v4 + 2440), @"Histogram_NetworkTransitTime");
    v31 = APSStatsHistogramCopyValuesAsRTCString();
    APSStatsHistogramGetTotalSampleCount();
    FigCFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"receiverRenderDeadlineHistogram", v31);
    if (v31)
    {
      CFRelease(v31);
    }

    CFDictionaryGetValue(*(v4 + 2440), @"Histogram_RenderRedundancyLevel");
    v32 = APSStatsHistogramCopyValuesAsRTCString();
    APSStatsHistogramGetTotalSampleCount();
    FigCFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"renderRedundancyLevelHistogram", v32);
    if (v32)
    {
      CFRelease(v32);
    }
  }

  v33 = *MEMORY[0x277CBECE8];
  v34 = *(v4 + 156);
  if (v34 <= 15)
  {
    if (v34 > 3)
    {
      if (v34 == 4)
      {
        v35 = "AWDL";
        goto LABEL_76;
      }

      if (v34 == 8)
      {
        v35 = "USB";
        goto LABEL_76;
      }
    }

    else
    {
      if (v34 == 1)
      {
        v35 = "Enet";
        goto LABEL_76;
      }

      if (v34 == 2)
      {
        v35 = "WiFi";
        goto LABEL_76;
      }
    }
  }

  else if (v34 <= 63)
  {
    if (v34 == 16)
    {
      v35 = "Direct";
      goto LABEL_76;
    }

    if (v34 == 32)
    {
      v35 = "BTLE";
      goto LABEL_76;
    }
  }

  else
  {
    switch(v34)
    {
      case 64:
        v35 = "WFD";
        goto LABEL_76;
      case 128:
        v35 = "NAN";
        goto LABEL_76;
      case 256:
        v35 = "IPsecBT";
        goto LABEL_76;
    }
  }

  if (v34 == 512)
  {
    v35 = "IPSecWiFi";
  }

  else
  {
    v35 = "?";
  }

LABEL_76:
  v36 = CFStringCreateWithFormat(v33, 0, @"%s", v35);
  v37 = *(v4 + 72);
  if (v37 <= 31)
  {
    if (v37 <= 3)
    {
      if (v37 == 1)
      {
        v38 = "PCM";
        goto LABEL_106;
      }

      if (v37 == 2)
      {
        v38 = "ALAC";
        goto LABEL_106;
      }
    }

    else
    {
      switch(v37)
      {
        case 4:
          v38 = "AAC-LC";
          goto LABEL_106;
        case 8:
          v38 = "AAC-ELD";
          goto LABEL_106;
        case 16:
          v38 = "H.264";
          goto LABEL_106;
      }
    }

LABEL_101:
    if (v37 == 2048)
    {
      v38 = "QLAC";
    }

    else if (v37 == 4096)
    {
      v38 = "APAC";
    }

    else
    {
      v38 = "?";
    }

    goto LABEL_106;
  }

  if (v37 > 255)
  {
    switch(v37)
    {
      case 256:
        v38 = "QC3";
        goto LABEL_106;
      case 512:
        v38 = "QAAC-HE";
        goto LABEL_106;
      case 1024:
        v38 = "QAAC-LC";
        goto LABEL_106;
    }

    goto LABEL_101;
  }

  if (v37 == 32)
  {
    v38 = "Opus";
    goto LABEL_106;
  }

  if (v37 == 64)
  {
    v38 = "HEVC";
    goto LABEL_106;
  }

  if (v37 != 128)
  {
    goto LABEL_101;
  }

  v38 = "DDPLUS";
LABEL_106:
  v39 = CFStringCreateWithFormat(v33, 0, @"%s", v38);
  v40 = *(v4 + 136);
  if (v40)
  {
    CFDictionarySetValue(Mutable, @"clientDeviceModel", v40);
  }

  v41 = *(v4 + 144);
  if (v41)
  {
    CFDictionarySetValue(Mutable, @"clientOSBuildVersionNumber", v41);
  }

  CFDictionarySetValue(Mutable, @"transportType", v36);
  CFDictionarySetValue(Mutable, @"codecType", v39);
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  v43 = 600;
  if (v16 > 0x258)
  {
    v43 = v16;
  }

  LODWORD(v42) = *(v4 + 76);
  v44 = (v42 * 0.1 * v43);
  v45 = 2 * v43;
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  v46 = *(v4 + 9128);
  if (v45 <= v46)
  {
    LODWORD(v46) = v45;
  }

  *(v4 + 9128) = v46;
  FigCFDictionarySetInt64();
  v47 = *(v4 + 9132);
  if (v47 >= v44)
  {
    LODWORD(v47) = v44;
  }

  *(v4 + 9132) = v47;
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, @"sessionType", @"AudioRealTime");
  v48 = CFPreferencesCopyValue(@"ExperimentGroup", @"com.apple.da", @"mobile", *MEMORY[0x277CBF010]);
  if (FigCFEqual())
  {
    FigCFDictionarySetInt64();
  }

  APSRTCReportingAgentSendMediaEvent();
  APSRTCReportingAgentSendEvent();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  return 0;
}

CFMutableDictionaryRef APReceiverAudioSessionRealTimeCopyAudioBufferInfo(uint64_t a1, int *a2)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v4 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      if (v4)
      {
        CFRelease(v4);
        v5 = 0;
      }

      else
      {
        v5 = -72150;
        APSLogErrorAt();
        CFRelease(Mutable);
        Mutable = 0;
      }
    }

    else
    {
      v5 = -72150;
      APSLogErrorAt();
    }
  }

  else
  {
    APSLogErrorAt();
    Mutable = 0;
    v5 = -72152;
  }

  if (a2)
  {
    *a2 = v5;
  }

  return Mutable;
}

void *APReceiverAudioSessionRealTimeCopyProperty(uint64_t a1, CFTypeRef cf1, int *a3)
{
  v13 = 0;
  if (!a1)
  {
    goto LABEL_30;
  }

  if (!cf1)
  {
    APSLogErrorAt();
    result = 0;
    v10 = -72151;
    goto LABEL_32;
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 30 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "CFTypeRef APReceiverAudioSessionRealTimeCopyProperty(void *, CFStringRef, OSStatus *)", 33554462, "%@ copy propertyKey: '%@'\n", *(a1 + 32), cf1);
  }

  if (CFEqual(cf1, @"AudioFormat"))
  {
    v6 = *(a1 + 2368);
    goto LABEL_9;
  }

  if (CFEqual(cf1, @"CompressionType"))
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = (a1 + 72);
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"MediaDataControlPort"))
  {
    result = CFNumberCreateInt64();
    if (a3)
    {
      goto LABEL_20;
    }

    return result;
  }

  if (CFEqual(cf1, @"MaximumLatency"))
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = (a1 + 1656);
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"MinimumLatency"))
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = (a1 + 1652);
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"NumberOfChannels"))
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = (a1 + 80);
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"PlatformAudioLatency"))
  {
    audioSession_sessionLock(*(a1 + 2360));
    v12 = *(a1 + 1648);
    audioSession_sessionUnlock(*(a1 + 2360));
    v8 = *MEMORY[0x277CBECE8];
    v9 = &v12;
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"RTCPPort"))
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = (a1 + 1604);
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"RTCPPortRemote"))
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = (a1 + 1608);
    goto LABEL_13;
  }

  if (!CFEqual(cf1, @"AudioPort"))
  {
    if (CFEqual(cf1, @"AudioNetworkInfo"))
    {
      v6 = *(a1 + 520);
      if (!v6)
      {
LABEL_30:
        APSLogErrorAt();
        result = 0;
        v10 = -72152;
        goto LABEL_32;
      }
    }

    else
    {
      if (CFEqual(cf1, @"SampleRate"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 76);
LABEL_13:
        result = CFNumberCreate(v8, kCFNumberSInt32Type, v9);
        if (!a3)
        {
          return result;
        }

        goto LABEL_20;
      }

      if (!CFEqual(cf1, @"IsUsingScreen"))
      {
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "CFTypeRef APReceiverAudioSessionRealTimeCopyProperty(void *, CFStringRef, OSStatus *)", 33554482, "%@ Unknown copy property: %@\n", *(a1 + 32), cf1);
        }

        result = 0;
        v10 = -72154;
        goto LABEL_32;
      }

      v11 = MEMORY[0x277CBED28];
      if (!*(a1 + 2384))
      {
        v11 = MEMORY[0x277CBED10];
      }

      v6 = *v11;
    }

LABEL_9:
    result = CFRetain(v6);
    if (!a3)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (!*(a1 + 96))
  {
LABEL_40:
    v8 = *MEMORY[0x277CBECE8];
    v9 = (a1 + 512);
    goto LABEL_13;
  }

  if (*(a1 + 520))
  {
    *(a1 + 512) = CFDictionaryGetInt64();
    goto LABEL_40;
  }

  APSLogErrorAt();
  result = 0;
  v10 = -72153;
LABEL_32:
  v13 = v10;
  if (a3)
  {
LABEL_20:
    *a3 = v13;
  }

  return result;
}

uint64_t APReceiverAudioSessionRealTimeSetProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3)
{
  v12 = 0;
  if (!a1)
  {
    APSLogErrorAt();
    return -72152;
  }

  if (!cf1 || !a3)
  {
    APSLogErrorAt();
    return -72151;
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 30 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeSetProperty(void *, CFStringRef, CFTypeRef)", 33554462, "%@ set propertyKey: '%@'\n", *(a1 + 32), cf1);
  }

  if (!CFEqual(cf1, @"VolumeLinear"))
  {
    if (CFEqual(cf1, @"PlatformAudioLatency"))
    {
      v8 = CFGetInt64Ranged();
      audioSession_sessionLock(*(a1 + 2360));
      *(a1 + 1648) = v8;
LABEL_14:
      audioSession_sessionUnlock(*(a1 + 2360));
      return v12;
    }

    if (CFEqual(cf1, @"RTCMetadata"))
    {
      APSRTCReportingAgentSendMediaEvent();
      return v12;
    }

    if (CFEqual(cf1, @"timelineOffset"))
    {
      v10 = CFGetInt64();
      if ((v10 - 251) > 0xFFFFFE0A)
      {
        audioSession_sessionLock(*(a1 + 2360));
        gAirTunesRelativeTimeOffset = v10;
        goto LABEL_14;
      }

      APSLogErrorAt();
      return -6710;
    }

    else
    {
      if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeSetProperty(void *, CFStringRef, CFTypeRef)", 33554482, "%@ Unknown set property: %@\n", *(a1 + 32), cf1);
      }

      return -72154;
    }
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeSetProperty(void *, CFStringRef, CFTypeRef)", 33554482, "<AirPlayVolume> session realtime, %@ set volume linear = %@\n", *(a1 + 32), a3);
  }

  v12 = APReceiverAudioSessionPlatformSetProperty(*a1, v6, @"RASP::VolumeLinear", v7, a3);
  if (v12)
  {
    APSLogErrorAt();
  }

  return v12;
}

uint64_t APReceiverStatsCollectorGetTypeID()
{
  if (APReceiverStatsCollectorGetTypeID_once != -1)
  {
    dispatch_once(&APReceiverStatsCollectorGetTypeID_once, &__block_literal_global_536);
  }

  return APReceiverStatsCollectorGetTypeID_typeID;
}

uint64_t __APReceiverStatsCollectorGetTypeID_block_invoke()
{
  APReceiverStatsCollectorGetTypeID_statsCollectorClass = 0;
  unk_27E37EBE0 = "APReceiverStatsCollector";
  qword_27E37EBE8 = aprstats_Init;
  unk_27E37EBF0 = 0;
  qword_27E37EBF8 = aprstats_Finalize;
  unk_27E37EC00 = 0;
  qword_27E37EC08 = 0;
  unk_27E37EC10 = 0;
  qword_27E37EC18 = aprstats_CopyDebugDescription;
  result = _CFRuntimeRegisterClass();
  APReceiverStatsCollectorGetTypeID_typeID = result;
  return result;
}

CFStringRef aprstats_CopyDebugDescription(const void *a1)
{
  v5 = 0;
  ASPrintF(&v5, "%{ptr}", a1);
  v2 = CFGetAllocator(a1);
  v3 = CFStringCreateWithFormat(v2, 0, @"<APReceiverStatsCollector %p %s>", a1, v5);
  free(v5);
  return v3;
}

void aprstats_Finalize(void *a1)
{
  if (gLogCategory_APReceiverStatsCollector <= 30 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverStatsCollector, "void aprstats_Finalize(CFTypeRef)", 33554462, "Finalizing stats collector %{ptr}\n", a1);
  }

  APReceiverStatsCollectorDisableHUD(a1);
  v2 = a1[25];
  if (v2)
  {
    CFRelease(v2);
    a1[25] = 0;
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }

  v4 = a1[15];
  if (v4)
  {
    CFRelease(v4);
    a1[15] = 0;
  }

  v5 = a1[16];
  if (v5)
  {
    CFRelease(v5);
    a1[16] = 0;
  }

  v6 = a1[17];
  if (v6)
  {
    CFRelease(v6);
    a1[17] = 0;
  }

  v7 = a1[34];
  if (v7)
  {
    CFRelease(v7);
    a1[34] = 0;
  }

  v8 = a1[2];
  if (v8)
  {
    dispatch_release(v8);
    a1[2] = 0;
  }
}

void APReceiverStatsCollectorDisableHUD(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __APReceiverStatsCollectorDisableHUD_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_sync(v2, block);
    }
  }
}

void *__APReceiverStatsCollectorDisableHUD_block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 256))
  {
    v2 = result;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [*(v1 + 32) removeFromSuperlayer];

    *(v1 + 32) = 0;
    [*(v1 + 40) removeFromSuperlayer];

    *(v1 + 40) = 0;
    *(v1 + 24) = 0;
    v3 = *(v1 + 264);
    if (v3)
    {
      [objc_msgSend(v3 "layer")];

      *(v1 + 264) = 0;
    }

    result = [MEMORY[0x277CD9FF0] commit];
    if (gLogCategory_APReceiverStatsCollector <= 30)
    {
      if (gLogCategory_APReceiverStatsCollector != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF(&gLogCategory_APReceiverStatsCollector, "void aprstats_hudDisable(APReceiverStatsCollectorRef)", 33554462, "Tore down HUD\n");
      }
    }

    *(v2[4] + 256) = 0;
  }

  return result;
}

double aprstats_Init(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t APReceiverStatsCollectorCreate()
{
  if (!IsAppleInternalBuild() || !FigGetCFPreferenceNumberWithDefault())
  {
    return 0;
  }

  if (gLogCategory_APReceiverStatsCollector <= 30 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverStatsCollector, "APReceiverStatsCollectorRef APReceiverStatsCollectorCreate(void)", 33554462, "Creating APReceiverStatsCollector\n");
  }

  if (APReceiverStatsCollectorGetTypeID_once != -1)
  {
    dispatch_once(&APReceiverStatsCollectorGetTypeID_once, &__block_literal_global_536);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v1 = dispatch_queue_create("com.apple.airplay.receiver.statscollector", 0);
    *(Instance + 16) = v1;
    if (v1)
    {
      *(Instance + 260) = 0;
      *(Instance + 88) = APSScreenLatencyMs();
      *(Instance + 96) = xmmword_23EAA1840;
      *(Instance + 112) = 0;
      if (gLogCategory_APReceiverStatsCollector <= 30 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverStatsCollector, "APReceiverStatsCollectorRef APReceiverStatsCollectorCreate(void)", 33554462, "Created stats collector %{ptr}\n", Instance);
      }

      return Instance;
    }
  }

  APSLogErrorAt();
  if (gLogCategory_APReceiverStatsCollector <= 90 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverStatsCollector, "APReceiverStatsCollectorRef APReceiverStatsCollectorCreate(void)", 33554522, "### APReceiverStatsCollectorCreate failed, error: %#m\n", 4294954510);
  }

  if (Instance)
  {
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

void APReceiverStatsCollectorSetScreenOptions(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 16);
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __APReceiverStatsCollectorSetScreenOptions_block_invoke;
      v3[3] = &__block_descriptor_48_e5_v8__0l;
      v3[4] = a1;
      v3[5] = a2;
      dispatch_sync(v2, v3);
    }
  }
}

uint64_t __APReceiverStatsCollectorSetScreenOptions_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (gLogCategory_APReceiverStatsCollector <= 30 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverStatsCollector, "void aprstats_configureScreen(APReceiverStatsCollectorRef, CFDictionaryRef)", 33554462, "Configuring stats collector %{ptr} with screen options: %@\n", v2, v1);
  }

  FigCFDictionaryGetInt32IfPresent();
  *(v2 + 248) = 0;
  v3 = *(v2 + 120);
  if (v3)
  {
    CFRelease(v3);
  }

  *(v2 + 120) = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendF();
  CFStringAppendF();
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    Count = CFArrayGetCount(TypedValue);
    v6 = Count >= 0x10 ? 16 : Count;
    if (Count)
    {
      v7 = 0;
      do
      {
        CFDictionaryGetTypeID();
        if (CFArrayGetTypedValueAtIndex())
        {
          CFStringGetTypeID();
          v8 = CFDictionaryGetTypedValue();
          if (v8)
          {
            CFEqual(v8, @"HIDIn");
            CFStringAppendF();
            ++*(v2 + 248);
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }

  CFStringAppendF();
  CFStringAppendF();
  CFStringAppendF();
  CFStringAppendF();
  *(v2 + 252) += 4;
  if (FigSupportsIOSurfaceTimingInfo())
  {
    CFStringAppendF();
    CFStringAppendF();
    CFStringAppendF();
    CFStringAppendF();
    CFStringAppendF();
  }

  CFStringAppendF();
  CFStringAppendF();
  CFStringAppendF();
  return CFStringAppendF();
}

void APReceiverStatsCollectorSetIfName(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorSetIfName_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

void APReceiverStatsCollectorSetHUDOptions(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorSetHUDOptions_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

void __APReceiverStatsCollectorSetHUDOptions_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  *(v2 + 48) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void aprstats_logEnable(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __aprstats_logEnable_block_invoke;
    v3[3] = &__block_descriptor_41_e5_v8__0l;
    v3[4] = a1;
    v4 = a2;
    dispatch_sync(v2, v3);
  }
}

void APReceiverStatsCollectorEnableHUD(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorEnableHUD_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a2;
    v3[5] = a1;
    dispatch_sync(v2, v3);
  }
}

double aprstats_getSynchronizedNetworkTime(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (v1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v2)
    {
      if (!v2(v1, &v4))
      {
        return v6 + v5 * 5.42101086e-20;
      }
    }
  }

  APSLogErrorAt();
  return 0.0;
}

void APReceiverStatsCollectorSetMirroringMode(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorSetMirroringMode_block_invoke;
    v3[3] = &__block_descriptor_44_e5_v8__0l;
    v3[4] = a1;
    v4 = a2;
    dispatch_sync(v2, v3);
  }
}

void APReceiverStatsCollectorShowStats(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APReceiverStatsCollectorShowStats_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_sync(v1, block);
  }
}

void __APReceiverStatsCollectorShowStats_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 256))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v3 = Current - *(v1 + 232);
    if (v3 >= 0.5)
    {
      v4 = *(v1 + 104);
      v5 = *(v1 + 260);
      *(v1 + 232) = Current;
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      v50 = 0.0 * 100.0;
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      v49 = *(v1 + 72);
      v6 = v49 - *(v1 + 76);
      *(v1 + 76) = v49;
      v7 = *(v1 + 136);
      if (v7)
      {
        Value = CFDictionaryGetValue(*(v1 + 136), *MEMORY[0x277CD64B8]);
        if (Value)
        {
          v9 = Value;
          v10 = CFGetTypeID(Value);
          if (v10 == CFArrayGetTypeID())
          {
            Count = CFArrayGetCount(v9);
            if (Count >= 1)
            {
              v12 = Count;
              v13 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v9, v13);
                v56 = 0;
                if (FigCFDictionaryGetInt32IfPresent())
                {
                  break;
                }

                if (v12 == ++v13)
                {
                  goto LABEL_12;
                }
              }

              v7 = ValueAtIndex;
            }
          }
        }
      }

LABEL_12:
      if (FigCFDictionaryGetInt32IfPresent())
      {
        v48 = ((v49 - *(v1 + 80)) / v3 + 0.5);
        *(v1 + 80) = v49;
      }

      else
      {
        v48 = 0;
      }

      if (FigCFDictionaryGetInt32IfPresent())
      {
        v47 = ((v49 - *(v1 + 84)) / v3 + 0.5);
        *(v1 + 84) = v49;
      }

      else
      {
        v47 = 0;
      }

      v15 = v4;
      if (v7)
      {
        v42 = CFDictionaryGetValue(v7, *MEMORY[0x277CD64B0]);
      }

      else
      {
        v42 = 0;
      }

      v45 = (v6 / v3 + 0.5);
      v44 = *(v1 + 88) - (v15 & (v15 >> 31));
      add_explicit = atomic_fetch_add_explicit((v1 + 60), 0, memory_order_relaxed);
      atomic_fetch_add_explicit((v1 + 60), -add_explicit, memory_order_relaxed);
      v17 = atomic_fetch_add_explicit((v1 + 64), 0, memory_order_relaxed);
      atomic_fetch_add_explicit((v1 + 64), -v17, memory_order_relaxed);
      v18 = atomic_fetch_add_explicit((v1 + 68), 0, memory_order_relaxed);
      atomic_fetch_add_explicit((v1 + 68), -v18, memory_order_relaxed);
      if (*(v1 + 256))
      {
        v46 = v4;
        v43 = objc_alloc_init(MEMORY[0x277CCA8B0]);
        v54 = 0;
        v55 = 0;
        v53 = 0;
        v52 = 0;
        if (*(v1 + 128))
        {
          CFDictionaryGetValue(*(v1 + 128), @"trafficRegistration");
          FigCFDictionaryGetBooleanIfPresent();
          FigCFDictionaryGetBooleanIfPresent();
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          LODWORD(v51) = 0;
        }

        v51 = 0;
        APTransportGetSharedTransport();
        CMBaseObject = FigTransportGetCMBaseObject();
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v20 && !v20(CMBaseObject, *MEMORY[0x277CE4F30], *MEMORY[0x277CBECE8], &v51))
        {
          APTransportTrafficRegistrarGetRegistration();
          APTransportTrafficRegistrarGetRSSI();
          APTransportTrafficRegistrarGetWifiChannel();
          APTransportTrafficRegistrarGetAWDLChannelSequence();
        }

        if (v51)
        {
          CFRelease(v51);
        }

        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:1];
        if (*(v1 + 260))
        {
          v21 = "Mirroring 2";
        }

        else
        {
          v21 = "Mirroring 1";
        }

        [*(v1 + 32) setValueAtIndex:0 format:{@"%s", v21}];
        [*(v1 + 32) setValueAtIndex:1 format:{@"%s", v1 + 208}];
        if (v5)
        {
          v22 = 2;
        }

        else
        {
          [*(v1 + 32) setValueAtIndex:2 format:{@"%s%s", "", ""}];
          v22 = 3;
        }

        v23 = (v22 + 1);
        [*(v1 + 32) setValueAtIndex:v22 format:{@"%s%s", "", ""}];
        if (!v5)
        {
          [*(v1 + 32) setValueAtIndex:(v22 + 1) format:{@"%.0fx%.0f", *(v1 + 144), *(v1 + 152)}];
          v23 = (v22 + 2);
        }

        [*(v1 + 32) setValueAtIndex:v23 format:{@"%.0fx%.0f", *(v1 + 176), *(v1 + 184)}];
        v24 = (v23 + 2);
        [*(v1 + 32) setValueAtIndex:(v23 + 1) format:{@"%c%c%c%c", HIBYTE(*(v1 + 192)), BYTE2(*(v1 + 192)), BYTE1(*(v1 + 192)), *(v1 + 192)}];
        if (!v5)
        {
          v25 = *(v1 + 200);
          if (!v25)
          {
            v25 = &stru_28512F888;
          }

          [*(v1 + 32) setValueAtIndex:(v23 + 2) format:{@"%@", v25}];
          [*(v1 + 32) setValueAtIndex:(v23 + 3) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v23 + 4) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v23 + 5) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v23 + 6) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v23 + 7) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:v23 | 8 format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v23 + 9) format:{@"%u", 0}];
          v24 = (v23 + 11);
          [*(v1 + 32) setValueAtIndex:(v23 + 10) format:{@"%u", v45}];
        }

        [*(v1 + 32) setValueAtIndex:v24 format:{@"%u", v48}];
        v26 = (v24 + 2);
        [*(v1 + 32) setValueAtIndex:(v24 + 1) format:{@"%u", v47}];
        if (!v5)
        {
          [*(v1 + 32) setValueAtIndex:(v24 + 2) format:{@"%.2f", 0.0 / 1000000.0}];
          [*(v1 + 32) setValueAtIndex:(v24 + 3) format:{@"%.2f", 0.0 / 1000000.0}];
          [*(v1 + 32) setValueAtIndex:(v24 + 4) format:{@"%u%%", v50}];
          [*(v1 + 32) setValueAtIndex:(v24 + 5) format:{@"%u ms", 0}];
          [*(v1 + 32) setValueAtIndex:(v24 + 6) format:{@"%d", v44}];
          [*(v1 + 32) setValueAtIndex:(v24 + 7) format:{@"%d", v46}];
          [*(v1 + 32) setValueAtIndex:(v24 + 8) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v24 + 9) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v24 + 10) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v24 + 11) format:{@"%u", 0.0}];
          v26 = (v24 + 13);
          [*(v1 + 32) setValueAtIndex:(v24 + 12) format:{@"%d", 0}];
        }

        v27 = (v26 + 1);
        [*(v1 + 32) setValueAtIndex:v26 format:{@"%d", 0}];
        if (!v5)
        {
          [*(v1 + 32) setValueAtIndex:(v26 + 1) format:{@"%d", 0}];
          v27 = (v26 + 2);
        }

        v28 = (v27 + 1);
        [*(v1 + 32) setValueAtIndex:v27 format:{@"%d", 0}];
        if (!v5)
        {
          v29 = v54;
          if (!v54)
          {
            v29 = "N/A";
          }

          [*(v1 + 32) setValueAtIndex:(v27 + 1) format:{@"%s", v29}];
          v28 = (v27 + 3);
          v30 = v55;
          if (!v55)
          {
            v30 = "N/A";
          }

          [*(v1 + 32) setValueAtIndex:(v27 + 2) format:{@"%s", v30}];
        }

        v31 = v52;
        if (!v52)
        {
          v31 = "N/A";
        }

        [*(v1 + 32) setValueAtIndex:v28 format:{@"%s", v31}];
        v32 = (v28 + 2);
        v33 = v53;
        if (!v53)
        {
          v33 = "N/A";
        }

        [*(v1 + 32) setValueAtIndex:(v28 + 1) format:{@"%s", v33}];
        if (!v5)
        {
          [*(v1 + 32) setValueAtIndex:(v28 + 2) format:{@"%u", 0}];
          v32 = (v28 + 3);
        }

        [*(v1 + 32) setValueAtIndex:v32 format:{@"%u ms", *(v1 + 56)}];
        [*(v1 + 32) setValueAtIndex:(v32 + 1) format:{@"%u", add_explicit}];
        [*(v1 + 32) setValueAtIndex:(v32 + 2) format:{@"%u", v17}];
        [*(v1 + 32) setValueAtIndex:(v32 + 3) format:{@"%u", v18}];
        [*(v1 + 32) setNeedsDisplay];
        [*(v1 + 32) display];
        *&v34 = v48;
        [*(v1 + 40) updateValue:0 value:v34];
        v15 = v4;
        if (!v5)
        {
          *&v35 = 0;
          [*(v1 + 40) updateValue:1 value:v35];
          *&v36 = v46;
          [*(v1 + 40) updateValue:2 value:v36];
          HIDWORD(v37) = 0;
          *&v37 = 0.0 / 1000000.0;
          [*(v1 + 40) updateValue:3 value:v37];
          HIDWORD(v38) = 0;
          *&v38 = 0.0 / 1000000.0;
          [*(v1 + 40) updateValue:4 value:v38];
          *&v39 = 0;
          [*(v1 + 40) updateValue:5 value:v39];
        }

        [*(v1 + 40) setNeedsDisplay];
        [*(v1 + 40) display];
        v40 = *(v1 + 264);
        if (v40)
        {
          [objc_msgSend(v40 "layer")];
        }

        [MEMORY[0x277CD9FF0] commit];
        free(v54);
        free(v55);
        free(v52);
        free(v53);
        [v43 drain];
      }

      if (*(v1 + 257) && gLogCategory_APReceiverStatsCollector <= 50 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
      {
        if (v42)
        {
          v41 = v42;
        }

        else
        {
          v41 = @"not available";
        }

        LogPrintF(&gLogCategory_APReceiverStatsCollector, "void aprstats_showStats(APReceiverStatsCollectorRef)", 34078770, "P-FPS: %u  W-FPS: %u  SubS: %u  B4En: %u  FPS Th: %u  Q-FPS: %u  S-FPS: %u  R-FPS: %u  TV-FPS: %u  TV-DPS: %u  M Mbps: %.2f  A Mbps: %.2f  Loss: %u%%  RTT: %u ms  Latency: %d  Ahead: %d  EnDp: %u  IdEn: %u  IdDp: %u  EQDp: %u  CPU: %u  RSSI: %d  SO Drops: %u  A Buff: %u ms  A Lost: %u  A Unrec: %u  A Late: %u  TV-Hist: %@\n", 0, 0, 0, 0, 0, 0, 0, v45, v48, v47, 0.0 / 1000000.0, 0.0 / 1000000.0, v50, 0, v44, v15, 0, 0, 0, 0, 0.0, 0, 0, *(v1 + 56), add_explicit, v17, v18, v41);
      }
    }
  }
}

uint64_t aprstats_createAWDLSequenceLines(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  result = AirPlayCreateAWDLChannelSequenceString();
  if (v3 >= 9)
  {

    return AirPlayCreateAWDLChannelSequenceString();
  }

  return result;
}

uint64_t APReceiverStatsCollectorUpdateAudioBufferDuration(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

uint64_t APReceiverStatsCollectorAddAudioLostPacketCount(uint64_t result, unsigned int a2)
{
  if (result)
  {
    atomic_fetch_add_explicit((result + 60), a2, memory_order_relaxed);
  }

  return result;
}

uint64_t APReceiverStatsCollectorAddAudioUnrecoveredPacketCount(uint64_t result, unsigned int a2)
{
  if (result)
  {
    atomic_fetch_add_explicit((result + 64), a2, memory_order_relaxed);
  }

  return result;
}

uint64_t APReceiverStatsCollectorAddAudioLatePacketCount(uint64_t result, unsigned int a2)
{
  if (result)
  {
    atomic_fetch_add_explicit((result + 68), a2, memory_order_relaxed);
  }

  return result;
}

void APReceiverStatsCollectorUpdateVideoSizes(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APReceiverStatsCollectorUpdateVideoSizes_block_invoke;
    block[3] = &__block_descriptor_88_e5_v8__0l;
    block[4] = a1;
    *&block[5] = a2;
    *&block[6] = a3;
    *&block[7] = a4;
    *&block[8] = a5;
    *&block[9] = a6;
    *&block[10] = a7;
    dispatch_sync(v7, block);
  }
}

void APReceiverStatsCollectorUpdateVideoCodec(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorUpdateVideoCodec_block_invoke;
    v3[3] = &__block_descriptor_44_e5_v8__0l;
    v3[4] = a1;
    v4 = a2;
    dispatch_sync(v2, v3);
  }
}

void APReceiverStatsCollectorUpdateVideoFormatDescription(uint64_t a1, const opaqueCMFormatDescription *a2)
{
  if (a1 && a2)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    Extension = CMFormatDescriptionGetExtension(a2, *MEMORY[0x277CC03B0]);
    v15 = 0;
    if (Extension)
    {
      v6 = Extension;
      if (CFDictionaryGetValue(Extension, @"hvcC"))
      {
        v13 = 0;
        v14 = 0;
        v12 = 0;
        if (!FigHEVCBridge_GetHEVCParameterSetAtIndex() && !FigHEVCBridge_GetSPSChromaFormatAndBitDepths())
        {
          if (v15 > 3uLL)
          {
            CFStringAppendFormat(Mutable, 0, @"??? (%d)", v15);
          }

          else
          {
            CFStringAppendFormat(Mutable, 0, @"%s", off_278C5F938[v15]);
          }

          if (HIBYTE(v12) == v12)
          {
            CFStringAppendFormat(Mutable, 0, @" (%d-bit)", HIBYTE(v12));
          }

          else
          {
            CFStringAppendFormat(Mutable, 0, @" (%d-bit luma %d-bit chroma)", HIBYTE(v12), v12);
          }
        }

        goto LABEL_22;
      }

      Value = CFDictionaryGetValue(v6, @"avcC");
      if (Value)
      {
        v8 = CFDataGetBytePtr(Value)[1];
        switch(v8)
        {
          case 100:
            v9 = 1;
            goto LABEL_20;
          case 244:
            v9 = 3;
            goto LABEL_20;
          case 122:
            v9 = 2;
LABEL_20:
            CFStringAppendFormat(Mutable, 0, @"%s", off_278C5F938[v9]);
            goto LABEL_22;
        }

        CFStringAppendFormat(Mutable, 0, @"???");
      }
    }

LABEL_22:
    v10 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APReceiverStatsCollectorUpdateVideoFormatDescription_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = a1;
    block[5] = Mutable;
    block[6] = a2;
    dispatch_sync(v10, block);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

uint64_t __APReceiverStatsCollectorUpdateVideoFormatDescription_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 200);
  *(v3 + 200) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  result = CMFormatDescriptionGetMediaSubType(*(a1 + 48));
  *(*(a1 + 32) + 192) = result;
  return result;
}

void APReceiverStatsCollectorUpdateVideoPerformanceStats(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorUpdateVideoPerformanceStats_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

void __APReceiverStatsCollectorUpdateVideoPerformanceStats_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 136);
  *(v2 + 136) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void APReceiverStatsCollectorUpdateSenderStats(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorUpdateSenderStats_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

void __APReceiverStatsCollectorUpdateSenderStats_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 128);
  *(v2 + 128) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void APReceiverStatsCollectorGetFrameCounters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a1 + 16);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __APReceiverStatsCollectorGetFrameCounters_block_invoke;
    v5[3] = &__block_descriptor_64_e5_v8__0l;
    v5[4] = a2;
    v5[5] = a1;
    v5[6] = a3;
    v5[7] = a4;
    dispatch_sync(v4, v5);
  }
}

void *__APReceiverStatsCollectorGetFrameCounters_block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    *v1 = *(result[5] + 72);
  }

  v2 = result[6];
  if (v2)
  {
    *v2 = *(result[5] + 80);
  }

  v3 = result[7];
  if (v3)
  {
    *v3 = *(result[5] + 84);
  }

  return result;
}

void __APReceiverStatsCollectorUpdateAndCopyFrameStats_block_invoke(void *a1)
{
  v30[0] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = mach_absolute_time();
  ++*(v1 + 72);
  if (*v2 >= v4)
  {
    v5 = UpTicksToMilliseconds();
  }

  else
  {
    v5 = -UpTicksToMilliseconds();
  }

  if (*(v1 + 112))
  {
    *(v1 + 104) = *(v1 + 104) + *(v1 + 96) * (v5 - *(v1 + 104));
  }

  else
  {
    *(v1 + 104) = v5;
    *(v1 + 112) = 1;
  }

  if (v5 < -*(v1 + 88) && gLogCategory_APReceiverStatsCollector <= 50 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverStatsCollector, "void aprstats_updateAndCopyFrameStats(APReceiverStatsCollectorRef, const APReceiverStatsCollectorFrameStats *, CFDictionaryRef *)", 33554482, "*** Stats collector %{ptr}: late screen frame (%d ms)\n", v1, v5);
  }

  if (v3)
  {
    v27 = v3;
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v29 = 0;
    v28 = &v29;
    v8 = *(v2 + 16);
    if (!v8)
    {
      v8 = *(v2 + 8);
    }

    v26 = Mutable;
    v9 = v8 - *(v1 + 240);
    v10 = v9 < 1;
    v11 = ((1000 * v9 * 0x40000000401uLL) >> 64) >> 10;
    if (v10)
    {
      v11 = 0;
    }

    if (v11 >= 0x3E7)
    {
      LODWORD(v11) = 999;
    }

    snprintf_add(&v28, v30, "%5d ", v11);
    *(v1 + 240) = v8;
    v12 = *(v2 + 8);
    v13 = *(v1 + 248);
    if (v13 <= 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13 - 1;
    }

    if (v14 >= *(v2 + 40))
    {
      v14 = *(v2 + 40);
    }

    if (v14 >= 1)
    {
      v15 = *(v2 + 24);
      v16 = &v15[v14];
      do
      {
        if (*v15 >= 0x3E7u)
        {
          v17 = 999;
        }

        else
        {
          v17 = *v15;
        }

        snprintf_add(&v28, v30, "%5d ", v17);
        v18 = *v15++;
        v12 += ((v18 << 32) * 0x4189374BC6A7F0uLL) >> 64;
      }

      while (v15 < v16);
    }

    v25 = v6;
    if (*(v2 + 44) >= 1)
    {
      v19 = 0;
      do
      {
        v20 = *(*(v2 + 32) + 8 * v19);
        if (v20 <= v12)
        {
          v21 = 0;
        }

        else
        {
          v21 = ((1000 * (v20 - v12) * 0x40000000401uLL) >> 64) >> 10;
        }

        if (v21 >= 0x3E7)
        {
          LODWORD(v21) = 999;
        }

        snprintf_add(&v28, v30, "%5d ", v21);
        ++v19;
        v12 = v20;
      }

      while (v19 < *(v2 + 44));
    }

    CFDictionarySetCString();
    FigCFDictionarySetInt32();
    v22 = CFStringCreateMutable(v25, 0);
    UpTicksToMilliseconds();
    CFStringAppendF();
    CFDictionarySetValue(v26, @"preLine", v22);
    CFRelease(v22);
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt64();
    v23 = *(v1 + 120);
    if (v23)
    {
      HIDWORD(v24) = -1030792151 * *(v1 + 72);
      LODWORD(v24) = HIDWORD(v24);
      if ((v24 >> 2) <= 0x28F5C28)
      {
        CFDictionarySetValue(v26, @"header", v23);
      }
    }

    *v27 = v26;
  }
}

const __CFDictionary *APReceiverStatsCollectorLogFrameStats(const __CFDictionary *result, const __CFDictionary *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    return result;
  }

  v3 = result;
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  v22[0] = 0;
  v17 = v22;
  if (a2)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    FigCFDictionaryGetInt64IfPresent();
    v18 = 0;
    if (CFDictionaryGetValue(a2, *MEMORY[0x277CD6338]))
    {
      FigGetIOSurfaceTimingStatsFromTimingInfoDictionary();
    }

    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&v18 + v4);
      if (!v6)
      {
        *(&v18 + v4) = v5;
        v6 = v5;
      }

      v4 += 8;
      v5 = v6;
    }

    while (v4 != 48);
    FigCFDictionaryGetInt64IfPresent();
    if (v18)
    {
      v7 = UpTicksToMilliseconds();
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 999)
    {
      v9 = 999;
    }

    else
    {
      v9 = v7;
    }

    snprintf_add(&v17, &v23, "%5d ", v9);
    v10 = 0;
    v16 = v7;
    do
    {
      if (*(&v18 + v10 + 8) <= *(&v18 + v10))
      {
        v11 = 0;
      }

      else
      {
        v11 = UpTicksToMilliseconds();
      }

      if (v11 >= 999)
      {
        v12 = 999;
      }

      else
      {
        v12 = v11;
      }

      snprintf_add(&v17, &v23, "%5d ", v12);
      v8 = v16 + v11;
      v16 += v11;
      v10 += 8;
    }

    while (v10 != 32);
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 999)
  {
    v8 = 999;
  }

  snprintf_add(&v17, &v23, "%5d ", v8);
  snprintf_add(&v17, &v23, "%+5d ", 0);
  snprintf_add(&v17, &v23, "%4d ", 0);
  snprintf_add(&v17, &v23, "%6d", 0);
  result = CFDictionaryGetValue(v3, @"header");
  if (!result)
  {
    goto LABEL_39;
  }

  if (gLogCategory_APReceiverStatsCollector <= 50)
  {
    v13 = result;
    if (gLogCategory_APReceiverStatsCollector != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APReceiverStatsCollector, "void APReceiverStatsCollectorLogFrameStats(CFDictionaryRef, CFDictionaryRef)", 33554482, "\n");
    }

    if (gLogCategory_APReceiverStatsCollector <= 50)
    {
      if (gLogCategory_APReceiverStatsCollector != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF(&gLogCategory_APReceiverStatsCollector, "void APReceiverStatsCollectorLogFrameStats(CFDictionaryRef, CFDictionaryRef)", 33554482, "%@\n", v13);
      }

      if (gLogCategory_APReceiverStatsCollector <= 50)
      {
        if (gLogCategory_APReceiverStatsCollector != -1 || (result = _LogCategory_Initialize(), result))
        {
          result = LogPrintF(&gLogCategory_APReceiverStatsCollector, "void APReceiverStatsCollectorLogFrameStats(CFDictionaryRef, CFDictionaryRef)", 33554482, "\n");
        }

LABEL_39:
        if (gLogCategory_APReceiverStatsCollector <= 50)
        {
          if (gLogCategory_APReceiverStatsCollector != -1 || (result = _LogCategory_Initialize(), result))
          {
            Value = CFDictionaryGetValue(v3, @"preLine");
            v15 = CFDictionaryGetValue(v3, @"deltasMs");
            return LogPrintF(&gLogCategory_APReceiverStatsCollector, "void APReceiverStatsCollectorLogFrameStats(CFDictionaryRef, CFDictionaryRef)", 33554482, "%@%@%s\n", Value, v15, v22);
          }
        }
      }
    }
  }

  return result;
}

void APReceiverStatsCollectorSetNetworkClock(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorSetNetworkClock_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

void __APReceiverStatsCollectorSetNetworkClock_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 272);
  *(v2 + 272) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void AirPlayManagedDefaultsLogging_HandleReceiverManagedDefaultsLoggingChanged()
{
  CFPreferencesAppSynchronize(@"com.apple.airplay");
  v0 = APSSettingsCopyValue();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 != CFStringGetTypeID() || CFStringGetLength(v1) < 1)
    {
      ___HandleManagedDefaultsLoggingChanged_block_invoke(&__block_literal_global_365);
LABEL_11:
      CFRelease(v1);
      return;
    }

    LogControlCF();
    v3 = dlsym(0xFFFFFFFFFFFFFFFFLL, "MediaControlSenderLogControlCF");
    if (v3)
    {
      v3(v1);
    }

    CFRelease(v1);
    v4 = APSSettingsCopyValue();
    if (v4)
    {
      v1 = v4;
      v5 = CFGetTypeID(v4);
      if (v5 == CFStringGetTypeID() && CFStringGetLength(v1) >= 1)
      {
        LogControlCF();
      }

      goto LABEL_11;
    }
  }

  else
  {
    ___HandleManagedDefaultsLoggingChanged_block_invoke(&__block_literal_global_365);
  }
}

uint64_t APReceiverScreenSinkCreateFileWriter(uint64_t a1, CFTypeRef *a2)
{
  if (!IsAppleInternalBuild())
  {
    return 4294954514;
  }

  if (a2)
  {
    if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSinkFileWriter, "OSStatus APReceiverScreenSinkCreateFileWriter(CFAllocatorRef, APReceiverScreenSinkRef *)", 33554462, "Creating FileWriter screen sink\n");
    }

    if (APReceiverScreenSinkGetClassID_once != -1)
    {
      dispatch_once(&APReceiverScreenSinkGetClassID_once, &__block_literal_global_5885);
    }

    v3 = CMDerivedObjectCreate();
    if (v3)
    {
      v4 = v3;
      APSLogErrorAt();
    }

    else
    {
      if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverScreenSinkFileWriter, "OSStatus APReceiverScreenSinkCreateFileWriter(CFAllocatorRef, APReceiverScreenSinkRef *)", 33554462, "Created FileWriter screen sink %{ptr}\n", 0);
      }

      v4 = 0;
      *a2 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895165;
  }

  return v4;
}

uint64_t fwsink_updateVideoConfig(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkFileWriter, "OSStatus fwsink_updateVideoConfig(APReceiverScreenSinkRef, CMBlockBufferRef, CGSize, CGRect, CGRect, uint32_t)", 33554462, "Sink %{ptr}: updating video config\n", a1);
  }

  if (!*(DerivedStorage + 16))
  {
    v8 = 4294895164;
    goto LABEL_13;
  }

  if (!a2)
  {
    APSLogErrorAt();
    v8 = 4294895165;
LABEL_14:
    if (gLogCategory_APReceiverScreenSinkFileWriter <= 60 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSinkFileWriter, "OSStatus fwsink_updateVideoConfig(APReceiverScreenSinkRef, CMBlockBufferRef, CGSize, CGRect, CGRect, uint32_t)", 33554492, "### Update video config for sink %{ptr} failed, error: %#m\n", a1, v8);
    }

    return v8;
  }

  v7 = *(DerivedStorage + 8);
  v6 = (DerivedStorage + 8);
  v5 = v7;
  if (v7)
  {
    CFRelease(v5);
    *v6 = 0;
  }

  v8 = APSVideoFormatDescriptionCreateFromBlockBuffer();
  if (v8)
  {
LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

  return v8;
}

uint64_t fwsink_updateH264VideoConfig(uint64_t a1, const __CFData *a2, double a3, double a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkFileWriter, "OSStatus fwsink_updateH264VideoConfig(APReceiverScreenSinkRef, CFDataRef, CGSize, CGRect, CGRect, uint32_t)", 33554462, "Sink %{ptr}: updating H.264 video config\n", a1);
  }

  if (!*(DerivedStorage + 16))
  {
    v10 = 4294895164;
    goto LABEL_13;
  }

  if (!a2)
  {
    APSLogErrorAt();
    v10 = 4294895165;
LABEL_14:
    if (gLogCategory_APReceiverScreenSinkFileWriter <= 60 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSinkFileWriter, "OSStatus fwsink_updateH264VideoConfig(APReceiverScreenSinkRef, CFDataRef, CGSize, CGRect, CGRect, uint32_t)", 33554492, "### Update H.264 video config for sink %{ptr} failed, error: %#m\n", a1, v10);
    }

    return v10;
  }

  v9 = *(DerivedStorage + 8);
  v8 = (DerivedStorage + 8);
  v7 = v9;
  if (v9)
  {
    CFRelease(v7);
    *v8 = 0;
  }

  CFDataGetBytePtr(a2);
  CFDataGetLength(a2);
  v10 = FigVideoFormatDescriptionCreateWithSampleDescriptionExtensionAtom();
  if (v10)
  {
LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

  return v10;
}

uint64_t fwsink_enqueueFrame(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
  {
    v10 = "";
    if (!a5)
    {
      v10 = "non-";
    }

    LogPrintF(&gLogCategory_APReceiverScreenSinkFileWriter, "OSStatus fwsink_enqueueFrame(APReceiverScreenSinkRef, CMBlockBufferRef, uint64_t, CFDictionaryRef, Boolean)", 33554462, "Sink %{ptr}: enqueuing frame with time %llu (%skeyframe)\n", a1, a3, v10);
  }

  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  sampleSizeArray = 0;
  if (*(DerivedStorage + 16))
  {
    if (*(DerivedStorage + 8))
    {
      *&sampleTimingArray.duration.value = *MEMORY[0x277CC0898];
      sampleTimingArray.duration.epoch = *(MEMORY[0x277CC0898] + 16);
      sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
      CMClockMakeHostTimeFromSystemUnits(&sampleTimingArray.presentationTimeStamp, a3);
      sampleSizeArray = CMBlockBufferGetDataLength(a2);
      v11 = CMSampleBufferCreate(*MEMORY[0x277CBECE8], a2, 1u, 0, 0, *(DerivedStorage + 8), 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &v22);
      if (v11)
      {
        v18 = v11;
      }

      else
      {
        if (!a5)
        {
          SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v22, 1u);
          ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
          CFDictionarySetValue(ValueAtIndex, *MEMORY[0x277CC06A0], *MEMORY[0x277CBED28]);
        }

        v14 = *DerivedStorage;
        v15 = v22;
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v16)
        {
          v17 = v16(v14, v15, 0, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
          v18 = 0;
          if (!v17)
          {
            goto LABEL_17;
          }

          v18 = v17;
        }

        else
        {
          v18 = 4294954514;
        }
      }
    }

    else
    {
      v18 = 4294895164;
    }
  }

  else
  {
    v18 = 4294895164;
  }

  APSLogErrorAt();
LABEL_17:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v18 && gLogCategory_APReceiverScreenSinkFileWriter <= 60 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkFileWriter, "OSStatus fwsink_enqueueFrame(APReceiverScreenSinkRef, CMBlockBufferRef, uint64_t, CFDictionaryRef, Boolean)", 33554492, "### Enqueue frame to file writer sink %{ptr} failed, error: %#m\n", a1, v18);
  }

  return v18;
}

uint64_t fwsink_Stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v3 = DerivedStorage;
    if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSinkFileWriter, "OSStatus fwsink_Stop(APReceiverScreenSinkRef)", 33554462, "Stopping file writer sink %{ptr}\n", a1);
    }

    v4 = *v3;
    if (*v3)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v5)
      {
        v5(v4, 0);
      }

      if (*v3)
      {
        CFRelease(*v3);
        *v3 = 0;
      }
    }

    v6 = *(v3 + 8);
    if (v6)
    {
      CFRelease(v6);
      *(v3 + 8) = 0;
    }

    *(v3 + 16) = 0;
  }

  return 0;
}

uint64_t fwsink_Start(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v15 = 4294895165;
    goto LABEL_17;
  }

  v5 = DerivedStorage;
  if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkFileWriter, "OSStatus fwsink_Start(APReceiverScreenSinkRef, CFDictionaryRef)", 33554462, "Starting file writer sink %{ptr} with options: %@\n", a1, a2);
  }

  Value = CFDictionaryGetValue(a2, @"FilePath");
  if (!Value || (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFStringGetTypeID()))
  {
    v15 = 4294895165;
LABEL_17:
    APSLogErrorAt();
    goto LABEL_18;
  }

  if (!*(v5 + 16))
  {
    *(v5 + 16) = 1;
    v9 = FigVirtualDisplaySinkFileWriterCreate();
    if (v9)
    {
      v15 = v9;
    }

    else
    {
      CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v12 = v11(CMBaseObject, *MEMORY[0x277CD66F8], v7);
        if (v12)
        {
          v15 = v12;
        }

        else
        {
          v13 = *v5;
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v14)
          {
            v15 = v14(v13, 0, 0);
            if (!v15)
            {
              return v15;
            }
          }

          else
          {
            v15 = 4294954514;
          }
        }
      }

      else
      {
        v15 = 4294954514;
      }
    }

    goto LABEL_17;
  }

  APSLogErrorAt();
  v15 = 4294895164;
LABEL_18:
  if (gLogCategory_APReceiverScreenSinkFileWriter <= 90 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkFileWriter, "OSStatus fwsink_Start(APReceiverScreenSinkRef, CFDictionaryRef)", 33554522, "### Start file writer sink %{ptr} failed, error: %#m\n", a1, v15);
  }

  v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v16)
  {
    v16(a1);
  }

  return v15;
}

CFStringRef fwsink_CopyDebugDescription(const void *a1)
{
  v5 = 0;
  ASPrintF(&v5, "%{ptr}", a1);
  v2 = CFGetAllocator(a1);
  v3 = CFStringCreateWithFormat(v2, 0, @"<APReceiverScreenSinkFileWriter %p %s>", a1, v5);
  free(v5);
  return v3;
}

uint64_t fwsink_Finalize(uint64_t a1)
{
  if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkFileWriter, "void fwsink_Finalize(CMBaseObjectRef)", 33554462, "Finalizing screen sink %{ptr}\n", a1);
  }

  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = *(v4 + 16);
  if (v5)
  {

    return v5(a1);
  }

  return result;
}

uint64_t _APReceiverNTPClientGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPReceiverNTPClientTypeID = result;
  return result;
}

void _APReceiverNTPClientFinalize(uint64_t a1)
{
  APReceiverNTPClientStop(a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  if (gLogCategory_APReceiverNTPClient <= 40 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_APReceiverNTPClient, "void _APReceiverNTPClientFinalize(CFTypeRef)", 33554472, "APReceiverNTPClient finalized\n");
  }
}

uint64_t APReceiverNTPClientStop(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(a1 + 88))
  {
    SendSelfConnectedLoopbackMessage();
    v3 = pthread_join(*(a1 + 80), 0);
    *(a1 + 88) = 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 72);
  if ((v4 & 0x80000000) == 0)
  {
    if (close(v4) && *__error())
    {
      __error();
    }

    *(a1 + 72) = -1;
  }

  v5 = *(a1 + 24);
  if ((v5 & 0x80000000) == 0)
  {
    if (close(v5) && *__error())
    {
      __error();
    }

    *(a1 + 24) = -1;
  }

  if ((v2 & 0x80000000) == 0 && gLogCategory_APReceiverNTPClient <= 50 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APReceiverNTPClientStop(APReceiverNTPClientRef)", 33554482, "NTP client stopped\n");
  }

  return v3;
}

uint64_t ntpClient_sendRequest(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  v12 = 117494400;
  v14 = 0;
  v13 = 0;
  v15 = 0;
  AirTunesClock_GetSynchronizedTime(*(a1 + 16), &v10);
  v2 = HIDWORD(v11);
  v3 = v10 - 2085978496;
  *(a1 + 96) = v10 - 2085978496;
  *(a1 + 100) = v2;
  v16 = bswap32(v3);
  v17 = bswap32(v2);
  v4 = *(a1 + 24);
  if (*(a1 + 68))
  {
    v5 = send(v4, &v12, 0x20uLL, 0);
  }

  else
  {
    v5 = sendto(v4, &v12, 0x20uLL, 0, (a1 + 36), *(a1 + 64));
  }

  if (v5 == 32)
  {
LABEL_7:
    v6 = 0;
    v7 = *(a1 + 104);
    if ((v7 + 1) > 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 1;
    }

    *(a1 + 104) = v8;
    return v6;
  }

  if (*__error())
  {
    v6 = *__error();
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 4294960596;
  }

  if (gLogCategory_APReceiverNTPClient <= 50 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus ntpClient_sendRequest(APReceiverNTPClientRef)", 33554482, "### NTP send request failed: %#m\n", v6);
  }

  return v6;
}

uint64_t ntpClient_receiveResponse(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0;
  v6 = 0;
  v2 = SocketRecvFrom();
  v3 = v2;
  if (v2 != 35)
  {
    if (v2)
    {
      APSLogErrorAt();
    }

    else
    {
      return 4294960553;
    }
  }

  return v3;
}

uint64_t ntpClient_thread(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 72);
  pthread_setname_np("AirPlayTimeSyncClient");
  SetCurrentThreadPriority();
  if (gLogCategory_APReceiverNTPClient <= 30 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverNTPClient, "void *ntpClient_thread(void *)", 33554462, "NTP client thread starting\n");
  }

  v13.tv_sec = 0;
  *&v13.tv_usec = 0;
  memset(&v14, 0, 32);
  if (v1 <= v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  memset(&v14.fds_bits[8], 0, 32);
  if (v3 < 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3;
  }

  v5 = v2 >> 5;
  memset(&v14.fds_bits[16], 0, 64);
  v6 = 1 << v1;
  v7 = v1 >> 5;
  v8 = 1 << v2;
  do
  {
    while (1)
    {
      if (__darwin_check_fd_set_overflow(v1, &v14, 0))
      {
        v14.fds_bits[v7] |= v6;
      }

      if (__darwin_check_fd_set_overflow(v2, &v14, 0))
      {
        v14.fds_bits[v5] |= v8;
      }

      v13.tv_sec = 2;
      v13.tv_usec = arc4random() % 0xF4240;
      v9 = select(v4 + 1, &v14, 0, 0, &v13);
      if (v9 > 0)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_28;
      }

      if (*__error())
      {
        v10 = *__error();
        if (v10 != 4)
        {
          if (!v10)
          {
            break;
          }

          if (v10 != -6722)
          {
            goto LABEL_29;
          }

LABEL_28:
          ntpClient_sendRequest(a1);
        }
      }

      else
      {
LABEL_29:
        usleep(0x186A0u);
      }
    }

    if (__darwin_check_fd_set_overflow(v1, &v14, 0) && (v14.fds_bits[v7] & v6) != 0)
    {
      ntpClient_receiveResponse(a1, v1);
    }
  }

  while (!__darwin_check_fd_set_overflow(v2, &v14, 0) || (v14.fds_bits[v5] & v8) == 0);
  if (gLogCategory_APReceiverNTPClient <= 30 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverNTPClient, "void *ntpClient_thread(void *)", 33554462, "NTP client thread exit\n");
  }

  return 0;
}

uint64_t APReceiverScreenSessionGetClassID()
{
  if (APReceiverScreenSessionGetClassID_once != -1)
  {
    dispatch_once(&APReceiverScreenSessionGetClassID_once, &__block_literal_global_994);
  }

  return APReceiverScreenSessionGetClassID_classID;
}

uint64_t __APReceiverScreenSessionGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&APReceiverScreenSessionGetClassID_classDesc, ClassID, 1, &APReceiverScreenSessionGetClassID_classID);
}

uint64_t APReceiverScreenSessionGetTypeID()
{
  if (APReceiverScreenSessionGetClassID_once != -1)
  {
    dispatch_once(&APReceiverScreenSessionGetClassID_once, &__block_literal_global_994);
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t APReceiverScreenSessionCreate(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  cf = 0;
  v24 = 1;
  if (a2)
  {
    if (a4)
    {
      if (gLogCategory_APReceiverScreenSession <= 30 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus APReceiverScreenSessionCreate(CFAllocatorRef, APReceiverScreenSinkRef, CFDictionaryRef, APReceiverScreenSessionRef *)", 33554462, "Creating APReceiverScreenSession with options: %@\n", a3);
      }

      if (APReceiverScreenSessionGetClassID_once != -1)
      {
        dispatch_once(&APReceiverScreenSessionGetClassID_once, &__block_literal_global_994);
      }

      v7 = CMDerivedObjectCreate();
      if (v7)
      {
        v20 = v7;
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *(DerivedStorage + 228) = -1;
        *(DerivedStorage + 144) = CFRetain(a2);
        *(DerivedStorage + 200) = FigSimpleMutexCreate();
        *(DerivedStorage + 208) = FigSimpleMutexCreate();
        *(DerivedStorage + 240) = FigSimpleMutexCreate();
        v9 = FigDispatchQueueCreateWithPriority();
        *(DerivedStorage + 216) = v9;
        if (!v9)
        {
          APSLogErrorAt();
          v20 = 4294895176;
          goto LABEL_51;
        }

        *(DerivedStorage + 186) = 256;
        *(DerivedStorage + 192) = -1;
        if (!a3)
        {
          goto LABEL_22;
        }

        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        Value = CFDictionaryGetValue(a3, @"NetworkClock");
        *(DerivedStorage + 128) = Value;
        if (Value && (CFRetain(Value), (v11 = *(DerivedStorage + 128)) != 0) && (v12 = CFGetTypeID(v11), v12 != APSNetworkClockGetTypeID()))
        {
          v20 = 4294895175;
        }

        else
        {
          v13 = CFDictionaryGetValue(a3, @"StatsCollector");
          *(DerivedStorage + 136) = v13;
          if (!v13)
          {
            goto LABEL_21;
          }

          CFRetain(v13);
          v13 = *(DerivedStorage + 136);
          if (!v13)
          {
            goto LABEL_21;
          }

          v14 = CFGetTypeID(v13);
          if (APReceiverStatsCollectorGetTypeID_once != -1)
          {
            dispatch_once(&APReceiverStatsCollectorGetTypeID_once, &__block_literal_global_536);
          }

          if (v14 == APReceiverStatsCollectorGetTypeID_typeID)
          {
            v13 = *(DerivedStorage + 136);
LABEL_21:
            APReceiverStatsCollectorSetNetworkClock(v13, *(DerivedStorage + 128));
LABEL_22:
            if (!v24)
            {
LABEL_28:
              v16 = *(DerivedStorage + 136);
              v17 = *(DerivedStorage + 144);
              v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v18)
              {
                v18(v17, @"StatsCollector", v16);
              }

              if (introspector_getCollectionOfScreenSessions_once != -1)
              {
                dispatch_once(&introspector_getCollectionOfScreenSessions_once, &__block_literal_global_115);
              }

              if (introspector_getCollectionOfScreenSessions_coll)
              {
                v19 = *introspector_getCollectionOfScreenSessions_coll;
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 0x40000000;
                block[2] = __APReceiverScreenSessionCreate_block_invoke;
                block[3] = &__block_descriptor_tmp_60;
                block[4] = introspector_getCollectionOfScreenSessions_coll;
                block[5] = cf;
                dispatch_sync(v19, block);
                if (introspector_getCollectionOfScreenSessions_once != -1)
                {
                  dispatch_once(&introspector_getCollectionOfScreenSessions_once, &__block_literal_global_115);
                }
              }

              v26[0] = MEMORY[0x277D85DD0];
              v26[1] = 0x40000000;
              v26[2] = __aprscreen_captureAddIntrospectorCmd_block_invoke;
              v26[3] = &__block_descriptor_tmp_130;
              v26[4] = introspector_getCollectionOfScreenSessions_coll;
              if (aprscreen_captureAddIntrospectorCmd_once != -1)
              {
                dispatch_once(&aprscreen_captureAddIntrospectorCmd_once, v26);
              }

              APTTrafficMetricsCreate();
              if (gLogCategory_APReceiverScreenSession <= 30 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus APReceiverScreenSessionCreate(CFAllocatorRef, APReceiverScreenSinkRef, CFDictionaryRef, APReceiverScreenSessionRef *)", 33554462, "Created screen session %{ptr}\n", cf);
              }

              v20 = 0;
              *a4 = cf;
              return v20;
            }

            LODWORD(v26[0]) = 0;
            v23 = 2;
            FigCFDictionaryGetInt32IfPresent();
            FigCFDictionaryGetInt32IfPresent();
            v15 = ServerSocketOpen();
            if (!v15)
            {
              if (*(DerivedStorage + 186))
              {
                SocketSetP2P();
              }

              if (*(DerivedStorage + 187))
              {
                SocketSetQoS();
              }

              goto LABEL_28;
            }

            v20 = v15;
            goto LABEL_50;
          }

          v20 = 4294895175;
        }
      }
    }

    else
    {
      v20 = 4294895175;
    }
  }

  else
  {
    v20 = 4294895175;
  }

LABEL_50:
  APSLogErrorAt();
LABEL_51:
  if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus APReceiverScreenSessionCreate(CFAllocatorRef, APReceiverScreenSinkRef, CFDictionaryRef, APReceiverScreenSessionRef *)", 33554522, "### APReceiverScreenSessionCreate failed, error: %#m\n", v20);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

uint64_t __aprscreen_captureAddIntrospectorCmd_block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return MEMORY[0x28213C3C0](@"recordScreenSessions");
  }

  return result;
}

void aprscreen_captureIntrospectorCmd(NSObject **a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 < 2)
  {
    goto LABEL_4;
  }

  v8 = *(a4 + 8);
  if (!strcmp(v8, "start"))
  {
    if (a3 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a4 + 16);
    }

    v10 = 1;
  }

  else
  {
    if (strcmp(v8, "stop"))
    {
LABEL_4:
      FPrintF(a2, "Usage: %s start|stop\n", *a4);
      return;
    }

    v9 = 0;
    v10 = 0;
  }

  v11 = *a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __aprscreen_captureIntrospectorCmd_block_invoke;
  block[3] = &__block_descriptor_tmp_143;
  v13 = v10;
  block[4] = a1;
  block[5] = v9;
  block[6] = a2;
  dispatch_sync(v11, block);
}

uint64_t __aprscreen_captureIntrospectorCmd_block_invoke(uint64_t a1)
{
  if (CFSetGetCount(*(*(a1 + 32) + 8)) >= 1)
  {
    return CFSetApplyBlock();
  }

  v3 = *(a1 + 48);

  return FPrintF(v3, "No active screen sessions\n");
}

void __aprscreen_captureIntrospectorCmd_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    cf = 0;
    v4 = aprscreen_captureStart(a2, *(a1 + 32), &cf);
    if (!v4)
    {
      FPrintF(*(a1 + 40), "Starting screen session %{ptr} capture to %@\n", a2, cf);
      CFRelease(cf);
    }
  }

  else
  {
    v4 = aprscreen_captureStop(a2);
  }

  if (v4 > -72122)
  {
    if (v4 == -72121)
    {
      FPrintF(*(a1 + 40), "Screen session %{ptr}: can't request key frames from the sender\n", a2, v7);
      return;
    }

    if (!v4)
    {
      return;
    }
  }

  else
  {
    if (v4 == -72124)
    {
      FPrintF(*(a1 + 40), "Screen session %{ptr}: capture from this sender is not supported\n", a2, v7);
      return;
    }

    if (v4 == -72123)
    {
      if (*(a1 + 48))
      {
        v5 = "capture already";
      }

      else
      {
        v5 = "no capture";
      }

      FPrintF(*(a1 + 40), "Screen session %{ptr}: %s in progress\n", a2, v5);
      return;
    }
  }

  if (*(a1 + 48))
  {
    v6 = "start";
  }

  else
  {
    v6 = "stop";
  }

  FPrintF(*(a1 + 40), "Screen session %{ptr}: %s error: %#m\n", a2, v6, v4);
}

uint64_t aprscreen_captureStart(uint64_t a1, const char *a2, CFStringRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v7 = (DerivedStorage + 168);
  if (*(DerivedStorage + 168))
  {
    if (gLogCategory_APReceiverScreenSession > 90)
    {
      Mutable = 0;
      v12 = 0;
      v13 = 4294895173;
    }

    else
    {
      if (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_captureStart(APReceiverScreenSessionRef, const char *, CFStringRef *)", 33554522, "### Screen session %{ptr}: capture already started\n", a1);
      }

      Mutable = 0;
      v12 = 0;
      v13 = 4294895173;
    }

    goto LABEL_36;
  }

  if (*(DerivedStorage + 344))
  {
    if (!*(DerivedStorage + 706))
    {
      v13 = 4294895172;
      if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_captureStart(APReceiverScreenSessionRef, const char *, CFStringRef *)", 33554522, "### Screen session %{ptr}: capture from this sender not supported\n", a1);
      }

      goto LABEL_33;
    }

    if (!*(DerivedStorage + 152))
    {
      if (gLogCategory_APReceiverScreenSession > 90)
      {
        Mutable = 0;
        v12 = 0;
        v13 = 4294895175;
      }

      else
      {
        if (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_captureStart(APReceiverScreenSessionRef, const char *, CFStringRef *)", 33554522, "### Screen session %{ptr}: can't request key frame from sender\n", a1);
        }

        Mutable = 0;
        v12 = 0;
        v13 = 4294895175;
      }

      goto LABEL_36;
    }
  }

  v8 = *MEMORY[0x277CBECE8];
  FileWriter = APReceiverScreenSinkCreateFileWriter(*MEMORY[0x277CBECE8], (DerivedStorage + 168));
  if (FileWriter)
  {
    v13 = FileWriter;
    APSLogErrorAt();
LABEL_33:
    Mutable = 0;
    v12 = 0;
    goto LABEL_36;
  }

  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (a2)
  {
    v11 = CFStringCreateWithCString(v8, a2, 0x8000100u);
  }

  else
  {
    TempDirectory = FVDUtilsGetTempDirectory();
    v15 = getpid();
    v11 = CFStringCreateWithFormat(v8, 0, @"%@aprcapture-%d-%d.mov", TempDirectory, v15, atomic_fetch_add_explicit(aprscreen_captureStart_count, 1u, memory_order_relaxed) + 1);
  }

  v16 = v11;
  CFDictionarySetValue(Mutable, @"FilePath", v11);
  v17 = *v7;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v18)
  {
    v13 = 4294954514;
    goto LABEL_23;
  }

  v19 = v18(v17, Mutable);
  if (v19)
  {
    v13 = v19;
LABEL_23:
    APSLogErrorAt();
    if (*v7)
    {
      CFRelease(*v7);
      v12 = 0;
      *v7 = 0;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_29;
  }

  *(DerivedStorage + 176) = 0;
  v12 = *(DerivedStorage + 344) != 0;
  v13 = 0;
  if (a3)
  {
    *a3 = v16;
LABEL_36:
    FigSimpleMutexUnlock();
    goto LABEL_37;
  }

LABEL_29:
  FigSimpleMutexUnlock();
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_37:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    v20 = *(DerivedStorage + 152);
    if (v20)
    {
      v20(a1, @"ForceKeyFrameNeeded", 0, *(DerivedStorage + 160));
    }
  }

  return v13;
}

uint64_t aprscreen_captureStop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 168);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v3)
    {
      v3(v2);
    }

    v4 = *(DerivedStorage + 168);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 168) = 0;
    }

    v5 = 0;
    *(DerivedStorage + 176) = 0;
  }

  else
  {
    v5 = 4294895173;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t __introspector_getCollectionOfScreenSessions_block_invoke()
{
  result = IsAppleInternalBuild();
  if (result)
  {
    introspector_getCollectionOfScreenSessions_coll = malloc_type_calloc(1uLL, 0x18uLL, 0x70040EA3A3B56uLL);
    *introspector_getCollectionOfScreenSessions_coll = dispatch_queue_create("CollectionOfScreenSessions", 0);
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    v2 = introspector_getCollectionOfScreenSessions_coll;
    *(introspector_getCollectionOfScreenSessions_coll + 8) = Mutable;
    *(v2 + 16) = "ScreenSessions";

    return MEMORY[0x28213C3C0](@"showScreenSessions");
  }

  return result;
}

uint64_t aprscreen_SetSecurityInfoAES(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 184))
  {
    v5 = 4294895173;
    if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_SetSecurityInfoAES(APReceiverScreenSessionRef, const uint8_t *, const uint8_t *)", 33554522, "### Screen session %{ptr}: can't set AES security info in this state\n", a1);
    }
  }

  else
  {
    if (*(DerivedStorage + 704))
    {
      AES_CTR_Final();
      *(DerivedStorage + 704) = 0;
    }

    v5 = AES_CTR_Init();
    *(DerivedStorage + 704) = v5 == 0;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t aprscreen_SetSecurityInfoChaCha(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a3 == 32)
  {
    v7 = DerivedStorage;
    FigSimpleMutexLock();
    if (*(v7 + 185) || *(v7 + 184))
    {
      v8 = 4294895173;
      if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_SetSecurityInfoChaCha(APReceiverScreenSessionRef, const uint8_t *, size_t)", 33554522, "### Screen session %{ptr}: can't set ChaCha security info in this state\n", a1);
      }
    }

    else
    {
      for (i = 0; i != 304; ++i)
      {
        *(v7 + 352 + i) = 0;
      }

      v8 = 0;
      v10 = a2[1];
      *(v7 + 616) = *a2;
      *(v7 + 632) = v10;
      *(v7 + 352) = 1;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt();
    return 4294895175;
  }

  return v8;
}

uint64_t aprscreen_SetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 184))
  {
    v7 = 4294895173;
    if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_SetEventHandler(APReceiverScreenSessionRef, APReceiverScreenSessionEventHandler, void *)", 33554522, "### Screen session %{ptr}: can't set event handler in this state\n", a1);
    }
  }

  else
  {
    v7 = 0;
    *(DerivedStorage + 152) = a2;
    *(DerivedStorage + 160) = a3;
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t aprscreen_Shutdown(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (introspector_getCollectionOfScreenSessions_once != -1)
  {
    dispatch_once(&introspector_getCollectionOfScreenSessions_once, &__block_literal_global_115);
  }

  if (introspector_getCollectionOfScreenSessions_coll)
  {
    v3 = *introspector_getCollectionOfScreenSessions_coll;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __aprscreen_Shutdown_block_invoke;
    block[3] = &__block_descriptor_tmp_105;
    block[4] = introspector_getCollectionOfScreenSessions_coll;
    block[5] = a1;
    dispatch_sync(v3, block);
  }

  if (*(DerivedStorage + 200))
  {
    FigSimpleMutexLock();
    if (!*(DerivedStorage + 185))
    {
      if (gLogCategory_APReceiverScreenSession <= 30 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_Shutdown(APReceiverScreenSessionRef)", 33554462, "Shutting down screen session %{ptr}\n", a1);
      }

      v4 = *(DerivedStorage + 228);
      if ((v4 & 0x80000000) == 0)
      {
        if (close(v4) && *__error())
        {
          __error();
        }

        *(DerivedStorage + 228) = -1;
      }

      v5 = CMBaseObjectGetDerivedStorage();
      if (*(v5 + 240))
      {
        FigSimpleMutexLock();
        *(v5 + 248) = 1;
        if (*(v5 + 232))
        {
          NetSocket_Cancel();
        }

        FigSimpleMutexUnlock();
      }

      if (*(DerivedStorage + 184))
      {
        dispatch_sync(*(DerivedStorage + 216), &__block_literal_global_109);
      }

      *(DerivedStorage + 185) = 1;
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t aprscreen_Start(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSession <= 30 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_Start(APReceiverScreenSessionRef, CFDictionaryRef)", 33554462, "Starting screen session %{ptr} with options: %@\n", a1, a2);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 185))
  {
    v5 = 4294895173;
    if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_Start(APReceiverScreenSessionRef, CFDictionaryRef)", 33554522, "### Screen session %{ptr} was shut down\n", a1);
    }
  }

  else if (*(DerivedStorage + 184))
  {
    v5 = 4294895173;
    if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_Start(APReceiverScreenSessionRef, CFDictionaryRef)", 33554522, "### Screen session %{ptr} already started\n", a1);
    }
  }

  else
  {
    if (a2)
    {
      CFRetain(a2);
    }

    v6 = *(DerivedStorage + 216);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __aprscreen_Start_block_invoke;
    block[3] = &__block_descriptor_tmp_78;
    block[4] = a1;
    block[5] = a2;
    dispatch_async(v6, block);
    v5 = 0;
    *(DerivedStorage + 184) = 1;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t aprscreen_ntpTimestamp(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v2 = *(DerivedStorage + 136);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *(DerivedStorage + 128);
  if (!v3)
  {
    v2 = 0;
    goto LABEL_6;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v2(v3, &v7);
  v4 = v9;
  v2 = v8;
LABEL_7:
  *(&v6 + 1) = v4;
  *&v6 = v2;
  return v6 >> 32;
}

uint64_t aprscreen_decryptBuffer(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 4))
  {
    return 0;
  }

  v6 = DerivedStorage;
  result = 0;
  if (a2 && a3)
  {
    LODWORD(v8) = *a3;
    if (*(v6 + 352))
    {
      v9 = v8 >= 0x10;
      v8 = (v8 - 16);
      if (!v9)
      {
        return 0;
      }

      v10 = v6 + 648;
      chacha20_poly1305_init_64x64();
      chacha20_poly1305_add_aad();
      v11 = chacha20_poly1305_decrypt();
      if (chacha20_poly1305_verify() + v11 == v8)
      {
        v12 = 0;
        do
        {
          if (++*(v10 + v12))
          {
            v14 = 1;
          }

          else
          {
            v14 = v12 == 7;
          }

          ++v12;
        }

        while (!v14);
        goto LABEL_17;
      }

      APSLogErrorAt();
      result = 4294960534;
      v18 = -6762;
    }

    else
    {
      if (!*(v6 + 704) || (v15 = AES_CTR_Update(), (v18 = v15) == 0))
      {
LABEL_17:
        result = 0;
        *a3 = v8;
        return result;
      }

      v16 = v15;
      APSLogErrorAt();
      result = v16;
    }

    if (gLogCategory_APReceiverScreenSession <= 90)
    {
      if (gLogCategory_APReceiverScreenSession != -1 || (v17 = _LogCategory_Initialize(), result = v18, v17))
      {
        LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_decryptBuffer(APReceiverScreenSessionRef, uint8_t *, uint32_t *)", 33554522, "### Decrypt frame error: %#m\n", result);
        return v18;
      }
    }
  }

  return result;
}

uint64_t aprscreen_SetProperty(uint64_t a1, uint64_t a2)
{
  v2 = 4294895174;
  if (a2)
  {
    v4 = gLogCategory_APReceiverScreenSession;
    if (gLogCategory_APReceiverScreenSession <= 30)
    {
      if (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "%{ptr} set propertyKey: '%@'\n", a1, a2);
      }

      v4 = gLogCategory_APReceiverScreenSession;
    }

    if (v4 <= 50 && (v4 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554482, "Unknown set property: %@\n", a2);
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895175;
  }

  return v2;
}

uint64_t aprscreen_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a4)
  {
    v9 = DerivedStorage;
    if (gLogCategory_APReceiverScreenSession <= 30 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "%{ptr} copy propertyKey: '%@'\n", a1, a2);
    }

    if (CFEqual(a2, @"ListenPort"))
    {
      v10 = CFNumberCreate(a3, kCFNumberSInt32Type, (v9 + 224));
      *a4 = v10;
      if (v10)
      {
        return 0;
      }

      else
      {
        APSLogErrorAt();
        return 4294895176;
      }
    }

    else
    {
      v11 = 4294895174;
      if (gLogCategory_APReceiverScreenSession <= 50 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554482, "Unknown copy property: %@\n", a2);
      }
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895175;
  }

  return v11;
}

CFStringRef aprscreen_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  v15 = 0;
  v3 = *(DerivedStorage + 352);
  v4 = *(DerivedStorage + 704);
  ASPrintF(&v15, "%{ptr}", a1);
  ASPrintF(&v14, "%##a", DerivedStorage + 252);
  v5 = CFGetAllocator(a1);
  v6 = "yes";
  if (*(DerivedStorage + 185))
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if (*(DerivedStorage + 184))
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (*(DerivedStorage + 186))
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  if (*(DerivedStorage + 188))
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (v3)
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  if (!v4)
  {
    v6 = "no";
  }

  v12 = CFStringCreateWithFormat(v5, 0, @"<APReceiverScreenSession %p %s>{\n\tShut down:          %s\n\tStarted:            %s\n\tAllow P2P:          %s\n\tIgnore timestamps:  %s\n\tPeer address:       %s\n\tConfigs processed:  %u\n\tFrames processed:   %u\n\tChaCha used:        %s\n\tAES used:           %s\n\tNetworkClock:      %p\n\tSink:               %@\n}", a1, v15, v7, v8, v9, v10, v14, *(DerivedStorage + 344), *(DerivedStorage + 336), v11, v6, *(DerivedStorage + 128), *(DerivedStorage + 144));
  free(v15);
  free(v14);
  return v12;
}

uint64_t aprscreen_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSession <= 30 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSession, "void aprscreen_Finalize(CMBaseObjectRef)", 33554462, "Finalizing screen session %{ptr}\n", a1);
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v3)
  {
    v3(a1);
  }

  v4 = *(DerivedStorage + 228);
  if ((v4 & 0x80000000) == 0)
  {
    if (close(v4) && *__error())
    {
      __error();
    }

    *(DerivedStorage + 228) = -1;
  }

  if (*(DerivedStorage + 232))
  {
    NetSocket_Delete();
    *(DerivedStorage + 232) = 0;
  }

  v5 = *(DerivedStorage + 144);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 144) = 0;
  }

  v6 = *(DerivedStorage + 168);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 168) = 0;
  }

  v7 = *(DerivedStorage + 136);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 136) = 0;
  }

  v8 = *(DerivedStorage + 128);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 128) = 0;
  }

  v9 = *(DerivedStorage + 712);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 712) = 0;
  }

  if (*(DerivedStorage + 352))
  {
    v10 = 0;
    *(DerivedStorage + 352) = 0;
    do
    {
      *(DerivedStorage + 352 + v10++) = 0;
    }

    while (v10 != 304);
  }

  if (*(DerivedStorage + 704))
  {
    *(DerivedStorage + 704) = 0;
    AES_CTR_Final();
  }

  v11 = *(DerivedStorage + 216);
  if (v11)
  {
    dispatch_release(v11);
    *(DerivedStorage + 216) = 0;
  }

  if (*(DerivedStorage + 240))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 240) = 0;
  }

  if (*(DerivedStorage + 208))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 208) = 0;
  }

  result = *(DerivedStorage + 200);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 200) = 0;
  }

  return result;
}

uint64_t mcProcessor_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    a3 = 4294895345;
    goto LABEL_51;
  }

  v6 = DerivedStorage;
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_SetProperty(CFTypeRef, CFStringRef, CFTypeRef)", 33554462, "%{ptr} set propertyKey: '%@'\n", a2, a3);
  }

  if (CFEqual(a2, @"rp_startedVideo"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 384) = CFGetInt64() != 0;
      return a3;
    }

    a3 = 4294895345;
LABEL_51:
    APSLogErrorAt();
    return a3;
  }

  if (CFEqual(a2, @"rp_clientDeviceID"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 144) = CFGetInt64();
      return a3;
    }

    a3 = 4294895345;
    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_videoSessionID"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 376) = CFGetInt64();
      return a3;
    }

    a3 = 4294895345;
    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_transportDelegate"))
  {
    if (!a3)
    {
      *(v6 + 320) = 0u;
      *(v6 + 336) = 0u;
      *(v6 + 345) = 0u;
      return a3;
    }

    v8 = CFGetTypeID(a3);
    if (v8 == CFDataGetTypeID())
    {
      if (CFDataGetLength(a3) == 40)
      {
        BytePtr = CFDataGetBytePtr(a3);
        a3 = 0;
        v10 = *(BytePtr + 4);
        v11 = *(BytePtr + 1);
        *(v6 + 320) = *BytePtr;
        *(v6 + 336) = v11;
        *(v6 + 352) = v10;
        *(v6 + 360) = 1;
        return a3;
      }

      a3 = 4294895345;
    }

    else
    {
      a3 = 4294895345;
    }

    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_beingReversed"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 385) = CFGetInt64() != 0;
      return a3;
    }

    a3 = 4294895345;
    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_oldClient"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 313) = CFGetInt64() != 0;
      return a3;
    }

    a3 = 4294895345;
    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_sessionUUID"))
  {
    if (!a3)
    {
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      return a3;
    }

    v12 = CFGetTypeID(a3);
    if (v12 == CFDataGetTypeID())
    {
      if (CFDataGetLength(a3) == 16)
      {
        v13 = CFDataGetBytePtr(a3);
        a3 = 0;
        *(v6 + 104) = *v13;
        return a3;
      }

      a3 = 4294895345;
    }

    else
    {
      a3 = 4294895345;
    }

    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_sessionToken"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 96) = CFGetInt64();
      return a3;
    }

    a3 = 4294895345;
    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_purpose"))
  {
    if (a3)
    {
      a3 = CFStringCopyUTF8CString();
      if (!a3)
      {
        *(v6 + 297) = MEMORY[0];
        free(0);
        return a3;
      }
    }

    else
    {
      a3 = 4294895345;
    }

    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_encrypted"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 260) = CFGetInt64() != 0;
      return a3;
    }

    a3 = 4294895345;
    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_authenticated"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 176) = CFGetInt64() != 0;
      return a3;
    }

    a3 = 4294895345;
    goto LABEL_51;
  }

  a3 = 4294895342;
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_SetProperty(CFTypeRef, CFStringRef, CFTypeRef)", 33554482, "unknown property %@\n", a2);
  }

  return a3;
}

void *mcProcessor_CopyProperty(uint64_t a1, const void *a2, int *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    APSLogErrorAt();
    result = 0;
    v10 = -71951;
    goto LABEL_17;
  }

  v6 = DerivedStorage;
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "CFTypeRef mcProcessor_CopyProperty(CFTypeRef, CFStringRef, OSStatus *)", 33554462, "copy propertyKey: '%@'\n", a2);
  }

  if (CFEqual(a2, @"rp_startedVideo"))
  {
    v7 = MEMORY[0x277CBED28];
    v8 = *(v6 + 384);
LABEL_8:
    if (!v8)
    {
      v7 = MEMORY[0x277CBED10];
    }

    result = CFRetain(*v7);
    goto LABEL_16;
  }

  if (!CFEqual(a2, @"rp_clientDeviceID"))
  {
    if (CFEqual(a2, @"rp_videoSessionID"))
    {
      result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (v6 + 376));
      if (!result)
      {
        v10 = -71950;
        goto LABEL_48;
      }
    }

    else
    {
      if (CFEqual(a2, @"rp_beingReversed"))
      {
        v7 = MEMORY[0x277CBED28];
        v8 = *(v6 + 385);
        goto LABEL_8;
      }

      if (CFEqual(a2, @"rp_oldClient"))
      {
        v7 = MEMORY[0x277CBED28];
        v8 = *(v6 + 313);
        goto LABEL_8;
      }

      if (CFEqual(a2, @"rp_sessionUUID"))
      {
        result = CFDataCreate(*MEMORY[0x277CBECE8], (v6 + 104), 16);
        if (!result)
        {
          v10 = -71950;
          goto LABEL_48;
        }
      }

      else if (CFEqual(a2, @"rp_sessionToken"))
      {
        result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, (v6 + 96));
        if (!result)
        {
          v10 = -71950;
          goto LABEL_48;
        }
      }

      else if (CFEqual(a2, @"rp_purpose"))
      {
        result = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (v6 + 297), 0x8000100u);
        if (!result)
        {
          v10 = -71950;
          goto LABEL_48;
        }
      }

      else
      {
        if (CFEqual(a2, @"rp_encrypted"))
        {
          v7 = MEMORY[0x277CBED28];
          v8 = *(v6 + 260);
          goto LABEL_8;
        }

        if (CFEqual(a2, @"rp_authenticated"))
        {
          v7 = MEMORY[0x277CBED28];
          v8 = *(v6 + 176);
          goto LABEL_8;
        }

        if (!CFEqual(a2, @"rp_receiverUI"))
        {
          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "CFTypeRef mcProcessor_CopyProperty(CFTypeRef, CFStringRef, OSStatus *)", 33554482, "unknown property %@\n", a2);
          }

          v10 = -71954;
          goto LABEL_48;
        }

        v11 = *(v6 + 392);
        if (!v11 || (result = CFRetain(v11)) == 0)
        {
          APSLogErrorAt();
          result = 0;
          v10 = -71952;
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, (v6 + 144));
  if (result)
  {
    goto LABEL_16;
  }

  v10 = -71950;
LABEL_48:
  APSLogErrorAt();
  result = 0;
LABEL_17:
  if (a3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t mcProcessor_GetTransportDelegate(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 360))
  {
    v4 = DerivedStorage + 320;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return 0;
}

uint64_t mcProcessor_SetTransportDelegate(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *a2;
    v5 = a2[1];
    *(DerivedStorage + 352) = *(a2 + 4);
    *(DerivedStorage + 320) = v4;
    *(DerivedStorage + 336) = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *(DerivedStorage + 360) = v6;
  return 0;
}

uint64_t mcProcessor_HandleRequest()
{
  v0 = MEMORY[0x28223BE20]();
  v256 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v286 = *MEMORY[0x277D85DE8];
  v7 = 4294895362;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 272) = mach_absolute_time();
  v9 = 4294895361;
  if (v5 <= 1886283374)
  {
    if (v5 <= 1735616869)
    {
      if (v5 <= 1735422065)
      {
        if (v5 != 1633907822)
        {
          if (v5 != 1735222134)
          {
            return v9;
          }

          LODWORD(valuePtr) = 0;
          v284 = 0u;
          v285 = 0u;
          v282 = 0u;
          v283 = 0u;
          v280 = 0u;
          v281 = 0u;
          v278 = 0u;
          v279 = 0u;
          v276 = 0u;
          v277 = 0u;
          v274 = 0u;
          v275 = 0u;
          v272 = 0u;
          v273 = 0u;
          v271 = 0u;
          *theDict = 0u;
          number.value = 0;
          v10 = *(CMBaseObjectGetDerivedStorage() + 392);
          if (v10)
          {
            v11 = *(*(CMBaseObjectGetVTable() + 16) + 112);
            if (v11 && !v11(v10, @"volume", 0, &number))
            {
              CFNumberGetValue(number.value, kCFNumberFloatType, &valuePtr);
              if (gLogCategory_APReceiverRequestProcessorMediaControl <= 20 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessGetVolume(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554452, "Current volume %f\n", *&valuePtr);
              }

              v178 = snprintf(theDict, 0x100uLL, "volume: %f\n", *&valuePtr);
              if (!APReceiverRequestProcessorPrepareBinaryDataResponse(theDict, v178, v256))
              {
                v9 = 0;
LABEL_365:
                value = number.value;
                if (!number.value)
                {
                  return v9;
                }

LABEL_681:
                CFRelease(value);
                return v9;
              }
            }

            APSLogErrorAt();
          }

          else
          {
            APSLogErrorAt();
          }

          v9 = 4294895362;
          goto LABEL_365;
        }

        v56 = CMBaseObjectGetDerivedStorage();
        LODWORD(v260) = 0;
        number.value = 0;
        valuePtr = 0;
        CFDataGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        v58 = TypedValue;
        if (!TypedValue)
        {
          goto LABEL_161;
        }

        CFDataGetBytePtr(TypedValue);
        CFDataGetLength(v58);
        CFDictionaryGetTypeID();
        v59 = CFCreateWithPlistBytes();
        v58 = v59;
        if (!v59)
        {
          APSLogErrorAt();
          v111 = 0;
          v112 = 0;
          v9 = 4294895354;
          goto LABEL_672;
        }

        v60 = CFDictionaryGetValue(v59, @"type");
        v61 = CFDictionaryGetValue(v58, @"params");
        cf1a = v60;
        if (!v60)
        {
          if (!*(v56 + 408))
          {
            goto LABEL_161;
          }

          goto LABEL_596;
        }

        if (!CFEqual(v60, @"playlistInsert") || (CFDictionaryGetTypeID(), !CFDictionaryGetTypedValue()) || (CFDictionaryGetTypeID(), (v62 = CFDictionaryGetTypedValue()) == 0))
        {
LABEL_595:
          if (!*(v56 + 408))
          {
            v235 = CFGetTypeID(cf1a);
            if (v235 == CFStringGetTypeID())
            {
              if (CFEqual(cf1a, @"requestForStreamingKey"))
              {
                cf1a = @"requestForStreamingKey";
              }

              else
              {
                v237 = CFEqual(cf1a, @"unhandledURLResponse");
                v238 = cf1a;
                if (v237)
                {
                  v238 = @"failedURLResponse";
                }

                cf1a = v238;
              }

              if (!v61 || (v239 = CFGetTypeID(v61), v239 == CFDictionaryGetTypeID()))
              {
                v240 = *(v56 + 392);
                if (!v240)
                {
                  APSLogErrorAt();
                  v111 = 0;
                  v112 = 0;
                  goto LABEL_770;
                }

                v241 = *(*(CMBaseObjectGetVTable() + 16) + 104);
                if (!v241)
                {
                  v224 = 4294954514;
                  goto LABEL_640;
                }

                inserted = v241(v240, cf1a, v61, &number);
LABEL_638:
                v224 = inserted;
LABEL_640:
                v112 = 0;
                goto LABEL_657;
              }
            }

LABEL_161:
            APSLogErrorAt();
            v111 = 0;
            v112 = 0;
            v9 = 4294895366;
            goto LABEL_672;
          }

LABEL_596:
          if (FigCFEqual())
          {
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v112 = Mutable;
            if (Mutable)
            {
              CFDictionarySetValue(Mutable, @"kind", @"request");
              CFDictionarySetValue(v112, @"type", @"streamingKey");
              FigCFDictionarySetValue();
              if (v61)
              {
                v220 = CFGetTypeID(v61);
                if (v220 == CFDictionaryGetTypeID())
                {
                  FigCFDictionarySetValueFromKeyInDict();
                }
              }

              v221 = CMBaseObjectGetDerivedStorage();
              v222 = v221;
              theDict[0] = 0;
              if (*(v221 + 384))
              {
                ++*(v221 + 424);
                UInt64 = FigCFNumberCreateUInt64();
                if (UInt64)
                {
                  CFDictionarySetValue(v112, @"messageID", UInt64);
                  v224 = mcProcessor_createAndWrapDataDictionaryForV2(v112, 0, theDict);
                  if (v224)
                  {
                    APSLogErrorAt();
                    v227 = theDict[0];
                  }

                  else
                  {
                    v225 = FigSemaphoreCreate();
                    FigSimpleMutexLock();
                    CFDictionarySetValue(*(v222 + 416), UInt64, v225);
                    FigSimpleMutexUnlock();
                    v226 = *(v222 + 392);
                    v227 = theDict[0];
                    v228 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                    if (v228)
                    {
                      v224 = v228(v226, v227, 0);
                      if (!v224)
                      {
                        v224 = FigSemaphoreWaitRelative();
                        if (v224)
                        {
                          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 90 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
                          {
                            LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_processRequestCreatingResponseV2(APReceiverRequestProcessorRef, CFMutableDictionaryRef, CFDictionaryRef *)", 33554522, "Error waiting on semaphore: %d\n", v224);
                          }

                          FigSimpleMutexLock();
                          CFDictionaryRemoveValue(*(v222 + 416), UInt64);
                          FigSimpleMutexUnlock();
                        }

                        FigSimpleMutexLock();
                        v245 = CFDictionaryGetValue(*(v222 + 440), UInt64);
                        if (v245)
                        {
                          v246 = CFRetain(v245);
                        }

                        else
                        {
                          v246 = 0;
                        }

                        CFDictionaryRemoveValue(*(v222 + 440), UInt64);
                        FigSimpleMutexUnlock();
                        if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_processRequestCreatingResponseV2(APReceiverRequestProcessorRef, CFMutableDictionaryRef, CFDictionaryRef *)", 33554462, "V2 response from dictionary: %@\n", v246);
                        }

                        number.value = v246;
                        goto LABEL_655;
                      }
                    }

                    else
                    {
                      v224 = 4294954514;
                    }

                    APSLogErrorAt();
                  }

LABEL_655:
                  FigSemaphoreDestroy();
                  CFRelease(UInt64);
                  if (v227)
                  {
                    CFRelease(v227);
                  }

                  goto LABEL_657;
                }

                v224 = 4294960568;
              }

              else
              {
                v224 = 4294960587;
              }

              APSLogErrorAt();
              FigSemaphoreDestroy();
LABEL_657:
              LODWORD(v260) = v224;
LABEL_658:
              v247 = cf1a;
              if (!v224 || gLogCategory_APReceiverRequestProcessorMediaControl > 50)
              {
LABEL_667:
                v111 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v111)
                {
                  CFDictionarySetNumber();
                  if (number.value)
                  {
                    CFDictionarySetValue(v111, @"params", number.value);
                  }

                  if (!APReceiverRequestProcessorPreparePlistResponse(v111, v256))
                  {
                    v9 = 0;
                    goto LABEL_672;
                  }

                  APSLogErrorAt();
                  goto LABEL_770;
                }

                APSLogErrorAt();
                goto LABEL_718;
              }

              if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_663;
                }

                v224 = v260;
                v247 = cf1a;
              }

              LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessAction(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "### Action error for %'@: %#m\n", v247, v224);
LABEL_663:
              if (gLogCategory_APReceiverRequestProcessorMediaControl <= 10 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessAction(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554442, "%1@\n", v3);
              }

              goto LABEL_667;
            }

            goto LABEL_789;
          }

          if (FigCFEqual())
          {
            v229 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v112 = v229;
            if (v229)
            {
              CFDictionarySetValue(v229, @"kind", @"request");
              CFDictionarySetValue(v112, @"type", @"unhandledURL");
              FigCFDictionarySetValue();
              if (v61)
              {
                v230 = CFGetTypeID(v61);
                if (v230 == CFDictionaryGetTypeID())
                {
                  FigCFDictionarySetValueFromKeyInDict();
                }
              }

              LODWORD(v260) = mcProcessor_createAndWrapDataDictionaryForV2(v112, 0, &valuePtr);
              if (!v260)
              {
                v231 = *(v56 + 392);
                v232 = valuePtr;
                v233 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                if (!v233)
                {
                  v224 = 4294954514;
                  goto LABEL_657;
                }

                v234 = v233(v231, v232, 0);
LABEL_629:
                v224 = v234;
                goto LABEL_657;
              }

              goto LABEL_791;
            }

            goto LABEL_789;
          }

          if (FigCFEqual())
          {
            CFDictionaryGetTypeID();
            CFDictionaryGetTypedValue();
            v112 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v112)
            {
              CFDictionaryGetTypeID();
              v236 = CFDictionaryGetTypedValue();
              if (!v236)
              {
                APSLogErrorAt();
LABEL_718:
                v111 = 0;
LABEL_770:
                v9 = 4294895362;
                goto LABEL_672;
              }

              CFDictionarySetValue(v112, @"item", v236);
              CFDictionarySetValue(v112, @"type", @"removePlayQueueItem");
              FigCFDictionarySetValueFromKeyInDict();
              LODWORD(v260) = mcProcessor_createAndWrapDataDictionaryForV2(v112, 0, &valuePtr);
              if (!v260)
              {
                v234 = APReceiverUIControllerControlVideoPlayback(*(v56 + 392), valuePtr);
                goto LABEL_629;
              }

LABEL_791:
              APSLogErrorAt();
              v111 = 0;
              goto LABEL_792;
            }

LABEL_789:
            APSLogErrorAt();
            v111 = 0;
            v112 = 0;
LABEL_792:
            v9 = 4294895350;
LABEL_672:
            if (number.value)
            {
              CFRelease(number.value);
            }

            if (v111)
            {
              CFRelease(v111);
            }

            if (v58)
            {
              CFRelease(v58);
            }

            if (v112)
            {
              CFRelease(v112);
            }

            value = valuePtr;
            if (!valuePtr)
            {
              return v9;
            }

            goto LABEL_681;
          }

          if (!FigCFEqual())
          {
            v112 = 0;
            v224 = v260;
            goto LABEL_658;
          }

          CFDictionaryGetTypeID();
          if (CFDictionaryGetTypedValue())
          {
            CFDictionaryGetTypeID();
            v243 = CFDictionaryGetTypedValue();
            if (v243)
            {
              CFDictionaryGetTypeID();
              v244 = CFDictionaryGetTypedValue();
              inserted = mcProcessor_insertPlayQueueItemV2(v6, v243, v244, 0, 0);
              goto LABEL_638;
            }
          }

          goto LABEL_161;
        }

        v63 = v62;
        Int64 = CFDictionaryGetInt64();
        v65 = Int64;
        if (Int64 > 1)
        {
          if (Int64 == 2)
          {
            if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
            {
              v252 = CFDictionaryGetValue(v63, @"uuid");
              if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
              {
                v202 = 0;
              }

              else
              {
                v202 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
              }

              v215 = CFDictionaryGetValue(v63, @"path");
              if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
              {
                v216 = 0;
              }

              else
              {
                v216 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
              }

              LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessAction(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "AirPlay playlist insert of local file FP %'@ (%?@) %?@\n", v252, v202, v215, v216, v63);
            }

            ++*(v56 + 248);
          }

          else
          {
            if (Int64 != 3)
            {
LABEL_458:
              if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessAction(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "AirPlay playlist insert of ? (%d) %@\n", v65, v63);
              }

              goto LABEL_586;
            }

            if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
            {
              v250 = CFDictionaryGetValue(v63, @"uuid");
              if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
              {
                v200 = 0;
              }

              else
              {
                v200 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
              }

              v211 = CFDictionaryGetValue(v63, @"Content-Location");
              if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
              {
                v212 = 0;
              }

              else
              {
                v212 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
              }

              LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessAction(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "AirPlay playlist insert of remote stream FP %'@ (%?@) %?@\n", v250, v200, v211, v212, v63);
            }

            ++*(v56 + 256);
          }
        }

        else
        {
          if (Int64)
          {
            if (Int64 == 1)
            {
              if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
              {
                v249 = CFDictionaryGetValue(v63, @"uuid");
                if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
                {
                  v193 = 0;
                }

                else
                {
                  v193 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
                }

                v209 = CFDictionaryGetValue(v63, @"Content-Location");
                if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
                {
                  v210 = 0;
                }

                else
                {
                  v210 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
                }

                LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessAction(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "AirPlay playlist insert of remote stream %'@ (%?@) %?@\n", v249, v193, v209, v210, v63);
              }

              ++*(v56 + 252);
              goto LABEL_586;
            }

            goto LABEL_458;
          }

          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
          {
            v251 = CFDictionaryGetValue(v63, @"uuid");
            if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
            {
              v201 = 0;
            }

            else
            {
              v201 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
            }

            v213 = CFDictionaryGetValue(v63, @"path");
            if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
            {
              v214 = 0;
            }

            else
            {
              v214 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
            }

            LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessAction(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "AirPlay playlist insert of local file %'@ (%?@) %?@\n", v251, v201, v213, v214, v63);
          }

          ++*(v56 + 244);
        }

LABEL_586:
        v217 = *(v56 + 24);
        if (v217 == 4 || v217 == 128 || v217 == 64)
        {
          CFDictionarySetValue(v63, @"allowP2P", *MEMORY[0x277CBED28]);
        }

        LODWORD(v260) = mcProcessor_addTLSInfo(v6, v63);
        if (v260)
        {
          APSLogErrorAt();
          v111 = 0;
          v112 = 0;
          v9 = 4294895353;
          goto LABEL_672;
        }

        if (*(v56 + 120))
        {
          v218 = CFDictionaryGetInt64() != 0;
        }

        else
        {
          v218 = 0;
        }

        mcProcessor_fixIPAddressURL(v6, v63, v218);
        LODWORD(v260) = APReceiverFairPlayHelperProcessFPInfo(*(v56 + 400), v63, 0);
        if (v260)
        {
          APSLogErrorAt();
          v111 = 0;
          v112 = 0;
          v9 = 4294895352;
          goto LABEL_672;
        }

        goto LABEL_595;
      }

      if (v5 != 1735422066)
      {
        if (v5 != 1735615346)
        {
          return v9;
        }

        v276 = 0u;
        v277 = 0u;
        v274 = 0u;
        v275 = 0u;
        v272 = 0u;
        v273 = 0u;
        v271 = 0u;
        *theDict = 0u;
        number.value = 0;
        v18 = *(CMBaseObjectGetDerivedStorage() + 392);
        if (v18)
        {
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 112);
          if (v19 && !v19(v18, @"playbackInfo", 0, &number))
          {
            CFDictionaryGetDouble();
            v21 = v20;
            CFDictionaryGetDouble();
            v22 = v21;
            v24 = v23;
            if (gLogCategory_APReceiverRequestProcessorMediaControl <= 10 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessGetScrubPosition(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554442, "Current position %f of %f\n", v22, v24);
            }

            v180 = snprintf(theDict, 0x80uLL, "duration: %f\nposition: %f\n", v24, v22);
            if (!APReceiverRequestProcessorPrepareBinaryDataResponse(theDict, v180, v256))
            {
              v9 = 0;
LABEL_370:
              value = number.value;
              if (!number.value)
              {
                return v9;
              }

              goto LABEL_681;
            }
          }

          APSLogErrorAt();
        }

        else
        {
          APSLogErrorAt();
        }

        v9 = 4294895362;
        goto LABEL_370;
      }

      v72 = CMBaseObjectGetDerivedStorage();
      LODWORD(v260) = 0;
      theDict[0] = 0;
      number.value = 0;
      valuePtr = 0;
      CFStringGetTypeID();
      v73 = CFDictionaryGetTypedValue();
      if (!v73)
      {
        APSLogErrorAt();
        v9 = 4294895362;
        goto LABEL_445;
      }

      CFDataGetTypeID();
      v74 = CFDictionaryGetTypedValue();
      v75 = v74;
      if (v74)
      {
        if (CFDataGetLength(v74) >= 1)
        {
          v76 = CFPropertyListCreateWithData(0, v75, 0, 0, 0);
          v75 = v76;
          if (!v76 || (v144 = CFGetTypeID(v76), v144 != CFDictionaryGetTypeID()))
          {
            APSLogErrorAt();
            v77 = 0;
            v7 = 4294895354;
LABEL_440:
            if (v75)
            {
              CFRelease(v75);
            }

            if (v77)
            {
              CFRelease(v77);
            }

            v9 = v7;
LABEL_445:
            if (valuePtr)
            {
              CFRelease(valuePtr);
            }

            if (number.value)
            {
              CFRelease(number.value);
            }

            value = theDict[0];
            if (!theDict[0])
            {
              return v9;
            }

            goto LABEL_681;
          }

          v121 = CFDictionaryGetValue(v75, @"qualifier");
LABEL_250:
          v145 = *(v72 + 392);
          if (!v145)
          {
            APSLogErrorAt();
            goto LABEL_763;
          }

          if (*(v72 + 408))
          {
            v146 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v77 = v146;
            if (v146)
            {
              CFDictionarySetValue(v146, @"kind", @"request");
              CFDictionarySetValue(v77, @"type", @"property");
              CFDictionarySetValue(v77, @"property", v73);
              if (v121 && (v147 = CFGetTypeID(v121), v147 == CFDictionaryGetTypeID()))
              {
                mcProcessor_qualifierToRendererParameters(v121, v77);
                FigCFDictionarySetValueFromKeyInDict();
                FigCFDictionarySetValueFromKeyInDict();
              }

              else
              {
                v148 = FigCFEqual();
                v149 = v121 == 0;
                if (!v148)
                {
                  v149 = 1;
                }

                if (!v149)
                {
                  v150 = CFGetTypeID(v121);
                  if (v150 == CFNumberGetTypeID())
                  {
                    FigCFDictionarySetValue();
                  }
                }
              }

              LODWORD(v260) = mcProcessor_createAndWrapDataDictionaryForV2(v77, 1, &valuePtr);
              if (!v260)
              {
                v151 = *(v72 + 392);
                v152 = valuePtr;
                v153 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                if (v153)
                {
                  v154 = v153(v151, v152, &number);
                  LODWORD(v260) = v154;
                  if (v154 == -6727 || !v154)
                  {
LABEL_373:
                    if (v154)
                    {
                      goto LABEL_738;
                    }

                    v182 = number.value;
                    goto LABEL_438;
                  }
                }

                else
                {
                  v154 = 4294954514;
                  LODWORD(v260) = -12782;
                }

                if (gLogCategory_APReceiverRequestProcessorMediaControl > 50)
                {
                  goto LABEL_738;
                }

                if (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || (v181 = _LogCategory_Initialize(), v154 = v260, v181))
                {
                  LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessGetProxiedProperty(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "### %{ptr} Get property '%@' failed: %#m\n", v6, v73, v154);
                  LODWORD(v154) = v260;
                }

                goto LABEL_373;
              }

              APSLogErrorAt();
            }

            else
            {
              APSLogErrorAt();
              v77 = 0;
            }

            v7 = 4294895350;
            goto LABEL_440;
          }

          v155 = *(*(CMBaseObjectGetVTable() + 16) + 112);
          if (v155)
          {
            v156 = v155(v145, v73, v75, theDict);
            LODWORD(v260) = v156;
            if (v156 == -6727 || !v156)
            {
              goto LABEL_434;
            }
          }

          else
          {
            v156 = 4294954514;
            LODWORD(v260) = -12782;
          }

          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50)
          {
            if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_434;
              }

              v156 = v260;
            }

            LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessGetProxiedProperty(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "### %{ptr} Get property '%@' failed: %#m\n", v6, v73, v156);
          }

LABEL_434:
          v182 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v182)
          {
            CFDictionarySetNumber();
            if (theDict[0])
            {
              CFDictionarySetValue(v182, @"value", theDict[0]);
            }

            v77 = 0;
            number.value = v182;
LABEL_438:
            if (!APReceiverRequestProcessorPreparePlistResponse(v182, v256))
            {
              v7 = 0;
              goto LABEL_440;
            }

LABEL_738:
            APSLogErrorAt();
            goto LABEL_440;
          }

          APSLogErrorAt();
LABEL_763:
          v77 = 0;
          goto LABEL_440;
        }

        v75 = 0;
      }

      v121 = 0;
      goto LABEL_250;
    }

    if (v5 <= 1885435251)
    {
      if (v5 != 1735616870)
      {
        v12 = 1735684980;
LABEL_26:
        if (v5 != v12)
        {
          return v9;
        }

LABEL_277:
        *v256 = 0;
        return v9;
      }

      v66 = CMBaseObjectGetDerivedStorage();
      LODWORD(v259) = 0;
      v67 = CFDictionaryCopyCString();
      v68 = v67;
      if (v67)
      {
        v69 = v67;
      }

      else
      {
        v69 = "00000000-0000-0000-0000-000000000000";
      }

      v70 = strlen(v69);
      v71 = StringToUUID();
      LODWORD(v259) = v71;
      if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30)
      {
        if (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessServerInfo(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "sessionUUID %#U\n", v66 + 104);
        }

        v71 = v259;
      }

      if (v71 && gLogCategory_APReceiverRequestProcessorMediaControl <= 60 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessServerInfo(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554492, "### Bad session UUID: '%.*s', %#m\n", v70, v69);
      }

      v170 = *(*(v66 + 128) + 160);
      v284 = 0u;
      v285 = 0u;
      v282 = 0u;
      v283 = 0u;
      v280 = 0u;
      v281 = 0u;
      v278 = 0u;
      v279 = 0u;
      v276 = 0u;
      v277 = 0u;
      v274 = 0u;
      v275 = 0u;
      v272 = 0u;
      v273 = 0u;
      v271 = 0u;
      *theDict = 0u;
      v171 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v171)
      {
        CFObjectGetPropertyInt64Sync();
        FigCFDictionarySetInt64();
        LODWORD(v260) = *(v170 + 96);
        WORD2(v260) = *(v170 + 100);
        HardwareAddressToCString();
        CFDictionarySetCString();
        valuePtr = 0;
        p_valuePtr = &valuePtr;
        v268 = 0x2020000000;
        v269 = 0;
        v172 = *(v170 + 16);
        number.value = MEMORY[0x277D85DD0];
        *&number.timescale = 3221225472;
        number.epoch = __APReceiverSystemInfoCopyFeatures_block_invoke;
        v263 = &unk_278C60738;
        v264 = &valuePtr;
        v265 = v170;
        dispatch_sync(v172, &number);
        v173 = p_valuePtr[3];
        _Block_object_dispose(&valuePtr, 8);
        if (v173 && APSFeaturesGetLegacyFlags())
        {
          CFDictionarySetInt64();
        }

        LOBYTE(theDict[0]) = 0;
        GetDeviceModelString();
        CFDictionarySetCString();
        if (IsAppleInternalBuild())
        {
          LOBYTE(theDict[0]) = 0;
          GetDeviceInternalModelString();
          CFDictionarySetCString();
        }

        LOBYTE(theDict[0]) = 0;
        GetSystemBuildVersionString();
        CFDictionarySetCString();
        LOBYTE(theDict[0]) = 0;
        HardwareAddressToCString();
        CFDictionarySetCString();
        CFDictionarySetValue(v171, @"protovers", @"1.0");
        APSVersionUtilsGetShortVersionLength();
        CFDictionarySetCString();
        if (IsAppleInternalBuild())
        {
          LOBYTE(theDict[0]) = 0;
          GetDeviceUniqueID();
          CFDictionarySetCString();
        }

        if (v173)
        {
          CFRelease(v173);
        }

        LODWORD(v259) = 0;
        v174 = CFDictionaryCopyCString();
        v175 = v174;
        if (v174)
        {
          v176 = strlen(v174);
        }

        else
        {
          v176 = 0;
        }

        LODWORD(theDict[0]) = 0;
        SNScanF(v69, v176, "%u", theDict);
        LODWORD(theDict[0]) = wmhYOjgJkR();
        CFDictionarySetInt64();
        if (!APReceiverRequestProcessorPrepareXMLPlistResponse(v171, v256))
        {
          v9 = 0;
          if (!v68)
          {
            goto LABEL_341;
          }

          goto LABEL_340;
        }

        APSLogErrorAt();
      }

      else
      {
        APSLogErrorAt();
        LODWORD(v259) = -6728;
        APSLogErrorAt();
        v175 = 0;
      }

      v9 = 4294895362;
      if (!v68)
      {
LABEL_341:
        free(v175);
        if (v171)
        {
          CFRelease(v171);
        }

        return v9;
      }

LABEL_340:
      free(v68);
      goto LABEL_341;
    }

    if (v5 != 1885435252)
    {
      if (v5 != 1886151033)
      {
        return v9;
      }

      cf1 = CMBaseObjectGetDerivedStorage();
      started = 0;
      number.value = 0;
      *&number.timescale = 0;
      v259 = 0;
      v260 = 0;
      v272 = 0u;
      v273 = 0u;
      v271 = 0u;
      *theDict = 0u;
      cf = 0;
      Current = CFAbsoluteTimeGetCurrent();
      gettimeofday(&number, 0);
      v26 = CFDictionaryCopyCString();
      v27 = v26;
      if (v26)
      {
        strlen(v26);
      }

      if (strnicmpx())
      {
        v257 = 0;
        valuePtr = 0;
        v105 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v105)
        {
          APSLogErrorAt();
          v107 = 0;
LABEL_773:
          v137 = 0;
          v9 = v7;
          goto LABEL_356;
        }

        CFStringGetTypeID();
        v106 = CFDictionaryGetTypedValue();
        CFDictionarySetValue(v105, @"Content-Location", v106);
        v107 = CFDictionaryCopyCString();
        if (v107)
        {
          v108 = strlen(v107);
          if (v108 >= 0x40)
          {
            APSLogErrorAt();
LABEL_772:
            v7 = 4294895366;
            goto LABEL_773;
          }
        }

        else
        {
          v108 = 0;
        }

        __memcpy_chk();
        *(theDict + v108) = 0;
        if (sscanf(theDict, "%f", &v257) != 1)
        {
          goto LABEL_771;
        }

        started = CFDictionarySetNumber();
        if (started)
        {
LABEL_734:
          APSLogErrorAt();
          goto LABEL_773;
        }

        free(v107);
        v125 = CFDictionaryCopyCString();
        v107 = v125;
        if (v125)
        {
          strlen(v125);
        }

        if (!started)
        {
          started = Base64DecodeCopy();
          if (started)
          {
            goto LABEL_771;
          }

          CFDictionarySetData();
        }

        started = 0;
      }

      else
      {
        CFDataGetTypeID();
        v109 = CFDictionaryGetTypedValue();
        v110 = v109;
        if (!v109)
        {
          APSLogErrorAt();
          v107 = 0;
          v105 = 0;
          v137 = 0;
          goto LABEL_355;
        }

        CFDataGetBytePtr(v109);
        CFDataGetLength(v110);
        CFDictionaryGetTypeID();
        v105 = CFCreateWithPlistBytes();
        if (!v105)
        {
          APSLogErrorAt();
          v107 = 0;
          v105 = 0;
          goto LABEL_760;
        }

        v107 = 0;
      }

      v126 = CFDictionaryGetValue(v105, @"Start-Estimated-Date");
      v127 = v126;
      v128 = 0.0;
      if (!v126)
      {
        goto LABEL_214;
      }

      v129 = CFGetTypeID(v126);
      if (v129 == CFDateGetTypeID())
      {
        free(v27);
        v130 = CFDictionaryCopyCString();
        v27 = v130;
        if (v130)
        {
          strlen(v130);
          valuePtr = 0;
          p_valuePtr = 0;
          v131 = CFGetTypeID(v127);
          if (v131 == CFDateGetTypeID())
          {
            started = ParseFractionalDateString();
            if (!started)
            {
              v132 = valuePtr;
              v133 = p_valuePtr;
              v134 = number.value;
              timescale = number.timescale;
              v136 = MEMORY[0x23EF199B0](v127);
              v128 = (1000000 * (v134 - v132) - v133 + timescale) / 1000000.0;
              v137 = CFDateCreate(0, v136 + v128);
              if (v137)
              {
                CFDictionarySetValue(v105, @"Start-Estimated-Date", v137);
                goto LABEL_215;
              }

              goto LABEL_734;
            }
          }

LABEL_771:
          APSLogErrorAt();
          goto LABEL_772;
        }

LABEL_214:
        v137 = 0;
LABEL_215:
        v138 = CFDictionaryGetValue(v105, @"Start-Position");
        if (v138)
        {
          v139 = 0;
        }

        else
        {
          v138 = CFDictionaryGetValue(v105, @"Start-Date");
          if (!v138)
          {
            v138 = CFDictionaryGetValue(v105, @"Start-Estimated-Date");
          }

          v139 = 1;
        }

        if (gMediaControlVideoDisabled)
        {
          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessPlay(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "### Video playback disabled\n");
          }

          goto LABEL_355;
        }

        v140 = *(cf1 + 49);
        v141 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v141)
        {
          started = v141(v140, 0, 0);
          if (!started)
          {
            v142 = *(cf1 + 6);
            if (v142 == 4 || v142 == 128 || v142 == 64)
            {
              CFDictionarySetValue(v105, @"allowP2P", *MEMORY[0x277CBED28]);
            }

            if (*(cf1 + 15))
            {
              v143 = CFDictionaryGetInt64() != 0;
            }

            else
            {
              v143 = 0;
            }

            mcProcessor_fixIPAddressURL(v6, v105, v143);
            v194 = CFDictionaryGetValue(v105, @"Content-Location");
            v195 = v194;
            if (v194)
            {
              v196 = CFGetTypeID(v194);
              if (v196 == CFStringGetTypeID())
              {
                if (CFDictionaryGetValue(v105, @"cookies") && !*(cf1 + 176))
                {
                  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 60 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessPlay(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554492, "### Ignoring cookies from unauthenticated client for URL %@\n", v195);
                  }

                  CFDictionaryRemoveValue(v105, @"cookies");
                }

                if (CFDictionaryGetValue(v105, @"purchaseBundle") && !*(cf1 + 176))
                {
                  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 60 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessPlay(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554492, "### Ignoring purchase bundle from unauthenticated client for URL %@\n", v195);
                  }

                  CFDictionaryRemoveValue(v105, @"purchaseBundle");
                }

                if (IsAppleInternalBuild() && CFDictionaryGetInt64())
                {
                  APReceiverSystemInfoClearVideoCache();
                }

                started = mcProcessor_addTLSInfo(v6, v105);
                if (started)
                {
                  APSLogErrorAt();
                  v9 = 4294895353;
                  goto LABEL_356;
                }

                if (gLogCategory_APReceiverRequestProcessorMediaControl > 50 || gLogCategory_APReceiverRequestProcessorMediaControl == -1 && !_LogCategory_Initialize())
                {
LABEL_522:
                  CFDictionarySetInt64();
                  if (*(cf1 + 49))
                  {
                    if (*(cf1 + 408))
                    {
                      started = mcProcessor_startVideoPlaybackV2(v6);
                      if (!started)
                      {
                        started = mcProcessor_insertPlayQueueItemV2(v6, v105, 0, v138, v139);
                        if (!started)
                        {
                          goto LABEL_526;
                        }
                      }
                    }

                    else
                    {
                      v259 = "?";
                      started = APReceiverFairPlayHelperProcessFPInfo(*(cf1 + 50), v105, &v259);
                      if (started)
                      {
                        APSLogErrorAt();
                        v9 = 4294895352;
                        goto LABEL_356;
                      }

                      v208 = APReceiverUIControllerStartVideoPlaybackV1(*(cf1 + 49), *(cf1 + 16), v105, &cf);
                      started = v208;
                      v9 = 4294895359;
                      if (v208 <= 452)
                      {
                        if (v208 == -6721)
                        {
                          goto LABEL_356;
                        }

                        if (!v208)
                        {
                          if (!cf)
                          {
                            APSLogErrorAt();
                            v9 = 4294960534;
                            goto LABEL_356;
                          }

                          *(cf1 + 94) = CFDictionaryGetInt64();
LABEL_526:
                          mcProcessor_addTrafficRegistration(v6, v105);
                          if (!*(cf1 + 384))
                          {
                            mcProcessor_logVideoStarted(v6, v105, *(cf1 + 6), Current);
                          }

                          _mcProcessor_StartKeepAliveTimer(v6);
                          *(cf1 + 384) = 1;
                          AirPlayReceiverServerHoldPowerAssertion(*(cf1 + 16));
                          v9 = 0;
                          if (v256)
                          {
                            *v256 = 0;
                          }

                          goto LABEL_356;
                        }
                      }

                      else if (v208 == 453 || v208 == 200453)
                      {
                        goto LABEL_356;
                      }
                    }
                  }

                  goto LABEL_247;
                }

                v203 = *(cf1 + 6);
                if (v203 <= 15)
                {
                  if (v203 > 3)
                  {
                    if (v203 == 4)
                    {
                      v204 = "AWDL";
                      goto LABEL_512;
                    }

                    if (v203 == 8)
                    {
                      v204 = "USB";
                      goto LABEL_512;
                    }
                  }

                  else
                  {
                    if (v203 == 1)
                    {
                      v204 = "Enet";
                      goto LABEL_512;
                    }

                    if (v203 == 2)
                    {
                      v204 = "WiFi";
                      goto LABEL_512;
                    }
                  }
                }

                else if (v203 <= 63)
                {
                  if (v203 == 16)
                  {
                    v204 = "Direct";
                    goto LABEL_512;
                  }

                  if (v203 == 32)
                  {
                    v204 = "BTLE";
                    goto LABEL_512;
                  }
                }

                else
                {
                  switch(v203)
                  {
                    case 64:
                      v204 = "WFD";
                      goto LABEL_512;
                    case 128:
                      v204 = "NAN";
                      goto LABEL_512;
                    case 256:
                      v204 = "IPsecBT";
                      goto LABEL_512;
                  }
                }

                if (v203 == 512)
                {
                  v204 = "IPSecWiFi";
                }

                else
                {
                  v204 = "?";
                }

LABEL_512:
                v253 = v204;
                v248 = CFDictionaryGetValue(v105, @"uuid");
                v205 = gLogCategory_APReceiverRequestProcessorMediaControl;
                if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
                {
                  v206 = 0;
                }

                else
                {
                  if (gLogCategory_APReceiverRequestProcessorMediaControl != -1)
                  {
                    v206 = 1;
                    goto LABEL_518;
                  }

                  v206 = _LogCategory_Initialize() != 0;
                  v205 = gLogCategory_APReceiverRequestProcessorMediaControl;
                  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 10)
                  {
LABEL_518:
                    v207 = v205 != -1 || _LogCategory_Initialize() != 0;
                    goto LABEL_521;
                  }
                }

                v207 = 0;
LABEL_521:
                LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessPlay(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "AirPlay Video via %s of %'@ (%?@) at %@ (%+f) %s %?@\n", v253, v248, v206, v195, v138, *&v128, 0, v207, v105);
                goto LABEL_522;
              }
            }

            APSLogErrorAt();
LABEL_761:
            v9 = 4294895366;
            goto LABEL_356;
          }
        }

        else
        {
          started = -12782;
        }

LABEL_247:
        APSLogErrorAt();
LABEL_355:
        v9 = 4294895362;
LABEL_356:
        free(v107);
        free(v260);
        free(v27);
        if (v137)
        {
          CFRelease(v137);
        }

        if (v105)
        {
          CFRelease(v105);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        return v9;
      }

      APSLogErrorAt();
LABEL_760:
      v137 = 0;
      goto LABEL_761;
    }

    LODWORD(v259) = 0;
    v78 = CMBaseObjectGetDerivedStorage();
    number.value = 0;
    bzero(theDict, 0x1E000uLL);
    valuePtr = 0;
    v260 = 0;
    CFStringGetTypeID();
    v79 = CFDictionaryGetTypedValue();
    if (!*(v78 + 408))
    {
      v102 = APReceiverFairPlayHelperCopyAuthorizeItemResponseIntoBuffer(*(v78 + 400), v3, v79, theDict, 0x1E000uLL, &number);
      if (v102)
      {
        v9 = v102;
        APSLogErrorAt();
        goto LABEL_431;
      }

      v103 = 0;
      v79 = 0;
      v84 = 0;
      v82 = 0;
      v104 = number.value;
LABEL_420:
      if (APReceiverRequestProcessorPrepareBinaryDataResponse(theDict, v104, v256))
      {
        APSLogErrorAt();
      }

      else
      {
        v7 = 0;
      }

      if (!v82)
      {
        goto LABEL_424;
      }

      goto LABEL_423;
    }

    LODWORD(v259) = mcProcessor_startVideoPlaybackV2(v6);
    if (v259)
    {
      APSLogErrorAt();
      v9 = 4294895362;
      goto LABEL_431;
    }

    v80 = *MEMORY[0x277CBECE8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v3);
    v82 = MutableCopy;
    if (!MutableCopy)
    {
      APSLogErrorAt();
      v9 = 4294895350;
      goto LABEL_431;
    }

    CFDictionarySetValue(MutableCopy, @"type", @"authorizeItem");
    CFDictionarySetValue(v82, @"kind", @"request");
    if (v79)
    {
      v83 = CFDictionaryCreateMutable(v80, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v84 = v83;
      if (!v83)
      {
        APSLogErrorAt();
        v79 = 0;
        v84 = 0;
        goto LABEL_746;
      }

      CFDictionarySetValue(v83, @"uuid", v79);
      CFDictionarySetValue(v82, @"item", v84);
      v79 = CFDictionaryGetValue(v3, @"PIC-Request");
      if (v79)
      {
        v79 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v79 options:0];
        FigCFDictionarySetValue();
      }

      FigCFDictionarySetValueFromKeyInDict();
    }

    else
    {
      v84 = 0;
    }

    LODWORD(v259) = mcProcessor_createAndWrapDataDictionaryForV2(v82, 1, &valuePtr);
    if (!v259)
    {
      v122 = *(v78 + 392);
      v103 = valuePtr;
      v123 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v123)
      {
        if (!v123(v122, v103, &v260))
        {
          v124 = v260;
          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_copyAuthorizeItemResponseV2IntoBuffer(CFDictionaryRef, uint8_t *, size_t, size_t *)", 33554462, "Creating header response for authorizeItem request with params = %@", v124);
          }

          if (v124)
          {
            v197 = CFDictionaryGetValue(v124, @"PIC-Data");
            v198 = CFDictionaryGetValue(v124, @"playerGUID");
            v199 = snprintf(theDict, 0x1E000uLL, "%s: %s\n%s: %s\n", "PIC-Data", [objc_msgSend(v197 base64EncodedStringWithOptions:{0), "cStringUsingEncoding:", 4}], "Player-GUID", objc_msgSend(v198, "cStringUsingEncoding:", 4));
            if (v199 - 122880 >= 0xFFFE2001)
            {
              v104 = v199;
              number.value = v199;
              goto LABEL_420;
            }
          }

          APSLogErrorAt();
          APSLogErrorAt();
LABEL_423:
          CFRelease(v82);
          v103 = valuePtr;
LABEL_424:
          if (v103)
          {
            CFRelease(v103);
          }

          if (v84)
          {
            CFRelease(v84);
          }

          if (v79)
          {
            CFRelease(v79);
          }

          v9 = v7;
LABEL_431:
          v192 = v260;
          if (!v260)
          {
            return v9;
          }

          goto LABEL_399;
        }
      }

      else
      {
        LODWORD(v259) = -12782;
      }

      APSLogErrorAt();
      goto LABEL_423;
    }

    APSLogErrorAt();
LABEL_746:
    v7 = 4294895350;
    goto LABEL_423;
  }

  if (v5 <= 1918989412)
  {
    if (v5 > 1886809963)
    {
      if (v5 == 1886809964)
      {
        v45 = CMBaseObjectGetDerivedStorage();
        LODWORD(theDict[0]) = 0;
        v46 = CFDictionaryGetValue(v3, @"volume");
        if (v46)
        {
          v47 = v46;
          CFNumberGetValue(v46, kCFNumberFloatType, theDict);
          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessSetVolume(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Set Volume to %f\n", *theDict);
          }

          v157 = *(v45 + 392);
          if (v157)
          {
            v158 = *(*(CMBaseObjectGetVTable() + 16) + 120);
            if (v158 && !v158(v157, @"volume", 0, v47))
            {
              v7 = 0;
              *v256 = 0;
            }
          }

          else
          {
            APSLogErrorAt();
          }
        }

        else
        {
          APSLogErrorAt();
          return 4294895366;
        }

        return v7;
      }

      else if (v5 == 1918984564)
      {
        CFDataGetTypeID();
        v13 = CFDictionaryGetTypedValue();
        if (v13 && (v14 = v13, CFDataGetLength(v13) > 0) && (v15 = CFPropertyListCreateWithData(0, v14, 0, 0, 0)) != 0)
        {
          v16 = v15;
          v17 = CFGetTypeID(v15);
          if (v17 == CFDictionaryGetTypeID())
          {
            v9 = mcProcessor_processSetRateInternal(v6, v16, v256);
          }

          else
          {
            APSLogErrorAt();
            v9 = 4294895354;
          }

          CFRelease(v16);
        }

        else
        {
          APSLogErrorAt();
          return 4294895354;
        }
      }

      return v9;
    }

    if (v5 != 1886283375)
    {
      v12 = 1886679924;
      goto LABEL_26;
    }

    v34 = CMBaseObjectGetDerivedStorage();
    v35 = v34;
    LODWORD(v260) = 0;
    theDict[0] = 0;
    number.value = 0;
    valuePtr = 0;
    if (*(v34 + 408))
    {
      v36 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v37 = v36;
      if (!v36 || (CFDictionarySetValue(v36, @"type", @"playbackInfo"), CFDictionarySetValue(v37, @"kind", @"request"), LODWORD(v260) = mcProcessor_createAndWrapDataDictionaryForV2(v37, 1, &number), v260))
      {
        APSLogErrorAt();
        v43 = 0;
        v9 = 4294895350;
        goto LABEL_236;
      }

      v38 = *(v35 + 392);
      v39 = number.value;
      v40 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v40)
      {
        LODWORD(v260) = v40(v38, v39, &valuePtr);
        if (!v260)
        {
          v41 = FigCFDictionaryGetValue();
          if (v41)
          {
            v42 = CFDictionaryCreateMutableCopy(0, 0, v41);
            v43 = v42;
            if (v42)
            {
              mcProcessor_replaceV2RangeKeysWithV1(v42, *MEMORY[0x277CC10A8]);
              mcProcessor_replaceV2RangeKeysWithV1(v43, *MEMORY[0x277CC1070]);
              v44 = APReceiverRequestProcessorPrepareXMLPlistResponse(v43, v256);
LABEL_147:
              LODWORD(v260) = v44;
              if (!v44)
              {
                v9 = 0;
LABEL_236:
                if (theDict[0])
                {
                  CFRelease(theDict[0]);
                }

                if (v37)
                {
                  CFRelease(v37);
                }

                if (number.value)
                {
                  CFRelease(number.value);
                }

                if (valuePtr)
                {
                  CFRelease(valuePtr);
                }

                if (v43)
                {
                  CFRelease(v43);
                }

                return v9;
              }

              APSLogErrorAt();
LABEL_235:
              v9 = 4294895362;
              goto LABEL_236;
            }
          }
        }
      }

      else
      {
        LODWORD(v260) = -12782;
      }

      APSLogErrorAt();
LABEL_234:
      v43 = 0;
      goto LABEL_235;
    }

    v37 = *(v34 + 392);
    if (!v37)
    {
      APSLogErrorAt();
      goto LABEL_234;
    }

    v94 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v94)
    {
      LODWORD(v260) = v94(v37, @"playbackInfo", 0, theDict);
      if (theDict[0])
      {
        CFDictionaryGetDouble();
        if (v260)
        {
LABEL_138:
          v98 = CFDictionaryGetInt64();
          if (!v260)
          {
            *(v35 + 212) = v98;
          }

          CFDictionaryGetDouble();
          if (!v260)
          {
            *(v35 + 216) = v99;
          }

          CFDictionaryGetDouble();
          if (!v260)
          {
            *(v35 + 224) = v100;
          }

          CFDictionaryGetDouble();
          if (!v260)
          {
            *(v35 + 232) = v101;
          }

          v44 = APReceiverRequestProcessorPrepareXMLPlistResponse(theDict[0], v256);
          v37 = 0;
          v43 = 0;
          goto LABEL_147;
        }

        v96 = v95;
        v97 = CFDictionaryCreateMutableCopy(0, 0, theDict[0]);
        if (v97)
        {
          if (theDict[0])
          {
            CFRelease(theDict[0]);
            theDict[0] = 0;
          }

          CFDictionaryRemoveValue(v97, @"playbackLikelyToKeepUpTime");
          if (!*(v35 + 208))
          {
            *(v35 + 208) = ((v96 - *(v35 + 200)) * 1000.0);
            CFDictionarySetInt64();
          }

          theDict[0] = v97;
          goto LABEL_138;
        }
      }
    }

    else
    {
      LODWORD(v260) = -12782;
    }

    APSLogErrorAt();
    v37 = 0;
    goto LABEL_234;
  }

  if (v5 > 1936748657)
  {
    if (v5 != 1936748658)
    {
      if (v5 != 1936941938)
      {
        if (v5 == 1937010544)
        {
          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessStop(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Stop\n");
          }

          if (mcProcessor_handleStop(v6))
          {
            APSLogErrorAt();
            return 4294895362;
          }

          v9 = 0;
          goto LABEL_277;
        }

        return v9;
      }

      v48 = CMBaseObjectGetDerivedStorage();
      LODWORD(v260) = 0;
      valuePtr = 0;
      CFDataGetTypeID();
      v49 = CFDictionaryGetTypedValue();
      v50 = v49;
      if (v49)
      {
        CFDataGetBytePtr(v49);
        CFDataGetLength(v50);
        CFDictionaryGetTypeID();
        v50 = CFCreateWithPlistBytes();
        if (!v50)
        {
          APSLogErrorAt();
          v9 = 4294895366;
          goto LABEL_398;
        }
      }

      v51 = CFDictionaryGetValue(v3, @"position");
      v52 = v51;
      if (!v51)
      {
        APSLogErrorAt();
        v186 = 0;
        v7 = 4294895366;
        goto LABEL_391;
      }

      CFNumberGetValue(v51, kCFNumberFloatType, &v260);
      v53 = gLogCategory_APReceiverRequestProcessorMediaControl;
      if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50)
      {
        if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_378;
          }

          v53 = gLogCategory_APReceiverRequestProcessorMediaControl;
        }

        v54 = *&v260;
        if (v53 > 10)
        {
          v55 = 0;
        }

        else
        {
          v55 = v53 != -1 || _LogCategory_Initialize() != 0;
        }

        LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessSetScrubPosition(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Set position to %f %?@\n", v54, v55, v50);
      }

LABEL_378:
      v183 = *(v48 + 392);
      if (!v183)
      {
        APSLogErrorAt();
        v52 = 0;
        v186 = 0;
        goto LABEL_391;
      }

      if (*(v48 + 408))
      {
        v184 = *MEMORY[0x277CBECE8];
        v185 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v52 = v185;
        if (!v185)
        {
          APSLogErrorAt();
          v52 = 0;
          v186 = 0;
          v7 = 4294895350;
          goto LABEL_391;
        }

        CFDictionarySetValue(v185, @"type", @"seek");
        CFDictionarySetValue(v52, @"kind", @"request");
        theDict[0] = 0;
        theDict[1] = 0;
        *&v271 = 0;
        CMTimeMakeWithSeconds(theDict, *&v260, 10000);
        *&number.value = *theDict;
        number.epoch = v271;
        v186 = CMTimeCopyAsDictionary(&number, v184);
        FigCFDictionarySetValue();
        FigCFDictionarySetValueFromKeyInDict();
        FigCFDictionarySetValue();
        FigCFDictionarySetValueFromKeyInDict();
        if (mcProcessor_createAndWrapDataDictionaryForV2(v52, 0, &valuePtr))
        {
          goto LABEL_390;
        }

        v187 = *(v48 + 392);
        v188 = valuePtr;
        v189 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v189)
        {
          v190 = v189(v187, v188, 0);
        }

        else
        {
          v190 = -12782;
        }
      }

      else
      {
        v191 = *(*(CMBaseObjectGetVTable() + 16) + 120);
        if (!v191)
        {
          v186 = 0;
          v52 = 0;
          goto LABEL_390;
        }

        v190 = v191(v183, @"position", v50, v52);
        v52 = 0;
        v186 = 0;
      }

      if (!v190)
      {
        v7 = 0;
        *v256 = 0;
LABEL_391:
        if (v50)
        {
          CFRelease(v50);
        }

        if (v186)
        {
          CFRelease(v186);
        }

        if (v52)
        {
          CFRelease(v52);
        }

        v9 = v7;
LABEL_398:
        v192 = valuePtr;
        if (!valuePtr)
        {
          return v9;
        }

LABEL_399:
        CFRelease(v192);
        return v9;
      }

LABEL_390:
      APSLogErrorAt();
      goto LABEL_391;
    }

    v85 = CMBaseObjectGetDerivedStorage();
    LODWORD(number.value) = 0;
    theDict[0] = 0;
    CFStringGetTypeID();
    v86 = CFDictionaryGetTypedValue();
    if (v86)
    {
      CFDataGetTypeID();
      v87 = CFDictionaryGetTypedValue();
      v88 = v87;
      if (!v87)
      {
        v91 = 0;
        v92 = 0;
        goto LABEL_186;
      }

      if (CFDataGetLength(v87) < 1)
      {
        v91 = 0;
        v92 = 0;
        v88 = 0;
        goto LABEL_186;
      }

      v89 = CFPropertyListCreateWithData(0, v88, 0, 0, 0);
      v88 = v89;
      if (v89)
      {
        v90 = CFGetTypeID(v89);
        if (v90 != CFDictionaryGetTypeID())
        {
          APSLogErrorAt();
          v160 = 0;
          v9 = 4294895354;
LABEL_349:
          CFRelease(v88);
LABEL_350:
          if (v160)
          {
            CFRelease(v160);
          }

          goto LABEL_352;
        }

        v91 = CFDictionaryGetValue(v88, @"qualifier");
        v92 = CFDictionaryGetValue(v88, @"value");
LABEL_186:
        if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessSetProxiedProperty(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "Setting property %@ with qualifier %@ and value %@\n", v86, v91, v92);
        }

        v159 = *(v85 + 392);
        if (!v159)
        {
          APSLogErrorAt();
          v160 = 0;
          goto LABEL_348;
        }

        if (!*(v85 + 408))
        {
          v166 = *(*(CMBaseObjectGetVTable() + 16) + 120);
          if (v166)
          {
            value_low = v166(v159, v86, v91, v92);
          }

          else
          {
            value_low = 4294954514;
          }

          v160 = 0;
LABEL_315:
          LODWORD(number.value) = value_low;
          if (value_low && gLogCategory_APReceiverRequestProcessorMediaControl <= 50)
          {
            if (gLogCategory_APReceiverRequestProcessorMediaControl != -1)
            {
LABEL_318:
              LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_requestProcessSetProxiedProperty(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "### Set property '%@' failed: %#m\n", v86, value_low);
              goto LABEL_344;
            }

            if (_LogCategory_Initialize())
            {
              value_low = LODWORD(number.value);
              goto LABEL_318;
            }
          }

LABEL_344:
          v177 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v177)
          {
            CFDictionarySetNumber();
            if (APReceiverRequestProcessorPreparePlistResponse(v177, v256))
            {
              APSLogErrorAt();
            }

            else
            {
              v7 = 0;
            }

            CFRelease(v177);
          }

          else
          {
            APSLogErrorAt();
          }

LABEL_348:
          v9 = v7;
          if (!v88)
          {
            goto LABEL_350;
          }

          goto LABEL_349;
        }

        v160 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v160)
        {
          if (v91)
          {
            v161 = CFGetTypeID(v91);
            if (v161 == CFDictionaryGetTypeID())
            {
              mcProcessor_qualifierToRendererParameters(v91, v160);
              FigCFDictionarySetValueFromKeyInDict();
              FigCFDictionarySetValueFromKeyInDict();
            }
          }

          if (FigCFEqual())
          {
            CFDictionarySetValue(v160, @"type", @"seek");
            FigCFDictionarySetValue();
            LODWORD(number.value) = mcProcessor_createAndWrapDataDictionaryForV2(v160, 0, theDict);
            if (!LODWORD(number.value))
            {
              v162 = *(v85 + 392);
              v163 = theDict[0];
              v164 = *(*(CMBaseObjectGetVTable() + 16) + 64);
              if (v164)
              {
LABEL_302:
                value_low = v164(v162, v163, 0);
                goto LABEL_315;
              }

LABEL_312:
              value_low = 4294954514;
              goto LABEL_315;
            }
          }

          else
          {
            CFDictionarySetValue(v160, @"type", @"setProperty");
            CFDictionarySetValue(v160, @"kind", @"request");
            CFDictionarySetValue(v160, @"property", v86);
            FigCFDictionarySetValue();
            v167 = FigCFEqual();
            v168 = v91 == 0;
            if (!v167)
            {
              v168 = 1;
            }

            if (!v168)
            {
              v169 = CFGetTypeID(v91);
              if (v169 == CFNumberGetTypeID())
              {
                FigCFDictionarySetValue();
              }
            }

            FigCFDictionaryGetValue();
            FigCFDictionarySetValue();
            LODWORD(number.value) = mcProcessor_createAndWrapDataDictionaryForV2(v160, 0, theDict);
            if (!LODWORD(number.value))
            {
              v162 = *(v85 + 392);
              v163 = theDict[0];
              v164 = *(*(CMBaseObjectGetVTable() + 16) + 64);
              if (v164)
              {
                goto LABEL_302;
              }

              goto LABEL_312;
            }
          }

          APSLogErrorAt();
        }

        else
        {
          APSLogErrorAt();
          v160 = 0;
        }

        v7 = 4294895350;
        goto LABEL_348;
      }

      APSLogErrorAt();
      v9 = 4294895354;
    }

    else
    {
      APSLogErrorAt();
      v9 = 4294895362;
    }

LABEL_352:
    if (theDict[0])
    {
      CFRelease(theDict[0]);
    }

    return v9;
  }

  if (v5 != 1918989413)
  {
    if (v5 != 1920365171)
    {
      return v9;
    }

    LODWORD(number.value) = 0;
    theDict[0] = 0;
    v28 = CMBaseObjectGetDerivedStorage();
    CFStringGetTypeID();
    v29 = CFDictionaryGetTypedValue();
    if (!v29)
    {
      goto LABEL_714;
    }

    LODWORD(number.value) = CFStringCopyUTF8CString();
    if (!LODWORD(number.value))
    {
      CFStringGetLength(v29);
      if (strnicmpx())
      {
        goto LABEL_714;
      }

      theDict[0] = 0;
      CFStringGetTypeID();
      v30 = CFDictionaryGetTypedValue();
      if (!v30)
      {
        goto LABEL_714;
      }

      LODWORD(number.value) = CFStringCopyUTF8CString();
      if (!LODWORD(number.value))
      {
        CFStringGetLength(v30);
        if (strnicmpx())
        {
          goto LABEL_714;
        }

        theDict[0] = 0;
        CFStringGetTypeID();
        v31 = CFDictionaryGetTypedValue();
        if (!v31)
        {
          goto LABEL_714;
        }

        LODWORD(number.value) = CFStringCopyUTF8CString();
        if (!LODWORD(number.value))
        {
          CFStringGetLength(v31);
          if (strncasestr())
          {
            *(v28 + 313) = 1;
          }

          if (theDict[0])
          {
            free(theDict[0]);
          }

          theDict[0] = 0;
          if (*(v28 + 104) != 0)
          {
            goto LABEL_714;
          }

          CFStringGetTypeID();
          v32 = CFDictionaryGetTypedValue();
          if (v32)
          {
            LODWORD(number.value) = CFStringCopyUTF8CString();
            if (LODWORD(number.value))
            {
              goto LABEL_735;
            }

            CFStringGetLength(v32);
            v33 = StringToUUID();
            LODWORD(number.value) = v33;
            theDict[0] = 0;
          }

          else
          {
            v33 = StringToUUID();
            LODWORD(number.value) = v33;
          }

          if (v33)
          {
            goto LABEL_714;
          }

          CFStringGetTypeID();
          v113 = CFDictionaryGetTypedValue();
          if (!v113)
          {
            *(v28 + 301) = 116;
            *(v28 + 297) = 1852143205;
            Length = 5;
            goto LABEL_169;
          }

          LODWORD(number.value) = CFStringCopyUTF8CString();
          if (!LODWORD(number.value))
          {
            Length = CFStringGetLength(v113);
            if (Length < 0x10)
            {
              memcpy((v28 + 297), theDict[0], Length);
              theDict[0] = 0;
LABEL_169:
              *(v28 + Length + 297) = 0;
              v115 = *(v28 + 128);
              v116 = *(v28 + 32);
              CFObjectSetValue();
              CFRetain(v115);
              dispatch_retain(*(v116 + 120));
              CFRetain(v6);
              v117 = HTTPConnectionDetach();
              if (v117)
              {
                APSLogErrorAt();
              }

              LODWORD(number.value) = v117;
              goto LABEL_172;
            }

LABEL_714:
            APSLogErrorAt();
LABEL_172:
            v118 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (!v118)
            {
              APSLogErrorAt();
              v118 = 0;
              LODWORD(number.value) = -71950;
              goto LABEL_176;
            }

            LODWORD(number.value) = CFDictionarySetInt64();
            if (LODWORD(number.value))
            {
              APSLogErrorAt();
              goto LABEL_176;
            }

            *v256 = v118;
LABEL_175:
            v118 = 0;
LABEL_176:
            v119 = *(v28 + 392);
            v120 = *(*(CMBaseObjectGetVTable() + 16) + 80);
            if (v120)
            {
              v120(v119, 0);
            }

            if (theDict[0])
            {
              free(theDict[0]);
            }

            if (v118)
            {
              CFRelease(v118);
            }

            return LODWORD(number.value);
          }
        }
      }
    }

LABEL_735:
    APSLogErrorAt();
    goto LABEL_175;
  }

  return mcProcessor_processSetRateInternal(v6, v3, v256);
}

uint64_t mcProcessor_addTLSInfo(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 120) || (v3 = DerivedStorage, !CFDictionaryGetInt64()))
  {
    if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_addTLSInfo(APReceiverRequestProcessorRef, CFMutableDictionaryRef)", 33554482, "Not enabling AirPlay Video TLS\n");
    }

    return 0;
  }

  v4 = *(v3 + 120);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v5)
  {
    v6 = v5(v4, "Pair-TLS-PSK", 12, 0, 0, 16, v10);
    if (!v6)
    {
      CFDictionarySetData();
      __s[0] = 0;
      SockAddrToString();
      strlen(__s);
      CFDictionarySetData();
      if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_addTLSInfo(APReceiverRequestProcessorRef, CFMutableDictionaryRef)", 33554482, "Enabling AirPlay Video TLS\n");
      }

      return 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 4294954514;
  }

  APSLogErrorAt();
  return v7;
}

uint64_t mcProcessor_createAndWrapDataDictionaryForV2(uint64_t a1, int a2, CFMutableDictionaryRef *a3)
{
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_createAndWrapDataDictionaryForV2(CFDictionaryRef, Boolean, CFDictionaryRef *)", 33554462, "V2 message: %@\n", a1);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v9 = CFDataFromCFPropertyList;
      APSLogErrorAt();
      CFRelease(v7);
    }

    else
    {
      CFDictionarySetValue(v7, @"data", 0);
      if (a2)
      {
        CFDictionarySetValue(v7, @"PerformSync", *MEMORY[0x277CBED28]);
      }

      v9 = 0;
      *a3 = v7;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895346;
  }

  return v9;
}

uint64_t APReceiverUIControllerControlVideoPlayback(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2, 0);
}

uint64_t mcProcessor_insertPlayQueueItemV2(uint64_t a1, const __CFDictionary *a2, uint64_t a3, CFDictionaryRef a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v11 = Mutable;
  MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, a2);
  if (!MutableCopy)
  {
    APSLogErrorAt();
    CFRelease(v11);
    return 4294960568;
  }

  v13 = MutableCopy;
  if (a4 || CFDictionaryGetValue(a2, @"Start-Position"))
  {
    v14 = 0;
  }

  else if (CFDictionaryGetValue(a2, @"Start-Date") || CFDictionaryGetValue(a2, @"Start-Estimated-Date"))
  {
    v14 = 0;
  }

  else
  {
    Int64 = CFDictionaryGetInt64();
    memset(&v24, 0, sizeof(v24));
    CMTimeMakeWithSeconds(&v24, Int64, 10000);
    v23 = v24;
    v14 = CMTimeCopyAsDictionary(&v23, v9);
  }

  CFDictionaryGetValue(a2, @"uuid");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"Content-Location");
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"HLS-Content-Location");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"textMarkupArray");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"referenceRestrictions");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"outOfBandAlternateTracks");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"inheritURIQueryComponentFromReferencingURI");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"audioOnly");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"tlsPSKEnabled");
  FigCFDictionarySetValue();
  v15 = *MEMORY[0x277CC0F68];
  CFDictionaryGetValue(a2, *MEMORY[0x277CC0F68]);
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"buyParams");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"dsid");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"itemID");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"itemType");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"PD-Info");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"Play-Info");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"fpSessionID");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"mz_at");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"purchasedMediaKind");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"userAgent");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"audioMode");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, *MEMORY[0x277CC0F00]);
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, *MEMORY[0x277CC0F08]);
  FigCFDictionarySetValue();
  CFDictionarySetValue(v11, @"type", @"insertPlayQueueItem");
  FigCFDictionarySetValue();
  if (a3)
  {
    FigCFDictionarySetValue();
  }

  CFDictionaryGetValue(a2, @"tlsPSKEnabled");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, v15);
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, *MEMORY[0x277CC0F38]);
  FigCFDictionarySetValue();
  v16 = mcProcessor_createAndWrapDataDictionaryForV2(v11, 0, &cf);
  if (v16)
  {
    v20 = v16;
    APSLogErrorAt();
  }

  else
  {
    v17 = *(DerivedStorage + 392);
    v18 = cf;
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v19)
    {
      v20 = v19(v17, v18, 0);
    }

    else
    {
      v20 = 4294954514;
    }
  }

  CFRelease(v11);
  if (v14)
  {
    CFRelease(v14);
  }

  CFRelease(v13);
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

uint64_t APReceiverRequestProcessorPreparePlistResponse(const void *a1, CFMutableDictionaryRef *a2)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895345;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895346;
  }

  v5 = Mutable;
  Data = CFPropertyListCreateData(0, a1, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    v9 = 4294895344;
    APSLogErrorAt();
LABEL_14:
    v10 = v5;
    goto LABEL_7;
  }

  v7 = Data;
  CFDataGetBytePtr(Data);
  CFDataGetLength(v7);
  v8 = CFDictionarySetData();
  if (v8)
  {
    v9 = v8;
    goto LABEL_13;
  }

  v9 = CFDictionarySetCString();
  if (v9)
  {
LABEL_13:
    APSLogErrorAt();
    CFRelease(v7);
    goto LABEL_14;
  }

  *a2 = v5;
  v10 = v7;
LABEL_7:
  CFRelease(v10);
  return v9;
}

uint64_t mcProcessor_startVideoPlaybackV2(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 384))
  {
    return 0;
  }

  v3 = DerivedStorage;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v5 = Mutable;
  do
  {
    add_explicit = atomic_fetch_add_explicit(mcProcessor_getUniqueSessionID_sessionID, 1u, memory_order_relaxed);
  }

  while (add_explicit == -1);
  *(v3 + 376) = add_explicit + 1;
  CFDictionarySetInt64();
  CFDictionarySetNumber();
  FigCFDictionarySetValue();
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_startVideoPlaybackV2(APReceiverRequestProcessorRef)", 33554462, "%{ptr} Starting video playback V2 with params: %@\n", a1, v5);
  }

  v7 = *(v3 + 392);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v8)
  {
    v9 = 4294954514;
    goto LABEL_13;
  }

  v9 = v8(v7, mcProcessor_UIControllerVideoPlaybackCallback, mcProcessor_UIControllerCopyTLSInfoCallback, a1, v5);
  if (v9)
  {
LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

  *(v3 + 384) = 1;
LABEL_14:
  CFRelease(v5);
  return v9;
}

uint64_t APReceiverRequestProcessorPrepareBinaryDataResponse(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895346;
  }

  v5 = Mutable;
  v6 = CFDictionarySetData();
  if (v6)
  {
    v7 = v6;
    goto LABEL_8;
  }

  v7 = CFDictionarySetCString();
  if (v7)
  {
LABEL_8:
    APSLogErrorAt();
    CFRelease(v5);
    return v7;
  }

  *a3 = v5;
  return v7;
}

void mcProcessor_qualifierToRendererParameters(uint64_t a1, __CFDictionary *a2)
{
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v4 = Value;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"uuid", v4);
    CFDictionarySetValue(a2, @"item", Mutable);
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }
}

uint64_t APReceiverUIControllerStartVideoPlaybackV1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, mcProcessor_handleMediaControlEvent, a2, a3, a4);
}

void mcProcessor_addTrafficRegistration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v12 = 0;
  cf = 0;
  APTransportGetSharedTransport();
  CMBaseObject = FigTransportGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    PeerMACAddress = -12782;
    goto LABEL_11;
  }

  PeerMACAddress = v4(CMBaseObject, *MEMORY[0x277CE4F30], *MEMORY[0x277CBECE8], &cf);
  if (PeerMACAddress)
  {
LABEL_11:
    APSLogErrorAt();
    goto LABEL_21;
  }

  v5 = *(DerivedStorage + 24);
  if (v5 != 4 && v5 != 128 && v5 != 64)
  {
LABEL_18:
    v10 = *(DerivedStorage + 168);
    v9 = (DerivedStorage + 168);
    v8 = v10;
    if (v10)
    {
      CFRelease(v8);
      *v9 = 0;
    }

    PeerMACAddress = APTransportTrafficRegistrarInfraTransactionCreate();
    if (!PeerMACAddress)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  CFDictionaryGetHardwareAddress();
  if (!PeerMACAddress)
  {
    goto LABEL_14;
  }

  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 40 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_addTrafficRegistration(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554472, "Could not get MAC address from endpoint info, querying it from NDP table\n");
  }

  PeerMACAddress = GetPeerMACAddress();
  if (!PeerMACAddress)
  {
LABEL_14:
    Int64 = CFDictionaryGetInt64();
    v7 = *(DerivedStorage + 160);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 160) = 0;
    }

    PeerMACAddress = APTransportTrafficRegistrarAWDLTrafficRegistrationCreate();
    if (PeerMACAddress)
    {
      goto LABEL_11;
    }

    if ((Int64 & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 60 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_addTrafficRegistration(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554492, "Peer's MAC address is not available. Cannot perform traffic registration.\n");
  }

LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t mcProcessor_logVideoStarted(uint64_t a1, const __CFDictionary *a2, int a3, double a4)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 200) != 0.0)
  {
    return result;
  }

  v8 = result;
  *(result + 244) = 0;
  v9 = (result + 244);
  *(result + 200) = a4;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 252) = 0;
  UUIDGet();
  if (CFDictionaryGetInt64())
  {
    v10 = "Audio";
  }

  else
  {
    v10 = "Video";
  }

  Value = CFDictionaryGetValue(a2, @"Start-Position");
  if (!Value)
  {
    Value = CFDictionaryGetValue(a2, @"Start-Date");
    if (!Value)
    {
      Value = CFDictionaryGetValue(a2, @"Start-Estimated-Date");
    }
  }

  if (Value)
  {
    v12 = Value;
  }

  else
  {
    v12 = @"?";
  }

  result = CFDictionaryGetInt64();
  v13 = result;
  if (result > 1)
  {
    if (result != 2)
    {
      if (result != 3)
      {
        goto LABEL_26;
      }

      if (gLogCategory_APReceiverRequestProcessorMediaControl > 50 || gLogCategory_APReceiverRequestProcessorMediaControl == -1 && (result = _LogCategory_Initialize(), !result))
      {
LABEL_184:
        ++v8[64];
        return result;
      }

      v16 = CFDictionaryGetValue(a2, @"uuid");
      if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
      {
        v17 = 0;
      }

      else
      {
        v17 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
      }

      v25 = CFDictionaryGetValue(a2, @"Content-Location");
      if (a3 <= 15)
      {
        if (a3 > 3)
        {
          if (a3 == 4)
          {
            v26 = "AWDL";
            goto LABEL_178;
          }

          if (a3 == 8)
          {
            v26 = "USB";
            goto LABEL_178;
          }
        }

        else
        {
          if (a3 == 1)
          {
            v26 = "Enet";
            goto LABEL_178;
          }

          if (a3 == 2)
          {
            v26 = "WiFi";
            goto LABEL_178;
          }
        }
      }

      else if (a3 <= 63)
      {
        if (a3 == 16)
        {
          v26 = "Direct";
          goto LABEL_178;
        }

        if (a3 == 32)
        {
          v26 = "BTLE";
          goto LABEL_178;
        }
      }

      else
      {
        switch(a3)
        {
          case 64:
            v26 = "WFD";
            goto LABEL_178;
          case 128:
            v26 = "NAN";
            goto LABEL_178;
          case 256:
            v26 = "IPsecBT";
            goto LABEL_178;
        }
      }

      if (a3 == 512)
      {
        v26 = "IPSecWiFi";
      }

      else
      {
        v26 = "?";
      }

LABEL_178:
      if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
      {
        v32 = 0;
      }

      else
      {
        v32 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
      }

      result = LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_logVideoStarted(APReceiverRequestProcessorRef, CFDictionaryRef, NetTransportType, CFAbsoluteTime)", 33554482, "AirPlay %s of remote stream FP %'@ (%?@), Start=%@, TP=%s %?@\n", v10, v16, v17, v25, v12, v26, v32, a2);
      goto LABEL_184;
    }

    if (gLogCategory_APReceiverRequestProcessorMediaControl > 50 || gLogCategory_APReceiverRequestProcessorMediaControl == -1 && (result = _LogCategory_Initialize(), !result))
    {
LABEL_204:
      ++v8[62];
      return result;
    }

    v21 = CFDictionaryGetValue(a2, @"uuid");
    if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
    {
      v22 = 0;
    }

    else
    {
      v22 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
    }

    v29 = CFDictionaryGetValue(a2, @"path");
    if (a3 <= 15)
    {
      if (a3 > 3)
      {
        if (a3 == 4)
        {
          v30 = "AWDL";
          goto LABEL_198;
        }

        if (a3 == 8)
        {
          v30 = "USB";
          goto LABEL_198;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v30 = "Enet";
          goto LABEL_198;
        }

        if (a3 == 2)
        {
          v30 = "WiFi";
          goto LABEL_198;
        }
      }
    }

    else if (a3 <= 63)
    {
      if (a3 == 16)
      {
        v30 = "Direct";
        goto LABEL_198;
      }

      if (a3 == 32)
      {
        v30 = "BTLE";
        goto LABEL_198;
      }
    }

    else
    {
      switch(a3)
      {
        case 64:
          v30 = "WFD";
          goto LABEL_198;
        case 128:
          v30 = "NAN";
          goto LABEL_198;
        case 256:
          v30 = "IPsecBT";
          goto LABEL_198;
      }
    }

    if (a3 == 512)
    {
      v30 = "IPSecWiFi";
    }

    else
    {
      v30 = "?";
    }

LABEL_198:
    if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
    {
      v34 = 0;
    }

    else
    {
      v34 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
    }

    result = LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_logVideoStarted(APReceiverRequestProcessorRef, CFDictionaryRef, NetTransportType, CFAbsoluteTime)", 33554482, "AirPlay %s of local file FP %'@ (%?@), Start=%@, TP=%s %?@\n", v10, v21, v22, v29, v12, v30, v34, a2);
    goto LABEL_204;
  }

  if (!result)
  {
    if (gLogCategory_APReceiverRequestProcessorMediaControl > 50 || gLogCategory_APReceiverRequestProcessorMediaControl == -1 && (result = _LogCategory_Initialize(), !result))
    {
LABEL_194:
      ++*v9;
      return result;
    }

    v19 = CFDictionaryGetValue(a2, @"uuid");
    if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
    {
      v20 = 0;
    }

    else
    {
      v20 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
    }

    v27 = CFDictionaryGetValue(a2, @"path");
    if (a3 <= 15)
    {
      if (a3 > 3)
      {
        if (a3 == 4)
        {
          v28 = "AWDL";
          goto LABEL_188;
        }

        if (a3 == 8)
        {
          v28 = "USB";
          goto LABEL_188;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v28 = "Enet";
          goto LABEL_188;
        }

        if (a3 == 2)
        {
          v28 = "WiFi";
          goto LABEL_188;
        }
      }
    }

    else if (a3 <= 63)
    {
      if (a3 == 16)
      {
        v28 = "Direct";
        goto LABEL_188;
      }

      if (a3 == 32)
      {
        v28 = "BTLE";
        goto LABEL_188;
      }
    }

    else
    {
      switch(a3)
      {
        case 64:
          v28 = "WFD";
          goto LABEL_188;
        case 128:
          v28 = "NAN";
          goto LABEL_188;
        case 256:
          v28 = "IPsecBT";
          goto LABEL_188;
      }
    }

    if (a3 == 512)
    {
      v28 = "IPSecWiFi";
    }

    else
    {
      v28 = "?";
    }

LABEL_188:
    if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
    {
      v33 = 0;
    }

    else
    {
      v33 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
    }

    result = LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_logVideoStarted(APReceiverRequestProcessorRef, CFDictionaryRef, NetTransportType, CFAbsoluteTime)", 33554482, "AirPlay %s of local file %'@ (%?@), Start=%@, TP=%s %?@\n", v10, v19, v20, v27, v12, v28, v33, a2);
    goto LABEL_194;
  }

  if (result == 1)
  {
    if (gLogCategory_APReceiverRequestProcessorMediaControl > 50 || gLogCategory_APReceiverRequestProcessorMediaControl == -1 && (result = _LogCategory_Initialize(), !result))
    {
LABEL_174:
      ++v8[63];
      return result;
    }

    v14 = CFDictionaryGetValue(a2, @"uuid");
    if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
    {
      v15 = 0;
    }

    else
    {
      v15 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
    }

    v23 = CFDictionaryGetValue(a2, @"Content-Location");
    if (a3 <= 15)
    {
      if (a3 > 3)
      {
        if (a3 == 4)
        {
          v24 = "AWDL";
          goto LABEL_168;
        }

        if (a3 == 8)
        {
          v24 = "USB";
          goto LABEL_168;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v24 = "Enet";
          goto LABEL_168;
        }

        if (a3 == 2)
        {
          v24 = "WiFi";
          goto LABEL_168;
        }
      }
    }

    else if (a3 <= 63)
    {
      if (a3 == 16)
      {
        v24 = "Direct";
        goto LABEL_168;
      }

      if (a3 == 32)
      {
        v24 = "BTLE";
        goto LABEL_168;
      }
    }

    else
    {
      switch(a3)
      {
        case 64:
          v24 = "WFD";
          goto LABEL_168;
        case 128:
          v24 = "NAN";
          goto LABEL_168;
        case 256:
          v24 = "IPsecBT";
          goto LABEL_168;
      }
    }

    if (a3 == 512)
    {
      v24 = "IPSecWiFi";
    }

    else
    {
      v24 = "?";
    }

LABEL_168:
    if (gLogCategory_APReceiverRequestProcessorMediaControl > 10)
    {
      v31 = 0;
    }

    else
    {
      v31 = gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize() != 0;
    }

    result = LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_logVideoStarted(APReceiverRequestProcessorRef, CFDictionaryRef, NetTransportType, CFAbsoluteTime)", 33554482, "AirPlay %s of remote stream %'@ (%?@), Start=%@, TP=%s %?@\n", v10, v14, v15, v23, v12, v24, v31, a2);
    goto LABEL_174;
  }

LABEL_26:
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50)
  {
    if (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || (result = _LogCategory_Initialize(), result))
    {
      if (a3 <= 15)
      {
        if (a3 > 3)
        {
          if (a3 == 4)
          {
            v18 = "AWDL";
            return LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_logVideoStarted(APReceiverRequestProcessorRef, CFDictionaryRef, NetTransportType, CFAbsoluteTime)", 33554482, "AirPlay %s of ? (%d), Start=%@, TP=%s %@\n", v10, v13, v12, v18, a2);
          }

          if (a3 == 8)
          {
            v18 = "USB";
            return LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_logVideoStarted(APReceiverRequestProcessorRef, CFDictionaryRef, NetTransportType, CFAbsoluteTime)", 33554482, "AirPlay %s of ? (%d), Start=%@, TP=%s %@\n", v10, v13, v12, v18, a2);
          }
        }

        else
        {
          if (a3 == 1)
          {
            v18 = "Enet";
            return LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_logVideoStarted(APReceiverRequestProcessorRef, CFDictionaryRef, NetTransportType, CFAbsoluteTime)", 33554482, "AirPlay %s of ? (%d), Start=%@, TP=%s %@\n", v10, v13, v12, v18, a2);
          }

          if (a3 == 2)
          {
            v18 = "WiFi";
            return LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_logVideoStarted(APReceiverRequestProcessorRef, CFDictionaryRef, NetTransportType, CFAbsoluteTime)", 33554482, "AirPlay %s of ? (%d), Start=%@, TP=%s %@\n", v10, v13, v12, v18, a2);
          }
        }
      }

      else if (a3 <= 63)
      {
        if (a3 == 16)
        {
          v18 = "Direct";
          return LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_logVideoStarted(APReceiverRequestProcessorRef, CFDictionaryRef, NetTransportType, CFAbsoluteTime)", 33554482, "AirPlay %s of ? (%d), Start=%@, TP=%s %@\n", v10, v13, v12, v18, a2);
        }

        if (a3 == 32)
        {
          v18 = "BTLE";
          return LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_logVideoStarted(APReceiverRequestProcessorRef, CFDictionaryRef, NetTransportType, CFAbsoluteTime)", 33554482, "AirPlay %s of ? (%d), Start=%@, TP=%s %@\n", v10, v13, v12, v18, a2);
        }
      }

      else
      {
        switch(a3)
        {
          case 64:
            v18 = "WFD";
            return LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_logVideoStarted(APReceiverRequestProcessorRef, CFDictionaryRef, NetTransportType, CFAbsoluteTime)", 33554482, "AirPlay %s of ? (%d), Start=%@, TP=%s %@\n", v10, v13, v12, v18, a2);
          case 128:
            v18 = "NAN";
            return LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_logVideoStarted(APReceiverRequestProcessorRef, CFDictionaryRef, NetTransportType, CFAbsoluteTime)", 33554482, "AirPlay %s of ? (%d), Start=%@, TP=%s %@\n", v10, v13, v12, v18, a2);
          case 256:
            v18 = "IPsecBT";
            return LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_logVideoStarted(APReceiverRequestProcessorRef, CFDictionaryRef, NetTransportType, CFAbsoluteTime)", 33554482, "AirPlay %s of ? (%d), Start=%@, TP=%s %@\n", v10, v13, v12, v18, a2);
        }
      }

      v18 = "?";
      if (a3 == 512)
      {
        v18 = "IPSecWiFi";
      }

      return LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_logVideoStarted(APReceiverRequestProcessorRef, CFDictionaryRef, NetTransportType, CFAbsoluteTime)", 33554482, "AirPlay %s of ? (%d), Start=%@, TP=%s %@\n", v10, v13, v12, v18, a2);
    }
  }

  return result;
}

void _mcProcessor_StartKeepAliveTimer(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 264);
  if (v4)
  {
    dispatch_source_cancel(*(DerivedStorage + 264));
    dispatch_release(v4);
    *(v3 + 264) = 0;
  }

  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v3 + 152));
  *(v3 + 264) = v5;
  if (v5)
  {
    dispatch_set_context(v5, a1);
    dispatch_source_set_event_handler_f(*(v3 + 264), _mcProcessor_KeepAliveTimer);
    v6 = *(v3 + 264);
    v7 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v6, v7, 0x2540BE400uLL, 0x5F5E100uLL);
    v8 = *(v3 + 264);

    dispatch_resume(v8);
  }

  else
  {

    APSLogErrorAt();
  }
}

void mcProcessor_replaceV2RangeKeysWithV1(__CFDictionary *a1, const void *a2)
{
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    Count = CFArrayGetCount(TypedValue);
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v8 = Mutable;
      v18 = a1;
      if (Count < 1)
      {
LABEL_12:
        CFDictionarySetValue(v18, a2, v8);
      }

      else
      {
        v9 = 0;
        v10 = *MEMORY[0x277CC11A0];
        v11 = *MEMORY[0x277CC1198];
        while (1)
        {
          CFDictionaryGetTypeID();
          TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
          if (!TypedValueAtIndex)
          {
            break;
          }

          v13 = TypedValueAtIndex;
          MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, TypedValueAtIndex);
          if (!MutableCopy)
          {
            break;
          }

          v15 = MutableCopy;
          Value = CFDictionaryGetValue(v13, v10);
          if (Value)
          {
            CFDictionarySetValue(v15, @"startCMTime", Value);
            CFDictionaryRemoveValue(v15, v10);
          }

          v17 = CFDictionaryGetValue(v13, v11);
          if (v17)
          {
            CFDictionarySetValue(v15, @"durationCMTime", v17);
            CFDictionaryRemoveValue(v15, v11);
          }

          CFArrayAppendValue(v8, v15);
          CFRelease(v15);
          if (Count == ++v9)
          {
            goto LABEL_12;
          }
        }

        APSLogErrorAt();
      }

      CFRelease(v8);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

uint64_t APReceiverRequestProcessorPrepareXMLPlistResponse(const void *a1, CFMutableDictionaryRef *a2)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895345;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v9 = 4294895346;
    APSLogErrorAt();
    return v9;
  }

  v5 = Mutable;
  Data = CFPropertyListCreateData(0, a1, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (!Data)
  {
    v9 = 4294895346;
    APSLogErrorAt();
LABEL_14:
    v10 = v5;
    goto LABEL_7;
  }

  v7 = Data;
  CFDataGetBytePtr(Data);
  CFDataGetLength(v7);
  v8 = CFDictionarySetData();
  if (v8)
  {
    v9 = v8;
    goto LABEL_13;
  }

  v9 = CFDictionarySetCString();
  if (v9)
  {
LABEL_13:
    APSLogErrorAt();
    CFRelease(v7);
    goto LABEL_14;
  }

  *a2 = v5;
  v10 = v7;
LABEL_7:
  CFRelease(v10);
  return v9;
}

uint64_t mcProcessor_processSetRateInternal(void *a1, const __CFDictionary *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0.0;
  v21 = 0;
  Value = CFDictionaryGetValue(a2, @"rate");
  if (!Value)
  {
    v10 = 4294895362;
LABEL_32:
    APSLogErrorAt();
    return v10;
  }

  v8 = Value;
  v9 = CFGetTypeID(Value);
  if (v9 != CFNumberGetTypeID())
  {
    v10 = 4294895362;
    goto LABEL_32;
  }

  CFNumberGetValue(v8, kCFNumberFloatType, &valuePtr);
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "APSTransportMessageProcessingStatus mcProcessor_processSetRateInternal(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Set Rate to %f\n", valuePtr);
  }

  v10 = 4294895362;
  if (!*(DerivedStorage + 392))
  {
    goto LABEL_32;
  }

  v11 = *(DerivedStorage + 264);
  if (valuePtr == 0.0)
  {
    if (v11)
    {
      dispatch_source_cancel(*(DerivedStorage + 264));
      dispatch_release(v11);
      *(DerivedStorage + 264) = 0;
    }
  }

  else if (!v11)
  {
    _mcProcessor_StartKeepAliveTimer(a1);
  }

  if (!*(DerivedStorage + 408))
  {
    v18 = *(DerivedStorage + 392);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (!v19)
    {
      v15 = 0;
      v13 = 0;
      goto LABEL_24;
    }

    v17 = v19(v18, @"rate", a2, v8);
    v15 = 0;
    v13 = 0;
    goto LABEL_20;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895350;
  }

  v13 = Mutable;
  CFDictionarySetValue(Mutable, @"type", @"setRate");
  FigCFDictionarySetFloat32();
  FigCFDictionarySetValueFromKeyInDict();
  FigCFDictionarySetValueFromKeyInDict();
  FigCFDictionarySetValueFromKeyInDict();
  if (!mcProcessor_createAndWrapDataDictionaryForV2(v13, 0, &v21))
  {
    v14 = *(DerivedStorage + 392);
    v15 = v21;
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v16)
    {
      goto LABEL_24;
    }

    v17 = v16(v14, v15, 0);
LABEL_20:
    if (v17 == -6745)
    {
      goto LABEL_25;
    }

    if (!v17)
    {
      v10 = 0;
      *a3 = 0;
      goto LABEL_25;
    }

LABEL_24:
    APSLogErrorAt();
LABEL_25:
    if (!v13)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  APSLogErrorAt();
LABEL_26:
  CFRelease(v13);
  v15 = v21;
LABEL_27:
  if (v15)
  {
    CFRelease(v15);
  }

  return v10;
}

uint64_t mcProcessor_handleStop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  v3 = *(v2 + 264);
  if (v3)
  {
    v4 = v2;
    dispatch_source_cancel(*(v2 + 264));
    dispatch_release(v3);
    *(v4 + 264) = 0;
  }

  if (!*(DerivedStorage + 384))
  {
    return 0;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  if (*(v5 + 200) != 0.0)
  {
    *(v5 + 200) = 0;
  }

  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    v6 = "V";
    if (!*(DerivedStorage + 384))
    {
      v6 = "v";
    }

    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_handleStop(APReceiverRequestProcessorRef, CFStringRef, void **)", 33554482, "Stopping AirPlay (%s) from %##a\n", v6, DerivedStorage + 40);
  }

  if (*(DerivedStorage + 392))
  {
    if (*(DerivedStorage + 408))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        APSLogErrorAt();
        return 4294960568;
      }

      v9 = Mutable;
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      v10 = *(DerivedStorage + 392);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v11)
      {
        v7 = v11(v10, v9);
        v12 = 0;
      }

      else
      {
        v12 = 0;
        v7 = 4294954514;
      }
    }

    else
    {
      v12 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      v13 = *(DerivedStorage + 392);
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (v14)
      {
        v14(v13, v12);
      }

      v7 = 0;
      v9 = 0;
    }

    v15 = *(DerivedStorage + 128);
    v16 = *(v15 + 204) - 1;
    *(v15 + 204) = v16;
    if (!v16)
    {
      v21 = *(v15 + 208);
      if (v21)
      {
        IOPMAssertionRelease(v21);
        *(v15 + 208) = 0;
        if (gLogCategory_AirPlayReceiverServer <= 40 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverServer, "void AirPlayReceiverServerReleasePowerAssertion(AirPlayReceiverServerRef)", 33554472, "Allowing idle sleep\n");
        }
      }
    }

    v17 = CMBaseObjectGetDerivedStorage();
    v18 = *(v17 + 160);
    if (v18)
    {
      CFRelease(v18);
      *(v17 + 160) = 0;
    }

    v19 = *(v17 + 168);
    if (v19)
    {
      CFRelease(v19);
      *(v17 + 168) = 0;
    }

    *(DerivedStorage + 384) = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    v7 = 4294960534;
    APSLogErrorAt();
  }

  return v7;
}

void _mcProcessor_KeepAliveTimer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = mach_absolute_time() - *(DerivedStorage + 272);
  if (v2 <= SecondsToUpTicks())
  {
    if (v2 > SecondsToUpTicks() && gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
    {
      v4 = UpTicksToSeconds();
      LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void _mcProcessor_KeepAliveTimer(void *)", 33554482, "### No activity from client in %llu seconds\n", v4);
    }
  }

  else
  {
    if (gLogCategory_APReceiverRequestProcessorMediaControl <= 60 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
    {
      v3 = UpTicksToSeconds();
      LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void _mcProcessor_KeepAliveTimer(void *)", 33554492, "### No activity from client in %llu seconds, stopping keep-alive timer\n", v3);
    }

    v5 = *(DerivedStorage + 264);
    if (v5)
    {
      dispatch_source_cancel(*(DerivedStorage + 264));
      dispatch_release(v5);
      *(DerivedStorage + 264) = 0;
    }
  }
}

uint64_t mcProcessor_handleMediaControlEvent(dispatch_queue_t *a1, const void *a2)
{
  result = AirPlayReceiverServerPostMediaControlEvent(a1, a2);
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30)
  {
    v4 = result;
    if (gLogCategory_APReceiverRequestProcessorMediaControl != -1)
    {
      return LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_handleMediaControlEvent(const void *, CFDictionaryRef)", 33554462, "Posted media control event %@. Result: %#m\n", a2, v4);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_handleMediaControlEvent(const void *, CFDictionaryRef)", 33554462, "Posted media control event %@. Result: %#m\n", a2, v4);
    }
  }

  return result;
}

uint64_t mcProcessor_UIControllerCopyTLSInfoCallback(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_UIControllerCopyTLSInfoCallback(const void *, CFDictionaryRef, CFDictionaryRef *)", 33554462, "[%{ptr}] Received copy TLS Info callback with %@.", a1, a2);
  }

  if (!a1)
  {
    APSLogErrorAt();
    return a1;
  }

  a1 = *(DerivedStorage + 120);
  if (a1)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v8 = v7(a1, "Pair-TLS-PSK", 12, 0, 0, 16, v13);
      if (!v8)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v10 = Mutable;
          CFDictionarySetData();
          __s[0] = 0;
          SockAddrToString();
          strlen(__s);
          CFDictionarySetData();
          a1 = 0;
          *a3 = v10;
          return a1;
        }

        APSLogErrorAt();
        a1 = 4294960568;
        goto LABEL_13;
      }

      a1 = v8;
    }

    else
    {
      a1 = 4294954514;
    }

    APSLogErrorAt();
LABEL_13:
    if (gLogCategory_APReceiverRequestProcessorMediaControl <= 90 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_UIControllerCopyTLSInfoCallback(const void *, CFDictionaryRef, CFDictionaryRef *)", 33554522, "Error while responding to TLS request: %i", a1);
    }
  }

  return a1;
}

void mcProcessor_UIControllerVideoPlaybackCallback(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_UIControllerVideoPlaybackCallback(const void *, CFNumberRef, CFDictionaryRef)", 33554462, "[%{ptr}] Received video playback callback with %@ and %@.", a1, a2, a3);
  }

  if (!a1 || !a3 || (Value = CFDictionaryGetValue(a3, @"data")) == 0 || (v8 = *MEMORY[0x277CBECE8], (v9 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], Value, 0, 0, 0)) == 0))
  {

    APSLogErrorAt();
    return;
  }

  v10 = v9;
  CFDictionaryGetValue(v9, @"kind");
  CFDictionaryGetValue(v10, @"type");
  if (!FigCFEqual())
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, v10);
    v14 = CFDictionaryGetValue(v10, @"name");
    CFDictionarySetValue(MutableCopy, @"sessionID", a2);
    CFDictionaryGetValue(MutableCopy, @"type");
    if (FigCFEqual())
    {
      v15 = CFDictionaryGetValue(MutableCopy, @"item");
      if (v15)
      {
        v16 = CFDictionaryGetValue(v15, @"uuid");
      }

      else
      {
        v16 = 0;
      }

      CFDictionarySetValue(MutableCopy, *MEMORY[0x277CC0E68], v14);
      CFDictionaryRemoveValue(MutableCopy, @"kind");
      CFDictionaryRemoveValue(MutableCopy, @"name");
      if (v16)
      {
        CFDictionarySetValue(MutableCopy, @"uuid", v16);
      }

      v22 = CFDictionaryGetValue(v10, @"params");
      if (v22)
      {
        v23 = CFDictionaryCreateMutableCopy(v8, 0, v22);
        v21 = v23;
        if (v23)
        {
          mcProcessor_replaceV2RangeKeysWithV1(v23, *MEMORY[0x277CC10A8]);
          mcProcessor_replaceV2RangeKeysWithV1(v21, *MEMORY[0x277CC1070]);
          CFDictionarySetValue(MutableCopy, @"params", v21);
        }

        goto LABEL_54;
      }

LABEL_53:
      v21 = 0;
LABEL_54:
      if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_UIControllerVideoPlaybackCallback(const void *, CFNumberRef, CFDictionaryRef)", 33554462, "Posting media control event with %@ from %@", MutableCopy, v10);
      }

      AirPlayReceiverServerPostMediaControlEvent(*(DerivedStorage + 128), MutableCopy);
      Mutable = 0;
      v20 = 0;
      goto LABEL_62;
    }

    CFDictionaryGetValue(MutableCopy, @"type");
    if (!FigCFEqual())
    {
      CFDictionaryGetValue(MutableCopy, @"type");
      if (FigCFEqual())
      {
        CFDictionaryRemoveValue(MutableCopy, @"type");
        CFDictionarySetValue(MutableCopy, *MEMORY[0x277CC0E70], *MEMORY[0x277CC0ED0]);
      }

      goto LABEL_53;
    }

    if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_UIControllerVideoPlaybackCallback(const void *, CFNumberRef, CFDictionaryRef)", 33554482, "[%{ptr}] %@ V2 notification is not supported in V1\n", a1, v14);
      }

      Mutable = 0;
      v20 = 0;
      v21 = 0;
LABEL_62:
      CFRelease(v10);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v21)
      {
        v24 = v21;
LABEL_70:

        CFRelease(v24);
        return;
      }

      return;
    }

    v26 = CFDictionaryGetValue(MutableCopy, @"item");
    if (v26 || (v26 = CFDictionaryGetValue(MutableCopy, @"itemCurrent")) != 0)
    {
      v27 = CFDictionaryGetValue(v26, @"uuid");
      CFDictionarySetValue(MutableCopy, @"type", v14);
      if (!v27)
      {
LABEL_87:
        CFDictionaryRemoveValue(MutableCopy, @"kind");
        CFDictionaryRemoveValue(MutableCopy, @"name");
        goto LABEL_53;
      }

      v28 = @"uuid";
      v29 = MutableCopy;
      v30 = v27;
    }

    else
    {
      v28 = @"type";
      v29 = MutableCopy;
      v30 = v14;
    }

    CFDictionarySetValue(v29, v28, v30);
    goto LABEL_87;
  }

  v11 = CFDictionaryGetValue(v10, @"messageID");
  if (!v11 || (v12 = v11, !FigCFEqual()) && (FigSimpleMutexLock(), v17 = CFDictionaryGetValue(*(DerivedStorage + 416), v12), CFDictionaryRemoveValue(*(DerivedStorage + 416), v12), FigSimpleMutexUnlock(), !v17))
  {
    APSLogErrorAt();
    v24 = v10;
    goto LABEL_70;
  }

  if (FigCFEqual())
  {
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      MutableCopy = 0;
      v20 = 0;
      v21 = 0;
      goto LABEL_38;
    }

    v19 = CFDictionaryGetValue(v10, @"key");
    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v19 options:0];
      FigCFDictionarySetValue();
    }

    else
    {
      v20 = 0;
    }

    CFDictionaryGetValue(v10, @"error");
    FigCFDictionarySetValue();
    FigSimpleMutexLock();
    CFDictionarySetValue(*(DerivedStorage + 440), v12, Mutable);
    MutableCopy = 0;
    goto LABEL_36;
  }

  if (FigCFEqual())
  {
    CFDictionaryGetValue(v10, @"info");
    v21 = FigCFDictionaryCreateMutableCopy();
    if (!v21)
    {
      MutableCopy = 0;
      Mutable = 0;
      v20 = 0;
LABEL_38:
      if (FigSemaphoreSignal())
      {
        APSLogErrorAt();
      }

      goto LABEL_62;
    }

    CFDictionaryGetValue(v10, @"error");
    FigCFDictionarySetValue();
    FigSimpleMutexLock();
    FigCFDictionarySetValue();
    MutableCopy = 0;
    Mutable = 0;
    v20 = 0;
LABEL_37:
    FigSimpleMutexUnlock();
    goto LABEL_38;
  }

  if (!FigCFEqual())
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, v10);
    CFDictionaryRemoveValue(MutableCopy, @"type");
    CFDictionaryRemoveValue(MutableCopy, @"kind");
    FigSimpleMutexLock();
    CFDictionarySetValue(*(DerivedStorage + 440), v12, MutableCopy);
    Mutable = 0;
    v20 = 0;
LABEL_36:
    v21 = 0;
    goto LABEL_37;
  }

  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_UIControllerVideoPlaybackCallback(const void *, CFNumberRef, CFDictionaryRef)", 33554462, "Posting media control event with %@", v10);
  }

  v25 = FigCFDictionaryCreateMutableCopy();
  CFDictionarySetValue(v25, @"sessionID", a2);
  AirPlayReceiverServerPostMediaControlEvent(*(DerivedStorage + 128), v25);
  CFRelease(v10);
  if (v25)
  {
    v24 = v25;
    goto LABEL_70;
  }
}

uint64_t mcProcessor_Start(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_Start(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554462, "%{ptr} started\n", a1);
  }

  return 0;
}

uint64_t mcProcessor_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "void mcProcessor_Finalize(CMBaseObjectRef)", 33554482, "%{ptr} finalizing\n", a1);
  }

  v3 = CMBaseObjectGetDerivedStorage();
  *(v3 + 176) = 0;
  APReceiverFairPlayHelperRemoveAllFPSessions(*(v3 + 400));
  *(v3 + 185) = 0;
  *(v3 + 177) = 0;
  v4 = 0uLL;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 225) = 0u;
  *(v3 + 252) = 0;
  *(v3 + 244) = 0;
  *(v3 + 16) = 0;
  *(v3 + 20) = 0;
  *(v3 + 144) = 0;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  v5 = *(v3 + 152);
  if (v5)
  {
    CFRelease(v5);
    v4 = 0uLL;
  }

  *(v3 + 176) = 0;
  *(v3 + 260) = 0;
  *(v3 + 360) = 0;
  *(v3 + 272) = v4;
  *(v3 + 288) = v4;
  *(v3 + 299) = v4;
  v6 = *(v3 + 368);
  if (v6)
  {
    CFRelease(v6);
    *(v3 + 368) = 0;
  }

  *(v3 + 384) = 0;
  *(v3 + 376) = 0;
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorMediaControl, "OSStatus mcProcessor_Stop(APReceiverRequestProcessorRef, CFStringRef)", 33554482, "%{ptr} stopped due to %@\n", a1, 0);
  }

  v7 = *(DerivedStorage + 120);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 392);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 392) = 0;
  }

  v9 = *(DerivedStorage + 400);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 400) = 0;
  }

  v10 = *(DerivedStorage + 128);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 128) = 0;
  }

  v11 = *(DerivedStorage + 136);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 136) = 0;
  }

  v12 = *(DerivedStorage + 416);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 416) = 0;
  }

  v13 = *(DerivedStorage + 440);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 440) = 0;
  }

  v14 = *(DerivedStorage + 160);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 160) = 0;
  }

  v15 = *(DerivedStorage + 168);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 168) = 0;
  }

  FigSimpleMutexDestroy();
  result = FigSimpleMutexDestroy();
  if (*(DerivedStorage + 360))
  {
    v17 = *(DerivedStorage + 336);
    if (v17)
    {
      result = v17(*(DerivedStorage + 320));
    }
  }

  *(DerivedStorage + 360) = 0;
  return result;
}

uint64_t mcProcessor_initOnce()
{
  result = APSSettingsGetInt64();
  gMediaControlVideoDisabled = result != 0;
  return result;
}

uint64_t _APReceiverAudioSessionGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPReceiverAudioSessionTypeID = result;
  return result;
}

void _APReceiverAudioSessionFinalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  APReceiverAudioSessionInvalidate(a1);
  v4 = *(a1 + 296);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 288);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 320);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 32) = 0;
  }

  v8 = *(a1 + 216);
  if (v8)
  {
    APReceiverAudioSessionPlatformFinalize(v8);
    *(a1 + 216) = 0;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v9(*(a1 + 40));
  }

  if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
    if (gLogCategory_APReceiverAudioSession > 50)
    {
      goto LABEL_25;
    }

    if (gLogCategory_APReceiverAudioSession != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APReceiverAudioSession, "void _APReceiverAudioSessionFinalize(CFTypeRef)", 33554482, "%@ Audio session torn down\n", v3);
    }
  }

  if (gLogCategory_APReceiverAudioSession <= 50 && (gLogCategory_APReceiverAudioSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSession, "void _APReceiverAudioSessionFinalize(CFTypeRef)", 33554482, "%@ APReceiverAudioSession finalized\n", v3);
  }

LABEL_25:
  if (v3)
  {

    CFRelease(v3);
  }
}

void APReceiverAudioSessionInvalidate(uint64_t a1)
{
  if (a1 && !atomic_exchange((a1 + 16), 1u))
  {
    v2 = *(a1 + 280);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 280) = 0;
    }

    if (*(a1 + 272))
    {
      FigPKDStopAirPlayReceiverSession();
      *(a1 + 272) = 0;
    }

    v3 = *(a1 + 296);
    if (v3)
    {
      dispatch_source_cancel(v3);
      dispatch_sync_f(*(a1 + 288), 0, audioSession_sinkFlush);
    }

    if (*(a1 + 216))
    {
      APReceiverAudioSessionPlatformControl(a1, @"RASP::FlushAudio");
      APReceiverAudioSessionPlatformControl(a1, @"RASP::StopAudioIO");
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      v4(*(a1 + 40));
    }

    if (gLogCategory_APReceiverAudioSession <= 50 && (gLogCategory_APReceiverAudioSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSession, "void APReceiverAudioSessionInvalidate(APReceiverAudioSessionRef)", 33554482, "%@ Audio session invalidated\n", *(a1 + 32));
    }
  }
}

uint64_t APReceiverAudioSessionCreate(int a1, _OWORD *a2, char *a3, const void *a4, uint64_t *a5)
{
  v179 = *MEMORY[0x277D85DE8];
  mSampleRate_low = 0;
  cf = 0;
  value = 0;
  if (gLogCategory_APReceiverAudioSession <= 30 && (gLogCategory_APReceiverAudioSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSession, "OSStatus APReceiverAudioSessionCreate(APStreamType, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, APReceiverAudioSessionRef *)", 33554462, "Creating audio session\n");
  }

  if (gAPReceiverAudioSessionInitOnce != -1)
  {
    dispatch_once_f(&gAPReceiverAudioSessionInitOnce, 0, _APReceiverAudioSessionGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  v10 = Instance;
  if (!Instance)
  {
    APSLogErrorAt();
    Mutable = 0;
LABEL_383:
    mSampleRate_low = -6728;
    goto LABEL_248;
  }

  *(Instance + 320) = 0;
  *(Instance + 288) = 0u;
  *(Instance + 304) = 0u;
  *(Instance + 256) = 0u;
  *(Instance + 272) = 0u;
  *(Instance + 224) = 0u;
  *(Instance + 240) = 0u;
  *(Instance + 192) = 0u;
  *(Instance + 208) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 176) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  Int64 = CFDictionaryGetInt64();
  v13 = CFDictionaryGetInt64();
  v157 = CFDictionaryGetInt64();
  *(v10 + 20) = v13 != 0;
  *(v10 + 24) = a1;
  *(v10 + 216) = 0;
  v14 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
LABEL_382:
    APSLogErrorAt();
    goto LABEL_383;
  }

  if (Int64)
  {
    v16 = CFStringCreateF(&mSampleRate_low, "RAS ['SCR'-%{ptr}]", v10);
    *(v10 + 32) = v16;
    if (mSampleRate_low)
    {
      goto LABEL_374;
    }
  }

  else if (v13)
  {
    v16 = CFStringCreateF(&mSampleRate_low, "RAS ['MED'-%{ptr}]", v10);
    *(v10 + 32) = v16;
    if (mSampleRate_low)
    {
      goto LABEL_374;
    }
  }

  else
  {
    v16 = CFStringCreateF(&mSampleRate_low, "RAS ['AUX'-%{ptr}]", v10);
    *(v10 + 32) = v16;
    if (mSampleRate_low)
    {
      goto LABEL_374;
    }
  }

  v17 = Int64Ranged;
  CFDictionarySetValue(Mutable, @"RASP::LogPrefix", v16);
  if (!v157)
  {
    v18 = &unk_27E37D000;
    if (v17)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v18 = &unk_27E37D000;
  if (gLogCategory_APReceiverAudioSession <= 50)
  {
    if (gLogCategory_APReceiverAudioSession != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APReceiverAudioSession, "OSStatus APReceiverAudioSessionCreate(APStreamType, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, APReceiverAudioSessionRef *)", 33554482, "%@ using sink\n", *(v10 + 32));
    }

LABEL_23:
    v19 = v18[944];
    if (v19 <= 50 && (v19 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSession, "OSStatus APReceiverAudioSessionCreate(APStreamType, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, APReceiverAudioSessionRef *)", 33554482, "%@ disable platform render\n", *(v10 + 32));
    }
  }

  CFDictionarySetValue(Mutable, @"RASP::DisablePlatformRendering", *MEMORY[0x277CBED28]);
LABEL_28:
  v20 = *(v10 + 24);
  if (v20 == 103)
  {
    if (!v17)
    {
      *&inSourceFormat.mSampleRate = *a3;
      *&inSourceFormat.mFormatFlags = *(a3 + 12);
      mSampleRate_low = audioSession_setupGhostAudio(v10, &inSourceFormat, a4);
      if (mSampleRate_low)
      {
        goto LABEL_374;
      }

      goto LABEL_139;
    }

    if (!v157 && APSSettingsGetIntWithDefault())
    {
      v24 = v18[944];
      if (v24 <= 50 && (v24 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSession, "OSStatus APReceiverAudioSessionCreate(APStreamType, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, APReceiverAudioSessionRef *)", 33554482, "%@ Using Buffered Hose Receiver Session\n", *(v10 + 32));
      }

      if (CFDictionaryGetValue(a4, @"PKDDeviceContext"))
      {
        mSampleRate_low = FigPKDStartAirPlayReceiverSession();
        if (mSampleRate_low)
        {
          goto LABEL_374;
        }

        *(v10 + 272) = 0;
        *(v10 + 280) = CFRetain(0);
      }

      *&inSourceFormat.mSampleRate = *a3;
      *&inSourceFormat.mFormatFlags = *(a3 + 12);
      v21 = APReceiverAudioSessionBufferedHoseCreate(v10, *(v10 + 32), &inSourceFormat, a4, 0, (v10 + 40));
      if (v21)
      {
        goto LABEL_389;
      }

      *(v10 + 56) = APReceiverAudioSessionBufferedHoseInvalidate;
      *(v10 + 64) = 0;
      *(v10 + 72) = APReceiverAudioSessionBufferedHoseStartPacketProcesser;
      *(v10 + 80) = APReceiverAudioSessionBufferedHoseStopPacketProcesser;
      *(v10 + 88) = APReceiverAudioSessionBufferedHoseFlushAudio;
      *(v10 + 96) = APReceiverAudioSessionBufferedHoseGetAnchor;
      *(v10 + 104) = APReceiverAudioSessionBufferedHoseSetRate;
      *(v10 + 112) = APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime;
      *(v10 + 128) = 0;
      *(v10 + 136) = 0;
      *(v10 + 120) = APReceiverAudioSessionBufferedHoseConvertProgressRTPTimeToSecond;
      *(v10 + 144) = APReceiverAudioSessionBufferedHoseCopyProperty;
      *(v10 + 152) = APReceiverAudioSessionBufferedHoseSetProperty;
      *(v10 + 160) = APReceiverAudioSessionBufferedHoseCopyMetrics;
      *(v10 + 168) = APReceiverAudioSessionBufferedHoseLogEnded;
      *(v10 + 176) = 0;
      *(v10 + 48) = APReceiverAudioSessionBufferedHoseFinalize;
      *(v10 + 184) = APReceiverAudioSessionBufferedHoseApplyVolumeFade;
      *(v10 + 192) = 0;
      *(v10 + 200) = 0;
      *(v10 + 208) = 0;
      v41 = v18[944];
      if (v41 <= 50 && (v41 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSession, "OSStatus audioSession_setupBufferedAudioHose(APReceiverAudioSessionRef, sockaddr_ip, CFDictionaryRef, uint64_t)", 33554482, "%@ AudioSession setup for buffered source\n", *(v10 + 32));
      }

      mSampleRate_low = 0;
      CFDictionarySetValue(Mutable, @"RASP::DisablePlatformRendering", *MEMORY[0x277CBED28]);
      goto LABEL_139;
    }

    v154 = *a3;
    v155 = a3[1];
    v178[0] = *(a3 + 2);
    *(v178 + 10) = *(a3 + 12);
    v23 = *(v10 + 32);
    AudioFormatIndex = 0;
    v164 = 0;
    if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554462, "%@ Creating buffered audio session\n", v23);
    }

    v25 = malloc_type_calloc(1uLL, 0x508uLL, 0x10F0040D1BE82D6uLL);
    if (!v25)
    {
      v54 = -72150;
      APSLogErrorAt();
      goto LABEL_393;
    }

    v26 = v25;
    *v25 = v10;
    v25[3] = CFRetain(v23);
    *(v26 + 4) = 103;
    v27 = CFDictionaryGetValue(a4, @"ClientID");
    if (v27)
    {
      v27 = CFRetain(v27);
    }

    v26[4] = v27;
    v28 = APSRTCReportingAgentCreate();
    v165 = v28;
    if (v28)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 90)
      {
        v29 = v28;
        if (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554522, "### %@ Could not create RTCReporting agent. err=%d\n", v26[3], v29);
        }
      }

      v165 = 0;
    }

    else if (gLogCategory_APReceiverAudioSessionBuffered <= 40 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554472, "%@ Created RTCReporting agent. %p\n", v26[3], v26[158]);
    }

    v30 = FigSimpleMutexCreate();
    v26[141] = v30;
    if (!v30)
    {
      APSLogErrorAt();
      v36 = 0;
      v37 = -72150;
      goto LABEL_130;
    }

    v31 = dispatch_queue_create("APReceiverAudioSessionQueue", 0);
    v26[149] = v31;
    if (!v31 || (v32 = dispatch_queue_create("APReceiverAudioSessionLogQueue", 0), (v26[155] = v32) == 0))
    {
      APSLogErrorAt();
      v36 = 0;
      v165 = APSSignalErrorAt();
      goto LABEL_131;
    }

    *(v26 + 1225) = CFDictionaryGetInt64() != 0;
    if (!v165)
    {
      v33 = CFDictionaryGetInt64Ranged();
      if (v33 != 1381257248)
      {
        if (gLogCategory_APReceiverAudioSessionBuffered <= 90 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554522, "### %@ audioConnectionType '%C' not supported\n", v26[3], v33);
        }

        v36 = 0;
        goto LABEL_82;
      }

      if (!CFDictionaryContainsKey(a4, @"MediaDataControl"))
      {
        v36 = 0;
        goto LABEL_106;
      }

      CFArrayGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (!v165)
      {
        Count = CFArrayGetCount(TypedValue);
        if (Count)
        {
          if (Count != 1)
          {
            if (Count != 2)
            {
              v36 = 0;
              v40 = -6705;
              goto LABEL_91;
            }

            CFDataGetTypeID();
            CFArrayGetTypedValueAtIndex();
            if (v165)
            {
LABEL_429:
              APSLogErrorAt();
              v36 = 0;
              goto LABEL_92;
            }
          }

          CFDataGetTypeID();
          CFArrayGetTypedValueAtIndex();
          if (v165)
          {
            goto LABEL_429;
          }
        }

        v38 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v36 = v38;
        if (!v38)
        {
          APSLogErrorAt();
          v40 = -6728;
          goto LABEL_91;
        }

        v39 = MEMORY[0x277CBED28];
        if (!*(v26 + 1225))
        {
          v39 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v38, @"MDC::AllowP2P", *v39);
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        CFDictionarySetValue(v36, @"MDC::Label", @"BUF");
        CFDictionarySetInt64();
        FigCFDictionarySetInt32();
        *&v161 = v10;
        *(&v161 + 1) = audioSession_handleMediaDataControlRequest_6044;
        v162 = 0;
        LOBYTE(inSourceFormat.mSampleRate) = v154;
        BYTE1(inSourceFormat.mSampleRate) = v155;
        *(&inSourceFormat.mSampleRate + 2) = v178[0];
        *&inSourceFormat.mFormatFlags = *(v178 + 10);
        v165 = APMediaDataControlServerCreate(&inSourceFormat, v36, &v161, v26 + 5);
        if (v165)
        {
          goto LABEL_432;
        }

        v18 = &unk_27E37D000;
        if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554482, "%@ Created media data control server [%{ptr}]", v26[3], v26[5]);
        }

LABEL_106:
        *(v26 + 22) = CFDictionaryGetInt64();
        if (v165)
        {
          goto LABEL_426;
        }

        v42 = CFDictionaryGetValue(a4, @"AudioFormat");
        if (v42)
        {
          v43 = CFRetain(v42);
          v26[142] = v43;
          if (v43)
          {
            v44 = (v26 + 142);
            AudioFormatIndex = APSAudioFormatDescriptionGetAudioFormatIndex();
            if (!AudioFormatIndex)
            {
              v165 = APCompressionTypeToAPAudioFormatIndex();
              if (v165)
              {
                goto LABEL_426;
              }

              if (*v44)
              {
                CFRelease(*v44);
                *v44 = 0;
              }

              v165 = APSAudioFormatDescriptionCreateWithAudioFormatIndex();
              if (v165)
              {
                goto LABEL_426;
              }
            }

            ASBD = APSAudioFormatDescriptionGetASBD();
            if (v165)
            {
              goto LABEL_426;
            }

            *(v26 + 27) = APAudioFormatIndexGetBitsPerChannel();
            if (!*(v26 + 22))
            {
              *(v26 + 22) = APAudioFormatIDToAPCompressionType();
            }

            *(v26 + 23) = *ASBD;
            v46 = *(ASBD + 28);
            *(v26 + 24) = v46;
            v47 = *(ASBD + 24);
            *(v26 + 25) = v47;
            if (!v47)
            {
              *(v26 + 25) = (((*(v26 + 27) + 7) & 0xFFFFFFF8) * v46) >> 3;
            }

            v48 = CFDictionaryGetValue(a4, @"NetworkClock");
            v26[143] = v48;
            if (v48)
            {
              v49 = CFGetTypeID(v48);
              if (v49 != APSNetworkClockGetTypeID())
              {
LABEL_423:
                APSLogErrorAt();
LABEL_82:
                v37 = -72151;
LABEL_130:
                v165 = v37;
                goto LABEL_131;
              }

              v50 = v26[143];
              if (v50)
              {
                CFRetain(v50);
              }
            }

            *(v26 + 1152) = CFDictionaryGetInt64() != 0;
            if (v165)
            {
              goto LABEL_426;
            }

            v51 = CFDictionaryGetValue(a4, @"StatsCollector");
            v26[148] = v51;
            if (v51)
            {
              CFRetain(v51);
            }

            APTTrafficMetricsCreate();
            v52 = CFDictionaryGetInt64();
            if (v52)
            {
              v53 = *(v26 + 23) * v52 / 0x3E8u;
              *(v26 + 116) = v53;
            }

            else
            {
              *(v26 + 116) = CFDictionaryGetInt64();
              v53 = CFDictionaryGetInt64();
            }

            *(v26 + 117) = v53;
            *(v26 + 118) = 0;
            *(v26 + 26) = CFDictionaryGetInt64();
            CFDictionaryGetData();
            if (v165 == -6727)
            {
              v165 = 0;
LABEL_263:
              v100 = UpTicksPerSecond();
              v101 = mach_absolute_time();
              v26[86] = SecondsToUpTicks();
              v26[87] = v101;
              v26[100] = 60 * v100;
              v26[99] = v101 + 60 * v100;
              CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
              *(v26 + 216) = CFPreferenceNumberWithDefault;
              v26[102] = v101;
              v26[103] = v100 * CFPreferenceNumberWithDefault;
              v26[104] = v100;
              v26[105] = 0;
              v26[106] = v101;
              v26[107] = 10 * v100;
              inSourceFormat.mSampleRate = 0.0;
              CMBaseObject = APSNetworkClockGetCMBaseObject();
              v104 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v104)
              {
                v104(CMBaseObject, *MEMORY[0x277CEA260], v14, &inSourceFormat);
                mSampleRate = inSourceFormat.mSampleRate;
              }

              else
              {
                mSampleRate = 0.0;
              }

              v106 = *MEMORY[0x277CEA278];
              if (*&mSampleRate == *MEMORY[0x277CEA278])
              {
                v107 = -1;
              }

              else
              {
                v107 = 4410;
                if (mSampleRate != 0.0 && v106)
                {
                  v108 = CFEqual(*&mSampleRate, v106);
                  mSampleRate = inSourceFormat.mSampleRate;
                  if (v108)
                  {
                    v107 = -1;
                  }

                  else
                  {
                    v107 = 4410;
                  }
                }
              }

              if (mSampleRate != 0.0)
              {
                CFRelease(*&mSampleRate);
              }

              *(v26 + 219) = v107;
              v109 = FigGetCFPreferenceNumberWithDefault();
              *(v26 + 219) = v109;
              if (gLogCategory_APReceiverAudioSessionBuffered <= 50)
              {
                if (gLogCategory_APReceiverAudioSessionBuffered == -1)
                {
                  if (!_LogCategory_Initialize())
                  {
                    goto LABEL_279;
                  }

                  v109 = *(v26 + 219);
                }

                LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554482, "%@ Setting buffered audio session timeout secs to %d; rtpOffsetThreshold: %u\n", v26[3], *(v26 + 216), v109);
              }

LABEL_279:
              *(v26 + 1224) = 1;
              if (!v165)
              {
                v110 = FigGetCFPreferenceNumberWithDefault();
                if (v110)
                {
                  v111 = v110;
                  v112 = ServerSocketOpen();
                  v165 = v112;
                  if (gLogCategory_APReceiverAudioSessionBuffered <= 50)
                  {
                    if (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize())
                    {
                      LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554482, "%@ Overriding buffered audio session TCP receive buffer size: %d\n", v26[3], v111);
                    }

                    v112 = v165;
                  }
                }

                else
                {
                  v112 = ServerSocketOpen();
                  v165 = v112;
                }

                if (!v112)
                {
                  if (*(v26 + 1225))
                  {
                    SocketSetP2P();
                  }

                  v113 = CFDictionaryGetInt64();
                  *(v26 + 1226) = v113 != 0;
                  if (!v165)
                  {
                    if (!v113)
                    {
                      SocketSetQoS();
                    }

                    v165 = OpenSelfConnectedLoopbackSocket();
                    if (!v165)
                    {
                      v114 = FigGetCFPreferenceNumberWithDefault();
                      if (v114)
                      {
                        *(v26 + 119) = v114;
                        if (gLogCategory_APReceiverAudioSessionBuffered > 50)
                        {
                          goto LABEL_304;
                        }

                        if (gLogCategory_APReceiverAudioSessionBuffered != -1)
                        {
                          goto LABEL_297;
                        }

                        if (_LogCategory_Initialize())
                        {
                          v114 = *(v26 + 119);
LABEL_297:
                          LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554482, "%@ Overriding buffered audio session node count: %d\n", v26[3], v114);
                        }
                      }

                      else
                      {
                        v115 = *(v26 + 22);
                        if (v115 == 8 || v115 == 4)
                        {
                          v116 = 5200;
                        }

                        else
                        {
                          v116 = 15034;
                        }

                        *(v26 + 119) = v116;
                      }

LABEL_304:
                      v117 = FigGetCFPreferenceNumberWithDefault();
                      if (v117)
                      {
                        v118 = v117;
                        v26[60] = v117;
                        if (gLogCategory_APReceiverAudioSessionBuffered > 50)
                        {
                          goto LABEL_310;
                        }

                        if (gLogCategory_APReceiverAudioSessionBuffered != -1)
                        {
                          goto LABEL_307;
                        }

                        if (_LogCategory_Initialize())
                        {
                          v118 = v26[60];
LABEL_307:
                          LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554482, "%@ Overriding buffered audio session maxPacketSize: %d\n", v26[3], v118);
                        }
                      }

                      else
                      {
                        v26[60] = 0xFFFFLL;
                      }

LABEL_310:
                      v119 = malloc_type_calloc(1uLL, v26[60], 0x100004077774924uLL);
                      v26[61] = v119;
                      if (!v119)
                      {
                        goto LABEL_601;
                      }

                      v120 = FigGetCFPreferenceNumberWithDefault();
                      if (v120)
                      {
                        v121 = v120;
                        v26[62] = v120;
                        if (gLogCategory_APReceiverAudioSessionBuffered > 50)
                        {
                          goto LABEL_321;
                        }

                        if (gLogCategory_APReceiverAudioSessionBuffered != -1)
                        {
                          goto LABEL_314;
                        }

                        if (_LogCategory_Initialize())
                        {
                          v121 = v26[62];
LABEL_314:
                          LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554482, "%@ Overriding buffered audio audioBufferSize: %d\n", v26[3], v121);
                        }
                      }

                      else
                      {
                        v122 = *(v26 + 22);
                        if (v122 == 8 || v122 == 4)
                        {
                          v123 = 5000000;
                        }

                        else
                        {
                          v123 = 21168000;
                        }

                        v26[62] = v123;
                      }

LABEL_321:
                      v26[63] = 12;
                      APSAllocatorGetDefaultAirPlayMallocZone();
                      v165 = APSContiguousAllocatorCreate();
                      if (!v165)
                      {
                        v124 = malloc_type_malloc(*(v26 + 119) << 6, 0x10700404D6600FEuLL);
                        v26[64] = v124;
                        if (v124)
                        {
                          v125 = (*(v26 + 119) - 1);
                          if (*(v26 + 119) != 1)
                          {
                            v126 = (v125 + 1) & 0x1FFFFFFFELL;
                            v127 = vdupq_n_s64(v125 - 1);
                            v128 = xmmword_23EAA1810;
                            v129 = v124 + 8;
                            v130 = vdupq_n_s64(1uLL);
                            v131 = vdupq_n_s64(2uLL);
                            do
                            {
                              v132 = vmovn_s64(vcgeq_u64(v127, v128));
                              v133 = vaddq_s64(v128, v130);
                              if (v132.i8[0])
                              {
                                *(v129 - 8) = &v124[8 * v133.i64[0]];
                              }

                              if (v132.i8[4])
                              {
                                *v129 = &v124[8 * v133.i64[1]];
                              }

                              v128 = vaddq_s64(v128, v131);
                              v129 += 16;
                              v126 -= 2;
                            }

                            while (v126);
                          }

                          v124[8 * v125] = 0;
                          v26[74] = v124;
                          *(v26 + 150) = 0;
                          v26[66] = v26 + 65;
                          v26[65] = v26 + 65;
                          v26[73] = v26 + 65;
                          v134 = FigGetCFPreferenceNumberWithDefault();
                          if (v134)
                          {
                            BufferSize = v134;
                            if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
                            {
                              LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554482, "%@ Overriding buffered audio session decodeBufferSize: %d\n", v26[3], BufferSize);
                            }
                          }

                          else
                          {
                            BufferSize = APCompressionTypeGetBufferSize();
                            if (!BufferSize)
                            {
                              APSLogErrorAt();
                              v40 = -6735;
                              goto LABEL_91;
                            }
                          }

                          if (*(v26 + 22) == 1)
                          {
                            goto LABEL_343;
                          }

                          memset(&inSourceFormat, 0, sizeof(inSourceFormat));
                          v136 = APCompressionTypeFillStreamDescription();
                          if (v136)
                          {
                            v151 = v136;
                          }

                          else
                          {
                            LODWORD(v137) = *(v26 + 23);
                            inDestinationFormat.mSampleRate = v137;
                            *&inDestinationFormat.mFormatID = 0xC6C70636DLL;
                            v138 = *(v26 + 24);
                            v139 = *(v26 + 27);
                            inDestinationFormat.mBytesPerPacket = (v139 >> 3) * v138;
                            inDestinationFormat.mFramesPerPacket = 1;
                            inDestinationFormat.mBytesPerFrame = inDestinationFormat.mBytesPerPacket;
                            inDestinationFormat.mChannelsPerFrame = v138;
                            inDestinationFormat.mBitsPerChannel = v139;
                            inDestinationFormat.mReserved = 0;
                            v140 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, v26 + 91);
                            if (v140)
                            {
                              v151 = v140;
                            }

                            else
                            {
                              if (inSourceFormat.mFormatID != 1634492771 || (inPropertyData = bswap32(inSourceFormat.mFramesPerPacket), v168 = *(v26 + 27), v169 = 2600, v170 = 14, v141 = *(v26 + 23), v171 = *(v26 + 24), v172 = -256, v167 = 0, v173 = 0, v174 = 0, v175 = bswap32(v141), (v142 = AudioConverterSetProperty(v26[91], 0x646D6763u, 0x18u, &inPropertyData)) == 0))
                              {
                                v165 = 0;
LABEL_343:
                                v26[77] = BufferSize;
                                v143 = malloc_type_malloc(BufferSize, 0x100004077774924uLL);
                                v26[76] = v143;
                                if (v143)
                                {
                                  v144 = malloc_type_malloc(v26[77], 0x100004077774924uLL);
                                  v26[80] = v144;
                                  if (v144)
                                  {
                                    v26[79] = BufferSize;
                                    v145 = malloc_type_malloc(BufferSize, 0x100004077774924uLL);
                                    v26[78] = v145;
                                    if (v145)
                                    {
                                      gAirPlayAudioStats = xmmword_23EAA1830;
                                      byte_27E37EED0 = 0;
                                      qword_27E37EED8 = 0;
                                      dword_27E37EEE0 = 0;
                                      v146 = CFDictionaryGetValue(a4, @"ReceiverSession");
                                      if (v146)
                                      {
                                        *(v26 + 319) = v146[124];
                                        APSCopyClusterInfo();
                                        if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
                                        {
                                          LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554482, "%@ self cluster type %u, sender perceived cluster type %u\n", v26[3], *(v26 + 318), *(v26 + 319));
                                        }

                                        v26[1] = FigCFWeakReferenceHolderCreateWithReferencedObject();
                                        PIDInit();
                                        *(v26 + 1036) = CFDictionaryGetInt64() != 0;
                                        v18 = &unk_27E37D000;
                                        if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
                                        {
                                          v147 = v26[3];
                                          if (APSAudioFormatDescriptionGetAudioFormatIndex() == 6)
                                          {
                                            v148 = "PCM/24000/16/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 10)
                                          {
                                            v148 = "PCM/44100/16/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 11)
                                          {
                                            v148 = "PCM/44100/16/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 15)
                                          {
                                            v148 = "PCM/48000/16/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 18)
                                          {
                                            v148 = "ALAC/44100/16/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 22)
                                          {
                                            v148 = "AAC-LC/44100/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 24)
                                          {
                                            v148 = "AAC-ELD/44100/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 2)
                                          {
                                            v148 = "PCM/8000/16/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 3)
                                          {
                                            v148 = "PCM/8000/16/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 4)
                                          {
                                            v148 = "PCM/16000/16/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 5)
                                          {
                                            v148 = "PCM/16000/16/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 7)
                                          {
                                            v148 = "PCM/24000/16/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 8)
                                          {
                                            v148 = "PCM/32000/16/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 9)
                                          {
                                            v148 = "PCM/32000/16/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 12)
                                          {
                                            v148 = "PCM/44100/24/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 13)
                                          {
                                            v148 = "PCM/44100/24/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 14)
                                          {
                                            v148 = "PCM/48000/16/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 16)
                                          {
                                            v148 = "PCM/48000/24/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 17)
                                          {
                                            v148 = "PCM/48000/24/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 45)
                                          {
                                            v148 = "PCM/48000/32f/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 46)
                                          {
                                            v148 = "PCM/48000/32f/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 44)
                                          {
                                            v148 = "PCM/48000/16/5.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 38)
                                          {
                                            v148 = "PCM/48000/16/5.1.2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 78)
                                          {
                                            v148 = "PCM/48000/16/7.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 80)
                                          {
                                            v148 = "PCM/48000/16/5.1.4";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 82)
                                          {
                                            v148 = "PCM/48000/16/7.1.2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 84)
                                          {
                                            v148 = "PCM/48000/16/7.1.4";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 93)
                                          {
                                            v148 = "PCM/48000/16/9.1.6";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 47)
                                          {
                                            v148 = "PCM/48000/32f/5.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 48)
                                          {
                                            v148 = "PCM/48000/32f/5.1.2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 79)
                                          {
                                            v148 = "PCM/48000/32f/7.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 81)
                                          {
                                            v148 = "PCM/48000/32f/5.1.4";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 83)
                                          {
                                            v148 = "PCM/48000/32f/7.1.2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 69)
                                          {
                                            v148 = "PCM/48000/32f/7.1.4";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 94)
                                          {
                                            v148 = "PCM/48000/32f/9.1.6";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 85)
                                          {
                                            v148 = "ALAC/44100/20/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 19)
                                          {
                                            v148 = "ALAC/44100/24/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 20)
                                          {
                                            v148 = "ALAC/48000/16/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 86)
                                          {
                                            v148 = "ALAC/48000/20/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 21)
                                          {
                                            v148 = "ALAC/48000/24/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 40)
                                          {
                                            v148 = "AAC_LC/48000/5.1.2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 39)
                                          {
                                            v148 = "AAC_LC/48000/5.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 90)
                                          {
                                            v148 = "AAC_LC/48000/7.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 23)
                                          {
                                            v148 = "AAC-LC/48000/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 42)
                                          {
                                            v148 = "AAC_ELD/48000/5.1.2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 41)
                                          {
                                            v148 = "AAC_ELD/48000/5.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 25)
                                          {
                                            v148 = "AAC-ELD/48000/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 26)
                                          {
                                            v148 = "AAC-ELD/16000/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 27)
                                          {
                                            v148 = "AAC-ELD/24000/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 28)
                                          {
                                            v148 = "OPUS/16000/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 29)
                                          {
                                            v148 = "OPUS/24000/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 30)
                                          {
                                            v148 = "OPUS/48000/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 31)
                                          {
                                            v148 = "AAC-ELD/44100/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 32)
                                          {
                                            v148 = "AAC-ELD/48000/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 43)
                                          {
                                            v148 = "AAC-ELD/32000/1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 49)
                                          {
                                            v148 = "DDPLUS/48000/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 50)
                                          {
                                            v148 = "DDPLUS/48000/5.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 51)
                                          {
                                            v148 = "DDPLUS/48000/5.1.2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 52)
                                          {
                                            v148 = "DDPLUS/48000/7.1.4";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 53)
                                          {
                                            v148 = "DDPLUS/48000/9.1.6";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 54)
                                          {
                                            v148 = "QAAC/48000/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 55)
                                          {
                                            v148 = "QAAC/48000/5.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 56)
                                          {
                                            v148 = "QAAC/48000/5.1.2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 57)
                                          {
                                            v148 = "QAACHE/48000/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 58)
                                          {
                                            v148 = "QAACHE/48000/5.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 60)
                                          {
                                            v148 = "QAACHE/48000/5.1.2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 89)
                                          {
                                            v148 = "PAAC/44100/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 61)
                                          {
                                            v148 = "QLAC/48000/24/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 62)
                                          {
                                            v148 = "QC3/48000/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 63)
                                          {
                                            v148 = "QC3/48000/5.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 33)
                                          {
                                            v148 = "QC3/48000/5.1.2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 34)
                                          {
                                            v148 = "QC3/48000/7.1.4";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 35)
                                          {
                                            v148 = "QC3/48000/9.1.6";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 87)
                                          {
                                            v148 = "QAC3/48000/5.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 88)
                                          {
                                            v148 = "QEC3/48000/7.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 91)
                                          {
                                            v148 = "EAC3/48000/5.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 64)
                                          {
                                            v148 = "APAC/48000/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 65)
                                          {
                                            v148 = "APAC/48000/5.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 66)
                                          {
                                            v148 = "APAC/48000/5.1.2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 67)
                                          {
                                            v148 = "APAC/48000/7.1";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 76)
                                          {
                                            v148 = "APAC/48000/5.1.4";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 77)
                                          {
                                            v148 = "APAC/48000/7.1.2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 68)
                                          {
                                            v148 = "APAC/48000/7.1.4";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 92)
                                          {
                                            v148 = "APAC/48000/9.1.6";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 70)
                                          {
                                            v148 = "QAAC/44100/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 71)
                                          {
                                            v148 = "QAACHE/44100/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 72)
                                          {
                                            v148 = "QAACHEV2/44100/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 73)
                                          {
                                            v148 = "QLAC/44100/24/2";
                                          }

                                          else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 74)
                                          {
                                            v148 = "MP3/44100/2";
                                          }

                                          else
                                          {
                                            v152 = APSAudioFormatDescriptionGetAudioFormatIndex();
                                            v148 = "";
                                            if (v152 == 75)
                                            {
                                              v148 = "MP3/48000/2";
                                            }
                                          }

                                          LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554482, "%@ audio set up for %s on port %d\n", v147, v148, *(v26 + 114));
                                        }

                                        v26[83] = 8;
                                        v153 = malloc_type_calloc(1uLL, 8uLL, 0xED05D5E3uLL);
                                        v26[82] = v153;
                                        if (v153)
                                        {
                                          *(v26 + 1228) = CFPrefs_GetInt64() != 0;
                                          *(v26 + 1124) = 0;
                                          if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
                                          {
                                            LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, CFDictionaryRef, void **)", 33554482, "%@ Setup buffered audio session buffer size: %u buffer node count: %u decodeBufferSize: %lu compressionType: %u for client: '%@'\n", v26[3], v26[62], *(v26 + 119), v26[77], *(v26 + 22), v26[4]);
                                          }

                                          APTTrafficMetricsConnectionFormed();
                                          *(v10 + 40) = v26;
                                          if (!v36)
                                          {
LABEL_133:
                                            v54 = v165;
                                            if (!v165)
                                            {
                                              *(v10 + 56) = 0;
                                              *(v10 + 64) = APReceiverAudioSessionBufferedSetSecurityInfo;
                                              *(v10 + 72) = APReceiverAudioSessionBufferedStartPacketProcesser;
                                              *(v10 + 80) = APReceiverAudioSessionBufferedStopPacketProcesser;
                                              *(v10 + 96) = 0;
                                              *(v10 + 104) = 0;
                                              *(v10 + 88) = APReceiverAudioSessionBufferedFlushAudio;
                                              *(v10 + 112) = APReceiverAudioSessionBufferedSetRateAndAnchorTime;
                                              *(v10 + 120) = APReceiverAudioSessionBufferedConvertProgressRTPTimeToSecond;
                                              *(v10 + 128) = APReceiverAudioSessionBufferedReadAudio;
                                              *(v10 + 136) = APReceiverAudioSessionBufferedUpdateLatency;
                                              *(v10 + 144) = APReceiverAudioSessionBufferedCopyProperty;
                                              *(v10 + 152) = APReceiverAudioSessionBufferedSetProperty;
                                              *(v10 + 160) = APReceiverAudioSessionBufferedCopyMetrics;
                                              *(v10 + 168) = APReceiverAudioSessionBufferedLogEnded;
                                              *(v10 + 48) = APReceiverAudioSessionBufferedFinalize;
                                              *(v10 + 176) = APReceiverAudioSessionBufferedCopyAudioBufferInfo;
                                              *(v10 + 184) = 0u;
                                              *(v10 + 200) = 0u;
                                              v55 = v18[944];
                                              if (v55 <= 50 && (v55 != -1 || _LogCategory_Initialize()))
                                              {
                                                LogPrintF(&gLogCategory_APReceiverAudioSession, "OSStatus audioSession_setupBufferedAudio(APReceiverAudioSessionRef, sockaddr_ip, CFDictionaryRef)", 33554482, "%@ AudioSession setup for buffered source\n", *(v10 + 32));
                                              }

                                              goto LABEL_138;
                                            }

LABEL_393:
                                            APSLogErrorAt();
                                            mSampleRate_low = v54;
                                            goto LABEL_374;
                                          }

LABEL_132:
                                          CFRelease(v36);
                                          goto LABEL_133;
                                        }

                                        goto LABEL_601;
                                      }

                                      APSLogErrorAt();
                                      v165 = APSSignalErrorAt();
LABEL_92:
                                      v18 = &unk_27E37D000;
                                      goto LABEL_131;
                                    }
                                  }
                                }

                                APSLogErrorAt();
                                v40 = -72150;
LABEL_91:
                                v165 = v40;
                                goto LABEL_92;
                              }

                              v151 = v142;
                            }
                          }

                          APSLogErrorAt();
                          v165 = v151;
LABEL_432:
                          APSLogErrorAt();
                          goto LABEL_92;
                        }

LABEL_601:
                        APSLogErrorAt();
                        v37 = -6728;
                        goto LABEL_130;
                      }
                    }
                  }
                }
              }

LABEL_426:
              APSLogErrorAt();
LABEL_131:
              free(v26);
              if (!v36)
              {
                goto LABEL_133;
              }

              goto LABEL_132;
            }

            if (v165)
            {
              goto LABEL_426;
            }

            if (v164 == 32)
            {
              for (i = 112; i != 416; ++i)
              {
                *(v26 + i) = 0;
              }

              __memcpy_chk();
              *(v26 + 112) = 1;
              goto LABEL_263;
            }

            goto LABEL_423;
          }
        }

        else
        {
          v26[142] = 0;
        }

        APSLogErrorAt();
        v37 = -6705;
        goto LABEL_130;
      }
    }

    APSLogErrorAt();
    v36 = 0;
    goto LABEL_131;
  }

  if (v20 == 96)
  {
    if (v17)
    {
      *&inSourceFormat.mSampleRate = *a2;
      *&inSourceFormat.mFormatFlags = *(a2 + 12);
      *&inDestinationFormat.mSampleRate = *a3;
      *&inDestinationFormat.mFormatFlags = *(a3 + 12);
      v21 = APReceiverAudioSessionRealTimeCreate(v10, *(v10 + 32), &inSourceFormat, &inDestinationFormat, a4, (v10 + 40));
      if (!v21)
      {
        *(v10 + 56) = APReceiverAudioSessionRealTimeInvalidate;
        *(v10 + 64) = APReceiverAudioSessionRealTimeSetSecurityInfo;
        *(v10 + 72) = APReceiverAudioSessionRealTimeStartPacketProcesser;
        *(v10 + 80) = APReceiverAudioSessionRealTimeStopPacketProcesser;
        *(v10 + 88) = APReceiverAudioSessionRealTimeFlushAudio;
        *(v10 + 96) = 0;
        *(v10 + 104) = 0;
        *(v10 + 112) = 0;
        *(v10 + 120) = APReceiverAudioSessionRealTimeConvertProgressRTPTimeToSecond;
        *(v10 + 128) = APReceiverAudioSessionRealTimeReadAudio;
        *(v10 + 136) = APReceiverAudioSessionRealTimeUpdateLatency;
        *(v10 + 144) = APReceiverAudioSessionRealTimeCopyProperty;
        *(v10 + 152) = APReceiverAudioSessionRealTimeSetProperty;
        *(v10 + 160) = APReceiverAudioSessionRealTimeCopyMetrics;
        *(v10 + 168) = APReceiverAudioSessionRealTimeLogEnded;
        *(v10 + 48) = APReceiverAudioSessionRealTimeFinalize;
        *(v10 + 176) = APReceiverAudioSessionRealTimeCopyAudioBufferInfo;
        *(v10 + 184) = 0u;
        *(v10 + 200) = 0u;
        v22 = v18[944];
        if (v22 <= 50 && (v22 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSession, "OSStatus audioSession_setupRealTimeAudio(APReceiverAudioSessionRef, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef)", 33554482, "%@ AudioSession setup for real time source\n", *(v10 + 32));
        }

LABEL_138:
        mSampleRate_low = 0;
        goto LABEL_139;
      }

LABEL_389:
      v150 = v21;
      APSLogErrorAt();
      mSampleRate_low = v150;
      goto LABEL_374;
    }

    *&inSourceFormat.mSampleRate = *a3;
    *&inSourceFormat.mFormatFlags = *(a3 + 12);
    mSampleRate_low = audioSession_setupGhostAudio(v10, &inSourceFormat, a4);
    if (mSampleRate_low)
    {
      goto LABEL_374;
    }
  }

LABEL_139:
  v56 = v18[944];
  if (v56 <= 50 && (v56 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSession, "OSStatus APReceiverAudioSessionCreate(APStreamType, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, APReceiverAudioSessionRef *)", 33554482, "%@ Audio session created\n", *(v10 + 32));
  }

  CFDictionaryGetTypeID();
  v57 = CFDictionaryGetTypedValue();
  if (mSampleRate_low)
  {
    goto LABEL_374;
  }

  CFDictionarySetInt64();
  v60 = APReceiverAudioSessionCopyProperty(v10, v58, @"AudioFormat", v59, &mSampleRate_low);
  cf = v60;
  if (mSampleRate_low)
  {
    goto LABEL_374;
  }

  CFDictionarySetValue(Mutable, @"RASP::AudioFormat", v60);
  if (CFDictionaryGetValueIfPresent(a4, @"ReceiverSession", &value))
  {
    CFDictionarySetValue(Mutable, @"RASP::ReceiverSession", value);
  }

  if (CFDictionaryGetValueIfPresent(a4, @"IsMedia", &value))
  {
    CFDictionarySetValue(Mutable, @"RASP::IsMedia", value);
  }

  if (!CFDictionaryGetValueIfPresent(a4, @"NetworkClock", &value))
  {
    v61 = 0;
    goto LABEL_167;
  }

  v61 = value;
  v62 = APSNetworkClockGetCMBaseObject();
  v63 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v63)
  {
    v63(v62, *MEMORY[0x277CEA260], v14, &value);
  }

  v64 = value;
  v65 = *MEMORY[0x277CEA268];
  if (value == *MEMORY[0x277CEA268])
  {
    goto LABEL_156;
  }

  if (value && v65)
  {
    if (CFEqual(value, v65))
    {
LABEL_156:
      v66 = @"NTP";
LABEL_164:
      CFDictionarySetValue(Mutable, @"RASP::TimingProtocol", v66);
      goto LABEL_165;
    }

    v64 = value;
  }

  v67 = *MEMORY[0x277CEA278];
  if (v64 == *MEMORY[0x277CEA278] || v64 && v67 && CFEqual(v64, v67))
  {
    v66 = @"PTP";
    goto LABEL_164;
  }

LABEL_165:
  if (value)
  {
    CFRelease(value);
  }

LABEL_167:
  if (CFDictionaryGetValueIfPresent(a4, @"UsingScreen", &value))
  {
    CFDictionarySetValue(Mutable, @"RASP::UsingScreen", value);
  }

  if (CFDictionaryGetValueIfPresent(v57, @"audioLoopback", &value))
  {
    CFDictionarySetValue(Mutable, @"RASP::AudioLookback", value);
  }

  if (CFDictionaryGetValueIfPresent(v57, @"audioType", &value))
  {
    CFDictionarySetValue(Mutable, @"RASP::AudioType", value);
  }

  if (CFDictionaryGetValueIfPresent(v57, @"audioMode", &value))
  {
    CFDictionarySetValue(Mutable, @"RASP::AudioMode", value);
  }

  FigCFDictionarySetValueFromKeyInDict();
  if (!APSAudioFormatDescriptionGetAudioFormatIndex())
  {
    if (v60)
    {
      CFRelease(v60);
      cf = 0;
    }

    mSampleRate_low = APSAudioFormatDescriptionCreateWithAudioFormatIndex();
    if (mSampleRate_low)
    {
      goto LABEL_374;
    }
  }

  APSAudioFormatDescriptionGetAudioFormatIndex();
  mSampleRate_low = APAudioFormatIndexToPCMASBD();
  if (mSampleRate_low)
  {
    goto LABEL_374;
  }

  LODWORD(inSourceFormat.mSampleRate) = 0;
  v68 = CFDictionaryGetValue(Mutable, @"RASP::LogPrefix");
  v69 = CFGetTypeID(v10);
  if (gAPReceiverAudioSessionInitOnce != -1)
  {
    dispatch_once_f(&gAPReceiverAudioSessionInitOnce, 0, _APReceiverAudioSessionGetTypeID);
  }

  if (v69 != gAPReceiverAudioSessionTypeID)
  {
    v149 = -6705;
LABEL_373:
    APSLogErrorAt();
    mSampleRate_low = v149;
LABEL_374:
    APSLogErrorAt();
    goto LABEL_248;
  }

  v70 = CFGetTypeID(Mutable);
  if (v70 != CFDictionaryGetTypeID())
  {
    v149 = -6705;
    goto LABEL_373;
  }

  if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus APReceiverAudioSessionPlatformCreate(APReceiverAudioSessionRef, CFDictionaryRef, void **)", 33554482, "%@ APReceiverAudioSessionPlatform setting up", v68);
  }

  if (gAPReceiverAudioSessionPlatformInitOnce != -1)
  {
    dispatch_once_f(&gAPReceiverAudioSessionPlatformInitOnce, 0, _APReceiverAudioSessionPlatformGetTypeID);
  }

  v71 = _CFRuntimeCreateInstance();
  if (!v71)
  {
    v149 = -6728;
    goto LABEL_373;
  }

  v72 = v71;
  *(v71 + 16) = 0u;
  v73 = (v71 + 16);
  *(v71 + 256) = 0;
  *(v71 + 224) = 0u;
  *(v71 + 240) = 0u;
  *(v71 + 192) = 0u;
  *(v71 + 208) = 0u;
  *(v71 + 160) = 0u;
  *(v71 + 176) = 0u;
  *(v71 + 128) = 0u;
  *(v71 + 144) = 0u;
  *(v71 + 96) = 0u;
  *(v71 + 112) = 0u;
  *(v71 + 64) = 0u;
  *(v71 + 80) = 0u;
  *(v71 + 32) = 0u;
  *(v71 + 48) = 0u;
  v74 = APSSettingsGetInt64();
  v75 = APSSettingsGetInt64();
  v76 = v73[3];
  if (v68)
  {
    CFRetain(v68);
  }

  *(v72 + 40) = v68;
  if (v76)
  {
    CFRelease(v76);
  }

  *(v72 + 24) = v10;
  if (gAirPlayReceiverSessionInitOnce != -1)
  {
    dispatch_once_f(&gAirPlayReceiverSessionInitOnce, 0, _GetTypeID_6322);
  }

  *v73 = CFDictionaryGetTypedValue();
  if (LODWORD(inSourceFormat.mSampleRate))
  {
    goto LABEL_387;
  }

  *(v72 + 48) = CFDictionaryGetInt64();
  if (LODWORD(inSourceFormat.mSampleRate))
  {
    goto LABEL_387;
  }

  v77 = CFDictionaryGetValue(Mutable, @"RASP::AudioFormat");
  if (v77)
  {
    v77 = CFRetain(v77);
  }

  *(v72 + 56) = v77;
  v78 = (v72 + 56);
  if (!APSAudioFormatDescriptionGetAudioFormatIndex())
  {
    if (*v78)
    {
      CFRelease(*v78);
      *v78 = 0;
    }

    LODWORD(inSourceFormat.mSampleRate) = APSAudioFormatDescriptionCreateWithAudioFormatIndex();
    if (LODWORD(inSourceFormat.mSampleRate))
    {
      goto LABEL_387;
    }
  }

  APSAudioFormatDescriptionGetAudioFormatIndex();
  LODWORD(inSourceFormat.mSampleRate) = APAudioFormatIndexToPCMASBD();
  if (LODWORD(inSourceFormat.mSampleRate))
  {
    goto LABEL_387;
  }

  *(v72 + 64) = CFDictionaryGetInt64() != 0;
  *(v72 + 69) = CFDictionaryGetInt64() != 0;
  CFStringGetTypeID();
  v79 = CFDictionaryGetTypedValue();
  if (v79 && !CFEqual(v79, @"NTP"))
  {
    v82 = 0;
  }

  else
  {
    v80 = *(v72 + 48);
    v82 = v80 == 96 || v80 == 103;
  }

  *(v72 + 65) = v82;
  CFObjectGetPropertyDoubleSync();
  APSVolumeConvertDBToLinearGain();
  *(v72 + 236) = v83;
  v84 = *(v72 + 48);
  v86 = v84 == 96 || v84 == 103;
  *(v72 + 68) = v86;
  *(v72 + 66) = 0;
  CFStringGetTypeID();
  v87 = CFDictionaryGetTypedValue();
  if (v87)
  {
    if ((v88 = v87, v74) && CFEqual(v87, @"speechRecognition") || v75 && CFEqual(v88, @"telephony"))
    {
      *(v72 + 66) = 1;
    }
  }

  *(v72 + 67) = 0;
  CFStringGetTypeID();
  v89 = CFDictionaryGetTypedValue();
  if (v89 && CFEqual(v89, @"moviePlayback"))
  {
    *(v72 + 67) = 1;
  }

  v90 = CFDictionaryGetInt64();
  if (LODWORD(inSourceFormat.mSampleRate) || (!v90 ? (v91 = +[APAVAudioSessionManager ambientSessionManager](APAVAudioSessionManager, "ambientSessionManager")) : (v91 = +[APAVAudioSessionManager mediaSessionManager]), (*(v72 + 32) = v91, *(v72 + 67)) ? (v92 = @"moviePlayback") : (v92 = @"default"), _UpdateAVAudioSessionAudioMode_5424(v72, v92), (LODWORD(inSourceFormat.mSampleRate) = _MainAudioEnsureSetup(v72, Mutable)) != 0))
  {
LABEL_387:
    APSLogErrorAt();
    APReceiverAudioSessionPlatformFinalize(v72);
    mSampleRate_low = LODWORD(inSourceFormat.mSampleRate);
    if (LODWORD(inSourceFormat.mSampleRate))
    {
      goto LABEL_374;
    }
  }

  else
  {
    *(v10 + 216) = v72;
    mSampleRate_low = 0;
  }

  if (!v157)
  {
    goto LABEL_246;
  }

  if (v61)
  {
    v93 = CFRetain(v61);
  }

  else
  {
    v93 = 0;
  }

  *(v10 + 320) = v93;
  v94 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v95 = dispatch_queue_create("APReceiverAudioSessionSink", v94);
  *(v10 + 288) = v95;
  if (!v95)
  {
    goto LABEL_382;
  }

  v96 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v95);
  *(v10 + 296) = v96;
  if (!v96)
  {
    goto LABEL_382;
  }

  dispatch_set_context(v96, v10);
  dispatch_source_set_event_handler_f(*(v10 + 296), audioSession_sinkTimer);
  dispatch_source_set_timer(*(v10 + 296), 0, 0x1312D00uLL, 0);
  v97 = audioSession_getCurrentNetworkTime(v10, 0) * *(v10 + 224);
  *(v10 + 304) = v97;
  *(v10 + 312) = v97;
  dispatch_resume(*(v10 + 296));
LABEL_246:
  if (a5)
  {
    *a5 = v10;
    v10 = 0;
  }

LABEL_248:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return mSampleRate_low;
}