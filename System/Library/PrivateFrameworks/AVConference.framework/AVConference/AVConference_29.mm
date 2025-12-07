uint64_t VCTimescaleWSOLA_WindowTail(uint64_t *a1, void *a2, _DWORD *a3)
{
  v5 = *a1;
  *(v5 + 4) = 1065353216;
  v6 = ((*(v5 + 12) - *(v5 + 20)) - *(v5 + 12)) - *(v5 + 96);
  v7 = ((-v6 & ~(-v6 >> 31)) + 3) & 0xFFFFFFFC;
  v8 = *(v5 + 116);
  *(v5 + 108) = v7;
  *(v5 + 112) = (v8 - v7) & ~((v8 - v7) >> 31);
  VCTimescaleWSOLAShiftBuffer::removeSamples(*(v5 + 72), v8);
  memcpy(a2, **(v5 + 72), 4 * *(*(v5 + 72) + 12));
  v9 = *(v5 + 72);
  *a3 = *(v9 + 12);
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  VCTimescaleWSOLAShiftBuffer::clear(v9);
  return 0;
}

void *VCTimescaleWSOLA_UpdateHistoryBuffer(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 11584);
  if (**(a2 + 24) >= v3)
  {
    v4 = *(a1 + 11584);
  }

  else
  {
    v4 = **(a2 + 24);
  }

  if (*(a1 + 11587) == 1)
  {
    ioOutputDataSize = 4 * v3;
    result = AudioConverterConvertBuffer(*(a1 + 11592), 2 * v4, *(a2 + 120), &ioOutputDataSize, (a1 + 12));
    v4 = ioOutputDataSize >> 2;
  }

  else
  {
    result = memcpy((a1 + 12), *(a2 + 120), 4 * v4);
  }

  *(a1 + 11532) = v4;
  return result;
}

uint64_t VCTimescaleWSOLA_CheckCompression(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = a2;
  v36 = *MEMORY[0x1E69E9840];
  v10 = micro(a1, a2);
  v11 = v10 - *(a1 + 11552) > 10.0 && v10 - *(a1 + 11560) > 10.0;
  if (!(a4 | a3))
  {
    *(a1 + 8) = 0;
    if (v7)
    {
      *(a1 + 11552) = v10;
    }

    if (a5 < 0.300000012)
    {
      *(a1 + 11560) = v10;
    }

    v13 = *(a1 + 11586);
    v14 = v13 ^ 1;
    v15 = ((v11 | v13 ^ 1) & 1) != 0 || *(a1 + 11616) < a5;
    if (*(a1 + 11536) && v15)
    {
      if (!v11)
      {
        goto LABEL_28;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_28;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v18 = *(a1 + 11552);
      v19 = *(a1 + 11560);
      v24 = 136316418;
      v25 = v16;
      v26 = 2080;
      v27 = "VCTimescaleWSOLA_CheckCompression";
      v28 = 1024;
      v29 = 686;
      v30 = 2048;
      v31 = v18;
      v32 = 2048;
      v33 = a5;
      v34 = 2048;
      v35 = v19;
LABEL_27:
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing WSOLA, time since silence: %f, Adjust = %f, time since low adjust: %f", &v24, 0x3Au);
LABEL_28:
      v12 = 1;
      return v12 & 1;
    }

    if (*(a1 + 11586))
    {
      if (*(a1 + 11608) >= a5)
      {
        LOBYTE(v13) = 0;
        if (v11)
        {
LABEL_23:
          if (v7)
          {
            goto LABEL_28;
          }

          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_28;
          }

          v20 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          v21 = *(a1 + 11552);
          v22 = *(a1 + 11560);
          v24 = 136316418;
          v25 = v20;
          v26 = 2080;
          v27 = "VCTimescaleWSOLA_CheckCompression";
          v28 = 1024;
          v29 = 692;
          v30 = 2048;
          v31 = v21;
          v32 = 2048;
          v33 = a5;
          v34 = 2048;
          v35 = v22;
          goto LABEL_27;
        }

LABEL_30:
        v12 = v14 | v13;
        return v12 & 1;
      }

      LOBYTE(v13) = v10 - *(a1 + 11544) > *(a1 + 11624);
    }

    if (v11)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t VCTimescaleWSOLA_ActiveSpeechAdapt(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  __dst[1455] = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {
    v5 = micro(IsInternalOSInstalled, v7);
  }

  if (VCTimescaleWSOLA_CheckCompression(v4, *(v3 + 16), *(v3 + 44), *(v3 + 48), *(v3 + 160)) && *(v3 + 20) == *(v4 + 11584))
  {
    v8 = _VCTimescale_DecodeWarpWsola(v4);
    LogProfileTimeOverLimit(v5, v10, "SpkrProc: Warping", v9);
    v11 = 1;
    v12 = 1;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v8 = 0;
  }

  *(v3 + 152) = v11;
  if (!*(v3 + 44))
  {
    if (*(v3 + 48))
    {
      v12 = 1;
    }

    if ((v12 & 1) == 0)
    {
      if (*(v4 + 11536))
      {
        v13 = *(v3 + 56);
        v26 = *(v4 + 11568);
        v14 = v13;
        if (*(v4 + 11587) == 1)
        {
          v14 = *(v4 + 11576);
        }

        v15 = 0.0;
        v16 = VRTraceIsInternalOSInstalled();
        if (v16)
        {
          v15 = micro(v16, v17);
        }

        memcpy(__dst, v4, 0x2D70uLL);
        VCTimescaleWSOLA_WindowTail(__dst, v14, &v26);
        LogProfileTimeOverLimit(v15, v19, "SpkrProc: WsolaTail", v18);
        v22 = v26;
        if (*(v4 + 11587) == 1)
        {
          LODWORD(__dst[0]) = 2 * v26;
          v20 = AudioConverterConvertBuffer(*(v4 + 11600), 4 * v26, v14, __dst, v13);
        }

        *(v4 + 11544) = micro(v20, v21);
        *(v4 + 11536) = 0;
        *(v4 + 8) = 1;
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(__dst[0]) = 136315906;
            *(__dst + 4) = v23;
            WORD2(__dst[1]) = 2080;
            *(&__dst[1] + 6) = "_VCTimescaleWSOLA_TailSize";
            HIWORD(__dst[2]) = 1024;
            LODWORD(__dst[3]) = 398;
            WORD2(__dst[3]) = 1024;
            *(&__dst[3] + 6) = v22;
            _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Extracted WSOLA tail, size=%u", __dst, 0x22u);
          }
        }
      }

      else
      {
        v22 = 0;
      }

      **(v3 + 24) += v22;
    }
  }

  return v8;
}

uint64_t _VCTimescale_DecodeWarpWsola(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v31 = v7;
  v32 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v37 = *MEMORY[0x1E69E9840];
  v13 = v1 + 0x2000;
  v14 = memset(v36, 255, sizeof(v36));
  v15 = *(v13 + 3392);
  v34 = 4 * v15;
  v16 = v3;
  if (*(v13 + 3395) == 1)
  {
    v16 = v36;
    v14 = AudioConverterConvertBuffer(*(v12 + 11592), 2 * v15, v3, &v34, v36);
    v15 = *(v13 + 3392);
  }

  if (v15)
  {
    v17 = fmax((v9 / v15), 0.75);
  }

  else
  {
    v17 = 0.75;
  }

  v33 = *(v13 + 3376);
  MEMORY[0x1EEE9AC00](v14);
  v20 = (&v30 - v19);
  if (v21)
  {
    memset(&v30 - v19, 255, v18);
  }

  if (!*(v13 + 3395))
  {
    v20 = v11;
  }

  if (*(v12 + 11536))
  {
    v22 = 0;
    *(v12 + 11532) = 0;
  }

  else
  {
    v22 = *(v12 + 11532);
  }

  memcpy(v35, v12, sizeof(v35));
  v23 = VCTimescaleWSOLA_Adapt(v35, v16, *(v13 + 3392), v20, &v33, v12 + 12, v22, v17, 0.00200000009);
  *(v12 + 11536) = 1;
  if (v23 == 3)
  {
    memcpy(v11, v3, *(v13 + 3392) * v5);
    v24 = *(v13 + 3392);
    result = 23;
  }

  else
  {
    if (*(v13 + 3395) == 1)
    {
      v34 = 2 * v33;
      AudioConverterConvertBuffer(*(v12 + 11600), 4 * v33, v20, &v34, v11);
    }

    if (VRTraceGetErrorLogLevelForModule() <= 4)
    {
      v24 = v33;
    }

    else
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      v28 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      v24 = v33;
      if (v28)
      {
        v29 = *(v13 + 3392);
        LODWORD(v35[0]) = 136316418;
        *(v35 + 4) = v26;
        WORD2(v35[1]) = 2080;
        *(&v35[1] + 6) = "_VCTimescale_DecodeWarpWsola";
        HIWORD(v35[2]) = 1024;
        LODWORD(v35[3]) = 625;
        WORD2(v35[3]) = 2048;
        *(&v35[3] + 6) = v17;
        HIWORD(v35[4]) = 1024;
        LODWORD(v35[5]) = v29;
        WORD2(v35[5]) = 1024;
        *(&v35[5] + 6) = v33;
        _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WSOLA WARP, scale = %f, in size = %u, out size = %u", v35, 0x32u);
      }
    }

    result = 0;
    *v31 = 1;
  }

  *v32 = v24;
  return result;
}

void LogProfileTimeOverLimit(double a1, double a2, const char *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v38 = *MEMORY[0x1E69E9840];
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {
    v8 = micro(IsInternalOSInstalled, v7) - a1;
    if (v8 > 0.00499999989)
    {
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v36 = v9;
      v37 = v9;
      v34 = v9;
      v35 = v9;
      v32 = v9;
      v33 = v9;
      v30 = v9;
      v31 = v9;
      v28 = v9;
      v29 = v9;
      v27 = v9;
      v25 = v9;
      v26 = v9;
      v23 = v9;
      v24 = v9;
      *__str = v9;
      vsnprintf(__str, 0x100uLL, a3, va);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v13 = v10;
          v14 = 2080;
          v15 = "_LogProfileTimeLimitHelper";
          v16 = 1024;
          v17 = 36;
          v18 = 2080;
          v19 = __str;
          v20 = 2048;
          v21 = v8;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: Took a long time %fs", buf, 0x30u);
        }
      }
    }
  }
}

uint64_t VCMemoryUtil_IsProbabilisticGuardMallocEnabled(uint64_t a1, uint64_t a2)
{
  if (VCMemoryUtil_IsProbabilisticGuardMallocEnabled_onceToken != -1)
  {
    VCMemoryUtil_IsProbabilisticGuardMallocEnabled_cold_1();
  }

  return VCMemoryUtil_IsProbabilisticGuardMallocEnabled_isProbabilisticGuardMallocEnabled;
}

uint64_t VCMemoryUtil_IsAddressSanitizerEnabled(uint64_t a1, uint64_t a2)
{
  if (VCMemoryUtil_IsAddressSanitizerEnabled_onceToken != -1)
  {
    VCMemoryUtil_IsAddressSanitizerEnabled_cold_1();
  }

  return VCMemoryUtil_IsAddressSanitizerEnabled_isASANEnabled;
}

void HandleWCMEvent(void *a1, void *a2)
{
  keys[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2;
    uint64 = xpc_dictionary_get_uint64(a1, "kMessageId");
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = "HandleWCMEvent";
        *&buf[22] = 1024;
        LODWORD(v33) = 86;
        WORD2(v33) = 1024;
        *(&v33 + 6) = uint64;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WCM: receive a WCM event [%d].", buf, 0x22u);
      }
    }

    if (uint64 == 1100)
    {
      value = 0;
      [objc_msgSend(a2 "wcmClientDelegate")];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessGetCallConfig";
          *&buf[22] = 1024;
          LODWORD(v33) = 40;
          WORD2(v33) = 1024;
          *(&v33 + 6) = HIDWORD(value);
          WORD5(v33) = 1024;
          HIDWORD(v33) = value;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WCM: current bitrate cap [%u] target [%u]", buf, 0x28u);
        }
      }

      keys[0] = "kWCMFTCallConfig_BitrateCapability";
      keys[1] = "kWCMFTCallConfig_TargetBitRate";
      v15 = xpc_uint64_create(HIDWORD(value));
      v16 = xpc_uint64_create(value);
      values[0] = v15;
      values[1] = v16;
      v17 = xpc_dictionary_create(keys, values, 2uLL);
      v36[0] = "kMessageId";
      v36[1] = "kMessageArgs";
      v18 = xpc_uint64_create(0xC8uLL);
      v35[0] = v18;
      v35[1] = v17;
      v19 = xpc_dictionary_create(v36, v35, 2uLL);
      xpc_release(v17);
      xpc_release(v15);
      xpc_release(v16);
      xpc_release(v18);
      v20 = [a2 connectionQueue];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __ProcessGetCallConfig_block_invoke;
      *&v33 = &unk_1E85F37F0;
      *(&v33 + 1) = a2;
      v34 = v19;
      dispatch_async(v20, buf);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 136315650;
          v27 = v21;
          v28 = 2080;
          v29 = "ProcessGetCallConfig";
          v30 = 1024;
          v31 = 69;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WCM: sent reply for WCMFTCallConfig.", v26, 0x1Cu);
        }
      }
    }

    else if (uint64 == 1101)
    {
      v8 = xpc_dictionary_get_value(a1, "kMessageArgs");
      v9 = xpc_dictionary_get_uint64(v8, "kWCMFTCallConfig_BitrateCapability");
      v10 = xpc_dictionary_get_uint64(v8, "kWCMFTCallConfig_InterferenceLevel");
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessSetCallConfig";
          *&buf[22] = 1024;
          LODWORD(v33) = 31;
          WORD2(v33) = 1024;
          *(&v33 + 6) = v9;
          WORD5(v33) = 1024;
          HIDWORD(v33) = v10;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WCM: BitrateCap [%d] InterferenceLevel [%d]", buf, 0x28u);
        }
      }

      [objc_msgSend(a2 "wcmClientDelegate")];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        HandleWCMEvent_cold_1(v23, v24);
      }
    }
  }
}

void __ProcessGetCallConfig_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  if (v2)
  {
    xpc_connection_send_message(v2, *(a1 + 40));
  }

  v3 = *(a1 + 40);

  xpc_release(v3);
}

uint64_t VCTransportICEConnected(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = MEMORY[0x1E1289F20]([a1 weak]);
  if (v13)
  {
    v14 = v13;
    [v13 iceConnectedForCallID:a2 result:a3 didReceivePacket:a4 useRelay:a5 secretKey:a6 skeResult:a7];
    CFRelease(v14);
  }

  return 0;
}

void VCTransportICENewCandidates(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E1289F20]([a1 weak]);
  if (v9)
  {
    v10 = v9;
    [v9 iceNewCandidatesForCallID:a2 blob:a3 size:a4 newCandidateVersion:a5];

    CFRelease(v10);
  }
}

void VCTransportICEShouldNominate(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = MEMORY[0x1E1289F20]([a1 weak]);
  if (v15)
  {
    v16 = v15;
    [v15 iceShouldNominateNewCandidate:a3 forCallID:a2 interfaceMask:a4 nominated:a5 demote:a6 connectionPriority:a7 replaceOnly:a8];

    CFRelease(v16);
  }
}

void VCTransportICERemoveIPPort(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = MEMORY[0x1E1289F20]([a1 weak]);
  if (v7)
  {
    v8 = v7;
    [v7 iceRemoveIPPort:a3 forCallID:a2 isLocalInterface:a4 != 0];

    CFRelease(v8);
  }
}

void VCDataPacketReceivedCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = MEMORY[0x1E1289F20]([a1 weak]);
  if (v11)
  {
    v12 = v11;
    [v11 receivedDataPacket:a2 length:a3 forCallID:a4 encrypted:a5 OFTType:a6];

    CFRelease(v12);
  }
}

FILE **VideoPacketDump_OpenRTPLog(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = VRLogfileAlloc(0, a1, "RTPPacketDumpVideo", ".packetdump", "com.apple.VideoConference.RTPPacketDumpQueue", 32);
    if (v1)
    {
      v2 = v1;
      VRLogfilePrintSync(v1, "sTime\tStreamID\tTimestamp\tSeqNumber\tFrameSequenceNumber\tFECPacketStatus\tIsTemporalScaledStream\tIsBaseLayerFrame\n");
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VideoPacketDump_OpenRTPLog_cold_1(v3, v4);
        }
      }

      return 0;
    }
  }

  else
  {
    VideoPacketDump_OpenRTPLog_cold_2(v6);
    return v6[0];
  }

  return v2;
}

void VideoPacketDump_CloseRTPLog(uint64_t a1)
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = a1;
  VRLogfileFree(v1);
}

void VideoPacketDump_RTPLog(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v16[0] = 0;
    v16[1] = 0;
    v17 = 0;
    VRLogfileGetTimestamp(v16, 0x14u);
    VRLogfilePrint(a1, "%s\t%u\t%u\t%u\t%u\t%d\t%d\t%d\n", v16, a2, a3, a4, a5, a6, a7, a8);
  }
}

void VCVoiceDetector_Destroy(void **a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "VCVoiceDetector_Destroy";
      v9 = 1024;
      v10 = 48;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NULL voice detector", &v5, 0x1Cu);
    }
  }
}

void *VCVoiceDetector_Create(char a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A0040FC058773uLL);
  v7[0] = v2;
  if (!v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCVoiceDetector_Create_cold_4();
      }
    }

    return 0;
  }

  v3 = v2;
  if (VCVoiceDetector_Create_loadPredicate != -1)
  {
    VCVoiceDetector_Create_cold_1();
  }

  v4 = VCVoiceDetector_Create_libHandle;
  *(v3 + 1) = VCVoiceDetector_Create_libHandle;
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCVoiceDetector_Create_cold_3();
      }
    }

    free(v3);
    return 0;
  }

  *(v3 + 20) = a1;
  *(v3 + 3) = dlsym(v4, "DNNVAD_CreateInstance");
  *(v3 + 4) = dlsym(*(v3 + 1), "DNNVAD_Initialize");
  *(v3 + 5) = dlsym(*(v3 + 1), "DNNVAD_Uninitialize");
  *(v3 + 6) = dlsym(*(v3 + 1), "DNNVAD_Process");
  *(v3 + 9) = dlsym(*(v3 + 1), "DNNVAD_DestroyInstance");
  *(v3 + 7) = dlsym(*(v3 + 1), "DNNVAD_GetSpeechProbabilitySoftValue");
  *(v3 + 8) = dlsym(*(v3 + 1), "DNNVAD_GetSpeechProbabilityHardValue");
  *(v3 + 10) = dlsym(*(v3 + 1), "DNNVAD_EnableLegacyVAD");
  *(v3 + 11) = dlsym(*(v3 + 1), "DNNVAD_GetSoundActivityValue");
  v5 = dlsym(*(v3 + 1), "DNNVAD_GetPowerMeterValue");
  *(v3 + 12) = v5;
  *(v3 + 4) = 2143289344;
  if (!*(v3 + 3) || !*(v3 + 4) || !*(v3 + 5) || !*(v3 + 6) || !*(v3 + 9) || !*(v3 + 7) || !*(v3 + 8) || !*(v3 + 10) || !*(v3 + 11) || !v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCVoiceDetector_Create_cold_2();
      }
    }

    VCVoiceDetector_Destroy(v7);
    return v7[0];
  }

  return v3;
}

