@interface VCNWConnectionMonitor
@end

@implementation VCNWConnectionMonitor

void __VCNWConnectionMonitor_Create_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = VTP_NWConnectionQueue(a1, a2);
  dispatch_assert_queue_V2(v3);
  v4 = malloc_type_calloc(1uLL, 0x5E68uLL, 0x10A0040E7F0E380uLL);
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __VCNWConnectionMonitor_Create_block_invoke_cold_2();
      }
    }

    goto LABEL_12;
  }

  v5 = v4;
  interface_status_monitor = nw_connection_create_interface_status_monitor();
  *v5 = interface_status_monitor;
  if (!interface_status_monitor)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __VCNWConnectionMonitor_Create_block_invoke_cold_1();
      }
    }

    free(v5);
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5[6041] = 5000;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ReportingFrequency", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v5[6041] = 1000 * AppIntegerValue;
  }

LABEL_13:
  *(*(*(a1 + 32) + 8) + 24) = v5;
}

void __VCNWConnectionMonitor_CreateWithInterfaceName_block_invoke(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = VTP_NWConnectionQueue(a1, a2);
  dispatch_assert_queue_V2(v7);
  v8 = malloc_type_calloc(1uLL, 0x5E68uLL, 0x10A0040E7F0E380uLL);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v8)
  {
    v10 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "_VCNWConnectionMonitor_DispatchedCreateWithInterfaceName";
        *&buf[22] = 1024;
        LODWORD(v39) = 106;
        WORD2(v39) = 2048;
        *(&v39 + 6) = v8;
        HIWORD(v39) = 2080;
        v40 = v5;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Creating monitor=%p with interfaceName=%s", buf, 0x30u);
      }
    }

    memset(v37, 170, 22);
    *__str = 0xAAAAAAAAAAAAAAAALL;
    snprintf(__str, 0x1EuLL, "%p-%s", v8, v5);
    v13 = LogDump_OpenLog(__str, "VCNWConnectionMonitor", ".nwmonitordump", ", 9, ");
    *(v8 + 2) = v13;
    VRLogfilePrintSync(v13, "STime\tTimestamp\tVersion\tDirection\tByteCount\tQSize1\tQSize2\tDelay\tThroughput\tTxRate\tRateTrend\tFrequencyBand\tIntermittentState\tIntermittentPeriod\tSingleOutagePeriod\tBtCoex\tRadioCoex\tScoreDelayTx\tScoreDelayRx\tScoreLossTx\tScoreLossRx\tScoreChannel\tOffChannelRatio\tWlanDutyCycle\tWifiObservedTxBitrate(BE)\tWifiObservedTxBitrate(BK)\tWifiObservedTxBitrate(VI)\tWifiObservedTxBitrate(VO)\tWifiObservedTxBitrate(LLW0)\tWifiObservedTxBitrate(LLW1)\n");
    secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
    VTP_NWConnectionContext(secure_udp, v15);
    nw_parameters_set_context();
    v16 = nw_interface_create_with_name();
    nw_parameters_require_interface(secure_udp, v16);
    if (v3)
    {
      v17 = "1234::1234";
    }

    else
    {
      v17 = "120.0.0.1";
    }

    host = nw_endpoint_create_host(v17, "1234");
    v19 = nw_connection_create(host, secure_udp);
    *(v8 + 1) = v19;
    if (v6)
    {
      *(v8 + 3017) = v6;
      dispatch_retain(v6);
      v21 = *(v8 + 1);
    }

    else
    {
      v21 = v19;
    }

    v22 = VTP_NWConnectionQueue(v19, v20);
    nw_connection_set_queue(v21, v22);
    v23 = *(v8 + 1);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke;
    *&v39 = &unk_1E85F5270;
    *(&v39 + 1) = v4;
    v40 = v8;
    nw_connection_set_state_changed_handler(v23, buf);
    nw_connection_start(*(v8 + 1));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 136316162;
        v27 = v24;
        v28 = 2080;
        v29 = "_VCNWConnectionMonitor_DispatchedCreateWithInterfaceName";
        v30 = 1024;
        v31 = 161;
        v32 = 2048;
        v33 = v8;
        v34 = 2080;
        v35 = v5;
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Starting NWConnection for monitor=%p with interfaceName=%s", v26, 0x30u);
      }
    }

    nw_release(v16);
    nw_release(secure_udp);
    nw_release(host);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __VCNWConnectionMonitor_CreateWithInterfaceName_block_invoke_cold_1();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;
}

