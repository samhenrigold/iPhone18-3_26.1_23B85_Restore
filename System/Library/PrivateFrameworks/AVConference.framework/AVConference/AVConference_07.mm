uint64_t SoundDec_SetOpusInBandFecEnabled(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = 2147811329;
  inPropertyData = a2;
  if (a1 && (*(a1 + 8) == 1869641075 || *(a1 + 48) == 1869641075))
  {
    v3 = AudioConverterSetProperty(*(a1 + 88), 0x70666563u, 4u, &inPropertyData);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v3)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v12 = v5;
          v13 = 2080;
          v14 = "SoundDec_SetOpusInBandFecEnabled";
          v15 = 1024;
          v16 = 1851;
          v17 = 1024;
          v18 = inPropertyData;
          v19 = 1024;
          v20 = v3;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d AudioConverterSetProperty failed to set property kAudioCodecPrivatePropertyEnableFEC %d with error %08x", buf, 0x28u);
        }
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v12 = v7;
          v13 = 2080;
          v14 = "SoundDec_SetOpusInBandFecEnabled";
          v15 = 1024;
          v16 = 1854;
          v17 = 1024;
          v18 = inPropertyData;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertyEnableFEC opusInBandFecEnabled=%u", buf, 0x22u);
        }
      }

      return 0;
    }
  }

  return v2;
}

uint64_t SoundDec_SetPacketLossPercentage(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = 2147811329;
  inPropertyData = a2;
  if (a1 && (*(a1 + 8) == 1869641075 || *(a1 + 48) == 1869641075))
  {
    v3 = AudioConverterSetProperty(*(a1 + 88), 0x5E6C7370u, 4u, &inPropertyData);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v3)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v12 = v5;
          v13 = 2080;
          v14 = "SoundDec_SetPacketLossPercentage";
          v15 = 1024;
          v16 = 1867;
          v17 = 1024;
          v18 = inPropertyData;
          v19 = 1024;
          v20 = v3;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d AudioConverterSetProperty failed to set property kAudioCodecPrivatePropertyPacketLossPercentage %d with error %08x", buf, 0x28u);
        }
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v12 = v7;
          v13 = 2080;
          v14 = "SoundDec_SetPacketLossPercentage";
          v15 = 1024;
          v16 = 1870;
          v17 = 1024;
          v18 = inPropertyData;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertyPacketLossPercentage packetLossPercentage=%u", buf, 0x22u);
        }
      }

      return 0;
    }
  }

  return v2;
}

uint64_t SoundDec_GetOpusDecodeFECStatus(uint64_t a1, void *outPropertyData)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 2147811332;
  if (!a1 || *(a1 + 8) != 1869641075 && *(a1 + 48) != 1869641075)
  {
    return 2147811329;
  }

  ioPropertyDataSize = 4;
  if (!AudioConverterGetProperty(*(a1 + 88), 0x66737473u, &ioPropertyDataSize, outPropertyData))
  {
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      SoundDec_GetOpusDecodeFECStatus_cold_1();
    }
  }

  return v2;
}

uint64_t SoundDec_SetEVSAudioCodecBandwidth(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = 2147811332;
  if (!a1 || *(a1 + 48) != 1936029299 && *(a1 + 8) != 1936029299)
  {
    return 2147811329;
  }

  inPropertyData = a2;
  v3 = AudioConverterSetProperty(*(a1 + 88), 0x626E6477u, 4u, &inPropertyData);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v3)
  {
    v5 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        SoundDec_SetEVSAudioCodecBandwidth_cold_1();
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v13 = v6;
        v14 = 2080;
        v15 = "SoundDec_SetEVSAudioCodecBandwidth";
        v16 = 1024;
        v17 = 1932;
        v18 = 1024;
        v19 = -2147155964;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d Failed to set EVS audio codec bandwidth. result=%X", buf, 0x22u);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v13 = v8;
        v14 = 2080;
        v15 = "_SoundDec_SetEVSAudioCodecPropertyBandwidth";
        v16 = 1024;
        v17 = 1918;
        v18 = 1024;
        v19 = inPropertyData;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertyBandwidth codecBandwidth=%u", buf, 0x22u);
      }
    }

    return 0;
  }

  return v2;
}

uint64_t SoundDec_SetEVSAudioCodecBandwidthUpdate(uint64_t a1, int a2)
{
  result = 2147811329;
  if (a1 && (*(a1 + 48) == 1936029299 || *(a1 + 8) == 1936029299))
  {
    result = 0;
    *(a1 + 224) = a2;
    *(a1 + 228) = 1;
  }

  return result;
}

uint64_t SoundDec_SetCMR(uint64_t a1, int a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  result = 2147811329;
  if (a1)
  {
    v7 = *(a1 + 48);
    if (v7 == 1936029299 || ((v8 = *(a1 + 8), v8 != 1936029299) ? (v9 = v7 == 1935764850) : (v9 = 1), !v9 ? (v10 = v7 == 1935767394) : (v10 = 1), !v10 ? (v11 = v8 == 1935767394) : (v11 = 1), !v11 ? (v12 = v8 == 1935764850) : (v12 = 1), v12))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136316162;
          v18 = v13;
          v19 = 2080;
          v20 = "SoundDec_SetCMR";
          v21 = 1024;
          v22 = 1955;
          v23 = 1024;
          v24 = a2;
          v25 = 1024;
          v26 = a3;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d SoundDec_SetCMR mode=%u bandwidth=%u", &v17, 0x28u);
        }
      }

      v15 = *(a1 + 48);
      if (v15 == 1936029299 || *(a1 + 8) == 1936029299)
      {
        *(a1 + 204) = a2;
        *(a1 + 208) = a3;
        *(a1 + 220) = 1;
      }

      if (v15 == 1935764850 || v15 == 1935767394 || (v16 = *(a1 + 8), v16 == 1935767394) || v16 == 1935764850)
      {
        result = 0;
        *(a1 + 221) = a2;
        *(a1 + 222) = 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t SoundDec_EnableShortRED(uint64_t a1, int a2, int a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  result = 2147811329;
  if (a1 && (*(a1 + 48) == 1633903462 || *(a1 + 8) == 1633903462))
  {
    *(a1 + 252) = a3;
    *(a1 + 256) = a4;
    *(a1 + 248) = a2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v11 = 136316418;
      v12 = v9;
      v13 = 2080;
      v14 = "SoundDec_EnableShortRED";
      v15 = 1024;
      v16 = 2062;
      v17 = 1024;
      v18 = a2;
      v19 = 1024;
      v20 = a3;
      v21 = 1024;
      v22 = a4;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d SoundDec_EnableShortRED Requested shortREDEnabled=%d shortREDBytesPerFrame=%u shortREDBitrate=%u", &v11, 0x2Eu);
    }

    return 0;
  }

  return result;
}

uint64_t SoundDec_IsShortREDEnabled(uint64_t a1, _BYTE *a2)
{
  result = 2147811329;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 260);
    }
  }

  return result;
}

uint64_t SoundDec_GetShortREDBytesPerFrame(uint64_t a1, _DWORD *a2)
{
  result = 2147811329;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 264);
    }
  }

  return result;
}

char *ExpandCallbackBuffer(uint64_t a1, int *a2)
{
  v4 = *(a1 + 172);
  v5 = *(a1 + 160);
  v6 = (*a2 * 1.25);
  result = malloc_type_realloc(v5, v6, 0x3C1D46EBuLL);
  v8 = &result[v6];
  if (!result)
  {
    v8 = 0;
  }

  if (result > v8 || v6 < 0 || v8 - result < v6)
  {
    goto LABEL_10;
  }

  *(a1 + 160) = result;
  *(a1 + 172) = v6;
  if (result)
  {
    return result;
  }

  if (v4 < 0)
  {
LABEL_10:
    __break(0x5519u);
    return result;
  }

  *(a1 + 172) = v4;
  *(a1 + 160) = v5;
  *a2 = v4;
  return result;
}

uint64_t _SoundDec_SetAMRCMRInternal(uint64_t a1, unsigned __int8 a2)
{
  v21 = *MEMORY[0x1E69E9840];
  inPropertyData = a2;
  v2 = *(a1 + 48);
  if (v2 != 1935764850 && v2 != 1935767394)
  {
    v4 = *(a1 + 8);
    if (v4 != 1935767394 && v4 != 1935764850)
    {
      return 2147811329;
    }
  }

  v6 = AudioConverterSetProperty(*(a1 + 88), 0x5E636D72u, 1u, &inPropertyData);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v6)
  {
    v10 = 2147811332;
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _SoundDec_SetAMRCMRInternal_cold_1();
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v14 = v8;
        v15 = 2080;
        v16 = "_SoundDec_SetAMRCMRInternal";
        v17 = 1024;
        v18 = 1999;
        v19 = 1024;
        v20 = inPropertyData;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertyCMR mode=%u", buf, 0x22u);
      }
    }

    return 0;
  }

  return v10;
}

uint64_t VCDatagramChannelIDS_Token(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 168);
  }

  VCDatagramChannelIDS_Token_cold_1(&v3, a2);
  return v3;
}

_WORD *VCTimescalePSOLA_VectorBitShiftW32ToW16(_WORD *result, int a2, int *a3, int a4)
{
  v4 = a4;
  v6 = result;
  if (a4 < 0)
  {
    if (a2 >= 1)
    {
      v9 = -a4;
      v10 = a2 + 1;
      do
      {
        v11 = *a3++;
        result = VCTimescalePSOLA_SatW32ToW16(v11 << v9);
        *v6++ = result;
        --v10;
      }

      while (v10 > 1);
    }
  }

  else if (a2 >= 1)
  {
    v7 = a2 + 1;
    do
    {
      v8 = *a3++;
      result = VCTimescalePSOLA_SatW32ToW16(v8 >> v4);
      *v6++ = result;
      --v7;
    }

    while (v7 > 1);
  }

  return result;
}

uint64_t VCTimescalePSOLA_DownsampleFast(uint64_t a1, int a2, _WORD *a3, int a4, __int16 *a5, unsigned int a6, int a7, int a8)
{
  v8 = 61;
  v9 = a4 - 1;
  if (a4 >= 1 && a6 >= 1)
  {
    v10 = v9 * a7;
    v11 = v9 * a7 + a8;
    if (v11 < a2)
    {
      if (v10 < 0)
      {
        return 0;
      }

      else
      {
        v14 = a8;
        v15 = a7;
        v16 = v11;
        v17 = a6;
        v18 = 2 * a7;
        v19 = (a1 + 2 * a8);
        do
        {
          v20 = 2048;
          v21 = v17;
          v22 = a5;
          v23 = v19;
          do
          {
            v25 = *v22++;
            v24 = v25;
            v26 = *v23--;
            v20 += v26 * v24;
            --v21;
          }

          while (v21);
          *a3++ = VCTimescalePSOLA_SatW32ToW16(v20 >> 12);
          v14 += v15;
          v19 = (v19 + v18);
        }

        while (v14 <= v16);
        return 0;
      }
    }
  }

  return v8;
}

_DWORD *VCTimescalePSOLA_CrossCorrelation(_DWORD *result, __int16 *a2, __int16 *a3, int a4, int a5, char a6, int a7)
{
  if (a5 >= 1)
  {
    for (i = 0; i != a5; ++i)
    {
      *result = 0;
      if (a4 >= 1)
      {
        v8 = 0;
        v9 = a4;
        v10 = a2;
        v11 = a3;
        do
        {
          v13 = *v10++;
          v12 = v13;
          v14 = *v11++;
          v8 += (v14 * v12) >> a6;
          --v9;
        }

        while (v9);
        *result = v8;
      }

      ++result;
      a3 += a7;
    }
  }

  return result;
}

uint64_t VCTimescalePSOLA_DivW32W16(int a1, int a2)
{
  if (a2)
  {
    return (a1 / a2);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t VCTimescalePSOLA_DivW32W16ResW16(int a1, int a2)
{
  if (a2)
  {
    v2 = a1 / a2;
  }

  else
  {
    LOWORD(v2) = 0x7FFF;
  }

  return v2;
}

uint64_t VCTimescalePSOLA_MaxAbsValueW16(__int16 *a1, unsigned int a2)
{
  LOWORD(v2) = -1;
  if (a1 && a2 >= 1)
  {
    v2 = 0;
    v3 = a2;
    do
    {
      v5 = *a1++;
      v4 = v5;
      if (v5 < 0)
      {
        v4 = -v4;
      }

      if (v2 <= v4)
      {
        v2 = v4;
      }

      --v3;
    }

    while (v3);
    if (v2 >= 0x7FFF)
    {
      LOWORD(v2) = 0x7FFF;
    }
  }

  return v2;
}

uint64_t VCTimescalePSOLA_MaxAbsValueW32(int *a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 1)
  {
    LODWORD(result) = 0;
    v4 = a2;
    do
    {
      v6 = *a1++;
      v5 = v6;
      if (v6 < 0)
      {
        v5 = -v5;
      }

      if (v5 <= result)
      {
        result = result;
      }

      else
      {
        result = v5;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t VCTimescalePSOLA_MaxIndexW16(uint64_t a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 1)
  {
    v4 = 0;
    LODWORD(result) = 0;
    v5 = 0x8000;
    do
    {
      v6 = *(a1 + 2 * v4);
      if (v6 <= v5)
      {
        result = result;
      }

      else
      {
        result = v4;
      }

      if (v6 > v5)
      {
        v5 = *(a1 + 2 * v4);
      }

      ++v4;
    }

    while (a2 != v4);
  }

  return result;
}

uint64_t VCTimescalePSOLA_DotProductWithScale(int16x4_t *a1, int16x4_t *a2, int a3, char a4)
{
  if (a3 < 4)
  {
    v5 = 0;
    LODWORD(v6) = 0;
  }

  else
  {
    v4 = 0;
    LODWORD(v5) = 0;
    LODWORD(v6) = a3 & 0x7FFFFFFC;
    v7 = vnegq_s32(vdupq_n_s32(a4));
    v8 = a1;
    v9 = a2;
    do
    {
      v10 = *v8++;
      v11 = v10;
      v12 = *v9++;
      v5 = (vaddvq_s32(vshlq_s32(vmull_s16(v12, v11), v7)) + v5);
      v4 += 4;
    }

    while (v4 < (a3 - 3));
  }

  if (v6 < a3)
  {
    v6 = v6;
    do
    {
      v5 = (((a2->i16[v6] * a1->i16[v6]) >> a4) + v5);
      ++v6;
    }

    while (v6 < a3);
  }

  return v5;
}

uint64_t _VCVideoPlayer_QueueAlarm(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, double a8)
{
  v63 = *MEMORY[0x1E69E9840];
  v15 = 2147680258;
  v16 = CheckInHandleDebug();
  if (v16)
  {
    v17 = v16;
    if (a2 == 1 && (*(v16 + 578) & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v48 = v21;
          v49 = 2080;
          v50 = "_VCVideoPlayer_QueueAlarm";
          v51 = 1024;
          v52 = 927;
          v53 = 2048;
          v54 = v17;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Ignoring QueueAlarmForDisplay.", buf, 0x26u);
        }
      }

      v15 = 0;
      goto LABEL_47;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      v20 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136317186;
          v48 = v18;
          v49 = 2080;
          v50 = "_VCVideoPlayer_QueueAlarm";
          v51 = 1024;
          v52 = 932;
          v53 = 2048;
          v54 = v17;
          v55 = 1024;
          *v56 = a2;
          *&v56[4] = 2048;
          *&v56[6] = a8;
          v57 = 1024;
          v58 = a5;
          v59 = 1024;
          v60 = a6;
          v61 = 1024;
          v62 = a7;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] alarmType=%d videoFrameTimeInSeconds=%f rtpTimestamp=%u frameSequenceNumber=%u didAssembleFail=%d", buf, 0x48u);
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136317186;
        v48 = v18;
        v49 = 2080;
        v50 = "_VCVideoPlayer_QueueAlarm";
        v51 = 1024;
        v52 = 932;
        v53 = 2048;
        v54 = v17;
        v55 = 1024;
        *v56 = a2;
        *&v56[4] = 2048;
        *&v56[6] = a8;
        v57 = 1024;
        v58 = a5;
        v59 = 1024;
        v60 = a6;
        v61 = 1024;
        v62 = a7;
        _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] alarmType=%d videoFrameTimeInSeconds=%f rtpTimestamp=%u frameSequenceNumber=%u didAssembleFail=%d", buf, 0x48u);
      }
    }

    pthread_mutex_lock((v17 + 16));
    v23 = VCMemoryPool_Alloc(*(v17 + 568));
    if (!v23)
    {
      v15 = 2147680259;
LABEL_46:
      pthread_mutex_unlock((v17 + 16));
LABEL_47:
      CheckOutHandleDebug();
      return v15;
    }

    *v23 = a8;
    *(v23 + 6) = a5;
    *(v23 + 14) = a6;
    v23[30] = a7;
    *(v23 + 8) = a2;
    *(v23 + 1) = a3;
    *(v23 + 2) = a4;
    v24 = 376;
    if (!a2)
    {
      v24 = 368;
    }

    v25 = 712;
    if (!a2)
    {
      v25 = 704;
    }

    v26 = (v17 + v24);
    ++*(v17 + v25);
    for (i = *v26; i; i = *(i + 5))
    {
      v28 = *i;
      v29 = *(i + 6) - a5;
      if (v29)
      {
        v30 = v29 > 0x7FFFFFFE;
      }

      else
      {
        v30 = 1;
      }

      v31 = v30;
      if (v28 == 0.0)
      {
        if (!v31)
        {
          break;
        }
      }

      else if (((v28 <= a8) & v31) == 0)
      {
        break;
      }

      v26 = (i + 40);
    }

    *(v23 + 5) = i;
    *v26 = v23;
    if (a7)
    {
      if (a2)
      {
        goto LABEL_43;
      }
    }

    else if (a2 || *(v17 + 424) >= *(v17 + 426))
    {
      goto LABEL_40;
    }

    if (*(v17 + 578) == 1)
    {
      *(v17 + 428) = 0;
      *(v17 + 430) = 0;
    }

LABEL_40:
    if (!a2 && (*v17 & 1) != 0)
    {
      pthread_cond_signal((v17 + 80));
LABEL_45:
      v15 = 0;
      goto LABEL_46;
    }

LABEL_43:
    if (a2 != 1 || (*(v17 + 761) & 1) != 0)
    {
      goto LABEL_45;
    }

    if (*(v17 + 428) >= *(v17 + 600) && (*(v17 + 430) & 1) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_45;
      }

      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      v35 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = "Decode";
          v37 = *(v17 + 428);
          *buf = 136316674;
          if (a7)
          {
            v36 = "Player";
          }

          v48 = v33;
          v49 = 2080;
          v50 = "_VCVideoPlayer_QueueAlarm";
          v51 = 1024;
          v52 = 981;
          v53 = 2048;
          v54 = v17;
          v55 = 2080;
          *v56 = v36;
          *&v56[8] = 1024;
          *&v56[10] = a5;
          v57 = 1024;
          v58 = v37;
          _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] NOT processing on %s Thread. rtpTimeStamp=%u alarmsSentForDecodeButNotDisplayedCount=%u", buf, 0x3Cu);
        }
      }

      else if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v43 = "Decode";
        v44 = *(v17 + 428);
        *buf = 136316674;
        if (a7)
        {
          v43 = "Player";
        }

        v48 = v33;
        v49 = 2080;
        v50 = "_VCVideoPlayer_QueueAlarm";
        v51 = 1024;
        v52 = 981;
        v53 = 2048;
        v54 = v17;
        v55 = 2080;
        *v56 = v43;
        *&v56[8] = 1024;
        *&v56[10] = a5;
        v57 = 1024;
        v58 = v44;
        _os_log_debug_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] NOT processing on %s Thread. rtpTimeStamp=%u alarmsSentForDecodeButNotDisplayedCount=%u", buf, 0x3Cu);
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x1E6986650];
        v40 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = "Decode";
            v42 = *(v17 + 428);
            *buf = 136316674;
            if (a7)
            {
              v41 = "Player";
            }

            v48 = v38;
            v49 = 2080;
            v50 = "_VCVideoPlayer_QueueAlarm";
            v51 = 1024;
            v52 = 978;
            v53 = 2048;
            v54 = v17;
            v55 = 2080;
            *v56 = v41;
            *&v56[8] = 1024;
            *&v56[10] = a5;
            v57 = 1024;
            v58 = v42;
            _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Processing on %s Thread. rtpTimeStamp=%u alarmsSentForDecodeButNotDisplayedCount=%u", buf, 0x3Cu);
          }
        }

        else if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v45 = "Decode";
          v46 = *(v17 + 428);
          *buf = 136316674;
          if (a7)
          {
            v45 = "Player";
          }

          v48 = v38;
          v49 = 2080;
          v50 = "_VCVideoPlayer_QueueAlarm";
          v51 = 1024;
          v52 = 978;
          v53 = 2048;
          v54 = v17;
          v55 = 2080;
          *v56 = v45;
          *&v56[8] = 1024;
          *&v56[10] = a5;
          v57 = 1024;
          v58 = v46;
          _os_log_debug_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Processing on %s Thread. rtpTimeStamp=%u alarmsSentForDecodeButNotDisplayedCount=%u", buf, 0x3Cu);
        }
      }

      _VCVideoPlayer_CheckAndProcessDisplayAlarms(v17);
    }

    v15 = 0;
    goto LABEL_46;
  }

  return v15;
}

uint64_t VCVideoPlayer_CallAlarms(uint64_t a1, double a2, double a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = CheckInHandleDebug();
  if (!v6)
  {
    return 2147680258;
  }

  v8 = v6;
  if ((*(v6 + 824) & 1) == 0)
  {
    a2 = micro(v6, v7);
  }

  pthread_mutex_lock((v8 + 16));
  if (a2 - *(v8 + 360) > 5.0)
  {
    _VCVideoPlayer_HealthPrint(v8, v8 + 128, NAN);
    *(v8 + 360) = a2;
  }

  if ((*(v8 + 576) & 1) == 0)
  {
    if (a3 == 0.0)
    {
      *(v8 + 164) = 1;
    }

    v9 = *(v8 + 608) + *(v8 + 616) + *(v8 + 832);
    if (a3 == 0.0 || a3 - *(v8 + 272) > v9)
    {
      pthread_cond_signal((v8 + 80));
    }

    *(v8 + 272) = v9 + a3;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      v12 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(v8 + 272);
          v16 = 136316674;
          v17 = v10;
          v18 = 2080;
          v19 = "VCVideoPlayer_CallAlarms";
          v20 = 1024;
          v21 = 1024;
          v22 = 2048;
          v23 = v8;
          v24 = 2048;
          v25 = a1;
          v26 = 2048;
          v27 = v13;
          v28 = 2048;
          v29 = a2;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] PlayerHandle=%p nextPlayoutTimeInSeconds=%.6f hostTimeForPlayout=%.6f", &v16, 0x44u);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(v8 + 272);
        v16 = 136316674;
        v17 = v10;
        v18 = 2080;
        v19 = "VCVideoPlayer_CallAlarms";
        v20 = 1024;
        v21 = 1024;
        v22 = 2048;
        v23 = v8;
        v24 = 2048;
        v25 = a1;
        v26 = 2048;
        v27 = v15;
        v28 = 2048;
        v29 = a2;
        _os_log_debug_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] PlayerHandle=%p nextPlayoutTimeInSeconds=%.6f hostTimeForPlayout=%.6f", &v16, 0x44u);
      }
    }
  }

  *(v8 + 280) = a2;
  *(v8 + 400) = a3;
  pthread_mutex_unlock((v8 + 16));
  CheckOutHandleDebug();
  return 0;
}

void _VCVideoPlayer_HealthPrint(uint64_t a1, uint64_t a2, double a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 656);
  v7 = *(a1 + 660);
  v8 = *(a1 + 664);
  v9 = *(a1 + 668);
  v10 = *(a1 + 672);
  v11 = *(a1 + 720);
  v12 = *(a1 + 736);
  *(a1 + 656) = *(a1 + 704);
  *(a1 + 672) = v11;
  v13 = *(a1 + 704) - v6;
  v41 = *(a1 + 708) - v7;
  v14 = *(a1 + 712);
  v15 = *(a1 + 716);
  v16 = *(a1 + 720);
  *(a1 + 688) = v12;
  v17 = *(a1 + 578);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v17 == 1)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 752);
        v21 = *(a2 + 300);
        v22 = *(a1 + 648);
        v23 = *(a2 + 160);
        v24 = *(a2 + 168);
        v25 = *(a2 + 176);
        v27 = *(a2 + 48);
        v26 = *(a2 + 56);
        v28 = *(a2 + 256);
        *buf = 136319746;
        v43 = v40;
        v44 = 2080;
        v45 = "_VCVideoPlayer_HealthPrint";
        v46 = 1024;
        v47 = 896;
        v48 = 2048;
        v49 = a1;
        v50 = 1024;
        v51 = v20;
        v52 = 1024;
        v53 = v13;
        v54 = 1024;
        v55 = v41;
        v56 = 1024;
        *v57 = v14 - v8;
        *&v57[4] = 1024;
        *&v57[6] = v15 - v9;
        LOWORD(v58) = 1024;
        *(&v58 + 2) = v16 - v10;
        HIWORD(v58) = 1024;
        LODWORD(v59) = v21;
        WORD2(v59) = 2048;
        *(&v59 + 6) = a3;
        HIWORD(v59) = 2048;
        *v60 = v22;
        *&v60[8] = 2048;
        *v61 = v23;
        *&v61[8] = 1024;
        *v62 = v24;
        *&v62[4] = 2048;
        *&v62[6] = v25;
        v63 = 2048;
        v64 = v27;
        v65 = 2048;
        v66 = v26;
        v67 = 2048;
        v68 = v28;
        v29 = "VCVideoPlayer [%s] %s:%d @=@ Health: VCVideoPlayer [%p] Health displayLinkTickCount=%d numAlarmsEnqueuedForDecode=%d numAlarmsProcessedForDecode=%d numAlarmsEnqueuedForDisplay=%d numAlarmsProcessedForDisplay=%d numAlarmsDropped=%d alarmsSentForDecodeButNotDisplayedCount=%d tickInterval=%f displayLinkTimestamp=%f lastPresentationTime=%f lastRTPTimestamp=%u lastFrameTimeInSeconds=%f targetJitterBufferInSeconds=%f playbackOffsetInSeconds=%f avSyncOffset=%f";
        v30 = v19;
        v31 = 156;
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
      }
    }
  }

  else if (ErrorLogLevelForModule >= 6)
  {
    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 752);
      v35 = *(a1 + 648);
      v36 = *(a2 + 160);
      v37 = *(a2 + 168);
      v38 = *(a2 + 176);
      v39 = *(a2 + 144);
      *buf = 136318466;
      v43 = v32;
      v44 = 2080;
      v45 = "_VCVideoPlayer_HealthPrint";
      v46 = 1024;
      v47 = 898;
      v48 = 2048;
      v49 = a1;
      v50 = 1024;
      v51 = v34;
      v52 = 1024;
      v53 = v13;
      v54 = 1024;
      v55 = v41;
      v56 = 2048;
      *v57 = a3;
      *&v57[8] = 2048;
      v58 = v35;
      LOWORD(v59) = 2048;
      *(&v59 + 2) = v36;
      WORD5(v59) = 1024;
      HIDWORD(v59) = v37;
      *v60 = 2048;
      *&v60[2] = v38;
      *v61 = 2048;
      *&v61[2] = v39;
      *v62 = 2048;
      *&v62[2] = v38 - v39;
      v29 = "VCVideoPlayer [%s] %s:%d @=@ Health: VCVideoPlayer [%p] Health displayLinkTickCount=%d numAlarmsEnqueuedForDecode=%d numAlarmsProcessedForDecode=%d tickInterval=%f displayLinkTimestamp=%f lastPresentationTime=%f lastRTPTimestamp=%u lastFrameTimeInSeconds=%f externalSourcePlayoutTimeInSeconds=%f lastFrameTimeInSeconds-externalSourcePlayoutTimeInSeconds=%f";
      v30 = v33;
      v31 = 122;
      goto LABEL_8;
    }
  }
}