void VCVoiceDetector_Start(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a2 + 40);
        v7 = *a2;
        v16 = 136316418;
        v17 = v4;
        v18 = 2080;
        v19 = "VCVoiceDetector_Start";
        v20 = 1024;
        v21 = 116;
        v22 = 1024;
        v23 = v6;
        v24 = 2048;
        v25 = v7;
        v26 = 2080;
        v27 = "/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib";
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  samplesPerFrame=%u -> inSampleRate=%f, AUDIODSP_COMPONENT_DYLIB=%s", &v16, 0x36u);
      }
    }

    v8 = (a1[3])(a1);
    if (!v8 && *a1)
    {
      if (*(a1 + 20) == 1)
      {
        v12 = (a1[10])();
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (v12)
        {
          VCVoiceDetector_Start_cold_1(ErrorLogLevelForModule);
          goto LABEL_20;
        }

        if (ErrorLogLevelForModule >= 7)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136315650;
            v17 = v14;
            v18 = 2080;
            v19 = "VCVoiceDetector_Start";
            v20 = 1024;
            v21 = 128;
            _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Vad_EnableLegacyVAD enabled", &v16, 0x1Cu);
          }
        }
      }

      if (!(a1[4])(*a1, *(a2 + 40), *a2))
      {
        return;
      }

      VCVoiceDetector_Start_cold_2();
LABEL_20:
      (a1[9])(*a1);
      *a1 = 0;
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v11 = *a1;
        v16 = 136316162;
        v17 = v9;
        v18 = 2080;
        v19 = "VCVoiceDetector_Start";
        v20 = 1024;
        v21 = 121;
        v22 = 1024;
        v23 = v8;
        v24 = 2048;
        v25 = v11;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d Vad_CreateInstance error=%d, audioVADRef=%p", &v16, 0x2Cu);
      }
    }
  }
}

void *VCVoiceDetector_Stop(void *result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      (v1[5])();
      result = (v1[9])(*v1);
      *v1 = 0;
    }
  }

  return result;
}

uint64_t VCVoiceDetector_ProcessSampleBuffer(float *a1, uint64_t a2, char a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = 0;
    if (a2 && *a1)
    {
      v26 = 0.0;
      v27 = 0.0;
      v25 = NAN;
      if (a3)
      {
        v4 = 1;
        v13 = 0.0;
      }

      else
      {
        AudioBufferList = VCAudioBufferList_GetAudioBufferList(a2);
        v7 = *(a1 + 6);
        v8 = *a1;
        v9 = *(AudioBufferList + 16);
        SampleCount = VCAudioBufferList_GetSampleCount(a2);
        v7(v8, v9, SampleCount);
        if ((*(a1 + 8))(*a1, &v27))
        {
          VCVoiceDetector_ProcessSampleBuffer_cold_1();
        }

        else if ((*(a1 + 7))(*a1, &v26))
        {
          VCVoiceDetector_ProcessSampleBuffer_cold_2();
        }

        else
        {
          v11 = v26;
          v12 = v27;
          if (v27 == 0.0)
          {
            VCUtil_ExponentialMovingAverage(a1 + 4, v26, 50.0);
            v13 = v14;
          }

          else
          {
            a1[4] = NAN;
            v13 = 1.0;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x1E6986650];
            v17 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 4.8155e-34;
                v30 = v15;
                v31 = 2080;
                v32 = "_VCVoiceDetector_CalculateVoiceProbability";
                v33 = 1024;
                v34 = 165;
                v35 = 1024;
                v36 = v12 != 0.0;
                v37 = 2048;
                v38 = v11;
                v39 = 2048;
                v40 = v13;
                _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d isVoiceActiveDNN=%d voiceProbabilityDNN=%f -> voiceProbability=%f", buf, 0x36u);
              }
            }

            else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 4.8155e-34;
              v30 = v15;
              v31 = 2080;
              v32 = "_VCVoiceDetector_CalculateVoiceProbability";
              v33 = 1024;
              v34 = 165;
              v35 = 1024;
              v36 = v12 != 0.0;
              v37 = 2048;
              v38 = v11;
              v39 = 2048;
              v40 = v13;
              _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d isVoiceActiveDNN=%d voiceProbabilityDNN=%f -> voiceProbability=%f", buf, 0x36u);
            }
          }

          if (*(a1 + 20) != 1)
          {
            goto LABEL_20;
          }

          v18 = (*(a1 + 11))(*a1, &v25);
          if (!v18)
          {
            VCAudioBufferList_SetVoiceActivity(a2, v25 == 0.0);
LABEL_20:
            VoiceActivity = VCAudioBufferList_GetVoiceActivity(a2);
            if (VoiceActivity == 1)
            {
              v20 = 127;
            }

            else
            {
              v20 = 1;
            }

            if (v27 == 0.0)
            {
              v4 = v20;
            }

            else
            {
              v4 = -1;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v21 = VRTraceErrorLogLevelToCSTR();
              v22 = *MEMORY[0x1E6986650];
              v23 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 4.8158e-34;
                  v30 = v21;
                  v31 = 2080;
                  v32 = "VCVoiceDetector_ProcessSampleBuffer";
                  v33 = 1024;
                  v34 = 216;
                  v35 = 1024;
                  v36 = VoiceActivity == 1;
                  v37 = 2048;
                  v38 = v27;
                  v39 = 2048;
                  v40 = v26;
                  v41 = 2048;
                  v42 = v13;
                  v43 = 1024;
                  v44 = v4;
                  _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d vad1=%d hard=%f soft=%f prob=%f priority=%d", buf, 0x46u);
                }
              }

              else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *buf = 4.8158e-34;
                v30 = v21;
                v31 = 2080;
                v32 = "VCVoiceDetector_ProcessSampleBuffer";
                v33 = 1024;
                v34 = 216;
                v35 = 1024;
                v36 = VoiceActivity == 1;
                v37 = 2048;
                v38 = v27;
                v39 = 2048;
                v40 = v26;
                v41 = 2048;
                v42 = v13;
                v43 = 1024;
                v44 = v4;
                _os_log_debug_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEBUG, " [%s] %s:%d vad1=%d hard=%f soft=%f prob=%f priority=%d", buf, 0x46u);
              }
            }

            goto LABEL_32;
          }

          VCVoiceDetector_ProcessSampleBuffer_cold_3(v13, v18, buf, &v28);
        }

        v13 = *buf;
        v4 = v28;
      }

LABEL_32:
      VCAudioBufferList_SetPriority(a2, v4);
      VCAudioBufferList_SetVoiceProbability(a2, v13);
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

void sub_1DBB57F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_25_12(uint64_t a1)
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_29_11()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_48_2(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2080;
  return result;
}

uint64_t _VCJitterBuffer_GetJBTargetFromEstimatedTarget(uint64_t a1, float *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    v4 = *a2;
    JTargetJBEstimator_GetSharedSettings(a1 + 38072, &v8);
    result = 0;
    v6 = fmax(v4, fmax(*&v9, *(a1 + 119272)));
    v7 = fmin(v6, *(&v9 + 1));
    *a2 = v7;
  }

  else
  {
    _VCJitterBuffer_GetJBTargetFromEstimatedTarget_cold_1(&v11);
    return v11;
  }

  return result;
}

void _VCJitterBuffer_GetMinMaxQueueSizeFromConfig(_DWORD *a1, double *a2, void *a3, double a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v6 = a1[50];
    if ((v6 - 1) < 2)
    {
      v7 = 0.04;
    }

    else if (v6)
    {
      if (v6 != 3)
      {
LABEL_13:
        v10 = a1[63];
        if (v10)
        {
          v11 = v10 / 1000.0;
          *a2 = v11;
        }

        else
        {
          v11 = *a2;
        }

        *a2 = VCDefaults_GetDoubleValueForKey(@"jitterBufferMinQueueSize", v11);
        return;
      }

      LODWORD(a4) = a1[62];
      v7 = *&a4 / 1000.0;
    }

    else
    {
      v7 = 0.1;
    }

    *a2 = v7;
    *a3 = 0x3FE0000000000000;
    goto LABEL_13;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = v8;
      v14 = 2080;
      v15 = "_VCJitterBuffer_GetMinMaxQueueSizeFromConfig";
      v16 = 1024;
      v17 = 777;
      v18 = 2048;
      v19 = a2;
      v20 = 2048;
      v21 = a3;
      _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid minQSize=%p or maxQSize=%p", &v12, 0x30u);
    }
  }
}

double _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeDefault(uint64_t a1, int *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 118656);
  if ((*(a2 + 24) != *(a1 + 120408) || *(a2 + 16) != *(a1 + 120400)) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a2;
      v9 = *(a2 + 1);
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      v12 = *(a2 + 11);
      v13 = *(a2 + 17);
      v14 = *(a2 + 18);
      v15 = *(a2 + 10);
      v16 = *v4;
      v17 = 136318210;
      v18 = v6;
      v19 = 2080;
      v20 = "_VCJitterBuffer_LogNWNotificationBBAdvisoryTypeDefault";
      v21 = 1024;
      v22 = 814;
      v23 = 2048;
      v24 = a1;
      v25 = 1024;
      v26 = v8;
      v27 = 2048;
      v28 = v9;
      v29 = 1024;
      v30 = v10;
      v31 = 1024;
      v32 = v11;
      v33 = 1024;
      v34 = v12;
      v35 = 1024;
      v36 = v13;
      v37 = 1024;
      v38 = v14;
      v39 = 1024;
      v40 = v15;
      v41 = 2048;
      v42 = v16;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCJitterBuffer[%p] Cellular Network Notification: basebandAdvisoryType=%d timestamp=%llu radioAccessTechnology=%u outageState=%u estimatedOutagePeriod=%u signalQuality=%d dlBLER=%u cdrxCycleLength=%u targetJBSize=%f", &v17, 0x64u);
    }
  }

  return result;
}

void _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeCDRX(uint64_t a1, int *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 19) != *(a1 + 120403) || *(a2 + 10) != *(a1 + 120404)) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a2;
      v7 = *(a2 + 19);
      v8 = *(a2 + 10);
      v9 = 136316674;
      v10 = v4;
      v11 = 2080;
      v12 = "_VCJitterBuffer_LogNWNotificationBBAdvisoryTypeCDRX";
      v13 = 1024;
      v14 = 821;
      v15 = 2048;
      v16 = a1;
      v17 = 1024;
      v18 = v6;
      v19 = 1024;
      v20 = v7;
      v21 = 1024;
      v22 = v8;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCJitterBuffer[%p] Cellular Network Notification: basebandAdvisoryType=%d cdrxState=%u cdrxCycleLength=%u", &v9, 0x38u);
    }
  }
}

void _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeLinkMeasurement(uint64_t a1, int *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16) != *(a1 + 120400) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a2;
      v7 = *(a2 + 16);
      v8 = *(a2 + 17);
      v9 = *(a2 + 18);
      v10 = 136316930;
      v11 = v4;
      v12 = 2080;
      v13 = "_VCJitterBuffer_LogNWNotificationBBAdvisoryTypeLinkMeasurement";
      v14 = 1024;
      v15 = 827;
      v16 = 2048;
      v17 = a1;
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = v7;
      v22 = 1024;
      v23 = v8;
      v24 = 1024;
      v25 = v9;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCJitterBuffer[%p] Cellular Network Notification: basebandAdvisoryType=%d radioAccessTechnology=%u signalQuality=%d dlBLER=%u", &v10, 0x3Eu);
    }
  }
}

void _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeOutage(uint64_t a1, int *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 24) != *(a1 + 120408) || *(a2 + 16) != *(a1 + 120400)) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a2;
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
      v9 = *(a2 + 11);
      v10 = 136316930;
      v11 = v4;
      v12 = 2080;
      v13 = "_VCJitterBuffer_LogNWNotificationBBAdvisoryTypeOutage";
      v14 = 1024;
      v15 = 834;
      v16 = 2048;
      v17 = a1;
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = v7;
      v22 = 1024;
      v23 = v8;
      v24 = 1024;
      v25 = v9;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCJitterBuffer[%p] Cellular Network Notification: basebandAdvisoryType=%d radioAccessTechnology=%u outageState=%u estimatedOutagePeriod=%u", &v10, 0x3Eu);
    }
  }
}

void VCJitterBuffer_Create(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x1D678uLL, 0x10F204088CFEE3CuLL);
    v3 = v2;
    if (v2)
    {
      memcpy(v2, a1, 0x120uLL);
      if ((*(v3 + 260) & 1) == 0)
      {
        v4 = VCBoundsSafety_IndexableToNulTerminated(a1, 0xC8uLL);
        *(v3 + 120328) = LogDump_OpenLog(v4, "JitterBuffer", ".jbdump", "STime\tTimestamp\tSPF\tBundling\tDTX\tNetworkType\tFirstTimestamp\tWraps\tIsRed\tLag\tAvgLag\tMaxLag\tMinLag\tJumpThresh\tSlopeThresh\tFlat\tClippedLag\tMinLagAdjustment\tMinClipThreshold\tJB\tJBMin\tJBMax\tTargetJ\tRedOverheadInTargetJ\tTargetJQSize\tJQSize\tAvgJQSize\tERASURE\tMODE\tPayload Type\tSeq Number\tINTS\tOUTTS\tLeftOverSamples\tProminence\tStreamID\tTargetSizeIndependent\tAVSyncOffset\tIntermittentState\tSingleOutagePeriod\tEstimatedIntermittentPeriod\tTargetBoostMode\tErasureAlt\n", 9, "2.7");
      }

      DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"audioJitterBufferWeightedAvgQSizeFactor", 0.05);
      *(v3 + 119304) = DoubleValueForKey;
      v40 = 0;
      v41 = 0;
      _VCJitterBuffer_GetMinMaxQueueSizeFromConfig(a1, &v41, &v40, DoubleValueForKey);
      *(v3 + 120320) = v41;
      *(v3 + 119288) = *(a1 + 200) == 3;
      if (*(a1 + 204) == 1)
      {
        v6 = *(a1 + 282);
      }

      else
      {
        v6 = 0;
      }

      *(v3 + 119289) = v6 & 1;
      v7 = *(v3 + 120328);
      *&v39 = 0;
      *(&v39 + 1) = v7;
      if (v3 >= v3 + 120440)
      {
        __break(0x5519u);
        return;
      }

      if (JLagProcessor_Initialize(v3 + 37616, &v39))
      {
        v38 = 0;
        v37 = 0u;
        v36 = 0u;
        v35 = 0u;
        v34 = 0u;
        v33 = 0u;
        memset(&v32[4], 0, 32);
        v8 = *(v3 + 120320);
        v32[0] = v8;
        MinQueueSizeOverride5G = GKSConnectivitySettings_GetMinQueueSizeOverride5G();
        v10 = 0.1;
        if (MinQueueSizeOverride5G != 0.0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v43 = v11;
              v44 = 2080;
              v45 = "VCJitterBuffer_GetMinJitterBufferQueueSize5G";
              v46 = 1024;
              v47 = 745;
              v48 = 2048;
              v49 = MinQueueSizeOverride5G;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d JB Min Queue Size for 5G is overriden with server bag value %f", buf, 0x26u);
            }
          }

          v10 = MinQueueSizeOverride5G;
        }

        v13 = VCDefaults_GetDoubleValueForKey(@"kVCDefaultJitterBufferMinQueueSize5G", v10);
        v14 = v40;
        *&v32[1] = v13;
        v32[2] = v40;
        if (*(v3 + 200))
        {
          v15 = 0.1;
        }

        else
        {
          v15 = 0.25;
        }

        *&v32[3] = v15;
        v16 = *(a1 + 204);
        LODWORD(v32[4]) = v16;
        *&v32[5] = xmmword_1DBD51A00;
        *&v33 = *(v3 + 120328);
        LOWORD(v32[7]) = 257;
        LOBYTE(v35) = 1;
        v17 = *(a1 + 218) ^ 1;
        BYTE1(v35) = v17;
        BYTE3(v35) = 1;
        BYTE8(v33) = VCDefaults_GetBoolValueForKey(@"jitterBufferHistoryUseShortTermWindowForTargetExpansion", 1);
        v18 = VCDefaults_GetDoubleValueForKey(@"jitterBufferHistoryShortTermWindowSize", 5.0);
        *&v34 = v18;
        v19 = VCDefaults_GetDoubleValueForKey(@"jitterBufferHistoryLongTermWindowSize", 10.0);
        *(&v34 + 1) = v19;
        v20 = *(a1 + 217);
        BYTE2(v35) = *(a1 + 217);
        v21 = *(a1 + 232);
        if (v21)
        {
          v22 = CFRetain(v21);
        }

        else
        {
          v22 = 0;
        }

        *(&v35 + 1) = v22;
        *&v36 = 0x4008000000000000;
        DWORD2(v36) = *(v3 + 240);
        LOBYTE(v38) = 1;
        *&v37 = _VCJitterBuffer_GetJBTargetFromEstimatedTarget;
        *(&v37 + 1) = v3;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(v3 + 216);
            v26 = *(v3 + 260);
            v27 = *(v3 + 280);
            *buf = 136319490;
            v43 = v23;
            v44 = 2080;
            v45 = "VCJitterBuffer_Create";
            v46 = 1024;
            v47 = 914;
            v48 = 2048;
            v49 = *&v3;
            v50 = 2048;
            v51 = v8;
            v52 = 2048;
            v53 = v14;
            v54 = 2048;
            v55 = v15;
            v56 = 1024;
            v57 = v16;
            v58 = 2048;
            v59 = 0x3FEE666666666666;
            v60 = 2048;
            v61 = v18;
            v62 = 2048;
            v63 = v19;
            v64 = 1024;
            v65 = v20;
            v66 = 2048;
            v67 = v13;
            v68 = 2048;
            v69 = v22;
            v70 = 1024;
            v71 = v17 & 1;
            v72 = 1024;
            v73 = v25;
            v74 = 1024;
            v75 = v26;
            v76 = 1024;
            v77 = v27;
            _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCJitterBuffer[%p] Jitter buffer configured with minQSize=%f maxQSize=%f highStartQSize=%f highStartMode=%d targetPercentileToCover=%f shortTermWindowSize=%f longTermWindowSize=%f filterDRXBundleEnabled=%d minQSize5G=%f targetSynchronizer=%p spikeManagement=%d skipDecodeOnSilence=%d skipJBDumpCreation=%d enableEnhancedJBAdaptations=%d", buf, 0x9Au);
          }
        }

        if (JTargetJBEstimator_Initialize(v3 + 38072, v32))
        {
          v28 = JitterPreloadQueue_Create();
          *(v3 + 119248) = v28;
          if (v28)
          {
            v29 = JitterQueue_Create();
            *(v3 + 119256) = v29;
            if (v29)
            {
              *(v3 + 120424) = *(a1 + 264);
              *(v3 + 119488) = 0;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v30 = VRTraceErrorLogLevelToCSTR();
                v31 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v43 = v30;
                  v44 = 2080;
                  v45 = "VCJitterBuffer_Create";
                  v46 = 1024;
                  v47 = 930;
                  _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Jitter Buffer Created Successfully", buf, 0x1Cu);
                }
              }

              return;
            }

            VCJitterBuffer_Create_cold_3();
          }

          else
          {
            VCJitterBuffer_Create_cold_4();
          }
        }

        else
        {
          VCJitterBuffer_Create_cold_2();
        }
      }

      else
      {
        VCJitterBuffer_Create_cold_1();
      }
    }

    else
    {
      VCJitterBuffer_Create_cold_5();
    }

    VCJitterBuffer_Finalize(v3);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCJitterBuffer_Create_cold_6();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_Create_cold_7();
    }
  }
}

