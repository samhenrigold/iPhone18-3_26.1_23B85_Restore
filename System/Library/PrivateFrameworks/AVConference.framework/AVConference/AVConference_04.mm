unint64_t JitterQueue_Pop(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = result + 1272;
    v4 = *(result + 1240);
    if (v4)
    {
      *(v4 + 1248) = 0;
      *(a1 + 8) = v4;
      if (result >= v3)
      {
        goto LABEL_16;
      }

      v5 = *(v4 + 12);
      v6 = *(result + 12);
      v7 = *(result + 1172);
      v8 = *(a1 + 16);
      v9 = *(a1 + 20);
      v10 = *(a1 + 56) - 1;
      *(a1 + 56) = v10;
      if (v5 - v6 - v7 > v8 || v5 == v6)
      {
        v12 = v7;
      }

      else
      {
        v12 = v5 - v6;
      }

      v13 = v9 - v12;
      *(a1 + 20) = v13;
      if (v13 >= 1)
      {
        v14 = *(result + 1172);
        if (v14 >= 1)
        {
          *(a1 + 52) = (v13 - v10 * v14) / v14;
        }
      }
    }

    else
    {
      *(a1 + 20) = 0;
      *(a1 + 52) = 0;
      *(a1 + 56) = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    if (result < v3)
    {
      return result;
    }

LABEL_16:
    __break(0x5519u);
  }

  return result;
}

unint64_t JitterQueue_Purge(unint64_t result, uint64_t (*a2)(void))
{
  if (a2)
  {
    v2 = result;
    for (result = *(result + 8); result; result = *(v2 + 8))
    {
      result = a2();
      if (!result)
      {
        break;
      }

      result = JitterQueue_Pop(v2);
      if (result >= result + 1272)
      {
        __break(0x5519u);
        return result;
      }

      (*(result + 1200))(*(result + 1208));
    }
  }

  return result;
}

uint64_t JitterQueue_CheckQSizeBeforePop(uint64_t result)
{
  v1 = *(result + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 1240);
  if (!v2)
  {
    return 0;
  }

  if (v1 >= v1 + 1272)
  {
    __break(0x5519u);
  }

  else
  {
    v3 = *(v2 + 12);
    v4 = *(v1 + 12);
    v5 = *(v1 + 1172);
    v6 = v3 - v4 - v5;
    v7 = v3 - v4;
    v8 = *(result + 20);
    if (v7)
    {
      v9 = v6 > *(result + 16);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return (v8 - v5);
    }

    else
    {
      return (v8 - v7);
    }
  }

  return result;
}

uint64_t JitterQueue_GetSizeOfNextFrame(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 1172);
  }

  else
  {
    return 0;
  }
}

BOOL JitterQueue_GetOldestArrivalTimeStamp(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *a2 = *(v2 + 1192);
  }

  return v2 != 0;
}

BOOL JitterQueue_HasDTXPacket(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  do
  {
    v2 = *(v1 + 1176);
    result = v2 != 0;
    if (v2)
    {
      break;
    }

    v1 = *(v1 + 1240);
  }

  while (v1);
  return result;
}

uint64_t JitterQueue_QueueEmptyOrAllDTX(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      do
      {
        v1 = *(v1 + 1240);
      }

      while (v1);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void JitterQueue_DiscardExcess(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (*a1)
  {
    while (1)
    {
      v5 = *(v3 + 1172);
      v6 = *(v3 + 12);
      v7 = *(a1 + 8);
      if (v6 + v5 - *(v7 + 12) <= (*(v7 + 1172) + a2))
      {
        break;
      }

      v8 = *(v7 + 1240);
      v9 = (v8 + 1248);
      if (!v8)
      {
        v9 = a1;
      }

      *v9 = 0;
      v5 = v7 + 1272;
      *(a1 + 8) = v8;
      if (v7 >= v7 + 1272)
      {
        __break(0x5519u);
        goto LABEL_23;
      }

      (*(v7 + 1200))(*(v7 + 1208));
      v3 = *a1;
      if (!*a1)
      {
        goto LABEL_7;
      }
    }

    v10 = *(v3 + 1248);
    if (v10)
    {
      while (v3 < v3 + 1272)
      {
        v3 = v10;
        v11 = *(v10 + 12);
        if ((v6 - v11 - *(v10 + 1172)) > *(a1 + 16) || v6 == v11)
        {
          v13 = *(v10 + 1172);
        }

        else
        {
          v13 = v6 - v11;
        }

        v5 += v13;
        v10 = *(v10 + 1248);
        v6 = v11;
        if (!v10)
        {
          goto LABEL_17;
        }
      }

LABEL_23:
      *(a1 + 20) = v5;
      __break(0x5519u);
    }

LABEL_17:
    *(a1 + 20) = v5;
  }

  else
  {
LABEL_7:
    *(a1 + 20) = 0;
    *(a1 + 52) = 0;
    *(a1 + 56) = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 20);
      v17 = 136315906;
      v18 = v14;
      v19 = 2080;
      v20 = "JitterQueue_DiscardExcess";
      v21 = 1024;
      v22 = 408;
      v23 = 1024;
      v24 = v16;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Discard excess performed. New size=%d", &v17, 0x22u);
    }
  }
}

_DWORD *JitterQueue_GetUnderflowRateForInterval(_DWORD *result)
{
  v1 = result[10];
  result[15] = result[12];
  result[16] = v1;
  return result;
}

double JitterQueue_GetUnderflowRate(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0.0;
  }

  *&result = *(a1 + 40) / v1;
  return result;
}

_DWORD *JitterQueue_ResetUnderflowRate(_DWORD *result)
{
  if (result)
  {
    result[10] = 0;
    result[12] = 0;
    result[15] = 0;
    result[16] = 0;
  }

  return result;
}

BOOL JitterQueue_GetNextFrameTimestamp(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *a2 = *(v2 + 12);
  }

  return v2 != 0;
}

uint64_t JitterQueue_GetLastFramePriority(uint64_t result, _BYTE *a2, BOOL *a3)
{
  if (result)
  {
    v3 = *(result + 8);
    if (v3)
    {
      if (a2)
      {
        *a2 = *(v3 + 1232);
      }

      if (a3)
      {
        *a3 = *(*(result + 8) + 1240) == 0;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t JitterQueue_GetTimestampDeltaToNextDTXPacket(uint64_t a1, _DWORD *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(v4 + 12);
      while (!*(v4 + 1176))
      {
        v4 = *(v4 + 1240);
        if (!v4)
        {
          goto LABEL_7;
        }
      }

      LODWORD(v4) = *(v4 + 12) - v5;
      result = 1;
    }

    else
    {
LABEL_7:
      result = 0;
    }

    *a2 = v4;
  }

  return result;
}

uint64_t VCNWConnectionMonitor_Create(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 && *a1)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = 0;
    v3 = VTP_NWConnectionQueue(a1, a2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNWConnectionMonitor_Create_block_invoke;
    block[3] = &unk_1E85F5178;
    block[4] = &v7;
    block[5] = a1;
    dispatch_sync(v3, block);
    v4 = v8[3];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCNWConnectionMonitor_Create_cold_1();
      }
    }

    return 0;
  }

  return v4;
}

uint64_t VCNWConnectionMonitor_CreateWithInterfaceName(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v17 = 0;
    v9 = VTP_NWConnectionQueue(a1, a2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNWConnectionMonitor_CreateWithInterfaceName_block_invoke;
    block[3] = &unk_1E85F51A0;
    v15 = a3;
    block[4] = a5;
    block[5] = buf;
    block[6] = a1;
    block[7] = a4;
    dispatch_sync(v9, block);
    v10 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "VCNWConnectionMonitor_CreateWithInterfaceName";
        *&buf[22] = 1024;
        LODWORD(v17) = 174;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Monitor cannot be created with an invalid interfaceName", buf, 0x1Cu);
      }
    }

    return 0;
  }

  return v10;
}

void VCNWConnectionMonitor_Destroy(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (ErrorLogLevelForModule)
      {
        *buf = 136315906;
        v11 = v4;
        v12 = 2080;
        v13 = "VCNWConnectionMonitor_Destroy";
        v14 = 1024;
        v15 = 205;
        v16 = 2048;
        v17 = a1;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Destroying monitor=%p", buf, 0x26u);
      }
    }

    v6 = VTP_NWConnectionQueue(ErrorLogLevelForModule, v3);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNWConnectionMonitor_Destroy_block_invoke;
    block[3] = &__block_descriptor_tmp_3_0;
    block[4] = a1;
    dispatch_sync(v6, block);
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v11 = v7;
      v12 = 2080;
      v13 = "VCNWConnectionMonitor_Destroy";
      v14 = 1024;
      v15 = 210;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d monitor is null!", buf, 0x1Cu);
    }
  }
}

void _VCNWConnectionMonitor_DispatchedProcessInterfaceAdvisoryNotification(uint64_t a1, void (*a2)(uint64_t, void *), __int128 *a3)
{
  v6 = VTP_NWConnectionQueue(a1, a2);
  dispatch_assert_queue_V2(v6);
  if (a1 && a2)
  {
    v7 = malloc_type_calloc(1uLL, 0x68uLL, 0x10000405DD82A02uLL);
    if (v7)
    {
      v8 = v7;
      VCNWConnectionMonitorUtils_GetNotificationFromAdvisory(a3, v7);
      a2(a1, v8);

      free(v8);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCNWConnectionMonitor_DispatchedProcessInterfaceAdvisoryNotification_cold_1();
      }
    }
  }
}

void VCNWConnectionMonitor_SetNotificationHandler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1 && a3 && a4 && *a1)
  {
    v8 = VTP_NWConnectionQueue(a1, a2);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __VCNWConnectionMonitor_SetNotificationHandler_block_invoke;
    v12[3] = &__block_descriptor_tmp_4;
    v12[4] = a1;
    v12[5] = a2;
    v12[6] = a3;
    v12[7] = a4;
    dispatch_async(v8, v12);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v11 = *a1;
      }

      else
      {
        v11 = 0;
      }

      *buf = 136316674;
      v14 = v9;
      v15 = 2080;
      v16 = "VCNWConnectionMonitor_SetNotificationHandler";
      v17 = 1024;
      v18 = 270;
      v19 = 2048;
      v20 = a1;
      v21 = 2048;
      v22 = a4;
      v23 = 2048;
      v24 = a3;
      v25 = 2048;
      v26 = v11;
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d Monitor, handler or context cannot be NULL, monitor=%p, handler=%p, context=%p, monitor->nwMonitor=%p", buf, 0x44u);
    }
  }
}

void VCNWConnectionMonitor_SetPacketEventHandler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1 && a3 && a4 && *a1)
  {
    v8 = VTP_NWConnectionQueue(a1, a2);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __VCNWConnectionMonitor_SetPacketEventHandler_block_invoke;
    v12[3] = &__block_descriptor_tmp_5;
    v12[4] = a1;
    v12[5] = a2;
    v12[6] = a3;
    v12[7] = a4;
    dispatch_async(v8, v12);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v11 = *a1;
      }

      else
      {
        v11 = 0;
      }

      *buf = 136316674;
      v14 = v9;
      v15 = 2080;
      v16 = "VCNWConnectionMonitor_SetPacketEventHandler";
      v17 = 1024;
      v18 = 314;
      v19 = 2048;
      v20 = a1;
      v21 = 2048;
      v22 = a4;
      v23 = 2048;
      v24 = a3;
      v25 = 2048;
      v26 = v11;
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d monitor, handler or context cannot be NULL, monitor=%p, handler=%p, context=%p monitor->nwMonitor=%p", buf, 0x44u);
    }
  }
}

void _VCNWConnectionMonitor_AddNotification(uint64_t result, __int128 *a2)
{
  if (result)
  {
    v2 = *a2;
    *(result + 24048) = a2[1];
    *(result + 24032) = v2;
    v3 = a2[2];
    v4 = a2[3];
    v5 = a2[4];
    *(result + 24112) = a2[5];
    *(result + 24096) = v5;
    *(result + 24080) = v4;
    *(result + 24064) = v3;
    v6 = (result + 96 * *(result + 26));
    v7 = a2[1];
    v6[2] = *a2;
    v6[3] = v7;
    v9 = a2[4];
    v8 = a2[5];
    v10 = a2[3];
    v6[4] = a2[2];
    v6[5] = v10;
    v6[6] = v9;
    v6[7] = v8;
    *(result + 26) = (*(result + 26) + 1) % 250;
    v11 = *(result + 24);
    if (v11 < 249)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 250;
    }

    *(result + 24) = v12;
  }

  else
  {
    _VCNWConnectionMonitor_AddNotification_cold_1();
  }
}

void _VCNWConnectionMonitor_LogSignalsAndMetrics(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  if (a2[2] == 2)
  {
    VRLogfilePrintWithTimestamp(v2, "%llu\t%u\t%u\t%llu\t%llu\t%u\t%u\t%u\t%llu\t%u\t%u\t%u\n", v5, v3, v4, v6);
  }

  else
  {
    VRLogfilePrintWithTimestamp(v2, "%llu\t%u\t%u\t%llu\t%llu\t%u\t%u\t%u\t%llu\t%u\t%d\t%u\t%u\t%u\t%u\t0x%x\t%u\t%u\t%u\t%u\t%u\t%2.4f\t%u\t%u\t%u\t%u\t%u\t%u\t%u\n", v5, v3, v4, v6, *(a2 + 3), *(a2 + 8), *(a2 + 9), *(a2 + 10), *(a2 + 6), *(a2 + 14), a2[72], a2[73]);
  }
}

double _VCNWConnectionMonitor_ComputeMetrics(uint64_t a1, uint64_t a2, double result)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*(a2 + 2) != 2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(a1 + 26) + 249;
    v10 = 0uLL;
    v11 = 0;
    v12 = 250;
    while (1)
    {
      v13 = a1 + 32 + 96 * (v9 - 250 * (((274877907 * v9) >> 36) + ((274877907 * v9) >> 63)));
      v14 = *(v13 + 8);
      if (!v5)
      {
        v5 = *(v13 + 8);
      }

      v15 = v5 - v14;
      if (v5 - v14 > *(a1 + 24164))
      {
        break;
      }

      v16.i32[0] = *(v13 + 59);
      v16.i32[1] = *(v13 + 60);
      v17 = vuzp1_s16(v16, v11);
      v18 = vzip1_s16(v17, v17);
      v19 = vcvtq_f32_u32(vmovl_u16(vtrn2_s16(vrev32_s16(vshr_n_u16(v18, 4uLL)), (*&v18 & 0xFF0FFF0FFF0FFF0FLL))));
      v10 = vaddq_f32(v10, v19);
      v19.i8[0] = *(v13 + 61);
      *v11.i32 = *v11.i32 + v19.u32[0];
      v20 = *(v13 + 53);
      v21 = *(v13 + 54);
      v23 = v8 != 1 && v21 != 0xFFFF;
      v24 = v23 && v20 == 1;
      v7 += v24;
      if (v24)
      {
        v25 = v21;
      }

      else
      {
        v25 = 0;
      }

      v6 += v25;
      --v9;
      --v4;
      v8 = v20;
      if (v4 == -250)
      {
        goto LABEL_19;
      }
    }

    if (v4)
    {
      v12 = -v4;
LABEL_19:
      v26 = vdupq_lane_s64(COERCE__INT64(v12), 0);
      v27 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v10.f32), v26)), vdivq_f64(vcvt_hight_f64_f32(v10), v26));
      v28 = *v11.i32 / v12;
      goto LABEL_20;
    }

    v27 = 0uLL;
    v28 = 0.0;
LABEL_20:
    *(a2 + 140) = v27;
    *(a2 + 156) = v28;
    v29 = 0.0;
    if (v5 != v14)
    {
      v29 = v6 / v15;
    }

    *(a2 + 88) = v29;
    v30 = v7;
    v32 = v7 > 2u || v6 >> 3 > 0x270;
    *(a2 + 92) = v32;
    v33 = *(a1 + 24152) + v6;
    *(a1 + 24152) = v33;
    *(a2 + 128) = v33;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x1E6986650];
      v36 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(a2 + 88);
          v38 = *(a2 + 92);
          v41 = 136316930;
          v42 = v34;
          v43 = 2080;
          v44 = "_VCNWConnectionMonitor_ComputeMetrics";
          v45 = 1024;
          v46 = 505;
          v47 = 2048;
          v48 = v15;
          v49 = 2048;
          v50 = v6;
          v51 = 2048;
          v52 = v37;
          v53 = 1024;
          v54 = v30;
          v55 = 1024;
          v56 = v38;
          _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Off Channel Metrics currentTimeDelta=%llu accumulatedOffChannelTime=%llu statistics->offChannelTimeRatio=%4.4f offChannelSwitchCount=%u statistics->detectedFrequentOffChannelActivity=%d", &v41, 0x46u);
        }
      }

      else if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(a2 + 88);
        v40 = *(a2 + 92);
        v41 = 136316930;
        v42 = v34;
        v43 = 2080;
        v44 = "_VCNWConnectionMonitor_ComputeMetrics";
        v45 = 1024;
        v46 = 505;
        v47 = 2048;
        v48 = v15;
        v49 = 2048;
        v50 = v6;
        v51 = 2048;
        v52 = v39;
        v53 = 1024;
        v54 = v30;
        v55 = 1024;
        v56 = v40;
        _os_log_debug_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Off Channel Metrics currentTimeDelta=%llu accumulatedOffChannelTime=%llu statistics->offChannelTimeRatio=%4.4f offChannelSwitchCount=%u statistics->detectedFrequentOffChannelActivity=%d", &v41, 0x46u);
      }
    }
  }

  return result;
}

void _VCNWConnectionMonitor_ProcessNotification(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a2)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v9 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a2 + 8);
          *v25 = 136315906;
          *&v25[4] = v7;
          *&v25[12] = 2080;
          *&v25[14] = "_VCNWConnectionMonitor_ProcessNotification";
          *&v25[22] = 1024;
          *&v25[24] = 514;
          *&v25[28] = 2048;
          *&v25[30] = v10;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  timestamp%llu", v25, 0x26u);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        _VCNWConnectionMonitor_ProcessNotification_cold_1();
      }
    }

    if (*a2 == 2)
    {
      v11 = *(a2 + 48);
      *&v25[32] = *(a2 + 32);
      v26 = v11;
      v12 = *(a2 + 80);
      v27 = *(a2 + 64);
      v28 = v12;
      v13 = *(a2 + 16);
      *v25 = *a2;
      *&v25[16] = v13;
      _VCNWConnectionMonitor_AddNotification(a1, v25);
      *a3 = *(a1 + 24032);
      v14 = *(a1 + 24034);
      *(a3 + 2) = v14;
      *(a3 + 8) = *(a1 + 24040);
      *(a3 + 24) = *(a1 + 24056);
      *&v15 = *(a1 + 24072);
      *(a3 + 32) = v15;
      *(a3 + 40) = *(a1 + 24080);
      *(a3 + 48) = *(a1 + 24064);
      *(a3 + 56) = *(a1 + 24036);
      if (v14 == 1)
      {
        *(a3 + 72) = *(a1 + 24084);
        v16 = *(a1 + 24088);
        if (v16 == 0xFFFF)
        {
          v16 = 0;
        }

        *(a3 + 76) = v16;
        *(a3 + 78) = *(a1 + 24090);
        v17 = *(a1 + 24091);
        *(a3 + 81) = v17 & 0xF;
        *(a3 + 80) = v17 >> 4;
        v18 = *(a1 + 24092);
        *(a3 + 83) = v18 & 0xF;
        *(a3 + 82) = v18 >> 4;
        *(a3 + 84) = *(a1 + 24093);
        v19 = *(a1 + 24094);
        *(a3 + 79) = v19;
        if (*(a1 + 24144) > v19)
        {
          v19 = *(a1 + 24144);
        }

        *(a1 + 24144) = v19;
        *(a3 + 120) = v19;
        if (*(a1 + 24160) > v16)
        {
          LOWORD(v16) = *(a1 + 24160);
        }

        *(a1 + 24160) = v16;
        *(a3 + 136) = v16;
        *(a3 + 94) = *(a1 + 24095);
        v15 = *(a1 + 24097);
        *(a3 + 96) = v15;
        *(a3 + 112) = *(a1 + 24113);
      }

      else if (v14 == 2)
      {
        *(a3 + 3) = *(a1 + 24035);
        *(a3 + 72) = *(a1 + 24084);
      }

      _VCNWConnectionMonitor_ComputeMetrics(a1, a3, *&v15);
      v20 = *(a3 + 112);
      v29 = *(a3 + 96);
      v30 = v20;
      v21 = *(a3 + 144);
      v31 = *(a3 + 128);
      v32 = v21;
      v22 = *(a3 + 48);
      *&v25[32] = *(a3 + 32);
      v26 = v22;
      v23 = *(a3 + 80);
      v27 = *(a3 + 64);
      v28 = v23;
      v24 = *(a3 + 16);
      *v25 = *a3;
      *&v25[16] = v24;
      _VCNWConnectionMonitor_LogSignalsAndMetrics(a1, v25);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCNWConnectionMonitor_ProcessNotification_cold_2();
      }
    }
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCNWConnectionMonitor_ProcessNotification_cold_3();
    }
  }
}

void VCNWConnectionMonitor_SetStatisticsHandler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1 && a3 && a4 && *a1)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (ErrorLogLevelForModule >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (ErrorLogLevelForModule)
      {
        *buf = 136315906;
        v18 = v10;
        v19 = 2080;
        v20 = "VCNWConnectionMonitor_SetStatisticsHandler";
        v21 = 1024;
        v22 = 574;
        v23 = 2048;
        v24 = a1;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d monitor=%p", buf, 0x26u);
      }
    }

    v12 = VTP_NWConnectionQueue(ErrorLogLevelForModule, v9);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __VCNWConnectionMonitor_SetStatisticsHandler_block_invoke;
    v16[3] = &__block_descriptor_tmp_8_0;
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = a3;
    v16[7] = a4;
    dispatch_async(v12, v16);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v15 = *a1;
      }

      else
      {
        v15 = 0;
      }

      *buf = 136316674;
      v18 = v13;
      v19 = 2080;
      v20 = "VCNWConnectionMonitor_SetStatisticsHandler";
      v21 = 1024;
      v22 = 571;
      v23 = 2048;
      v24 = a1;
      v25 = 2048;
      v26 = a4;
      v27 = 2048;
      v28 = a3;
      v29 = 2048;
      v30 = v15;
      _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d Monitor, handler or context cannot be NULL, monitor=%p, handler=%p, context=%p, monitor->nwMonitor=%p", buf, 0x44u);
    }
  }
}

void VCNWConnectionMonitor_ResetWlanStats(uint64_t result)
{
  if (result)
  {
    *(result + 24152) = 0;
    *(result + 24144) = 0;
    *(result + 24160) = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCNWConnectionMonitor_ResetWlanStats_cold_1();
    }
  }
}

void _VCNWConnectionMonitor_CheckAndReleaseNWMonitor(void **a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = VTP_NWConnectionQueue(a1, a2);
  dispatch_assert_queue_V2(v3);
  v4 = *a1;
  if (*a1 && !v4[1] && !*v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315906;
        v9 = v5;
        v10 = 2080;
        v11 = "_VCNWConnectionMonitor_CheckAndReleaseNWMonitor";
        v12 = 1024;
        v13 = 52;
        v14 = 2048;
        v15 = v4;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d monitor=%p is released", &v8, 0x26u);
      }
    }

    v7 = v4[3017];
    if (v7)
    {
      dispatch_release(v7);
    }

    free(v4);
    *a1 = 0;
  }
}

