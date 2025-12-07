void sub_1DB8435D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void VTP_ReleaseVFD(pthread_mutex_t *a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 - 1024) > 0xFFFFFC63)
  {
    pthread_mutex_lock(a1 + 66);
    v4 = (v2 - 100);
    v5 = *&a1[106].__opaque[8 * v4 + 48];
    if (v5)
    {
      CFRelease(v5);
      *&a1[106].__opaque[8 * v4 + 48] = 0;
    }

    *&a1[222].__opaque[8 * v4 + 16] = 0xFFFFFFFFLL;
    a1[92].__opaque[v4 + 16] = 0;

    pthread_mutex_unlock(a1 + 66);
  }

  else
  {
    *__error() = 22;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_ReleaseVFD_cold_1();
      }
    }
  }
}

uint64_t PrepareOFTMAC(const __CFString *a1, const void *a2, int a3, _DWORD *a4)
{
  macOut[3] = *MEMORY[0x1E69E9840];
  memset(macOut, 170, 20);
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        PrepareOFTMAC_cold_3();
      }
    }

    return 0xFFFFFFFFLL;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if (MaximumSizeForEncoding <= 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        PrepareOFTMAC_cold_2();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v10 = MaximumSizeForEncoding;
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  MEMORY[0x1EEE9AC00](CStringPtr);
  memset(macOut - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v10);
  if (CStringPtr || (CStringPtr = macOut - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), CFStringGetCString(a1, CStringPtr, v10, 0x8000100u)))
  {
    v12 = strlen(CStringPtr);
    CCHmac(0, CStringPtr, v12, a2, a3, macOut);
    result = 0;
    *a4 = macOut[0];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        PrepareOFTMAC_cold_1();
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void PrepareOFTCRC32(uint64_t a1, int a2, int a3, unsigned int *a4)
{
  v8 = crc32(0, 0, 0);
  if (a1 && a4)
  {
    if (a3 < a2)
    {
      v9 = (a1 + 16 * a3 + 8);
      v10 = a2 - a3;
      do
      {
        v11 = *(v9 - 1);
        v12 = *v9;
        v9 += 4;
        v8 = crc32(v8, v11, v12);
        --v10;
      }

      while (v10);
    }

    *a4 = v8;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      PrepareOFTCRC32_cold_1();
    }
  }
}

double VTP_AddNAT64PrefixToIPv4Destination(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(&v6[4], 170, 24);
  if (*(a1 + 392) == 1 && *(a2 + 1) == 2)
  {
    *v6 = 7708;
    *&v6[2] = *(a2 + 2);
    nw_nat64_synthesize_v6();
    *a3 = 28;
    *(a2 + 12) = *&v6[12];
    result = *v6;
    *a2 = *v6;
  }

  return result;
}

void VTP_DemuxPacketsToVFDList(uint64_t a1, int *a2, _DWORD *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v54 = a2;
  if (!a2)
  {
    return;
  }

  v4 = a2;
  v6 = (a1 + 21912);
  v53 = a1 + 14232;
  do
  {
    v7 = v4;
    v4 = *(v4 + 68);
    *(v7 + 68) = 0;
    if (a3 && *v7 != 0x20000)
    {
      ++*a3;
    }

    v8 = *(a1 + 5576);
    if (!v8)
    {
LABEL_55:
      _VTP_ReleaseVPKTPacket(a1, &v54, 7, 0);
      ++v6[4];
      goto LABEL_107;
    }

    v9 = *v7;
    while ((v9 & v8[7]) == 0)
    {
LABEL_47:
      v8 = *(v8 + 47);
      if (!v8)
      {
        goto LABEL_55;
      }
    }

    v10 = v8[4];
    if (v10 == 2)
    {
      goto LABEL_12;
    }

    v11 = v7[58];
    if (v11 <= 3)
    {
      if (v11 >= 4)
      {
        goto LABEL_17;
      }

LABEL_12:
      v12 = v8[5];
      v13 = v7[1];
LABEL_13:
      if (v12 == v13)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    if (v11 == 4)
    {
      goto LABEL_52;
    }

    if (v11 != 5)
    {
      if (v11 != 6)
      {
        goto LABEL_17;
      }

LABEL_52:
      v12 = v7[60];
      v13 = v8[106];
      goto LABEL_13;
    }

    if (*(v7 + 30) == *(v8 + 53))
    {
LABEL_14:
      if ((v9 & 0x1000) != 0)
      {
        v55 = v7;
        if ((v7[55] & 1) != 0 || v7[52] != 3)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v31 = VRTraceErrorLogLevelToCSTR();
            v32 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v33 = *(v7 + 220);
              v34 = v7[52] != 3;
              *buf = 136316162;
              v57 = v31;
              v58 = 2080;
              v59 = "VTP_PassHsk";
              v60 = 1024;
              v61 = 4215;
              v62 = 1024;
              v63 = v33;
              v64 = 1024;
              v65 = v34;
              _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP_PassHsk bad packet. encrypted? %d type_check %d", buf, 0x28u);
            }
          }
        }

        else
        {
          DTLS_UpdateHandshake(*(v53 + 8 * *v8 - 800), *(v7 + 71), v7[140], v7[53]);
        }

        v35 = *v8;
        v36 = &v55;
        v37 = a1;
        v38 = 5;
        goto LABEL_98;
      }

      if ((*v7 & 0x301F0) == 0 || v10 == 1)
      {
        VTP_PassPkt(a1, v8, v7);
        ++v6[3];
        goto LABEL_107;
      }
    }

LABEL_17:
    if ((*v7 & 0x30000) != 0)
    {
      v14 = v8[20];
      if (v14)
      {
        if (v14 == v7[54])
        {
          VTP_PassPkt(a1, v8, v7);
          if ((*v54 & 0x10000) != 0 || (*v54 & 0x20000) != 0 && *(v54 + 426) == 1)
          {
            ++v6[2];
          }

          goto LABEL_107;
        }
      }
    }

    if ((v9 & 0x100) != 0 && v7[50] == v8[19])
    {
      VTP_PassPkt(a1, v8, v7);
      ++v6[1];
      goto LABEL_107;
    }

    if ((*v7 & 0xC0) != 0 && *(v8 + 27) == 1 && v8[18] == v7[49])
    {
      VTP_PassPkt(a1, v8, v7);
      ++*v6;
      goto LABEL_107;
    }

    if ((*v7 & 0xF0) == 0 || !*(v8 + 26))
    {
      goto LABEL_47;
    }

    v15 = v7[48];
    LOBYTE(v16) = 1;
    for (i = 11; i != 18; ++i)
    {
      if (v15)
      {
        v18 = v8[i] == v15;
        if (v16)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v18 = 0;
        if (v16)
        {
LABEL_30:
          v16 = v8[i] == 0;
          if (v18)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      v16 = 0;
      if (v18)
      {
        goto LABEL_37;
      }
    }

    if (!v16)
    {
      goto LABEL_47;
    }

    v16 = 1;
LABEL_37:
    if (*(v7 + 376) == 1 && v8[20] != v7[54])
    {
      goto LABEL_47;
    }

    if (v9 != 48)
    {
      if (v9 & 0x30) != 0 && (*(a1 + 5896))
      {
        goto LABEL_57;
      }

      goto LABEL_104;
    }

    v19 = *(v8 + 4);
    if (!v19)
    {
      goto LABEL_46;
    }

    v20 = *(*(v7 + 71) + 1);
    if ((v20 & 0x7D) == 0x7C)
    {
      goto LABEL_56;
    }

    v21 = v20 & 0x7F;
    if (v21 == 110)
    {
      goto LABEL_56;
    }

    v22 = v8[10];
    if (v22 < 1)
    {
LABEL_46:
      if (v16)
      {
        goto LABEL_47;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v49 = *(*(v54 + 71) + 1);
          v50 = v54[48];
          v51 = *v8;
          *buf = 136316418;
          v57 = v39;
          v58 = 2080;
          v59 = "VTP_DemuxPacketsToVFDList";
          v60 = 1024;
          v61 = 4334;
          v62 = 1024;
          v63 = v49;
          v64 = 1024;
          v65 = v50;
          v66 = 1024;
          LODWORD(v67) = v51;
          _os_log_error_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_ERROR, " [%s] %s:%d VTP received message with mismatched payload=%02X for ssrc=%04X on vfd=%d", buf, 0x2Eu);
        }
      }

      v35 = *v8;
      v36 = &v54;
      v37 = a1;
      v38 = 6;
LABEL_98:
      _VTP_ReleaseVPKTPacket(v37, v36, v38, v35);
      goto LABEL_107;
    }

    while (1)
    {
      v23 = *v19++;
      if (v23 == v21)
      {
        break;
      }

      if (!--v22)
      {
        goto LABEL_46;
      }
    }

LABEL_56:
    *v7 = 48;
    if (*(a1 + 5896) == 1)
    {
LABEL_57:
      v24 = *(v7 + 71);
      v25 = *(v24 + 1);
      v26 = 16;
      if ((v25 & 0x7E) != 0x70)
      {
        v27 = v25 & 0x7F;
        if (v27 != 101 && v27 >= 0x18 && v27 != 119 && (v27 - 97) >= 2u && (v27 - 121) >= 2u && v27 != 111 && (v25 & 0x7C) != 0x68 && v27 != 108)
        {
          v26 = 32;
          if ((vmaxv_u16(vceq_s16(vdup_n_s16(v27), 0x7C0064007E007BLL)) & 1) == 0 && (v27 - 24) >= 0xBu && (v27 - 109) >= 2u)
          {
            v30 = v25 + 64;
            if (v30 > 0xEu)
            {
              v26 = 0;
            }

            else
            {
              v26 = dword_1DBD49AB0[v30];
            }
          }
        }
      }

      v41 = VTP_NotifyAFRCRxEstimate(*(v8 + 48), v26, v24, v7[140], *(v7 + 223), *(v7 + 23));
      if ((v41 & 0xFFFFFFFD) != 0)
      {
        v42 = v41;
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v52 = VRTraceErrorLogLevelToCSTR();
          v43 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v44 = *v8;
            v45 = *(v8 + 48);
            v46 = *v7;
            v47 = *(v7 + 70);
            *buf = 136317186;
            v57 = v52;
            v58 = 2080;
            v59 = "VTP_BandwidthEstimationWithMediaPacket";
            v60 = 1024;
            v61 = 4232;
            v62 = 1024;
            v63 = v42;
            v64 = 1024;
            v65 = v44;
            v66 = 2048;
            v67 = v45;
            v68 = 1024;
            v69 = v26;
            v70 = 1024;
            v71 = v46;
            v72 = 1024;
            v73 = v47;
            _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d notify AFRC failed (%08X): VFD %d AFRC handle %p  packet type %d/%d packet length: %d", buf, 0x44u);
          }
        }
      }
    }

LABEL_104:
    v48 = v54;
    if (v16)
    {
      v8[11] = v54[48];
    }

    VTP_PassPkt(a1, v8, v48);
    ++*v6;
LABEL_107:
    v54 = v4;
  }

  while (v4);
}

void _VTP_LogOSChannelInfoToIDSDatagramChannel(void *a1)
{
  if (a1)
  {

    [a1 osChannelInfoLog];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VTP_LogOSChannelInfoToIDSDatagramChannel_cold_1();
    }
  }
}

uint64_t VTP_SetConnectionFlagsForPacket(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  values[1] = *MEMORY[0x1E69E9840];
  v18 = 0;
  *(a3 + 224) = -1;
  pthread_rwlock_rdlock((a1 + 21648));
  Count = CFDictionaryGetCount(*(a1 + 21848));
  v9 = 8 * Count;
  v10 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v17[-v10];
  if (MEMORY[0x1EEE9AC00](Count))
  {
    v12 = memset(&v17[-v10], 170, v9);
    MEMORY[0x1EEE9AC00](v12);
    v13 = &v17[-v10];
    memset(v13, 170, v9);
    CFDictionaryGetKeysAndValues(*(a1 + 21848), v11, v13);
    if (Count >= 1)
    {
      while (1)
      {
        v14 = VCConnectionManager_CopyConnection(*v13, a4, &v18);
        if (v14)
        {
          break;
        }

        ++v11;
        ++v13;
        if (!--Count)
        {
          goto LABEL_8;
        }
      }

      v15 = v14;
      *(a3 + 224) = v18 ^ 1;
      *(a3 + 228) = VCConnection_ConnectionID(v14);
      CFNumberGetValue(*v11, kCFNumberIntType, (a3 + 216));
      *(a3 + 223) = VCConnection_IsIPv6(v15);
      *(a3 + 221) = VCConnection_IsRelay(v15);
      CFRelease(v15);
    }
  }

  else
  {
    CFDictionaryGetKeysAndValues(*(a1 + 21848), &v17[-v10], values);
  }

LABEL_8:
  result = pthread_rwlock_unlock((a1 + 21648));
  if (*(a3 + 224) == -1)
  {
    if (a2)
    {
      result = VCSDInfoIsPacketFromKnownRemote((a2 + 416), a4);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    else if ((*a4 - 4) > 2)
    {
      return result;
    }

    *(a3 + 224) = 0;
  }

  return result;
}

uint64_t VTP_ProcessPacketType(uint64_t a1, int *a2, int a3, uint64_t a4)
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = *(a4 + 568);
  v6 = *(a4 + 560);
  dataLength = v6;
  if (!v6)
  {
    *a4 = 0;
    return v6;
  }

  v7 = a3;
  v8 = a1;
  if (!a2 || *a2 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 + 8 * *a2 + 6040);
  }

  v10 = *v5;
  if (v10 < 0)
  {
    v21 = 0;
    if (v9)
    {
      v22 = v6;
      LOBYTE(v23) = 0;
      v24 = 0;
      if ((v10 & 0xC0) != 0x80)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VTP_ProcessPacketType_cold_1();
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      v22 = v6;
      LOBYTE(v23) = 0;
      v24 = 0;
    }

    goto LABEL_31;
  }

  v13 = v6 - 4;
  if (v6 >= 4 && (*v5 & 0xC0) == 0x40)
  {
    v14 = 4 * (v13 == bswap32(*(v5 + 1)) >> 16);
  }

  else
  {
    v14 = 0;
  }

  v15 = &v5[v14 / 4];
  v16 = crc32(0, 0, 0);
  if (crc32(v16, v15, v6 - v14) != 558161692)
  {
    v21 = 0;
    if (v9)
    {
      v22 = v6;
      v24 = 0;
      v7 = a3;
      v8 = a1;
      LOBYTE(v23) = 0;
      if (v14)
      {
        if ((*v15 & 0xC0) != 0x80)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              VTP_ProcessPacketType_cold_2();
            }
          }

          goto LABEL_52;
        }

        dataLength = v6 - v14;
        memmove(v5, &v5[v14 / 4], (v6 - v14));
        v21 = 0;
        LOBYTE(v23) = 0;
        v24 = 0;
        v22 = v6 - v14;
      }
    }

    else
    {
      v22 = v6;
      v24 = 0;
      v7 = a3;
      v8 = a1;
      LOBYTE(v23) = 0;
    }

LABEL_31:
    LOBYTE(v64) = v23;
    v65 = v24;
    if (v22 >= 4 && *v5 == -272716322)
    {
      v25 = v21;
      *(a4 + 200) = bswap32(v5[2]);
      v26 = 256;
    }

    else
    {
      v25 = v21;
      ProcessRelayData(v5, &dataLength);
      v27 = dataLength;
      v28 = memchr(v5, 10, dataLength);
      if (v28 && strnstr(v5, "SIP/", v28 - v5))
      {
        v26 = 2;
      }

      else
      {
        v29 = *v5 >> 6;
        if (v29 > 1)
        {
          if (v29 != 2)
          {
            if (VRTraceGetErrorLogLevelForModule() < 5)
            {
              return 2148991010;
            }

            VTP_ProcessPacketType_cold_17(v5, &dataLength_4);
            return dataLength_4;
          }

          v30 = *(v5 + 1);
          if ((v30 & 0xFE) != 0xC0 && (v30 - 200) >= 7)
          {
            v26 = 48;
          }

          else
          {
            v26 = 192;
          }
        }

        else if (v29)
        {
          v26 = 0x10000;
        }

        else if (v27 == 16)
        {
          v26 = 4;
        }

        else
        {
          v26 = 8;
        }
      }
    }

LABEL_56:
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      v34 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          dataLength_4 = 136315906;
          v68 = v32;
          v69 = 2080;
          v70 = "VTP_ProcessPacketType";
          v71 = 1024;
          v72 = 6413;
          v73 = 1024;
          v74 = v26;
          _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d received packet with type=%d", &dataLength_4, 0x22u);
        }
      }

      else if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        VTP_ProcessPacketType_cold_4();
      }
    }

    if (dataLength != v6 && (_VTP_ShrinkPacket(v8, dataLength, a4) & 0x80000000) != 0)
    {
      return 2148990980;
    }

    *a4 = v26;
    *(a4 + 4) = v7;
    *(a4 + 208) = v25;
    *(a4 + 212) = v65;
    *(a4 + 220) = v64;
    *(a4 + 372) = v26;
    if ((v26 & 0x30) != 0)
    {
      *(a4 + 192) = bswap32(v5[2]);
      kdebug_trace();
      return 0;
    }

    if ((v26 & 0xC0) == 0)
    {
      return 0;
    }

    *a4 = v26 | 0x40;
    v35 = bswap32(v5[1]);
    *(a4 + 192) = v35;
    *(a4 + 536) = v35;
    if (v6 <= 3)
    {
      VTP_ProcessPacketType_cold_12();
      return dataLength_4;
    }

    v36 = *v5;
    if ((v36 >> 8) - 207 < 0xFFFFFFFE)
    {
      return 0;
    }

    v37 = *(v5 + 1);
    v38 = __rev16(v37);
    if (4 * v38 > v6)
    {
      VTP_ProcessPacketType_cold_11();
      return dataLength_4;
    }

    if (*(a4 + 376) != 1)
    {
      return 0;
    }

    if ((*(a4 + 441) & 1) == 0)
    {
      VTP_ProcessPacketType_cold_5();
      return dataLength_4;
    }

    if ((v36 & 0xFF00) != 0xCE00)
    {
      goto LABEL_121;
    }

    v39 = v36 & 0x1F;
    if (v39 != 15)
    {
      if (v39 == 4)
      {
        if (v37 != 1024)
        {
          VTP_ProcessPacketType_cold_8();
          return dataLength_4;
        }

        v51 = 3;
        goto LABEL_120;
      }

      if (v39 == 1)
      {
        if (v37 != 512)
        {
          VTP_ProcessPacketType_cold_9();
          return dataLength_4;
        }

        goto LABEL_119;
      }

LABEL_121:
      if ((*v5 & 0xFF1F) != 0xCD01)
      {
        return 0;
      }

      if (v38 < 0x103)
      {
        v6 = 0;
        *(a4 + 196) = bswap32(v5[2]);
        return v6;
      }

      VTP_ProcessPacketType_cold_10();
      return dataLength_4;
    }

    v52 = v5[3];
    if (v52 == 83886080)
    {
      if (v37 != 1024)
      {
        VTP_ProcessPacketType_cold_6();
        return dataLength_4;
      }
    }

    else
    {
      if (v52 != 100663296)
      {
        goto LABEL_121;
      }

      if (v37 != 1280)
      {
        VTP_ProcessPacketType_cold_7();
        return dataLength_4;
      }
    }

LABEL_119:
    v51 = 2;
LABEL_120:
    *(a4 + 196) = bswap32(v5[v51]);
    goto LABEL_121;
  }

  v17 = v13 - v14;
  if ((v13 - v14) < 6 || (v18 = *v15, (v18 & 0xD0) != 0) || (v19 = *(v15 + 1), v20 = *(v15 + 2), v17 <= 9) && (v18 & 8) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_ProcessPacketType_cold_15();
      }
    }

LABEL_52:
    v6 = 2148991010;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_ProcessPacketType_cold_16();
      }
    }

    return v6;
  }

  if ((v18 & 8) != 0)
  {
    v47 = v9;
    v42 = *(v15 + 1);
    v48 = v20;
    valid = IsValidOFTMAC(v47, &v5[v14 / 4], v17, v19);
    v20 = v48;
    if (!valid)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_ProcessPacketType_cold_3();
        }
      }

      goto LABEL_52;
    }
  }

  else
  {
    v41 = (v19 & 0xFE) != 4 && (v19 & 0xFFFFFFFD) != 1 || v9 == 0;
    v42 = *(v15 + 1);
    if (!v41)
    {
      v43 = v9;
      v44 = v20;
      Length = CFStringGetLength(v43);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v20 = v44;
      if (MaximumSizeForEncoding >= 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VTP_ProcessPacketType_cold_14();
          }
        }

        goto LABEL_52;
      }
    }
  }

  v64 = v18 >> 5;
  v65 = bswap32(v20);
  LODWORD(v50) = v14 + 6;
  if ((v18 & 8) != 0)
  {
    v50 = v14 | 0xA;
  }

  else
  {
    v50 = v50;
  }

  v22 = v13 - v50;
  dataLength = v13 - v50;
  memmove(v5, v5 + v50, v13 - v50);
  v21 = v42;
  if (v42 <= 2)
  {
    v7 = a3;
    if (v42)
    {
      v8 = a1;
      v24 = v65;
      if (v42 != 1)
      {
        *(a4 + 221) = ProcessRelayData(v5, &dataLength);
        v26 = 2048;
        v25 = 2;
        goto LABEL_56;
      }

      v23 = v18 >> 5;
      if ((v18 & 0x20) == 0)
      {
        *(a4 + 221) = ProcessRelayData(v5, &dataLength);
        v26 = 1024;
        v25 = 1;
        goto LABEL_56;
      }

      v21 = 1;
      goto LABEL_31;
    }

    v8 = a1;
    goto LABEL_149;
  }

  v7 = a3;
  if (v42 <= 4)
  {
    v8 = a1;
    v24 = v65;
    if (v42 == 3)
    {
      v23 = v18 >> 5;
      if ((v18 & 0x20) == 0)
      {
        *(a4 + 221) = ProcessRelayData(v5, &dataLength);
        v26 = 4096;
        v25 = 3;
        goto LABEL_56;
      }

      v21 = 3;
    }

    else
    {
      v23 = v18 >> 5;
      if ((v18 & 0x20) != 0)
      {
        *(a4 + 221) = ProcessRelayData(v5, &dataLength);
        v26 = 0x2000;
        v25 = 4;
        goto LABEL_56;
      }

      v21 = 4;
    }

    goto LABEL_31;
  }

  v8 = a1;
  if (v42 == 5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v57 = VRTraceErrorLogLevelToCSTR();
      v58 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        dataLength_4 = 136315650;
        v68 = v57;
        v69 = 2080;
        v70 = "VTP_ProcessPacketType";
        v71 = 1024;
        v72 = 6325;
        _os_log_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ++++++++++++++++ ARPL packet detected in VTP_RecvPkt(...) ++++++++++++++++", &dataLength_4, 0x1Cu);
      }
    }

    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if ((v18 & 0x20) != 0)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v60 = VRTraceErrorLogLevelToCSTR();
        v61 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          dataLength_4 = 136315650;
          v68 = v60;
          v69 = 2080;
          v70 = "VTP_ProcessPacketType";
          v71 = 1024;
          v72 = 6327;
          _os_log_impl(&dword_1DB56E000, v61, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d >>>>> ARPL packetin VTP_RecvPkt(...) is encrypted <<<<<", &dataLength_4, 0x1Cu);
        }
      }

      *(a4 + 221) = ProcessRelayData(v5, &dataLength);
      v26 = 0x2000;
      v25 = 5;
      goto LABEL_56;
    }

    if (ErrorLogLevelForModule >= 7)
    {
      v62 = VRTraceErrorLogLevelToCSTR();
      v63 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        dataLength_4 = 136315650;
        v68 = v62;
        v69 = 2080;
        v70 = "VTP_ProcessPacketType";
        v71 = 1024;
        v72 = 6332;
        _os_log_impl(&dword_1DB56E000, v63, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d >>>>> ARPL packetin VTP_RecvPkt(...) is UNENCRYPTED <<<<<", &dataLength_4, 0x1Cu);
      }
    }

    v21 = 5;
LABEL_149:
    v23 = v18 >> 5;
    v24 = v65;
    goto LABEL_31;
  }

  if (v42 == 6)
  {
    *(a4 + 221) = ProcessRelayData(v5, &dataLength);
    v26 = 0x8000;
    v25 = 6;
    goto LABEL_56;
  }

  v6 = 2148991010;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v54 = VRTraceErrorLogLevelToCSTR();
    v55 = *MEMORY[0x1E6986650];
    v56 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        dataLength_4 = 136316162;
        v68 = v54;
        v69 = 2080;
        v70 = "VTP_ProcessPacketType";
        v71 = 1024;
        v72 = 6357;
        v73 = 1024;
        v74 = 6357;
        v75 = 1024;
        v76 = v42;
        _os_log_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VTP/VTransport.m:%d: unrecognized openfacetime type=%d", &dataLength_4, 0x28u);
      }
    }

    else if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      VTP_ProcessPacketType_cold_13();
    }
  }

  return v6;
}

