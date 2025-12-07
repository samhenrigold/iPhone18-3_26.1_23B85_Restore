void *figEndpointRPCCacheAddObject(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 == *(a1 + 16))
  {
    v7 = v6 + 16;
    result = malloc_type_realloc(*(a1 + 24), 16 * (v6 + 16), 0xC6660CE8uLL);
    *(a1 + 16) = v7;
    *(a1 + 24) = result;
    v6 = *(a1 + 8);
  }

  else
  {
    result = *(a1 + 24);
  }

  result[2 * v6 + 1] = a3;
  if (a2)
  {
    v9 = CFRetain(a2);
    result = *(a1 + 24);
    v6 = *(a1 + 8);
  }

  else
  {
    v9 = 0;
  }

  result[2 * v6] = v9;
  *(a1 + 8) = v6 + 1;
  return result;
}

uint64_t FigEndpointRPCCacheCopyAvailableObjects(uint64_t a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (*(a1 + 8) >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        CFArrayAppendValue(Mutable, *(*(a1 + 24) + v5));
        ++v6;
        v5 += 16;
      }

      while (v6 < *(a1 + 8));
    }

    result = 0;
  }

  else
  {
    FigEndpointRPCCacheCopyAvailableObjects_cold_1(&v8);
    result = v8;
  }

  *a2 = Mutable;
  return result;
}

uint64_t FigRPCTimeoutRemote_KillAndForceCrashReport(mach_port_t a1, uint64_t a2, char *src)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  memset(v14, 0, 464);
  *reply_port = 0u;
  v12 = 0u;
  *(&v12 + 1) = *MEMORY[0x1E69E99E0];
  *&v13 = a2;
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v14, src, 512);
  }

  else
  {
    v4 = mig_strncpy(v14, src, 512);
  }

  DWORD2(v13) = 0;
  HIDWORD(v13) = v4;
  v5 = (v4 + 3) & 0xFFFFFFFC;
  v6 = mig_get_reply_port();
  reply_port[2] = a1;
  reply_port[3] = v6;
  reply_port[0] = 5395;
  *&v12 = 0x275C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(reply_port);
    v7 = reply_port[3];
  }

  else
  {
    v7 = v6;
  }

  v8 = mach_msg(reply_port, 3, v5 + 48, 0x2Cu, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
    return v9;
  }

  if (v8)
  {
    mig_dealloc_reply_port(reply_port[3]);
    return v9;
  }

  if (DWORD1(v12) == 71)
  {
    v9 = 4294966988;
LABEL_21:
    mach_msg_destroy(reply_port);
    return v9;
  }

  if (DWORD1(v12) != 10176)
  {
    v9 = 4294966995;
    goto LABEL_21;
  }

  v9 = 4294966996;
  if ((reply_port[0] & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  if (reply_port[1] != 36)
  {
    goto LABEL_21;
  }

  if (reply_port[2])
  {
    goto LABEL_21;
  }

  v9 = v13;
  if (v13)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t (*FigRPCTimeout_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 10079) >= 0xFFFFFFFD)
  {
    return FigRPCTimeoutServer_FigRPCTimeout_subsystem[5 * (v1 - 10076) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t _XKillAndForceCrashReport(int *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = a1[1];
    if ((v6 - 561) >= 0xFFFFFDFF)
    {
      v7 = a1[11];
      v8 = v7 <= 0x200 && v6 - 48 >= v7;
      if (v8 && v6 == ((v7 + 3) & 0x7FC) + 48)
      {
        if (memchr(a1 + 12, 0, v6 - 48))
        {
          v9 = a1 + ((v6 + 3) & 0x7FC);
          if (*v9 || *(v9 + 1) < 0x20u)
          {
            result = 4294966987;
          }

          else
          {
            v10 = a1[3];
            v11 = *(a1 + 4);
            v12 = *(v9 + 36);
            v13[0] = *(v9 + 20);
            v13[1] = v12;
            result = FigRPCTimeoutServer_KillAndForceCrashReport(v10, v11, a1 + 48, v13);
          }
        }

        else
        {
          result = 4294966992;
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XSetFigNotePreferences(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 3 && *(a1 + 4) == 96)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 71) == 1 && (v3 = *(a1 + 40), v3 == *(a1 + 84)) && (v4 = *(a1 + 56), v4 == *(a1 + 88)) && (v5 = *(a1 + 72), v5 == *(a1 + 92)))
    {
      result = FigRPCTimeoutServer_SetFigNotePreferences(*(a1 + 12), *(a1 + 28), v3, *(a1 + 44), v4, *(a1 + 60), v5);
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XResetFigNotePreset(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v3 = *(a1 + 40), v3 == *(a1 + 52)))
    {
      result = FigRPCTimeoutServer_ResetFigNotePreset(*(a1 + 12), *(a1 + 28), v3);
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t FigRPCTimeout_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 10079) >= 0xFFFFFFFD && (v5 = FigRPCTimeoutServer_FigRPCTimeout_subsystem[5 * (v4 - 10076) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t sntp_datestamp_subsecs_to_nsec(unint64_t a1)
{
  v1 = (a1 * 0x3B9ACA00uLL) >> 64;
  if (1000000000 * a1 < 0x8000000000000000)
  {
    return v1;
  }

  else
  {
    return (v1 + 1);
  }
}

uint64_t sntp_calc_offset(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 4));
  v4 = v3;
  v5 = -v2;
  v6 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v8 = v7;
  v9 = sntp_timestamp_to_datestamp(*(a1 + 20));
  v11 = v10;
  v12 = sntp_timestamp_to_datestamp(*(a1 + 28));
  v14 = __PAIR128__(v5 - (v4 != 0) + __CFADD__(-v4, v8) + v6 + __CFADD__(v8 - v4, v11) + v9, v8 - v4 + v11) - v13;
  return (__CFADD__(v14, (*(&v14 + 1) - v12) >> 63) + *(&v14 + 1) - v12) >> 1;
}

uint64_t sntp_calc_delay(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 4));
  v4 = v3;
  v5 = -v2;
  v6 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v8 = v7;
  v9 = sntp_timestamp_to_datestamp(*(a1 + 20));
  v11 = v10;
  v12 = -v9;
  v13 = sntp_timestamp_to_datestamp(*(a1 + 28));
  return v13 + ((__PAIR128__(v5 - (v4 != 0) + __CFADD__(-v4, v8) + v6, v8 - v4) - v11 + __PAIR128__(v12, v14)) >> 64);
}

unint64_t sntp_clock_select(unint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = 0;
  v4 = a1 + 80 * a2;
  v5 = a1;
  do
  {
    if (!*v5 && *(v5 + 37))
    {
      ++v3;
    }

    v5 += 80;
  }

  while (v5 < v4);
  result = 0;
  v7 = 0;
  v8 = 0;
  v31 = v3 >> 1;
  do
  {
    if (!*v2 && *(v2 + 37))
    {
      v32 = v8;
      v33 = v7;
      v34 = result;
      v9 = sntp_calc_delay(v2);
      v37 = v10;
      v11 = (v2 + 80);
      if (v2 + 80 >= v4)
      {
        v36 = 1;
        v35 = v2;
      }

      else
      {
        v36 = 1;
        v35 = v2;
        do
        {
          if (!*v11)
          {
            v12 = sntp_calc_offset(v2);
            v14 = v13;
            v15 = sntp_calc_offset(v11);
            v17 = v16;
            v18 = sntp_calc_delay(v2);
            v20 = v19;
            v21 = sntp_calc_delay(v11);
            if ((__PAIR128__(v18, v20) + __PAIR128__(v12, v14)) >= (__PAIR128__(v15, v17) - __PAIR128__(v21, v22)) && (__PAIR128__(v21, v22) + __PAIR128__(v15, v17)) >= (__PAIR128__(v12, v14) - __PAIR128__(v18, v20)))
            {
              ++v36;
              v23 = sntp_calc_delay(v11);
              v25 = v37;
              v26 = v35;
              if (__PAIR128__(v23, v24) < __PAIR128__(v9, v37))
              {
                v26 = v11;
              }

              v35 = v26;
              if (__PAIR128__(v23, v24) < __PAIR128__(v9, v37))
              {
                v9 = v23;
                v25 = v24;
              }

              v37 = v25;
            }
          }

          v11 += 20;
        }

        while (v11 < v4);
      }

      v8 = v32;
      v7 = v33;
      v27 = v37;
      result = v34;
      v28 = v35;
      v29 = __PAIR128__(v9, v37) < __PAIR128__(v32, v33) || v34 == 0;
      if (v29)
      {
        v30 = v9;
      }

      else
      {
        v30 = v32;
      }

      if (!v29)
      {
        v27 = v33;
        v28 = v34;
      }

      if (v36 > v31)
      {
        v7 = v27;
        v8 = v30;
        result = v28;
      }
    }

    v2 += 80;
  }

  while (v2 < v4);
  return result;
}

unint64_t sntp_packet_ntoh@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = *a1;
  v6 = *(a1 + 2);
  sntp_header_ntoh(&v5, a2);
  *(a2 + 24) = sntp_timestamp_hton(*(a1 + 3));
  *(a2 + 32) = sntp_timestamp_hton(*(a1 + 4));
  result = sntp_timestamp_hton(*(a1 + 5));
  *(a2 + 40) = result;
  return result;
}

unint64_t sntp_header_ntoh@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  *(a2 + 4) = sntp_shortstamp_ntoh(v4);
  v6 = sntp_shortstamp_ntoh(a1[2]);
  v7 = bswap32(a1[3]);
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  result = sntp_timestamp_hton(*(a1 + 2));
  *(a2 + 16) = result;
  return result;
}

__n128 sntp_client_exchange@<Q0>(int a1@<W0>, timeval *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  memset(&v17, 0, sizeof(v17));
  if (__darwin_check_fd_set_overflow(a1, &v17, 0))
  {
    *(v17.fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  LOBYTE(v15[0]) = 35;
  if (a3)
  {
    *(v18 + 4) = a3();
    *(&v16 + 1) = sntp_timestamp_hton(*(v18 + 4));
  }

  if (send(a1, v15, 0x30uLL, 0) != 48)
  {
    v9 = 5;
LABEL_17:
    LODWORD(v18[0]) = v9;
    v10 = v19;
    *(a4 + 32) = v18[2];
    *(a4 + 48) = v10;
    *(a4 + 64) = v20;
    result = v18[1];
    *a4 = v18[0];
    *(a4 + 16) = result;
    return result;
  }

  if (a2 && (a2->tv_sec || a2->tv_usec) && select(a1 + 1, &v17, 0, &v17, a2) != 1)
  {
    v9 = 6;
    goto LABEL_17;
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (recv(a1, &v12, 0x30uLL, 0) != 48)
  {
    v9 = 7;
    goto LABEL_17;
  }

  if (a3)
  {
    *(&v18[1] + 12) = a3();
  }

  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  sntp_client_process_response(v11, (v18 + 4), (&v18[1] + 12), a4);
  return result;
}

unint64_t sntp_client_process_response@<X0>(unsigned __int8 *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a2)
  {
    v8 = *a2;
    *(a4 + 4) = *a2;
    v9 = HIDWORD(v8);
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  LODWORD(v9) = 0;
  LODWORD(v8) = 0;
  if (a3)
  {
LABEL_3:
    *(a4 + 28) = *a3;
  }

LABEL_4:
  v10 = *(a1 + 1);
  v16[0] = *a1;
  v16[1] = v10;
  v16[2] = *(a1 + 2);
  result = sntp_packet_ntoh(v16, v17);
  v12 = v17[1];
  *a1 = v17[0];
  *(a1 + 1) = v12;
  *(a1 + 2) = v17[2];
  *(a4 + 36) = *a1;
  *(a4 + 52) = *(a1 + 2);
  v13 = *(a1 + 4);
  v14 = *(a1 + 5);
  *(a4 + 12) = v13;
  *(a4 + 20) = v14;
  if (*a1 <= 0xBFu)
  {
    if (a1[1])
    {
      if (__ROR8__(v14, 32) >= __ROR8__(v13, 32))
      {
        if (a2)
        {
          if (*(a1 + 6) != v8 || *(a1 + 7) != v9)
          {
            v15 = 10;
            goto LABEL_19;
          }

          if (a3)
          {
            result = sntp_calc_delay(a4);
            if ((result & 0x8000000000000000) != 0)
            {
              v15 = 11;
              goto LABEL_19;
            }
          }
        }

        v15 = 0;
      }

      else
      {
        v15 = 12;
      }
    }

    else
    {
      v15 = 8;
    }
  }

  else
  {
    v15 = 9;
  }

LABEL_19:
  *a4 = v15;
  return result;
}

size_t brokeredPlugin_CreateDeviceBroker(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v13 = 0;
  v3 = CFGetAllocator(a1);
  ClassID = FigHALAudioDeviceBrokerGetClassID(v3, v4);
  v10 = CMDerivedObjectCreate(v3, kFigHALAudioBasicBrokerVTable, ClassID, &v13, v6, v7, v8, v9, v12);
  if (!v10)
  {
    *CMBaseObjectGetDerivedStorage(v13) = a1;
    *(DerivedStorage + 24) = v13;
  }

  return v10;
}

uint64_t basicBroker_CreateDevice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *CMBaseObjectGetDerivedStorage(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(v8);
  v14 = 0;
  v10 = (DerivedStorage[6])(*MEMORY[0x1E695E480], DerivedStorage[1], *DerivedStorage, a3, a4, a5, &v14);
  if (!v10)
  {
    v11 = DerivedStorage[4];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __brokeredPlugin_CreateDeviceForEndpointStream_block_invoke;
    v13[3] = &__block_descriptor_tmp;
    v13[4] = DerivedStorage;
    v13[5] = v14;
    v13[6] = v8;
    dispatch_sync(v11, v13);
    FigHALAudioPropertySendChanges(*DerivedStorage, 1, 2, "#vedbolg");
  }

  return v10;
}

size_t brokeredPlugin_Initialize(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  *DerivedStorage = a2;
  v5 = DerivedStorage[7];
  if (v5)
  {
    v6 = DerivedStorage;
    v13 = 0;
    v5(*MEMORY[0x1E695E480], DerivedStorage[1], a2, &v13);
    if (v13)
    {
      v7 = v6[4];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __brokeredPlugin_Initialize_block_invoke;
      block[3] = &__block_descriptor_tmp_19;
      block[4] = v6;
      block[5] = v13;
      dispatch_sync(v7, block);
      CFRelease(v13);
    }
  }

  result = brokeredPlugin_CreateDeviceBroker(a1);
  if (!result)
  {
    v9 = CMBaseObjectGetDerivedStorage(a1);
    v10 = *(v9 + 64);
    if (!v10)
    {
      return FigHALAudioDeviceBrokerRegister(*(v9 + 16), *(v9 + 24));
    }

    v11 = CFGetAllocator(a1);
    result = v10(v11, v9 + 72);
    if (!result)
    {
      return FigHALAudioDeviceBrokerRegister(*(v9 + 16), *(v9 + 24));
    }
  }

  return result;
}

size_t brokeredPlugin_CreateBrokeredPluginObjectInternal_cold_1(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBE06uLL, "<<< BrokeredHALPlugin >>>", a1, v5, v6, v7, v9);
  *a2 = result;
  return result;
}

size_t brokeredPlugin_GetPropertyData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x2173697AuLL, "<<< BrokeredHALPlugin >>>", 0x1ED, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t brokeredPlugin_GetPropertyData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x2173697AuLL, "<<< BrokeredHALPlugin >>>", 0x1EE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t brokeredPlugin_GetPropertyData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x2173697AuLL, "<<< BrokeredHALPlugin >>>", 0x1EC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void FigEndpointManagerRemoteXPC_Finalize(uint64_t a1)
{
  v61[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v11 = OUTLINED_FUNCTION_4(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v47, v50, v52, v54, SBYTE2(v54), SBYTE3(v54), SHIDWORD(v54));
  v19 = OUTLINED_FUNCTION_10(v11, v12, v13, v14, v15, v16, v17, v18, v48, v51, v53, v55, v56, v57, v58);
  v20 = OUTLINED_FUNCTION_6(v19);
  if (v20)
  {
    LODWORD(v60[0]) = 136315138;
    *(v60 + 4) = "FigEndpointManagerRemoteXPC_Finalize";
    v49 = v60;
    OUTLINED_FUNCTION_5(v20, v21, v61, v22, &dword_196FA7000, v23, v24, "<< FigEndpointManagerXPCRemote >> %s: Finalizing");
    v1 = v59;
  }

  v25 = OUTLINED_FUNCTION_2();
  fig_log_call_emit_and_clean_up_after_send_and_compose(v25, v26, v27, v28, v29, v1);
  v30 = CMBaseObjectGetDerivedStorage(a1);
  v61[0] = 0;
  v60[0] = 0;
  v31 = *(v30 + 48);
  if (!v31 || (v32 = v30, remoteXPCEndpointManager_getSharedXPCClient(v60)))
  {
    v41 = 0;
  }

  else
  {
    remoteXPCEndpointManager_EmptyCaches(v32);
    v33 = v60[0];
    FigXPCRemoteClientDisassociateObject(v60[0], v31, v34, v35, v36, v37, v38, v39, v49);
    v40 = FigXPCCreateBasicMessage(0x646F6F6Du, v31, v61);
    v41 = v61[0];
    if (!v40)
    {
      FigXPCRemoteClientSendSyncMessage(v33, v61[0]);
      v41 = v61[0];
    }
  }

  FigXPCRelease(v41);
  NeroValeriaListenerDestroy(*(DerivedStorage + 8));
  FigEndpointRPCCacheDispose(*(DerivedStorage + 32));
  FigEndpointRPCCacheDispose(*(DerivedStorage + 40));
  v42 = *(DerivedStorage + 24);
  if (v42)
  {
    CFRelease(v42);
    *(DerivedStorage + 24) = 0;
  }

  v43 = *(DerivedStorage + 56);
  if (v43)
  {
    CFRelease(v43);
    *(DerivedStorage + 56) = 0;
  }

  v44 = *(DerivedStorage + 64);
  if (v44)
  {
    CFRelease(v44);
    *(DerivedStorage + 64) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v45 = *(DerivedStorage + 16);
  if (v45)
  {
    dispatch_release(v45);
    *(DerivedStorage + 16) = 0;
  }

  v46 = *(DerivedStorage + 72);
  if (v46)
  {
    dispatch_release(v46);
    *(DerivedStorage + 72) = 0;
  }
}

uint64_t FigEndpointManagerRemoteXPC_CopyProperty(uint64_t a1, __CFString *a2, uint64_t a3, CFTypeRef *a4)
{
  v27 = 0;
  v28 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (CFEqual(@"Name", a2))
  {
    v8 = 0;
    cf = CFRetain(*DerivedStorage);
    goto LABEL_5;
  }

  cf = 0;
  p_cf = &cf;
  v31 = 0x2000000000;
  v32 = 0;
  v9 = OUTLINED_FUNCTION_3();
  v34 = 0x40000000;
  v35 = __remoteXPCEndpointManager_CopyCachedProperty_block_invoke;
  v36 = &unk_1E749CAF8;
  v37 = v10;
  v38 = DerivedStorage;
  v39 = a2;
  dispatch_sync(v9, block);
  v11 = p_cf[3];
  _Block_object_dispose(&cf, 8);
  cf = v11;
  if (v11)
  {
    goto LABEL_4;
  }

  v13 = remoteXPCEndpointManager_ensureConnected(a1, &v27, &v28);
  if (!v13)
  {
    v14 = @"AvailableEndpoints";
    v15 = CFEqual(@"AvailableEndpoints", a2);
    if (v15)
    {
      v13 = FigEndpointXPCRemotePing(v15, v16);
      if (!v13)
      {
        v17 = a1;
        v18 = 1635148140;
LABEL_17:
        v8 = remoteXPCEndpointManager_CopyAvailableEndpoints(v17, v18, &cf);
        v25 = OUTLINED_FUNCTION_3();
        v34 = 0x40000000;
        v35 = __remoteXPCEndpointManager_SetCachedProperty_block_invoke;
        v36 = &__block_descriptor_tmp_26;
        v37 = v26;
        v38 = DerivedStorage;
        v39 = v14;
        dispatch_sync(v25, block);
        goto LABEL_5;
      }
    }

    else
    {
      v14 = @"AvailableEndpointsExtended";
      v19 = CFEqual(@"AvailableEndpointsExtended", a2);
      if (v19)
      {
        v13 = FigEndpointXPCRemotePing(v19, v20);
        if (!v13)
        {
          v18 = 1635149176;
          v17 = a1;
          goto LABEL_17;
        }
      }

      else
      {
        v13 = FigXPCSendStdCopyPropertyMessage(v27, v28, a2, &cf, v21, v22, v23, v24);
        if (!v13)
        {
          if (CFEqual(@"EndpointPresent", a2))
          {
            remoteXPCEndpointManager_SetCachedProperty(DerivedStorage, a2, cf);
          }

LABEL_4:
          v8 = 0;
          goto LABEL_5;
        }
      }
    }
  }

  v8 = v13;
LABEL_5:
  if (a4)
  {
    *a4 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigEndpointManagerRemoteXPC_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  result = remoteXPCEndpointManager_ensureConnected(a1, &v10, &v11);
  if (!result)
  {
    return FigXPCSendStdSetPropertyMessage(v10, v11, a2, a3, v6, v7, v8, v9);
  }

  return result;
}

void remoteXPCEndpointManagerClient_DeadConnectionCallback(const void *a1)
{
  v79[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v73 = 0;
  v74 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2000000000;
  v10 = OUTLINED_FUNCTION_8(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v54, v57, block, v61, v62, v63, v64, v65, v66, v67, type, v69);
  v11 = v69;
  v12 = os_log_type_enabled(v10, type);
  v13 = OUTLINED_FUNCTION_6(v12);
  if (v13)
  {
    v75 = 136315138;
    v76 = "remoteXPCEndpointManagerClient_DeadConnectionCallback";
    LODWORD(v58) = 12;
    v55 = &v75;
    OUTLINED_FUNCTION_5(v13, v14, v79, v15, &dword_196FA7000, v16, v17, "<< FigEndpointManagerXPCRemote >> %s: Got server death notice");
    v11 = v69;
  }

  v18 = OUTLINED_FUNCTION_2();
  fig_log_call_emit_and_clean_up_after_send_and_compose(v18, v19, v20, v21, v22, v11);
  v23 = *(DerivedStorage + 16);
  block = MEMORY[0x1E69E9820];
  v61 = 0x40000000;
  v62 = __remoteXPCEndpointManagerClient_DeadConnectionCallback_block_invoke;
  v63 = &unk_1E749CAD0;
  v64 = &v70;
  v65 = DerivedStorage;
  dispatch_sync(v23, &block);
  remoteXPCEndpointManager_ResetCachedAvailableEndpoints(DerivedStorage);
  v24 = *MEMORY[0x1E695E4C0];
  v25 = *(DerivedStorage + 16);
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 0x40000000;
  v79[2] = __remoteXPCEndpointManager_SetCachedProperty_block_invoke;
  v79[3] = &__block_descriptor_tmp_26;
  v79[4] = v24;
  v79[5] = DerivedStorage;
  v79[6] = @"EndpointPresent";
  dispatch_sync(v25, v79);
  v26 = *(DerivedStorage + 72);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification(v26, DefaultLocalCenter, @"EndpointManager_AvailableEndpointsChanged", a1, 0, 0, v28, v29);
  if (!remoteXPCEndpointManager_getSharedXPCClient(&v74))
  {
    v36 = FigXPCRemoteClientDisassociateObject(v74, v71[3], v30, v31, v32, v33, v34, v35, v55);
    v44 = OUTLINED_FUNCTION_8(v36, v37, v38, v39, v40, v41, v42, v43, v56, v58, block, v61, v62, v63, v64, v65, v66, v67, type, v69);
    v45 = v69;
    v46 = type;
    if (os_log_type_enabled(v44, type))
    {
      v47 = v45;
    }

    else
    {
      v47 = v45 & 0xFFFFFFFE;
    }

    if (v47)
    {
      v48 = v71[3];
      v75 = 136315394;
      v76 = "remoteXPCEndpointManagerClient_DeadConnectionCallback";
      v77 = 2048;
      v78 = v48;
      LODWORD(v59) = 22;
      _os_log_send_and_compose_impl(v47, 0, v79, 128, &dword_196FA7000, v44, v46, "<< FigEndpointManagerXPCRemote >> %s: AirPlayManager remote dissociate from ID: %llx", &v75, v59);
      LOBYTE(v45) = v69;
    }

    v49 = OUTLINED_FUNCTION_2();
    fig_log_call_emit_and_clean_up_after_send_and_compose(v49, v50, v51, v52, v53, v45);
  }

  _Block_object_dispose(&v70, 8);
}

uint64_t remoteXPCEndpointManager_ensureConnected(uint64_t a1, uint64_t *a2, void *a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  SharedXPCClient = remoteXPCEndpointManager_getSharedXPCClient(&v13);
  *(v19 + 6) = SharedXPCClient;
  if (SharedXPCClient)
  {
    v10 = SharedXPCClient;
  }

  else
  {
    OUTLINED_FUNCTION_1();
    v12[1] = 0x40000000;
    v12[2] = __remoteXPCEndpointManager_ensureConnected_block_invoke;
    v12[3] = &unk_1E749CB20;
    v8 = v13;
    v12[6] = DerivedStorage;
    v12[7] = v13;
    v12[4] = &v18;
    v12[5] = &v14;
    v12[8] = a1;
    dispatch_sync(v9, v12);
    v10 = *(v19 + 6);
    if (!v10)
    {
      if (a3)
      {
        *a3 = v15[3];
      }

      v10 = 0;
      if (a2)
      {
        *a2 = v8;
      }
    }
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v10;
}

uint64_t remoteXPCEndpointManager_CopyAvailableEndpoints(uint64_t a1, unsigned int a2, void *a3)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v20 = 0;
  v6 = remoteXPCEndpointManager_ensureConnected(a1, &v20, &v27);
  if (!OUTLINED_FUNCTION_9(v6))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
    v8 = FigXPCCreateBasicMessage(a2, v27, &v26);
    if (!OUTLINED_FUNCTION_9(v8))
    {
      v9 = FigXPCRemoteClientSendSyncMessageCreatingReply(v20, v26, &v25);
      if (!OUTLINED_FUNCTION_9(v9))
      {
        value = xpc_dictionary_get_value(v25, "AddedEndpoints");
        v11 = xpc_dictionary_get_value(v25, "SubtractedEndpoints");
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          if (!value)
          {
LABEL_9:
            OUTLINED_FUNCTION_1();
            v18[1] = 0x40000000;
            v18[2] = __remoteXPCEndpointManager_CopyAvailableEndpoints_block_invoke;
            v18[3] = &unk_1E749CB48;
            v19 = a2;
            v18[6] = DerivedStorage;
            v18[7] = value;
            v18[8] = v11;
            v18[4] = &v28;
            v18[5] = &v21;
            dispatch_sync(v13, v18);
            v14 = v22;
            *a3 = v22[3];
            v14[3] = 0;
            goto LABEL_10;
          }

          v12 = 0;
        }

        NeroValeriaListenerSetActiveStatus(*(DerivedStorage + 8), v12);
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  v15 = v22[3];
  if (v15)
  {
    CFRelease(v15);
  }

  FigXPCRelease(v26);
  FigXPCRelease(v25);
  v16 = *(v29 + 6);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v28, 8);
  return v16;
}

void __remoteXPCEndpointManager_ensureConnected_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  xdict = 0;
  *v77 = 0;
  v4 = *(*(a1 + 48) + 48);
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  else
  {
    v5 = FigXPCCreateBasicMessage(0x6765706Du, 0, v77);
    OUTLINED_FUNCTION_0_0(v5);
    if (!v6)
    {
      v7 = FigXPCMessageSetCFString(*v77, "EndpointManagerType", **(a1 + 48));
      OUTLINED_FUNCTION_0_0(v7);
      if (!v8)
      {
        v9 = FigXPCRemoteClientSendSyncMessageCreatingReply(*(a1 + 56), *v77, &xdict);
        OUTLINED_FUNCTION_0_0(v9);
        if (!v10)
        {
          uint64 = xpc_dictionary_get_uint64(xdict, ".objectID");
          *(*(*(a1 + 40) + 8) + 24) = uint64;
          if (*(*(*(a1 + 40) + 8) + 24))
          {
            v19 = OUTLINED_FUNCTION_4(uint64, v12, v13, v14, v15, v16, v17, v18, v60, v64, v66, v68, SBYTE2(v68), SBYTE3(v68), SHIDWORD(v68));
            v20 = v73;
            if (os_log_type_enabled(v19, type))
            {
              v21 = v73;
            }

            else
            {
              v21 = v73 & 0xFFFFFFFE;
            }

            if (v21)
            {
              v22 = **(a1 + 48);
              v23 = *(*(*(a1 + 40) + 8) + 24);
              v78 = 136315650;
              v79 = "remoteXPCEndpointManager_ensureConnected_block_invoke";
              v80 = 2112;
              v81 = v22;
              v82 = 2048;
              v83 = v23;
              v61 = &v78;
              _os_log_send_and_compose_impl(v21, 0, v84, 128, &dword_196FA7000, v19, type, "<< FigEndpointManagerXPCRemote >> %s: %@ endpoint manager remote associated with ID: %llx");
              v20 = v73;
            }

            v38 = OUTLINED_FUNCTION_2();
            fig_log_call_emit_and_clean_up_after_send_and_compose(v38, v39, v40, v41, v42, v20);
            v48 = FigXPCRemoteClientAssociateObject(*(a1 + 56), *(a1 + 64), *(*(*(a1 + 40) + 8) + 24), v43, v44, v45, v46, v47, v61);
            OUTLINED_FUNCTION_0_0(v48);
            if (!v49)
            {
              v50 = *(a1 + 48);
              *(v50 + 48) = *(*(*(a1 + 40) + 8) + 24);
              v51 = *(v50 + 56);
              if (v51)
              {
                remoteXPCFigEndpointManager_sendSetDiscoveryMode(*(*(*(a1 + 40) + 8) + 24), *(a1 + 56), v51, *(v50 + 64));
              }
            }
          }

          else
          {
            v24 = OUTLINED_FUNCTION_4(uint64, v12, v13, v14, v15, v16, v17, v18, v60, v64, v66, v68, SBYTE2(v68), SBYTE3(v68), SHIDWORD(v68));
            v32 = OUTLINED_FUNCTION_10(v24, v25, v26, v27, v28, v29, v30, v31, v62, v65, v67, v69, v70, typea, v74);
            v33 = OUTLINED_FUNCTION_6(v32);
            if (v33)
            {
              v78 = 136315138;
              v79 = "remoteXPCEndpointManager_ensureConnected_block_invoke";
              v63 = &v78;
              OUTLINED_FUNCTION_5(v33, v34, v84, v35, &dword_196FA7000, v36, v37, "<< FigEndpointManagerXPCRemote >> %s: zero objectID received");
              v1 = v75;
            }

            v52 = OUTLINED_FUNCTION_2();
            fig_log_call_emit_and_clean_up_after_send_and_compose(v52, v53, v54, v55, v56, v1);
            emitter = fig_log_get_emitter("com.apple.coremedia", "");
            *(*(*(a1 + 32) + 8) + 24) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E9uLL, "<< FigEndpointManagerXPCRemote >>", 0x1C1, v2, v58, v59, v63);
          }
        }
      }
    }
  }

  FigXPCRelease(xdict);
  FigXPCRelease(*v77);
}

uint64_t remoteXPCFigEndpointManager_sendSetDiscoveryMode(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  *v10 = 0;
  v7 = FigXPCCreateBasicMessage(0x73646D20u, a1, v10);
  if (!v7)
  {
    FigXPCMessageSetCFString(*v10, "DiscoveryMode", a3);
    FigXPCMessageSetCFDictionary(*v10, "DiscoveryOptions", a4);
    v7 = FigXPCRemoteClientSendSyncMessage(a2, *v10);
  }

  v8 = v7;
  FigXPCRelease(*v10);
  return v8;
}

uint64_t FigEndpointManagerRemoteXPC_SetDiscoveryMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v13 = 0;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v7 = remoteXPCEndpointManager_ensureConnected(a1, &v13, &v14);
  v8 = OUTLINED_FUNCTION_9(v7);
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_1();
    v12[1] = 0x40000000;
    v12[2] = __FigEndpointManagerRemoteXPC_SetDiscoveryMode_block_invoke;
    v12[3] = &unk_1E749CB70;
    v12[4] = &v15;
    v12[5] = v14;
    v12[6] = v13;
    v12[7] = a2;
    v12[8] = a3;
    v12[9] = DerivedStorage;
    dispatch_sync(v9, v12);
    v10 = *(v16 + 6);
  }

  _Block_object_dispose(&v15, 8);
  return v10;
}

uint64_t FigEndpointManagerRemoteXPC_CreateEndpointAggregate(uint64_t a1, unsigned int a2, CFTypeRef *a3)
{
  xdict = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  cf = 0;
  v5 = remoteXPCEndpointManager_ensureConnected(a1, &v15, &v18);
  if (v5 || (v5 = FigXPCCreateBasicMessage(0x63726561u, v18, &xdict), v5) || (xpc_dictionary_set_uint64(xdict, "EndpointAggregateType", a2), v5 = FigXPCRemoteClientSendSyncMessageCreatingReply(v15, xdict, &v16), v5))
  {
    v11 = v5;
  }

  else
  {
    v11 = FigEndpointXPCRemoteRetainCopiedEndpointFromReply(v16, 0, &cf, v6, v7, v8, v9, v10, v13);
    if (!v11)
    {
      *a3 = cf;
      cf = 0;
    }
  }

  FigXPCRelease(xdict);
  FigXPCRelease(v16);
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t FigEndpointManagerRemoteXPC_CopyEndpointRemoteControlDepot(uint64_t a1, CFTypeRef *a2)
{
  v16 = 0;
  v14 = 0;
  v15 = 0;
  cf = 0;
  v13 = 0;
  if (a2)
  {
    v3 = remoteXPCEndpointManager_ensureConnected(a1, &v13, &v16);
    if (v3 || (v3 = FigXPCCreateBasicMessage(0x65726364u, v16, &v15), v3) || (v3 = FigXPCRemoteClientSendSyncMessageCreatingReply(v13, v15, &v14), v3))
    {
      v9 = v3;
    }

    else
    {
      v9 = FigEndpointXPCRemoteRetainCopiedEndpointFromReply(v14, 0, &cf, v4, v5, v6, v7, v8, v11);
      if (!v9)
      {
        *a2 = cf;
        cf = 0;
      }
    }
  }

  else
  {
    v9 = 4294950586;
  }

  FigXPCRelease(v15);
  FigXPCRelease(v14);
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

size_t FigEndpointManagerRemoteCreateWithType_cold_2(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBEAFuLL, "<< FigEndpointManagerXPCRemote >>", a1, v5, v6, v7, v9);
  *a2 = result;
  return result;
}

size_t remoteXPCEndpointManager_ResetCachedAvailableEndpoints_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBEAFuLL, "<< FigEndpointManagerXPCRemote >>", 0x10A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

BOOL FigEndpointManagerRemoteCopyAirPlayManager_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBEBAuLL, "<< FigEndpointManagerXPCRemote >>", 0x3AB, v3, v4, v5, v8);
  *a1 = v6;
  return v6 == 0;
}

size_t FigWatchdogStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    if ((_MergedGlobals_2 & 1) == 0)
    {
      qword_1ED4CC398 = FigSimpleMutexCreate();
      qword_1ED4CC3A0 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      wd_endpoint_register();
      wd_endpoint_set_alive_func();
      wd_endpoint_activate();
      _MergedGlobals_2 = 1;
    }

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_0_1();

    return FigSignalErrorAtGM(v10, v11, v12, v13, 0x7C, v14, v15, v16, a9);
  }
}