uint64_t videoOrientationForCameraStatusBits(char a1)
{
  v1 = (a1 & 8) >> 2;
  if ((a1 & 3) == 2)
  {
    v1 ^= 2u;
  }

  if ((a1 & 3) != 0)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if ((a1 & 3u) <= 1)
  {
    v1 = v2;
  }

  if (a1 < 0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t VCCameraStatusUtil_RotationAngleForCameraStatusBits(int a1)
{
  if ((a1 & 8) != 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = 180;
  }

  v2 = (a1 << 28 >> 31) & 0xB4;
  if ((a1 & 3) == 2)
  {
    v2 = v1;
  }

  if ((a1 & 3) != 0)
  {
    v3 = 270;
  }

  else
  {
    v3 = 90;
  }

  if ((a1 & 3u) <= 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if ((a1 & 0x80) != 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t VCCameraStatusUtil_CVOFromCameraStatusBits(unsigned int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = videoOrientationForCameraStatusBits(a1);
  VCCVOExtensionUtils_SetCVOCamera(&v3, (a1 >> 3) & 1);
  VCCVOExtensionUtils_SetCVOFlip(&v3, (a1 >> 2) & 1);
  return v3;
}

uint64_t VCCameraStatusUtil_CameraStatusBitsFromCVO(uint64_t a1)
{
  v1 = a1;
  v2 = VCCVOExtensionUtils_CVOCamera(a1);
  if (v2)
  {
    v3 = -120;
  }

  else
  {
    v3 = 0x80;
  }

  if (VCCVOExtensionUtils_CVOFlip(v1))
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  v5 = v3 | v4;
  v6 = VCCVOExtensionUtils_CVOOrientation(v1);
  v7 = v5 | 1;
  if (v2)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v9 = v5 | v8;
  if (v2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  v11 = v5 | v10;
  if (v6)
  {
    v11 = v5;
  }

  if (v6 == 2)
  {
    v11 = v9;
  }

  if (v6 != 3)
  {
    return v11;
  }

  return v7;
}

CGAffineTransform *videoOrientationInRadiansForCameraStatusBits@<X0>(CGAffineTransform *result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E695EFD0];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v3;
  *(a2 + 32) = *(v2 + 32);
  if ((result & 0x80) != 0)
  {
    if ((result & 3u) > 1)
    {
      if ((result & 3) == 2)
      {
        v4 = 3.14159265;
        if ((result & 8) != 0)
        {
          v4 = 0.0;
        }
      }

      else
      {
        v4 = 3.14159265;
        if ((result & 8) == 0)
        {
          v4 = 0.0;
        }
      }
    }

    else if ((result & 3) != 0)
    {
      v4 = 4.71238898;
    }

    else
    {
      v4 = 1.57079633;
    }

    return CGAffineTransformMakeRotation(a2, v4);
  }

  return result;
}

uint64_t VCCameraStatusBitsFromVideoAttributes(void *a1)
{
  v2 = [a1 orientation];
  v3 = [a1 cameraSwitching];
  v4 = [a1 camera];
  if ([a1 videoSourceScreen])
  {
    v5 = 16;
  }

  else
  {
    v5 = 0;
  }

  if ([a1 videoMirrored])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = -64;
  }

  else
  {
    v7 = 0x80;
  }

  return v7 & 0xF4 | v2 & 3 | v5 & 0xF7u | (8 * (v4 & 1)) | v6;
}

void OUTLINED_FUNCTION_9_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x26u);
}

void sub_1DB63591C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL OUTLINED_FUNCTION_19_3()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

AudioComponent RegisterCodec(OSType a1, const char *__symbol, int a3)
{
  inFactory[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = 1634037347;
  }

  else
  {
    v4 = 1633969507;
  }

  inDesc.componentType = v4;
  inDesc.componentSubType = a1;
  *&inDesc.componentManufacturer = 1634758764;
  inDesc.componentFlagsMask = 0;
  result = GetAudioCodecFactory(AudioComponentDescription const*,char const*)::libHandle;
  if (GetAudioCodecFactory(AudioComponentDescription const*,char const*)::libHandle || (result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioCodecs", 1), (GetAudioCodecFactory(AudioComponentDescription const*,char const*)::libHandle = result) != 0))
  {
    result = dlsym(result, __symbol);
    if (result)
    {
      inFactory[0] = &inDesc;
      (result)(inFactory);
      if (inFactory[0])
      {
        return AudioComponentRegister(&inDesc, &stru_1F570E008, 0, inFactory[0]);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL RegisterG722Encoder()
{
  if (RegisterG722Encoder::gG722Encoder)
  {
    return 1;
  }

  RegisterG722Encoder::gG722Encoder = RegisterCodec(0x676B6363u, "RegisterExternalAudioCodecs", 1);
  return RegisterG722Encoder::gG722Encoder != 0;
}

BOOL RegisterG722Decoder()
{
  if (RegisterG722Decoder::gG722Decoder)
  {
    return 1;
  }

  RegisterG722Decoder::gG722Decoder = RegisterCodec(0x676B6363u, "RegisterExternalAudioCodecs", 0);
  return RegisterG722Decoder::gG722Decoder != 0;
}

void VCMediaQueueUtil_FindPacketInTxHistory(unsigned __int16 *a1, uint64_t *a2, pthread_mutex_t *a3, int a4, double a5, double a6)
{
  v89 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 3) || !*(a1 + 4) || !*(a1 + 5) || !*(a1 + 6) || !*(a1 + 7))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v49 = VRTraceErrorLogLevelToCSTR();
      v50 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMediaQueueUtil_FindPacketInTxHistory_cold_1(v49, v50);
      }
    }

    return;
  }

  v9 = a3;
  memset(v88, 0, sizeof(v88));
  pthread_mutex_lock(a3);
  v15 = *(a2 + 3);
  v16 = *a2;
  if (v15 < 1)
  {
LABEL_17:
    v27 = 0;
    v28 = 0;
    v29 = -1;
    v30 = -1;
    v31 = -1;
    v22 = -1;
LABEL_18:
    v32 = a4;
    goto LABEL_19;
  }

  v17 = *(a2 + 2);
  v18 = v17 - 1;
  v19 = v17 - 2;
  v20 = -1;
  v21 = *a1;
  while (1)
  {
    v22 = (v19 + 1) & 0x1FF;
    v23 = v16 + 48 * ((v19 + 1) & 0x1FF);
    v24 = *(v23 + 2);
    if ((v24 - v21) >= 0x7FFFu)
    {
      v25 = 2;
    }

    else
    {
      v25 = 4;
    }

    if (v24 == v21)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    if (v26 == 2)
    {
      goto LABEL_17;
    }

    if (v26 == 1)
    {
      break;
    }

    --v19;
    --v20;
    if (v15 + v20 == -1)
    {
      goto LABEL_17;
    }
  }

  v59 = *(v23 + 40);
  v60 = *(a1 + 3);
  if (v60 >= 0xF)
  {
    LOWORD(v60) = 15;
  }

  *v23 = v60;
  v11 = *(a1 + 2);
  *(v23 + 12) = v11;
  *(v23 + 32) = *(a1 + 2);
  v61 = -v20;
  if (-v20 >= v15)
  {
    v27 = 0;
    v28 = 0;
    v29 = -1;
    v30 = -1;
    v31 = -1;
    goto LABEL_18;
  }

  v75 = v18;
  v76 = v9;
  v27 = 0;
  v28 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v29 = -1;
  v30 = -1;
  v31 = -1;
  v67 = -1;
  v32 = a4;
  while (1)
  {
    v68 = (v16 + 48 * (v19 & 0x1FF));
    if (*(v68 + 3))
    {
      break;
    }

LABEL_99:
    ++v61;
    --v19;
    if (v15 == v61)
    {
      v61 = v67;
      v71 = v15;
      goto LABEL_103;
    }
  }

  if (v32)
  {
    v69 = *(v68 + 4);
    v70 = *(a1 + 16);
    v86 = -1431655766;
    v87 = -1431655766;
    if (!(v64 & 1 | (v69 == 0)))
    {
      v83 = v28;
      v84 = v31;
      v78 = v66;
      v79 = v62;
      v77 = v65;
      v81 = v27;
      v82 = v29;
      v80 = v63;
      FECUtil_UnpackFrameLoss(v69, &v87, &v86, v70);
      v65 = v77;
      v66 = v78;
      v62 = v79;
      v63 = v80;
      v29 = v82;
      v31 = v84;
      v32 = a4;
      v27 = v87 + v81;
      v28 = v86 + v83;
    }
  }

  ++*(v88 + *v68);
  v11 = v59 - *(v68 + 5);
  if (!(v66 & 1 | (v11 <= 1.0)))
  {
    v12 = (*(a1 + 2) - *(v68 + 4)) / v11;
    **(a1 + 4) = vcvtd_n_u64_f64(v12, 3uLL);
    v66 = 1;
  }

  if (!(v62 & 1 | (v11 <= a5)))
  {
    v29 = v19 & 0x1FF;
  }

  v62 |= (v62 | (v11 <= a5)) ^ 1;
  if (!(v63 & 1 | (v11 <= a6)))
  {
    v30 = v19 & 0x1FF;
  }

  v63 |= (v63 | (v11 <= a6)) ^ 1;
  if (!(v64 & 1 | (v11 < 1.0)))
  {
    v31 = v19 & 0x1FF;
  }

  v64 |= (v64 | (v11 < 1.0)) ^ 1;
  if (!(v65 & 1 | (v11 <= 5.0)))
  {
    v65 = 1;
  }

  if ((v62 & 1) == 0 || (v63 & 1) == 0 || (v64 & 1) == 0 || (v65 & 1) == 0 || (v66 & 1) == 0)
  {
    v67 = v61;
    goto LABEL_99;
  }

  LOBYTE(v66) = 1;
  v71 = v61;
  v64 = 1;
  LOBYTE(v63) = 1;
  LOBYTE(v62) = 1;
LABEL_103:
  if (v15 >= 128 && v71 == v15)
  {
    if (v61 == -1)
    {
      v9 = v76;
    }

    else
    {
      v72 = (v75 - v61) & 0x1FF;
      if ((v66 & 1) == 0)
      {
        v73 = v16 + 48 * ((v75 - v61) & 0x1FF);
        v11 = v59 - *(v73 + 40);
        if (v11 > 0.0)
        {
          v12 = (*(a1 + 2) - *(v73 + 32));
          v11 = v12 / v11;
          **(a1 + 4) = vcvtd_n_u64_f64(v11, 3uLL);
        }
      }

      if ((v62 & 1) == 0)
      {
        v29 = (v75 - v61) & 0x1FF;
      }

      if ((v63 & 1) == 0)
      {
        v30 = (v75 - v61) & 0x1FF;
      }

      if ((v64 & 1) == 0)
      {
        v31 = (v75 - v61) & 0x1FF;
      }

      v9 = v76;
LABEL_118:
      v74 = *(v16 + 48 * v72 + 32) / 0x3E8uLL;
      if ((*(a1 + 2) / 0x3E8uLL) < v74 && (*(a1 + 2) / 0x3E8uLL - v74) <= 0x7FFEu)
      {
        *(v16 + 48 * v22 + 32) = 1000 * (v74 & 0x7FFFFFFFFF0000 | (*(a1 + 2) / 0x3E8uLL)) + 65536000;
      }
    }
  }

  else
  {
    v9 = v76;
    if (v61 != -1)
    {
      v72 = (v75 - v61) & 0x1FF;
      goto LABEL_118;
    }
  }

LABEL_19:
  LODWORD(v33) = 0;
  for (i = 4; i != 64; i += 4)
  {
    LODWORD(v33) = *(v88 + i) + v33;
  }

  if (v33)
  {
    v35 = 0;
    v11 = v33;
    v33 = 1;
    HIDWORD(v12) = 1072483532;
    do
    {
      v35 += *(v88 + v33);
      if (v35 / v11 > 0.9)
      {
        break;
      }

      ++v33;
    }

    while (v33 != 16);
  }

  **(a1 + 3) = v33;
  if (((v22 | v29) & 0x80000000) == 0)
  {
    v36 = *(a1 + 5);
    if (v36)
    {
      v37 = *(v16 + 48 * (v22 & 0x1FF) + 12);
      if (v37)
      {
        v38 = *(v16 + 48 * (v29 & 0x1FF) + 12);
        if (v38 && (v22 & 0x1FF) != (v29 & 0x1FF))
        {
          LODWORD(v11) = *(v16 + 48 * (v22 & 0x1FF) + 4);
          LODWORD(v12) = *(v16 + 48 * (v29 & 0x1FF) + 4);
          v12 = *&v12;
          v11 = *&v11 - v12;
          if (v11 > 0.0)
          {
            v12 = v37 - v38;
            if (v12 >= 0.0)
            {
              v11 = 1.0 - v12 / v11;
              HIDWORD(v12) = 0;
              if (v11 < 0.0)
              {
                v11 = 0.0;
              }

              *v36 = v11;
            }
          }
        }
      }
    }
  }

  if (((v22 | v30) & 0x80000000) == 0)
  {
    v40 = *(a1 + 6);
    if (v40)
    {
      v41 = *(v16 + 48 * (v22 & 0x1FF) + 12);
      if (v41)
      {
        v42 = *(v16 + 48 * (v30 & 0x1FF) + 12);
        if (v42 && (v22 & 0x1FF) != (v30 & 0x1FF))
        {
          LODWORD(v11) = *(v16 + 48 * (v22 & 0x1FF) + 4);
          LODWORD(v12) = *(v16 + 48 * (v30 & 0x1FF) + 4);
          v44 = *&v11 - *&v12;
          if (v44 > 0.0)
          {
            v45 = v41 - v42;
            if (v45 >= 0.0)
            {
              v46 = 1.0 - v45 / v44;
              if (v46 < 0.0)
              {
                v46 = 0.0;
              }

              *v40 = v46;
            }
          }
        }
      }
    }
  }

  v47 = *(a1 + 7);
  if (v32)
  {
    *v47 = 0.0;
    if (v27)
    {
      v48 = v28 / v27;
      goto LABEL_73;
    }
  }

  else if (((v22 | v31) & 0x80000000) == 0 && v47)
  {
    v51 = 0;
    v52 = 0;
    v48 = NAN;
    do
    {
      v53 = *(v16 + 48 * ((v22 - v52) & 0x1FF) + 16);
      if (v53)
      {
        v54 = v53;
        v55 = 3;
        v56 = v31;
        do
        {
          v57 = *(v16 + 48 * (v56 & 0x1FF) + 16);
          if (v57)
          {
            if (((v22 - v52) & 0x1FF) == (v56 & 0x1FF))
            {
              break;
            }

            LODWORD(v13) = *(v16 + 48 * ((v22 - v52) & 0x1FF) + 8);
            LODWORD(v14) = *(v16 + 48 * (v56 & 0x1FF) + 8);
            v14 = *&v14;
            v13 = *&v13 - v14;
            if (v13 > 0.0)
            {
              v14 = v54 - v57;
              if (v14 >= 0.0)
              {
                v13 = 1.0 - v14 / v13;
                if (v13 < 0.0)
                {
                  v13 = 0.0;
                }

                v58 = v48 > v13;
                if (v48 > v13)
                {
                  v48 = v13;
                }

                v51 |= v58;
              }
            }
          }

          ++v56;
          --v55;
        }

        while (v55);
      }

      ++v52;
    }

    while (v52 != 3);
    if (v51)
    {
LABEL_73:
      *v47 = v48;
    }
  }

  pthread_mutex_unlock(v9);
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return [v22 countByEnumeratingWithState:v23 - 160 objects:va count:{16, a6, a7, a8}];
}

uint64_t VCPayloadUtils_AudioCodecRateModeForBitrate(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v14 = *MEMORY[0x1E69E9840];
  if (a1 > 106)
  {
    if ((a1 - 107) < 2 || a1 == 111)
    {
      if (a2 > 24399)
      {
        if (a2 > 63999)
        {
          switch(a2)
          {
            case 0xFA00:
              return 19;
            case 0x17700:
              return 20;
            case 0x1F400:
              return 21;
          }
        }

        else
        {
          switch(a2)
          {
            case 0x5F50:
              return 16;
            case 0x7D00:
              return 17;
            case 0xBB80:
              return 18;
          }
        }
      }

      else if (a2 > 9599)
      {
        switch(a2)
        {
          case 0x2580:
            return 13;
          case 0x3390:
            return 14;
          case 0x4010:
            return 15;
        }
      }

      else
      {
        switch(a2)
        {
          case 0x170C:
            return 10;
          case 0x1C20:
            return 11;
          case 0x1F40:
            return 12;
        }
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

  if (a1 == 97)
  {
    if (a2 > 7399)
    {
      if (a2 > 10199)
      {
        if (a2 == 10200)
        {
          return 6;
        }

        if (a2 == 12200)
        {
          return 7;
        }
      }

      else
      {
        if (a2 == 7400)
        {
          return 4;
        }

        if (a2 == 7950)
        {
          return 5;
        }
      }
    }

    else if (a2 > 5899)
    {
      if (a2 == 5900)
      {
        return 2;
      }

      if (a2 == 6700)
      {
        return 3;
      }
    }

    else
    {
      if (a2 == 4750)
      {
        return 0;
      }

      if (a2 == 5150)
      {
        return 1;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315906;
        v7 = v4;
        v8 = 2080;
        v9 = "_VCPayloadUtils_AudioCodecRateModeForAMRBitrate";
        v10 = 1024;
        v11 = 1047;
        v12 = 1024;
        v13 = v2;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported bitrate %d", &v6, 0x22u);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a1 != 98)
  {
LABEL_25:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCPayloadUtils_AudioCodecRateModeForBitrate_cold_1();
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_12:

  return _VCPayloadUtils_AudioCodecRateModeForAMRWBBitrate(a2);
}

uint64_t VCPayloadUtils_CodecTypeForPayload(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1 <= 96)
  {
    if (a1)
    {
      if (a1 == 8)
      {
        return 6;
      }

      else if (a1 == 13)
      {
        return 9;
      }

      else
      {
LABEL_29:
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v3 = VRTraceErrorLogLevelToCSTR();
          v4 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v5 = 136315906;
            v6 = v3;
            v7 = 2080;
            v8 = "VCPayloadUtils_CodecTypeForPayload";
            v9 = 1024;
            v10 = 1382;
            v11 = 1024;
            v12 = a1;
            _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported payload %d", &v5, 0x22u);
          }
        }

        return 0;
      }
    }

    else
    {
      return 5;
    }
  }

  else
  {
    switch(a1)
    {
      case 'a':
        result = 1;
        break;
      case 'b':
        result = 2;
        break;
      case 'c':
        result = 13;
        break;
      case 'd':
        result = 102;
        break;
      case 'e':
        result = 16;
        break;
      case 'h':
        result = 8;
        break;
      case 'j':
        result = 7;
        break;
      case 'k':
        result = 3;
        break;
      case 'l':
        result = 4;
        break;
      case 'n':
        result = 300;
        break;
      case 'o':
        result = 17;
        break;
      case 'p':
        result = 18;
        break;
      case 'q':
        result = 20;
        break;
      case 'u':
        result = 10;
        break;
      case 'w':
        result = 11;
        break;
      case 'y':
        result = 15;
        break;
      case 'z':
        result = 14;
        break;
      case '{':
        result = 100;
        break;
      case '|':
        result = 301;
        break;
      case '~':
        result = 101;
        break;
      default:
        goto LABEL_29;
    }
  }

  return result;
}

uint64_t VCPayloadUtils_SupportsReceiveSideInactiveAudioFrameDetection(int a1, unsigned int a2, unsigned int a3)
{
  if (a1 == 113)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  if (a1 == 104)
  {
    v3 = a2;
  }

  if (a1 == 101)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t _VCPayloadUtils_AudioCodecRateModeForAMRWBBitrate(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1 <= 15849)
  {
    if (a1 > 12649)
    {
      if (a1 == 12650)
      {
        return 2;
      }

      if (a1 == 14250)
      {
        return 3;
      }
    }

    else
    {
      if (a1 == 6600)
      {
        return 0;
      }

      if (a1 == 8850)
      {
        return 1;
      }
    }
  }

  else if (a1 <= 19849)
  {
    if (a1 == 15850)
    {
      return 4;
    }

    if (a1 == 18250)
    {
      return 5;
    }
  }

  else
  {
    switch(a1)
    {
      case 19850:
        return 6;
      case 23050:
        return 7;
      case 23850:
        return 8;
    }
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
      v8 = "_VCPayloadUtils_AudioCodecRateModeForAMRWBBitrate";
      v9 = 1024;
      v10 = 1073;
      v11 = 1024;
      v12 = a1;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported bitrate %d", &v5, 0x22u);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t VCPayloadUtils_DefaultAudioCodecBandwidthCodecForSampleRate(int a1)
{
  if (a1 == 16000)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 8000)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t VCPayloadUtils_BitrateForAudioCodecRateMode(uint64_t a1, uint64_t a2)
{
  v3 = [VCPayloadUtils codecTypeForPayload:a1];

  return [VCPayloadUtils bitrateForCodecType:v3 mode:a2];
}

const char *VCPayloadUtils_AmrNbBitRateStringForBitRate(int a1)
{
  if (a1 > 7399)
  {
    if (a1 > 10199)
    {
      if (a1 == 10200)
      {
        return "AMR-NB 10.2";
      }

      if (a1 == 12200)
      {
        return "AMR-NB 12.2";
      }
    }

    else
    {
      if (a1 == 7400)
      {
        return "AMR-NB 7.4";
      }

      if (a1 == 7950)
      {
        return "AMR-NB 7.95";
      }
    }
  }

  else if (a1 > 5899)
  {
    if (a1 == 5900)
    {
      return "AMR-NB 5.9";
    }

    if (a1 == 6700)
    {
      return "AMR-NB 6.7";
    }
  }

  else
  {
    if (a1 == 4750)
    {
      return "AMR-NB 4.75";
    }

    if (a1 == 5150)
    {
      return "AMR-NB 5.15";
    }
  }

  return "";
}

const char *VCPayloadUtils_AmrWbBitRateStringForBitRate(int a1)
{
  if (a1 <= 15849)
  {
    if (a1 > 12649)
    {
      if (a1 == 12650)
      {
        return "AMR-WB 12.65";
      }

      if (a1 == 14250)
      {
        return "AMR-WB 14.25";
      }
    }

    else
    {
      if (a1 == 6600)
      {
        return "AMR-WB 6.6";
      }

      if (a1 == 8850)
      {
        return "AMR-WB 8.85";
      }
    }
  }

  else if (a1 <= 19849)
  {
    if (a1 == 15850)
    {
      return "AMR-WB 15.85";
    }

    if (a1 == 18250)
    {
      return "AMR-WB 18.25";
    }
  }

  else
  {
    switch(a1)
    {
      case 19850:
        return "AMR-WB 19.85";
      case 23050:
        return "AMR-WB 23.05";
      case 23850:
        return "AMR-WB 23.85";
    }
  }

  return "";
}

const char *VCPayloadUtils_EvsBitRateStringForBitRate(int a1)
{
  if (a1 <= 16399)
  {
    if (a1 > 9599)
    {
      if (a1 <= 13199)
      {
        if (a1 == 9600)
        {
          return "EVS PRI 9.6";
        }

        if (a1 == 12650)
        {
          return "EVS IO 12.65";
        }
      }

      else
      {
        switch(a1)
        {
          case 13200:
            return "EVS PRI 13.2";
          case 14250:
            return "EVS IO 14.25";
          case 15850:
            return "EVS IO 15.85";
        }
      }
    }

    else if (a1 <= 7199)
    {
      if (a1 == 5900)
      {
        return "EVS PRI 5.9";
      }

      if (a1 == 6600)
      {
        return "EVS IO 6.6";
      }
    }

    else
    {
      switch(a1)
      {
        case 7200:
          return "EVS PRI 7.2";
        case 8000:
          return "EVS PRI 8";
        case 8850:
          return "EVS IO 8.85";
      }
    }
  }

  else if (a1 <= 24399)
  {
    if (a1 <= 19849)
    {
      if (a1 == 16400)
      {
        return "EVS PRI 16.4";
      }

      if (a1 == 18250)
      {
        return "EVS IO 18.25";
      }
    }

    else
    {
      switch(a1)
      {
        case 19850:
          return "EVS IO 19.85";
        case 23050:
          return "EVS IO 23.05";
        case 23850:
          return "EVS IO 23.85";
      }
    }
  }

  else if (a1 > 63999)
  {
    switch(a1)
    {
      case 64000:
        return "EVS PRI 64";
      case 96000:
        return "EVS PRI 96";
      case 128000:
        return "EVS PRI 128";
    }
  }

  else
  {
    switch(a1)
    {
      case 24400:
        return "EVS PRI 24.4";
      case 32000:
        return "EVS PRI 32";
      case 48000:
        return "EVS PRI 48";
    }
  }

  return "";
}

uint64_t VCPayloadUtils_SupportsShortREDForPayload(uint64_t a1, uint64_t a2)
{
  if (a1 == 113)
  {
    return VCFeatureFlagManager_UseShortREDWithACC24(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t VCPayloadUtils_ShortREDBitrateForPayload(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 113)
  {
    return 4800;
  }

  if (a1 == 112)
  {
    return 2000;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCPayloadUtils_ShortREDBitrateForPayload_cold_1();
  }

  return 0;
}

uint64_t RTCPCopySendControlParameters(__int128 *a1, uint64_t a2, OSQueueHead *a3, char **a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3 || !a4)
  {
    RTCPCopySendControlParameters_cold_2(&v42, &v43);
LABEL_45:
    v17 = v42;
    result = v43;
    goto LABEL_41;
  }

  v8 = *a1;
  v9 = a1[2];
  *(a2 + 16) = a1[1];
  *(a2 + 32) = v9;
  *a2 = v8;
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[6];
  *(a2 + 80) = a1[5];
  *(a2 + 96) = v12;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  v13 = a1[7];
  v14 = a1[8];
  v15 = a1[9];
  *(a2 + 160) = *(a1 + 20);
  *(a2 + 128) = v14;
  *(a2 + 144) = v15;
  *(a2 + 112) = v13;
  if (!*(a2 + 8) && !*(a1 + 4) && !*(a1 + 7) && !*(a1 + 9) && !*(a1 + 19))
  {
    v17 = 0;
    goto LABEL_40;
  }

  v16 = VCMemoryPool_Alloc(a3);
  if (!v16)
  {
    RTCPCopySendControlParameters_cold_1(&v42, &v43);
    goto LABEL_45;
  }

  v17 = v16;
  opaque1 = a3[1].opaque1;
  v19 = &opaque1[v16];
  memset(v41, 170, sizeof(v41));
  if (v16 > &opaque1[v16])
  {
    goto LABEL_47;
  }

  v41[0] = v16;
  v41[1] = opaque1;
  v41[2] = 0;
  v20 = *(a1 + 2);
  if (v20)
  {
    v21 = *(a1 + 1);
    if (v21)
    {
      v22 = RTCPPackSendControlParameter(v41, v21, v20);
      if (!v22)
      {
        goto LABEL_42;
      }

      if (v23 < v22)
      {
        goto LABEL_47;
      }

      v24 = *(a1 + 2);
      if (v24 > v23 - v22)
      {
        goto LABEL_47;
      }

      *(a2 + 8) = v22;
      *(a2 + 16) = v24;
    }
  }

  v25 = *(a1 + 4);
  if (v25)
  {
    v26 = *(a1 + 10);
    if (v26 >= 1)
    {
      v27 = RTCPPackSendControlParameter(v41, v25, 2 * v26);
      if (!v27)
      {
        goto LABEL_42;
      }

      if (v28 < v27)
      {
        goto LABEL_47;
      }

      v29 = *(a1 + 10);
      if (v29 < 0 || (v28 - v27) >> 1 < v29)
      {
        goto LABEL_47;
      }

      *(a2 + 32) = v27;
      *(a2 + 40) = v29;
    }
  }

  v30 = *(a1 + 7);
  if (v30 && *(a1 + 64))
  {
    v31 = RTCPPackSendControlParameter(v41, v30, 36 * *(a1 + 64));
    if (!v31)
    {
      goto LABEL_42;
    }

    if (v32 < v31)
    {
      goto LABEL_47;
    }

    v33 = *(a1 + 64);
    if ((0x8E38E38E38E38E39 * ((v32 - v31) >> 2)) < v33)
    {
      goto LABEL_47;
    }

    *(a2 + 56) = v31;
    *(a2 + 64) = v33;
  }

  v34 = *(a1 + 9);
  if (!v34)
  {
    goto LABEL_35;
  }

  v35 = RTCPPackSendControlParameter(v41, v34, 0x14uLL);
  if (!v35)
  {
LABEL_42:
    if (v17 < v19)
    {
      VCMemoryPool_Free(a3, v17);
      v17 = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 152) = 0;
      result = 2147549187;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      goto LABEL_41;
    }

LABEL_47:
    __break(0x5519u);
  }

  if (v35 >= v36)
  {
    goto LABEL_47;
  }

  *(a2 + 72) = v35;
LABEL_35:
  v37 = *(a1 + 19);
  if (!v37)
  {
    goto LABEL_39;
  }

  v38 = RTCPPackSendControlParameter(v41, v37, 8uLL);
  if (!v38)
  {
    goto LABEL_42;
  }

  if (v38 >= v39)
  {
    goto LABEL_47;
  }

  *(a2 + 152) = v38;
LABEL_39:
  if (v17 >= v19)
  {
    goto LABEL_47;
  }

LABEL_40:
  result = 0;
LABEL_41:
  *a4 = v17;
  return result;
}

unint64_t *RTCPPackSendControlParameter(unint64_t *result, const void *a2, size_t __n)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTCPPackSendControlParameter_cold_1();
      }
    }

    return 0;
  }

  v4 = result;
  v5 = result[1];
  v6 = result[2];
  if (v5 - v6 < __n)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = *v4;
        v9 = v4[1];
        v11 = v4[2];
        v14 = 136316930;
        v15 = v7;
        v16 = 2080;
        v17 = "RTCPPackSendControlParameter";
        v18 = 1024;
        v19 = 100;
        v20 = 2048;
        v21 = v10;
        v22 = 2048;
        v23 = v9;
        v24 = 2048;
        v25 = v11;
        v26 = 2048;
        v27 = v9 - v11;
        v28 = 2048;
        v29 = __n;
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d Insufficient space in buffer {base=%p count=%zu offset=%zu size=%zu}, requesting %zu bytes ", &v14, 0x4Eu);
      }
    }

    return 0;
  }

  v12 = *result + v6;
  if (v12 <= *result + v5 && *result <= v12)
  {
    memcpy((*result + v6), a2, __n);
    v4[2] += __n;
    return v12;
  }

  __break(0x5519u);
  return result;
}

CFTypeRef RTCPShallowCopyPacketList(void *__src, void *__dst)
{
  memcpy(__dst, __src, 0x668uLL);
  v3 = *(__dst + 12);

  return CFRetain(v3);
}

uint64_t RTCPReducedSizePackets(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 10644) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTCPSetHopByHopEncryptionEnabled(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 10646) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTCPSetEnableReceptionFromMultipleSSRC(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 10647) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPGetRTCPHasPendingPLI(uint64_t a1, _DWORD *a2)
{
  v2 = 2147549185;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *a2 = *(v4 + 104);
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147549186;
    }
  }

  return v2;
}

