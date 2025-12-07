@interface VTP
@end

@implementation VTP

uint64_t __VTP_NWConnectionContext_block_invoke()
{
  VTP_NWConnectionContext_context = nw_context_create();
  nw_context_set_isolate_protocol_stack();
  nw_context_set_scheduling_mode();
  v0 = VTP_NWConnectionContext_context;

  return MEMORY[0x1EEDD31F0](v0);
}

void __VTP_NWConnectionQueue_block_invoke()
{
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(58);
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  VTP_NWConnectionQueue_queue = dispatch_queue_create_with_target_V2("VTP Receive Proc", initially_inactive, CustomRootQueue);
  if (VTP_NWConnectionContext_once != -1)
  {
    VTP_NWConnectionContext_cold_1();
  }

  nw_queue_context_target_dispatch_queue();
  v2 = VTP_NWConnectionQueue_queue;

  dispatch_activate(v2);
}

void *__VTP_DuplicateVFD_block_invoke(uint64_t a1, uint64_t a2, void *__src)
{
  result = memcpy((*(*(a1 + 32) + 8) + 32), __src, 0x220uLL);
  v6 = *(*(*(a1 + 32) + 8) + 52);
  if (v6 != -1)
  {
    ++*(a2 + 4 * v6 + 128);
  }

  return result;
}

void __VTP_ScheduleReceiveForNWMultiLink_block_invoke(uint64_t a1, NSObject *a2, NSObject *a3, int a4, nw_error_t error)
{
  v53 = *MEMORY[0x1E69E9840];
  if (error)
  {
    error_code = nw_error_get_error_code(error);
    if (error_code)
    {
      goto LABEL_7;
    }
  }

  else
  {
    error_code = 0;
  }

  if (a4)
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __VTP_ScheduleReceiveForNWMultiLink_block_invoke;
    *&buf[24] = &unk_1E85F7670;
    *&buf[32] = v11;
    *&buf[40] = v10;
    buf[48] = v12;
    nw_connection_receive_multiple();
    goto LABEL_13;
  }

LABEL_7:
  if (error_code)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v34 = @"NWMultiLink";
        v35 = *(a1 + 40);
        v36 = *(a1 + 48);
        if (!*(a1 + 32))
        {
          v34 = @"NWConnection";
        }

        *buf = 136316674;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = "VTP_ScheduleReceiveForNWMultiLink_block_invoke";
        *&buf[22] = 1024;
        *&buf[24] = 5747;
        *&buf[28] = 2112;
        *&buf[30] = v34;
        *&buf[38] = 1024;
        *&buf[40] = error_code;
        *&buf[44] = 2112;
        *&buf[46] = v35;
        *&buf[54] = 1024;
        *&buf[56] = v36;
        _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@ failed to receive data with error=%d connection=%@ shouldIgnoreConnectionRefusedError=%d", buf, 0x3Cu);
      }
    }

    if (error_code == 61 && *(a1 + 48) == 1)
    {
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __VTP_ScheduleReceiveForNWMultiLink_block_invoke;
      *&buf[24] = &unk_1E85F7670;
      *&buf[32] = v16;
      *&buf[40] = v15;
      buf[48] = 1;
      nw_connection_receive_multiple();
    }
  }