size_t FigWatchdogMonitorDispatchQueue_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB9F5uLL, "(Fig)", 0x23, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigWatchdogMonitorDispatchQueue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_1();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x22, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigWatchdogBeginVitalWork_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB9F5uLL, "(Fig)", 0x4D, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigWatchdogBeginVitalWork_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_1();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x4C, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigWatchdogBeginVitalWork_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_1();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x4B, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigWatchdogCompleteVitalWork_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB9F5uLL, "(Fig)", 0x68, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigWatchdogCompleteVitalWork_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_1();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x67, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigBaseClassRegisterClass_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0EuLL, "(Fig)", 0xD4, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigBaseClassRegisterClass_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xCE, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigBaseProtocolRegisterProtocol_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0EuLL, "(Fig)", 0xFC, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigBaseProtocolRegisterProtocol_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xF9, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMDerivedObjectCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x118, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMDerivedObjectCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0EuLL, "(Fig)", 0x11F, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMDerivedObjectCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE13uLL, "(Fig)", 0x117, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMDerivedObjectCreate_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE13uLL, "(Fig)", 0x116, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMDerivedObjectCreate_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x114, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t FigCopyCoverageFilePathPattern(void *a1)
{
  if (qword_1ED4CC3B8 != -1)
  {
    dispatch_once(&qword_1ED4CC3B8, &__block_literal_global_1);
  }

  FigSimpleMutexLock(qword_1ED4CC3B0);
  if (_MergedGlobals_3)
  {
    v2 = CFRetain(_MergedGlobals_3);
    FigSimpleMutexUnlock(qword_1ED4CC3B0);
    if (v2)
    {
LABEL_9:
      result = 0;
      *a1 = v2;
      return result;
    }
  }

  else
  {
    FigSimpleMutexUnlock(qword_1ED4CC3B0);
  }

  v3 = getenv("LLVM_PROFILE_FILE");
  if (v3)
  {
    v2 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v3, 0x8000100u, *MEMORY[0x1E695E498]);
    goto LABEL_9;
  }

  return 4294949395;
}

size_t _FigCopyResolvedCoverageFilePath(uint64_t a1, CFStringRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v12 = v10();
      if (v12)
      {
        *a2 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v12, 0x8000100u, *MEMORY[0x1E695E488]);
      }

      return 0;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v17 = v9;
    v18 = 217;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v17 = v9;
    v18 = 216;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", v18, v17, v15, v16, a9);
}

size_t _FigFinishUpdatingIncrementalCodeCoverageData(uint64_t (**a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (FigCodeCoverageCollectionIsUsingContinousMode())
  {
    return 0;
  }

  if (a1)
  {
    v10 = *a1;
    if (*a1)
    {

      return v10();
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v16 = 270;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v16 = 269;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", v16, v13, v14, v15, a9);
}

size_t _FigBeginUpdatingIncrementalCodeCoverageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (FigCodeCoverageCollectionIsUsingContinousMode())
  {
    return 0;
  }

  if (a1)
  {
    v10 = *(a1 + 8);
    if (v10)
    {
      v10();
      return 0;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v16 = 287;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v16 = 286;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", v16, v13, v14, v15, a9);
}

size_t _FigEnsureReadyToCollectIncrementalCoverageData_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", 0x66, v10, v11, v12, a9);
}

size_t _FigEnsureReadyToCollectIncrementalCoverageData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA12uLL, "<<<< CodeCoverageSupport >>>>", 0x8E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t _FigEnsureReadyToCollectIncrementalCoverageData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", 0xAC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t _FigSetCoverageFilePathPattern_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA13uLL, "<<<< CodeCoverageSupport >>>>", 0xFA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t _FigSetCoverageFilePathPattern_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", 0xF4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t _FigSetCoverageFilePathPattern_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", 0xF3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t _FigSetCoverageFilePathPattern_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA14uLL, "<<<< CodeCoverageSupport >>>>", 0xF2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t FigEndpointManagerCopyActivatedEndpoints(uint64_t a1, const __CFAllocator *a2, __CFArray **a3)
{
  BOOLean = 0;
  theArray = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v24 = 75;
LABEL_28:
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFCE14uLL, "(Fig)", v24, v21, v22, v23, BOOLean);
LABEL_29:
    v18 = v8;
    goto LABEL_16;
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v24 = 76;
    goto LABEL_28;
  }

  FigEndpointManagerGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable(v5) + 8) + 48);
  if (!v7)
  {
    Mutable = 0;
LABEL_18:
    v18 = 4294954514;
    goto LABEL_19;
  }

  v8 = v7(v6, @"AvailableEndpoints", a2, &theArray);
  if (v8)
  {
    goto LABEL_29;
  }

  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
        FigEndpointGetCMBaseObject();
        v15 = v14;
        v16 = *(*(CMBaseObjectGetVTable(v14) + 8) + 48);
        if (!v16)
        {
          goto LABEL_18;
        }

        v17 = v16(v15, @"IsActivated", a2, &BOOLean);
        if (v17)
        {
          goto LABEL_31;
        }

        if (CFBooleanGetValue(BOOLean))
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }

        if (BOOLean)
        {
          CFRelease(BOOLean);
          BOOLean = 0;
        }
      }

      while (v11 != ++v12);
    }

    v18 = 0;
    *a3 = Mutable;
LABEL_16:
    Mutable = 0;
    goto LABEL_19;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_3();
  v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 0xFFFFCE0EuLL, "(Fig)", 0x52, v26, v27, v28, BOOLean);
LABEL_31:
  v18 = v17;
LABEL_19:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v18;
}

uint64_t managerUtil_copyEndpointMatchingPropertyValue(const void *a1, uint64_t a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  cf = 0;
  theArray = 0;
  if (!a1 || (v9 = CFGetTypeID(a1), v9 != FigEndpointManagerGetTypeID(v9, v10)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v29 = 118;
LABEL_33:
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 0xFFFFCE14uLL, "(Fig)", v29, v26, v27, v28, cf);
LABEL_34:
    v23 = v15;
    goto LABEL_24;
  }

  if (!a3 || (v11 = CFGetTypeID(a3), v11 != CFStringGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v29 = 119;
    goto LABEL_33;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v29 = 120;
    goto LABEL_33;
  }

  if (!a5)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v29 = 121;
    goto LABEL_33;
  }

  FigEndpointManagerGetCMBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable(v12) + 8) + 48);
  if (!v14)
  {
LABEL_18:
    v23 = 4294954514;
    goto LABEL_24;
  }

  v15 = v14(v13, @"AvailableEndpoints", a2, &theArray);
  if (v15)
  {
    goto LABEL_34;
  }

  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v17 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v17);
      v19 = CFGetAllocator(ValueAtIndex);
      FigEndpointGetCMBaseObject();
      v21 = v20;
      v22 = *(*(CMBaseObjectGetVTable(v20) + 8) + 48);
      if (!v22)
      {
        goto LABEL_18;
      }

      v15 = v22(v21, a3, v19, &cf);
      if (v15)
      {
        goto LABEL_34;
      }

      if (FigCFEqual(cf, a4))
      {
        *a5 = CFRetain(ValueAtIndex);
        goto LABEL_21;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (Count == ++v17)
      {
        v17 = Count;
        goto LABEL_21;
      }
    }
  }

  v17 = 0;
LABEL_21:
  if (v17 == Count)
  {
    v23 = 4294950583;
  }

  else
  {
    v23 = 0;
  }

LABEL_24:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

size_t FigEndpointManagerCopyEndpointsForType(const void *a1, const __CFAllocator *a2, const void *a3, __CFArray **a4)
{
  cf = 0;
  theArray = 0;
  if (!a1 || (v7 = CFGetTypeID(a1), v7 != FigEndpointManagerGetTypeID(v7, v8)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v30 = 188;
LABEL_32:
    v24 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFFBEBAuLL, "(Fig)", v30, v27, v28, v29, cf);
    goto LABEL_19;
  }

  if (!a3 || (v9 = CFGetTypeID(a3), v9 != CFStringGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v30 = 189;
    goto LABEL_32;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v30 = 190;
    goto LABEL_32;
  }

  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 0xFFFFBEB9uLL, "(Fig)", 0xC1, v32, v33, v34, cf);
LABEL_34:
    v24 = v14;
    goto LABEL_21;
  }

  FigEndpointManagerGetCMBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable(v11) + 8) + 48);
  if (!v13)
  {
    v24 = 4294954514;
    goto LABEL_21;
  }

  v14 = v13(v12, @"AvailableEndpoints", a2, &theArray);
  if (v14)
  {
    goto LABEL_34;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_18:
    v24 = 0;
    *a4 = Mutable;
LABEL_19:
    Mutable = 0;
    goto LABEL_21;
  }

  v16 = Count;
  v17 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v17);
    v19 = CFGetAllocator(ValueAtIndex);
    FigEndpointGetCMBaseObject();
    v21 = v20;
    v22 = *(*(CMBaseObjectGetVTable(v20) + 8) + 48);
    if (!v22)
    {
      v24 = 4294954514;
      goto LABEL_27;
    }

    v23 = v22(v21, @"Type", v19, &cf);
    if (v23)
    {
      break;
    }

    if (FigCFEqual(cf, a3))
    {
      CFArrayAppendValue(Mutable, ValueAtIndex);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v16 == ++v17)
    {
      goto LABEL_18;
    }
  }

  v24 = v23;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_21:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v24;
}

size_t FigEndpointManagerCopyEndpointForID_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "(Fig)", 0xA0, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigEndpointManagerCopyEndpointForName_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "(Fig)", 0xAC, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

CMBlockBufferRef FigBlockBufferCreateSliceForSwiftOverlay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  blockBufferOut = 0;
  if (a1)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v6 = a2;
      if ((a2 & 0x8000000000000000) == 0)
      {
        if ((a3 + a2) > *(a1 + 40))
        {
          return 0;
        }

        else if (CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, a3, &blockBufferOut))
        {
          return blockBufferOut;
        }

        else
        {
          while (*(a1 + 32) == 1 && *(a1 + 48) == 1)
          {
            v6 += *(a1 + 56);
            a1 = *(a1 + 72);
          }

          result = blockBufferOut;
          if (a3)
          {
            *(blockBufferOut + 8) = 1;
            *(result + 5) = a3;
            *(result + 12) = 1;
            v7 = CFRetain(a1);
            result = blockBufferOut;
            *(blockBufferOut + 8) = a3;
            *(result + 9) = v7;
          }

          else
          {
            *(blockBufferOut + 12) = 0;
          }

          *(result + 7) = v6;
        }
      }
    }
  }

  return result;
}

uint64_t FigCreateBlockBufferWithDispatchDataNoCopyForSwiftOverlay(const __CFAllocator *a1, dispatch_data_t data, CMBlockBufferRef *a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 0x40000000;
  applier[2] = __FigCreateBlockBufferWithDispatchDataNoCopyForSwiftOverlay_block_invoke;
  applier[3] = &unk_1E749CCB0;
  applier[4] = &v12;
  dispatch_data_apply(data, applier);
  Empty = CMBlockBufferCreateEmpty(a1, *(v13 + 6), v6, a3);
  *(v17 + 6) = Empty;
  if (Empty)
  {
    v8 = Empty;
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __FigCreateBlockBufferWithDispatchDataNoCopyForSwiftOverlay_block_invoke_2;
    v10[3] = &unk_1E749CCD8;
    v10[4] = &v16;
    v10[5] = a3;
    dispatch_data_apply(data, v10);
    v8 = *(v17 + 6);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v8;
}

size_t FigBlockBufferEnumerateBlocksForSwiftOverlay_cold_1(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5FuLL, "(Fig)", a1, v8, a7, a8, v11);
  *a2 = result;
  return result;
}

uint64_t fcto_Equal(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    OUTLINED_FUNCTION_0_4(&sRegisterFigCaptionTextOutlineTypeOnce);
    result = 0;
    if (a2)
    {
      if (v4 == sFigCaptionTextOutlineID)
      {
        v5 = CFGetTypeID(a2);
        OUTLINED_FUNCTION_0_4(&sRegisterFigCaptionTextOutlineTypeOnce);
        if (v5 == sFigCaptionTextOutlineID)
        {
          result = CGColorEqualToColor(*(v3 + 32), *(a2 + 32));
          if (result)
          {
            return FigGeometryDimensionEqualToDimension(*(v3 + 16), *(v3 + 24), *(a2 + 16), *(a2 + 24));
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

CFHashCode fcto_Hash(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  OUTLINED_FUNCTION_0_4(&sRegisterFigCaptionTextOutlineTypeOnce);
  if (v2 != sFigCaptionTextOutlineID)
  {
    return 0;
  }

  v3 = a1[4];

  return CFHash(v3);
}

size_t FigCaptionTextOutlineCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14uLL, "(Fig)", 0x9D, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigCaptionTextOutlineCreateNone_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14uLL, "(Fig)", 0xB6, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCardCreateInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC6uLL, "<<< FigVirtualCaptureCard >>>", 0x291, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCardCreateInternal_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC6uLL, "<<< FigVirtualCaptureCard >>>", 0x289, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC6uLL, "<<< FigVirtualCaptureCard >>>", 0x99, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC5uLL, "<<< FigVirtualCaptureCard >>>", 0x98, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC6uLL, "<<< FigVirtualCaptureCard >>>", 0xBD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", 0xC1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_SetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC6uLL, "<<< FigVirtualCaptureCard >>>", 0xBA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_SetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC6uLL, "<<< FigVirtualCaptureCard >>>", 0xB9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t vcc_FigVirtualCaptureCardPreallocateCapacity_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC0uLL, "<<< FigVirtualCaptureCard >>>", 0x1F0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void vcc_FigVirtualCaptureCardPreallocateCapacity_cold_2(const __CFURL **a1, uint64_t a2, int *a3)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v7 = -17214;
  if (!FigFileGetFileInfo(*a1, v19) && !*&v19[0])
  {
    v8 = vcc_StatFileCapacity(*a1);
    v9 = a2 - v8;
    if (a2 <= v8)
    {
      if (a2 < v8)
      {
        v13 = APFSCaptureDeletePreallocFile();
        if (v13)
        {
          v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigFileDeleteFile failed for path %@, err %d", *a1, v13);
          v12 = 533;
          goto LABEL_11;
        }

        PreallocFile = APFSCaptureCreatePreallocFile();
        if (PreallocFile)
        {
          v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"APFSCaptureCreatePreallocFile failed: path %@, err %d, capacity %lld", *a1, PreallocFile, a2);
          v12 = 540;
          goto LABEL_11;
        }
      }
    }

    else
    {
      v10 = APFSCaptureExtendPreallocSizeForFile();
      if (v10)
      {
        v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"APFSCaptureExtendPreallocSizeForFile failed: path %@, err %d, growBy %lld", *a1, v10, v9);
        v12 = 525;
LABEL_11:
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", v12, v3, v16, v17, v18);
        CFRelease(v11);
        goto LABEL_13;
      }
    }

    v7 = 0;
  }

LABEL_13:
  *a3 = v7;
}

size_t vcc_FigVirtualCaptureCardPreallocateCapacity_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", 0x1EF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_ReserveForCaptureToFile_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC0uLL, "<<< FigVirtualCaptureCard >>>", 0xE4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_ReserveForCaptureToFile_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", 0xE7, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_ReserveForCaptureToFile_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC6uLL, "<<< FigVirtualCaptureCard >>>", 0xE5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_ReserveForCaptureToFile_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", 0xE3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_SaveCapture_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", 0x113, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_SaveCapture_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCBFuLL, "<<< FigVirtualCaptureCard >>>", 0x111, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigVirtualCaptureCard_SaveCapture_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", 0x110, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

CFTypeRef FigCFStringCreateWithJSONDictionary(int a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v3 = CFGetTypeID(cf);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return figCFStringCreateWithCFDictionaryOrCFArray(cf);
}

CFTypeRef figCFStringCreateWithCFDictionaryOrCFArray(CFTypeRef cf)
{
  v1 = cf;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    TypeID = CFDictionaryGetTypeID();
    v4 = CFGetTypeID(v1);
    v5 = CFArrayGetTypeID();
    if (v2 == TypeID || v4 == v5)
    {
      v7 = objc_autoreleasePoolPush();
      if ([MEMORY[0x1E696ACB0] isValidJSONObject:v1] && (v8 = objc_msgSend(MEMORY[0x1E696ACB0], "dataWithJSONObject:options:error:", v1, 1, 0), (v9 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithData:encoding:", v8, 4)) != 0))
      {
        v1 = CFRetain(v9);
      }

      else
      {
        v1 = 0;
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

CFTypeRef FigCFStringCreateWithJSONArray(int a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v3 = CFGetTypeID(cf);
  if (v3 != CFArrayGetTypeID())
  {
    return 0;
  }

  return figCFStringCreateWithCFDictionaryOrCFArray(cf);
}

uint64_t FigCreateSerializedDictionaryFromNSErrorUserInfo(const __CFDictionary *a1, __CFDictionary **a2)
{
  value = 0;
  result = 4294950436;
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (CFDictionaryGetValueIfPresent(a1, *MEMORY[0x1E696A9A0], &value))
    {
      CFDictionarySetValue(Mutable, @"CFError_NetworkUnavailableReason", value);
    }

    result = 0;
    *a2 = Mutable;
  }

  return result;
}

uint64_t FigCreateNSErrorUserInfoFromSerializedDictionary(const __CFDictionary *a1, __CFDictionary **a2)
{
  value = 0;
  result = 4294950436;
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      if (CFDictionaryGetValueIfPresent(a1, @"CFError_NetworkUnavailableReason", &value))
      {
        CFDictionarySetValue(v6, *MEMORY[0x1E696A9A0], value);
      }

      result = 0;
      *a2 = v6;
    }

    else
    {
      return 4294950435;
    }
  }

  return result;
}

uint64_t FigCreateCFDataFromBase64EncodedString(uint64_t a1, uint64_t *a2)
{
  result = 4294950436;
  if (a1 && a2)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:a1 options:0];
    if (v5)
    {
      v6 = v5;
      result = 0;
      *a2 = v6;
    }

    else
    {
      return 4294950436;
    }
  }

  return result;
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0x88, v10, v11, v12, a9);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0x9A, v10, v11, v12, a9);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0x9D, v10, v11, v12, a9);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0xA0, v10, v11, v12, a9);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0xA4, v10, v11, v12, a9);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0xA9, v10, v11, v12, a9);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0xAC, v10, v11, v12, a9);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0xAF, v10, v11, v12, a9);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBE23uLL, "<FigFoundationUtilities>", 0x93, v10, v11, v12, a9);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0x87, v10, v11, v12, a9);
}

size_t FigCFStringCreateWithBytesWithUnknownEncoding_cold_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBE24uLL, "<FigFoundationUtilities>", 0x86, v10, v11, v12, a9);
}