void VCJitterBuffer_Finalize(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315906;
        v9 = v3;
        v10 = 2080;
        v11 = "VCJitterBuffer_Finalize";
        v12 = 1024;
        v13 = 943;
        v14 = 2048;
        v15 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cleaning up JitterBuffer (%p)", &v8, 0x26u);
      }
    }

    v5 = a1[14907];
    if (v5)
    {
      JitterQueue_Destroy(v5);
      a1[14907] = 0;
    }

    v6 = a1[14906];
    if (v6)
    {
      JitterPreloadQueue_Destroy(v6);
      a1[14906] = 0;
    }

    VCAudioPlayer_Finalize((a1 + 36));
    JTargetJBEstimator_Finalize((a1 + 4759));
    v7 = a1[29];
    if (v7)
    {
      CFRelease(v7);
      a1[29] = 0;
    }

    LogDump_CloseLog(a1[15041]);
    free(a1);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_Finalize_cold_1();
    }
  }
}

uint64_t VCJitterBuffer_QueueSteeringCallback(uint64_t a1, double a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = 0;
    *(a1 + 119344) = a2;
  }

  else
  {
    VCJitterBuffer_QueueSteeringCallback_cold_1(&v4);
    return v4;
  }

  return result;
}

uint64_t VCJitterBuffer_InitializePlayback(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1 + 118784;
    v18 = -86;
    v17 = -21846;
    memset(v23, 170, sizeof(v23));
    v5 = *(a1 + 119256);
    v6 = VCBoundsSafety_IndexableToNulTerminated(a1, 0xC8uLL);
    v7 = *(a1 + 244);
    v8 = *(v4 + 1632);
    v9 = *(a1 + 261);
    v10 = *(a1 + 280);
    v11 = *(a1 + 283);
    v12 = *(a1 + 285);
    v15[0] = v5;
    v15[1] = a2;
    v15[2] = v6;
    v15[3] = *(a1 + 220);
    v15[4] = VCJitterBuffer_QueueSteeringCallback;
    v15[5] = a1;
    v16 = v7;
    v19 = vrev64_s32(*(a1 + 252));
    v20 = -1431655766;
    v21 = v8;
    v22 = v9;
    v24 = a1;
    v25 = _VCJitterBuffer_DTMFEventCallback;
    v26 = v10;
    v27 = v11;
    v28 = v12;
    v29 = -1431655766;
    return VCAudioPlayer_Initialize(a1 + 288, v15);
  }

  else
  {
    v13 = 2151874561;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCJitterBuffer_InitializePlayback_cold_1();
      }
    }
  }

  return v13;
}

uint64_t _VCJitterBuffer_DTMFEventCallback(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 120432);
    if (v1)
    {
      return v1(*(result + 120424));
    }
  }

  return result;
}

void VCJitterBuffer_Reset(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v3;
        v7 = 2080;
        v8 = "VCJitterBuffer_Reset";
        v9 = 1024;
        v10 = 1007;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v5, 0x26u);
      }
    }

    *(a1 + 119320) = 1;
    VCJitterBuffer_ResetPlaybackReportingMetrics(a1);
    VCJitterBuffer_ResetJitterQueueUnderflowRate(a1);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_Reset_cold_1();
    }
  }
}

void VCJitterBuffer_ResetPlaybackReportingMetrics(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v3;
        v7 = 2080;
        v8 = "VCJitterBuffer_ResetPlaybackReportingMetrics";
        v9 = 1024;
        v10 = 1034;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v5, 0x26u);
      }
    }

    VCAudioPlayer_ResetReportingMetrics(a1 + 288);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_ResetPlaybackReportingMetrics_cold_1();
    }
  }
}

void VCJitterBuffer_ResetJitterQueueUnderflowRate(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v3;
        v7 = 2080;
        v8 = "VCJitterBuffer_ResetJitterQueueUnderflowRate";
        v9 = 1024;
        v10 = 1040;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v5, 0x26u);
      }
    }

    JitterQueue_ResetUnderflowRate(*(a1 + 119256));
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_ResetJitterQueueUnderflowRate_cold_1();
    }
  }
}

void VCJitterBuffer_DiscardQueueExcess(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v3;
        v7 = 2080;
        v8 = "VCJitterBuffer_DiscardQueueExcess";
        v9 = 1024;
        v10 = 1015;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v5, 0x26u);
      }
    }

    *(a1 + 119312) = 1;
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_DiscardQueueExcess_cold_1();
    }
  }
}

void VCJitterBuffer_SetRedAudioDelayInSamples(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136316162;
          v9 = v5;
          v10 = 2080;
          v11 = "VCJitterBuffer_SetRedAudioDelayInSamples";
          v12 = 1024;
          v13 = 1021;
          v14 = 2048;
          v15 = a1;
          v16 = 1024;
          v17 = a2;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] redAudioDelayInSamples:%d", &v8, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = 136316162;
        v9 = v5;
        v10 = 2080;
        v11 = "VCJitterBuffer_SetRedAudioDelayInSamples";
        v12 = 1024;
        v13 = 1021;
        v14 = 2048;
        v15 = a1;
        v16 = 1024;
        v17 = a2;
        _os_log_debug_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] redAudioDelayInSamples:%d", &v8, 0x2Cu);
      }
    }

    *(a1 + 119328) = a2;
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_SetRedAudioDelayInSamples_cold_1();
    }
  }
}

void VCJitterBuffer_Flush(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v3;
        v7 = 2080;
        v8 = "VCJitterBuffer_Flush";
        v9 = 1024;
        v10 = 1027;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v5, 0x26u);
      }
    }

    JitterPreloadQueue_Flush(*(a1 + 119248));
    JitterQueue_Reset(*(a1 + 119256));
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_Flush_cold_1();
    }
  }
}

void VCJitterBuffer_EnqueuePacket(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1 + 119248;
    PlaybackFormat = VCAudioPlayer_GetPlaybackFormat(a1 + 288);
    v6 = *PlaybackFormat;
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    v7 = *(a2 + 14);
    LOWORD(v58) = v7;
    DWORD1(v58) = *(a2 + 16);
    v8 = *(a2 + 1824);
    *(&v58 + 1) = *(a2 + 32);
    *&v59 = v8;
    DWORD2(v59) = *(a2 + 1516);
    LODWORD(v60) = *(a2 + 1816);
    BYTE4(v60) = *(a2 + 12);
    BYTE5(v60) = *(a2 + 40) != 0;
    if (*(v4 + 68) == 3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a2 + 14);
          *buf = 136316162;
          v66 = v9;
          v67 = 2080;
          v68 = "VCJitterBuffer_EnqueuePacket";
          v69 = 1024;
          v70 = 1070;
          v71 = 2048;
          v72 = a1;
          v73 = 1024;
          v74 = v11;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] state Reset dropping packet seqNum=%d", buf, 0x2Cu);
        }
      }

      goto LABEL_15;
    }

    if (*(a2 + 4) || *(v4 + 72) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(v4 + 72);
          v15 = *(a2 + 4);
          v16 = *(a2 + 14);
          *buf = 136316674;
          v66 = v12;
          v67 = 2080;
          v68 = "VCJitterBuffer_EnqueuePacket";
          v69 = 1024;
          v70 = 1074;
          v71 = 2048;
          v72 = a1;
          v73 = 1024;
          v74 = v14;
          v75 = 1024;
          v76 = v15;
          v77 = 1024;
          v78 = v16;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Setting state Reset, jqRequested[%d] packetNewStream[%d] seqNum[%d]", buf, 0x38u);
        }
      }

      *(v4 + 68) = 3;
      *(v4 + 72) = 0;
      VRLogfilePrint(*(v4 + 1080), "State = RESET\n");
      goto LABEL_15;
    }

    if (!*(v4 + 68))
    {
      v17 = PlaybackFormat;
      JTargetJBEstimator_NewStream(a1 + 38072, v6, v7);
      JLagProcessor_NewStream(a1 + 37616, &v58, v6, v17[1]);
      JTargetJBEstimator_GetMinJBSize(a1 + 38072);
      v18 = *(a1 + 38104);
      *(v4 + 24) = v19;
      *(v4 + 32) = v18;
      *(a1 + 119408) = 0u;
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"forceJitterBufferSize", @"com.apple.VideoConference", 0);
      *(v4 + 44) = AppIntegerValue;
      VCAudioPlayer_AdjustmentDisabled(a1 + 288, AppIntegerValue != 0);
      *(v4 + 68) = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v66 = v21;
          v67 = 2080;
          v68 = "VCJitterBuffer_EnqueuePacket";
          v69 = 1024;
          v70 = 1093;
          v71 = 2048;
          v72 = a1;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] JBState NEWSTREAM -> SETTLE", buf, 0x26u);
        }
      }

      VRLogfilePrint(*(v4 + 1080), "State = STATE_NEWSTREAM, iSampleRate = %d\nState = SETTLE\n", v6);
    }

    v23 = *(*(a2 + 1840) + 20);
    v24 = JLagProcessor_Process(a1 + 37616, &v58, v23, *(v4 + 136), *(v4 + 68));
    v25 = v24;
    if (*(v4 + 68) == 1)
    {
      if (fabs(v24) > 0.0250000004)
      {
LABEL_15:
        VCJitterBuffer_AudioPacketFree(a1, a2);
        return;
      }

      *(v4 + 68) = 2;
      VRLogfilePrint(*(v4 + 1080), "State = FILL\n");
    }

    if (*(v4 + 68) <= 3u)
    {
      *(v4 + 1064) += *(a2 + 1816) * *(*(a2 + 1840) + 20);
    }

    if (*(a2 + 40))
    {
      ++*(v4 + 176);
    }

    if (*(v4 + 68) == 2 && *(v4 + 76))
    {
      JTargetJBEstimator_GetMinJBSize(a1 + 38072);
      v27 = *(v4 + 44);
      if (v27 && v6)
      {
        v26 = v27 / v6;
      }

      else if (*(v4 + 41) == 1)
      {
        v26 = *(a1 + 38112);
      }

      if (v4 + 16 >= (v4 + 136))
      {
        goto LABEL_69;
      }

      v28 = *(v4 + 1064) / v6;
      if (*(v4 + 40))
      {
        v29 = v28 >= v26;
      }

      else
      {
        v29 = v28 > v26;
      }

      if (v29)
      {
        *(v4 + 68) = 4;
        _VCJitterBuffer_UpdateDiscardAlgoParams(a1);
        JTargetJBEstimator_ResetHistory(a1 + 38072);
        VRLogfilePrint(*(v4 + 1080), "State = RUN\n");
      }
    }

    v30 = *(a2 + 1816);
    if (v30 >= 1)
    {
      v31 = (a2 + 1784);
      while (v31 < a2 + 1816 && v31 >= a2 + 1784)
      {
        v32 = *v31++;
        *(v32 + 1192) = *(a1 + 35896);
        if (!--v30)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_69;
    }

LABEL_47:
    bzero(buf, 0x748uLL);
    AudioPacket_initNewPacket(a2, buf);
    JitterPreloadQueue_Enqueue(*v4, a2);
    if (v67)
    {
      v33 = 0;
    }

    else
    {
      *&v62[8] = 0u;
      *v61 = v68;
      *&v61[8] = v80;
      *&v61[16] = v23;
      *&v61[20] = v79;
      *v62 = *(&v68 + 2);
      v62[16] = v74 != 0;
      if (JTargetJBEstimator_Process(a1 + 38072, v61, v25))
      {
        v33 = 0;
      }

      else
      {
        v33 = 8;
      }
    }

    if (*(v4 + 128) != 1)
    {
      goto LABEL_59;
    }

    v34 = _VCJitterBuffer_DesiredQSize(a1);
    if (VRTraceGetErrorLogLevelForModule() < 7 || (v35 = VRTraceErrorLogLevelToCSTR(), v36 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
    {
LABEL_58:
      *(v4 + 128) = 0;
LABEL_59:
      memset(v61, 170, 20);
      v41 = *(v4 + 1080);
      if (v41 && (v67 & 1) == 0)
      {
        LogDump_GetTimestampString(v41, v61, 20, v80);
        Statistics = JTargetJBEstimator_GetStatistics(a1 + 38072);
        v43 = JLagProcessor_GetStatistics(a1 + 37616);
        v44 = VCAudioPlayer_GetStatistics((a1 + 288));
        v45 = VCAudioPlayer_GetPlaybackFormat(a1 + 288);
        v46 = _VCJitterBuffer_DesiredQSize(a1);
        LOWORD(v47) = *(v4 + 1130);
        *&v48 = v47;
        v49 = *&v48 / 1000.0;
        LOWORD(v48) = *(v4 + 1132);
        LODWORD(v50) = *v45;
        v51 = v50;
        v52 = v49;
        *&v49 = v48 / 1000.0;
        VRLogfilePrint(*(v4 + 1080), "%s\t%u\t%u\t%d\t%d\t%d\t%u\t%u\t%d\t%02.6f\t%02.6f\t%02.6f\t%02.6f\t%02.4f\t%02.4f\t%d\t%02.6f\t%02.6f\t%02.6f\t%02.4f\t%02.4f\t%02.4f\t%02.4f\t%02.4f\t%6d\t%6d\t%d\t%d\t%s\t%d\t%u\t%u\t%u\t%d\t%d\t%d\t%02.6f\t%02.4f\t%u\t%2.6f\t%2.6f\t%d\t%d\n", v61, *(&v68 + 2), v81[5], v79, v74, *Statistics, *(v43 + 16), *(v43 + 20), v67, *(v43 + v33), *(Statistics + 8), *(Statistics + 24), *(Statistics + 16), *(Statistics + 32), *(Statistics + 40), *(Statistics + 48), *(Statistics + 56), *(Statistics + 64), *(Statistics + 72), *(Statistics + 80), *(Statistics + 96), *(Statistics + 104), v46 / v51, *(v4 + 84) / v51, v46, *(v44 + 7), *(v4 + 16), *v44, v44[2], *v81, v68, *(v44 + 2), *(v44 + 3), *(v44 + 6), v82, v83, *(Statistics + 88), 0.0, *(v4 + 1128), *&v49, v52, *(Statistics + 112), *(v44 + 1));
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v53 = VRTraceErrorLogLevelToCSTR();
        v54 = *MEMORY[0x1E6986650];
        v55 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = *(v4 + 68);
            *v61 = 136316930;
            *&v61[4] = v53;
            *&v61[12] = 2080;
            *&v61[14] = "VCJitterBuffer_EnqueuePacket";
            *&v61[22] = 1024;
            *v62 = 1173;
            *&v62[4] = 2048;
            *&v62[6] = a1;
            *&v62[14] = 1024;
            *&v62[16] = v56;
            *&v62[20] = 1024;
            *&v62[22] = v70;
            LOWORD(v63) = 1024;
            *(&v63 + 2) = HIDWORD(v66);
            HIWORD(v63) = 1024;
            v64[0] = v68;
            _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] JBState[%d] payloadType[%d] bytes[%d] SeqNumber[%d]", v61, 0x3Eu);
          }
        }

        else if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          v57 = *(v4 + 68);
          *v61 = 136316930;
          *&v61[4] = v53;
          *&v61[12] = 2080;
          *&v61[14] = "VCJitterBuffer_EnqueuePacket";
          *&v61[22] = 1024;
          *v62 = 1173;
          *&v62[4] = 2048;
          *&v62[6] = a1;
          *&v62[14] = 1024;
          *&v62[16] = v57;
          *&v62[20] = 1024;
          *&v62[22] = v70;
          LOWORD(v63) = 1024;
          *(&v63 + 2) = HIDWORD(v66);
          HIWORD(v63) = 1024;
          v64[0] = v68;
          _os_log_debug_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] JBState[%d] payloadType[%d] bytes[%d] SeqNumber[%d]", v61, 0x3Eu);
        }
      }

      return;
    }

    v37 = &targetBoostModeDescription[*(v4 + 112)];
    if (v37 < &__block_descriptor_32_e34_v24__0__NSDictionary_8__NSError_16l && v37 >= targetBoostModeDescription)
    {
      *v61 = 136316674;
      v38 = *v37;
      v39 = *(v4 + 24);
      v40 = *(v4 + 120);
      *&v61[4] = v35;
      *&v61[12] = 2080;
      *&v61[14] = "VCJitterBuffer_EnqueuePacket";
      *&v61[22] = 1024;
      *v62 = 1164;
      *&v62[4] = 2080;
      *&v62[6] = v38;
      *&v62[14] = 2048;
      *&v62[16] = v39;
      *&v62[24] = 2048;
      v63 = v34 / v6;
      LOWORD(v64[0]) = 2048;
      *(v64 + 2) = v40;
      _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Target boosting has changed: targetBoostMode=%s, minQueueSize=%.2f, currentTargetSize=%.2f, targetBoostingInSec=%.2f", v61, 0x44u);
      goto LABEL_58;
    }

LABEL_69:
    __break(0x5519u);
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_EnqueuePacket_cold_1();
    }
  }
}

void VCJitterBuffer_AudioPacketFree(uint64_t a1, int *a2)
{
  if (a1)
  {
    if (a2[454] < 1)
    {
LABEL_7:
      v9 = *(a1 + 119248);

      JitterPreloadQueue_AudioPacketFree(v9, a2);
    }

    else
    {
      v4 = 0;
      v5 = a2 + 454;
      v6 = a2 + 446;
      v7 = (a2 + 446);
      while (v7 < v5 && v7 >= v6)
      {
        v8 = *v7++;
        JitterPreloadQueue_AudioFrameFree(*(a1 + 119248), v8);
        if (++v4 >= *v5)
        {
          goto LABEL_7;
        }
      }

      __break(0x5519u);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_AudioPacketFree_cold_1();
    }
  }
}

void _VCJitterBuffer_UpdateDiscardAlgoParams(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 36292) == 2)
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 3.0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "_VCJitterBuffer_UpdateDiscardAlgoParams";
      v9 = 1024;
      v10 = 1047;
      v11 = 2048;
      v12 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Configuring queue discard threshold=%f", &v5, 0x26u);
    }
  }

  *(a1 + 118816) = v2;
}

uint64_t _VCJitterBuffer_DesiredQSize(_DWORD *a1)
{
  v2 = a1 + 29696;
  result = a1[29823];
  if (!result)
  {
    if (a1[50] == 3)
    {
      PlaybackFormat = VCAudioPlayer_GetPlaybackFormat((a1 + 72));
      LODWORD(v5) = a1[62];
      HIDWORD(v6) = 1083129856;
      LODWORD(v6) = *PlaybackFormat;
      return (v5 / 1000.0 * v6);
    }

    else
    {
      return (v2[150] + v2[128]);
    }
  }

  return result;
}