uint64_t VCVideoPlayer_DisplayLinkTick(uint64_t a1, double a2, double a3, double a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = CheckInHandleDebug();
  if (!v7)
  {
    return 2147680259;
  }

  v8 = v7;
  pthread_mutex_lock((v7 + 16));
  v9 = *(v8 + 752);
  if (v9)
  {
    v10 = *(v8 + 756);
  }

  else
  {
    *(v8 + 768) = a2;
    v10 = vcvtpd_s64_f64(5.0 / a2);
    *(v8 + 756) = v10;
  }

  if (!(v9 % v10))
  {
    _VCVideoPlayer_HealthPrint(v8, v8 + 128, a2);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    v14 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316674;
        v16 = v12;
        v17 = 2080;
        v18 = "VCVideoPlayer_DisplayLinkTick";
        v19 = 1024;
        v20 = 1053;
        v21 = 2048;
        v22 = v8;
        v23 = 2048;
        v24 = a2;
        v25 = 2048;
        v26 = a3;
        v27 = 2048;
        v28 = a4;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] duration=%f currentDisplayTime=%f targetDisplayTime=%f ", &v15, 0x44u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136316674;
      v16 = v12;
      v17 = 2080;
      v18 = "VCVideoPlayer_DisplayLinkTick";
      v19 = 1024;
      v20 = 1053;
      v21 = 2048;
      v22 = v8;
      v23 = 2048;
      v24 = a2;
      v25 = 2048;
      v26 = a3;
      v27 = 2048;
      v28 = a4;
      _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] duration=%f currentDisplayTime=%f targetDisplayTime=%f ", &v15, 0x44u);
    }
  }

  *(v8 + 648) = a4;
  ++*(v8 + 752);
  _VCVideoPlayer_CheckAndProcessDisplayAlarms(v8);
  pthread_mutex_unlock((v8 + 16));
  CheckOutHandleDebug();
  return 0;
}

void _VCVideoPlayer_CheckAndProcessDisplayAlarms(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 578) == 1)
  {
    v2 = *(a1 + 376);
    if (v2)
    {
      while (1)
      {
        v8 = 0;
        v3 = _VCVideoPlayer_CheckAndProcessAlarm(a1, (a1 + 128), v2, &v8);
        if ((v3 & 1) == 0)
        {
          break;
        }

        v2 = *(a1 + 376);
        if (v2)
        {
          v4 = v3;
        }

        else
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        v7 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v10 = v5;
            v11 = 2080;
            v12 = "_VCVideoPlayer_CheckAndProcessDisplayAlarms";
            v13 = 1024;
            v14 = 825;
            v15 = 2048;
            v16 = a1;
            v17 = 2048;
            v18 = v8;
            _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Not processing display alarm, wait until next leeway=%f", buf, 0x30u);
          }
        }

        else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316162;
          v10 = v5;
          v11 = 2080;
          v12 = "_VCVideoPlayer_CheckAndProcessDisplayAlarms";
          v13 = 1024;
          v14 = 825;
          v15 = 2048;
          v16 = a1;
          v17 = 2048;
          v18 = v8;
          _os_log_debug_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Not processing display alarm, wait until next leeway=%f", buf, 0x30u);
        }
      }
    }

    else
    {
LABEL_8:
      if (*a1 == 1)
      {

        pthread_cond_signal((a1 + 80));
      }
    }
  }
}

uint64_t VCVideoPlayer_GetPlayoutInfo(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2147680258;
  }

  v6 = v5;
  pthread_mutex_lock((v5 + 16));
  if (*(v6 + 128) && ((*(v6 + 576) & 1) != 0 || *(v6 + 825) == 1 && *(v6 + 561) == 1))
  {
    DisplayTimestamp = _VCVideoPlayer_GetDisplayTimestamp(v6);
    v8 = *(v6 + 312);
    v9 = DisplayTimestamp - v8;
    if (v8 == 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = DisplayTimestamp - v8;
    }

    v11 = *(v6 + 320);
    if (v10 >= 0.0)
    {
      v12 = v10 * *(v6 + 584);
      v13 = v11 + v12;
      v14 = *(v6 + 340);
      if (v13 >= v14 || v13 - v14 >= 0x7FFFFFFF)
      {
        goto LABEL_23;
      }

      v16 = 1;
    }

    else
    {
      LODWORD(v9) = *(v6 + 584);
      v12 = (v10 + *(v6 + 768)) * *&v9;
      v13 = v11 + v12;
      v14 = *(v6 + 340);
      if (v14 >= v13 || v14 - v13 > 0x7FFFFFFE)
      {
        goto LABEL_23;
      }

      v16 = -1;
    }

    *(v6 + 352) += v16;
LABEL_23:
    if ((*(v6 + 336) & 1) == 0)
    {
      *(v6 + 336) = 1;
    }

    if (v14 == v13 && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(v6 + 312);
        v22 = *(v6 + 320);
        v31 = 136317442;
        v32 = v19;
        v33 = 2080;
        v34 = "_VCVideoPlayer_GetPlayoutRTPTimestamp";
        v35 = 1024;
        v36 = 1093;
        v37 = 2048;
        *v38 = v6;
        *&v38[8] = 2048;
        *&v38[10] = v6 + 128;
        v39 = 2048;
        v40 = DisplayTimestamp;
        v41 = 2048;
        v42 = v21;
        v43 = 2048;
        v44 = v10;
        v45 = 1024;
        v46 = v22;
        v47 = 1024;
        v48 = v14;
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] playbackClient:%p displayTimestamp:%f lastDisplayedFrame.presentationTime:%f timeDiff:%f lastDisplayedFrame.rtpTimestamp:%u playoutRTPTimestamp:%u", &v31, 0x5Au);
      }
    }

    *(v6 + 340) = v13;
    LODWORD(v12) = *(v6 + 352);
    *&v23 = v13;
    LODWORD(v23) = *(v6 + 584);
    *(v6 + 344) = (v13 + *&v12 * 4294967300.0) / v23;
    *a2 = v13;
    *a3 = *(v6 + 384);
  }

  pthread_mutex_unlock((v6 + 16));
  CheckOutHandleDebug();
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    return 0;
  }

  v24 = VRTraceErrorLogLevelToCSTR();
  v25 = *MEMORY[0x1E6986650];
  v26 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    result = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v27 = *a2;
      v28 = *a3;
      v31 = 136316162;
      v32 = v24;
      v33 = 2080;
      v34 = "VCVideoPlayer_GetPlayoutInfo";
      v35 = 1024;
      v36 = 1118;
      v37 = 1024;
      *v38 = v27;
      *&v38[4] = 2048;
      *&v38[6] = v28;
      _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer_GetPlayoutInfo setting PlayoutRTPTimestamp: %u, avSyncOffset: %.4f", &v31, 0x2Cu);
      return 0;
    }
  }

  else
  {
    result = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v29 = *a2;
      v30 = *a3;
      v31 = 136316162;
      v32 = v24;
      v33 = 2080;
      v34 = "VCVideoPlayer_GetPlayoutInfo";
      v35 = 1024;
      v36 = 1118;
      v37 = 1024;
      *v38 = v29;
      *&v38[4] = 2048;
      *&v38[6] = v30;
      _os_log_debug_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer_GetPlayoutInfo setting PlayoutRTPTimestamp: %u, avSyncOffset: %.4f", &v31, 0x2Cu);
      return 0;
    }
  }

  return result;
}

uint64_t VCVideoPlayer_UpdateJitterBufferState(uint64_t a1, int a2, int a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2147680258;
  }

  v6 = v5;
  if (*(v5 + 579) == 1)
  {
    pthread_mutex_lock((v5 + 16));
    if (a2)
    {
      if ((*(v6 + 552) & 1) == 0)
      {
        *(v6 + 556) = a3;
      }
    }

    *(v6 + 552) = a2;
    pthread_mutex_unlock((v6 + 16));
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t VCVideoPlayer_SetReferenceRTPTimestamp(uint64_t a1, int a2, double a3, double a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = CheckInHandleDebug();
  if (!v7)
  {
    return 2147680258;
  }

  v8 = v7;
  if (*(v7 + 580) != 3)
  {
    pthread_mutex_lock((v7 + 16));
    if ((*(v8 + 160) & 1) == 0)
    {
      *(v8 + 136) = a3;
      *(v8 + 144) = a2;
    }

    if (*(v8 + 216) != a2)
    {
      *(v8 + 216) = a2;
      *(v8 + 200) = 1;
      *(v8 + 208) = a3;
      *(v8 + 224) = a4;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(v8 + 208);
          v13 = *(v8 + 224);
          v14 = 136316674;
          v15 = v10;
          v16 = 2080;
          v17 = "VCVideoPlayer_SetReferenceRTPTimestamp";
          v18 = 1024;
          v19 = 1168;
          v20 = 2048;
          v21 = v8;
          v22 = 1024;
          v23 = a2;
          v24 = 2048;
          v25 = v12;
          v26 = 2048;
          v27 = v13;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] referenceRTPTimestamp=%u referencePresentationTime=%f videoFrameTimeInSeconds=%f", &v14, 0x40u);
        }
      }
    }

    pthread_mutex_unlock((v8 + 16));
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t VCVideoPlayer_SetTargetQueueSizeInSeconds(uint64_t a1, double a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147680258;
  }

  v4 = v3;
  if ((*(v3 + 579) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (fabs(a2) <= 2.0)
  {
    pthread_mutex_lock((v3 + 16));
    v8 = *(v4 + 176);
    if (v8 != a2)
    {
      *(v4 + 192) = a2 - v8 + *(v4 + 192);
      *(v4 + 176) = a2;
      *(v4 + 168) = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136316418;
          v12 = v9;
          v13 = 2080;
          v14 = "_VCVideoPlayer_SetTargetQueueSizeInSeconds";
          v15 = 1024;
          v16 = 812;
          v17 = 2048;
          v18 = v4;
          v19 = 2048;
          *&v20 = v4 + 128;
          v21 = 2048;
          v22 = a2;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] playbackClient=%p targetQueueSizeInSeconds=%f", &v11, 0x3Au);
        }
      }
    }

    pthread_mutex_unlock((v4 + 16));
LABEL_15:
    CheckOutHandleDebug();
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v11 = 136316162;
      v12 = v5;
      v13 = 2080;
      v14 = "VCVideoPlayer_SetTargetQueueSizeInSeconds";
      v15 = 1024;
      v16 = 1189;
      v17 = 2048;
      v18 = v4;
      v19 = 2048;
      v20 = a2;
      _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] invalid targetQueueSizeInSeconds:%f!", &v11, 0x30u);
    }
  }

  CheckOutHandleDebug();
  return 14;
}

uint64_t VCVideoPlayer_Create(uint64_t *a1, uint64_t a2)
{
  keys[3] = *MEMORY[0x1E69E9840];
  result = 2147680257;
  if (!a1 || !a2)
  {
    return result;
  }

  v5 = malloc_type_calloc(1uLL, 0x3A0uLL, 0x10A00408E791038uLL);
  if (!v5)
  {
    return 2147680259;
  }

  v6 = v5;
  Typed = VCMemoryPool_CreateTyped(0x30uLL, 0x10A004073E27A8ELL);
  *(v6 + 71) = Typed;
  if (!Typed)
  {
    free(v6);
    return 2147680259;
  }

  Handle = CreateHandle();
  *a1 = Handle;
  if (Handle == 0xFFFFFFFFLL)
  {
    VCMemoryPool_Destroy(*(v6 + 71));
    free(v6);
    return 2147680261;
  }

  pthread_mutex_init((v6 + 840), 0);
  pthread_mutex_init((v6 + 16), 0);
  pthread_cond_init((v6 + 80), 0);
  v6[824] = _os_feature_enabled_impl();
  v9 = *(a2 + 48);
  v10 = *(a2 + 64);
  v11 = *(a2 + 16);
  *(v6 + 38) = *(a2 + 32);
  *(v6 + 36) = *a2;
  *(v6 + 37) = v11;
  *(v6 + 80) = v10;
  *(v6 + 39) = v9;
  if (*(v6 + 76) == 0.0)
  {
    *(v6 + 76) = 0x3F947AE147AE147BLL;
  }

  if (*(v6 + 79) == 0.0)
  {
    *(v6 + 79) = 0x4014000000000000;
  }

  *(v6 + 104) = 0;
  *(v6 + 81) = 0x7FF8000000000000;
  v12 = *MEMORY[0x1E695E4C0];
  if (v6[624])
  {
    v13 = *MEMORY[0x1E695E4C0];
  }

  else
  {
    v13 = *MEMORY[0x1E695E4D0];
  }

  v14 = *MEMORY[0x1E69631F8];
  keys[0] = *MEMORY[0x1E69631F0];
  keys[1] = v14;
  keys[2] = *MEMORY[0x1E69631E8];
  values[0] = @"com.apple.avconference.VCVideoPlayer.alarmproc";
  values[1] = v12;
  values[2] = v13;
  v15 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16 = FigThreadCreate();
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CheckOutHandleDebug();
    VCMemoryPool_Destroy(*(v6 + 71));
    pthread_mutex_destroy((v6 + 840));
    pthread_mutex_destroy((v6 + 16));
    pthread_cond_destroy((v6 + 80));
    free(v6);
    return v16 | 0xA0030000;
  }

  v17 = 0.0166666667;
  if ((*(v6 + 145) & 0xFFFFFFFD) != 0)
  {
    v17 = 0.0;
  }

  *(v6 + 102) = VCDefaults_GetDoubleValueForKey(@"videoPlayerAverageDecodeTime", v17);
  v6[776] = *(a2 + 26);
  if (*(a2 + 3))
  {
    v6[826] = *(a2 + 65);
    if (*a2)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(a2 + 64);
    }
  }

  else
  {
    v18 = 0;
    v6[826] = 0;
  }

  v6[825] = v18 & 1;
  v6[761] = VCDefaults_GetBoolValueForKey(@"videoPlayerProcessDisplayFramesOnlyOnDisplayLinkThread", *(a2 + 66));
  *(v6 + 98) = VCDefaults_GetDoubleValueForKey(@"avSyncAudioEarlyThreshold", -0.0166666667);
  *(v6 + 99) = VCDefaults_GetDoubleValueForKey(@"avSyncAudioLateThreshold", 0.0333333333);
  *(v6 + 100) = VCDefaults_GetDoubleValueForKey(@"avSyncAudioTimestampJumpDetectionThreshold", 0.06);
  *(v6 + 101) = VCDefaults_GetDoubleValueForKey(@"avSyncMaxAudioJitterBufferLevelThreshold", 0.5);
  *(v6 + 27) = xmmword_1DBD47D50;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v20 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v6 + 98);
      v24 = *(v6 + 99);
      v25 = *(v6 + 100);
      v26 = *(v6 + 101);
      v38 = 136317186;
      v39 = v21;
      v40 = 2080;
      v41 = "VCVideoPlayer_Create";
      v42 = 1024;
      v43 = 1298;
      v44 = 2048;
      v45 = v6;
      v46 = 2048;
      *v47 = v23;
      *&v47[8] = 2048;
      *&v47[10] = v24;
      *&v47[18] = 2048;
      *&v47[20] = v25;
      *&v47[28] = 2048;
      *v48 = v26;
      *&v48[8] = 2048;
      v49 = a1;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Defaults: avSyncAudioEarlyThreshold=%f, avSyncAudioLateThreshold=%f avSyncAudioTimestampJumpThreshold=%f avSyncAudioMaxJBThreshold=%f videoPlayerHandlePtr=%p", &v38, 0x58u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    return 0;
  }

  v27 = VRTraceErrorLogLevelToCSTR();
  v28 = *v20;
  result = os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v29 = v6[776];
    v30 = *(v6 + 76);
    v31 = *(v6 + 77);
    v32 = v6[824];
    v33 = *(v6 + 104);
    v34 = v6[578];
    v35 = v6[577];
    v36 = v6[576];
    v37 = v6[579];
    v38 = 136318210;
    v39 = v27;
    v40 = 2080;
    v41 = "VCVideoPlayer_Create";
    v42 = 1024;
    v43 = 1299;
    v44 = 2048;
    v45 = v6;
    v46 = 1024;
    *v47 = v29;
    *&v47[4] = 2048;
    *&v47[6] = v30;
    *&v47[14] = 2048;
    *&v47[16] = v31;
    *&v47[24] = 1024;
    *&v47[26] = v32;
    *v48 = 2048;
    *&v48[2] = v33;
    LOWORD(v49) = 1024;
    *(&v49 + 2) = v34;
    HIWORD(v49) = 1024;
    v50 = v35;
    v51 = 1024;
    v52 = v36;
    v53 = 1024;
    v54 = v37;
    _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d Created VCVideoPlayer[%p] successfully with enableAVLooseSync=%d minPlaybackInterval=%f minRenderingDelay=%f useAudioHostTimeForAVSync=%d outputLatency=%f, enableQueueAlarmForDisplay=%d, enableImmediateDecode=%d, useInternalClockForPresentation=%d, enableJitterBuffer=%d", &v38, 0x68u);
    return 0;
  }

  return result;
}

uint64_t VCVideoPlaybackAlarmThread(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return -2147287038;
  }

  v2 = v1;
  pthread_mutex_lock((v1 + 16));
  convertTimeoutToRelativeTimespec(*(v2 + 632));
  v18.tv_sec = v3;
  v18.tv_nsec = v4;
  if (!*(v2 + 4))
  {
    v6 = MEMORY[0x1E6986640];
    v7 = MEMORY[0x1E6986650];
    do
    {
      v8 = *(v2 + 368);
      if (v8)
      {
        v17 = 0.0;
        if ((_VCVideoPlayer_CheckAndProcessAlarm(v2, (v2 + 128), v8, &v17) & 1) == 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *v7;
            v11 = *v7;
            if (*v6 == 1)
            {
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                *&buf[4] = v9;
                *&buf[12] = 2080;
                *&buf[14] = "VCVideoPlaybackAlarmThread";
                v20 = 1024;
                v21 = 862;
                v22 = 2048;
                v23 = v2;
                v24 = 2048;
                v25 = v17;
                _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Not processing decode alarm, wait until next leeway=%f", buf, 0x30u);
              }
            }

            else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316162;
              *&buf[4] = v9;
              *&buf[12] = 2080;
              *&buf[14] = "VCVideoPlaybackAlarmThread";
              v20 = 1024;
              v21 = 862;
              v22 = 2048;
              v23 = v2;
              v24 = 2048;
              v25 = v17;
              _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Not processing decode alarm, wait until next leeway=%f", buf, 0x30u);
            }
          }

          memset(buf, 170, 16);
          convertTimeoutToRelativeTimespec(v17);
          *buf = v15;
          *&buf[8] = v16;
          *v2 = 1;
          pthread_cond_timedwait_relative_np((v2 + 80), (v2 + 16), buf);
          *v2 = 0;
        }
      }

      else
      {
        *v2 = 1;
        v12 = pthread_cond_timedwait_relative_np((v2 + 80), (v2 + 16), &v18);
        *v2 = 0;
        if (v12 == 60)
        {
          v14 = micro(v12, v13);
          _VCVideoPlayer_CheckForNoVideoDisplayedTimeout(v2, (v2 + 128), v14);
        }
      }
    }

    while (!*(v2 + 4));
  }

  pthread_mutex_unlock((v2 + 16));
  CheckOutHandleDebug();
  return 0;
}

uint64_t VCVideoPlayer_UpdateJitterBufferMode(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147680258;
  }

  v4 = v3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v5;
      v11 = 2080;
      v12 = "VCVideoPlayer_UpdateJitterBufferMode";
      v13 = 1024;
      v14 = 1332;
      v15 = 2048;
      v16 = v4;
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Jitter buffer mode reconfigured to %d", &v9, 0x2Cu);
    }
  }

  *(v4 + 580) = a2;
  *(v4 + 824) = a2 != 3;
  v7 = 0.0166666667;
  if ((a2 & 0xFFFFFFFD) != 0)
  {
    v7 = 0.0;
  }

  *(v4 + 816) = VCDefaults_GetDoubleValueForKey(@"videoPlayerAverageDecodeTime", v7);
  *(v4 + 384) = 0;
  *(v4 + 392) = 0;
  CheckOutHandleDebug();
  return 0;
}

uint64_t VCVideoPlayer_CollectVideoPlayerStatsForReporting(uint64_t a1, uint64_t a2, double a3)
{
  v3 = 2147680257;
  if (a2)
  {
    v6 = CheckInHandleDebug();
    if (v6)
    {
      v7 = v6;
      pthread_mutex_lock((v6 + 16));
      v8 = *(v7 + 464);
      v9 = *(v7 + 448);
      *(a2 + 32) = *(v7 + 432);
      *(a2 + 48) = v9;
      *(a2 + 64) = v8;
      if (*(a2 + 32) == 2147483650.0)
      {
        *(a2 + 32) = 0;
      }

      if (*(a2 + 40) == -2147483650.0)
      {
        *(a2 + 40) = 0;
      }

      v10 = *(v7 + 472);
      v11 = *(v7 + 488);
      *(a2 + 104) = *(v7 + 504);
      *(a2 + 88) = v11;
      *(a2 + 72) = v10;
      v12 = *(v7 + 512);
      v13 = *(v7 + 528);
      *(a2 + 144) = *(v7 + 544);
      *(a2 + 112) = v12;
      *(a2 + 128) = v13;
      v14 = *(v7 + 716) - *(v7 + 732);
      *(a2 + 152) = *(v7 + 708) - *(v7 + 728);
      *(a2 + 156) = v14;
      *a2 = *(v7 + 428);
      *&v13 = *(v7 + 272);
      *(a2 + 16) = *(v7 + 304);
      *(a2 + 24) = v13;
      v15 = *(v7 + 744);
      if (v15 != 0.0)
      {
        v16 = a3 - v15;
        if (v16 >= 2.0)
        {
          *(a2 + 160) = *(v7 + 736);
          *(a2 + 168) = v16;
        }
      }

      pthread_mutex_unlock((v7 + 16));
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147680258;
    }
  }

  return v3;
}

uint64_t VCVideoPlayer_ResetVideoPlayerStatsForReporting(uint64_t a1, double a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147680258;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 16));
  *(v4 + 472) = 0x7FEFFFFFFFFFFFFFLL;
  *(v4 + 480) = 0u;
  *(v4 + 496) = 0u;
  *(v4 + 512) = 0x7FEFFFFFFFFFFFFFLL;
  *(v4 + 520) = 0u;
  *(v4 + 536) = 0u;
  *(v4 + 432) = xmmword_1DBD47D60;
  *(v4 + 448) = 0;
  *(v4 + 456) = 0;
  *(v4 + 464) = 0;
  *(v4 + 728) = *(v4 + 708);
  *(v4 + 732) = *(v4 + 716);
  *(v4 + 744) = a2;
  pthread_mutex_unlock((v4 + 16));
  CheckOutHandleDebug();
  return 0;
}

uint64_t VCVideoPlayer_GetVideoPlayerStatsForJB(uint64_t a1, uint64_t a2)
{
  v2 = 2147680257;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      v5 = v4;
      pthread_mutex_lock((v4 + 16));
      *a2 = *(v5 + 428);
      *(a2 + 4) = 1;
      *(v5 + 724) = *(v5 + 720);
      v6 = *(v5 + 272);
      *(a2 + 16) = *(v5 + 304);
      *(a2 + 24) = v6;
      pthread_mutex_unlock((v5 + 16));
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147680258;
    }
  }

  return v2;
}

double VCVideoPlayer_GetPlaybackTimeOffset(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return -2147287040.0;
  }

  v2 = v1;
  pthread_mutex_lock((v1 + 16));
  v3 = *(v2 + 184);
  pthread_mutex_unlock((v2 + 16));
  CheckOutHandleDebug();
  return v3;
}

uint64_t VCVideoPlayer_SetOutputLatency(uint64_t a1, double a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147680258;
  }

  v4 = v3;
  if (*(v3 + 832) != a2)
  {
    *(v3 + 832) = a2;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136316162;
          v10 = v5;
          v11 = 2080;
          v12 = "VCVideoPlayer_SetOutputLatency";
          v13 = 1024;
          v14 = 1486;
          v15 = 2048;
          v16 = v4;
          v17 = 2048;
          v18 = a2;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Updating outputLatency=%f", &v9, 0x30u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = 136316162;
        v10 = v5;
        v11 = 2080;
        v12 = "VCVideoPlayer_SetOutputLatency";
        v13 = 1024;
        v14 = 1486;
        v15 = 2048;
        v16 = v4;
        v17 = 2048;
        v18 = a2;
        _os_log_debug_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Updating outputLatency=%f", &v9, 0x30u);
      }
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t VCVideoPlayer_Destroy(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = 2147680258;
  if (*a1 != 0xFFFFFFFFLL)
  {
    v3 = CheckInHandleDebug();
    if (v3)
    {
      v4 = v3;
      v5 = pthread_mutex_lock((v3 + 16));
      v7 = micro(v5, v6);
      v8 = *(v4 + 368);
      if (v8)
      {
        do
        {
          v9 = v8[5];
          v10 = *(v8 + 6);
          v11 = *v8;
          v13 = v8[1];
          v12 = v8[2];
          v14 = *(v8 + 30);
          *buf = v7;
          *&buf[8] = v10;
          *v27 = -1431655766;
          *&v27[4] = v11;
          v13(v12, buf, v14, 1);
          VCMemoryPool_Free(*(v4 + 568), v8);
          v8 = v9;
        }

        while (v9);
      }

      *(v4 + 368) = 0;
      v15 = *(v4 + 376);
      if (v15)
      {
        do
        {
          v16 = v15[5];
          v17 = *(v15 + 6);
          v18 = *v15;
          v20 = v15[1];
          v19 = v15[2];
          v21 = *(v15 + 30);
          v22 = *(v15 + 14);
          *buf = v7;
          *&buf[8] = v17;
          *v27 = -1431655766;
          *&v27[4] = v18;
          v20(v19, buf, v21, 1, 0, v22);
          VCMemoryPool_Free(*(v4 + 568), v15);
          v15 = v16;
        }

        while (v16);
      }

      *(v4 + 376) = 0;
      *(v4 + 428) = 0;
      *(v4 + 424) = 0;
      *(v4 + 4) = 1;
      pthread_cond_signal((v4 + 80));
      pthread_mutex_unlock((v4 + 16));
      FigThreadJoin();
      CheckOutHandleDebug();
      VCMemoryPool_Destroy(*(v4 + 568));
      pthread_mutex_destroy((v4 + 840));
      pthread_mutex_destroy((v4 + 16));
      pthread_cond_destroy((v4 + 80));
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v23;
          *v27 = 2080;
          *&v27[2] = "VCVideoPlayer_Destroy";
          *&v27[10] = 1024;
          v28 = 1523;
          v29 = 2048;
          v30 = v4;
          _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d Destroying VCVideoPlayer[%p]", buf, 0x26u);
        }
      }

      free(v4);
      v2 = 0;
      *a1 = 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t VCVideoPlayer_RegisterForNoVideoDisplayedTimeoutCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 2147680257;
  if (a2 && a3)
  {
    v6 = CheckInHandleDebug();
    if (v6)
    {
      v7 = v6;
      v8 = pthread_mutex_lock((v6 + 840));
      *(v7 + 920) = a2;
      *(v7 + 912) = a3;
      *(v7 + 904) = micro(v8, v9);
      pthread_mutex_unlock((v7 + 840));
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147680258;
    }
  }

  return v3;
}