int *VTP_UpdateReceivedBytes(int a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v16 = CheckInHandleDebug();
  if (v16)
  {
    v17 = v16;
    if (a4)
    {
      v18 = 48;
    }

    else
    {
      v18 = 28;
    }

    atomic_fetch_add_explicit((v16 + 8), v18 + a2, memory_order_relaxed);
    if (a1)
    {
      pthread_rwlock_rdlock((v16 + 21648));
      v19 = VTP_getConnectionManagerForCallID(v17, a1);
      VCConnectionManager_UpdateReceivedPacketsAndBytes(v19, a5, a2, a3, a6, a7, a8);
      pthread_rwlock_unlock((v17 + 21648));
    }

    return CheckOutHandleDebug();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_UpdateReceivedBytes_cold_1();
      }
    }

    result = __error();
    *result = 13;
  }

  return result;
}

uint64_t _VTP_ShrinkPacket(uint64_t a1, size_t dataLength, uint64_t a3)
{
  blockBufferOut[1] = *MEMORY[0x1E69E9840];
  totalLengthOut = 0;
  blockBufferOut[0] = 0;
  v3 = 2148990977;
  v9 = 0;
  if (!a1)
  {
    return v3;
  }

  if (!a3)
  {
    return v3;
  }

  v5 = *(a3 + 560);
  if (v5 < dataLength)
  {
    return v3;
  }

  if (v5 == dataLength)
  {
    return 0;
  }

  if (CMBlockBufferCreateWithBufferReference(*(a1 + 22024), *(a3 + 552), 0, dataLength, 0, blockBufferOut))
  {
    _VTP_ShrinkPacket_cold_1();
  }

  else
  {
    if (!CMBlockBufferGetDataPointer(blockBufferOut[0], 0, 0, &totalLengthOut, &v9))
    {
      v6 = *(a3 + 552);
      if (v6)
      {
        CFRelease(v6);
      }

      v3 = 0;
      *(a3 + 552) = blockBufferOut[0];
      v7 = totalLengthOut;
      *(a3 + 568) = v9;
      *(a3 + 560) = v7;
      return v3;
    }

    _VTP_ShrinkPacket_cold_2();
  }

  v3 = 2148990980;
  if (blockBufferOut[0])
  {
    CFRelease(blockBufferOut[0]);
  }

  return v3;
}

uint64_t _VTP_AllocatePacketWithBufferFreeCallback(uint64_t a1, void *a2, size_t a3, void (__cdecl *a4)(void *, void *, size_t), void *a5, uint64_t *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = VCMemoryPool_Alloc(*(a1 + 5872));
  v22 = v12;
  if (!v12)
  {
    _VTP_AllocatePacketWithBufferFreeCallback_cold_5();
    goto LABEL_22;
  }

  v13 = v12;
  *(v12 + 73) = v12;
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_8;
  }

  v14 = VRTraceErrorLogLevelToCSTR();
  v15 = *MEMORY[0x1E6986650];
  v16 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(v13 + 576);
      v20 = *(v13 + 584);
      buf.version = 136316418;
      buf.AllocateBlock = v14;
      LOWORD(buf.FreeBlock) = 2080;
      *(&buf.FreeBlock + 2) = "_VTP_AllocatePacketWithBufferFreeCallback";
      WORD1(buf.refCon) = 1024;
      HIDWORD(buf.refCon) = 810;
      v24 = 2048;
      v25 = v13;
      v26 = 1024;
      v27 = v19;
      v28 = 2048;
      v29 = v20;
      _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Alloc packet %p with tag=0x%X, pktAddress=0x%llX", &buf, 0x36u);
      if (a3)
      {
        goto LABEL_9;
      }

LABEL_18:
      *(v13 + 560) = 0u;
      goto LABEL_19;
    }

LABEL_8:
    if (a3)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_8;
  }

  v17 = *(v13 + 576);
  v18 = *(v13 + 584);
  buf.version = 136316418;
  buf.AllocateBlock = v14;
  LOWORD(buf.FreeBlock) = 2080;
  *(&buf.FreeBlock + 2) = "_VTP_AllocatePacketWithBufferFreeCallback";
  WORD1(buf.refCon) = 1024;
  HIDWORD(buf.refCon) = 810;
  v24 = 2048;
  v25 = v13;
  v26 = 1024;
  v27 = v17;
  v28 = 2048;
  v29 = v18;
  _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Alloc packet %p with tag=0x%X, pktAddress=0x%llX", &buf, 0x36u);
  if (!a3)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (a4)
  {
    buf.version = 0;
    buf.AllocateBlock = 0;
    buf.FreeBlock = a4;
    buf.refCon = a5;
    if (CMBlockBufferCreateWithMemoryBlock(*(a1 + 22024), a2, a3, 0, &buf, 0, a3, 1u, (v13 + 552)))
    {
      _VTP_AllocatePacketWithBufferFreeCallback_cold_1();
LABEL_22:
      _VTP_ReleaseVPKTPacket(a1, &v22, 1, 0);
      v13 = 0;
      result = 2148990980;
      goto LABEL_20;
    }
  }

  else
  {
    if (VCBlockBufferUtlities_Create(*(a1 + 22024), 0, a3, *(a1 + 22032), 0, 0, a3, 1u, (v13 + 552)))
    {
      _VTP_AllocatePacketWithBufferFreeCallback_cold_2();
      goto LABEL_22;
    }

    if (a2 && CMBlockBufferReplaceDataBytes(a2, *(v13 + 552), 0, a3))
    {
      _VTP_AllocatePacketWithBufferFreeCallback_cold_3();
      goto LABEL_22;
    }
  }

  if (CMBlockBufferGetDataPointer(*(v13 + 552), 0, 0, (v13 + 560), (v13 + 568)))
  {
    _VTP_AllocatePacketWithBufferFreeCallback_cold_4();
    goto LABEL_22;
  }

LABEL_19:
  result = 0;
  *(v13 + 516) = 1;
LABEL_20:
  *a6 = v13;
  return result;
}

uint64_t VTP_IFIndexToName(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = a2;
  v28 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 5792));
  v6 = *(a1 + 5864);
  if (v6 < 1)
  {
    LODWORD(v7) = 0;
    v9 = -1;
  }

  else
  {
    v7 = 0;
    v8 = (*(a1 + 5856) + 4);
    v9 = -1;
    while (1)
    {
      v10 = *(v8 - 1);
      if (v10 == v4)
      {
        break;
      }

      if (v10)
      {
        v11 = -1;
      }

      else
      {
        v11 = v7;
      }

      if (v9 == -1)
      {
        v9 = v11;
      }

      ++v7;
      v8 = (v8 + 20);
      if (v6 == v7)
      {
        goto LABEL_14;
      }
    }

    *a3 = *v8;
    LODWORD(v6) = *(a1 + 5864);
  }

  if (v7 == v6)
  {
LABEL_14:
    if (if_indextoname(v4, a3))
    {
      if (v9 != -1)
      {
        v12 = *(a1 + 5856);
        goto LABEL_17;
      }

      v9 = *(a1 + 5864);
      *(a1 + 5864) = 2 * v9;
      if (2 * v9)
      {
        v12 = malloc_type_realloc(*(a1 + 5856), 40 * v9, 0x1000040A86A77D5uLL);
        if (v12)
        {
          *(a1 + 5856) = v12;
LABEL_17:
          v13 = &v12[20 * v9];
          *v13 = v4;
          *(v13 + 4) = *a3;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            v16 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v18 = 136316162;
                v19 = v14;
                v20 = 2080;
                v21 = "VTP_IFIndexToName";
                v22 = 1024;
                v23 = 3977;
                v24 = 1024;
                v25 = v4;
                v26 = 2080;
                v27 = a3;
                _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP_IFIndexToName mapping [if_index:%d if_name:%s]\n", &v18, 0x2Cu);
              }
            }

            else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v18 = 136316162;
              v19 = v14;
              v20 = 2080;
              v21 = "VTP_IFIndexToName";
              v22 = 1024;
              v23 = 3977;
              v24 = 1024;
              v25 = v4;
              v26 = 2080;
              v27 = a3;
              _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VTP_IFIndexToName mapping [if_index:%d if_name:%s]\n", &v18, 0x2Cu);
            }
          }

          return pthread_mutex_unlock((a1 + 5792));
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VTP_IFIndexToName_cold_2();
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          VTP_IFIndexToName_cold_1();
        }
      }
    }

    else
    {
      __error();
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_IFIndexToName_cold_3();
        }
      }
    }
  }

  return pthread_mutex_unlock((a1 + 5792));
}

uint64_t ProcessRelayData(unsigned __int16 *__dst, int *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *__dst;
  if ((v5 & 0xC0) == 0)
  {
    if (v5 == 1792)
    {
      memset(__b, 170, sizeof(__b));
      if ((ParseSTUNMessage() & 0x80000000) == 0 && GetSTUNAttr())
      {
        STUNAttr = GetSTUNAttr();
        if (STUNAttr)
        {
          v10 = *(STUNAttr + 8);
          if (v10 >= 1 && v10 < v4)
          {
            *a2 = v10;
            memcpy(__dst, *(STUNAttr + 16), v10);
          }
        }

        FreeSTUNMessage();
        return 1;
      }

      FreeSTUNMessage();
    }

    return 0;
  }

  result = 0;
  if (v4 >= 4 && (v5 & 0xC0) == 0x40)
  {
    v7 = bswap32(__dst[1]);
    if (v4 - 4 == HIWORD(v7))
    {
      v8 = HIWORD(v7);
      *a2 = v8;
      memmove(__dst, __dst + 2, v8);
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t IsValidOFTMAC(const __CFString *a1, uint64_t a2, int a3, int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    if (MaximumSizeForEncoding >= 1)
    {
      v9 = MaximumSizeForEncoding;
      CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
      MEMORY[0x1EEE9AC00](CStringPtr);
      memset(&macOut[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], 170, v9);
      if (CStringPtr || (result = CFStringGetCString(a1, &macOut[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v9, 0x8000100u), CStringPtr = &macOut[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], result))
      {
        memset(macOut, 170, 20);
        v12 = strlen(CStringPtr);
        CCHmac(0, CStringPtr, v12, (a2 + 10), a3 - 10, macOut);
        return *macOut == *(a2 + 6);
      }

      return result;
    }

    return 0;
  }

  if (a4 > 1)
  {
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *macOut = 136315906;
      *&macOut[4] = v14;
      *&macOut[12] = 2080;
      *&macOut[14] = "IsValidOFTMAC";
      v17 = 1024;
      v18 = 3589;
      v19 = 1024;
      v20 = a4;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skip OFT MAC validation for packet(%d), sessionID not ready.", macOut, 0x22u);
    }
  }

  return 1;
}

uint64_t VTP_PassPkt(uint64_t a1, unsigned int *a2, int *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  pthread_rwlock_rdlock((a1 + 5584));
  pthread_mutex_lock((a2 + 34));
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = -1;
    do
    {
      v8 = v6;
      v6 = *(v6 + 544);
      ++v7;
    }

    while (v6);
    *(v8 + 544) = a3;
    if (v7 >= 0x32 && 50 * (v7 / 0x32) == v7)
    {
      memset(v32, 0, 96);
      VCUtil_ConvertStreamIDArrayToString((a3 + 96), *(a3 + 408), v32, 0x60uLL);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a3 + 70);
          v12 = *a3;
          v13 = *a2;
          *buf = 136316930;
          *&buf[4] = v9;
          v42 = 2080;
          v43 = "VTP_PassPkt";
          v44 = 1024;
          v45 = 4164;
          v46 = 1024;
          v47 = v7;
          v48 = 1024;
          v49 = v11;
          v50 = 1024;
          v51 = v12;
          v52 = 2080;
          v53 = v32;
          v54 = 1024;
          v55 = v13;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ###### VTP_PassPkt packet list is growing and not draining!!! count:%d (len=%d type=%04X) streamIDs:%s, vfd:%d ######", buf, 0x3Eu);
        }
      }
    }
  }

  else
  {
    *(a2 + 16) = a3;
  }

  pthread_cond_signal((a2 + 50));
  pthread_mutex_unlock((a2 + 34));
  v14 = *(a1 + 5784);
  if (v14)
  {
    v15 = MEMORY[0x1E6986650];
    do
    {
      if (*(v14 + 121))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *v15;
          v18 = *v15;
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = *v14;
              *v32 = 136315906;
              *&v32[4] = v16;
              *&v32[12] = 2080;
              *&v32[14] = "VTP_PassPkt";
              *&v32[22] = 1024;
              *&v32[24] = 4173;
              *&v32[28] = 1024;
              *&v32[30] = v19;
              _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d receiving packet on a closed handle! id[%d], ignoring....", v32, 0x22u);
            }
          }

          else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v30 = *v14;
            *v32 = 136315906;
            *&v32[4] = v16;
            *&v32[12] = 2080;
            *&v32[14] = "VTP_PassPkt";
            *&v32[22] = 1024;
            *&v32[24] = 4173;
            *&v32[28] = 1024;
            *&v32[30] = v30;
            _os_log_debug_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEBUG, " [%s] %s:%d receiving packet on a closed handle! id[%d], ignoring....", v32, 0x22u);
          }
        }
      }

      else
      {
        v20 = *a2;
        v21 = *(v14 + 16);
        if (__darwin_check_fd_set_overflow(*a2, v21, 0) && ((*&v21[(v20 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v20) & 1) != 0)
        {
          pthread_mutex_lock((v14 + 2));
          if (*(v14 + 20))
          {
            pthread_mutex_lock((a2 + 34));
            while (1)
            {
              v22 = *(a2 + 16);
              *buf = v22;
              if (!v22)
              {
                break;
              }

              bzero(v32, 0x220uLL);
              *v32 = *(v22 + 184);
              memcpy(v39, (v22 + 208), sizeof(v39));
              v23 = *(v22 + 8);
              v24 = *(v22 + 24);
              v38 = *(v22 + 40);
              v37 = v24;
              v36 = v23;
              v25 = *(v22 + 48);
              *&v32[24] = *(v22 + 64);
              *&v32[8] = v25;
              v26 = *(v22 + 112);
              *&v32[88] = *(v22 + 128);
              *&v32[72] = v26;
              v27 = *(v22 + 144);
              v34 = *(v22 + 160);
              v33 = v27;
              v28 = *(v22 + 80);
              *&v32[56] = *(v22 + 96);
              *&v32[40] = v28;
              v35 = *(v22 + 176);
              VCBlockBuffer_Copy(v22 + 552, v40);
              if (*(v22 + 223) == 1)
              {
                LODWORD(v36) = v36 | 1;
              }

              (*(*(v14 + 20) + 16))();
              v29 = *buf;
              *(a2 + 16) = *(*buf + 544);
              *(v29 + 544) = 0;
              VCBlockBuffer_Clear(v40);
              if (**buf == 48)
              {
                atomic_fetch_add_explicit((a1 + 21968), 1uLL, memory_order_relaxed);
              }

              _VTP_ReleaseVPKTPacket(a1, buf, 4, *a2);
            }

            pthread_mutex_unlock((a2 + 34));
          }

          else
          {
            *(v14 + 120) = 1;
            pthread_cond_signal((v14 + 18));
          }

          pthread_mutex_unlock((v14 + 2));
        }
      }

      v14 = *(v14 + 19);
    }

    while (v14);
  }

  return pthread_rwlock_unlock((a1 + 5584));
}

ssize_t VTP_SendOnePacketWithSocket(int a1, int a2, _BYTE *a3, char a4, uint64_t a5, uint64_t a6, int a7, void *a8, int a9)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SendOnePacketWithSocket_cold_2();
      }
    }

    v20 = __error();
    v21 = 22;
    goto LABEL_13;
  }

  v16 = CheckInHandleDebug();
  if (!v16)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SendOnePacketWithSocket_cold_1();
      }
    }

    v20 = __error();
    v21 = 13;
LABEL_13:
    *v20 = v21;
    return -1;
  }

  v17 = v16;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v31.msg_iov = v18;
  *&v31.msg_control = v18;
  *&v31.msg_name = v18;
  memset(v39, 0, 128);
  if (a4)
  {
    v19 = 0;
    v31.msg_name = 0;
  }

  else
  {
    if (*a3)
    {
      v30 = 28;
      IPPORTToSA6();
    }

    else
    {
      v30 = 16;
      IPPORTToSA();
    }

    v31.msg_name = v39;
    v19 = v30;
  }

  v23 = 0;
  v24 = 0;
  v31.msg_namelen = v19;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v25;
  v38 = v25;
  v35 = v25;
  v36 = v25;
  v33 = v25;
  v34 = v25;
  v32[0] = a5;
  v32[1] = a6;
  v31.msg_iov = v32;
  v31.msg_iovlen = 1;
  v31.msg_flags = 0;
  if (a2 != 1 && (*(v17 + 21625) & 1) == 0)
  {
    *&v37 = 0xFFFF00000010;
    DWORD2(v37) = 4230;
    v26 = *(v17 + 21628);
    if (!v26)
    {
      v26 = a7;
    }

    v27 = (*a3 & 1) == 0;
    HIDWORD(v37) = v26;
    LODWORD(v38) = 16;
    *(&v38 + 4) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v27), 0x1FuLL)), 0x300000000, 0x2400000029);
    HIDWORD(v38) = a9;
    v23 = 32;
    v24 = &v37;
  }

  v31.msg_control = v24;
  v31.msg_controllen = v23;
  v22 = sendmsg(a1, &v31, 0);
  kdebug_trace();
  if (v22 >= 1)
  {
    if (*a3)
    {
      v28 = 48;
    }

    else
    {
      v28 = 28;
    }

    atomic_fetch_add_explicit(v17, v28 + v22, memory_order_relaxed);
  }

  CheckOutHandleDebug();
  return v22;
}

void _VTP_UpdateIDSDatagramOptionWithChannelDataFormat(uint64_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = *(result + 24);
    if (*(result + 24))
    {
      *a2 |= 2u;
      v4 = (a2 + 20);
      v5 = v3;
      v6 = result;
      do
      {
        v7 = *v6++;
        *v4++ = v7;
        --v5;
      }

      while (v5);
      *(a2 + 19) = v3;
    }

    v8 = *(result + 28);
    if (v8)
    {
      *a2 |= 8u;
      *(a2 + 18) = v8;
    }

    if (*(result + 29) == 1)
    {
      *a2 |= 4u;
    }

    if (*(result + 25) == 1)
    {
      *a2 |= 0x10u;
      *(a2 + 16) = *(result + 26);
    }

    if (*(result + 30) == 1)
    {
      *a2 |= 1u;
      *(a2 + 8) = *(result + 32);
    }

    if (*(result + 76) == 1)
    {
      *a2 |= 0x10000u;
      *(a2 + 112) = 1;
    }

    if (*(result + 58) == 1)
    {
      *a2 |= 0x8000u;
      *(a2 + 88) = *(result + 64);
    }

    if (*(result + 41) == 1)
    {
      *a2 |= 0x80u;
    }

    if (a3 && *(result + 42) == 1)
    {
      *a2 |= 0x40u;
      *(a2 + 46) = *(result + 44);
    }

    if (*(result + 56) == 1)
    {
      *a2 |= 0x100u;
    }

    if (*(result + 57) == 1)
    {
      *a2 |= 0x400u;
      *(a2 + 80) = 1;
    }

    if (*(result + 79) == 1)
    {
      *a2 |= 0x20000u;
      *(a2 + 113) = 1;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VTP_UpdateIDSDatagramOptionWithChannelDataFormat_cold_1();
    }
  }
}

size_t _VTP_SendOnePacketWithNWCompletionHandler(uint64_t a1, void *buffer, size_t size, int a4, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v9 = size;
    v11 = dispatch_data_create(buffer, size, 0, 0);
    v12 = *(a5 + 256);
    v13 = *(a5 + 264);
    v14 = *(a5 + 272);
    v15 = nw_content_context_create("AVConferenceNWContext");
    v16 = v15;
    v17 = *(a5 + 288);
    if (v17)
    {
      nw_content_context_set_expiration_milliseconds(v15, v17);
    }

    nw_content_context_set_packet_id();
    memcpy(v21, a5, sizeof(v21));
    v18 = *(a5 + 320);
    if (!v18)
    {
      switch(a4)
      {
        case 200:
          v19 = 22072;
          break;
        case 700:
          v19 = 22064;
          break;
        case 800:
          v19 = 22056;
          break;
        default:
LABEL_14:
          (*(a6 + 16))(a6, v11, v16, v21, v12, v13, v14);
          kdebug_trace();
          nw_release(v16);
          dispatch_release(v11);
          return v9;
      }

      v18 = *(a1 + v19);
    }

    nw_content_context_set_metadata_for_protocol(v16, v18);
    goto LABEL_14;
  }

  return -1;
}

void _VTP_ProcessPacketForDirectIDSDataPath(uint64_t a1, int *a2, int *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a2)
  {
    pthread_rwlock_rdlock((a1 + 5376));
    v6 = 1;
    VTP_DemuxPacketsToVFDList(a1, a2, &v6);
    if (a3)
    {
      if (*a3 == 0x20000)
      {
        v6 = 1;
        VTP_DemuxPacketsToVFDList(a1, a3, &v6);
      }
    }

    pthread_rwlock_unlock((a1 + 5376));
  }

  else
  {
    _VTP_ProcessPacketForDirectIDSDataPath_cold_1();
  }
}

void _VTP_ProcessPacketForSharedIDSDataPath(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = *(result + 21856);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = v3;
        v3 = *(v3 + 544);
        ++v4;
      }

      while (v3);
      v6 = (v5 + 544);
    }

    else
    {
      v6 = (result + 21856);
      v4 = 1;
    }

    *v6 = a2;
    if (a3)
    {
      if (*a3 == 0x20000)
      {
        *(a2 + 544) = a3;
        ++v4;
      }
    }

    *(result + 21864) = v4;
  }

  else
  {
    _VTP_ProcessPacketForSharedIDSDataPath_cold_1();
  }
}

BOOL OUTLINED_FUNCTION_37_7()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_FAULT);
}

void __VCAVFoundationLoadARKit_block_invoke()
{
  v0 = dlopen("/System/Library/Frameworks/ARKit.framework/ARKit", 2);
  VCAVFoundationLoadARKit_frameworkLibrary = v0;
  if (v0)
  {
    _MergedGlobals_7 = dlsym(v0, "ARAdjustIntrinsicsForViewportSize");
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __VCAVFoundationLoadARKit_block_invoke_cold_1();
    }
  }
}

Class __VCAVFoundationGetARImageData_block_invoke()
{
  if (VCAVFoundationLoadARKit_loadPredicate != -1)
  {
    __VCAVFoundationGetARImageData_block_invoke_cold_1();
  }

  result = objc_getClass("ARImageData");
  qword_1EDBDA8B8 = result;
  return result;
}

Class __VCAVFoundationGetARFaceData_block_invoke()
{
  if (VCAVFoundationLoadARKit_loadPredicate != -1)
  {
    __VCAVFoundationGetARImageData_block_invoke_cold_1();
  }

  result = objc_getClass("ARFaceData");
  qword_1EDBDA8C8 = result;
  return result;
}

Class __VCGetARHWFaceDetection_block_invoke()
{
  if (VCAVFoundationLoadARKit_loadPredicate != -1)
  {
    __VCAVFoundationGetARImageData_block_invoke_cold_1();
  }

  result = objc_getClass("ARHWFaceDetection");
  qword_1EDBDA8D8 = result;
  return result;
}

void _VCAVFoundationCapture_ConvertPixelFormat(OpaqueVTPixelTransferSession *a1, __CVPixelBufferPool *a2, CMSampleBufferRef *a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(*a3);
  if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], a2, &pixelBufferOut))
  {
    _VCAVFoundationCapture_ConvertPixelFormat_cold_1();
  }

  else
  {
    v9 = VTPixelTransferSessionTransferImage(a1, ImageBuffer, pixelBufferOut);
    if (v9)
    {
      _VCAVFoundationCapture_ConvertPixelFormat_cold_2(v9);
    }

    else
    {
      CVOFromPixelBuffer = VCCVOExtensionUtils_GetCVOFromPixelBuffer(ImageBuffer);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        v13 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v11;
            *&buf[12] = 2080;
            *&buf[14] = "_VCAVFoundationCapture_ConvertPixelFormat";
            *&buf[22] = 1024;
            v17 = 943;
            v18 = 1024;
            v19 = CVOFromPixelBuffer;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CVO=0x%02x", buf, 0x22u);
          }
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          _VCAVFoundationCapture_ConvertPixelFormat_cold_3();
        }
      }

      VCCVOExtensionUtils_AttachCVOToPixelBuffer(pixelBufferOut, CVOFromPixelBuffer);
      *buf = *a4;
      *&buf[16] = *(a4 + 16);
      SampleBufferWithPixelBuffer = createSampleBufferWithPixelBuffer(pixelBufferOut, buf);
      CMPropagateAttachments(*a3, SampleBufferWithPixelBuffer);
      FigSampleBufferRelease();
      *a3 = SampleBufferWithPixelBuffer;
    }
  }

  CVPixelBufferRelease(pixelBufferOut);
}