LABEL_13:
  v17 = CheckInHandleDebug();
  v18 = v17;
  if (v17)
  {
    if (a2)
    {
      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      v47 = 1;
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = ___VTP_HandleReceiveForNWConnection_block_invoke;
      applier[3] = &unk_1E85F7758;
      applier[4] = &v43;
      applier[5] = v17;
      v21 = dispatch_data_apply(a2, applier);
      v23 = v44[3];
      if (v23)
      {
        *(v23 + 579) = 1;
        v24 = micro(v21, v22);
        *(v44[3] + 184) = v24;
        v52 = 0xAAAAAAAAAAAAAAAALL;
        *&v25 = 0xAAAAAAAAAAAAAAAALL;
        *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v50 = v25;
        v51 = v25;
        *&buf[48] = v25;
        v49 = v25;
        *&buf[16] = v25;
        *&buf[32] = v25;
        *buf = v25;
        if (v20)
        {
          VCSDInfoConstructWithDatagramChannelMultiLink(v20, buf);
        }

        else
        {
          VCSDInfoConstructWithNWConnection(v19, buf);
        }

        VTP_SetConnectionFlagsForPacket(v18, 0, v44[3], buf);
        if ((VTP_ProcessPacketType(v18, 0, -1, v44[3]) & 0x80000000) != 0)
        {
          _VTP_ReleaseVPKTPacket(v18, v44 + 3, 8, 0);
        }

        else
        {
          v26 = &v38;
          v38 = 0;
          v39 = &v38;
          v40 = 0x2020000000;
          v41 = 0;
          if (a3)
          {
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = ___VTP_HandleReceiveForNWConnection_block_invoke_74;
            v37[3] = &unk_1E85F7780;
            v37[4] = &v38;
            nw_content_context_foreach_protocol_metadata(a3, v37);
            v26 = v39;
          }

          v27 = v44;
          v28 = v44[3];
          *(v28 + 344) = v52;
          v29 = *&buf[16];
          *(v28 + 232) = *buf;
          *(v28 + 248) = v29;
          v30 = v50;
          *(v28 + 296) = v49;
          *(v28 + 312) = v30;
          *(v28 + 328) = v51;
          v31 = *&buf[48];
          *(v28 + 264) = *&buf[32];
          *(v28 + 280) = v31;
          v32 = v27[3];
          *(v32 + 516) = a4;
          *(v32 + 352) = *(v26 + 24);
          v33 = *(v32 + 224);
          VTP_UpdateReceivedBytes(*(v32 + 216), *(v32 + 560), (*v32 & 0xF0) != 0, *(v32 + 223), buf, *(v32 + 413), *(v32 + 408), *(v32 + 412) != 0);
          if (v33 != -1)
          {
            _VTP_HealthPrint(v18, *(v44[3] + 560), v33, 0, 0);
          }

          pthread_rwlock_rdlock((v18 + 5376));
          VTP_DemuxPacketsToVFDList(v18, v44[3], &v47);
          pthread_rwlock_unlock((v18 + 5376));
          _Block_object_dispose(&v38, 8);
        }
      }

      _Block_object_dispose(&v43, 8);
    }

    CheckOutHandleDebug();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __VTP_ScheduleReceiveForNWMultiLink_block_invoke_cold_1();
    }
  }
}

uint64_t __VTP_GetPktType_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  **(result + 40) = *(a3 + 28);
  *(*(*(result + 32) + 8) + 24) = 0;
  return result;
}

void ___VTP_SendOnePacketWithNWConnection_block_invoke(uint64_t a1, NSObject *a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  completion[8] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = ___VTP_SendDataToOneNWConnection_block_invoke;
  completion[3] = &__block_descriptor_64_e31_v16__0__NSObject_OS_nw_error__8l;
  completion[4] = a5;
  completion[5] = a6;
  completion[6] = a7;
  completion[7] = a4;
  nw_connection_send(v7, a2, a3, 1, completion);
}

void *___VTP_SendDataToOneNWConnection_block_invoke(void *result, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = v3[4];
        v7 = v3[5];
        v8 = v3[6];
        v9 = [objc_msgSend(a2 "description")];
        v10 = *(v3[7] + 288);
        v11 = 136316930;
        v12 = v4;
        v13 = 2080;
        v14 = "_VTP_SendDataToOneNWConnection_block_invoke";
        v15 = 1024;
        v16 = 5571;
        v17 = 2048;
        v18 = v6;
        v19 = 2048;
        v20 = v7;
        v21 = 2048;
        v22 = v8;
        v23 = 2080;
        v24 = v9;
        v25 = 1024;
        v26 = v10;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nw_connection_send(%llx, %llx, %llx) failed with error=%s, expiration time=%dms", &v11, 0x4Au);
      }
    }

    kdebug_trace();
    return VTP_NotifySendFailed(v3[7] + 292);
  }

  return result;
}

uint64_t ___VTP_SendOnePacketWithDatagramChannelMultiLink_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[10] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___VTP_SendOnePacketWithDatagramChannelMultiLink_block_invoke_2;
  v12[3] = &unk_1E85F7708;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v12[8] = a6;
  v12[9] = a7;
  return [v10 writeDatagram:v7 datagramSize:v9 datagramInfo:v8 options:0 completionHandler:v12];
}