uint64_t VCVideoPlayer_UnregisterForNoVideoDisplayedTimeoutCallbacks(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2147680258;
  }

  v2 = v1;
  pthread_mutex_lock((v1 + 840));
  *(v2 + 904) = 0;
  *(v2 + 920) = 0;
  *(v2 + 912) = 0;
  pthread_mutex_unlock((v2 + 840));
  CheckOutHandleDebug();
  return 0;
}

uint64_t VCVideoPlayer_SetLooseAVSyncEnabled(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147680258;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 16));
  if (*(v4 + 776) != a2)
  {
    *(v4 + 776) = a2;
    *(v4 + 384) = 0;
    *(v4 + 392) = 0;
  }

  pthread_mutex_unlock((v4 + 16));
  CheckOutHandleDebug();
  return 0;
}

uint64_t _VCVideoPlayer_CheckAndProcessAlarm(uint64_t a1, int *a2, uint64_t a3, double *a4)
{
  v232 = *MEMORY[0x1E69E9840];
  v199 = 0.0;
  PresentationTime = 0.0;
  if (*(a1 + 826) == 1 && (a2[108] & 1) == 0)
  {
    v71 = *(a2 + 424) == 1 && (*(a3 + 24) - a2[107]) < 0x7FFFFFFF;
    *(a2 + 432) = v71;
    _VCVideoPlayer_CalculateRealtimeParametersUsingDisplayLink(a1, a2, a3, &PresentationTime, &v199, a4);
    if (a2[108])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v115 = VRTraceErrorLogLevelToCSTR();
        v116 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v117 = *(a2 + 424);
          v118 = *(a3 + 32);
          v119 = *(a3 + 24);
          v120 = a2[107];
          v121 = *(a2 + 433);
          *buf = 136317186;
          *&buf[4] = v115;
          *v202 = 2080;
          *&v202[2] = "_VCVideoPlayer_ShouldProcessAlarmAtInitialJBQueueRamp";
          *&v202[10] = 1024;
          v203 = 526;
          v204 = 2048;
          v205 = a1;
          v206 = 1024;
          *v207 = v117;
          *&v207[4] = 1024;
          *&v207[6] = v118;
          *&v207[10] = 1024;
          *&v207[12] = v119;
          *&v207[16] = 1024;
          *&v207[18] = v120;
          *&v207[22] = 1024;
          *&v207[24] = v121;
          _os_log_impl(&dword_1DB56E000, v116, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Reached expected JB target level. jitterBufferIsRunning=%d alarmType=%d alarmRtpTimestamp=%u jitterBufferRunStateRTPTimestamp=%u ntpClockSyncAcquiredForExternalSourceSync=%d", buf, 0x44u);
        }
      }

      goto LABEL_19;
    }

    if (*(a3 + 32))
    {
      goto LABEL_104;
    }

LABEL_19:
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (ErrorLogLevelForModule > 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      v23 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        ErrorLogLevelForModule = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (ErrorLogLevelForModule)
        {
          v24 = *(a3 + 32);
          v25 = *(a3 + 24);
          v26 = *(a2 + 150);
          *buf = 136317186;
          *&buf[4] = v21;
          *v202 = 2080;
          *&v202[2] = "_VCVideoPlayer_CheckAndProcessAlarm";
          *&v202[10] = 1024;
          v203 = 787;
          v204 = 2048;
          v205 = a1;
          v206 = 1024;
          *v207 = v24;
          *&v207[4] = 2048;
          *&v207[6] = PresentationTime;
          *&v207[14] = 2048;
          *&v207[16] = v199;
          *&v207[24] = 1024;
          *&v207[26] = v25;
          *&v207[30] = 1024;
          *&v207[32] = v26;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Processing alarmType=%d, presentationTime=%f displayTime=%f rtpTimeStamp=%u alarmsSentForDecodeButNotDisplayedCount=%d", buf, 0x4Cu);
        }
      }

      else
      {
        ErrorLogLevelForModule = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
        if (ErrorLogLevelForModule)
        {
          v128 = *(a3 + 32);
          v129 = *(a3 + 24);
          v130 = *(a2 + 150);
          *buf = 136317186;
          *&buf[4] = v21;
          *v202 = 2080;
          *&v202[2] = "_VCVideoPlayer_CheckAndProcessAlarm";
          *&v202[10] = 1024;
          v203 = 787;
          v204 = 2048;
          v205 = a1;
          v206 = 1024;
          *v207 = v128;
          *&v207[4] = 2048;
          *&v207[6] = PresentationTime;
          *&v207[14] = 2048;
          *&v207[16] = v199;
          *&v207[24] = 1024;
          *&v207[26] = v129;
          *&v207[30] = 1024;
          *&v207[32] = v130;
          _os_log_debug_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] Processing alarmType=%d, presentationTime=%f displayTime=%f rtpTimeStamp=%u alarmsSentForDecodeButNotDisplayedCount=%d", buf, 0x4Cu);
        }
      }
    }

    if (*(a3 + 32))
    {
      v27 = *(a3 + 40);
      v30 = 0;
      if (v27)
      {
        v28 = v199;
        v29 = *(a1 + 816) + *(a2 + 6) + *(a2 + 32);
        *(a2 + 7) = v29;
        v19.n128_f64[0] = v28;
        if (_VCVideoPlayer_GetPresentationTime(a1, a2, v27, v19, v29, v20) <= v28)
        {
          v30 = 1;
        }
      }

      v44 = *(a1 + 578);
      if (v44)
      {
        v45 = PresentationTime;
        *(a2 + 20) = PresentationTime;
        v46 = *(a3 + 24);
        if (*(a2 + 104) == 1 && v46 == a2[30])
        {
          *(a2 + 52) = 0;
          *(a2 + 16) = 0;
          *(a2 + 14) = 0;
          *(a2 + 136) = 0;
        }

        *(a2 + 22) = *a3;
        a2[42] = v46;
        if (!v30)
        {
          *(a2 + 46) = *(a2 + 10);
          *(a2 + 25) = *(a2 + 22);
          ++*(a1 + 736);
          if (*(a1 + 744) == 0.0)
          {
            *(a1 + 744) = *(a2 + 19);
          }
        }

        v47 = *(a3 + 28);
        *(a2 + 149) = v47;
        if (*(a3 + 30) != 1 || *(a2 + 302) == 1)
        {
          v48 = *(a2 + 148);
          v35 = v48 >= v47;
          v49 = v48 - v47;
          if (v49 != 0 && v35)
          {
            *(a2 + 150) = v49;
            *(a2 + 302) = 1;
          }
        }

        v50 = micro(ErrorLogLevelForModule, v18);
        if (*(a1 + 776) == 1 && (*(a1 + 825) != 1 || *(a2 + 433) == 1))
        {
          v51 = *(a2 + 19);
          v52 = *(a2 + 34);
          v53 = *(a2 + 22);
          v196 = *(a2 + 6);
          v54 = *(a1 + 580);
          v55 = *a3;
          DisplayTimestamp = _VCVideoPlayer_GetDisplayTimestamp(a1);
          v197 = *(a1 + 825) == 1 && *a3 == 0.0;
          v65 = v50 - v51;
          v66 = *(a2 + 35);
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v67 = VRTraceErrorLogLevelToCSTR();
            v68 = *MEMORY[0x1E6986650];
            v69 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                v70 = *(a1 + 825);
                *buf = 136316418;
                *&buf[4] = v67;
                *v202 = 2080;
                *&v202[2] = "_VCVideoPlayer_IsExternalClockSourceWithNTPSyncNotAcquired";
                *&v202[10] = 1024;
                v203 = 293;
                v204 = 2048;
                v205 = a1;
                v206 = 1024;
                *v207 = v197;
                *&v207[4] = 1024;
                *&v207[6] = v70;
                _os_log_impl(&dword_1DB56E000, v68, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] ntpClockSyncNotAcquired=%d useExternalClockSyncSourceForJitterBuffer=%d", buf, 0x32u);
              }
            }

            else if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              v181 = *(a1 + 825);
              *buf = 136316418;
              *&buf[4] = v67;
              *v202 = 2080;
              *&v202[2] = "_VCVideoPlayer_IsExternalClockSourceWithNTPSyncNotAcquired";
              *&v202[10] = 1024;
              v203 = 293;
              v204 = 2048;
              v205 = a1;
              v206 = 1024;
              *v207 = v197;
              *&v207[4] = 1024;
              *&v207[6] = v181;
              _os_log_debug_impl(&dword_1DB56E000, v68, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] ntpClockSyncNotAcquired=%d useExternalClockSyncSourceForJitterBuffer=%d", buf, 0x32u);
            }
          }

          v72 = v52 + v65;
          v74 = *(a2 + 35);
          v73 = *(a2 + 36);
          v75 = *(a2 + 34);
          v76 = *(a2 + 19);
          v77 = v73 != 0.0 && vabdd_f64(v75 + v50 - v76, v50 - v73 + v74) >= *(a1 + 800);
          v78 = v72 - v53;
          v79 = *(a1 + 808);
          *(a2 + 35) = v75;
          *(a2 + 36) = v76;
          v195 = v78;
          if (*a2 && (!v30 & (*(a3 + 30) ^ 1)) == 1 && v75 != 0.0 && !((*(a2 + 136) | v77) & 1 | (v74 == v75) | (v79 <= v196 || v66 == 0.0) | (v54 == 3 || v197)))
          {
            v112 = v78 * 0.2 + *(a2 + 33) * 0.8;
            *(a2 + 33) = v112;
            v113 = *(a1 + 784);
            if (v113 <= v112)
            {
              v131 = *(a1 + 792);
              if (v131 >= v112)
              {
                v114 = 0;
              }

              else
              {
                v114 = vcvtpd_s64_f64((v131 - v112) * 60.0);
              }
            }

            else
            {
              v114 = vcvtmd_s64_f64((v113 - v112) * 60.0);
            }

            v80 = v114 / 60.0;
            if (v80 != 0.0)
            {
              *(a2 + 8) = v80 + *(a2 + 8);
              *(a2 + 33) = v112 + v80;
              *(a2 + 40) = 1;
              ++a2[84];
              *(a2 + 40) = *(a2 + 40) + ((fabs(v80) + 0.0005) * 1000.0);
            }

            *(a2 + 32) = v80;
            v132 = v80 * 1000.0;
            v133 = *(a2 + 38);
            if (v133 >= v80 * 1000.0)
            {
              v133 = v80 * 1000.0;
            }

            if (*(a2 + 39) > v132)
            {
              v132 = *(a2 + 39);
            }

            *(a2 + 38) = v133;
            *(a2 + 39) = v132;
          }

          else
          {
            v80 = 0.0;
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v52 = v55 - v52;
              v81 = VRTraceErrorLogLevelToCSTR();
              v82 = *MEMORY[0x1E6986650];
              v83 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                {
                  v84 = *(a3 + 32);
                  v85 = *(a3 + 24);
                  v86 = *a2;
                  v87 = *(a2 + 136);
                  v88 = *(a2 + 72);
                  v89 = *(a2 + 104);
                  v90 = *(a2 + 40);
                  v91 = a2[53];
                  v92 = a2[56];
                  v93 = *a3;
                  v94 = *(a2 + 20);
                  v95 = *(a2 + 34);
                  v96 = *(a2 + 27);
                  v97 = *(a2 + 32);
                  *buf = 136322050;
                  *&buf[4] = v81;
                  *v202 = 2080;
                  *&v202[2] = "_VCVideoPlayer_ShouldProcessAVSyncOffset";
                  *&v202[10] = 1024;
                  v203 = 409;
                  v204 = 2048;
                  v205 = a1;
                  v206 = 2048;
                  *v207 = a2;
                  *&v207[8] = 1024;
                  *&v207[10] = v84;
                  *&v207[14] = 1024;
                  *&v207[16] = v85;
                  *&v207[20] = 1024;
                  *&v207[22] = v86;
                  *&v207[26] = 1024;
                  *&v207[28] = v87;
                  *&v207[32] = 1024;
                  *&v207[34] = v88;
                  *&v207[38] = 1024;
                  *&v207[40] = v89;
                  v208 = 1024;
                  *v209 = v90;
                  *&v209[4] = 1024;
                  *&v209[6] = v77;
                  LOWORD(v210) = 1024;
                  *(&v210 + 2) = v74 == v75;
                  HIWORD(v210) = 1024;
                  *v211 = v197;
                  *&v211[4] = 1024;
                  *v212 = v79 <= v196;
                  *&v212[4] = 1024;
                  *v213 = v85;
                  *&v213[4] = 1024;
                  *v214 = v91;
                  *&v214[4] = 1024;
                  *&v214[6] = v92;
                  v215 = 2048;
                  v216 = v93;
                  v217 = 2048;
                  v218 = v94;
                  v219 = 2048;
                  v220 = v95;
                  v221 = 2048;
                  v222 = DisplayTimestamp;
                  v223 = 2048;
                  v224 = v96;
                  v225 = 2048;
                  v226 = v52;
                  v227 = 2048;
                  *v228 = v196;
                  *&v228[8] = 2048;
                  v229 = v97;
                  v230 = 1024;
                  v231 = v54 == 3;
                  _os_log_impl(&dword_1DB56E000, v82, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VideoPlayer[%p] playbackClient[%p] Skipping avsync offset calculation. alarmType=%d rtpTimestamp=%u firstFramePresented=%d preventBackwardPresentationTime=%d shouldResetReferenceRTPTimestamp=%d shouldUseAdjustedReference=%d shouldResetPlaybackOffset=%d, isAudioTimestampJumpDetected=%d isAudioStalled=%d isVideoJBEnabledWithExternalSourceSyncNotReady=%d isDelayOffsetLagerThanAVSyncMaxJBThreshold=%d | videoFrameRTPTimestamp=%u playoutRTPTimestamp=%u timestampWraps=%u |videoFrameTimeInSeconds=%f lastFrame.presentationTime=%f ExternalSrcPlayoutTimeInSeconds=%f displayLinkTimestamp=%f lastPlayoutRTPTimestampInSeconds=%f | videoAlarmToAudioLeeway=%f | delayOffsetInSeconds=%f avSyncOffset=%f skipAVSyncDueToFixedMode=%d", buf, 0xDAu);
                }
              }

              else if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
              {
                v98 = *(a3 + 32);
                v99 = *(a3 + 24);
                v100 = *a2;
                v101 = *(a2 + 136);
                v102 = *(a2 + 72);
                v103 = *(a2 + 104);
                v104 = *(a2 + 40);
                v105 = a2[53];
                v106 = a2[56];
                v107 = *a3;
                v108 = *(a2 + 20);
                v109 = *(a2 + 34);
                v110 = *(a2 + 27);
                v111 = *(a2 + 32);
                *buf = 136322050;
                *&buf[4] = v81;
                *v202 = 2080;
                *&v202[2] = "_VCVideoPlayer_ShouldProcessAVSyncOffset";
                *&v202[10] = 1024;
                v203 = 409;
                v204 = 2048;
                v205 = a1;
                v206 = 2048;
                *v207 = a2;
                *&v207[8] = 1024;
                *&v207[10] = v98;
                *&v207[14] = 1024;
                *&v207[16] = v99;
                *&v207[20] = 1024;
                *&v207[22] = v100;
                *&v207[26] = 1024;
                *&v207[28] = v101;
                *&v207[32] = 1024;
                *&v207[34] = v102;
                *&v207[38] = 1024;
                *&v207[40] = v103;
                v208 = 1024;
                *v209 = v104;
                *&v209[4] = 1024;
                *&v209[6] = v77;
                LOWORD(v210) = 1024;
                *(&v210 + 2) = v74 == v75;
                HIWORD(v210) = 1024;
                *v211 = v197;
                *&v211[4] = 1024;
                *v212 = v79 <= v196;
                *&v212[4] = 1024;
                *v213 = v99;
                *&v213[4] = 1024;
                *v214 = v105;
                *&v214[4] = 1024;
                *&v214[6] = v106;
                v215 = 2048;
                v216 = v107;
                v217 = 2048;
                v218 = v108;
                v219 = 2048;
                v220 = v109;
                v221 = 2048;
                v222 = DisplayTimestamp;
                v223 = 2048;
                v224 = v110;
                v225 = 2048;
                v226 = v52;
                v227 = 2048;
                *v228 = v196;
                *&v228[8] = 2048;
                v229 = v111;
                v230 = 1024;
                v231 = v54 == 3;
                _os_log_debug_impl(&dword_1DB56E000, v82, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VideoPlayer[%p] playbackClient[%p] Skipping avsync offset calculation. alarmType=%d rtpTimestamp=%u firstFramePresented=%d preventBackwardPresentationTime=%d shouldResetReferenceRTPTimestamp=%d shouldUseAdjustedReference=%d shouldResetPlaybackOffset=%d, isAudioTimestampJumpDetected=%d isAudioStalled=%d isVideoJBEnabledWithExternalSourceSyncNotReady=%d isDelayOffsetLagerThanAVSyncMaxJBThreshold=%d | videoFrameRTPTimestamp=%u playoutRTPTimestamp=%u timestampWraps=%u |videoFrameTimeInSeconds=%f lastFrame.presentationTime=%f ExternalSrcPlayoutTimeInSeconds=%f displayLinkTimestamp=%f lastPlayoutRTPTimestampInSeconds=%f | videoAlarmToAudioLeeway=%f | delayOffsetInSeconds=%f avSyncOffset=%f skipAVSyncDueToFixedMode=%d", buf, 0xDAu);
              }
            }
          }

          v134 = *(a2 + 34) + v50 - *(a2 + 19);
          v135 = *(a2 + 22);
          v136 = v134 - (v135 - v80);
          v137 = v136 <= 0.0343333333 && v136 >= -0.0176666667;
          LODWORD(v52) = *(a1 + 584);
          v138 = a2[42];
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v198 = (v134 * *&v52) - v138;
            v139 = VRTraceErrorLogLevelToCSTR();
            v140 = *MEMORY[0x1E6986650];
            v141 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
              {
                v142 = *(a3 + 28);
                v143 = v50 - *(a2 + 19);
                v144 = *(a2 + 7);
                v145 = a2[42];
                v146 = *(a2 + 22);
                v148 = *(a2 + 33);
                v147 = *(a2 + 34);
                *buf = 136320770;
                *&buf[4] = v139;
                *v202 = 2080;
                *&v202[2] = "_VCVideoPlayer_DumpAVSyncState";
                *&v202[10] = 1024;
                v203 = 427;
                v204 = 2048;
                v205 = a1;
                v206 = 2048;
                *v207 = a2;
                *&v207[8] = 2048;
                *&v207[10] = a3;
                *&v207[18] = 1024;
                *&v207[20] = v142;
                *&v207[24] = 2048;
                *&v207[26] = v147;
                *&v207[34] = 2048;
                *&v207[36] = v50;
                v208 = 2048;
                *v209 = v143;
                *&v209[8] = 2048;
                v210 = v144;
                *v211 = 1024;
                *&v211[2] = v145;
                *v212 = 1024;
                *&v212[2] = (v134 * *&v52);
                *v213 = 1024;
                *&v213[2] = v198;
                *v214 = 2048;
                *&v214[2] = v146;
                v215 = 2048;
                v216 = v134;
                v217 = 2048;
                v218 = v195;
                v219 = 2048;
                v220 = v148;
                v221 = 2048;
                v222 = 0.0;
                v223 = 2048;
                v224 = v80;
                v225 = 2048;
                v226 = v134 - (v135 - v80);
                v227 = 1024;
                *v228 = v137;
                *&v228[4] = 1024;
                *&v228[6] = v135 > v134;
                _os_log_impl(&dword_1DB56E000, v140, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d videoPlayer[%p] playbackClient[%p] displayAlarm[%p] frameSequenceNumber=%u ExternalSrcPlayoutTimeInSeconds=%f currentTime=%f HostTimeOffset=%f playbackOffsetInSeconds=%f | Math: lastFrame.rtpTimestamp=%u externalSourcePlayoutTimestamp=%u avSyncDeltaInSamples=%d, videoTimeInSeconds=%f, audioTimeInSeconds=%f playoutOffset=%f avPlayoutOffsetAverage=%f avSyncOffset=%f avSyncOffsetQuantized=%f | Validation: avSyncOffsetValidation=%f isNewPresentationTimeInLineWithAVSyncOffset=%d | isVideoEarly=%d", buf, 0xCCu);
              }
            }

            else if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
            {
              v182 = *(a3 + 28);
              v183 = v50 - *(a2 + 19);
              v184 = *(a2 + 7);
              v185 = a2[42];
              v186 = *(a2 + 22);
              v188 = *(a2 + 33);
              v187 = *(a2 + 34);
              *buf = 136320770;
              *&buf[4] = v139;
              *v202 = 2080;
              *&v202[2] = "_VCVideoPlayer_DumpAVSyncState";
              *&v202[10] = 1024;
              v203 = 427;
              v204 = 2048;
              v205 = a1;
              v206 = 2048;
              *v207 = a2;
              *&v207[8] = 2048;
              *&v207[10] = a3;
              *&v207[18] = 1024;
              *&v207[20] = v182;
              *&v207[24] = 2048;
              *&v207[26] = v187;
              *&v207[34] = 2048;
              *&v207[36] = v50;
              v208 = 2048;
              *v209 = v183;
              *&v209[8] = 2048;
              v210 = v184;
              *v211 = 1024;
              *&v211[2] = v185;
              *v212 = 1024;
              *&v212[2] = (v134 * *&v52);
              *v213 = 1024;
              *&v213[2] = v198;
              *v214 = 2048;
              *&v214[2] = v186;
              v215 = 2048;
              v216 = v134;
              v217 = 2048;
              v218 = v195;
              v219 = 2048;
              v220 = v188;
              v221 = 2048;
              v222 = 0.0;
              v223 = 2048;
              v224 = v80;
              v225 = 2048;
              v226 = v134 - (v135 - v80);
              v227 = 1024;
              *v228 = v137;
              *&v228[4] = 1024;
              *&v228[6] = v135 > v134;
              _os_log_debug_impl(&dword_1DB56E000, v140, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d videoPlayer[%p] playbackClient[%p] displayAlarm[%p] frameSequenceNumber=%u ExternalSrcPlayoutTimeInSeconds=%f currentTime=%f HostTimeOffset=%f playbackOffsetInSeconds=%f | Math: lastFrame.rtpTimestamp=%u externalSourcePlayoutTimestamp=%u avSyncDeltaInSamples=%d, videoTimeInSeconds=%f, audioTimeInSeconds=%f playoutOffset=%f avPlayoutOffsetAverage=%f avSyncOffset=%f avSyncOffsetQuantized=%f | Validation: avSyncOffsetValidation=%f isNewPresentationTimeInLineWithAVSyncOffset=%d | isVideoEarly=%d", buf, 0xCCu);
            }
          }
        }

        _VideoPlayer_UpdateReportedAVSyncOffset(a1, a2, v50);
        if (*(a2 + 150) >= *(a1 + 600) && VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v149 = VRTraceErrorLogLevelToCSTR();
          v150 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v165 = *(a2 + 150);
            v166 = *(a1 + 600);
            v167 = *(a3 + 24);
            v168 = *(a2 + 148);
            v169 = *(a2 + 149);
            *buf = 136317186;
            *&buf[4] = v149;
            *v202 = 2080;
            *&v202[2] = "_VCVideoPlayer_ProcessAlarmForDisplay";
            *&v202[10] = 1024;
            v203 = 722;
            v204 = 2048;
            v205 = a1;
            v206 = 1024;
            *v207 = v165;
            *&v207[4] = 1024;
            *&v207[6] = v166;
            *&v207[10] = 1024;
            *&v207[12] = v167;
            *&v207[16] = 1024;
            *&v207[18] = v168;
            *&v207[22] = 1024;
            *&v207[24] = v169;
            _os_log_error_impl(&dword_1DB56E000, v150, OS_LOG_TYPE_ERROR, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] alarmsSentForDecodeButNotDisplayedCount=%u is excessively high, at or above the threshold of %u. rtpTimestamp=%u lastFrameSequenceNumberSentForDecode=%u lastFrameSequenceNumberSentForDisplay=%u", buf, 0x44u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v151 = VRTraceErrorLogLevelToCSTR();
          v152 = *MEMORY[0x1E6986650];
          v153 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v154 = *(a3 + 24);
              v155 = *(a2 + 150);
              v156 = *(a2 + 148);
              v157 = *(a2 + 149);
              *buf = 136316930;
              *&buf[4] = v151;
              *v202 = 2080;
              *&v202[2] = "_VCVideoPlayer_ProcessAlarmForDisplay";
              *&v202[10] = 1024;
              v203 = 724;
              v204 = 2048;
              v205 = a1;
              v206 = 1024;
              *v207 = v154;
              *&v207[4] = 1024;
              *&v207[6] = v155;
              *&v207[10] = 1024;
              *&v207[12] = v156;
              *&v207[16] = 1024;
              *&v207[18] = v157;
              _os_log_impl(&dword_1DB56E000, v152, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] rtpTimestamp=%u alarmsSentForDecodeButNotDisplayedCount=%u lastFrameSequenceNumberSentForDecode=%u lastFrameSequenceNumberSentForDisplay=%u", buf, 0x3Eu);
            }
          }

          else if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
          {
            v170 = *(a3 + 24);
            v171 = *(a2 + 150);
            v172 = *(a2 + 148);
            v173 = *(a2 + 149);
            *buf = 136316930;
            *&buf[4] = v151;
            *v202 = 2080;
            *&v202[2] = "_VCVideoPlayer_ProcessAlarmForDisplay";
            *&v202[10] = 1024;
            v203 = 724;
            v204 = 2048;
            v205 = a1;
            v206 = 1024;
            *v207 = v170;
            *&v207[4] = 1024;
            *&v207[6] = v171;
            *&v207[10] = 1024;
            *&v207[12] = v172;
            *&v207[16] = 1024;
            *&v207[18] = v173;
            _os_log_debug_impl(&dword_1DB56E000, v152, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] rtpTimestamp=%u alarmsSentForDecodeButNotDisplayedCount=%u lastFrameSequenceNumberSentForDecode=%u lastFrameSequenceNumberSentForDisplay=%u", buf, 0x3Eu);
          }
        }

        *(a2 + 31) = *(a3 + 40);
        v158 = *(a3 + 24);
        v159 = *a3;
        pthread_mutex_unlock((a1 + 16));
        v161 = *(a3 + 8);
        v160 = *(a3 + 16);
        v162 = *(a3 + 30);
        v163 = *(a3 + 28);
        *buf = v45;
        *&buf[8] = v158;
        *v202 = -1431655766;
        *&v202[4] = v159;
        v161(v160, buf, v162, 0, !v30, v163);
        pthread_mutex_lock((a1 + 16));
        VCMemoryPool_Free(*(a1 + 568), a3);
        ++*(a1 + 716);
        *a2 = 1;
        a2[9] = 0;
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v56 = VRTraceErrorLogLevelToCSTR();
        v57 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCVideoPlayer_CheckAndProcessAlarm_cold_1(v56, a1, v57);
        }
      }

      if (v30)
      {
        ++*(a1 + 720);
      }
    }

    else
    {
      v31 = PresentationTime;
      if ((*(a1 + 578) & 1) == 0)
      {
        *(a2 + 20) = PresentationTime;
        *(a2 + 22) = *a3;
        a2[42] = *(a3 + 24);
        *(a2 + 46) = *(a2 + 10);
        *(a2 + 25) = *(a2 + 22);
        if (*(a2 + 104) == 1 && *(a3 + 24) == a2[30])
        {
          *(a2 + 52) = 0;
          *(a2 + 16) = 0;
          *(a2 + 14) = 0;
          *(a2 + 136) = 0;
        }

        v32 = micro(ErrorLogLevelForModule, v18);
        _VideoPlayer_UpdateReportedAVSyncOffset(a1, a2, v32);
        ++*(a1 + 736);
        if (*(a1 + 744) == 0.0)
        {
          *(a1 + 744) = *(a2 + 19);
        }
      }

      v33 = *(a3 + 28);
      *(a2 + 148) = v33;
      if (*(a2 + 302) != 1 || (v34 = *(a2 + 149), v35 = v33 >= v34, v36 = v33 - v34, v36 == 0 || !v35))
      {
        LOWORD(v36) = 0;
        *(a2 + 302) = 0;
      }

      *(a2 + 150) = v36;
      if (*a2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v37 = VRTraceErrorLogLevelToCSTR();
          v38 = *MEMORY[0x1E6986650];
          v39 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v40 = *(a3 + 24);
              v41 = *(a2 + 150);
              v42 = *(a2 + 148);
              v43 = *(a2 + 149);
              *buf = 136316930;
              *&buf[4] = v37;
              *v202 = 2080;
              *&v202[2] = "_VCVideoPlayer_ProcessAlarmForDecode";
              *&v202[10] = 1024;
              v203 = 613;
              v204 = 2048;
              v205 = a1;
              v206 = 1024;
              *v207 = v40;
              *&v207[4] = 1024;
              *&v207[6] = v41;
              *&v207[10] = 1024;
              *&v207[12] = v42;
              *&v207[16] = 1024;
              *&v207[18] = v43;
              _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] rtpTimestamp=%u alarmsSentForDecodeButNotDisplayedCount=%u lastFrameSequenceNumberSentForDecode=%u lastFrameSequenceNumberSentForDisplay=%u", buf, 0x3Eu);
            }
          }

          else if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v174 = *(a3 + 24);
            v175 = *(a2 + 150);
            v176 = *(a2 + 148);
            v177 = *(a2 + 149);
            *buf = 136316930;
            *&buf[4] = v37;
            *v202 = 2080;
            *&v202[2] = "_VCVideoPlayer_ProcessAlarmForDecode";
            *&v202[10] = 1024;
            v203 = 613;
            v204 = 2048;
            v205 = a1;
            v206 = 1024;
            *v207 = v174;
            *&v207[4] = 1024;
            *&v207[6] = v175;
            *&v207[10] = 1024;
            *&v207[12] = v176;
            *&v207[16] = 1024;
            *&v207[18] = v177;
            _os_log_debug_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] rtpTimestamp=%u alarmsSentForDecodeButNotDisplayedCount=%u lastFrameSequenceNumberSentForDecode=%u lastFrameSequenceNumberSentForDisplay=%u", buf, 0x3Eu);
          }
        }

        if (*(a2 + 150) >= *(a1 + 600) && *(a2 + 302) == 1 && *(a1 + 578) == 1 && VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v58 = VRTraceErrorLogLevelToCSTR();
          v59 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v189 = *(a2 + 150);
            v190 = *(a1 + 600);
            v191 = *(a3 + 24);
            v192 = *(a2 + 148);
            v193 = *(a2 + 149);
            *buf = 136317186;
            *&buf[4] = v58;
            *v202 = 2080;
            *&v202[2] = "_VCVideoPlayer_ProcessAlarmForDecode";
            *&v202[10] = 1024;
            v203 = 615;
            v204 = 2048;
            v205 = a1;
            v206 = 1024;
            *v207 = v189;
            *&v207[4] = 1024;
            *&v207[6] = v190;
            *&v207[10] = 1024;
            *&v207[12] = v191;
            *&v207[16] = 1024;
            *&v207[18] = v192;
            *&v207[22] = 1024;
            *&v207[24] = v193;
            _os_log_error_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_ERROR, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] alarmsSentForDecodeButNotDisplayedCount=%u is excessively high, at or above the threshold of %u. rtpTimestamp=%u lastFrameSequenceNumberSentForDecode=%u lastFrameSequenceNumberSentForDisplay=%u", buf, 0x44u);
          }
        }
      }

      *(a2 + 30) = *(a3 + 40);
      v60 = *(a3 + 24);
      v61 = *a3;
      pthread_mutex_unlock((a1 + 16));
      v63 = *(a3 + 8);
      v62 = *(a3 + 16);
      v64 = *(a3 + 30);
      *buf = v31;
      *&buf[8] = v60;
      *v202 = -1431655766;
      *&v202[4] = v61;
      v63(v62, buf, v64, 0);
      pthread_mutex_lock((a1 + 16));
      VCMemoryPool_Free(*(a1 + 568), a3);
      ++*(a1 + 708);
      v44 = 1;
      if ((*(a1 + 578) & 1) == 0)
      {
        *a2 = 1;
        a2[9] = 0;
      }
    }

    goto LABEL_143;
  }

  if (*(a1 + 576) == 1)
  {
    if (*(a1 + 577) != 1)
    {
      if (*(a1 + 578) != 1)
      {
        v8 = *(a1 + 816) + *(a2 + 6) + *(a2 + 32);
        *(a2 + 7) = v8;
        v9.n128_f64[0] = micro(a1, a2);
        v10 = v9.n128_f64[0];
        PresentationTime = _VCVideoPlayer_GetPresentationTime(a1, a2, a3, v9, v8, v11);
        v12 = PresentationTime - v10;
        *a4 = PresentationTime - v10;
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (*(a1 + 825) == 1)
  {
    if (_VCVideoPlayer_IsExternalClockSourceWithNTPSyncAcquired(a1, a3))
    {
LABEL_9:
      if (!_VCVideoPlayer_ShouldProcessAlarmForDisplayLinkWithDisplayAlarms(a1, a2, a3, &PresentationTime, &v199, a4))
      {
        goto LABEL_104;
      }

      goto LABEL_19;
    }

LABEL_11:
    _VCVideoPlayer_ShouldProcessAlarmForDisplayLinkImmediateDecode(a1, a2, a3, &PresentationTime, &v199, a4);
    goto LABEL_19;
  }

  v13 = micro(a1, a2);
  v14 = *a3;
  v15 = *(a2 + 19);
  v16 = v13;
  if (*(a1 + 824) == 1)
  {
    v16 = v15 + v14 - *(a2 + 34);
  }

  PresentationTime = v16;
  v12 = v14 - *(a2 + 18) + v15 - v13;
  *a4 = v12;
  if ((a2[8] & 1) == 0)
  {
    *(a2 + 1) = v16;
    a2[4] = *(a3 + 24);
    *(a2 + 3) = *a3;
    *(a2 + 32) = 1;
    v12 = *a4;
  }

LABEL_16:
  if (v12 <= 0.001 || !*a2 || a2[9])
  {
    goto LABEL_19;
  }

LABEL_104:
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v122 = VRTraceErrorLogLevelToCSTR();
    v123 = *MEMORY[0x1E6986650];
    v124 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        v125 = *(a3 + 32);
        v126 = *(a3 + 24);
        v127 = *(a2 + 150);
        *buf = 136317186;
        *&buf[4] = v122;
        *v202 = 2080;
        *&v202[2] = "_VCVideoPlayer_CheckAndProcessAlarm";
        *&v202[10] = 1024;
        v203 = 800;
        v204 = 2048;
        v205 = a1;
        v206 = 1024;
        *v207 = v125;
        *&v207[4] = 2048;
        *&v207[6] = PresentationTime;
        *&v207[14] = 2048;
        *&v207[16] = v199;
        *&v207[24] = 1024;
        *&v207[26] = v126;
        *&v207[30] = 1024;
        *&v207[32] = v127;
        _os_log_impl(&dword_1DB56E000, v123, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] NOT Processing alarmType=%d, presentationTime=%f displayTime=%f rtpTimeStamp=%u alarmsSentForDecodeButNotDisplayedCount=%d", buf, 0x4Cu);
      }
    }

    else if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
    {
      v178 = *(a3 + 32);
      v179 = *(a3 + 24);
      v180 = *(a2 + 150);
      *buf = 136317186;
      *&buf[4] = v122;
      *v202 = 2080;
      *&v202[2] = "_VCVideoPlayer_CheckAndProcessAlarm";
      *&v202[10] = 1024;
      v203 = 800;
      v204 = 2048;
      v205 = a1;
      v206 = 1024;
      *v207 = v178;
      *&v207[4] = 2048;
      *&v207[6] = PresentationTime;
      *&v207[14] = 2048;
      *&v207[16] = v199;
      *&v207[24] = 1024;
      *&v207[26] = v179;
      *&v207[30] = 1024;
      *&v207[32] = v180;
      _os_log_debug_impl(&dword_1DB56E000, v123, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] NOT Processing alarmType=%d, presentationTime=%f displayTime=%f rtpTimeStamp=%u alarmsSentForDecodeButNotDisplayedCount=%d", buf, 0x4Cu);
    }
  }

  v44 = 0;