size_t FigTriggerTapToRadar(uint64_t a1, const __CFString *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  switch(a4)
  {
    case 0x996E3u:
      v15 = 0;
      v16 = @"All";
      v17 = @"Audio - Toolbox";
      break;
    case 0x999C9u:
      v15 = 0;
      v16 = @"All";
      v17 = @"AirPlay (New Bugs)";
      break;
    case 0x999E3u:
      v15 = 0;
      v16 = @"All";
      v17 = @"CoreMedia Playback";
      break;
    default:
      OUTLINED_FUNCTION_0_5();
      if (v14)
      {
        v15 = 0;
        v16 = @"All";
        v17 = @"videocodecd triage";
      }

      else
      {
        switch(a4)
        {
          case 0xF8CFAu:
            v15 = 0;
            v16 = @"All";
            v17 = @"MediaExperience (New Bugs)";
            break;
          case 0x143C88u:
            v15 = 0;
            v16 = @"All";
            v17 = @"CoreMedia Streaming (New Bugs)";
            break;
          case 0x16FF06u:
            v15 = 0;
            v16 = @"All";
            v17 = @"CoreMedia (New Bugs)";
            break;
          case 0x16FF08u:
            v15 = 0;
            v16 = @"All";
            v17 = @"CoreMedia Formats";
            break;
          default:
            OUTLINED_FUNCTION_0_5();
            if (v14)
            {
              v15 = 0;
              v16 = @"All";
              v17 = @"audiomxd triage";
            }

            else
            {
              OUTLINED_FUNCTION_0_5();
              if (v14)
              {
                v15 = 0;
                v16 = @"All";
                v17 = @"mediaparserd triage";
              }

              else
              {
                OUTLINED_FUNCTION_0_5();
                if (v14)
                {
                  v15 = 0;
                  v16 = @"All";
                  v17 = @"mediaplaybackd triage";
                }

                else if (a4 == 629221)
                {
                  v15 = 0;
                  v16 = @"All";
                  v17 = @"CoreMedia Video Toolbox";
                }

                else
                {
                  v17 = 0;
                  v16 = 0;
                  v15 = 1;
                }
              }
            }

            break;
        }
      }

      break;
  }

  IsInternalBuild = FigDebugIsInternalBuild(a1, a2);
  if (!IsInternalBuild)
  {
    return 4294947925;
  }

  if (!figIsAllowedToTriggerTapToRadar(IsInternalBuild, v19))
  {
    return 4294947926;
  }

  v20 = v15 ^ 1;
  if (!v17)
  {
    v20 = 0;
  }

  if (v20)
  {
    if (a2 && a3 && CFStringGetLength(a2) < 206)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = objc_alloc_init(off_1ED4CBF78());
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Automatic CoreMedia Diagnostics] %@", a2];
      [v22 setTitle:v23];

      [v22 setProblemDescription:a3];
      v24 = [objc_alloc(off_1ED4CBF80()) initWithName:v17 version:v16 identifier:a4];
      [v22 setComponent:v24];
      [v22 setClassification:0];
      [v22 setReproducibility:0];
      [v22 setIsUserInitiated:0];
      v25 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"com.apple.coremedia.CoreMediaDiagnostics.CoreMediaDiagnosticExtension", 0}];
      [v22 setDiagnosticExtensionIDs:v25];

      v26 = [(objc_class *)_MergedGlobals() shared];
      v36 = 0;
      [v26 createDraft:v22 forProcessNamed:@"CoreMedia" withDisplayReason:a1 error:&v36];
      v27 = v36;

      v28 = 0;
      if (NSErrorToOSStatus())
      {
        v28 = NSErrorToOSStatus();
      }

      objc_autoreleasePoolPop(v21);
      return v28;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v33 = v9;
    v34 = 4294947923;
    v35 = 189;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v33 = v9;
    v34 = 4294947924;
    v35 = 188;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v34, "<<<< FigTTRSupport >>>>", v35, v33, v31, v32, a9);
}

size_t CMTextFormatDescriptionGetDisplayFlags_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x85, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDisplayFlags_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x73, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetJustification_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xAB, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetJustification_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB7, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetJustification_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x92, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultTextBox_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xE7, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultTextBox_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xE3, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultTextBox_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xDF, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultTextBox_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xDB, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultTextBox_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xD8, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultTextBox_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xC7, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x113, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x12A, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x160, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x15B, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x156, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x151, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x148, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x143, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x13E, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x139, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x10F, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetDefaultStyle_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xFF, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetFontName_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x190, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetFontName_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x18D, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetFontName_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x18A, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetFontName_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x185, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetFontName_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x172, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionGetFontName_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x171, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t __FigPurgeAndRenewProcessStateTrackerModifyPurgeEligibilityForPID_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 44);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 40)];
  result = _os_feature_enabled_impl();
  if (result)
  {
    v6 = [_MergedGlobals_4 objectForKey:v4];
    if (v6)
    {
      if ([*(v6 + 8) setPurgeSuspended:v3])
      {
        result = 0;
        goto LABEL_5;
      }

      v9 = qword_1EAF1CC60;
      v10 = v1;
      v11 = 4294947823;
      v12 = 586;
    }

    else
    {
      v9 = qword_1EAF1CC60;
      v10 = v1;
      v11 = 4294947824;
      v12 = 581;
    }

    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<< FigPurgeAndRenewProcessStateTracker >>>", v12, v10, v7, v8, v13);
  }

LABEL_5:
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t FigPurgeAndRenewProcessStateTrackerGetTrackedState(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  FigNote_AllowInternalDefaultLogs(v2, v3);
  OUTLINED_FUNCTION_0_7();
  fig_note_initialize_category_with_default_work_cf(v4, v5, v6, v7, v8, v9, 0, &gFigPurgeAndRenewProcessStateTracker);
  OUTLINED_FUNCTION_0_7();
  fig_note_initialize_category_with_default_work_cf(v10, v11, v12, v13, v14, 1u, 0, v15);
  if (qword_1ED4CC3D8 != -1)
  {
    dispatch_once(&qword_1ED4CC3D8, &__block_literal_global_3);
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  if (_os_feature_enabled_impl())
  {
    v17 = [_MergedGlobals_4 objectForKey:v16];
    if (v17)
    {
      if ([*(v17 + 8) isProcessStateSuspended])
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0xFFFFFFFFLL;
  }

  objc_autoreleasePoolPop(v2);
  return v18;
}

id *__FigPurgeAndRenewProcessStateTrackerGetOperatorForPID_block_invoke(uint64_t a1)
{
  result = [_MergedGlobals_4 objectForKey:*(a1 + 32)];
  if (result)
  {
    result = [result[1] operator];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

size_t __FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID_block_invoke_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC60, 0xFFFFB3F0uLL, "<<< FigPurgeAndRenewProcessStateTracker >>>", 0x22C, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t __FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID_block_invoke_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC60, 0xFFFFB3F2uLL, "<<< FigPurgeAndRenewProcessStateTracker >>>", 0x228, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t __startProcessStateTracking_block_invoke_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC60, 0xFFFFB3F1uLL, "<<< FigPurgeAndRenewProcessStateTracker >>>", 0x200, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t __startProcessStateTracking_block_invoke_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC60, 0xFFFFB3F1uLL, "<<< FigPurgeAndRenewProcessStateTracker >>>", 0x1F2, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t __startProcessStateTracking_block_invoke_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC60, 0xFFFFB3F1uLL, "<<< FigPurgeAndRenewProcessStateTracker >>>", 0x1EF, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t __startProcessStateTracking_block_invoke_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC60, 0xFFFFB3F1uLL, "<<< FigPurgeAndRenewProcessStateTracker >>>", 0x1EC, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t FigCAStatsReportingSubmitData(const void *a1, const void *a2, uint64_t a3, double a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (qword_1ED4CC3E8 != -1)
  {
    dispatch_once(&qword_1ED4CC3E8, &__block_literal_global_4);
  }

  v8 = 0;
  if (a1 && _MergedGlobals_5)
  {
    v9 = objc_autoreleasePoolPush();
    if (a3)
    {
      v20[1] = a3;
      v21[0] = a1;
      v20[0] = @"appName";
      v21[1] = [MEMORY[0x1E696AD98] numberWithDouble:a4];
      v10 = MEMORY[0x1E695DF20];
      v11 = v21;
      v12 = v20;
      v13 = 2;
    }

    else
    {
      v18 = @"appName";
      v19 = a1;
      v10 = MEMORY[0x1E695DF20];
      v11 = &v19;
      v12 = &v18;
      v13 = 1;
    }

    v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:v13];
    if (v14)
    {
      CFRetain(a1);
      if (a2)
      {
        CFRetain(a2);
      }

      OUTLINED_FUNCTION_1();
      v17[1] = 3221225472;
      v17[2] = __FigCAStatsReportingSubmitData_block_invoke;
      v17[3] = &unk_1E749D0A8;
      v17[4] = v14;
      v17[5] = a2;
      v17[6] = a1;
      dispatch_async(v15, v17);
      v8 = 0;
    }

    else
    {
      v8 = 4294954510;
    }

    objc_autoreleasePoolPop(v9);
  }

  return v8;
}

uint64_t FigCAStatsReportingSubmitDataDict(const void *a1, const void *a2)
{
  if (qword_1ED4CC3E8 == -1)
  {
    if (!a2)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&qword_1ED4CC3E8, &__block_literal_global_4);
    if (!a2)
    {
      return 0;
    }
  }

  if (a1 && _MergedGlobals_5)
  {
    v4 = objc_autoreleasePoolPush();
    CFRetain(a1);
    CFRetain(a2);
    OUTLINED_FUNCTION_1();
    v7[1] = 3221225472;
    v7[2] = __FigCAStatsReportingSubmitDataDict_block_invoke;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = a1;
    v7[5] = a2;
    dispatch_async(v5, v7);
    objc_autoreleasePoolPop(v4);
  }

  return 0;
}

uint64_t FigAudioDeviceGetCurrentPresentationTime(AudioObjectID inObjectID, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  outDataSize = 0;
  memset(v21, 0, sizeof(v21));
  if (sCheckTraceOnceToken != -1)
  {
    dispatch_once(&sCheckTraceOnceToken, &__block_literal_global_7);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_10:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v16 = 121;
    goto LABEL_12;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (inObjectID)
  {
    result = AudioObjectGetPropertyDataSize(inObjectID, "tptbbolg", 0, 0, &outDataSize);
    if (!result)
    {
      if (outDataSize == 40)
      {
        result = AudioObjectGetPropertyData(inObjectID, "tptbbolg", 0, 0, &outDataSize, v21);
        if (!result)
        {
          *a2 = *v21;
          *(a2 + 8) = *&v21[8];
          *(a2 + 24) = *&v21[24];
        }
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFB9FEuLL, "<<<< AudioDevicePresentationTime >>>>", 0x7E, v18, v19, v20, *v21);
      }
    }

    return result;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v16 = 122;
LABEL_12:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFBA00uLL, "<<<< AudioDevicePresentationTime >>>>", v16, v13, v14, v15, a9);
}

size_t FigAudioDeviceGetCurrentDynamicLatency(AudioObjectID inObjectID, CMTime *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  outData = NAN;
  *&inAddress.mSelector = *"trsnptuo";
  inAddress.mElement = 0;
  if (sCheckTraceOnceToken == -1)
  {
    if (a2)
    {
LABEL_3:
      result = FigAudioDeviceGetCurrentPresentationTime(inObjectID, &v23, a3, a4, a5, a6, a7, a8, v19.value);
      if (!result)
      {
        v13 = *(&v23 + 1);
        v14 = *&v24;
        ioDataSize = 8;
        result = AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData);
        if (!result)
        {
          v15 = v13 - v14;
          if (v13 - v14 < 0.0)
          {
            v15 = -(v13 - v14);
          }

          CMTimeMake(&v19, v15, outData);
          result = 0;
          *a2 = v19;
        }
      }

      return result;
    }
  }

  else
  {
    dispatch_once(&sCheckTraceOnceToken, &__block_literal_global_10_0);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBA00uLL, "<<<< AudioDevicePresentationTime >>>>", 0xA0, v9, v17, v18, a9);
}

size_t FigAudioDeviceSupportsPresentationTime_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBA00uLL, "<<<< AudioDevicePresentationTime >>>>", 0x49, v10, v11, v12, a9);
}

uint64_t FigCaptionDataCopySubrange(const __CFAllocator *a1, uint64_t a2, CFIndex a3, CFIndex a4, CFTypeRef *a5)
{
  theArray = 0;
  v49 = 0;
  cf = 0;
  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v39 = 320;
LABEL_47:
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, 0xFFFFCE14uLL, "<<<< FigCaptionData >>>>", v39, v36, v37, v38, v40);
    goto LABEL_48;
  }

  v5 = a5;
  if (!a5)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v39 = 321;
    goto LABEL_47;
  }

  v10 = *(*(CMBaseObjectGetVTable(a2) + 16) + 8);
  if (v10)
  {
    v11 = v10(a2);
  }

  else
  {
    v11 = &stru_1F0B78830;
  }

  Length = CFStringGetLength(v11);
  if (a3 < 0)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v39 = 326;
    goto LABEL_47;
  }

  v13 = a3 + a4;
  if (a3 + a4 > Length)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v39 = 327;
    goto LABEL_47;
  }

  v14 = FigCaptionDataCreateMutable(a1, &v49);
  if (!v14)
  {
    v15 = *MEMORY[0x1E695E480];
    v50.location = a3;
    v50.length = a4;
    v16 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v11, v50);
    v17 = v49;
    v18 = *(*(CMBaseObjectGetVTable(v49) + 16) + 16);
    if (v18)
    {
      v19 = v18(v17, v16);
      if (v19)
      {
LABEL_42:
        v33 = v19;
        goto LABEL_32;
      }

      v20 = *(*(CMBaseObjectGetVTable(a2) + 8) + 48);
      if (v20)
      {
        v19 = v20(a2, @"StylePropertyKeysInUse", v15, &theArray);
        if (!v19)
        {
          if (!theArray || (Count = CFArrayGetCount(theArray)) == 0)
          {
LABEL_30:
            v33 = 0;
            *v5 = v49;
            v49 = 0;
            goto LABEL_32;
          }

          v21 = 0;
          v43 = v16;
          while (1)
          {
            v42 = v21;
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
            if (a4 >= 1)
            {
              break;
            }

LABEL_29:
            v21 = v42 + 1;
            if (v42 + 1 == Count)
            {
              goto LABEL_30;
            }
          }

          v22 = a3;
          while (1)
          {
            v45 = 0;
            v46 = 0;
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            v23 = *(*(CMBaseObjectGetVTable(a2) + 16) + 24);
            if (!v23)
            {
              goto LABEL_31;
            }

            v19 = v23(a2, v22, ValueAtIndex, v15, &cf, &v45);
            if (v19)
            {
              goto LABEL_42;
            }

            v24 = cf;
            if (cf)
            {
              v25 = v5;
              v26 = a3;
              v27 = (v45 - a3) & ~((v45 - a3) >> 63);
              v28 = ((v45 - a3) & ((v45 - a3) >> 63)) + v46;
              v29 = a4;
              if (v28 + v27 <= a4)
              {
                v30 = v28;
              }

              else
              {
                v30 = a4 - v27;
              }

              v31 = v49;
              v32 = *(*(CMBaseObjectGetVTable(v49) + 16) + 32);
              if (!v32)
              {
                v33 = 4294954514;
                v16 = v43;
                goto LABEL_32;
              }

              v19 = v32(v31, ValueAtIndex, v24, v27, v30);
              v5 = v25;
              v16 = v43;
              a4 = v29;
              a3 = v26;
              if (v19)
              {
                goto LABEL_42;
              }
            }

            v22 = v46 + v45;
            if (v46 + v45 >= v13)
            {
              goto LABEL_29;
            }
          }
        }

        goto LABEL_42;
      }
    }

LABEL_31:
    v33 = 4294954514;
    goto LABEL_32;
  }

LABEL_48:
  v33 = v14;
  v16 = 0;
LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v33;
}

size_t FigCaptionDataCreate_cold_1(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFCE14uLL, "<<<< FigCaptionData >>>>", a1, v5, v6, v7, v9);
  *a2 = result;
  return result;
}

size_t FigProcessStateMonitorServerEnsureStartedAndCopyEndpoint(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  v14 = 0;
  if (!a1)
  {
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorServer >>>>", 0x30B, v8, a7, a8, v13);
    goto LABEL_7;
  }

  if (qword_1ED4CC418 != -1)
  {
    dispatch_once(&qword_1ED4CC418, &__block_literal_global_6);
  }

  v10 = _MergedGlobals_6;
  if (_MergedGlobals_6)
  {
    goto LABEL_7;
  }

  v10 = FigXPCServerCopyXPCEndpoint(qword_1ED4CC3F8, &v14);
  v11 = v14;
  if (!v10)
  {
    *a1 = v14;
    v14 = 0;
LABEL_7:
    v11 = 0;
  }

  FigXPCRelease(v11);
  return v10;
}

uint64_t FigProcessStateMonitorCreateExpiringAssertionOnBehalfOfProcessWithPID(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v39 = 0;
  result = fpsmServer_copyCompanionForPID(a1, &v39);
  if (!result)
  {
    v15 = v39;
    if (*(v39 + 80))
    {
      result = figProcessStateMonitorMustNotPurgeClientObjects(v39, a2, v9, v10, v11, v12, v13, v14);
      if (!result)
      {
        if (qword_1ED4CC408 != -1)
        {
          OUTLINED_FUNCTION_2_0();
          dispatch_once_f(v32, v33, v34);
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance || (result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB419uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x392, v4, v16, v17, v35), !result))
        {
          if (dword_1EAF1CC88)
          {
            v38 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 1, &v38, &type);
            v20 = v38;
            v21 = type;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v22 = v20;
            }

            else
            {
              v22 = v20 & 0xFFFFFFFE;
            }

            if (v22)
            {
              v40 = 136315650;
              v41 = "FigProcessStateMonitorCreateExpiringAssertionOnBehalfOfProcessWithPID";
              v42 = 2112;
              v43 = Instance;
              v44 = 2048;
              v45 = a3;
              _os_log_send_and_compose_impl(v22, 0, v46, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v21, "<<<< FigProcessStateMonitorServer >>>> %s: Take expiring assertion %@ with timeout %lld seconds", &v40, 32);
              LOBYTE(v20) = v38;
            }

            OUTLINED_FUNCTION_1_1();
            fig_log_call_emit_and_clean_up_after_send_and_compose(v23, v24, v25, v26, v27, v20);
          }

          v28 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v15[3]);
          v29 = dispatch_time(0, 1000000000 * a3);
          dispatch_source_set_timer(v28, v29, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          v30 = FigCFWeakReferenceHolderCreateWithReferencedObject(Instance);
          dispatch_set_context(v28, v30);
          dispatch_set_finalizer_f(v28, figProcessStateMonitorPurgePreventionAssertionTimeoutFinalizer);
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __FigProcessStateMonitorCreateExpiringAssertionOnBehalfOfProcessWithPID_block_invoke;
          handler[3] = &unk_1E749CE18;
          handler[4] = v28;
          dispatch_source_set_event_handler(v28, handler);
          Instance[5] = v28;
          if (a2)
          {
            v31 = CFRetain(a2);
          }

          else
          {
            v31 = 0;
          }

          Instance[3] = v31;
          Instance[4] = CFRetain(v15);
          dispatch_activate(v28);
          result = 0;
          *a4 = Instance;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t fpsmServer_copyCompanionForPID(int a1, void *a2)
{
  cf = 0;
  v5 = FigCFWeakReferenceTableCopyValues(qword_1ED4CC400, &cf);
  if (v5)
  {
    goto LABEL_16;
  }

  v6 = FigCFDictionaryCopyArrayOfKeys(cf);
  if (!v6)
  {
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB419uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x134, v2, v7, v8, v17);
LABEL_16:
    v15 = v5;
    goto LABEL_12;
  }

  v9 = v6;
  if (CFArrayGetCount(v6) < 1)
  {
LABEL_9:
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB418uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x13E, v2, v10, v11, v17);
  }

  else
  {
    v12 = 0;
    while (1)
    {
      v13 = cf;
      CFArrayGetValueAtIndex(v9, v12);
      Value = FigCFDictionaryGetValue(v13);
      if (Value)
      {
        Value = CFRetain(Value);
      }

      if (Value[4] == a1)
      {
        break;
      }

      CFRelease(Value);
      if (++v12 >= CFArrayGetCount(v9))
      {
        goto LABEL_9;
      }
    }

    v15 = 0;
    *a2 = Value;
  }

  CFRelease(v9);
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

CFMutableStringRef figProcessStateMonitorServer_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v4 = Mutable;
  if (!Mutable)
  {
    return v4;
  }

  OUTLINED_FUNCTION_6_0(Mutable, v3, @"<FigProcessStateMonitorServerCompanion (%p, %d)> {\n");
  OUTLINED_FUNCTION_6_0(v5, v6, @"\tMEMRC=%@,\n");
  v7 = CFTimeZoneCopySystem();
  v8 = *MEMORY[0x1E695E480];
  StringWithDate = CFDateFormatterCreate(*MEMORY[0x1E695E480], 0, kCFDateFormatterShortStyle, kCFDateFormatterLongStyle);
  v11 = StringWithDate;
  v12 = 0;
  v13 = 0;
  if (!v7 || !StringWithDate || ((CFDateFormatterSetProperty(StringWithDate, *MEMORY[0x1E695E5D8], v7), (v14 = *(a1 + 88)) == 0) ? (v15 = 0) : (StringWithDate = CFDateFormatterCreateStringWithDate(v8, v11, v14), v15 = StringWithDate), (v16 = *(a1 + 96)) == 0 ? (v13 = 0) : (StringWithDate = CFDateFormatterCreateStringWithDate(v8, v11, v16), v13 = StringWithDate), (v17 = *(a1 + 112)) == 0 ? (v12 = 0) : (StringWithDate = CFDateFormatterCreateStringWithDate(v8, v11, v17), v12 = StringWithDate), *(a1 + 88) && !v15))
  {
    OUTLINED_FUNCTION_6_0(StringWithDate, v10, @"\t // Note: Fallback to GMT\n");
    goto LABEL_16;
  }

  if (*(a1 + 96) && !v13 || *(a1 + 112) && !v12)
  {
    OUTLINED_FUNCTION_6_0(StringWithDate, v10, @"\t // Note: Fallback to GMT\n");
    if (v15)
    {
      CFRelease(v15);
    }

LABEL_16:
    v18 = *(a1 + 88);
    if (v18)
    {
      v15 = CFRetain(v18);
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = 0;
      if (!v13)
      {
LABEL_19:
        v19 = *(a1 + 96);
        if (v19)
        {
          v13 = CFRetain(v19);
          if (!v12)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v13 = 0;
          if (!v12)
          {
LABEL_22:
            v20 = *(a1 + 112);
            if (v20)
            {
              v12 = CFRetain(v20);
            }

            else
            {
              v12 = 0;
            }

            goto LABEL_29;
          }
        }

        CFRelease(v12);
        goto LABEL_22;
      }
    }

    CFRelease(v13);
    goto LABEL_19;
  }

LABEL_29:
  v21 = *(a1 + 80);
  if (*(a1 + 80) && (FigPurgeAndRenewProcessStateTrackerGetTrackedState(*(a1 + 16)), v22 = FigReentrantMutexTryLock(), !v22))
  {
    OUTLINED_FUNCTION_6_0(v22, v23, @"N/A}");
    if (!v7)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Count = CFArrayGetCount(*(a1 + 48));
    OUTLINED_FUNCTION_6_0(Count, v25, @"\tENRD=%@, AC=%ld, PS=%s, MRP=%lld@%@,\n");
    if (*(a1 + 120))
    {
      OUTLINED_FUNCTION_6_0(v26, v27, @"\t!!!! SPE=%lld SPD=%@\n");
    }

    OUTLINED_FUNCTION_6_0(v26, v27, @"}");
    if (v21)
    {
      FigReentrantMutexUnlock(*(a1 + 64));
    }

    if (!v7)
    {
      goto LABEL_37;
    }
  }

  CFRelease(v7);
LABEL_37:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v4;
}

void __figProcessStateMonitorHandleEnrollInPurge_block_invoke(uint64_t a1, int a2)
{
  v105 = *MEMORY[0x1E69E9840];
  v98 = 0;
  dataPointerOut = 0;
  if (dword_1EAF1CC88)
  {
    v7 = OUTLINED_FUNCTION_0_8();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v7, 1, v8, v9);
    if (OUTLINED_FUNCTION_7(os_log_and_send_and_compose_flags_and_os_log_type, v11, v12, v13, v14, v15, v16, v17, v85, v86, block, v88, v89, v90, v91, v92, v93, v94, v95, type, v97))
    {
      v18 = v4;
    }

    else
    {
      v18 = v4 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = *(a1 + 32);
      v100 = 136315394;
      v101 = "figProcessStateMonitorHandleEnrollInPurge_block_invoke";
      v102 = 2048;
      v103 = v19;
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_send_and_compose_impl(v20, v21, v22, v23, v24, v2, v3, v25);
      v4 = v97;
    }

    OUTLINED_FUNCTION_1_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose(v26, v27, v28, v29, v30, v4);
  }

  v31 = fpsmServer_copyCompanionForPID(a2, &v98);
  v32 = v98;
  if (v31)
  {
    if (v98)
    {
LABEL_29:
      CFRelease(v32);
    }
  }

  else
  {
    if (v98)
    {
      if (dword_1EAF1CC88)
      {
        v33 = OUTLINED_FUNCTION_0_8();
        v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v33, 1, v34, v35);
        if (OUTLINED_FUNCTION_7(v36, v37, v38, v39, v40, v41, v42, v43, v85, v86, block, v88, v89, v90, v91, v92, v93, v94, v95, type, v97))
        {
          v44 = v4;
        }

        else
        {
          v44 = v4 & 0xFFFFFFFE;
        }

        if (v44)
        {
          v100 = 136315394;
          v101 = "figProcessStateMonitorHandleEnrollInPurge_block_invoke";
          v102 = 2114;
          v103 = v32;
          OUTLINED_FUNCTION_3_0();
          OUTLINED_FUNCTION_4_0();
          _os_log_send_and_compose_impl(v45, v46, v47, v48, v49, v2, v3, v50);
          LOBYTE(v4) = v97;
        }

        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v51, v52, v53, v54, v55, v4);
      }

      FigReentrantMutexLock(*(v32 + 64));
      if (*(v32 + 56))
      {
        FigReentrantMutexUnlock(*(v32 + 64));
        if (!CMBlockBufferGetDataPointer(*(v32 + 40), 0, 0, 0, &dataPointerOut))
        {
          if ((dataPointerOut & 0xF) != 0)
          {
            OUTLINED_FUNCTION_5_0();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, 0xFFFFB416uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x1DC, v82, v83, v84, v85);
          }

          else
          {
            v56 = *(v32 + 24);
            block = MEMORY[0x1E69E9820];
            v88 = 3221225472;
            v89 = __figProcessStateMonitorHandleEnrollInPurge_block_invoke_41;
            v90 = &__block_descriptor_52_e5_v8__0l;
            LODWORD(v93) = a2;
            v91 = v32;
            v92 = dataPointerOut;
            dispatch_sync(v56, &block);
            v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"event=%lld, stickyCouldNotPurgeAllObjects=%d", *(v32 + 72), *(v32 + 120));
            if (v57)
            {
              v58 = v57;
              FigPerformanceMonitorAddToReclamationEventLog();
              CFRelease(v58);
            }

            else
            {
              v59 = OUTLINED_FUNCTION_0_8();
              v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v59, 0, v60, v61);
              v63 = v97;
              v64 = type;
              if (os_log_type_enabled(v62, type))
              {
                v65 = v63;
              }

              else
              {
                v65 = v63 & 0xFFFFFFFE;
              }

              if (v65)
              {
                v100 = 136315138;
                v101 = "figProcessStateMonitorHandleEnrollInPurge_block_invoke";
                OUTLINED_FUNCTION_3_0();
                OUTLINED_FUNCTION_4_0();
                v72 = _os_log_send_and_compose_impl(v66, v67, v68, v69, v70, v62, v64, v71);
                LOBYTE(v63) = v97;
              }

              else
              {
                v72 = 0;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 0, 1, v72, v72 != &v104, v63);
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_5_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v77, 0xFFFFB415uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x1D5, v78, v79, v80, v85);
        FigReentrantMutexUnlock(*(v32 + 64));
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_5_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, 0xFFFFB418uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x1CE, v74, v75, v76, v85);
  }
}

size_t figProcessStateMonitorMustNotPurgeClientObjects_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorServer >>>>", 0x199, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figProcessStateMonitorMustNotPurgeClientObjects_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorServer >>>>", 0x198, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

void __FigProcessStateMonitorEnsureServerStarted_block_invoke_cold_1(unint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _MergedGlobals_6 = FigXPCServerStartWithNewXPCEndpoint("ProcessStateMonitorServer", a1, a2, &qword_1ED4CC3F8, a5, a6, a7, a8);
  if (!_MergedGlobals_6)
  {
    Default = CFAllocatorGetDefault();
    _MergedGlobals_6 = FigCFWeakReferenceTableCreate(Default, 1, &qword_1ED4CC400);
  }

  CFRelease(a2);
}

size_t __FigProcessStateMonitorEnsureServerStarted_block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB419uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x2F5, v8, a7, a8, vars0);
  _MergedGlobals_6 = result;
  return result;
}