void __VCNWConnectionMonitor_Destroy_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = VTP_NWConnectionQueue(a1, a2);
  dispatch_assert_queue_V2(v3);
  if (*(v2 + 24128) == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __VCNWConnectionMonitor_Destroy_block_invoke_cold_1();
      }
    }
  }

  else
  {
    *(v2 + 24128) = 1;
    if (*v2)
    {
      nw_interface_status_monitor_cancel();
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      nw_connection_cancel(v4);
    }

    v5 = *(v2 + 16);
    if (v5)
    {
      LogDump_CloseLog(v5);
      *(v2 + 16) = 0;
    }
  }
}

uint64_t __VCNWConnectionMonitor_SetNotificationHandler_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = VTP_NWConnectionQueue(a1, a2);
  dispatch_assert_queue_V2(v2);
  VTP_NWConnectionQueue(v3, v4);
  return nw_interface_status_monitor_set_update_handler();
}

uint64_t __VCNWConnectionMonitor_SetPacketEventHandler_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = VTP_NWConnectionQueue(a1, a2);
  dispatch_assert_queue_V2(v2);
  VTP_NWConnectionQueue(v3, v4);
  return nw_interface_status_monitor_set_packet_event_handler();
}

uint64_t __VCNWConnectionMonitor_SetStatisticsHandler_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = VTP_NWConnectionQueue(a1, a2);
  dispatch_assert_queue_V2(v2);
  VTP_NWConnectionQueue(v3, v4);
  return nw_interface_status_monitor_set_update_handler();
}

void ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 5:
      v8 = (a1 + 40);
      if (*(*(a1 + 40) + 8))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v11 = *v8;
            v12 = *(*v8 + 8);
            *buf = 136316162;
            v18 = v9;
            v19 = 2080;
            v20 = "_VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke";
            v21 = 1024;
            v22 = 150;
            v23 = 2048;
            v24 = v11;
            v25 = 2048;
            v26 = v12;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NWConnection state cancelled! monitor=%p and monitor->NWConnection=%p is released.", buf, 0x30u);
          }
        }

        nw_release(*(*v8 + 8));
        *(*v8 + 8) = 0;
      }

      _VCNWConnectionMonitor_CheckAndReleaseNWMonitor(v8, a2);
      break;
    case 4:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke_cold_1();
        }
      }

      break;
    case 3:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 40);
          v6 = *(v5 + 8);
          *buf = 136316162;
          v18 = v3;
          v19 = 2080;
          v20 = "_VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke";
          v21 = 1024;
          v22 = 131;
          v23 = 2048;
          v24 = v5;
          v25 = 2048;
          v26 = v6;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NWConnection state ready and setting status monitor! monitor=%p, connection=%p", buf, 0x30u);
        }
      }

      v7 = (a1 + 40);
      if (*(*(a1 + 40) + 24128) == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke_cold_3();
          }
        }
      }

      else
      {
        **v7 = nw_connection_create_interface_status_monitor();
        v13 = *v7;
        if (**v7)
        {
          v14 = *(a1 + 32);
          if (v14 && (v13[3016] & 1) == 0)
          {
            v15 = v13[3017];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 0x40000000;
            block[2] = ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke_20;
            block[3] = &unk_1E85F5248;
            block[4] = v14;
            dispatch_async(v15, block);
          }
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke_cold_2();
          }
        }
      }

      break;
  }
}