LABEL_143:
  _VCVideoPlayer_CheckForNoVideoDisplayedTimeout(a1, a2, PresentationTime);
  return v44;
}

uint64_t _VCVideoPlayer_CheckForNoVideoDisplayedTimeout(uint64_t a1, _DWORD *a2, double a3)
{
  pthread_mutex_lock((a1 + 840));
  v6 = *(a1 + 632);
  if (a3 - *(a1 + 904) >= v6 && *(a1 + 920))
  {
    v7 = 46;
    if (!*a2)
    {
      v7 = 2;
    }

    v8 = a3 - *&a2[v7];
    if (v8 > v6)
    {
      *(a1 + 904) = a3;
      pthread_mutex_unlock((a1 + 16));
      (*(a1 + 920))(*(a1 + 912), v8);
      pthread_mutex_lock((a1 + 16));
    }
  }

  return pthread_mutex_unlock((a1 + 840));
}

void _VCVideoPlayer_ShouldProcessAlarmForDisplayLinkImmediateDecode(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5, double *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  _VCVideoPlayer_CalculateRealtimeParametersUsingDisplayLink(a1, a2, a3, a4, a5, a6);
  if (*a6 > 0.001 && VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v10 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *a6;
        v13 = 136316162;
        v14 = v8;
        v15 = 2080;
        v16 = "_VCVideoPlayer_ShouldProcessAlarmForDisplayLinkImmediateDecode";
        v17 = 1024;
        v18 = 501;
        v19 = 2048;
        v20 = a1;
        v21 = 2048;
        v22 = v11;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] high leeway:%f, decoding anyways!", &v13, 0x30u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = *a6;
      v13 = 136316162;
      v14 = v8;
      v15 = 2080;
      v16 = "_VCVideoPlayer_ShouldProcessAlarmForDisplayLinkImmediateDecode";
      v17 = 1024;
      v18 = 501;
      v19 = 2048;
      v20 = a1;
      v21 = 2048;
      v22 = v12;
      _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] high leeway:%f, decoding anyways!", &v13, 0x30u);
    }
  }
}

BOOL _VCVideoPlayer_ShouldProcessAlarmForDisplayLinkWithDisplayAlarms(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5, double *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  _VCVideoPlayer_CalculateRealtimeParametersUsingDisplayLink(a1, a2, a3, a4, a5, a6);
  if (*a4 > *a5 && VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    v14 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *a6;
        v16 = *a4;
        v17 = *a5;
        v22 = 136316674;
        v23 = v12;
        v24 = 2080;
        v25 = "_VCVideoPlayer_ShouldProcessAlarmForDisplayLinkWithDisplayAlarms";
        v26 = 1024;
        v27 = 509;
        v28 = 2048;
        v29 = a1;
        v30 = 2048;
        v31 = v15;
        v32 = 2048;
        v33 = v16;
        v34 = 2048;
        v35 = v17;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] leeway=%f waiting for next tick. presentationTime=%f displayTimestamp=%f", &v22, 0x44u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v19 = *a6;
      v20 = *a4;
      v21 = *a5;
      v22 = 136316674;
      v23 = v12;
      v24 = 2080;
      v25 = "_VCVideoPlayer_ShouldProcessAlarmForDisplayLinkWithDisplayAlarms";
      v26 = 1024;
      v27 = 509;
      v28 = 2048;
      v29 = a1;
      v30 = 2048;
      v31 = v19;
      v32 = 2048;
      v33 = v20;
      v34 = 2048;
      v35 = v21;
      _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] leeway=%f waiting for next tick. presentationTime=%f displayTimestamp=%f", &v22, 0x44u);
    }
  }

  if (*(a3 + 32))
  {
    if (*a4 > *a5 && *a2)
    {
      return *(a2 + 36) != 0;
    }
  }

  else if (*a4 > *a5 && *(a2 + 300) >= *(a1 + 600) && *a2 && (*(a2 + 302) & 1) != 0)
  {
    return *(a2 + 36) != 0;
  }

  return 1;
}

double _VCVideoPlayer_GetPresentationTime(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, double a5, double a6)
{
  v6 = a5;
  v76 = *MEMORY[0x1E69E9840];
  if (*(a1 + 825) == 1)
  {
    a5 = *(a2 + 176);
    if (a5 == 0.0)
    {
      v10 = 1;
    }

    else
    {
      a5 = *a3;
      v10 = *a3 == 0.0;
    }
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 32))
  {
    if (*a2)
    {
      if ((*(a1 + 576) & 1) != 0 || *(a1 + 825) && *(a2 + 433) == 1 && (a5 = *(a2 + 200), a5 != 0.0))
      {
        if (*(a2 + 72) == 1)
        {
          v11 = *(a2 + 176);
          v12 = *(a2 + 160);
          v13 = *a3 - v11 + v12;
          v14 = *a3 - *(a2 + 96) + *(a2 + 80) + v6;
          v15 = v14 - v13;
          v16 = vabdd_f64(v14, v13);
          if (v15 < 0.0 && v16 < 2.0)
          {
            *(a2 + 136) = 1;
          }

          *(a2 + 112) = v12 + v15;
          *(a2 + 128) = v11;
          *(a2 + 104) = 1;
          *(a2 + 40) = 0;
          *(a2 + 64) = 0;
          *(a2 + 72) = 0;
          *(a2 + 80) = 0;
          *(a2 + 96) = 0;
          DisplayTimestamp = _VCVideoPlayer_GetDisplayTimestamp(a1);
          _VCVideoPlayer_LogPlayoutTimeChange(a3, a1, a2, v15, DisplayTimestamp, v6);
        }

        else if (*(a1 + 579) == 1 && *(a2 + 40) == 1)
        {
          _VCVideoPlayer_JitterAdaptation_HandleQueueSizeChange(a1, a2, a3, a4.n128_f64[0], v6);
        }
      }

      if (*(a2 + 104) == 1)
      {
        v22 = *a3 - *(a2 + 128);
        v19 = *(a2 + 112) + v22;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          v25 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(a3 + 24);
              v27 = *(a2 + 112);
              v28 = *(a2 + 128);
              v58 = 136316930;
              v59 = v23;
              v60 = 2080;
              v61 = "_VCVideoPlayer_GetPresentationTime";
              v62 = 1024;
              v63 = 341;
              v64 = 2048;
              v65 = *&v19;
              v66 = 1024;
              *v67 = v26;
              *&v67[4] = 2048;
              *&v67[6] = v27;
              *&v67[14] = 2048;
              *&v67[16] = v28;
              v68 = 2048;
              v69 = v22;
              _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d Adjusting presentationTime=%f rtpTimestamp=%u adjustedPresentationTime=%f adjustedVideoFrameTimeInSeconds=%f durationInSeconds=%f", &v58, 0x4Au);
            }
          }

          else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v55 = *(a3 + 24);
            v56 = *(a2 + 112);
            v57 = *(a2 + 128);
            v58 = 136316930;
            v59 = v23;
            v60 = 2080;
            v61 = "_VCVideoPlayer_GetPresentationTime";
            v62 = 1024;
            v63 = 341;
            v64 = 2048;
            v65 = *&v19;
            v66 = 1024;
            *v67 = v55;
            *&v67[4] = 2048;
            *&v67[6] = v56;
            *&v67[14] = 2048;
            *&v67[16] = v57;
            v68 = 2048;
            v69 = v22;
            _os_log_debug_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d Adjusting presentationTime=%f rtpTimestamp=%u adjustedPresentationTime=%f adjustedVideoFrameTimeInSeconds=%f durationInSeconds=%f", &v58, 0x4Au);
          }
        }

        if ((*(a2 + 105) & 1) == 0 && *(a3 + 32) == 1 && (*(a2 + 136) & 1) == 0)
        {
          *(a2 + 120) = *(a3 + 24);
          *(a2 + 105) = 1;
        }
      }

      else
      {
        if (v10)
        {
          LODWORD(a5) = *(a1 + 584);
          v29 = (*(a3 + 24) - *(a2 + 168)) / *&a5;
        }

        else
        {
          v29 = *a3 - *(a2 + 176);
        }

        v19 = *(a2 + 160) + v29;
      }

      if (*(a2 + 136) == 1)
      {
        v30 = *a3 - *(a2 + 128);
        v31 = *(a2 + 160);
        if (v31 <= v19)
        {
          if (*(a3 + 32) == 1)
          {
            *(a2 + 136) = 0;
            v19 = v30 + *(a2 + 112);
            *(a2 + 120) = *(a3 + 24);
            *(a2 + 105) = 1;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v35 = VRTraceErrorLogLevelToCSTR();
              v36 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v37 = *(a3 + 24);
                v38 = *(a2 + 160);
                v58 = 136317186;
                v59 = v35;
                v60 = 2080;
                v61 = "_VCVideoPlayer_PreventBackwardPresentationTime";
                v62 = 1024;
                v63 = 284;
                v64 = 2048;
                v65 = a1;
                v66 = 2048;
                *v67 = a2;
                *&v67[8] = 2048;
                *&v67[10] = v19;
                *&v67[18] = 1024;
                *&v67[20] = v37;
                v68 = 2048;
                v69 = v38;
                v70 = 2048;
                v71 = v30;
                _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] playbackClient=%p finished keeping presentationTime=%f the same rtpTimeStamp=%u lastFrame.presentationTime=%f durationSinceLastAdjustment=%f", &v58, 0x54u);
              }
            }
          }
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v32 = VRTraceErrorLogLevelToCSTR();
            v33 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v34 = *(a3 + 24);
              v58 = 136316930;
              v59 = v32;
              v60 = 2080;
              v61 = "_VCVideoPlayer_PreventBackwardPresentationTime";
              v62 = 1024;
              v63 = 278;
              v64 = 2048;
              v65 = a1;
              v66 = 2048;
              *v67 = a2;
              *&v67[8] = 2048;
              *&v67[10] = v31;
              *&v67[18] = 1024;
              *&v67[20] = v34;
              v68 = 2048;
              v69 = v30;
              _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] playbackClient=%p keeping presentationTime=%f the same to prevent it from going backward rtpTimestamp=%u durationSinceLastAdjustment=%f", &v58, 0x4Au);
            }
          }

          v19 = v31;
        }
      }
    }

    else
    {
      v20 = *(a3 + 24) - *(a2 + 16);
      if (v20)
      {
        v21 = *a3 - *(a2 + 24);
        if (v10)
        {
          LODWORD(a6) = *(a1 + 584);
          v21 = v20 / *&a6;
        }

        v19 = *(a2 + 8) + v21;
      }

      else
      {
        v19 = *(a2 + 8);
      }
    }
  }

  else
  {
    v19 = *(a2 + 8);
    if (v19 == 0.0)
    {
      v19 = micro(a1, a2);
      *(a2 + 8) = v19;
      *(a2 + 16) = *(a3 + 24);
    }

    *(a2 + 24) = *a3;
    *(a2 + 32) = 1;
  }

  if (VRTraceGetErrorLogLevelForModule() > 7)
  {
    v39 = VRTraceErrorLogLevelToCSTR();
    v40 = *MEMORY[0x1E6986650];
    v41 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(a3 + 24);
        v43 = *(a2 + 160);
        if (*a2)
        {
          v44 = *a3 - *(a2 + 176);
          v45 = *a3;
          v46 = *(a2 + 176);
        }

        else
        {
          v45 = *a3;
          v46 = *(a2 + 176);
          v44 = 0.0;
        }

        v52 = *(a3 + 32);
        v58 = 136317698;
        v59 = v39;
        v60 = 2080;
        v61 = "_VCVideoPlayer_GetPresentationTime";
        v62 = 1024;
        v63 = 360;
        v64 = 2048;
        v65 = *&v19;
        v66 = 1024;
        *v67 = v42;
        *&v67[4] = 2048;
        *&v67[6] = v6;
        *&v67[14] = 2048;
        *&v67[16] = v43;
        v68 = 2048;
        v69 = v44;
        v70 = 2048;
        v71 = v45;
        v72 = 2048;
        v73 = v46;
        v74 = 1024;
        v75 = v52;
        _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d presentationTime=%f rtpTimestamp=%u delayOffsetInSeconds=%f lastFrame.presentationTime=%f durationInSeconds=%f videoFrameTimeInSeconds=%f lastFrame.videoFrameTimeInSeconds=%f alarmType=%d", &v58, 0x64u);
      }
    }

    else if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v47 = *(a3 + 24);
      v48 = *(a2 + 160);
      if (*a2)
      {
        v51 = *a3 - *(a2 + 176);
        v49 = *a3;
        v50 = *(a2 + 176);
      }

      else
      {
        v49 = *a3;
        v50 = *(a2 + 176);
        v51 = 0.0;
      }

      v54 = *(a3 + 32);
      v58 = 136317698;
      v59 = v39;
      v60 = 2080;
      v61 = "_VCVideoPlayer_GetPresentationTime";
      v62 = 1024;
      v63 = 360;
      v64 = 2048;
      v65 = *&v19;
      v66 = 1024;
      *v67 = v47;
      *&v67[4] = 2048;
      *&v67[6] = v6;
      *&v67[14] = 2048;
      *&v67[16] = v48;
      v68 = 2048;
      v69 = v51;
      v70 = 2048;
      v71 = v49;
      v72 = 2048;
      v73 = v50;
      v74 = 1024;
      v75 = v54;
      _os_log_debug_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d presentationTime=%f rtpTimestamp=%u delayOffsetInSeconds=%f lastFrame.presentationTime=%f durationInSeconds=%f videoFrameTimeInSeconds=%f lastFrame.videoFrameTimeInSeconds=%f alarmType=%d", &v58, 0x64u);
    }
  }

  return v19;
}

uint64_t _VCVideoPlayer_JitterAdaptation_HandleQueueSizeChange(uint64_t a1, uint64_t a2, uint64_t a3, Float64 a4, double a5)
{
  v7 = *(a2 + 64);
  if (v7 < 0.0)
  {
    *(a2 + 136) = 1;
  }

  if (*(a2 + 104))
  {
    *(a2 + 112) = v7 + *(a2 + 112);
  }

  else
  {
    *(a2 + 112) = v7 + *(a2 + 160);
    *(a2 + 128) = *(a2 + 176);
  }

  *(a2 + 104) = 1;
  *(a2 + 40) = 0;
  *(a2 + 64) = 0;
  return _VCVideoPlayer_LogPlayoutTimeChange(a3, a1, a2, v7, a4, a5);
}

uint64_t _VCVideoPlayer_LogPlayoutTimeChange(uint64_t a1, uint64_t a2, uint64_t a3, double a4, Float64 a5, double a6)
{
  v41 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a3 + 160);
      v15 = *(a3 + 168);
      v16 = *(a3 + 112);
      v17 = *(a1 + 24);
      v18 = *(a3 + 136);
      LODWORD(buf.value) = 136317954;
      *(&buf.value + 4) = v12;
      LOWORD(buf.flags) = 2080;
      *(&buf.flags + 2) = "_VCVideoPlayer_LogPlayoutTimeChange";
      HIWORD(buf.epoch) = 1024;
      v22 = 208;
      v23 = 2048;
      v24 = a2;
      v25 = 2048;
      v26 = a3;
      v27 = 2048;
      v28 = v14;
      v29 = 1024;
      v30 = v15;
      v31 = 2048;
      v32 = v16;
      v33 = 1024;
      v34 = v17;
      v35 = 2048;
      v36 = a4;
      v37 = 1024;
      v38 = v18;
      v39 = 2048;
      v40 = a6;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] playbackClient=%p reference changed lastFrame.presentationTime=%f lastFrame.rtpTimestamp=%u adjustedPresentationTime=%f current RTPTimeStamp=%u lastFrame.presentationTime changed by %f seconds preventBackward=%d delayOffsetInSeconds=%f", &buf, 0x6Au);
    }
  }

  CMTimeMakeWithSeconds(&v20, a5, 1000000000);
  buf = v20;
  CMTimeGetSeconds(&buf);
  CMTimeMakeWithSeconds(&v20, *(a3 + 160), 1000000000);
  buf = v20;
  CMTimeGetSeconds(&buf);
  return kdebug_trace();
}

BOOL _VCVideoPlayer_IsExternalClockSourceWithNTPSyncAcquired(uint64_t a1, double *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 825) == 1 && *a2 != 0.0;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 825);
        v10 = 136316418;
        v11 = v4;
        v12 = 2080;
        v13 = "_VCVideoPlayer_IsExternalClockSourceWithNTPSyncAcquired";
        v14 = 1024;
        v15 = 300;
        v16 = 2048;
        v17 = a1;
        v18 = 1024;
        v19 = v3;
        v20 = 1024;
        v21 = v7;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] ntpClockSyncAcquired=%d useExternalClockSyncSourceForJitterBuffer=%d", &v10, 0x32u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 825);
      v10 = 136316418;
      v11 = v4;
      v12 = 2080;
      v13 = "_VCVideoPlayer_IsExternalClockSourceWithNTPSyncAcquired";
      v14 = 1024;
      v15 = 300;
      v16 = 2048;
      v17 = a1;
      v18 = 1024;
      v19 = v3;
      v20 = 1024;
      v21 = v9;
      _os_log_debug_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEBUG, "VCVideoPlayer [%s] %s:%d VCVideoPlayer[%p] ntpClockSyncAcquired=%d useExternalClockSyncSourceForJitterBuffer=%d", &v10, 0x32u);
    }
  }

  return v3;
}