uint64_t FigVideoFormatDescriptionGetMVHEVCVideoLayerIDs(const opaqueCMFormatDescription *a1, uint64_t *a2, uint64_t *a3)
{
  tagCollectionsOut = 0;
  CMFormatDescriptionGetMediaType(a1);
  OUTLINED_FUNCTION_5_1();
  if (!v7 && CMFormatDescriptionGetMediaType(a1) != 1635088502)
  {
    goto LABEL_69;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  v7 = MediaSubType == 1667524657 || MediaSubType == 1667790435;
  v8 = v7 || MediaSubType == 1684895096;
  v9 = v8 || MediaSubType == 1685481521;
  v10 = v9 || MediaSubType == 1685481573;
  v11 = v10 || MediaSubType == 1718908520;
  v12 = v11 || MediaSubType == 1718908528;
  v13 = v12 || MediaSubType == 1751479857;
  v14 = v13 || MediaSubType == 1752589105;
  v15 = v14 || MediaSubType == 1836415073;
  v16 = v15 || MediaSubType == 1869117027;
  v17 = v16 || MediaSubType == 1902405681;
  v18 = v17 || MediaSubType == 1902405733;
  v19 = v18 || MediaSubType == 1902407032;
  v20 = v19 || MediaSubType == 1902667126;
  v21 = v20 || MediaSubType == 1902998904;
  if (!v21 && MediaSubType != 1902671459)
  {
    goto LABEL_69;
  }

  CMVideoFormatDescriptionCopyTagCollectionArray(a1, &tagCollectionsOut);
  if (!tagCollectionsOut)
  {
    v27 = 0;
    v31 = 0;
    return v27 & v31;
  }

  Count = CFArrayGetCount(tagCollectionsOut);
  if (Count >= 1)
  {
    v24 = Count;
    v25 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(tagCollectionsOut, v25);
      *&v38.category = *"seye\a";
      v38.value = 1;
      if (FigTagCollectionContainsTag(ValueAtIndex, v38))
      {
        break;
      }

      if (v24 == ++v25)
      {
        v27 = 0;
        goto LABEL_65;
      }
    }

    OUTLINED_FUNCTION_8_0();
    if (FigTagCollectionGetTagsWithCategory(ValueAtIndex, 1986814329))
    {
      v28 = 0;
    }

    else
    {
      v28 = v34 == 1;
    }

    if (!v28)
    {
      goto LABEL_69;
    }

    *a2 = FigTagGetSInt64Value(v35, v36);
    v27 = 1;
LABEL_65:
    v29 = 0;
    while (1)
    {
      v30 = CFArrayGetValueAtIndex(tagCollectionsOut, v29);
      *&v39.category = *"seye\a";
      v39.value = 2;
      if (FigTagCollectionContainsTag(v30, v39))
      {
        break;
      }

      if (v24 == ++v29)
      {
        goto LABEL_68;
      }
    }

    OUTLINED_FUNCTION_8_0();
    if (FigTagCollectionGetTagsWithCategory(v30, 1986814329))
    {
      v32 = 0;
    }

    else
    {
      v32 = v34 == 1;
    }

    if (!v32)
    {
LABEL_68:
      v31 = 0;
      goto LABEL_76;
    }

    *a3 = FigTagGetSInt64Value(v35, v36);
    v31 = 1;
  }

  else
  {
LABEL_69:
    v31 = 0;
    v27 = 0;
  }

LABEL_76:
  if (tagCollectionsOut)
  {
    CFRelease(tagCollectionsOut);
  }

  return v27 & v31;
}

size_t FigVideoFormatDescriptionCopyVEXUExtensions(const opaqueCMFormatDescription *a1, __CFDictionary **a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v19 = @"HasLeftStereoEyeView";
  v20 = @"HasRightStereoEyeView";
  v21 = @"HasEyeViewsReversed";
  v22 = @"HasAdditionalViews";
  v23 = @"HeroEye";
  v24 = @"StereoCameraBaseline";
  v25 = @"HorizontalDisparityAdjustment";
  v26 = @"ProjectionKind";
  v27 = @"ViewPackingKind";
  v28 = @"TransportIdentifier";
  v29 = @"HorizontalFieldOfView";
  v30 = @"CameraCalibrationDataLensCollection";
  CMFormatDescriptionGetMediaType(a1);
  OUTLINED_FUNCTION_5_1();
  if (v5 || CMFormatDescriptionGetMediaType(a1) == 1635088502)
  {
    v6 = 0;
    Mutable = 0;
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9D8];
    v10 = MEMORY[0x1E695E9E8];
    while (1)
    {
      v11 = *(&v19 + v6);
      Extension = CMFormatDescriptionGetExtension(a1, v11);
      if (Extension)
      {
        v13 = Extension;
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(v8, 0, v9, v10);
          if (!Mutable)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_1_2();
            result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE59uLL, "(Fig)", 0x4CF, v16, v17, v18, v2, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
            goto LABEL_10;
          }
        }

        CFDictionarySetValue(Mutable, v11, v13);
      }

      v6 += 8;
      if (v6 == 96)
      {
        goto LABEL_9;
      }
    }
  }

  Mutable = 0;
LABEL_9:
  result = 0;
LABEL_10:
  *a2 = Mutable;
  return result;
}

const opaqueCMFormatDescription *FigVideoCreateBlockBufferAndFormatDescriptionForHoistingInStreamParameterSets(const opaqueCMFormatDescription *a1, OpaqueCMBlockBuffer *a2, size_t a3, void *a4)
{
  parameterSetPointers[20] = *MEMORY[0x1E69E9840];
  formatDescriptionOut = 0;
  blockBufferOut = 0;
  bzero(parameterSetPointers, 0xA0uLL);
  bzero(parameterSetSizes, 0xA0uLL);
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  v12 = MediaSubType;
  valuePtr = MediaSubType;
  v58 = MediaSubType == 1667524657 || MediaSubType == 1667790435 || MediaSubType == 1684895096 || MediaSubType == 1685481521 || MediaSubType == 1685481573 || MediaSubType == 1718908520 || MediaSubType == 1718908528 || MediaSubType == 1751479857 || MediaSubType == 1752589105 || MediaSubType == 1836415073 || MediaSubType == 1869117027 || MediaSubType == 1902405681 || MediaSubType == 1902405733 || MediaSubType == 1902407032 || MediaSubType == 1902667126 || MediaSubType == 1902671459 || MediaSubType == 1902998904;
  Dimensions = CMVideoFormatDescriptionGetDimensions(a1);
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v76 = 1271;
LABEL_160:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, 0xFFFFCE5AuLL, "(Fig)", v76, v73, v74, v75, v85);
    OUTLINED_FUNCTION_6_1();
    a2 = 0;
    goto LABEL_161;
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v77, 0xFFFFCE5AuLL, "(Fig)", 0x4F8, v78, v79, v80, v85);
    OUTLINED_FUNCTION_6_1();
    goto LABEL_157;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, 0xFFFFCE5AuLL, "(Fig)", 0x4F9, v82, v83, v84, v85);
    OUTLINED_FUNCTION_6_1();
LABEL_161:
    a3 = 0;
    goto LABEL_162;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v76 = 1274;
    goto LABEL_160;
  }

  v89 = v12;
  v86 = a3;
  *width = Dimensions;
  desc = a1;
  *a3 = 0;
  v88 = a4;
  *a4 = 0;
  DataLength = CMBlockBufferGetDataLength(a2);
  if (!DataLength)
  {
    a3 = 0;
LABEL_100:
    switch(v89)
    {
      case 0x61766333u:
        v48 = 1635148593;
        break;
      case 0x64766865u:
        v48 = 1685481521;
        break;
      case 0x68657631u:
        v48 = 1752589105;
        break;
      case 0x71646865u:
        v48 = 1902405681;
        break;
      case 0x71686576u:
        v48 = 1902671459;
        break;
      default:
        v48 = v89;
        break;
    }

    if (a3)
    {
      v49 = *MEMORY[0x1E695E480];
      Extensions = CMFormatDescriptionGetExtensions(a1);
      MutableCopy = FigCFDictionaryCreateMutableCopy(v49, Extensions);
      Value = CFDictionaryGetValue(MutableCopy, @"SampleDescriptionExtensionAtoms");
      v4 = FigCFDictionaryCreateMutableCopy(v49, Value);
      if (v58)
      {
        v52 = FigVideoFormatDescriptionCreateUpdatedFromHEVCParameterSets(v49, a1, a3, parameterSetPointers, parameterSetSizes, 4, &formatDescriptionOut);
        if (v52)
        {
LABEL_114:
          a1 = v52;
LABEL_157:
          a2 = 0;
LABEL_162:
          v45 = 0;
          goto LABEL_139;
        }
      }

      else
      {
        v52 = CMVideoFormatDescriptionCreateFromH264ParameterSets(v49, a3, parameterSetPointers, parameterSetSizes, 4, &formatDescriptionOut);
        if (v52)
        {
          goto LABEL_114;
        }
      }

      v53 = CMFormatDescriptionGetExtensions(formatDescriptionOut);
      v54 = CFDictionaryGetValue(v53, @"SampleDescriptionExtensionAtoms");
      CFDictionaryApplyFunction(v53, sFigTransferDictionaryValues, MutableCopy);
      CFDictionaryApplyFunction(v54, sFigTransferDictionaryValues, v4);
      CFDictionarySetValue(MutableCopy, @"SampleDescriptionExtensionAtoms", v4);
      CFDictionaryRemoveValue(MutableCopy, @"VerbatimISOSampleEntry");
      CFDictionaryRemoveValue(MutableCopy, @"VerbatimSampleDescription");
      if (v48 == valuePtr)
      {
        a2 = 0;
      }

      else
      {
        a2 = CFNumberCreate(v49, kCFNumberSInt32Type, &valuePtr);
        CFDictionarySetValue(MutableCopy, @"OriginalCodec", a2);
      }

      if (formatDescriptionOut)
      {
        CFRelease(formatDescriptionOut);
        formatDescriptionOut = 0;
      }
    }

    else
    {
      if (v48 == v89)
      {
        a2 = 0;
        v4 = 0;
        MutableCopy = 0;
        goto LABEL_125;
      }

      v49 = *MEMORY[0x1E695E480];
      v55 = CMFormatDescriptionGetExtensions(a1);
      MutableCopy = FigCFDictionaryCreateMutableCopy(v49, v55);
      a2 = CFNumberCreate(v49, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(MutableCopy, @"OriginalCodec", a2);
      v4 = 0;
    }

    v56 = CMVideoFormatDescriptionCreate(v49, v48, width[0], width[1], MutableCopy, &formatDescriptionOut);
    if (v56)
    {
      a1 = v56;
      goto LABEL_162;
    }

LABEL_125:
    v57 = blockBufferOut;
    if (blockBufferOut)
    {
      v57 = CFRetain(blockBufferOut);
    }

    *v88 = v57;
    if (formatDescriptionOut && !CMFormatDescriptionEqual(desc, formatDescriptionOut))
    {
      v45 = 0;
      a1 = 0;
      *v86 = FigFormatDescriptionRetain(formatDescriptionOut);
    }

    else
    {
      v45 = 0;
      a1 = 0;
    }

    goto LABEL_139;
  }

  v31 = DataLength;
  a3 = 0;
  v32 = 0;
  v33 = *MEMORY[0x1E695E480];
  blockAllocator = *MEMORY[0x1E695E488];
  v90 = *MEMORY[0x1E695E480];
  while (1)
  {
    destination = 0;
    v94 = 0;
    if (v32 + 5 > v31)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      v63 = 4294954554;
      v64 = 1289;
LABEL_136:
      appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, v63, "(Fig)", v64, v60, v61, v62, v6);
LABEL_137:
      a1 = appended;
      v45 = 0;
      goto LABEL_138;
    }

    appended = CMBlockBufferCopyDataBytes(a2, v32, 4uLL, &destination);
    if (appended)
    {
      goto LABEL_137;
    }

    v35 = bswap32(destination);
    destination = v35;
    if (v32 + 4 + v35 > v31)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      v63 = 4294954554;
      v64 = 1296;
      goto LABEL_136;
    }

    appended = CMBlockBufferCopyDataBytes(a2, v32 + 4, 1uLL, &v94);
    if (appended)
    {
      goto LABEL_137;
    }

    if (v58)
    {
      v36 = (v94 >> 1) & 0x3F;
      v94 = (v94 >> 1) & 0x3F;
      if ((v36 - 32) >= 3)
      {
        if (v36 == 39)
        {
          v37 = 0;
          v38 = v32 + 4 + destination;
          v93 = 0;
          v39 = v32 + 7;
          while (1)
          {
            appended = CMBlockBufferCopyDataBytes(a2, v39 - 1, 1uLL, &v93);
            if (appended)
            {
              goto LABEL_137;
            }

            v37 += v93;
            if (v93 != 255 || v39++ >= v38)
            {
              if ((v37 - 137) <= 0xA && ((1 << (v37 + 119)) & 0x481) != 0)
              {
                v33 = v90;
                goto LABEL_78;
              }

              v33 = v90;
              break;
            }
          }
        }

LABEL_95:
        if (blockBufferOut)
        {
          appended = CMBlockBufferAppendBufferReference(blockBufferOut, a2, v32, destination + 4, 0);
          if (appended)
          {
            goto LABEL_137;
          }
        }

        goto LABEL_97;
      }
    }

    else
    {
      v94 &= 0x1Fu;
      if (v94 - 7 >= 2)
      {
        goto LABEL_95;
      }
    }

LABEL_78:
    v42 = destination + 4;
    if (v42 <= 6)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      v63 = 4294954554;
      v64 = 1344;
      goto LABEL_136;
    }

    if (!blockBufferOut)
    {
      if (v32)
      {
        appended = CMBlockBufferCreateWithBufferReference(v33, a2, 0, v32, 0, &blockBufferOut);
        if (appended)
        {
          goto LABEL_137;
        }
      }

      else
      {
        appended = CMBlockBufferCreateEmpty(v33, 0, 0, &blockBufferOut);
        if (appended)
        {
          goto LABEL_137;
        }
      }
    }

    if (a3 >= 0x14)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      v63 = 4294954554;
      v64 = 1359;
      goto LABEL_136;
    }

    v43 = destination;
    parameterSetSizes[a3] = destination;
    v44 = malloc_type_malloc(v43, 0x26CE5BA1uLL);
    parameterSetPointers[a3] = v44;
    if (!v44)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      v63 = 4294954510;
      v64 = 1362;
      goto LABEL_136;
    }

    appended = CMBlockBufferCopyDataBytes(a2, v32 + 4, destination, v44);
    if (appended)
    {
      goto LABEL_137;
    }

    v45 = malloc_type_malloc(v42, 0x21758ECBuLL);
    if (!v45)
    {
      break;
    }

    v46 = CMBlockBufferCopyDataBytes(a2, v32, 4uLL, v45);
    if (v46)
    {
      goto LABEL_154;
    }

    memset(v45 + 5, 255, v42 - 6);
    if (v58)
    {
      v45[5] = 1;
      v47 = 76;
    }

    else
    {
      v47 = 12;
    }

    v45[4] = v47;
    v45[v42 - 1] = 0x80;
    appended = CMBlockBufferAppendMemoryBlock(blockBufferOut, v45, v42, blockAllocator, 0, 0, v42, 0);
    if (appended)
    {
      goto LABEL_137;
    }

    ++a3;
LABEL_97:
    v32 += destination + 4;
    if (v32 >= v31)
    {
      goto LABEL_100;
    }
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_1_2();
  v46 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v68, 0xFFFFCE0EuLL, "(Fig)", 0x559, v69, v70, v71, v6);
LABEL_154:
  a1 = v46;
LABEL_138:
  MutableCopy = 0;
  v4 = 0;
  a2 = 0;
LABEL_139:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (a3)
  {
    v65 = parameterSetPointers;
    do
    {
      v66 = *v65++;
      free(v66);
      --a3;
    }

    while (a3);
  }

  free(v45);
  return a1;
}

uint64_t sFigGetDolbyVisionProfileAndCompatibilityIDIfGiven(const opaqueCMFormatDescription *a1, _BYTE *a2, _BYTE *a3)
{
  result = CMFormatDescriptionGetExtension(a1, @"SampleDescriptionExtensionAtoms");
  if (result)
  {
    v6 = result;
    v7 = CFGetTypeID(result);
    if (v7 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    Value = CFDictionaryGetValue(v6, @"dvvC");
    if (Value)
    {
      v9 = Value;
      BytePtr = CFDataGetBytePtr(Value);
      if (CFDataGetLength(v9) <= 8)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v16 = 1513;
        goto LABEL_17;
      }

      if (*BytePtr != 1 || BytePtr[1] != 0)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v16 = 1525;
LABEL_17:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFCE5AuLL, "(Fig)", v16, v13, v14, v15, v19);
        return 0;
      }
    }

    else
    {
      result = CFDictionaryGetValue(v6, @"dvcC");
      if (!result)
      {
        return result;
      }

      v17 = result;
      BytePtr = CFDataGetBytePtr(result);
      if (CFDataGetLength(v17) <= 8)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v16 = 1534;
        goto LABEL_17;
      }

      if ((*BytePtr & 0xFD) != 1 || BytePtr[1] != 0)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v16 = 1546;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      *a2 = BytePtr[2] >> 1;
    }

    if (a3)
    {
      *a3 = BytePtr[4] >> 4;
    }

    return 1;
  }

  return result;
}

uint64_t FigVideoFormatDescriptionConformsToDolbyVisionProfile81(const opaqueCMFormatDescription *a1)
{
  OUTLINED_FUNCTION_4_1(a1);
  result = OUTLINED_FUNCTION_9_0();
  if (v2)
  {
    if (v4 == 8)
    {
      return v3 == 1;
    }
  }

  return result;
}

uint64_t FigVideoFormatDescriptionConformsToDolbyVisionProfile10p0(const opaqueCMFormatDescription *a1)
{
  OUTLINED_FUNCTION_4_1(a1);
  result = OUTLINED_FUNCTION_9_0();
  if (v2)
  {
    if (v4 == 10)
    {
      return v3 == 0;
    }
  }

  return result;
}

uint64_t FigVideoFormatDescriptionConformsToDolbyVisionProfile10p1(const opaqueCMFormatDescription *a1)
{
  OUTLINED_FUNCTION_4_1(a1);
  result = OUTLINED_FUNCTION_9_0();
  if (v2)
  {
    if (v4 == 10)
    {
      return v3 == 1;
    }
  }

  return result;
}

uint64_t FigVideoFormatDescriptionConformsToDolbyVisionProfile10p4(const opaqueCMFormatDescription *a1)
{
  OUTLINED_FUNCTION_4_1(a1);
  result = OUTLINED_FUNCTION_9_0();
  if (v2)
  {
    if (v4 == 10)
    {
      return v3 == 4;
    }
  }

  return result;
}

uint64_t CMVideoFormatDescriptionGetVideoDynamicRange(const opaqueCMFormatDescription *a1)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  if (!a1)
  {
    return 0;
  }

  v10 = MediaSubType;
  if (MediaSubType == 1684108849 || MediaSubType == 1902403958)
  {
    return 6;
  }

  if (MediaSubType == 1667524657 || MediaSubType == 1684895096 || MediaSubType == 1685481521 || MediaSubType == 1685481573 || MediaSubType == 1902405681 || MediaSubType == 1902407032 || MediaSubType == 1902405733)
  {
    v36 = OUTLINED_FUNCTION_7_0(MediaSubType, v3, v4, v5, v6, v7, v8, v9, v51, *v52, *&v52[4], 0, 0);
    if (v55 != 20 || v36 == 0)
    {
      return 5;
    }

    else
    {
      return 10;
    }
  }

  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F30]);
  v20 = FigCFEqual(Extension, @"SMPTE_ST_2084_PQ");
  if (!v20)
  {
    v28 = FigCFEqual(Extension, @"ITU_R_2100_HLG");
    if (!v28)
    {
      return !Extension || FigCFEqual(Extension, @"ITU_R_2020") || FigCFEqual(Extension, @"SMPTE_ST_428_1") || FigCFEqual(Extension, *MEMORY[0x1E6965F50]) || FigCFEqual(Extension, *MEMORY[0x1E6965F68]) || FigCFEqual(Extension, *MEMORY[0x1E6965F80]) || FigCFEqual(Extension, @"IEC_sRGB") != 0;
    }

    v48 = OUTLINED_FUNCTION_7_0(v28, v29, v30, v31, v32, v33, v34, v35, v51, *v52, *&v52[4], 0, 0);
    result = 2;
    if (!v48 || v54 != 4)
    {
      return result;
    }

    if (v57 != 10)
    {
      if (v57 == 8)
      {
        if (FigVideoCodecTypeIsHEVCFlavor(v10))
        {
          return 3;
        }

        else
        {
          return 2;
        }
      }

      return result;
    }

    v49 = v10 == 1902212657 || v10 == 1635135537;
    v50 = 7;
LABEL_92:
    if (v49)
    {
      return v50;
    }

    else
    {
      return result;
    }
  }

  v38 = OUTLINED_FUNCTION_7_0(v20, v21, v22, v23, v24, v25, v26, v27, v51, *v52, *&v52[4], 0, 0);
  result = 4;
  if (!v38 || v53 != 1)
  {
    return result;
  }

  if (v56 == 10)
  {
    v49 = v10 == 1902212657 || v10 == 1635135537;
    v50 = 9;
    goto LABEL_92;
  }

  if (v56 == 8)
  {
    v39 = v10 == 1667790435 || v10 == 1718908520;
    v40 = v39 || v10 == 1718908528;
    v41 = v40 || v10 == 1751479857;
    v42 = v41 || v10 == 1752589105;
    v43 = v42 || v10 == 1836415073;
    v44 = v43 || v10 == 1869117027;
    v45 = v44 || v10 == 1902667126;
    v46 = v45 || v10 == 1902998904;
    if (v46 || v10 == 1902671459)
    {
      return 8;
    }
  }

  return result;
}

size_t CMVideoFormatDescriptionGetPlaintextMediaSubTypeAndEncryptionScheme(const opaqueCMFormatDescription *a1, int *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v10 = 1852796517;
  v64 = 1852796517;
  if (!a1)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v62 = v9;
    v63 = 1685;
    goto LABEL_162;
  }

  CMFormatDescriptionGetMediaType(a1);
  OUTLINED_FUNCTION_5_1();
  if (!v15)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v62 = v9;
    v63 = 1687;
LABEL_162:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "(Fig)", v63, v62, v60, v61, a9);
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  v65 = MediaSubType;
  if ((MediaSubType - 1885430579 > 0x3D || (OUTLINED_FUNCTION_2_1(), v15)) && (MediaSubType - 1902207795 > 0x3D || (OUTLINED_FUNCTION_2_1(), v15)) && (MediaSubType - 1902212657 > 0x34 || ((1 << (MediaSubType - 49)) & 0x14000000000001) == 0) && (MediaSubType - 2053202739 > 0x3D || (OUTLINED_FUNCTION_2_1(), v15)) && (MediaSubType != 1633771875 ? (v15 = MediaSubType == 1667312947) : (v15 = 1), !v15 ? (v16 = MediaSubType == 1667326307) : (v16 = 1), !v16 ? (v17 = MediaSubType == 1667326824) : (v17 = 1), !v17 ? (v18 = MediaSubType == 1667326832) : (v18 = 1), !v18 ? (v19 = MediaSubType == 1667330147) : (v19 = 1), !v19 ? (v20 = MediaSubType == 1667331683) : (v20 = 1), !v20 ? (v21 = MediaSubType == 1667524657) : (v21 = 1), !v21 ? (v22 = MediaSubType == 1667574579) : (v22 = 1), !v22 ? (v23 = MediaSubType == 1667575091) : (v23 = 1), !v23 ? (v24 = MediaSubType == 1667656803) : (v24 = 1), !v24 ? (v25 = MediaSubType == 1667790435) : (v25 = 1), !v25 ? (v26 = MediaSubType == 1668047203) : (v26 = 1), !v26 ? (v27 = MediaSubType == 1668641633) : (v27 = 1), !v27 ? (v28 = MediaSubType == 1685220713) : (v28 = 1), !v28 ? (v29 = MediaSubType == 1700886115) : (v29 = 1), !v29 ? (v30 = MediaSubType == 1701733217) : (v30 = 1), !v30 ? (v31 = MediaSubType == 1701733238) : (v31 = 1), !v31 ? (v32 = MediaSubType == 1869117027) : (v32 = 1), !v32 ? (v33 = MediaSubType == 1882599480) : (v33 = 1), !v33 ? (v34 = MediaSubType == 1885430115) : (v34 = 1), !v34 ? (v35 = MediaSubType == 1885547315) : (v35 = 1), !v35 ? (v36 = MediaSubType == 1885692723) : (v36 = 1), !v36 ? (v37 = MediaSubType == 1886745441) : (v37 = 1), !v37 ? (v38 = MediaSubType == 1902207331) : (v38 = 1), !v38 ? (v39 = MediaSubType == 1902211171) : (v39 = 1), !v39 ? (v40 = MediaSubType == 1902324531) : (v40 = 1), !v40 ? (v41 = MediaSubType == 1902403958) : (v41 = 1), !v41 ? (v42 = MediaSubType == 1902405681) : (v42 = 1), !v42 ? (v43 = MediaSubType == 1902405733) : (v43 = 1), !v43 ? (v44 = MediaSubType == 1902407032) : (v44 = 1), !v44 ? (v45 = MediaSubType == 1902469939) : (v45 = 1), !v45 ? (v46 = MediaSubType == 1902537827) : (v46 = 1), !v46 ? (v47 = MediaSubType == 1902667126) : (v47 = 1), !v47 ? (v48 = MediaSubType == 1902671459) : (v48 = 1), !v48 ? (v49 = MediaSubType == 1902928227) : (v49 = 1), !v49 ? (v50 = MediaSubType == 1902998904) : (v50 = 1), !v50 ? (v51 = MediaSubType == 1903522657) : (v51 = 1), !v51 ? (v52 = MediaSubType == 1903587385) : (v52 = 1), !v52 ? (v53 = MediaSubType == 2053202275) : (v53 = 1), !v53 ? (v54 = MediaSubType == 2054517601) : (v54 = 1), !v54 ? (v55 = MediaSubType == 2053319475) : (v55 = 1), !v55 ? (v56 = MediaSubType == 2053464883) : (v56 = 1), !v56 ? (v57 = MediaSubType == 2053923171) : (v57 = 1), !v57))
  {
    if (MediaSubType == 2053207651)
    {
      v65 = 1635148593;
      v10 = 2053467747;
    }
  }

  else
  {
    result = FigBridge_GetPlaintextMediaSubTypeAndEncryptionSchemeFromProtectedCodecType(MediaSubType, &v65, &v64);
    if (result)
    {
      return result;
    }

    if (v64 == 1667392306)
    {
      v10 = 1667392371;
    }

    else
    {
      v10 = v64;
    }
  }

  if (a2)
  {
    *a2 = v65;
  }

  result = 0;
  if (a3)
  {
    *a3 = v10;
  }

  return result;
}

size_t CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x3E2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x3DE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x3DD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x3DC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x3DB, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x3D8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x41C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x418, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x417, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x416, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x415, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x412, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void figMobileAsset_QueryMostRecentAsset(const void *a1, int a2, int a3, int a4, const __CFDictionary *a5, const void *a6, const void *a7)
{
  if (a2 <= 1)
  {
    v31 = v7;
    v32 = v8;
    v16 = objc_autoreleasePoolPush();
    v17 = [[sMAAssetQueryClass alloc] initWithType:a1];
    if (a5)
    {
      CFDictionaryApplyFunction(a5, figMobileAsset_AddFilterToQuery, v17);
    }

    [v17 setDoNotBlockBeforeFirstUnlock:1];
    if (a4)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    [v17 returnTypes:v18];
    if (a1)
    {
      CFRetain(a1);
    }

    if (a5)
    {
      CFRetain(a5);
    }

    if (a6)
    {
      CFRetain(a6);
    }

    if (a7)
    {
      CFRetain(a7);
    }

    OUTLINED_FUNCTION_3_1();
    v20 = 3221225472;
    v21 = __figMobileAsset_QueryMostRecentAsset_block_invoke;
    v22 = &unk_1E749DAE0;
    v30 = a4;
    v23 = v17;
    v24 = a1;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a3;
    v29 = a2;
    [v17 queryMetaData:v19];
    objc_autoreleasePoolPop(v16);
  }
}