void _VCAVFoundationCapture_PushFrameToCaptureServer(_DWORD *a1, CFTypeRef cf, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v10 = CFRetain(cf);
  }

  else
  {
    v10 = 0;
  }

  v11 = *[a1 protocolFunctions];
  v12 = [a1 captureServer];
  v13 = *a3;
  v14 = *(a3 + 2);
  v11(v12, v10, &v13, cf == 0, a4, a5);
  ++a1[93];
  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t _VCAVFoundationCapture_ProcessSampleBufferWithCaptureOutput(uint64_t result, opaqueCMSampleBuffer *a2, __int128 *a3, void *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = result;
    v7 = [objc_msgSend(objc_msgSend(a4 connectionWithMediaType:{*MEMORY[0x1E6987608]), "inputPorts"), "firstObject"}];
    v8 = [objc_msgSend(v7 "input")];
    [v7 clock];
    v9 = *a3;
    return _VCAVFoundationCapture_ProcessSampleBuffer(v6, a2, &v9, 0, 0, v8);
  }

  return result;
}

void sub_1DB850FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB8510CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB8511F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB851314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB851438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t _VCAVFoundationCapture_effectiveResolution(void *a1, float a2)
{
  v29 = *MEMORY[0x1E69E9840];
  Dimensions = CMVideoFormatDescriptionGetDimensions([a1 formatDescription]);
  v4 = Dimensions;
  v5 = HIDWORD(Dimensions);
  v6 = a2;
  v7 = round(Dimensions / v6);
  v8 = v7 * Dimensions;
  v9 = round(v6 * HIDWORD(Dimensions)) * HIDWORD(Dimensions);
  if (v7 > HIDWORD(Dimensions))
  {
    v8 = v9;
  }

  v10 = v8;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    v13 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316674;
        v16 = v11;
        v17 = 2080;
        v18 = "_VCAVFoundationCapture_effectiveResolution";
        v19 = 1024;
        v20 = 3249;
        v21 = 1024;
        v22 = v4;
        v23 = 1024;
        v24 = v5;
        v25 = 2048;
        v26 = v6;
        v27 = 2048;
        v28 = v10;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %ux%u,AR:%f, res=%llu", &v15, 0x3Cu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136316674;
      v16 = v11;
      v17 = 2080;
      v18 = "_VCAVFoundationCapture_effectiveResolution";
      v19 = 1024;
      v20 = 3249;
      v21 = 1024;
      v22 = v4;
      v23 = 1024;
      v24 = v5;
      v25 = 2048;
      v26 = v6;
      v27 = 2048;
      v28 = v10;
      _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %ux%u,AR:%f, res=%llu", &v15, 0x3Cu);
    }
  }

  return v10;
}

uint64_t _VCAVFoundationCapture_compare(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  v8 = v6;
  v9 = _VCAVFoundationCapture_effectiveResolution(a1, v8);
  v10 = v6;
  v11 = _VCAVFoundationCapture_effectiveResolution(a2, v10);
  if (v9 > v11)
  {
    return 1;
  }

  if (v9 < v11)
  {
    return -1;
  }

  v13 = _VCAVFoundationCapture_maxFrameRateOfVideoDeviceFormat(a1);
  v14 = _VCAVFoundationCapture_maxFrameRateOfVideoDeviceFormat(a2);
  if (v13 >= v7 && v7 > v14)
  {
    return -1;
  }

  if (v13 < v7 && v7 <= v14)
  {
    return 1;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions([a1 formatDescription]);
  v16 = Dimensions;
  v17 = HIDWORD(Dimensions);
  v18 = CMVideoFormatDescriptionGetDimensions([a2 formatDescription]);
  v19 = v6 - (v16 / v17);
  v20 = fabsf(v19);
  v21 = v6 - (v18.width / v18.height);
  v22 = fabsf(v21);
  if (VCMU_CompareWithAccuracy(v20, v22, 0.01))
  {
    if (a2)
    {
      if (!a1)
      {
        return 1;
      }

      if (*(*a3 + 237) == 1 && !*(*a3 + 240))
      {
        if ([a1 isVideoHDRSupported] && !objc_msgSend(a2, "isVideoHDRSupported"))
        {
          return -1;
        }

        if ([a1 isVideoHDRSupported] & 1) == 0 && (objc_msgSend(a2, "isVideoHDRSupported"))
        {
          return 1;
        }
      }

      if (![a1 isVideoBinned] || objc_msgSend(a2, "isVideoBinned"))
      {
        return ([a1 isVideoBinned] & 1) == 0 && (objc_msgSend(a2, "isVideoBinned") & 1) != 0;
      }
    }

    return -1;
  }

  if (v20 > v22)
  {
    return 1;
  }

  if (v20 >= v22)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t _VCAVFoundationCapture_maxFrameRateOfVideoDeviceFormat(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 videoSupportedFrameRateRanges];
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v13;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v7 = *(*(&v12 + 1) + 8 * i);
      [v7 maxFrameRate];
      if (v8 > v4)
      {
        [v7 maxFrameRate];
        v4 = v9;
      }
    }

    v3 = [v1 countByEnumeratingWithState:&v12 objects:v11 count:16];
  }

  while (v3);
  return v4;
}

__n128 OUTLINED_FUNCTION_28_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a33, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __n128 a34, uint64_t a35)
{
  result = a34;
  *(v35 - 208) = a34;
  *(v35 - 192) = a35;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_7@<X0>(uint64_t a1@<X8>)
{

  return CVPixelBufferPoolCreate(v2, 0, v3, (v1 + a1));
}

uint64_t VCMediaNegotiationBlobReadFrom(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v68) = 0;
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

        v7 |= (v68 & 0x7F) << v5;
        if ((v68 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 140) |= 0x20u;
          while (1)
          {
            LOBYTE(v68) = 0;
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

            v14 |= (v68 & 0x7F) << v12;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              LOBYTE(v17) = 0;
LABEL_128:
              v66 = 136;
              goto LABEL_131;
            }
          }

          v17 = (v14 != 0) & ~[a2 hasError];
          goto LABEL_128;
        case 2u:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 140) |= 0x40u;
          while (1)
          {
            LOBYTE(v68) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v68 & 0x7F) << v43;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v10 = v44++ >= 9;
            if (v10)
            {
              LOBYTE(v17) = 0;
              goto LABEL_130;
            }
          }

          v17 = (v45 != 0) & ~[a2 hasError];
LABEL_130:
          v66 = 137;
LABEL_131:
          *(a1 + v66) = v17;
          goto LABEL_141;
        case 3u:
          v31 = objc_alloc_init(VCMediaNegotiationBlobAudioSettings);

          *(a1 + 24) = v31;
          v68 = 0xAAAAAAAAAAAAAAAALL;
          v69 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobAudioSettingsReadFrom(v31, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_112;
        case 4u:
          v22 = objc_alloc_init(VCMediaNegotiationBlobVideoSettings);

          v23 = 128;
          goto LABEL_62;
        case 5u:
          v22 = objc_alloc_init(VCMediaNegotiationBlobVideoSettings);

          v23 = 112;
LABEL_62:
          *(a1 + v23) = v22;
          v68 = 0xAAAAAAAAAAAAAAAALL;
          v69 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobVideoSettingsReadFrom(v22, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_112;
        case 6u:
          String = PBReaderReadString();

          v54 = String;
          v55 = 120;
          goto LABEL_103;
        case 7u:
          v61 = PBReaderReadString();

          v54 = v61;
          v55 = 40;
LABEL_103:
          *(a1 + v55) = v54;
          goto LABEL_141;
        case 8u:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 140) |= 4u;
          while (1)
          {
            LOBYTE(v68) = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v68 & 0x7F) << v38;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v10 = v39++ >= 9;
            if (v10)
            {
              v37 = 0;
              goto LABEL_126;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v40;
          }

LABEL_126:
          v65 = 48;
          goto LABEL_140;
        case 9u:
          v64 = objc_alloc_init(VCMediaNegotiationBlobBandwidthSettings);
          [a1 addBandwidthSettings:v64];

          v68 = 0xAAAAAAAAAAAAAAAALL;
          v69 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (result)
          {
            result = VCMediaNegotiationBlobBandwidthSettingsReadFrom(v64, a2);
            if (result)
            {
              goto LABEL_112;
            }
          }

          return result;
        case 0xAu:
          v30 = objc_alloc_init(VCMediaNegotiationBlobCaptionsSettings);

          *(a1 + 56) = v30;
          v68 = 0xAAAAAAAAAAAAAAAALL;
          v69 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobCaptionsSettingsReadFrom(v30, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_112;
        case 0xBu:
          v63 = objc_alloc_init(VCMediaNegotiationBlobMultiwayAudioStream);
          [a1 addMultiwayAudioStreams:v63];

          v68 = 0xAAAAAAAAAAAAAAAALL;
          v69 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobMultiwayAudioStreamReadFrom(v63, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_112;
        case 0xCu:
          v21 = objc_alloc_init(VCMediaNegotiationBlobMomentsSettings);

          *(a1 + 88) = v21;
          v68 = 0xAAAAAAAAAAAAAAAALL;
          v69 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobMomentsSettingsReadFrom(v21, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_112;
        case 0xDu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 140) |= 1u;
          while (1)
          {
            LOBYTE(v68) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v68 & 0x7F) << v24;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v29 = 0;
              goto LABEL_118;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v26;
          }

LABEL_118:
          *(a1 + 8) = v29;
          goto LABEL_141;
        case 0xEu:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 140) |= 8u;
          while (1)
          {
            LOBYTE(v68) = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v58 |= (v68 & 0x7F) << v56;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v10 = v57++ >= 9;
            if (v10)
            {
              v37 = 0;
              goto LABEL_139;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v58;
          }

LABEL_139:
          v65 = 52;
          goto LABEL_140;
        case 0xFu:
          v20 = objc_alloc_init(VCMediaNegotiationBlobMultiwayVideoStream);
          [a1 addMultiwayVideoStream:v20];

          v68 = 0xAAAAAAAAAAAAAAAALL;
          v69 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobMultiwayVideoStreamReadFrom(v20, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_112;
        case 0x10u:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 140) |= 0x10u;
          while (1)
          {
            LOBYTE(v68) = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v68 & 0x7F) << v32;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v10 = v33++ >= 9;
            if (v10)
            {
              v37 = 0;
              goto LABEL_122;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v34;
          }

LABEL_122:
          v65 = 80;
          goto LABEL_140;
        case 0x11u:
          v18 = objc_alloc_init(VCMediaNegotiationFaceTimeSettings);

          *(a1 + 72) = v18;
          v68 = 0xAAAAAAAAAAAAAAAALL;
          v69 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationFaceTimeSettingsReadFrom(v18, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_112;
        case 0x12u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 140) |= 2u;
          break;
        case 0x13u:
          v62 = objc_alloc_init(VCMediaNegotiationBlobMediaEncryptionSettings);

          *(a1 + 64) = v62;
          v68 = 0xAAAAAAAAAAAAAAAALL;
          v69 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobMediaEncryptionSettingsReadFrom(v62, a2);
          if (!result)
          {
            return result;
          }

LABEL_112:
          PBReaderRecallMark();
          goto LABEL_141;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_141;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v68) = 0;
        v51 = [a2 position] + 1;
        if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v50 |= (v68 & 0x7F) << v48;
        if ((v68 & 0x80) == 0)
        {
          break;
        }

        v48 += 7;
        v10 = v49++ >= 9;
        if (v10)
        {
          v37 = 0;
          goto LABEL_135;
        }
      }

      v37 = [a2 hasError] ? 0 : v50;
LABEL_135:
      v65 = 16;
LABEL_140:
      *(a1 + v65) = v37;
LABEL_141:
      v67 = [a2 position];
    }

    while (v67 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _VCRateControlAlgorithmTelephony_Configure(uint64_t a1, const void *a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  memcpy((a1 + 40), a2, 0x400uLL);
  ++*(a1 + 1132);
  if (a3)
  {
    *(a1 + 1088) = 1;
    *(a1 + 1100) = *(a1 + 56);
  }

  v5 = *(a1 + 1100);
  if (v5 >= *(a1 + 60))
  {
    v5 = *(a1 + 60);
  }

  if (v5 <= *(a1 + 64))
  {
    v5 = *(a1 + 64);
  }

  *(a1 + 1100) = v5;
  *(a1 + 1120) = *(*(a1 + 48) + 4 * *(a1 + 1100));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 1120);
      v9 = *(a1 + 48);
      v10 = *(v9 + 4 * *(a1 + 64));
      v11 = *(v9 + 4 * *(a1 + 60));
      *buf = 136316418;
      v13 = v6;
      v14 = 2080;
      v15 = "_VCRateControlAlgorithmTelephony_Configure";
      v16 = 1024;
      v17 = 82;
      v18 = 1024;
      v19 = v8;
      v20 = 1024;
      v21 = v10;
      v22 = 1024;
      v23 = v11;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Configuring VCRateControl algorithm with targetBitrate=%d, minBitrate=%d, maxBitrate=%d", buf, 0x2Eu);
    }
  }

  VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Configure with targetBitrate=%d, minBitrate=%d, maxBitrate=%d", *(a1 + 1120), *(*(a1 + 48) + 4 * *(a1 + 64)), *(*(a1 + 48) + 4 * *(a1 + 60)));
}

BOOL _VCRateControlAlgorithmTelephony_DoRateControl(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x1E69E9840];
  if (*a2 != 12)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _VCRateControlAlgorithmTelephony_DoRateControl_cold_1();
    }

    return 0;
  }

  if (*(a2 + 26) != 2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _VCRateControlAlgorithmTelephony_DoRateControl_cold_2();
    }

    return 0;
  }

  *(a1 + 5320) = *(a2 + 98);
  *(a1 + 5322) = *(a2 + 103);
  *(a1 + 5328) = *(a2 + 72);
  *(a1 + 5324) = *(a2 + 64);
  *(a1 + 1144) = *(a2 + 8);
  v3 = *(a1 + 5322);
  if (*(a1 + 804) > v3)
  {
    *(a1 + 5336) = *(a1 + 1144);
    v3 = *(a1 + 5322);
  }

  if (*(a1 + 800) < v3)
  {
    *(a1 + 5344) = *(a1 + 1144);
  }

  v4 = *(a1 + 1088);
  if (v4 <= 1)
  {
    if (!v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v32 = v10;
          v33 = 2080;
          v34 = "_VCRateControlAlgorithmTelephony_RunRateControlStateTransition";
          v35 = 1024;
          v36 = 166;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d VCRateControl is paused", buf, 0x1Cu);
        }
      }

      goto LABEL_43;
    }

    if (v4 == 1)
    {
      if (*(a1 + 5320) <= -95)
      {
        *(a1 + 1100) = *(a1 + 64);
      }

      v5 = 3;
LABEL_28:
      VCRateControlAlgorithmBasePriv_StateChange(a1, v5);
      goto LABEL_43;
    }

    goto LABEL_29;
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      *(a1 + 1092) |= 1u;
      v7 = *(a1 + 1144);
      if (v7 - *(a1 + 5336) > *(a1 + 816))
      {
        *(a1 + 1096) |= 1u;
        ++*(a1 + 1132);
        v8 = *(a1 + 64);
        if (v8 <= *(a1 + 1100) - 1)
        {
          v8 = *(a1 + 1100) - 1;
        }

        *(a1 + 1100) = v8;
        v7 = *(a1 + 1144);
      }

      v9 = *(a1 + 184);
      if (v7 - *(a1 + 1152) <= v9)
      {
        goto LABEL_43;
      }

      v5 = 2;
      goto LABEL_28;
    }

LABEL_29:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCRateControlAlgorithmTelephony_DoRateControl_cold_3();
      }
    }

    goto LABEL_43;
  }

  v12 = *(a1 + 1144);
  v9 = v12 - *(a1 + 5336);
  if (v9 > *(a1 + 816))
  {
    *(a1 + 1096) |= 1u;
    ++*(a1 + 1132);
    v13 = *(a1 + 64);
    if (v13 <= *(a1 + 1100) - 1)
    {
      v13 = *(a1 + 1100) - 1;
    }

LABEL_41:
    *(a1 + 1100) = v13;
    goto LABEL_43;
  }

  v9 = *(a1 + 808);
  if (v12 - *(a1 + 5344) >= v9)
  {
    ++*(a1 + 1132);
    v14 = *(a1 + 1100);
    v13 = *(a1 + 60);
    if (v13 >= v14 + 1)
    {
      v13 = v14 + 1;
    }

    goto LABEL_41;
  }

  *(a1 + 1092) |= 2u;
LABEL_43:
  *(a1 + 1120) = *(*(a1 + 48) + 4 * *(a1 + 1100));
  if (*(a1 + 5176) == 1)
  {
    v15 = *(a1 + 1136);
    *(a1 + 1136) = v15 + 1;
    if ((v15 & 0xF) == 0 && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 1144);
        v20 = *(a1 + 1092);
        if (v20)
        {
          v21 = 88;
        }

        else
        {
          v21 = 79;
        }

        LOBYTE(v18) = *(a1 + 5322);
        v22 = *(a1 + 5320);
        v23 = *(a1 + 1120) / 0x3E8u;
        v24 = *(a1 + 1096);
        v25 = *(a1 + 1132);
        v26 = *(a1 + 5328) / 0x3E8u;
        v27 = 1000 * *(a1 + 5324);
        v28 = *(a1 + 1088);
        *buf = 136321538;
        v32 = v16;
        v33 = 2080;
        v34 = "_VCRateControlAlgorithmTelephony_PrintRateControlInfoToLogDump";
        v35 = 1024;
        v36 = 230;
        v37 = 2048;
        v38 = v19;
        v39 = 1024;
        v40 = 0;
        v41 = 2048;
        v42 = 0;
        v43 = 2048;
        v44 = 0;
        v45 = 2048;
        v46 = 0;
        v47 = 2048;
        v48 = 0;
        v49 = 1024;
        v50 = v21;
        v51 = 1024;
        v52 = 0;
        v53 = 2048;
        v54 = v18;
        v55 = 2048;
        v56 = v22;
        v57 = 1024;
        v58 = 0;
        v59 = 1024;
        v60 = 0;
        v61 = 1024;
        v62 = 0;
        v63 = 1024;
        v64 = v23;
        v65 = 1024;
        v66 = v20;
        v67 = 1024;
        v68 = v24;
        v69 = 1024;
        v70 = v25;
        v71 = 1024;
        v72 = v26;
        v73 = 1024;
        v74 = 0;
        v75 = 1024;
        v76 = v27;
        v77 = 1024;
        v78 = 0;
        v79 = 1024;
        v80 = 0;
        v81 = 1024;
        v82 = v28;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d %8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:%4u\tMBL:%d\t%4u/%4u\t  CS:%04X %04X %u BB: %3u\t%4u\t%3u\t%u\t%u\t UAT \t%d", buf, 0xC2u);
      }
    }
  }

  v29 = *(a1 + 5160);
  if (v29)
  {
    v30 = 88;
    if (!*(a1 + 1092))
    {
      v30 = 79;
    }

    LOBYTE(v9) = *(a1 + 5322);
    VRLogfilePrintWithTimestamp(v29, "%8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:%u\tMBL:%d %u\t%4u/%4u\t %4u:%4u/%4u  %4u:%4u/%4u  CS: %04X %04X %u BB: %3u\t%4u\t%3u\t%u\t%u\t UAT \t%d\n", *(a1 + 1144), 0, 0.0, 0.0, 0.0, 0.0, v30, 0, *&v9, *(a1 + 5320), 0, 0, 0, 0, *(a1 + 1120) / 0x3E8u, 0, 0, 0, 0, 0, 0, *(a1 + 1092), *(a1 + 1096), *(a1 + 1132), *(a1 + 5328) / 0x3E8u, 0, 1000 * *(a1 + 5324), 0, 0, *(a1 + 1088));
  }

  *(a1 + 1092) = 0;
  *(a1 + 1096) = 0;
  return 1;
}

uint64_t VCVideoTransmitterDefault_EnqueueVideoFrame(uint64_t result, CMSampleBufferRef sbuf, CMTime *a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = result;
    if (*(result + 160) == 0xFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v14 = 0;
      v13 = 0.0;
      v8 = *(result + 100);
      if (v8)
      {
        v9 = (result + 104);
      }

      else
      {
        v9 = &v13;
        VCVideoTransmitterDefault_ComputeTimestamp(result, &v14, &v13, sbuf);
        v8 = v14;
      }

      v10 = *v9;
      v12 = *a3;
      *(v4 + 288) = CMTimeGetSeconds(&v12);
      v11 = *(v4 + 160);
      v12 = *a3;
      return VideoTransmitter_EnqueueBuffer(v11, sbuf, v8, &v12.value, 0, a4, v10) >= 0;
    }
  }

  return result;
}

void VCVideoTransmitterDefault_ComputeTimestamp(uint64_t a1, _DWORD *a2, Float64 *a3, CMSampleBufferRef sbuf)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(&v16, 170, sizeof(v16));
  CMSampleBufferGetPresentationTimeStamp(&v16, sbuf);
  value = *(a1 + 64);
  if (value)
  {
    lhs = v16;
    v13 = *(a1 + 64);
    CMTimeSubtract(&v15, &lhs, &v13);
    value = v15.value;
    v8 = *&v15.timescale;
    epoch = v15.epoch;
  }

  else
  {
    v8 = *(a1 + 72);
    epoch = *(a1 + 80);
  }

  lhs.epoch = epoch;
  memset(&v15, 170, sizeof(v15));
  v10 = *(a1 + 168);
  lhs.value = value;
  *&lhs.timescale = v8;
  CMTimeConvertScale(&v15, &lhs, v10, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  *(a1 + 96) += LODWORD(v15.value);
  v11 = *&v16.value;
  *(a1 + 64) = *&v16.value;
  v12 = v16.epoch;
  *(a1 + 80) = v16.epoch;
  *&lhs.value = v11;
  lhs.epoch = v12;
  *a3 = CMTimeGetSeconds(&lhs);
  *a2 = *(a1 + 96);
}

uint64_t VCVideoReceiverFeedbackDelegate_sendLTRAck(uint64_t result, int a2)
{
  if (result)
  {
    return VideoTransmitter_SendLTRACK(*(result + 160), a2);
  }

  return result;
}

uint64_t VCVideoReceiverFeedbackDelegate_ackLTRFrame(uint64_t result, int a2)
{
  if (result)
  {
    return VideoTransmitter_ACKLTRFrame(*(result + 160), a2);
  }

  return result;
}

uint64_t VCBlockBufferUtlities_Create(const __CFAllocator *a1, void *a2, size_t a3, const __CFAllocator *a4, const CMBlockBufferCustomBlockSource *a5, size_t a6, size_t a7, CMBlockBufferFlags a8, CMBlockBufferRef *blockBufferOut)
{
  v21 = *MEMORY[0x1E69E9840];
  if (FigMemoryPoolIsPoolAllocator())
  {
    if (FigMemoryPoolAllocatorCopyMemoryPool())
    {
      VCBlockBufferUtlities_Create_cold_1(&v20);
      return v20;
    }

    if (FigMemoryPoolCreateBlockBuffer())
    {
      VCBlockBufferUtlities_Create_cold_2(&v20);
      return v20;
    }
  }

  else
  {
    v17 = CMBlockBufferCreateWithMemoryBlock(a1, a2, a3, a4, a5, a6, a7, a8, blockBufferOut);
    if (v17)
    {
      VCBlockBufferUtlities_Create_cold_3(v17, &v20);
      return v20;
    }
  }

  return 0;
}

char *VCBlockBufferUtilities_CreateAndGetDataPointer(const __CFAllocator *a1, void *a2, size_t a3, const __CFAllocator *a4, const CMBlockBufferCustomBlockSource *a5, size_t a6, size_t a7, CMBlockBufferFlags a8, CMBlockBufferRef *a9)
{
  dataPointerOut[1] = *MEMORY[0x1E69E9840];
  dataPointerOut[0] = 0;
  if (VCBlockBufferUtlities_Create(a1, a2, a3, a4, a5, a6, a7, a8, a9))
  {
    VCBlockBufferUtilities_CreateAndGetDataPointer_cold_1();
  }

  else if (CMBlockBufferGetDataPointer(*a9, 0, 0, 0, dataPointerOut))
  {
    VCBlockBufferUtilities_CreateAndGetDataPointer_cold_2();
  }

  return dataPointerOut[0];
}

uint64_t symptomReporterCallback_0(void *a1, CFDictionaryRef theDict)
{
  v9[1] = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, @"SymptomReporterCallbackKeySymptomID");
  v5 = CFDictionaryGetValue(theDict, @"SymptomReporterCallbackKeyGroupID");
  v6 = CFDictionaryGetValue(theDict, @"SymptomReporterOptionalKeyParticipantID");
  if (v6)
  {
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  return [a1 sendSymptomsToRemoteParticipants:v7 symptom:Value groupID:v5];
}

void _VCSession_ReportingConfigurationCallback(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a2)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315650;
          v10 = v4;
          v11 = 2080;
          v12 = "_VCSession_ReportingConfigurationCallback";
          v13 = 1024;
          v14 = 775;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Reporting is enabled", &v9, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        _VCSession_ReportingConfigurationCallback_cold_1();
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
        v9 = 136315650;
        v10 = v7;
        v11 = 2080;
        v12 = "_VCSession_ReportingConfigurationCallback";
        v13 = 1024;
        v14 = 771;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Reporting is disabled.", &v9, 0x1Cu);
      }
    }

    reportingSetNWActivityReportingEnabled();
    VCReporting_DisableDataCollection();
  }
}