uint64_t RTPGetRecvStats(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = 2147549185;
  if (a2 && a3)
  {
    v6 = CheckInHandleDebug();
    if (v6)
    {
      *a2 = *(v6 + 320);
      *a3 = *(v6 + 324);
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147549186;
    }
  }

  return v3;
}

uint64_t RTCPSetSendPLI(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = 2147549239;
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    return 2147549186;
  }

  v3 = v2;
  v4 = *(v2 + 104);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v4)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = v6;
        v13 = 2080;
        v14 = "RTCPSetSendPLI";
        v15 = 1024;
        v16 = 267;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PSFB PLI is already scheduled to be sent in the next RTCP interval", &v11, 0x1Cu);
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
        v11 = 136315650;
        v12 = v8;
        v13 = 2080;
        v14 = "RTCPSetSendPLI";
        v15 = 1024;
        v16 = 264;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PSFB PLI will be sent in the next RTCP interval", &v11, 0x1Cu);
      }
    }

    v1 = 0;
    *(v3 + 104) = 1;
  }

  CheckOutHandleDebug();
  return v1;
}

uint64_t RTCPSetSendTMMBR(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = 2147549239;
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2147549186;
  }

  if (*(v4 + 128) && *(v4 + 132) == a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v5;
        v12 = 2080;
        v13 = "RTCPSetSendTMMBR";
        v14 = 1024;
        v15 = 326;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPFB TMMBR is already scheduled to be sent in the next RTCP interval", &v10, 0x1Cu);
      }
    }
  }

  else
  {
    *(v4 + 128) = 1;
    *(v4 + 132) = a2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "RTCPSetSendTMMBR";
        v14 = 1024;
        v15 = 324;
        v16 = 1024;
        v17 = a2;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPFB TMMBR bitrate:%d, will be sent in the next RTCP interval", &v10, 0x22u);
      }
    }

    v3 = 0;
  }

  CheckOutHandleDebug();
  return v3;
}

uint64_t RTPCheckRTCPSendIntervalElapsed(uint64_t a1, _DWORD *a2, double *a3)
{
  v3 = 2147549185;
  if (a2)
  {
    v6 = CheckInHandleDebug();
    if (v6)
    {
      v8 = v6;
      v9 = micro(v6, v7);
      v10 = *(v8 + 160);
      v11 = v9 + 0.001 - v10;
      v12 = *(v8 + 176);
      *a2 = v11 > v12;
      v13 = v12 - (v9 - v10);
      if (v11 > v12)
      {
        v13 = 0.0;
      }

      *a3 = v13;
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147549186;
    }
  }

  return v3;
}

unint64_t RTPSendControlPacket(uint64_t a1, int *a2)
{
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v6 = v4;
    if (*(v4 + 184))
    {
      v7 = micro(v4, v5);
      v8 = v7;
      v9 = *a2;
      if ((*a2 & 0x50) != 0)
      {
        if ((v9 & 0x10) != 0)
        {
          v10 = a2[12];
          *(v6 + 136) = 1;
          *(v6 + 140) = v10;
        }

        if ((v9 & 0x40) != 0)
        {
          *(v6 + 96) = 1;
          *(v6 + 100) = *(a2 + 24);
        }

        v11 = RTPSendRTCP(a1);
        if ((v11 & 0x80000000) != 0)
        {
          goto LABEL_15;
        }

        v12 = (v6 + 160);
        goto LABEL_13;
      }

      v13 = *(v6 + 160);
      v12 = (v6 + 160);
      if (v7 + 0.001 - v13 > v12[2])
      {
        v11 = RTPSendRTCP(a1);
        if ((v11 & 0x80000000) != 0)
        {
LABEL_15:
          CheckOutHandleDebug();
          return v11;
        }

LABEL_13:
        *v12 = v8;
        goto LABEL_15;
      }
    }

    v11 = 0;
    goto LABEL_15;
  }

  return 2147549186;
}

unint64_t RTPSendRTCP(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v222 = *MEMORY[0x1E69E9840];
  v3 = 2147549187;
  v200 = 0xAAAAAAAAAAAAAAAALL;
  v198 = 0;
  memset(v197, 0, sizeof(v197));
  memset(__b, 170, sizeof(__b));
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2147549186;
  }

  v5 = v4;
  if (v4 == 0xFFFFFFFFLL)
  {
    return 2147549190;
  }

  memset(v211, 170, sizeof(v211));
  memset(__src, 170, sizeof(__src));
  if ((*v2 & 0xE27) != 0)
  {
    v193 = 0;
LABEL_7:
    v6 = 1;
    goto LABEL_11;
  }

  v193 = *(v5 + 204) != 0;
  if (!*(v5 + 4832) && !*(v2 + 64))
  {
    goto LABEL_7;
  }

  v6 = 0;
LABEL_11:
  bzero(v209, 0x402uLL);
  v7 = strnlen((v5 + 360), 0x100uLL);
  v8 = v7;
  if (v7 >= 256)
  {
    CheckOutHandleDebug();
    return 2147549192;
  }

  v194 = v6;
  v201 = -1431655766;
  v9 = v7 + 6;
  if (v7 < -6)
  {
    v9 = v7 + 9;
  }

  v205[0] = -13695;
  v186 = (v9 >> 2) + 1;
  v205[1] = bswap32(v186) >> 16;
  v206 = bswap32(*(v5 + 200));
  v207 = 1;
  v208 = v7;
  __strncpy_chk();
  v11 = &v209[v8];
  if (v11 >= &v210 || v11 < v209)
  {
    goto LABEL_350;
  }

  *v11 = 0;
  v190 = *v2;
  if ((*v2 & 1) == 0)
  {
    v12 = v6;
    if ((*v2 & 8) == 0)
    {
      LOWORD(v191) = 0;
LABEL_75:
      v52 = *v2;
      if ((*v2 & 4) != 0)
      {
        v53 = bswap32(*(v5 + 200));
        __b[0] = 33603968;
        __b[1] = v53;
        LOWORD(__b[2]) = bswap32(*(v2 + 46)) >> 16;
        HIWORD(__b[2]) = bswap32(*(v2 + 44)) >> 16;
        v192 = 2;
      }

      else
      {
        v192 = 0;
      }

      v189 = 0xAAAAAAAA00000000;
      if ((v52 & 0x800) != 0)
      {
        v54 = bswap32(*(v5 + 200));
        __b[0] = 50384257;
        __b[1] = v54;
        __b[2] = bswap32(*(v5 + 4832));
        LOWORD(__b[3]) = bswap32(*(v2 + 46)) >> 16;
        HIWORD(__b[3]) = bswap32(*(v2 + 44)) >> 16;
        v192 = 3;
      }

      v188 = 2863267840;
      v187 = 43690;
      goto LABEL_81;
    }

    if (*(v5 + 148))
    {
      LOWORD(__src[0]) = __src[0] & 0x1F | 0xCE80;
      v13 = *(v2 + 40);
      if (v13)
      {
        if (v13 < 2)
        {
          v17 = 0;
        }

        else
        {
          v14 = *(v2 + 32);
          v15 = *v14;
          LODWORD(v14) = v14[1];
          LOWORD(__src[0]) = -12670;
          v16 = bswap32(*(v5 + 4832));
          __src[1] = bswap32(*(v5 + 200));
          __src[2] = v16;
          __src[3] = bswap32(((v14 * v15) >> 2) & 0x7FC0 | 0x80000);
          v17 = 3;
        }
      }

      else
      {
        LOWORD(__src[0]) = -12671;
        v51 = bswap32(*(v5 + 4832));
        __src[1] = bswap32(*(v5 + 200));
        __src[2] = v51;
        v17 = 2;
      }

      LOWORD(v191) = v17;
      HIWORD(__src[0]) = v17 << 8;
      goto LABEL_75;
    }

    LODWORD(v18) = *(v2 + 40);
    LOWORD(__src[0]) = -16256;
    v191 = ((v18 + 1) >> 1) + 1;
    HIWORD(__src[0]) = bswap32(v191) >> 16;
    __src[1] = bswap32(*(v5 + 200));
    if (v18 >= 1)
    {
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = (&__src[2] + v19);
        v22 = (&__src[2] + v19) < &__src[7] && v21 >= &__src[2];
        if (!v22)
        {
          goto LABEL_350;
        }

        *v21 = bswap32(*(*(v2 + 32) + v19)) >> 16;
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        v24 = *(v5 + 10640);
        if (v24 > ErrorLogLevelForModule || v24 < 1)
        {
          goto LABEL_37;
        }

        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = v26;
        v28 = *(v5 + 10640);
        if (v28 > 2)
        {
          if (v28 > 4)
          {
            if (v28 > 7)
            {
              if (v28 == 8)
              {
                v40 = *MEMORY[0x1E6986650];
                v45 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] != 1)
                {
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                  {
                    v47 = *(v2 + 32);
                    v48 = (v47 + v19);
                    if (v47 + v19 >= v47 + 2 * *(v2 + 40) || v48 < v47)
                    {
                      goto LABEL_350;
                    }

                    v49 = *v21;
                    v50 = *v48;
                    *buf = 136316418;
                    *&buf[4] = v27;
                    *&buf[12] = 2080;
                    *&buf[14] = "RTPSendRTCP";
                    *&buf[22] = 1024;
                    v213 = 1869;
                    v214 = 1024;
                    v215 = v20;
                    v216 = 1024;
                    v217 = v49;
                    v218 = 1024;
                    v219 = v50;
                    _os_log_debug_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEBUG, " [%s] %s:%d i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
                  }

                  goto LABEL_37;
                }

                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  v46 = *(v2 + 32);
                  v42 = (v46 + v19);
                  if (v46 + v19 >= v46 + 2 * *(v2 + 40) || v42 < v46)
                  {
                    goto LABEL_350;
                  }

                  goto LABEL_58;
                }
              }
            }

            else
            {
              v40 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v41 = *(v2 + 32);
                v42 = (v41 + v19);
                if (v41 + v19 >= v41 + 2 * *(v2 + 40) || v42 < v41)
                {
                  goto LABEL_350;
                }

LABEL_58:
                v43 = *v21;
                v44 = *v42;
                *buf = 136316418;
                *&buf[4] = v27;
                *&buf[12] = 2080;
                *&buf[14] = "RTPSendRTCP";
                *&buf[22] = 1024;
                v213 = 1869;
                v214 = 1024;
                v215 = v20;
                v216 = 1024;
                v217 = v43;
                v218 = 1024;
                v219 = v44;
                _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
              }
            }
          }

          else
          {
            v30 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v33 = *(v2 + 32);
              v32 = (v33 + v19);
              if (v33 + v19 >= v33 + 2 * *(v2 + 40) || v32 < v33)
              {
                goto LABEL_350;
              }

              goto LABEL_49;
            }
          }
        }

        else
        {
          IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
          v30 = *MEMORY[0x1E6986650];
          if ((IsOSFaultDisabled & 1) == 0)
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
            {
              v36 = *(v2 + 32);
              v37 = (v36 + v19);
              if (v36 + v19 >= v36 + 2 * *(v2 + 40) || v37 < v36)
              {
                goto LABEL_350;
              }

              v38 = *v21;
              v39 = *v37;
              *buf = 136316418;
              *&buf[4] = v27;
              *&buf[12] = 2080;
              *&buf[14] = "RTPSendRTCP";
              *&buf[22] = 1024;
              v213 = 1869;
              v214 = 1024;
              v215 = v20;
              v216 = 1024;
              v217 = v38;
              v218 = 1024;
              v219 = v39;
              _os_log_fault_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_FAULT, " [%s] %s:%d i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
            }

            goto LABEL_37;
          }

          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v31 = *(v2 + 32);
            v32 = (v31 + v19);
            if (v31 + v19 >= v31 + 2 * *(v2 + 40) || v32 < v31)
            {
              goto LABEL_350;
            }

LABEL_49:
            v34 = *v21;
            v35 = *v32;
            *buf = 136316418;
            *&buf[4] = v27;
            *&buf[12] = 2080;
            *&buf[14] = "RTPSendRTCP";
            *&buf[22] = 1024;
            v213 = 1869;
            v214 = 1024;
            v215 = v20;
            v216 = 1024;
            v217 = v34;
            v218 = 1024;
            v219 = v35;
            _os_log_error_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_ERROR, " [%s] %s:%d i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
          }
        }

LABEL_37:
        ++v20;
        v18 = *(v2 + 40);
        v19 += 2;
        if (v20 >= v18)
        {
          goto LABEL_73;
        }
      }
    }

    LODWORD(v20) = 0;
LABEL_73:
    if ((v18 & 1) == 0)
    {
      goto LABEL_74;
    }

    v159 = &__src[2] + v20;
    if (v159 >= &__src[7] || v159 < &__src[2])
    {
      goto LABEL_350;
    }

    *v159 = -1;
    v160 = VRTraceGetErrorLogLevelForModule();
    v161 = *(v5 + 10640);
    if (v161 > v160 || v161 < 1)
    {
      goto LABEL_74;
    }

    v162 = VRTraceErrorLogLevelToCSTR();
    v163 = *(v5 + 10640);
    if (v163 > 2)
    {
      if (v163 > 4)
      {
        if (v163 > 7)
        {
          if (v163 != 8)
          {
            goto LABEL_74;
          }

          v174 = *MEMORY[0x1E6986650];
          v177 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] != 1)
          {
            if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
            {
              v178 = *v159;
              v179 = *(v2 + 40);
              *buf = 136316418;
              *&buf[4] = v162;
              *&buf[12] = 2080;
              *&buf[14] = "RTPSendRTCP";
              *&buf[22] = 1024;
              v213 = 1873;
              v214 = 1024;
              v215 = v20;
              v216 = 1024;
              v217 = v178;
              v218 = 1024;
              v219 = v179;
              _os_log_debug_impl(&dword_1DB56E000, v174, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Invalid Slice! i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
            }

            goto LABEL_74;
          }

          if (!os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_74;
          }
        }

        else
        {
          v174 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_74;
          }
        }

        v175 = *v159;
        v176 = *(v2 + 40);
        *buf = 136316418;
        *&buf[4] = v162;
        *&buf[12] = 2080;
        *&buf[14] = "RTPSendRTCP";
        *&buf[22] = 1024;
        v213 = 1873;
        v214 = 1024;
        v215 = v20;
        v216 = 1024;
        v217 = v175;
        v218 = 1024;
        v219 = v176;
        _os_log_impl(&dword_1DB56E000, v174, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invalid Slice! i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
        goto LABEL_74;
      }

      v165 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
LABEL_310:
        v168 = *v159;
        v169 = *(v2 + 40);
        *buf = 136316418;
        *&buf[4] = v162;
        *&buf[12] = 2080;
        *&buf[14] = "RTPSendRTCP";
        *&buf[22] = 1024;
        v213 = 1873;
        v214 = 1024;
        v215 = v20;
        v216 = 1024;
        v217 = v168;
        v218 = 1024;
        v219 = v169;
        _os_log_error_impl(&dword_1DB56E000, v165, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid Slice! i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
      }
    }

    else
    {
      v164 = VRTraceIsOSFaultDisabled();
      v165 = *MEMORY[0x1E6986650];
      if ((v164 & 1) == 0)
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          v172 = *v159;
          v173 = *(v2 + 40);
          *buf = 136316418;
          *&buf[4] = v162;
          *&buf[12] = 2080;
          *&buf[14] = "RTPSendRTCP";
          *&buf[22] = 1024;
          v213 = 1873;
          v214 = 1024;
          v215 = v20;
          v216 = 1024;
          v217 = v172;
          v218 = 1024;
          v219 = v173;
          _os_log_fault_impl(&dword_1DB56E000, v165, OS_LOG_TYPE_FAULT, " [%s] %s:%d Invalid Slice! i=%d awSizeAndFirstMBs=%d paramSizeAndFirstMBs=%d", buf, 0x2Eu);
        }

        goto LABEL_74;
      }

      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_310;
      }
    }

LABEL_74:
    v12 = v194;
    goto LABEL_75;
  }

  LOWORD(v191) = 0;
  v192 = 0;
  v188 = 0x1000000;
  v189 = bswap32(*(v5 + 200)) << 32;
  v187 = 52097;
  v12 = v6;