void VCJitterBuffer_PlaybackGetSamples(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4, uint64_t a5, int *a6, int *a7)
{
  v220 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCJitterBuffer_PlaybackGetSamples_cold_2();
      }
    }

    return;
  }

  v9 = a1 + 119080;
  v10 = micro(a1, a2);
  v208 = 1;
  v207 = 0;
  v206 = 1;
  v194 = a2;
  SampleCount = VCAudioBufferList_GetSampleCount(a2);
  v195 = (v9 + 184);
  JTargetJBEstimator_GetMinJBSize(a1 + 38072);
  v200 = a1;
  v11 = *(a1 + 38104);
  *(v9 + 192) = v12;
  *(v9 + 200) = v11;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (ErrorLogLevelForModule >= 8)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    v17 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      ErrorLogLevelForModule = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (ErrorLogLevelForModule)
      {
        *buf = 136315906;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = "VCJitterBuffer_PlaybackGetSamples";
        *&buf[22] = 1024;
        *&buf[24] = 1192;
        *&buf[28] = 2048;
        *&buf[30] = v200;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Playback get samples", buf, 0x26u);
      }
    }

    else
    {
      ErrorLogLevelForModule = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
      if (ErrorLogLevelForModule)
      {
        VCJitterBuffer_PlaybackGetSamples_cold_1();
      }
    }
  }

  v187 = v10;
  v18 = micro(ErrorLogLevelForModule, v14);
  v19 = dbl_1DBD51A10[*(v9 + 236) < 4u];
  v22 = micro(v20, v21);
  v185 = v18;
  v197 = v18 + v19;
  if (v22 >= v18 + v19)
  {
    v196 = 0;
    v198 = 0;
    goto LABEL_190;
  }

  v196 = 0;
  v198 = 0;
  v192 = (v9 + 1224);
  v23 = v200;
  v184 = v200 + 119504;
  while (1)
  {
    v24 = JitterPreloadQueue_Dequeue(*(v9 + 168));
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_19;
    }

    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    v28 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] != 1)
    {
      break;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(v9 + 236);
      *buf = 136316418;
      *&buf[4] = v26;
      *&buf[12] = 2080;
      *&buf[14] = "_VCJitterBuffer_DequeuePacketsFromPreloadQueue";
      *&buf[22] = 1024;
      *&buf[24] = 637;
      *&buf[28] = 2048;
      *&buf[30] = v23;
      *&buf[38] = 1024;
      *&buf[40] = v24 == 0;
      *&buf[44] = 1024;
      *&buf[46] = v29;
      _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Dequeue packet, is audio packet null:%d, state %d", buf, 0x32u);
      if (!v24)
      {
        goto LABEL_188;
      }

      goto LABEL_20;
    }

LABEL_19:
    if (!v24)
    {
      goto LABEL_188;
    }

LABEL_20:
    if (*(v23 + 216) == 1 && *(v24 + 1856) >= 2u && *(v23 + 284) == 1)
    {
      VCAudioPlayer_ResumeAudioErasureMeasurement(v23 + 288, v24[4]);
    }

    if (v24 >= v24 + 466)
    {
LABEL_249:
      __break(0x5519u);
    }

    *v214 = 0;
    v30 = v24 + 454;
    v199 = v24;
    if (v24[454] >= 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = v24 + 446;
      do
      {
        if (&v33[v31] >= v30 || &v33[v31] < v33)
        {
          goto LABEL_249;
        }

        v35 = *&v33[2 * v32];
        if (*(v200 + 280) == 1)
        {
          *(v35 + 1268) = VCSilencePredictor_PredictSilence(v200 + 840, *(v35 + 1196), *(v35 + 1144));
        }

        v36 = v35 + 1272;
        if (v35 >= v35 + 1272)
        {
          goto LABEL_249;
        }

        v37 = *(v35 + 1144);
        v38 = *(v35 + 1256);
        v39 = *(v35 + 8);
        v40 = JitterQueue_Insert(*(v9 + 176), v35, v214);
        if ((v40 & 1) == 0)
        {
          v36 = 0;
          v35 = 0;
          *&v33[2 * v32] = 0;
        }

        if (v39)
        {
          v41.i32[0] = 1;
          v41.i32[1] = v37;
          *(v9 + 356) = vadd_s32(*(v9 + 356), v41);
          *(v9 + 376) = v38;
          if (v40)
          {
            v42 = *(v199 + 228);
            *(v9 + 256) = v42;
            v43 = VRTraceGetErrorLogLevelForModule();
            if (v43 >= 8)
            {
              v44 = VRTraceErrorLogLevelToCSTR();
              v45 = *MEMORY[0x1E6986650];
              v46 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                v43 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
                if (v43)
                {
                  *buf = 136315906;
                  *&buf[4] = v44;
                  *&buf[12] = 2080;
                  *&buf[14] = "_VCJitterBuffer_UpdateRedAudioArrivalTime";
                  *&buf[22] = 1024;
                  *&buf[24] = 347;
                  *&buf[28] = 2048;
                  *&buf[30] = v42;
                  _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Red frame inserted, updating time red frame was used. lastRedAudioArrivalTime=%f", buf, 0x26u);
                  if (!v35)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_47;
                }
              }

              else
              {
                v43 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
                if (v43)
                {
                  *buf = 136315906;
                  *&buf[4] = v44;
                  *&buf[12] = 2080;
                  *&buf[14] = "_VCJitterBuffer_UpdateRedAudioArrivalTime";
                  *&buf[22] = 1024;
                  *&buf[24] = 347;
                  *&buf[28] = 2048;
                  *&buf[30] = v42;
                  _os_log_debug_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Red frame inserted, updating time red frame was used. lastRedAudioArrivalTime=%f", buf, 0x26u);
                  if (!v35)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_47;
                }
              }
            }

            if (!v35)
            {
LABEL_48:
              memset(buf, 170, 20);
              v47 = *(v9 + 1248);
              if (v47 && *(v35 + 8) == 1)
              {
                v48 = micro(v43, v25);
                LogDump_GetTimestampString(v47, buf, 20, v48);
                Statistics = VCAudioPlayer_GetStatistics((v200 + 288));
                PlaybackFormat = VCAudioPlayer_GetPlaybackFormat(v200 + 288);
                v51 = _VCJitterBuffer_DesiredQSize(v200);
                LOWORD(v52) = *(v9 + 1298);
                *&v52 = v52 / 1000.0;
                LOWORD(v53) = *(v9 + 1300);
                *&v53 = v53 / 1000.0;
                LODWORD(v54) = *PlaybackFormat;
                VRLogfilePrint(*(v9 + 1248), "%s\t%u\t%u\t%d\t%d\t%d\t%u\t%u\t%d\t%02.6f\t%02.6f\t%02.6f\t%02.6f\t%02.4f\t%02.4f\t%d\t%02.6f\t%02.6f\t%02.6f\t%02.4f\t%02.4f\t%02.4f\t%02.4f\t%02.4f\t%6d\t%6d\t%d\t%d\t%s\t%d\t%u\t%u\t%u\t%d\t%d\t%d\t%02.6f\t%02.4f\t%u\t%2.6f\t%2.6f\t%d\t%d\n", buf, *(v35 + 12), *(*(v35 + 1216) + 20), 1, *(v35 + 1176), 0, 0, 0, *(v35 + 8), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v51 / v54, *(v9 + 252) / v54, v51, *(Statistics + 7), *(v9 + 184), *Statistics, Statistics[2], **(v35 + 1216), *(v35 + 10), *(Statistics + 2), *(Statistics + 3), *(Statistics + 6), *(v35 + 1232), *(v35 + 1234), 0.0, 0.0, *(v9 + 1296), *&v53, *&v52, *v9, *(Statistics + 1));
              }

              goto LABEL_51;
            }

LABEL_47:
            if (v35 >= v36)
            {
              goto LABEL_249;
            }

            goto LABEL_48;
          }

          *(v9 + 364) = vadd_s32(*(v9 + 364), v41);
        }

LABEL_51:
        ++v32;
        v31 += 2;
      }

      while (v32 < *v30);
    }

    LogProfileTimeOverLimit_4("SpkrProc: PreloadQueue_Dequeue and AddPacket", v25, v22, 0.00200000009);
    v55 = *(v199 + 228);
    v56 = 0.0;
    IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
    if (IsInternalOSInstalled)
    {
      v56 = micro(IsInternalOSInstalled, v58);
    }

    v59 = *VCAudioPlayer_GetPlaybackFormat(v200 + 288);
    memset(buf, 0, 48);
    JTargetJBEstimator_GetSharedSettings(v200 + 38072, buf);
    v60 = *&buf[40];
    v61 = *&buf[32];
    v62 = *&buf[8];
    v63 = *(v200 + 224);
    if (v63 == 1)
    {
      v66 = *(v9 + 264);
      v62 = *&buf[8] + v66;
      if (v66 != 0.0 && VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v67 = VRTraceErrorLogLevelToCSTR();
        v68 = *MEMORY[0x1E6986650];
        v69 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *v214 = 136315906;
            *&v214[4] = v67;
            *v215 = 2080;
            *&v215[2] = "_VCJitterBuffer_ApplyQueueManagementPolicy";
            *&v215[10] = 1024;
            LODWORD(v216) = 217;
            WORD2(v216) = 2048;
            *(&v216 + 6) = v66;
            _os_log_impl(&dword_1DB56E000, v68, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Applying queue steering correction. jitterQueueOffset=%f", v214, 0x26u);
          }
        }

        else if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          *v214 = 136315906;
          *&v214[4] = v67;
          *v215 = 2080;
          *&v215[2] = "_VCJitterBuffer_ApplyQueueManagementPolicy";
          *&v215[10] = 1024;
          LODWORD(v216) = 217;
          WORD2(v216) = 2048;
          *(&v216 + 6) = v66;
          _os_log_debug_impl(&dword_1DB56E000, v68, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Applying queue steering correction. jitterQueueOffset=%f", v214, 0x26u);
        }
      }
    }

    else if (!v63)
    {
      IsUnderrunQueueBoostEnabled = VCAudioPlayer_IsUnderrunQueueBoostEnabled(v200 + 288);
      v65 = v62 * ((0.5 - v62) * (0.5 - v62) * 2.5 + 1.0);
      if (((v62 < 0.5) & IsUnderrunQueueBoostEnabled) == 0)
      {
        v65 = v62;
      }

      v60 = v65 - v62;
      v61 = 6;
      v62 = v65;
    }

    v70 = *(v9 + 272);
    if (v62 < v70)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v71 = VRTraceErrorLogLevelToCSTR();
        v72 = *MEMORY[0x1E6986650];
        v73 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            *v214 = 136315650;
            *&v214[4] = v71;
            *v215 = 2080;
            *&v215[2] = "_VCJitterBuffer_ApplyQueueManagementPolicy";
            *&v215[10] = 1024;
            LODWORD(v216) = 221;
            _os_log_impl(&dword_1DB56E000, v72, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Overriding Desired QueueSize based on network notification", v214, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          *v214 = 136315650;
          *&v214[4] = v71;
          *v215 = 2080;
          *&v215[2] = "_VCJitterBuffer_ApplyQueueManagementPolicy";
          *&v215[10] = 1024;
          LODWORD(v216) = 221;
          _os_log_debug_impl(&dword_1DB56E000, v72, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Overriding Desired QueueSize based on network notification", v214, 0x1Cu);
        }
      }

      v70 = *(v9 + 272);
      v60 = v70 - v62;
      v61 = 4;
    }

    if (*(v200 + 200) == 3)
    {
      LODWORD(v70) = *(v200 + 248);
      v74 = *&v70 / 1000.0;
    }

    else
    {
      v75 = fmax(*&buf[16], *(v9 + 192));
      if (v62 > v70)
      {
        v70 = v62;
      }

      v74 = fmin(*&buf[24], fmax(v75, v70));
    }

    v76 = *(v9 + 256);
    v77 = v55 - v76;
    v78 = v76 != 0.0;
    if (v55 - v76 >= 30.0)
    {
      v78 = 0;
    }

    v79 = *(v9 + 1272);
    if (v79 == 0.0)
    {
      v82 = 0;
    }

    else
    {
      v80 = *(v9 + 1280);
      if (v80)
      {
        v82 = v55 - v79 < 0.2 && *(v9 + 248) < v80;
      }

      else
      {
        v82 = 0;
      }
    }

    v83 = v59;
    v84 = (v74 * v59);
    v85 = *(v9 + 248) != 0 && v78;
    v86 = VRTraceGetErrorLogLevelForModule();
    if (v85 || v82)
    {
      v23 = v200;
      if (v86 >= 8)
      {
        v92 = VRTraceErrorLogLevelToCSTR();
        v93 = *MEMORY[0x1E6986650];
        v94 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            v95 = *(v9 + 248);
            *buf = 136316162;
            *&buf[4] = v92;
            *&buf[12] = 2080;
            *&buf[14] = "_VCJitterBuffer_ShouldAdjustAudioQueuSizeForRed";
            *&buf[22] = 1024;
            *&buf[24] = 305;
            *&buf[28] = 2048;
            *&buf[30] = v77;
            *&buf[38] = 1024;
            *&buf[40] = v95;
            _os_log_impl(&dword_1DB56E000, v93, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Red overhead is enabled. elapsedTimeSinceLastUsedRedFrame=%f, sharedRedAudioDelayInSamples=%d", buf, 0x2Cu);
          }
        }

        else if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          v152 = *(v9 + 248);
          *buf = 136316162;
          *&buf[4] = v92;
          *&buf[12] = 2080;
          *&buf[14] = "_VCJitterBuffer_ShouldAdjustAudioQueuSizeForRed";
          *&buf[22] = 1024;
          *&buf[24] = 305;
          *&buf[28] = 2048;
          *&buf[30] = v77;
          *&buf[38] = 1024;
          *&buf[40] = v152;
          _os_log_debug_impl(&dword_1DB56E000, v93, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Red overhead is enabled. elapsedTimeSinceLastUsedRedFrame=%f, sharedRedAudioDelayInSamples=%d", buf, 0x2Cu);
        }
      }

      Statistical95pDelaySpread = JTargetJBEstimator_GetStatistical95pDelaySpread((v200 + 38072));
      v98 = *(v9 + 1272);
      if (v98 == 0.0 || (v99 = *(v9 + 1280)) == 0 || v55 - v98 >= 0.2 || *(v9 + 248) >= v99)
      {
        v99 = *(v9 + 248);
      }

      v100 = 0.0;
      if (v99 - (Statistical95pDelaySpread * v83) < v83 * 0.02)
      {
        v100 = v83 * 0.02;
      }

      v101 = (v100 + v99);
      v102 = v83 * 0.18;
      if (v83 * 0.18 >= v101)
      {
        v102 = v101;
      }

      v103 = v102;
      *(v9 + 384) = 0;
      v96 = v102 - v84;
      if (v102 > v84)
      {
        v104 = v96 / v83;
        v60 = fmax(v60, v104);
        *(v9 + 384) = v104;
        v61 = 5;
        v84 = v103;
        goto LABEL_121;
      }
    }

    else
    {
      if (v86 < 8)
      {
        v96 = 0;
        v23 = v200;
        goto LABEL_121;
      }

      v88 = VRTraceErrorLogLevelToCSTR();
      v89 = *MEMORY[0x1E6986650];
      v90 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        v23 = v200;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          v91 = *(v9 + 248);
          *buf = 136316162;
          *&buf[4] = v88;
          *&buf[12] = 2080;
          *&buf[14] = "_VCJitterBuffer_ShouldAdjustAudioQueuSizeForRed";
          *&buf[22] = 1024;
          *&buf[24] = 308;
          *&buf[28] = 2048;
          *&buf[30] = v77;
          *&buf[38] = 1024;
          *&buf[40] = v91;
          _os_log_impl(&dword_1DB56E000, v89, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Red overhead is disabled. elapsedTimeSinceLastUsedRedFrame=%f, sharedRedAudioDelayInSamples=%d", buf, 0x2Cu);
        }
      }

      else
      {
        v23 = v200;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          v153 = *(v9 + 248);
          *buf = 136316162;
          *&buf[4] = v88;
          *&buf[12] = 2080;
          *&buf[14] = "_VCJitterBuffer_ShouldAdjustAudioQueuSizeForRed";
          *&buf[22] = 1024;
          *&buf[24] = 308;
          *&buf[28] = 2048;
          *&buf[30] = v77;
          *&buf[38] = 1024;
          *&buf[40] = v153;
          _os_log_debug_impl(&dword_1DB56E000, v89, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Red overhead is disabled. elapsedTimeSinceLastUsedRedFrame=%f, sharedRedAudioDelayInSamples=%d", buf, 0x2Cu);
        }
      }
    }

    v96 = 0;