uint64_t CMNotificationCenterAddListener(__CFNotificationCenter *a1, const void *a2, void (__cdecl *a3)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef), const __CFString *a4, unint64_t a5)
{
  if (!a1)
  {
    return 4294954575;
  }

  if (!a3)
  {
    return 4294954576;
  }

  if (!a2)
  {
    return 4294954573;
  }

  if (!(a4 | a5))
  {
    return 4294954571;
  }

  CFNotificationCenterAddObserver(a1, a2, a3, a4, a5, 0);
  return 0;
}

uint64_t CMNotificationCenterRemoveListener(__CFNotificationCenter *a1, const void *a2, int a3, CFNotificationName name, void *object)
{
  if (!a1)
  {
    return 4294954575;
  }

  if (!a2)
  {
    return 4294954573;
  }

  CFNotificationCenterRemoveObserver(a1, a2, name, object);
  return 0;
}

size_t CMNotificationCenterPostNotification(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef cf, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (!a1)
  {
    return 4294954575;
  }

  if (!a2)
  {
    return 4294954574;
  }

  if (!a3)
  {
    return 4294954572;
  }

  if (cf && (v10 = CFGetTypeID(cf), v10 != CFDictionaryGetTypeID()))
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE4CuLL, "(Fig)", 0x3C2, v9, v24, v25, a9);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_10();
    FigNotificationCenterSupportWillPostNotification(v11, v12, v13);
    v14 = OUTLINED_FUNCTION_0_10();
    CFNotificationCenterPostNotification(v14, v15, v16, v17, v18);
    v19 = OUTLINED_FUNCTION_0_10();
    FigNotificationCenterSupportDidPostNotification(v19, v20, v21);
    return 0;
  }
}

size_t FigNotificationCenterAddWeakListener_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE4AuLL, "(Fig)", 0x2C5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigNotificationCenterAddWeakListener_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE4AuLL, "(Fig)", 0x2C2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigNotificationCenterAddWeakListener_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE4AuLL, "(Fig)", 0x2BB, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigNotificationCenterRemoveWeakListener_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE4AuLL, "(Fig)", 0x311, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigDispatchAsyncPostNotification_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4AuLL, "(Fig)", 0x156, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigDispatchAsyncPostNotification_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4BuLL, "(Fig)", 0x153, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigDispatchAsyncPostNotification_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4FuLL, "(Fig)", 0x152, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

void sBufTrackOtherToMakeDataReady(size_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sBufReleaseMakeDataReady(a1);
  if (a2)
  {
    while (*(a2 + 40) == 4)
    {
      a2 = *(a2 + 48);
    }

    v6 = *(a2 + 28);
    if (!(sBufTransitionDataReady(a1, v6, *(a2 + 32), v3) | v6))
    {
      *(a1 + 40) = 4;
      *(a1 + 48) = CFRetain(a2);
    }
  }
}

uint64_t sBufTransitionDataReady(size_t a1, unsigned int a2, int a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  if (FigAtomicCompareAndSwap32(0, a2, (a1 + 28)))
  {
    if (a3)
    {
      v8 = 0;
    }

    else
    {
      v8 = a2 == 2;
    }

    if (v8)
    {
      a3 = -16750;
    }

    *(a1 + 32) = a3;
    sBufReleaseMakeDataReady(a1);
    figSampleBufferCheckDataSize(a1);
    if (a4)
    {
      if (a2 == 1)
      {
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification(DefaultLocalCenter, @"FigSampleBufferDataBecameReady", a1, 0, 0, v10, v11, v12, v24);
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetInt32(Mutable, @"OSStatus", a3, v15, v16, v17, v18, v19);
        v20 = CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification(v20, @"CMSampleBufferDataFailed", a1, Mutable, 0, v21, v22, v23, v24);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }

    return 0;
  }

  else if (*(a1 + 28) == 1)
  {
    return 4294954564;
  }

  else
  {
    return 4294950546;
  }
}

void sBufPokeTrackedSampleBufferForDataReadyTransition(size_t a1)
{
  if (*(a1 + 40) == 4)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = CFRetain(v2);
      if (v3)
      {
        v4 = v3;
        sBufTransitionDataReady(a1, *(v3 + 7), *(v3 + 8), 1);

        CFRelease(v4);
      }
    }
  }
}

OSStatus CMSampleBufferTrackDataReadiness(CMSampleBufferRef sbuf, CMSampleBufferRef sampleBufferToTrack)
{
  if (!sbuf)
  {
    v5 = qword_1EAF1CCE0;
    v6 = v4;
    v7 = 4294954565;
    v8 = 4418;
    goto LABEL_5;
  }

  if (*(sbuf + 25) || sampleBufferToTrack && *(sampleBufferToTrack + 25))
  {
    v5 = qword_1EAF1CCE0;
    v6 = v4;
    v7 = 4294954552;
    v8 = 4423;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< SampleBuffer >>>>", v8, v6, v2, v3, v12);
  }

  v10 = *(sbuf + 7);
  if (v10 == 2)
  {
    v5 = qword_1EAF1CCE0;
    v7 = *(sbuf + 8);
    v6 = v4;
    v8 = 4434;
    goto LABEL_5;
  }

  if (v10 == 1)
  {
    v5 = qword_1EAF1CCE0;
    v6 = v4;
    v7 = 4294954564;
    v8 = 4431;
    goto LABEL_5;
  }

  if (sbuf != sampleBufferToTrack)
  {
    sBufTrackOtherToMakeDataReady(sbuf, sampleBufferToTrack, 1);
  }

  return 0;
}

OSStatus CMSampleBufferCopyPCMDataIntoAudioBufferList(CMSampleBufferRef sbuf, int32_t frameOffset, int32_t numFrames, AudioBufferList *bufferList)
{
  if (!sbuf)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954565;
    v29 = 5954;
LABEL_35:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v28, "<<<< SampleBuffer >>>>", v29, v25, v26, v27, v36);
  }

  if (!bufferList)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954565;
    v29 = 5955;
    goto LABEL_35;
  }

  if (CMFormatDescriptionGetMediaType(*(sbuf + 10)) != 1936684398)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954555;
    v29 = 5956;
    goto LABEL_35;
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(sbuf + 10));
  if (!StreamBasicDescription)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954586;
    v29 = 5959;
    goto LABEL_35;
  }

  v9 = StreamBasicDescription;
  if (StreamBasicDescription->mFormatID != 1819304813)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954554;
    v29 = 5960;
    goto LABEL_35;
  }

  v10 = *(sbuf + 11);
  if (v10 <= frameOffset)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954562;
    v29 = 5962;
    goto LABEL_35;
  }

  if (!numFrames)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954565;
    v29 = 5963;
    goto LABEL_35;
  }

  if (v10 < numFrames + frameOffset)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954562;
    v29 = 5964;
    goto LABEL_35;
  }

  v11 = *(sbuf + 2);
  if (!v11)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954563;
    v29 = 5966;
    goto LABEL_35;
  }

  if (*(sbuf + 7) != 1)
  {
    OUTLINED_FUNCTION_0_11();
    v28 = 4294954563;
    v29 = 5967;
    goto LABEL_35;
  }

  mFormatFlags = v9->mFormatFlags;
  mBytesPerFrame = v9->mBytesPerFrame;
  mChannelsPerFrame = v9->mChannelsPerFrame;
  v15 = (mBytesPerFrame * numFrames);
  LODWORD(v16) = bufferList->mNumberBuffers;
  if ((mFormatFlags & 0x20) == 0)
  {
    if (v16 != 1)
    {
      goto LABEL_48;
    }

    goto LABEL_17;
  }

  if (v16 != mChannelsPerFrame)
  {
LABEL_48:
    OUTLINED_FUNCTION_0_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x1759, v31, v32, v33, v34);
    return 0;
  }

  if (mChannelsPerFrame)
  {
    LODWORD(v16) = v9->mChannelsPerFrame;
    mChannelsPerFrame = 1;
LABEL_17:
    v16 = v16;
    p_mData = &bufferList->mBuffers[0].mData;
    do
    {
      if (*(p_mData - 2) != mChannelsPerFrame)
      {
        OUTLINED_FUNCTION_0_11();
        v28 = 4294954565;
        v29 = 5980;
        goto LABEL_35;
      }

      if (*(p_mData - 1) != v15)
      {
        OUTLINED_FUNCTION_0_11();
        v28 = 4294954565;
        v29 = 5981;
        goto LABEL_35;
      }

      if (!*p_mData)
      {
        OUTLINED_FUNCTION_0_11();
        v28 = 4294954565;
        v29 = 5982;
        goto LABEL_35;
      }

      p_mData += 2;
      --v16;
    }

    while (v16);
    if ((mFormatFlags & 0x20) != 0)
    {
      goto LABEL_26;
    }

    mData = bufferList->mBuffers[0].mData;

    return CMBlockBufferCopyDataBytes(v11, (mBytesPerFrame * frameOffset), v15, mData);
  }

LABEL_26:
  if (!v9->mChannelsPerFrame)
  {
    return 0;
  }

  v20 = 0;
  v21 = (mBytesPerFrame * frameOffset);
  v22 = &bufferList->mBuffers[0].mData;
  v23 = v10 * mBytesPerFrame;
  while (1)
  {
    result = CMBlockBufferCopyDataBytes(*(sbuf + 2), v21, v15, *v22);
    if (result)
    {
      break;
    }

    ++v20;
    v22 += 2;
    v21 += v23;
    if (v20 >= v9->mChannelsPerFrame)
    {
      return 0;
    }
  }

  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x960, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3CuLL, "<<<< SampleBuffer >>>>", 0x961, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x9DC, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x977, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x962, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x95F, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_7(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3EuLL, "<<<< SampleBuffer >>>>", 0x95E, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_8(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x95D, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figSampleBufferCreateForImageBufferCallbackOrHandler_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3BuLL, "<<<< SampleBuffer >>>>", 0xA62, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figSampleBufferCreateForImageBufferCallbackOrHandler_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xA63, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figSampleBufferCreateForImageBufferCallbackOrHandler_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xA61, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figSampleBufferCreateForImageBufferCallbackOrHandler_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xA60, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t figSampleBufferCreateForImageBufferCallbackOrHandler_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xA5F, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateForCaptionGroup_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB0F, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateForCaptionGroup_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB10, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateForCaptionGroup_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB11, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateForCaptionGroup_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB0E, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t sBufCreate_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0x7F9, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t sBufCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0x7F5, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t sBufCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0x7F1, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateForTaggedBufferGroup_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB44, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateForTaggedBufferGroup_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB45, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateForTaggedBufferGroup_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB43, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateForTaggedBufferGroup_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB78, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateForTaggedBufferGroup_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3BuLL, "<<<< SampleBuffer >>>>", 0xB7A, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateForTaggedBufferGroup_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB7E, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateForTaggedBufferGroup_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB79, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateForTaggedBufferGroup_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xB77, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateCopyWithNewTiming_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3EuLL, "<<<< SampleBuffer >>>>", 0xC84, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateCopyWithNewSizesAndDataBuffer_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE39uLL, "<<<< SampleBuffer >>>>", 0xCD0, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigSampleBufferCreateCopyWithNewSizesAndDataBuffer_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3EuLL, "<<<< SampleBuffer >>>>", 0xCD3, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCopySampleBufferForRange_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0xF87, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCopySampleBufferForRange_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0xF76, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferSetDataReadyWithNewSize_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3CuLL, "<<<< SampleBuffer >>>>", 0x1057, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferSetDataReadyWithNewSize_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3CuLL, "<<<< SampleBuffer >>>>", 0x1058, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferSetDataReadyWithNewSize_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x105B, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferSetDataReadyWithNewSize_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x105A, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferSetDataReadyWithNewSize_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x1056, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferSetDataFailed_cold_1(size_t a1, int a2, int *a3)
{
  result = sBufTransitionDataReady(a1, 2u, a2, 1);
  if (result == -16750)
  {
    v9 = qword_1EAF1CCE0;
    v10 = v3;
    v8 = -16750;
    v11 = 4294950546;
    v12 = 4269;
    goto LABEL_5;
  }

  v8 = result;
  if (result == -12732)
  {
    v9 = qword_1EAF1CCE0;
    v10 = v3;
    v8 = -12732;
    v11 = 4294954564;
    v12 = 4265;
LABEL_5:
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<<< SampleBuffer >>>>", v12, v10, v6, v7, v13);
  }

  *a3 = v8;
  return result;
}

uint64_t CMSampleBufferInvalidate_cold_1(size_t a1, _BYTE *a2)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    (*(v4 + 16))(v4, a1);
  }

  *a2 = 1;

  return sBufTransitionDataReady(a1, 2u, -16751, 0);
}

char *CMSampleBufferSetDataBufferFromAudioBufferList_cold_1(CMBlockBufferRef *a1, char **dataPointerOut, _DWORD *a3, size_t a4)
{
  result = CMBlockBufferGetDataPointer(*a1, 0, 0, 0, dataPointerOut);
  if (*a3)
  {
    v8 = 0;
    result = *dataPointerOut;
    v9 = 4;
    do
    {
      memcpy(result, *&a3[v9], a4);
      result = &(*dataPointerOut)[a4];
      *dataPointerOut = result;
      ++v8;
      v9 += 4;
    }

    while (v8 < *a3);
  }

  return result;
}

size_t FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0x1877, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateReadyForCVDataBuffer_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x18C3, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateReadyForCVDataBuffer_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE39uLL, "<<<< SampleBuffer >>>>", 0x18CD, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateReadyForCVDataBuffer_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x18C8, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateReadyForCVDataBuffer_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x18C5, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateReadyForCVDataBuffer_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x18C4, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateReadyForCVDataBuffer_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x18C2, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMSampleBufferCreateReadyForCVDataBuffer_cold_7(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x18C1, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t HandleEndpointStreamRemoteMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v51 = 0;
  v50 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v51);
  if (OpCode)
  {
    return OpCode;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  *&v62 = 0;
  v8 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &v62, &v50);
  if (!v8)
  {
    if (v62)
    {
      v9 = CFGetTypeID(v62);
      if (v9 == FigEndpointStreamGetTypeID(v9, v10))
      {
        v11 = v62;
        goto LABEL_6;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, 0xFFFFBE88uLL, "<< FigEndpointStreamXPCServer >>", 0xE9, v47, v48, v49, v50);
  }

  v23 = v8;
  if (v62)
  {
    CFRelease(v62);
  }

  if (!v23)
  {
    v11 = 0;
LABEL_6:
    if (v51 == 778268793)
    {
      CMTime = FigXPCHandleStdCopyPropertyMessage(v11, a2, a3);
      goto LABEL_35;
    }

    if (v51 == 779314548)
    {
      CMTime = FigXPCHandleStdSetPropertyMessage(v11, a2);
      goto LABEL_35;
    }

    if (v51 != 1668572772)
    {
      switch(v51)
      {
        case 1937072484:
          *&v62 = 0;
          FigEndpointStreamGetCMBaseObject();
          v28 = v27;
          v29 = *(*(CMBaseObjectGetVTable(v27) + 8) + 48);
          if (!v29)
          {
            goto LABEL_44;
          }

          v16 = v29(v28, @"SupportedAudioFormatDescriptions", *MEMORY[0x1E695E480], &v62);
          v17 = v62;
          if (!v16)
          {
            v18 = FigXPCMessageSetFigEndpointStreamAudioFormatDescriptionArray(a3, "FormatDescriptionArray", v62);
LABEL_32:
            v23 = v18;
            v17 = v62;
            if (!v62)
            {
              goto LABEL_66;
            }

LABEL_33:
            v30 = v17;
LABEL_55:
            CFRelease(v30);
            goto LABEL_66;
          }

          break;
        case 1718383987:
          *&v62 = 0;
          v20 = FigXPCMessageCopyCFDictionary(a2, "Options", &v62);
          if (!v20)
          {
            v24 = xpc_dictionary_get_uint64(a2, "FlushFlags");
            v25 = v62;
            v26 = *(*(CMBaseObjectGetVTable(v11) + 16) + 24);
            if (!v26)
            {
              goto LABEL_53;
            }

            v20 = v26(v11, v24, v25);
          }

          goto LABEL_48;
        case 1886611044:
          LOBYTE(v60) = 0;
          *&v62 = 0;
          v20 = FigXPCMessageCopyFigEndpointStreamAudioFormatDescription(*MEMORY[0x1E695E480], a2, "FormatDescription", &v62);
          if (v20)
          {
            goto LABEL_48;
          }

          if (*(*(CMBaseObjectGetVTable(v11) + 24) + 32))
          {
            v40 = OUTLINED_FUNCTION_2_3();
            v23 = v41(v40);
            if (!v23)
            {
              xpc_dictionary_set_BOOL(a3, "IsPassthroughSupported", v60 != 0);
            }

LABEL_54:
            v30 = v62;
            if (!v62)
            {
              goto LABEL_66;
            }

            goto LABEL_55;
          }

LABEL_53:
          v23 = 4294954514;
          goto LABEL_54;
        case 1918985828:
          *&v62 = 0;
          FigEndpointStreamGetCMBaseObject();
          v14 = v13;
          v15 = *(*(CMBaseObjectGetVTable(v13) + 8) + 48);
          if (!v15)
          {
            goto LABEL_44;
          }

          v16 = v15(v14, @"RichestAudioFormatDescription", *MEMORY[0x1E695E480], &v62);
          v17 = v62;
          if (!v16)
          {
            v18 = FigXPCMessageSetFigEndpointStreamAudioFormatDescription(a3, "RichestFormatDescription", v62);
            goto LABEL_32;
          }

          break;
        case 1920169325:
          v19 = v50;
          *&v62 = 0;
          v20 = FigXPCMessageCopyCFDictionary(a2, "Options", &v62);
          if (!v20)
          {
            CreateCompletionCallbackParametersFromMessageAndConnection(a2, a1);
            OUTLINED_FUNCTION_1_4();
            if (*(*(CMBaseObjectGetVTable(v11) + 16) + 16))
            {
              v21 = OUTLINED_FUNCTION_2_3();
              v23 = v22(v21);
              if (!v23)
              {
                *v19 = 1;
              }

              goto LABEL_54;
            }

            goto LABEL_53;
          }

LABEL_48:
          v23 = v20;
          goto LABEL_54;
        case 1936875892:
          v31 = v50;
          v58 = *&kCMTimeInvalid.value;
          v59 = 0;
          v56 = *&kCMTimeInvalid.value;
          v57 = 0;
          v32 = xpc_dictionary_get_double(a2, "Rate");
          CMTime = FigXPCMessageGetCMTime(a2, "SampleTime", &v58);
          if (CMTime)
          {
            goto LABEL_35;
          }

          CMTime = FigXPCMessageGetCMTime(a2, "HostTime", &v56);
          if (CMTime)
          {
            goto LABEL_35;
          }

          CompletionCallbackParametersFromMessageAndConnection = CreateCompletionCallbackParametersFromMessageAndConnection(a2, a1);
          *v31 = 0;
          if (CompletionCallbackParametersFromMessageAndConnection)
          {
            v34 = SetRateAndAnchorTimeCallback;
          }

          else
          {
            v34 = 0;
          }

          v54 = v58;
          v55 = v59;
          v52 = v56;
          v53 = v57;
          v35 = *(CMBaseObjectGetVTable(v11) + 24);
          if (v35)
          {
            v36 = *(v35 + 16);
            if (v36)
            {
              v62 = v54;
              v63 = v55;
              v60 = v52;
              v61 = v53;
              CMTime = v36(v11, &v62, &v60, v34, CompletionCallbackParametersFromMessageAndConnection, v32);
              goto LABEL_35;
            }
          }

LABEL_44:
          v23 = 4294954514;
          goto LABEL_66;
        case 1936945252:
          v37 = v50;
          *&v62 = 0;
          v20 = FigXPCMessageCopyCFDictionary(a2, "Options", &v62);
          if (v20)
          {
            goto LABEL_48;
          }

          CreateCompletionCallbackParametersFromMessageAndConnection(a2, a1);
          *v37 = 0;
          OUTLINED_FUNCTION_1_4();
          if (*(*(CMBaseObjectGetVTable(v11) + 16) + 8))
          {
            v38 = OUTLINED_FUNCTION_2_3();
            v20 = v39(v38);
            goto LABEL_48;
          }

          goto LABEL_53;
        case 1685024621:
          CMTime = FigXPCServerDisassociateObjectWithConnection(a1, uint64);
LABEL_35:
          v23 = CMTime;
          goto LABEL_66;
        default:
          v23 = 4294950536;
LABEL_66:
          if (v11)
          {
            CFRelease(v11);
          }

          return v23;
      }

      v23 = v16;
      if (!v17)
      {
        goto LABEL_66;
      }

      goto LABEL_33;
    }

    *&v62 = 0;
    *&v60 = 0;
    v42 = FigXPCMessageCopyFigEndpointStreamAudioFormatDescription(*MEMORY[0x1E695E480], a2, "FormatDescription", &v62);
    if (!v42)
    {
      if (!*(*(CMBaseObjectGetVTable(v11) + 24) + 24))
      {
        v23 = 4294954514;
LABEL_63:
        if (v62)
        {
          CFRelease(v62);
        }

        v30 = v60;
        if (!v60)
        {
          goto LABEL_66;
        }

        goto LABEL_55;
      }

      v43 = OUTLINED_FUNCTION_2_3();
      v42 = v44(v43);
      if (!v42)
      {
        v42 = FigXPCMessageSetFigEndpointStreamAudioFormatDescription(a3, "FormatDescription", v60);
      }
    }

    v23 = v42;
    goto LABEL_63;
  }

  return v23;
}

void SuspendResumeCompletionCallback(uint64_t a1, int a2, uint64_t a3)
{
  xdict = 0;
  if (a3 && !FigXPCCreateBasicMessage(0x63616C62u, *(a3 + 8), &xdict))
  {
    xpc_dictionary_set_uint64(xdict, "CompletionID", *a3);
    xpc_dictionary_set_int64(xdict, "CompletionStatus", a2);
    xpc_connection_send_message(*(a3 + 16), xdict);
  }

  DestroyCompletionCallbackParameters(a3);
  FigXPCRelease(xdict);
}

void SetRateAndAnchorTimeCallback(double a1, uint64_t a2, int a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  xdict = 0;
  if (a6 && !FigXPCCreateBasicMessage(0x63616C62u, *(a6 + 8), &xdict))
  {
    xpc_dictionary_set_uint64(xdict, "CompletionID", *a6);
    xpc_dictionary_set_int64(xdict, "CompletionStatus", a3);
    xpc_dictionary_set_double(xdict, "Rate", a1);
    v11 = *a4;
    v12 = *(a4 + 2);
    FigXPCMessageSetCMTime(xdict, "SampleTime", &v11);
    v11 = *a5;
    v12 = *(a5 + 2);
    FigXPCMessageSetCMTime(xdict, "HostTime", &v11);
    xpc_connection_send_message(*(a6 + 16), xdict);
  }

  DestroyCompletionCallbackParameters(a6);
  FigXPCRelease(xdict);
}

size_t FigXPCEndpointStreamServerAssociateNeighborFigEndpointStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE88uLL, "<< FigEndpointStreamXPCServer >>", 0x2D3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CreateEndpointStreamServerState_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE87uLL, "<< FigEndpointStreamXPCServer >>", 0xD6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCEndpointStreamServerAssociateCopiedNeighborFigEndpointStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE88uLL, "<< FigEndpointStreamXPCServer >>", 0x2E9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCEndpointStreamServerAssociateCopiedEndpointStreamWithNeighborProcessByPID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE88uLL, "<< FigEndpointStreamXPCServer >>", 0x2FF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCEndpointStreamServerRetainEndpointStreamForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<< FigEndpointStreamXPCServer >>", 0x316, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CreateCompletionCallbackParametersFromMessageAndConnection_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBE87uLL, "<< FigEndpointStreamXPCServer >>", 0x107, v10, v11, v12, a9);
}

const __CFURL *FigCopyRedactedURLFromURL(const __CFURL *a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    if (fur_ensureLoggingInitialized_sOnceToken != -1)
    {
      dispatch_once(&fur_ensureLoggingInitialized_sOnceToken, &__block_literal_global_9);
    }

    v4 = objc_autoreleasePoolPush();
    if (a2)
    {
      v5 = CFURLGetString(v2);
      if (!v5)
      {
        v2 = 0;
        goto LABEL_10;
      }

      v6 = CFRetain(v5);
    }

    else
    {
      v6 = fur_redactURL(v2);
    }

    v2 = v6;
LABEL_10:
    objc_autoreleasePoolPop(v4);
  }

  return v2;
}

__CFString *FigCopyRedactedURLFromString(__CFString *a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    if (fur_ensureLoggingInitialized_sOnceToken != -1)
    {
      dispatch_once(&fur_ensureLoggingInitialized_sOnceToken, &__block_literal_global_9);
    }

    v4 = objc_autoreleasePoolPush();
    if (a2)
    {
      v2 = CFRetain(v2);
    }

    else
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v2];
      v6 = v5;
      if (v5)
      {
        v2 = fur_redactURL(v5);
      }

      else
      {
        v2 = @"<redacted (not a URL)>";
      }
    }

    objc_autoreleasePoolPop(v4);
  }

  return v2;
}

void FigGeometryPointMakeFromDictionary(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_0_14(a1);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_2_4(v3);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryGetValueIfPresent(v2, @"x", &value))
      {
        if (CFDictionaryGetValueIfPresent(v2, @"y", &cf))
        {
          if (value)
          {
            v5 = CFGetTypeID(value);
            if (v5 == CFDictionaryGetTypeID())
            {
              if (cf)
              {
                v6 = CFGetTypeID(cf);
                if (v6 == CFDictionaryGetTypeID())
                {
                  v7 = FigGeometryDimensionMakeFromDictionary(value);
                  v15 = OUTLINED_FUNCTION_1_5(v7, v8, v9, v10, v11, v12, v13, v14, cf);
                  *v1 = v6;
                  v1[1] = v4;
                  v1[2] = v15;
                  v1[3] = v16;
                }
              }
            }
          }
        }
      }
    }
  }
}

void FigGeometrySizeMakeFromDictionary(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_0_14(a1);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_2_4(v3);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryGetValueIfPresent(v2, @"width", &value))
      {
        if (CFDictionaryGetValueIfPresent(v2, @"height", &cf))
        {
          if (value)
          {
            v5 = CFGetTypeID(value);
            if (v5 == CFDictionaryGetTypeID())
            {
              if (cf)
              {
                v6 = CFGetTypeID(cf);
                if (v6 == CFDictionaryGetTypeID())
                {
                  v7 = FigGeometryDimensionMakeFromDictionary(value);
                  v15 = OUTLINED_FUNCTION_1_5(v7, v8, v9, v10, v11, v12, v13, v14, cf);
                  *v1 = v6;
                  v1[1] = v4;
                  v1[2] = v15;
                  v1[3] = v16;
                }
              }
            }
          }
        }
      }
    }
  }
}

void FigGeometryVectorMakeFromDictionary(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_0_14(a1);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_2_4(v3);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryGetValueIfPresent(v2, @"dx", &value))
      {
        if (CFDictionaryGetValueIfPresent(v2, @"dy", &cf))
        {
          if (value)
          {
            v5 = CFGetTypeID(value);
            if (v5 == CFDictionaryGetTypeID())
            {
              if (cf)
              {
                v6 = CFGetTypeID(cf);
                if (v6 == CFDictionaryGetTypeID())
                {
                  v7 = FigGeometryDimensionMakeFromDictionary(value);
                  v15 = OUTLINED_FUNCTION_1_5(v7, v8, v9, v10, v11, v12, v13, v14, cf);
                  *v1 = v6;
                  v1[1] = v4;
                  v1[2] = v15;
                  v1[3] = v16;
                }
              }
            }
          }
        }
      }
    }
  }
}