LABEL_81:
  v195 = v5 + 27800;
  if (v12)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v55 = *(v2 + 64);
    if (*(v2 + 64) || (*(v5 + 10645) & 1) != 0)
    {
      v57 = *(v2 + 56);
      v56 = &v57[36 * *(v2 + 64)];
    }

    else
    {
      if (v5 >= v195)
      {
        goto LABEL_350;
      }

      v57 = v197;
      v56 = &v199;
      _RTCPInitializeReceptionReportBlock(v5, v197);
      if (*(v5 + 28) <= 1u)
      {
        kdebug_trace();
        v57 = v197;
      }

      v55 = 1;
    }
  }

  v58 = *(v5 + 10644);
  v59 = *v2;
  v60 = (*v2 & 0xEFE) != 0;
  v201 = 0;
  if ((v59 & 0x20) != 0)
  {
    v202 = 1472;
    v64 = *(v2 + 72);
    buf[5] = 0;
    *&buf[6] = 0;
    strcpy(buf, "LTCR");
    *&buf[8] = v64;
    *&buf[16] = 0;
    if (v5 >= v195)
    {
      goto LABEL_350;
    }

    v65 = _RTCPAddCustomReportPacket(v5, v211, 0x5C0uLL, &v202, buf);
    if ((v65 & 0x80000000) != 0)
    {
      v63 = v65;
      RTPSendRTCP_cold_1();
      goto LABEL_330;
    }

LABEL_98:
    v66 = v202;
    v201 = v202;
    goto LABEL_99;
  }

  if (*(v5 + 10645) == 1)
  {
    v202 = 1472;
    memset(buf, 0, sizeof(buf));
    if (v193)
    {
      v61 = 1297568594;
    }

    else
    {
      v61 = 1297568338;
    }

    *buf = v61;
    if (v57 > v56)
    {
      goto LABEL_350;
    }

    if ((0x8E38E38E38E38E39 * ((v56 - v57) >> 2)) < v55)
    {
      goto LABEL_350;
    }

    *&buf[8] = v57;
    *&buf[16] = v55;
    if (v5 >= v195)
    {
      goto LABEL_350;
    }

    v62 = _RTCPAddCustomReportPacket(v5, v211, 0x5C0uLL, &v202, buf);
    if ((v62 & 0x80000000) != 0)
    {
      v63 = v62;
      RTPSendRTCP_cold_25();
LABEL_330:
      v3 = v63;
      goto LABEL_213;
    }

    goto LABEL_98;
  }

  if (v60 & v58)
  {
    v66 = 0;
    goto LABEL_99;
  }

  v115 = 0;
  v116 = 0;
  if (v57)
  {
    v117 = v56;
  }

  else
  {
    v117 = 0;
  }

  v184 = v117;
  do
  {
    if (v55 - v116 >= 0x1F)
    {
      v118 = 31;
    }

    else
    {
      v118 = v55 - v116;
    }

    v119 = 1472 - v115;
    v200 = v119;
    v120 = v193;
    if (v116)
    {
      v120 = 0;
    }

    if (v57)
    {
      v121 = &v57[36 * v116];
    }

    else
    {
      v121 = 0;
    }

    if (v121 > v117 || v57 > v121)
    {
      goto LABEL_350;
    }

    v123 = &v211[v115];
    if (v5 >= v195)
    {
      goto LABEL_350;
    }

    v124 = 0x8E38E38E38E38E39 * ((v117 - v121) >> 2) < v118 || v123 > buf;
    if (v124 || v211 > v123)
    {
      goto LABEL_350;
    }

    if (v119 < 4)
    {
      goto LABEL_286;
    }

    if (v120)
    {
      v126 = -14208;
    }

    else
    {
      v126 = -13952;
    }

    *&v211[v115] = v126 | v118 | *&v211[v115] & 0x20;
    v185 = v115;
    v127 = 1468 - v115;
    if (v120)
    {
      if (v127 < 0x18)
      {
        goto LABEL_286;
      }

      v183 = v118;
      v128 = micro(v115, v10);
      v131 = MicroToNTP(v128, v129, v130);
      LODWORD(v132) = *(v5 + 312);
      v133 = v132;
      LODWORD(v132) = *(v5 + 700);
      v134 = v132;
      v136 = NTPToMicro(*(v5 + 304), v135);
      v137 = _RTPSendTimestampWithMediaSampleTime(v5, (v133 + v134 * (v128 - v136)));
      if (v123 + 52 > buf)
      {
        goto LABEL_350;
      }

      v181 = HIDWORD(v131);
      *(v123 + 1) = bswap32(*(v5 + 200));
      *(v123 + 2) = bswap32(HIDWORD(v131));
      v138.i64[0] = __PAIR64__(v137, v131);
      v182 = v137;
      v138.i64[1] = *(v5 + 204);
      *(v123 + 12) = vrev32q_s8(v138);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v180 = VRTraceErrorLogLevelToCSTR();
        v139 = *MEMORY[0x1E6986650];
        v140 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
          {
            v141 = *(v5 + 28);
            *buf = 136316674;
            *&buf[4] = v180;
            *&buf[12] = 2080;
            *&buf[14] = "_RTCPAddSenderReportHeader";
            *&buf[22] = 1024;
            v213 = 1435;
            v214 = 1024;
            v215 = 1435;
            v216 = 1024;
            v217 = v141;
            v218 = 1024;
            v219 = v181;
            v220 = 1024;
            v221 = v182;
            _os_log_impl(&dword_1DB56E000, v139, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Sending RTCP SR packet PayloadType=%d NTP Seconds=%u RTPTimestamp=%u", buf, 0x34u);
          }
        }

        else if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
        {
          v149 = *(v5 + 28);
          *buf = 136316674;
          *&buf[4] = v180;
          *&buf[12] = 2080;
          *&buf[14] = "_RTCPAddSenderReportHeader";
          *&buf[22] = 1024;
          v213 = 1435;
          v214 = 1024;
          v215 = 1435;
          v216 = 1024;
          v217 = v149;
          v218 = 1024;
          v219 = v181;
          v220 = 1024;
          v221 = v182;
          _os_log_debug_impl(&dword_1DB56E000, v139, OS_LOG_TYPE_DEBUG, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Sending RTCP SR packet PayloadType=%d NTP Seconds=%u RTPTimestamp=%u", buf, 0x34u);
        }
      }

      v142 = (v123 + 28);
      if (v123 + 4 > v123 + 28 || v142 > buf)
      {
        goto LABEL_350;
      }

      v143 = -28;
      v118 = v183;
    }

    else
    {
      if (v127 < 4)
      {
        goto LABEL_286;
      }

      if (v123 + 32 > buf)
      {
        goto LABEL_350;
      }

      *(v123 + 1) = bswap32(*(v5 + 200));
      v142 = (v123 + 8);
      v143 = -8;
    }

    if (v55 != v116)
    {
      v144 = v143 + v119;
      v145 = v118;
      while (v121)
      {
        if (v144 <= 0x17)
        {
          goto LABEL_286;
        }

        *v142 = bswap32(*v121);
        v146 = *(v121 + 1);
        *(v142 + 4) = v146;
        *(v142 + 4) = v146 | (*(v121 + 2) << 8);
        *(v142 + 4) = bswap32(*(v121 + 2) & 0xFFFFFF) & 0xFFFFFF00 | v146;
        *(v142 + 8) = vrev32q_s8(*(v121 + 12));
        v142 += 24;
        v144 -= 24;
        v121 += 36;
        if (!--v145)
        {
          goto LABEL_263;
        }
      }

      if (v144 <= 0x17)
      {
        v3 = 2147549187;
      }

      else
      {
        v3 = 2147549185;
      }

      goto LABEL_286;
    }

LABEL_263:
    v147 = v118;
    v148 = _RTCPFinalizePacket(v123, v119, &v200, v142 - v123);
    if ((v148 & 0x80000000) != 0)
    {
      v3 = v148;
LABEL_286:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          RTPSendRTCP_cold_2();
        }
      }

      goto LABEL_213;
    }

    v117 = v184;
    v115 = (v185 + v200);
    v201 = v185 + v200;
    v116 += v147;
  }

  while (v55 != v116);
  v170 = 4 * v186 + 4;
  v66 = (v115 + v170);
  if (v66 >= 1473)
  {
    RTPSendRTCP_cold_3();
    goto LABEL_343;
  }

  v171 = &v211[v115];
  if (v211 > v171 || v186 > 0x102u || v171 > buf || 1472 - v115 < v170)
  {
    goto LABEL_350;
  }

  memcpy(&v211[v115], v205, 4 * v186 + 4);
  v201 = v66;
LABEL_99:
  v67 = *v2;
  if ((*v2 & 0x100) != 0)
  {
    v69 = 1472 - v66;
    *buf = v69;
    v70 = &v211[v66];
    if (v5 >= v195 || v70 > buf || v211 > v70)
    {
      goto LABEL_350;
    }

    if (v69 <= 3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          RTPSendRTCP_cold_4();
        }
      }
    }

    else
    {
      v71 = *(v2 + 80);
      v72 = *(v2 + 88);
      v73 = *(v2 + 96);
      v74 = *(v2 + 104);
      *v70 = *v70 & 0x20 | 0xCF80;
      v75 = v70 + 4;
      if ((v69 & 0x7FFFFFFFFFFFFFFCLL) == 4)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            RTPSendRTCP_cold_8();
          }
        }
      }

      else
      {
        v150 = v70 + 8;
        if (v70 + 8 > buf)
        {
          goto LABEL_350;
        }

        *v75 = *(v5 + 4832);
        if (v75 > v150)
        {
          goto LABEL_350;
        }

        v151 = 1464 - v66;
        if (v71 && v72)
        {
          while (1)
          {
            v22 = v151 >= 0x28;
            v151 -= 40;
            if (!v22)
            {
              break;
            }

            v152 = *(v5 + 4832);
            *v150 = 6;
            v153 = *(v150 + 1) & 0x7F | (*v71 << 7);
            *(v150 + 1) = v153;
            v154 = v153 & 0xBF | (*(v71 + 1) << 6);
            *(v150 + 1) = v154;
            v155 = v154 & 0xDF | (32 * *(v71 + 2));
            *(v150 + 1) = v155;
            *(v150 + 1) = v155 & 0xE0 | (8 * (*(v71 + 4) & 3));
            v150[1] = 2304;
            *(v150 + 1) = bswap32(v152);
            v150[4] = bswap32(*(v71 + 12)) >> 16;
            v150[5] = bswap32(*(v71 + 14)) >> 16;
            *(v150 + 6) = vrev32q_s8(*(v71 + 16));
            *(v150 + 14) = vrev32_s8(*(v71 + 32));
            *(v150 + 9) = *(v71 + 40);
            v150 += 20;
            if (!--v72)
            {
              goto LABEL_273;
            }
          }

          v166 = VRTraceGetErrorLogLevelForModule();
          if (v166 >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              RTPSendRTCP_cold_5();
            }
          }
        }

        else
        {
LABEL_273:
          if (v73 && v74)
          {
            while (v151 > 0x23)
            {
              v156 = v150 + 18;
              v157 = bswap32(*(v5 + 4832));
              *v150 = 134217735;
              *(v150 + 1) = v157;
              *(v150 + 2) = *v73;
              *(v150 + 6) = vrev16_s8(*(v73 + 4));
              *(v150 + 10) = *(v73 + 12);
              *(v150 + 28) = *(v73 + 20);
              *(v150 + 29) = 0;
              v150[15] = bswap32(*(v73 + 22)) >> 16;
              v150[16] = bswap32(*(v73 + 24)) >> 16;
              v150[17] = bswap32(*(v73 + 26)) >> 16;
              v151 -= 36;
              v150 += 18;
              if (!--v74)
              {
                v150 = v156;
                goto LABEL_278;
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                RTPSendRTCP_cold_6();
              }
            }
          }

          else
          {
LABEL_278:
            v158 = _RTCPFinalizePacket(v70, v69, buf, v150 - v70);
            if ((v158 & 0x80000000) == 0)
            {
              v66 = (v66 + *buf);
              v201 = v66;
              v67 = *v2;
              goto LABEL_100;
            }

            v167 = v158;
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              v3 = v167;
            }

            else
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                RTPSendRTCP_cold_7();
              }

              v3 = v167;
            }
          }
        }
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPSendRTCP_cold_9();
      }
    }

    goto LABEL_213;
  }

LABEL_100:
  if ((v67 & 0x600) == 0)
  {
    goto LABEL_132;
  }

  if (v5 >= v195)
  {
    goto LABEL_350;
  }

  v68 = 1472 - v66;
  if (v68 > 0x5C0)
  {
    goto LABEL_350;
  }

  *buf = 0;
  *&buf[8] = 0;
  if ((v67 & 0x200) != 0)
  {
    *buf = 6;
    *&buf[8] = *(v2 + 152);
    v202 = 0;
    v76 = &v211[v66];
    if (v68 - v66 < v68 || v76 < v211 || v76 > &v211[v68])
    {
      goto LABEL_350;
    }

    v77 = _RTCPAddPSFBAlfbPacket(v5, v76, 1472 - v66, &v202, buf);
    if ((v77 & 0x80000000) != 0)
    {
      v3 = v77;
      RTPSendRTCP_cold_10();
      goto LABEL_346;
    }

    v3 = 0;
    v66 = (v66 + v202);
    v201 = v66;
    if ((*v2 & 0x400) == 0)
    {
      goto LABEL_131;
    }

LABEL_127:
    v78 = *(v2 + 160);
    *buf = 5;
    *&buf[8] = v78;
    v202 = 0;
    v79 = &v211[v66];
    if (v79 > &v211[v68] || v79 < v211)
    {
      goto LABEL_350;
    }

    v3 = _RTCPAddPSFBAlfbPacket(v5, v79, v68 - v66, &v202, buf);
    if ((v3 & 0x80000000) == 0)
    {
      v66 = (v66 + v202);
      v201 = v66;
      goto LABEL_131;
    }

    RTPSendRTCP_cold_11();
    goto LABEL_346;
  }

  v3 = 2147549192;
  if ((v67 & 0x400) != 0)
  {
    goto LABEL_127;
  }

LABEL_131:
  if ((v3 & 0x80000000) != 0)
  {
LABEL_346:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPSendRTCP_cold_12();
      }
    }

    goto LABEL_213;
  }

LABEL_132:
  v80 = *(v2 + 16);
  if (!v80)
  {
    goto LABEL_138;
  }

  v202 = 1472 - v66;
  v81 = *(v2 + 4);
  v82 = *(v2 + 8);
  *&buf[4] = 0;
  *&buf[8] = v82;
  *buf = v81;
  *&buf[16] = v80;
  v83 = &v211[v66];
  if (v5 >= v195 || v83 > buf || v211 > v83)
  {
    goto LABEL_350;
  }

  v84 = _RTCPAddAppPacket(v5, v83, 1472 - v66, &v202, buf);
  if ((v84 & 0x80000000) != 0)
  {
    v3 = v84;
    RTPSendRTCP_cold_13();
    goto LABEL_213;
  }

  v66 = (v66 + v202);
  v201 = v66;
LABEL_138:
  if (v191)
  {
    v85 = 4 * v191 + 4;
    v86 = (v66 + v85);
    if (v86 < 1473)
    {
      v87 = &v211[v66];
      if (v211 <= v87 && v191 <= 0x102u && v87 <= buf && 1472 - v66 >= v85)
      {
        memcpy(v87, __src, v85);
        v201 = v86;
        v66 = v86;
        goto LABEL_145;
      }

LABEL_350:
      __break(0x5519u);
    }

    RTPSendRTCP_cold_14();
    goto LABEL_343;
  }

LABEL_145:
  if (v192)
  {
    v88 = (4 * v192 + 4);
    v89 = (v66 + v88);
    if (v89 < 1473)
    {
      v90 = &v211[v66];
      if (v90 > buf || v211 > v90 || 1472 - v66 < v88)
      {
        goto LABEL_350;
      }

      memcpy(v90, __b, v88);
      v201 = v89;
      v66 = v89;
      goto LABEL_151;
    }

    RTPSendRTCP_cold_15();
LABEL_343:
    v3 = *buf;
    goto LABEL_213;
  }

LABEL_151:
  if (*(v5 + 96))
  {
    v91 = (1472 - v66);
    *buf = 1472 - v66;
    v92 = &v211[v66];
    if (v92 > buf || v211 > v92 || v5 >= v195 || (v91 & 0x80000000) != 0 || 1472 - v66 < v91)
    {
      goto LABEL_350;
    }

    v93 = RTCPAddFIR(v5, v92, v91, buf);
    if ((v93 & 0x80000000) != 0)
    {
      v3 = v93;
      RTPSendRTCP_cold_16();
      goto LABEL_213;
    }

    v66 = (v66 + *buf);
    v201 = v66;
    *(v5 + 96) = 0;
  }

  if (*(v5 + 104))
  {
    v94 = (1472 - v66);
    *buf = 1472 - v66;
    v95 = &v211[v66];
    if (v95 > buf || v211 > v95 || v5 >= v195 || (v94 & 0x80000000) != 0 || 1472 - v66 < v94)
    {
      goto LABEL_350;
    }

    v96 = RTCPAddPLI(v5, v95, v94, buf);
    if ((v96 & 0x80000000) != 0)
    {
      v3 = v96;
      RTPSendRTCP_cold_17();
      goto LABEL_213;
    }

    v66 = (v66 + *buf);
    v201 = v66;
    *(v5 + 104) = 0;
  }

  if (*(v5 + 112))
  {
    v97 = 1472 - v66;
    *buf = 1472 - v66;
    v98 = &v211[v66];
    if (v98 > buf || v211 > v98 || v5 >= v195 || v97 < 0 || 1472 - v66 < v97)
    {
      goto LABEL_350;
    }

    v99 = RTCPAddTST(v5, v98, v97, buf, 0);
    if ((v99 & 0x80000000) != 0)
    {
      v3 = v99;
      RTPSendRTCP_cold_18();
      goto LABEL_213;
    }

    v66 = (v66 + *buf);
    v201 = v66;
    *(v5 + 112) = 0;
  }

  if (*(v5 + 120))
  {
    v100 = 1472 - v66;
    *buf = 1472 - v66;
    v101 = &v211[v66];
    if (v101 > buf || v211 > v101 || v5 >= v195 || v100 < 0 || 1472 - v66 < v100)
    {
      goto LABEL_350;
    }

    v102 = RTCPAddTST(v5, v101, v100, buf, 1);
    if ((v102 & 0x80000000) != 0)
    {
      v3 = v102;
      RTPSendRTCP_cold_19();
      goto LABEL_213;
    }

    v66 = (v66 + *buf);
    v201 = v66;
    *(v5 + 120) = 0;
  }

  if (*(v5 + 128))
  {
    v103 = 1472 - v66;
    *buf = 1472 - v66;
    v104 = &v211[v66];
    if (v104 > buf || v211 > v104 || v5 >= v195 || v103 < 0 || 1472 - v66 < v103)
    {
      goto LABEL_350;
    }

    v105 = RTCPAddTMMB(v5, v104, v103, buf, 0);
    if ((v105 & 0x80000000) != 0)
    {
      v3 = v105;
      RTPSendRTCP_cold_20();
      goto LABEL_213;
    }

    v66 = (v66 + *buf);
    v201 = v66;
    *(v5 + 128) = 0;
  }

  if (*(v5 + 136))
  {
    v106 = 1472 - v66;
    *buf = 1472 - v66;
    v107 = &v211[v66];
    if (v107 > buf || v211 > v107 || v5 >= v195 || v106 < 0 || 1472 - v66 < v106)
    {
      goto LABEL_350;
    }

    v108 = RTCPAddTMMB(v5, v107, v106, buf, 1);
    if ((v108 & 0x80000000) != 0)
    {
      v3 = v108;
      RTPSendRTCP_cold_21();
      goto LABEL_213;
    }

    v66 = (v66 + *buf);
    v201 = v66;
    *(v5 + 136) = 0;
  }

  if (v190)
  {
    if (v66 >= 1465)
    {
      RTPSendRTCP_cold_22(v66, buf);
      goto LABEL_343;
    }

    v109 = &v211[v66];
    if (v109 > buf || v211 > v109)
    {
      goto LABEL_350;
    }

    *v109 = v189 | v188 | v187;
    LODWORD(v66) = v66 + 8;
    v201 = v66;
  }

  v196 = v66 - 8;
  if (v5 >= v195)
  {
    goto LABEL_350;
  }

  v110 = SRTCPEncrypt(v5 + 7976, &v211[8], v66 - 8, 1464, &v196);
  if (v110 < 0 && v110 != -2145255368)
  {
    RTPSendRTCP_cold_24(v110, buf);
    goto LABEL_343;
  }

  v201 = v196 + 8;
  v111 = SRTCPAddAuthenticationTag((v5 + 7976), 0x5C0u, v211, v196 + 8, &v201);
  if (v111 < 0 && v111 != -2145255368)
  {
    RTPSendRTCP_cold_23(v111, buf);
    goto LABEL_343;
  }

  v112 = (*v2 & 0x48) != 0;
  if (*(v5 + 11296))
  {
    v113 = _RTCPSendWithTransportStream(v5, v211, v201, v112, v2);
  }

  else
  {
    v113 = _RTCPSendWithSocket(v5, v211, v201, v112);
  }

  v3 = v113;
LABEL_213:
  CheckOutHandleDebug();
  return v3;
}

unint64_t RTPSendRateControlPacket(uint64_t a1, _BYTE *a2)
{
  v4 = 2147549186;
  v5 = CheckInHandleDebug();
  if (v5)
  {
    if (*(v5 + 184))
    {
      if ((*a2 & 0x20) != 0)
      {
        v4 = RTPSendRTCP(a1);
      }

      else
      {
        v4 = 2147549200;
      }
    }

    else
    {
      v4 = 0;
    }

    CheckOutHandleDebug();
  }

  return v4;
}

uint64_t RTCPGetVoIPMetricsReportBlock(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (v3)
  {
    if (*(v3 + 188))
    {
      if (*(v3 + 7004))
      {
        v4 = *(v3 + 704);
        if (v4)
        {
          v5 = *(v3 + 692) - *(v3 + 688) + 1;
          v6 = ((v5 - v4) << 8) / v5;
        }

        else
        {
          LOBYTE(v6) = -1;
        }

        v7 = 0;
        *a2 = v6;
        v8 = *(*(v3 + 10592) + 48);
        if (v8 > 0xFFFE)
        {
          LOWORD(v8) = -1;
        }

        *(a2 + 8) = v8;
        goto LABEL_11;
      }

      RTCPGetVoIPMetricsReportBlock_cold_1();
    }

    else
    {
      RTCPGetVoIPMetricsReportBlock_cold_2(&v10);
    }

    v7 = v10;
LABEL_11:
    CheckOutHandleDebug();
    return v7;
  }

  return 2147549186;
}

unint64_t _RTCPInitializeReceptionReportBlock(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 692) - *(a1 + 688) + 1;
  v5 = *(a1 + 704);
  if (v4 - v5 >= 0x7FFFFF)
  {
    v6 = 0x7FFFFFLL;
  }

  else
  {
    v6 = v4 - v5 + ((v4 - v5) >> 63 << 24);
  }

  v7 = *(a1 + 708);
  v8 = (v4 - v7);
  v9 = v8 - (v5 - *(a1 + 712));
  v10 = v4 - v7;
  *(a1 + 708) = v4;
  *(a1 + 712) = v5;
  if (v4 == v7 || v9 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = ((v9 << 8) / v8);
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (ErrorLogLevelForModule >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (ErrorLogLevelForModule)
    {
      v18 = *(a1 + 200);
      v19 = *(a1 + 4832);
      v23 = 136317442;
      v24 = v16;
      v25 = 2080;
      v26 = "_RTCPInitializeReceptionReportBlock";
      v27 = 1024;
      v28 = 769;
      v29 = 1024;
      v30 = v18;
      v31 = 1024;
      v32 = v19;
      v33 = 1024;
      v34 = v4;
      v35 = 2048;
      v36 = v6;
      v37 = 1024;
      v38 = v10;
      v39 = 2048;
      v40 = v9;
      v41 = 1024;
      v42 = v12;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d localSSRC:%X remoteSSRC:%X dwPacketExp = %u lPacketLost = %ld, dwPacketExpInt = %d, lPacketLostInt = %ld, fraction = %d", &v23, 0x4Eu);
    }
  }

  if (*(a1 + 6500))
  {
    v20 = GetNTPTime(ErrorLogLevelForModule, v14) - *(a1 + 6496);
  }

  else
  {
    v20 = 0;
  }

  *a2 = *(a1 + 4832);
  *(a2 + 4) = v12;
  v21 = *(a1 + 692);
  *(a2 + 8) = v6;
  *(a2 + 12) = v21;
  LODWORD(v15) = *(a1 + 4828);
  *(a2 + 16) = vcvtad_u64_f64(*(a1 + 27792) * v15);
  *(a2 + 20) = NTPToMiddle32(*(a1 + 6504));
  result = NTPToMiddle32(v20);
  *(a2 + 24) = result;
  *(a2 + 32) = *(a1 + 617);
  return result;
}

unint64_t _RTCPAddCustomReportPacket(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, uint64_t a5)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(0x5519u);
  }

  result = 2147549187;
  if (a3 > 3)
  {
    *a2 = *a2 & 0x20 | 0xCC80;
    if (a3 - 12 <= 0xFFFFFFFFFFFFFFF7)
    {
      v10 = *a5;
      v11 = (a2 + 12);
      *(a2 + 4) = bswap32(*(a1 + 200));
      *(a2 + 8) = bswap32(v10);
      v14[0] = a2 + 12;
      v14[1] = a3 - 12;
      if (v10 == 1297568338 || v10 == 1297568594)
      {
        result = _RTCPAddCustomReport(v14, a1, a5);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v11 = v14[0];
      }

      else if (v10 == 1380144204)
      {
        if (a3 - 12 < 0x14)
        {
          return result;
        }

        v12 = *(a5 + 8);
        v13 = *v12;
        *(a2 + 28) = *(v12 + 4);
        *v11 = v13;
        v11 = (a2 + 32);
      }

      return _RTCPFinalizePacket(a2, a3, a4, v11 - a2);
    }
  }

  return result;
}

unint64_t _RTCPAddAppPacket(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, uint64_t a5)
{
  if (a3 < 4)
  {
    return 2147549187;
  }

  *a2 = *a2 & 0x20 | 0xCC80;
  v7 = a3 - 12;
  if (a3 - 12 > 0xFFFFFFFFFFFFFFF7)
  {
    return 2147549187;
  }

  v9 = bswap32(*a5);
  *(a2 + 4) = bswap32(*(a1 + 200));
  *(a2 + 8) = v9;
  v10 = *(a5 + 16);
  if (v7 < v10)
  {
    return 2147549187;
  }

  v13 = a2 + 12;
  result = memcpy((a2 + 12), *(a5 + 8), v10);
  v14 = v13 + *(a5 + 16);
  if (v14 > a2 + a3 || v13 > v14)
  {
    __break(0x5519u);
  }

  else
  {

    return _RTCPFinalizePacket(a2, a3, a4, v14 - a2);
  }

  return result;
}