void ___VTP_SendOnePacketWithDatagramChannelMultiLink_block_invoke_2(uint64_t a1, nw_connection_t connection)
{
  v10 = *MEMORY[0x1E69E9840];
  if (connection)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 72);
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = ___VTP_SendDataToOneNWConnection_block_invoke;
    completion[3] = &__block_descriptor_64_e31_v16__0__NSObject_OS_nw_error__8l;
    v7 = *(a1 + 56);
    v8 = v5;
    v9 = v4;
    nw_connection_send(connection, v3, v2, 1, completion);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      ___VTP_SendOnePacketWithDatagramChannelMultiLink_block_invoke_2_cold_1();
    }
  }
}

BOOL ___VTP_HandleReceiveForNWConnection_block_invoke(uint64_t a1, dispatch_object_t object, uint64_t a3, void *a4, size_t a5)
{
  if (a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ___VTP_HandleReceiveForNWConnection_block_invoke_cold_2();
      }
    }
  }

  else
  {
    dispatch_retain(object);
    if ((_VTP_AllocatePacketWithBufferFreeCallback(*(a1 + 40), a4, a5, _VTP_DispathDataFreeCallback, object, (*(*(a1 + 32) + 8) + 24)) & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          ___VTP_HandleReceiveForNWConnection_block_invoke_cold_1();
        }
      }

      dispatch_release(object);
    }
  }

  return a3 != 0;
}

uint64_t ___VTP_HandleReceiveForNWConnection_block_invoke_74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x1E128C640](a3, a2);
  if (result)
  {
    result = nw_ip_metadata_get_hop_limit();
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void __VTP_SetIDSReadHandler_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, __int16 a6, double *a7, void *a8)
{
  v81 = *MEMORY[0x1E69E9840];
  if (a8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = "VTP_SetIDSReadHandler_block_invoke";
        *&buf[22] = 1024;
        *&buf[24] = 6655;
        *&buf[28] = 2048;
        *&buf[30] = a2;
        *&buf[38] = 2080;
        *&buf[40] = [objc_msgSend(a8 "description")];
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d Datagram channel [%p] failed to read with error=%s", buf, 0x30u);
      }
    }

    return;
  }

  if (a7)
  {
    v17 = (*a7 >> 6) & 1;
    if (a4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
    if (a4)
    {
      goto LABEL_13;
    }
  }

  if ((v17 & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __VTP_SetIDSReadHandler_block_invoke_cold_1();
      }
    }

    return;
  }

LABEL_13:
  v18 = CheckInHandleDebug();
  if (v18)
  {
    v19 = v18;
    v64 = 0;
    v65 = 0;
    v20 = a4;
    PacketWithBufferFreeCallback = _VTP_AllocatePacketWithBufferFreeCallback(v18, a3, a4, 0, 0, &v64);
    if ((PacketWithBufferFreeCallback & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __VTP_SetIDSReadHandler_block_invoke_cold_8();
        }
      }

      goto LABEL_82;
    }

    v23 = v64;
    *(v64 + 579) = 3;
    v24 = micro(PacketWithBufferFreeCallback, v22);
    *(v23 + 23) = v24;
    if ((a5 & 0xFF00000000) != 0)
    {
      *(v23 + 519) = BYTE4(a5);
    }

    v72 = 0xAAAAAAAAAAAAAAAALL;
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v70 = v25;
    v71 = v25;
    v68 = v25;
    v69 = v25;
    *&buf[16] = v25;
    *&buf[32] = v25;
    *buf = v25;
    VCSDInfoConstructWithDatagramChannel(a2, a5, a6, 0, buf);
    VTP_SetConnectionFlagsForPacket(v19, 0, v64, buf);
    v26 = v64;
    v66 = 0;
    if (!a7)
    {
      goto LABEL_77;
    }

    v27 = (v19 + 21864);
    v28 = *a7;
    if (!*a7)
    {
LABEL_66:
      if (*(v19 + 5897) == 1)
      {
        if (*(v26 + 408))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v48 = VRTraceErrorLogLevelToCSTR();
            v49 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v50 = *(v26 + 408);
              v51 = *(v26 + 192);
              *v73 = 136316162;
              v74 = v48;
              v75 = 2080;
              v76 = "_VTP_ProcessDatagramOptions";
              v77 = 1024;
              v78 = 6576;
              v79 = 1024;
              *v80 = v50;
              *&v80[4] = 1024;
              *&v80[6] = v51;
              _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d datagram readHandler received packet with numOfStreamIDs=%d and streamID[0]=%u", v73, 0x28u);
            }
          }
        }
      }

      v52 = a7[8];
      if (v52 > 0.0)
      {
        v53 = v24 - v52;
        if (*(v19 + 21872) > v53)
        {
          v53 = *(v19 + 21872);
        }

        *(v19 + 21872) = v53;
        v54 = *(v19 + 21868);
        if (v54 <= *v27 + 1)
        {
          v54 = *v27 + 1;
        }

        *(v19 + 21868) = v54;
      }