void VCSession_RemoteScreenAttributesDidChange(uint64_t a1, uint64_t a2)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 176);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCSession_RemoteScreenAttributesDidChange_block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = a2;
    block[5] = a1;
    dispatch_async(v2, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCSession_RemoteScreenAttributesDidChange_cold_1();
    }
  }
}

void sub_1DB886C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCAudioRelayIOController_PullAudioSamples(uint64_t a1, uint64_t a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 72));
  _VCAudioRelayIOController_ProcessEventQueue(a1, v4);
  VCAudioBufferList_ZeroMemory(a2);
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  VCAudioIOControllerIOState_GetControllerTimestamp(a2, a1, v14);
  v5 = *(a1 + 96);
  SampleCount = VCAudioBufferList_GetSampleCount(a2);
  VCAudioBufferList_SetSampleCount(v5, SampleCount);
  v7 = *(a1 + 96);
  HostTime = VCAudioBufferList_GetHostTime(a2);
  Timestamp = VCAudioBufferList_GetTimestamp(a2);
  VCAudioBufferList_SetTime(v7, Timestamp, HostTime);
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = a2;
    do
    {
      v12 = v10[1];
      VCAudioBufferList_InvalidateNetworkTimestamp(v11);
      (*(v12 + 8))(*v12, v14, v11);
      if (v11 != a2)
      {
        VCAudioBufferList_Mix(a2, v11);
      }

      v11 = *(a1 + 96);
      v10 = *v10;
    }

    while (v10);
  }

  os_unfair_lock_unlock((a1 + 72));
  return VCAudioLimiter_Process(*(a1 + 88), a2);
}

void _VCAudioRelayIOController_ProcessEventQueue(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {
    v3 = micro(IsInternalOSInstalled, v5);
  }

  v6 = CMSimpleQueueDequeue(*(a1 + 80));
  v16 = v6;
  for (i = 0; v6; i = (i + 1))
  {
    v15 = v6[4];
    if (v15 == 1)
    {
      VCAudioIOControllerIOState_UnregisterClientIO(a1, &v16);
    }

    else if (!v15)
    {
      VCAudioIOControllerIOState_RegisterClientIO(a1, &v16);
    }

    v6 = CMSimpleQueueDequeue(*(a1 + 80));
    v16 = v6;
  }

  LogProfileTimeOverLimit(v3, v6, v7, v8, v9, v10, v11, v12, v13, "_VCAudioRelayIOController_ProcessEventQueue", i, v16, v17);
}

void VCAudioRelayIOController_PushAudioSamples(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 72));
  _VCAudioRelayIOController_ProcessEventQueue(a1, v4);
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  VCAudioIOControllerIOState_GetControllerTimestamp(a2, a1, v6);
  for (i = *(a1 + 40); i; i = *i)
  {
    (*(i[1] + 8))(*i[1], v6, a2);
  }

  os_unfair_lock_unlock((a1 + 72));
}

uint64_t VCNWConnectionMonitorUtils_GetRATFromNWNotification(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 4);
    if (v1)
    {
      if (v1 == 5 || v1 == 2)
      {
        return *(a1 + 8);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return *(a1 + 60);
    }
  }

  else
  {
    VCNWConnectionMonitorUtils_GetRATFromNWNotification_cold_1(&v3);
    return v3;
  }
}

uint64_t VCNWConnectionMonitorUtils_GetSignalLevelFromNWNotification(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 4);
    if (v1)
    {
      if (v1 == 2)
      {
        return *(a1 + 14);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return *(a1 + 63);
    }
  }

  else
  {
    VCNWConnectionMonitorUtils_GetSignalLevelFromNWNotification_cold_1(&v4);
    return v4;
  }
}

void VCNWConnectionMonitorUtils_GetCDRXCycleFromNWNotification(uint64_t result, _WORD *a2, _BYTE *a3)
{
  if (result && a2 && a3)
  {
    v3 = *(result + 4);
    if (!v3)
    {
      *a2 = *(result + 70);
      v4 = *(result + 69);
      goto LABEL_8;
    }

    if (v3 == 4)
    {
      *a2 = *(result + 10);
      v4 = *(result + 8);
LABEL_8:
      *a3 = v4;
      return;
    }

    *a2 = 0;
    *a3 = 0;
  }

  else
  {
    VCNWConnectionMonitorUtils_GetCDRXCycleFromNWNotification_cold_1(result, a2, a3);
  }
}

void VCNWConnectionMonitorUtils_GetNotificationFromAdvisory(__int128 *result, uint64_t a2)
{
  if (a2)
  {
    if (result)
    {
      *(a2 + 1) = *(result + 1);
      *a2 = *result;
      v4 = *(result + 2);
      *(a2 + 2) = v4;
      if (v4 == 1)
      {
LABEL_4:
        *(a2 + 4) = 0;
        v5 = *result;
        *(a2 + 24) = result[1];
        *(a2 + 8) = v5;
        v6 = result[2];
        v7 = result[3];
        v8 = result[4];
        *(a2 + 88) = result[5];
        *(a2 + 72) = v8;
        *(a2 + 56) = v7;
        *(a2 + 40) = v6;
        return;
      }

      v9 = *(result + 3);
      if (v9 <= 2)
      {
        if (!*(result + 3))
        {
          goto LABEL_4;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            *(a2 + 4) = 2;
            *(a2 + 8) = *(result + 52);
            *(a2 + 12) = *(result + 53);
            *(a2 + 14) = *(result + 55);
            *(a2 + 16) = *(result + 57);
            *(a2 + 18) = *(result + 59);
            *(a2 + 17) = *(result + 58);
            return;
          }

          goto LABEL_20;
        }

        *(a2 + 4) = 1;
        *(a2 + 16) = *(result + 1);
        *(a2 + 8) = *(result + 52);
        *(a2 + 32) = *(result + 10);
        *(a2 + 36) = *(result + 11);
        *(a2 + 24) = *(result + 3);
      }

      else
      {
        if (*(result + 3) <= 4u)
        {
          if (v9 == 3)
          {
            *(a2 + 4) = 3;
            v10 = *(result + 60);
            goto LABEL_24;
          }

          if (v9 == 4)
          {
            *(a2 + 4) = 4;
            *(a2 + 10) = *(result + 31);
            v10 = *(result + 61);
LABEL_24:
            *(a2 + 8) = v10;
            return;
          }

LABEL_20:
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              VCNWConnectionMonitorUtils_GetNotificationFromAdvisory_cold_1(v12);
            }
          }

          goto LABEL_4;
        }

        if (v9 == 5)
        {
          *(a2 + 4) = 5;
          *(a2 + 12) = *(result + 32);
          *(a2 + 14) = *(result + 66);
          v11 = *(result + 52);
        }

        else
        {
          if (v9 != 6)
          {
            goto LABEL_20;
          }

          *(a2 + 4) = 6;
          v11 = *(result + 1);
          if (v11 != 0x80000000 && v11 && v11 != 0x7FFFFFFF)
          {
            v11 = 0;
          }
        }

        *(a2 + 8) = v11;
      }
    }

    else
    {
      VCNWConnectionMonitorUtils_GetNotificationFromAdvisory_cold_2();
    }
  }

  else
  {
    VCNWConnectionMonitorUtils_GetNotificationFromAdvisory_cold_3();
  }
}

uint64_t VCFECConsumerGetClassID(uint64_t a1, uint64_t a2)
{
  if (VCFECConsumerGetClassID_onceToken != -1)
  {
    VCFECConsumerGetClassID_cold_1();
  }

  return VCFECConsumerGetClassID_classID;
}

uint64_t __VCFECConsumerGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&VCFECConsumerGetClassID_descriptor, ClassID, 1, &VCFECConsumerGetClassID_classID);
}

uint64_t VCFECConsumerCommon_Init(uint64_t a1, const void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCFECConsumerCommon_Init_cold_2(&v6);
    return v6;
  }

  if ((VCSingleLinkedListInitialize(a1 + 12304, VCFECPacketList_CompareEntries) & 1) == 0)
  {
    VCFECConsumerCommon_Init_cold_1(&v6);
    return v6;
  }

  v4 = *(a1 + 12344);
  *(a1 + 12344) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    *(a1 + 12352) = VCReporting_GetDynamicReportingModuleID();
    reportingRegisterPeriodicTaskWeak();
  }

  return 0;
}

void VCFECConsumerCommon_Finalize(uint64_t a1)
{
  if (*(a1 + 12344))
  {
    reportingUnregisterPeriodicTask();
    v2 = *(a1 + 12344);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 12344) = 0;
    }
  }
}

void _VCFECConsumerCommon_PeriodicReportingTask(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    CMBaseObjectGetDerivedStorage();
    v2 = selectDestinationForRTMetrics();
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      v5 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = 136315906;
          v7 = v3;
          v8 = 2080;
          v9 = "_VCFECConsumerCommon_PeriodicReportingTask";
          v10 = 1024;
          v11 = 89;
          v12 = 2112;
          v13 = v2;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFECConsumer's payload='%@'", &v6, 0x26u);
        }
      }

      else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        _VCFECConsumerCommon_PeriodicReportingTask_cold_1(v3, v2, v4);
      }
    }
  }
}

void _VCSystemAudioCaptureSession_audioSink(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315906;
        v19 = v4;
        v20 = 2080;
        v21 = "_VCSystemAudioCaptureSession_audioSink";
        v22 = 1024;
        v23 = 183;
        v24 = 2048;
        v25 = a1;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p audio sink buffer received", &v18, 0x26u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      _VCSystemAudioCaptureSession_audioSink_cold_1(v4, a1, v5);
    }
  }

  Count = CMSimpleQueueGetCount(*(a1 + 120));
  v8 = CMSimpleQueueGetCount(*(a1 + 128));
  v9 = CMSimpleQueueDequeue(*(a1 + 120));
  if (v9)
  {
    v10 = v9;
    VCAudioBufferList_Reset(v9);
    SampleCount = VCAudioBufferList_GetSampleCount(a2);
    HostTime = VCAudioBufferList_GetHostTime(a2);
    Timestamp = VCAudioBufferList_GetTimestamp(a2);
    VCAudioBufferList_SetSampleCount(v10, SampleCount);
    VCAudioBufferList_SetTime(v10, Timestamp, HostTime);
    VCAudioBufferList_ZeroMemory(v10);
    VCAudioBufferList_MixToMono(v10, a2);
    if (CMSimpleQueueEnqueue(*(a1 + 128), v10))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v18 = 136316162;
          v19 = v14;
          v20 = 2080;
          v21 = "_VCSystemAudioCaptureSession_audioSink";
          v22 = 1024;
          v23 = 200;
          v24 = 2048;
          v25 = a1;
          v26 = 1024;
          v27 = v8;
          v16 = " [%s] %s:%d %p output queue full with count %d";
LABEL_16:
          _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, v16, &v18, 0x2Cu);
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v18 = 136316162;
      v19 = v17;
      v20 = 2080;
      v21 = "_VCSystemAudioCaptureSession_audioSink";
      v22 = 1024;
      v23 = 203;
      v24 = 2048;
      v25 = a1;
      v26 = 1024;
      v27 = Count;
      v16 = " [%s] %s:%d %p pool queue empty with count %d";
      goto LABEL_16;
    }
  }
}

const void *VCSystemAudioCaptureSession_pullAudioSamples(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = 1;
  atomic_compare_exchange_strong((a1 + 144), &v2, 0);
  if (v2 == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v21 = v3;
        v22 = 2080;
        v23 = "_VCSystemAudioCaptureSession_ResetAudioBufferPool";
        v24 = 1024;
        v25 = 149;
        v26 = 2048;
        v27 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", buf, 0x26u);
      }
    }

    v5 = CMSimpleQueueDequeue(*(a1 + 128));
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x1E6986650];
      do
      {
        if (CMSimpleQueueEnqueue(*(a1 + 120), v6))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v8 = VRTraceErrorLogLevelToCSTR();
            v9 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v21 = v8;
              v22 = 2080;
              v23 = "_VCSystemAudioCaptureSession_ResetAudioBufferPool";
              v24 = 1024;
              v25 = 153;
              v26 = 2048;
              v27 = a1;
              _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %p Error returning output to audio buffer pool", buf, 0x26u);
            }
          }
        }

        v6 = CMSimpleQueueDequeue(*(a1 + 128));
      }

      while (v6);
    }

    return 0;
  }

  v10 = CMSimpleQueueDequeue(*(a1 + 128));
  Count = CMSimpleQueueGetCount(*(a1 + 120));
  v12 = CMSimpleQueueGetCount(*(a1 + 128));
  if (!v10)
  {
    v15 = v12;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      v18 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v21 = v16;
          v22 = 2080;
          v23 = "VCSystemAudioCaptureSession_pullAudioSamples";
          v24 = 1024;
          v25 = 176;
          v26 = 2048;
          v27 = a1;
          v28 = 1024;
          v29 = v15;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p output queue empty with count %d", buf, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v21 = v16;
        v22 = 2080;
        v23 = "VCSystemAudioCaptureSession_pullAudioSamples";
        v24 = 1024;
        v25 = 176;
        v26 = 2048;
        v27 = a1;
        v28 = 1024;
        v29 = v15;
        _os_log_debug_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %p output queue empty with count %d", buf, 0x2Cu);
      }
    }

    return 0;
  }

  if (CMSimpleQueueEnqueue(*(a1 + 120), v10))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v21 = v13;
        v22 = 2080;
        v23 = "VCSystemAudioCaptureSession_pullAudioSamples";
        v24 = 1024;
        v25 = 172;
        v26 = 2048;
        v27 = a1;
        v28 = 1024;
        v29 = Count;
        _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d %p pool queue full with count %d", buf, 0x2Cu);
      }
    }
  }

  return v10;
}

void OUTLINED_FUNCTION_3_28(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x1Cu);
}

BOOL OUTLINED_FUNCTION_7_18()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_FAULT);
}

void VCAudioIOControllerIOState_GetControllerTimestamp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  Timestamp = VCAudioBufferList_GetTimestamp(a1);
  SampleCount = VCAudioBufferList_GetSampleCount(a1);
  v8 = *VCAudioBufferList_GetSampleFormat(a1);
  HostTime = VCAudioBufferList_GetHostTime(a1);
  v10 = HostTime;
  if (*a2 == 1)
  {
    v11 = HostTime - *(a2 + 8);
    v12 = *(a2 + 20);
    v13 = v12 + *(a2 + 16);
    if (Timestamp == v13)
    {
      v14 = v12 * llround(v11 * (v8 / v12));
      v15 = *(a2 + 32);
      if (v14 == v12)
      {
        v16 = (v15 + *(a2 + 24) * 409600.0);
      }

      else
      {
        v20 = *(a2 + 24);
        if (v11 >= v20)
        {
          v20 = v10 - *(a2 + 8);
        }

        v16 = v15 + (vcvtad_u64_f64(v20 * 409600.0) | 0x4119000000000000);
        VCAudioBufferList_SetHostTimeJumpSize(a1, v10 - *(a2 + 8));
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(a2 + 16);
            v24 = *(a2 + 8);
            v25 = *(a2 + 32);
            v29 = 136318210;
            v30 = v21;
            v31 = 2080;
            v32 = "VCAudioIOControllerIOState_GetControllerTimestamp";
            v33 = 1024;
            v34 = 42;
            v35 = 2080;
            v36 = a2 + 136;
            v37 = 1024;
            *v38 = Timestamp - v23;
            *&v38[4] = 1024;
            *&v38[6] = v23;
            v39 = 1024;
            *v40 = Timestamp;
            *&v40[4] = 2048;
            *&v40[6] = v11;
            *&v40[14] = 1024;
            *&v40[16] = v14;
            *v41 = 2048;
            *&v41[2] = v24;
            v42 = 2048;
            v43 = v10;
            v44 = 2048;
            v45 = v25;
            v46 = 2048;
            v47 = v16;
            _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s Real time miss. Timestamp jumped: delta=%u (%u to %u), host time: delta=%f (sampleCount=%d) (%f to %f). lastTimestamp=%llu -> timestamp=%llu", &v29, 0x70u);
          }
        }
      }
    }

    else
    {
      if (v11 >= *(a2 + 24))
      {
        v19 = v11 * 409600.0;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v29 = 136316162;
            v30 = v17;
            v31 = 2080;
            v32 = "VCAudioIOControllerIOState_GetControllerTimestamp";
            v33 = 1024;
            v34 = 31;
            v35 = 2080;
            v36 = a2 + 136;
            v37 = 2048;
            *v38 = v11;
            _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s Audio callback called too quickly. Delta:%f", &v29, 0x30u);
          }
        }

        v19 = *(a2 + 24) * 409600.0;
      }

      v16 = *(a2 + 32) + round(v19);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v28 = *(a2 + 32);
          v29 = 136317186;
          v30 = v26;
          v31 = 2080;
          v32 = "VCAudioIOControllerIOState_GetControllerTimestamp";
          v33 = 1024;
          v34 = 36;
          v35 = 2080;
          v36 = a2 + 136;
          v37 = 1024;
          *v38 = Timestamp;
          *&v38[4] = 1024;
          *&v38[6] = v13;
          v39 = 2048;
          *v40 = v11;
          *&v40[8] = 2048;
          *&v40[10] = v28;
          *&v40[18] = 2048;
          *v41 = v16;
          _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s Unexpected timestamp received: %u, expected:%u hostTimeDelta=%f lastTimestamp=%llu -> timestamp=%llu", &v29, 0x50u);
        }
      }
    }
  }

  else
  {
    v16 = 0;
  }

  *(a2 + 16) = Timestamp;
  *(a2 + 20) = SampleCount;
  *(a2 + 24) = SampleCount / v8;
  *(a2 + 8) = v10;
  *(a2 + 32) = v16;
  *a2 = 1;
  if (a3)
  {
    *(a3 + 8) = v16;
    *a3 = 409600;
  }
}

_BYTE *VCAudioIOControllerIOState_ResetControllerTime(_BYTE *result)
{
  if (result)
  {
    *result = 0;
  }

  return result;
}

_DWORD *VCAudioIOControllerIOState_NewAudioEvent(int a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A00405C5CD52DuLL);
  v5 = v4;
  v4[4] = a1;
  if (a2)
  {
    *(v4 + 1) = a2;
    v6 = *(a2 + 16);
    *(v5 + 3) = v6;
    dispatch_retain(v6);
  }

  return v5;
}

void VCAudioIOControllerIOState_ReleaseAudioEvent(uint64_t *a1, int a2)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      *a1 = 0;
      if (*(v2 + 8))
      {
        if (a2)
        {
          dispatch_semaphore_signal(*(v2 + 24));
        }

        dispatch_release(*(v2 + 24));
      }

      free(v2);
    }
  }
}

void VCAudioIOControllerIOState_RegisterClientIO(uint64_t a1, uint64_t *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v4 = *a2;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v4)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v8 = v4[1];
            v9 = 136316162;
            v10 = v6;
            v11 = 2080;
            v12 = "VCAudioIOControllerIOState_RegisterClientIO";
            v13 = 1024;
            v14 = 98;
            v15 = 2080;
            v16 = a1 + 136;
            v17 = 2048;
            v18 = v8;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %sRegistering clientIO[%p]", &v9, 0x30u);
          }
        }

        if ((VCSingleLinkedListPush(a1 + 40, v4) & 1) == 0)
        {
          VCAudioIOControllerIOState_ReleaseAudioEvent(a2, 0);
        }
      }

      else
      {
        VCAudioIOControllerIOState_RegisterClientIO_cold_1(ErrorLogLevelForModule);
      }
    }

    else
    {
      VCAudioIOControllerIOState_RegisterClientIO_cold_2();
    }
  }

  else
  {
    VCAudioIOControllerIOState_RegisterClientIO_cold_3();
  }
}

void VCAudioIOControllerIOState_UnregisterClientIO(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v4 = *a2;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v4)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v8 = *(v4 + 8);
            *buf = 136316162;
            v11 = v6;
            v12 = 2080;
            v13 = "VCAudioIOControllerIOState_UnregisterClientIO";
            v14 = 1024;
            v15 = 113;
            v16 = 2080;
            v17 = a1 + 136;
            v18 = 2048;
            v19 = v8;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %sUnregistering clientIO[%p]", buf, 0x30u);
          }
        }

        v9 = VCSingleLinkedListRemove(a1 + 40, v4);
        if (v9)
        {
          VCAudioIOControllerIOState_ReleaseAudioEvent(&v9, 0);
        }

        VCAudioIOControllerIOState_ReleaseAudioEvent(a2, 1);
      }

      else
      {
        VCAudioIOControllerIOState_UnregisterClientIO_cold_1(ErrorLogLevelForModule);
      }
    }

    else
    {
      VCAudioIOControllerIOState_UnregisterClientIO_cold_2();
    }
  }

  else
  {
    VCAudioIOControllerIOState_UnregisterClientIO_cold_3();
  }
}