LABEL_121:
    if (v84 != *(v9 + 216))
    {
      ++*(v9 + 372);
      *(v9 + 216) = v84;
      *(v9 + 252) = v96;
      VCAudioPlayer_SetMaxHoleSize(v23 + 288, v87, v84 / v83);
    }

    VCAudioPlayer_SetTargetBoostMode(v23 + 288, v61, v60);
    if (*(v9 + 280) != v61)
    {
      *(v9 + 296) = 1;
    }

    *(v9 + 288) = v60;
    *(v9 + 280) = v61;
    *v9 = v61;
    LogProfileTimeOverLimit_4("SpkrProc: _VCJitterBuffer_UpdateAudioQSize", v105, v56, 0.00499999989);
    memset(buf, 0, 48);
    JTargetJBEstimator_GetSharedSettings(v23 + 38072, buf);
    v106 = *(v9 + 192);
    v107 = *&buf[16];
    v108 = *&buf[8];
    v109 = *&buf[8] * 0.1 + *(v9 + 352) * 0.9;
    *(v9 + 352) = v109;
    if (*(v23 + 200) == 3)
    {
      LODWORD(v106) = *(v23 + 248);
      v110 = *&v106 / 1000.0;
    }

    else
    {
      v110 = fmax(fmax(v107, v106), v108);
    }

    v111 = v110 * 0.1 + *(v9 + 348) * 0.9;
    *(v9 + 348) = v111;
    v112 = *(v9 + 236);
    if ((v112 - 1) < 2)
    {
      goto LABEL_167;
    }

    if (v112 == 4)
    {
      v115 = *(v9 + 416);
      if (v199[1] || *v192 != 1 || ((*(v199 + 7) - *(v9 + 1226)) & 0x8000) == 0)
      {
        *(v9 + 1226) = *(v199 + 7);
        *(v9 + 1224) = 1;
        v116 = v199[4];
        if ((v116 - *(v9 + 1228)) <= 0x7FFFFFFE)
        {
          v117 = v184 + 8 * v115;
          if (v117 >= v192 || v117 < v184)
          {
            goto LABEL_249;
          }

          v118 = *(v199 + 228);
          *(v184 + 8 * v115) = v118;
          v119 = v115 - 1;
          if (!v115)
          {
            v119 = 99;
          }

          v120 = (v184 + 8 * v119);
          if (v120 >= v192 || v120 < v184)
          {
            goto LABEL_249;
          }

          v121 = *v30;
          if (*v30 >= 1)
          {
            v122 = 0;
            v123 = 0;
            v124 = *v120;
            v125 = v118 - *v120;
            v126 = v199 + 446;
            do
            {
              if (&v126[v122] >= v30 || &v126[v122] < v126)
              {
                goto LABEL_249;
              }

              v128 = *&v126[2 * v123];
              if (v128)
              {
                v130 = v124 > 0.0 && v123 == 0;
                VCAudioPlayer_UpdateLastEnqueuedFrameInformation(v200 + 288, v128, v130, v125);
                v121 = *v30;
              }

              ++v123;
              v122 += 2;
            }

            while (v123 < v121);
            v116 = v199[4];
          }

          *(v9 + 416) = (v115 + 1) % 100;
          *(v9 + 1228) = v116;
          v23 = v200;
        }
      }

      v131 = *(v199 + 4);
      LODWORD(v132) = *VCAudioPlayer_GetPlaybackFormat(v23 + 288);
      v133 = v132;
      v134 = (*(v9 + 312) * v133);
      if (v134)
      {
        if (*(v9 + 328) + 3.0 < v131)
        {
          v135 = *(v9 + 304) + v134;
          if (v135 >= (v133 * 0.2))
          {
            v135 = (v133 * 0.2);
          }

          *(v9 + 304) = v135;
          *(v9 + 328) = v131;
        }

        *(v9 + 336) = v131;
        *(v9 + 312) = 0;
      }

      else if (*(v9 + 336) + 5.0 < v131)
      {
        v139 = *(v9 + 304);
        if (v139 >= 1)
        {
          *(v9 + 304) = (v139 + v133 * -0.02) & ~((v139 + v133 * -0.02) >> 31);
        }

        *(v9 + 336) = v131;
      }

      v140 = 0.0;
      v141 = VRTraceIsInternalOSInstalled();
      if (v141)
      {
        v140 = micro(v141, v142);
      }

      v143 = JitterQueue_QueuedSamples(*(v9 + 176));
      v145 = (VCAudioPlayer_GetLeftOverSamples(v23 + 288) + v143);
      v146 = *(v9 + 224) * v145 + *(v9 + 184) * (1.0 - *(v9 + 224));
      if (v146 < 0.0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v147 = VRTraceErrorLogLevelToCSTR();
          v148 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v154 = *v195;
            *buf = 136316674;
            *&buf[4] = v147;
            *&buf[12] = 2080;
            *&buf[14] = "_VCJitterBuffer_UpdateAvgQSize";
            *&buf[22] = 1024;
            *&buf[24] = 276;
            *&buf[28] = 2048;
            *&buf[30] = v154;
            *&buf[38] = 2048;
            *&buf[40] = v146;
            *&buf[48] = 1024;
            *v211 = v143;
            *&v211[4] = 2048;
            v212 = v145;
            _os_log_error_impl(&dword_1DB56E000, v148, OS_LOG_TYPE_ERROR, " [%s] %s:%d Please file a radar on AVConference Media | All. Average JB queue size is negative! Current size: %f, new size: %f, jitter samples: %d, total samples: %f", buf, 0x40u);
          }
        }

        reportingSymptom();
        v146 = 0.0;
      }

      *v195 = v146;
      LogProfileTimeOverLimit_4("SpkrProc: UpdateAvgQSize", v144, v140, 0.00499999989);
      goto LABEL_180;
    }

    if (v112 != 3)
    {
      v136 = *(v9 + 176);
      v137 = _VCJitterBuffer_DesiredQSize(v23);
      JitterQueue_DiscardExcess(v136, v137);
      *(v9 + 232) = 0;
LABEL_167:
      *(v9 + 184) = JitterQueue_QueuedSamples(*(v9 + 176));
LABEL_180:
      if (*(v9 + 232))
      {
        v149 = *(v9 + 176);
        v150 = _VCJitterBuffer_DesiredQSize(v23);
        JitterQueue_DiscardExcess(v149, v150);
        *(v9 + 232) = 0;
      }

      LogProfileTimeOverLimit_4("SpkrProc: PreloadQueueDequeue", v138, v22, 0.00200000009);
      JitterPreloadQueue_AudioPacketFree(*(v9 + 168), v199);
      v198 = (v198 + 1);
      v196 = 1;
      goto LABEL_183;
    }

    JitterPreloadQueue_AudioPacketFree(*(v9 + 168), v199);
LABEL_183:
    v22 = micro(v113, v114);
    if (v22 >= v197)
    {
      goto LABEL_190;
    }
  }

  if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_19;
  }

  v151 = *(v9 + 236);
  *buf = 136316418;
  *&buf[4] = v26;
  *&buf[12] = 2080;
  *&buf[14] = "_VCJitterBuffer_DequeuePacketsFromPreloadQueue";
  *&buf[22] = 1024;
  *&buf[24] = 637;
  *&buf[28] = 2048;
  *&buf[30] = v23;
  *&buf[38] = 1024;
  *&buf[40] = v24 == 0;
  *&buf[44] = 1024;
  *&buf[46] = v151;
  _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] Dequeue packet, is audio packet null:%d, state %d", buf, 0x32u);
  if (v24)
  {
    goto LABEL_20;
  }

LABEL_188:
  if (*(v9 + 236) == 3)
  {
    JitterQueue_Reset(*(v9 + 176));
    VCAudioPlayer_NewStream(v23 + 288);
    *(v9 + 236) = 0;
  }

LABEL_190:
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v156 = VRTraceErrorLogLevelToCSTR();
    v157 = *MEMORY[0x1E6986650];
    v158 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
      {
        v159 = *(v9 + 236);
        *buf = 136316418;
        *&buf[4] = v156;
        *&buf[12] = 2080;
        *&buf[14] = "_VCJitterBuffer_DequeuePacketsFromPreloadQueue";
        *&buf[22] = 1024;
        *&buf[24] = 690;
        *&buf[28] = 2048;
        *&buf[30] = v200;
        *&buf[38] = 1024;
        *&buf[40] = v159;
        *&buf[44] = 1024;
        *&buf[46] = v196;
        _os_log_impl(&dword_1DB56E000, v157, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] JBState[%d] packetDequeue[%d]", buf, 0x32u);
      }
    }

    else if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
    {
      v183 = *(v9 + 236);
      *buf = 136316418;
      *&buf[4] = v156;
      *&buf[12] = 2080;
      *&buf[14] = "_VCJitterBuffer_DequeuePacketsFromPreloadQueue";
      *&buf[22] = 1024;
      *&buf[24] = 690;
      *&buf[28] = 2048;
      *&buf[30] = v200;
      *&buf[38] = 1024;
      *&buf[40] = v183;
      *&buf[44] = 1024;
      *&buf[46] = v196;
      _os_log_debug_impl(&dword_1DB56E000, v157, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] JBState[%d] packetDequeue[%d]", buf, 0x32u);
    }
  }

  LogProfileTimeOverLimit_4("SpkrProc: PreloadQueueDequeue Loop, Iterations = %d", v155, v185, 0.00200000009, v198);
  *v214 = v194;
  *v215 = -1431655766;
  *&v214[8] = SampleCount;
  *&v215[4] = a3;
  *&v216 = a5;
  *(&v216 + 1) = &v206;
  v217 = &v208;
  v218 = a7;
  v219 = &v207;
  v203 = -1431655766;
  *&v205 = -1;
  *(&v205 + 1) = -1;
  v201[0] = JTargetJBEstimator_GetSpikeInfo(v200 + 38072);
  v201[1] = JTargetJBEstimator_GetFrequentSpikeInfo(v200 + 38072);
  v202 = _VCJitterBuffer_DesiredQSize(v200);
  v204 = v9 + 184;
  v205 = *(v9 + 192);
  if (*(v200 + 216) != 1)
  {
    v164 = a4;
    if (*(v9 + 1264) == 1)
    {
      *(v9 + 1264) = 0;
      VCAudioPlayer_ForceDecoderReset(v200 + 288, v160);
      *(v9 + 1272) = v187;
      *(v9 + 1280) = *(v9 + 248);
    }

    goto LABEL_210;
  }

  v161 = JitterQueue_QueuedSamples(*(v9 + 176));
  buf[0] = 0;
  v209 = 0;
  LastFramePriority = JitterQueue_GetLastFramePriority(*(v9 + 176), buf, &v209);
  v164 = a4;
  if (*(v200 + 216) == 1)
  {
    v165 = buf[0] < 0x7Fu ? LastFramePriority : 0;
    if (v165 == 1 && *(v200 + 284) == 1)
    {
      VCAudioPlayer_SuspendAudioErasureMeasurement(v200 + 288, v163);
    }
  }

  if (v161)
  {
    *(v9 + 1256) = v187;
    v166 = *(v9 + 1264);
    *(v9 + 1264) = 0;
    if (v166)
    {
      VCAudioPlayer_ForceDecoderReset(v200 + 288, v163);
      *(v9 + 1272) = v187;
      *(v9 + 1280) = *(v9 + 248);
      if (*(v9 + 1264))
      {
        goto LABEL_240;
      }
    }

LABEL_210:
    v167 = (v200 + 288);
    if (*(v9 + 236) > 3u)
    {
      VCAudioPlayer_GetSamples(v167, v214, v201);
      if (v207 == 1)
      {
        v168 = *(v9 + 400);
        *(v9 + 400) = v168 + 1;
        v169 = v168 < 249;
      }

      else
      {
        *(v9 + 400) = 0;
        v169 = 1;
      }

      v170 = *(v9 + 408);
      v171 = v170 != 0.0;
      if (v187 - v170 > 30.0)
      {
        v171 = 0;
      }

      if (!v169 && !v171)
      {
        reportingSymptom();
        *(v9 + 408) = v187;
      }
    }

    else
    {
      VCAudioPlayer_GetSilenceSamples(v167, v214, v201);
    }

    if (v206 >= 0)
    {
      v172 = 1;
    }

    else
    {
      v172 = -1;
    }

    VCAudioBufferList_SetPriority(v194, v172);
    if (!*(v9 + 244))
    {
      *(v9 + 244) = v196;
    }

    if (a6)
    {
      *a6 = v208;
    }

    if (v164)
    {
      *v164 = VCAudioPlayer_IsTimestampValid(v200 + 288);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v173 = VRTraceErrorLogLevelToCSTR();
      v174 = *MEMORY[0x1E6986650];
      v175 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
        {
          v176 = *(v9 + 236);
          v177 = *a3;
          if (a7)
          {
            v178 = *a7;
          }

          else
          {
            v178 = -1;
          }

          *buf = 136317186;
          *&buf[4] = v173;
          *&buf[12] = 2080;
          *&buf[14] = "VCJitterBuffer_PlaybackGetSamples";
          *&buf[22] = 1024;
          *&buf[24] = 1248;
          *&buf[28] = 2048;
          *&buf[30] = v200;
          *&buf[38] = 1024;
          *&buf[40] = v176;
          *&buf[44] = 1024;
          *&buf[46] = SampleCount;
          *v211 = 1024;
          *&v211[2] = v177;
          LOWORD(v212) = 1024;
          *(&v212 + 2) = v208;
          HIWORD(v212) = 1024;
          v213 = v178;
          _os_log_impl(&dword_1DB56E000, v174, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] JBState[%d] sampleCount[%d] timestamp[%d] isSilence[%d] consecutiveSilenceCount[%d]", buf, 0x44u);
        }
      }

      else if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
      {
        v179 = *(v9 + 236);
        v180 = *a3;
        if (a7)
        {
          v181 = *a7;
        }

        else
        {
          v181 = -1;
        }

        *buf = 136317186;
        *&buf[4] = v173;
        *&buf[12] = 2080;
        *&buf[14] = "VCJitterBuffer_PlaybackGetSamples";
        *&buf[22] = 1024;
        *&buf[24] = 1248;
        *&buf[28] = 2048;
        *&buf[30] = v200;
        *&buf[38] = 1024;
        *&buf[40] = v179;
        *&buf[44] = 1024;
        *&buf[46] = SampleCount;
        *v211 = 1024;
        *&v211[2] = v180;
        LOWORD(v212) = 1024;
        *(&v212 + 2) = v208;
        HIWORD(v212) = 1024;
        v213 = v181;
        _os_log_debug_impl(&dword_1DB56E000, v174, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] JBState[%d] sampleCount[%d] timestamp[%d] isSilence[%d] consecutiveSilenceCount[%d]", buf, 0x44u);
      }
    }
  }

  else
  {
    if (*(v9 + 1264))
    {
      *(v9 + 1264) = 1;
      goto LABEL_240;
    }

    v182 = v187 - *(v9 + 1256);
    *(v9 + 1264) = v182 > 0.2;
    if (v182 <= 0.2)
    {
      goto LABEL_210;
    }

LABEL_240:
    VCAudioPlayer_GetSilenceSamples((v200 + 288), v214, v201);
    if (a6)
    {
      *a6 = 1;
    }

    VCAudioBufferList_SetPriority(v194, 1);
    if (a4)
    {
      *a4 = VCAudioPlayer_IsTimestampValid(v200 + 288);
    }
  }
}

double VCJitterBuffer_GetAWDReportingMetrics(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    JitterQueue_GetUnderflowRateForInterval(*(a1 + 119256));
    *a2 = v4;
    *(a2 + 4) = VCAudioPlayer_GetFrameErasureRate(a1 + 288);
    *(a2 + 8) = VCAudioPlayer_GetSpeechErasureRate(a1 + 288);
    v5 = JitterQueue_QueuedSamples(*(a1 + 119256));
    *(a2 + 12) = VCAudioPlayer_GetLeftOverSamples(a1 + 288) + v5;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v9 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *a2;
          v11 = *(a2 + 4);
          v12 = *(a2 + 12);
          v16 = 136316674;
          v17 = v7;
          v18 = 2080;
          v19 = "VCJitterBuffer_GetAWDReportingMetrics";
          v20 = 1024;
          v21 = 1266;
          v22 = 2048;
          v23 = a1;
          v24 = 2048;
          v25 = v10;
          v26 = 2048;
          v27 = v11;
          v28 = 1024;
          v29 = v12;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] AWD Metrics: underflowRate[%f] frameErasureRate[%f] totalQueueSizeSamples[%d]", &v16, 0x40u);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = *a2;
        v14 = *(a2 + 4);
        v15 = *(a2 + 12);
        v16 = 136316674;
        v17 = v7;
        v18 = 2080;
        v19 = "VCJitterBuffer_GetAWDReportingMetrics";
        v20 = 1024;
        v21 = 1266;
        v22 = 2048;
        v23 = a1;
        v24 = 2048;
        v25 = v13;
        v26 = 2048;
        v27 = v14;
        v28 = 1024;
        v29 = v15;
        _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] AWD Metrics: underflowRate[%f] frameErasureRate[%f] totalQueueSizeSamples[%d]", &v16, 0x40u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_GetAWDReportingMetrics_cold_1();
    }
  }

  return result;
}

void VCJitterBuffer_GetWRMReportingMetrics(_DWORD *a1, int *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    WrmMetrics = VCAudioPlayer_GetWrmMetrics((a1 + 72));
    *a2 = *WrmMetrics;
    *(a2 + 2) = *(WrmMetrics + 16);
    a2[8] = a1[29856];
    *(a2 + 3) = _VCJitterBuffer_DesiredQSize(a1);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *a2;
          v9 = a2[1];
          v10 = a2[2];
          v11 = a2[3];
          v12 = *(a2 + 2);
          v13 = *(a2 + 3);
          v20 = 136317442;
          v21 = v5;
          v22 = 2080;
          v23 = "VCJitterBuffer_GetWRMReportingMetrics";
          v24 = 1024;
          v25 = 1283;
          v26 = 2048;
          v27 = a1;
          v28 = 1024;
          v29 = v8;
          v30 = 1024;
          v31 = v9;
          v32 = 1024;
          v33 = v10;
          v34 = 1024;
          v35 = v11;
          v36 = 2048;
          v37 = v12;
          v38 = 2048;
          v39 = v13;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] WRM Metrics: playbackCount[%d] playbackCountSpeech[%d] erasureCount[%d] erasureSilence[%d] nominalJitterBufferDelay[%llu] targetJitterQueueSize(Audio)[%llu]", &v20, 0x52u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v14 = *a2;
        v15 = a2[1];
        v16 = a2[2];
        v17 = a2[3];
        v18 = *(a2 + 2);
        v19 = *(a2 + 3);
        v20 = 136317442;
        v21 = v5;
        v22 = 2080;
        v23 = "VCJitterBuffer_GetWRMReportingMetrics";
        v24 = 1024;
        v25 = 1283;
        v26 = 2048;
        v27 = a1;
        v28 = 1024;
        v29 = v14;
        v30 = 1024;
        v31 = v15;
        v32 = 1024;
        v33 = v16;
        v34 = 1024;
        v35 = v17;
        v36 = 2048;
        v37 = v18;
        v38 = 2048;
        v39 = v19;
        _os_log_debug_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] WRM Metrics: playbackCount[%d] playbackCountSpeech[%d] erasureCount[%d] erasureSilence[%d] nominalJitterBufferDelay[%llu] targetJitterQueueSize(Audio)[%llu]", &v20, 0x52u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_GetWRMReportingMetrics_cold_1();
    }
  }
}