float64x2_t _VideoPlayer_UpdateReportedAVSyncOffset(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 272) + a3 - *(a2 + 152) - *(a2 + 176);
  v4 = *(a1 + 784);
  if (v4 <= v3)
  {
    v6 = *(a1 + 792);
    if (v6 >= v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = vcvtpd_s64_f64((v6 - v3) * 60.0);
    }
  }

  else
  {
    v5 = vcvtmd_s64_f64((v4 - v3) * 60.0);
  }

  v7.f64[0] = v3 * 1000.0;
  v8.f64[0] = v5 / 60.0 * 1000.0;
  v9 = *(a2 + 344);
  v10 = *(a2 + 352);
  v11 = fabs(v8.f64[0]);
  if (fabs(v9) >= v11)
  {
    v9 = v5 / 60.0 * 1000.0;
  }

  ++*(a2 + 376);
  if (fabs(v10) <= v11)
  {
    v10 = v5 / 60.0 * 1000.0;
  }

  *(a2 + 344) = v9;
  *(a2 + 352) = v10;
  v8.f64[1] = v11;
  *(a2 + 360) = vaddq_f64(v8, *(a2 + 360));
  ++*(a2 + 416);
  v12 = *(a2 + 384);
  v13 = *(a2 + 392);
  v14 = fabs(v7.f64[0]);
  if (fabs(v12) >= v14)
  {
    v12 = v7.f64[0];
  }

  if (fabs(v13) <= v14)
  {
    v13 = v7.f64[0];
  }

  *(a2 + 384) = v12;
  *(a2 + 392) = v13;
  v7.f64[1] = v14;
  result = vaddq_f64(v7, *(a2 + 400));
  *(a2 + 400) = result;
  return result;
}

char *FourccToCStr(int a1)
{
  v1 = FourccToCStr_ix++;
  v2 = &FourccToCStr_str + 5 * (v1 % 0xA);
  *v2 = HIBYTE(a1);
  v2[1] = BYTE2(a1);
  v2[2] = BYTE1(a1);
  v2[3] = a1;
  v2[4] = 0;
  return v2;
}

uint64_t CStrToFourcc(char *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a1[3];
  v3 = (a1[1] << 16) | (*a1 << 24) | (a1[2] << 8) | v2;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = v2;
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    v7 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = FourccToCStr_ix++;
        v9 = &FourccToCStr_str + 5 * (v8 % 0xA);
        *v9 = BYTE3(v3);
        v9[1] = BYTE2(v3);
        v9[2] = BYTE1(v3);
        v9[3] = v4;
        v9[4] = 0;
        v13 = 136316418;
        v14 = v5;
        v15 = 2080;
        v16 = "CStrToFourcc";
        v17 = 1024;
        v18 = 151;
        v19 = 2080;
        v20 = a1;
        v21 = 2080;
        v22 = v9;
        v23 = 1024;
        v24 = v3;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CStrToFourcc: input %s, output %s(%X)", &v13, 0x36u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = FourccToCStr_ix++;
      v12 = &FourccToCStr_str + 5 * (v11 % 0xA);
      *v12 = BYTE3(v3);
      v12[1] = BYTE2(v3);
      v12[2] = BYTE1(v3);
      v12[3] = v4;
      v12[4] = 0;
      v13 = 136316418;
      v14 = v5;
      v15 = 2080;
      v16 = "CStrToFourcc";
      v17 = 1024;
      v18 = 151;
      v19 = 2080;
      v20 = a1;
      v21 = 2080;
      v22 = v12;
      v23 = 1024;
      v24 = v3;
      _os_log_debug_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEBUG, " [%s] %s:%d CStrToFourcc: input %s, output %s(%X)", &v13, 0x36u);
    }
  }

  return v3;
}

char *FormatToCStr(uint64_t a1, char *__str, size_t __size)
{
  if (a1)
  {
    v4 = *a1;
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = FourccToCStr_ix++;
      v7 = &FourccToCStr_str + 5 * (v6 % 0xA);
      *v7 = HIBYTE(v5);
      v7[1] = BYTE2(v5);
      v7[2] = BYTE1(v5);
      v7[3] = v5;
      v7[4] = 0;
    }

    else
    {
      v7 = "nope";
    }

    snprintf(__str, __size, "{ %u, %s, %x, %d, %d, %d, %d, %d }", v4, v7);
  }

  else
  {
    snprintf(__str, __size, "<NULL>");
  }

  return __str;
}

uint64_t SummerCreateHandle(uint64_t *a1, int a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x1080040B7564605uLL);
  if (v4)
  {
    v5 = v4;
    *v4 = malloc_type_calloc(1uLL, 8 * a2, 0x100004000313F17uLL);
    v6 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
    v5[2] = 0;
    v5[3] = 0;
    v5[1] = v6;
    *(v5 + 8) = a2;
    Handle = CreateHandle();
    *a1 = Handle;
    if (Handle == 0xFFFFFFFFLL)
    {
      v8 = 2148728837;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SummerCreateHandle_cold_1();
          return 2148728837;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = 2148728835;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SummerCreateHandle_cold_2(v9, v10);
      }
    }
  }

  return v8;
}

uint64_t SummerReset(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2148728834;
  }

  v2 = *(v1 + 28);
  if (v2)
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    v5 = *v1;
    v6 = *(v1 + 8);
    do
    {
      v3 = (v4 - 1 + v3) % v4;
      *(v5 + 8 * v3) = 0;
      *(v6 + 8 * v3) = 0;
      --v2;
    }

    while (v2);
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t SummerCloseHandle(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2148728834;
  }

  v2 = v1;
  CheckOutHandleDebug();
  free(v2[1]);
  free(*v2);
  free(v2);
  return 0;
}

uint64_t SummerAdd(uint64_t a1, double a2, double a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2148728834;
  }

  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 28);
  v9 = *(v5 + 24);
  *(v5 + 16) = *(v5 + 16) + a2 - *(*v5 + 8 * v9);
  *(v6 + 8 * v9) = a2;
  *(v7 + 8 * v9) = a3;
  LODWORD(v7) = *(v5 + 32);
  *(v5 + 24) = (v9 + 1) % v7;
  if (v8 < v7)
  {
    *(v5 + 28) = v8 + 1;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t SummerLengthPred(uint64_t a1, uint64_t (*a2)(double, double, double), double *a3, int *a4, double a5)
{
  v5 = 2148728833;
  if (a2 && a3 && a4)
  {
    v10 = CheckInHandleDebug();
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + 28);
      if (v12)
      {
        *a4 = 0;
        v13 = (*(v10 + 24) + *(v10 + 32) - 1) % *(v10 + 32);
        v14 = *(*(v10 + 8) + 8 * v13);
        while (1)
        {
          v15 = a2(a5, *(*v11 + 8 * v13), *(*(v11 + 8) + 8 * v13));
          v16 = *a4;
          if (!v15)
          {
            break;
          }

          *a4 = ++v16;
          v17 = *(v11 + 32);
          v13 = (v13 + v17 - 1) % v17;
          if (!--v12)
          {
            goto LABEL_13;
          }
        }

        v17 = *(v11 + 32);
LABEL_13:
        v18 = *(*(v11 + 8) + 8 * ((v13 + 1) % v17));
        v19 = v14 - v18;
        v20 = v14 > v18;
        v21 = 1.0;
        if (v20)
        {
          v21 = v19;
        }

        *a3 = v21;
        v5 = 0;
        v22 = __OFSUB__(v16, 1);
        v23 = v16 - 1;
        if (v23 < 0 == v22)
        {
          *a4 = v23;
        }
      }

      else
      {
        v5 = 2148728849;
      }

      CheckOutHandleDebug();
    }

    else
    {
      return 2148728834;
    }
  }

  return v5;
}

uint64_t SummerSumPred(uint64_t a1, unsigned int (*a2)(double, double, double), double (*a3)(double, double, double), double *a4, double *a5, double a6, double a7)
{
  v7 = 2148728833;
  if (a2 && a3 && a4 && a5)
  {
    v14 = CheckInHandleDebug();
    if (v14)
    {
      v15 = v14;
      *a5 = 0.0;
      v16 = *(v14 + 28);
      if (v16)
      {
        v17 = (*(v14 + 24) + *(v14 + 32) - 1) % *(v14 + 32);
        v18 = *(*(v14 + 8) + 8 * v17);
        while (a2(a6, *(*v15 + 8 * v17), *(*(v15 + 8) + 8 * v17)))
        {
          --v16;
          *a5 = a3(a7, *(*v15 + 8 * v17), *(*(v15 + 8) + 8 * v17)) + *a5;
          v19 = *(v15 + 32);
          v17 = (v17 + v19 - 1) % v19;
          if (!v16)
          {
            goto LABEL_14;
          }
        }

        v19 = *(v15 + 32);
LABEL_14:
        v20 = (v17 + 1) % v19;
        v21 = *(v15 + 8);
        v22 = *(v21 + 8 * v20);
        v23 = v18 - v22;
        v24 = v18 > v22;
        v25 = 1.0;
        if (v24)
        {
          v25 = v23;
        }

        *a4 = v25;
        v7 = 0;
        if (*a5 > 0.0)
        {
          *a5 = *a5 - a3(a7, *(*v15 + 8 * v20), *(v21 + 8 * v20));
        }
      }

      else
      {
        v7 = 2148728849;
      }

      CheckOutHandleDebug();
    }

    else
    {
      return 2148728834;
    }
  }

  return v7;
}

uint64_t HasAltivec()
{
  v3 = *MEMORY[0x1E69E9840];
  result = HasAltivec_result;
  if (HasAltivec_result == -1)
  {
    v2 = 0;
    v1 = 4;
    if (sysctlbyname("hw.optional.altivec", &v2, &v1, 0, 0))
    {
      result = 0;
    }

    else
    {
      result = v2;
    }

    HasAltivec_result = result;
  }

  return result;
}

uint64_t HasMMX()
{
  v3 = *MEMORY[0x1E69E9840];
  result = HasMMX_result;
  if (HasMMX_result == -1)
  {
    v2 = 0;
    v1 = 4;
    if (sysctlbyname("hw.optional.mmx", &v2, &v1, 0, 0))
    {
      result = 0;
    }

    else
    {
      result = v2;
    }

    HasMMX_result = result;
  }

  return result;
}

uint64_t HasSSE()
{
  v3 = *MEMORY[0x1E69E9840];
  result = HasSSE_result;
  if (HasSSE_result == -1)
  {
    v2 = 0;
    v1 = 4;
    if (sysctlbyname("hw.optional.sse", &v2, &v1, 0, 0))
    {
      result = 0;
    }

    else
    {
      result = v2;
    }

    HasSSE_result = result;
  }

  return result;
}

uint64_t HasSSE2()
{
  v3 = *MEMORY[0x1E69E9840];
  result = HasSSE2_result;
  if (HasSSE2_result == -1)
  {
    v2 = 0;
    v1 = 4;
    if (sysctlbyname("hw.optional.sse2", &v2, &v1, 0, 0))
    {
      result = 0;
    }

    else
    {
      result = v2;
    }

    HasSSE2_result = result;
  }

  return result;
}

uint64_t HasSSE3()
{
  v3 = *MEMORY[0x1E69E9840];
  result = HasSSE3_result;
  if (HasSSE3_result == -1)
  {
    v2 = 0;
    v1 = 4;
    if (sysctlbyname("hw.optional.sse3", &v2, &v1, 0, 0))
    {
      result = 0;
    }

    else
    {
      result = v2;
    }

    HasSSE3_result = result;
  }

  return result;
}

uint64_t HasMulticore()
{
  v3 = *MEMORY[0x1E69E9840];
  result = HasMulticore_result;
  if (HasMulticore_result == -1)
  {
    v2 = 0;
    v1 = 4;
    if (!sysctlbyname("hw.activecpu", &v2, &v1, 0, 0))
    {
      result = v2 > 1;
      goto LABEL_8;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
LABEL_8:
        HasMulticore_result = result;
        return result;
      }

      HasMulticore_cold_1();
    }

    result = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t GetVectorTypeAvailable()
{
  result = GetVectorTypeAvailable_result;
  if (GetVectorTypeAvailable_result == -1)
  {
    if (HasAltivec())
    {
      result = 1;
    }

    else if (HasSSE3())
    {
      result = 5;
    }

    else if (HasSSE2())
    {
      result = 4;
    }

    else if (HasSSE())
    {
      result = 3;
    }

    else
    {
      result = 2 * (HasMMX() != 0);
    }

    GetVectorTypeAvailable_result = result;
  }

  return result;
}

uint64_t CPUCountPhysical()
{
  v3 = *MEMORY[0x1E69E9840];
  result = CPUCountPhysical_result;
  if (CPUCountPhysical_result == -1)
  {
    v2 = 0;
    v1 = 4;
    if (sysctlbyname("hw.physicalcpu", &v2, &v1, 0, 0))
    {
      result = 0;
    }

    else
    {
      result = v2;
    }

    CPUCountPhysical_result = result;
  }

  return result;
}

uint64_t VCCPUCount()
{
  result = VCCPUCount_result;
  if (VCCPUCount_result == -1)
  {
    result = CPUCountPhysical();
    VCCPUCount_result = result;
  }

  return result;
}

uint64_t MachineType()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = MachineType_machine_type;
  if (!MachineType_machine_type)
  {
    size = 0xAAAAAAAAAAAAAAAALL;
    *v11 = 0x200000006;
    sysctl(v11, 2u, 0, &size, 0, 0);
    v1 = malloc_type_malloc(size, 0x3130250AuLL);
    sysctl(v11, 2u, v1, &size, 0, 0);
    v2 = &dword_1E85F5768;
    v3 = 41;
    do
    {
      if (!strcasecmp(v1, *(v2 - 2)))
      {
        v0 = *v2;
        goto LABEL_28;
      }

      v2 += 6;
      --v3;
    }

    while (v3);
    v4 = *v1;
    if (*v1)
    {
      v5 = v1 + 1;
      do
      {
        *(v5 - 1) = __tolower(v4);
        v6 = *v5++;
        v4 = v6;
      }

      while (v6);
    }

    if (strstr(v1, "powerbook1,"))
    {
      goto LABEL_9;
    }

    if (strstr(v1, "powerbook2,"))
    {
      goto LABEL_12;
    }

    if (!strstr(v1, "powerbook3,"))
    {
      if (strstr(v1, "powerbook4,"))
      {
LABEL_12:
        v7 = 132;
        goto LABEL_13;
      }

      if (!strstr(v1, "powerbook5,") && !strstr(v1, "powerbook6,"))
      {
        if (strstr(v1, "powermac7,"))
        {
          v0 = 288;
        }

        else if (strstr(v1, "powermac8,"))
        {
          v0 = 784;
        }

        else
        {
          if (!strstr(v1, "powermac12,"))
          {
            if (strstr(v1, "book"))
            {
              v7 = 4;
            }

            else
            {
              v7 = 32;
            }

LABEL_13:
            if (HasSSE3())
            {
              v0 = v7 | 0x400u;
            }

            else
            {
              v8 = VCCPUCount_result;
              if (VCCPUCount_result == -1)
              {
                v8 = CPUCountPhysical();
                VCCPUCount_result = v8;
              }

              if (v8 < 3)
              {
                if (HasAltivec())
                {
                  v0 = v7 | 2u;
                }

                else
                {
                  v0 = v7 | 1u;
                }
              }

              else
              {
                v0 = v7 | 0x100u;
              }
            }

            goto LABEL_28;
          }

          v0 = 2320;
        }

LABEL_28:
        free(v1);
        MachineType_machine_type = v0;
        return v0;
      }
    }

LABEL_9:
    v7 = 68;
    goto LABEL_13;
  }

  return v0;
}

BOOL hasG5()
{
  v8 = *MEMORY[0x1E69E9840];
  if ((MachineType() & 0x100) != 0)
  {
    return 1;
  }

  *&v0 = 0xAAAAAAAAAAAAAAAALL;
  *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6 = v0;
  v7 = v0;
  *host_info_out = v0;
  host_info_outCnt = 12;
  v1 = MEMORY[0x1E128BFB0]();
  host_info(v1, 1, host_info_out, &host_info_outCnt);
  return host_info_out[3] == 18 && v6 == 100;
}

uint64_t ReadFirstMBAndSliceType(uint64_t a1, uint64_t a2, _WORD *a3, _WORD *a4, uint64_t a5)
{
  result = 0;
  videoDesc[1] = *MEMORY[0x1E69E9840];
  if (a2 >= 4 && a1 && a3 && a4 && a5)
  {
    if (*a1 == -1547639150)
    {
      videoDesc[0] = 0xAAAAAAAAAAAAAAAALL;
      v9 = *MEMORY[0x1E695E480];
      v10 = a2 - 4;
      SystemEncoding = CFStringGetSystemEncoding();
      if (CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionData(v9, (a1 + 4), v10, SystemEncoding, 0, videoDesc))
      {
        v12 = 1;
      }

      else
      {
        v12 = videoDesc[0] == 0;
      }

      if (!v12)
      {
        Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc[0]);
        *a3 = Dimensions.width;
        *a4 = Dimensions.height;
        FigFormatDescriptionRelease();
        return 2;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        ReadFirstMBAndSliceType_cold_2();
      }

      return 0;
    }

    v13 = bswap32(*a1);
    v14 = HIBYTE(v13) & 0x1F;
    if (v14 == 7)
    {
      return 3;
    }

    if (v14 == 8)
    {
      return 4;
    }

    if ((v13 & 0x1E000000) == 0x1C000000)
    {
      return 6;
    }

    if ((v13 & 0x9B000000) != 0x1000000)
    {
      return 0;
    }

    if (a2 <= 0xB)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        ReadFirstMBAndSliceType_cold_1();
      }

      return 0;
    }

    v16 = bswap32(*(a1 + 4));
    v17 = __PAIR64__(v13, v16) >> 24;
    if (v17 < 0x80000)
    {
      return 0;
    }

    v18 = __clz(v17);
    HIDWORD(v20) = v16;
    LODWORD(v20) = *(a1 + 8) << 24;
    v19 = v20 >> 24;
    v21 = v18 ? v17 << (v18 + 1) >> -v18 : 0;
    *a3 = v21 + ~(-1 << v18);
    v22 = (v17 << ((2 * (v18 & 0x3F)) | 1)) | (v19 >> 1 >> (~(2 * v18) & 0x1E));
    if (v22 < 0x80000)
    {
      return 0;
    }

    v23 = __clz(v22);
    v24 = v22 << (v23 + 1) >> -v23;
    if (!v23)
    {
      LOWORD(v24) = 0;
    }

    *a4 = v24 + ~(-1 << v23);
    return 1;
  }

  return result;
}

uint64_t hwrandom()
{
  v2 = *MEMORY[0x1E69E9840];
  bytes = -1431655766;
  if (!SecRandomCopyBytes(*MEMORY[0x1E697B308], 4uLL, &bytes))
  {
    return bytes;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      hwrandom_cold_1();
    }
  }

  return arc4random();
}

uint64_t hwrandom16()
{
  v2 = *MEMORY[0x1E69E9840];
  bytes = -21846;
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 2uLL, &bytes))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        hwrandom16_cold_1();
      }
    }

    LOWORD(result) = arc4random();
  }

  else
  {
    LOWORD(result) = bytes;
  }

  return result;
}

uint64_t ReadFrameSliceHeader(int a1, const UInt8 *a2, uint64_t a3, CFDictionaryRef *a4, int a5)
{
  v5 = 0;
  v62 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return v5;
  }

  v6 = a3;
  if (a3 < 4)
  {
    return v5;
  }

  if (*a2 == -1547639150)
  {
    if (!a4)
    {
      return 2;
    }

    formatDescriptionOut = 0xAAAAAAAAAAAAAAAALL;
    v9 = *MEMORY[0x1E695E480];
    v10 = a3 - 4;
    SystemEncoding = CFStringGetSystemEncoding();
    if (CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionData(v9, a2 + 4, v10, SystemEncoding, 0, &formatDescriptionOut))
    {
      v12 = 1;
    }

    else
    {
      v12 = formatDescriptionOut == 0;
    }

    if (!v12)
    {
      Dimensions = CMVideoFormatDescriptionGetDimensions(formatDescriptionOut);
      height = Dimensions.height;
      valuePtr = Dimensions.width;
      FigFormatDescriptionRelease();
      keys = @"Width";
      v61 = @"Height";
      values = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      v59 = CFNumberCreate(0, kCFNumberIntType, &height);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule > 6)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v49 = v19;
          v50 = 2080;
          v51 = "ReadFrameSliceHeader";
          v52 = 1024;
          v53 = 1054;
          v54 = 1024;
          v55 = valuePtr;
          v56 = 1024;
          v57 = height;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %dx%d", buf, 0x28u);
        }
      }

      p_values = &values;
      *a4 = CFDictionaryCreate(v9, &keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v22 = 1;
      do
      {
        v23 = v22;
        if (*p_values)
        {
          CFRelease(*p_values);
        }

        v22 = 0;
        p_values = &v59;
      }

      while ((v23 & 1) != 0);
      return 2;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ReadFrameSliceHeader_cold_1();
      }
    }

    return 0;
  }

  v5 = 0;
  if (a1 > 122)
  {
    switch(a1)
    {
      case '{':
        goto LABEL_17;
      case '|':
        return v5;
      case '~':
LABEL_17:
        v44 = -21846;
        v43 = -21846;
        v42 = -21846;
        v14 = ReadFirstMBAndSliceType(a2, a3, &v44, &v43, &v42);
        v5 = v14;
        if (a4)
        {
          if (v14 == 1)
          {
            LODWORD(formatDescriptionOut) = v44;
            if (v43 == 7 || v43 == 2)
            {
              v27 = 2;
            }

            else
            {
              v27 = 0;
            }

            valuePtr = v27;
            keys = @"FirstMB";
            v61 = @"SliceType";
            values = CFNumberCreate(0, kCFNumberIntType, &formatDescriptionOut);
            v59 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v28 = VRTraceErrorLogLevelToCSTR();
              v29 = *MEMORY[0x1E6986650];
              v30 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136316162;
                  v49 = v28;
                  v50 = 2080;
                  v51 = "ReadFrameSliceHeader";
                  v52 = 1024;
                  v53 = 1133;
                  v54 = 1024;
                  v55 = formatDescriptionOut;
                  v56 = 1024;
                  v57 = valuePtr;
                  _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FirstMB=%d sliceType=%d", buf, 0x28u);
                }
              }

              else if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136316162;
                v49 = v28;
                v50 = 2080;
                v51 = "ReadFrameSliceHeader";
                v52 = 1024;
                v53 = 1133;
                v54 = 1024;
                v55 = formatDescriptionOut;
                v56 = 1024;
                v57 = valuePtr;
                _os_log_debug_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEBUG, " [%s] %s:%d FirstMB=%d sliceType=%d", buf, 0x28u);
              }
            }

            v36 = &values;
            *a4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v37 = 1;
            do
            {
              v38 = v37;
              if (*v36)
              {
                CFRelease(*v36);
              }

              v37 = 0;
              v36 = &v59;
            }

            while ((v38 & 1) != 0);
          }

          else if (v14 == 3 && (LODWORD(formatDescriptionOut) = -1431655766, height = -1431655766, valuePtr = -1431655766, memset(v41, 170, sizeof(v41)), !readSPSAndGetDecoderParams(a2, v6, &formatDescriptionOut, &valuePtr, &height, &v41[4], &v41[3], &v41[2], &v41[1], v41)))
          {
            v39 = 16 * valuePtr;
            v40 = 16 * formatDescriptionOut;
            keys = @"Width";
            v61 = @"Height";
            values = CFNumberCreate(0, kCFNumberIntType, &v40);
            v59 = CFNumberCreate(0, kCFNumberIntType, &v39);
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v31 = VRTraceErrorLogLevelToCSTR();
              v32 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v49 = v31;
                v50 = 2080;
                v51 = "ReadFrameSliceHeader";
                v52 = 1024;
                v53 = 1112;
                v54 = 1024;
                v55 = v40;
                v56 = 1024;
                v57 = v39;
                _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %dx%d", buf, 0x28u);
              }
            }

            v33 = &values;
            *a4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v34 = 1;
            do
            {
              v35 = v34;
              if (*v33)
              {
                CFRelease(*v33);
              }

              v34 = 0;
              v33 = &v59;
            }

            while ((v35 & 1) != 0);
          }

          else
          {
            *a4 = 0;
          }
        }

        return v5;
    }

LABEL_24:
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v49 = v15;
        v50 = 2080;
        v51 = "ReadFrameSliceHeader";
        v52 = 1024;
        v53 = 1158;
        v54 = 1024;
        v55 = a1;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ReadFrameSliceHeader: UNEXPECTED payload %d", buf, 0x22u);
      }
    }

    return 0;
  }

  if (a1 != 100)
  {
    if (a1 == 110)
    {
      return v5;
    }

    goto LABEL_24;
  }

  v24 = VCPReadHEVCSliceHeader();
  v5 = v24;
  if ((v24 - 4) > 0xFFFFFFFD)
  {
    return v5;
  }

  if (v6 < 1)
  {
    return 0;
  }

  if ((*a2 & 0x7E) == 0x62)
  {
    return 6;
  }

  else
  {
    return v24;
  }
}

uint64_t RetrieveResolutionFromFrameInfoDict(CFDictionaryRef theDict, _WORD *a2, _WORD *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  result = 0xFFFFFFFFLL;
  if (theDict && a2 && a3)
  {
    valuePtr = -1431655766;
    Value = CFDictionaryGetValue(theDict, @"Width");
    if (Value && (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr), *a2 = valuePtr, (v8 = CFDictionaryGetValue(theDict, @"Height")) != 0))
    {
      CFNumberGetValue(v8, kCFNumberIntType, &valuePtr);
      result = 0;
      *a3 = valuePtr;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t RetrieveMBSliceTypeFromFrameInfoDict(CFDictionaryRef theDict, _WORD *a2, _WORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  result = 0xFFFFFFFFLL;
  if (theDict && a2 && a3)
  {
    valuePtr = -1431655766;
    Value = CFDictionaryGetValue(theDict, @"FirstMB");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      *a2 = valuePtr;
    }

    v8 = CFDictionaryGetValue(theDict, @"SliceType");
    if (v8)
    {
      CFNumberGetValue(v8, kCFNumberIntType, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 3 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          RetrieveMBSliceTypeFromFrameInfoDict_cold_1();
        }
      }

      *a3 = v9;
    }

    return 0;
  }

  return result;
}