uint64_t VCAudioIOControllerIOState_CompareControllerEntries(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (result)
  {
    if (a2)
    {
      v2 = *(result + 8);
      v3 = *(a2 + 8);
      v4 = v2 == v3;
      v5 = 2 * (v2 >= v3);
      if (v4)
      {
        return 1;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t VCCCMessageAcknowledgmentReadFrom(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
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
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v28 = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v28 & 0x7F) << v18;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v10 = v19++ >= 9;
          if (v10)
          {
            v23 = 0;
            goto LABEL_46;
          }
        }

        v23 = [a2 hasError] ? 0 : v20;
LABEL_46:
        *(a1 + 16) = v23;
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        while (1)
        {
          v27 = 0;
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

          v14 |= (v27 & 0x7F) << v12;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_42;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_42:
        *(a1 + 8) = v17;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _VCConnectionIDS_SourceDestinationInfo(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [*(a1 + 280) linkID];
    if (*(a1 + 368) == 1 && (*(a1 + 369) & 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      v6 = [*(a1 + 280) connectionType];
      v7 = [*(a1 + 280) remoteConnectionType] - 2;
      v5 = (v6 - 2) < 4 || v7 < 4;
    }

    VCSDInfoConstructWithDatagramChannel(*(a1 + 296), v4, 0, v5, v12);
    v9 = v12[5];
    *(a2 + 64) = v12[4];
    *(a2 + 80) = v9;
    *(a2 + 96) = v12[6];
    *(a2 + 112) = v13;
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    v11 = v12[3];
    *(a2 + 32) = v12[2];
    *(a2 + 48) = v11;
    *(a2 + 22) = VCConnection_IsLocalOnCellular(a1);
  }

  else
  {
    _VCConnectionIDS_SourceDestinationInfo_cold_1();
  }
}

BOOL _VCConnectionIDS_IsLocalOnCellular(uint64_t a1)
{
  v1 = [*(a1 + 280) RATType];
  if (v1)
  {
    v2 = v1 == 9;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

BOOL _VCConnectionIDS_IsRemoteOnCellular(uint64_t a1)
{
  v1 = [*(a1 + 280) remoteRATType];
  if (v1)
  {
    v2 = v1 == 9;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

BOOL _VCConnectionIDS_IsRelay(uint64_t a1)
{
  v2 = [*(a1 + 280) connectionType];
  v3 = [*(a1 + 280) remoteConnectionType] - 2;
  return (v2 - 2) < 4 || v3 < 4;
}

uint64_t _VCConnectionIDS_SetLocalCellTech(uint64_t a1, int a2)
{
  result = VCConnection_IsLocalOnCellular(a1);
  if (result)
  {
    *(a1 + 308) = a2;
  }

  return result;
}

uint64_t _VCConnectionIDS_SetRemoteCellTech(uint64_t a1, int a2)
{
  result = VCConnection_IsRemoteOnCellular(a1);
  if (result)
  {
    *(a1 + 312) = a2;
  }

  return result;
}

CFStringRef _VCConnectionIDS_CopyDescription(uint64_t a1)
{
  if (VCConnection_IsLocalOnCellular(a1))
  {
    v2 = "Cell";
  }

  else if (VCConnection_IsLocalOnWiFi(a1))
  {
    v2 = "WiFi";
  }

  else
  {
    v2 = "Wired";
  }

  v35 = v2;
  if (VCConnection_IsRemoteOnCellular(a1))
  {
    v3 = "Cell";
  }

  else if (VCConnection_IsRemoteOnWiFi(a1))
  {
    v3 = "WiFi";
  }

  else
  {
    v3 = "Wired";
  }

  v33 = v3;
  v34 = *MEMORY[0x1E695E480];
  ClassName = object_getClassName(a1);
  v31 = *(a1 + 288);
  v30 = [*(a1 + 280) linkID];
  IsRelay = VCConnection_IsRelay(a1);
  v5 = "P2P";
  if (IsRelay)
  {
    v5 = "Relay";
  }

  v29 = v5;
  IsIPv6 = VCConnection_IsIPv6(a1);
  v7 = "IPv4";
  if (IsIPv6)
  {
    v7 = "IPv6";
  }

  v28 = v7;
  v27 = *(a1 + 28);
  v26 = *(a1 + 324);
  v25 = *(a1 + 328);
  v24 = *(a1 + 332);
  v23 = *(a1 + 336);
  IsLocalConstrained = VCConnection_IsLocalConstrained(a1);
  IsRemoteConstrained = VCConnection_IsRemoteConstrained(a1);
  IsLocalExpensive = VCConnection_IsLocalExpensive(a1);
  IsRemoteExpensive = VCConnection_IsRemoteExpensive(a1);
  v8 = *(a1 + 340);
  v9 = *(a1 + 341);
  v10 = (*(a1 + 8) >> 2) & 1;
  v11 = (*(a1 + 10) >> 2) & 1;
  v12 = *(a1 + 342);
  v13 = VCConnection_ReportingIPVersion(a1);
  v14 = *(a1 + 343);
  v15 = *(a1 + 352);
  v16 = *(a1 + 360);
  IsHopByHopEncryptionSupported = _VCConnectionIDS_IsHopByHopEncryptionSupported(a1);
  return CFStringCreateWithFormat(v34, 0, @"<%s:%p> Token (%d) Link (%d): %s <-> %s (%s, %s), priority %d, uplink bitrate cap (%u), downlink bitrate cap (%u), uplink audio only bitrate cap = (%u), uplink OneToOne bitrate cap = (%u), isLocalConstrained (%d), isRemoteConstrained (%d), isLocalExpensive (%d) isRemoteExpensive (%d) isLocalDelegated (%d) isRemoteDelegated (%d) isLocalUltraConstrained (%d) isRemoteUltraConstrained (%d) isVirtualRelayLink (%d) reportingIPVersion(%d) TransportLayerEncryption=%d relayProtocolStackDescrption(%@) channelDataBaseProtocolStackDescription(%@) _isHopByHopEncryptionSupported=%d", ClassName, a1, v31, v30, v35, v33, v29, v28, v27, v26, v25, v24, v23, IsLocalConstrained, IsRemoteConstrained, IsLocalExpensive, IsRemoteExpensive, v8, v9, v10, v11, v12, v13, v14, v15, v16, IsHopByHopEncryptionSupported);
}

uint64_t _VCConnectionIDS_IsOnSameInterfacesWithConnection(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a2)
  {
    v5 = MEMORY[0x1E6986640];
    v6 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *v6;
      v9 = *v6;
      if (*v5 == 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136316162;
          v23 = v7;
          v24 = 2080;
          v25 = "_VCConnectionIDS_IsOnSameInterfacesWithConnection";
          v26 = 1024;
          v27 = 522;
          v28 = 2080;
          v29 = [objc_msgSend(a1 "description")];
          v30 = 2080;
          v31 = [objc_msgSend(a2 "description")];
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: isOnSameInterfacesWithConnection: %s vs. %s", &v22, 0x30u);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v22 = 136316162;
        v23 = v7;
        v24 = 2080;
        v25 = "_VCConnectionIDS_IsOnSameInterfacesWithConnection";
        v26 = 1024;
        v27 = 522;
        v28 = 2080;
        v29 = [objc_msgSend(a1 "description")];
        v30 = 2080;
        v31 = [objc_msgSend(a2 "description")];
        _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCConnection: isOnSameInterfacesWithConnection: %s vs. %s", &v22, 0x30u);
      }
    }

    IsLocalOnWiFiOrWired = VCConnection_IsLocalOnWiFiOrWired(a1);
    if (IsLocalOnWiFiOrWired == VCConnection_IsLocalOnWiFiOrWired(a2) && (IsRemoteOnWiFiOrWired = VCConnection_IsRemoteOnWiFiOrWired(a1), IsRemoteOnWiFiOrWired == VCConnection_IsRemoteOnWiFiOrWired(a2)))
    {
      IsLocalOnWired = VCConnection_IsLocalOnWired(a1);
      if (IsLocalOnWired == VCConnection_IsLocalOnWired(a2))
      {
        IsRemoteOnWired = VCConnection_IsRemoteOnWired(a1);
        if (IsRemoteOnWired == VCConnection_IsRemoteOnWired(a2))
        {
          v17 = 1;
          goto LABEL_17;
        }
      }

      _VCConnectionIDS_IsOnSameInterfacesWithConnection_cold_1();
    }

    else
    {
      _VCConnectionIDS_IsOnSameInterfacesWithConnection_cold_2();
    }

    v17 = v22;
LABEL_17:
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *v6;
      v20 = *v6;
      if (*v5 == 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315906;
          v23 = v18;
          v24 = 2080;
          v25 = "_VCConnectionIDS_IsOnSameInterfacesWithConnection";
          v26 = 1024;
          v27 = 530;
          v28 = 1024;
          LODWORD(v29) = v17;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: isOnSameInterfacesWithConnection: %{BOOL}d", &v22, 0x22u);
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        _VCConnectionIDS_IsOnSameInterfacesWithConnection_cold_3(v18);
      }
    }

    return v17;
  }

  if (ErrorLogLevelForModule >= 8)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    v12 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315650;
        v23 = v10;
        v24 = 2080;
        v25 = "_VCConnectionIDS_IsOnSameInterfacesWithConnection";
        v26 = 1024;
        v27 = 516;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: connection to check is nil", &v22, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      _VCConnectionIDS_IsOnSameInterfacesWithConnection_cold_4();
    }
  }

  return 0;
}

uint64_t _VCConnectionIDS_IsEndToEndLink(uint64_t a1)
{
  *(a1 + 342) = [*(a1 + 280) isVirtualRelayLink];
  if (*(a1 + 342))
  {
    return 1;
  }

  else
  {
    return VCConnection_IsRelay(a1) ^ 1;
  }
}

uint64_t _VCConnectionIDS_ReportingIPVersion(uint64_t a1)
{
  v2 = [*(a1 + 280) localLinkFlags];
  if ([*(a1 + 280) networkType] == 2 || objc_msgSend(*(a1 + 280), "remoteNetworkType") == 2)
  {
    v3 = (v2 & 0x10) == 0;
    v4 = 3;
  }

  else
  {
    v3 = (v2 & 8) == 0;
    v4 = 1;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v4 + 1;
  }
}

uint64_t _VCConnectionIDS_ReportingQRServerConfig(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if ([*(a1 + 280) qrExperiments])
    {
      [a2 addEntriesFromDictionary:_VCConnectionIDS_QRExperiments(a1)];
      return 1;
    }

    else
    {
      _VCConnectionIDS_ReportingQRServerConfig_cold_1();
      return v5;
    }
  }

  else
  {
    _VCConnectionIDS_ReportingQRServerConfig_cold_2(a1, a2, &v6);
    return v6;
  }
}

uint64_t _VCConnectionIDS_ReportingSliceStatus(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCConnectionIDS_ReportingSliceStatus_cold_3(a2, &v10);
    return v10;
  }

  if (!a2)
  {
    if (VCConnection_IsRemoteOnCellular(a1))
    {
      v7 = *(a1 + 280);
      if (v7)
      {
        v5 = [v7 remoteLinkFlags];
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_6;
        }

        return 1;
      }

LABEL_19:
      _VCConnectionIDS_ReportingSliceStatus_cold_2();
      return v9[1];
    }

LABEL_18:
    _VCConnectionIDS_ReportingSliceStatus_cold_1(a1, a2, v9);
    return v9[0];
  }

  if ((VCConnection_IsLocalOnCellular(a1) & 1) == 0)
  {
    goto LABEL_18;
  }

  v4 = *(a1 + 280);
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = [v4 localLinkFlags];
  if ((v5 & 0x20) == 0)
  {
    return 1;
  }

LABEL_6:
  if (v5 < 0)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  if ((v5 & 0x40) == 0)
  {
    return 2;
  }

  return v6;
}

uint64_t _VCConnectionIDS_IsHopByHopEncryptionSupported(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 368) == 1 && (*(a1 + 369) & 1) != 0)
    {
      return 1;
    }

    else
    {
      v3 = [*(a1 + 280) connectionType];
      v4 = [*(a1 + 280) remoteConnectionType] - 2;
      return (v3 - 2) < 4 || v4 < 4;
    }
  }

  else
  {
    _VCConnectionIDS_IsHopByHopEncryptionSupported_cold_1();
    return v6;
  }
}

BOOL VCConnectionIDSIsCellularRATType(int a1)
{
  if (a1)
  {
    v1 = a1 == 9;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t VCConnectionIDSCellTechForRATType(uint64_t a1)
{
  v1 = a1;
  v13 = *MEMORY[0x1E69E9840];
  if (a1 >= 8)
  {
    if (a1 == 1010)
    {
      return 9;
    }

    else if (a1 == 1009)
    {
      return 8;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v5 = 136315906;
          v6 = v3;
          v7 = 2080;
          v8 = "VCConnectionIDSCellTechForRATType";
          v9 = 1024;
          v10 = 613;
          v11 = 2048;
          v12 = v1;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unknown IDSDataChannelRATType %lu", &v5, 0x26u);
        }
      }

      return 0;
    }
  }

  return v1;
}

uint64_t VCConnectionIDS_NetworkOverheadInBytes(uint64_t a1, int a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (VCConnection_IsIPv6(a1))
    {
      v5 = 48;
    }

    else
    {
      v5 = 28;
    }

    if (a3)
    {
      v6 = 30;
    }

    else
    {
      v6 = 29;
    }

    return ((a2 > 1) | (2 * a2)) + v6 + 8 * (a2 != 0) + v5;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v10 = 136315650;
      v11 = v8;
      v12 = 2080;
      v13 = "VCConnectionIDS_NetworkOverheadInBytes";
      v14 = 1024;
      v15 = 379;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v10, 0x1Cu);
    }

    return 0;
  }
}

uint64_t VCConnection_GetWorstCaseNetworkOverhead(int a1, int a2)
{
  if (a2)
  {
    v2 = 45;
  }

  else
  {
    v2 = 44;
  }

  return ((a1 > 1) | (2 * a1)) + v2 + 56;
}

uint64_t VCConnection_GetFacetimeNetworkOverhead(int a1)
{
  if (a1)
  {
    return 68;
  }

  else
  {
    return 48;
  }
}

uint64_t VCConnectionIDS_LinkID(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      LODWORD(result) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VCConnectionIDS_LinkID";
      v8 = 1024;
      v9 = 562;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v4, 0x1Cu);
    }

    LOBYTE(result) = 0;
    return result;
  }

  LOBYTE(result) = [*(a1 + 280) linkID];
  return result;
}

BOOL VCConnectionIDS_MatchesChannelTokenWithSourceDestinationInfo(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v4 = *(a1 + 288);
    return v4 == VCDatagramChannelIDS_Token(*(a2 + 112), a2);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v8 = 136316162;
    v9 = v6;
    v10 = 2080;
    v11 = "VCConnectionIDS_MatchesChannelTokenWithSourceDestinationInfo";
    v12 = 1024;
    v13 = 584;
    v14 = 2048;
    v15 = a1;
    v16 = 2048;
    v17 = a2;
    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance=%p or sourceDestinationInfo=%p passed", &v8, 0x30u);
  }

  return 0;
}

uint64_t VCConnectionIDS_IsP2PEncryptionSupported(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 368) == 1)
    {
      v1 = *(a1 + 369);
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    VCConnectionIDS_IsP2PEncryptionSupported_cold_1();
    v1 = v3;
  }

  return v1 & 1;
}

uint64_t VCConnectionIDS_IsQUICPod(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 343);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v2;
        v7 = 2080;
        v8 = "VCConnectionIDS_IsQUICPod";
        v9 = 1024;
        v10 = 689;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil context passed", &v5, 0x1Cu);
      }
    }

    v1 = 0;
  }

  return v1 & 1;
}

uint64_t VCConnectionIDS_ReportingSatelliteNetwork(unsigned __int16 *a1, __CFDictionary *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v3)
  {
    VCConnectionIDS_ReportingSatelliteNetwork_cold_1(a1, a2);
  }

  else
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = a1[7];
    v9 = (v7 | v5) << 29;
    if (((v5 ^ v7) >> 2))
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    valuePtr = v10 & (v9 >> 31);
    v11 = *MEMORY[0x1E695E480];
    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(a2, @"LSAT", v12);
    CFRelease(v12);
    if (((v6 ^ v8) >> 2))
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v16 = v13 & (((v8 | v6) << 29) >> 31);
    v14 = CFNumberCreate(v11, kCFNumberIntType, &v16);
    CFDictionarySetValue(a2, @"RSAT", v14);
    CFRelease(v14);
  }

  return v4;
}

BOOL VCConnectionIDSIsKnownRATType(unsigned int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1 >= 0xA && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "VCConnectionIDSIsKnownRATType";
      v9 = 1024;
      v10 = 830;
      v11 = 2048;
      v12 = a1;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unknown IDSDataChannelRATType %lu", &v5, 0x26u);
    }
  }

  return a1 < 0xA;
}

const char *VCConnectionIDSRATTypeToStr(int a1)
{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      if ((a1 - 1009) >= 2)
      {
        if (a1 == 9)
        {
          return "Wired";
        }

        return "Invalid";
      }
    }

    else
    {
      if (a1 == 6)
      {
        return "HSPA+";
      }

      if (a1 == 7)
      {
        return "UTRAN";
      }
    }

    return "5G";
  }

  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return "Unknown";
      case 1:
        return "UMTS";
      case 2:
        return "GSM";
    }

    return "Invalid";
  }

  if (a1 == 3)
  {
    return "C2K";
  }

  if (a1 == 4)
  {
    return "C2K1x";
  }

  return "LTE";
}

uint64_t VCMediaNegotiationBlobMediaEncryptionSettingsReadFrom(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v28 = 0;
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

        v7 |= (v28 & 0x7F) << v5;
        if ((v28 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
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

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v29 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v29 & 0x7F) << v20;
          if ((v29 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v10 = v21++ >= 9;
          if (v10)
          {
            v19 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v22;
        }

LABEL_48:
        v26 = 24;
      }

      else
      {
        if (v12 != 2)
        {
          if (v12 == 1)
          {
            Data = PBReaderReadData();

            *(a1 + 16) = Data;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_50;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v30 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v30 & 0x7F) << v14;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v10 = v15++ >= 9;
          if (v10)
          {
            v19 = 0;
            goto LABEL_44;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v16;
        }

LABEL_44:
        v26 = 8;
      }

      *(a1 + v26) = v19;
LABEL_50:
      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

BOOL VCVideoAttributes_IsEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
    return v5 && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && *(a1 + 72) == *(a2 + 72) && *(a1 + 73) == *(a2 + 73) && CGRectEqualToRect(*(a1 + 40), *(a2 + 40)) && *(a1 + 100) == *(a2 + 100) && CGRectEqualToRect(*(a1 + 112), *(a2 + 112)) && *(a1 + 104) == *(a2 + 104);
  }

  return result;
}

CFMutableDictionaryRef VideoAttributes_CreateEncodedCFDictionary(double *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  VCCameraStatusBitsFromVideoAttributes(a1);
  FigCFDictionarySetInt16();
  FigCFDictionarySetCGRect();
  FigCFDictionarySetCGSize();
  return Mutable;
}

uint64_t VCVideoAttributeOrientationToAggregatorOrientation(unsigned int a1)
{
  v1 = a1;
  if (a1 >= 4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCVideoAttributeOrientationToAggregatorOrientation_cold_1(v2, v1, v3);
      }
    }

    LOBYTE(v1) = 4;
  }

  return v1;
}

uint64_t _VCSpeechTranslation_LibraryHandle()
{
  if (_VCSpeechTranslation_LibraryHandle_onceToken != -1)
  {
    _VCSpeechTranslation_LibraryHandle_cold_1();
  }

  if (!_MergedGlobals_8 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCSpeechTranslation_LibraryHandle_cold_2(v0, v1);
    }
  }

  return _MergedGlobals_8;
}

uint64_t VCSpeechTranslation_STSpeechTranslatorConfigurationClass()
{
  if (VCSpeechTranslation_STSpeechTranslatorConfigurationClass_onceToken != -1)
  {
    VCSpeechTranslation_STSpeechTranslatorConfigurationClass_cold_1();
  }

  if (!VCSpeechTranslation_STSpeechTranslatorConfigurationClass_speechTranslatorConfigurationClass && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCSpeechTranslation_STSpeechTranslatorConfigurationClass_cold_2();
    }
  }

  return VCSpeechTranslation_STSpeechTranslatorConfigurationClass_speechTranslatorConfigurationClass;
}

uint64_t VCSpeechTranslation_STSpeechTranslatorClientClass()
{
  if (VCSpeechTranslation_STSpeechTranslatorClientClass_onceToken != -1)
  {
    VCSpeechTranslation_STSpeechTranslatorClientClass_cold_1();
  }

  if (!VCSpeechTranslation_STSpeechTranslatorClientClass_speechTranslatorClientClass && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCSpeechTranslation_STSpeechTranslatorClientClass_cold_2();
    }
  }

  return VCSpeechTranslation_STSpeechTranslatorClientClass_speechTranslatorClientClass;
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_Configure(uint64_t a1, void *__src, int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_Configure_cold_3();
    return;
  }

  if (!__src)
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_Configure_cold_2();
    return;
  }

  memcpy((a1 + 40), __src, 0x400uLL);
  VCRateControlAlgorithmStabilizedNOWRDPriv_SetBitrateUnstable(a1, v6);
  *(a1 + 1169) = 0;
  *(a1 + 25664) = 0;
  *(a1 + 5428) = *(__src + 376);
  v7 = *(a1 + 25672);
  if (*(a1 + 888))
  {
    if (!v7)
    {
      v8 = objc_alloc_init(VCRateControlSmartBrake);
      *(a1 + 25672) = v8;
      v9 = objc_opt_class();
      if (!v8)
      {
        if (v9 == a1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              VCRateControlAlgorithmStabilizedNOWRDPriv_Configure_cold_1();
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v11 = [a1 performSelector:sel_logPrefix];
          }

          else
          {
            v11 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v21 = VRTraceErrorLogLevelToCSTR();
            v22 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v33 = v21;
              v34 = 2080;
              v35 = "_VCRateControlAlgorithmStabilizedNOWRD_InitSmartBrake";
              v36 = 1024;
              v37 = 256;
              v38 = 2112;
              *v39 = v11;
              *&v39[8] = 2048;
              v40 = a1;
              _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d %@(%p) Could not initialize smart brake in rate control algorithm.", buf, 0x30u);
            }
          }
        }

        *(a1 + 888) = 0;
        goto LABEL_30;
      }

      if (v9 == a1)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_30;
        }

        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        v14 = *(a1 + 888);
        *buf = 136315906;
        v33 = v12;
        v34 = 2080;
        v35 = "_VCRateControlAlgorithmStabilizedNOWRD_InitSmartBrake";
        v36 = 1024;
        v37 = 259;
        v38 = 1024;
        *v39 = v14;
        v15 = "VCRC [%s] %s:%d Smart brake init with smartBrakeStrategy=%d";
        v16 = v13;
        v17 = 34;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v10 = [a1 performSelector:sel_logPrefix];
        }

        else
        {
          v10 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_30;
        }

        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        v20 = *(a1 + 888);
        *buf = 136316418;
        v33 = v18;
        v34 = 2080;
        v35 = "_VCRateControlAlgorithmStabilizedNOWRD_InitSmartBrake";
        v36 = 1024;
        v37 = 259;
        v38 = 2112;
        *v39 = v10;
        *&v39[8] = 2048;
        v40 = a1;
        v41 = 1024;
        v42 = v20;
        v15 = "VCRC [%s] %s:%d %@(%p) Smart brake init with smartBrakeStrategy=%d";
        v16 = v19;
        v17 = 54;
      }

      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
LABEL_30:
      *(a1 + 5196) = 0;
      objc_msgSend_config(*(a1 + 25672));
      *(a1 + 5220) = v23;
      goto LABEL_31;
    }

    goto LABEL_10;
  }

  if (v7)
  {
LABEL_10:
    VCRateControlSmartBrake_ResetState(v7);
  }

LABEL_31:
  *(a1 + 5008) = 0;
  *(a1 + 5056) = *(a1 + 768);
  VCRateControlAlgorithmBasePriv_ResetLossEventBuffer(a1);
  *(a1 + 1164) = -1;
  if (a3)
  {
    *(a1 + 1088) = 1;
    *(a1 + 1100) = *(a1 + 56);
  }

  v24 = 1;
  if ((*(a1 + 419) & 1) == 0)
  {
    *(a1 + 5392) = 0;
    *(a1 + 5396) = 0;
    *(a1 + 5400) = 0;
    v24 = *(a1 + 419);
  }

  *(a1 + 5416) = v24;
  v25 = *(a1 + 1100);
  if (v25 >= *(a1 + 60))
  {
    v25 = *(a1 + 60);
  }

  if (v25 <= *(a1 + 64))
  {
    v25 = *(a1 + 64);
  }

  *(a1 + 1100) = v25;
  *(a1 + 1120) = *(*(a1 + 48) + 4 * *(a1 + 1100));
  VCRateControlMediaController_SetMinTargetBitrate(*(a1 + 1064), *(*(a1 + 48) + 4 * *(a1 + 64)));
  VCRateControlAlgorithmBasePriv_ResetOWRDList(a1);
  *(a1 + 5420) = 0;
  *(a1 + 5424) = 0;
  *(a1 + 2888) = 1;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 1120);
      v29 = *(a1 + 48);
      v30 = *(v29 + 4 * *(a1 + 64));
      v31 = *(v29 + 4 * *(a1 + 60));
      *buf = 136316418;
      v33 = v26;
      v34 = 2080;
      v35 = "VCRateControlAlgorithmStabilizedNOWRDPriv_Configure";
      v36 = 1024;
      v37 = 239;
      v38 = 1024;
      *v39 = v28;
      *&v39[4] = 1024;
      *&v39[6] = v30;
      LOWORD(v40) = 1024;
      *(&v40 + 2) = v31;
      _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Configuring VCRateControl algorithm with targetBitrate=%d, minBitrate=%d, maxBitrate=%d", buf, 0x2Eu);
    }
  }

  VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Configure with targetBitrate=%d, minBitrate=%d, maxBitrate=%d", *(a1 + 1120), *(*(a1 + 48) + 4 * *(a1 + 64)), *(*(a1 + 48) + 4 * *(a1 + 60)));
}