uint64_t RTCPAddFIR(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = *(a1 + 200);
  v5 = *(a1 + 4832);
  v6 = *(a1 + 100);
  if (a3 < 20)
  {
    v7 = 2147549192;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTCPAddFIR_cold_1();
      }
    }
  }

  else
  {
    v7 = 0;
    *a2 = 67161732;
    *(a2 + 4) = bswap32(v4);
    *(a2 + 12) = bswap32(v5);
    *(a2 + 16) = v6;
    *(a2 + 17) = 0;
    *(a2 + 19) = 0;
    *a4 = 20;
  }

  return v7;
}

uint64_t RTCPAddPLI(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4)
{
  if (a3 < 12)
  {
    v4 = 2147549192;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTCPAddPLI_cold_1();
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = bswap32(*(a1 + 4832));
    v6 = bswap32(*(a1 + 200));
    *a2 = 33607297;
    a2[1] = v6;
    a2[2] = v5;
    *a4 = 12;
  }

  return v4;
}

uint64_t RTCPAddTST(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, int a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3 < 20)
  {
    v6 = 2147549192;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v18 = "TSTR";
        v19 = 136316418;
        v20 = v15;
        v21 = 2080;
        v22 = "RTCPAddTST";
        if (a5 == 1)
        {
          v18 = "TSTN";
        }

        v23 = 1024;
        v24 = 560;
        v25 = 2080;
        v26 = v18;
        v27 = 1024;
        v28 = 20;
        v29 = 1024;
        v30 = a3;
        _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unable to add %s, buffer too small: %d > %d", &v19, 0x32u);
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 108;
    if (a5 == 1)
    {
      v7 = 117;
    }

    v8 = *(a1 + v7);
    v9 = 116;
    if (a5 == 1)
    {
      v9 = 124;
    }

    v10 = *(a1 + v9);
    v11 = *(a1 + 4832);
    v12 = *(a1 + 200);
    if (a5 == 1)
    {
      v13 = -12666;
    }

    else
    {
      v13 = -12667;
    }

    *a2 = v13;
    *(a2 + 2) = 1024;
    *(a2 + 4) = bswap32(v12);
    *(a2 + 12) = bswap32(v11);
    *(a2 + 16) = bswap32(v10 & 0x1F | (v8 << 24));
    *a4 = 20;
  }

  return v6;
}

uint64_t RTCPAddTMMB(_DWORD *a1, uint64_t a2, int a3, _DWORD *a4, int a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = 35;
  if (a5 == 1)
  {
    v8 = -12924;
  }

  else
  {
    v7 = 33;
    v8 = -12925;
  }

  v9 = a1[v7];
  if (v9 >= 0x20000)
  {
    LOBYTE(v10) = 0;
    v11 = v9 >> 17;
    do
    {
      LOBYTE(v10) = v10 + 1;
      v12 = v11 > 1;
      v11 >>= 1;
    }

    while (v12);
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  if (a3 < 20)
  {
    v13 = 2147549192;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v22 = "TMMBR";
        v23 = 136316418;
        v24 = v19;
        v25 = 2080;
        v26 = "RTCPAddTMMB";
        if (a5 == 1)
        {
          v22 = "TMMBN";
        }

        v27 = 1024;
        v28 = 634;
        v29 = 2080;
        v30 = v22;
        v31 = 1024;
        v32 = 20;
        v33 = 1024;
        v34 = a3;
        _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unable to add %s, buffer too small: %d > %d", &v23, 0x32u);
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = (v9 >> v10 << 9) | (v10 << 26);
    v15 = bswap32(a1[50]);
    v16 = bswap32(a1[1208]);
    v17 = a1[3] == 0;
    *a2 = v8;
    if (v17)
    {
      v18 = 40;
    }

    else
    {
      v18 = 60;
    }

    *(a2 + 2) = 1024;
    *(a2 + 4) = v15;
    *(a2 + 8) = 0;
    *(a2 + 12) = v16;
    *(a2 + 16) = bswap32(v14 | v18);
    *a4 = 20;
  }

  return v13;
}

uint64_t _RTCPSendWithTransportStream(uint64_t a1, void *a2, size_t a3, char a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = unk_1DBD47770;
  v19 = xmmword_1DBD47780;
  memset(v20, 170, sizeof(v20));
  memset(blockBufferOut, 170, sizeof(blockBufferOut));
  VCPacketInitialize(blockBufferOut);
  if (!a5)
  {
    _RTCPSendWithTransportStream_cold_2();
LABEL_15:
    v14 = v16;
    goto LABEL_12;
  }

  if (*(a5 + 130) >= 0xDu)
  {
    _RTCPSendWithTransportStream_cold_1(a5 + 130, &v16);
    goto LABEL_15;
  }

  result = CMBlockBufferCreateWithMemoryBlock(*(a1 + 10664), a2, a3, *MEMORY[0x1E695E498], 0, 0, a3, 0, blockBufferOut);
  if (result)
  {
    if (result >= 0)
    {
      v15 = result;
    }

    else
    {
      v15 = -result;
    }

    v14 = v15 | 0xD0010000;
    goto LABEL_12;
  }

  LOWORD(blockBufferOut[1]) = 257;
  v20[8] = a4;
  v20[9] = 1;
  BYTE4(blockBufferOut[4]) = *(a5 + 131);
  blockBufferOut[5] = *(a5 + 136);
  BYTE2(blockBufferOut[4]) = *(a5 + 130);
  LOBYTE(blockBufferOut[6]) = *(a1 + 10646);
  BYTE1(blockBufferOut[6]) = *(a5 + 144);
  if (!BYTE2(blockBufferOut[4]))
  {
LABEL_7:
    v11 = _RTPEnsureTransportStreamsActivated(a1);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = *(a1 + 11296);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v13)
      {
        v14 = 4294954514;
        goto LABEL_12;
      }

      v11 = v13(v12, blockBufferOut);
    }

    v14 = v11;
LABEL_12:
    VCPacketInvalidate(blockBufferOut);
    return v14;
  }

  if (BYTE2(blockBufferOut[4]) <= 0xCu)
  {
    __memcpy_chk();
    goto LABEL_7;
  }

  __break(0x5519u);
  return result;
}

uint64_t _RTCPSendWithSocket(uint64_t a1, _OWORD *a2, size_t a3, char a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  DWORD2(v8[0]) = *(a1 + 10584);
  BYTE9(v9) = a4;
  BYTE10(v9) = 1;
  v4 = 0;
  if (VTP_Send(*(a1 + 8), a2, a3, 0, v8) == -1)
  {
    v4 = *__error() | 0xC0010000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTCPSendWithSocket_cold_1(v5, v6);
      }
    }
  }

  return v4;
}

uint64_t _RTCPTransport_ParsePacket(unint64_t a1, uint64_t *a2, int a3)
{
  v115 = *MEMORY[0x1E69E9840];
  v3 = a2[13];
  v4 = v3 + a2[14];
  v5 = v3 + a3;
  v6 = a2 + 2;
  v7 = a2 + 12;
  *(a2 + 8) = 0;
  v8 = 1;
  v9 = a2 + 2;
  v10 = 1;
  v11 = v3;
  do
  {
    if ((v11 + 2) > v5)
    {
      v16 = 2147549191;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _RTCPTransport_ParsePacket_cold_13();
        }
      }

      return v16;
    }

    if (v11 && (v11 >= v4 || v11 < v3))
    {
      goto LABEL_231;
    }

    v12 = bswap32(v11[1]) >> 16;
    v11[1] = v12;
    v13 = &v11[2 * v12 + 2];
    if (v13 > v5)
    {
      if (v10)
      {
        return 0;
      }

LABEL_27:
      v17 = 0;
      v96 = *a2;
      v94 = a2 + 124;
      v98 = a2 + 1596;
      v95 = a1 + 27800;
      v100 = a2 + 2;
      v99 = a2 + 12;
      while (2)
      {
        v18 = &v6[v17];
        if (v18 >= v7 || v18 < v6)
        {
          goto LABEL_231;
        }

        v20 = *v18;
        v21 = (*v18 + 518);
        v22 = **v18;
        v23 = v22 >> 8;
        if (v22 >> 8 > 0xC9)
        {
          if (v22 >> 8 <= 0xCB)
          {
            if (v23 == 202)
            {
              if (v20[1] - 67 <= 0xFFFFFFBD)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    _RTCPTransport_ParsePacket_cold_10();
                  }
                }

                return 2147549191;
              }
            }

            else
            {
              if (v23 != 203)
              {
                goto LABEL_191;
              }

              if (v20[1] != 1)
              {
                ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
                if (ErrorLogLevelForModule >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    _RTCPTransport_ParsePacket_cold_9();
                  }
                }

                return 2147549191;
              }
            }

            *(v20 + 1) = bswap32(*(v20 + 1));
            goto LABEL_191;
          }

          if (v23 != 204)
          {
            if (v23 != 205)
            {
              if (v23 != 206)
              {
                goto LABEL_191;
              }

              v24 = v22 & 0x1F;
              if (v24 <= 4)
              {
                if (v24 == 1)
                {
                  if (v20[1] != 2)
                  {
                    goto LABEL_200;
                  }

                  *(v20 + 2) = vrev32_s8(*(v20 + 2));
                }

                else
                {
                  if (v24 != 2)
                  {
                    if (v24 == 4 && v20[1] == 4)
                    {
                      *(v20 + 2) = vrev32_s8(*(v20 + 2));
                      *(v20 + 6) = bswap32(*(v20 + 3));
                      goto LABEL_191;
                    }

LABEL_200:
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        _RTCPTransport_ParsePacket_cold_5();
                      }
                    }

                    return 2147549191;
                  }

                  if (v20[1] != 3)
                  {
                    goto LABEL_200;
                  }

                  *(v20 + 2) = vrev32_s8(*(v20 + 2));
                  *(v20 + 3) = bswap32(*(v20 + 3));
                }

                goto LABEL_191;
              }

              if (v24 != 5 && v24 != 6)
              {
                if (v24 != 15)
                {
                  goto LABEL_200;
                }

                if (v20 >= v21)
                {
                  goto LABEL_231;
                }

                v65 = v20[1];
                if (v65 > 0x102)
                {
                  goto LABEL_231;
                }

                v102 = *v18;
                v103 = 4 * v65 + 4;
                v54 = _RTCPProcessCommonHeader(&v102);
                if ((v54 & 0x80000000) != 0)
                {
                  return v54;
                }

                v66 = v103;
                v67 = v103 - 12;
                if (v103 < 0xC)
                {
                  return 2147549192;
                }

                v68 = v102;
                *v102 = vrev32_s8(*v102);
                v69 = bswap32(v68[1].u32[0]);
                v68[1].i32[0] = v69;
                if (v69 == 5)
                {
                  if (v67 < 4)
                  {
                    v88 = 0;
                    v16 = 2147549192;
                    goto LABEL_189;
                  }

                  v16 = 0;
                  v68[1].i32[1] = bswap32(v68[1].u32[1]);
                  v67 = v66 - 16;
                }

                else
                {
                  if (v69 == 6)
                  {
                    if (v67 >= 8)
                    {
                      v16 = 0;
                      v68[1].i32[1] = bswap32(v68[1].u32[1]);
                      v68[2].i16[0] = bswap32(v68[2].u16[0]) >> 16;
                      v67 = v66 - 20;
                      goto LABEL_188;
                    }

                    v88 = 0;
                    v16 = 2147549187;
LABEL_189:
                    if (v67)
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        VRTraceErrorLogLevelToCSTR();
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                        {
                          _RTCPTransport_ParsePacket_cold_4();
                        }
                      }

                      return 2147549191;
                    }

                    if ((v88 & 1) == 0)
                    {
                      return v16;
                    }

LABEL_191:
                    v17 = (v17 + 1);
                    v6 = v100;
                    v7 = v99;
                    if (v17 >= *(a2 + 8))
                    {
                      return 0;
                    }

                    continue;
                  }

                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v86 = VRTraceErrorLogLevelToCSTR();
                    v87 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136316162;
                      *&buf[4] = v86;
                      *&buf[12] = 2080;
                      *&buf[14] = "_RTCPProcessPSFBAlfbPacket";
                      v105 = 1024;
                      v106 = 1400;
                      v107 = 1024;
                      v108 = 1400;
                      v109 = 1024;
                      v110 = v69;
                      _os_log_error_impl(&dword_1DB56E000, v87, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Unsupported PSFB ALFB app type=%u", buf, 0x28u);
                    }
                  }

                  v16 = 0;
                }

LABEL_188:
                v88 = 1;
                goto LABEL_189;
              }

              if (v20[1] != 4)
              {
                goto LABEL_200;
              }

LABEL_154:
              *(v20 + 2) = vrev32q_s8(*(v20 + 2));
              goto LABEL_191;
            }

            v61 = v22 & 0x1F;
            if (v61 == 4 || v61 == 3)
            {
              if (v20[1] != 4)
              {
                goto LABEL_197;
              }

              goto LABEL_154;
            }

            if (v61 != 1 || (v62 = v20[1], (v62 - 3) > 0xFF))
            {
LABEL_197:
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  _RTCPTransport_ParsePacket_cold_3();
                }
              }

              return 2147549191;
            }

            if (v20 < v21)
            {
              *(v20 + 2) = vrev32_s8(*(v20 + 2));
              v63 = (v62 - 2);
              v64 = (v20 + 6);
              while (v64 < v21 && v64 >= v20 + 6)
              {
                *v64 = bswap32(*v64) >> 16;
                v64[1] = bswap32(v64[1]) >> 16;
                v64 += 2;
                if (!--v63)
                {
                  goto LABEL_191;
                }
              }
            }

LABEL_231:
            __break(0x5519u);
          }

          if (v20 >= v21)
          {
            goto LABEL_231;
          }

          v53 = 4 * v20[1] + 4;
          if (v20 > (v20 + v53))
          {
            goto LABEL_231;
          }

          *buf = *v18;
          *&buf[8] = v53;
          v54 = _RTCPProcessCommonHeader(buf);
          if ((v54 & 0x80000000) != 0)
          {
            return v54;
          }

          v55 = *&buf[8];
          v56 = *&buf[8] - 8;
          if (*&buf[8] < 8uLL)
          {
            return 2147549192;
          }

          v57 = *buf;
          v58 = *(*buf + 4);
          v59 = bswap32(v58);
          **buf = bswap32(**buf);
          *(v57 + 4) = v59;
          if (v59 > 1297568593)
          {
            if (v59 != 1380144204)
            {
              v60 = 21330;
LABEL_129:
              if (v59 == (v60 | 0x4D570000))
              {
                if (v58 == 1381193549)
                {
                  v70 = -10;
                }

                else
                {
                  v70 = -11;
                }

                *(v20 + 1) = v70;
                v71 = *(a2 + 30);
                v72 = &v94[v71];
                if (&v94[v71] > v98)
                {
                  goto LABEL_231;
                }

                if (v94 > v72)
                {
                  goto LABEL_231;
                }

                v73 = 1472 - v71;
                if (v73 > v98 - v72)
                {
                  goto LABEL_231;
                }

                v74 = v57 + 8 - v20;
                v75 = v73 - v74;
                if (v73 < v74)
                {
                  return 2147549192;
                }

                if (v74 > v53)
                {
                  goto LABEL_231;
                }

                memcpy(v72, v20, v57 + 8 - v20);
                v76 = &v72[v74];
                if (&v72[v74] > v98 || v72 > v76)
                {
                  goto LABEL_231;
                }

                if (v75 < 4)
                {
                  return 2147549192;
                }

                *v76 = 0;
                v77 = (v76 + 4);
                if (v76 + 4 > v98 || v76 > v77)
                {
                  goto LABEL_231;
                }

                if (!v56)
                {
                  return 2147549192;
                }

                LODWORD(v102) = v75 - 4;
                if ((v56 & 0x80000000) != 0 || v56 > v56)
                {
                  goto LABEL_231;
                }

                v54 = CompressionUtils_DecompressWithZlib();
                if ((v54 & 0x80000000) != 0)
                {
                  return v54;
                }

                v78 = v102;
                if (v75 - 4 < v102)
                {
                  goto LABEL_231;
                }

                if (v58 == 1381193549)
                {
                  if (v102 < 0x11)
                  {
                    return 2147549192;
                  }

                  *(v76 + 4) = vrev32q_s8(*(v76 + 4));
                  *(a1 + 6496) = v96;
                  *(a1 + 6508) = *(v76 + 1);
                  *(a1 + 6504) = *(v76 + 2);
                  *(a1 + 617) = v76[20] & 0xF;
                  v79 = v76 + 21;
                  if (v77 > (v76 + 21) || v79 > v77 + v78)
                  {
                    goto LABEL_231;
                  }

                  v80 = -17;
                }

                else
                {
                  if (!v102)
                  {
                    return 2147549192;
                  }

                  v79 = v76 + 5;
                  v80 = -1;
                }

                v83 = v80 + v78;
                if (v83)
                {
                  do
                  {
                    if (v83 < 0xC)
                    {
                      return 2147549192;
                    }

                    v84 = v79 + 12;
                    *v79 = bswap32(*v79);
                    *(v79 + 3) = bswap32(*(v79 + 3)) >> 16;
                    *(v79 + 4) = bswap32(*(v79 + 4)) >> 16;
                    ++*v76;
                    v79 += 12;
                    v83 -= 12;
                  }

                  while (v83);
                  v79 = v84;
                }

                v85 = (1472 - *(a2 + 30));
                v102 = v85;
                if (v85 > v98 - v72)
                {
                  goto LABEL_231;
                }

                _RTCPFinalizePacket(v72, v85, &v102, v79 - v72);
                if (v72 + 1036 > v98)
                {
                  goto LABEL_231;
                }

                *(v72 + 1) = bswap32(*(v72 + 1)) >> 16;
                *(a2 + 30) += v102;
                if (v72 >= v98)
                {
                  goto LABEL_231;
                }

                *v18 = v72;
              }

              goto LABEL_191;
            }

            if (v56 < 0x14)
            {
              if (!v56)
              {
                return 2147549192;
              }

LABEL_222:
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  _RTCPTransport_ParsePacket_cold_8();
                }
              }

              return 2147549191;
            }

            if (*(a2 + 8) != 1)
            {
              goto LABEL_222;
            }

            v16 = 0;
            v82 = v55 - 28;
          }

          else
          {
            if (v59 != 5)
            {
              v60 = 21074;
              goto LABEL_129;
            }

            v82 = v55 - 12;
            if (v56 > 3)
            {
              v16 = 0;
            }

            else
            {
              v82 = v56;
              v16 = 2147549192;
            }
          }

          if (v82)
          {
            goto LABEL_222;
          }

          if ((v16 & 0x80000000) != 0)
          {
            return v16;
          }

          goto LABEL_191;
        }

        break;
      }

      if (v22 >> 8 > 0xC7)
      {
        if (v23 == 200)
        {
          v42 = 24 * (v22 & 0x1F);
          if (4 * v20[1] + 4 != v42 + 28)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                _RTCPTransport_ParsePacket_cold_12();
              }
            }

            return 2147549191;
          }

          *(v20 + 2) = vrev32q_s8(*(v20 + 2));
          *(v20 + 10) = vrev32_s8(*(v20 + 10));
          if ((v22 & 0x1F) == 0)
          {
LABEL_91:
            if (VRTraceGetErrorLogLevelForModule() > 7)
            {
              v47 = VRTraceErrorLogLevelToCSTR();
              v48 = *MEMORY[0x1E6986650];
              v49 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  v50 = *(a1 + 28);
                  v51 = *(v20 + 2);
                  v52 = *(v20 + 4);
                  *buf = 136316674;
                  *&buf[4] = v47;
                  *&buf[12] = 2080;
                  *&buf[14] = "_RTCPProcessSenderReportPacket";
                  v105 = 1024;
                  v106 = 1466;
                  v107 = 1024;
                  v108 = 1466;
                  v109 = 1024;
                  v110 = v50;
                  v111 = 1024;
                  v112 = v51;
                  v113 = 1024;
                  v114 = v52;
                  _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Received RTCP SR packet PayloadType=%d NTP Seconds=%u RTPTimestamp=%u", buf, 0x34u);
                }
              }

              else if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
              {
                v89 = *(a1 + 28);
                v90 = *(v20 + 2);
                v91 = *(v20 + 4);
                *buf = 136316674;
                *&buf[4] = v47;
                *&buf[12] = 2080;
                *&buf[14] = "_RTCPProcessSenderReportPacket";
                v105 = 1024;
                v106 = 1466;
                v107 = 1024;
                v108 = 1466;
                v109 = 1024;
                v110 = v89;
                v111 = 1024;
                v112 = v90;
                v113 = 1024;
                v114 = v91;
                _os_log_debug_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEBUG, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Received RTCP SR packet PayloadType=%d NTP Seconds=%u RTPTimestamp=%u", buf, 0x34u);
              }
            }

            *(a1 + 6496) = v96;
            *(a1 + 6508) = *(v20 + 2);
            *(a1 + 6504) = *(v20 + 3);
            if (v95 <= a1)
            {
              goto LABEL_231;
            }

            v81 = _RTPMediaSampleTimeWithReceiveTimestamp(a1, *(v20 + 4), 0);
            *(v20 + 4) = v81;
            *(a1 + 4824) = v81;
            goto LABEL_191;
          }

          v43 = v20 + v42 + 28;
          v44 = v22 & 0x1F;
          v45 = (v20 + 14);
          while (v45 < v43 && v45 >= (v20 + 14))
          {
            v46 = *(v45 + 4) | (bswap32(*(v45 + 4)) << 8);
            *v45 = bswap32(*v45);
            *(v45 + 4) = v46;
            *(v45 + 8) = vrev32q_s8(*(v45 + 8));
            v45 += 24;
            if (!--v44)
            {
              goto LABEL_91;
            }
          }
        }

        else
        {
          if (v23 != 201)
          {
            goto LABEL_191;
          }

          v25 = 24 * (v22 & 0x1F);
          if (4 * v20[1] + 4 != v25 + 8)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                _RTCPTransport_ParsePacket_cold_11();
              }
            }

            return 2147549191;
          }

          *(v20 + 1) = bswap32(*(v20 + 1));
          if ((v22 & 0x1F) == 0)
          {
            goto LABEL_191;
          }

          v26 = v20 + v25 + 8;
          v27 = v22 & 0x1F;
          v28 = (v20 + 4);
          while (v28 < v26 && v28 >= (v20 + 4))
          {
            v29 = *(v28 + 4) | (bswap32(*(v28 + 4)) << 8);
            *v28 = bswap32(*v28);
            *(v28 + 4) = v29;
            *(v28 + 8) = vrev32q_s8(*(v28 + 8));
            v28 += 24;
            if (!--v27)
            {
              goto LABEL_191;
            }
          }
        }

        goto LABEL_231;
      }

      if (v23 != 192)
      {
        if (v23 == 193)
        {
          if (v20[1] != 2)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                _RTCPTransport_ParsePacket_cold_6();
              }
            }

            return 2147549191;
          }

          *(v20 + 1) = bswap32(*(v20 + 1));
          v20[4] = bswap32(v20[4]) >> 16;
          v20[5] = bswap32(v20[5]) >> 16;
        }

        goto LABEL_191;
      }

      if (v20[1] - 7 <= 0xFFFFFFF9)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _RTCPTransport_ParsePacket_cold_7();
          }
        }

        return 2147549191;
      }

      *(v20 + 1) = bswap32(*(v20 + 1));
      BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableLTRPLogging", 0);
      if (BoolValueForKey)
      {
        v31 = 7;
      }

      else
      {
        v31 = 8;
      }

      if (v20 >= v21)
      {
        goto LABEL_231;
      }

      if (((2 * v20[1] + 254) & 0xFELL) == 0)
      {
        goto LABEL_191;
      }

      v32 = BoolValueForKey;
      v33 = 0;
      v34 = 0;
      v35 = v20 + 4;
      while (2)
      {
        if (&v35[v33] >= v20 + 14 || &v35[v33] < v35)
        {
          goto LABEL_231;
        }

        v35[v34] = bswap32(v35[v34]) >> 16;
        if (v31 <= VRTraceGetErrorLogLevelForModule())
        {
          v37 = VRTraceErrorLogLevelToCSTR();
          if (v32)
          {
            v38 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
LABEL_80:
              v40 = v35[v34];
              *buf = 136316162;
              *&buf[4] = v37;
              *&buf[12] = 2080;
              *&buf[14] = "_RTCPTransport_ParsePacket";
              v105 = 1024;
              v106 = 2225;
              v107 = 1024;
              v108 = v17;
              v109 = 1024;
              v110 = v40;
              _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d j=%d awSizeAndFirstMBs=%d", buf, 0x28u);
            }
          }

          else
          {
            v38 = *MEMORY[0x1E6986650];
            v39 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_80;
              }
            }

            else if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              v41 = v35[v34];
              *buf = 136316162;
              *&buf[4] = v37;
              *&buf[12] = 2080;
              *&buf[14] = "_RTCPTransport_ParsePacket";
              v105 = 1024;
              v106 = 2225;
              v107 = 1024;
              v108 = v17;
              v109 = 1024;
              v110 = v41;
              _os_log_debug_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEBUG, " [%s] %s:%d j=%d awSizeAndFirstMBs=%d", buf, 0x28u);
            }
          }
        }

        ++v34;
        ++v33;
        if (v34 >= ((2 * v20[1] - 2) & 0xFEu))
        {
          goto LABEL_191;
        }

        continue;
      }
    }

    if ((*v11 & 0xC0) != 0x80)
    {
      v16 = 2147549191;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _RTCPTransport_ParsePacket_cold_1();
        }
      }

      return v16;
    }

    *(a2 + 8) = v8;
    if (v9 >= v7 || v9 < v6)
    {
      goto LABEL_231;
    }

    v10 = 0;
    v14 = v8 - 1;
    *v9++ = v11;
    ++v8;
    v15 = v13 >= v5 || v14 >= 9;
    v11 = v13;
  }

  while (!v15);
  if (v13 == v5)
  {
    goto LABEL_27;
  }

  v16 = 2147549191;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _RTCPTransport_ParsePacket_cold_2();
    }
  }

  return v16;
}