uint64_t ReadCodecConfigParams(int a1, uint64_t a2, uint64_t a3, unint64_t a4, _DWORD *a5, _DWORD *a6, int *a7, int *a8, int *a9)
{
  v54 = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 'd':
      goto LABEL_4;
    case '~':
      v28 = 15;
      LODWORD(cf) = 20;
      v26 = 1;
      v27 = 1;
      v25 = 0;
      DecoderParams = readAVCCAndGetDecoderParams(a3, a4, &cf, &v28, &v27, &v26, a7, a8, a9, &v25);
      if (VRTraceGetErrorLogLevelForModule() < 7 || (v17 = VRTraceErrorLogLevelToCSTR(), v18 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_26:
        *a5 = 16 * cf;
        *a6 = 16 * v28;
        return DecoderParams;
      }

      if (a7)
      {
        v19 = *a7;
        if (a8)
        {
LABEL_15:
          v20 = *a8;
LABEL_22:
          if (a9)
          {
            v23 = *a9;
          }

          else
          {
            v23 = 0;
          }

          *buf = 136317954;
          v31 = v17;
          v32 = 2080;
          v33 = "ReadCodecConfigParams";
          v34 = 1024;
          v35 = 1251;
          v36 = 1024;
          v37 = DecoderParams;
          v38 = 1024;
          v39 = cf;
          v40 = 1024;
          v41 = v28;
          v42 = 1024;
          v43 = v27;
          v44 = 1024;
          v45 = v26;
          v46 = 1024;
          v47 = v19;
          v48 = 1024;
          v49 = v20;
          v50 = 1024;
          v51 = v23;
          v52 = 1024;
          v53 = v25;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Parsing SPS for H.264: %d, %u, %u, %u, %u, %u, %u, %u, %u", buf, 0x52u);
          goto LABEL_26;
        }
      }

      else
      {
        v19 = 0;
        if (a8)
        {
          goto LABEL_15;
        }
      }

      v20 = 0;
      goto LABEL_22;
    case '{':
LABEL_4:
      cf = 0;
      VCPReadCodecConfigParams();
      LOWORD(v28) = 0;
      LOWORD(v27) = 0;
      DecoderParams = RetrieveResolutionFromFrameInfoDict(0, &v28, &v27);
      if (!DecoderParams)
      {
        *a5 = v28;
        *a6 = v27;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v31 = v13;
          v32 = 2080;
          v33 = "ReadCodecConfigParams";
          v34 = 1024;
          v35 = 1233;
          v36 = 1024;
          v37 = DecoderParams;
          v38 = 1024;
          v39 = v28;
          v40 = 1024;
          v41 = v27;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Parsing SPS: %d, %u, %u", buf, 0x2Eu);
        }
      }

      return DecoderParams;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v31 = v21;
      v32 = 2080;
      v33 = "ReadCodecConfigParams";
      v34 = 1024;
      v35 = 1259;
      v36 = 1024;
      v37 = a1;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ReadCodecConfigParams: UNEXPECTED payload %d", buf, 0x22u);
    }
  }

  return 4294954396;
}

double __nanosecondsToAbsoluteTime_block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(v3);
  LODWORD(v0) = v3[0].denom;
  LODWORD(v1) = v3[0].numer;
  result = v0 / v1;
  nanosecondsToAbsoluteTime_conversionRatio = *&result;
  return result;
}

uint64_t setRealTimeConstraints(double a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  v3 = pthread_mach_thread_np(v2);
  if (nanosecondsToAbsoluteTime_onceToken != -1)
  {
    setRealTimeConstraints_cold_1();
  }

  policy_info[0] = (*&nanosecondsToAbsoluteTime_conversionRatio * (a1 * 1000000000.0));
  policy_info[1] = (*&nanosecondsToAbsoluteTime_conversionRatio * 500000.0);
  policy_info[2] = policy_info[0];
  policy_info[3] = 1;
  return thread_policy_set(v3, 2u, policy_info, 4u);
}

uint64_t Util_BinaryGCD(unsigned int a1, int a2)
{
  v2 = a2 | a1;
  if (a1 && a2)
  {
    if ((a2 | a1))
    {
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v4 = a1;
      do
      {
        a1 = v4 >> 1;
        a2 >>= 1;
        ++v3;
        v5 = a2 | (v4 >> 1);
        v4 >>= 1;
      }

      while ((v5 & 1) == 0);
    }

    do
    {
      v6 = a1;
      a1 = a1 >> 1;
    }

    while ((v6 & 1) == 0);
    do
    {
      do
      {
        v7 = a2;
        a2 >>= 1;
      }

      while ((v7 & 1) == 0);
      v9 = v6 - v7;
      v8 = v6 - v7 < 0;
      if (v6 >= v7)
      {
        v6 = v7;
      }

      if (v8)
      {
        v10 = -v9;
      }

      else
      {
        v10 = v9;
      }

      a2 = v10 >> 1;
    }

    while (v10 > 1);
    return (v6 << v3);
  }

  return v2;
}

void SimplifyRatio(unsigned int *a1, int *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = Util_BinaryGCD(*a1, *a2);
  if (v5)
  {
    *a1 = v4 / v5;
    v6 = *a2 / v5;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *a1;
        v10 = *a2;
        v11 = 136316162;
        v12 = v7;
        v13 = 2080;
        v14 = "SimplifyRatio";
        v15 = 1024;
        v16 = 1338;
        v17 = 1024;
        v18 = v9;
        v19 = 1024;
        v20 = v10;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Resetting the ratio from %d:%d to 3:4", &v11, 0x28u);
      }
    }

    *a1 = 3;
    v6 = 4;
  }

  *a2 = v6;
}

double SimplifyFixedPointRatio(double *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *a1;
    v5 = a1[1];
    v6 = v2;
    SimplifyRatio(&v6, &v5);
    result = v6;
    v4 = v5;
    *a1 = v6;
    a1[1] = v4;
  }

  return result;
}

float *VCUtil_ExponentialMovingAverageWithAlpha(float *result, float a2, float a3)
{
  v3 = (a2 * a3) + *result * (1.0 - a3);
  *result = v3;
  return result;
}

float *VCUtil_ExponentialMovingAverage(float *result, float a2, float a3)
{
  v3 = ((2.0 / (a3 + 1.0)) * a2) + *result * (1.0 - (2.0 / (a3 + 1.0)));
  *result = v3;
  return result;
}

size_t VCUtil_ConvertStreamIDArrayToString(size_t result, unsigned int a2, char *a3, size_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__source = 0u;
  v12 = 0u;
  if (a2)
  {
    v6 = result;
    v7 = 0;
    v8 = 2 * a2;
    v9 = a4;
    while (1)
    {
      __sprintf_chk(__source, 0, 0x60uLL, " %u,", *(v6 + v7));
      if (v7)
      {
        strlcat(a3, __source, v9);
      }

      else
      {
        strncpy(a3, __source, v9);
      }

      result = strlen(__source);
      v10 = v9 > result;
      v9 -= result;
      if (!v10)
      {
        break;
      }

      v7 += 2;
      if (v8 == v7)
      {
        return result;
      }
    }

    a3[a4 - 1] = 0;
  }

  return result;
}

void VCUtil_AppendFromDictionary(__CFDictionary *a1, CFDictionaryRef theDict)
{
  values[1] = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(theDict);
  v5 = 8 * Count;
  v6 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = (values - v6);
  if (MEMORY[0x1EEE9AC00](Count))
  {
    v8 = memset(values - v6, 170, v5);
    MEMORY[0x1EEE9AC00](v8);
    v9 = (values - v6);
    memset(v9, 170, v5);
    CFDictionaryGetKeysAndValues(theDict, v7, v9);
    if (Count >= 1)
    {
      do
      {
        v11 = *v7++;
        v10 = v11;
        v12 = *v9++;
        CFDictionaryAddValue(a1, v10, v12);
        --Count;
      }

      while (Count);
    }
  }

  else
  {
    CFDictionaryGetKeysAndValues(theDict, (values - v6), values);
  }
}

uint64_t VCUtil_BinaryPrefix(unint64_t a1, double *a2)
{
  if (a1 >= 0x400)
  {
    v2 = 0;
    v3 = a1;
    do
    {
      v4 = v2++;
      if (v4 > 4)
      {
        break;
      }

      v5 = v3 >> 20;
      v3 >>= 10;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    *a2 = a1 / (1 << (10 * v2));
  }

  return VCUtil_BinaryPrefix_prefixes[v2];
}

BOOL VCUtil_AuditTokenEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    return *a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3];
  }

  return v2;
}

BOOL VCUtil_AuditTokenValid(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    if (a1 != &VCUtil_InvalidAuditToken)
    {
      return (*a1 & *(a1 + 8) & *(a1 + 16) & *(a1 + 24)) != -1;
    }
  }

  return result;
}

double VCUtil_AuditTokenForCurrentProcess@<D0>(_OWORD *a1@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *task_info_out = v2;
  v8 = v2;
  task_info_outCnt = 8;
  if ((*MEMORY[0x1E69E9A60] - 1) > 0xFFFFFFFD)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCUtil_AuditTokenForCurrentProcess_cold_1();
      }
    }
  }

  else
  {
    if (!task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt))
    {
      *&v3 = *task_info_out;
      v4 = v8;
      *a1 = *task_info_out;
      a1[1] = v4;
      return *&v3;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCUtil_AuditTokenForCurrentProcess_cold_2();
      }
    }
  }

  *&v3 = -1;
  *(&v3 + 1) = -1;
  *a1 = v3;
  a1[1] = v3;
  return *&v3;
}

void _VCUtil_GenerateTailspin(int a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  _VCUtil_DiagnosticsAtomicSharedInstance();
  v23 = _VCUtil_DiagnosticsAtomicSharedInstance_tailspinOrSpinDumpInProgress;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[6] = v4;
  v30[7] = v4;
  v30[4] = v4;
  v30[5] = v4;
  v30[2] = v4;
  v30[3] = v4;
  v30[0] = v4;
  v30[1] = v4;
  VRLogfileGetTimestamp(v30, 0x80u);
  memset(__b, 170, sizeof(__b));
  memset(__format, 170, sizeof(__format));
  v5 = VCTailspinUtil_TailspinPath();
  if (v5 && *v5)
  {
    __strlcpy_chk();
    VCDiskUtils_CreateDirectory();
    __strlcat_chk(__format, "/avconferenced_blockage_%s.XXXXXX.tailspin", v12);
    snprintf(__b, 0x400uLL, __format, v30);
    v6 = mkostemps(__b, 9, 0);
    if (v6 != -1)
    {
      v7 = v6;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      *v25 = strndup(__b, 0x400uLL);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      v14 = ___VCUtil_GenerateTailspin_block_invoke;
      v15 = &unk_1E85F5B58;
      v19 = v7;
      v16 = buf;
      v17 = &v20;
      v18 = a2;
      if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
        _VCUtil_GenerateTailspin_cold_1();
        if (a1)
        {
          goto LABEL_7;
        }
      }

      else if (a1)
      {
LABEL_7:
        v14(block);
LABEL_17:
        _Block_object_dispose(buf, 8);
        goto LABEL_18;
      }

      global_queue = dispatch_get_global_queue(-32768, 0);
      dispatch_async(global_queue, block);
      goto LABEL_17;
    }

    v8 = *__error();
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = "_VCUtil_GenerateTailspin";
        *&buf[22] = 1024;
        *v25 = 1503;
        *&v25[4] = 2080;
        *&v25[6] = __b;
        v26 = 1024;
        v27 = v8;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to open file=%s: %{darwin.errno}d", buf, 0x2Cu);
      }
    }

    atomic_fetch_add(v21[3], 0xFFFFFFFF);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCUtil_GenerateTailspin_cold_2();
    }
  }

LABEL_18:
  _Block_object_dispose(&v20, 8);
}

void _VCUtil_DiagnosticsAtomicSharedInstance()
{
  v0[5] = *MEMORY[0x1E69E9840];
  v0[0] = MEMORY[0x1E69E9820];
  v0[1] = 0x40000000;
  v0[2] = ___VCUtil_DiagnosticsAtomicSharedInstance_block_invoke;
  v0[3] = &__block_descriptor_tmp_120;
  v0[4] = _VCUtil_DiagnosticsAtomicSharedInstance_tailspinOrSpinDumpInProgress;
  if (_VCUtil_DiagnosticsAtomicSharedInstance_onceToken != -1)
  {
    dispatch_once(&_VCUtil_DiagnosticsAtomicSharedInstance_onceToken, v0);
  }
}

void _VCUtil_GenerateStackshot(uint64_t a1, const char *a2)
{
  v3 = a1;
  v7[4] = *MEMORY[0x1E69E9840];
  if (VRTraceIsInternalOSInstalled())
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCUtil_GenerateStackshot_cold_1();
      }
    }

    v4 = strlen(a2);
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2000000000;
    v7[3] = strndup(a2, v4 + 1);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___VCUtil_GenerateStackshot_block_invoke;
    v6[3] = &unk_1E85F5B80;
    v6[4] = v7;
    if (v3)
    {
      ___VCUtil_GenerateStackshot_block_invoke(v6);
    }

    else
    {
      global_queue = dispatch_get_global_queue(-32768, 0);
      dispatch_async(global_queue, v6);
    }

    _Block_object_dispose(v7, 8);
  }
}

void _VCUtil_GenerateSpindump(int a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  _VCUtil_DiagnosticsAtomicSharedInstance();
  v8[3] = _VCUtil_DiagnosticsAtomicSharedInstance_tailspinOrSpinDumpInProgress;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___VCUtil_GenerateSpindump_block_invoke;
  v7[3] = &unk_1E85F5BC8;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = v8;
  if (a1)
  {
    ___VCUtil_GenerateSpindump_block_invoke(v7);
  }

  else
  {
    global_queue = dispatch_get_global_queue(-32768, 0);
    dispatch_async(global_queue, v7);
  }

  _Block_object_dispose(v8, 8);
}

uint64_t _VCUtil_GenerateDiagnosticsInternal(uint64_t result, uint64_t a2, const char *a3, unsigned int a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (!a4)
    {
      return 0;
    }
  }

  else
  {
    BoolValueForKey = VCDefaults_GetBoolValueForKey(@"isGenerateStackshotEnabled", 0);
    IsInternalOSInstalled = 0;
    if (!a4 || !BoolValueForKey)
    {
      return IsInternalOSInstalled;
    }
  }

  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (!IsInternalOSInstalled)
  {
    return IsInternalOSInstalled;
  }

  if (a4)
  {
    _VCUtil_GenerateStackshot(result, a3);
  }

  _VCUtil_DiagnosticsAtomicSharedInstance();
  v11 = 0;
  atomic_compare_exchange_strong(_VCUtil_DiagnosticsAtomicSharedInstance_tailspinOrSpinDumpInProgress, &v11, ((a4 >> 1) & 1) + ((a4 & 4) >> 2));
  if (!v11)
  {
    if ((a4 & 2) != 0)
    {
      _VCUtil_GenerateTailspin(result, a3);
    }

    if ((a4 & 4) != 0)
    {
      _VCUtil_GenerateSpindump(result, a3, a5);
    }

    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = v12;
      v16 = 2080;
      v17 = "_VCUtil_GenerateDiagnosticsInternal";
      v18 = 1024;
      v19 = 1636;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Tailspin/spindump already in progress. Skipping.", &v14, 0x1Cu);
    }
  }

  return 1;
}

uint64_t VCMediaNegotiationBlobV2MomentsSettingsReadFrom(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v11 >> 3) == 2)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v28 = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v28 & 0x7F) << v12;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v17 = v13++ > 8;
          if (v17)
          {
            v18 = 0;
            v19 = &OBJC_IVAR___VCMediaNegotiationBlobV2MomentsSettings__capabilities;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___VCMediaNegotiationBlobV2MomentsSettings__capabilities;
LABEL_41:
        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v14;
        }

LABEL_44:
        *(a1 + *v19) = v18;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v24 = [a2 position];
      if (v24 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v20 = 0;
    v21 = 0;
    v14 = 0;
    *(a1 + 16) |= 2u;
    while (1)
    {
      v27 = 0;
      v22 = [a2 position] + 1;
      if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v14 |= (v27 & 0x7F) << v20;
      if ((v27 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v17 = v21++ > 8;
      if (v17)
      {
        v18 = 0;
        v19 = &OBJC_IVAR___VCMediaNegotiationBlobV2MomentsSettings__supportedCodecs;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___VCMediaNegotiationBlobV2MomentsSettings__supportedCodecs;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t VCSingleLinkedListInitialize(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2)
    {
      if ((*(v2 + 8) & 1) == 0)
      {
        *v2 = 0;
        result = 1;
        *(v2 + 8) = 1;
        *(v2 + 16) = a2;
        *(v2 + 24) = 0;
      }
    }
  }

  return result;
}

uint64_t VCSingleLinkedListClear(uint64_t result, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    v5[0] = 0;
    if (*(result + 8) == 1)
    {
      v3 = *result;
      if (*result)
      {
        do
        {
          *v2 = *v3;
          *v3 = 0;
          --*(v2 + 24);
          v5[0] = v3;
          if (a2)
          {
            result = (*(a2 + 16))(a2, v5);
            if ((*(v2 + 8) & 1) == 0)
            {
              break;
            }
          }

          v3 = *v2;
        }

        while (*v2);
      }
    }
  }

  return result;
}

uint64_t *VCSingleLinkedListPop(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 8) == 1)
    {
      result = *result;
      if (*v1)
      {
        *v1 = *result;
        *result = 0;
        --v1[3];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t VCSingleLinkedListPush(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (a2)
    {
      if (*(v3 + 8))
      {
        v4 = v3;
        while (1)
        {
          v5 = v4;
          v4 = *v4;
          if (!v4)
          {
            v7 = 0;
            goto LABEL_10;
          }

          v6 = (*(v3 + 16))(v4, a2);
          if (v6 == 1)
          {
            return 0;
          }

          if (v6 == 2)
          {
            v7 = *v5;
LABEL_10:
            ++*(v3 + 24);
            *a2 = v7;
            *v5 = a2;
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void *VCSingleLinkedListRemove(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  if (a2 && (*(a1 + 8) & 1) != 0)
  {
    v3 = a1;
    while (1)
    {
      v5 = v3;
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if ((*(a1 + 16))(v3, a2) == 1)
      {
        *v5 = *v3;
        *v3 = 0;
        --*(a1 + 24);
        return v3;
      }
    }
  }

  return v3;
}

uint64_t VCSingleLinkedGetNumberEntries(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 1)
    {
      return *(result + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t VCSingleLinkedListEnumerate(uint64_t result, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    result = 0;
    if (a2)
    {
      if (*(v3 + 8))
      {
        v5 = 0;
        v4 = *v3;
        if (*v3)
        {
          do
          {
            (*(a2 + 16))(a2, v4, &v5);
            v4 = *v4;
          }

          while (v4 && (v5 & 1) == 0);
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t VCSessionOneToOneSystemAudioTierTable()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F5798D78;
  v1[1] = &unk_1F5798DA8;
  v2[0] = &unk_1F5798D90;
  v2[1] = &unk_1F5798DC0;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:2];
}

uint64_t VCSessionOneToOneCameraTierTable()
{
  v2[6] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F5798DD8;
  v1[1] = &unk_1F5798E08;
  v2[0] = &unk_1F5798DF0;
  v2[1] = &unk_1F5798E20;
  v1[2] = &unk_1F5798E38;
  v1[3] = &unk_1F5798E68;
  v2[2] = &unk_1F5798E50;
  v2[3] = &unk_1F5798E80;
  v1[4] = &unk_1F5798E98;
  v1[5] = &unk_1F5798EC8;
  v2[4] = &unk_1F5798EB0;
  v2[5] = &unk_1F5798EE0;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:6];
}

uint64_t VCSessionOneToOneScreenTierTable()
{
  v2[8] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F5798EF8;
  v1[1] = &unk_1F5798F28;
  v2[0] = &unk_1F5798F10;
  v2[1] = &unk_1F5798F40;
  v1[2] = &unk_1F5798F58;
  v1[3] = &unk_1F5798F88;
  v2[2] = &unk_1F5798F70;
  v2[3] = &unk_1F5798FA0;
  v1[4] = &unk_1F5798FB8;
  v1[5] = &unk_1F5798FE8;
  v2[4] = &unk_1F5798FD0;
  v2[5] = &unk_1F5799000;
  v1[6] = &unk_1F5799018;
  v1[7] = &unk_1F5799048;
  v2[6] = &unk_1F5799030;
  v2[7] = &unk_1F5799060;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:8];
}

uint64_t VCSessionOneToOneScreenTierTableForegroundCamera()
{
  v2[5] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F5798EF8;
  v1[1] = &unk_1F5798F28;
  v2[0] = &unk_1F5798F10;
  v2[1] = &unk_1F5798F40;
  v1[2] = &unk_1F5798F88;
  v1[3] = &unk_1F5798FE8;
  v2[2] = &unk_1F5798F70;
  v2[3] = &unk_1F5798FA0;
  v1[4] = &unk_1F5799018;
  v2[4] = &unk_1F5798FD0;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:5];
}

uint64_t VCSessionOneToOneReducedMicTierTable()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F5799078;
  v1[1] = &unk_1F57990A8;
  v2[0] = &unk_1F5799090;
  v2[1] = &unk_1F57990C0;
  v1[2] = &unk_1F57990D8;
  v2[2] = &unk_1F57990F0;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:3];
}

uint64_t VCSessionOneToOneFullMicTierTable()
{
  v2[8] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F5799108;
  v1[1] = &unk_1F5799078;
  v2[0] = &unk_1F5799120;
  v2[1] = &unk_1F5799090;
  v1[2] = &unk_1F5799138;
  v1[3] = &unk_1F5799150;
  v2[2] = &unk_1F5798DF0;
  v2[3] = &unk_1F5799168;
  v1[4] = &unk_1F5799180;
  v1[5] = &unk_1F57990A8;
  v2[4] = &unk_1F5799198;
  v2[5] = &unk_1F57990C0;
  v1[6] = &unk_1F57990D8;
  v1[7] = &unk_1F57991B0;
  v2[6] = &unk_1F57990F0;
  v2[7] = &unk_1F57991C8;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:8];
}

uint64_t VCSessionOneToOneFTXTTierTable()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F57991E0;
  v1[1] = &unk_1F5799210;
  v2[0] = &unk_1F57991F8;
  v2[1] = &unk_1F5799228;
  v1[2] = &unk_1F5799240;
  v2[2] = &unk_1F5799258;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:3];
}

uint64_t VCSessionOneToOneFTXTTierTableWithRedundancy()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F57991E0;
  v1[1] = &unk_1F5799210;
  v2[0] = &unk_1F5799270;
  v2[1] = &unk_1F5799288;
  v1[2] = &unk_1F5799240;
  v2[2] = &unk_1F57992A0;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:3];
}

uint64_t VCSessionOneToOneFaceTextureV2TierTable()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F57992B8;
  v1[1] = &unk_1F5799210;
  v2[0] = &unk_1F57992D0;
  v2[1] = &unk_1F57992E8;
  v1[2] = &unk_1F5799240;
  v2[2] = &unk_1F5799300;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:3];
}

uint64_t VCSessionOneToOneFaceTextureV2TierTableWithRedundancy()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F57992B8;
  v1[1] = &unk_1F5799210;
  v2[0] = &unk_1F5799318;
  v2[1] = &unk_1F5799330;
  v1[2] = &unk_1F5799240;
  v2[2] = &unk_1F5799348;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:3];
}

uint64_t VCSessionOneToOneBDATTierTable()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F5799360;
  v1[1] = &unk_1F5799390;
  v2[0] = &unk_1F5799378;
  v2[1] = &unk_1F57993A8;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:2];
}

uint64_t VCSessionOneToOneBodyDataV2TierTable()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v1 = &unk_1F5799360;
  v2[0] = &unk_1F57993C0;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:&v1 count:1];
}

uint64_t VCSessionOneToOneBodyDataV2TierTableWithRedundancy()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v1 = &unk_1F5799360;
  v2[0] = &unk_1F57993D8;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:&v1 count:1];
}

uint64_t VCSessionLowLatencyVideoCallMicrophoneBandwidthTable()
{
  v2[10] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F57993F0;
  v1[1] = &unk_1F5799420;
  v2[0] = &unk_1F5799408;
  v2[1] = &unk_1F5799120;
  v1[2] = &unk_1F57990C0;
  v1[3] = &unk_1F5799450;
  v2[2] = &unk_1F5799438;
  v2[3] = &unk_1F5799090;
  v1[4] = &unk_1F5799468;
  v1[5] = &unk_1F5799480;
  v2[4] = &unk_1F5798DF0;
  v2[5] = &unk_1F5799168;
  v1[6] = &unk_1F5799498;
  v1[7] = &unk_1F57994B0;
  v2[6] = &unk_1F5799198;
  v2[7] = &unk_1F57990C0;
  v1[8] = &unk_1F57994C8;
  v1[9] = &unk_1F57994E0;
  v2[8] = &unk_1F57990F0;
  v2[9] = &unk_1F57991C8;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:10];
}

uint64_t VCSessionVideoCallMicrophoneBandwidthTable()
{
  v2[9] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F57993F0;
  v1[1] = &unk_1F5799420;
  v2[0] = &unk_1F5799408;
  v2[1] = &unk_1F5799120;
  v1[2] = &unk_1F57990C0;
  v1[3] = &unk_1F5799450;
  v2[2] = &unk_1F5799438;
  v2[3] = &unk_1F5799090;
  v1[4] = &unk_1F5799468;
  v1[5] = &unk_1F5799480;
  v2[4] = &unk_1F5798DF0;
  v2[5] = &unk_1F5799168;
  v1[6] = &unk_1F5799498;
  v1[7] = &unk_1F57994C8;
  v2[6] = &unk_1F5799198;
  v2[7] = &unk_1F57990C0;
  v1[8] = &unk_1F57994F8;
  v2[8] = &unk_1F5799510;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:9];
}

uint64_t VCSessionLowLatencyMicrophoneOnlyBandwidthTable()
{
  v2[9] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F5798F10;
  v1[1] = &unk_1F5799438;
  v2[0] = &unk_1F5799408;
  v2[1] = &unk_1F5799120;
  v1[2] = &unk_1F5799420;
  v1[3] = &unk_1F5799198;
  v2[2] = &unk_1F5799528;
  v2[3] = &unk_1F5799540;
  v1[4] = &unk_1F57990C0;
  v1[5] = &unk_1F5799570;
  v2[4] = &unk_1F5799558;
  v2[5] = &unk_1F5799588;
  v1[6] = &unk_1F5799468;
  v1[7] = &unk_1F57995A0;
  v2[6] = &unk_1F5799510;
  v2[7] = &unk_1F57991C8;
  v1[8] = &unk_1F57995B8;
  v2[8] = &unk_1F57995D0;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:9];
}

uint64_t VCSessionMicrophoneOnlyBandwidthTable()
{
  v2[9] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F5798F10;
  v1[1] = &unk_1F5799438;
  v2[0] = &unk_1F5799408;
  v2[1] = &unk_1F5799120;
  v1[2] = &unk_1F5799420;
  v1[3] = &unk_1F5799198;
  v2[2] = &unk_1F5799528;
  v2[3] = &unk_1F5799540;
  v1[4] = &unk_1F57990C0;
  v1[5] = &unk_1F5799570;
  v2[4] = &unk_1F5799558;
  v2[5] = &unk_1F5799588;
  v1[6] = &unk_1F5799468;
  v1[7] = &unk_1F57995A0;
  v2[6] = &unk_1F5799510;
  v2[7] = &unk_1F57995E8;
  v1[8] = &unk_1F5799480;
  v2[8] = &unk_1F57993D8;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:9];
}

uint64_t _NACKConsumer_CloseSummerHandles(uint64_t a1)
{
  v1 = a1 + 1052672;
  v2 = *(a1 + 1054736);
  if (v2 != 0xFFFFFFFFLL)
  {
    SummerCloseHandle(v2);
  }

  result = *(v1 + 2072);
  if (result != 0xFFFFFFFFLL)
  {

    return SummerCloseHandle(result);
  }

  return result;
}