uint64_t _VCRateControlAlgorithmStabilizedNOWRD_DoRateControl(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v196 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*a2 > 10)
  {
    if (v6 == 14)
    {
      if (*(a1 + 1088))
      {
        v11 = *(a2 + 8);
        *(a1 + 5448) = v11;
        LODWORD(v11) = *(a1 + 5420);
        LODWORD(a4) = *(a2 + 40);
        *(a1 + 5420) = (*&a4 * 0.1 + v11 * 0.9);
        VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateBytesInFlightThreshold(a1);
        if (*(a1 + 5428))
        {
          if (VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToLocalRCEvent(a1))
          {
            *(a1 + 1100) = VCRateControlAlgorithmStabilizedNOWRDPriv_RampDownTierDueToLocalRCEvent(a1, v12, *(a2 + 8));
            VCRateControlAlgorithmBasePriv_StateChange(a1, 3);
          }

          else
          {
            *(a1 + 5418) = VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToLocalRCEvent(a1, v13);
          }

          *(a1 + 1120) = *(*(a1 + 48) + 4 * *(a1 + 1100));
          return 1;
        }

        result = 0;
        *(a1 + 5418) = 1;
      }

      else
      {
        result = 0;
        *(a1 + 5420) = 0;
        *(a1 + 5424) = 0;
      }

      return result;
    }

    if (v6 == 11)
    {

      return VCRateControlAlgorithmStabilizedNOWRDPriv_DoRateControlWithNWStatistics(a1, a2);
    }

    goto LABEL_18;
  }

  if (v6 == 1)
  {
    if (*(a1 + 1088))
    {
      if (*(a1 + 1064))
      {
        VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateAlgorithmWithBasebandStatistics(a1, a2);
        if (VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToBaseband(a1))
        {
          *(a1 + 1100) = VCRateControlAlgorithmStabilizedNOWRDPriv_RampDownTierDueToBaseband(a1, v14, *(a1 + 5368));
          VCRateControlAlgorithmBasePriv_StateChange(a1, 3);
        }

        else if (VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToBaseband(a1))
        {
          *(a1 + 5412) = VCRateControlAlgorithmStabilizedNOWRDPriv_BasebandAdditionalTiersForRampUp(a1);
        }

        *(a1 + 1120) = *(*(a1 + 48) + 4 * *(a1 + 1100));
        if (*(a1 + 5416) == 1)
        {
          VCRateControlMediaController_UpdateBasebandSuggestion(*(a1 + 1064), a2);
        }

        return 1;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        _VCRateControlAlgorithmStabilizedNOWRD_DoRateControl_cold_1();
      }
    }

    return 0;
  }

  if (v6 != 2)
  {
LABEL_18:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _VCRateControlAlgorithmStabilizedNOWRD_DoRateControl_cold_3();
    }

    return 0;
  }

  result = VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateInternalStatistics(a1, a2);
  if (result)
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateSmartBrakeOutputWithVCRCStatistics(a1, a2);
    ShouldRampDown = VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDown(a1);
    v10 = *(a1 + 888);
    if (v10)
    {
      if (VCRateControlSmartBrake_IsOutputEmpty(*(a1 + 5432), *(a1 + 5440)))
      {
        v10 = 0;
      }

      else
      {
        objc_msgSend_config(*(a1 + 25672));
        v17 = (*(a1 + 5436) + (v16 * *(a1 + 5440)));
        if (*(a1 + 1128) >= *(a1 + 1120))
        {
          v18 = *(a1 + 1120);
        }

        else
        {
          v18 = *(a1 + 1128);
        }

        v15 = *(a1 + 5432);
        v10 = v15 >= COERCE_FLOAT(objc_msgSend_config(*(a1 + 25672))) || v18 > v17;
      }
    }

    v20 = *(a1 + 1088);
    if (v20 <= 2)
    {
      if (!v20)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v137 = v25;
            v138 = 2080;
            v139 = "_VCRateControlAlgorithmStabilizedNOWRD_RunRateControlStateTransition";
            v140 = 1024;
            v141 = 616;
            _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d VCRateControl is paused", buf, 0x1Cu);
          }
        }

        goto LABEL_98;
      }

      if (v20 != 1)
      {
        if (v20 == 2)
        {
          if (!v10)
          {
            if (ShouldRampDown)
            {
              *(a1 + 1100) = _VCRateControlAlgorithmStabilizedNOWRD_RampDownTier(a1, v8);
              if (_VCRateControlAlgorithmStabilizedNOWRD_IsBitrateOscillating(a1, *(a1 + 1100)))
              {
                v21 = 4;
              }

              else
              {
                v21 = 3;
              }
            }

            else
            {
              if (!VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUp(a1))
              {
                goto LABEL_98;
              }

              *(a1 + 1100) = _VCRateControlAlgorithmStabilizedNOWRD_RampUpTier(a1, v8);
              if (VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldFastRampUp(a1))
              {
                v21 = 1;
              }

              else
              {
                v21 = 3;
              }
            }

            v22 = a1;
            goto LABEL_97;
          }

          goto LABEL_73;
        }

LABEL_67:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VCRateControlAlgorithmStabilizedNOWRD_DoRateControl_cold_2();
          }
        }

        goto LABEL_98;
      }

      v28 = 36;
      if (*(a1 + 1170))
      {
        v28 = 32;
      }

      if (v10)
      {
LABEL_73:
        _VCRateControlAlgorithmStabilizedNOWRD_ToggleSmartBrake(a1);
        *(a1 + 1100) = _VCRateControlAlgorithmStabilizedNOWRD_SmartBrakeBitrateCongestionTierIndex(a1);
        v22 = a1;
        v21 = 5;
LABEL_97:
        VCRateControlAlgorithmBasePriv_StateChange(v22, v21);
        goto LABEL_98;
      }

      if (ShouldRampDown)
      {
        *(a1 + 1100) = _VCRateControlAlgorithmStabilizedNOWRD_RampDownTier(a1, v8);
      }

      else
      {
        v53 = *(a1 + 40 + v28);
        if (!VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUp(a1))
        {
          goto LABEL_98;
        }

        *(a1 + 1100) = _VCRateControlAlgorithmStabilizedNOWRD_RampUpTier(a1, v8);
        v54 = *(a1 + 1100);
        if (v54 != *(a1 + 60) && (*(a1 + 1170) != 1 || v54 <= *(a1 + 456)) && v54 < v53)
        {
          goto LABEL_98;
        }
      }

LABEL_91:
      v22 = a1;
      v21 = 3;
      goto LABEL_97;
    }

    if (v20 != 3)
    {
      if (v20 != 4)
      {
        if (v20 != 5)
        {
          goto LABEL_67;
        }

        *(a1 + 25712) = *(a1 + 1144) - *(a1 + 25704) > 6.0;
        v23 = *(a1 + 5432);
        v24 = objc_msgSend_config(*(a1 + 25672));
        if ((*(a1 + 25712) & 1) != 0 || v23 <= *(&v24 + 1))
        {
          _VCRateControlAlgorithmStabilizedNOWRD_ToggleSmartBrake(a1);
          v32 = *(a1 + 5436);
          v33 = *(a1 + 60);
          v34 = *(a1 + 48);
          if (*(v34 + 4 * v33) > v32)
          {
            v35 = v33;
            v36 = *(a1 + 64);
            if (v33 >= v36)
            {
              v33 = *(a1 + 64);
            }

            v37 = v34 - 4;
            while (v35 > v36)
            {
              v38 = v35 - 1;
              v39 = *(v37 + 4 * v35--);
              if (v39 <= v32)
              {
                v33 = v38;
                break;
              }
            }
          }

          *(a1 + 1100) = v33;
          goto LABEL_91;
        }

        *(a1 + 1100) = _VCRateControlAlgorithmStabilizedNOWRD_SmartBrakeBitrateCongestionTierIndex(a1);
LABEL_98:
        *(a1 + 1120) = *(*(a1 + 48) + 4 * *(a1 + 1100));
        VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateVCRateControlHistory(a1, v8);
        v40 = *(a1 + 1064);
        if (v40)
        {
          v41 = *(a1 + 1169) == 1 && *(a1 + 1144) - *(a1 + 5328) > 0.5;
          VCRateControlMediaController_SetShouldDisableLargeFrameRequestsWhenInitialRampUp(v40, (*(a1 + 1088) == 1) & (v41 ^ 1));
          VCRateControlMediaController_SetRateLimitedMaxTimeExceeded(*(a1 + 1064), v41);
        }

        if (*(a1 + 5176) == 1)
        {
          v42 = *(a1 + 1136);
          *(a1 + 1136) = v42 + 1;
          if ((v42 & 0xF) == 0 && VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v43 = VRTraceErrorLogLevelToCSTR();
            v44 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v133 = *(a1 + 1144);
              v131 = *(a1 + 5320);
              v129 = *(a1 + 2904);
              v127 = *(a1 + 2912);
              v125 = *(a1 + 2920);
              v123 = *(a1 + 2928);
              if (*(a1 + 5152))
              {
                v45 = 79;
              }

              else
              {
                v45 = 88;
              }

              v121 = v45;
              v119 = (*(a1 + 5120) * 1000.0);
              v46 = *(a1 + 5040) * 100.0;
              v118 = *(a1 + 1216);
              v47 = *(a1 + 5104) * 100.0;
              v116 = *(a1 + 5032);
              v115 = *(a1 + 1128) / 0x3E8u;
              v113 = *(a1 + 1092);
              v111 = *(a1 + 1096);
              v109 = *(a1 + 1132);
              v106 = *(a1 + 5392) / 0x3E8u;
              v107 = *(a1 + 1120) / 0x3E8u;
              v105 = *(a1 + 5396);
              v48 = (*(a1 + 5400) * 1000.0);
              v49 = VCRateControlMediaController_AudioSendingBitrate(*(a1 + 1064)) / 0x3E8;
              v50 = VCRateControlMediaController_AudioFractionTier(*(a1 + 1064));
              if (*(a1 + 5322))
              {
                v51 = "S";
              }

              else
              {
                v51 = "U";
              }

              if (*(a1 + 1169))
              {
                v52 = "<";
              }

              else
              {
                IsVideoStopped = VCRateControlMediaController_IsVideoStopped(*(a1 + 1064));
                v52 = "-";
                if (IsVideoStopped)
                {
                  v52 = "_";
                }
              }

              v56 = *(a1 + 1088);
              v57 = *(a1 + 5432);
              v58 = *(a1 + 5436);
              *buf = 136322562;
              v137 = v43;
              v138 = 2080;
              v139 = "_VCRateControlAlgorithmStabilizedNOWRD_PrintRateControlInfoToLogDump";
              v140 = 1024;
              v141 = 1912;
              v142 = 2048;
              v143 = v133;
              v144 = 1024;
              v145 = v131;
              v146 = 2048;
              v147 = v129;
              v148 = 2048;
              v149 = v127;
              v150 = 2048;
              v151 = v125;
              v152 = 2048;
              v153 = v123;
              v154 = 1024;
              v155 = v121;
              v156 = 1024;
              v157 = v119;
              v158 = 2048;
              v159 = v46;
              v160 = 2048;
              v161 = v47;
              v162 = 1024;
              v163 = v118;
              v164 = 1024;
              v165 = v116;
              v166 = 1024;
              v167 = v115;
              v168 = 1024;
              v169 = v107;
              v170 = 1024;
              v171 = v113;
              v172 = 1024;
              v173 = v111;
              v174 = 1024;
              v175 = v109;
              v176 = 1024;
              v177 = v106;
              v178 = 1024;
              v179 = v105;
              v180 = 1024;
              v181 = v48;
              v182 = 1024;
              v183 = v49;
              v184 = 1024;
              v185 = v50;
              v186 = 2080;
              v187 = v51;
              v188 = 2080;
              v189 = v52;
              v190 = 1024;
              v191 = v56;
              v192 = 2048;
              v193 = v57;
              v194 = 1024;
              v195 = v58;
              _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d %8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:%4u\tMBL:%d\t%4u/%4u\t  CS:%04X %04X %u BB: %3u\t%4u\t%3u\t%u\t%u\t UAT %s %s\t%d\t%.3f\t%u", buf, 0xE6u);
            }
          }
        }

        v59 = *(a1 + 5160);
        if (v59)
        {
          v60 = *(a1 + 1144);
          v61 = *(a1 + 5320);
          v62 = *(a1 + 2904);
          v63 = *(a1 + 2912);
          v64 = *(a1 + 2920);
          v65 = *(a1 + 5352);
          v66 = *(a1 + 5336);
          v67 = (*(a1 + 5120) * 1000.0);
          v68 = *(a1 + 5040) * 100.0;
          v69 = *(a1 + 5104) * 100.0;
          v70 = *(a1 + 2928);
          v71 = *(a1 + 1216);
          v72 = *(a1 + 5032);
          if (*(a1 + 5152))
          {
            v73 = 79;
          }

          else
          {
            v73 = 88;
          }

          v74 = *(a1 + 1220);
          v75 = *(a1 + 1128) / 0x3E8u;
          v76 = *(a1 + 1120);
          v77 = ((v65 + v66) / 1000.0);
          v78 = (v65 / 1000.0);
          v79 = (v66 / 1000.0);
          v80 = *(a1 + 5360);
          v81 = *(a1 + 5344);
          v82 = (v80 + v81) / 1000.0;
          v83 = v82;
          v84 = (v80 / 1000.0);
          v85 = (v81 / 1000.0);
          v86 = *(a1 + 1092);
          v87 = *(a1 + 1096);
          v88 = v76 / 0x3E8;
          v135 = *(a1 + 1132);
          v134 = *(a1 + 5396);
          v89 = *(a1 + 5400) * 1000.0;
          v90 = v89;
          if (*(a1 + 5416))
          {
            v91 = "ON";
          }

          else
          {
            v91 = "OFF";
          }

          v132 = v91;
          v130 = *(a1 + 5420);
          v128 = *(a1 + 5424);
          v92 = *(a1 + 5392) / 0x3E8u;
          if (*(a1 + 5322))
          {
            v93 = "S";
          }

          else
          {
            v93 = "U";
          }

          v126 = v93;
          if (*(a1 + 1169))
          {
            v94 = "<";
          }

          else
          {
            v122 = v78;
            v124 = *(a1 + 5160);
            v120 = v82;
            v95 = *(a1 + 5320);
            v96 = (*(a1 + 5120) * 1000.0);
            v114 = *(a1 + 1092);
            v97 = *(a1 + 1216);
            v117 = (v80 / 1000.0);
            v98 = v73;
            v108 = *(a1 + 5392) / 0x3E8u;
            v110 = v89;
            v99 = *(a1 + 5032);
            v100 = *(a1 + 1220);
            v101 = *(a1 + 1128) / 0x3E8u;
            v112 = v79;
            v102 = v77;
            v103 = VCRateControlMediaController_IsVideoStopped(*(a1 + 1064));
            v77 = v102;
            v75 = v101;
            v90 = v110;
            v79 = v112;
            v74 = v100;
            v72 = v99;
            v92 = v108;
            v73 = v98;
            v84 = v117;
            v71 = v97;
            v86 = v114;
            v67 = v96;
            v83 = v120;
            v78 = v122;
            v61 = v95;
            v88 = v76 / 0x3E8;
            v104 = v103 == 0;
            v59 = v124;
            if (v104)
            {
              v94 = "-";
            }

            else
            {
              v94 = "_";
            }
          }

          VRLogfilePrintWithTimestamp(v59, "%8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:%u\tMBL:%d %u\t%4u/%4u\t %4u:%4u/%4u  %4u:%4u/%4u  CS: %05X %05X %u BB: %3u\t%4u\t%3u\t%s UAT %u\t%u\t%s\t%s\t%d\t%d\t%d\t%d\t%.3f\t%.3f\t%u\t%u\n", v60, v61, v62, v63, v64, v70, v73, v67, v68, v69, v71, v72, v74, v75, v88, v77, v78, v79, v83, v84, v85, v86, v87, v135, v92, v134, v90, v132, v130, v128, v126, v94, *(a1 + 1088), *(a1 + 5020) / 0x3E8u, *(a1 + 5024), *(a1 + 5016), *(a1 + 5184), *(a1 + 5432), *(a1 + 5436) / 0x3E8u, *(a1 + 5440) / 0x3E8u);
        }

        *(a1 + 1092) = 0;
        *(a1 + 1096) = 0;
        return 1;
      }

      *(a1 + 1092) |= 1u;
      if (v10)
      {
        _VCRateControlAlgorithmStabilizedNOWRD_ToggleSmartBrake(a1);
        v29 = _VCRateControlAlgorithmStabilizedNOWRD_SmartBrakeBitrateCongestionTierIndex(a1);
        v30 = 5;
      }

      else
      {
        if (!ShouldRampDown)
        {
          goto LABEL_95;
        }

        v29 = _VCRateControlAlgorithmStabilizedNOWRD_RampDownTier(a1, v8);
        v30 = 3;
      }

      *(a1 + 1100) = v29;
      VCRateControlAlgorithmBasePriv_StateChange(a1, v30);
LABEL_95:
      if (*(a1 + 1144) - *(a1 + 1152) <= *(a1 + 25520))
      {
        goto LABEL_98;
      }

LABEL_96:
      v22 = a1;
      v21 = 2;
      goto LABEL_97;
    }

    *(a1 + 1092) |= 1u;
    if (v10)
    {
      _VCRateControlAlgorithmStabilizedNOWRD_ToggleSmartBrake(a1);
      *(a1 + 1100) = _VCRateControlAlgorithmStabilizedNOWRD_SmartBrakeBitrateCongestionTierIndex(a1);
      v27 = 5;
    }

    else
    {
      if (!ShouldRampDown || (*(a1 + 1100) = _VCRateControlAlgorithmStabilizedNOWRD_RampDownTier(a1, v8), !_VCRateControlAlgorithmStabilizedNOWRD_IsBitrateOscillating(a1, *(a1 + 1100))))
      {
LABEL_79:
        _VCRateControlAlgorithmStabilizedNOWRD_GetRampUpFrozenDuration(a1);
        *(a1 + 25520) = v31;
        if (*(a1 + 1144) - *(a1 + 1152) <= v31)
        {
          goto LABEL_98;
        }

        goto LABEL_96;
      }

      v27 = 4;
    }

    VCRateControlAlgorithmBasePriv_StateChange(a1, v27);
    goto LABEL_79;
  }

  return result;
}

void _VCRateControlAlgorithmStabilizedNOWRD_StateEnter(uint64_t a1)
{
  v2 = *(a1 + 1088);
  switch(v2)
  {
    case 4:
      *(a1 + 1152) = *(a1 + 1144);
      v4 = 496;
      if (*(a1 + 1144) - *(a1 + 25528) > *(a1 + 480))
      {
        v4 = 488;
      }

      v5 = *(a1 + 40 + v4);
      _VCRateControlAlgorithmStabilizedNOWRD_GetRampUpFrozenDuration(a1);
      v3 = v5 * v6;
      goto LABEL_9;
    case 3:
      *(a1 + 1152) = *(a1 + 1144);
      _VCRateControlAlgorithmStabilizedNOWRD_GetRampUpFrozenDuration(a1);
LABEL_9:
      *(a1 + 25520) = v3;
      return;
    case 1:
      *(a1 + 25568) = 0;
      break;
  }
}

double _VCRateControlAlgorithmStabilizedNOWRD_StateExit(uint64_t a1)
{
  v2 = *(a1 + 1088);
  if (v2 == 4)
  {
    result = *(a1 + 1144);
    *(a1 + 25528) = result;
  }

  else if (v2 == 1)
  {
    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Initial Rampup done!");
    if ((*(a1 + 1170) & 1) == 0)
    {
      *(a1 + 1170) = 1;
    }
  }

  return result;
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_SetBitrateUnstable(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 5322) = 0;
    ++*(a1 + 1132);
    *(a1 + 1168) = 0;
    if (*(a1 + 1088) != 1)
    {
      *(a1 + 1152) = *(a1 + 1144);
      *(a1 + 1224) = *(a1 + 1144);
    }

    if (*(a1 + 544) == 1)
    {
      *(a1 + 25544) = micro(a1, a2);
    }
  }

  else
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_SetBitrateUnstable_cold_1();
  }
}

uint64_t VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToLocalRCEvent(uint64_t a1)
{
  if (!a1)
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToLocalRCEvent_cold_2();
    return v7;
  }

  v1 = *(a1 + 5424);
  if (!v1)
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToLocalRCEvent_cold_1(a1);
    return v6;
  }

  if (*(a1 + 5448) - *(a1 + 5456) <= 0.1 || *(a1 + 1112) >= vcvtd_n_f64_u32(*(a1 + 5464), 1uLL))
  {
    v3 = *(a1 + 5420);
    v2 = v3 > v1;
    if (v3 <= v1)
    {
      v4 = (a1 + 1164);
      if (*(a1 + 1164) == -1)
      {
        return 0;
      }
    }

    else
    {
      *(a1 + 1096) |= 0x1000u;
      *(a1 + 2928) = 0;
      v4 = (a1 + 1164);
    }

    *v4 = v3 <= v1;
  }

  else
  {
    v2 = 0;
    *(a1 + 5420) = 0;
  }

  return v2;
}

uint64_t VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToLocalRCEvent(uint64_t a1, double a2)
{
  if (a1)
  {
    v2 = *(a1 + 5424);
    if (v2)
    {
      LODWORD(a2) = *(a1 + 5420);
      return v2 * 0.9 > *&a2;
    }

    else
    {
      VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToLocalRCEvent_cold_1(a1);
      return v4;
    }
  }

  else
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToLocalRCEvent_cold_2();
    return v5;
  }
}

uint64_t VCRateControlAlgorithmStabilizedNOWRDPriv_RampDownTierDueToLocalRCEvent(uint64_t a1, uint64_t a2, double a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_SetBitrateUnstable(a1, a2);
    VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampDown(a1, a3);
    v5 = *(a1 + 5420) / *(a1 + 5424);
    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "BytesInFlight rampDown numberOfTier=%d with bytesInFlight=%u, bytesInFlightThreshold=%u, roundTripTimeMinEnvelope=%f", v5, *(a1 + 5420), *(a1 + 5424), *(a1 + 5128));
    v6 = *(a1 + 64);
    v7 = *(a1 + 1100) - v5;
    if (v6 <= v7)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_RampDownTierDueToLocalRCEvent_cold_1(&v9);
    return v9;
  }
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateBytesInFlightThreshold(uint64_t a1)
{
  if (a1)
  {
    v2 = VCRateControlCongestionLevel_BitrateRange(*(a1 + 1120));
    if (*(a1 + 5225) == 1 && (v3 = *(a1 + 40 + 8 * v2 + 936), v3 > 0.0))
    {
      v4 = *(a1 + 5128);
      v5 = v3 * v4;
      if (v5 < 0.15)
      {
        v5 = 0.15;
      }

      v6 = v4 + v5;
      LODWORD(v4) = *(a1 + 1216);
      *(a1 + 5424) = (v6 * *&v4 * 1000.0 * 0.125);
    }

    else
    {
      *(a1 + 5424) = 0;
    }
  }

  else
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateBytesInFlightThreshold_cold_1();
  }
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateAlgorithmWithBasebandStatistics(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*a2 == 1)
      {
        *(a1 + 5368) = *(a2 + 8);
        *(a1 + 5392) = *(a2 + 36);
        *(a1 + 5396) = *(a2 + 28) + *(a2 + 24);
        *(a1 + 5400) = *(a2 + 64);
        *(a1 + 5376) = *(a2 + 80);
        *(a1 + 5384) = *(a2 + 88);
        *(a1 + 5417) = *(a2 + 16);
        v4 = *(a1 + 5408);
        v5 = *(a2 + 160);
        if (*(a1 + 5416) == 1 && v5 == 8)
        {
          VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Disabling baseband adaptation due to FR2 RATType");
        }

        v6 = *(a1 + 419);
        if (v5 == 8)
        {
          v6 = 0;
        }

        if (v5 != v4 && v5 <= 9 && ((1 << v5) & 0x3A0) != 0 && v4 <= 9 && ((1 << v4) & 0x3A0) != 0)
        {
          *(a1 + 25600) = *(a1 + 5368);
        }

        if (*(a1 + 5368) - *(a1 + 25600) < *(a1 + 672))
        {
          v6 = 0;
        }

        v7 = *(a1 + 1128);
        if (v7 && *(a2 + 40) / v7 > *(a1 + 680))
        {
          if (*(a1 + 5416) == 1)
          {
            VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Disable baseband adaptation due to cross traffic. Average baseband throughput %d is much larger than our actual bitrate %d", *(a2 + 40), v7);
          }

          v6 = 0;
        }

        *(a1 + 5416) = v6;
        *(a1 + 5408) = *(a2 + 160);
      }

      else
      {
        VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateAlgorithmWithBasebandStatistics_cold_1();
      }
    }

    else
    {
      VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateAlgorithmWithBasebandStatistics_cold_2();
    }
  }

  else
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateAlgorithmWithBasebandStatistics_cold_3();
  }
}

uint64_t VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateInternalStatistics(uint64_t a1, uint64_t a2)
{
  v78 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateInternalStatistics_cold_3();
    return v72;
  }

  if (!a2)
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateInternalStatistics_cold_2();
    return v72;
  }

  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 80);
  v7 = *(a2 + 52);
  v8 = *(a2 + 60);
  *(a1 + 25636) = *(a2 + 40);
  *(a1 + 5032) = *(a2 + 48);
  *(a1 + 1216) = *(a2 + 32);
  *(a1 + 5488) = *(a2 + 36) != 0;
  *(a1 + 5320) = *(a2 + 68);
  *(a1 + 5470) = *(a2 + 28);
  v9 = *(a1 + 5144);
  if (v9 <= *(a1 + 25636))
  {
    v9 = *(a1 + 25636);
  }

  *(a1 + 5144) = v9;
  *(a1 + 1128) = *(a2 + 96);
  *(a1 + 5028) = *(a2 + 184);
  *(a1 + 5456) = v4;
  *(a1 + 5464) = *(a1 + 1120);
  if ((*(a1 + 1171) & 1) == 0)
  {
    v70 = 0;
    *(a1 + 1171) = 1;
    *(a1 + 5264) = *(a2 + 8);
    *(a1 + 5468) = v5;
    return v70;
  }

  v10 = *(a1 + 5468);
  if (v5 == v10 || (v5 - v10) >= 0x7FFFu)
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateInternalStatistics_cold_1(v5);
    return v72;
  }

  if (v10 > v5)
  {
    ++*(a1 + 5476);
  }

  *(a1 + 5468) = v5;
  *(a1 + 1144) = VCRateControlAlgorithmBasePriv_GetDoubleTimeFromTimestamp(v5, 0x400u, *(a1 + 5476));
  *(a1 + 5472) = VCRateControlAlgorithmBasePriv_GetTimestampFromMicroTime(v11, v12, v4);
  *(a1 + 2904) = v6;
  *(a1 + 5152) = v4 - VCRateControlMediaController_LastVideoRefreshFrameTime(*(a1 + 1064)) < *(a1 + 480);
  if (*(a1 + 25560) == 0.0)
  {
    *(a1 + 25560) = *(a1 + 1144);
  }

  v13 = *(a1 + 25636);
  v14 = *(a2 + 88);
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v72 = v15;
  v73 = v15;
  v74 = v15;
  v75 = v15;
  v76 = 0xAAAAAAAAAAAAAAAALL;
  LOWORD(v72) = *(a1 + 5320);
  *(&v72 + 4) = v7;
  *&v73 = v8;
  DWORD2(v73) = v13;
  *&v74 = a1 + 5032;
  *(&v74 + 1) = a1 + 5096;
  *&v75 = a1 + 5040;
  *(&v75 + 1) = a1 + 5104;
  LOBYTE(v76) = [*(a1 + 1064) trafficType];
  v16 = *(a1 + 1064);
  if (v16)
  {
    VCRateControlMediaController_ComputePacketLoss(v16, &v72);
  }

  else
  {
    *(a1 + 5040) = v14;
  }

  if (*(a1 + 5040) > *(a1 + 760))
  {
    *(a1 + 25656) = *(a1 + 1144);
  }

  DoubleTimeFromTimestamp = *(a2 + 104);
  if (DoubleTimeFromTimestamp == 0.0)
  {
    v18 = *(a1 + 5472);
    if (v18 < *(a1 + 5320))
    {
      *(a1 + 5472) = v18 + 0x10000;
    }

    v19 = *(a1 + 5470);
    if (!*(a1 + 5470))
    {
      *(a1 + 5320) = -1;
      goto LABEL_39;
    }

    v20 = *(a1 + 5472) - *(a1 + 5320);
    v21 = v20 >= v19;
    v22 = v20 - v19;
    if (v22 != 0 && v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = 1;
    }

    DoubleTimeFromTimestamp = VCRateControlAlgorithmBasePriv_GetDoubleTimeFromTimestamp(v23, 0x400u, 0);
  }

  *(a1 + 5112) = DoubleTimeFromTimestamp;
  v24 = *(a1 + 5120);
  if (v24 == 0.0)
  {
    v25 = DoubleTimeFromTimestamp;
  }

  else
  {
    v25 = DoubleTimeFromTimestamp * 0.1 + v24 * 0.9;
  }

  *(a1 + 5120) = v25;
  v26 = *(a1 + 5128);
  if (v26 == 0.0)
  {
    v27 = *(a1 + 5120);
  }

  else
  {
    v28 = *(a1 + 25648);
    v29 = *(a1 + 5120);
    v30 = *(a1 + 512);
    *(a1 + 25648) = v29;
    if (v29 >= v26 && v28 - v29 <= v30)
    {
      goto LABEL_34;
    }

    v27 = DoubleTimeFromTimestamp * dbl_1DBD49B90[*(a1 + 5128) > DoubleTimeFromTimestamp] + *(a1 + 5128) * (1.0 - dbl_1DBD49B90[*(a1 + 5128) > DoubleTimeFromTimestamp]);
  }

  *(a1 + 5128) = v27;