double VCJitterBuffer_GetPlaybackReportingMetrics(uint64_t a1, uint64_t a2)
{
  v92 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a2 + 140) = *(a1 + 280);
    *a2 = VCAudioPlayer_GetAverageLossRate(a1 + 288);
    *(a2 + 4) = VCAudioPlayer_GetLastAverageMissingPercentOverWindow(a1 + 288);
    *(a2 + 12) = VCAudioPlayer_GetAverageJitterSizeForWindow(a1 + 288);
    AverageJitterSizeForSession = VCAudioPlayer_GetAverageJitterSizeForSession(a1 + 288);
    *(a2 + 16) = AverageJitterSizeForSession;
    *(a2 + 8) = VCAudioPlayer_MaxInterArrivalTimeForWindow(a1 + 288);
    *(a2 + 136) = VCAudioPlayer_GetDTMFEventCount(a1 + 288);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v6 = MEMORY[0x1E6986640];
    v7 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 8)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v7;
      v10 = *v7;
      if (*v6 == 1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *a2;
          v12 = *(a2 + 4);
          v13 = *(a2 + 12);
          v14 = *(a2 + 16);
          v15 = *(a2 + 8);
          *buf = 136317186;
          v69 = v8;
          v70 = 2080;
          v71 = "VCJitterBuffer_GetPlaybackReportingMetrics";
          v72 = 1024;
          v73 = 1300;
          v74 = 2048;
          v75 = a1;
          v76 = 2048;
          *v77 = v11;
          *&v77[8] = 2048;
          v78 = v12;
          *v79 = 2048;
          *&v79[2] = v13;
          v80 = 2048;
          v81 = v14;
          v82 = 2048;
          *v83 = v15;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] VRDB Playback Metrics: avgLossRate[%f] lastAvgMissPercent[%f] averageJitterForWindow[%f] averageJitterForSession[%f] maxJitterForWindow[%f]", buf, 0x58u);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v43 = *a2;
        v44 = *(a2 + 4);
        v45 = *(a2 + 12);
        v46 = *(a2 + 16);
        v47 = *(a2 + 8);
        *buf = 136317186;
        v69 = v8;
        v70 = 2080;
        v71 = "VCJitterBuffer_GetPlaybackReportingMetrics";
        v72 = 1024;
        v73 = 1300;
        v74 = 2048;
        v75 = a1;
        v76 = 2048;
        *v77 = v43;
        *&v77[8] = 2048;
        v78 = v44;
        *v79 = 2048;
        *&v79[2] = v45;
        v80 = 2048;
        v81 = v46;
        v82 = 2048;
        *v83 = v47;
        _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] VRDB Playback Metrics: avgLossRate[%f] lastAvgMissPercent[%f] averageJitterForWindow[%f] averageJitterForSession[%f] maxJitterForWindow[%f]", buf, 0x58u);
      }
    }

    VCAudioPlayer_GetTimescaleMetrics(a1 + 288, a2);
    VCAudioPlayer_GetRedErasureMetrics(a1 + 288, a2);
    v67 = 0uLL;
    JTargetJBEstimator_GetSpikeReportingMetrics(a1 + 38072, &v67);
    v17 = v67.n128_u32[1];
    *(a2 + 144) = v67.n128_u32[0];
    *(a2 + 148) = v17;
    *(a2 + 152) = v67.n128_u64[1];
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *v7;
      v20 = *v7;
      if (*v6 == 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a2 + 20);
          v22 = *(a2 + 24);
          v23 = *(a2 + 40);
          v24 = *(a2 + 44);
          v25 = *(a2 + 48);
          v26 = *(a2 + 52);
          v27 = *(a2 + 56);
          v28 = *(a2 + 28);
          v29 = *(a2 + 36);
          v30 = *(a2 + 92);
          v31 = *(a2 + 72);
          *buf = 136318722;
          v69 = v18;
          v70 = 2080;
          v71 = "VCJitterBuffer_GetPlaybackReportingMetrics";
          v72 = 1024;
          v73 = 1310;
          v74 = 2048;
          v75 = a1;
          v76 = 2048;
          *v77 = v21;
          *&v77[8] = 2048;
          v78 = v22;
          *v79 = 2048;
          *&v79[2] = v23;
          v80 = 2048;
          v81 = v24;
          v82 = 1024;
          *v83 = v25;
          *&v83[4] = 1024;
          *&v83[6] = v26;
          LOWORD(v84) = 1024;
          *(&v84 + 2) = v27;
          HIWORD(v84) = 2048;
          v85 = v28;
          v86 = 2048;
          v87 = v29;
          v88 = 1024;
          v89 = v30;
          v90 = 1024;
          v91 = v31;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] VRDB RED Playback Metrics: totalFrameErasureRate[%f] totalFrameErasureRateAlt[%f] redErasureCompensationRate[%f] maxRedFrameRecoveryDepth[%f] redAudioFramesPlayed[%d] redAudioBytesPlayed[%d] totalFramesPlayed[%d] totalSpeechErasureRate[%f] totalWindowedErasureRate[%f] maxConsecutiveAudioErasures[%d], totalErasureCount[%u]", buf, 0x80u);
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v48 = *(a2 + 20);
        v49 = *(a2 + 24);
        v50 = *(a2 + 40);
        v51 = *(a2 + 44);
        v52 = *(a2 + 48);
        v53 = *(a2 + 52);
        v54 = *(a2 + 56);
        v55 = *(a2 + 28);
        v56 = *(a2 + 36);
        v57 = *(a2 + 92);
        v58 = *(a2 + 72);
        *buf = 136318722;
        v69 = v18;
        v70 = 2080;
        v71 = "VCJitterBuffer_GetPlaybackReportingMetrics";
        v72 = 1024;
        v73 = 1310;
        v74 = 2048;
        v75 = a1;
        v76 = 2048;
        *v77 = v48;
        *&v77[8] = 2048;
        v78 = v49;
        *v79 = 2048;
        *&v79[2] = v50;
        v80 = 2048;
        v81 = v51;
        v82 = 1024;
        *v83 = v52;
        *&v83[4] = 1024;
        *&v83[6] = v53;
        LOWORD(v84) = 1024;
        *(&v84 + 2) = v54;
        HIWORD(v84) = 2048;
        v85 = v55;
        v86 = 2048;
        v87 = v56;
        v88 = 1024;
        v89 = v57;
        v90 = 1024;
        v91 = v58;
        _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] VRDB RED Playback Metrics: totalFrameErasureRate[%f] totalFrameErasureRateAlt[%f] redErasureCompensationRate[%f] maxRedFrameRecoveryDepth[%f] redAudioFramesPlayed[%d] redAudioBytesPlayed[%d] totalFramesPlayed[%d] totalSpeechErasureRate[%f] totalWindowedErasureRate[%f] maxConsecutiveAudioErasures[%d], totalErasureCount[%u]", buf, 0x80u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *v7;
      v34 = *v7;
      if (*v6 == 1)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(a2 + 96);
          v36 = *(a2 + 100);
          v37 = *(a2 + 104);
          v38 = *(a2 + 108);
          v39 = *(a2 + 112);
          v40 = *(a2 + 116);
          v41 = *(a2 + 124);
          v42 = *(a2 + 120);
          *buf = 136317954;
          v69 = v32;
          v70 = 2080;
          v71 = "VCJitterBuffer_GetPlaybackReportingMetrics";
          v72 = 1024;
          v73 = 1312;
          v74 = 2048;
          v75 = a1;
          v76 = 1024;
          *v77 = v35;
          *&v77[4] = 1024;
          *&v77[6] = v36;
          LOWORD(v78) = 1024;
          *(&v78 + 2) = v37;
          HIWORD(v78) = 1024;
          *v79 = v38;
          *&v79[4] = 1024;
          *&v79[6] = v39;
          v80 = 2048;
          v81 = v40;
          v82 = 2048;
          *v83 = v41;
          *&v83[8] = 2048;
          v84 = v42;
          _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] VRDB Timescale Metrics: totalTimescaleCount=%d silenceTimescaleCount=%d speechTimescaleCount=%d expandTimescaleCount=%d compressTimescaleCount=%d totaltimescaleRate=%f silenceTimescaleRate=%f speechTimescaleRate=%f", buf, 0x62u);
        }
      }

      else if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v59 = *(a2 + 96);
        v60 = *(a2 + 100);
        v61 = *(a2 + 104);
        v62 = *(a2 + 108);
        v63 = *(a2 + 112);
        v64 = *(a2 + 116);
        v65 = *(a2 + 124);
        v66 = *(a2 + 120);
        *buf = 136317954;
        v69 = v32;
        v70 = 2080;
        v71 = "VCJitterBuffer_GetPlaybackReportingMetrics";
        v72 = 1024;
        v73 = 1312;
        v74 = 2048;
        v75 = a1;
        v76 = 1024;
        *v77 = v59;
        *&v77[4] = 1024;
        *&v77[6] = v60;
        LOWORD(v78) = 1024;
        *(&v78 + 2) = v61;
        HIWORD(v78) = 1024;
        *v79 = v62;
        *&v79[4] = 1024;
        *&v79[6] = v63;
        v80 = 2048;
        v81 = v64;
        v82 = 2048;
        *v83 = v65;
        *&v83[8] = 2048;
        v84 = v66;
        _os_log_debug_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] VRDB Timescale Metrics: totalTimescaleCount=%d silenceTimescaleCount=%d speechTimescaleCount=%d expandTimescaleCount=%d compressTimescaleCount=%d totaltimescaleRate=%f silenceTimescaleRate=%f speechTimescaleRate=%f", buf, 0x62u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_GetPlaybackReportingMetrics_cold_1();
    }
  }

  return result;
}

void VCJitterBuffer_GetReportingMetrics(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a1)
  {
    v5 = *(a1 + 118704);
    *&a4 = *&v5;
    *(a1 + 119428) = vbsl_s8(vmovn_s64(vcgtq_f64(vdupq_lane_s64(v5, 0), vcvtq_f64_f32(*(a1 + 119428)))), vdup_lane_s32(*&a4, 0), *(a1 + 119428));
    v6 = *(a1 + 119424);
    v7 = *(a1 + 119440);
    v8 = *(a1 + 119456);
    *(a2 + 48) = *(a1 + 119472);
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    *a2 = v6;
    VRLogfilePrint(*(a1 + 120328), "Red Rx Stats, redAudioFramesReceived = %d , redAudioBytesReceived = %d , redAudioFramesDiscarded = %d , redAudioBytesDiscarded = %d \n", *(a2 + 12), *(a2 + 16), *(a2 + 20), *(a2 + 24));
    *(a1 + 119452) = 0;
    *(a1 + 119436) = 0u;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_GetReportingMetrics_cold_1();
    }
  }
}

uint64_t VCJitterBuffer_GetRTCPXRJitterBufferParameters(uint64_t result, _WORD *a2, _WORD *a3, _WORD *a4)
{
  v6 = result;
  v7 = (result + 119256);
  v8 = (*(result + 120320) * 1000.0);
  if (a2)
  {
    *a2 = v8;
  }

  if (a3)
  {
    PlaybackFormat = VCAudioPlayer_GetPlaybackFormat(result + 288);
    v10 = JitterQueue_QueuedSamples(*v7);
    result = VCAudioPlayer_GetLeftOverSamples(v6 + 288);
    v11 = 1000 * (result + v10) / *PlaybackFormat;
    if (v8 >= v11)
    {
      LOWORD(v11) = v8;
    }

    *a3 = v11;
  }

  if (a4)
  {
    *a4 = (*(v6 + 38104) * 1000.0);
  }

  return result;
}

BOOL VCJitterBuffer_GetIsRunning(_BOOL8 result)
{
  if (result)
  {
    return *(result + 119316) == 4;
  }

  return result;
}

double VCJitterBuffer_GetLastDecodedAudioFrameInfo(uint64_t a1, __n128 *a2)
{
  if (a1)
  {
    if (a2)
    {
      *&result = VCAudioPlayer_GetLastDecodedAudioFrameInfo(a1 + 288, a2).n128_u64[0];
    }
  }

  return result;
}

void VCJitterBuffer_SetMode(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v5;
        *&buf[12] = 2080;
        *&buf[14] = "VCJitterBuffer_SetMode";
        *&buf[22] = 1024;
        LODWORD(v13) = 1401;
        WORD2(v13) = 1024;
        *(&v13 + 6) = a2;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Jitter buffer configured with mode=%d", buf, 0x22u);
      }
    }

    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    *&buf[8] = 0u;
    *(a1 + 200) = a2;
    v10 = 0;
    v11 = 0;
    _VCJitterBuffer_GetMinMaxQueueSizeFromConfig(a1, &v11, &v10, 0.0);
    v8 = v10;
    v7 = v11;
    *(a1 + 120320) = v11;
    *buf = v7;
    v9 = 0.1;
    if (!a2)
    {
      v9 = 0.25;
    }

    *&buf[16] = v8;
    *&v13 = v9;
    *(&v14 + 1) = 0x3FEE666666666666;
    JTargetJBEstimator_UpdateJitterBufferParams(a1 + 38072, buf);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_SetMode_cold_1();
    }
  }
}

void VCJitterBuffer_SetNetworkType(uint64_t a1, int a2, int a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316418;
        v12 = v9;
        v13 = 2080;
        v14 = "VCJitterBuffer_SetNetworkType";
        v15 = 1024;
        v16 = 1421;
        v17 = 1024;
        v18 = a2;
        v19 = 1024;
        v20 = a3;
        v21 = 1024;
        v22 = a4;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d isCellular[%d] localCellTech[%d] remoteCellTech[%d]", &v11, 0x2Eu);
      }
    }

    JTargetJBEstimator_SetNetworkType(a1 + 38072, a2, a3, a4);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_SetNetworkType_cold_1();
    }
  }
}

double VCJitterBuffer_ProcessWiFiNetworkNotification(uint64_t a1, __int128 *a2, double a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1 + 117738;
    if (*(a2 + 8) == 1)
    {
      LOWORD(a3) = *(a2 + 6);
      v6 = 1;
      v7 = *&a3 / 1000.0;
    }

    else
    {
      v6 = 0;
      v7 = 0.0;
    }

    *(a1 + 119352) = v7;
    *v5 = v6;
    v8 = *a2;
    *(a1 + 120368) = *a2;
    if (*(a2 + 5) != -1 && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *a2;
        v12 = *(a2 + 8);
        v13 = *(a2 + 5);
        v14 = *(a2 + 6);
        v15 = *(v5 + 1614);
        v16 = *(v5 + 918);
        v18 = 136317442;
        v19 = v9;
        v20 = 2080;
        v21 = "VCJitterBuffer_ProcessWiFiNetworkNotification";
        v22 = 1024;
        v23 = 1439;
        v24 = 2048;
        v25 = a1;
        v26 = 2048;
        v27 = v11;
        v28 = 1024;
        v29 = v12;
        v30 = 1024;
        v31 = v13;
        v32 = 1024;
        v33 = v14;
        v34 = 2048;
        v35 = v15;
        v36 = 2048;
        v37 = v16;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCJitterBuffer[%p] Network Notification timestamp=%llu intermittentState=%u estimatedIntermittentPeriod=%u singleOutagePeriod=%u NWNotificationTarget=%f targetJBSize=%f", &v18, 0x56u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_ProcessWiFiNetworkNotification_cold_1();
    }
  }

  return *&v8;
}

__n128 VCJitterBuffer_ProcessCellularNetworkNotification(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *a2;
    if (*a2 > 3)
    {
      if (v4 == 4)
      {
        _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeCDRX(a1, a2);
      }

      else if (v4 == 5)
      {
        _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeOutage(a1, a2);
      }
    }

    else if (v4)
    {
      if (v4 == 2)
      {
        _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeLinkMeasurement(a1, a2);
      }
    }

    else
    {
      _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeDefault(a1, a2);
    }

    result = *a2;
    v6 = *(a2 + 16);
    *(a1 + 120384) = *a2;
    *(a1 + 120400) = v6;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_ProcessCellularNetworkNotification_cold_1();
    }
  }

  return result;
}

void VCJitterBuffer_SetSkipDecodeOnSilence(uint64_t a1, char a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 216) = a2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 216);
        v6 = 136316162;
        v7 = v3;
        v8 = 2080;
        v9 = "VCJitterBuffer_SetSkipDecodeOnSilence";
        v10 = 1024;
        v11 = 1472;
        v12 = 2048;
        v13 = a1;
        v14 = 1024;
        v15 = v5;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCJitterBuffer[%p] skipDecodeOnSilence=%d", &v6, 0x2Cu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_SetSkipDecodeOnSilence_cold_1();
    }
  }
}

uint64_t VCJitterBuffer_SetPayloadInfo(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      *(result + 120416) = a2;
    }
  }

  return result;
}

void VCJitterBuffer_SetVADFilteringEnabled(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 284) = a2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v3;
        v7 = 2080;
        v8 = "VCJitterBuffer_SetVADFilteringEnabled";
        v9 = 1024;
        v10 = 1484;
        v11 = 1024;
        v12 = a2;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting vadfilteringEnabled=%d", &v5, 0x22u);
      }
    }
  }
}

char *VCJitterBuffer_AudioPacketAlloc(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 119248);

    return JitterPreloadQueue_AudioPacketAlloc(v2);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCJitterBuffer_AudioPacketAlloc_cold_1();
      }
    }

    return 0;
  }
}

char *VCJitterBuffer_AudioFrameAlloc(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 119248);

    return JitterPreloadQueue_AudioFrameAlloc(v2);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCJitterBuffer_AudioFrameAlloc_cold_1();
      }
    }

    return 0;
  }
}

void LogProfileTimeOverLimit_4(const char *a1, uint64_t a2, double a3, double a4, ...)
{
  va_start(va, a4);
  v39 = *MEMORY[0x1E69E9840];
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {
    v9 = micro(IsInternalOSInstalled, v8) - a3;
    if (v9 > a4)
    {
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v37 = v10;
      v38 = v10;
      v35 = v10;
      v36 = v10;
      v33 = v10;
      v34 = v10;
      v31 = v10;
      v32 = v10;
      v29 = v10;
      v30 = v10;
      v28 = v10;
      v26 = v10;
      v27 = v10;
      v24 = v10;
      v25 = v10;
      *__str = v10;
      vsnprintf(__str, 0x100uLL, a1, va);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v14 = v11;
          v15 = 2080;
          v16 = "_LogProfileTimeLimitHelper";
          v17 = 1024;
          v18 = 36;
          v19 = 2080;
          v20 = __str;
          v21 = 2048;
          v22 = v9;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: Took a long time %fs", buf, 0x30u);
        }
      }
    }
  }
}

void sub_1DBB62F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DBB63184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void RTCPGetSummaryReportBlock_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9) = 136315650;
      *(&v9 + 4) = v2;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_1DB56E000, v3, v4, " [%s] %s:%d Haven't received any RTP packet yet", v5, v6, v7, v8, v9, DWORD2(v9));
    }
  }

  *a1 = -2147418095;
}

void RTCPGetSummaryReportBlock_cold_2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9) = 136315650;
      *(&v9 + 4) = v2;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_1DB56E000, v3, v4, " [%s] %s:%d RTCP XR is not enabled", v5, v6, v7, v8, v9, DWORD2(v9));
    }
  }

  *a1 = 67;
}

double machTimeScale_cold_1()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(v3);
  LODWORD(v1) = v3[0].denom;
  LODWORD(v0) = v3[0].numer;
  result = v0 / v1 / 1000000000.0;
  qword_1EDBDA838 = *&result;
  __dmb(0xBu);
  _MergedGlobals = 1;
  return result;
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  OUTLINED_FUNCTION_6();
  v6 = 212;
  v7 = 2048;
  v8 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unsupported frame size, numPacketsInFrame=%zu", &v3, 0x26u);
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_5(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 216;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error in preparing output", &v2, 0x1Cu);
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_6()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCWRS_EncoderFrameEnqueue failed result=%x", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_7()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCWRSFrameRef_Create failed result=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_8()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_9()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_10()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorFrameBased_FlushPackets_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorFrameBased_PassThrough_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorFrameBased_Create_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCWRSFECTransmitter_Create failed error=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECGeneratorFrameBased_Create_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d failed error=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECGeneratorFrameBased_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorFrameBased_Create_cold_4()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

uint64_t VCFECGeneratorFrameBased_Create_cold_5(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 1;
  }

  VRTraceErrorLogLevelToCSTR();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
  }

  result = 0;
  *a1 = -2144141311;
  return result;
}

void _VCFECGeneratorFrameBased_FillHeaderVersionSpecific_cold_1(uint64_t a1, unsigned __int8 *a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "_VCFECGeneratorFrameBased_FillHeaderVersionSpecific";
  v8 = 1024;
  v9 = 127;
  v10 = 1024;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid FEC Header Version=%d", &v4, 0x22u);
}

void _VCFECGeneratorFrameBased_SetFrameSequenceNumber_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _AVCRateController_ConfigureInternal_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "AVCRC [%s] %s:%d AdaptiveLearning(AVCRateController): Initial bitrate defaulted to %d", v1, 0x22u);
}