uint64_t _RTCPPacketCallback(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (v3)
  {
    v6 = v3;
    v7 = _RTCPPacketCreate(v3);
    v12 = v7;
    if (!v7)
    {
      _RTCPPacketCallback_cold_2();
      v4 = v13;
      goto LABEL_13;
    }

    v8 = v7;
    v9 = _RTCPParseVTPPacket(v6, a2, v7);
    v10 = v9;
    if ((v9 & 0x80000000) != 0)
    {
      v4 = 2149711929;
      if (v9 == -2145255367)
      {
LABEL_13:
        _RTCPPacketForget(v6, &v12);
        CheckOutHandleDebug();
        return v4;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _RTCPPacketCallback_cold_1();
        }
      }
    }

    else
    {
      v11 = *(v6 + 10848);
      if (v11)
      {
        (*(v11 + 16))(v11, *(v6 + 10840), v8);
      }
    }

    v4 = v10;
    goto LABEL_13;
  }

  return 2147549186;
}

unint64_t _RTCPPacketCreate(unint64_t result)
{
  if (result)
  {
    result = VCBoundsSafety_AllocatorAllocate(*(result + 10824), 1640, 0);
    if (result)
    {
      if (result + 1640 > v1 || (*(result + 1620) = 0, *(result + 104) = 0, *(result + 112) = 0, *(result + 96) = 0, result >= v1))
      {
        __break(0x5519u);
      }
    }
  }

  return result;
}

uint64_t _RTCPParseVTPPacket(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[21] = *MEMORY[0x1E69E9840];
  *&v9[14] = unk_1DBD47770;
  *&v9[16] = xmmword_1DBD47780;
  memset(&v9[18], 170, 24);
  memset(v9, 170, 112);
  VCPacketInitialize(v9);
  VCGetVCPacketWithVTPPacket(a2, v9);
  _RTCPParseVCPacket(a1, v9, a3);
  v7 = v6;
  VCPacketInvalidate(v9);
  return v7;
}

unint64_t RTCPRegisterPacketCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1 == 0xFFFFFFFFLL)
  {
    v8 = 2147549185;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTCPRegisterPacketCallback_cold_4();
      }
    }

    return v8;
  }

  result = CheckInHandleDebug();
  if (!result)
  {
    v8 = 2147549186;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTCPRegisterPacketCallback_cold_3();
        return 2147549186;
      }
    }

    return v8;
  }

  v7 = result;
  if (*(result + 10848))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTCPRegisterPacketCallback_cold_1();
      }
    }

    CheckOutHandleDebug();
    return 2147549233;
  }

  if (result < result + 27800)
  {
    v9 = _Block_copy(a3);
    *(v7 + 10848) = v9;
    if (v9)
    {
      *(v7 + 10840) = a2;
      v10 = *(v7 + 8);
      if (v10 > 0x3FF)
      {
        if (*(v7 + 11296))
        {
          v8 = _RTPEnsureTransportStreamsActivated(v7);
        }

        else
        {
          v8 = 2147549226;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v16 = *(v7 + 8);
              v17 = 136316162;
              v18 = v14;
              v19 = 2080;
              v20 = "RTCPRegisterPacketCallback";
              v21 = 1024;
              v22 = 2492;
              v23 = 2048;
              v24 = a1;
              v25 = 1024;
              v26 = v16;
              _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d RTPHandle[%p], Socket[%d] is invalid", &v17, 0x2Cu);
              v8 = 2147549226;
            }
          }
        }
      }

      else
      {
        v11 = v7 + 10856;
        *(v7 + 10952) = 0u;
        *(v7 + 10968) = 0u;
        *(v7 + 10920) = 0u;
        *(v7 + 10936) = 0u;
        *(v7 + 10888) = 0u;
        *(v7 + 10904) = 0u;
        *(v7 + 10856) = 0u;
        *(v7 + 10872) = 0u;
        result = __darwin_check_fd_set_overflow(v10, (v7 + 10856), 0);
        if (result)
        {
          v12 = (v11 + ((v10 >> 3) & 0x1FFFFFFC));
          if (v12 >= v7 + 10984 || v12 < v11)
          {
            goto LABEL_33;
          }

          *v12 |= 1 << v10;
        }

        v8 = 0;
        *(v7 + 10832) = VTP_RegisterPacketCallback((v7 + 10856), a1, &__block_literal_global_18);
      }
    }

    else
    {
      RTCPRegisterPacketCallback_cold_2(a1, &v17);
      v8 = v17;
    }

    CheckOutHandleDebug();
    return v8;
  }

LABEL_33:
  __break(0x5519u);
  return result;
}

double _RTCPUnregisterPacketCallback(uint64_t a1)
{
  v2 = *(a1 + 10848);
  if (v2)
  {
    if (*(a1 + 10832) != -1)
    {
      VTP_UnregisterPacketCallback(*(a1 + 10832));
      *(a1 + 10832) = -1;
      v2 = *(a1 + 10848);
    }

    _Block_release(v2);
    result = 0.0;
    *(a1 + 10840) = 0u;
  }

  return result;
}

uint64_t RTCPUnregisterPacketCallback(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2147549186;
  }

  if (*(v1 + 10848))
  {
    _RTCPUnregisterPacketCallback(v1);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTCPUnregisterPacketCallback_cold_1();
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPRecvRTCP(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = 2147549186;
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    if (v4 == 0xFFFFFFFFLL)
    {
      return 2147549190;
    }

    if (!*(v4 + 11296))
    {
      v13[0] = 0;
      if ((VTP_Recvfrom(*(v4 + 8), v13) & 0x80000000) != 0)
      {
        v3 = *__error() | 0xC0010000;
        if (!a2)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v3 = _RTCPParseVTPPacket(v5, v13[0], a2);
        VTP_ReleasePacket(v13);
        if (!a2)
        {
          goto LABEL_22;
        }
      }

LABEL_9:
      if ((v3 & 0x80000000) != 0)
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0u;
        *(a2 + 48) = 0u;
        *(a2 + 64) = 0u;
        *(a2 + 80) = 0u;
        *(a2 + 104) = 0;
        *(a2 + 112) = 0;
        v6 = *(a2 + 96);
        if (v6)
        {
          CFRelease(v6);
          *(a2 + 96) = 0;
        }

        goto LABEL_23;
      }

LABEL_22:
      if ((v3 & 0x80000000) == 0)
      {
LABEL_26:
        CheckOutHandleDebug();
        return v3;
      }

LABEL_23:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          RTPRecvRTCP_cold_1();
        }
      }

      goto LABEL_26;
    }

    v13[0] = 0;
    v3 = _RTPEnsureTransportStreamsActivated(v4);
    if ((v3 & 0x80000000) == 0)
    {
      v7 = (v5 + 1420);
      v8 = v5[1420];
      v13[0] = v8;
      if (v8)
      {
LABEL_18:
        v11 = *(v8 + 204);
        *v7 = v11;
        if (!v11)
        {
          v5[1421] = v7;
        }

        memcpy(a2, v8, 0x668uLL);
        *(v8 + 8) = 0;
        *(v8 + 1) = 0u;
        *(v8 + 2) = 0u;
        *(v8 + 3) = 0u;
        *(v8 + 4) = 0u;
        *(v8 + 5) = 0u;
        *(v8 + 13) = 0;
        *(v8 + 14) = 0;
        *(v8 + 12) = 0;
        goto LABEL_21;
      }

      v9 = v5[1412];
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v10)
      {
        v3 = 4294954514;
        goto LABEL_21;
      }

      v3 = v10(v9);
      if ((v3 & 0x80000000) == 0)
      {
        v8 = *v7;
        v13[0] = *v7;
        goto LABEL_18;
      }
    }

LABEL_21:
    _RTCPPacketForget(v5, v13);
    if (!a2)
    {
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  return v3;
}

uint64_t RTPGetLatestRTCPTimestamp(uint64_t a1, void *a2)
{
  v2 = 2147549185;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *a2 = *(v4 + 168);
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147549186;
    }
  }

  return v2;
}

uint64_t RTCPComputeRoundTripTimeMiddle32(uint64_t a1, unint64_t a2)
{
  if (!*(a1 + 20))
  {
    return 0;
  }

  v3 = NTPToMiddle32(a2);
  v4 = *(a1 + 20);
  v5 = v3 - *(a1 + 16);
  v6 = v5 >= v4;
  v7 = v5 - v4;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t RTCPInitializeReceptionReportBlock(uint64_t a1, uint64_t a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  _RTCPInitializeReceptionReportBlock(v3, a2);
  CheckOutHandleDebug();
  return 0;
}

void RTCPCleanupPacketList(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    v2 = *(a1 + 96);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 96) = 0;
    }
  }
}

uint64_t _RTPTransportStreamRTCPCallback(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0;
  if (!a2)
  {
    _RTPTransportStreamRTCPCallback_cold_3();
    return *buf;
  }

  v2 = a2;
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    _RTPTransportStreamRTCPCallback_cold_2();
    return *buf;
  }

  v4 = v3;
  v5 = v3 + 27800;
  v6 = MEMORY[0x1E6986650];
  while (1)
  {
    v7 = _RTCPPacketCreate(v4);
    v16 = v7;
    if (!v7)
    {
      break;
    }

    _RTCPParseVCPacket(v4, v2, v7);
    v9 = v8;
    if ((v8 & 0x80000000) != 0)
    {
      if (v8 != -2145255367 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v18 = v13;
          v19 = 2080;
          v20 = "_RTPTransportStreamRTCPCallback";
          v21 = 1024;
          v22 = 2706;
          v23 = 1024;
          v24 = v9;
          _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d RTCP error[%x]", buf, 0x22u);
        }
      }
    }

    else
    {
      v10 = *(v4 + 10848);
      if (v10)
      {
        (*(v10 + 16))(v10, *(v4 + 10840), v16);
      }

      else
      {
        v11 = v16;
        v12 = v16 + 1632;
        *(v16 + 1632) = 0;
        **(v4 + 11368) = v11;
        *(v4 + 11368) = v12;
        v16 = 0;
      }
    }

    if (v4 >= v5)
    {
      goto LABEL_22;
    }

    _RTCPPacketForget(v4, &v16);
    v2 = *(v2 + 160);
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  if ((_RTPTransportStreamRTCPCallback_cold_1(v4 < v5) & 1) == 0)
  {
LABEL_22:
    __break(0x5519u);
  }

  v9 = 2147549187;
LABEL_15:
  _RTCPPacketForget(v4, &v16);
  CheckOutHandleDebug();
  return v9;
}

void _RTCPParseVCPacket(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v34 = -1431655766;
  if (*(a2 + 88) == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTCPParseVCPacket_cold_6();
      }
    }

    return;
  }

  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(*a2, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTCPParseVCPacket_cold_1();
      }
    }

    return;
  }

  v8 = lengthAtOffsetOut;
  if (lengthAtOffsetOut < 4)
  {
    return;
  }

  *(a3 + 104) = dataPointerOut;
  *(a3 + 112) = v8;
  *a3 = MicroToNTP(*(a2 + 128), DataPointer, v7);
  *(a3 + 120) = 0;
  *(a3 + 1621) = *(a2 + 36);
  *(a3 + 1624) = *(a2 + 40);
  v9 = *(a2 + 34);
  if (*(a2 + 34))
  {
    *(a3 + 1620) = v9;
    if (v9 > 0xC)
    {
      goto LABEL_64;
    }

    memcpy((a3 + 1596), (a2 + 10), 2 * v9);
  }

  v11 = *(a3 + 104);
  v10 = *(a3 + 112);
  if (!v10 && v11)
  {
    goto LABEL_64;
  }

  v12 = a1 + 0x2000;
  v13 = *v11;
  if ((v13 & 0xFEE0) != 0xC880 && (v13 & 0xFF80) != 0xCC80 && (*(a1 + 10644) != 1 || (v13 >> 8) - 192 > 0xE || ((1 << (BYTE1(v13) + 64)) & 0x7003) == 0 || (v13 & 0xC0) != 0x80))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v28 = *v11;
        v29 = *(v12 + 2452);
        *buf = 136317186;
        v36 = v16;
        v37 = 2080;
        v38 = "_RTCPIsValidPacket";
        v39 = 1024;
        v40 = 2326;
        v41 = 1024;
        *v42 = 2326;
        *&v42[4] = 1024;
        *&v42[6] = v28 >> 8;
        *v43 = 1024;
        *&v43[2] = v28 >> 6;
        *v44 = 1024;
        *&v44[2] = v28 & 0x1F;
        *v45 = 1024;
        *&v45[2] = (v28 >> 5) & 1;
        v46 = 1024;
        v47 = v29;
        _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP Packet(packetType=%d, version=%d, count=%d, padding=%d) useReducedSizePackets=%d", buf, 0x40u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTCPParseVCPacket_cold_2();
      }
    }

    return;
  }

  if (*(a1 + 10647) == 1 && *(a2 + 140) != *(a1 + 8544))
  {
    os_unfair_lock_lock((a1 + 9028));
    v14 = SRTPUpdateRTCPReceiveSSRCAndDeriveNewKeys((a1 + 8424), *(a2 + 140), a1 + 8872);
    if (v14 < 0)
    {
      v24 = v14;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v30 = *(a1 + 8544);
          v31 = *(a2 + 140);
          *buf = 136316674;
          v36 = v25;
          v37 = 2080;
          v38 = "_RTCPParseVCPacket";
          v39 = 1024;
          v40 = 2381;
          v41 = 2048;
          *v42 = a1;
          *&v42[8] = 1024;
          *v43 = v30;
          *&v43[4] = 1024;
          *v44 = v31;
          *&v44[4] = 1024;
          *v45 = v24;
          _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d [%p] Failed updating the remote SSRC onto the SRTP context. dwSSRC=%u packetSSRC=%u error=(%X)", buf, 0x38u);
        }
      }

      os_unfair_lock_unlock((a1 + 9028));
      return;
    }

    os_unfair_lock_unlock((a1 + 9028));
    v11 = *(a3 + 104);
    v10 = *(a3 + 112);
  }

  if ((v10 & 0x80000000) != 0 || v10 > v10)
  {
    goto LABEL_64;
  }

  v15 = SRTCPVerifyAuthenticationTag((a1 + 8424), v11, v10, &v34);
  if (v15 < 0 && v15 != -2145255368)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTCPParseVCPacket_cold_3();
      }
    }

    return;
  }

  if (v34 <= 7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTCPParseVCPacket_cold_5();
      }
    }

    return;
  }

  v18 = (v34 - 8);
  *buf = v34 - 8;
  if (v34 == 8)
  {
    v19 = 8;
    goto LABEL_60;
  }

  v21 = *(a3 + 104);
  v20 = *(a3 + 112);
  v22 = v21 + 8;
  if (v21 + 8 > v21 + v20 || v21 > v22 || v20 - 8 < v18)
  {
LABEL_64:
    __break(0x5519u);
    return;
  }

  v23 = SRTCPDecrypt(a1 + 8424, v22, v18, buf);
  if ((v23 & 0x80000000) == 0 || v23 == -2145255368)
  {
    v19 = *buf + 8;
LABEL_60:
    v34 = v19;
    if ((_RTCPTransport_ParsePacket(a1, a3, v19) & 0x80000000) == 0)
    {
      v27 = *a2;
      if (*a2)
      {
        v27 = CFRetain(v27);
      }

      *(a3 + 96) = v27;
      *(a1 + 168) = *(a2 + 128);
    }

    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _RTCPParseVCPacket_cold_4();
    }
  }
}

uint64_t _RTCPAddCustomReport(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  v7 = v6;
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v6)
  {
    v8 = memset(&v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], 170, v6);
    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }
  }

  if (*a3 != 1297568338)
  {
    v11 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    if (*a3 != 1297568594)
    {
      goto LABEL_17;
    }

    v7 = v6 - 17;
    if (v6 >= 0x11)
    {
      v12 = micro(v8, v9);
      v15 = MicroToNTP(v12, v13, v14);
      LODWORD(v16) = *(a2 + 312);
      v17 = v16;
      LODWORD(v16) = *(a2 + 700);
      v18 = v16;
      v20 = NTPToMicro(*(a2 + 304), v19);
      v21 = _RTPSendTimestampWithMediaSampleTime(a2, (v17 + v18 * (v12 - v20)));
      *v10 = bswap32(HIDWORD(v15));
      *(v10 + 1) = bswap32(v15);
      v22 = bswap32(*(a2 + 204));
      *(v10 + 2) = bswap32(v21);
      *(v10 + 3) = v22;
      v10[16] = v10[16] & 0xF0 | *(a2 + 616) & 0xF;
      v23 = NTPToMiddle32(v15);
      v24 = *(a2 + 616);
      v25 = (a2 + 620 + 4 * v24);
      if (v25 >= a2 + 684)
      {
        goto LABEL_42;
      }

      if (v25 < a2 + 620)
      {
        goto LABEL_42;
      }

      *v25 = v23;
      *(a2 + 616) = (v24 + 1) & 0xF;
      v11 = v10 + 17;
      if (v10 + 17 > &v10[v6] || v10 > v11)
      {
        goto LABEL_42;
      }

      goto LABEL_17;
    }

    return 2147549187;
  }

  if (!v6)
  {
    return 2147549187;
  }

  v26 = micro(v8, v9);
  v29 = MicroToNTP(v26, v27, v28);
  v11 = v10 + 1;
  if (v10 + 1 > &v10[v6])
  {
    goto LABEL_42;
  }

  *v10 = *v10 & 0xF0 | *(a2 + 616) & 0xF;
  v30 = NTPToMiddle32(v29);
  v31 = *(a2 + 616);
  v32 = (a2 + 620 + 4 * v31);
  if (v32 >= a2 + 684)
  {
    goto LABEL_42;
  }

  if (v32 < a2 + 620)
  {
    goto LABEL_42;
  }

  *v32 = v30;
  *(a2 + 616) = (v31 + 1) & 0xF;
  if (v10 > v11)
  {
    goto LABEL_42;
  }

  v7 = v6 - 1;
LABEL_17:
  v33 = *(a3 + 16);
  if (v33)
  {
    v34 = &v11[v7];
    v35 = v7 - 12 * (v33 - 1) - 12;
    v36 = *(a3 + 8) + 16;
    do
    {
      v37 = v7 >= 0xC;
      v7 -= 12;
      if (!v37)
      {
        return 2147549187;
      }

      *v11 = bswap32(*(v36 - 16));
      v38 = *(v36 + 16);
      *(v11 + 2) = *(v11 + 2) & 0xFFF0 | v38 & 0xF;
      *(v11 + 3) = bswap32(1000 * *(v36 + 8));
      v11[10] = *(v36 - 12);
      *(v11 + 4) = bswap32(*(v36 - 4)) >> 16;
      v39 = 16 * *v36;
      if (HIWORD(*v36))
      {
        LOWORD(v39) = -16;
      }

      *(v11 + 2) = v39 & 0xFFF0 | v38 & 0xF;
      v40 = *(v36 + 12);
      if (v40 >= 0xFF)
      {
        LOBYTE(v40) = -1;
      }

      v11[11] = v40;
      if ((v11 + 12) > v34 || v11 > v11 + 12)
      {
        goto LABEL_42;
      }

      v36 += 36;
      v11 += 12;
      --v33;
    }

    while (v33);
    v7 = v35;
  }

  v41 = v6 - v7;
  if (v6 < v7)
  {
LABEL_42:
    __break(0x5519u);
  }

  if (v6 == v7)
  {
    return 0;
  }

  v43 = a1[1];
  v48 = v43;
  if ((v41 & 0x80000000) != 0 || v41 > v41 || (v43 & 0x80000000) != 0 || v43 > v43)
  {
    goto LABEL_42;
  }

  result = CompressionUtils_CompressWithZLib();
  if ((result & 0x80000000) == 0)
  {
    v44 = v48;
    v45 = a1[1];
    v46 = *a1 + v48;
    if (v46 > *a1 + v45 || *a1 > v46)
    {
      goto LABEL_42;
    }

    result = 0;
    *a1 = v46;
    a1[1] = v45 - v44;
  }

  return result;
}

unint64_t _RTCPFinalizePacket(unint64_t result, unint64_t a2, unint64_t *a3, unint64_t a4)
{
  if (result + 4 <= result + a2)
  {
    v4 = a4 + 3;
    v5 = (a4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    *result = *result & 0xFFDF | (32 * (v5 != a4));
    if (v5 == a4)
    {
LABEL_8:
      v6 = 0;
      *a3 = a4;
      *(result + 2) = bswap32((v4 >> 2) - 1) >> 16;
      return v6;
    }

    if (v5 > a2)
    {
      return 2147549187;
    }

    v7 = (result + v5 - 1);
    if (v7 < result + a2 && v7 >= result)
    {
      *v7 = v5 - a4;
      a4 = (a4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      goto LABEL_8;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t _RTCPAddPSFBAlfbPacket(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, unsigned int *a5)
{
  v5 = 2147549187;
  if (a3 < 4)
  {
    return v5;
  }

  *a2 = *a2 & 0x20 | 0xCE8F;
  v6 = a3 - 16;
  if (a3 - 16 > 0xFFFFFFFFFFFFFFF3)
  {
    return v5;
  }

  v7 = *a5;
  v8 = bswap32(*(a1 + 4832));
  *(a2 + 4) = bswap32(*(a1 + 200));
  *(a2 + 8) = v8;
  *(a2 + 12) = bswap32(v7);
  if (v7 == 5)
  {
    if (v6 >= 4)
    {
      *(a2 + 16) = bswap32(a5[2]);
      v9 = a2 + 20;
      goto LABEL_9;
    }

    return v5;
  }

  if (v7 != 6)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 2147549191;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 2147549191;
    }

    _RTCPAddPSFBAlfbPacket_cold_1();
    return 2147549191;
  }

  if (v6 < 8)
  {
    return v5;
  }

  v9 = a2 + 24;
  *(a2 + 22) = *(*(a5 + 1) + 6);
  *(a2 + 23) = *(*(a5 + 1) + 7);
  *(a2 + 16) = bswap32(**(a5 + 1));
  *(a2 + 20) = bswap32(*(*(a5 + 1) + 4)) >> 16;
LABEL_9:
  v10 = v9 - a2;

  return _RTCPFinalizePacket(a2, a3, a4, v10);
}

uint64_t _RTCPProcessCommonHeader(__int16 **a1)
{
  result = 2147549192;
  v3 = a1[1];
  if (v3 >= 4)
  {
    v4 = *a1;
    v5 = *a1 + 2;
    v6 = **a1;
    if ((v6 & 0xC0) != 0x80)
    {
      return 2147549193;
    }

    v7 = 2 * v4[1];
    if (v3 >= v7 * 2 + 4)
    {
      if ((v6 & 0x20) != 0)
      {
        v8 = HIBYTE(v4[v7 + 1]);
        if ((v3 - 2) < v8)
        {
          return 2147549191;
        }

        v9 = v3 >= v8;
        v3 = (v3 - v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        a1[1] = v3;
      }

      if (v5 > (v3 + v4))
      {
LABEL_14:
        __break(0x5519u);
        return result;
      }

      result = 0;
      *a1 = v5;
      a1[1] = v3 - 2;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_15_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x22u);
}

uint64_t VCFBOUtils_ObjectCreate(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a2)
  {
    return (a5 << 16) | 0x80000001;
  }

  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    if (v7 >= 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = -v7;
    }

    return v10 | (a5 << 16) | 0xD0000000;
  }

  else
  {
    v8 = 0;
    *a2 = 0;
  }

  return v8;
}

uint64_t VCFBOUtils_IsKindOfClass(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return CMBaseObjectGetVTable() == a2;
  }

  VCFBOUtils_IsKindOfClass_cold_1(&v3);
  return v3;
}

void OUTLINED_FUNCTION_37_1()
{
  *v2 = 0;
  *v1 = v4;
  *v0 = v3;
}

void OUTLINED_FUNCTION_39_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void sub_1DB650C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB651738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _VCAudioStreamSourceContextTransportCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
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

uint64_t _VCAudioStreamSyncDelegateCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
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

void _VCAudioStream_ProcessDelegateEventQueue(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {
    v3 = micro(IsInternalOSInstalled, v5);
  }

  v6 = CMSimpleQueueDequeue(*(a1 + 1760));
  if (v6)
  {
    v14 = v6;
    LODWORD(v15) = 0;
    v16 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *v16;
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v14[4];
          v20 = *(v14 + 1);
          *buf = 136316418;
          v23 = v17;
          v24 = 2080;
          v25 = "_VCAudioStream_ProcessDelegateEventQueue";
          v26 = 1024;
          v27 = 3386;
          v28 = 2048;
          v29 = a1;
          v30 = 1024;
          v31 = v19;
          v32 = 2048;
          v33 = v20;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Process event: stream=%p type=%d entry delegate=%p", buf, 0x36u);
        }
      }

      v21 = v14[4];
      if (v21 == 1)
      {
        _VCAudioStream_DeregisterSyncDelegateEvent(a1, v14);
      }

      else if (!v21)
      {
        _VCAudioStream_RegisterSyncDelegateEvent(a1, v14);
      }

      v14 = CMSimpleQueueDequeue(*(a1 + 1760));
      v15 = (v15 + 1);
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  LogProfileTimeOverLimit_0(0, v7, v3, v8, v9, v10, v11, v12, v13, "_VCAudioStream_ProcessDelegateEventQueue", v15);
}

void _VCAudioStream_ReleaseSyncDelegateEvent(uint64_t *a1, int a2)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      *a1 = 0;
      if (a2)
      {
        dispatch_semaphore_signal(*(v2 + 24));
      }

      dispatch_release(*(v2 + 24));

      free(v2);
    }
  }
}