LABEL_77:
      _VTP_ReleaseVPKTPacket(v19, &v66, 11, 0);
      if ((VTP_ProcessPacketType(v19, 0, -2, v64) & 0x80000000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __VTP_SetIDSReadHandler_block_invoke_cold_7();
          }
        }

        _VTP_ReleaseVPKTPacket(v19, &v64, 17, 0);
        _VTP_ReleaseVPKTPacket(v19, &v65, 16, 0);
LABEL_82:
        CheckOutHandleDebug();
        return;
      }

      v55 = v64;
      v56 = *v64;
      if (*v64 == 0x10000)
      {
        goto LABEL_87;
      }

      if (v56 == 48)
      {
LABEL_88:
        atomic_fetch_add_explicit((v19 + 21960), 1uLL, memory_order_relaxed);
        goto LABEL_89;
      }

      if (v56 == 2)
      {
LABEL_87:
        *(v64 + 43) = v72;
        v57 = *&buf[16];
        *(v55 + 58) = *buf;
        *(v55 + 62) = v57;
        v58 = v70;
        *(v55 + 74) = v69;
        *(v55 + 78) = v58;
        *(v55 + 82) = v71;
        v59 = v68;
        *(v55 + 66) = *&buf[32];
        *(v55 + 70) = v59;
        if (v56 == 48)
        {
          goto LABEL_88;
        }
      }