double FigGeometryRectMakeFromDictionary@<D0>(const void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = 0.0;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v13 = 0;
  value = 0;
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_2_4(a1);
    if (v5 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryGetValueIfPresent(v3, @"origin", &value))
      {
        if (CFDictionaryGetValueIfPresent(v3, @"size", &v13))
        {
          if (value)
          {
            v6 = CFGetTypeID(value);
            if (v6 == CFDictionaryGetTypeID())
            {
              if (v13)
              {
                v7 = CFGetTypeID(v13);
                if (v7 == CFDictionaryGetTypeID())
                {
                  FigGeometryPointMakeFromDictionary(v12);
                  FigGeometrySizeMakeFromDictionary(v11);
                  result = *v12;
                  v8 = v12[1];
                  v9 = v11[0];
                  v10 = v11[1];
                  *v2 = v12[0];
                  v2[1] = v8;
                  v2[2] = v9;
                  v2[3] = v10;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

size_t FigXPCMessageSetFigEndpointStreamAudioFormatDescription(void *a1, const char *a2, xpc_object_t a3)
{
  value = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_0_15();
    v14 = 68;
LABEL_9:
    v5 = FigSignalErrorAtGM(v7, v8, v9, v10, v14, v11, v12, v13, v15);
    a3 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_0_15();
    v14 = 69;
    goto LABEL_9;
  }

  if (a3)
  {
    v5 = _FigEndpointStreamAudioFormatDescriptionCopyXPCObject(a3, &value);
    a3 = value;
    if (!v5)
    {
      xpc_dictionary_set_value(a1, a2, value);
      a3 = value;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_6:
  FigXPCRelease(a3);
  return v5;
}

size_t FigXPCMessageSetFigEndpointStreamAudioFormatDescriptionArray(void *a1, const char *a2, const __CFArray *a3)
{
  value = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_0_15();
    v24 = 109;
LABEL_13:
    v15 = FigSignalErrorAtGM(v17, v18, v19, v20, v24, v21, v22, v23, v25);
LABEL_15:
    empty = 0;
    goto LABEL_10;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_0_15();
    v24 = 110;
    goto LABEL_13;
  }

  if (!a3)
  {
    v15 = 0;
    goto LABEL_15;
  }

  empty = xpc_array_create_empty();
  if (!empty)
  {
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBC7EuLL, "(Fig)", 0x72, v3, v7, v8, v25);
LABEL_17:
    v15 = v14;
    goto LABEL_10;
  }

  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    v11 = Count;
    v12 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v12);
      v14 = _FigEndpointStreamAudioFormatDescriptionCopyXPCObject(ValueAtIndex, &value);
      if (v14)
      {
        goto LABEL_17;
      }

      xpc_array_append_value(empty, value);
      xpc_release(value);
    }

    while (v11 != ++v12);
  }

  xpc_dictionary_set_value(a1, a2, empty);
  v15 = 0;
LABEL_10:
  FigXPCRelease(empty);
  return v15;
}

size_t _FigEndpointStreamAudioFormatDescriptionCopyXPCObject_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBC7EuLL, "(Fig)", 0x27, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t _FigEndpointStreamAudioFormatDescriptionCopyXPCObject_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x21, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t _FigEndpointStreamAudioFormatDescriptionCopyXPCObject_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x20, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescription_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x59, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescription_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x58, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescription_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x57, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBC7DuLL, "(Fig)", 0x34, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBC7CuLL, "(Fig)", 0x35, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x33, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x32, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBC7DuLL, "(Fig)", 0x94, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBC7EuLL, "(Fig)", 0x99, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x90, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x8F, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x8E, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayClientRoutingRegistryRegisterClientWithRemoteID(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  v4 = 4294949576;
  if (a1 && a2 && a3)
  {
    FigSimpleMutexLock(*(a1 + 32));
    Value = CFDictionaryGetValue(*(a1 + 24), a3);
    v17 = Value;
    if (Value)
    {
      Value = CFRetain(Value);
    }

    if (dword_1EAF1CD28)
    {
      v18 = OUTLINED_FUNCTION_4_3(Value, v10, v11, v12, v13, v14, v15, v16, v90, v91, v92, v93, SBYTE2(v93), SBYTE3(v93), SHIDWORD(v93));
      v19 = BYTE4(v93);
      if (os_log_type_enabled(v18, BYTE3(v93)))
      {
        v20 = HIDWORD(v93);
      }

      else
      {
        v20 = HIDWORD(v93) & 0xFFFFFFFE;
      }

      if (v20)
      {
        FigCFDictionaryGetCount(v17);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_6_3();
        _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, v18, BYTE3(v93), v26);
        v19 = BYTE4(v93);
      }

      OUTLINED_FUNCTION_1_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v27, v28, v29, v30, v31, v19);
    }

    if (v17)
    {
      if (CFDictionaryContainsKey(v17, a2))
      {
        v4 = 0;
        goto LABEL_39;
      }

      CFDictionaryAddValue(v17, a2, a4);
    }

    else
    {
      v32 = OUTLINED_FUNCTION_11();
      Mutable = CFDictionaryCreateMutable(v32, v33, 0, 0);
      if (!Mutable)
      {
        FigSimpleMutexUnlock(*(a1 + 32));
        return 4294949575;
      }

      v17 = Mutable;
      CFDictionarySetValue(Mutable, a2, a4);
      CFDictionarySetValue(*(a1 + 24), a3, v17);
    }

    v35 = OUTLINED_FUNCTION_11();
    v39 = CFDictionaryCreateMutable(v35, v36, v37, v38);
    if (v39)
    {
      v40 = v39;
      CFDictionarySetValue(v39, @"RoutingContextUUID", a3);
      if (dword_1EAF1CD28)
      {
        v49 = OUTLINED_FUNCTION_4_3(v41, v42, v43, v44, v45, v46, v47, v48, v90, v91, v92, v93, SBYTE2(v93), SBYTE3(v93), SHIDWORD(v93));
        v50 = BYTE4(v93);
        if (os_log_type_enabled(v49, BYTE3(v93)))
        {
          v51 = HIDWORD(v93);
        }

        else
        {
          v51 = HIDWORD(v93) & 0xFFFFFFFE;
        }

        if (v51)
        {
          OUTLINED_FUNCTION_8_1();
          OUTLINED_FUNCTION_2_5();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl(v52, v53, v54, v55, v56, v49, BYTE3(v93), v57);
          v50 = BYTE4(v93);
        }

        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v58, v59, v60, v61, v62, v50);
      }

      v63 = *(a1 + 16);
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      v67 = FigDispatchAsyncPostNotification(v63, DefaultLocalCenter, @"RunningClientsChanged", a1, v40, 0, v65, v66);
      v4 = v67;
      if (!v67 && dword_1EAF1CD28)
      {
        v75 = OUTLINED_FUNCTION_4_3(v67, v68, v69, v70, v71, v72, v73, v74, v90, v91, v92, v93, SBYTE2(v93), SBYTE3(v93), SHIDWORD(v93));
        v76 = v95;
        if (os_log_type_enabled(v75, type))
        {
          v77 = v95;
        }

        else
        {
          v77 = v95 & 0xFFFFFFFE;
        }

        if (v77)
        {
          FigCFDictionaryGetCount(v17);
          OUTLINED_FUNCTION_8_1();
          OUTLINED_FUNCTION_2_5();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl(v78, v79, v80, v81, v82, v75, type, v83);
          v76 = v95;
        }

        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v84, v85, v86, v87, v88, v76);
      }

      FigSimpleMutexUnlock(*(a1 + 32));
      CFRelease(v40);
      goto LABEL_35;
    }

    v4 = 4294949575;
LABEL_39:
    FigSimpleMutexUnlock(*(a1 + 32));
LABEL_35:
    CFRelease(v17);
  }

  return v4;
}

uint64_t FigBufferedAirPlayClientRoutingRegistryUnregisterClientWithRemoteID(uint64_t a1, const void *a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = 4294949576;
  if (a1 && a2)
  {
    FigSimpleMutexLock(*(a1 + 32));
    if (CFDictionaryContainsKey(*(a1 + 24), a3))
    {
      Value = CFDictionaryGetValue(*(a1 + 24), a3);
      v16 = Value;
      if (dword_1EAF1CD28)
      {
        v5 = OUTLINED_FUNCTION_5_3(Value, v9, v10, v11, v12, v13, v14, v15, v97, v100, v103, v106, SBYTE2(v106), SBYTE3(v106), SHIDWORD(v106));
        v17 = BYTE4(v106);
        v3 = BYTE3(v106);
        if (os_log_type_enabled(v5, BYTE3(v106)))
        {
          v18 = HIDWORD(v106);
        }

        else
        {
          v18 = HIDWORD(v106) & 0xFFFFFFFE;
        }

        if (v18)
        {
          CFDictionaryGetCount(v16);
          OUTLINED_FUNCTION_2_5();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl(v19, v20, v21, v22, v23, v5, BYTE3(v106), v24);
          v17 = BYTE4(v106);
        }

        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v25, v26, v27, v28, v29, v17);
      }

      CFDictionaryRemoveValue(v16, a2);
      if (dword_1EAF1CD28)
      {
        v38 = OUTLINED_FUNCTION_5_3(v30, v31, v32, v33, v34, v35, v36, v37, v97, v100, v103, v106, SBYTE2(v106), SBYTE3(v106), SHIDWORD(v106));
        if (OUTLINED_FUNCTION_12(v38, v39, v40, v41, v42, v43, v44, v45, v98, v101, v104, v107, v109, type, v113))
        {
          v46 = v3;
        }

        else
        {
          v46 = v3 & 0xFFFFFFFE;
        }

        if (v46)
        {
          CFDictionaryGetCount(v16);
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_2_5();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl(v47, v48, v49, v50, v51, a2, v5, v52);
        }

        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_13(v53, v54, v55, v56, v57);
      }

      if (!CFDictionaryGetCount(v16))
      {
        CFDictionaryRemoveValue(*(a1 + 24), a3);
      }

      v58 = OUTLINED_FUNCTION_11();
      Mutable = CFDictionaryCreateMutable(v58, v59, v60, v61);
      if (Mutable)
      {
        v63 = Mutable;
        CFDictionarySetValue(Mutable, @"RoutingContextUUID", a3);
        if (dword_1EAF1CD28)
        {
          v72 = OUTLINED_FUNCTION_5_3(v64, v65, v66, v67, v68, v69, v70, v71, v97, v100, v103, v106, SBYTE2(v106), SBYTE3(v106), SHIDWORD(v106));
          v80 = OUTLINED_FUNCTION_12(v72, v73, v74, v75, v76, v77, v78, v79, v99, v102, v105, v108, v110, typea, v114);
          if (OUTLINED_FUNCTION_9_1(v80))
          {
            OUTLINED_FUNCTION_10_0();
            OUTLINED_FUNCTION_2_5();
            OUTLINED_FUNCTION_6_3();
            _os_log_send_and_compose_impl(v81, v82, v83, v84, v85, a2, v5, v86);
          }

          OUTLINED_FUNCTION_1_1();
          OUTLINED_FUNCTION_13(v87, v88, v89, v90, v91);
        }

        v92 = *(a1 + 16);
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        v5 = FigDispatchAsyncPostNotification(v92, DefaultLocalCenter, @"RunningClientsChanged", a1, v63, 0, v94, v95);
        FigSimpleMutexUnlock(*(a1 + 32));
        CFRelease(v63);
        return v5;
      }

      v5 = 4294949575;
    }

    else
    {
      v5 = 0;
    }

    FigSimpleMutexUnlock(*(a1 + 32));
  }

  return v5;
}

uint64_t FigBufferedAirPlayClientRoutingRegistryGetCountOfRunningClientsForRoutingContext(uint64_t a1, const void *a2, CFIndex *a3)
{
  Count = 0;
  v98 = *MEMORY[0x1E69E9840];
  cf = 0;
  v89 = 0;
  v86 = 0;
  v87 = 0;
  v6 = 4294949576;
  if (!a1)
  {
    goto LABEL_30;
  }

  v7 = a2;
  if (!a2)
  {
    goto LABEL_30;
  }

  v8 = FigSimpleMutexLock(*(a1 + 32));
  if (FigServer_IsAirplayd(v8, v9) && qword_1ED4CC4B8 || qword_1ED4CC4C8)
  {
    v10 = OUTLINED_FUNCTION_11();
    if (v11(v10))
    {
      goto LABEL_52;
    }
  }

  else
  {
    v54 = OUTLINED_FUNCTION_1_6();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v54, 0, v55, v56);
    v58 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
    if (OUTLINED_FUNCTION_9_1(v58))
    {
      v92 = 136315138;
      v93 = "routingRegistry_figRoutingContextCopySystemAudioContext";
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_6_3();
      _os_log_send_and_compose_impl(v64, v65, v66, v67, v68, os_log_and_send_and_compose_flags_and_os_log_type, type, v69);
    }

    v70 = OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_13(v70, 0, 1, v71, v72);
  }

  v12 = *MEMORY[0x1E695E480];
  if (routingRegistry_figRoutingContextCopyProperty(v89, *_MergedGlobals_11, *MEMORY[0x1E695E480], &v87))
  {
    goto LABEL_52;
  }

  v13 = FigCFEqual(v7, v87);
  if (v13)
  {
    if (FigServer_IsAirplayd(v13, v14) && qword_1ED4CC4C0 || qword_1ED4CC4D0)
    {
      v15 = OUTLINED_FUNCTION_11();
      if (v16(v15))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v59 = OUTLINED_FUNCTION_1_6();
      v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v59, 0, v60, v61);
      v85 = v91;
      v84 = v62;
      v83 = type;
      if (os_log_type_enabled(v62, type))
      {
        v63 = v85;
      }

      else
      {
        v63 = v85 & 0xFFFFFFFE;
      }

      if (v63)
      {
        v92 = 136315138;
        v93 = "routingRegistry_figRoutingContextCopySystemMusicContext";
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_6_3();
        _os_log_send_and_compose_impl(v73, v74, v75, v76, v77, v84, v83, v78);
      }

      v79 = OUTLINED_FUNCTION_3_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v79, 0, 1, v80, v81, v82);
    }

    if (!routingRegistry_figRoutingContextCopyProperty(cf, *_MergedGlobals_11, v12, &v86))
    {
      if (dword_1EAF1CD28)
      {
        v17 = OUTLINED_FUNCTION_1_6();
        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v17, 1, v18, v19);
        v21 = type;
        v22 = os_log_type_enabled(v20, type);
        if (OUTLINED_FUNCTION_9_1(v22))
        {
          v92 = 136315650;
          v93 = "FigBufferedAirPlayClientRoutingRegistryGetCountOfRunningClientsForRoutingContext";
          v94 = 2112;
          v95 = v86;
          v96 = 2112;
          v97 = v7;
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl(v23, v24, v25, v26, v27, v20, v21, v28);
        }

        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_13(v29, v30, v31, v32, v33);
      }

      v7 = v86;
      goto LABEL_19;
    }

LABEL_52:
    Count = 0;
    v6 = 4294949574;
    goto LABEL_30;
  }

LABEL_19:
  Value = CFDictionaryGetValue(*(a1 + 24), v7);
  if (Value)
  {
    Count = CFDictionaryGetCount(Value);
  }

  else
  {
    Count = 0;
  }

  if (dword_1EAF1CD28)
  {
    v35 = OUTLINED_FUNCTION_1_6();
    v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v35, 1, v36, v37);
    v39 = v91;
    v40 = type;
    if (os_log_type_enabled(v38, type))
    {
      v41 = v39;
    }

    else
    {
      v41 = v39 & 0xFFFFFFFE;
    }

    if (v41)
    {
      v92 = 136315650;
      v93 = "FigBufferedAirPlayClientRoutingRegistryGetCountOfRunningClientsForRoutingContext";
      v94 = 2112;
      v95 = v7;
      v96 = 2048;
      v97 = Count;
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_6_3();
      _os_log_send_and_compose_impl(v42, v43, v44, v45, v46, v38, v40, v47);
      LOBYTE(v39) = v91;
    }

    OUTLINED_FUNCTION_1_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose(v48, v49, v50, v51, v52, v39);
  }

  v6 = 0;
LABEL_30:
  FigSimpleMutexUnlock(*(a1 + 32));
  if (a3)
  {
    *a3 = Count;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  return v6;
}

uint64_t routingRegistry_figRoutingContextCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294949576;
  }

  v8 = *(*(CMBaseObjectGetVTable(a1) + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

size_t __FigBufferedAirPlayClientRoutingRegistryGetSharedInstance_block_invoke_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD20, 0xFFFFBAC7uLL, "<<<< FigBufferedAirPlayClientRoutingRegistry >>>>", 0xED, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t fadc_getDeviceRateAndSampleTimeAndHostTime(uint64_t a1, Float64 *a2, Float64 *a3, Float64 *a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!*(DerivedStorage + 1))
  {
    v28 = DerivedStorage;
    v29 = FigDerivedClockGetDerivedStorage(a1, v14, v15, v16, v17, v18, v19, v20);
    v37 = FigAudioDeviceSupportsPresentationTime(*(v29 + 88), v30, v31, v32, v33, v34, v35, v36);
    v38 = v37;
    if (v37 != *(v28 + 112))
    {
      *(v28 + 112) = v37;
      FigDerivedClockDiscontinuityOccurred(a1);
    }

    if (v38)
    {
      v39 = FigDerivedClockGetDerivedStorage(a1, v14, v15, v16, v17, v18, v19, v20);
      memset(&v46, 0, 40);
      result = FigAudioDeviceGetCurrentPresentationTime(*(v39 + 88), &v46, v40, v41, v42, v43, v44, v45, 0);
      if (result)
      {
        return result;
      }

      v25 = *&v46.mSMPTETime.mSubframes;
      mRateScalar = v46.mRateScalar;
      mSampleTime = v46.mSampleTime;
      if (!a2)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v21 = FigDerivedClockGetDerivedStorage(a1, v14, v15, v16, v17, v18, v19, v20);
  memset(&v46, 0, sizeof(v46));
  v46.mFlags = 7;
  result = AudioDeviceGetCurrentTime(*(v21 + 88), &v46);
  if (result)
  {
    return result;
  }

  if ((~v46.mFlags & 7) == 0)
  {
    v25 = v46.mRateScalar;
    mSampleTime = *&v46.mHostTime;
    mRateScalar = v46.mSampleTime;
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD40, 0xFFFFB9CCuLL, "<<<< FADC >>>>", 0x46F, v8, v23, v24, *&v46.mSampleTime);
  if (result)
  {
    return result;
  }

  mSampleTime = 0.0;
  v25 = NAN;
  mRateScalar = NAN;
  if (a2)
  {
LABEL_11:
    *a2 = v25;
  }

LABEL_12:
  if (a3)
  {
    *a3 = mRateScalar;
  }

  result = 0;
  if (a4)
  {
    *a4 = mSampleTime;
  }

  return result;
}

size_t fadcSetAudioDeviceID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD40, 0xFFFFCE37uLL, "<<<< FADC >>>>", 0x737, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

OSStatus CMClockGetAnchorTime(CMClockRef clock, CMTime *clockTimeOut, CMTime *referenceClockTimeOut)
{
  v181 = *MEMORY[0x1E69E9840];
  v163 = *&kCMTimeInvalid.value;
  v9 = 0;
  v164 = 0;
  memset(v161, 0, sizeof(v161));
  if (!clock)
  {
    v21 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE37uLL, "(Fig)", 0x1BA, v5, v3, v4, v143);
    goto LABEL_7;
  }

  v10 = FigReentrantMutexLock(*(clock + 2));
  if (!*(clock + 41))
  {
    v22 = -12746;
    goto LABEL_10;
  }

  v20 = *(clock + 11);
  if (v20 == 1702392677)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s: kFigClockClass_ExternalSyncEvents not yet implemented\n", "CMClockGetAnchorTime");
    v22 = -12756;
    goto LABEL_10;
  }

  if (v20 != 1735680866)
  {
    v22 = 0;
    goto LABEL_10;
  }

  if (*(clock + 72))
  {
    v21 = (*(*(clock + 3) + 48))(clock, &v163, v161);
LABEL_7:
    v22 = v21;
    goto LABEL_10;
  }

  if (*(clock + 73))
  {
    v179 = 0;
    v180 = 0;
    memset(&v172, 0, sizeof(v172));
    memset(&clockTimeOuta, 0, sizeof(clockTimeOuta));
    memset(&rhs, 0, sizeof(rhs));
    memset(&v166, 0, sizeof(v166));
    FigMemoryBarrier();
    v46 = *(clock + 50);
    v45 = *(clock + 51);
    OUTLINED_FUNCTION_0_17(*(clock + 4), v47, v48, v49, v50, v51, v52, v53, v54, v143, v150, v55);
    AnchorTime = CMClockGetAnchorTime(v56, &time2, 0);
    value = time2.value;
    timescale = time2.timescale;
    epoch_high = HIDWORD(time2.epoch);
    time1 = *(clock + 128);
    time = *(clock + 2);
    v177 = *&time2.flags;
    v67 = OUTLINED_FUNCTION_2_7(AnchorTime, v60, v61, v62, v63, v64, v65, v66, v147, v154, kCMTimeInvalid.value, *&kCMTimeInvalid.timescale, *v161, *&v161[8], *&v161[16], v162, v163, *(&v163 + 1), v164, v165, kCMTimeInvalid.value, *&kCMTimeInvalid.timescale, 0, v167, kCMTimeInvalid.value, *&kCMTimeInvalid.timescale, 0, v169, kCMTimeInvalid.value, *&kCMTimeInvalid.timescale, 0, v171, kCMTimeInvalid.value, *&kCMTimeInvalid.timescale, 0, v173, time1.value);
    CMTimeAdd(v69, v67, v68);
    time1.value = value;
    *&time1.flags = v177;
    time1.timescale = timescale;
    HIDWORD(time1.epoch) = epoch_high;
    v70 = CMTimeCompare(&time1, &time2);
    if ((v70 & 0x80000000) == 0 || v45 != v46)
    {
      v80 = OUTLINED_FUNCTION_0_17(v70, v71, v72, v73, v74, v75, v76, v77, v78, v148, v155, v79);
      if (v45 != v46)
      {
        goto LABEL_30;
      }

      while (1)
      {
        if (!(*(*(clock + 3) + 48))(clock, &v172, &time2, v80))
        {
          OUTLINED_FUNCTION_1_8();
          if (v81)
          {
            time = v172;
            CMTimeConvertScale(&time1, &time, timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            v172 = time1;
            clockTimeOuta = time2;
          }
        }

        FigMemoryBarrier();
        if (*(clock + 51) == *(clock + 50))
        {
          break;
        }

        OUTLINED_FUNCTION_0_17(v82, v83, v84, v85, v86, v87, v88, v89, v90, v149, v156, v91);
LABEL_30:
        *(clock + 124) = 0;
        FigMemoryBarrier();
        *(clock + 51) = *(clock + 50);
      }

      *(clock + 16) = value;
      *(clock + 34) = timescale;
      *(clock + 140) = v177;
      *(clock + 37) = epoch_high;
      OUTLINED_FUNCTION_1_8();
      if (v81)
      {
        *(clock + 74) = 1;
        if (!*(clock + 124))
        {
          *(clock + 100) = clockTimeOuta;
          time1 = v172;
          time = *(clock + 152);
          v100 = OUTLINED_FUNCTION_2_7(v92, v93, v94, v95, v96, v97, v98, v99, v149, v156, v159, v160, *v161, *&v161[8], *&v161[16], v162, v163, *(&v163 + 1), v164, v165, v166.value, *&v166.timescale, v166.epoch, v167, rhs.value, *&rhs.timescale, rhs.epoch, v169, clockTimeOuta.value, *&clockTimeOuta.timescale, clockTimeOuta.epoch, v171, v172.value, *&v172.timescale, v172.epoch, v173, v172.value);
          CMTimeSubtract(v102, v100, v101);
          *(clock + 76) = time2;
          *(clock + 124) = 1;
        }

        time2 = v172;
        time1 = *(clock + 76);
        v103 = OUTLINED_FUNCTION_4_4();
        CMTimeSubtract(v105, v103, v104);
        time2 = *(clock + 100);
        time1 = rhs;
        v106 = OUTLINED_FUNCTION_4_4();
        v109 = CMTimeAdd(v108, v106, v107);
        *&time1.timescale = *&v166.timescale;
        time1.epoch = v166.epoch;
        time = clockTimeOuta;
        v117 = OUTLINED_FUNCTION_2_7(v109, v110, v111, v112, v113, v114, v115, v116, v149, v156, v159, v160, *v161, *&v161[8], *&v161[16], v162, v163, *(&v163 + 1), v164, v165, v166.value, *&v166.timescale, v166.epoch, v167, rhs.value, *&rhs.timescale, rhs.epoch, v169, clockTimeOuta.value, *&clockTimeOuta.timescale, clockTimeOuta.epoch, v171, v172.value, *&v172.timescale, v172.epoch, v173, v166.value);
        CMTimeSubtract(v119, v117, v118);
        *(clock + 152) = time2;
      }

      else
      {
        *(clock + 74) = 0;
        *(clock + 124) = 0;
      }
    }

    *&time2.flags = v177;
    time2.value = value;
    HIDWORD(time2.epoch) = epoch_high;
    time2.timescale = timescale;
    time1 = *(clock + 152);
    v120 = OUTLINED_FUNCTION_4_4();
    CMTimeAdd(v122, v120, v121);
    v179 = time.value;
    v180 = time.timescale;
    epoch = time.epoch;
    v124 = time.flags & 0xFFFFFFFD;
    time2.value = time.value;
    time2.timescale = time.timescale;
    time2.flags = time.flags & 0xFFFFFFFD;
    time2.epoch = time.epoch;
    time1 = *(clock + 176);
    v125 = OUTLINED_FUNCTION_4_4();
    if (CMTimeCompare(v125, v126) < 0 && (OUTLINED_FUNCTION_5_4(), v81))
    {
      v179 = *(clock + 22);
      v180 = *(clock + 46);
      epoch = *(clock + 24);
      v124 = v127;
    }

    else
    {
      *(clock + 22) = v179;
      *(clock + 46) = v180;
      *(clock + 47) = v124;
      *(clock + 24) = epoch;
    }

    v22 = 0;
    *&v163 = v179;
    *(&v163 + 1) = __PAIR64__(v124, v180);
    v164 = epoch;
    *v161 = value;
    *&v161[8] = timescale;
    *&v161[12] = v177;
    v128 = epoch_high;
    goto LABEL_47;
  }

  time.value = 0;
  time.timescale = 0;
  *&time1.value = OUTLINED_FUNCTION_0_17(v10, v11, v12, v13, v14, v15, v16, v17, v18, v143, 0, v19);
  time1.epoch = 0;
  *&v172.value = *&time1.value;
  v172.epoch = 0;
  FigMemoryBarrier();
  v25 = *(clock + 50);
  v24 = *(clock + 51);
  OUTLINED_FUNCTION_3_3(*(clock + 4), v26, v27, v28, v29, v30, v31, v32, v144, v151, *&kCMTimeInvalid.value);
  CMClockGetAnchorTime(v33, &clockTimeOuta, 0);
  v179 = *&clockTimeOuta.flags;
  v34 = clockTimeOuta.timescale;
  v180 = HIDWORD(clockTimeOuta.epoch);
  v35 = clockTimeOuta.value;
  rhs = *(clock + 128);
  CMTimeSubtract(&v172, &clockTimeOuta, &rhs);
  clockTimeOuta = v172;
  rhs = *(clock + 2);
  v36 = CMTimeCompare(&clockTimeOuta, &rhs);
  if ((v36 & 0x80000000) != 0 && v24 == v25 && *(clock + 124))
  {
    goto LABEL_48;
  }

  v44 = OUTLINED_FUNCTION_3_3(v36, v37, v38, v39, v40, v41, v42, v43, v145, v152, v157);
  if (v24 != v25)
  {
    goto LABEL_57;
  }

  while (1)
  {
    if (!(*(*(clock + 3) + 48))(clock, &time2, &clockTimeOuta, v44))
    {
      OUTLINED_FUNCTION_1_8();
      if (v81)
      {
        v166 = time2;
        CMTimeConvertScale(&rhs, &v166, v34, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        time2 = rhs;
        time1 = clockTimeOuta;
      }
    }

    FigMemoryBarrier();
    if (*(clock + 51) == *(clock + 50))
    {
      break;
    }

    OUTLINED_FUNCTION_3_3(v132, v133, v134, v135, v136, v137, v138, v139, v146, v153, *&v158);
LABEL_57:
    FigMemoryBarrier();
    *(clock + 51) = *(clock + 50);
  }

  *(clock + 16) = v35;
  *(clock + 34) = v34;
  *(clock + 140) = v179;
  *(clock + 37) = v180;
  OUTLINED_FUNCTION_1_8();
  if (v81)
  {
    *(clock + 100) = *&time1.value;
    *(clock + 76) = *&time2.value;
    *(clock + 74) = v140;
    *(clock + 124) = v140;
    *(clock + 116) = time1.epoch;
    *(clock + 92) = time2.epoch;
    OUTLINED_FUNCTION_6_4();
    rhs.value = v35;
    rhs.timescale = v34;
    *&v166.value = v141;
    v166.epoch = v142;
    goto LABEL_49;
  }

  *(clock + 74) = 0;
  if (*(clock + 124))
  {
LABEL_48:
    rhs.value = v35;
    rhs.timescale = v34;
    OUTLINED_FUNCTION_6_4();
    v166 = *(clock + 100);
LABEL_49:
    CMTimeSubtract(&clockTimeOuta, &rhs, &v166);
    v172 = clockTimeOuta;
    rhs = clockTimeOuta;
    v166 = *(clock + 76);
    CMTimeAdd(&clockTimeOuta, &rhs, &v166);
    time.value = clockTimeOuta.value;
    flags = clockTimeOuta.flags;
    time.timescale = clockTimeOuta.timescale;
    v9 = clockTimeOuta.epoch;
    goto LABEL_50;
  }

  time.value = v153;
  time.timescale = 0;
  flags = 0;
LABEL_50:
  v130 = flags & 0xFFFFFFFD;
  clockTimeOuta.value = time.value;
  clockTimeOuta.timescale = time.timescale;
  clockTimeOuta.flags = flags & 0xFFFFFFFD;
  clockTimeOuta.epoch = v9;
  rhs = *(clock + 176);
  if (CMTimeCompare(&clockTimeOuta, &rhs) < 0 && (OUTLINED_FUNCTION_5_4(), v81))
  {
    time.value = *(clock + 22);
    time.timescale = *(clock + 46);
    v9 = *(clock + 24);
    v130 = v131;
  }

  else
  {
    *(clock + 22) = time.value;
    *(clock + 46) = time.timescale;
    *(clock + 47) = v130;
    *(clock + 24) = v9;
  }

  v22 = 0;
  *&v163 = time.value;
  *(&v163 + 1) = __PAIR64__(v130, time.timescale);
  v164 = v9;
  *v161 = v35;
  *&v161[8] = v34;
  *&v161[12] = v179;
  v128 = v180;
LABEL_47:
  *&v161[20] = v128;
LABEL_10:
  if (clockTimeOut)
  {
    *&clockTimeOut->value = v163;
    clockTimeOut->epoch = v164;
  }

  if (referenceClockTimeOut)
  {
    *&referenceClockTimeOut->value = *v161;
    referenceClockTimeOut->epoch = *&v161[16];
  }

  if (clock)
  {
    FigReentrantMutexUnlock(*(clock + 2));
  }

  return v22;
}

CMTime *__cdecl CMClockGetTime(CMTime *__return_ptr retstr, CMClockRef clock)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  return CMClockGetAnchorTime(clock, retstr, 0);
}

size_t FigStartForwardingMediaServicesProcessDeathNotification_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0x6A, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigStartForwardingMediaServicesProcessDeathNotification_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0x69, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigStopForwardingMediaServicesProcessDeathNotification_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0x7C, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigStopForwardingMediaServicesProcessDeathNotification_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0x7B, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigStartMonitoringMediaServicesProcessDeathWithCallback_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0xB2, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigStartMonitoringMediaServicesProcessDeathWithCallback_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0xB1, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

void figObjectDependencyDeathDefaultCallback_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void soft_FigAudioSessionTriggerAVAudioSessionReset(pid_t)") description:{@"FigMediaServicesProcessDeathMonitoringFigOnly.m", 80, @"%s", dlerror()}];
  __break(1u);
}

size_t FigStopMonitoringMediaServicesProcessDeathWithCallback_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0xCB, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigStopMonitoringMediaServicesProcessDeathWithCallback_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0xC9, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

void __getFigAudioSessionTriggerAVAudioSessionResetSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *MediaToolboxLibrary(void)") description:{@"FigMediaServicesProcessDeathMonitoringFigOnly.m", 79, @"%s", *a1}];
  __break(1u);
}