void _VCAudioStream_UpdateSourceNTPToRTPTimeMappingCallback(CFIndex result, uint64_t a2, double a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = a2;
    Count = CFArrayGetCount(*(result + 1768));
    v7 = (Count - 1);
    if (Count - 1 >= 0)
    {
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(result + 1768), v7);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            v13 = v9;
            v14 = 2080;
            v15 = "_VCAudioStream_UpdateSourceNTPToRTPTimeMappingCallback";
            v16 = 1024;
            v17 = 3557;
            v18 = 1024;
            v19 = 3557;
            v20 = 2112;
            v21 = ValueAtIndex;
            v22 = 2048;
            v23 = a3;
            v24 = 1024;
            v25 = v3;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioStream.m:%d: updating syncSourceDelegates=(%@) with ntpTime=%.6f and rtpTimestamp=%u", buf, 0x3Cu);
          }
        }

        VCMediaStreamSyncSourceDelegate_updateSourceNTPTimeWithRTPTimeStamp(ValueAtIndex, v3, a3);
      }

      while (v7-- > 0);
    }
  }
}

void _VCAudioStream_StreamSwitchCallback(uint64_t a1, int a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316418;
      v9 = v6;
      v10 = 2080;
      v11 = "_VCAudioStream_StreamSwitchCallback";
      v12 = 1024;
      v13 = 3601;
      v14 = 2048;
      v15 = a1;
      v16 = 1024;
      v17 = a2;
      v18 = 1024;
      v19 = a3;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d audioStream=%p switched from streamID=%u to streamID=%u", &v8, 0x32u);
    }
  }
}

void _VCAudioStream_DTMFEventCallback(uint64_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 168);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___VCAudioStream_DTMFEventCallback_block_invoke;
    block[3] = &unk_1E85F37A0;
    block[4] = a1;
    v4 = a2;
    dispatch_async(v2, block);
  }
}

void VCAudioStream_PullAudioSamples(uint64_t a1, uint64_t a2)
{
  v93 = *MEMORY[0x1E69E9840];
  ++*(a1 + 32);
  v4 = *(a1 + 184);
  _VCAudioStream_ProcessDelegateEventQueue(v4, a2);
  v62 = 0;
  v63 = -1431655766;
  v61 = 0.0;
  VCAudioReceiver_PullAudioSamples(*(a1 + 24), a2, &v62, &v61, 0, &v63, 0);
  v7 = *(a1 + 36);
  if (v7 != -1.0)
  {
    v5 = VCAudioBufferList_ApplyGain(a2, v7);
  }

  v8 = v61;
  v11 = micro(v5, v6);
  v12 = v11;
  v13 = *(a1 + 48);
  if (v13 == 0.0 && v11 > v8)
  {
    v9 = objc_opt_respondsToSelector();
    if (v9)
    {
      v15 = *(a1 + 168);
      v16 = *(a1 + 184);
      *buf = *MEMORY[0x1E6960CC0];
      *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
      [v15 vcMediaStream:v16 didReceiveFirstFrameWithTime:buf];
      v9 = [*(a1 + 184) reportingAlgosAudioStreamEvent:0];
    }
  }

  if (v13 < v8)
  {
    if (*(a1 + 42) == 1)
    {
      ++*(a1 + 56);
    }

    *(a1 + 48) = v8;
  }

  if (v12 - v8 <= *(a1 + 64) * (*(a1 + 76) + 1) / 3.0)
  {
    if (*(a1 + 56) >= 2 && *(a1 + 42) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 56);
          *buf = 136316418;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = "_VCAudioStream_UpdateRemoteMediaStallState";
          *&buf[22] = 1024;
          *&buf[24] = 424;
          *&buf[28] = 2048;
          *&buf[30] = v8;
          *&buf[38] = 2048;
          *&buf[40] = v12;
          LOWORD(v77) = 1024;
          *(&v77 + 2) = v26;
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Unstalling lastReceivedPacketTime %f currentTime %f packetCount %d", buf, 0x36u);
        }
      }

      *(a1 + 42) = 0;
      *(a1 + 76) = 0;
      v9 = objc_opt_respondsToSelector();
      if (v9)
      {
        v20 = *(a1 + 168);
        v21 = *(a1 + 184);
        v22 = *(a1 + 42);
        v23 = 0.0;
        goto LABEL_21;
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = "_VCAudioStream_UpdateRemoteMediaStallState";
        *&buf[22] = 1024;
        *&buf[24] = 414;
        *&buf[28] = 2048;
        *&buf[30] = v8;
        *&buf[38] = 2048;
        *&buf[40] = v12;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Stalling lastReceivedPacketTime %f currentTime %f", buf, 0x30u);
      }
    }

    v19 = *(a1 + 76);
    if (!v19)
    {
      *(a1 + 42) = 1;
      *(a1 + 56) = 0;
    }

    *(a1 + 76) = v19 + 1;
    v9 = objc_opt_respondsToSelector();
    if (v9)
    {
      v20 = *(a1 + 168);
      v21 = *(a1 + 184);
      v22 = *(a1 + 42);
      v23 = v12 - v8;
LABEL_21:
      v9 = [v20 vcMediaStream:v21 remoteMediaStalled:v22 duration:v23];
    }
  }

  if (*(a1 + 41) == 1)
  {
    VCAudioBufferList_ZeroMemory(a2);
  }

  v29 = micro(v9, v10);
  v30 = *(a1 + 184);
  if (v30)
  {
    v31 = *(v30 + 1440);
    if (v31)
    {
      v32 = v62;
      do
      {
        VCMediaStreamSyncSourceDelegate_updateSourcePlayoutSampleRTPTimestamp(v31[1], v32, v29);
        v31 = *v31;
      }

      while (v31);
    }
  }

  if (*(a1 + 40) == 1)
  {
    [*(a1 + 192) stream:*(a1 + 184) addAudioSampleBuffer:a2 timestamp:{(micro(v27, v28) * 1000.0)}];
    memset(buf, 0, 40);
    VCAudioReceiver_GetJitterBufferMetrics(*(a1 + 24), buf);
    for (i = *(a1 + 80); i; i = *i)
    {
      VCAudioStreamTransport_SubmitWRMReportWithJitterBufferMetrics(i[1], buf);
    }
  }

  v60 = -21846;
  if (!VCAudioReceiver_GetActiveStreamId(*(a1 + 24), &v60) && v60 == *(a1 + 144) && *(a1 + 160) == 1)
  {
    v34 = *(a1 + 184);
    if (v34)
    {
      v35 = v61;
      v36 = v61 - *(v34 + 1568);
      if (v36 > 1.0 || v29 - *(v34 + 1576) > 1.0)
      {
        v38 = *(a1 + 152);
        if (v38)
        {
          *&v86 = 0;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v77 = 0u;
          memset(buf, 0, sizeof(buf));
          VCRateControlGetStatistics(v38, 3, buf);
          LODWORD(v39) = DWORD1(v77);
          v40 = v39 / 1000.0;
          OWRD = VCAudioReceiver_GetOWRD(*(a1 + 24));
          v42 = v78;
          *(v34 + 1584) = *&buf[24] / 100.0 + *(v34 + 1584);
          ++*(v34 + 1592);
          *(v34 + 1576) = v29;
          PercentPacketsLateAndMissing = VCAudioReceiver_GetPercentPacketsLateAndMissing(*(a1 + 24));
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v44 = VRTraceErrorLogLevelToCSTR();
            v45 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v46 = *(v34 + 1600);
              *v64 = 136316674;
              v65 = v44;
              v66 = 2080;
              v67 = "_VCAudioStream_CheckAbnormalOWRDAndResetLagReference";
              v68 = 1024;
              v69 = 458;
              v70 = 2048;
              v71 = v40;
              v72 = 1024;
              *v73 = v42;
              *&v73[4] = 2048;
              *&v73[6] = v46 * 100.0;
              v74 = 2048;
              v75 = PercentPacketsLateAndMissing * 100.0;
              _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d RTT=%.3f, TxBW=%ub/sec, PLR=%.2f%%, PLaMR=%.2f%%", v64, 0x40u);
            }
          }

          if (v36 > 1.0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v47 = VRTraceErrorLogLevelToCSTR();
              v48 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v49 = *(v34 + 1560);
                *v64 = 136316418;
                v65 = v47;
                v66 = 2080;
                v67 = "_VCAudioStream_CheckAbnormalOWRDAndResetLagReference";
                v68 = 1024;
                v69 = 463;
                v70 = 2048;
                v71 = v40;
                v72 = 2048;
                *v73 = OWRD;
                *&v73[8] = 1024;
                *&v73[10] = v49;
                _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Abnormal OWRD Verification: rtt=%f, owrd=%f, _abnormalOWRDCount=%d", v64, 0x36u);
              }
            }

            *(v34 + 1568) = v35;
            v50 = v40 <= 0.0 || OWRD <= 2.0;
            v51 = OWRD;
            if (!v50 && v40 * 5.0 < v51)
            {
              ++*(v34 + 1560);
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v57 = VRTraceErrorLogLevelToCSTR();
                v58 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  v59 = *(v34 + 1560);
                  *v64 = 136316418;
                  v65 = v57;
                  v66 = 2080;
                  v67 = "_VCAudioStream_CheckAbnormalOWRDAndResetLagReference";
                  v68 = 1024;
                  v69 = 470;
                  v70 = 2048;
                  v71 = v40;
                  v72 = 2048;
                  *v73 = v51;
                  *&v73[8] = 1024;
                  *&v73[10] = v59;
                  _os_log_error_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d Abnormal OWRD detected: rtt=%f, owrd=%f, _abnormalOWRDCount=%d", v64, 0x36u);
                }
              }
            }

            else
            {
              *(v34 + 1560) = 0;
            }

            if (*(v34 + 1560) >= 4u)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  VCAudioStream_PullAudioSamples_cold_2();
                }
              }

              VCAudioReceiver_ResetLagReference(*(a1 + 24));
            }
          }
        }

        else
        {
          VCAudioStream_PullAudioSamples_cold_3();
        }
      }
    }

    else
    {
      VCAudioStream_PullAudioSamples_cold_4();
    }

    if (v29 - *(v34 + 1608) >= 5.0)
    {
      *(v34 + 1600) = *(v34 + 1584) / *(v34 + 1592);
      *(v34 + 1584) = 0;
      *(v34 + 1592) = 0;
      *(v34 + 1608) = v29;
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    memset(buf, 0, sizeof(buf));
    v53 = *(a1 + 200);
    if (v53)
    {
      WRMIncrementTime(v53);
      VCAudioTransmitter_UpdateWrmMetrics(*(a1 + 208), *(a1 + 200));
      VCAudioReceiver_UpdateWrmMetrics(*(a1 + 24), *(a1 + 200));
      if (WRMGenerateReport(*(a1 + 200), buf))
      {
        WRMSubmitReport(*(a1 + 200), buf);
      }
    }
  }

  _VCAudioStream_UpdateSoundMeter(v4, a1 + 8, 0, a2);
  if (*(v4 + 1856) == 1)
  {
    VCAudioPowerSpectrumSource_PushAudioSamples(*(v4 + 1552), a2);
  }

  v54 = *(v4 + 1976);
  if (v54)
  {
    VCAudioMachineLearningCoordinator_PushAudioSamples(v54, *(v4 + 640), a2);
  }

  v55 = *(v4 + 1904);
  if (v55)
  {
    Timestamp = VCAudioBufferList_GetTimestamp(a2);
    VCMediaRecorder_AddRemoteAudioSampleBuffer(v55, a2, Timestamp);
  }

  if (*a1 == 1)
  {
    VCAudioBufferList_ZeroMemory(a2);
  }

  VCMediaStream_CheckForDecryptionTimeout(v4);
}

void VCAudioStream_SetAllowedCodecConfigurations(uint64_t a1, const __CFDictionary *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 1232);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v4)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 1232);
          *buf = 136316162;
          v25 = v6;
          v26 = 2080;
          v27 = "VCAudioStream_SetAllowedCodecConfigurations";
          v28 = 1024;
          v29 = 2108;
          v30 = 2048;
          v31 = a1;
          v32 = 2048;
          v33 = v8;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d stream=%p audioTransmitter=%p", buf, 0x30u);
        }
      }

      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v10 = Mutable;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = *(a1 + 1816);
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v20 + 1) + 8 * i);
              v17 = [objc_msgSend_config(v16) payload];
              v18 = [MEMORY[0x1E696AD98] numberWithInteger:VCPayloadUtils_CodecTypeForPayload(v17)];
              if (CFDictionaryContainsKey(a2, v18))
              {
                CFArrayAppendValue(v10, v16);
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v19 count:16];
          }

          while (v13);
        }

        VCAudioTransmitter_SetAllowedPayloads(*(a1 + 1232), v10);
        CFRelease(v10);
      }

      else
      {
        VCAudioStream_SetAllowedCodecConfigurations_cold_1();
      }
    }

    else
    {
      VCAudioStream_SetAllowedCodecConfigurations_cold_2(ErrorLogLevelForModule);
    }
  }

  else
  {
    VCAudioStream_SetAllowedCodecConfigurations_cold_3();
  }
}

void VCAudioStream_SetAudioPlayoutDelay(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a1)
  {
    *(a1 + 1888) = a3;
    v5 = *(a1 + 1352);
    if (v5)
    {

      VCAudioReceiver_SetAudioPlayoutDelay(v5, a2, a3, a4);
    }
  }

  else
  {
    VCAudioStream_SetAudioPlayoutDelay_cold_1();
  }
}

void VCAudioStream_PushAudioSamples(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (pthread_rwlock_tryrdlock((a1 + 936)))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v35 = v4;
          v36 = 2080;
          v37 = "VCAudioStream_PushAudioSamples";
          v38 = 1024;
          v39 = 3352;
          v40 = 2048;
          v41 = a1;
          v42 = 1024;
          Timestamp = VCAudioBufferList_GetTimestamp(a2);
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d VCAudioStream[%p] IOProc:  Missing grabbing lock onCaptureSound at %u", buf, 0x2Cu);
        }
      }
    }

    else
    {
      if (*(a1 + 408) == 2)
      {
        v6 = VCAudioBufferList_GetTimestamp(a2);
        HostTime = VCAudioBufferList_GetHostTime(a2);
        SampleCount = VCAudioBufferList_GetSampleCount(a2);
        HostTimeJumpSize = VCAudioBufferList_GetHostTimeJumpSize(a2);
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionaryAddValue(Mutable, @"VCASHostTimeJumpSize", [MEMORY[0x1E696AD98] numberWithDouble:HostTimeJumpSize * 1000.0]);
        reportingAudioStreamEvent();
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v11 = &OBJC_IVAR___AVCMediaAnalyzerResult__analysisDuration;
        v12 = v6;
        if (*(a1 + 432) != 6)
        {
          v13 = *(a1 + 896);
          if (v13 == 0.0)
          {
            v22 = 0;
          }

          else
          {
            v14 = HostTime - v13;
            v15 = *(a1 + 1144) / SampleCount;
            v16 = SampleCount * llround(v14 * v15);
            if (v16 != SampleCount)
            {
              v17 = v6 - *(a1 + 924);
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v32 = VRTraceErrorLogLevelToCSTR();
                log = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  v30 = *(a1 + 924);
                  v31 = *(a1 + 896);
                  *buf = 136317954;
                  v35 = v32;
                  v36 = 2080;
                  v37 = "_VCAudioStream_ComputePacketTimestampWithInputTimestamp";
                  v38 = 1024;
                  v39 = 223;
                  v40 = 2080;
                  v41 = "_VCAudioStream_ComputePacketTimestampWithInputTimestamp";
                  v42 = 1024;
                  Timestamp = v17;
                  v44 = 1024;
                  v45 = v30;
                  v46 = 1024;
                  v47 = v6;
                  v48 = 2048;
                  v49 = v14;
                  v50 = 1024;
                  v51 = v16;
                  v52 = 2048;
                  v53 = v31;
                  v54 = 2048;
                  v55 = HostTime;
                  v56 = 1024;
                  v57 = v16;
                  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d %s Timestamp jumped=%u (%u to %u), host time=%f (samples=%d) (%f to %f). Adjustment=%d", buf, 0x62u);
                }
              }

              v18 = *(a1 + 1144);
              if (v18 != 0.0)
              {
                v19 = (1000 * v17) / v18;
                v20 = atomic_load((a1 + 1808));
                v21 = v20;
                if (v19 >= v20)
                {
                  v21 = v19;
                }

                atomic_fetch_add((a1 + 1792), 1u);
                atomic_fetch_add((a1 + 1800), v19);
                atomic_store(v21, (a1 + 1808));
              }

              SampleCount = v16;
            }

            v22 = (([objc_msgSend(*(a1 + 1232) currentAudioPayloadConfig] * SampleCount) / *(a1 + 1144));
            v11 = &OBJC_IVAR___AVCMediaAnalyzerResult__analysisDuration;
          }

          v12 = (*(a1 + v11[845]) + v22);
        }

        if ([*(a1 + 1200) shouldTransmitDTMFWithTimestamp:v12])
        {
          [*(a1 + 1200) sendingDTMFEventWithTimeStamp:v12 interval:(*(a1 + 1144) * (v12 - *(a1 + v11[845])) / objc_msgSend(objc_msgSend(*(a1 + 1232) RTPHandle:{"currentAudioPayloadConfig"), "codecSampleRate")), objc_msgSend(objc_msgSend(a1, "defaultTransport"), "rtpHandle")}];
          v23 = v6;
        }

        else
        {
          VCAudioBufferList_SetTime(a2, v12, HostTime);
          v24 = *(a1 + 1293);
          if (v24 != [*(a1 + 1232) isCurrentDTXEnabled])
          {
            [*(a1 + 1232) setCurrentDTXEnable:*(a1 + 1293)];
          }

          VCAudioTransmitter_PushAudioSamples(*(a1 + 1232), a2);
          v23 = v6;
          VCAudioBufferList_SetTime(a2, v6, HostTime);
        }

        *(a1 + v11[845]) = v12;
        *(a1 + 924) = v23;
        *(a1 + 896) = HostTime;
        v25 = *(a1 + 1752) + 1;
        *(a1 + 1752) = v25;
        HIDWORD(v26) = 652835029 * v25;
        LODWORD(v26) = 652835029 * v25;
        if ((v26 >> 2) <= 0x83126E)
        {
          VCAudioTransmitter_ReportAWDMetrics(*(a1 + 1232));
        }
      }

      _VCAudioStream_UpdateSoundMeter(a1, a1 + 1312, 1, a2);
      if (*(a1 + 1856) == 1)
      {
        VCAudioPowerSpectrumSource_PushAudioSamples(*(a1 + 1544), a2);
      }

      v27 = *(a1 + 1968);
      if (v27)
      {
        VCAudioMachineLearningCoordinator_PushAudioSamples(v27, *(a1 + 632), a2);
      }

      v28 = *(a1 + 1904);
      if (v28)
      {
        v29 = VCAudioBufferList_GetTimestamp(a2);
        VCMediaRecorder_AddLocalAudioSampleBuffer(v28, a2, v29);
      }

      pthread_rwlock_unlock((a1 + 936));
    }
  }
}

void _VCAudioStream_UpdateSoundMeter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a2 == 1)
  {
    v5 = VCFFTMeter_Compute(*(a2 + 8), a4);
    if (*(a1 + 256))
    {
      v6 = *(a1 + 264);
      if (v6)
      {
        v6();
      }
    }

    if (v5)
    {

      CFRelease(v5);
    }
  }
}

void VCAudioStream_PushRemainingSamples(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (pthread_rwlock_tryrdlock((a1 + 936)))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315906;
        v5 = v2;
        v6 = 2080;
        v7 = "VCAudioStream_PushRemainingSamples";
        v8 = 1024;
        v9 = 3365;
        v10 = 2048;
        v11 = a1;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d VCAudioStream[%p] IOProc: Missing grabbing lock onCaptureSound", &v4, 0x26u);
      }
    }
  }

  else
  {
    VCAudioTransmitter_PushRemainingSamples(*(a1 + 1232));

    pthread_rwlock_unlock((a1 + 936));
  }
}

_DWORD *_VCAudioStream_NewSyncDelegateEvent(int a1, uint64_t a2, void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A0040F8598106uLL);
  v6[4] = a1;
  *(v6 + 1) = a3;
  v7 = a3;
  v8 = *(a2 + 1872);
  *(v6 + 3) = v8;
  dispatch_retain(v8);
  return v6;
}

void _VCAudioStream_RegisterSyncDelegateEvent(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a2 + 16);
      v7 = *(a2 + 8);
      *buf = 136316674;
      v10 = v4;
      v11 = 2080;
      v12 = "_VCAudioStream_RegisterSyncDelegateEvent";
      v13 = 1024;
      v14 = 3432;
      v15 = 2048;
      v16 = a1;
      v17 = 2048;
      v18 = a2;
      v19 = 1024;
      v20 = v6;
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Registering audioStream=%p entry=%p entryType=%d delegate=%p", buf, 0x40u);
    }
  }

  if ((VCSingleLinkedListPush(a1 + 1440, a2) & 1) == 0)
  {
    _VCAudioStream_ReleaseSyncDelegateEvent(&v8, 0);
  }
}

void _VCAudioStream_DeregisterSyncDelegateEvent(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a2 + 16);
      v7 = *(a2 + 8);
      *buf = 136316674;
      *&buf[4] = v4;
      v10 = 2080;
      v11 = "_VCAudioStream_DeregisterSyncDelegateEvent";
      v12 = 1024;
      v13 = 3423;
      v14 = 2048;
      v15 = a1;
      v16 = 2048;
      v17 = a2;
      v18 = 1024;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Deregistering audioStream=%p entry=%p entryType=%d delegate=%p", buf, 0x40u);
    }
  }

  *buf = VCSingleLinkedListRemove(a1 + 1440, a2);
  if (*buf)
  {
    _VCAudioStream_ReleaseSyncDelegateEvent(buf, 0);
  }

  _VCAudioStream_ReleaseSyncDelegateEvent(&v8, 1);
}