uint64_t _VCNACKConsumerClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t VCNACKConsumer_Create(uint64_t a1, uint64_t *a2, const char *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCNACKConsumer_Create_cold_6();
    return v12;
  }

  if (!a3)
  {
    VCNACKConsumer_Create_cold_5();
    return v12;
  }

  if (_MergedGlobals_1 != -1)
  {
    VCNACKConsumer_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VCNACKConsumer_Create_cold_4();
    return v12;
  }

  v6 = Instance;
  if ((SummerCreateHandle((Instance + 1054736), 400) & 0x80000000) != 0)
  {
    VCNACKConsumer_Create_cold_3();
LABEL_19:
    _NACKConsumer_CloseSummerHandles(v6);
    CFRelease(v6);
    return 2152071172;
  }

  Handle = SummerCreateHandle((v6 + 1054744), 400);
  if ((Handle & 0x80000000) != 0)
  {
    VCNACKConsumer_Create_cold_2();
    goto LABEL_19;
  }

  v8 = Handle;
  SummerAdd(*(v6 + 1054744), 0.0, 0.0);
  *(v6 + 1054764) = 10;
  *(v6 + 1054760) = 1;
  *(v6 + 1054768) = reportingDefaultRealtimePeriod();
  *(v6 + 1054772) = VCDefaults_GetBoolValueForKey(@"ignoreRetransmissionBudget", 0);
  strncpy((v6 + 1054784), a3, 0xC8uLL);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315906;
      v13 = v9;
      v14 = 2080;
      v15 = "VCNACKConsumer_Create";
      v16 = 1024;
      v17 = 209;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d New instance created=%p", &v12, 0x26u);
    }
  }

  *a2 = v6;
  return v8;
}

uint64_t VCNACKConsumer_GetRetransmissionRequestInfoFromNACK(uint64_t a1, int *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCNACKConsumer_GetRetransmissionRequestInfoFromNACK_cold_5();
    return 0;
  }

  if (!a2)
  {
    VCNACKConsumer_GetRetransmissionRequestInfoFromNACK_cold_4();
    return 0;
  }

  if (!a3)
  {
    VCNACKConsumer_GetRetransmissionRequestInfoFromNACK_cold_3();
    return 0;
  }

  v6 = a1 + 1052672;
  if ((*(a1 + 1054760) & 1) == 0)
  {
    VCNACKConsumer_GetRetransmissionRequestInfoFromNACK_cold_1();
    return 0;
  }

  v7 = *a2;
  v8 = a1 + 16480 * (*a2 & 0x3F);
  v10 = *(v8 + 16);
  v9 = (v8 + 16);
  if (v10 != *a2)
  {
    bzero(v9, 0x4060uLL);
    *v9 = v7;
  }

  v11 = *(a2 + 3);
  v12 = *(a2 + 2);
  v13 = *(v6 + 2092);
  if (v13 > 0 || *(v6 + 2100) == 1)
  {
    *(a3 + 10) = v12;
    *(v6 + 2092) = v13 - 1;
    v14 = *(a2 + 2);
    v15 = *(a2 + 1);
    if (*(v6 + 2101) == 1)
    {
      v16 = *(v6 + 2104);
    }

    else
    {
      v16 = LogDump_OpenLog((a1 + 1054784), "NackConsumer", ".nackdump", "Timestamp\tTime\tType\tSSRC\tSeqNum\n", 9, "1.0");
      *(v6 + 2104) = v16;
      *(v6 + 2101) = 1;
    }

    VRLogfilePrintWithTimestamp(v16, "%5.3f\t%s\t%u\t%u\n", v15, "NACK", v7, v14);
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = (v6 + 2092);
  v31 = a3;
  if (v11)
  {
    v19 = a3 + 10;
    while (1)
    {
      v20 = *v18;
      if (*v18 <= 0 && *(v6 + 2100) != 1)
      {
        break;
      }

      ++v12;
      if (v11)
      {
        *(v19 + 2 * v17) = v12;
        *(v6 + 2092) = v20 - 1;
        v21 = *v9;
        v22 = *(a2 + 1);
        if (*(v6 + 2101) == 1)
        {
          v23 = *(v6 + 2104);
        }

        else
        {
          v23 = LogDump_OpenLog((a1 + 1054784), "NackConsumer", ".nackdump", "Timestamp\tTime\tType\tSSRC\tSeqNum\n", 9, "1.0");
          *(v6 + 2104) = v23;
          *(v6 + 2101) = 1;
        }

        ++v17;
        VRLogfilePrintWithTimestamp(v23, "%5.3f\t%s\t%u\t%u\n", v22, "NACK", v21, v12);
      }

      v24 = v11 > 1;
      v11 >>= 1;
      if (!v24)
      {
        goto LABEL_23;
      }
    }

    v25 = v31;
    goto LABEL_27;
  }

LABEL_23:
  v25 = v31;
  if (*v18 <= 0)
  {
LABEL_27:
    if ((*(v6 + 2100) & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      v28 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *v18;
          *buf = 136315906;
          v33 = v26;
          v34 = 2080;
          v35 = "VCNACKConsumer_GetRetransmissionRequestInfoFromNACK";
          v36 = 1024;
          v37 = 278;
          v38 = 1024;
          v39 = v29;
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Retransmission packet count exceeded allotted budget. retransmissionBudget=%d", buf, 0x22u);
        }
      }

      else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        VCNACKConsumer_GetRetransmissionRequestInfoFromNACK_cold_2(v26, (v6 + 2092), v27);
      }
    }
  }

  *(v25 + 4) = v17;
  v9[1] += v17;
  ++v9[5];
  return 0;
}

uint64_t _VCNACKConsumer_CheckBitrateLimits(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v40 = *MEMORY[0x1E69E9840];
  v4 = a1 + 1052672;
  v18 = 0.0;
  v19 = 0.0;
  v5 = *(a1 + 1054752);
  if (v5 != 0.0)
  {
    v6 = v2 - v5;
    if (v6 <= 0.1)
    {
      _VCNACKConsumer_CheckBitrateLimits_cold_3(buf, v6);
      return *buf;
    }
  }

  a2.n128_f64[0] = v2 + -1.0;
  if ((_VCNACKConsumer_GetBitrate(a1, &v19, &v18, a2) & 0x80000000) != 0)
  {
    _VCNACKConsumer_CheckBitrateLimits_cold_2();
    return *buf;
  }

  if (v19 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v18 / v19;
  }

  v8 = v7 < 0.2;
  v9 = *(v4 + 2064);
  v20 = 0;
  *buf = 0;
  v10 = SummerLengthPred(v9, SummerGreaterThan, buf, &v20, v2 + -0.1);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 2152071172;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCNACKConsumer_CheckBitrateLimits_cold_1(v16);
      }
    }
  }

  else
  {
    v11 = v10;
    *(v4 + 2092) = vcvtpd_s64_f64(v20 * 0.2);
    if (*(v4 + 2088) != v8 && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(v4 + 2088);
        v15 = *(v4 + 2092);
        *buf = 136317442;
        *&buf[4] = v12;
        v22 = 2080;
        v23 = "_VCNACKConsumer_CheckBitrateLimits";
        v24 = 1024;
        v25 = 349;
        v26 = 2048;
        v27 = a1;
        v28 = 1024;
        v29 = v14;
        v30 = 1024;
        v31 = v7 < 0.2;
        v32 = 2048;
        v33 = v19;
        v34 = 2048;
        v35 = v18;
        v36 = 2048;
        v37 = v7;
        v38 = 1024;
        v39 = v15;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNACKConsumer[%p] Based on bitrate limits, canRetransmit changed from before=%d to after=%d, mediaBitrate=%3.3f, retransmittedBitrate=%3.3f, overhead=%3.3f retransmissionBudget=%d", buf, 0x56u);
      }
    }

    *(v4 + 2080) = v2;
    *(v4 + 2088) = v8;
  }

  return v11;
}

uint64_t _VCNACKConsumer_GetBitrate(uint64_t a1, double *a2, double *a3, __n128 a4)
{
  v5 = a4.n128_f64[0];
  v9 = *MEMORY[0x1E69E9840];
  v6 = a1 + 1052672;
  if (a2)
  {
    result = _VCNACKConsumer_ComputeSummerBitrate(*(a1 + 1054736), a2, a4.n128_f64[0]);
    if ((result & 0x80000000) != 0)
    {
      _VCNACKConsumer_GetBitrate_cold_1(result, &v8);
      return v8;
    }
  }

  else
  {
    result = 0;
  }

  if (a3)
  {
    result = _VCNACKConsumer_ComputeSummerBitrate(*(v6 + 2072), a3, v5);
    if ((result & 0x80000000) != 0)
    {
      _VCNACKConsumer_GetBitrate_cold_2(result, &v8);
      return v8;
    }
  }

  return result;
}

uint64_t VCNACKConsumer_UpdateRetransmissionStatus(uint64_t a1, double *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCNACKConsumer_UpdateRetransmissionStatus_cold_2(&v26);
    return v26;
  }

  v4 = *a2;
  v5 = a1 + 16480 * (*a2 & 0x3F);
  v7 = *(v5 + 16);
  v6 = (v5 + 16);
  if (v7 != *a2)
  {
    bzero(v6, 0x4060uLL);
    *v6 = v4;
  }

  v8 = *(a2 + 2);
  v9 = a2[1];
  if (*(a2 + 6) == 1)
  {
    ++*(v6 + 3);
    v10 = *&v6[2 * (v8 & 0x7FF) + 20];
    v11 = v9 - v10;
    v13 = v10 <= 0.0 || v9 <= v10 || v11 > 5.0;
    if (!v13 && v9 > 0.0)
    {
      v14 = 4116;
LABEL_23:
      *&v6[v14] = v11;
    }
  }

  else
  {
    v15 = *&v6[2 * (v8 & 0x7FF) + 20];
    ++*(v6 + 4);
    v11 = v9 - v15;
    v17 = v15 <= 0.0 || v9 <= v15 || v11 > 5.0;
    if (!v17 && v9 > 0.0)
    {
      v14 = 4118;
      goto LABEL_23;
    }
  }

  if (*(a2 + 7) == 1)
  {
    ++*(v6 + 2);
    v18 = *a2;
    if (*(a1 + 1054773) == 1)
    {
      v19 = *(a1 + 1054776);
    }

    else
    {
      v19 = LogDump_OpenLog((a1 + 1054784), "NackConsumer", ".nackdump", "Timestamp\tTime\tType\tSSRC\tSeqNum\n", 9, "1.0");
      *(a1 + 1054776) = v19;
      *(a1 + 1054773) = 1;
    }

    VRLogfilePrintWithTimestamp(v19, "%5.3f\t%s\t%u\t%u\n", v9, "RTX", v18, v8);
  }

  v20 = *(a2 + 8);
  if (v20 >= 2)
  {
    ++*(v6 + 6);
  }

  if (v20 > *(v6 + 28))
  {
    *(v6 + 28) = v20;
  }

  v21 = *(a2 + 3);
  if (!v21)
  {
    return 0;
  }

  *(v6 + 8) += v21;
  v22 = SummerAdd(*(a1 + 1054744), v21, a2[1]);
  if ((v22 & 0x80000000) != 0)
  {
    VCNACKConsumer_UpdateRetransmissionStatus_cold_1(a1, &v26);
    return v26;
  }

  v24 = v22;
  v23.n128_f64[0] = v9;
  _VCNACKConsumer_CheckBitrateLimits(a1, v23);
  return v24;
}

uint64_t VCNACKConsumer_UpdateTransmissionStatus(uint64_t a1, int *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCNACKConsumer_UpdateTransmissionStatus_cold_2(&v13);
    return v13;
  }

  v4 = *a2;
  v5 = a1 + 16480 * (*a2 & 0x3F);
  v7 = *(v5 + 16);
  v6 = (v5 + 16);
  if (v7 != *a2)
  {
    bzero(v6, 0x4060uLL);
    *v6 = v4;
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    return 0;
  }

  v6[9] += v8;
  v9 = SummerAdd(*(a1 + 1054736), v8, *(a2 + 1));
  if ((v9 & 0x80000000) != 0)
  {
    VCNACKConsumer_UpdateTransmissionStatus_cold_1(a1, &v13);
    return v13;
  }

  v11 = v9;
  v10.n128_u64[0] = *(a2 + 1);
  _VCNACKConsumer_CheckBitrateLimits(a1, v10);
  return v11;
}

uint64_t VCNACKConsumer_UpdatePacketCacheStatus(uint64_t a1, int *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    v4 = a1 + 16480 * (*a2 & 0x3F);
    v6 = *(v4 + 16);
    v5 = (v4 + 16);
    if (v6 != *a2)
    {
      bzero(v5, 0x4060uLL);
      *v5 = v3;
    }

    result = 0;
    *&v5[2 * (a2[1] & 0x7FF) + 20] = *(a2 + 1);
  }

  else
  {
    VCNACKConsumer_UpdatePacketCacheStatus_cold_1(a1, &v8);
    return v8;
  }

  return result;
}

void VCNACKConsumer_GetStatistics(uint64_t a1, __CFDictionary *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    LOWORD(v10) = 0;
    v11 = 0.0;
    v12 = 64;
    v13 = 0.0;
    do
    {
      v14 = a1 + v3;
      v4 += *(a1 + v3 + 24);
      v5 += *(a1 + v3 + 32);
      v6 += *(a1 + v3 + 40);
      v7 += *(a1 + v3 + 48);
      v8 += *(a1 + v3 + 56);
      v9 += *(a1 + v3 + 64);
      if (*(a1 + v3 + 72) <= v10)
      {
        v10 = v10;
      }

      else
      {
        v10 = *(a1 + v3 + 72);
      }

      v11 = v11 + *(v14 + 16480);
      v13 = v13 + *(v14 + 16488);
      *(v14 + 16480) = 0;
      *(v14 + 24) = 0uLL;
      *(v14 + 40) = 0uLL;
      *(v14 + 56) = 0uLL;
      *(v14 + 72) = 0;
      v3 += 16480;
      --v12;
    }

    while (v12);
    valuePtr = v4;
    v15 = *MEMORY[0x1E695E480];
    v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(a2, @"UNRPC", v16);
    CFRelease(v16);
    valuePtr = v5;
    v17 = CFNumberCreate(v15, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(a2, @"UNFPC", v17);
    CFRelease(v17);
    valuePtr = v6;
    v18 = CFNumberCreate(v15, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(a2, @"UNCHPC", v18);
    CFRelease(v18);
    valuePtr = v7;
    v19 = CFNumberCreate(v15, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(a2, @"UNCMPC", v19);
    CFRelease(v19);
    valuePtr = v8;
    v20 = CFNumberCreate(v15, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(a2, @"UNTRC", v20);
    CFRelease(v20);
    valuePtr = v9;
    v21 = CFNumberCreate(v15, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(a2, @"UNRRC", v21);
    CFRelease(v21);
    valuePtr = v10;
    v22 = CFNumberCreate(v15, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(a2, @"UNRRMC", v22);
    CFRelease(v22);
    v23 = 0.0;
    if (v6)
    {
      v24 = v11 / v6;
    }

    else
    {
      v24 = 0.0;
    }

    *&v25 = v24;
    valuePtr = v25;
    v26 = CFNumberCreate(v15, kCFNumberFloat32Type, &valuePtr);
    CFDictionaryAddValue(a2, @"UNART", v26);
    CFRelease(v26);
    if (v7)
    {
      v23 = v13 / v7;
    }

    *&v27 = v23;
    valuePtr = v27;
    v28 = CFNumberCreate(v15, kCFNumberFloat32Type, &valuePtr);
    CFDictionaryAddValue(a2, @"UNALT", v28);
    CFRelease(v28);
    v36 = 0uLL;
    LODWORD(v29) = *(a1 + 1054768);
    v30.n128_f64[0] = v29;
    if ((_VCNACKConsumer_GetBitrate(a1, &v36 + 1, &v36, v30) & 0x80000000) == 0)
    {
      valuePtr = (*(&v36 + 1) / 1000.0 + 0.5);
      v31 = CFNumberCreate(v15, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(a2, @"UNMB", v31);
      CFRelease(v31);
      valuePtr = (*&v36 / 1000.0 + 0.5);
      v32 = CFNumberCreate(v15, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(a2, @"UNRB", v32);
      CFRelease(v32);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        valuePtr = 136318722;
        v38 = v33;
        v39 = 2080;
        v40 = "VCNACKConsumer_GetStatistics";
        v41 = 1024;
        v42 = 488;
        v43 = 2048;
        v44 = a1;
        v45 = 2048;
        v46 = v4;
        v47 = 2048;
        v48 = v5;
        v49 = 2048;
        v50 = v6;
        v51 = 2048;
        v52 = v7;
        v53 = 2048;
        v54 = v8;
        v55 = 2048;
        v56 = v9;
        v57 = 1024;
        v58 = v10;
        v59 = 2048;
        v60 = v24;
        v61 = 2048;
        v62 = v23;
        v63 = 2048;
        v64 = *(&v36 + 1);
        v65 = 2048;
        v66 = v36;
        _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VCNACKConsumer [%p] RTX health report retransmissionRequestPacketCount=%llu retransmissionFulfilledPacketCount=%llu aggregatedRetransmissionCacheHitCount=%llu aggregatedRetransmissionCacheMissCount=%llu aggregatedRetransmissionNACKReceivedCount=%llu aggregatedRetransmissionRepeatedRequestCount=%llu retransmissionRepeatedRequestMaxCount=%u averageResponseTime=%f averageLateTime=%f mediaBitrate=%f retransmittedBitrate=%f", &valuePtr, 0x90u);
      }
    }
  }
}

void _VCNACKConsumer_Init(uint64_t a1)
{
  v1 = a1 + 1052672;
  bzero((a1 + 16), 0x1018F8uLL);
  *(v1 + 2064) = 0xFFFFFFFFLL;
  *(v1 + 2072) = 0xFFFFFFFFLL;
}

uint64_t _VCNACKConsumer_Finalize(uint64_t a1)
{
  v2 = *(a1 + 1054776);
  if (v2)
  {
    LogDump_CloseLog(v2);
    *(a1 + 1054776) = 0;
  }

  return _NACKConsumer_CloseSummerHandles(a1);
}

void OUTLINED_FUNCTION_2_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x1Cu);
}

__int16 *VADD_Q15_Portable(__int16 *result, __int16 *a2, __int16 *a3, int a4)
{
  for (; a4; --a4)
  {
    v5 = *result++;
    v4 = v5;
    v6 = *a2++;
    v7 = v6 + v4;
    if (v7 >= 0x7FFF)
    {
      v8 = 0x7FFF;
    }

    else
    {
      v8 = v7;
    }

    if (v7 <= -32768)
    {
      v9 = 0x8000;
    }

    else
    {
      v9 = v7;
    }

    if (v7 <= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    *a3++ = v10;
  }

  return result;
}

__int16 *VSMUL_Q15_Portable(__int16 *result, int a2, _WORD *a3, int a4)
{
  for (; a4; --a4)
  {
    v4 = *result++;
    *a3++ = (v4 * a2) >> 15;
  }

  return result;
}

__int16 *SVESQ_Q15_Portable(__int16 *result, int a2, _DWORD *a3, char a4)
{
  for (i = 0; a2; --a2)
  {
    v5 = *result++;
    i += (v5 * v5) >> (a4 - 1);
  }

  *a3 = i;
  return result;
}

void _FECUtil_SetupFECHeaderV0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8, __int16 a9, __int16 a10, char a11, uint64_t a12, uint64_t a13)
{
  v14 = a5;
  v46 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v34 = 0;
  v18 = a2 + 12016;
  if (RSU_Encode(a6, (a4 + 12), a5, a7, a2 + 12016, &v35 + 1, &v35, &v34, 0, 0))
  {
    *a4 = 0;
  }

  else
  {
    v19 = a1 << 6;
    if (v14 >= 1)
    {
      v20 = a8;
      v21 = 0;
      v22 = a3 + 4 * v20;
      do
      {
        *(a12 + 4 * v21) = ((a11 & 0x7F) << 16) | 0x800000 | ((v19 & 0xFFFFFFF8 | (8 * v35) | (v34 + v35 * v21) & 7) << 24) | *(v22 + 4 * v21) & 0x1FFF | ((a9 << 15) | (v34 << 11));
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          v25 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(a12 + 4 * v21);
              *buf = 136316162;
              v37 = v23;
              v38 = 2080;
              v39 = "_FECUtil_SetupFECHeaderV0";
              v40 = 1024;
              v41 = 79;
              v42 = 1024;
              v43 = v21;
              v44 = 1024;
              v45 = v26;
              _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setup FEC Main header (data packet %d) = %08x", buf, 0x28u);
            }
          }

          else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v27 = *(a12 + 4 * v21);
            *buf = 136316162;
            v37 = v23;
            v38 = 2080;
            v39 = "_FECUtil_SetupFECHeaderV0";
            v40 = 1024;
            v41 = 79;
            v42 = 1024;
            v43 = v21;
            v44 = 1024;
            v45 = v27;
            _os_log_debug_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Setup FEC Main header (data packet %d) = %08x", buf, 0x28u);
          }
        }

        ++v21;
      }

      while (v14 != v21);
    }

    if (SHIDWORD(v35) >= 1)
    {
      v28 = 0;
      do
      {
        *(a13 + 4 * v28) = ((a11 & 0x7F) << 16) | ((v19 & 0xFFFFFFF8 | (8 * v35) | (v35 * v28) & 7) << 24) | *(v18 + 4 * v28) & 0x1FFF | ((a9 << 15) | (v34 << 11));
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v29 = VRTraceErrorLogLevelToCSTR();
          v30 = *MEMORY[0x1E6986650];
          v31 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = *(a12 + 4 * v28);
              *buf = 136316162;
              v37 = v29;
              v38 = 2080;
              v39 = "_FECUtil_SetupFECHeaderV0";
              v40 = 1024;
              v41 = 90;
              v42 = 1024;
              v43 = v28;
              v44 = 1024;
              v45 = v32;
              _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setup FEC Main header (parity packet %d) = %08x", buf, 0x28u);
            }
          }

          else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v33 = *(a12 + 4 * v28);
            *buf = 136316162;
            v37 = v29;
            v38 = 2080;
            v39 = "_FECUtil_SetupFECHeaderV0";
            v40 = 1024;
            v41 = 90;
            v42 = 1024;
            v43 = v28;
            v44 = 1024;
            v45 = v33;
            _os_log_debug_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Setup FEC Main header (parity packet %d) = %08x", buf, 0x28u);
          }
        }

        ++v28;
      }

      while (v28 < SHIDWORD(v35));
    }
  }
}

void _FECUtil_SetupFECHeaderV1(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, int a9, __int16 a10, __int16 a11, char a12, uint64_t a13, uint64_t a14)
{
  v14 = a6;
  v15 = a5;
  v43 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v31 = 0;
  if (RSU_Encode(a7, (a4 + 12), a5, a8, a2 + 12016, &v32 + 1, &v32, &v31, (a2 + 12044), 1))
  {
    *a4 = 0;
  }

  else
  {
    v18 = a1 << 7;
    if (v15 >= 1)
    {
      for (i = 0; i != v15; ++i)
      {
        *(a13 + 4 * i) = ((a10 << 14) | (v31 << 10)) | FECUtil_FECLevelofProtectionToFECPercentage(v14) | ((a12 & 0x7F) << 15) | 0x400000 | (((v31 + v32 * i) & 0xF | v18 | (16 * v32)) << 23);
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v20 = VRTraceErrorLogLevelToCSTR();
          v21 = *MEMORY[0x1E6986650];
          v22 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = *(a13 + 4 * i);
              *buf = 136316162;
              v34 = v20;
              v35 = 2080;
              v36 = "_FECUtil_SetupFECHeaderV1";
              v37 = 1024;
              v38 = 130;
              v39 = 1024;
              v40 = i;
              v41 = 1024;
              v42 = v23;
              _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setup FEC Main header (data packet %d) = %08x", buf, 0x28u);
            }
          }

          else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v24 = *(a13 + 4 * i);
            *buf = 136316162;
            v34 = v20;
            v35 = 2080;
            v36 = "_FECUtil_SetupFECHeaderV1";
            v37 = 1024;
            v38 = 130;
            v39 = 1024;
            v40 = i;
            v41 = 1024;
            v42 = v24;
            _os_log_debug_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Setup FEC Main header (data packet %d) = %08x", buf, 0x28u);
          }
        }
      }
    }

    if (SHIDWORD(v32) >= 1)
    {
      v25 = 0;
      do
      {
        *(a14 + 4 * v25) = ((a10 << 14) | (v31 << 10)) | FECUtil_FECLevelofProtectionToFECPercentage(v14) | ((a12 & 0x7F) << 15) | ((v18 & 0xF0 | (16 * v32) | (v32 * v25) & 0xF) << 23);
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x1E6986650];
          v28 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = *(a13 + 4 * v25);
              *buf = 136316162;
              v34 = v26;
              v35 = 2080;
              v36 = "_FECUtil_SetupFECHeaderV1";
              v37 = 1024;
              v38 = 141;
              v39 = 1024;
              v40 = v25;
              v41 = 1024;
              v42 = v29;
              _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setup FEC Main header (parity packet %d) = %08x", buf, 0x28u);
            }
          }

          else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v30 = *(a13 + 4 * v25);
            *buf = 136316162;
            v34 = v26;
            v35 = 2080;
            v36 = "_FECUtil_SetupFECHeaderV1";
            v37 = 1024;
            v38 = 141;
            v39 = 1024;
            v40 = v25;
            v41 = 1024;
            v42 = v30;
            _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Setup FEC Main header (parity packet %d) = %08x", buf, 0x28u);
          }
        }

        ++v25;
      }

      while (v25 < SHIDWORD(v32));
    }
  }
}

uint64_t FECUtil_FECLevelofProtectionToFECPercentage(unsigned int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1 < 6)
  {
    return dword_1DBD47DB8[a1];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "FECUtil_FECLevelofProtectionToFECPercentage";
      v9 = 1024;
      v10 = 588;
      v11 = 1024;
      v12 = a1;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported iFECLevelOfProtection: %d", &v5, 0x22u);
    }
  }

  return 1;
}

void FECUtil_SetupFECHeader(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, __int16 a10, char a11, uint64_t a12, uint64_t a13)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((a5 - 2) <= 6 && a6 >= 1)
  {
    v13 = 0;
    v32 = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v30 = v14;
    v31 = v14;
    v29 = v14;
    v27 = 0xAAAAAAAAAAAAAAAALL;
    v28 = a7;
    v26[1] = v14;
    v26[2] = v14;
    *a4 = 1;
    a4[1] = a1;
    a4[11] = a5;
    v15 = (a3 + 4 * a8);
    v17 = *v15;
    v16 = v15 + 1;
    v26[0] = v14;
    a4[3] = v17;
    do
    {
      v18 = *(v16 - 1);
      v19 = *v16++;
      a7 += v18;
      *(&v28 + v13 + 1) = a7;
      a4[v13++ + 4] = v19;
    }

    while (a5 - 1 != v13);
    v20 = 0;
    v21 = xmmword_1DBD45330;
    v22 = a2 + 1516;
    v23 = vdupq_n_s64(7uLL);
    v24 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v23, v21)).u8[0])
      {
        *&v26[v20] = v22 - 1500;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v21)).i32[1])
      {
        *(&v26[v20] + 1) = v22;
      }

      v21 = vaddq_s64(v21, v24);
      ++v20;
      v22 += 3000;
    }

    while (v20 != 4);
    if (a1 == 1)
    {
      _FECUtil_SetupFECHeaderV1(1, a2, a3, a4, a5, a6, &v28, v26, v25, a9, a10, a11, a12, a13);
    }

    else if (a1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          FECUtil_SetupFECHeader_cold_1();
        }
      }
    }

    else
    {
      _FECUtil_SetupFECHeaderV0(0, a2, a3, a4, a5, &v28, v26, a8, a9, a10, a11, a12, a13);
    }
  }
}