LABEL_34:
  v31 = *(a1 + 5136);
  if (v31 <= *(a1 + 5120))
  {
    v31 = *(a1 + 5120);
  }

  *(a1 + 5136) = v31;
  if (*(a1 + 5120) > *(a1 + 752))
  {
    *(a1 + 25656) = *(a1 + 1144);
  }

LABEL_39:
  VCRateControlAlgorithmBasePriv_CalculateCongestionMetrics(a1, *(a1 + 2904), *(a1 + 1144));
  v32 = 0;
  if (*(a1 + 2897) == 1)
  {
    if (*(a1 + 25512) != 0.0)
    {
      goto LABEL_43;
    }

    v32 = *(a1 + 1144);
  }

  *(a1 + 25512) = v32;
LABEL_43:
  v33 = *(a1 + 1064);
  if (v33)
  {
    VCRateControlMediaController_MediaQueueSettings(v33);
    v35 = *(a1 + 5360);
    v36 = *(a1 + 5344) + v35;
    *(a1 + 1128) = v36;
    v37 = *(a1 + 1100);
    if (v37 <= *(a1 + 64) || v37 < *(a1 + 120) || (LODWORD(v36) = *(a1 + 1128), LODWORD(v35) = *(a1 + 1120), *(a1 + 296) * *&v35 <= *&v36))
    {
      if (*(a1 + 1169) == 1)
      {
        v39 = *(a1 + 5328);
        if (v39 <= 0.0 || *(a1 + 1144) - v39 <= *(a1 + 304))
        {
          v38 = 0;
        }

        else
        {
          VCRateControlAlgorithmStabilizedNOWRDPriv_SetBitrateUnstable(a1, v34);
          VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] Sending rate was limited for a long time, stabilizing the bitrate", *(a1 + 1132));
          v38 = 0;
        }

LABEL_57:
        *(a1 + 1169) = v38;
      }
    }

    else if (!VCRateControlMediaController_IsAudioOnly(*(a1 + 1064)) || *(a1 + 1100) < *(a1 + 124))
    {
      if ((*(a1 + 1169) & 1) == 0)
      {
        *(a1 + 5328) = *(a1 + 1144);
      }

      v38 = 1;
      goto LABEL_57;
    }
  }

  v40 = *(a1 + 192);
  if (*(a1 + 423) == 1 && *(a1 + 5008) == 0.0)
  {
    v41 = *(a1 + 5120);
    if (*(a1 + 464) * v41 < v40)
    {
      v40 = *(a1 + 464) * v41;
    }

    if (*(a1 + 320) > v40)
    {
      v40 = *(a1 + 320);
    }
  }

  v42 = *(a1 + 5320);
  v43 = *(a1 + 5470);
  *(a1 + 25576) = v40;
  if (*(a1 + 5322) == 1)
  {
    if (*(a1 + 1088) != 1 && *(a1 + 25568) == 1 && *(a1 + 1144) - *(a1 + 25536) > v40)
    {
      *(a1 + 25568) = 0;
    }
  }

  else
  {
    v44 = *(a1 + 1064);
    if (v44)
    {
      *&v72 = -1;
      v77 = -1431655766;
      VCRateControlMediaController_MediaQueueRateChangeCounter(v44);
      TimestampFromMicroTime = VCRateControlAlgorithmBasePriv_GetTimestampFromMicroTime(v45, v46, *&v72);
      v49 = *(a1 + 544);
      if (v49 == 2)
      {
        v77 = *(a1 + 1132);
        LOWORD(TimestampFromMicroTime) = v42;
      }

      else if (v49 == 1)
      {
        v77 = *(a1 + 1132);
        LOWORD(TimestampFromMicroTime) = VCRateControlAlgorithmBasePriv_GetTimestampFromMicroTime(TimestampFromMicroTime, v48, *(a1 + 25544));
      }

      v50 = *(a1 + 1132);
      if (*(a1 + 5480) != v50)
      {
        if (v77 >= v50 && (*(a1 + 1168) = 1, v43) && (v42 - TimestampFromMicroTime) <= 0x7FFEu)
        {
          *(a1 + 25536) = *(a1 + 1144);
          *(a1 + 5484) = 1;
          *(a1 + 25608) = 0;
          *(a1 + 5480) = *(a1 + 1132);
          VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] VCRC rate stabilized (TxTS %u >= %u FB). Collecting VCRC samples...");
        }

        else
        {
          *(a1 + 5484) = 0;
        }
      }
    }

    else if (!*(a1 + 5484))
    {
      *(a1 + 25536) = *(a1 + 1144);
      *(a1 + 5484) = 1;
      *(a1 + 25608) = 0;
      VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] VCRC rate stabilized since no mediaController. Collecting VCRC samples...");
    }

    if (*(a1 + 5323) == 1)
    {
      *(a1 + 5322) = 1;
      *(a1 + 5484) = 0;
    }

    v51 = *(a1 + 5484);
    if (v51)
    {
      if (*(a1 + 1144) - *(a1 + 25536) >= *(a1 + 320) && v51 >= *(a1 + 356))
      {
        VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] Collected %d VCRC samples (TxTS %u)", *(a1 + 1132), *(a1 + 5484), v42);
        *(a1 + 5322) = 1;
        *(a1 + 5484) = 0;
      }

      else
      {
        *(a1 + 5484) = v51 + 1;
      }
    }
  }

  if (*(a1 + 1160) == 1 && *(a1 + 5322) == 1 && *(a1 + 1144) - *(a1 + 25536) > *(a1 + 312))
  {
    *(a1 + 1160) = 0;
  }

  VCRateControlAlgorithmBasePriv_CheckPaused(a1);
  if (*(a1 + 1100) <= *(a1 + 84) && *(a1 + 2904) >= *(a1 + 200))
  {
    *(a1 + 5178) = 1;
    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Hit the abnormal bad network condition. Start abnormal bad network adaptation with softMaxTier=%u. RTT=%f, owrd=%f", *(*(a1 + 48) + 4 * *(a1 + 72)), *(a1 + 5120), *(a1 + 2904));
  }

  if (*(a1 + 1144) - *(a1 + 25656) > 90.0)
  {
    if (*(a1 + 5178) == 1)
    {
      VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Stop abnormal bad network adaptation. Remove the softMaxTier and current maxTier=%u. RTT=%f, owrd=%f", *(*(a1 + 48) + 4 * *(a1 + 60)), *(a1 + 5120), *(a1 + 2904));
    }

    *(a1 + 5178) = 0;
  }

  if (*(a1 + 418) == 1)
  {
    VCRateControlAlgorithmBasePriv_CheckBandwidthOvershoot(a1, 1000 * *(a1 + 1216));
  }

  else
  {
    *(a1 + 1216) = 0;
  }

  VCRateControlAlgorithmBasePriv_UpdateLossEvent(a1);
  if (*(a1 + 436) == 1)
  {
    v52 = vcvtd_n_f64_u32(*(*(a1 + 48) + 4 * *(a1 + 60)), 1uLL);
    v53 = *(a1 + 5120);
    if (v53 > *(a1 + 440))
    {
      v54 = *(a1 + 5128);
      while (1)
      {
        v54 = v54 + v54;
        if (v54 <= 0.0 || v53 <= v54)
        {
          break;
        }

        v52 = vcvtd_n_f64_u32(v52, 1uLL);
      }
    }

    *(a1 + 25588) = v52;
    v55 = *(a1 + 1120) <= *(a1 + 25588);
  }

  else
  {
    v55 = 0;
  }

  v56 = 0;
  v57 = 0;
  *(a1 + 25584) = v55;
  v58 = *(a1 + 872);
  v59 = *(a1 + 880);
  if (v59 >= *(a1 + 864) * *(a1 + 5120))
  {
    v59 = *(a1 + 864) * *(a1 + 5120);
  }

  if (v58 <= v59)
  {
    v58 = v59;
  }

  v60 = *(a1 + 4992) - 1;
  v61 = 0.0;
  v62 = -63;
  v63 = 0.0;
  while (1)
  {
    v64 = a1 + 2944 + 32 * (v60 & 0x3F);
    v65 = *v64;
    if (v62 == -63)
    {
      v56 = *(v64 + 28);
      v57 = *(v64 + 26);
      v61 = *v64;
    }

    if (v65 == 0.0)
    {
      break;
    }

    v66 = v61 - v65 > v58 || v62++ == 0;
    LOBYTE(v60) = v60 - 1;
    if (v66)
    {
      v69 = *(v64 + 26);
      v68 = v64 + 26;
      v67 = v69;
      if (v69 != v57)
      {
        v63 = (v56 - *(v68 + 2)) / (v57 - v67);
      }

      break;
    }
  }

  *(a1 + 5184) = v63;
  return 1;
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateVCRateControlHistory(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 25496);
    if (v2)
    {
      if (v2 <= 499)
      {
        *(result + 25496) = v2 + 1;
      }

      *(result + 25500) = (*(result + 25500) + 1) % 500;
      v3 = result + 5496 + 40 * *(result + 25500);
    }

    else
    {
      v3 = result + 5496;
      *(result + 25496) = 1;
    }

    *v3 = *(result + 2904);
    *(v3 + 24) = *(result + 5040);
    *(v3 + 8) = *(result + 5120);
    *(v3 + 16) = *(result + 5128);
    *(v3 + 32) = *(result + 1100);
  }

  else
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateVCRateControlHistory_cold_1();
  }
}

BOOL VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldDoAdditionalRampDownDueToLossEvent(uint64_t a1)
{
  if ((*(a1 + 1097) & 2) == 0)
  {
    return 0;
  }

  if (*(a1 + 5008) <= 0.0)
  {
    return *(a1 + 1120) > *(a1 + 25588);
  }

  return 1;
}

uint64_t VCRateControlAlgorithmStabilizedNOWRDPriv_RampDownTierDueToBaseband(uint64_t a1, uint64_t a2, double a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_RampDownTierDueToBaseband_cold_1(&v24);
    return v24;
  }

  *(a1 + 25608) = 1;
  VCRateControlAlgorithmStabilizedNOWRDPriv_SetBitrateUnstable(a1, a2);
  VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampDown(a1, a3);
  IsAudioOnly = VCRateControlMediaController_IsAudioOnly(*(a1 + 1064));
  if (IsAudioOnly)
  {
    if (*(a1 + 1100) < *(a1 + 80))
    {
      v7 = *(a1 + 592);
      if (a3 - *(a1 + 1200) < v7 && *(a1 + 1144) - *(a1 + 1192) < v7)
      {
        *(a1 + 25568) = 0;
        v23 = 1100;
        return *(a1 + v23);
      }
    }
  }

  if (((*(a1 + 25568) & 1) != 0 || *(a1 + 1088) == 1) && *(a1 + 1100) > *(a1 + 1104))
  {
    *(a1 + 25568) = 0;
    v23 = 1104;
    return *(a1 + v23);
  }

  *(a1 + 25568) = 0;
  v8 = *(a1 + 1100);
  v9 = *(a1 + 48);
  v10 = *(v9 + 4 * v8);
  v11 = *(a1 + 748);
  v12 = v11;
  if (v11 <= 0)
  {
    v12 = 1.0;
  }

  v13 = *(a1 + 5392);
  if (v10 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10 - (v10 - v13) / v12;
  }

  v15 = *(a1 + 64);
  v16 = (v9 + 4 * v8);
  v17 = v8 - 1;
  v18 = *(a1 + 1100);
  while (1)
  {
    v19 = *v16--;
    if (v19 <= v14)
    {
      break;
    }

    v20 = v17 > v15;
    --v18;
    --v17;
    if ((v20 & ~IsAudioOnly & 1) == 0)
    {
      if (v18 <= v15)
      {
        v18 = *(a1 + 64);
      }

      break;
    }
  }

  if (v18 <= v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = v18;
  }

  if (v8 > v21)
  {
    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] Congestion due to baseband!!! New bitrate down to %u [slow:%f]");
LABEL_26:
    *(a1 + 1200) = a3;
    goto LABEL_27;
  }

  if (VCRateControlMediaController_RampDownAudioFraction(*(a1 + 1064), v6))
  {
    VCRateControlMediaController_AudioFractionTier(*(a1 + 1064));
    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] Congestion due to baseband!!! New audio fraction tier down to %u. Video stopped.");
    goto LABEL_26;
  }

LABEL_27:
  *(a1 + 1104) = *(a1 + 1100);
  return v21;
}

uint64_t VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUp(uint64_t a1)
{
  if (!a1)
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUp_cold_1();
    return v16;
  }

  v2 = *(a1 + 5322);
  if ((v2 & 1) == 0)
  {
    *(a1 + 1092) |= 2u;
  }

  if (*(a1 + 25568) == 1)
  {
    v2 = 0;
    *(a1 + 1092) |= 4u;
  }

  if (*(a1 + 1169) == 1)
  {
    v2 = 0;
    *(a1 + 1092) |= 8u;
  }

  if (VCRateControlAlgorithmBasePriv_RecentlyGoAboveRampUpBandwidth(a1))
  {
    v2 = 0;
    *(a1 + 1092) |= 0x200u;
  }

  if ((*(a1 + 2896) & 1) == 0)
  {
    v2 = 0;
    *(a1 + 1092) |= 0x100u;
  }

  if (*(a1 + 2897) == 1)
  {
    v2 = 0;
    *(a1 + 1092) |= 0x80u;
  }

  if (*(a1 + 2904) > *(a1 + 200))
  {
    v2 = 0;
    *(a1 + 1092) |= 0x10u;
  }

  if (*(a1 + 2912) > *(a1 + 208))
  {
    v2 = 0;
    *(a1 + 1092) |= 0x20u;
  }

  v3 = *(a1 + 2928);
  v4 = VCRateControlCongestionLevel_BitrateRange(*(a1 + 1120));
  if (*(a1 + 5224))
  {
    v5 = *(a1 + 40 + 8 * v4 + 896) * *(a1 + 5128);
  }

  else
  {
    v5 = *(a1 + 136);
  }

  if (v3 > v5)
  {
    v2 = 0;
    *(a1 + 1092) |= 0x40u;
  }

  if (*(a1 + 5416) == 1 && *(a1 + 1088) != 1 && !*(a1 + 5412))
  {
    v2 = 0;
    *(a1 + 1092) |= 0x400u;
  }

  v6 = *(a1 + 1100);
  if (v6 >= *(a1 + 60))
  {
    v2 = 0;
    *(a1 + 1092) |= 0x1000u;
    v6 = *(a1 + 1100);
  }

  if (v6 >= *(a1 + 456))
  {
    if (*(a1 + 425) == 1)
    {
      v7 = *(a1 + 25664);
    }

    else
    {
      v7 = 0;
    }

    if (*(a1 + 1088) == 1)
    {
      if (!*(a1 + 1216))
      {
        goto LABEL_37;
      }
    }

    else if ((*(a1 + 1144) - *(a1 + 25656) < *(a1 + 688)) | v7 & 1)
    {
LABEL_37:
      v2 = 0;
      *(a1 + 1092) |= 0x4000u;
    }
  }

  if (*(a1 + 424) == 1)
  {
    v8 = _VCRateControlAlgorithmStabilizedNOWRD_CheckNetworkSaturation(a1, *(a1 + 5120), *(a1 + 5128), *(a1 + 5040), *(a1 + 2904));
    if (*(a1 + 504) >= 1)
    {
      v9 = 0;
      v10 = 500;
      do
      {
        v11 = (a1 + 5496 + 40 * ((v10 + *(a1 + 25500)) % 500));
        v8 &= _VCRateControlAlgorithmStabilizedNOWRD_CheckNetworkSaturation(a1, v11[1], v11[2], v11[3], *v11);
        ++v9;
        --v10;
      }

      while (v9 < *(a1 + 504));
    }

    if (v8)
    {
      v2 = 0;
      *(a1 + 1092) |= 0x2000u;
    }
  }

  if (VCRateControlAlgorithmBasePriv_ShouldBlockRampUpDueToLossEventThreshold(a1))
  {
    v2 = 0;
    *(a1 + 1092) |= 0x4000u;
  }

  if (*(a1 + 5184) > 0.0)
  {
    v2 = 0;
    *(a1 + 1092) |= 0x8000u;
  }

  if (*(a1 + 5428) == 1 && *(a1 + 5420) && (*(a1 + 5418) & 1) == 0)
  {
    *(a1 + 1092) |= 0x10000u;
  }

  else if (v2)
  {
    *(a1 + 25560) = *(a1 + 1144);
    return 1;
  }

  v13 = *(a1 + 232);
  if (v13 != 0.0)
  {
    v14 = *(a1 + 25560);
    if (v14 != 0.0 && *(a1 + 1144) - v14 >= v13)
    {
      v15 = *(a1 + 1092);
      if (v15 == 8 || v15 == 2048 || v15 == 1024)
      {
        *(a1 + 1092) = 0;
        return 1;
      }
    }
  }

  return 0;
}

void VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateSmartBrakeOutputWithVCRCStatistics(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = *(result + 1144);
      *(result + 25680) = v2;
      *(result + 25684) = *(result + 1128);
      v3 = *(result + 5120);
      *(result + 25692) = v3;
      v4 = *(result + 2904);
      *(result + 25688) = v4;
      v5 = *(result + 5096);
      *(result + 25696) = v5;
      v6 = *(result + 5104);
      *(result + 25700) = v6;
      if (*(result + 888))
      {
        v7 = result + 25680;
        v8 = result + 5432;
        v9 = *(result + 25672);

        VCRateControlSmartBrake_Query(v9, v7, v8);
      }
    }

    else
    {
      VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateSmartBrakeOutputWithVCRCStatistics_cold_1();
    }
  }

  else
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateSmartBrakeOutputWithVCRCStatistics_cold_2();
  }
}

uint64_t VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToBaseband(uint64_t a1)
{
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToBaseband_cold_1();
      }
    }

    return 0;
  }

  if (*(a1 + 5416) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 5368);
  v3 = *(a1 + 1064);
  if ((*(a1 + 5417) & 1) == 0)
  {
    v4 = VCRateControlMediaController_BasebandFlushCount(*(a1 + 1064));
    if (v4 > 0)
    {
      v5 = v4;
      VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Still trying to flush baseband with flush counter %d. No further ramp up/down but possibly decrease audio fraction.", [v3 basebandFlushCount]);
      if (v2 - VCRateControlMediaController_LastBasebandFlushCountChangeTime(v3) <= 3.0 || *(a1 + 5400) >= 0.001)
      {
        goto LABEL_25;
      }

      VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Flush counter: %d stuck for more than %d seconds. And baseband shows TxRate:%d, TxDelay:%f. Reset the flush counter!", v5, 3, *(a1 + 5392), *(a1 + 5400));
      VCRateControlMediaController_SetBasebandFlushCount(v3, 0);
LABEL_24:
      VCRateControlMediaController_SetLastBasebandFlushCountChangeTime(v3, v2);
LABEL_25:
      VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Try to ramp down audio fraction with [flushCount:%d, BBAvgRate:%d]", [v3 basebandFlushCount], *(a1 + 5392));
      VCRateControlMediaController_RampDownAudioFraction(v3, v8);
      v6 = 0;
      *(a1 + 1096) |= 0x80u;
      return v6;
    }
  }

  if (!*(a1 + 5392))
  {
    goto LABEL_24;
  }

  if (*(a1 + 1168) != 1 || [v3 basebandFlushCount])
  {
    goto LABEL_15;
  }

  if (*(a1 + 25568))
  {
    v10 = 520;
  }

  else
  {
    v10 = 512;
    if (*(a1 + 1088) == 1)
    {
      v10 = 520;
    }
  }

  v11 = *(a1 + 40 + v10);
  if (VCRateControlMediaController_IsAudioOnly(v3))
  {
    if (*(a1 + 5376) > v11 || *(a1 + 5384) > *(a1 + 568))
    {
      v12 = *(a1 + 5400);
      v13 = *(a1 + 576);
      goto LABEL_41;
    }

LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  VideoKeyFrameTime = VCRateControlMediaController_LastVideoKeyFrameTime(*(a1 + 1064));
  if (*(a1 + 5376) <= v11 && *(a1 + 5384) <= *(a1 + 568) && !VCRateControlMediaController_IsVideoStopped(v3))
  {
    goto LABEL_15;
  }

  v6 = 0;
  if (*(a1 + 5400) > *(a1 + 576) && VideoKeyFrameTime > 0.0)
  {
    v12 = *(a1 + 5368) - VideoKeyFrameTime;
    v13 = 0.5;
LABEL_41:
    if (v12 > v13)
    {
      *(a1 + 1096) |= 0x20u;
      *(a1 + 2928) = 0;
      v6 = 1;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:
  if (([v3 isAudioOnly] & 1) == 0)
  {
    v7 = VCRateControlMediaController_LastVideoKeyFrameTime(*(a1 + 1064));
    if ((*(a1 + 744) != 1 || v7 > 0.0 && *(a1 + 5368) - v7 > 0.5) && *(a1 + 5400) > *(a1 + 584))
    {
      *(a1 + 1096) |= 0x40u;
      *(a1 + 2928) = 0;
      v6 = 1;
    }
  }

  if (*(a1 + 5376) > *(a1 + 552))
  {
    *(a1 + 25624) = *(a1 + 5368);
  }

  return v6;
}

uint64_t VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToBaseband(double *a1)
{
  if (a1)
  {
    return a1[672] <= a1[80] && a1[675] <= a1[81] && a1[671] - a1[3203] >= a1[82];
  }

  VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToBaseband_cold_1();
  return v2;
}

uint64_t VCRateControlAlgorithmStabilizedNOWRDPriv_BasebandAdditionalTiersForRampUp(uint64_t a1)
{
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCRateControlAlgorithmStabilizedNOWRDPriv_BasebandAdditionalTiersForRampUp_cold_1();
      }
    }

    return 0;
  }

  v2 = *(a1 + 1064);
  if ((*(a1 + 5417) & 1) == 0 && VCRateControlMediaController_BasebandFlushCount(*(a1 + 1064)))
  {
    *(a1 + 1092) |= 0x800u;
    v3 = *(a1 + 5168);
    if (v3)
    {
      VRLogfilePrintWithTimestamp(v3, "Still trying to flush baseband with flush counter: %d. Stop ramp-up!\n", [v2 basebandFlushCount]);
    }

    return 0;
  }

  if (*(a1 + 5392))
  {
    if ([v2 isAudioOnly])
    {
      return 1;
    }

    else
    {
      v4 = 1;
      if ((VCRateControlMediaController_IsVideoStopped(v2) & 1) == 0)
      {
        if ([v2 audioFractionTier])
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }
  }

  else
  {
    v4 = 0;
    *(a1 + 1092) |= 0x800u;
  }

  return v4;
}