void CodecRateModeChangeNotificationCallback(void *a1, __int128 *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = *a2;
  v6 = *(a2 + 2);
  [a1 handleCodecModeChangeEvent:&v5];
  objc_autoreleasePoolPop(v4);
}

void _VCAudioStream_ActiveStreamChangeCallback(uint64_t a1, __int16 a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    v5 = *(a1 + 168);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___VCAudioStream_ActiveStreamChangeCallback_block_invoke;
    block[3] = &unk_1E85F41F8;
    block[4] = a1;
    v7 = a2;
    dispatch_async(v5, block);
  }

  else
  {
    _VCAudioStream_ActiveStreamChangeCallback_cold_1();
  }

  objc_autoreleasePoolPop(v4);
}

void LogProfileTimeOverLimit_0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v42 = *MEMORY[0x1E69E9840];
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {
    v12 = micro(IsInternalOSInstalled, v11) - a3;
    if (v12 > 0.00300000003)
    {
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v40 = v13;
      v41 = v13;
      v38 = v13;
      v39 = v13;
      v36 = v13;
      v37 = v13;
      v34 = v13;
      v35 = v13;
      v32 = v13;
      v33 = v13;
      v31 = v13;
      v29 = v13;
      v30 = v13;
      v27 = v13;
      v28 = v13;
      *__str = v13;
      vsnprintf(__str, 0x100uLL, "%s: Iterations=%d", va);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v17 = v14;
          v18 = 2080;
          v19 = "_LogProfileTimeLimitHelper";
          v20 = 1024;
          v21 = 36;
          v22 = 2080;
          v23 = __str;
          v24 = 2048;
          v25 = v12;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d %s: Took a long time %fs", buf, 0x30u);
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_45()
{

  return [v0 reportingAgent];
}

uint64_t VCMediaNegotiationBlobV2ReadFrom(id *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
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
        LOBYTE(v22) = 0;
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

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 3)
      {
        switch(v12)
        {
          case 1:
            v17 = objc_alloc_init(VCMediaNegotiationBlobV2GeneralInfo);

            a1[4] = v17;
            v22 = 0xAAAAAAAAAAAAAAAALL;
            v23 = 0xAAAAAAAAAAAAAAAALL;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = VCMediaNegotiationBlobV2GeneralInfoReadFrom(v17, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_48;
          case 2:
            v20 = objc_alloc_init(VCMediaNegotiationBlobV2BandwidthSettings);

            a1[1] = v20;
            v22 = 0xAAAAAAAAAAAAAAAALL;
            v23 = 0xAAAAAAAAAAAAAAAALL;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = VCMediaNegotiationBlobV2BandwidthSettingsReadFrom(v20, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_48;
          case 3:
            v15 = objc_alloc_init(VCMediaNegotiationBlobV2CodecFeatures);

            a1[3] = v15;
            v22 = 0xAAAAAAAAAAAAAAAALL;
            v23 = 0xAAAAAAAAAAAAAAAALL;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = VCMediaNegotiationBlobV2CodecFeaturesReadFrom(v15, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_48;
        }
      }

      else if (v12 > 5)
      {
        if (v12 == 6)
        {
          v19 = objc_alloc_init(VCMediaNegotiationBlobV2MomentsSettings);

          a1[6] = v19;
          v22 = 0xAAAAAAAAAAAAAAAALL;
          v23 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobV2MomentsSettingsReadFrom(v19, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_48;
        }

        if (v12 == 7)
        {
          v16 = objc_alloc_init(VCMediaNegotiationBlobV2StreamGroup);
          [a1 addStreamGroups:v16];

          v22 = 0xAAAAAAAAAAAAAAAALL;
          v23 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobV2StreamGroupReadFrom(v16, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_48;
        }
      }

      else
      {
        if (v12 == 4)
        {
          v18 = objc_alloc_init(VCMediaNegotiationBlobV2MicrophoneSettingsU1);

          a1[5] = v18;
          v22 = 0xAAAAAAAAAAAAAAAALL;
          v23 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobV2MicrophoneSettingsU1ReadFrom(v18, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_48;
        }

        if (v12 == 5)
        {
          v13 = objc_alloc_init(VCMediaNegotiationBlobV2CameraSettingsU1);

          a1[2] = v13;
          v22 = 0xAAAAAAAAAAAAAAAALL;
          v23 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobV2CameraSettingsU1ReadFrom(v13, a2);
          if (!result)
          {
            return result;
          }

LABEL_48:
          PBReaderRecallMark();
          goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _VCScreenCapture_setRepeatFrameAttributes(opaqueCMSampleBuffer *a1, int a2)
{
  if (a1)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a1);
    if (ImageBuffer)
    {
      v4 = *MEMORY[0x1E6983C38];
      v5 = MEMORY[0x1E695E4D0];
      if (!a2)
      {
        v5 = MEMORY[0x1E695E4C0];
      }

      v6 = *v5;

      CVBufferSetAttachment(ImageBuffer, v4, v6, kCVAttachmentMode_ShouldPropagate);
    }

    else
    {
      _VCScreenCapture_setRepeatFrameAttributes_cold_1();
    }
  }

  else
  {
    _VCScreenCapture_setRepeatFrameAttributes_cold_2();
  }
}

CMSampleBufferRef _VCScreenCapture_CreateFrameInternal(uint64_t a1, CMSampleBufferRef cf, int a3, char a4, uint64_t a5)
{
  v77[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 472) != a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 472);
        *buf = 136316162;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = "_VCScreenCapture_CreateFrameInternal";
        *&buf[22] = 1024;
        *&buf[24] = 565;
        *&buf[28] = 1024;
        *&buf[30] = v12;
        *&buf[34] = 1024;
        *&buf[36] = a3;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Source frame transform has changed. old transform=%d -> new transform=%d", buf, 0x28u);
      }
    }

    *(a1 + 472) = a3;
  }

  if ((a4 & 1) == 0)
  {
    _VCScreenCapture_UpdateShouldClearScreen(a1, 0);
  }

  CFRetain(cf);
  ImageBuffer = CMSampleBufferGetImageBuffer(cf);
  if (!ImageBuffer)
  {
    goto LABEL_102;
  }

  v14 = ImageBuffer;
  memset(&v70, 170, sizeof(v70));
  CMSampleBufferGetOutputPresentationTimeStamp(&v70, cf);
  v15 = *MEMORY[0x1E6983C38];
  v16 = CMGetAttachment(cf, *MEMORY[0x1E6983C38], 0);
  v69 = a4;
  if ((a4 & 1) == 0 && (*(a1 + 484) & 1) == 0)
  {
    *(a1 + 484) = 1;
    extraColumnsOnRight.value = 0xAAAAAAAAAAAAAAAALL;
    extraRowsOnBottom.value = 0xAAAAAAAAAAAAAAAALL;
    CVPixelBufferGetExtendedPixels(v14, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        Width = CVPixelBufferGetWidth(v14);
        Height = CVPixelBufferGetHeight(v14);
        *buf = 136316930;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = "_VCScreenCapture_CreateFrameInternal";
        *&buf[22] = 1024;
        *&buf[24] = 585;
        *&buf[28] = 2048;
        *&buf[30] = Width;
        *&buf[38] = 2048;
        *&buf[40] = Height;
        LOWORD(v76) = 1024;
        *(&v76 + 2) = a3;
        WORD3(v76) = 2048;
        *(&v76 + 1) = extraColumnsOnRight.value;
        LOWORD(v77[0]) = 2048;
        *(v77 + 2) = extraRowsOnBottom.value;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Captured first frame with source width %.1zu x height:%.1zu transform=%d extendedPixelsRight=%zu  extendedPixelsBottom=%zu", buf, 0x4Au);
      }
    }

    a4 = v69;
  }

  if (*(a1 + 476) != 1)
  {
    LOBYTE(v34) = 0;
    goto LABEL_40;
  }

  *buf = v70;
  Seconds = CMTimeGetSeconds(buf);
  *buf = *(a1 + 404);
  *&buf[16] = *(a1 + 420);
  v22 = Seconds - CMTimeGetSeconds(buf);
  v23 = CMSampleBufferGetImageBuffer(cf);
  if (v16)
  {
    CVBufferSetAttachment(v23, v15, v16, kCVAttachmentMode_ShouldPropagate);
    CMTimeMake(&v72, 17, 600);
    v71 = v70;
    v24 = *(MEMORY[0x1E6960CF0] + 48);
    *&buf[32] = *(MEMORY[0x1E6960CF0] + 32);
    v76 = v24;
    v77[0] = *(MEMORY[0x1E6960CF0] + 64);
    v25 = *(MEMORY[0x1E6960CF0] + 16);
    *buf = *MEMORY[0x1E6960CF0];
    *&buf[16] = v25;
    extraColumnsOnRight = v70;
    extraRowsOnBottom = v72;
    CMTimeAdd(&buf[24], &extraColumnsOnRight, &extraRowsOnBottom);
    extraColumnsOnRight = *&buf[24];
    CMSampleBufferSetOutputPresentationTimeStamp(cf, &extraColumnsOnRight);
    extraColumnsOnRight = *&buf[24];
    v26 = CMTimeGetSeconds(&extraColumnsOnRight);
    extraColumnsOnRight = v71;
    v27 = CMTimeGetSeconds(&extraColumnsOnRight);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v28 = v26 - v27;
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      v31 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v70;
          v32 = CMTimeGetSeconds(buf);
          *buf = v70;
          v33 = CMTimeGetSeconds(buf);
          *buf = 136316418;
          *&buf[4] = v29;
          *&buf[12] = 2080;
          *&buf[14] = "_VCScreenCapture_performIdleTimeAdjustments";
          *&buf[22] = 1024;
          *&buf[24] = 509;
          *&buf[28] = 2048;
          *&buf[30] = v32;
          *&buf[38] = 2048;
          *&buf[40] = v28 + v33;
          LOWORD(v76) = 2048;
          *(&v76 + 2) = v28;
          _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Idle frame, moving time forward. BeforeTime=%f, AfterTime=%f, Delta=%f ", buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = v70;
        v66 = CMTimeGetSeconds(buf);
        *buf = v70;
        v67 = CMTimeGetSeconds(buf);
        *buf = 136316418;
        *&buf[4] = v29;
        *&buf[12] = 2080;
        *&buf[14] = "_VCScreenCapture_performIdleTimeAdjustments";
        *&buf[22] = 1024;
        *&buf[24] = 509;
        *&buf[28] = 2048;
        *&buf[30] = v66;
        *&buf[38] = 2048;
        *&buf[40] = v28 + v67;
        LOWORD(v76) = 2048;
        *(&v76 + 2) = v28;
        _os_log_debug_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEBUG, "VCScreenCapture [%s] %s:%d Idle frame, moving time forward. BeforeTime=%f, AfterTime=%f, Delta=%f ", buf, 0x3Au);
      }
    }

    CMSampleBufferGetOutputPresentationTimeStamp(buf, cf);
    v70 = *buf;
    *(a1 + 494) = 1;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    v37 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v70;
        v38 = CMTimeGetSeconds(buf);
        *buf = 136316162;
        *&buf[4] = v35;
        *&buf[12] = 2080;
        *&buf[14] = "_VCScreenCapture_performIdleTimeAdjustments";
        *&buf[22] = 1024;
        *&buf[24] = 514;
        *&buf[28] = 2048;
        *&buf[30] = v38;
        *&buf[38] = 2048;
        *&buf[40] = v22;
        _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Non idle frame. PresentationTime=%f, interArrivalTime=%f ", buf, 0x30u);
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = v70;
      v65 = CMTimeGetSeconds(buf);
      *buf = 136316162;
      *&buf[4] = v35;
      *&buf[12] = 2080;
      *&buf[14] = "_VCScreenCapture_performIdleTimeAdjustments";
      *&buf[22] = 1024;
      *&buf[24] = 514;
      *&buf[28] = 2048;
      *&buf[30] = v65;
      *&buf[38] = 2048;
      *&buf[40] = v22;
      _os_log_debug_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEBUG, "VCScreenCapture [%s] %s:%d Non idle frame. PresentationTime=%f, interArrivalTime=%f ", buf, 0x30u);
    }
  }

  extraRowsOnBottom = v70;
  *buf = *(a1 + 404);
  *&buf[16] = *(a1 + 420);
  extraColumnsOnRight = **&MEMORY[0x1E6960CC0];
  v39 = CMTimeCompare(buf, &extraColumnsOnRight);
  if (!v16)
  {
    if (v39)
    {
      if (*(a1 + 494) == 1)
      {
        *(a1 + 494) = 0;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v40 = VRTraceErrorLogLevelToCSTR();
          v41 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = extraRowsOnBottom;
            v42 = CMTimeGetSeconds(buf);
            *buf = 136316162;
            *&buf[4] = v40;
            *&buf[12] = 2080;
            *&buf[14] = "_VCScreenCapture_validateFrameTime";
            *&buf[22] = 1024;
            *&buf[24] = 471;
            *&buf[28] = 2048;
            *&buf[30] = v42;
            *&buf[38] = 2048;
            *&buf[40] = v22;
            _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d First non idle frame received after last idle frame. PresentationTime=%f, interArrivalTime=%f ", buf, 0x30u);
          }
        }
      }
    }
  }

  *buf = extraRowsOnBottom;
  extraColumnsOnRight = *(a1 + 404);
  v43 = CMTimeCompare(buf, &extraColumnsOnRight);
  v34 = v43 >> 31;
  if ((v43 & 0x80000000) != 0)
  {
    ++*(a1 + 496);
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = extraRowsOnBottom;
        v46 = CMTimeGetSeconds(buf);
        *buf = *(a1 + 404);
        *&buf[16] = *(a1 + 420);
        v47 = CMTimeGetSeconds(buf);
        v48 = *(a1 + 496);
        *buf = 136316418;
        *&buf[4] = v44;
        *&buf[12] = 2080;
        *&buf[14] = "_VCScreenCapture_validateFrameTime";
        *&buf[22] = 1024;
        *&buf[24] = 482;
        *&buf[28] = 2048;
        *&buf[30] = v46;
        *&buf[38] = 2048;
        *&buf[40] = v47;
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v48;
        _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Frame PresentationTime %f going backwards with respect to previous frame PresentationTime %f. Dropping frame with total frames dropped=%u", buf, 0x36u);
      }
    }
  }

  a4 = v69;
  if (cf)
  {
LABEL_40:
    v49 = *(a1 + 488);
    if (v49 == 2)
    {
      v51 = a3 & 0x7FFFFFFF;
      if ((a3 & 0x7FFFFFFF) != 7)
      {
        if (v51 == 4)
        {
          goto LABEL_63;
        }

        if (v51 == 3)
        {
LABEL_64:
          v58 = 1;
          goto LABEL_74;
        }

LABEL_65:
        v58 = 0;
        goto LABEL_74;
      }
    }

    else
    {
      if (v49 == 3)
      {
        v50 = a3 & 0x7FFFFFFF;
        if ((a3 & 0x7FFFFFFF) != 7)
        {
          if (v50 != 4)
          {
            if (v50 == 3)
            {
              goto LABEL_66;
            }

LABEL_63:
            v58 = 3;
            goto LABEL_74;
          }

          goto LABEL_64;
        }

        goto LABEL_65;
      }

      if ((*(a1 + 493) & 1) == 0)
      {
        v52 = CVPixelBufferGetWidth(v14);
        if (vabds_f32((v52 / CVPixelBufferGetHeight(v14)), *(a1 + 464) / *(a1 + 468)) > 0.0001)
        {
          *(a1 + 492) = 1;
          *(a1 + 493) = 1;
        }
      }

      if (*(a1 + 492) == 1)
      {
        CFRelease(cf);
        ResizeFrame = VCMediaRecorderUtil_CreateResizeFrame(v14, *(a1 + 440), *(a1 + 432));
        *buf = v70;
        cf = createSampleBufferWithPixelBuffer(ResizeFrame, buf);
        CVPixelBufferRelease(ResizeFrame);
        a4 = v69;
        if (!cf)
        {
          _VCScreenCapture_CreateFrameInternal_cold_5(buf);
LABEL_101:
          cf = *buf;
LABEL_102:
          if (cf)
          {
            CFRelease(cf);
            return 0;
          }

          return cf;
        }
      }

      else
      {
        a4 = v69;
      }

      v54 = CVPixelBufferGetWidth(v14);
      v55 = CVPixelBufferGetHeight(v14);
      v56 = a3 & 0x7FFFFFFF;
      if (v54 < v55)
      {
        v57 = v56 - 3;
        if (v57 > 4)
        {
          v58 = 0;
        }

        else
        {
          v58 = dword_1DBD47818[v57];
        }

        extraRowsOnBottom.value = 0xAAAAAAAAAAAAAAAALL;
        if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], *(a1 + 456), &extraRowsOnBottom))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              _VCScreenCapture_CreateFrameInternal_cold_1();
            }
          }
        }

        else
        {
          MEMORY[0x1E128B1C0](*(a1 + 448), v14, extraRowsOnBottom.value);
          memset(buf, 170, 24);
          CMSampleBufferGetOutputPresentationTimeStamp(buf, cf);
          CFRelease(cf);
          extraColumnsOnRight = *buf;
          cf = createSampleBufferWithPixelBuffer(extraRowsOnBottom.value, &extraColumnsOnRight.value);
          CVBufferRelease(extraRowsOnBottom.value);
          if (!cf)
          {
            _VCScreenCapture_CreateFrameInternal_cold_4();
            return cf;
          }
        }

        a4 = v69;
        goto LABEL_74;
      }

      switch(v56)
      {
        case 7:
          goto LABEL_64;
        case 4:
          goto LABEL_65;
        case 3:
          goto LABEL_63;
      }
    }

LABEL_66:
    v58 = 2;
LABEL_74:
    if (*(a1 + 384) == 1 && (a4 & 1) == 0)
    {
      v59 = *(a1 + 392);
      if (v59)
      {
        CFRelease(v59);
      }

      if (cf)
      {
        v60 = CFRetain(cf);
      }

      else
      {
        v60 = 0;
      }

      *(a1 + 392) = v60;
      *(a1 + 400) = a3;
      *(a1 + 385) = 0;
    }

    IOSurface = CVPixelBufferGetIOSurface(v14);
    if (IOSurface)
    {
      v62 = v16 == 0;
    }

    else
    {
      v62 = 0;
    }

    if (v62)
    {
      v63 = v34;
    }

    else
    {
      v63 = 1;
    }

    if (v63)
    {
LABEL_93:
      if ((v34 & 1) == 0)
      {
        if ((a4 & 1) == 0)
        {
          VCScreenCapture_attachUpdateWindowToPixelBuffer(v14);
        }

        *(a1 + 404) = v70;
        *a5 = -1431699456;
        *(a5 + 4) = 3;
        *(a5 + 8) = -1431699456;
        *(a5 + 12) = v58;
        *(a5 + 16) = v58 | 0x90;
        *(a5 + 17) = -21846;
        *(a5 + 19) = -86;
        ++*(a1 + 480);
        return cf;
      }

      goto LABEL_102;
    }

    IOSurfaceGetID(IOSurface);
    IOSurfaceGetIndexedTimestamp();
    IOSurfaceGetIndexedTimestamp();
    *buf = v70;
    CMTimeGetSeconds(buf);
    kdebug_trace();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (FigCFDictionarySetInt32())
    {
      _VCScreenCapture_CreateFrameInternal_cold_2(cf, buf);
    }

    else
    {
      if (!FigCFDictionarySetInt64())
      {
        CMSetAttachments(cf, Mutable, 0);
        a4 = v69;
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        goto LABEL_93;
      }

      _VCScreenCapture_CreateFrameInternal_cold_3(cf, buf);
    }

    goto LABEL_101;
  }

  return cf;
}

uint64_t VCScreenCapture_attachUpdateWindowToPixelBuffer(__CVBuffer *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  Attachment = CVBufferGetAttachment(a1, @"FVDWindowRectangles", 0);
  if (Attachment && CFArrayGetCount(Attachment))
  {
    DictionaryRepresentation = 0;
    v4 = 0;
    goto LABEL_13;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    VCScreenCapture_attachUpdateWindowToPixelBuffer_cold_3(buf);
    return *buf;
  }

  v4 = Mutable;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = Width;
  v31.size.height = Height;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v31);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (DictionaryRepresentation)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316674;
          v17 = v9;
          v18 = 2080;
          v19 = "VCScreenCapture_attachUpdateWindowToPixelBuffer";
          v20 = 1024;
          v21 = 538;
          v22 = 2048;
          v23 = Width;
          v24 = 2048;
          v25 = Height;
          v26 = 2048;
          v27 = 0;
          v28 = 2048;
          v29 = 0;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d visibleRect=%.2fx%.2f@(%.2f, %.2f)", buf, 0x44u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316674;
        v17 = v9;
        v18 = 2080;
        v19 = "VCScreenCapture_attachUpdateWindowToPixelBuffer";
        v20 = 1024;
        v21 = 538;
        v22 = 2048;
        v23 = Width;
        v24 = 2048;
        v25 = Height;
        v26 = 2048;
        v27 = 0;
        v28 = 2048;
        v29 = 0;
        _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, "VCScreenCapture [%s] %s:%d visibleRect=%.2fx%.2f@(%.2f, %.2f)", buf, 0x44u);
      }
    }

    CFArrayAppendValue(v4, DictionaryRepresentation);
    CVBufferSetAttachment(a1, @"FVDWindowRectangles", v4, kCVAttachmentMode_ShouldPropagate);
LABEL_13:
    if (CVBufferGetAttachment(a1, @"FVDWindowScaleFactor", 0))
    {
      v12 = 0;
    }

    else
    {
      valuePtr = 1;
      v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      if (!v12)
      {
        VCScreenCapture_attachUpdateWindowToPixelBuffer_cold_1(buf);
        v13 = *buf;
        if (!DictionaryRepresentation)
        {
LABEL_19:
          if (!v4)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_18:
        CFRelease(DictionaryRepresentation);
        goto LABEL_19;
      }

      CVBufferSetAttachment(a1, @"FVDWindowScaleFactor", v12, kCVAttachmentMode_ShouldPropagate);
    }

    v13 = 0;
    if (!DictionaryRepresentation)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v13 = 2148073475;
  if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCScreenCapture_attachUpdateWindowToPixelBuffer_cold_2();
    }
  }

  v12 = 0;
LABEL_20:
  CFRelease(v4);
LABEL_21:
  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

void _VCScreenCapture_UpdateShouldClearScreen(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 428) != a2)
  {
    v2 = a2;
    *(a1 + 428) = a2;
    v4 = *(a1 + 168);
    if (v4)
    {
      VCScreenCaptureManager_ScreenShareDidClearScreen(v4, a2);
    }

    if (v2)
    {
      pthread_cond_signal((a1 + 256));
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return;
      }

      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "_VCScreenCapture_UpdateShouldClearScreen";
      v13 = 1024;
      v14 = 415;
      v7 = "VCScreenCapture [%s] %s:%d Enter Clear Screen";
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v9 = 136315650;
      v10 = v8;
      v11 = 2080;
      v12 = "_VCScreenCapture_UpdateShouldClearScreen";
      v13 = 1024;
      v14 = 417;
      v7 = "VCScreenCapture [%s] %s:%d Exit Clear Screen";
    }

    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v9, 0x1Cu);
  }
}

uint64_t createPixelBufferPool(CVPixelBufferPoolRef *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc(MEMORY[0x1E695DF20]);
  v7 = [v6 initWithObjectsAndKeys:{MEMORY[0x1E695E118], *MEMORY[0x1E696CF68], @"AVConference:ScreenCaptureResize", *MEMORY[0x1E696CF98], 0}];
  v8 = objc_alloc(MEMORY[0x1E695DF20]);
  v9 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v10 = *MEMORY[0x1E6966208];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  v12 = [v8 initWithObjectsAndKeys:{v9, v10, v11, *MEMORY[0x1E69660B8], &unk_1F5798D60, *MEMORY[0x1E6966130], v7, *MEMORY[0x1E69660D8], 0}];
  v13 = CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, v12, a1);

  return v13;
}

void _VCScreenCapture_handleFrame(uint64_t a1, opaqueCMSampleBuffer *a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  pthread_mutex_lock((a1 + 320));
  FrameInternal = _VCScreenCapture_CreateFrameInternal(a1, a2, a3, 0, v12);
  v7 = *(a1 + 404);
  v8 = *(a1 + 412);
  v9 = *(a1 + 420);
  pthread_mutex_unlock((a1 + 320));
  if (FrameInternal)
  {
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v11 = v9;
    VCVideoCapture_DistributeVideoFrame(a1, FrameInternal, &v10, v12);
    CFRelease(FrameInternal);
  }
}