LABEL_89:
      v60 = v55[54];
      pthread_rwlock_rdlock((v19 + 21648));
      _VTP_ReportIDSOnTheWireBytesLocked(v19, v60, a4, a7, 0);
      pthread_rwlock_unlock((v19 + 21648));
      v61 = v64[56];
      VTP_UpdateReceivedBytes(v64[54], a4, (*v64 & 0xF0) != 0, *(v64 + 223), buf, *(v64 + 413), *(v64 + 408), *(v64 + 412) != 0);
      v62 = [a2 dataPath];
      if (v62)
      {
        if (v62 == 1)
        {
          _VTP_ProcessPacketForDirectIDSDataPath(v19, v64, v65);
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v63 = VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __VTP_SetIDSReadHandler_block_invoke_cold_6(v63, a2);
          }
        }
      }

      else
      {
        _VTP_ProcessPacketForSharedIDSDataPath(v19, v64, v65);
      }

      _VTP_HealthPrint(v19, v20, v61, 0, 0);
      goto LABEL_82;
    }

    *(v64 + 376) = 1;
    if (v28)
    {
      *(v26 + 414) = 1;
      *(v26 + 52) = a7[1];
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        v31 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a7 + 1);
            *v73 = 136315906;
            v74 = v29;
            v75 = 2080;
            v76 = "_VTP_ProcessDatagramOptions";
            v77 = 1024;
            v78 = 6510;
            v79 = 2048;
            *v80 = v32;
            _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d datagram readHandler received packet from participantID=%llu", v73, 0x26u);
          }
        }

        else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          __VTP_SetIDSReadHandler_block_invoke_cold_2();
        }
      }
    }

    v33 = *a7;
    if ((*a7 & 0x10) != 0)
    {
      *(v26 + 205) = *(a7 + 8);
    }

    if ((v33 & 2) != 0)
    {
      v34 = *(a7 + 19);
      *(v26 + 408) = v34;
      if (v34 >= 1)
      {
        v35 = v26 + 96;
        v36 = a7 + 20;
        do
        {
          v37 = *v36;
          v36 += 2;
          *v35++ = v37;
          --v34;
        }

        while (v34);
      }
    }

    if ((v33 & 8) != 0)
    {
      *(v26 + 412) = *(a7 + 18);
      if ((v33 & 4) == 0)
      {
LABEL_41:
        if ((v33 & 0x20) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_45;
      }
    }

    else if ((v33 & 4) == 0)
    {
      goto LABEL_41;
    }

    *(v26 + 413) = 1;
    if ((v33 & 0x20) == 0)
    {
LABEL_55:
      v43 = *a7;
      if ((*a7 & 0x10000) != 0)
      {
        *(v26 + 460) = *(a7 + 112);
      }

      if ((v43 & 0x40) != 0 || (v44 = *(v19 + 22008), v44 > 0.0) && v24 - v44 > 0.2)
      {
        *(v19 + 22008) = v24;
        if ((_VTP_AllocatePacketWithBufferFreeCallback(v19, 0, 0, 0, 0, &v66) & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              __VTP_SetIDSReadHandler_block_invoke_cold_4();
            }
          }

          _VTP_ReleaseVPKTPacket(v19, &v66, 11, 0);
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              __VTP_SetIDSReadHandler_block_invoke_cold_5();
            }
          }

          _VTP_ReleaseVPKTPacket(v19, &v64, 15, 0);
          _VTP_ReleaseVPKTPacket(v19, &v65, 14, 0);
          goto LABEL_82;
        }

        v45 = v66;
        *(v66 + 228) = v26[57];
        *(v45 + 216) = v26[54];
        v46 = v26[1];
        *v45 = 0x20000;
        *(v45 + 4) = v46;
        *(v45 + 184) = *(v26 + 23);
        if ((*a7 & 0x40) != 0)
        {
          ++*(v19 + 22016);
          *(v45 + 426) = 1;
          *(v45 + 428) = *(a7 + 23);
          v47 = *(a7 + 6);
          *(v45 + 438) = *(a7 + 28);
          *(v45 + 430) = v47;
        }

        else
        {
          *(v45 + 426) = 0;
        }

        v65 = v45;
        v66 = 0;
      }

      *(v26 + 441) = *(a7 + 80);
      goto LABEL_66;
    }

LABEL_45:
    *(v26 + 424) = 1;
    v38 = v26[54];
    v39 = *(a7 + 44);
    v40 = CheckInHandleDebug();
    if (v40)
    {
      v41 = v40;
      if (*(v40 + 21644) != v39)
      {
        *(v40 + 21644) = v39;
        if (v38)
        {
          pthread_rwlock_rdlock((v40 + 21648));
          v42 = VTP_getConnectionManagerForCallID(v41, v38);
          VCConnectionManager_SynchronizeParticipantGenerationCounter(v42);
          pthread_rwlock_unlock((v41 + 21648));
        }
      }

      CheckOutHandleDebug();
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __VTP_SetIDSReadHandler_block_invoke_cold_3();
        }
      }

      *__error() = 13;
    }

    goto LABEL_55;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __VTP_SetIDSReadHandler_block_invoke_cold_9();
    }
  }
}

void __VTP_ScheduleReceiveForNWMultiLink_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void ___VTP_SendOnePacketWithDatagramChannelMultiLink_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ___VTP_HandleReceiveForNWConnection_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void ___VTP_HandleReceiveForNWConnection_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __VTP_SetIDSReadHandler_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __VTP_SetIDSReadHandler_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

void __VTP_SetIDSReadHandler_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_21();
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void __VTP_SetIDSReadHandler_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void __VTP_SetIDSReadHandler_block_invoke_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __VTP_SetIDSReadHandler_block_invoke_cold_6(uint64_t a1, void *a2)
{
  [a2 dataPath];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

void __VTP_SetIDSReadHandler_block_invoke_cold_7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __VTP_SetIDSReadHandler_block_invoke_cold_8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void __VTP_SetIDSReadHandler_block_invoke_cold_9()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

@end