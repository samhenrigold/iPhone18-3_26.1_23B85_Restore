@interface Resume
@end

@implementation Resume

void __stream_Resume_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStreamUnbuffered <= 30 && (gLogCategory_APTransportStreamUnbuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportStreamUnbuffered, "OSStatus stream_resumeInternal(FigTransportStreamRef)", 33554462, "[%{ptr}] Resuming.\n", v2);
  }

  if (*(DerivedStorage + 24))
  {
    APSLogErrorAt();
    v14 = -16617;
    goto LABEL_21;
  }

  if (*(DerivedStorage + 25))
  {
    goto LABEL_17;
  }

  v4 = *DerivedStorage;
  if (*DerivedStorage == 1935897198)
  {
    APSEventRecorderRecordEventWithFlags();
  }

  v5 = *(DerivedStorage + 40);
  v6 = *(DerivedStorage + 104);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v7)
  {
    v14 = -12782;
LABEL_20:
    APSLogErrorAt();
    goto LABEL_21;
  }

  v8 = v7(v5, v2, stream_handleEventFromSendConnection, v6, 0);
  if (v8)
  {
    v14 = v8;
    goto LABEL_20;
  }

  v9 = *(DerivedStorage + 40);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    v14 = -12782;
    goto LABEL_20;
  }

  v11 = v10(v9);
  if (v11)
  {
    v14 = v11;
    goto LABEL_20;
  }

  if (v4 == 1935897198)
  {
    APSEventRecorderRecordEventWithFlags();
  }

  *(DerivedStorage + 25) = 1;
  v12 = *(CMBaseObjectGetDerivedStorage() + 28);
  if (v12)
  {
    CFRetain(v2);
    OUTLINED_FUNCTION_4_8();
    v16 = 0x40000000;
    v17 = __stream_postCachedConnectionEvent_block_invoke;
    v18 = &__block_descriptor_tmp_38;
    v20 = v12;
    v19 = v2;
    dispatch_async(v13, block);
  }

LABEL_17:
  v14 = 0;
LABEL_21:
  *(DerivedStorage + 48) = v14;
  *(*(*(a1 + 32) + 8) + 24) = v14;
}

void __stream_Resume_block_invoke_0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStream <= 30 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APTransportStream)))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportStream, "OSStatus stream_resumeInternal(FigTransportStreamRef)", v3, "[%{ptr}] Resuming.\n");
  }

  if (*(DerivedStorage + 72))
  {
    APSLogErrorAt();
    v16 = -16617;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_11_7();
  if (v6)
  {
    v5 = 48;
  }

  v7 = *(DerivedStorage + v5);
  if (!*(v7 + 9))
  {
    v9 = *(v7 + 24);
    v8 = *(v7 + 32);
    v10 = *(DerivedStorage + 184);
    v11 = *(DerivedStorage + 96);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v12)
    {
      v16 = v12(v9, v2, v8, v10, v11);
      if (!v16)
      {
        v13 = *(v7 + 24);
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v14)
        {
          v16 = v14(v13);
          if (!v16)
          {
            if (APTransportStreamIDGetStreamCategory(*DerivedStorage) == 2)
            {
              v15 = APSGetFBOPropertyInt64();
              *DerivedStorage = APTransportStreamIDInsertPort(*DerivedStorage, v15);
            }

            *(v7 + 9) = 1;
            stream_postCachedConnectionEvent(v2, v7);
            goto LABEL_20;
          }
        }

        else
        {
          v16 = -12782;
        }
      }
    }

    else
    {
      v16 = -12782;
    }

    APSLogErrorAt();
  }

LABEL_20:
  *(*(*(a1 + 32) + 8) + 24) = v16;
}