void endpointStreamUtil_createSyncContext_cold_1(void *a1, const CMBlockBufferCustomBlockSource *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBE87uLL, "(Fig)", a2, v8, a7, a8, v11))
  {
    free(a1);
    a1 = 0;
  }

  *a3 = a1;
}

uint64_t HandleControlCommandsServerRemoteMessage(uint64_t a1, void *a2, void *a3)
{
  v15 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v15);
  if (OpCode)
  {
    return OpCode;
  }

  if (v15 != 1885827696)
  {
    return 4294951145;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v17 = 0;
  int64 = xpc_dictionary_get_int64(a2, "Pid");
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"|%-80s|%-20s|%-64s|%-32s|\n", "Server", "Purged", "Purge Identifier", "Could Not Purge All Objects");
  if (xpc_dictionary_get_BOOL(a2, "ForcePurge"))
  {
    goto LABEL_6;
  }

  PurgeEligibilityForPID = FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID(int64, &v17);
  if (PurgeEligibilityForPID)
  {
    v9 = PurgeEligibilityForPID;
    goto LABEL_7;
  }

  if (v17)
  {
    v9 = 0;
    *(v19 + 24) = 1;
  }

  else
  {
LABEL_6:
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __HandleLoggingPurgeObjectsAndGenerateReportForPID_block_invoke;
    v16[3] = &unk_1E749EAB8;
    v16[4] = &v18;
    v16[5] = Mutable;
    FigXPCPurgeObjectsForPIDWithReportingBlock(int64, v16);
    v9 = 0;
  }

LABEL_7:
  v10 = *MEMORY[0x1E695E4D0];
  v11 = *MEMORY[0x1E695E4C0];
  if (*(v19 + 24))
  {
    v12 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v12 = *MEMORY[0x1E695E4C0];
  }

  FigXPCMessageSetCFBoolean(a3, "CouldNotPurgeAllObjects", v12);
  if (v17)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  FigXPCMessageSetCFBoolean(a3, "PurgeProhibited", v13);
  FigXPCMessageSetCFString(a3, "Stats", Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  _Block_object_dispose(&v18, 8);
  return v9;
}

uint64_t HandleControlCommandsServerRemoteMessageNoReply(_xpc_connection_s *a1, void *a2)
{
  v4 = 0;
  result = FigXPCMessageGetOpCode(a2, &v4);
  if (!result)
  {
    if (v4 == 1819242352)
    {
      v5 = 0;
      result = FigXPCServerAssociateObjectWithConnection(a1, @"Loopback", @"refcon", AirPlayLoopbackDispose, 0, &v5);
      if (!result)
      {
        if (setenv("ENABLE_BUFFERED_LOCAL_PLAYBACK", "1", 1))
        {
          return 4294948106;
        }

        else
        {
          FigAtomicIncrement32(gEnableBufferedAirplayEnvClientCount);
          return 0;
        }
      }
    }

    else
    {
      return 4294951145;
    }
  }

  return result;
}