void _AVCRateController_ConfigureInternal_cold_2()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _AVCRateController_NotifyTargetBitrateChange_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _AVCRateController_DoRateControlWithStatistics_cold_1(uint64_t a1, int *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  *(a1 + 1160) = [*(a1 + 1920) actualBitrate];
  v6 = *a2;
  if (*a2 == 2)
  {
    *(a1 + 1524) = a2[13];
    *(a1 + 1528) = a2[14];
    *(a1 + 1532) = *(a2 + 92);
    *(a1 + 1536) = *(a2 + 93);
    goto LABEL_15;
  }

  if (v6 == 5)
  {
    *(a1 + 1296) = a2[11];
    *(a1 + 1300) = a2[12];
    *(a1 + 1292) = a2[9];
    *(a1 + 1288) = a2[10];
    goto LABEL_15;
  }

  if (v6 != 15)
  {
    goto LABEL_15;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  if (*(a1 + 72) != 12)
  {
    goto LABEL_15;
  }

  ShouldRequestProbingSequence = VCRateControlProbingSequenceController_ShouldRequestProbingSequence(*(a1 + 1592), (a2 + 6), v4, v5);
  if ((ShouldRequestProbingSequence & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = *(a1 + 1680);
  v10 = *(a1 + 1696);
  v11 = micro(ShouldRequestProbingSequence, v8);
  if (!VCRateSharingGroup_IsProbingSequenceAllowed(v9, v10, v11))
  {
    goto LABEL_15;
  }

  *(a1 + 1600) = VCRateControlProbingSequenceController_GetProbingSequenceID(*(a1 + 1592));
  *(a1 + 1604) = VCRateControlProbingSequenceController_GetProbingSequenceSize(*(a1 + 1592));
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(a1 + 24))
  {
    *(a1 + 26) = 1;
  }

  else
  {
    [*(a1 + 16) rateController:a1 probingSequenceRequestedWithID:*(a1 + 1600) probingSequenceSize:*(a1 + 1604)];
    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() <= 6)
      {
        goto LABEL_15;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_14_1();
      v34 = 136316930;
      v35 = v14;
      v36 = 2080;
      OUTLINED_FUNCTION_13_0();
      v37 = v15;
      *v38 = v16;
      *&v38[4] = v15;
      *&v38[6] = v17;
      LOWORD(v39) = v15;
      *(&v39 + 2) = v18;
      HIWORD(v39) = v15;
      *v40 = v19;
      *&v40[4] = v15;
      *v41 = v20;
      OUTLINED_FUNCTION_5_1();
      v25 = 58;
      goto LABEL_25;
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_14_1();
        v34 = 136317442;
        v35 = v26;
        v36 = 2080;
        OUTLINED_FUNCTION_13_0();
        v37 = 2112;
        *v38 = v12;
        *&v38[8] = 2048;
        v39 = a1;
        *v40 = v28;
        *&v40[2] = v29;
        *v41 = v28;
        *&v41[2] = v30;
        v42 = v28;
        v43 = v31;
        v44 = v28;
        v45 = v32;
        v46 = v28;
        v47 = v33;
        v21 = &dword_1DB56E000;
        v23 = "AVCRC [%s] %s:%d %@(%p) Request probing sequence for mode=%d bandwidth=%u, targetBitrate=%u, probingSequenceSize=%u, probingSequenceID=%u";
        v24 = &v34;
        v22 = v27;
        v25 = 78;
LABEL_25:
        _os_log_impl(v21, v22, OS_LOG_TYPE_DEFAULT, v23, v24, v25);
      }
    }
  }

LABEL_15:
  v13 = *(a2 + 192);
  if (v13 != *(a1 + 1700))
  {
    _AVCRateController_ChangeECNSupport(a1, v13, 1);
  }
}

void _AVCRateController_DoRateControlWithStatistics_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  v2 = 2953;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Failed to create nwActivity", v1, 0x1Cu);
}

void _AVCRateController_DoRateControlWithNWConnectionStatistics_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  v2 = 3033;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Not using nwConnectionNotification", v1, 0x1Cu);
}

void _AVCRateController_DoRateControlWithNWConnectionStatistics_cold_2()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _AVCRateController_DoRateControl_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v2 = 3063;
  v3 = 2048;
  v4 = 0;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Invalid statistics=%p", v1, 0x26u);
}

void _VCFECConsumerFrameBased_RestorePacketsAndDataSizes_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void _VCFECConsumerFrameBased_RestorePacketsAndDataSizes_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECConsumerFrameBased_PushPacket_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void VCFECConsumerFrameBased_PushPacket_cold_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *a3 = -2144141298;
}

void VCFECConsumerFrameBased_PushPacket_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void VCFECConsumerFrameBased_PushPacket_cold_4()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECConsumerFrameBased_PushPacket_cold_5()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECConsumerFrameBased_PerformTryDecode_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECConsumerFrameBased_PerformTryDecode_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECConsumerFrameBased_PerformTryDecode_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECConsumerFrameBased_PerformTryDecode_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECConsumerFrameBased_PerformTryDecode_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void VCFECConsumerFrameBased_PerformTryDecode_cold_6()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECConsumerFrameBased_SetFrameSequenceNumber_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECConsumerFrameBased_Create_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECConsumerFrameBased_Create_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECConsumerFrameBased_Create_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECConsumerFrameBased_Create_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

uint64_t VCFECConsumerFrameBased_Create_cold_5(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 1;
  }

  VRTraceErrorLogLevelToCSTR();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
  }

  result = 0;
  *a1 = -2144141311;
  return result;
}

void VCRateControlFeedbackController_UpdateTxLinkType(unsigned __int8 *a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1[88] != a2)
    {
      _AVCRateControlFeedbackController_SetTxLink(a1, a2, 0);
      v4 = a1[8];
      v5 = a1[89];
      v7 = v5 == 4 || v5 == a2;
      a1[8] = v7;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_3_3();
          v14 = "_AVCRateControlFeedbackController_SetECNEnabled";
          v15 = 1024;
          v16 = 437;
          v17 = 2048;
          v18 = a1;
          v19 = 1024;
          v20 = v4;
          v21 = 1024;
          v22 = v9;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d [%p] _isECNEnabled changed from=%d to=%d", &v12, 0x32u);
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = v10;
      OUTLINED_FUNCTION_0();
      v16 = 741;
      _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Feedback controller is nil", &v12, 0x1Cu);
    }
  }
}

void VCRateControlFeedbackController_SetMode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Feedback controller is nil", v2, v3, v4, v5);
}

void VCRateControlFeedbackController_SetLinkTypeToSupportECN_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Feedback controller is nil", v2, v3, v4, v5);
}

void VCVideoHardwareDumpWriter_OpenDumpFile_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 68;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate dump file", &v2, 0x1Cu);
}

void VCVideoHardwareDumpWriter_RegisterSource_cold_1(os_unfair_lock_s *a1, _BYTE *a2)
{
  os_unfair_lock_unlock(a1);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v3, v4, " [%s] %s:%d Failed to open dump file", v5, v6, v7, v8);
    }
  }

  *a2 = 0;
}

void VCVideoHardwareDumpWriter_RegisterSource_cold_2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Attempting to register nil write source", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCVideoHardwareDumpWriter_RegisterSource_cold_3(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Received nil writer", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCVideoHardwareDumpWriter_Write_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to get C string from CFString log", v2, v3, v4, v5);
    }
  }
}

void VCVideoHardwareDumpWriter_Write_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Received nil writer", v2, v3, v4, v5);
    }
  }
}

void AVConferenceServerStartInternal_cold_2()
{
  v1 = *MEMORY[0x1E69E9840];
  *v0 = 0;
  _os_log_debug_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Entered sandbox.", v0, 2u);
}

void AVConferenceServerStartInternal_cold_3()
{
  __error();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void AVConferenceServerStartInternal_cold_4()
{
  __error();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_3(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  WORD6(v3) = 2080;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Current bin count is %d. Setup run a second time ?", v3, *(&v3 + 1), v4, v5);
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Output bin count is 0!", v2, v3, v4, v5);
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create FFT", v2, v3, v4, v5);
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_10()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_11()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_12()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_13()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_14()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create octave to index table", v2, v3, v4, v5);
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_15()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "_VCAudioPowerSpectrum_SetupAudioPowerSpectrumWithBinCount";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to setup the channel settings[%d]", v3, *v4, "_VCAudioPowerSpectrum_SetupAudioPowerSpectrumWithBinCount" >> 16, 370);
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_16()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_17()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_18()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Output bin count is 0", v2, v3, v4, v5);
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_19()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_20(uint64_t a1, void **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315906;
      v13 = v5;
      v14 = 2080;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate _octave2IndexTable6 [count=%d]", &v12, 0x22u);
    }
  }

  if (*a2)
  {
    free(*a2);
    *a2 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v15 = 363;
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v7, v8, v9, v10, v11, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_21()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_22()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d error setting up VCAudioPowerSpectrum", v2, v3, v4, v5);
}

void _AVCStatisticsCollector_ProcessVCStatisticsInternal_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Unknown type of packet received statistics", v2, v3, v4, v5);
}

void VCStatisticsCollector_EnableBWELogDump_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector is nil", v2, v3, v4, v5);
}

void VCStatisticsCollector_Mode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector is nil", v2, v3, v4, v5);
}

void VCStatisticsCollector_SetMode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector is nil", v2, v3, v4, v5);
}

void VCStatisticsCollector_SetFastSuddenBandwidthDetectionEnabled_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector is nil", v2, v3, v4, v5);
}

void VCStatisticsCollector_SetL4SHighDataRateEnabled_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector is nil", v2, v3, v4, v5);
}

void VCStatisticsCollector_SetRadioAccessTechnology_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector is nil", v2, v3, v4, v5);
}

void VCStatisticsCollector_SharedEstimatedBandwidth_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector is nil", v2, v3, v4, v5);
}

void _AVCStatisticsCollector_UpdateMaxLocalBurstyLoss_cold_1()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "_AVCStatisticsCollector_UpdateMaxLocalBurstyLoss";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v1, v2, "VCRC [%s] %s:%d update video loss: %d", v3, *v4, "_AVCStatisticsCollector_UpdateMaxLocalBurstyLoss" >> 16, 981);
}

void _AVCStatisticsCollector_UpdateMaxLocalBurstyLoss_cold_2()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "_AVCStatisticsCollector_UpdateMaxLocalBurstyLoss";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v1, v2, "VCRC [%s] %s:%d update audio loss: %d", v3, *v4, "_AVCStatisticsCollector_UpdateMaxLocalBurstyLoss" >> 16, 976);
}

void VCAudioStreamReceiveGroup_PullAudioSamples_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = 136316162;
  v4 = a1;
  OUTLINED_FUNCTION_6_5();
  v5 = "VCAudioStreamReceiveGroup_UpdateAudioPriority";
  v6 = 1024;
  v7 = 469;
  v8 = 1024;
  v9 = 469;
  v10 = 1024;
  v11 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioStreamReceiveGroup.m:%d: Updating audio priority %d", &v3, 0x28u);
}

void VCCaptionsStreamSendGroup_PushAudioSamples_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 351;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d audio no-op no MKM", &v2, 0x1Cu);
}

void VCCaptionsStream_CreateSampleBuffer_cold_1(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v11) = 136315906;
      *(&v11 + 4) = v4;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v5, v6, " [%s] %s:%d Error creating block buffer for captions: %d", v7, v8, v9, v10, v11, DWORD2(v11));
    }
  }

  *a2 = a1;
}

void VCCaptionsStream_CreateSampleBuffer_cold_2(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v11) = 136315906;
      *(&v11 + 4) = v4;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v5, v6, " [%s] %s:%d Error creating format description for captions: %d", v7, v8, v9, v10, v11, DWORD2(v11));
    }
  }

  *a2 = a1;
}

void VCVideoJitterBuffer_GetIsRunning_cold_1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, "VCVideoJitterBuffer [%s] %s:%d Invalid rtpTimestampAtRunState pointer", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCVideoJitterBuffer_GetIsRunning_cold_2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, "VCVideoJitterBuffer [%s] %s:%d Invalid jitter buffer pointer", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void VCVideoJitterBuffer_Create_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Failed to initialize the lag processor", v2, v3, v4, v5);
    }
  }
}

void VCVideoJitterBuffer_Create_cold_2()
{
  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "VCVideoJitterBuffer_GetJitterDistributionBucketSize";
  v5 = 1024;
  v6 = 103;
  v7 = 1024;
  v8 = 0;
  v9 = 1024;
  v10 = 4;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "VCVideoJitterBuffer [%s] %s:%d Default configuration for number of bins per frame %d for target estimator CDF is incorrect, defaulting to %d bins per frame", v2, 0x28u);
}

void VCVideoJitterBuffer_Create_cold_3(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v1, v2, "VCVideoJitterBuffer [%s] %s:%d Failed to initialize the target estimator", v3, v4, v5, v6);
    }
  }
}

void VCVideoJitterBuffer_Create_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d maxDisplayRefreshRate cannot be 0!", v2, v3, v4, v5);
    }
  }
}

void VCVideoJitterBuffer_Create_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Failed to allocate the Video JitterBuffer memory", v2, v3, v4, v5);
    }
  }
}

void VCVideoJitterBuffer_Create_cold_6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Failed to allocate the Video JitterBuffer", v2, v3, v4, v5);
}

void VCVideoJitterBuffer_Create_cold_7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid Config (nil)", v2, v3, v4, v5);
}

void _VCVideoJitterBuffer_GetJBTargetFromEstimatedTarget_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, "VCVideoJitterBuffer [%s] %s:%d Invalid parameters in callback", v4, v5, v6, v7);
    }
  }

  *a1 = 4;
}

void VCVideoJitterBuffer_Finalize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5);
}

void VCVideoJitterBuffer_UpdateMode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5);
}

void VCVideoJitterBuffer_GetTargetJitterQueueSize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5);
}

void VCVideoJitterBuffer_GetJitterBufferMaxQueueSize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5);
}

void VCVideoJitterBuffer_GetReferenceFrame_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5);
}

void VCVideoJitterBuffer_EnqueueFrame_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5);
}

void VCVideoJitterBuffer_HealthPrint_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5);
}

void VCMicrophonePreferencesCMS_GetBuiltInMicPortDictionaryFromSelectableInputsArray_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_6();
  v2 = 1024;
  v3 = 37;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d builtInMicPort returned is NULL", v1, 0x1Cu);
}

void VCMicrophonePreferencesCMS_GetBuiltInMicPortDictionaryFromSelectableInputsArray_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VCMicrophonePreferencesCMS_GetDataSourcesFromPortDictionary_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VCMicrophonePreferencesCMS_CreateSelectedInputDictWithPolarPattern_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_6();
  v2 = 1024;
  v3 = 106;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Did not find non-omnidirectional polar pattern", v1, 0x1Cu);
}

void VCMicrophonePreferencesCMS_ApplyMicrophonePreferences_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VCMicrophonePreferencesCMS_ApplyMicrophonePreferences_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VCMicrophonePreferencesCMS_ApplyMicrophonePreferences_cold_3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  v4 = 0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d selectedInputDict(%p) == NULL", v2, 0x26u);
}

void VCRateControlProbingSequenceController_SetMode_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d probingSequenceController cannot be nil", v2, v3, v4, v5);
    }
  }
}

void VCRateControlProbingSequenceController_SetRateSharingClientID_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to register the rateSharingClient, use default ID 0", v2, v3, v4, v5);
    }
  }
}

void VCRateControlProbingSequenceController_SetRateSharingClientID_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d probingSequenceController cannot be nil", v2, v3, v4, v5);
    }
  }
}

void VCRateControlProbingSequenceController_GetProbingSequenceID_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCRateControlProbingSequenceController_GetProbingSequenceSize_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCRateControlProbingSequenceController_ShouldRequestProbingSequence_cold_1(uint64_t a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  *a2 = 0;
}

void VCRateControlProbingSequenceController_ShouldRequestProbingSequence_cold_2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCRateControlProbingSequenceController_ShouldRequestProbingSequence_cold_3(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void _VCAudioStreamGroup_AddSyncDestination_cold_1(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_8();
      v7 = v5;
      v8 = "_VCAudioStreamGroup_AddSyncDestination";
      v9 = 1024;
      v10 = 739;
      v11 = 2048;
      v12 = a1;
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d syncDestination[%p] is already in the list for streamGroup[%p]", v6, 0x30u);
    }
  }

  OUTLINED_FUNCTION_11_3();
}

void _VCAudioStreamGroup_AddSyncDestination_cold_2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void DynamicStoreCallbackForWifiChanges_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d GKInterfaceListener Dynamic store instance NULL, discontinuing Wifi detection.", v2, v3, v4, v5);
}

void VCMediaRecorderHistory_AddAudioSampleBuffer_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCMediaRecorderHistory_AddAudioSampleBuffer_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCMediaRecorderHistory_AddAudioSampleBuffer_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCMediaRecorderHistory_AddAudioSampleBuffer_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCMediaRecorderHistory_AddLocalVideoSampleBuffer_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

uint64_t VCMediaRecorderHistory_AddLocalVideoSampleBuffer_cold_2(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = v5;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      v11 = 275;
      v12 = 2048;
      v13 = a1;
      v14 = v8;
      v15 = a2;
      _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to CMSampleBufferCreateCopy for sampleBuffer=%p status=%d", &v9, 0x2Cu);
    }
  }

  return FigSampleBufferRelease();
}

void _VCMediaRecorderHistory_EmitSetVisibleRectSignpost_cold_1(os_signpost_id_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *MEMORY[0x1E6986650];
    if (os_signpost_enabled(*MEMORY[0x1E6986650]))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_1DB56E000, v2, OS_SIGNPOST_EVENT, v1, "VCMediaRecorderHistory_SetVisibleRect", &unk_1DBDF5B7E, v3, 2u);
    }
  }
}

void VCMediaRecorderHistory_UpdateTargetScreenAttributes_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void VCMediaRecorderHistory_UpdateResizeFlag_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCMediaRecorderHistory_UpdateResizeFlag_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCMediaRecorderHistory_UpdateResizeFlag_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCMediaRecorderHistory_StopProcessingAllRequests_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray";
  v6 = 1024;
  v7 = 34;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot update index when updating network settings", &v2, 0x1Cu);
}

void _VCRateControlAlgorithmSparseNOWRD_DoRateControl_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "_VCRateControlAlgorithmSparseNOWRD_DoRateControlWithVCRCStatistics";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Unknown VCRateControl state %d", v2, *v3, "_VCRateControlAlgorithmSparseNOWRD_DoRateControlWithVCRCStatistics" >> 16, 280);
}

void _VCRateControlAlgorithmSparseNOWRD_DoRateControl_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "_VCRateControlAlgorithmSparseNOWRD_DoRateControl";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d This algorithm does not support statistics type:%d to do rate control", v2, *v3, "_VCRateControlAlgorithmSparseNOWRD_DoRateControl" >> 16, 181);
}

void VCRateControlAlgorithmSparseNOWRD_NoServerStatsActivityDetected_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "VCRateControlAlgorithmSparseNOWRD_NoServerStatsActivityDetected";
  v6 = 1024;
  v7 = 352;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Invalid argument. Algorithm is nil", &v2, 0x1Cu);
}

void VCAudioCaptions_ConvertSamplesToPCM_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VCNetworkConditionMonitor_Create_cold_2(const void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_26(v2, v3, v4, v5, v6);
    }
  }

  CFRelease(a1);
}