void __unbufnw_Resume_block_invoke_2(uint64_t a1, NSObject *a2)
{
  v8 = *(*(a1 + 40) + 168);
  application_protocol = 0;
  ASPrintF(&application_protocol, "AirPlay/%@", v8);
  if (application_protocol)
  {
    nw_quic_add_tls_application_protocol(a2, application_protocol);
    nw_quic_set_idle_timeout(a2, 0);
    v4 = nw_quic_copy_sec_protocol_options(a2);
    v6 = v4;
    if (v4)
    {
      if (*(*(a1 + 40) + 36))
      {
        SharedSelfSignedIdentity = APTransportConnectionGetSharedSelfSignedIdentity(v4, v5);
        if (!SharedSelfSignedIdentity)
        {
          __unbufnw_Resume_block_invoke_2_cold_1();
          goto LABEL_8;
        }

        sec_protocol_options_set_local_identity(v6, SharedSelfSignedIdentity);
      }

      else
      {
        sec_protocol_options_set_peer_authentication_required(v4, 0);
      }

      sec_protocol_options_append_tls_ciphersuite(v6, tls_ciphersuite_CHACHA20_POLY1305_SHA256);
    }

    else
    {
      __unbufnw_Resume_block_invoke_2_cold_2();
    }
  }

  else
  {
    __unbufnw_Resume_block_invoke_2_cold_3();
    v6 = 0;
  }

LABEL_8:
  free(application_protocol);
  sec_release(v6);
}

void __unbufnw_Resume_block_invoke_3(uint64_t a1, unsigned int a2, nw_error_t error)
{
  v4 = *(*(a1 + 32) + 8);
  if (error)
  {
    error_code = nw_error_get_error_code(error);
  }

  else
  {
    error_code = 0;
  }

  if (error_code)
  {
    v6 = 90;
  }

  else
  {
    v6 = 50;
  }

  if (v6 >= gLogCategory_APTransportConnectionUnbufferedNW && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
  {
    if (a2 > 4)
    {
      v7 = "unknown";
    }

    else
    {
      v7 = off_278BC8720[a2];
    }

    LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "void unbufnwGuts_listenerStateChangedHandler(APTransportConnectionUnbufferedNWListenerContext *, nw_listener_state_t, nw_error_t)", v6 | 0x2000000u, "[%{ptr}] listener state '%s'%?{end} err=%#m", *(*(v4 + 24) + 16), v7, error_code == 0, error_code);
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      if (!error_code)
      {
        LODWORD(error_code) = -6700;
      }
    }

    else
    {
      if (a2 != 4)
      {
        return;
      }

      LODWORD(error_code) = -6723;
    }
  }

  if (!*(v4 + 32))
  {
    *(v4 + 32) = 1;
    *(v4 + 36) = error_code;
    dispatch_semaphore_signal(*(v4 + 40));
  }

  if (a2 == 4)
  {
    CFRelease(*(v4 + 24));
    v8 = *(v4 + 40);

    dispatch_release(v8);
  }
}

uint64_t __unbufnw_Resume_block_invoke_4(uint64_t a1, NSObject *a2)
{
  FigSimpleMutexLock();
  unbufnwGuts_handleNewConnectionGroupInternal(*(a1 + 32), a2);

  return FigSimpleMutexUnlock();
}

uint64_t __unbufnw_Resume_block_invoke_5(uint64_t a1, NSObject *a2)
{
  FigSimpleMutexLock();
  unbufnwGuts_handleNewConnectionInternal(*(a1 + 32), a2, 1);

  return FigSimpleMutexUnlock();
}

void __unbufnw_Resume_block_invoke_2_cold_1()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_6_10();
  *(v0 + 24) = v1;
}

void __unbufnw_Resume_block_invoke_2_cold_2()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_6_10();
  *(v0 + 24) = v1;
}

void __unbufnw_Resume_block_invoke_2_cold_3()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_6_10();
  *(v0 + 24) = v1;
}

void __lowPowerKeepAliveController_Resume_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 32))
  {
    v4 = DerivedStorage;
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(DerivedStorage + 16));
    *(v4 + 24) = v5;
    if (v5)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = __lowPowerKeepAliveController_resumeInternal_block_invoke;
      handler[3] = &__block_descriptor_tmp_14_1;
      handler[4] = v2;
      dispatch_source_set_event_handler(v5, handler);
      dispatch_source_set_timer(*(v4 + 24), 0, 0x2540BE400uLL, 0x3B9ACA00uLL);
      dispatch_resume(*(v4 + 24));
      if (gLogCategory_APTKeepAliveControllerLowPower <= 50 && (gLogCategory_APTKeepAliveControllerLowPower != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTKeepAliveControllerLowPower, "OSStatus lowPowerKeepAliveController_resumeInternal(APTransportKeepAliveControllerRef)", 33554482, "[%{ptr}] Started keep alive with interval %d s", v2, 10);
      }

      *(v4 + 32) = 1;
    }

    else
    {
      APSLogErrorAt();
    }
  }

  CFRelease(*(a1 + 32));
}

@end