void ___VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke(uint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = VTP_NWConnectionQueue(a1, a2);
  dispatch_assert_queue_V2(v8);
  v11 = (a1 + 32);
  v10 = *(a1 + 32);
  if (v10)
  {
    if (a4)
    {
      if (a4 == 89)
      {
        if (*v10)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v14 = *v11;
              v15 = **v11;
              v26 = 136316162;
              v27 = v12;
              v28 = 2080;
              v29 = "_VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke";
              v30 = 1024;
              v31 = 245;
              v32 = 2048;
              *v33 = v15;
              *&v33[8] = 2048;
              *&v33[10] = v14;
              _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d monitor->nwMonitor=%p is released, monitor=%p", &v26, 0x30u);
            }
          }

          nw_release(**v11);
          **v11 = 0;
        }

        _VCNWConnectionMonitor_CheckAndReleaseNWMonitor((a1 + 32), v9);
        return;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v18 = *v11;
      v26 = 136316162;
      v27 = v16;
      v28 = 2080;
      v29 = "_VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke";
      v30 = 1024;
      v31 = 251;
      v32 = 1024;
      *v33 = a4;
      *&v33[4] = 2048;
      *&v33[6] = v18;
      v19 = " [%s] %s:%d NWConnection notification returns error %d, monitor=%p";
      v20 = v17;
      v21 = 44;
LABEL_28:
      _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, v19, &v26, v21);
      return;
    }

    if (*(v10 + 24128) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          ___VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (!a2 || a3 != 96)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return;
        }

        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return;
        }

        v26 = 136316418;
        v27 = v24;
        v28 = 2080;
        v29 = "_VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke";
        v30 = 1024;
        v31 = 261;
        v32 = 1024;
        *v33 = 96;
        *&v33[4] = 1024;
        *&v33[6] = a3;
        *&v33[10] = 2048;
        *&v33[12] = a2;
        v19 = " [%s] %s:%d NWConnection notification size mismatch. (expected size: %u, actual size: %u) status_data: %p";
        v20 = v25;
        v21 = 50;
        goto LABEL_28;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 48);

      _VCNWConnectionMonitor_DispatchedProcessInterfaceAdvisoryNotification(v22, v23, a2);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      ___VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke_cold_2();
    }
  }
}

void ___VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a5;
  v8 = a2;
  v21[2] = *MEMORY[0x1E69E9840];
  v10 = VTP_NWConnectionQueue(a1, a2);
  dispatch_assert_queue_V2(v10);
  if (v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ___VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke_cold_1();
      }
    }

    return;
  }

  if (v8 == 1)
  {
    if (!a4)
    {
      return;
    }

    v11 = 0;
    v12 = 1;
    while (1)
    {
      if (a1[4])
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        v21[0] = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
        v13 = *(*&buf[8] + 24);
        if (!v13)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              ___VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke_cold_2();
            }
          }

          _Block_object_dispose(buf, 8);
          return;
        }

        *v13 = *(a3 + 16 * v11);
        v15 = a1[4];
        v14 = a1[5];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke_27;
        block[3] = &unk_1E85F52B8;
        v16 = a1[6];
        block[5] = v15;
        block[6] = v16;
        block[4] = buf;
        dispatch_async(v14, block);
        _Block_object_dispose(buf, 8);
      }

      v11 = v12++;
      if (v11 >= a4)
      {
        return;
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = "_VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke_2";
      *&buf[22] = 1024;
      LODWORD(v21[0]) = 307;
      WORD2(v21[0]) = 1024;
      *(v21 + 6) = v8;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Receive other unknown event type %d", buf, 0x22u);
    }
  }
}