void _VCRateControlAlgorithmStabilizedNOWRD_ToggleSmartBrake(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1088);
  if (v2 == 5)
  {
    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Smart brake disengaged");
  }

  else
  {
    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Smart brake engaged");
  }

  v3 = *(a1 + 888);
  if (v2 == 5)
  {
    if (v3 == 1)
    {
      VCRateControlMediaController_ResumeVideoBySmartBrake(*(a1 + 1064));
    }

    *(a1 + 5200) = *(a1 + 1144) - *(a1 + 25704);
    *(a1 + 5208) = *(a1 + 5436);
    ++*(a1 + 5192);
    if (*(a1 + 25712) == 1)
    {
      *(a1 + 888) = 0;
      if (objc_opt_class() == a1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315650;
            v14 = v6;
            v15 = 2080;
            v16 = "_VCRateControlAlgorithmStabilizedNOWRD_ToggleSmartBrake";
            v17 = 1024;
            v18 = 1412;
            v8 = "VCRC [%s] %s:%d Smart brake disabled due to long engagement time.";
            v9 = v7;
            v10 = 28;
LABEL_22:
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v4 = [a1 performSelector:sel_logPrefix];
        }

        else
        {
          v4 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136316162;
            v14 = v11;
            v15 = 2080;
            v16 = "_VCRateControlAlgorithmStabilizedNOWRD_ToggleSmartBrake";
            v17 = 1024;
            v18 = 1412;
            v19 = 2112;
            v20 = v4;
            v21 = 2048;
            v22 = a1;
            v8 = "VCRC [%s] %s:%d %@(%p) Smart brake disabled due to long engagement time.";
            v9 = v12;
            v10 = 48;
            goto LABEL_22;
          }
        }
      }
    }
  }

  else
  {
    if (v3 == 1)
    {
      VCRateControlMediaController_StopVideoBySmartBrake(*(a1 + 1064));
    }

    v5 = *(*(a1 + 48) + 4 * *(a1 + 1100));
    *(a1 + 25704) = *(a1 + 1144);
    *(a1 + 5216) = v5;
    *(a1 + 5212) = *(a1 + 5436);
  }
}

uint64_t _VCRateControlAlgorithmStabilizedNOWRD_SmartBrakeBitrateCongestionTierIndex(unsigned int *a1)
{
  v1 = a1 + 10;
  v2 = a1[222];
  if (v2 == 2)
  {
    return 10;
  }

  if (v2 != 3)
  {
    return a1[275];
  }

  v3 = vcvtd_n_f64_u32(a1[1359], 1uLL);
  result = a1[15];
  v5 = *(v1 + 1);
  if (*(v5 + 4 * result) > v3)
  {
    v6 = result;
    v7 = v1[6];
    if (result >= v7)
    {
      result = v7;
    }

    else
    {
      result = result;
    }

    v8 = v5 - 4;
    while (v6 > v7)
    {
      v9 = v6 - 1;
      v10 = *(v8 + 4 * v6--);
      if (v10 <= v3)
      {
        return v9;
      }
    }
  }

  return result;
}

uint64_t _VCRateControlAlgorithmStabilizedNOWRD_RampDownTier(uint64_t a1, uint64_t a2)
{
  VCRateControlAlgorithmStabilizedNOWRDPriv_SetBitrateUnstable(a1, a2);
  VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampDown(a1, *(a1 + 1144));
  *(a1 + 25568) = 0;
  v3 = *(a1 + 1100);
  if (*(a1 + 426) != 1 || v3 >= *(a1 + 84) || *(a1 + 1144) - *(a1 + 1192) >= *(a1 + 600))
  {
    v4 = v3 - *(a1 + 100);
    if (*(a1 + 1088) == 1)
    {
      v4 = v4 - *(a1 + 108) - (v3 == *(a1 + 56));
    }

    v5 = *(a1 + 1096);
    if ((v5 & 0x200) != 0 && (*(a1 + 5008) > 0.0 || *(a1 + 1120) > *(a1 + 25588)))
    {
      --v4;
    }

    if ((v5 & 0x800) != 0)
    {
      v6 = *(a1 + 25592);
      if (v6)
      {
        v4 -= v6;
        *(a1 + 25592) = 0;
        v5 = *(a1 + 1096);
      }
    }

    if ((v5 & 0x400) != 0 && v4 >= *(a1 + 76))
    {
      v4 = *(a1 + 76);
    }

    if (*(a1 + 426) == 1 && v4 < *(a1 + 84))
    {
      *(a1 + 25572) = 0;
    }

    v7 = *(a1 + 25572);
    if (v7)
    {
      v8 = (*(a1 + 48) + 4 * v4++);
      do
      {
        v9 = *v8--;
        --v4;
      }

      while (*(a1 + 1120) - v9 < v7);
    }

    if (*(a1 + 431) == 1)
    {
      v10 = *(a1 + 1128);
      v11 = *(a1 + 48);
      if (v10 > *(v11 + 4 * *(a1 + 432)) && v4 >= 1)
      {
        while (*(v11 + 4 * v4) > v10)
        {
          v13 = __OFSUB__(v4--, 1);
          if ((v4 < 0) ^ v13 | (v4 == 0))
          {
            v4 = 0;
            break;
          }
        }
      }
    }

    v14 = *(a1 + 64);
    if (v4 <= v14)
    {
      v3 = v14;
    }

    else
    {
      v3 = v4;
    }

    if (VCRateControlMediaController_IsAudioOnly(*(a1 + 1064)))
    {
      v15 = *(a1 + 80);
      if (v3 <= v15)
      {
        v3 = v15;
      }

      else
      {
        v3 = v3;
      }

      if (*(a1 + 1100) <= v3)
      {
        goto LABEL_43;
      }
    }

    else if (*(a1 + 1100) <= v3)
    {
      VCRateControlMediaController_StopVideoByVCRateControl(*(a1 + 1064));
      VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Congestion!!! Stop video!");
      goto LABEL_43;
    }

    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] Congestion!!! New bitrate down to %u", *(a1 + 1132), *(*(a1 + 48) + 4 * v3));
    *(a1 + 1192) = *(a1 + 1144);
LABEL_43:
    *(a1 + 1104) = *(a1 + 1100);
  }

  return v3;
}

uint64_t _VCRateControlAlgorithmStabilizedNOWRD_RampUpTier(uint64_t a1, uint64_t a2)
{
  VCRateControlAlgorithmStabilizedNOWRDPriv_SetBitrateUnstable(a1, a2);
  VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampUp(a1);
  v3 = *(a1 + 1064);
  if (([v3 isAudioOnly] & 1) == 0 && objc_msgSend(v3, "isVideoStoppedByVCRateControl") && *(a1 + 1100) == *(a1 + 64))
  {
    if ([v3 audioFractionTier])
    {
      VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Ramp Up!!! Ramp up audio fraction first. Video is still stopped!");
      [v3 rampUpAudioFraction];
    }

    else
    {
      VCRateControlMediaController_ResumeVideo(v3);
      VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Ramp Up!!! Resume video first!");
    }

    return *(a1 + 1100);
  }

  v4 = VCRateControlAlgorithmBasePriv_AllowRampUpWithContinuousTargetBitrate(a1);
  v5 = *(a1 + 1100);
  if (!v4)
  {
    return v5;
  }

  v6 = *(a1 + 96) + v5;
  if (*(a1 + 1088) != 1)
  {
    *(a1 + 25568) = 1;
    v9 = *(a1 + 364);
    if (*(a1 + 418) == 1)
    {
      if (v9)
      {
        v10 = *(a1 + 1216);
        if (v10)
        {
          v11 = *(a1 + 248);
          if ((v11 + v6) <= 65)
          {
            v12 = *(a1 + 48);
            v13 = 1000 * v10;
            v14 = (v12 + 4 * v6);
            v15 = v11 + v6;
            while (1)
            {
              v16 = *v14++;
              if (v16 - *(a1 + 1120) >= v9 || *(v12 + 4 * (v11 + v6)) >= v13)
              {
                break;
              }

              ++v6;
              if (++v15 >= 66)
              {
                v6 = 66 - v11;
                goto LABEL_36;
              }
            }
          }
        }
      }
    }

    else if (*(a1 + 419) == 1 && v9 != 0)
    {
      v18 = *(a1 + 5412);
      v19 = *(a1 + 1120);
      v20 = *(a1 + 48);
      if (*(v20 + 4 * v6) - v19 < v9 && v18 >= 1)
      {
        v22 = (v20 + 4 * v6 + 4);
        do
        {
          v23 = *v22++;
          v24 = v23 - v19 < v9 && v18-- > 1;
          ++v6;
        }

        while (v24);
      }
    }

    goto LABEL_36;
  }

  v7 = *(a1 + 1216);
  if (v7)
  {
    v8 = *(a1 + 104) + v6;
    if (*(*(a1 + 48) + 4 * v8) >= (1000 * v7))
    {
      goto LABEL_36;
    }
  }

  else
  {
    v8 = *(a1 + 104) + v6;
  }

  v6 = v8;
LABEL_36:
  *(a1 + 5412) = 0;
  *(a1 + 5016) = 0;
  v25 = *(a1 + 60);
  if (v6 >= v25)
  {
    v5 = v25;
  }

  else
  {
    v5 = v6;
  }

  VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] Ramp up bitrate to %u", *(a1 + 1132), *(*(a1 + 48) + 4 * v5));
  *(a1 + 1104) = *(a1 + 1100);
  return v5;
}

BOOL _VCRateControlAlgorithmStabilizedNOWRD_IsBitrateOscillating(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 422) == 1 && (v15 = 0, memset(v14, 0, sizeof(v14)), ++*(v14 + a2), v2 = *(a1 + 25496), v2 >= 2))
  {
    v3 = *(a1 + 25500) + 500;
    v4 = 1;
    v5 = *(a1 + 520);
    v6 = 1;
    v7 = a2;
    v8 = a2;
    v9 = 1;
    v10 = 1;
    do
    {
      v11 = v7;
      v7 = *(a1 + 5496 + 40 * (v3 % 500) + 32);
      if (v11 != v7)
      {
        v12 = *(v14 + v7);
        if (!v12)
        {
          ++v9;
        }

        *(v14 + v7) = v12 + 1;
        ++v10;
      }

      if (v7 < v8)
      {
        v8 = v7;
      }

      if (v10 > v5 && v9 < *(a1 + 524) && v8 == a2)
      {
        break;
      }

      v6 = v4 < v2 - 1;
      --v3;
      ++v4;
    }

    while (v2 != v4);
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t _VCRateControlAlgorithmStabilizedNOWRD_GetRampUpFrozenDuration(uint64_t result)
{
  v1 = *(result + 1100);
  if ((v1 >= *(result + 76) || v1 < *(result + 72) || (*(result + 5178) & 1) == 0) && *(result + 421) == 1)
  {
    return arc4random_uniform(0xFFFFu);
  }

  return result;
}

uint64_t _VCRateControlAlgorithmStabilizedNOWRD_CheckNetworkSaturation(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = 0;
  if (*(a1 + 488) * a3 < a2 && a4 > 0.0 && *(a1 + 496) * a3 < a5)
  {
    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Possible network saturation detected with RTT:%f, minRTT:%f, PLR:%f, owrd:%f", a2, a3, a4, a5);
    return 1;
  }

  return v5;
}

void VCVirtualAVCaptureInputPort_OnMediaSample(uint64_t a1, const void *a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 48));
  v6 = *(a1 + 40);
  if ([v6 count])
  {
    v7 = 0;
    v8 = 1;
    do
    {
      VCVirtualAVCaptureConnection_OnMediaSample([v6 objectAtIndexedSubscript:v7], a2, a3);
      v7 = v8;
    }

    while ([v6 count] > v8++);
  }

  os_unfair_lock_unlock((a1 + 48));
}

uint64_t VCMediaNegotiatorMediaType_StreamGroupIDFromMediaType(int a1)
{
  if ((a1 - 1) < 6)
  {
    return *&aRcimemacercsas[4 * (a1 - 1)];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCMediaNegotiatorMediaType_StreamGroupIDFromMediaType_cold_1(v3, a1, v4);
  }

  return 0;
}

uint64_t VCMediaNegotiatorMediaType_MediaTypeFromStreamGroupID(uint64_t a1)
{
  v1 = a1;
  if (a1 > 1835623281)
  {
    switch(a1)
    {
      case 0x73797361:
        return 4;
      case 0x73637265:
        return 3;
      case 0x6D696372:
        return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x62646174:
        return 6;
      case 0x63616D65:
        return 2;
      case 0x66747874:
        return 5;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCMediaNegotiatorMediaType_MediaTypeFromStreamGroupID_cold_1(v3, v1, v4);
  }

  return 0;
}

uint64_t VCMediaNegotiationBlobV2SettingsU1ReadFrom(uint64_t a1, void *a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v21[0]) = 0;
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

        v7 |= (v21[0] & 0x7F) << v5;
        if ((v21[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v18 = objc_alloc_init(VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures);
        [a1 addEncodeDecodeFeatures:v18];

        v21[0] = 0xAAAAAAAAAAAAAAAALL;
        v21[1] = 0xAAAAAAAAAAAAAAAALL;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeaturesReadFrom(v18, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v21[0]) = 0;
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

          v14 |= (v21[0] & 0x7F) << v12;
          if ((v21[0] & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v14;
        }

LABEL_36:
        *(a1 + 16) = v17;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _VCMediaRecorderLocal_PushAudioSamples(uint64_t a1, uint64_t a2)
{
  v4 = (VCAudioBufferList_GetHostTime(a2) * 1000.0);

  VCMediaRecorder_AddLocalAudioSampleBuffer(a1, a2, v4);
}

void _VCSessionParticipantLocal_ProcessAudioSamples(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 408);
    v5 = *(a1 + 584);
    if (v4 != 1 || v5 == 0)
    {
      if (*(a1 + 408) || (v5 & 1) == 0)
      {
LABEL_15:
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          v11 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *v20 = 136315650;
              *&v20[4] = v9;
              *&v20[12] = 2080;
              *&v20[14] = "_VCSessionParticipantLocal_ProcessAudioSamples";
              *&v20[22] = 1024;
              LODWORD(v21) = 4176;
              _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d audio no-op no MKM", v20, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            _VCSessionParticipantLocal_ProcessAudioSamples_cold_1();
          }
        }

        return;
      }
    }

    else if ((*(a1 + 1016) & 1) == 0)
    {
      goto LABEL_15;
    }

    if (v4)
    {
      VoiceActivity = 0;
      Priority = 0;
    }

    else
    {
      Priority = VCAudioBufferList_GetPriority(a2);
      VoiceActivity = VCAudioBufferList_GetVoiceActivity(a2);
      v12 = VCAudioBufferList_GetPriority(a2);
      v14 = v12;
      if (*(a1 + 888) != 1)
      {
        goto LABEL_24;
      }

      v15 = micro(v12, v13);
      if (v15 - *(a1 + 880) > 1.0)
      {
        *(a1 + 872) = [+[VCDefaults sharedInstance](VCDefaults forceAudioPriorityValue];
        *(a1 + 880) = v15;
      }

      v16 = *(a1 + 872);
      if (*(a1 + 872))
      {
        VCAudioBufferList_SetPriority(a2, *(a1 + 872));
        v14 = v16;
      }

      else
      {
LABEL_24:
        if (!v14)
        {
          if (*(a1 + 1104) == 1)
          {
            v14 = VCVoiceDetector_ProcessSampleBuffer(*(a1 + 912), a2, *(a1 + 372));
          }

          else
          {
            v14 = 0;
          }
        }
      }

      if (v14 != *(a1 + 816))
      {
        *(a1 + 816) = v14;
        *v20 = MEMORY[0x1E69E9820];
        *&v20[8] = 3221225472;
        *&v20[16] = __VCSessionParticipantLocal_UpdateAudioPriorityWithSampleBuffer_block_invoke;
        v21 = &unk_1E85F6758;
        v22 = a1;
        v23 = v14;
        [a1 callDelegateWithBlock:v20];
      }
    }

    if (*(a1 + 1120) == 1)
    {
      VCAudioPowerSpectrumSource_PushAudioSamples(*(a1 + 944), a2);
    }

    v17 = *(a1 + 528);
    if (v17 && *(a1 + 408) == 1)
    {
      VCAudioMachineLearningCoordinator_PushAudioSamples(v17, *(a1 + 1136), a2);
    }

    pthread_rwlock_wrlock((a1 + 616));
    VCMediaRecorder_AddLocalAudioSampleBuffer(*(a1 + 512), a2, *(a1 + 600));
    *(a1 + 600) = VCAudioBufferList_GetTimestamp(a2);
    *(a1 + 608) = VCAudioBufferList_GetHostTime(a2);
    pthread_rwlock_unlock((a1 + 616));
    if ((*(a1 + 408) & 1) == 0)
    {
      VCAudioBufferList_SetPriority(a2, Priority);
      VCAudioBufferList_SetVoiceActivity(a2, VoiceActivity);
    }

    HostTime = VCAudioBufferList_GetHostTime(a2);
    if (HostTime - *(a1 + 1064) > 0.5)
    {
      *(a1 + 1064) = HostTime;
      BoolValueForKeyQuiet = VCDefaults_GetBoolValueForKeyQuiet(@"spatialAudioDisabled", 0);
      if (BoolValueForKeyQuiet != [*(a1 + 392) spatialAudioDisabled])
      {
        [*(a1 + 392) setSpatialAudioDisabled:BoolValueForKeyQuiet];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCSessionParticipantLocal_ProcessAudioSamples_cold_2();
    }
  }
}

uint64_t VCSessionPartipantLocal_OnVideoFrame(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 584);
  if (*(a1 + 408) == 1 && v7 != 0)
  {
    if ((*(a1 + 1016) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    pthread_rwlock_rdlock((a1 + 616));
    v9 = *(a1 + 600);
    pthread_rwlock_unlock((a1 + 616));
    VCMediaRecorder_AddLocalVideoSampleBuffer(*(a1 + 512), a2, *(a4 + 16), v9);
    return 1;
  }

  if (!*(a1 + 408) && (v7 & 1) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      v13 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 136315650;
          v22 = v11;
          v23 = 2080;
          v24 = "VCSessionPartipantLocal_OnVideoFrame";
          v25 = 1024;
          v26 = 4029;
          v14 = " [%s] %s:%d video no-op no MKM";
          v15 = v12;
          v16 = 28;
LABEL_22:
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v21, v16);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        VCSessionPartipantLocal_OnVideoFrame_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      v19 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 136316162;
          v22 = v17;
          v23 = 2080;
          v24 = "VCSessionPartipantLocal_OnVideoFrame";
          v25 = 1024;
          v26 = 4029;
          v27 = 2112;
          v28 = v10;
          v29 = 2048;
          v30 = a1;
          v14 = " [%s] %s:%d %@(%p) video no-op no MKM";
          v15 = v18;
          v16 = 48;
          goto LABEL_22;
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v21 = 136316162;
        v22 = v17;
        v23 = 2080;
        v24 = "VCSessionPartipantLocal_OnVideoFrame";
        v25 = 1024;
        v26 = 4029;
        v27 = 2112;
        v28 = v10;
        v29 = 2048;
        v30 = a1;
        _os_log_debug_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) video no-op no MKM", &v21, 0x30u);
      }
    }
  }

  return 1;
}

void *VCPerfTimingUtilsSetStartForKeyOnceWithTime(void *a1, uint64_t a2, double a3)
{
  result = [a1 hasKey:a2];
  if ((result & 1) == 0)
  {

    return [a1 setStartTime:a2 forKey:a3];
  }

  return result;
}

void *VCPerfTimingUtilsSetStopForKeyOnceWithTime(void *a1, uint64_t a2, double a3)
{
  if (([a1 hasKey:a2] & 1) == 0)
  {
    [a1 setStartTime:a2 forKey:a3];
  }

  result = [a1 isValidTimingForKey:a2];
  if ((result & 1) == 0)
  {

    return [a1 setStopTime:a2 forKey:a3];
  }

  return result;
}

void VCPerfTimingUtilsLog(void *a1, __n128 a2)
{
  v3 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6986650];
  a2.n128_u64[0] = 136316162;
  v8 = a2;
  do
  {
    if ([a1 hasKey:{v3, *&v8}] && objc_msgSend(a1, "isValidTimingForKey:", v3) && VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        [a1 timingForKey:v3];
        *buf = v8.n128_u32[0];
        v10 = v5;
        v11 = 2080;
        v12 = "VCPerfTimingUtilsLog";
        v13 = 1024;
        v14 = 43;
        v15 = 1024;
        v16 = v3;
        v17 = 1024;
        v18 = (v7 * 1000.0);
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sendTimings:Key = %d, value = %d", buf, 0x28u);
      }
    }

    v3 = (v3 + 1);
  }

  while (v3 != 24);
}

void VCPerfTimingUtilsReport(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  VCPerfTimingUtilsLog(a1, a5);
  if (a2)
  {

    reportingPerfTimes();
  }
}

BOOL VCSilencePredictor_Initialize(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 96) = -1;
    *(a1 + 24) = -1;
  }

  else
  {
    VCSilencePredictor_Initialize_cold_1();
  }

  return a1 != 0;
}

void VCSilencePredictor_Reset(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 88) = 0u;
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 96) = -1;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0;
    *(result + 24) = -1;
    *result = 0;
    *(result + 8) = 0;
  }

  else
  {
    VCSilencePredictor_Reset_cold_1();
  }
}

void VCSilencePredictor_AddFrame(double *a1, int a2, unsigned int a3, int a4)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 != 104 || !a3)
    {
      goto LABEL_27;
    }

    v5 = a1 + 2;
    v6 = 11;
    if (a4)
    {
      v6 = 2;
    }

    else
    {
      v5 = a1 + 11;
    }

    v7 = 1.85;
    if (a4)
    {
      v7 = 1.15;
    }

    v8 = *(v5 + 2);
    v9 = *(v5 + 3);
    if (v8 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = *(v5 + 2);
    }

    v11 = v10;
    if (v9 <= a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = *(v5 + 3);
    }

    v13 = a1[v6];
    if (!v8)
    {
      v11 = a3;
    }

    v14 = v11;
    v15 = v9 ? v12 : a3;
    *(v5 + 2) = v14;
    *(v5 + 3) = v15;
    v16 = v13 == 0.0 ? a3 : v13 * 0.98 + a3 * 0.02;
    a1[v6] = v16;
    v17 = *(v5 + 2) + a3;
    *(v5 + 2) = v17;
    v18 = *(v5 + 16) + 1;
    *(v5 + 16) = v18;
    v19 = v17 / v18;
    v20 = *(v5 + 7) + ((a3 - v19) * (a3 - v19));
    *(v5 + 7) = v20;
    v21 = sqrt(v20 / v18);
    v5[3] = v19;
    v5[4] = v21;
    v5[5] = v19 - v7 * v21;
    v5[6] = v19 + v7 * v21;
    if (*(a1 + 38) >= 0x32u && *(a1 + 20) > 0x31u)
    {
      v22 = a1[11];
      v23 = a1[2];
      v24 = v23 * 1.15;
      v25 = v23 <= a1[16] && v22 >= a1[8];
      v26 = v22 >= v24 && v25;
      if (*a1 != v26 && VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(a1 + 38);
          v30 = *(a1 + 11);
          v31 = "OFF";
          v32 = *(a1 + 16);
          v33 = *(a1 + 20);
          if (v22 >= v24 && v25)
          {
            v31 = "ON";
          }

          v34 = *(a1 + 2);
          v35 = *(a1 + 8);
          v36 = 136317954;
          v37 = v27;
          v38 = 2080;
          v39 = "VCSilencePredictor_AddFrame";
          v40 = 1024;
          v41 = 102;
          v42 = 2080;
          v43 = v31;
          v44 = 1024;
          v45 = v22 >= v24;
          v46 = 1024;
          v47 = v25;
          v48 = 1024;
          v49 = v29;
          v50 = 2048;
          v51 = v30;
          v52 = 2048;
          v53 = v32;
          v54 = 1024;
          v55 = v33;
          v56 = 2048;
          v57 = v34;
          v58 = 2048;
          v59 = v35;
          _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Silence prediction=%s. sufficientDeltaBetweenAverages=%d, distributionsAreNotOverlapped=%d, audioFrameCount=%u audioAvgFrameSize=%f audioMinFrameSizeLimit=%f, silenceFrameCount=%u silenceAvgFrameSize=%f silenceMaxFrameSizeLimit=%f,", &v36, 0x66u);
        }
      }

      *a1 = v26;
    }

    else
    {
LABEL_27:
      *a1 = 0;
    }
  }

  else
  {
    VCSilencePredictor_AddFrame_cold_1();
  }
}

uint64_t VCSilencePredictor_PredictSilence(uint64_t a1, int a2, unsigned int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = 0;
    if (a2 == 104 && a3 && (*a1 & 1) != 0)
    {
      v4 = *(a1 + 8);
      if (v4 == 0.0)
      {
        v5 = a3;
      }

      else
      {
        v5 = a3 * 0.3333 + v4 * 0.6667;
      }

      *(a1 + 8) = v5;
      return v5 <= *(a1 + 64) && v5 < *(a1 + 128);
    }
  }

  else
  {
    VCSilencePredictor_PredictSilence_cold_1(&v7);
    return v7;
  }

  return v3;
}

uint64_t VCPacketFilterRTCPCreate(uint64_t a1, CFTypeRef *a2)
{
  ClassID = VCPacketFilterGetClassID(a1, a2);

  return VCFBOUtils_ObjectCreate(a1, a2, &kVCPacketFilterRTCPVTable, ClassID, 52);
}

void _VCPacketFilterRTCPFinalize(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v2 = DerivedStorage;
      v3 = *DerivedStorage;
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = v2[1];
      if (v4)
      {

        CFRelease(v4);
      }
    }

    else
    {
      _VCPacketFilterRTCPFinalize_cold_1();
    }
  }

  else
  {
    _VCPacketFilterRTCPFinalize_cold_2();
  }
}