void VCNetworkConditionMonitor_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_26(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNetworkConditionMonitor_Create_cold_4()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_26(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNetworkConditionMonitor_Create_cold_5()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_26(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNetworkConditionMonitor_Create_cold_6()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_26(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNetworkConditionMonitor_SetBrokenNetworkStatus_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = OUTLINED_FUNCTION_6_8();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_8_5(v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCNetworkConditionMonitor_triggerNetworkConditionCallback_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315650;
      v4 = v0;
      OUTLINED_FUNCTION_0();
      v5 = 125;
      OUTLINED_FUNCTION_29_0(&dword_1DB56E000, v1, v2, " [%s] %s:%d NetworkConditionMonitor: didUpdateNetworkConditionContext is NULL", &v3);
    }
  }
}

void VCNetworkConditionMonitor_SetWiFiChannelQualityScore_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = OUTLINED_FUNCTION_6_8();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_8_5(v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNetworkConditionMonitor_SetCellSignalStrengthBars_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = OUTLINED_FUNCTION_6_8();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_8_5(v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNetworkConditionMonitor_SetRemoteNetworkQuality_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = OUTLINED_FUNCTION_6_8();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_8_5(v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNetworkConditionMonitor_SetIsLocalActiveOnCellular_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = OUTLINED_FUNCTION_6_8();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_8_5(v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

BOOL VCMediaKeyIndex_isValid(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  objc_sync_enter(a1);
  v2 = memcmp((a1 + 8), &invalidMKI, 0x10uLL) != 0;
  objc_sync_exit(a1);
  return v2;
}

BOOL VCMediaKeyIndex_isEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 24);
    return v3 == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && memcmp((a1 + 8), (a2 + 8), v3) == 0;
  }

  return v2;
}

BOOL VCMediaKeyIndex_isStartingWithPrefix(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a2 + 24);
    return *(a1 + 24) >= v3 && memcmp((a1 + 8), (a2 + 8), v3) == 0;
  }

  return v2;
}

uint64_t VCMediaKeyIndex_UniquePrefixSize(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  objc_sync_enter(a1);
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = *(a1 + 24);
  }

  objc_sync_exit(a1);
  return v2;
}

void VCMediaKeyIndex_UniquePrefixBytes_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Invalid parameters passed to the method", v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void AFRCCreateHandle_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void AFRCCreateHandle_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void AFRCCreateHandle_cold_4()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  v3 = v0;
  v4 = 9856;
  _os_log_fault_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_FAULT, "VCRC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/MediaQueue/AFRC.c:%d: calloc(%d) failed", v2, 0x28u);
}

void AFRCCreateHandle_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AFRCSetTxCap_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void AFRCGetTxInfo_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 6160;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d Enabling LF", &v2, 0x1Cu);
}

void AFRCGetTxInfo_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void AFRCProcessBasebandNotification_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AFRCSetBWEstMode_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 6525;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d ////^^^^ AFRCSetBWEstMode: FALLING TO BW-EST BACKWARD COMPATIBLITY MODE", &v2, 0x1Cu);
}

void MediaQueue_CreateHandle_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void MediaQueue_CreateHandle_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ActiveProbing_Uninit_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x28u);
}

void MediaQueue_Start_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void MediaQueue_Start_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void MediaQueue_Malloc_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void MediaQueue_Malloc_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void MediaQueue_AddPacket_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _MediaQueue_CheckActiveProbingQueueLength_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void MediaQueue_RexmitPacket_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void MediaQueue_RexmitPacket_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ActiveProbing_ProcessIncomingPacket_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x34u);
}

void ActiveProbing_ProcessIncomingPacket_cold_2()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ActiveProbing_ProcessIncomingPacket_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  v2 = 1642;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d AddPacket: ^^^^^^\t\t MP belonging to an active Probe. Going to the main list", v1, 0x1Cu);
}

void MediaQueue_ThrottlingFlushThrottlingQueue_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void drainOldPackets_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_6_9();
  v9 = v1;
  v10 = v0;
  v2 = OUTLINED_FUNCTION_10_2();
  StallModeTracePrint_(v2, v3, v4, 2153, v5, v6, v7, v8, v9, v10);
}

void drainOldPackets_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_6_9();
  v9 = v1;
  v10 = v0;
  v2 = OUTLINED_FUNCTION_10_2();
  StallModeTracePrint_(v2, v3, v4, 2159, v5, v6, v7, v8, v9, v10);
}

void pushOutQueuedAudioPkts_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_6_9();
  v9 = v1;
  v10 = v0;
  v2 = OUTLINED_FUNCTION_10_2();
  StallModeTracePrint_(v2, v3, v4, 2190, v5, v6, v7, v8, v9, v10);
}

void MediaQueue_SendPacket_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCSFrameCryptorH264_Destroy(CFTypeRef **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[1])
    {
      CFRelease(v2[1]);
      v2 = *a1;
    }

    if (v2[2])
    {
      CFRelease(v2[2]);
      v2 = *a1;
    }

    if (*v2)
    {
      CFRelease(*v2);
      v2 = *a1;
    }

    free(v2);
    *a1 = 0;
  }
}

void _VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer_cold_1(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = v8;
      OUTLINED_FUNCTION_0();
      v12 = 143;
      _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate pps buffer", &v10, 0x1Cu);
    }
  }

  *a4 = -2143158269;
  *a3 = 0;
  *a2 = a1;
}

void _VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer_cold_2(uint64_t a1, _DWORD *a2, void *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
    }
  }

  *a3 = a1;
  *a2 = -2143158269;
}

void _VCSFrameCryptorH264_CreateAndGetBlockBufferPtr_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCSFrameCryptorH264_CreateAndGetBlockBufferPtr_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCSFrameCryptorH264_ExtractSFramePayloadFromSlice_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  *v0 = -2143158269;
}

void _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

void _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  v6 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d _VideoReceiver_FindAndCopySliceNalu, failed to get access to enough bytes contiguously for parsing nalu at offset:%zu", &v3, 0x26u);
}

void _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d _VCSFrameCryptorH264_ExtractSFramePayloadFromSlice failed to extract SFrame slice payload", v2, v3, v4, v5);
    }
  }
}

void _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d _VideoReceiver_FindAndCopySliceNalu, failed to allocate temporary buffer", v2, v3, v4, v5);
    }
  }
}

void _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
    }
  }
}

void _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d _VideoReceiver_FindAndCopySliceNalu: Failed to parse nalu length from buffer", v2, v3, v4, v5);
    }
  }
}

void _VCSFrameCryptroH264_EscapeEncryptedBuffer_cold_1()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCSFrameCryptroH264_EscapeEncryptedBuffer_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCSFrameCryptorH264_RemoveEmulationBytesFromPayloadBuffer_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCSFrameCryptorH264_RemoveEmulationBytesFromPayloadBuffer_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCSFrameCryptorH264_RemoveEmulationBytesFromPayloadBuffer_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Create_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCSFrameCryptorH264_Create failed to allocate block buffer header allocator", v2, v3, v4, v5);
    }
  }
}

void VCSFrameCryptorH264_Create_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCSFrameCryptorH264_Create failed to allocate block buffer data allocator", v2, v3, v4, v5);
    }
  }
}

void VCSFrameCryptorH264_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSFrameCryptorH264_Create_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSFrameCryptorH264_Encrypt_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Encrypt_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VCSFrameCryptorH264_Encrypt_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Encrypt_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Encrypt_cold_5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Encrypt_cold_6()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Encrypt_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSFrameCryptorH264_Encrypt_cold_8()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Encrypt_cold_9()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VCSFrameCryptorH264_Encrypt_cold_10()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Encrypt_cold_11()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VCSFrameCryptorH264_Encrypt_cold_12()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSFrameCryptorH264_Encrypt_cold_13(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
    }
  }

  *a3 = -2143158209;
}

void VCSFrameCryptorH264_Encrypt_cold_14(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 447;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to append prefix nalus to sframe buffer", &v2, 0x1Cu);
}

void _VCSFrameCryptorH264_ValidateInputParameters_cold_1()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCSFrameCryptorH264_ValidateInputParameters_cold_2()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCSFrameCryptorH264_ValidateInputParameters_cold_3()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCSFrameCryptorH264_ValidateInputParameters_cold_4()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSFrameCryptorH264_Decrypt_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Decrypt_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Decrypt_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VCSFrameCryptorH264_Decrypt_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Decrypt_cold_5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Decrypt_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VCSFrameCryptorH264_Decrypt_cold_7()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Decrypt_cold_8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
    }
  }

  *a3 = 0;
}

void RSU_Encode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to generate parity bits for data payload sizes.", v2, v3, v4, v5);
}

void RSU_Encode_cold_2(int a1, _DWORD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = v4;
      OUTLINED_FUNCTION_0();
      v9 = 683;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v5, v6, " [%s] %s:%d Failed to Encode the packet payloads.", &v7);
    }
  }

  *a2 = a1;
}

void RSU_Encode_cold_3(_DWORD *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = v2;
      OUTLINED_FUNCTION_0();
      v7 = 643;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v3, v4, " [%s] %s:%d Invalid Group Size", &v5);
    }
  }

  *a1 = -2144141311;
}

void _RSU_EncodeByteBuffer_cold_1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid number of symbols per packet (%d)", v3, v4, v5, v6);
}

void _RSU_DecodeByteBuffer_cold_1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid number of symbols per packet (%d)", v3, v4, v5, v6);
}

void RSU_Decode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid Buffer Size", v2, v3, v4, v5);
}

void RSU_Decode_cold_2(int a1, _DWORD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = v4;
      OUTLINED_FUNCTION_0();
      v9 = 1301;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v5, v6, " [%s] %s:%d DecodeByteBuffe failed!", &v7);
    }
  }

  *a2 = a1;
}

void RSU_Decode_cold_3()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid number of symbols per packet (%d)", v3, v4, v5, v6);
}

void RSU_Decode_cold_4(_DWORD *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = v2;
      OUTLINED_FUNCTION_0();
      v7 = 1305;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v3, v4, " [%s] %s:%d DecodeByteBuffe failed!", &v5);
    }
  }

  *a1 = -2144141311;
}

void RSU_Decode_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid Buffer Size", v2, v3, v4, v5);
}

void RSU_Decode_cold_6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid Buffer Size", v2, v3, v4, v5);
}

uint64_t EncGetRecommendedBitrate(uint64_t a1, _DWORD *a2)
{
  RecommendedBitrate = 2148007937;
  if (a2)
  {
    *a2 = 0;
    v4 = CheckInHandleDebug();
    if (v4)
    {
      v5 = *(v4 + 408);
      if (v5)
      {
        RecommendedBitrate = VCVideoEncoderMultiImageRateAdaptation_GetRecommendedBitrate(v5, a2);
      }

      else
      {
        RecommendedBitrate = 2148007953;
      }

      CheckOutHandleDebug();
    }

    else
    {
      return 2148007938;
    }
  }

  return RecommendedBitrate;
}

void EncCreateHandle_cold_1()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void EncCreateHandle_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void EncCreateHandle_cold_3()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void EncEncodeFrame_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void EncEncodeFrame_cold_2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v2, v3, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VCVideoEncoder_VCP.c:%d: Encoder callback is NULL", v4, v5, v6, v7);
    }
  }

  *a1 = -2146959339;
}

void EncEncodeMultipleFrames_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void EncEncodeMultipleFrames_cold_2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v2, v3, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VCVideoEncoder_VCP.c:%d: Encoder callback is NULL", v4, v5, v6, v7);
    }
  }

  *a1 = -2146959339;
}

void _DumpParameterSetsBitstream_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _DumpParameterSetsBitstream_cold_2()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void _DumpParameterSetsBitstream_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void _DumpParameterSetsBitstream_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void _DumpFrameBitstream_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 257;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCPCompressionSession Error: Error getting data buffer", v1, 0x1Cu);
}

void _DumpFrameBitstream_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 275;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCPCompressionSession Error: Encoder returned a NULL frame", v1, 0x1Cu);
}

void vtEncCallback_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void vtEncCallback_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _Enc_SetAverageBitrateForMultiImageEncode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

float _VCScreenCaptureFigCaptureController_OnVideoFrame_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v6 = 136315906;
  v4 = *(a2 + 8);
  v7 = a1;
  v8 = 2080;
  v9 = "_VCScreenCaptureFigCaptureController_OnVideoFrame";
  v10 = 1024;
  v11 = 193;
  v12 = 2048;
  v13 = (v3 / v4);
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d CannedScreenCaptureFigCaptureController_OnVideoFrame time=%f", &v6, 0x26u);
  return result;
}

void VCVideoStreamEncoderProc_cold_1(os_signpost_id_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *MEMORY[0x1E6986650];
    if (os_signpost_enabled(*MEMORY[0x1E6986650]))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_1DB56E000, v2, OS_SIGNPOST_EVENT, v1, "VideoTransmitter_FrameDequeue", &unk_1DBDF5B7E, v3, 2u);
    }
  }
}

void VCVideoStreamEncoderProc_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to dequeue sample buffer", v2, v3, v4, v5);
}

void VCVideoStreamTransmitter_SetFECRatio_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Not implemented!", v2, v3, v4, v5);
}

void VCVideoStreamTransmitter_SetMediaQueueSize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Not implemented!", v2, v3, v4, v5);
}

void encoderFrameCallback_cold_1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d frame encode error %d", v3, v4, v5, v6);
}

void JitterQueue_Insert_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  v5 = 136316162;
  v6 = a1;
  v7 = 2080;
  v8 = "JitterQueue_Insert";
  v9 = 1024;
  v10 = 212;
  v11 = 1024;
  v12 = v3;
  v13 = 1024;
  v14 = v4;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Discarding duplicate audio frame isRedAudio:%d timestamp:%u", &v5, 0x28u);
}

void JitterQueue_Insert_cold_2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "JitterQueue_Insert";
  v6 = 1024;
  v7 = 234;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Jitter Queue Max maxPacketTimeDelta Size is not set", &v2, 0x1Cu);
}

void VCNWConnectionMonitor_Create_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create monitor because nwConnection is null!", v2, v3, v4, v5);
}

void _VCNWConnectionMonitor_DispatchedProcessInterfaceAdvisoryNotification_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate memory for notification!", v2, v3, v4, v5);
}

void _VCNWConnectionMonitor_AddNotification_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_0();
      v4 = 323;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Can't add a null monitor!", &v2, 0x1Cu);
    }
  }
}

void _VCNWConnectionMonitor_ProcessNotification_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d  timestamp%llu", v1, 0x26u);
}

void _VCNWConnectionMonitor_ProcessNotification_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCNWConnectionMonitor_ProcessNotification_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d NWConnection notification is nil", v2, v3, v4, v5);
}

void VCNWConnectionMonitor_ResetWlanStats_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d monitor is null!", v2, v3, v4, v5);
}

void VCMediaQueueUtil_FindPacketInTxHistory_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "VCMediaQueueUtil_FindPacketInTxHistory";
  v6 = 1024;
  v7 = 240;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Do not have a valid packetParam", &v2, 0x1Cu);
}

void VCPayloadUtils_AudioCodecRateModeForBitrate_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCPayloadUtils_ShortREDBitrateForPayload_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void _RTCPPacketForget(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *a2;
      if (*a2)
      {
        v5 = v3[12];
        if (v5)
        {
          CFRelease(v5);
          *(*a2 + 96) = 0;
          v3 = *a2;
        }

        CFAllocatorDeallocate(*(a1 + 10824), v3);
        *a2 = 0;
      }
    }
  }
}

void RTCPCopySendControlParameters_cold_1(void *a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *a2 = -2147418109;
  *a1 = 0;
}

void RTCPCopySendControlParameters_cold_2(void *a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *a2 = -2147418111;
  *a1 = 0;
}

void RTCPPackSendControlParameter_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  v2 = 96;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parameters", v1, 0x1Cu);
}

void RTPSendRTCP_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void RTPSendRTCP_cold_3()
{
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_24_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_9_8();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Eu);
    }
  }

  *v0 = v1;
}

void RTPSendRTCP_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Failed to add RTCP header", v2, v3, v4, v5);
}

void RTPSendRTCP_cold_5()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_28_2();
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Failed to add the Statistics Summary Report Block. status=%X", v1, 0x28u);
}

void RTPSendRTCP_cold_6()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_28_2();
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Failed to add the VoIP Metrics Report Block. status=%X", v1, 0x28u);
}

void RTPSendRTCP_cold_7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPSendRTCP_cold_8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Not enough space for the RTCP XR packet", v2, v3, v4, v5);
}

void RTPSendRTCP_cold_9()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void RTPSendRTCP_cold_10()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_11()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *v0 = v1;
}

void RTPSendRTCP_cold_12()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void RTPSendRTCP_cold_13()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_14()
{
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_24_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_9_8();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Eu);
    }
  }

  *v0 = v1;
}

void RTPSendRTCP_cold_15()
{
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_24_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_9_8();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Eu);
    }
  }

  *v0 = v1;
}

void RTPSendRTCP_cold_16()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_17()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_18()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_19()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_20()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_21()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_22(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Eu);
    }
  }

  *a2 = -2147418104;
}

void RTPSendRTCP_cold_23(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *a2 = a1;
}

void RTPSendRTCP_cold_24(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *a2 = a1;
}

void RTPSendRTCP_cold_25()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTCPGetVoIPMetricsReportBlock_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTCPGetVoIPMetricsReportBlock_cold_2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
    }
  }

  *a1 = 67;
}

void RTCPAddFIR_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTCPAddPLI_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void _RTCPSendWithTransportStream_cold_1(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
    }
  }

  *a2 = -2147418111;
}

void _RTCPSendWithTransportStream_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTCPSendWithSocket_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  __error();
  v4 = 136315906;
  v5 = a1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d VTP_Send failed with error=%d", &v4, 0x22u);
}

void _RTCPTransport_ParsePacket_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP version", v2, v3, v4, v5);
}

void _RTCPTransport_ParsePacket_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Bad RTCP packet", v2, v3, v4, v5);
}

void _RTCPTransport_ParsePacket_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP RTPFB message", v2, v3, v4, v5);
}

void _RTCPTransport_ParsePacket_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Bad RTCP PSFB ALFB packet", v2, v3, v4, v5);
}

void _RTCPTransport_ParsePacket_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP PSFB message", v2, v3, v4, v5);
}

void _RTCPTransport_ParsePacket_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP NACK message", v2, v3, v4, v5);
}

void _RTCPTransport_ParsePacket_cold_7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP FIR message", v2, v3, v4, v5);
}

void _RTCPTransport_ParsePacket_cold_8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Bad RTCP APP packet", v2, v3, v4, v5);
}

void _RTCPTransport_ParsePacket_cold_9()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP BYE message", v2, v3, v4, v5);
}

void _RTCPTransport_ParsePacket_cold_10()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP SDES message", v2, v3, v4, v5);
}

void _RTCPTransport_ParsePacket_cold_11()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP RR packet", v2, v3, v4, v5);
}

void _RTCPTransport_ParsePacket_cold_12()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP SR packet", v2, v3, v4, v5);
}

void _RTCPTransport_ParsePacket_cold_13()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP header", v2, v3, v4, v5);
}

void _RTCPPacketCallback_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTCPPacketCallback_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTCPRegisterPacketCallback_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void RTCPRegisterPacketCallback_cold_2(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *a2 = -2147418108;
}

void RTCPRegisterPacketCallback_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void RTCPRegisterPacketCallback_cold_4()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

void RTCPUnregisterPacketCallback_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void RTPRecvRTCP_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

uint64_t _RTPTransportStreamRTCPCallback_cold_1(char a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
    }
  }

  return a1 & 1;
}

void _RTPTransportStreamRTCPCallback_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPTransportStreamRTCPCallback_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTCPParseVCPacket_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTCPParseVCPacket_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: RTCP packet failed Version, padding bit, packet type check", v2, v3, v4, v5);
}

void _RTCPParseVCPacket_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTCPParseVCPacket_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTCPParseVCPacket_cold_5()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTCPParseVCPacket_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Drop RTCP packet from a unknown connection.", v2, v3, v4, v5);
}

void _RTCPAddPSFBAlfbPacket_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCFBOUtils_IsKindOfClass_cold_1(_BYTE *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VCFBOUtils_IsKindOfClass";
      v8 = 1024;
      v9 = 33;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d NULL filter", &v4, 0x1Cu);
    }
  }

  *a1 = 0;
}