size_t CMTimebaseCreateReadOnlyTimebaseWithFlags(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  v8 = 4294954548;
  if (a2 && a6)
  {
    v13 = figTimebaseCreate(a1, a5, &cf, a4, a5, a6, a7, a8, v20);
    if (v13)
    {
      v8 = v13;
    }

    else
    {
      *(cf + 4) = 2;
      v14 = CFRetain(a2);
      v15 = cf;
      *(cf + 3) = v14;
      v15[4] = a3;
      v15[5] = a4;
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_9();
      v8 = FigNotificationCenterAddWeakListener(v16, v15, v17, 0, v14, 2, 0, v18, v21);
      if (!v8)
      {
        *a6 = cf;
        return v8;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v8;
}

OSStatus CMTimebaseAddTimerDispatchSource(CMTimebaseRef timebase, dispatch_source_t timerSource)
{
  v2 = -12748;
  if (!timebase || !timerSource)
  {
    return v2;
  }

  if (!dispatch_source_testcancel(timerSource))
  {
    FigReentrantMutexLock(*(timebase + 14));
    v10 = *(timebase + 38);
    if (v10 || (keyCallBacks.version = 0, keyCallBacks.retain = cfDispatchSourceRetain, keyCallBacks.release = cfDispatchSourceRelease, memset(&keyCallBacks.copyDescription, 0, 24), OUTLINED_FUNCTION_7_3(), valueCallBacks.release = cfDataFigTimeRelease, valueCallBacks.equal = cfDataFigTimeEqual, valueCallBacks.copyDescription = cfDataFigTimeCopyDescription, v11 = CFGetAllocator(timebase), v10 = CFDictionaryCreateMutable(v11, 0, &keyCallBacks, &valueCallBacks), (*(timebase + 38) = v10) != 0))
    {
      if (!*(timebase + 39))
      {
        CFGetAllocator(timebase);
        OUTLINED_FUNCTION_26();
        Mutable = CFDictionaryCreateMutable(v12, v13, v14, v15);
        *(timebase + 39) = Mutable;
        if (!Mutable)
        {
          OUTLINED_FUNCTION_0_11();
          v28 = 3757;
          goto LABEL_19;
        }

        v10 = *(timebase + 38);
      }

      if (CFDictionaryContainsKey(v10, timerSource))
      {
LABEL_15:
        v2 = 0;
LABEL_20:
        FigReentrantMutexUnlock(*(timebase + 14));
        return v2;
      }

      v17 = CFGetAllocator(timebase);
      v18 = CFDataCreate(v17, &kCMTimeInvalid, 24);
      if (v18)
      {
        v19 = v18;
        OUTLINED_FUNCTION_26();
        dispatch_source_set_timer(v20, v21, v22, v23);
        CFDictionaryAddValue(*(timebase + 38), timerSource, v19);
        CFRelease(v19);
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_0_11();
      v28 = 3765;
    }

    else
    {
      OUTLINED_FUNCTION_0_11();
      v28 = 3749;
    }

LABEL_19:
    v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 0xFFFFCE32uLL, "<<< timebase >>>", v28, v25, v26, v27, v29);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0_11();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0xFFFFCE33uLL, "<<< timebase >>>", 0xE8B, v6, v7, v8, v33);
}

OSStatus CMTimebaseSetTimerDispatchSourceNextFireTime(CMTimebaseRef timebase, dispatch_source_t timerSource, CMTime *fireTime, uint32_t flags)
{
  v6 = -12748;
  if (timebase && timerSource)
  {
    OUTLINED_FUNCTION_19(timebase);
    v10 = *(v4 + 304);
    if (!v10 || !CFDictionaryContainsKey(v10, timerSource))
    {
      v6 = -12749;
      goto LABEL_10;
    }

    if (dispatch_source_testcancel(timerSource))
    {
      CFDictionaryRemoveValue(*(v4 + 304), timerSource);
      CFDictionaryRemoveValue(*(v4 + 312), timerSource);
      v13 = qword_1ED4CC298;
      v14 = v5;
      v15 = 4294954547;
      v16 = 3833;
    }

    else
    {
      v17 = CFGetAllocator(v4);
      v18 = CFDataCreate(v17, fireTime, 24);
      if (v18)
      {
        v20 = v18;
        CFDictionaryReplaceValue(*(v4 + 304), timerSource, v18);
        CFRelease(v20);
        CFDictionarySetValue(*(v4 + 312), timerSource, flags);
        OUTLINED_FUNCTION_10_1(&v22);
        OUTLINED_FUNCTION_13_0();
        rescheduleTimerSource(timerSource, &v21, v4, &v22, 2, flags);
        v6 = 0;
        goto LABEL_10;
      }

      v13 = qword_1ED4CC298;
      v14 = v5;
      v15 = 4294954546;
      v16 = 3840;
    }

    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v15, "<<< timebase >>>", v16, v14, v11, v12, v21.value);
LABEL_10:
    FigReentrantMutexUnlock(*(v4 + 112));
  }

  return v6;
}

uint64_t FigReadOnlyTimebaseSetTargetTimebase(uint64_t a1, os_unfair_lock_s **cf)
{
  memset(&v98, 0, sizeof(v98));
  TransformRelativeToUltimateMasterClock = 4294954548;
  if (!a1 || !cf)
  {
    return TransformRelativeToUltimateMasterClock;
  }

  if (!*(a1 + 24) || figTimebaseIsDescendantOfTimebase(cf, a1))
  {
    return 4294954547;
  }

  *multiplier = 0u;
  memset(&v97, 0, sizeof(v97));
  v95 = 0u;
  v91 = 0u;
  v92 = 0u;
  memset(&v93, 0, sizeof(v93));
  v6 = CFGetAllocator(a1);
  OUTLINED_FUNCTION_10_1(&v103);
  v7 = figTimebaseCreatePayloadForNotificationAtTime(v6, &v103);
  if (!v7)
  {
    return 4294954546;
  }

  v14 = v7;
  OUTLINED_FUNCTION_20(v7, @"CMTimebaseMasterWillChange", v8, v9, v10, v11, v12, v13, v91);
  FigReentrantMutexLock(*(a1 + 112));
  v15 = *(a1 + 24);
  if (v15 == cf)
  {
    TransformRelativeToUltimateMasterClock = 0;
    v17 = 0;
    goto LABEL_41;
  }

  FigReentrantMutexLock(v15[14]);
  EffectiveRate = CMTimebaseGetEffectiveRate(v15);
  v17 = FigTimebaseCopyUltimateMasterClockAndHeight(v15, 0);
  TransformRelativeToUltimateMasterClock = FigTimebaseGetTransformRelativeToUltimateMasterClock(v15, 1, &v95);
  FigReentrantMutexUnlock(v15[14]);
  if (TransformRelativeToUltimateMasterClock)
  {
LABEL_41:
    v19 = 0;
LABEL_43:
    PayloadForNotificationAtTime = FigReentrantMutexUnlock(*(a1 + 112));
    goto LABEL_45;
  }

  FigReentrantMutexLock(cf[14]);
  v18 = CMTimebaseGetEffectiveRate(cf);
  v19 = FigTimebaseCopyUltimateMasterClockAndHeight(cf, 0);
  v20 = FigTimebaseGetTransformRelativeToUltimateMasterClock(cf, 1, &v91);
  if (v20)
  {
    TransformRelativeToUltimateMasterClock = v20;
    FigReentrantMutexUnlock(cf[14]);
    goto LABEL_43;
  }

  memset(&v103, 0, sizeof(v103));
  memset(&v102, 0, sizeof(v102));
  memset(&v101, 0, sizeof(v101));
  if (CFEqual(v17, v19) && multiplier[1] == *(&v92 + 1))
  {
    lhs = v97;
    rhs = v93;
    CMTimeSubtract(&v103, &lhs, &rhs);
    *&lhs.value = v95;
    *&lhs.epoch = multiplier[0];
    *&rhs.value = v91;
    rhs.epoch = v92;
    CMTimeSubtract(&v102, &lhs, &rhs);
    lhs = v102;
    CMTimeMultiplyByFloat64(&v101, &lhs, multiplier[1]);
    lhs = v101;
    rhs = v103;
    v21 = CMTimeCompare(&lhs, &rhs) != 0;
  }

  else
  {
    v21 = 1;
  }

  *(a1 + 24) = cf;
  CFRetain(cf);
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_1_9();
  FigNotificationCenterAddWeakListener(v22, a1, v23, 0, cf, 2, 0, v24, v91);
  OUTLINED_FUNCTION_17(cf, &v98);
  FigReentrantMutexUnlock(cf[14]);
  v25 = EffectiveRate != v18 || v21;
  if (v25 == 1)
  {
    CMTimebaseGetEffectiveRate(a1);
    OUTLINED_FUNCTION_21();
    if (!(v39 ^ v40 | v26))
    {
      v36 = 1;
    }

    if (v26)
    {
      v36 = v35;
    }

    *(a1 + 320) = v36;
    if (*(a1 + 280))
    {
      OUTLINED_FUNCTION_5_5(v27, v28, v29, v30, v31, v32, v33, v34, v37, v91, *(&v91 + 1), v92, *(&v92 + 1), v93.value, *&v93.timescale, v93.epoch, v94, v95, *(&v95 + 1), *&multiplier[0], *&multiplier[1], v97.value, *&v97.timescale, v97.epoch, v38, v98.value);
      v41 = OUTLINED_FUNCTION_28();
      rescheduleValidAndRemoveInvalidTimers(v41, v42, v43);
    }

    if (*(a1 + 304))
    {
      OUTLINED_FUNCTION_5_5(v27, v28, v29, v30, v31, v32, v33, v34, v37, v91, *(&v91 + 1), v92, *(&v92 + 1), v93.value, *&v93.timescale, v93.epoch, v94, v95, *(&v95 + 1), *&multiplier[0], *&multiplier[1], v97.value, *&v97.timescale, v97.epoch, v38, v98.value);
      v44 = OUTLINED_FUNCTION_28();
      rescheduleValidAndRemoveCancelledTimerSources(v44, v45, v46);
    }
  }

  FigReentrantMutexUnlock(*(a1 + 112));
  TransformRelativeToUltimateMasterClock = figTimebaseUninstallReadOnlyTimebaseNotifications(a1, v15);
  CFRelease(v15);
  v47 = CFGetAllocator(a1);
  OUTLINED_FUNCTION_5_5(v47, v48, v49, v50, v51, v52, v53, v54, v55, v91, *(&v91 + 1), v92, *(&v92 + 1), v93.value, *&v93.timescale, v93.epoch, v94, v95, *(&v95 + 1), *&multiplier[0], *&multiplier[1], v97.value, *&v97.timescale, v97.epoch, v56, v98.value);
  PayloadForNotificationAtTime = figTimebaseCreatePayloadForNotificationAtTime(v57, v58);
  if (PayloadForNotificationAtTime)
  {
    v66 = PayloadForNotificationAtTime;
    v67 = OUTLINED_FUNCTION_28();
    figTimebasePostNotification(v67, v68, v69, v70, v71, v72, v73, v74, v91);
    if (v25)
    {
      if (EffectiveRate != v18)
      {
        v75 = OUTLINED_FUNCTION_28();
        figTimebasePostNotification(v75, v76, v77, v78, v79, v80, v81, v82, v91);
      }

      if (v21)
      {
        v83 = OUTLINED_FUNCTION_28();
        figTimebasePostNotification(v83, v84, v85, v86, v87, v88, v89, v90, v91);
      }
    }

    CFRelease(v14);
    goto LABEL_35;
  }

  TransformRelativeToUltimateMasterClock = 4294954546;
LABEL_45:
  OUTLINED_FUNCTION_20(PayloadForNotificationAtTime, @"CMTimebaseMasterDidChange", v60, v61, v62, v63, v64, v65, v91);
  v66 = v14;
LABEL_35:
  CFRelease(v66);
  if (v17)
  {
    CFRelease(v17);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return TransformRelativeToUltimateMasterClock;
}

CFDictionaryRef figTimebaseCreatePayloadForNotificationAtTime(CFAllocatorRef allocator, CMTime *a2)
{
  cf = *a2;
  cf.value = CMTimeCopyAsDictionary(&cf, allocator);
  if (!cf.value)
  {
    return 0;
  }

  v3 = CFDictionaryCreate(allocator, &kCMTimebaseNotificationKey_EventTime, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (cf.value)
  {
    CFRelease(cf.value);
  }

  return v3;
}

Float64 CMTimebaseGetEffectiveRate(CMTimebaseRef timebase)
{
  if (!timebase)
  {
    return 0.0;
  }

  v1 = FigTimebaseCopyTargetTimebase(timebase);
  Rate = CMTimebaseGetRate(v1);
  if (Rate == 0.0)
  {
    RelativeRate = Rate;
    v4 = 0;
    if (!v1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = FigTimebaseCopyUltimateMasterClockAndHeight(v1, 0);
  RelativeRate = CMSyncGetRelativeRate(v1, v4);
  if (v1)
  {
LABEL_4:
    CFRelease(v1);
  }

LABEL_5:
  if (v4)
  {
    CFRelease(v4);
  }

  return RelativeRate;
}

uint64_t figTimebaseUninstallReadOnlyTimebaseNotifications(const void *a1, const void *a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_1_9();
  v6 = FigNotificationCenterRemoveWeakListener(v4, a1, v5, 0, a2);
  if (a2)
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterBarrier(DefaultLocalCenter, a2, v8, v9, v10, v11, v12, v13, v15);
  }

  return v6;
}

void figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness(os_unfair_lock_s **a1@<X0>, int a2@<W1>, int a3@<W2>, CMTime *a4@<X8>)
{
  v231 = *MEMORY[0x1E69E9840];
  *&a4->value = *&kCMTimeInvalid.value;
  a4->epoch = 0;
  v206 = *&kCMTimeInvalid.value;
  v207 = 0;
  if (a1)
  {
    v7 = FigTimebaseCopyTargetTimebase(a1);
    figTimebaseGetMasterTime(v7, &v206);
    OUTLINED_FUNCTION_3_4(v8, v9, v10, v11, v12, v13, v14, v15, v16, v135, v143, kCMTimeInvalid.value, *&kCMTimeInvalid.timescale, v168, v179, v188, v198, v17, v206);
    figTimebaseGetTimeAtMasterTime(v7, a4);
    if (a3 && dword_1ED4CC2A0)
    {
      LODWORD(v222) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v26 = OUTLINED_FUNCTION_34(v18, v19, v20, v21, v22, v23, v24, v25, v136, v144, v153, v161, v169, v180, v189, v199, v206, *(&v206 + 1), v207, v208, rhs.value, *&rhs.timescale, rhs.epoch, v210, v211.value, *&v211.timescale, v211.epoch, v212, v213, *(&v213 + 1), v214, v215, v216, *(&v216 + 1), v217, v218.value, *&v218.timescale, v218.epoch, *type, *&type[8], v220, v221);
      v27 = v222;
      v28 = type[0];
      v29 = os_log_type_enabled(v26, type[0]);
      if (v29)
      {
        v39 = v27;
      }

      else
      {
        v39 = v27 & 0xFFFFFFFE;
      }

      if (v39)
      {
        v27 = *(v7 + 4);
        OUTLINED_FUNCTION_3_4(v29, v30, v31, v32, v33, v34, v35, v36, v37, v136, v144, v153, v161, v170, v181, v190, v199, v38, v206);
        Seconds = CMTimeGetSeconds(&time[0].start);
        OUTLINED_FUNCTION_11_0();
        v41 = CMTimeGetSeconds(&time[0].start);
        LODWORD(lhs.value) = 136316162;
        *(&lhs.value + 4) = "figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness";
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = v7;
        HIWORD(lhs.epoch) = 1024;
        v225 = v27;
        v226 = 2048;
        v227 = Seconds;
        v228 = 2048;
        v229 = v41;
        LODWORD(v145) = 48;
        _os_log_send_and_compose_impl(v39, 0, time, 128, &dword_196FA7000, v26, v28, "<<< timebase >>> %s: targetTimebase %p, targetTimebase->type=%d, masterTime: %1.3f, time: %1.3f", &lhs, v145, v154, v162, v171);
        LOBYTE(v27) = v222;
      }

      OUTLINED_FUNCTION_22();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v42, v43, v44, v45, v46, v27);
    }

    if (*(v7 + 4) == 1)
    {
      v172 = *&a4->value;
      epoch = a4->epoch;
      v47 = FigTimebaseCopyTargetTimebase(v7);
      v48 = v47;
      if (*(v47 + 4) == 1)
      {
        v49 = *(v47 + 4);
        v222 = *(v47 + 3);
        v223 = v47[8];
        *type = *(v47 + 9);
        v220 = v47[11];
        memset(&v218, 0, sizeof(v218));
        *&time[0].start.value = *(v47 + 3);
        *&time[0].start.epoch = v49;
        *&time[0].duration.timescale = *(v47 + 5);
        CMTimeRangeGetEnd(&v218, time);
        OUTLINED_FUNCTION_11_0();
        lhs = v218;
        v50 = OUTLINED_FUNCTION_18();
        v52 = CMTimeCompare(v50, v51);
        if ((v52 & 0x80000000) == 0)
        {
          v216 = 0uLL;
          v217 = 0;
          OUTLINED_FUNCTION_3_4(v52, v53, v54, v55, v56, v57, v58, v59, v60, v136, v144, v153, v161, v172, *(&v172 + 1), epoch, v199, v61, v206);
          OUTLINED_FUNCTION_25(v62, v63, v64, v65, v66, v67, v68, v69, v137, v146, v155, v163, v173, v182, v192, v200, v206, *(&v206 + 1), v207, v208, rhs.value, *&rhs.timescale, rhs.epoch, v210, v211.value, *&v211.timescale, v211.epoch, v212, v213, *(&v213 + 1), v214, v215, v216, *(&v216 + 1), v217, v218.value, *&v218.timescale, v218.epoch, *type, *&type[8], v220, v221, v222);
          v70 = OUTLINED_FUNCTION_18();
          v73 = CMTimeSubtract(v72, v70, v71);
          *&time[0].start.value = v216;
          time[0].start.epoch = v217;
          OUTLINED_FUNCTION_33(v73, v74, v75, v76, v77, v78, v79, v80, v138, v147, v156, v164, v174, v183, v193, v201, v206, *(&v206 + 1), v207, v208, rhs.value, *&rhs.timescale, rhs.epoch, v210, v211.value, *&v211.timescale, v211.epoch, v212, v156, v164, 0, v215, v216, *(&v216 + 1), v217, v218.value, *&v218.timescale, v218.epoch, *type);
          v81 = OUTLINED_FUNCTION_18();
          v83 = CMTimeDivide(v81, v82, &v213);
          if (a2)
          {
            *&v211.value = v157;
            v211.epoch = 0;
            if (v83 > 0x7FFFFFFF)
            {
              OUTLINED_FUNCTION_3_4(v83, v83, v85, v86, v87, v88, v89, v90, v157, v139, v148, v157.n128_i64[0], v157.n128_i64[1], v175, v184, v194, v202, v91, v206);
              OUTLINED_FUNCTION_32(v101, v102, v103, v104, v105, v106, v107, v108, v142, v151, v160, v167, v178, v187, v197, v205, v206, *(&v206 + 1), v207, v208, rhs.value, *&rhs.timescale, rhs.epoch, v210, v211.value, *&v211.timescale, v211.epoch, v212, v213);
              v109 = OUTLINED_FUNCTION_18();
              CMTimeSubtract(v111, v109, v110);
            }

            else
            {
              memset(time, 0, 24);
              OUTLINED_FUNCTION_33(v83, v83, v85, v86, v87, v88, v89, v90, v139, v148, v157.n128_i64[0], v157.n128_i64[1], v175, v184, v194, v202, v206, *(&v206 + 1), v207, v208, rhs.value, *&rhs.timescale, rhs.epoch, v210, v211.value, *&v211.timescale, v211.epoch, v212, v213, *(&v213 + 1), v214, v215, v216, *(&v216 + 1), v217, v218.value, *&v218.timescale, v218.epoch, *type);
              v93 = CMTimeMultiply(&time[0].start, &lhs, v92);
              OUTLINED_FUNCTION_25(v93, v94, v95, v96, v97, v98, v99, v100, v140, v149, v158, v165, v176, v185, v195, v203, v206, *(&v206 + 1), v207, v208, rhs.value, *&rhs.timescale, rhs.epoch, v210, v211.value, *&v211.timescale, v211.epoch, v212, v213, *(&v213 + 1), v214, v215, v216, *(&v216 + 1), v217, v218.value, *&v218.timescale, v218.epoch, *type, *&type[8], v220, v221, v222);
              rhs = time[0].start;
              CMTimeAdd(&v211, &lhs, &rhs);
            }

            *&time[0].start.value = *(v48 + 10);
            OUTLINED_FUNCTION_24(v48[22], v141, v150, v159, v166, v177, v186, v196, v204, v206, *(&v206 + 1), v207, v208, rhs.value, *&rhs.timescale, rhs.epoch, v210, *&v211.value);
            v112 = OUTLINED_FUNCTION_18();
            v83 = CMTimeCompare(v112, v113);
            if (v83)
            {
              *&time[0].start.value = v222;
              OUTLINED_FUNCTION_24(v223, v139, v148, v157.n128_i64[0], v157.n128_i64[1], v175, v184, v194, v202, v206, *(&v206 + 1), v207, v208, rhs.value, *&rhs.timescale, rhs.epoch, v210, *&v211.value);
              v83 = figTimebaseSetAnchorTimeMaybeNowMaybeNotifying();
            }
          }

          *&time[0].start.value = v222;
          time[0].start.epoch = v223;
          OUTLINED_FUNCTION_32(v83, v84, v85, v86, v87, v88, v89, v90, v139, v148, v157.n128_i64[0], v157.n128_i64[1], v175, v184, v194, v202, v206, *(&v206 + 1), v207, v208, rhs.value, *&rhs.timescale, rhs.epoch, v210, v211.value, *&v211.timescale, v211.epoch, v212, v213);
          v114 = OUTLINED_FUNCTION_18();
          CMTimeAdd(v116, v114, v115);
        }
      }

      CFRelease(v48);
      *&a4->value = v172;
      a4->epoch = epoch;
      if (a3 && dword_1ED4CC2A0)
      {
        LODWORD(v222) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v125 = OUTLINED_FUNCTION_34(v117, v118, v119, v120, v121, v122, v123, v124, v136, v144, v153, v161, v172, *(&v172 + 1), epoch, v199, v206, *(&v206 + 1), v207, v208, rhs.value, *&rhs.timescale, rhs.epoch, v210, v211.value, *&v211.timescale, v211.epoch, v212, v213, *(&v213 + 1), v214, v215, v216, *(&v216 + 1), v217, v218.value, *&v218.timescale, v218.epoch, *type, *&type[8], v220, v221);
        v126 = v222;
        v127 = type[0];
        if (os_log_type_enabled(v125, type[0]))
        {
          v128 = v126;
        }

        else
        {
          v128 = v126 & 0xFFFFFFFE;
        }

        if (v128)
        {
          OUTLINED_FUNCTION_11_0();
          v129 = CMTimeGetSeconds(&time[0].start);
          LODWORD(lhs.value) = 136315394;
          *(&lhs.value + 4) = "figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = v129;
          LODWORD(v152) = 22;
          _os_log_send_and_compose_impl(v128, 0, time, 128, &dword_196FA7000, v125, v127, "<<< timebase >>> %s: time: %1.3f for looping timebase type", &lhs, *&v152);
          LOBYTE(v126) = v222;
        }

        OUTLINED_FUNCTION_22();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v130, v131, v132, v133, v134, v126);
      }
    }

    CFRelease(v7);
  }
}

CMTime *__cdecl CMTimebaseGetTimeWithTimeScale(CMTime *__return_ptr retstr, CMTime *timebase, CMTimeScale timescale, CMTimeRoundingMethod method)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (timebase)
  {
    v7 = FigTimebaseCopyTargetTimebase(timebase);
    OUTLINED_FUNCTION_17(v7, retstr);
    if (timescale)
    {
      if ((retstr->flags & 0x1D) == 1 && retstr->timescale != timescale)
      {
        OUTLINED_FUNCTION_2_8();
        timebase = CMTimeConvertScale(retstr, &v9, timescale, method);
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return timebase;
}

OSStatus CMTimebaseSetTime(CMTimebaseRef timebase, CMTime *time)
{
  if (!timebase)
  {
    return -12748;
  }

  if ((time->flags & 0x1D) == 1)
  {
    result = figTimebaseVerifyReadWrite(timebase, time, v2, v3, v4, v5, v6, v7, v16);
    if (result)
    {
      return result;
    }

    if (*(timebase + 4) != 1)
    {
      OUTLINED_FUNCTION_12_0();
      return figTimebaseSetAnchorTimeMaybeNowMaybeNotifying();
    }

    OUTLINED_FUNCTION_0_11();
    v14 = 4294954539;
    v15 = 2371;
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    v14 = 4294954548;
    v15 = 2361;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v14, "<<< timebase >>>", v15, v11, v12, v13, v18);
}

OSStatus CMTimebaseSetAnchorTime(CMTimebaseRef timebase, CMTime *timebaseTime, CMTime *immediateSourceTime)
{
  if (!timebase)
  {
    return -12748;
  }

  if (*(timebase + 4) == 1)
  {
    v6 = qword_1ED4CC298;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFCE2BuLL, "<<< timebase >>>", 0x962, v5, v3, v4, v9);
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    return figTimebaseSetAnchorTimeMaybeNowMaybeNotifying();
  }
}

Float64 CMTimebaseGetRate(CMTimebaseRef timebase)
{
  if (!timebase)
  {
    return 0.0;
  }

  v2 = FigTimebaseCopyTargetTimebase(timebase);
  OUTLINED_FUNCTION_19(v2);
  v3 = *(v1 + 184);
  FigReentrantMutexUnlock(*(v1 + 112));
  CFRelease(v1);
  return v3;
}

OSStatus CMTimebaseGetTimeAndRate(CMTimebaseRef timebase, CMTime *timeOut, Float64 *rateOut)
{
  if (timebase)
  {
    OUTLINED_FUNCTION_19(timebase);
    if (timeOut)
    {
      OUTLINED_FUNCTION_10_1(&v7);
      *timeOut = v7;
      if (!rateOut)
      {
        goto LABEL_4;
      }
    }

    else if (!rateOut)
    {
LABEL_4:
      FigReentrantMutexUnlock(v3[14]);
      return 0;
    }

    *rateOut = CMTimebaseGetRate(v3);
    goto LABEL_4;
  }

  return -12748;
}

OSStatus CMTimebaseSetRate(CMTimebaseRef timebase, Float64 rate)
{
  if (!timebase)
  {
    return -12748;
  }

  result = figTimebaseVerifyReadWrite(timebase, v2, v3, v4, v5, v6, v7, v8, v18);
  if (!result)
  {
    OUTLINED_FUNCTION_12_0();
    return figTimebaseSetRateAndMaybeAnchorTime(timebase, v12, v13, 0, rate, v14, v15, v16, v17, kCMTimeInvalid.value);
  }

  return result;
}

uint64_t CMTimebaseSetRateAndAnchorTimeWithFlags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, uint64_t a8, double a9)
{
  if (!a1)
  {
    return 4294954548;
  }

  v9 = a4;
  result = figTimebaseVerifyReadWrite(a1, a2, a3, a4, a5, a6, a7, a8, v18.value);
  if (!result)
  {
    v19 = *a2;
    v20 = *(a2 + 16);
    OUTLINED_FUNCTION_2_8();
    return figTimebaseSetRateAndMaybeAnchorTime(a1, &v19, &v18, v9, a9, v14, v15, v16, v17, v18.value);
  }

  return result;
}

CMTimebaseRef CMTimebaseCopySourceTimebase(CMTimebaseRef timebase)
{
  if (!timebase)
  {
    return 0;
  }

  v1 = FigTimebaseCopyTargetTimebase(timebase);
  FigReentrantMutexLock(v1[14]);
  v2 = v1[17];
  if (v2)
  {
    CFRetain(v1[17]);
  }

  FigReentrantMutexUnlock(v1[14]);
  CFRelease(v1);
  return v2;
}

CMClockRef CMTimebaseCopySourceClock(CMTimebaseRef timebase)
{
  if (!timebase)
  {
    return 0;
  }

  v1 = FigTimebaseCopyTargetTimebase(timebase);
  FigReentrantMutexLock(v1[14]);
  v2 = v1[16];
  if (v2)
  {
    CFRetain(v1[16]);
  }

  FigReentrantMutexUnlock(v1[14]);
  CFRelease(v1);
  return v2;
}

CMTimebaseRef CMTimebaseGetMasterTimebase(CMTimebaseRef timebase)
{
  v1 = CMTimebaseCopySourceTimebase(timebase);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

CMClockOrTimebaseRef CMTimebaseCopySource(CMTimebaseRef timebase)
{
  if (!timebase)
  {
    return 0;
  }

  v2 = FigTimebaseCopyTargetTimebase(timebase);
  OUTLINED_FUNCTION_19(v2);
  v3 = *(v1 + 136);
  if (v3 || (v3 = *(v1 + 128)) != 0)
  {
    CFRetain(v3);
  }

  FigReentrantMutexUnlock(*(v1 + 112));
  CFRelease(v1);
  return v3;
}

os_unfair_lock_s *FigTimebaseCopyUltimateMasterClockAndHeight(os_unfair_lock_s **a1, os_unfair_lock_s **a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = FigTimebaseCopyTargetTimebase(a1);
  FigReentrantMutexLock(v3[14]);
  v4 = v3[18];
  if (v4)
  {
    CFRetain(v3[18]);
  }

  v5 = v3[19];
  FigReentrantMutexUnlock(v3[14]);
  if (a2 && v4)
  {
    *a2 = v5;
  }

  CFRelease(v3);
  return v4;
}

OSStatus CMTimebaseSetSourceClock(CMTimebaseRef timebase, CMClockRef newSourceClock)
{
  result = -12748;
  if (timebase)
  {
    if (newSourceClock)
    {
      result = figTimebaseVerifyReadWrite(timebase, newSourceClock, v2, v3, v4, v5, v6, v7, v10);
      if (!result)
      {

        return figTimebaseSetMaster();
      }
    }
  }

  return result;
}

uint64_t figTimebaseSetMaster()
{
  OUTLINED_FUNCTION_27(&kCMTimeInvalid);
  if (!v0)
  {
    return 4294954548;
  }

  v3 = v2;
  v4 = v1;
  if ((v1 == 0) == (v2 == 0))
  {
    return 4294954548;
  }

  v5 = v0;
  OUTLINED_FUNCTION_17(v0, &v115);
  CFGetAllocator(v5);
  OUTLINED_FUNCTION_0_18(v6, v7, v8, v9, v10, v11, v12, v13, *&v111.value, *&v111.timescale, *&v111.epoch, *&v112, *&time1.value, *&time1.timescale, *&time1.epoch, v114, *&v115.value);
  PayloadForNotificationAtTime = figTimebaseCreatePayloadForNotificationAtTime(v14, v15);
  OUTLINED_FUNCTION_20(PayloadForNotificationAtTime, @"CMTimebaseMasterWillChange", v17, v18, v19, v20, v21, v22, v111.value);
  FigReentrantMutexLock(v5[14]);
  OUTLINED_FUNCTION_10_1(&v115);
  EffectiveRate = CMTimebaseGetEffectiveRate(v5);
  v24 = OUTLINED_FUNCTION_28();
  figTimebaseSwitchListenersToNewMaster(v24, v25, v26, v27, v28, v29, v30, v31, v111.value);
  v32 = v5[16];
  if (v32)
  {
    v33 = CFRetain(v32);
  }

  else
  {
    v33 = 0;
  }

  v34 = v5[17];
  if (v34 && (v35 = CFRetain(v34)) != 0)
  {
    v36 = v35;
    OUTLINED_FUNCTION_17(v35, &time1);
    v37 = 0;
  }

  else
  {
    CMClockGetTime(&time1, v33);
    v36 = 0;
    v37 = 1;
  }

  v38 = v5[16];
  v5[16] = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  v39 = v5[17];
  v5[17] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  v40 = v5[18];
  UltimateMasterClock = figTimebaseFindUltimateMasterClock(v5, v5 + 19);
  v5[18] = UltimateMasterClock;
  if (UltimateMasterClock)
  {
    CFRetain(UltimateMasterClock);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  time1 = *(v5 + 8);
  v111 = v115;
  if (CMTimeCompare(&time1, &v111) > 0)
  {
    if (v37)
    {
      v42 = v33;
    }

    else
    {
      v42 = v36;
    }

    if (v4)
    {
      v43 = v4;
    }

    else
    {
      v43 = v3;
    }

    v111 = *(v5 + 20);
    v44 = CMSyncConvertTime(&time1, &v111, v42, v43);
    OUTLINED_FUNCTION_9_2(v44, v45, v46, v47, v48, v49, v50, v51, v52, v111.value, *&v111.timescale, v111.epoch, v112, v53, time1.value);
    *(v5 + 216) = 0;
    v54 = v5 + 27;
    if (v4)
    {
      goto LABEL_35;
    }

LABEL_33:
    CMClockGetTime(&time1, v3);
    goto LABEL_36;
  }

  *(v5 + 8) = v115;
  v54 = v5 + 27;
  if (!v4)
  {
    Time = CMClockGetTime(&time1, v3);
    OUTLINED_FUNCTION_9_2(Time, v56, v57, v58, v59, v60, v61, v62, v63, v111.value, *&v111.timescale, v111.epoch, v112, v64, time1.value);
    *v54 = 0;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_17(v4, &time1);
  OUTLINED_FUNCTION_9_2(v65, v66, v67, v68, v69, v70, v71, v72, v73, v111.value, *&v111.timescale, v111.epoch, v112, v74, time1.value);
  *v54 = 0;
LABEL_35:
  OUTLINED_FUNCTION_17(v4, &time1);
LABEL_36:
  if (*(v5 + 23) != 0.0)
  {
    FigSyncInvertTransform((v5 + 20), (v5 + 28));
    if (!v75)
    {
      *v54 = 1;
    }
  }

  if (CMTimebaseGetEffectiveRate(v5) == EffectiveRate)
  {
    v76 = FigReentrantMutexUnlock(v5[14]);
    v83 = @"CMTimebaseMasterDidChange";
  }

  else
  {
    CMTimebaseGetEffectiveRate(v5);
    OUTLINED_FUNCTION_21();
    if (!(v96 ^ v97 | v85))
    {
      v87 = 1;
    }

    if (v85)
    {
      v87 = v86;
    }

    *(v5 + 80) = v87;
    if (v5[35])
    {
      OUTLINED_FUNCTION_0_18(v88, v89, v90, v91, v92, v93, v94, v95, *&v111.value, *&v111.timescale, *&v111.epoch, *&v112, *&time1.value, *&time1.timescale, *&time1.epoch, v114, *&v115.value);
      v98 = OUTLINED_FUNCTION_28();
      rescheduleValidAndRemoveInvalidTimers(v98, v99, v100);
    }

    if (v5[38])
    {
      OUTLINED_FUNCTION_0_18(v88, v89, v90, v91, v92, v93, v94, v95, *&v111.value, *&v111.timescale, *&v111.epoch, *&v112, *&time1.value, *&time1.timescale, *&time1.epoch, v114, *&v115.value);
      v101 = OUTLINED_FUNCTION_28();
      rescheduleValidAndRemoveCancelledTimerSources(v101, v102, v103);
    }

    v104 = FigReentrantMutexUnlock(v5[14]);
    v76 = OUTLINED_FUNCTION_20(v104, @"CMTimebaseMasterDidChange", v105, v106, v107, v108, v109, v110, v111.value);
    v83 = @"CMTimebaseEffectiveRateChanged";
  }

  OUTLINED_FUNCTION_20(v76, v83, v77, v78, v79, v80, v81, v82, v111.value);
  if (PayloadForNotificationAtTime)
  {
    CFRelease(PayloadForNotificationAtTime);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  return 0;
}

OSStatus CMTimebaseSetSourceTimebase(CMTimebaseRef timebase, CMTimebaseRef newSourceTimebase)
{
  result = -12748;
  if (timebase)
  {
    if (newSourceTimebase)
    {
      result = figTimebaseVerifyReadWrite(timebase, newSourceTimebase, v2, v3, v4, v5, v6, v7, v11);
      if (!result)
      {
        if (figTimebaseIsDescendantOfTimebase(newSourceTimebase, timebase))
        {
          return -12749;
        }

        else
        {

          return figTimebaseSetMaster();
        }
      }
    }
  }

  return result;
}

OSStatus CMTimebaseAddTimer(CMTimebaseRef timebase, CFRunLoopTimerRef timer, CFRunLoopRef runloop)
{
  if (!timebase)
  {
    return -12748;
  }

  v4 = -12748;
  if (!timer || !runloop)
  {
    return v4;
  }

  if (CFRunLoopTimerGetInterval(timer) >= 86400.0)
  {
    FigReentrantMutexLock(*(timebase + 14));
    if (*(timebase + 35) || (OUTLINED_FUNCTION_7_3(), valueCallBacks.release = cfDataFigTimeRelease, valueCallBacks.equal = cfDataFigTimeEqual, valueCallBacks.copyDescription = cfDataFigTimeCopyDescription, v12 = CFGetAllocator(timebase), v13 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], &valueCallBacks), (*(timebase + 35) = v13) != 0))
    {
      if (!*(timebase + 36))
      {
        CFGetAllocator(timebase);
        OUTLINED_FUNCTION_26();
        Mutable = CFDictionaryCreateMutable(v14, v15, v16, v17);
        *(timebase + 36) = Mutable;
        if (!Mutable)
        {
          OUTLINED_FUNCTION_6_5();
          v26 = 4294954546;
          v27 = 3470;
          goto LABEL_24;
        }
      }

      if (!*(timebase + 37))
      {
        v19 = CFGetAllocator(timebase);
        v20 = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(timebase + 37) = v20;
        if (!v20)
        {
          OUTLINED_FUNCTION_6_5();
          v26 = 4294954546;
          v27 = 3478;
          goto LABEL_24;
        }
      }

      if (CFDictionaryContainsKey(*(timebase + 35), timer))
      {
        Value = CFDictionaryGetValue(*(timebase + 37), timer);
        if (!FigCFEqual(Value, runloop))
        {
          OUTLINED_FUNCTION_6_5();
          v26 = 4294954547;
          v27 = 3500;
LABEL_24:
          v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v26, "<<< timebase >>>", v27, v23, v24, v25, v31);
          goto LABEL_25;
        }
      }

      else
      {
        v28 = CFGetAllocator(timebase);
        v29 = CFDataCreate(v28, &kCMTimeInvalid, 24);
        if (!v29)
        {
          OUTLINED_FUNCTION_6_5();
          v26 = 4294954546;
          v27 = 3486;
          goto LABEL_24;
        }

        v30 = v29;
        CFRunLoopTimerSetNextFireDate(timer, 8073216000.0);
        CFRunLoopWakeUp(runloop);
        CFDictionaryAddValue(*(timebase + 35), timer, v30);
        CFRelease(v30);
        CFDictionaryAddValue(*(timebase + 37), timer, runloop);
      }

      v4 = 0;
LABEL_25:
      FigReentrantMutexUnlock(*(timebase + 14));
      return v4;
    }

    OUTLINED_FUNCTION_6_5();
    v26 = 4294954546;
    v27 = 3462;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_6_5();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE31uLL, "<<< timebase >>>", 0xD74, v8, v9, v10, v34);
}

OSStatus CMTimebaseRemoveTimer(CMTimebaseRef timebase, CFRunLoopTimerRef timer)
{
  v3 = -12748;
  if (timebase && timer)
  {
    OUTLINED_FUNCTION_19(timebase);
    v5 = *(v2 + 280);
    if (v5 && CFDictionaryContainsKey(v5, timer))
    {
      v6 = OUTLINED_FUNCTION_30();
      CFDictionaryRemoveValue(v6, v7);
      CFDictionaryRemoveValue(*(v2 + 288), timer);
      CFDictionaryRemoveValue(*(v2 + 296), timer);
      CFRunLoopTimerSetNextFireDate(timer, 8073216000.0);
      v3 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_6_5();
      v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 0xFFFFCE33uLL, "<<< timebase >>>", 0xDC8, v9, v10, v11, v13);
    }

    FigReentrantMutexUnlock(*(v2 + 112));
  }

  return v3;
}

OSStatus CMTimebaseSetTimerNextFireTime(CMTimebaseRef timebase, CFRunLoopTimerRef timer, CMTime *fireTime, uint32_t flags)
{
  v5 = -12748;
  if (timebase && timer)
  {
    OUTLINED_FUNCTION_19(timebase);
    v9 = *(v4 + 280);
    if (v9 && CFDictionaryContainsKey(v9, timer))
    {
      if (CFRunLoopTimerIsValid(timer))
      {
        v10 = *(v4 + 296);
        if (v10)
        {
          Value = CFDictionaryGetValue(v10, timer);
          if (Value)
          {
            v12 = Value;
            v13 = CFGetAllocator(v4);
            v14 = CFDataCreate(v13, fireTime, 24);
            if (v14)
            {
              v24 = v14;
              v25 = OUTLINED_FUNCTION_30();
              CFDictionaryReplaceValue(v25, v26, v24);
              CFRelease(v24);
              CFDictionarySetValue(*(v4 + 288), timer, flags);
              OUTLINED_FUNCTION_10_1(&v28);
              v27 = *fireTime;
              rescheduleTimer(timer, v12, &v27, v4, &v28, 2, flags);
              v5 = 0;
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_23();
            v19 = 4294954546;
            v20 = 3589;
          }

          else
          {
            OUTLINED_FUNCTION_23();
            v19 = 4294954547;
            v20 = 3582;
          }
        }

        else
        {
          OUTLINED_FUNCTION_23();
          v19 = 4294954547;
          v20 = 3576;
        }
      }

      else
      {
        v22 = OUTLINED_FUNCTION_30();
        CFDictionaryRemoveValue(v22, v23);
        CFDictionaryRemoveValue(*(v4 + 288), timer);
        CFDictionaryRemoveValue(*(v4 + 296), timer);
        OUTLINED_FUNCTION_23();
        v19 = 4294954547;
        v20 = 3571;
      }
    }

    else
    {
      OUTLINED_FUNCTION_23();
      v19 = 4294954547;
      v20 = 3563;
    }

    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v19, "<<< timebase >>>", v20, v16, v17, v18, v27.value);
LABEL_12:
    FigReentrantMutexUnlock(*(v4 + 112));
  }

  return v5;
}

OSStatus CMTimebaseSetTimerToFireImmediately(CMTimebaseRef timebase, CFRunLoopTimerRef timer)
{
  v3 = -12748;
  if (timebase && timer)
  {
    OUTLINED_FUNCTION_19(timebase);
    v5 = *(v2 + 280);
    if (v5 && CFDictionaryContainsKey(v5, timer))
    {
      if (CFRunLoopTimerIsValid(timer))
      {
        v6 = *(v2 + 296);
        if (v6)
        {
          Value = CFDictionaryGetValue(v6, timer);
          if (Value)
          {
            v8 = Value;
            CFDictionaryReplaceValue(*(v2 + 280), timer, *MEMORY[0x1E695E4C0]);
            Current = CFAbsoluteTimeGetCurrent();
            CFRunLoopTimerSetNextFireDate(timer, Current);
            CFRunLoopWakeUp(v8);
            v3 = 0;
LABEL_11:
            FigReentrantMutexUnlock(*(v2 + 112));
            return v3;
          }

          OUTLINED_FUNCTION_6_5();
          v14 = 3642;
        }

        else
        {
          OUTLINED_FUNCTION_6_5();
          v14 = 3636;
        }
      }

      else
      {
        v16 = OUTLINED_FUNCTION_30();
        CFDictionaryRemoveValue(v16, v17);
        CFDictionaryRemoveValue(*(v2 + 288), timer);
        CFDictionaryRemoveValue(*(v2 + 296), timer);
        OUTLINED_FUNCTION_6_5();
        v14 = 3631;
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_5();
      v14 = 3623;
    }

    v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCE33uLL, "<<< timebase >>>", v14, v11, v12, v13, v18);
    goto LABEL_11;
  }

  return v3;
}

OSStatus CMTimebaseRemoveTimerDispatchSource(CMTimebaseRef timebase, dispatch_source_t timerSource)
{
  v3 = -12748;
  if (timebase && timerSource)
  {
    OUTLINED_FUNCTION_19(timebase);
    v5 = *(v2 + 304);
    if (v5 && CFDictionaryContainsKey(v5, timerSource))
    {
      CFDictionaryRemoveValue(*(v2 + 304), timerSource);
      CFDictionaryRemoveValue(*(v2 + 312), timerSource);
      OUTLINED_FUNCTION_26();
      dispatch_source_set_timer(v6, v7, v8, v9);
      v3 = 0;
    }

    else
    {
      v3 = -12749;
    }

    FigReentrantMutexUnlock(*(v2 + 112));
  }

  return v3;
}

OSStatus CMTimebaseSetTimerDispatchSourceToFireImmediately(CMTimebaseRef timebase, dispatch_source_t timerSource)
{
  v3 = -12748;
  if (timebase && timerSource)
  {
    OUTLINED_FUNCTION_19(timebase);
    v5 = *(v2 + 304);
    if (v5 && CFDictionaryContainsKey(v5, timerSource))
    {
      v6 = dispatch_source_testcancel(timerSource);
      v7 = *(v2 + 304);
      if (!v6)
      {
        CFDictionaryReplaceValue(v7, timerSource, *MEMORY[0x1E695E4C0]);
        dispatch_source_set_timer(timerSource, 0, 0x7009D32DA3000000uLL, 0);
        v3 = 0;
        goto LABEL_9;
      }

      CFDictionaryRemoveValue(v7, timerSource);
      CFDictionaryRemoveValue(*(v2 + 312), timerSource);
      OUTLINED_FUNCTION_6_5();
      v12 = 3880;
    }

    else
    {
      OUTLINED_FUNCTION_6_5();
      v12 = 3873;
    }

    v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 0xFFFFCE33uLL, "<<< timebase >>>", v12, v9, v10, v11, v14);
LABEL_9:
    FigReentrantMutexUnlock(*(v2 + 112));
  }

  return v3;
}

OSStatus CMTimebaseNotificationBarrier(CMTimebaseRef timebase)
{
  if (!timebase)
  {
    return -12748;
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterBarrier(DefaultLocalCenter, timebase, v3, v4, v5, v6, v7, v8, v11);
}

void figTimebaseGetAnchorTimebaseTimeIfClamped(os_unfair_lock_s **a1@<X0>, CMTime *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *&kCMTimeInvalid.value;
  *(a4 + 16) = 0;
  v8 = FigTimebaseCopyUltimateMasterClockAndHeight(a1, 0);
  v9 = CMTimebaseCopySource(a1);
  v10 = v9;
  if (v8 && v9)
  {
    v28 = 0.0;
    outRelativeRate = 0.0;
    memset(&outOfClockOrTimebaseAnchorTime, 0, sizeof(outOfClockOrTimebaseAnchorTime));
    memset(&outRelativeToClockOrTimebaseAnchorTime, 0, sizeof(outRelativeToClockOrTimebaseAnchorTime));
    CMSyncGetRelativeRateAndAnchorTime(a1, v8, &outRelativeRate, 0, 0);
    CMSyncGetRelativeRateAndAnchorTime(a1, v10, 0, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
    CMSyncGetRelativeRateAndAnchorTime(v10, v8, &v28, 0, 0);
    Time = CMSyncGetTime(&v27, v10);
    if (outRelativeRate == 0.0)
    {
LABEL_9:
      v20 = 0;
LABEL_17:
      *a3 = v20;
      goto LABEL_18;
    }

    v19 = v28;
    if (v28 > 0.0)
    {
      Time = OUTLINED_FUNCTION_14(Time, v12, v13, v14, v15, v16, v17, v18, *&v22.value, v22.epoch, v23, *&v24.value, v24.epoch, *&outRelativeToClockOrTimebaseAnchorTime.value, outRelativeToClockOrTimebaseAnchorTime.epoch);
      if (Time > 0)
      {
        goto LABEL_14;
      }

      v19 = v28;
    }

    if (v19 >= 0.0 || (OUTLINED_FUNCTION_14(Time, v12, v13, v14, v15, v16, v17, v18, *&v22.value, v22.epoch, v23, *&v24.value, v24.epoch, *&outRelativeToClockOrTimebaseAnchorTime.value, outRelativeToClockOrTimebaseAnchorTime.epoch) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    *a4 = outOfClockOrTimebaseAnchorTime;
    if (a2)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      v22 = outRelativeToClockOrTimebaseAnchorTime;
      CMSyncConvertTime(&v24, &v22, v10, HostTimeClock);
      *a2 = v24;
    }

    v20 = 1;
    goto LABEL_17;
  }

  *a3 = 0;
  if (!v8)
  {
    if (!v9)
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_18:
  CFRelease(v8);
  if (!v10)
  {
    return;
  }

LABEL_12:
  CFRelease(v10);
}