void _FECHeader_UnpackV0ParitySubHeaderFromBuffer(_DWORD *a1, unsigned __int16 *a2, unint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (a3 > 1)
    {
      v4 = *a2;
      v5 = __rev16(v4);
      a1[11] = v5;
      v6 = a1 + 11;
      if (v5 < 9)
      {
        if (a3 - 2 >= 2 * (v5 & 0x7FFF))
        {
          if (v4)
          {
            v7 = 0;
            do
            {
              a1[v7 + 3] = bswap32(a2[v7 + 1]) >> 16;
              ++v7;
            }

            while (v7 < *v6);
          }

          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v8 = VRTraceErrorLogLevelToCSTR();
            v9 = *MEMORY[0x1E6986650];
            v10 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                v11 = *v6;
                v12 = 136315906;
                v13 = v8;
                v14 = 2080;
                v15 = "_FECHeader_UnpackV0ParitySubHeaderFromBuffer";
                v16 = 1024;
                v17 = 217;
                v18 = 1024;
                v19 = v11;
                _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unpack legacy parity subheader wNumPkt=%d", &v12, 0x22u);
              }
            }

            else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              _FECHeader_UnpackV0ParitySubHeaderFromBuffer_cold_1();
            }
          }
        }

        else
        {
          *v6 = 0;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              _FECHeader_UnpackV0ParitySubHeaderFromBuffer_cold_2();
            }
          }
        }
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _FECHeader_UnpackV0ParitySubHeaderFromBuffer_cold_3();
          }
        }

        *a1 = 0;
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _FECHeader_UnpackV0ParitySubHeaderFromBuffer_cold_4();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _FECHeader_UnpackV0ParitySubHeaderFromBuffer_cold_5();
    }
  }
}

void _FECHeader_UnpackV1ParitySubHeaderFromBuffer(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 0x80000000) != 0 || (v5 = (v4 >> 27) & 7) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _FECHeader_UnpackV1ParitySubHeaderFromBuffer_cold_3();
        }
      }
    }

    else
    {
      if (v4 >> 30)
      {
        v6 = (v4 >> 10) & 0xF;
      }

      else
      {
        v6 = (v4 >> 11) & 7;
      }

      *(a1 + 44) = (8 - v6) / v5;
      if (a3 > 1)
      {
        *(a1 + 52) = bswap32(*a2) >> 16;
        if (a3 - 2 > 1)
        {
          *(a1 + 54) = bswap32(a2[1]) >> 16;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v7 = VRTraceErrorLogLevelToCSTR();
            v8 = *MEMORY[0x1E6986650];
            v9 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                v10 = *(a1 + 52);
                v11 = *(a1 + 54);
                v14 = 136316162;
                v15 = v7;
                v16 = 2080;
                v17 = "_FECHeader_UnpackV1ParitySubHeaderFromBuffer";
                v18 = 1024;
                v19 = 252;
                v20 = 1024;
                v21 = v10;
                v22 = 1024;
                v23 = v11;
                _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unpack parity subheader redundantBitsForPayloadSize=%d, paritySequenceNumber=%d", &v14, 0x28u);
              }
            }

            else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              v12 = *(a1 + 52);
              v13 = *(a1 + 54);
              v14 = 136316162;
              v15 = v7;
              v16 = 2080;
              v17 = "_FECHeader_UnpackV1ParitySubHeaderFromBuffer";
              v18 = 1024;
              v19 = 252;
              v20 = 1024;
              v21 = v12;
              v22 = 1024;
              v23 = v13;
              _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Unpack parity subheader redundantBitsForPayloadSize=%d, paritySequenceNumber=%d", &v14, 0x28u);
            }
          }
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _FECHeader_UnpackV1ParitySubHeaderFromBuffer_cold_1();
          }
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _FECHeader_UnpackV1ParitySubHeaderFromBuffer_cold_2();
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _FECHeader_UnpackV1ParitySubHeaderFromBuffer_cold_4();
    }
  }
}

void _FECHeader_UnpackV2ParitySubHeaderFromBuffer(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (a3 > 1)
    {
      *(a1 + 52) = bswap32(*a2) >> 16;
      if (a3 - 2 > 1)
      {
        *(a1 + 54) = bswap32(a2[1]) >> 16;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v4 = VRTraceErrorLogLevelToCSTR();
          v5 = *MEMORY[0x1E6986650];
          v6 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              v7 = *(a1 + 52);
              v8 = *(a1 + 54);
              v11 = 136316162;
              v12 = v4;
              v13 = 2080;
              v14 = "_FECHeader_UnpackV2ParitySubHeaderFromBuffer";
              v15 = 1024;
              v16 = 279;
              v17 = 1024;
              v18 = v7;
              v19 = 1024;
              v20 = v8;
              _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unpack parity subheader redundantBitsForPayloadSize=%d, paritySequenceNumber=%d", &v11, 0x28u);
            }
          }

          else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            v9 = *(a1 + 52);
            v10 = *(a1 + 54);
            v11 = 136316162;
            v12 = v4;
            v13 = 2080;
            v14 = "_FECHeader_UnpackV2ParitySubHeaderFromBuffer";
            v15 = 1024;
            v16 = 279;
            v17 = 1024;
            v18 = v9;
            v19 = 1024;
            v20 = v10;
            _os_log_debug_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Unpack parity subheader redundantBitsForPayloadSize=%d, paritySequenceNumber=%d", &v11, 0x28u);
          }
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _FECHeader_UnpackV2ParitySubHeaderFromBuffer_cold_1();
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _FECHeader_UnpackV2ParitySubHeaderFromBuffer_cold_2();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _FECHeader_UnpackV2ParitySubHeaderFromBuffer_cold_3();
    }
  }
}

void FECHeader_UnpackHeaderFromBuffer(_DWORD *a1, int a2, unsigned int *a3, unint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1 && a3)
  {
    if (a4 <= 3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          FECHeader_UnpackHeaderFromBuffer_cold_2();
        }
      }

      return;
    }

    v7 = *a3;
    v6 = (a3 + 1);
    v8 = bswap32(v7);
    a1[2] = v8;
    *a1 = 1;
    v9 = v8 >> 30;
    v10 = (v8 >> 26) & 1;
    if (v8 >> 30 == 1)
    {
      v10 = ((v8 >> 22) & 1) == 0;
    }

    v11 = ((v8 >> 23) & 1) == 0;
    if (v9)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    if (v9 == a2)
    {
      if (a2 <= 1)
      {
        if (a2)
        {
          if (v12)
          {

            _FECHeader_UnpackV1ParitySubHeaderFromBuffer(a1, v6, a4 - 4);
          }
        }

        else if (v12)
        {

          _FECHeader_UnpackV0ParitySubHeaderFromBuffer(a1, v6, a4 - 4);
        }

        return;
      }

      if (a2 == 2)
      {
        if (v12)
        {

          _FECHeader_UnpackV2ParitySubHeaderFromBuffer(a1, v6, a4 - 4);
        }

        return;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          FECHeader_UnpackHeaderFromBuffer_cold_1();
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v15 = 136316162;
        v16 = v13;
        v17 = 2080;
        v18 = "FECHeader_UnpackHeaderFromBuffer";
        v19 = 1024;
        v20 = 304;
        v21 = 1024;
        v22 = a2;
        v23 = 1024;
        v24 = v9;
        _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d FEC Header version mismatch expected %d, but got %d", &v15, 0x28u);
      }
    }

    *a1 = 0;
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      FECHeader_UnpackHeaderFromBuffer_cold_3();
    }
  }
}

void _FECHeader_PackV0ParitySubHeaderToBuffer(uint64_t a1, _WORD *a2, unint64_t a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a4)
  {
    if (a3 > 1)
    {
      *a2 = bswap32(*(a1 + 44)) >> 16;
      v6 = *(a1 + 44);
      if (a3 - 2 >= 2 * v6)
      {
        if (v6 >= 1)
        {
          v7 = 0;
          do
          {
            a2[v7 + 1] = bswap32(*(a1 + 12 + 4 * v7)) >> 16;
            ++v7;
          }

          while (v7 < *(a1 + 44));
          LODWORD(v6) = *(a1 + 44);
        }

        v8 = (((2 * (v6 + (v6 >> 31))) & 0xFFFFFFFC) + 4);
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          v11 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = *(a1 + 44);
              v14 = 136316162;
              v15 = v9;
              v16 = 2080;
              v17 = "_FECHeader_PackV0ParitySubHeaderToBuffer";
              v18 = 1024;
              v19 = 400;
              v20 = 1024;
              v21 = v12;
              v22 = 2048;
              v23 = v8;
              _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Pack legacy parity sub header wPktLen=%d, length=%ld", &v14, 0x2Cu);
            }
          }

          else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v13 = *(a1 + 44);
            v14 = 136316162;
            v15 = v9;
            v16 = 2080;
            v17 = "_FECHeader_PackV0ParitySubHeaderToBuffer";
            v18 = 1024;
            v19 = 400;
            v20 = 1024;
            v21 = v13;
            v22 = 2048;
            v23 = v8;
            _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Pack legacy parity sub header wPktLen=%d, length=%ld", &v14, 0x2Cu);
          }
        }

        *a4 += v8;
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _FECHeader_PackV0ParitySubHeaderToBuffer_cold_1();
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _FECHeader_PackV0ParitySubHeaderToBuffer_cold_2();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _FECHeader_PackV0ParitySubHeaderToBuffer_cold_3();
    }
  }
}

void _FECHeader_PackV1ParitySubHeaderToBuffer(uint64_t a1, _WORD *a2, unint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a4)
  {
    if (a3 > 1)
    {
      *a2 = bswap32(*(a1 + 52)) >> 16;
      if (a3 - 2 > 1)
      {
        a2[1] = bswap32(*(a1 + 54)) >> 16;
        *a4 += 4;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v5 = VRTraceErrorLogLevelToCSTR();
          v6 = *MEMORY[0x1E6986650];
          v7 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v8 = *(a1 + 52);
              v9 = *(a1 + 54);
              v12 = 136316162;
              v13 = v5;
              v14 = 2080;
              v15 = "_FECHeader_PackV1ParitySubHeaderToBuffer";
              v16 = 1024;
              v17 = 438;
              v18 = 1024;
              v19 = v8;
              v20 = 1024;
              v21 = v9;
              _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Pack fec data sub header redundantBitsForPayloadSize=%d, paritySequenceNumber=%d", &v12, 0x28u);
            }
          }

          else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v10 = *(a1 + 52);
            v11 = *(a1 + 54);
            v12 = 136316162;
            v13 = v5;
            v14 = 2080;
            v15 = "_FECHeader_PackV1ParitySubHeaderToBuffer";
            v16 = 1024;
            v17 = 438;
            v18 = 1024;
            v19 = v10;
            v20 = 1024;
            v21 = v11;
            _os_log_debug_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Pack fec data sub header redundantBitsForPayloadSize=%d, paritySequenceNumber=%d", &v12, 0x28u);
          }
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _FECHeader_PackV1ParitySubHeaderToBuffer_cold_1();
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _FECHeader_PackV1ParitySubHeaderToBuffer_cold_2();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _FECHeader_PackV1ParitySubHeaderToBuffer_cold_3();
    }
  }
}

void FECHeader_PackHeaderToBuffer(_DWORD *a1, uint64_t a2, _DWORD *a3, unint64_t a4, void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a5 && (*a5 = 0, a1) && a3 && a4 > 0x23)
  {
    v5 = a2;
    *a3 = bswap32(a1[2]);
    v6 = a3 + 1;
    *a5 += 4;
    v7 = a1[2];
    v8 = v7 >> 30;
    v9 = (v7 >> 26) & 1;
    if (v7 >> 30 == 1)
    {
      v9 = ((v7 >> 22) & 1) == 0;
    }

    v10 = ((v7 >> 23) & 1) == 0;
    if (v8)
    {
      v10 = v9;
    }

    if (*a1)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v8 == a2)
    {
      if (a2 == 1)
      {
        if (v11)
        {

          _FECHeader_PackV1ParitySubHeaderToBuffer(a1, v6, a4 - 4, a5);
        }
      }

      else if (a2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            FECHeader_PackHeaderToBuffer_cold_1();
          }
        }
      }

      else if (v11)
      {

        _FECHeader_PackV0ParitySubHeaderToBuffer(a1, v6, a4 - 4, a5);
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v14 = 136316162;
        v15 = v12;
        v16 = 2080;
        v17 = "FECHeader_PackHeaderToBuffer";
        v18 = 1024;
        v19 = 462;
        v20 = 1024;
        v21 = v5;
        v22 = 1024;
        v23 = v8;
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d FEC Header version mismatch expected %d, but got %d", &v14, 0x28u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      FECHeader_PackHeaderToBuffer_cold_2();
    }
  }
}

uint64_t FECUtil_GetRealNumParity(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1 - 1;
    if (a2 == 2)
    {
      if (v2 < 8)
      {
        v3 = &unk_1DBD47DF0;
        return v3[v2];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          FECUtil_GetRealNumParity_cold_1();
        }
      }
    }

    else if (a2 == 1)
    {
      if (v2 < 8)
      {
        v3 = &unk_1DBD47DD0;
        return v3[v2];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          FECUtil_GetRealNumParity_cold_2();
        }
      }
    }

    else
    {
      if (v2 < 8)
      {
        v3 = &unk_1DBD47E10;
        return v3[v2];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          FECUtil_GetRealNumParity_cold_3();
        }
      }
    }

    return 0;
  }

  return a2;
}

float FECUtil_FECLevelofProtectionToRateRatio(int a1)
{
  result = 1.0;
  if ((a1 - 1) <= 4)
  {
    return flt_1DBD47E30[a1 - 1];
  }

  return result;
}

uint64_t FECUtil_FECPercentageToLevelofProtection(unsigned int a1)
{
  if (a1 < 0xC9)
  {
    v1 = 4;
  }

  else
  {
    v1 = 5;
  }

  if (a1 >= 0x65)
  {
    v2 = v1;
  }

  else
  {
    v2 = 3;
  }

  if (a1 >= 0x33)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (a1 >= 26)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (a1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t _FECUtil_FECPercentageToGranularFECLevel(unsigned int a1)
{
  if (a1)
  {
    if (a1 >= 13)
    {
      if (a1 >= 0x1A)
      {
        if (a1 < 0xC9)
        {
          v2 = 9;
        }

        else
        {
          v2 = 10;
        }

        if (a1 >= 0x65)
        {
          v3 = v2;
        }

        else
        {
          v3 = 8;
        }

        if (a1 >= 0x58)
        {
          v4 = v3;
        }

        else
        {
          v4 = 7;
        }

        if (a1 >= 0x4C)
        {
          v5 = v4;
        }

        else
        {
          v5 = 6;
        }

        if (a1 >= 0x3F)
        {
          v6 = v5;
        }

        else
        {
          v6 = 5;
        }

        if (a1 >= 0x33)
        {
          v7 = v6;
        }

        else
        {
          v7 = 4;
        }

        if (a1 >= 0x26)
        {
          return v7;
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

float FECUtil_GranularLevelToPrecentage(int a1)
{
  result = 0.0;
  if ((a1 - 1) <= 9)
  {
    return flt_1DBD47E44[(a1 - 1)];
  }

  return result;
}

uint64_t FECUtil_ParityGroupTransmissionCountForFECLevel(int a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_1DBD47E6C[a1 - 1];
  }
}

uint64_t FECUtil_FindFrameSizeForStatsRecording(uint64_t result)
{
  if (result >= 0x79)
  {
    return 121;
  }

  else
  {
    return result;
  }
}

uint64_t FECUtil_GetExpectedParityPacketCount(uint64_t a1)
{
  if ((*a1 - 1) <= 1)
  {
    return *(a1 + 8) - *(a1 + 6) + 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    FECUtil_GetExpectedParityPacketCount_cold_1();
  }

  return 0;
}

void FECUtil_UpdateParitySequenceNumberHistory(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 4))
    {
      v2 = *(result + 8);
      if (a2 != v2 && (a2 - v2) <= 0x7FFEu)
      {
        if (a2 < v2)
        {
          v2 += 0x10000;
        }

        *(result + 8) = v2 & 0xFFFF0000 | a2;
      }
    }

    else
    {
      *(result + 4) = 1;
      *(result + 6) = a2;
      *(result + 8) = a2;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      FECUtil_UpdateParitySequenceNumberHistory_cold_1();
    }
  }
}

uint64_t FECUtil_ConvertNumberOfSymbolsToPackets(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a1;
    if (a1 < 9)
    {
      LODWORD(v3) = vcvtps_u32_f32(a1 / a2);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v7 = 136316162;
        v8 = v4;
        v9 = 2080;
        v10 = "FECUtil_ConvertNumberOfSymbolsToPackets";
        v11 = 1024;
        v12 = 820;
        v13 = 1024;
        v14 = v3;
        v15 = 1024;
        v16 = a2;
        _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Number of symbols is larger than supported. numberOfSymbols=%d symbolsPerPacket=%d", &v7, 0x28u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        FECUtil_ConvertNumberOfSymbolsToPackets_cold_1();
      }
    }

    return 0;
  }

  return v3;
}

void FECUtil_PackFrameLoss(_WORD *a1, int a2, int a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a4;
    v5 = a3;
    v6 = a2;
    if (a4 == 6)
    {
      v8 = 63;
      v9 = 63;
      if (a2 <= 63)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (a4 == 8)
    {
      v8 = 255;
      if (a2 < 224)
      {
        goto LABEL_11;
      }

      v9 = 223;
LABEL_10:
      v5 = v9 * a3 / a2;
      v6 = v9;
LABEL_11:
      *a1 = ((v6 & v8) << a4) | v5 & v8;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        v12 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *a1;
            v15 = 136316674;
            v16 = v10;
            v17 = 2080;
            v18 = "FECUtil_PackFrameLoss";
            v19 = 1024;
            v20 = 864;
            v21 = 1024;
            v22 = v13;
            v23 = 1024;
            v24 = v6;
            v25 = 1024;
            v26 = v5;
            v27 = 1024;
            v28 = v4;
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FEC loss signal pack=0x%x size=%d loss=%d, lossFeedbackFrameSizeBitfieldLength=%u", &v15, 0x34u);
          }
        }

        else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = *a1;
          v15 = 136316674;
          v16 = v10;
          v17 = 2080;
          v18 = "FECUtil_PackFrameLoss";
          v19 = 1024;
          v20 = 864;
          v21 = 1024;
          v22 = v14;
          v23 = 1024;
          v24 = v6;
          v25 = 1024;
          v26 = v5;
          v27 = 1024;
          v28 = v4;
          _os_log_debug_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d FEC loss signal pack=0x%x size=%d loss=%d, lossFeedbackFrameSizeBitfieldLength=%u", &v15, 0x34u);
        }
      }

      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        FECUtil_PackFrameLoss_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      FECUtil_PackFrameLoss_cold_2();
    }
  }
}

void FECUtil_UnpackFrameLoss(unsigned int a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v5 = a4;
    if (a4 == 6)
    {
      v8 = 63;
LABEL_10:
      *a2 = v8 & (a1 >> a4);
      *a3 = v8 & a1;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        v11 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *a2;
            v13 = *a3;
            v16 = 136316674;
            v17 = v9;
            v18 = 2080;
            v19 = "FECUtil_UnpackFrameLoss";
            v20 = 1024;
            v21 = 886;
            v22 = 1024;
            v23 = a1;
            v24 = 1024;
            v25 = v12;
            v26 = 1024;
            v27 = v13;
            v28 = 1024;
            v29 = v5;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FEC loss signal unpack=0x%x size=%d loss=%d, lossFeedbackFrameSizeBitfieldLength=%u", &v16, 0x34u);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v14 = *a2;
          v15 = *a3;
          v16 = 136316674;
          v17 = v9;
          v18 = 2080;
          v19 = "FECUtil_UnpackFrameLoss";
          v20 = 1024;
          v21 = 886;
          v22 = 1024;
          v23 = a1;
          v24 = 1024;
          v25 = v14;
          v26 = 1024;
          v27 = v15;
          v28 = 1024;
          v29 = v5;
          _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, " [%s] %s:%d FEC loss signal unpack=0x%x size=%d loss=%d, lossFeedbackFrameSizeBitfieldLength=%u", &v16, 0x34u);
        }
      }

      return;
    }

    if (a4 == 8)
    {
      v8 = 255;
      goto LABEL_10;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        FECUtil_UnpackFrameLoss_cold_2();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      FECUtil_UnpackFrameLoss_cold_1();
    }
  }
}

uint64_t VCDispatchQueue_GetCustomRootQueue(uint64_t a1)
{
  v2 = +[VCDispatchQueue defaultManager];

  return [v2 getCustomRootQueueWithPriority:a1 isFixedPriority:1];
}

__CFString *VCSessionMediaState_Name(uint64_t a1)
{
  if (a1 >= 3)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%d)", a1];
  }

  else
  {
    return off_1E85F5C78[a1];
  }
}

uint64_t VCSessionMediaState_FromAVCSessionMediaState(uint64_t result)
{
  if (result >= 3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

void VCMediaRecorderHistoryBuffer_UpdateBufferWithSample(CFIndex a1, const void *a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCMediaRecorderHistoryBuffer_UpdateBufferWithSample_cold_5();
    return;
  }

  if (!a2)
  {
    VCMediaRecorderHistoryBuffer_UpdateBufferWithSample_cold_4();
    return;
  }

  Count = CFDictionaryGetCount(*(a1 + 32));
  v7 = CFArrayGetCount(*(a1 + 24));
  if (v7 != Count)
  {
    VCMediaRecorderHistoryBuffer_UpdateBufferWithSample_cold_1(v7, Count);
    return;
  }

  if (*(a1 + 16) == Count)
  {
    VCMediaRecorderHistoryBuffer_DequeueOneFrame(a1);
  }

  valuePtr = 0;
  v8 = *(a1 + 24);
  v9 = CFArrayGetCount(v8);
  if (v9)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, (v9 - 1));
    CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
    v11 = valuePtr;
  }

  else
  {
    v11 = 0;
  }

  if ((*(a1 + 40) - a3) <= 0x7FFFFFFE)
  {
    goto LABEL_12;
  }

  if ((v11 - a3) <= 0x7FFFFFFE)
  {
    *(a1 + 40) = a3;
LABEL_12:
    a3 = v11 + 480;
    goto LABEL_14;
  }

  *(a1 + 40) = a3;
LABEL_14:
  valuePtr = a3;
  v12 = CFNumberCreate(*(a1 + 48), kCFNumberIntType, &valuePtr);
  if (v12)
  {
    v13 = v12;
    if (CFDictionaryContainsKey(*(a1 + 32), v12))
    {
      VCMediaRecorderHistoryBuffer_UpdateBufferWithSample_cold_2();
    }

    else
    {
      CFArrayAppendValue(*(a1 + 24), v13);
      CFDictionarySetValue(*(a1 + 32), v13, a2);
    }

    CFRelease(v13);
  }

  else
  {
    VCMediaRecorderHistoryBuffer_UpdateBufferWithSample_cold_3();
  }
}

uint64_t VCCarrierBundle_QueryCarrierBundleValueForKey(uint64_t a1, void *a2)
{
  v2 = a2;
  v10[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
    v4 = objc_alloc_init(MEMORY[0x1E69650A0]);
    v10[0] = 0;
    v5 = [v4 getCurrentDataSubscriptionContextSync:v10];
    if (v5 && (v6 = v5, v7 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1], v8 = objc_msgSend(v4, "copyCarrierBundleValueWithDefault:key:bundleType:error:", v6, a1, v7, v10), v7, v8))
    {
      *v2 = v8;
      v2 = 1;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void *VCCarrierBundle_GetPSVoiceOnAPEnabled()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = MEMORY[0x1E695E110];
  result = _VCCarrierBundle_GetValueforKeyHierarchy(&unk_1F579CAF8, v1);
  if (result)
  {
    return [v1[0] BOOLValue];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1)
{

  return [v1 isEqual:a1];
}

uint64_t OUTLINED_FUNCTION_5_11(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, CMTime *time2)
{
  a9 = *v12;
  a10 = *(v12 + 16);

  return CMTimeCompare(&a9, &time2);
}

void _VCMediaStreamManager_UpdateFrequencyLevel(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = "vcMediaStreamUpdateInputFrequencyMetering";
  }

  else
  {
    v4 = "vcMediaStreamUpdateOutputFrequencyMetering";
  }

  if (a3)
  {
    v5 = @"vcMediaStreamInputFreqMetering";
  }

  else
  {
    v5 = @"vcMediaStreamOutputFreqMetering";
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{a2, v5, 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

void OUTLINED_FUNCTION_6_16(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0x1Cu);
}

uint64_t RTPPackGenericDataPacket(char *__src, _DWORD *a2, uint64_t a3, __int16 a4)
{
  v4 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (v5 + 8 > a3)
  {
    RTPPackGenericDataPacket_cold_1(a3, v5 + 8, &v13);
    return v13;
  }

  else
  {
    v7 = __src + 8;
    if (v7 < __src || (v5 <= a3 ? (v8 = v7 > &__src[a3]) : (v8 = 1), !v8 ? (v9 = a3 - 8 >= v5) : (v9 = 0), !v9 || (memmove(v7, __src, v5), v4 < 8)))
    {
      __break(0x5519u);
    }

    result = 0;
    *__src = (v5 << 16) | ((a4 & 0x7FFF) << 32);
    *a2 = v5 + 8;
  }

  return result;
}

uint64_t RTPUnpackGenericDataPacket(uint64_t result, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(result + 8);
  **a2 = 1;
  **(a2 + 8) = 1;
  if (v2 < 8)
  {
    RTPUnpackGenericDataPacket_cold_2(v2, buf);
    return *buf;
  }

  v3 = *(result + 16);
  v4 = (v3 + 2);
  if (v3 + 2 >= v3 + *(result + 8) || v4 < v3)
  {
    __break(0x5519u);
    return result;
  }

  v6 = *v4;
  if (v2 < v6 + 8)
  {
    v7 = 2147549199;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v11 = v8;
        v12 = 2080;
        v13 = "RTPUnpackGenericDataPacket";
        v14 = 1024;
        v15 = 88;
        v16 = 2048;
        v17 = v2;
        v18 = 1024;
        v19 = v6;
        v20 = 2048;
        v21 = v6 + 8;
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid data length. inDataLength:%zu, payloadLength:%hu totalLength=%zu", buf, 0x36u);
      }
    }

    return v7;
  }

  v7 = 0;
  if (CMBlockBufferAppendBufferReference(*(a2 + 48), *result, 8uLL, v6, 0))
  {
    RTPUnpackGenericDataPacket_cold_1(buf);
    return *buf;
  }

  return v7;
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return objc_opt_respondsToSelector();
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return objc_opt_respondsToSelector();
}

BOOL OUTLINED_FUNCTION_31_3()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}