void ___VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke_27(uint64_t a1)
{
  (*(a1 + 40))(*(a1 + 48), *(*(*(a1 + 32) + 8) + 24));
  free(*(*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void ___VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = VTP_NWConnectionQueue(a1, a2);
  dispatch_assert_queue_V2(v8);
  v11 = (a1 + 4);
  v10 = a1[4];
  if (v10)
  {
    if (a4)
    {
      if (a4 == 89)
      {
        if (*v10)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v14 = *v11;
              v15 = **v11;
              *buf = 136316162;
              *&buf[4] = v12;
              *&buf[12] = 2080;
              *&buf[14] = "_VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke";
              *&buf[22] = 1024;
              *&buf[24] = 539;
              *&buf[28] = 2048;
              *&buf[30] = v15;
              *&buf[38] = 2048;
              *&buf[40] = v14;
              _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d monitor->nwMonitor=%p is released, monitor=%p", buf, 0x30u);
            }
          }

          nw_release(**v11);
          **v11 = 0;
        }

        _VCNWConnectionMonitor_CheckAndReleaseNWMonitor(v11, v9);
        return;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v18 = *v11;
      *buf = 136316162;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = "_VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke";
      *&buf[22] = 1024;
      *&buf[24] = 545;
      *&buf[28] = 1024;
      *&buf[30] = a4;
      *&buf[34] = 2048;
      *&buf[36] = v18;
      v19 = " [%s] %s:%d NWConnection notification returns error %d, monitor=%p";
      v20 = v17;
      v21 = 44;
LABEL_28:
      _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
      return;
    }

    if (*(v10 + 24128) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          ___VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (!a2 || a3 != 96)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return;
        }

        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 136316418;
        *&buf[4] = v25;
        *&buf[12] = 2080;
        *&buf[14] = "_VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke";
        *&buf[22] = 1024;
        *&buf[24] = 555;
        *&buf[28] = 1024;
        *&buf[30] = 96;
        *&buf[34] = 1024;
        *&buf[36] = a3;
        *&buf[40] = 2048;
        *&buf[42] = a2;
        v19 = " [%s] %s:%d NWConnection notification size mismatch. (expected size: %u, actual size: %u) status_data: %p";
        v20 = v26;
        v21 = 50;
        goto LABEL_28;
      }

      memset(v40, 170, sizeof(v40));
      v41 = xmmword_1DBD475B0;
      v42 = unk_1DBD475C0;
      v39 = unk_1DBD47580;
      memset(buf, 170, sizeof(buf));
      _VCNWConnectionMonitor_ProcessNotification(v10, a2, buf);
      v22 = a1[5];
      if (v22 && *&buf[8])
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 0x40000000;
        v27[2] = ___VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke_32;
        v27[3] = &__block_descriptor_tmp_33;
        v23 = a1[6];
        v24 = a1[7];
        v27[4] = v22;
        v27[5] = v24;
        v34 = v40[0];
        v35 = v40[1];
        v36 = v41;
        v37 = v42;
        v30 = *&buf[32];
        v31 = *&buf[48];
        v32 = *&buf[64];
        v33 = v39;
        v28 = *buf;
        v29 = *&buf[16];
        dispatch_async(v23, v27);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      ___VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke_cold_2();
    }
  }
}

uint64_t ___VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke_32(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 160);
  v9[6] = *(a1 + 144);
  v9[7] = v3;
  v4 = *(a1 + 192);
  v9[8] = *(a1 + 176);
  v9[9] = v4;
  v5 = *(a1 + 96);
  v9[2] = *(a1 + 80);
  v9[3] = v5;
  v6 = *(a1 + 128);
  v9[4] = *(a1 + 112);
  v9[5] = v6;
  v7 = *(a1 + 64);
  v9[0] = *(a1 + 48);
  v9[1] = v7;
  return v2(v1, v9);
}

void __VCNWConnectionMonitor_Create_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __VCNWConnectionMonitor_Create_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate memory for monitor", v2, v3, v4, v5);
}

void __VCNWConnectionMonitor_CreateWithInterfaceName_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate memory for monitor", v2, v3, v4, v5);
}

void __VCNWConnectionMonitor_Destroy_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Monitor is already destroyed!", v2, v3, v4, v5);
}

void ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void ___VCNWConnectionMonitor_DispatchedCreateWithInterfaceName_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void ___VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void ___VCNWConnectionMonitor_DispatchedSetNotificationHandler_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d monitor is null!", v2, v3, v4, v5);
}

void ___VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ___VCNWConnectionMonitor_DispatchedSetPacketEventHandler_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate memory for packetEvent!", v2, v3, v4, v5);
}

void ___VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void ___VCNWConnectionMonitor_DispatchedSetStatisticsHandler_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d monitor is null!", v2, v3, v4, v5);
}

@end