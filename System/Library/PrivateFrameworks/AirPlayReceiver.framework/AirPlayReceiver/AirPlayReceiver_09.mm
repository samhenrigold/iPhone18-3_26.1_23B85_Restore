uint64_t audioSessionBufferedHose_setRateAndAnchorCompletionHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, int a7, uint64_t a8)
{
  *a8 = a7;
  v8 = *a5;
  *(a8 + 16) = *(a5 + 12);
  *(a8 + 4) = v8;
  v9 = *a6;
  *(a8 + 48) = *(a6 + 2);
  *(a8 + 32) = v9;
  dispatch_semaphore_signal(*(a8 + 56));
  return 0;
}

uint64_t audioSessionBufferedHose_cancelUnderrun(uint64_t result)
{
  if (*(result + 304))
  {
    v1 = result;
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void audioSessionBufferedHose_cancelUnderrun(APReceiverAudioSessionBufferedHoseRef)", 33554482, "%@ Glitch: Underrun Cancelled\n", *(v1 + 24));
      }
    }

    *(v1 + 304) = 0;
  }

  return result;
}

uint64_t audioSessionBufferedHose_setRateCompletionHandler(uint64_t a1, __int128 *a2, __int128 *a3, int a4, uint64_t a5)
{
  *a5 = a4;
  v5 = *a2;
  *(a5 + 16) = *(a2 + 12);
  *(a5 + 4) = v5;
  v6 = *a3;
  *(a5 + 48) = *(a3 + 2);
  *(a5 + 32) = v6;
  dispatch_semaphore_signal(*(a5 + 56));
  return 0;
}

uint64_t audioSessionBufferedHose_getAnchorCompletionHandler(uint64_t a1, _OWORD *a2, __int128 *a3, int a4, const void *a5)
{
  Value = APSWrapperGetValue();
  *Value = a4;
  v10 = *(a2 + 12);
  *(Value + 4) = *a2;
  *(Value + 16) = v10;
  v11 = *a3;
  *(Value + 48) = *(a3 + 2);
  *(Value + 32) = v11;
  dispatch_semaphore_signal(*(Value + 56));
  if (a5)
  {
    CFRelease(a5);
  }

  return 0;
}

void audioSessionBufferedHose_finalizeContextWrapper(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_release(v2);
  }

  free(a1);
}

uint64_t audioSessionBufferedHose_flushCompletionHandler(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a5 = a4;
  dispatch_semaphore_signal(*(a5 + 8));
  return 0;
}

uint64_t audioSessionBufferedHose_flushWithinSampleRangeCompletionHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  *a7 = a6;
  dispatch_semaphore_signal(*(a7 + 8));
  return 0;
}

void APReceiverAudioSessionBufferedHoseFinalize(void *a1, uint64_t a2)
{
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void APReceiverAudioSessionBufferedHoseFinalize(void *)", 33554482, "%@ APReceiverAudioSessionBufferedHose finalizing\n", a1[3]);
  }

  if (*(a1 + 201))
  {
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void APReceiverAudioSessionBufferedHoseFinalize(void *)", 33554522, "### %@ Packet processor is started in finalize, forcing crash\n", a1[3]);
    }

    CFRelease(0);
  }

  if (a1[12])
  {
    SendSelfConnectedLoopbackMessage();
    FigThreadJoin();
    a1[12] = 0;
  }

  v3 = *(a1 + 16);
  if ((v3 & 0x80000000) == 0)
  {
    if (close(v3) && *__error())
    {
      __error();
    }

    *(a1 + 16) = -1;
  }

  if (a1[9])
  {
    NetSocket_Delete();
    a1[9] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }

  v6 = a1[26];
  if (v6)
  {
    CFRelease(v6);
    a1[26] = 0;
  }

  v7 = a1[1];
  if (v7)
  {
    CFRelease(v7);
    a1[1] = 0;
  }

  v8 = a1[4];
  if (v8)
  {
    CFRelease(v8);
    a1[4] = 0;
  }

  *(a1 + 27) = 0;
  if (*(a1 + 4))
  {
    *(a1 + 4) = 0;
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void APReceiverAudioSessionBufferedHoseFinalize(void *)", 33554482, "%@ Audio session torn down\n", a1[3]);
    }
  }

  v9 = a1[33];
  if (v9)
  {
    CFRelease(v9);
    a1[33] = 0;
  }

  v10 = a1[23];
  if (v10)
  {
    dispatch_source_cancel(a1[23]);
    dispatch_release(v10);
    a1[23] = 0;
  }

  v11 = a1[22];
  if (v11)
  {
    dispatch_release(v11);
    a1[22] = 0;
  }

  v12 = a1[19];
  if (v12)
  {
    CFRelease(v12);
  }

  if (a1[16])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v13 = a1[16];
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v15 = *(ProtocolVTable + 16);
      if (v15)
      {
        v16 = *(v15 + 56);
        if (v16)
        {
          v16(v13, 0, 0);
        }
      }
    }

    v17 = a1[16];
    if (v17)
    {
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v18)
      {
        v18(v17);
      }

      v19 = a1[16];
      if (v19)
      {
        CFRelease(v19);
        a1[16] = 0;
      }
    }
  }

  v20 = a1[36];
  if (v20)
  {
    dispatch_source_cancel(a1[36]);
    dispatch_release(v20);
    a1[36] = 0;
  }

  v21 = a1[35];
  if (v21)
  {
    dispatch_release(v21);
    a1[35] = 0;
  }

  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  v22 = a1[18];
  if (v22)
  {
    CFRelease(v22);
    a1[18] = 0;
  }

  v23 = a1[21];
  if (v23)
  {
    CFRelease(v23);
    a1[21] = 0;
  }

  v24 = a1[24];
  if (v24)
  {
    CFRelease(v24);
  }

  CFDictionaryRemoveAllValues(a1[31]);
  v25 = a1[31];
  if (v25)
  {
    CFRelease(v25);
    a1[31] = 0;
  }

  v26 = a1[30];
  if (v26)
  {
    CFRelease(v26);
    a1[30] = 0;
  }

  FigSimpleMutexDestroy();
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void APReceiverAudioSessionBufferedHoseFinalize(void *)", 33554482, "%@ APReceiverAudioSessionBufferedHose finalized\n", a1[3]);
  }

  v27 = a1[3];
  if (v27)
  {
    CFRelease(v27);
  }

  free(a1);
}

uint64_t APReceiverAudioSessionBufferedHoseInvalidate(uint64_t a1)
{
  result = *(a1 + 128);
  if (result)
  {
    return MEMORY[0x28213C140]();
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedHoseConvertProgressRTPTimeToSecond(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, double *a6)
{
  if (a1)
  {
    v12 = (a3 - a2);
    APSAudioFormatDescriptionGetSampleRate();
    v14 = v12 / v13;
    APSAudioFormatDescriptionGetSampleRate();
    v16 = (a4 - a2) / v15;
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 40 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseConvertProgressRTPTimeToSecond(void *, uint32_t, uint32_t, uint32_t, double *, double *)", 33554472, "%@ Convert progress: %u / %u / %u --> %#{dur} of %#{dur}\n", *(a1 + 24), a2, a3, a4, v14, v16);
    }

    if (a5)
    {
      *a5 = v14;
    }

    result = 0;
    if (a6)
    {
      *a6 = v16;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895144;
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedHoseStartPacketProcesser(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  if (*(a1 + 201))
  {
    v2 = 4294895143;
    goto LABEL_17;
  }

  *(a1 + 216) = mach_absolute_time();
  if (!*(a1 + 56))
  {
    FigSimpleMutexLock();
    if (*(a1 + 96))
    {
      FigSimpleMutexUnlock();
      goto LABEL_7;
    }

    v2 = FigThreadCreate();
    FigSimpleMutexUnlock();
    if (!v2)
    {
      goto LABEL_7;
    }

LABEL_17:
    APSLogErrorAt();
    return v2;
  }

LABEL_7:
  v3 = *(a1 + 48);
  if (v3)
  {
    v7 = *(a1 + 48);
    v8 = 0;
    dispatch_sync_f(*(v3 + 112), &v7, controlServer_startInternal);
    v2 = v8;
    if (v8)
    {
      goto LABEL_17;
    }
  }

  if (*(a1 + 56))
  {
    CMBaseObject = APTransportConnectionGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(CMBaseObject, *MEMORY[0x277CE4F08], *MEMORY[0x277CBED28]);
    }
  }

  else
  {
    audioSessionBufferedHose_resumeNetworkReads(a1);
  }

  v2 = 0;
  *(a1 + 201) = 1;
  return v2;
}

uint64_t audioSessionBufferedHose_networkThread(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  memset(&v41, 0, sizeof(v41));
  pthread_setname_np("AirPlayAudioReceiver");
  if (!*(a1 + 56))
  {
    if (SocketAccept() || SocketSetP2P())
    {
      goto LABEL_107;
    }

    if (!*(a1 + 117))
    {
      SocketSetQoS();
    }

    v2 = -1;
    v4 = *(a1 + 80);
    if ((v4 & 0x80000000) == 0)
    {
      if (close(v4) && *__error())
      {
        __error();
      }

      *(a1 + 80) = -1;
    }

    if (NetSocket_CreateWithNative())
    {
LABEL_107:
      APSLogErrorAt();
      return 0;
    }
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void *audioSessionBufferedHose_networkThread(void *)", 33554482, "%@ Buffered audio receiver started\n", *(a1 + 24));
  }

  if (v2 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v2;
  }

  v6 = 1 << v2;
  v39 = v2 >> 5;
  v40 = 1 << v3;
  v7 = v3 >> 5;
  structureAllocator = *MEMORY[0x277CBECE8];
  v37 = v5;
  while (1)
  {
    while (1)
    {
      memset(&v41, 0, sizeof(v41));
      if (*(a1 + 124))
      {
        v8 = __darwin_check_fd_set_overflow(v2, &v41, 0);
        v9 = v5;
        if (v8)
        {
          v41.fds_bits[v39] |= v6;
          v9 = v5;
        }
      }

      else
      {
        v9 = -1;
      }

      if (v3 <= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v3;
      }

      if (__darwin_check_fd_set_overflow(v3, &v41, 0))
      {
        v41.fds_bits[v7] |= v40;
      }

      v11 = select(v10 + 1, &v41, 0, 0, 0);
      if (v11 > 0)
      {
        break;
      }

      if (v11 && *__error())
      {
        v30 = *__error();
        if (!v30)
        {
          break;
        }

        if (v30 == 4)
        {
          continue;
        }
      }

      usleep(0x186A0u);
    }

    if (__darwin_check_fd_set_overflow(v2, &v41, 0) && (v41.fds_bits[v39] & v6) != 0)
    {
      break;
    }

LABEL_79:
    if (__darwin_check_fd_set_overflow(v3, &v41, 0) && (v41.fds_bits[v7] & v40) != 0)
    {
      LOBYTE(blockBufferOut) = 0;
      v45[0] = 0;
      v35 = 0;
      v33 = SocketRecvFrom();
      if (v33 != 35)
      {
        if (v33)
        {
          APSLogErrorAt();
        }

        else if (blockBufferOut == 113)
        {
          goto LABEL_102;
        }
      }
    }

    else
    {
      APSNetworkClockLogCurrentNetworkTime();
    }
  }

  v44 = 0;
  v43 = 0;
  v45[0] = 0;
  DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
  blockBufferOut = 0;
  blockAllocator = DefaultAirPlayMallocZoneCFAllocator;
  if (*(a1 + 56))
  {
    APSLogErrorAt();
    goto LABEL_70;
  }

  v13 = DefaultAirPlayMallocZoneCFAllocator;
  v14 = *(a1 + 40);
  if (v14 == 1381257248)
  {
    v15 = (*(*(a1 + 72) + 24))();
    if (!v15)
    {
      v31 = bswap32(v43) >> 16;
      if (v31 <= 1)
      {
        goto LABEL_98;
      }

      v18 = v31 - 2;
      v17 = 1;
      if (!v18)
      {
        goto LABEL_62;
      }

LABEL_38:
      v19 = v18;
      v20 = MEMORY[0x23EF197A0](v13, v18, 3277520903, 0);
      if (!v20)
      {
        APSLogErrorAt();
        v32 = -6728;
        goto LABEL_63;
      }

      v21 = (*(*(a1 + 72) + 24))();
      if (v21)
      {
        v32 = v21;
      }

      else
      {
        if (v45[0] != v19)
        {
          APSLogErrorAt();
          v32 = -72153;
          goto LABEL_63;
        }

        v22 = CMBlockBufferCreateWithMemoryBlock(structureAllocator, v20, v19, blockAllocator, 0, v17, v19 - v17, 0, &blockBufferOut);
        if (!v22)
        {
          FigSimpleMutexLock();
          Mutable = *(a1 + 144);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(structureAllocator, 128, MEMORY[0x277CBF128]);
            *(a1 + 144) = Mutable;
          }

          CFArrayAppendValue(Mutable, blockBufferOut);
          Count = CFArrayGetCount(*(a1 + 144));
          FigSimpleMutexUnlock();
          v25 = *(a1 + 128);
          APSEndpointStreamAudioHoseProtocolGetProtocolID();
          ProtocolVTable = CMBaseObjectGetProtocolVTable();
          if (ProtocolVTable)
          {
            v27 = *(ProtocolVTable + 16);
            v5 = v37;
            if (v27)
            {
              v28 = *(v27 + 40);
              if (v28)
              {
                v29 = v28(v25);
                if (!v29)
                {
                  if (Count >= 128)
                  {
                    if (*(a1 + 56))
                    {
                      goto LABEL_100;
                    }

                    if (*(a1 + 124))
                    {
                      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 20 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus audioSessionBufferedHose_suspendNetworkReads(APReceiverAudioSessionBufferedHoseRef)", 33554452, "%@ Suspending network reads.\n", *(a1 + 24), v35);
                      }

                      *(a1 + 124) = 0;
                      if (SendSelfConnectedLoopbackMessage())
                      {
LABEL_100:
                        APSLogErrorAt();
                      }
                    }
                  }

                  v32 = 0;
                  goto LABEL_89;
                }

                v32 = v29;
              }

              else
              {
                v32 = -12782;
              }
            }

            else
            {
              v32 = -12788;
            }
          }

          else
          {
            v32 = -12788;
            v5 = v37;
          }

          APSLogErrorAt();
          v20 = 0;
          goto LABEL_73;
        }

        v32 = v22;
      }

      APSLogErrorAt();
      goto LABEL_63;
    }

LABEL_91:
    v32 = v15;
LABEL_89:
    v20 = 0;
    goto LABEL_73;
  }

  if (v14 != 1095778640)
  {
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90)
    {
      if (gLogCategory_APReceiverAudioSessionBufferedHose == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_70;
        }

        v14 = *(a1 + 40);
      }

      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus audioSessionBufferedHose_receiveTCPAudio(APReceiverAudioSessionBufferedHoseRef)", 33554522, "### %@ attempting to receive TCP audio for unsupported connection type '%C'!\n", *(a1 + 24), v14);
    }

LABEL_70:
    v20 = 0;
    v32 = -72153;
    goto LABEL_73;
  }

  v15 = (*(*(a1 + 72) + 24))();
  if (v15)
  {
    goto LABEL_91;
  }

  v16 = bswap32(v44);
  if (v16 <= 3)
  {
LABEL_98:
    APSLogErrorAt();
    v20 = 0;
    v32 = -6733;
    goto LABEL_73;
  }

  v17 = 0;
  v18 = v16 - 4;
  if (v18)
  {
    goto LABEL_38;
  }

LABEL_62:
  v32 = 0;
  v20 = 0;
LABEL_63:
  v5 = v37;
LABEL_73:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v20)
  {
    CFAllocatorDeallocate(blockAllocator, v20);
  }

  v6 = 1 << v2;
  if (v32 != -6753 && v32 != -6723)
  {
    goto LABEL_79;
  }

LABEL_102:
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 30 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "void *audioSessionBufferedHose_networkThread(void *)", 33554462, "%@ General audio thread exit\n", *(a1 + 24), v35);
  }

  return 0;
}

uint64_t APReceiverAudioSessionBufferedHoseStopPacketProcesser(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 201))
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v9 = *(a1 + 48);
      v10 = 0;
      dispatch_sync_f(*(v3 + 112), &v9, controlServer_stopInternal);
      v4 = v10;
    }

    else
    {
      v4 = 0;
    }

    if (*(a1 + 56))
    {
      CMBaseObject = APTransportConnectionGetCMBaseObject();
      if (CMBaseObject)
      {
        v6 = CMBaseObject;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v7)
        {
          v4 = v7(v6);
        }

        else
        {
          v4 = 4294954514;
        }
      }

      else
      {
        v4 = 4294954516;
      }
    }

    if ((*(a1 + 64) & 0x80000000) == 0)
    {
      v4 = SendSelfConnectedLoopbackMessage();
    }

    if (*(a1 + 72))
    {
      v4 = NetSocket_Cancel();
    }

    if (*(a1 + 96))
    {
      FigSimpleMutexLock();
      v4 = FigThreadJoin();
      *(a1 + 96) = 0;
      FigSimpleMutexUnlock();
    }

    *(a1 + 224) = mach_absolute_time();
    *(a1 + 201) = 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294895143;
  }

  return v4;
}

uint64_t APReceiverAudioSessionBufferedHoseCopyMetrics(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
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

uint64_t APReceiverAudioSessionBufferedHoseLogEnded(uint64_t result, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  cf = 0;
  if (result)
  {
    if (a2)
    {
      v3 = result;
      APSNetworkClockReportRTCMetrics();
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      FigCFDictionarySetInt32();
      UpTicksToSeconds();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (*(v3 + 152))
      {
        v5 = *MEMORY[0x277CBECE8];
        CMBaseObject = APSAudioProtocolDriverReceiverGetCMBaseObject();
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v7 && !v7(CMBaseObject, *MEMORY[0x277CEA000], v5, &cf))
        {
          FigCFDictionarySetValue();
        }

        v8 = APSAudioProtocolDriverReceiverGetCMBaseObject();
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v9 && !v9(v8, *MEMORY[0x277CE9FF8], v5, &v10))
        {
          FigCFDictionarySetValue();
        }
      }

      CFDictionarySetValue(Mutable, @"sessionType", @"AudioBuffered");
      APSRTCReportingAgentSendMediaEvent();
      APSRTCReportingAgentSendEvent();
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

      return 0;
    }

    else
    {
      APSLogErrorAt();
      return 4294895145;
    }
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedHoseCopyProperty(uint64_t a1, CFTypeRef cf1, int *a3)
{
  v18 = 0;
  if (!a1)
  {
    APSLogErrorAt();
    v8 = -72152;
    goto LABEL_24;
  }

  if (!cf1)
  {
    APSLogErrorAt();
    v8 = -72151;
    goto LABEL_24;
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 30 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "CFTypeRef APReceiverAudioSessionBufferedHoseCopyProperty(void *, CFStringRef, OSStatus *)", 33554462, "%@ copy propertyKey: '%@'\n", *(a1 + 24), cf1);
  }

  if (!CFEqual(cf1, @"VolumeLinear"))
  {
    if (CFEqual(cf1, @"AudioFormat"))
    {
      v9 = *(a1 + 192);
LABEL_15:
      Int64 = CFRetain(v9);
LABEL_23:
      v8 = 0;
      v18 = Int64;
      goto LABEL_24;
    }

    if (CFEqual(cf1, @"MediaDataControlPort"))
    {
      Int64 = CFNumberCreateInt64();
      goto LABEL_23;
    }

    if (CFEqual(cf1, @"MaximumLatency") || CFEqual(cf1, @"PlatformAudioLatency"))
    {
      valuePtr = 0;
    }

    else
    {
      if (CFEqual(cf1, @"AudioPort"))
      {
        v11 = *MEMORY[0x277CBECE8];
        p_valuePtr = (a1 + 108);
        v13 = kCFNumberIntType;
        goto LABEL_22;
      }

      if (!CFEqual(cf1, @"SampleRate"))
      {
        if (CFEqual(cf1, @"audioBufferSize"))
        {
          v8 = APSAudioProtocolDriverHoseCopyProperty(*(a1 + 128), *MEMORY[0x277CE9F58], *MEMORY[0x277CBECE8], &v18);
          goto LABEL_24;
        }

        if (CFEqual(cf1, @"IsPlayingBufferedAudio"))
        {
          v16 = MEMORY[0x277CBED28];
          if (!*(a1 + 204))
          {
            v16 = MEMORY[0x277CBED10];
          }
        }

        else
        {
          if (!CFEqual(cf1, @"IsUsingScreen"))
          {
            if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "CFTypeRef APReceiverAudioSessionBufferedHoseCopyProperty(void *, CFStringRef, OSStatus *)", 33554482, "%@ Unknown copy property: %@\n", *(a1 + 24), cf1);
            }

            v8 = -72154;
            goto LABEL_24;
          }

          v16 = MEMORY[0x277CBED10];
        }

        v9 = *v16;
        goto LABEL_15;
      }

      APSAudioFormatDescriptionGetSampleRate();
      valuePtr = v15;
    }

    v11 = *MEMORY[0x277CBECE8];
    p_valuePtr = &valuePtr;
    v13 = kCFNumberSInt32Type;
LABEL_22:
    Int64 = CFNumberCreate(v11, v13, p_valuePtr);
    goto LABEL_23;
  }

  v6 = *(a1 + 128);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(v6, *MEMORY[0x277CEA1B8], *MEMORY[0x277CBECE8], &v18);
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v8 = -12782;
  }

  APSLogErrorAt();
LABEL_24:
  if (a3)
  {
    *a3 = v8;
  }

  return v18;
}

uint64_t APSAudioProtocolDriverHoseCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t APReceiverAudioSessionBufferedHoseSetProperty(void *a1, CFTypeRef cf1, uint64_t a3)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  if (!cf1 || !a3)
  {
    APSLogErrorAt();
    return 4294895145;
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 40 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetProperty(void *, CFStringRef, CFTypeRef)", 33554472, "%@ set propertyKey: '%@'\n", a1[3], cf1);
  }

  if (CFEqual(cf1, @"VolumeLinear"))
  {
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetProperty(void *, CFStringRef, CFTypeRef)", 33554482, "<AirPlayVolume> session buffered hose, %@ set volume linear = %@\n", a1[3], a3);
    }

    v7 = a1[16];
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v8)
    {
      v6 = 4294954514;
LABEL_22:
      APSLogErrorAt();
      return v6;
    }

    v6 = v8(v7, @"VolumeLinear", a3);
    if (v6)
    {
      goto LABEL_22;
    }
  }

  else if (CFEqual(cf1, @"RTCMetadata"))
  {
    APSRTCReportingAgentSendMediaEvent();
    return 0;
  }

  else
  {
    v6 = 4294895142;
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedHose, "OSStatus APReceiverAudioSessionBufferedHoseSetProperty(void *, CFStringRef, CFTypeRef)", 33554482, "%@ Unknown set property: %@\n", a1[3], cf1);
    }
  }

  return v6;
}

void *_UpdateAVAudioSessionAudioMode_5424(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = [*(a1 + 32) setAudioMode:a2 isLongForm:*(a1 + 69) == 0 error:&v5];
  if (result)
  {
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionPlatform != -1)
      {
        return LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateAVAudioSessionAudioMode(APReceiverAudioSessionPlatformRef, CFStringRef)", 33554482, "%@ AVAudioSession mode updated to %@\n", *(a1 + 40), a2);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateAVAudioSessionAudioMode(APReceiverAudioSessionPlatformRef, CFStringRef)", 33554482, "%@ AVAudioSession mode updated to %@\n", *(a1 + 40), a2);
      }
    }
  }

  else if (gLogCategory_APReceiverAudioSessionPlatform <= 60)
  {
    if (gLogCategory_APReceiverAudioSessionPlatform != -1)
    {
      return LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateAVAudioSessionAudioMode(APReceiverAudioSessionPlatformRef, CFStringRef)", 33554492, "### %@ Set AVAudioSession mode to %@ failed: %@\n", *(a1 + 40), a2, v5);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateAVAudioSessionAudioMode(APReceiverAudioSessionPlatformRef, CFStringRef)", 33554492, "### %@ Set AVAudioSession mode to %@ failed: %@\n", *(a1 + 40), a2, v5);
    }
  }

  return result;
}

uint64_t _MainAudioEnsureSetup(void *updated, uint64_t a2)
{
  memset(&inDescription, 0, sizeof(inDescription));
  inInputCallback.inputProc = 0;
  inInputCallback.inputProcRefCon = 0;
  v106 = 0;
  *ioDataSize = 0;
  memset(outData, 0, sizeof(outData));
  v104 = 0;
  v3 = &unk_27E37E000;
  if (!updated[3])
  {
    APSLogErrorAt();
    v8 = 4294960578;
    goto LABEL_418;
  }

  v4 = (updated + 24);
  if (updated[24] || updated[16] || *(updated[2] + 753))
  {
    return 0;
  }

  if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    v6 = updated[5];
    if (APSAudioFormatDescriptionGetAudioFormatIndex() == 6)
    {
      v7 = "PCM/24000/16/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 10)
    {
      v7 = "PCM/44100/16/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 11)
    {
      v7 = "PCM/44100/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 15)
    {
      v7 = "PCM/48000/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 18)
    {
      v7 = "ALAC/44100/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 22)
    {
      v7 = "AAC-LC/44100/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 24)
    {
      v7 = "AAC-ELD/44100/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 2)
    {
      v7 = "PCM/8000/16/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 3)
    {
      v7 = "PCM/8000/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 4)
    {
      v7 = "PCM/16000/16/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 5)
    {
      v7 = "PCM/16000/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 7)
    {
      v7 = "PCM/24000/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 8)
    {
      v7 = "PCM/32000/16/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 9)
    {
      v7 = "PCM/32000/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 12)
    {
      v7 = "PCM/44100/24/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 13)
    {
      v7 = "PCM/44100/24/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 14)
    {
      v7 = "PCM/48000/16/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 16)
    {
      v7 = "PCM/48000/24/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 17)
    {
      v7 = "PCM/48000/24/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 45)
    {
      v7 = "PCM/48000/32f/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 46)
    {
      v7 = "PCM/48000/32f/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 44)
    {
      v7 = "PCM/48000/16/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 38)
    {
      v7 = "PCM/48000/16/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 78)
    {
      v7 = "PCM/48000/16/7.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 80)
    {
      v7 = "PCM/48000/16/5.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 82)
    {
      v7 = "PCM/48000/16/7.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 84)
    {
      v7 = "PCM/48000/16/7.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 93)
    {
      v7 = "PCM/48000/16/9.1.6";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 47)
    {
      v7 = "PCM/48000/32f/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 48)
    {
      v7 = "PCM/48000/32f/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 79)
    {
      v7 = "PCM/48000/32f/7.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 81)
    {
      v7 = "PCM/48000/32f/5.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 83)
    {
      v7 = "PCM/48000/32f/7.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 69)
    {
      v7 = "PCM/48000/32f/7.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 94)
    {
      v7 = "PCM/48000/32f/9.1.6";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 85)
    {
      v7 = "ALAC/44100/20/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 19)
    {
      v7 = "ALAC/44100/24/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 20)
    {
      v7 = "ALAC/48000/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 86)
    {
      v7 = "ALAC/48000/20/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 21)
    {
      v7 = "ALAC/48000/24/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 40)
    {
      v7 = "AAC_LC/48000/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 39)
    {
      v7 = "AAC_LC/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 90)
    {
      v7 = "AAC_LC/48000/7.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 23)
    {
      v7 = "AAC-LC/48000/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 42)
    {
      v7 = "AAC_ELD/48000/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 41)
    {
      v7 = "AAC_ELD/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 25)
    {
      v7 = "AAC-ELD/48000/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 26)
    {
      v7 = "AAC-ELD/16000/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 27)
    {
      v7 = "AAC-ELD/24000/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 28)
    {
      v7 = "OPUS/16000/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 29)
    {
      v7 = "OPUS/24000/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 30)
    {
      v7 = "OPUS/48000/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 31)
    {
      v7 = "AAC-ELD/44100/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 32)
    {
      v7 = "AAC-ELD/48000/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 43)
    {
      v7 = "AAC-ELD/32000/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 49)
    {
      v7 = "DDPLUS/48000/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 50)
    {
      v7 = "DDPLUS/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 51)
    {
      v7 = "DDPLUS/48000/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 52)
    {
      v7 = "DDPLUS/48000/7.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 53)
    {
      v7 = "DDPLUS/48000/9.1.6";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 54)
    {
      v7 = "QAAC/48000/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 55)
    {
      v7 = "QAAC/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 56)
    {
      v7 = "QAAC/48000/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 57)
    {
      v7 = "QAACHE/48000/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 58)
    {
      v7 = "QAACHE/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 60)
    {
      v7 = "QAACHE/48000/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 89)
    {
      v7 = "PAAC/44100/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 61)
    {
      v7 = "QLAC/48000/24/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 62)
    {
      v7 = "QC3/48000/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 63)
    {
      v7 = "QC3/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 33)
    {
      v7 = "QC3/48000/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 34)
    {
      v7 = "QC3/48000/7.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 35)
    {
      v7 = "QC3/48000/9.1.6";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 87)
    {
      v7 = "QAC3/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 88)
    {
      v7 = "QEC3/48000/7.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 91)
    {
      v7 = "EAC3/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 64)
    {
      v7 = "APAC/48000/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 65)
    {
      v7 = "APAC/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 66)
    {
      v7 = "APAC/48000/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 67)
    {
      v7 = "APAC/48000/7.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 76)
    {
      v7 = "APAC/48000/5.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 77)
    {
      v7 = "APAC/48000/7.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 68)
    {
      v7 = "APAC/48000/7.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 92)
    {
      v7 = "APAC/48000/9.1.6";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 70)
    {
      v7 = "QAAC/44100/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 71)
    {
      v7 = "QAACHE/44100/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 72)
    {
      v7 = "QAACHEV2/44100/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 73)
    {
      v7 = "QLAC/44100/24/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 74)
    {
      v7 = "MP3/44100/2";
    }

    else
    {
      AudioFormatIndex = APSAudioFormatDescriptionGetAudioFormatIndex();
      v7 = "";
      if (AudioFormatIndex == 75)
      {
        v7 = "MP3/48000/2";
      }
    }

    v10 = "yes";
    if (*(updated + 64))
    {
      v11 = "yes";
    }

    else
    {
      v11 = "no";
    }

    if (*(updated + 65))
    {
      v12 = "yes";
    }

    else
    {
      v12 = "no";
    }

    if (*(updated + 66))
    {
      v13 = "yes";
    }

    else
    {
      v13 = "no";
    }

    if (!*(updated + 68))
    {
      v10 = "no";
    }

    LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _MainAudioEnsureSetup(APReceiverAudioSessionPlatformRef, CFDictionaryRef)", 33554482, "%@ Main audio setting up %s, loopback %s, varispeed %s, voice %s, volume %s\n", v6, v7, v11, v12, v13, v10);
  }

  if (*(updated + 12) != 103)
  {
    if (*(updated + 27) < 3u)
    {
      if (gLogCategory_APReceiverAudioSessionPlatform > 50)
      {
        v14 = MEMORY[0x277CBED10];
      }

      else
      {
        if (gLogCategory_APReceiverAudioSessionPlatform == -1)
        {
          v16 = _LogCategory_Initialize();
          v14 = MEMORY[0x277CBED10];
          if (!v16)
          {
            goto LABEL_217;
          }
        }

        else
        {
          v14 = MEMORY[0x277CBED10];
        }

        LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _MainAudioEnsureSetup(APReceiverAudioSessionPlatformRef, CFDictionaryRef)", 33554482, "%@ Configuring AudioSession in Stereo mode\n", updated[5]);
      }
    }

    else if (gLogCategory_APReceiverAudioSessionPlatform > 50)
    {
      v14 = MEMORY[0x277CBED28];
    }

    else
    {
      if (gLogCategory_APReceiverAudioSessionPlatform == -1)
      {
        v15 = _LogCategory_Initialize();
        v14 = MEMORY[0x277CBED28];
        if (!v15)
        {
          goto LABEL_217;
        }
      }

      else
      {
        v14 = MEMORY[0x277CBED28];
      }

      LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _MainAudioEnsureSetup(APReceiverAudioSessionPlatformRef, CFDictionaryRef)", 33554482, "%@ Configuring AudioSession in Multi-Channel mode\n", updated[5]);
    }

LABEL_217:
    _UpdateAVAudioSessionPrefersMultiChannelAudio(updated, *v14);
  }

  APSEnsureCanInitiatePlayback();
  *(updated + 18) = *(updated + 12);
  if (a2)
  {
    if (CFDictionaryGetInt64())
    {
      v8 = 0;
      *(updated + 70) = 1;
      return v8;
    }

    *(updated + 71) = CFDictionaryGetInt64() != 0;
  }

  if (*(updated[2] + 592) && *(updated + 69) && !APSGetFBOPropertyInt64())
  {
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _MainAudioEnsureSetup(APReceiverAudioSessionPlatformRef, CFDictionaryRef)", 33554482, "Using SBufConsumer for audio rendering.\n");
    }

    v76 = *(updated[2] + 592);
    APSAudioFormatDescriptionGetAudioFormatIndex();
    v77 = APAudioFormatIndexToPCMASBD();
    if (v77)
    {
      v8 = v77;
    }

    else
    {
      v78 = updated[15];
      if (v78)
      {
        CFRelease(v78);
        updated[15] = 0;
      }

      v79 = CMAudioFormatDescriptionCreate(*MEMORY[0x277CBECE8], updated + 2, 0, 0, 0, 0, 0, updated + 15);
      if (!v79)
      {
        updated[16] = v76;
        updated[19] = 0;
        *(updated + 42) = (*(updated + 10) * (APSScreenLatencyMs() + 10) / 1000.0);
        if (*(updated + 71) && IsAppleTV())
        {
          [objc_msgSend(updated[4] "session")];
          *(updated + 42) += (v80 * *(updated + 10));
        }

        v81 = FigDispatchQueueCreateWithPriority();
        updated[17] = v81;
        v82 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, v81);
        updated[18] = v82;
        inData = MEMORY[0x277D85DD0];
        v111 = 3221225472;
        v112 = ___SBufConsumerEnsureSetup_block_invoke;
        v113 = &__block_descriptor_40_e5_v8__0l;
        v114 = updated;
        dispatch_source_set_event_handler(v82, &inData);
        dispatch_source_set_timer(updated[18], 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        dispatch_resume(updated[18]);
        if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _SBufConsumerEnsureSetup(APReceiverSBufConsumerRef, APReceiverAudioSessionPlatformRef)", 33554482, "%@ Audio for SBufConsumer set up\n", updated[5]);
        }

        return 0;
      }

      v8 = v79;
    }
  }

  else
  {
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _MainAudioEnsureSetup(APReceiverAudioSessionPlatformRef, CFDictionaryRef)", 33554482, "Not using SBufConsumer for audio rendering.\n");
    }

    v17 = NewAUGraph(updated + 24);
    if (v17)
    {
      v8 = v17;
    }

    else
    {
      v18 = AUGraphOpen(*v4);
      if (v18)
      {
        v8 = v18;
      }

      else
      {
        if (*(updated + 66))
        {
          v19 = 1987078511;
        }

        else
        {
          v19 = 1919512419;
        }

        inDescription.componentType = 1635086197;
        inDescription.componentSubType = v19;
        *&inDescription.componentManufacturer = 1634758764;
        inDescription.componentFlagsMask = 0;
        v20 = AUGraphAddNode(updated[24], &inDescription, updated + 54);
        if (v20)
        {
          v8 = v20;
        }

        else
        {
          v21 = AUGraphNodeInfo(updated[24], *(updated + 54), 0, updated + 28);
          if (v21)
          {
            v8 = v21;
          }

          else
          {
            LODWORD(inData) = [objc_msgSend(updated[4] "session")];
            v22 = AudioUnitSetProperty(updated[28], 0x7E7u, 2u, 0, &inData, 4u);
            if (v22)
            {
              v8 = v22;
            }

            else
            {
              v23 = AudioUnitInitialize(updated[28]);
              if (v23)
              {
                v8 = v23;
              }

              else
              {
                ioDataSize[0] = 40;
                Property = AudioUnitGetProperty(updated[28], 8u, 2u, 0, outData, ioDataSize);
                if (Property)
                {
                  v8 = Property;
                }

                else
                {
                  if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _MainAudioEnsureSetup(APReceiverAudioSessionPlatformRef, CFDictionaryRef)", 33554482, "%@ OutputUnit ASBD: %{asbd}\n", updated[5], outData);
                  }

                  v25 = updated[28];
                  v26 = *outData;
                  *&inDescription.componentType = xmmword_23EAA1860;
                  inDescription.componentFlagsMask = 0;
                  v27 = AUGraphAddNode(updated[24], &inDescription, updated + 50);
                  if (v27)
                  {
                    v8 = v27;
                  }

                  else
                  {
                    v28 = AUGraphNodeInfo(updated[24], *(updated + 50), 0, updated + 26);
                    if (v28)
                    {
                      v8 = v28;
                    }

                    else
                    {
                      ioDataSize[1] = 1;
                      v29 = AudioUnitSetProperty(updated[26], 0xBu, 1u, 0, &ioDataSize[1], 4u);
                      if (v29)
                      {
                        v8 = v29;
                      }

                      else
                      {
                        *(outData + 12) = xmmword_23EAA1870;
                        LODWORD(v106) = 32;
                        if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _MainAudioEnsureSetup(APReceiverAudioSessionPlatformRef, CFDictionaryRef)", 33554482, "%@ MixerUnit output ASBD: %{asbd}\n", updated[5], outData);
                        }

                        v30 = AudioUnitSetProperty(updated[28], 8u, 1u, 0, outData, 0x28u);
                        if (v30)
                        {
                          v8 = v30;
                        }

                        else
                        {
                          v31 = AudioUnitSetProperty(updated[26], 8u, 2u, 0, outData, 0x28u);
                          if (v31)
                          {
                            v8 = v31;
                          }

                          else
                          {
                            v32 = 1.0;
                            v33 = AudioUnitSetParameter(updated[26], 0, 1u, 0, 1.0, 0);
                            if (v33)
                            {
                              v8 = v33;
                            }

                            else
                            {
                              if (!APSIsAPMSpeaker())
                              {
                                v32 = *(updated + 59);
                              }

                              if (gLogCategory_APReceiverAudioSessionPlatform <= 40 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
                              {
                                LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _MainAudioEnsureSetup(APReceiverAudioSessionPlatformRef, CFDictionaryRef)", 33554472, "%@ [AirPlayVolume] Setting software volume at initialization. mixerUnit = %{ptr}, volumeControl = %p, outputVolume = %f, softwareVolume = %f\n", updated[5], updated[26], *(updated + 68), *(updated + 59), v32);
                              }

                              if (*(updated + 68) && (v34 = AudioUnitSetParameter(updated[26], 0, 2u, 0, v32, 0), v34))
                              {
                                v8 = v34;
                              }

                              else
                              {
                                v35 = _ConfigureAudioUnitMaxFrames(updated, updated[26], v25, *outData, v26);
                                if (v35)
                                {
                                  v8 = v35;
                                }

                                else
                                {
                                  v36 = updated[26];
                                  v37 = *outData;
                                  v38 = AUGraphConnectNodeInput(*v4, *(updated + 50), 0, *(updated + 54), 0);
                                  if (v38)
                                  {
                                    v8 = v38;
                                  }

                                  else
                                  {
                                    if (!*(updated + 65))
                                    {
                                      goto LABEL_270;
                                    }

                                    *&inDescription.componentType = xmmword_23EAA1880;
                                    inDescription.componentFlagsMask = 0;
                                    v39 = AUGraphAddNode(updated[24], &inDescription, updated + 60);
                                    if (v39)
                                    {
                                      v8 = v39;
                                    }

                                    else
                                    {
                                      v40 = AUGraphNodeInfo(updated[24], *(updated + 60), 0, updated + 31);
                                      if (v40)
                                      {
                                        v8 = v40;
                                      }

                                      else
                                      {
                                        v41 = *(updated + 27);
                                        *&outData[0] = 0x40E7700000000000;
                                        *(outData + 8) = xmmword_23EAA1890;
                                        DWORD2(outData[1]) = 4;
                                        HIDWORD(outData[1]) = v41;
                                        v106 = 32;
                                        v42 = AudioUnitSetProperty(updated[31], 8u, 2u, 0, outData, 0x28u);
                                        if (v42)
                                        {
                                          v8 = v42;
                                        }

                                        else
                                        {
                                          ioDataSize[1] = 127;
                                          v43 = AudioUnitSetProperty(updated[31], 0x1Au, 0, 0, &ioDataSize[1], 4u);
                                          if (v43)
                                          {
                                            v8 = v43;
                                          }

                                          else
                                          {
                                            v44 = _ConfigureAudioUnitMaxFrames(updated, updated[31], v36, *outData, v37);
                                            if (v44)
                                            {
                                              v8 = v44;
                                            }

                                            else
                                            {
                                              v36 = updated[31];
                                              v37 = *outData;
                                              v45 = AUGraphConnectNodeInput(*v4, *(updated + 60), 0, *(updated + 50), 0);
                                              if (!v45)
                                              {
LABEL_270:
                                                *&inDescription.componentType = xmmword_23EAA18A0;
                                                inDescription.componentFlagsMask = 0;
                                                v46 = AUGraphAddNode(updated[24], &inDescription, updated + 43);
                                                if (v46)
                                                {
                                                  v8 = v46;
                                                }

                                                else
                                                {
                                                  v47 = AUGraphNodeInfo(updated[24], *(updated + 43), 0, updated + 22);
                                                  if (v47)
                                                  {
                                                    v8 = v47;
                                                  }

                                                  else
                                                  {
                                                    v48 = AudioUnitSetProperty(updated[22], 8u, 1u, 0, updated + 10, 0x28u);
                                                    if (v48)
                                                    {
                                                      v8 = v48;
                                                    }

                                                    else
                                                    {
                                                      *&outData[0] = 0x40E7700000000000;
                                                      *(outData + 8) = xmmword_23EAA1890;
                                                      v49 = *(updated + 27);
                                                      DWORD2(outData[1]) = 4;
                                                      HIDWORD(outData[1]) = v49;
                                                      v106 = 32;
                                                      if (*(updated + 65))
                                                      {
                                                        *&outData[0] = updated[10];
                                                      }

                                                      v50 = AudioUnitSetProperty(updated[22], 8u, 2u, 0, outData, 0x28u);
                                                      if (v50)
                                                      {
                                                        v8 = v50;
                                                      }

                                                      else
                                                      {
                                                        inInputCallback.inputProc = _AudioOutputCallBack;
                                                        inInputCallback.inputProcRefCon = updated;
                                                        v51 = AUGraphSetNodeInputCallback(updated[24], *(updated + 43), 0, &inInputCallback);
                                                        if (v51)
                                                        {
                                                          v8 = v51;
                                                        }

                                                        else
                                                        {
                                                          v52 = _ConfigureAudioUnitMaxFrames(updated, updated[22], v36, *outData, v37);
                                                          if (v52)
                                                          {
                                                            v8 = v52;
                                                          }

                                                          else
                                                          {
                                                            v104 = 1;
                                                            v53 = AudioUnitSetProperty(updated[22], 0x762u, 2u, 0, &v104, 4u);
                                                            if (v53)
                                                            {
                                                              v8 = v53;
                                                            }

                                                            else
                                                            {
                                                              v54 = *(updated + 60);
                                                              if (!v54)
                                                              {
                                                                v54 = *(updated + 50);
                                                              }

                                                              v55 = AUGraphConnectNodeInput(updated[24], *(updated + 43), 0, v54, 0);
                                                              if (v55)
                                                              {
                                                                v8 = v55;
                                                              }

                                                              else
                                                              {
                                                                v56 = AUGraphInitialize(*v4);
                                                                if (!v56)
                                                                {
                                                                  *outNumberOfNodes = 0;
                                                                  outNode = 0;
                                                                  inData = 0;
                                                                  v111 = 0;
                                                                  LODWORD(v112) = 0;
                                                                  outAudioUnit = 0;
                                                                  outDataSize = 0;
                                                                  v117 = 0.0;
                                                                  v118 = 0.0;
                                                                  valuePtr = 0;
                                                                  if (AUGraphGetNodeCount(*v4, outNumberOfNodes))
                                                                  {
                                                                    v57 = 0;
                                                                    outNumberOfNodes[0] = 0;
                                                                  }

                                                                  else if (outNumberOfNodes[0])
                                                                  {
                                                                    v57 = 0;
                                                                    v58 = 0;
                                                                    do
                                                                    {
                                                                      if (!AUGraphGetIndNode(*v4, v58, &outNode) && !AUGraphNodeInfo(*v4, outNode, &inData, &outAudioUnit))
                                                                      {
                                                                        outDataSize = 8;
                                                                        if (AudioUnitGetProperty(outAudioUnit, 2u, 0, 0, &v118, &outDataSize))
                                                                        {
                                                                          v118 = 44100.0;
                                                                        }

                                                                        outDataSize = 8;
                                                                        if (!AudioUnitGetProperty(outAudioUnit, 0xCu, 0, 0, &v117, &outDataSize) && HIDWORD(inData) != 1668247158)
                                                                        {
                                                                          v57 += (v117 * v118);
                                                                        }

                                                                        if (inData == 1635086197)
                                                                        {
                                                                          HIDWORD(valuePtr) = 0;
                                                                          outDataSize = 4;
                                                                          if (!AudioUnitGetProperty(outAudioUnit, 0x6C746E63u, 2u, 0, &valuePtr + 4, &outDataSize))
                                                                          {
                                                                            LODWORD(v59) = HIDWORD(valuePtr);
                                                                            v57 += (v118 * v59 / *(updated + 10));
                                                                            outNumberOfNodes[1] = v57;
                                                                          }

                                                                          HIDWORD(valuePtr) = 0;
                                                                          outDataSize = 4;
                                                                          if (!AudioUnitGetProperty(outAudioUnit, 0x73616674u, 2u, 0, &valuePtr + 4, &outDataSize))
                                                                          {
                                                                            LODWORD(v60) = HIDWORD(valuePtr);
                                                                            v57 += (v118 * v60 / *(updated + 10));
                                                                          }

                                                                          outDataSize = 0;
                                                                          v61 = 0;
                                                                          if (!AudioUnitGetPropertyInfo(outAudioUnit, 0x73746D23u, 2u, 0, &outDataSize, 0) && outDataSize >= 4)
                                                                          {
                                                                            v62 = malloc_type_malloc(outDataSize, 0x100004052888210uLL);
                                                                            if (v62)
                                                                            {
                                                                              v63 = v62;
                                                                              v61 = 0;
                                                                              if (!AudioUnitGetProperty(outAudioUnit, 0x73746D23u, 2u, 0, v62, &outDataSize) && outDataSize >= 4)
                                                                              {
                                                                                v61 = 0;
                                                                                v64 = outDataSize >> 2;
                                                                                v65 = v63;
                                                                                do
                                                                                {
                                                                                  inAddress.mElement = 0;
                                                                                  *&inAddress.mSelector = *"cntlbolg";
                                                                                  HIDWORD(valuePtr) = 0;
                                                                                  outDataSize = 4;
                                                                                  v66 = *v65++;
                                                                                  if (!AudioObjectGetPropertyData(v66, &inAddress, 0, 0, &outDataSize, &valuePtr + 4))
                                                                                  {
                                                                                    LODWORD(v67) = HIDWORD(valuePtr);
                                                                                    v68 = (v118 * v67 / *(updated + 10));
                                                                                    HIDWORD(valuePtr) = v68;
                                                                                    if (v61 <= v68)
                                                                                    {
                                                                                      v61 = v68;
                                                                                    }
                                                                                  }

                                                                                  --v64;
                                                                                }

                                                                                while (v64);
                                                                              }

                                                                              free(v63);
                                                                              v3 = &unk_27E37E000;
                                                                            }

                                                                            else
                                                                            {
                                                                              v61 = 0;
                                                                            }
                                                                          }

                                                                          v57 += v61;
                                                                          outNumberOfNodes[1] = v57;
                                                                        }
                                                                      }

                                                                      ++v58;
                                                                    }

                                                                    while (v58 < outNumberOfNodes[0]);
                                                                  }

                                                                  else
                                                                  {
                                                                    v57 = 0;
                                                                  }

                                                                  if (*(updated + 71))
                                                                  {
                                                                    if (APSIsAPMSpeaker())
                                                                    {
                                                                      v69 = *(*(updated[2] + 40) + 48);
                                                                      if (v69)
                                                                      {
                                                                        v70 = APReceiverRequestProcessorCopyReceiverSession(v69);
                                                                        if (v70)
                                                                        {
                                                                          v72 = v70;
                                                                          v73 = v3[306];
                                                                          if (v73 <= 50 && (v73 != -1 || _LogCategory_Initialize()))
                                                                          {
                                                                            LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateLatency(APReceiverAudioSessionPlatformRef)", 33554482, "%@ Adjusting totalLatency by subtracting senderDisplayLatencyMs %u\n", updated[5], v72[180]);
                                                                          }

                                                                          LODWORD(v71) = v72[180];
                                                                          v57 -= (v118 * v71 / 1000.0);
                                                                          outNumberOfNodes[1] = v57;
                                                                          CFRelease(v72);
                                                                        }
                                                                      }
                                                                    }

                                                                    else if (IsAppleTV())
                                                                    {
                                                                      v74 = APSHDMIVideoLatencyMs();
                                                                      v75 = v3[306];
                                                                      if (v75 <= 50 && (v75 != -1 || _LogCategory_Initialize()))
                                                                      {
                                                                        LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateLatency(APReceiverAudioSessionPlatformRef)", 33554482, "%@ Adjusting totalLatency by subtracting hdmiVideoLatencyMs %u\n", updated[5], v74);
                                                                      }

                                                                      v57 -= (v118 * v74 / 1000.0);
                                                                    }
                                                                  }

                                                                  v83 = [updated[4] session];
                                                                  v84 = v3[306];
                                                                  if (v84 <= 50)
                                                                  {
                                                                    if (v84 != -1 || _LogCategory_Initialize())
                                                                    {
                                                                      v85 = updated[5];
                                                                      [v83 inputLatency];
                                                                      LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateLatency(APReceiverAudioSessionPlatformRef)", 33554482, "%@ Input latency:       %.9f\n", v85, v86);
                                                                    }

                                                                    v87 = v3[306];
                                                                    if (v87 <= 50)
                                                                    {
                                                                      if (v87 != -1 || _LogCategory_Initialize())
                                                                      {
                                                                        v88 = updated[5];
                                                                        [v83 outputLatency];
                                                                        LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateLatency(APReceiverAudioSessionPlatformRef)", 33554482, "%@ Output latency:      %.9f\n", v88, v89);
                                                                      }

                                                                      v90 = v3[306];
                                                                      if (v90 <= 50 && (v90 != -1 || _LogCategory_Initialize()))
                                                                      {
                                                                        v91 = updated[5];
                                                                        [v83 sampleRate];
                                                                        LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateLatency(APReceiverAudioSessionPlatformRef)", 33554482, "%@ Sample rate:         %.0f\n", v91, v92);
                                                                      }
                                                                    }
                                                                  }

                                                                  [v83 outputLatency];
                                                                  v94 = (v93 * *(updated + 10));
                                                                  v95 = v57 + v94;
                                                                  outNumberOfNodes[1] = v57 + v94;
                                                                  LODWORD(valuePtr) = [v83 IOBufferFrameSize];
                                                                  v96 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
                                                                  if (v96)
                                                                  {
                                                                    v97 = v96;
                                                                    v98 = v3[306];
                                                                    if (v98 <= 50 && (v98 != -1 || _LogCategory_Initialize()))
                                                                    {
                                                                      LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateLatency(APReceiverAudioSessionPlatformRef)", 33554482, "%@ I/O buffer duration: %u samples\n", updated[5], valuePtr);
                                                                    }

                                                                    APReceiverAudioSessionSetProperty(updated[3], @"PlatformIOBufferSize", v97);
                                                                    if (!APSIsAPMSpeaker() && *(updated + 69) && v95 >= 1)
                                                                    {
                                                                      v99 = v3[306];
                                                                      if (v99 <= 50 && (v99 != -1 || _LogCategory_Initialize()))
                                                                      {
                                                                        LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateLatency(APReceiverAudioSessionPlatformRef)", 33554482, "%@ ScreenAudioStream platform latency %d > 0, clamping to 0\n", updated[5], v95);
                                                                      }

                                                                      outNumberOfNodes[1] = 0;
                                                                    }

                                                                    v100 = CFNumberCreate(0, kCFNumberSInt32Type, &outNumberOfNodes[1]);
                                                                    if (v100)
                                                                    {
                                                                      v101 = v100;
                                                                      if (APReceiverAudioSessionSetProperty(updated[3], @"PlatformAudioLatency", v100))
                                                                      {
                                                                        APSLogErrorAt();
                                                                      }

                                                                      else
                                                                      {
                                                                        v102 = v3[306];
                                                                        if (v102 <= 50 && (v102 != -1 || _LogCategory_Initialize()))
                                                                        {
                                                                          LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateLatency(APReceiverAudioSessionPlatformRef)", 33554482, "%@ Updated platform latency to %d samples\n", updated[5], outNumberOfNodes[1]);
                                                                        }
                                                                      }

                                                                      CFRelease(v101);
                                                                    }

                                                                    else
                                                                    {
                                                                      APSLogErrorAt();
                                                                    }

                                                                    CFRelease(v97);
                                                                  }

                                                                  else
                                                                  {
                                                                    APSLogErrorAt();
                                                                  }

                                                                  return 0;
                                                                }

                                                                v8 = v56;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }

                                                goto LABEL_417;
                                              }

                                              v8 = v45;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_417:
  APSLogErrorAt();
LABEL_418:
  if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _MainAudioEnsureSetup(APReceiverAudioSessionPlatformRef, CFDictionaryRef)", 33554482, "### %@ Main audio setup failed: %#m\n", updated[5], v8);
  }

  _MainAudioEnsureTornDown(updated);
  return v8;
}

void APReceiverAudioSessionPlatformFinalize(void *a1)
{
  if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void APReceiverAudioSessionPlatformFinalize(void *)", 33554482, "%@ APReceiverAudioSessionPlatform tearing down\n", a1[5]);
  }

  _MainAudioEnsureTornDown(a1);
  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
  }

  CFRelease(a1);
}

void _MainAudioEnsureTornDown(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 128))
    {
      if (*(a1 + 144))
      {
        v3 = *(a1 + 136);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = ___SBufConsumerStop_block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = a1;
        dispatch_sync(v3, block);
        if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _SBufConsumerStop(APReceiverAudioSessionPlatformRef)", 33554482, "%@ Audio for SBufConsumer stopped\n", *(a1 + 40));
        }

        v4 = *(a1 + 144);
        if (v4)
        {
          dispatch_source_cancel(*(a1 + 144));
          dispatch_release(v4);
          *(a1 + 144) = 0;
        }
      }

      v5 = *(a1 + 136);
      if (v5)
      {
        dispatch_release(v5);
        *(a1 + 136) = 0;
      }

      v6 = *(a1 + 120);
      if (v6)
      {
        CFRelease(v6);
        *(a1 + 120) = 0;
      }

      *(a1 + 128) = 0;
      if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _SBufConsumerEnsureTornDown(APReceiverAudioSessionPlatformRef)", 33554482, "%@ Audio for SBufConsumer torn down\n", *(a1 + 40));
      }
    }

    v7 = *(a1 + 192);
    if (v7)
    {
      LOBYTE(block[0]) = 0;
      AUGraphIsRunning(v7, block);
      if (LOBYTE(block[0]))
      {
        AUGraphStop(*(a1 + 192));
      }

      LOBYTE(block[0]) = 0;
      AUGraphIsInitialized(*(a1 + 192), block);
      if (LOBYTE(block[0]))
      {
        AUGraphUninitialize(*(a1 + 192));
      }

      LOBYTE(block[0]) = 0;
      AUGraphIsOpen(*(a1 + 192), block);
      if (LOBYTE(block[0]))
      {
        AUGraphClose(*(a1 + 192));
      }

      DisposeAUGraph(*(a1 + 192));
      *(a1 + 192) = 0;
    }

    *(a1 + 172) = 0;
    *(a1 + 176) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    v8 = *(a1 + 184);
    if (v8)
    {
      dispatch_source_cancel(*(a1 + 184));
      dispatch_release(v8);
      *(a1 + 184) = 0;
    }

    *(a1 + 72) = 0;
    if (v7 && gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _MainAudioEnsureTornDown(APReceiverAudioSessionPlatformRef)", 33554482, "%@ Main audio torn down\n", *(a1 + 40));
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

void *_UpdateAVAudioSessionPrefersMultiChannelAudio(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v3 = FigCFEqual();
  result = [*(a1 + 32) setPrefersMultichannelAudio:v3 error:&v5];
  if (result)
  {
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionPlatform != -1)
      {
        return LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateAVAudioSessionPrefersMultiChannelAudio(APReceiverAudioSessionPlatformRef, CFBooleanRef)", 33554482, "%@ AVAudioSessionManager PrefersMultiChannelAudio updated to %d\n", *(a1 + 40), v3);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateAVAudioSessionPrefersMultiChannelAudio(APReceiverAudioSessionPlatformRef, CFBooleanRef)", 33554482, "%@ AVAudioSessionManager PrefersMultiChannelAudio updated to %d\n", *(a1 + 40), v3);
      }
    }
  }

  else if (gLogCategory_APReceiverAudioSessionPlatform <= 60)
  {
    if (gLogCategory_APReceiverAudioSessionPlatform != -1)
    {
      return LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateAVAudioSessionPrefersMultiChannelAudio(APReceiverAudioSessionPlatformRef, CFBooleanRef)", 33554492, "### %@ Set AVAudioSessionManager PrefersMultiChannelAudio to %d failed. Error: %@\n", *(a1 + 40), v3, v5);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateAVAudioSessionPrefersMultiChannelAudio(APReceiverAudioSessionPlatformRef, CFBooleanRef)", 33554492, "### %@ Set AVAudioSessionManager PrefersMultiChannelAudio to %d failed. Error: %@\n", *(a1 + 40), v3, v5);
    }
  }

  return result;
}

uint64_t _ConfigureAudioUnitMaxFrames(uint64_t a1, OpaqueAudioComponentInstance *a2, AudioUnit inUnit, double a4, double a5)
{
  outData = 0;
  if (a4 <= 0.0 && a5 <= 0.0)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  ioDataSize = 4;
  Property = AudioUnitGetProperty(inUnit, 0xEu, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    v13 = Property;
    APSLogErrorAt();
    return v13;
  }

  v10 = outData;
  v11 = outData;
  if (a4 != a5)
  {
    v11 = (vcvtpd_u64_f64(outData * a4 / a5) & 0xFFFFFFE0) + 32;
  }

  inData = v11;
  if (gLogCategory_APReceiverAudioSessionPlatform <= 30)
  {
    if (gLogCategory_APReceiverAudioSessionPlatform != -1)
    {
LABEL_8:
      LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _ConfigureAudioUnitMaxFrames(APReceiverAudioSessionPlatformRef, AudioUnit, Float64, AudioUnit, Float64)", 33554462, "%@ Downstream AU samplerate = %d, MaxFramesPerSlice = %d. Current AU samplerate = %d, MaxFramesPerSlice = %d\n", *(a1 + 40), a5, v10, a4, v11);
      goto LABEL_10;
    }

    if (_LogCategory_Initialize())
    {
      v10 = outData;
      goto LABEL_8;
    }
  }

LABEL_10:
  v12 = AudioUnitSetProperty(a2, 0xEu, 0, 0, &inData, 4u);
  v13 = 0;
  if (v12)
  {
    v15 = v12;
    APSLogErrorAt();
    return v15;
  }

  return v13;
}

uint64_t _AudioOutputCallBack(uint64_t a1)
{
  if (!*(a1 + 232))
  {
    return 4294960587;
  }

  Audio = APReceiverAudioSessionReadAudio(*(a1 + 24));
  if (Audio)
  {
    APSLogErrorAt();
  }

  return Audio;
}

uint64_t __APReceiverSBufConsumerPushAudioSBuf_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v4)
  {
    result = v4(v2, v3);
  }

  else
  {
    result = 4294954514;
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t _APReceiverAudioSessionPlatformGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPReceiverAudioSessionPlatformTypeID = result;
  return result;
}

void _APReceiverAudioSessionPlatformFinalize(uint64_t a1)
{
  if (a1)
  {
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _APReceiverAudioSessionPlatformFinalize(CFTypeRef)", 33554482, "%@ APReceiverAudioSessionPlatform finalized\n", *(a1 + 40));
    }

    *(a1 + 48) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v3 = *(a1 + 40);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 40) = 0;
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

uint64_t APReceiverAudioSessionPlatformControl(void *a1, const void *a2)
{
  v21 = 0;
  if (!a1)
  {
    goto LABEL_56;
  }

  v4 = CFGetTypeID(a1);
  if (gAPReceiverAudioSessionInitOnce != -1)
  {
    dispatch_once_f(&gAPReceiverAudioSessionInitOnce, 0, _APReceiverAudioSessionGetTypeID);
  }

  if (v4 != gAPReceiverAudioSessionTypeID || !a2)
  {
LABEL_56:
    APSLogErrorAt();
    return -6705;
  }

  v5 = a1[27];
  if (!v5)
  {
    APSLogErrorAt();
    return -6718;
  }

  if (CFEqual(a2, @"RASP::FlushAudio"))
  {
    return v21;
  }

  if (CFEqual(a2, @"RASP::StartAudioIO"))
  {
    _StartAudioIO(v5, 0);
    return 0;
  }

  if (CFEqual(a2, @"RASP::StopAudioIO"))
  {
    _StopAudioIO(v5, 0);
    return 0;
  }

  if (CFEqual(a2, @"RASP::DuckAudio"))
  {
    if (!*(v5 + 208))
    {
      return v21;
    }

    CFDictionaryGetDouble();
    v8 = v7 >= 0.0;
    v9 = v7 / 1000.0;
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0.5;
    }

    CFDictionaryGetDouble();
    v15 = v11;
    v16 = 0.0;
    if (v15 > -144.0)
    {
      v16 = 1.0;
      if (v15 < 0.0)
      {
        v16 = __exp10f(v15 / 20.0);
      }
    }

    if (v16 <= 1.0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 1.0;
    }

    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus APReceiverAudioSessionPlatformControl(CFTypeRef, CFObjectFlags, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "%@ Ducking audio to %f within %f seconds\n", *(v5 + 40), *&v17, *&v10);
    }

    v18 = *(v5 + 184);
    if (v18)
    {
      dispatch_source_cancel(*(v5 + 184));
      dispatch_release(v18);
      *(v5 + 184) = 0;
    }

LABEL_51:
    CoreAudioRampParameterStart();
    return v21;
  }

  if (CFEqual(a2, @"RASP::UnduckAudio"))
  {
    if (!*(v5 + 208))
    {
      return v21;
    }

    CFDictionaryGetDouble();
    v8 = v12 >= 0.0;
    v13 = v12 / 1000.0;
    if (v8)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0.5;
    }

    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus APReceiverAudioSessionPlatformControl(CFTypeRef, CFObjectFlags, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "%@ Unducking audio within %f seconds\n", *(v5 + 40), *&v14);
    }

    v19 = *(v5 + 184);
    if (v19)
    {
      dispatch_source_cancel(*(v5 + 184));
      dispatch_release(v19);
      *(v5 + 184) = 0;
    }

    goto LABEL_51;
  }

  if (CFEqual(a2, @"RASP::StartSession"))
  {
    v21 = _EnsureAudioOutputStarted(v5);
    if (v21)
    {
      APSLogErrorAt();
    }

    return v21;
  }

  if (CFEqual(a2, @"RASP::HandleAudioInterruptionBegan"))
  {
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus APReceiverAudioSessionPlatformControl(CFTypeRef, CFObjectFlags, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "%@ Audio interruption began.\n", *(v5 + 40));
    }

    _StopAudioIO(v5, 1);
    return v21;
  }

  if (!CFEqual(a2, @"RASP::HandleAudioInterruptionEnded"))
  {
    return -6714;
  }

  if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus APReceiverAudioSessionPlatformControl(CFTypeRef, CFObjectFlags, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "%@ Audio interruption ended.\n", *(v5 + 40));
  }

  _StartAudioIO(v5, 1);
  return v21;
}

void _StartAudioIO(CFTypeRef *a1, char a2)
{
  CFRetain(a1);
  CFRetain(a1[2]);
  CFRetain(a1[3]);
  v4 = *(a1[2] + 2);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___StartAudioIO_block_invoke;
  v5[3] = &__block_descriptor_41_e5_v8__0l;
  v5[4] = a1;
  v6 = a2;
  dispatch_async(v4, v5);
}

void _StopAudioIO(CFTypeRef *a1, char a2)
{
  CFRetain(a1);
  CFRetain(a1[2]);
  CFRetain(a1[3]);
  v4 = *(a1[2] + 2);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___StopAudioIO_block_invoke;
  v5[3] = &__block_descriptor_41_e5_v8__0l;
  v5[4] = a1;
  v6 = a2;
  dispatch_async(v4, v5);
}

void __APReceiverAudioSessionPlatformControl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 184);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 184));
    dispatch_release(v2);
    *(*(a1 + 32) + 184) = 0;
  }
}

void __APReceiverAudioSessionPlatformControl_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 184);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 184));
    dispatch_release(v2);
    *(*(a1 + 32) + 184) = 0;
  }
}

uint64_t _EnsureAudioOutputStarted(uint64_t a1)
{
  if (*(*(a1 + 16) + 753))
  {
    return 0;
  }

  if (*(a1 + 70))
  {
    if (!*(a1 + 232))
    {
LABEL_4:
      result = 0;
      *(a1 + 232) = 1;
      return result;
    }

    return 0;
  }

  if (!*(a1 + 128))
  {
    if (!*(a1 + 192))
    {
      APSLogErrorAt();
      return 4294960587;
    }

    if (!*(a1 + 232) && *(a1 + 48) != 103)
    {
      _StartAudioIO(a1, 0);
    }

    return 0;
  }

  if (*(a1 + 232))
  {
    return 0;
  }

  if (!*(a1 + 152))
  {
    v3 = mach_absolute_time();
    v4 = *(a1 + 80) * (v3 / UpTicksPerSecond());
    *(a1 + 152) = v4;
    *(a1 + 160) = v4;
    v5 = *(a1 + 144);
    v6 = dispatch_time(0, 10000000);
    dispatch_source_set_timer(v5, v6, 0x989680uLL, 0x7A120uLL);
    if (gLogCategory_APReceiverAudioSessionPlatform >= 51)
    {
      goto LABEL_4;
    }

    if (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _SBufConsumerStart(APReceiverAudioSessionPlatformRef)", 33554482, "%@ Audio for SBufConsumer started\n", *(a1 + 40));
    }
  }

  v7 = gLogCategory_APReceiverAudioSessionPlatform;
  *(a1 + 232) = 1;
  if (v7 > 50)
  {
    return 0;
  }

  if (v7 != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _EnsureAudioOutputStarted(APReceiverAudioSessionPlatformRef)", 33554482, "%@ Main audio output started\n", *(a1 + 40));
    return 0;
  }

  return result;
}

uint64_t APReceiverAudioSessionPlatformSetProperty(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v24 = 0;
  if (!a1)
  {
    goto LABEL_77;
  }

  v8 = CFGetTypeID(a1);
  if (gAPReceiverAudioSessionInitOnce != -1)
  {
    dispatch_once_f(&gAPReceiverAudioSessionInitOnce, 0, _APReceiverAudioSessionGetTypeID);
  }

  if (v8 != gAPReceiverAudioSessionTypeID || !a3)
  {
LABEL_77:
    APSLogErrorAt();
    return -6705;
  }

  v9 = a1[27];
  if (!v9)
  {
    APSLogErrorAt();
    return -6718;
  }

  if (CFEqual(a3, @"RASP::AudioMode"))
  {
    _UpdateAVAudioSessionAudioMode_5424(v9, a5);
    return v24;
  }

  if (CFEqual(a3, @"RASP::PrefersMultiChannel"))
  {
    _UpdateAVAudioSessionPrefersMultiChannelAudio(v9, a5);
    return v24;
  }

  if (CFEqual(a3, @"RASP::PreferredAudioFormat"))
  {
    v25 = 0;
    if (IsAppleTV())
    {
      if (FigCFDictionaryGetInt64IfPresent())
      {
        if ([*(v9 + 32) setPreferredOutputNumberOfChannels:0 error:&v25])
        {
          if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateAVAudioSessionPreferredAudioFormat(APReceiverAudioSessionPlatformRef, CFDictionaryRef)", 33554482, "%@ AVAudioSessionManager PreferredOutputNumberOfChannels updated to %d\n", *(v9 + 40), 0);
          }
        }

        else if (gLogCategory_APReceiverAudioSessionPlatform <= 60 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateAVAudioSessionPreferredAudioFormat(APReceiverAudioSessionPlatformRef, CFDictionaryRef)", 33554492, "### %@ Set AVAudioSessionManager PreferredOutputNumberOfChannels to %d failed. Error: %@\n", *(v9 + 40), 0, v25);
        }
      }

      if (FigCFDictionaryGetInt64IfPresent())
      {
        if ([*(v9 + 32) setPreferredHardwareFormat:0 error:&v25])
        {
          if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateAVAudioSessionPreferredAudioFormat(APReceiverAudioSessionPlatformRef, CFDictionaryRef)", 33554482, "%@ AVAudioSessionManager PreferredHardwareFormat updated to %d\n", *(v9 + 40), 0, v23);
          }
        }

        else if (gLogCategory_APReceiverAudioSessionPlatform <= 60 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "void _UpdateAVAudioSessionPreferredAudioFormat(APReceiverAudioSessionPlatformRef, CFDictionaryRef)", 33554492, "### %@ Set AVAudioSessionManager PreferredHardwareFormat to %d failed. Error: %@\n", *(v9 + 40), 0, v25);
        }
      }
    }

    return v24;
  }

  if (!CFEqual(a3, @"RASP::Skew"))
  {
    if (CFEqual(a3, @"RASP::VolumeLinear"))
    {
      CFGetDouble();
      v16 = v15;
      if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus APReceiverAudioSessionPlatformSetProperty(CFTypeRef, CFObjectFlags, CFStringRef, CFTypeRef, CFTypeRef)", 33554482, "%@ [AirPlayVolume] Setting software volume; mixerUnit = %{ptr}, volumeControl = %p, linearGain = %f\n", *(v9 + 40), *(v9 + 208), *(v9 + 68), v16);
      }

      if (!*(v9 + 70))
      {
        v21 = *(v9 + 208);
        if (!v21 || !*(v9 + 68))
        {
          return v24;
        }

        v24 = AudioUnitSetParameter(v21, 0, 2u, 0, v16, 0);
        if (!v24)
        {
          *(v9 + 236) = v16;
          return v24;
        }

        goto LABEL_81;
      }

      goto LABEL_82;
    }

    if (CFEqual(a3, @"RASP::MuteStream"))
    {
      v17 = CFGetInt64();
      v18 = 0.0;
      if (!v17)
      {
        v18 = *(v9 + 236);
      }

      if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
      {
        v19 = 84;
        if (!v17)
        {
          v19 = 70;
        }

        LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus APReceiverAudioSessionPlatformSetProperty(CFTypeRef, CFObjectFlags, CFStringRef, CFTypeRef, CFTypeRef)", 33554482, "%@ [AirPlayMute] Setting mute; mixerUnit = %{ptr}, volumeControl = %p, isMuted = %c, linearGain = %f\n", *(v9 + 40), *(v9 + 208), *(v9 + 68), v19, v18);
      }

      if (!*(v9 + 70))
      {
        v22 = *(v9 + 208);
        if (!v22)
        {
          return v24;
        }

        if (!*(v9 + 68))
        {
          return v24;
        }

        v24 = AudioUnitSetParameter(v22, 0, 2u, 0, v18, 0);
        if (!v24)
        {
          return v24;
        }

LABEL_81:
        APSLogErrorAt();
        return v24;
      }

LABEL_82:
      APSLogErrorAt();
      return APSSignalErrorAt();
    }

    return -6714;
  }

  if (!*(v9 + 248))
  {
    return v24;
  }

  v11 = CFGetInt64();
  v12 = *(v9 + 80);
  v24 = AudioUnitSetParameter(*(v9 + 248), 0, 0, 0, (v11 + v12) / v12, 0);
  v13 = gLogCategory_APReceiverAudioSessionPlatform;
  if (gLogCategory_APReceiverAudioSessionPlatform > 20)
  {
    v14 = 0;
  }

  else
  {
    if (gLogCategory_APReceiverAudioSessionPlatform != -1)
    {
LABEL_36:
      if (v13 != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus APReceiverAudioSessionPlatformSetProperty(CFTypeRef, CFObjectFlags, CFStringRef, CFTypeRef, CFTypeRef)", 33554472, "%@ Updated rate: %+d (%f Hz)\n", *(v9 + 40), v11, (((v11 + v12) / v12) * v12));
      }

      return v24;
    }

    v14 = _LogCategory_Initialize() != 0;
    v13 = gLogCategory_APReceiverAudioSessionPlatform;
  }

  if ((v11 - 6) < 0xFFFFFFF5)
  {
    v14 = 1;
  }

  if (v14 && v13 <= 40)
  {
    goto LABEL_36;
  }

  return v24;
}

uint64_t __APAdvertiserRapportManagerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  gAPAdvertiserRapportManagerTypeID = result;
  return result;
}

void _APAdvertiserRapportManagerFinalize(void *a1)
{
  if (gLogCategory_APAdvertiserRapportManager <= 50 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiserRapportManager, "void _APAdvertiserRapportManagerFinalize(CFTypeRef)", 33554482, "[%{ptr}] Advertiser Rapport manager finalizing.\n", a1);
  }

  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
    a1[6] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
    a1[5] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    dispatch_release(v4);
    a1[4] = 0;
  }
}

void __APAdvertiserRapportManagerCreate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(v2 + 81) = APSSettingsGetInt64() != 0;
  APAdvertiserRapportManager_update(v2);
  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void APAdvertiserRapportManager_update(uint64_t a1)
{
  if (gLogCategory_APAdvertiserRapportManager <= 20 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
  {
    if (*(a1 + 81))
    {
      v2 = "yes";
    }

    else
    {
      v2 = "no";
    }

    LogPrintF(&gLogCategory_APAdvertiserRapportManager, "OSStatus APAdvertiserRapportManager_update(APAdvertiserRapportManagerRef)", 33554452, "Rapport manager update: isEnabled: %s mode: %d\n", v2, *(a1 + 56));
  }

  if (!*(a1 + 81))
  {
LABEL_11:
    if (gLogCategory_APAdvertiserRapportManager <= 40 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAdvertiserRapportManager, "void APAdvertiserRapportManager_stopAdvertising(APAdvertiserRapportManagerRef)", 33554472, "Rapport manager stop advertising.\n");
    }

    [*(a1 + 64) deregisterRequestID:@"com.apple.airplay.discovery.getinfo"];
    [*(a1 + 64) invalidate];

    *(a1 + 64) = 0;
    [*(a1 + 72) invalidate];

    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    return;
  }

  if (*(a1 + 56) != 1)
  {
    if (*(a1 + 56))
    {
      return;
    }

    goto LABEL_11;
  }

  if (!*(a1 + 80))
  {
    if (gLogCategory_APAdvertiserRapportManager <= 40 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAdvertiserRapportManager, "void APAdvertiserRapportManager_startAdvertising(APAdvertiserRapportManagerRef)", 33554472, "Rapport manager start advertising.\n");
    }

    v3 = objc_alloc_init(MEMORY[0x277D441F8]);
    *(a1 + 72) = v3;
    [v3 setControlFlags:{objc_msgSend(v3, "controlFlags") | 0x1000}];
    [*(a1 + 72) setControlFlags:{objc_msgSend(*(a1 + 72), "controlFlags") | 2}];
    [*(a1 + 72) setServiceType:@"com.apple.airplay.discovery.service"];
    [*(a1 + 72) activate];
    v4 = objc_alloc_init(MEMORY[0x277D44160]);
    *(a1 + 64) = v4;
    if (v4)
    {
      v5 = *(a1 + 16);
      [v4 setControlFlags:{objc_msgSend(v4, "controlFlags") | 0x1000}];
      v6 = *(a1 + 64);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __APAdvertiserRapportManager_startAdvertising_block_invoke;
      v9[3] = &__block_descriptor_40_e88_v32__0__NSDictionary_8__NSDictionary_16___v____NSDictionary___NSDictionary___NSError__24l;
      v9[4] = v5;
      [v6 registerRequestID:@"com.apple.airplay.discovery.getinfo" options:0 handler:v9];
      v7 = *(a1 + 64);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __APAdvertiserRapportManager_startAdvertising_block_invoke_3;
      v8[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
      v8[4] = v5;
      [v7 activateWithCompletion:v8];
    }

    else
    {
      APSLogErrorAt();
    }
  }
}

void sub_23EA4C5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t _APAdvertiserRapportManager_lookupAndRetainActiveManagerWithKey(uint64_t a1)
{
  if (_APAdvertiserRapportManager_getActiveManagers_once != -1)
  {
    dispatch_once(&_APAdvertiserRapportManager_getActiveManagers_once, &__block_literal_global_10);
  }

  v2 = _APAdvertiserRapportManager_getActiveManagers_table;

  return MEMORY[0x282112740](v2, a1);
}

void __APAdvertiserRapportManagerInvalidate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 24) = 1;
  APAdvertiserRapportManager_stop(v1);
  if (*(v1 + 16))
  {
    if (_APAdvertiserRapportManager_getActiveManagers_once != -1)
    {
      dispatch_once(&_APAdvertiserRapportManager_getActiveManagers_once, &__block_literal_global_10);
    }

    FigCFWeakReferenceTableRemoveValue();
    *(v1 + 16) = 0;
  }
}

void APAdvertiserRapportManager_stop(uint64_t a1)
{
  if (gLogCategory_APAdvertiserRapportManager <= 40 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiserRapportManager, "OSStatus APAdvertiserRapportManager_stop(APAdvertiserRapportManagerRef)", 33554472, "Rapport manager stop.\n");
  }

  if (*(a1 + 56))
  {
    *(a1 + 56) = 0;

    APAdvertiserRapportManager_update(a1);
  }
}

void __APAdvertiserRapportManagerSetProperty_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  if (CFEqual(*(a1 + 48), @"deviceID"))
  {
    if (v3 && (v4 = CFGetTypeID(v3), v4 == CFStringGetTypeID()))
    {
      v5 = *(v2 + 48);
      *(v2 + 48) = v3;
      CFRetain(v3);
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = 0;
    }

    else
    {
      APSLogErrorAt();
      v6 = -6705;
    }
  }

  else
  {
    v6 = -72411;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
}

uint64_t APAdvertiserRapportManagerSetMode(uint64_t a1, __int16 a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAdvertiserRapportManagerSetMode_block_invoke;
  block[3] = &unk_278C607A8;
  block[4] = &v7;
  block[5] = a1;
  v6 = a2;
  dispatch_sync(v2, block);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __APAdvertiserRapportManagerSetMode_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(v2 + 56);
  if (v4 == v3)
  {
    goto LABEL_18;
  }

  if (gLogCategory_APAdvertiserRapportManager > 40)
  {
    goto LABEL_6;
  }

  if (gLogCategory_APAdvertiserRapportManager != -1)
  {
    goto LABEL_4;
  }

  if (_LogCategory_Initialize())
  {
    v4 = *(v2 + 56);
LABEL_4:
    v5 = APAdvertiserRapportManager_stringForMode(v4);
    v6 = APAdvertiserRapportManager_stringForMode(v3);
    LogPrintF(&gLogCategory_APAdvertiserRapportManager, "OSStatus APAdvertiserRapportManager_setMode(APAdvertiserRapportManagerRef, APAdvertiserRapportMode)", 33554472, "Setting Rapport advertising mode %s -> %s\n", v5, v6);
  }

LABEL_6:
  if (v3 == 1)
  {
    if (gLogCategory_APAdvertiserRapportManager <= 40 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAdvertiserRapportManager, "OSStatus APAdvertiserRapportManager_start(APAdvertiserRapportManagerRef)", 33554472, "Rapport manager start\n");
    }

    if (*(v2 + 56) == 1)
    {
      APSLogErrorAt();
    }

    else
    {
      *(v2 + 56) = 1;
      APAdvertiserRapportManager_update(v2);
    }

    goto LABEL_18;
  }

  if (!v3)
  {
    APAdvertiserRapportManager_stop(v2);
LABEL_18:
    v7 = 0;
    goto LABEL_21;
  }

  if (gLogCategory_APAdvertiserRapportManager <= 90 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiserRapportManager, "OSStatus APAdvertiserRapportManager_setMode(APAdvertiserRapportManagerRef, APAdvertiserRapportMode)", 33554522, "Unrecognized Rapport advertiser mode %d.\n", v3);
  }

  v7 = -72413;
LABEL_21:
  *(*(*(a1 + 32) + 8) + 24) = v7;
}

const char *APAdvertiserRapportManager_stringForMode(int a1)
{
  if (!a1)
  {
    return "Disabled";
  }

  if (a1 == 1)
  {
    return "Enabled";
  }

  if (gLogCategory_APAdvertiserRapportManager <= 60 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiserRapportManager, "const char *APAdvertiserRapportManager_stringForMode(APAdvertiserRapportMode)", 33554492, "Unknown Rapport mode %d.\n", a1);
  }

  return "Unknown ";
}

uint64_t __APAdvertiserRapportManagerGetMode_block_invoke(uint64_t result)
{
  **(result + 48) = *(*(result + 40) + 56);
  *(*(*(result + 32) + 8) + 24) = 0;
  return result;
}

uint64_t __APAdvertiserRapportManagerDebugShow_block_invoke(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  if (*(v3 + 81))
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  DataBuffer_AppendF(v2, "Rapport: enabled=%s", v4);
  if (*(v3 + 56))
  {
    v5 = "enabled";
  }

  else
  {
    v5 = "disabled";
  }

  DataBuffer_AppendF(v2, " mode=%s", v5);
  if (*(v3 + 80))
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  result = DataBuffer_AppendF(v2, " advertising=%s", v6);
  *(*(a1[4] + 8) + 24) = 0;
  return result;
}

void sub_23EA4D8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APAdvertiserBTLEManagerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  gAPAdvertiserBTLEManagerTypeID = result;
  return result;
}

uint64_t APAdvertiserBTLEManagerSetProperty(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = [a1 internalQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __APAdvertiserBTLEManagerSetProperty_block_invoke;
  v9[3] = &unk_278C608F0;
  v9[4] = a1;
  v9[5] = &v10;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_23EA507E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__APAdvertiserBTLEManagerSetProperty_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setProperty:*(a1 + 48) withValue:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APAdvertiserBTLEManagerSetBTLEMode(void *a1, __int16 a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = [a1 internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAdvertiserBTLEManagerSetBTLEMode_block_invoke;
  block[3] = &unk_278C60918;
  block[4] = a1;
  block[5] = &v9;
  v8 = a2;
  dispatch_sync(v4, block);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_23EA508F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__APAdvertiserBTLEManagerSetBTLEMode_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setBTLEMode:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void *__APAdvertiserBTLEManagerGetBTLEMode_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) getBTLEMode:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void *__APAdvertiserBTLEManagerDebugShow_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) showDebugWithDataBuffer:*(a1 + 48) verbose:*(a1 + 56) != 0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void *__APAdvertiserBTLEManagerUpdatePreferences_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) updatePreferences];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APReceiverScreenSinkGetClassID()
{
  if (APReceiverScreenSinkGetClassID_once != -1)
  {
    dispatch_once(&APReceiverScreenSinkGetClassID_once, &__block_literal_global_5885);
  }

  return APReceiverScreenSinkGetClassID_classID;
}

uint64_t __APReceiverScreenSinkGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&APReceiverScreenSinkGetClassID_classDesc, ClassID, 1, &APReceiverScreenSinkGetClassID_classID);
}

uint64_t APReceiverScreenSinkGetTypeID()
{
  if (APReceiverScreenSinkGetClassID_once != -1)
  {
    dispatch_once(&APReceiverScreenSinkGetClassID_once, &__block_literal_global_5885);
  }

  return CMBaseClassGetCFTypeID();
}

void audioSession_handleMediaDataControlRequest_6044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v39 = 0;
  v11 = *(a6 + 40);
  if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_handleMediaDataControlRequest(APMediaDataControlServerRef, CFNumberRef, APMediaDataControlMessageType, uint64_t, CFDictionaryRef, CFTypeRef)", 33554482, "%@ Media Data Control Request: %C\n", *(v11 + 24), a3);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v13 = Mutable;
    if (a3 == 1634562925)
    {
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      v39 = APReceiverAudioSessionPlatformSetProperty(*v11, v21, @"RASP::AudioMode", v22, TypedValue);
      if (v39)
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    }

    if (a3 != 1936875892)
    {
      if (a3 != 1718839394)
      {
        v23 = -6714;
LABEL_21:
        v39 = v23;
        goto LABEL_34;
      }

      if (a5)
      {
        v14 = CFGetTypeID(a5);
        if (v14 == CFDictionaryGetTypeID())
        {
          if (CFDictionaryContainsKey(a5, @"flushFromTS") && CFDictionaryContainsKey(a5, @"flushFromSeq"))
          {
            CFDictionaryGetInt64Ranged();
            Int64Ranged = CFDictionaryGetInt64Ranged();
            v16 = 1;
          }

          else
          {
            Int64Ranged = 0;
            v16 = 0;
          }

          CFDictionaryGetInt64Ranged();
          v24 = CFDictionaryGetInt64Ranged();
          APSAudioTransportTimeMakeWithRTPTime();
          APSAudioTransportTimeMakeWithRTPTime();
          v39 = APReceiverAudioSessionBufferedFlushAudio(v11, v16, v38, Int64Ranged, v37, v24, 0);
          if (!v39)
          {
            goto LABEL_34;
          }

          goto LABEL_41;
        }
      }

LABEL_40:
      APSLogErrorAt();
      v23 = -6756;
      goto LABEL_21;
    }

    v30 = *MEMORY[0x277CEA038];
    *v38 = *MEMORY[0x277CEA038];
    v29 = *(MEMORY[0x277CEA038] + 12);
    *&v38[12] = v29;
    memset(v36, 0, sizeof(v36));
    if (!a5)
    {
      goto LABEL_40;
    }

    v17 = CFGetTypeID(a5);
    if (v17 != CFDictionaryGetTypeID())
    {
      goto LABEL_40;
    }

    v18 = CFDictionaryGetInt64Ranged();
    v31 = a4;
    if (v18 == 1)
    {
      CFDictionaryGetInt64Ranged();
      v19 = CFDictionaryContainsKey(a5, @"firstAudibleRTPTime");
      CFDictionaryGetInt64Ranged();
      v26 = CFDictionaryGetInt64Ranged();
      Int64 = CFDictionaryGetInt64();
      v28 = CFDictionaryGetInt64();
      v25 = CFDictionaryGetInt64Ranged();
      APSAudioTransportTimeMakeWithRTPTime();
      if (v19)
      {
        APSAudioTransportTimeMakeWithRTPTime();
        goto LABEL_29;
      }
    }

    else
    {
      APSAudioTransportTimeMakeWithRTPTime();
      v25 = 0;
      v26 = 0;
      Int64 = 0;
      v28 = 0;
    }

    v35[0] = v30;
    *(v35 + 12) = v29;
LABEL_29:
    v32[0] = v28;
    v32[1] = Int64;
    v33 = v26;
    v34 = v25;
    v39 = APReceiverAudioSessionBufferedSetRateAndAnchorTime(v11, v18, v37, v35, v32, v38, v36);
    if (v39)
    {
      CFDictionarySetInt64();
      a4 = v31;
    }

    else
    {
      a4 = v31;
      if (v18)
      {
        goto LABEL_34;
      }

      *v37 = *v38;
      *&v37[12] = *&v38[12];
      if (APSAudioTransportTimeIsValid())
      {
        CFDictionarySetInt64();
      }
    }

    if (v39)
    {
LABEL_41:
      APSLogErrorAt();
    }

LABEL_34:
    APMediaDataControlServerSendResponse(a1, a2, a4, v13, v39);
    CFRelease(v13);
    return;
  }

  APSLogErrorAt();

  APMediaDataControlServerSendResponse(a1, a2, a4, 0, -6728);
}

uint64_t APReceiverAudioSessionBufferedFlushAudio(uint64_t a1, int a2, _DWORD *a3, uint64_t a4, _DWORD *a5, uint64_t a6, _OWORD *a7)
{
  v11 = 4294895145;
  v12 = a3[1];
  v13 = a5[1];
  v34 = 0;
  *v33 = *MEMORY[0x277CEA038];
  *&v33[12] = *(MEMORY[0x277CEA038] + 12);
  if (!a1)
  {
    v11 = 4294895144;
LABEL_42:
    APSLogErrorAt();
    v23 = 1;
LABEL_32:
    if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      v29 = "WithinSampleRange";
      if (!a2)
      {
        v29 = "All";
      }

      LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedFlushAudio(void *, Boolean, APSAudioTransportTime, uint32_t, APSAudioTransportTime, uint32_t, APSAudioTransportTime *)", 33554482, "### %@ Flush Request (%s) ERROR (%d): from (%u / %u) to (%u / %u) count %d pktCount %u\n", *(a1 + 24), v29, v11, a4, a3[1], a6, a5[1], v23, *(a1 + 808));
    }

    return v11;
  }

  if (*a5 != 1 || a2 && *a3 != 1)
  {
    goto LABEL_42;
  }

  v16 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004002C94847uLL);
  if (!v16)
  {
    v11 = 4294895146;
    goto LABEL_42;
  }

  v18 = v16;
  v16[12] = a2;
  *(v16 + 13) = 0;
  v16[15] = 0;
  *(v16 + 4) = a4;
  *(v16 + 5) = v12;
  *(v16 + 6) = a6;
  *(v16 + 7) = v13;
  if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    v19 = "WithinSampleRange";
    if (!a2)
    {
      v19 = "All";
    }

    LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedFlushAudio(void *, Boolean, APSAudioTransportTime, uint32_t, APSAudioTransportTime, uint32_t, APSAudioTransportTime *)", 33554482, "%@ Flush (%s) Requested: from (%u / %u) to (%u / %u) pktCount %u\n", *(a1 + 24), v19, a4, a3[1], a6, a5[1], *(a1 + 808));
  }

  v20 = a6;
  v21 = a4;
  audioSession_sessionLock_6081(*(a1 + 1128), v17);
  v22 = *(a1 + 680);
  if (a2 && v22)
  {
    LODWORD(v23) = 0;
    do
    {
      v24 = v22;
      v22 = *v22;
      v23 = (v23 + 1);
    }

    while (v22);
    v25 = 0;
    *v24 = v18;
  }

  else
  {
    *(a1 + 680) = v18;
    v26 = audioSession_processFlushQueue(a1, &v34);
    if (v26)
    {
      v11 = v26;
      APSLogErrorAt();
      v25 = 0;
      v23 = 1;
      goto LABEL_21;
    }

    APSAudioTransportTimeMakeWithRTPTime();
    v23 = 1;
    v25 = 1;
  }

  v11 = 0;
  if (a7)
  {
    *a7 = *v33;
    *(a7 + 12) = *&v33[12];
  }

LABEL_21:
  audioSession_sessionUnlock_6083(*(a1 + 1128));
  if (v22)
  {
    do
    {
      v27 = *v22;
      free(v22);
      v22 = v27;
    }

    while (v27);
  }

  if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    v28 = "WithinSampleRange";
    if (!a2)
    {
      v28 = "All";
    }

    LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedFlushAudio(void *, Boolean, APSAudioTransportTime, uint32_t, APSAudioTransportTime, uint32_t, APSAudioTransportTime *)", 33554482, "%@ Flush (%s) enqueued: from (%u / %u) to (%u / %u) count %d pktCount %u\n", *(a1 + 24), v28, v18[4], v18[5], v18[6], v18[7], v23, *(a1 + 808));
  }

  a4 = v21;
  if (v25)
  {
    audioSession_logFlush(a1, v11, v18, *(a1 + 808));
  }

  a6 = v20;
  if (v11)
  {
    goto LABEL_32;
  }

  return v11;
}

uint64_t APReceiverAudioSessionBufferedSetRateAndAnchorTime(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, unint64_t *a5, _OWORD *a6, uint64_t a7)
{
  v64 = 0;
  if (!a1)
  {
    APSLogErrorAt();
    v33 = 4294895144;
    goto LABEL_67;
  }

  if (!*(a1 + 8))
  {
    v33 = 4294895143;
LABEL_62:
    APSLogErrorAt();
    goto LABEL_67;
  }

  if (*a3 != 1 || *a4 != 1 && (*v63 = *a4, *&v63[12] = *(a4 + 12), APSAudioTransportTimeIsValid()))
  {
    APSLogErrorAt();
    v33 = 4294895145;
LABEL_67:
    v46 = 1;
    if (a6)
    {
      goto LABEL_51;
    }

    goto LABEL_55;
  }

  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v14)
  {
    v33 = 4294895143;
    goto LABEL_62;
  }

  v16 = v14;
  v17 = &unk_27E37E000;
  if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    v58 = a6;
    v59 = a7;
    v57 = *(a1 + 24);
    v18 = a3[1];
    v19 = *(a4 + 4);
    *v63 = *a4;
    *&v63[12] = *(a4 + 12);
    IsValid = APSAudioTransportTimeIsValid();
    v21 = *(a5 + 4) + a5[1] * 5.42101086e-20;
    v22 = v16;
    v23 = *a5;
    v24 = APSGetFBOPropertyInt64();
    v25 = "YES";
    if (!v24)
    {
      v25 = "NO";
    }

    v56 = v23;
    v16 = v22;
    v55 = v19;
    v17 = &unk_27E37E000;
    v54 = v18;
    a6 = v58;
    a7 = v59;
    LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedSetRateAndAnchorTime(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "%@ SetRateAndAnchorTime inRate %u inRTP %u inFAS: %u (valid? %d) inNetworkTime %1.3f (id=%llu) ClockIsLocked: %s\n", v57, a2, v54, v55, IsValid, *&v21, v56, v25);
  }

  if (a2 >= 2)
  {
    APSLogErrorAt();
    v51 = v17[390];
    if (v51 <= 90 && (v51 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedSetRateAndAnchorTime(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime *, APSNetworkTime *)", 33554522, "### %@ Rate may only be 0 or 1: rate recieved: %1.3f\n", *(a1 + 24), a2);
    }

    v33 = 4294960591;
    goto LABEL_49;
  }

  if (a2 != 1)
  {
    goto LABEL_25;
  }

  if (!*(v16 + 752))
  {
    if (*(a1 + 40))
    {
      v27 = *(v16 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __APReceiverAudioSessionBufferedSetRateAndAnchorTime_block_invoke;
      block[3] = &__block_descriptor_tmp_6077;
      block[4] = v16;
      block[5] = a1;
      dispatch_sync(v27, block);
    }

    else
    {
      AirPlayReceiverSessionControl(v16, v15, @"handleMediaAudioResumedForSession", *(a1 + 32), 0, 0);
    }

    v28 = *(a1 + 1144);
    v60 = *a5;
    v61 = a5[2];
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v29)
    {
      *v63 = v60;
      *&v63[16] = v61;
      v30 = v29(v28, v63, &v64);
      if (!v30)
      {
        if (!APSGetFBOPropertyInt64())
        {
          v33 = 4294895143;
          APSLogErrorAt();
          v52 = v17[390];
          if (v52 <= 90 && (v52 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedSetRateAndAnchorTime(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime *, APSNetworkTime *)", 33554522, "%@ Cannot SetRateAndAnchorTime; IsLocked: NO.\n", *(a1 + 24), v53);
          }

          goto LABEL_49;
        }

LABEL_25:
        audioSession_sessionLock_6081(*(a1 + 1128), v15);
        *(a1 + 712) = 0;
        *(a1 + 724) = 0;
        *(a1 + 880) = a2;
        v31 = *a1;
        if (a2)
        {
          v32 = APReceiverAudioSessionPlatformControl(v31, @"RASP::StartAudioIO");
          if (v32)
          {
            v33 = v32;
LABEL_71:
            APSLogErrorAt();
            LODWORD(v43) = 0;
LABEL_45:
            audioSession_sessionUnlock_6083(*(a1 + 1128));
            v46 = v43 == 0;
            goto LABEL_50;
          }
        }

        else
        {
          v34 = APReceiverAudioSessionPlatformControl(v31, @"RASP::FlushAudio");
          if (v34)
          {
            v33 = v34;
            goto LABEL_71;
          }

          v35 = APReceiverAudioSessionPlatformControl(*a1, @"RASP::StopAudioIO");
          if (v35)
          {
            v33 = v35;
            goto LABEL_71;
          }
        }

        v36 = *(a1 + 728);
        if (v36)
        {
          v33 = AudioConverterReset(v36);
        }

        else
        {
          v33 = 0;
        }

        v37 = v64;
        *(a1 + 888) = v64;
        v38 = a5[2];
        *(a1 + 896) = *a5;
        *(a1 + 912) = v38;
        *(a1 + 920) = a3[1];
        *(a1 + 928) = 0;
        *(a1 + 936) = v37;
        *(a1 + 944) = 0;
        v39 = *a5;
        *(a1 + 968) = a5[2];
        *(a1 + 952) = v39;
        *(a1 + 976) = a3[1];
        *(a1 + 984) = 0;
        *(a1 + 1000) = *(a4 + 4);
        *v63 = *a4;
        *&v63[12] = *(a4 + 12);
        v40 = 0;
        *(a1 + 1004) = APSAudioTransportTimeIsValid();
        *(a1 + 872) = 1;
        *(a1 + 1016) = 0;
        *(a1 + 992) = 0;
        *(a1 + 1024) = 0;
        *(a1 + 1032) = 0;
        v41 = *(a1 + 584);
        v42 = *v41;
        if (*v41)
        {
          v43 = 0;
          if (v42 != v41)
          {
            v40 = *(v42 + 56);
            v43 = 1;
          }
        }

        else
        {
          v43 = 0;
        }

        v44 = v17[390];
        if (v44 <= 50 && (v44 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedSetRateAndAnchorTime(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "%@ SetRateAndAnchorTime inRate %u returning firstAvailableSampleTime %u (valid? %d)\n", *(a1 + 24), a2, v40, v43);
        }

        goto LABEL_45;
      }

      v33 = v30;
    }

    else
    {
      v33 = 4294954514;
    }

    APSLogErrorAt();
    v45 = v17[390];
    if (v45 <= 90 && (v45 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedSetRateAndAnchorTime(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime *, APSNetworkTime *)", 33554522, "%@ Net-to-Host time conversion error: %d\n", *(a1 + 24), v33);
    }

    goto LABEL_49;
  }

  v26 = v17[390];
  if (v26 <= 50 && (v26 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedSetRateAndAnchorTime(void *, uint32_t, APSAudioTransportTime, APSAudioTransportTime, APSNetworkTime, APSAudioTransportTime *, APSNetworkTime *)", 33554482, "%@ Session has been interrupted. Don't honor setRate(1.0).\n", *(a1 + 24));
  }

  v33 = 4294960587;
LABEL_49:
  v46 = 1;
LABEL_50:
  CFRelease(v16);
  if (a6)
  {
LABEL_51:
    if (v46)
    {
      v47 = MEMORY[0x277CEA038];
      *a6 = *MEMORY[0x277CEA038];
      v48 = *(v47 + 12);
    }

    else
    {
      APSAudioTransportTimeMakeWithRTPTime();
      *a6 = *v63;
      v48 = *&v63[12];
    }

    *(a6 + 12) = v48;
  }

LABEL_55:
  if (a7)
  {
    v49 = MEMORY[0x277CEA280];
    *a7 = *MEMORY[0x277CEA280];
    *(a7 + 16) = *(v49 + 16);
  }

  return v33;
}

uint64_t audioSession_sessionLock_6081(uint64_t result, uint64_t a2)
{
  if (!result || (v3 = FigSimpleMutexLock(), v2 = vars8, v3))
  {

    return APSLogErrorAt();
  }

  return v3;
}

uint64_t audioSession_sessionUnlock_6083(uint64_t result)
{
  if (!result || (v2 = FigSimpleMutexUnlock(), v1 = vars8, v2))
  {

    return APSLogErrorAt();
  }

  return v2;
}

uint64_t audioSession_processFlushQueue(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 680);
  if (v2 && !*(v2 + 8) && !*(v2 + 9))
  {
    if (*(v2 + 12))
    {
      v7 = *(v2 + 16);
      v8 = *(v2 + 20);
      v9 = *(v2 + 24);
      v34 = *(v2 + 28);
      if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_flushAudioWithinRange(APReceiverAudioSessionBufferedRef, uint32_t *)", 33554462, "%@ Flushing (withinSampleRange): from seq # %u / ts %u to seq # %u / ts %u\n", *(a1 + 24), v7, v8, v9, v34);
      }

      v12 = **(a1 + 584);
      if (*(v12 + 16))
      {
        if (gLogCategory_APReceiverAudioSessionBuffered <= 30)
        {
          v13 = *(v12 + 60);
          if (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_flushAudioWithinRange(APReceiverAudioSessionBufferedRef, uint32_t *)", 33554462, "%@ Flushing (withinSampleRange), currentBufferSeqNum = %d\n", *(a1 + 24), v13);
          }
        }
      }

      *(a1 + 696) = mach_absolute_time();
      v14 = *(a1 + 584);
      v15 = *v14;
      if (*v14 != v14)
      {
        v16 = 0;
        do
        {
          v17 = *v15;
          v18 = *(v15 + 15);
          if (((v7 - v18) & 0x800000) != 0 || ((v18 ^ v7) & 0xFFFFFF) == 0)
          {
            v20 = gLogCategory_APReceiverAudioSessionBuffered;
            if (!v16)
            {
              if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_flushAudioWithinRange(APReceiverAudioSessionBufferedRef, uint32_t *)", 33554462, "%@ FlushWithinRange Relinquishing audio memory currSeqNum = %u currTS = %u inFlushFromSeq = %u inFlushUntilSeq = %u inFlushFromTS = %u inFlushUntilTS = %u\n", *(a1 + 24), v18, *(v15[2] + 4), v7, v9, v8, v34);
              }

              v21 = APSContiguousAllocatorRelinquishBlockFromAddress();
              if (v21)
              {
                goto LABEL_93;
              }

              v20 = gLogCategory_APReceiverAudioSessionBuffered;
            }

            if (((v9 - v18) & 0x800000) != 0 || ((v18 ^ v9) & 0xFFFFFF) == 0)
            {
              if (v20 <= 40 && (v20 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_flushAudioWithinRange(APReceiverAudioSessionBufferedRef, uint32_t *)", 33554472, "%@ Packets still present after flush (first seq # %u ts %u)\n", *(a1 + 24), *(v15 + 15), *(v15[2] + 4));
              }

              break;
            }

            if (v20 <= 10 && (v20 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_flushAudioWithinRange(APReceiverAudioSessionBufferedRef, uint32_t *)", 33554442, "%@ Flushing receiver buffer: flushSeq %u flushTS %u count %u Seq # %u TS %u\n", *(a1 + 24), v9, v34, *(a1 + 808), v15[2] + 1, *(v15[2] + 4));
            }

            v15[5] = 0;
            v15[6] = 0;
            v15[4] = 0;
            v23 = *v15;
            v22 = v15[1];
            v23[1] = v22;
            *v22 = v23;
            *v15 = *(a1 + 592);
            *(a1 + 592) = v15;
            --*(a1 + 600);
            if (*(a1 + 480) <= APSContiguousAllocatorGetNextAvailableBlockSize())
            {
              audioSession_resumeNetworkReads(a1);
            }

            v16 = 1;
          }

          else
          {
            v19 = *(v15[2] + 4);
            if (v19 - v8 < 0 || gLogCategory_APReceiverAudioSessionBuffered > 30)
            {
              goto LABEL_45;
            }

            if (gLogCategory_APReceiverAudioSessionBuffered == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_45;
              }

              v19 = *(v15[2] + 4);
            }

            LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_flushAudioWithinRange(APReceiverAudioSessionBufferedRef, uint32_t *)", 33554462, "%@ inFlushFromSeq %u inFlushFromTS %u inFlushUntilSeq %u inFlushUntilTS %u curSeqNum %u curr->rtp->header.ts %u\n", *(a1 + 24), v7, v8, v9, v34, v18, v19);
          }

LABEL_45:
          v15 = v17;
        }

        while (v17 != v14);
      }

      if (a2)
      {
        *a2 = *(a1 + 716);
      }

LABEL_92:
      v3 = 0;
      *(*(a1 + 680) + 8) = 1;
      return v3;
    }

    v11 = *(v2 + 24);
    v10 = *(v2 + 28);
    if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_flushAll(APReceiverAudioSessionBufferedRef, uint32_t *)", 33554462, "%@ Flushing all packets until seq %u / ts %u\n", *(a1 + 24), v11, v10);
    }

    v24 = **(a1 + 584);
    if (*(v24 + 16))
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 30)
      {
        v25 = *(v24 + 60);
        if (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_flushAll(APReceiverAudioSessionBufferedRef, uint32_t *)", 33554462, "%@ Flushing audio buffer, currentBufferSeqNum = %d\n", *(a1 + 24), v25);
        }
      }
    }

    APReceiverAudioSessionPlatformControl(*a1, @"RASP::FlushAudio");
    *(a1 + 712) = 0;
    *(a1 + 808) = 0;
    v26 = *(a1 + 728);
    if (v26)
    {
      v3 = AudioConverterReset(v26);
    }

    else
    {
      v3 = 0;
    }

    *(a1 + 880) = 0;
    *(a1 + 1000) = 0;
    *(a1 + 1004) = 0;
    *(a1 + 696) = mach_absolute_time();
    v27 = *(a1 + 584);
    v28 = *v27;
    if (*v27 != v27)
    {
      v29 = *(v28 + 15);
      if (((v11 - v29) & 0x800000) == 0 && ((v29 ^ v11) & 0xFFFFFF) != 0)
      {
        while (1)
        {
          v30 = *v28;
          if (gLogCategory_APReceiverAudioSessionBuffered <= 10 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_flushAll(APReceiverAudioSessionBufferedRef, uint32_t *)", 33554442, "%@ Flushing receiver (flushAll) buffer: flushSeq %u flushTS %u count %u Seq # %u TS %u\n", *(a1 + 24), v11, v10, *(a1 + 808), v28[2] + 1, *(v28[2] + 4));
          }

          v31 = *(v28[2] + 4);
          if (v31 - v10 >= 0 && gLogCategory_APReceiverAudioSessionBuffered <= 30)
          {
            if (gLogCategory_APReceiverAudioSessionBuffered != -1)
            {
              goto LABEL_69;
            }

            if (_LogCategory_Initialize())
            {
              break;
            }
          }

LABEL_71:
          v21 = APSContiguousAllocatorRelinquishBlock();
          if (v21)
          {
LABEL_93:
            v3 = v21;
            APSLogErrorAt();
            goto LABEL_94;
          }

          v28[5] = 0;
          v28[6] = 0;
          v28[4] = 0;
          v33 = *v28;
          v32 = v28[1];
          v33[1] = v32;
          *v32 = v33;
          *v28 = *(a1 + 592);
          *(a1 + 592) = v28;
          --*(a1 + 600);
          if (*(a1 + 480) <= APSContiguousAllocatorGetNextAvailableBlockSize())
          {
            audioSession_resumeNetworkReads(a1);
          }

          if (v30 == v27)
          {
            v3 = 0;
            goto LABEL_85;
          }

          v3 = 0;
          v29 = *(v30 + 15);
          if (((v11 - v29) & 0x800000) == 0)
          {
            v28 = v30;
            if (((v29 ^ v11) & 0xFFFFFF) != 0)
            {
              continue;
            }
          }

          goto LABEL_80;
        }

        v31 = *(v28[2] + 4);
LABEL_69:
        LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_flushAll(APReceiverAudioSessionBufferedRef, uint32_t *)", 33554462, "%@ inFlushUntilSeq %u inFlushUntilTS %u curSeqNum %u curr->rtp->header.ts %u\n", *(a1 + 24), v11, v10, v29, v31);
        goto LABEL_71;
      }

      v30 = *v27;
LABEL_80:
      if (gLogCategory_APReceiverAudioSessionBuffered <= 40)
      {
        if (gLogCategory_APReceiverAudioSessionBuffered != -1)
        {
LABEL_82:
          LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_flushAll(APReceiverAudioSessionBufferedRef, uint32_t *)", 33554472, "%@ Packets still present after flush (first seq # %u ts %u)\n", *(a1 + 24), v29, *(v30[2] + 4));
          goto LABEL_85;
        }

        if (_LogCategory_Initialize())
        {
          v29 = *(v30 + 15);
          goto LABEL_82;
        }
      }
    }

LABEL_85:
    if (a2)
    {
      *a2 = *(a1 + 716);
    }

    if (v3)
    {
LABEL_94:
      APSLogErrorAt();
      return v3;
    }

    goto LABEL_92;
  }

  return 0;
}

uint64_t audioSession_logFlush(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  if (*(a3 + 12))
  {
    if (gLogCategory_APReceiverAudioSessionBuffered <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        if (*(a3 + 9))
        {
          v8 = "complete";
        }

        else
        {
          v8 = "honored";
        }

        return LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_logFlush(APReceiverAudioSessionBufferedRef, OSStatus, FlushQueueNode *, uint32_t)", 33554482, "%@ Flush (withinSampleRange) %s (Err = %d): from (%u / %u) to (%u / %u) pktCount %u\n", *(v7 + 24), v8, a2, *(a3 + 16), *(a3 + 20), *(a3 + 24), *(a3 + 28), a4);
      }
    }
  }

  else if (gLogCategory_APReceiverAudioSessionBuffered <= 50)
  {
    if (gLogCategory_APReceiverAudioSessionBuffered != -1 || (result = _LogCategory_Initialize(), result))
    {
      v9 = "complete";
      if (!*(a3 + 9))
      {
        v9 = "honored";
      }

      return LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_logFlush(APReceiverAudioSessionBufferedRef, OSStatus, FlushQueueNode *, uint32_t)", 33554482, "%@ Flush (All) %s (Err = %d): flushSeq %u flushTS %u count %u\n", *(v7 + 24), v9, a2, *(a3 + 24), *(a3 + 28), a4);
    }
  }

  return result;
}

uint64_t audioSession_resumeNetworkReads(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 1224))
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 20 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_resumeNetworkReads(APReceiverAudioSessionBufferedRef)", 33554452, "%@ Resuming network reads. Busy buffer node count = %d\n", *(v1 + 24), *(v1 + 600));
      }

      *(v1 + 1224) = 1;
      result = SendSelfConnectedLoopbackMessage();
      if (result)
      {

        return APSLogErrorAt();
      }
    }
  }

  return result;
}

void APReceiverAudioSessionBufferedFinalize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1227))
  {
    if (gLogCategory_APReceiverAudioSessionBuffered <= 90 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void APReceiverAudioSessionBufferedFinalize(void *)", 33554522, "### %@ Packet processor is started in finalize, forcing crash\n", *(a1 + 24));
    }

    CFRelease(0);
  }

  if (*(a1 + 80))
  {
    SendSelfConnectedLoopbackMessage();
    pthread_join(*(a1 + 72), 0);
    *(a1 + 80) = 0;
  }

  v3 = *(a1 + 48);
  if ((v3 & 0x80000000) == 0)
  {
    if (close(v3) && *__error())
    {
      __error();
    }

    *(a1 + 48) = -1;
  }

  if (*(a1 + 56))
  {
    NetSocket_Delete();
    *(a1 + 56) = 0;
  }

  if (*(a1 + 1128))
  {
    FigSimpleMutexDestroy();
    *(a1 + 1128) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 40) = 0;
  }

  v6 = *(a1 + 1280);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 1280) = 0;
  }

  v7 = *(a1 + 1144);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 1144) = 0;
  }

  v8 = *(a1 + 1184);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 1184) = 0;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 8) = 0;
  }

  *(a1 + 456) = 0;
  v10 = *(a1 + 512);
  if (v10)
  {
    free(v10);
    *(a1 + 512) = 0;
  }

  v11 = *(a1 + 608);
  if (v11)
  {
    free(v11);
    *(a1 + 608) = 0;
  }

  v12 = *(a1 + 640);
  if (v12)
  {
    free(v12);
    *(a1 + 640) = 0;
  }

  v13 = *(a1 + 488);
  if (v13)
  {
    free(v13);
    *(a1 + 488) = 0;
  }

  v14 = *(a1 + 624);
  if (v14)
  {
    free(v14);
    *(a1 + 624) = 0;
  }

  v15 = *(a1 + 728);
  if (v15)
  {
    AudioConverterDispose(v15);
    *(a1 + 728) = 0;
  }

  *(a1 + 808) = 0;
  v16 = *(a1 + 648);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 1136);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 1136) = 0;
  }

  v18 = *(a1 + 680);
  if (v18)
  {
    do
    {
      v19 = *v18;
      free(v18);
      *(a1 + 680) = v19;
      v18 = v19;
    }

    while (v19);
  }

  if (*(a1 + 16))
  {
    *(a1 + 16) = 0;
    if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void APReceiverAudioSessionBufferedFinalize(void *)", 33554482, "%@ Audio session torn down\n", *(a1 + 24));
    }
  }

  AES_CBCFrame_Final();
  v20 = *(a1 + 1192);
  if (v20)
  {
    dispatch_release(v20);
    *(a1 + 1192) = 0;
  }

  v21 = *(a1 + 1240);
  if (v21)
  {
    dispatch_release(v21);
    *(a1 + 1240) = 0;
  }

  v22 = *(a1 + 656);
  if (v22)
  {
    free(v22);
  }

  v23 = *(a1 + 1264);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 1264) = 0;
  }

  if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void APReceiverAudioSessionBufferedFinalize(void *)", 33554482, "%@ APReceiverAudioSessionBuffered finalized\n", *(a1 + 24));
  }

  v24 = *(a1 + 24);
  if (v24)
  {
    CFRelease(v24);
  }

  free(a1);
}

uint64_t APReceiverAudioSessionBufferedReadAudio(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unint64_t a5)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  audioSession_sessionLock_6081(*(a1 + 1128), a2);
  if (!*(a1 + 8))
  {
    goto LABEL_23;
  }

  if (!*(a1 + 880))
  {
    goto LABEL_23;
  }

  if (mach_absolute_time() <= *(a1 + 992))
  {
    goto LABEL_23;
  }

  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v7)
  {
    goto LABEL_23;
  }

  v189 = v7;
  v8 = (a1 + 896);
  ++*(a1 + 1008);
  __y = 0;
  v196 = 0;
  v197 = 0;
  v9 = 3;
  while (1)
  {
    v193 = 0uLL;
    v194 = 0;
    v10 = *(a1 + 1144);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v11 || v11(v10, a3, &__y))
    {
LABEL_19:
      APSLogErrorAt();
      goto LABEL_20;
    }

    v12 = __y;
    if (__y == *v8)
    {
      break;
    }

    v13 = *(a1 + 1144);
    v14 = *(a1 + 936);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v15 || v15(v13, v14, &v193))
    {
      goto LABEL_19;
    }

    *v8 = v193;
    *(a1 + 912) = v194;
    v16 = *(a1 + 936);
    *(a1 + 888) = v16;
    v17 = *(a1 + 976);
    *(a1 + 920) = v17;
    v18 = *(a1 + 984);
    *(a1 + 928) = v18;
    if (gLogCategory_APReceiverAudioSessionBuffered > 40)
    {
      goto LABEL_16;
    }

    if (gLogCategory_APReceiverAudioSessionBuffered == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v16 = *(a1 + 888);
      v17 = *(a1 + 920);
      v18 = *(a1 + 928);
    }

    LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_convertHostTimeToNetworkTimeOnAnchorTimeline(APReceiverAudioSessionBufferedRef, uint64_t, APSNetworkTime *)", 33554472, "%@ Updating anchor time to host: %llu; net: %1.3f(%llu); rtp: %1.3f (%u)\n", *(a1 + 24), v16, *(a1 + 912) + *(a1 + 904) * 5.42101086e-20, *(a1 + 896), v18 + v17, v17);
LABEL_16:
    if (!--v9)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 40)
      {
        v19 = v189;
        if (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_convertHostTimeToNetworkTimeOnAnchorTimeline(APReceiverAudioSessionBufferedRef, uint64_t, APSNetworkTime *)", 33554472, "### %@ Error updating our anchor to a consistent GM on clock %@\n", *(a1 + 24), *(a1 + 1144));
        }

        goto LABEL_21;
      }

LABEL_20:
      v19 = v189;
LABEL_21:
      APSLogErrorAt();
      goto LABEL_22;
    }
  }

  v27 = *(a1 + 876);
  v28 = *(a1 + 872);
  v29 = *(a1 + 1016);
  v30 = *(a1 + 920);
  v31 = *(a1 + 904);
  v186 = v197;
  v184 = v196;
  v32 = v196 >= v31;
  v33 = v196 - v31;
  v34 = !v32;
  v35 = *(a1 + 928);
  *&v36 = v33;
  LODWORD(v36) = *(a1 + 92);
  v37 = ((v197 - *(a1 + 912) - v34) + v33 * 5.42101086e-20) * v36;
  v38 = v30 + v37;
  v39 = v35 + modf(v37, &__y);
  v40 = v38 - 1;
  v41 = v39 + 1.0;
  if (v39 >= 0.0)
  {
    v41 = v39;
    v40 = v30 + v37;
  }

  if (v39 > 1.0)
  {
    v42 = v39 + -1.0;
  }

  else
  {
    v42 = v41;
  }

  if (v39 > 1.0)
  {
    v43 = v38 + 1;
  }

  else
  {
    v43 = v40;
  }

  v183 = v29;
  v44 = a2 - v29;
  if (v43 - v44 >= 0)
  {
    v45 = v43 - v44;
  }

  else
  {
    v45 = v44 - v43;
  }

  if (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation <= 30 && (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedSkewCalculation, "OSStatus APReceiverAudioSessionBufferedSkewCalculationContextPerformCalculation(APReceiverAudioSessionBufferedSkewCalculationContext *, APSNetworkTime, uint32_t)", 33554462, "Process SetRate Skew: (localRTP = %u) - (shouldBeRTP = %u) == (sampleOff = %u)\n", v44, v43, v45);
  }

  if (v45 >= v27)
  {
    v159 = a2 - v43;
    if (v28)
    {
LABEL_259:
      v19 = v189;
      v160 = v184;
    }

    else
    {
      v19 = v189;
      if (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation > 30)
      {
        v162 = 0;
        v163 = 1;
        v161 = 0.0;
        v160 = v184;
        goto LABEL_273;
      }

      if (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedSkewCalculation, "OSStatus APReceiverAudioSessionBufferedSkewCalculationContextPerformCalculation(APReceiverAudioSessionBufferedSkewCalculationContext *, APSNetworkTime, uint32_t)", 33554462, "Too many samples to skew: %u\n", v45);
      }

      v160 = v184;
    }

    v161 = 0.0;
    if (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation <= 30 && (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedSkewCalculation, "OSStatus APReceiverAudioSessionBufferedSkewCalculationContextPerformCalculation(APReceiverAudioSessionBufferedSkewCalculationContext *, APSNetworkTime, uint32_t)", 33554462, "Update rtpOffsetActive: %u (%u - %u)\n", v159, a2, v43);
    }

    v162 = 0;
    v163 = 1;
    goto LABEL_273;
  }

  if (v28)
  {
    v159 = a2 - v43;
    goto LABEL_259;
  }

  v161 = v37 + v35 + v30 - v44;
  v160 = v184;
  if (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation > 30)
  {
    v163 = 0;
    v162 = 1;
    v19 = v189;
    v159 = v183;
  }

  else
  {
    v19 = v189;
    v159 = v183;
    if (gLogCategory_APReceiverAudioSessionBufferedSkewCalculation != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedSkewCalculation, "OSStatus APReceiverAudioSessionBufferedSkewCalculationContextPerformCalculation(APReceiverAudioSessionBufferedSkewCalculationContext *, APSNetworkTime, uint32_t)", 33554462, "Samples to Skew: %1.3f\n", v161);
    }

    v163 = 0;
    v162 = 1;
  }

LABEL_273:
  if (*(a1 + 1036))
  {
    *(a1 + 1104) = v161;
    CFObjectSetPropertyDouble();
  }

  else
  {
    PIDUpdate();
    v165 = v164 * 1000.0;
    *(a1 + 1104) = v165;
    if (v165 >= 1.0)
    {
      v166 = *(a1 + 92);
      v167 = v165;
      if (v165 < 0)
      {
        v167 = -v167;
      }

      v168 = 1000 * v166 / v167;
      v169 = v166 / 0x3E8;
      if (v168 > v169)
      {
        v169 = v168;
      }

      *(a1 + 1116) = v169;
      *(a1 + 1037) = 1;
    }

    else
    {
      *(a1 + 1037) = 0;
    }
  }

  *(a1 + 872) = 0;
  *(a1 + 936) = a3;
  *(a1 + 944) = a2;
  *(a1 + 952) = v12;
  *(a1 + 960) = v160;
  *(a1 + 968) = v186;
  *(a1 + 976) = v43;
  *(a1 + 984) = v42;
  *(a1 + 1016) = v159;
  if ((v162 & 1) == 0)
  {
    *(a1 + 772) = v163;
    ++*(a1 + 1032);
    *(a1 + 1048) = 0;
    *(a1 + 1080) = 0;
  }

  v170 = fabs(v161);
  if (v170 > *(a1 + 1024))
  {
    *(a1 + 1024) = v170;
  }

  v171 = mach_absolute_time();
  *(a1 + 992) = v171 + UpTicksPerSecond();
LABEL_22:
  CFRelease(v19);
LABEL_23:
  v20 = *(a1 + 100);
  v21 = (a2 - *(a1 + 416));
  v22 = v21 + (a5 / v20);
  if (!*(a1 + 712) && gLogCategory_APReceiverAudioSessionBufferedNodes <= 40)
  {
    v23 = *(a1 + 584);
    v25 = *v23;
    v24 = v23[1];
    if (gLogCategory_APReceiverAudioSessionBufferedNodes != -1 || _LogCategory_Initialize())
    {
      if (v25)
      {
        v26 = *(v25 + 16);
        if (v26)
        {
          v26 = *(v26 + 4);
        }
      }

      else
      {
        v26 = 0;
      }

      if (v24)
      {
        v46 = *(v24 + 16);
        if (v46)
        {
          v46 = *(v46 + 4);
        }
      }

      else
      {
        v46 = 0;
      }

      LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedNodes, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554472, "%@ busyNodeCount %d buf [%u %u] Read [%u %u] or [%u %u] ms\n", *(a1 + 24), *(a1 + 600), v26, v46, v21, v22, (1000 * v21) / *(a1 + 92), (1000 * v22) / *(a1 + 92));
    }
  }

  if (!*(a1 + 880))
  {
LABEL_216:
    v150 = 0;
    v49 = 1;
    goto LABEL_217;
  }

  if (*(a1 + 872))
  {
    if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554462, "### %@ Offset Recalculation required\n", *(a1 + 24));
    }

    goto LABEL_216;
  }

  v47 = *(a1 + 584);
  v48 = *v47;
  v49 = 1;
  v187 = v47;
  if (*v47 == v47)
  {
    v150 = 0;
    goto LABEL_217;
  }

  v178 = 0;
  v50 = 0;
  v185 = 0;
  v176 = (v22 + 441000);
  v175 = &a4[a5];
  v180 = v20;
  while (2)
  {
    v190 = *v48;
    v51 = *(v48 + 14);
    v52 = *(a1 + 1016);
    v53 = *(a1 + 672);
    v54 = (v53 + v52 + v51);
    v55 = *(a1 + 1000);
    v56 = (v53 + v52 + v55);
    if (gLogCategory_APReceiverAudioSessionBuffered <= 10)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered != -1)
      {
        goto LABEL_67;
      }

      v58 = (v53 + v52 + v51);
      v59 = _LogCategory_Initialize();
      v54 = v58;
      if (v59)
      {
        v52 = *(a1 + 1016);
        v53 = *(a1 + 672);
        v55 = *(a1 + 1000);
LABEL_67:
        v57 = v54;
        LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554442, "%@ inRTPTime = %u sampleTimeOffset = %u nowTS = %u inSize = %u bytesPerUnit = %u limTS = %u maxTS = %u pktTS = %u rtpOffsetActive = %u audioLatencyOffset = %u srcTS = %u fasValid = %d fasTS = %u fasAdjustedTS = %u\n", *(a1 + 24), a2, *(a1 + 416), v21, a5, v20, v22, v176, v51, v52, v53, v54, *(a1 + 1004), v55, v56);
        v54 = v57;
      }
    }

    if (v54 - v22 >= 0)
    {
      goto LABEL_292;
    }

    if (!*(a1 + 1004) || v56 - v22 < 0)
    {
      v60 = *(v48 + 15);
      if (*(a1 + 712))
      {
        v61 = (v60 - *(a1 + 720)) & 0xFFFFFF;
        if (v61 >= 2)
        {
          v62 = v61 - 1;
          v63 = (HIDWORD(qword_27E37EED8) + v62);
          HIDWORD(qword_27E37EED8) += v62;
          v64 = *(a1 + 1184);
          if (v64)
          {
            atomic_fetch_add_explicit((v64 + 64), v62, memory_order_relaxed);
          }

          if (gLogCategory_APReceiverAudioSessionBufferedStats <= 30)
          {
            v65 = v54;
            if (gLogCategory_APReceiverAudioSessionBufferedStats != -1)
            {
              goto LABEL_78;
            }

            v67 = v20;
            v68 = v60;
            v69 = _LogCategory_Initialize();
            v60 = v68;
            v20 = v67;
            v54 = v65;
            if (v69)
            {
              v63 = HIDWORD(qword_27E37EED8);
LABEL_78:
              v174 = v62;
              v66 = v60;
              LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedStats, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554462, "### %@ Unrecovered packets: %u-%u (%u) %u total\n", *(a1 + 24), (*(a1 + 720) + 1) & 0xFFFFFF, v60, v174, v63);
              v60 = v66;
              v54 = v65;
            }
          }
        }
      }

      *(a1 + 716) = v51;
      *(a1 + 720) = v60;
      *(a1 + 712) = 1;
      v71 = v48 + 4;
      v70 = v48[4];
      v72 = v48[2];
      if (v48[3] == v72 + 12)
      {
        *(a1 + 1256) += v70;
        v73 = *(a1 + 656);
        if (v73)
        {
          v177 = v60;
          v179 = v21;
          v74 = v22;
          *v73 = vrev32_s8(*(v72 + 4));
          v75 = *(a1 + 640);
          v76 = *(a1 + 656);
          v77 = *(a1 + 664);
          v78 = v48[3];
          v79 = v48[4];
          v80 = *(a1 + 616);
          __y = 0;
          v181 = v54;
          if (*(a1 + 448))
          {
            if (*(a1 + 88) == 1)
            {
LABEL_92:
              if (v80 >= v79)
              {
                v85 = audioSession_decryptPacket(a1, v76, v77, v78, v79, *(a1 + 608), &__y);
                if (!v85)
                {
                  v84 = __y;
                  Swap16Mem();
                  goto LABEL_95;
                }

                v87 = v85;
LABEL_204:
                APSLogErrorAt();
LABEL_205:
                v22 = v74;
                v20 = v180;
LABEL_99:
                v21 = v179;
                bzero(*(a1 + 656), *(a1 + 664));
                v70 = v185;
                v48[3] = *(a1 + 640);
                v48[4] = v185;
                if (!v87 && v185)
                {
                  v54 = v181;
                  v60 = v177;
                  goto LABEL_102;
                }

                if (gLogCategory_APReceiverAudioSessionBuffered <= 40)
                {
                  v90 = v185;
                  if (gLogCategory_APReceiverAudioSessionBuffered != -1)
                  {
                    goto LABEL_115;
                  }

                  if (_LogCategory_Initialize())
                  {
                    v90 = *v71;
LABEL_115:
                    LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554472, "%@ Decoding packet failure: err = %d seq: %d destDataSize = %d bufferSize = %d\n", *(a1 + 24), v87, *(v48 + 15), *(a1 + 616), v90);
                  }
                }

                bzero(*(a1 + 640), *(a1 + 616));
                if (APSContiguousAllocatorRelinquishBlock())
                {
                  goto LABEL_305;
                }

                v48[5] = 0;
                v48[6] = 0;
                *v71 = 0;
                v97 = *v48;
                v96 = v48[1];
                v97[1] = v96;
                *v96 = v97;
                *v48 = *(a1 + 592);
                *(a1 + 592) = v48;
                --*(a1 + 600);
                if (*(a1 + 480) > APSContiguousAllocatorGetNextAvailableBlockSize())
                {
LABEL_194:
                  v50 = 1;
                  v48 = v190;
                  if (v190 == v187)
                  {
                    goto LABEL_292;
                  }

                  continue;
                }

LABEL_132:
                audioSession_resumeNetworkReads(a1);
                goto LABEL_194;
              }

LABEL_202:
              APSLogErrorAt();
              v87 = 4294960553;
              goto LABEL_205;
            }
          }

          else
          {
            v81 = *(a1 + 88);
            if (!*(a1 + 112) || v81 == 1)
            {
              if (*(a1 + 112))
              {
                goto LABEL_92;
              }

              if (v81 == 1)
              {
                if (v79 > v80)
                {
                  goto LABEL_202;
                }

                Swap16Mem();
                v84 = v79;
              }

              else
              {
                v102 = audioSession_audioDecoderDecodeFrame_6154(a1, v78, v79, *(a1 + 608), v80, &__y);
                if (v102)
                {
                  v87 = v102;
                  goto LABEL_204;
                }

                v103 = __y;
                if (__y > v80)
                {
                  goto LABEL_202;
                }

                memcpy(v75, *(a1 + 608), __y);
                v84 = v103;
              }

LABEL_95:
              v20 = v180;
              v185 = v84;
              if (v84)
              {
                v86 = 10000 * v79 / v84;
              }

              else
              {
                LODWORD(v86) = 0;
              }

              v22 = v74;
              v87 = 0;
              *(a1 + 768) = (v86 - *(a1 + 768) + (*(a1 + 768) << 6)) >> 6;
              goto LABEL_99;
            }
          }

          if (v80 >= v79)
          {
            v82 = audioSession_decryptPacket(a1, v76, v77, v78, v79, *(a1 + 608), &__y);
            if (v82)
            {
              v87 = v82;
            }

            else
            {
              v79 = __y;
              __y = 0;
              v83 = audioSession_audioDecoderDecodeFrame_6154(a1, *(a1 + 608), v79, v75, v80, &__y);
              if (!v83)
              {
                v84 = __y;
                goto LABEL_95;
              }

              v87 = v83;
            }

            goto LABEL_204;
          }

          goto LABEL_202;
        }

        APSLogErrorAt();
LABEL_305:
        APSLogErrorAt();
        v49 = 0;
LABEL_293:
        v150 = v178;
        goto LABEL_217;
      }

LABEL_102:
      v88 = v54 + (v70 / v20);
      if (*(a1 + 1004) && v88 - v56 < 0)
      {
        if (gLogCategory_APReceiverAudioSessionBuffered <= 10 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554442, "%@ endTS %u < fasAdjustedTS %u; discarding", *(a1 + 24), v88, v56);
        }

        if (APSContiguousAllocatorRelinquishBlock())
        {
          goto LABEL_305;
        }

LABEL_131:
        v48[5] = 0;
        v48[6] = 0;
        *v71 = 0;
        v101 = *v48;
        v100 = v48[1];
        v101[1] = v100;
        *v100 = v101;
        *v48 = *(a1 + 592);
        *(a1 + 592) = v48;
        --*(a1 + 600);
        if (*(a1 + 480) > APSContiguousAllocatorGetNextAvailableBlockSize())
        {
          goto LABEL_194;
        }

        goto LABEL_132;
      }

      if (v88 - v21 > 0)
      {
        if (*(a1 + 1004))
        {
          v182 = v54;
          if (v21 - v56 < 0)
          {
            v93 = ((v56 - v21) * v20);
            v94 = v22;
            v95 = v60;
            bzero(a4, v93);
            v60 = v95;
            v22 = v94;
            a4 += v93;
            v20 = v180;
            v21 = v56;
          }

          else
          {
            if (gLogCategory_APReceiverAudioSessionBufferedStats <= 10)
            {
              if (gLogCategory_APReceiverAudioSessionBufferedStats != -1 || (v104 = v20, v105 = v60, v106 = _LogCategory_Initialize(), v60 = v105, v20 = v104, v106))
              {
                v173 = v56;
                v89 = v60;
                LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedStats, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554442, "%@ Clearing firstAudibleSampleRTPTimeIsValid: nowTS = %u fasAdjustedTS = %u\n", *(a1 + 24), v21, v173);
                v60 = v89;
              }
            }

            *(a1 + 1004) = 0;
          }

          v54 = v182;
        }

        if (v21 - v54 < 0)
        {
          v107 = v54;
          v108 = (v54 - v21);
          if ((*(a1 + 724) || *(a1 + 1228)) && gLogCategory_APReceiverAudioSessionBufferedStats <= 40)
          {
            if (gLogCategory_APReceiverAudioSessionBufferedStats != -1 || (v109 = v60, v110 = _LogCategory_Initialize(), v60 = v109, v20 = v180, v110))
            {
              LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedStats, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554472, "%@ Concealed %d unit gap (%u vs %u), curr seq %u curr ts %u\n", *(a1 + 24), v108, v21, v107, v60, v51);
            }
          }

          v111 = (v108 * v20);
          bzero(a4, v111);
          a4 += v111;
          v178 = (v178 + 1);
          v54 = v107;
          v21 = v107;
        }

        if (v54 - v21 >= 0)
        {
          v112 = v48[3];
LABEL_160:
          if (*(a1 + 1037) && v112 == (v48[2] + 12))
          {
            v121 = *(a1 + 1104);
            if (v121 > 0.0)
            {
              v122 = *v71;
              v123 = *(a1 + 100);
              v124 = *v71 / v123;
              v125 = v112;
              if (v124 >= 1)
              {
                v126 = &v112[4 * v124];
                v125 = v112;
                v127 = v112;
                do
                {
                  v128 = *(a1 + 1112) + 1;
                  *(a1 + 1112) = v128;
                  if (v128 >= *(a1 + 1116))
                  {
                    *(a1 + 1112) = 0;
                  }

                  else
                  {
                    *v125 = *v127;
                    v125 += 4;
                  }

                  v127 += 4;
                }

                while (v127 < v126);
                v123 = *(a1 + 100);
              }

              v129 = v125 - v112;
              v130 = (v122 - (v125 - v112)) / v123;
              v48[4] = v125 - v112;
              *(v48 + 14) += v130;
              v131 = *(a1 + 1016) - v130;
              goto LABEL_179;
            }

            v129 = *v71;
            if (v121 < 0.0)
            {
              v132 = v54;
              v133 = *(a1 + 624);
              memcpy(v133, v112, v129);
              v134 = *(a1 + 100);
              v112 = v48[3];
              v135 = v48[4];
              v136 = v112;
              if ((v135 / v134) >= 1)
              {
                v137 = &v133[v135 / v134];
                v136 = v48[3];
                do
                {
                  v138 = *v133;
                  v139 = *(a1 + 1112) + 1;
                  *(a1 + 1112) = v139;
                  if (v139 >= *(a1 + 1116))
                  {
                    *(a1 + 1112) = 0;
                    *v136 = v138;
                    v136 += 4;
                  }

                  *v136 = v138;
                  v136 += 4;
                  ++v133;
                }

                while (v133 < v137);
                v134 = *(a1 + 100);
              }

              v129 = v136 - v112;
              v140 = (v136 - v112 - v135) / v134;
              v48[4] = v136 - v112;
              *(v48 + 14) -= v140;
              v131 = *(a1 + 1016) + v140;
              v54 = v132;
LABEL_179:
              *(a1 + 1016) = v131;
            }

            LODWORD(v88) = v54 + v129 / v20;
          }

          v141 = v88 - v22;
          if (v88 - v22 <= 0)
          {
            v88 = v88;
          }

          else
          {
            v88 = v22;
          }

          v142 = v88 - v54;
          v143 = ((v88 - v54) * v20);
          v144 = *(a1 + 640);
          v145 = *(a1 + 616);
          if (&v112[v143] > v144 + v145 && gLogCategory_APReceiverAudioSessionBuffered <= 40)
          {
            if (gLogCategory_APReceiverAudioSessionBuffered != -1)
            {
              goto LABEL_187;
            }

            v146 = v54;
            v147 = _LogCategory_Initialize();
            v112 = v48[3];
            if (v147)
            {
              v144 = *(a1 + 640);
              v145 = *(a1 + 616);
              v54 = v146;
LABEL_187:
              LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554472, "### %@ Render ERROR Packet boundaries: curr->ptr = %p curr->size = %u audioBuffer = %p audioBufferSize = %u size = %u srcTS = %u endTS = %us\n", *(a1 + 24), v112, v48[4], v144, v145, v143, v54, v88);
              v112 = v48[3];
            }
          }

          memcpy(a4, v112, v143);
          a4 += v143;
          v21 = (v142 + v21);
          if (v141 >= 1)
          {
            v49 = 0;
            v172 = v48[4] - v143;
            v48[3] += v143;
            v48[4] = v172;
            *(v48 + 14) += v142;
          }

          else
          {
            bzero(*(a1 + 640), *(a1 + 616));
            if (!APSContiguousAllocatorRelinquishBlock())
            {
              v48[5] = 0;
              v48[6] = 0;
              *v71 = 0;
              v149 = *v48;
              v148 = v48[1];
              *(v149 + 8) = v148;
              *v148 = v149;
              *v48 = *(a1 + 592);
              *(a1 + 592) = v48;
              --*(a1 + 600);
              v20 = v180;
              if (*(a1 + 480) <= APSContiguousAllocatorGetNextAvailableBlockSize())
              {
                audioSession_resumeNetworkReads(a1);
              }

              if (a4 < v175)
              {
                goto LABEL_194;
              }

              v50 = 1;
LABEL_292:
              v49 = v50 == 0;
              goto LABEL_293;
            }

            APSLogErrorAt();
            v49 = 0;
          }

          LODWORD(v20) = v180;
          goto LABEL_293;
        }

        v113 = ++dword_27E37EEE0;
        v114 = *(a1 + 1184);
        if (v114)
        {
          atomic_fetch_add_explicit((v114 + 68), 1u, memory_order_relaxed);
        }

        if (gLogCategory_APReceiverAudioSessionBufferedStats <= 40)
        {
          if (gLogCategory_APReceiverAudioSessionBufferedStats != -1)
          {
            goto LABEL_154;
          }

          v117 = v54;
          v118 = _LogCategory_Initialize();
          v54 = v117;
          if (v118)
          {
            v113 = dword_27E37EEE0;
LABEL_154:
            LODWORD(v115) = v21 - v54;
            if (v21 - v54 >= 0)
            {
              v115 = v115;
            }

            else
            {
              v115 = (v54 - v21);
            }

            v116 = v54;
            LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedStats, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554472, "%@ Dropped %d late units (%u vs %u), %u total\n", *(a1 + 24), v115, v54, v21, v113);
            LODWORD(v54) = v116;
          }
        }

        v119 = ((v21 - v54) * v20);
        v120 = v48[4];
        v112 = (v48[3] + v119);
        v48[3] = v112;
        v48[4] = v120 - v119;
        *(v48 + 14) += v21 - v54;
        v178 = (v178 + 1);
        v54 = v21;
        goto LABEL_160;
      }

      v91 = ++dword_27E37EEE0;
      v92 = *(a1 + 1184);
      if (v92)
      {
        atomic_fetch_add_explicit((v92 + 68), 1u, memory_order_relaxed);
      }

      if (gLogCategory_APReceiverAudioSessionBufferedStats <= 40)
      {
        if (gLogCategory_APReceiverAudioSessionBufferedStats != -1)
        {
          goto LABEL_120;
        }

        v98 = v60;
        v99 = v54;
        if (_LogCategory_Initialize())
        {
          v60 = v98;
          v54 = v99;
          v91 = dword_27E37EEE0;
LABEL_120:
          LogPrintF(&gLogCategory_APReceiverAudioSessionBufferedStats, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554472, "%@ Discarding late packet: seq %u ts %u-%u (%u ms), %u total\n", *(a1 + 24), v60, v21, v54, (1000 * (v21 - v54) + (*(a1 + 92) >> 1)) / *(a1 + 92), v91);
        }
      }

      if (APSContiguousAllocatorRelinquishBlock())
      {
        goto LABEL_305;
      }

      goto LABEL_131;
    }

    break;
  }

  v150 = v178;
  if (gLogCategory_APReceiverAudioSessionBuffered <= 10 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554442, "%@ fasAdjustedTS %u >= limTS %u; continuing", *(a1 + 24), v56, v22);
  }

  v49 = 0;
LABEL_217:
  if (*(a1 + 712))
  {
    *(a1 + 724) = 1;
  }

  if (v21 - v22 < 0)
  {
    bzero(a4, ((v22 - v21) * v20));
    v150 = (v150 + 1);
    if ((*(a1 + 724) || *(a1 + 1228)) && gLogCategory_APReceiverAudioSessionBuffered <= 40 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554472, "%@ Concealed %d units at end (ts=%u)\n", *(a1 + 24), (v22 - v21), v22);
    }
  }

  if (v49 || *(a1 + 680))
  {
    LODWORD(v150) = 0;
    goto LABEL_229;
  }

  if (v150 < 1)
  {
LABEL_229:
    *(a1 + 776) += v150;
  }

  else
  {
    if (*(a1 + 772))
    {
      LODWORD(v150) = 0;
      *(a1 + 772) = 0;
      goto LABEL_229;
    }

    v156 = (*(a1 + 776) + v150);
    *(a1 + 776) = v156;
    if (gLogCategory_APReceiverAudioSessionBuffered <= 40)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered != -1)
      {
        goto LABEL_246;
      }

      if (_LogCategory_Initialize())
      {
        v156 = *(a1 + 776);
LABEL_246:
        LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554472, "%@ Glitch: %d new, %u session\n", *(a1 + 24), v150, v156);
      }
    }
  }

  if (*(a1 + 712) && gLogCategory_APReceiverAudioSessionBufferedStats <= 50 && (gLogCategory_APReceiverAudioSessionBufferedStats != -1 || _LogCategory_Initialize()))
  {
    v151 = *(a1 + 708) - *(a1 + 716);
    if (byte_27E37EED0)
    {
      v152 = *(&gAirPlayAudioStats + 1) + *&gAirPlayAudioStats * (v151 - *(&gAirPlayAudioStats + 1));
    }

    else
    {
      v152 = v151;
      byte_27E37EED0 = 1;
    }

    *(&gAirPlayAudioStats + 1) = v152;
    v153 = *(a1 + 92);
    v154 = v153 >> 1;
    v155 = ((v153 >> 1) + v152 * 1000.0) / v153;
    if (gLogCategory_APReceiverAudioSessionBuffered <= 10)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered != -1)
      {
        goto LABEL_243;
      }

      if (_LogCategory_Initialize())
      {
        v153 = *(a1 + 92);
        v154 = v153 >> 1;
LABEL_243:
        LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_render(APReceiverAudioSessionBufferedRef, uint32_t, void *, size_t)", 33554442, "%@ RTP Buffer: %3d ms, %3.2f ms avg\n", *(a1 + 24), (v154 + 1000 * v151) / v153, *&v155);
      }
    }

    v157 = *(a1 + 1184);
    if (v157)
    {
      *(v157 + 56) = v155;
    }
  }

  audioSession_sessionUnlock_6083(*(a1 + 1128));
  return 0;
}

uint64_t audioSession_decryptPacket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (*(a1 + 112))
  {
    chacha20_poly1305_init_64x64();
    chacha20_poly1305_add_aad();
    a5 -= 24;
    v10 = chacha20_poly1305_decrypt();
    if (chacha20_poly1305_verify() + v10 != a5)
    {
      APSLogErrorAt();
      return 4294960534;
    }

    v11 = 0;
    v12 = a1 + 408;
    do
    {
      if (++*(v12 + v11))
      {
        v14 = 1;
      }

      else
      {
        v14 = v11 == 7;
      }

      ++v11;
    }

    while (!v14);
  }

  else
  {
    v15 = AES_CBCFrame_Update();
    if (v15)
    {
      v16 = v15;
      APSLogErrorAt();
      return v16;
    }
  }

  v16 = 0;
  *a7 = a5;
  return v16;
}

uint64_t audioSession_audioDecoderDecodeFrame_6154(void *inInputDataProcUserData, uint64_t a2, uint64_t a3, void *a4, UInt32 a5, void *a6)
{
  *&v11.mNumberBuffers = 1;
  *(inInputDataProcUserData + 92) = a2;
  *(inInputDataProcUserData + 93) = a2 + a3;
  ioOutputDataPacketSize = *(inInputDataProcUserData + 26);
  v11.mBuffers[0].mNumberChannels = *(inInputDataProcUserData + 24);
  v11.mBuffers[0].mDataByteSize = a5;
  v11.mBuffers[0].mData = a4;
  v8 = AudioConverterFillComplexBuffer(*(inInputDataProcUserData + 91), audioSession_audioDecoderDecodeCallback_6167, inInputDataProcUserData, &ioOutputDataPacketSize, &v11, 0);
  if (v8 == -6750)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    APSLogErrorAt();
  }

  else
  {
    *a6 = *(inInputDataProcUserData + 25) * ioOutputDataPacketSize;
  }

  return v9;
}

uint64_t audioSession_audioDecoderDecodeCallback_6167(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = *(a5 + 736);
  v6 = *(a5 + 744);
  if (v5 == v6)
  {
    *a2 = 0;
    return 4294960546;
  }

  else
  {
    result = 0;
    *a2 = 1;
    *a3 = 1;
    *(a3 + 8) = *(a5 + 96);
    *(a3 + 12) = v6 - v5;
    *(a3 + 16) = v5;
    *(a5 + 736) = v6;
    *(a5 + 752) = 0;
    *(a5 + 760) = 0;
    *(a5 + 764) = v6 - v5;
    *a4 = a5 + 752;
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedConvertProgressRTPTimeToSecond(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, double *a6, double a7, double a8)
{
  if (a1)
  {
    v14 = *(a1 + 716);
    if (!*(a1 + 712))
    {
      v14 = a3;
    }

    LODWORD(a8) = *(a1 + 92);
    v15 = *&a8;
    v16 = (v14 - a2) / v15;
    v17 = (a4 - a2) / v15;
    if (gLogCategory_APReceiverAudioSessionBuffered <= 40 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedConvertProgressRTPTimeToSecond(void *, uint32_t, uint32_t, uint32_t, double *, double *)", 33554472, "%@ Convert progress: %u / %u / %u --> %#{dur} of %#{dur}\n", *(a1 + 24), a2, a3, a4, v16, v17);
    }

    if (a5)
    {
      *a5 = v16;
    }

    result = 0;
    if (a6)
    {
      *a6 = v17;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895144;
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedSetSecurityInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294895144;
  }

  v4 = a1 + 424;
  AES_CBCFrame_Final();
  *(a1 + 448) = 0;
  v5 = AES_CBCFrame_Init();
  if (v5)
  {
    APSLogErrorAt();
  }

  else
  {
    *(a1 + 448) = v4;
  }

  return v5;
}

uint64_t APReceiverAudioSessionBufferedStartPacketProcesser(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  if (*(a1 + 1227))
  {
    v8 = 4294895143;
    goto LABEL_16;
  }

  if (*(a1 + 80))
  {
    return 0;
  }

  *(a1 + 1200) = mach_absolute_time();
  v2 = pthread_create((a1 + 72), 0, audioSession_networkThread_6188, a1);
  if (v2)
  {
    v8 = v2;
    goto LABEL_16;
  }

  *(a1 + 80) = a1 + 72;
  *(a1 + 848) = *(a1 + 1200);
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 1192));
  *(a1 + 1216) = v3;
  if (!v3 || (dispatch_set_context(v3, a1), dispatch_source_set_event_handler_f(*(a1 + 1216), audioSession_performPeriodicTasks_6183), v4 = *(a1 + 1216), v5 = dispatch_time(0, 250000000), dispatch_source_set_timer(v4, v5, 0xEE6B280uLL, 0xEE6B280uLL), dispatch_resume(*(a1 + 1216)), v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 1240)), (*(a1 + 1232) = v6) == 0))
  {
    APSLogErrorAt();
    return 4294960596;
  }

  dispatch_set_context(v6, a1);
  dispatch_source_set_event_handler_f(*(a1 + 1232), audioSession_log_6178);
  dispatch_source_set_timer(*(a1 + 1232), 0, 0x1DCD6500uLL, 0);
  dispatch_resume(*(a1 + 1232));
  v7 = *(a1 + 40);
  if (v7)
  {
    v10 = *(a1 + 40);
    v11 = 0;
    dispatch_sync_f(*(v7 + 112), &v10, controlServer_startInternal);
    v8 = v11;
    if (v11)
    {
LABEL_16:
      APSLogErrorAt();
      return v8;
    }
  }

  v8 = 0;
  *(a1 + 1227) = 1;
  return v8;
}

uint64_t audioSession_log_6178(uint64_t result)
{
  if (*(result + 476) > 0 && (v1 = result, v2 = *(result + 92), v2))
  {
    v3 = *(result + 1104);
    v16 = *(result + 936);
    v4 = *(result + 960);
    v5 = *(result + 968);
    v14 = *(result + 972);
    v15 = *(result + 952);
    v13 = *(result + 944);
    v6 = *(result + 976);
    v7 = *(result + 984);
    v8 = *(result + 1016);
    if (gLogCategory_APReceiverAudioSessionBuffered <= 50)
    {
      v9 = *(result + 600);
      v10 = *(result + 104);
      if (gLogCategory_APReceiverAudioSessionBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        v11 = *(v1 + 24);
        v12 = APSSGetGasGaugeStringForPercent();
        result = LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_log(void *)", 33554482, "%@ rtpSkewAdjust (%1.3f) BusyNodeCount (%5u) BufferedMSecs (%4llu) %s\n", v11, v3, v9, 1000 * v9 * v10 / v2, v12);
      }
    }

    if (*(v1 + 1008) != *(v1 + 1012))
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 50)
      {
        if (gLogCategory_APReceiverAudioSessionBuffered != -1 || (result = _LogCategory_Initialize(), result))
        {
          result = LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_log(void *)", 33554482, "%@ SetRate Timing: rtpSA (%+1.3f) lut (%llu) lnt (%1.3f/%d %llu %u %llu) llst (%u) lirtp (%u) lirtpf (%.3f) rtpoa (%u)\n", *(v1 + 24), v3, v16, v5 + v4 * 5.42101086e-20, v5, v4, v14, v15, v13, v6, v7, v8);
        }
      }

      *(v1 + 1012) = *(v1 + 1008);
    }
  }

  else
  {

    return APSLogErrorAt();
  }

  return result;
}

uint64_t audioSession_performPeriodicTasks_6183(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = mach_absolute_time();
    if (*(v1 + 808) != *(v1 + 812))
    {
      goto LABEL_10;
    }

    v2 = result;
    v3 = result - *(v1 + 816);
    if (result - *(v1 + 848) > *(v1 + 856))
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 40)
      {
        if (gLogCategory_APReceiverAudioSessionBuffered != -1 || (result = _LogCategory_Initialize(), result))
        {
          v4 = *(v1 + 24);
          v5 = UpTicksPerSecond();
          result = LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_performPeriodicTasks(void *)", 33554472, "### %@ Idle for %llu seconds\n", v4, v3 / v5);
        }
      }

      *(v1 + 848) = v2;
    }

    if (v3 <= *(v1 + 824))
    {
LABEL_10:
      result = mach_absolute_time();
      if (result >= *(v1 + 792))
      {
        v6 = result;
        v7 = (*(v1 + 788) + 1);
        *(v1 + 788) = v7;
        v8 = *(v1 + 776);
        v9 = (v8 - *(v1 + 780));
        *(v1 + 780) = v8;
        if (v9 < 1)
        {
          if (gLogCategory_APReceiverAudioSessionBuffered <= 20)
          {
            if (gLogCategory_APReceiverAudioSessionBuffered == -1)
            {
              result = _LogCategory_Initialize();
              if (!result)
              {
                goto LABEL_21;
              }

              v7 = *(v1 + 788);
            }

            result = LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_performPeriodicTasks(void *)", 33554452, "%@ No glitches in the last minute of %d minutes (%d%% glitchy)\n", *(v1 + 24), v7, (100 * *(v1 + 784) / v7));
          }
        }

        else
        {
          v10 = *(v1 + 784) + 1;
          *(v1 + 784) = v10;
          if (gLogCategory_APReceiverAudioSessionBuffered <= 50)
          {
            if (gLogCategory_APReceiverAudioSessionBuffered == -1)
            {
              result = _LogCategory_Initialize();
              if (!result)
              {
                goto LABEL_21;
              }

              v7 = *(v1 + 788);
              v10 = *(v1 + 784);
            }

            result = LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void audioSession_performPeriodicTasks(void *)", 33554482, "### %@ %d glitches in the last minute of %d minute(s) (%d%% glitchy)\n", *(v1 + 24), v9, v7, (100 * v10 / v7));
          }
        }

LABEL_21:
        *(v1 + 792) = *(v1 + 800) + v6;
      }
    }
  }

  return result;
}

uint64_t audioSession_networkThread_6188(uint64_t a1)
{
  v2 = *(a1 + 48);
  *&v15.sa_len = 0;
  *&v15.sa_data[6] = 0;
  v17 = 0;
  v16 = 0;
  *&v12.sa_len = 0;
  *&v12.sa_data[6] = 0;
  v14 = 0;
  v13 = 0;
  v11 = 0;
  memset(&v10, 0, sizeof(v10));
  pthread_setname_np("AirPlayAudioReceiver");
  SetCurrentThreadPriority();
  if (SocketAccept())
  {
    goto LABEL_44;
  }

  if (*(a1 + 1225))
  {
    SocketSetP2P();
  }

  if (!*(a1 + 1226))
  {
    SocketSetQoS();
  }

  if ((*(a1 + 64) & 0x80000000) == 0)
  {
    if (close(*(a1 + 64)) && *__error())
    {
      __error();
    }

    *(a1 + 64) = -1;
  }

  v11 = 28;
  getsockname(-1, &v15, &v11);
  v11 = 28;
  getpeername(-1, &v12, &v11);
  if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void *audioSession_networkThread(void *)", 33554482, "%@ Buffered audio receiver started: localAddr %##a remoteAddr %##a\n", *(a1 + 24), &v15, &v12);
  }

  if (NetSocket_CreateWithNative())
  {
LABEL_44:
    APSLogErrorAt();
    return 0;
  }

  v3 = 1 << v2;
  v4 = v2 >> 5;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          memset(&v10, 0, sizeof(v10));
          if (*(a1 + 1224) && __darwin_check_fd_set_overflow(-1, &v10, 0))
          {
            LODWORD(STACK[0x200000000000007C]) = STACK[0x200000000000007C];
          }

          if (v2 <= -1)
          {
            v5 = -1;
          }

          else
          {
            v5 = v2;
          }

          if (__darwin_check_fd_set_overflow(v2, &v10, 0))
          {
            v10.fds_bits[v4] |= v3;
          }

          v6 = select(v5 + 1, &v10, 0, 0, 0);
          if (v6 > 0)
          {
            break;
          }

          if (v6 && *__error())
          {
            v7 = *__error();
            if (!v7)
            {
              break;
            }

            if (v7 == 4)
            {
              continue;
            }
          }

          usleep(0x186A0u);
        }

        __darwin_check_fd_set_overflow(-1, &v10, 0);
        if (__darwin_check_fd_set_overflow(v2, &v10, 0))
        {
          if ((v10.fds_bits[v4] & v3) != 0)
          {
            LOBYTE(v18) = 0;
            v19[0] = 0;
            v8 = SocketRecvFrom();
            if (v8 != 35)
            {
              break;
            }
          }
        }
      }

      if (!v8)
      {
        break;
      }

      APSLogErrorAt();
    }
  }

  while (v18 != 113);
  if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "void *audioSession_networkThread(void *)", 33554462, "%@ General audio thread exit\n", *(a1 + 24), 0);
  }

  return 0;
}

uint64_t audioSession_suspendNetworkReads(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 1224))
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 20 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus audioSession_suspendNetworkReads(APReceiverAudioSessionBufferedRef)", 33554452, "%@ Suspending network reads. Busy buffer node count = %d\n", *(v1 + 24), *(v1 + 600));
      }

      *(v1 + 1224) = 0;
      result = SendSelfConnectedLoopbackMessage();
      if (result)
      {

        return APSLogErrorAt();
      }
    }
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedStopPacketProcesser(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 1227))
    {
      if (*(result + 80))
      {
        result = *(result + 48);
        if (result)
        {
          v2 = *(v1 + 40);
          if (v2)
          {
            context[0] = *(v1 + 40);
            context[1] = 0;
            dispatch_sync_f(*(v2 + 112), context, controlServer_stopInternal);
          }

          SendSelfConnectedLoopbackMessage();
          v3 = pthread_join(*(v1 + 72), 0);
          *(v1 + 80) = 0;
          v4 = *(v1 + 1192);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __APReceiverAudioSessionBufferedStopPacketProcesser_block_invoke;
          block[3] = &__block_descriptor_tmp_171_6205;
          block[4] = v1;
          dispatch_sync(v4, block);
          v5 = *(v1 + 1240);
          v6[0] = MEMORY[0x277D85DD0];
          v6[1] = 0x40000000;
          v6[2] = __APReceiverAudioSessionBufferedStopPacketProcesser_block_invoke_2;
          v6[3] = &__block_descriptor_tmp_172_6206;
          v6[4] = v1;
          dispatch_sync(v5, v6);
          *(v1 + 1208) = mach_absolute_time();
          *(v1 + 1227) = 0;
          return v3;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      APSLogErrorAt();
      return 4294895143;
    }
  }

  return result;
}

void __APReceiverAudioSessionBufferedStopPacketProcesser_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1216);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 1216));
    dispatch_release(v2);
    *(*(a1 + 32) + 1216) = 0;
  }
}

void __APReceiverAudioSessionBufferedStopPacketProcesser_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1232);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 1232));
    dispatch_release(v2);
    *(*(a1 + 32) + 1232) = 0;
  }
}

uint64_t APReceiverAudioSessionBufferedUpdateLatency(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  v2 = *(a1 + 464);
  v3 = *(a1 + 460);
  v4 = gAirTunesRelativeTimeOffset_6209;
  v5 = (gAirTunesRelativeTimeOffset_6209 + v2 - v3);
  *(a1 + 672) = v5;
  if (gLogCategory_APReceiverAudioSessionBuffered > 30)
  {
    return 0;
  }

  if (gLogCategory_APReceiverAudioSessionBuffered != -1)
  {
LABEL_4:
    LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedUpdateLatency(void *)", 33554462, "%@ Audio Latency Offset %d, Platform latency %d, Sender min latency %u, Relative latency %d\n", *(a1 + 24), v5, v3, v2, v4);
    return 0;
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    v5 = *(a1 + 672);
    v3 = *(a1 + 460);
    v2 = *(a1 + 464);
    v4 = gAirTunesRelativeTimeOffset_6209;
    goto LABEL_4;
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedCopyMetrics(uint64_t a1, uint64_t a2)
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
      CFDictionarySetDouble();
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

uint64_t APReceiverAudioSessionBufferedLogEnded(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      v4 = result;
      v5 = *(result + 788);
      v6 = *(result + 784);
      v7 = v5 < 1;
      v8 = 100 * v6 / v5;
      if (v7)
      {
        v8 = 0;
      }

      DataBuffer_AppendF(a2, "Glitches:    %d%%, %d total, %d glitchy minute(s)\n", v8, *(result + 776), v6);
      DataBuffer_AppendF(a2, "Packets:     %u lost, %u unrecovered, %u late, %u max burst, %d%% compression\n", qword_27E37EED8, HIDWORD(qword_27E37EED8), dword_27E37EEE0, *(v4 + 1120), *(v4 + 768) / 0x64u);
      DataBuffer_AppendF(a2, "Audio Time Sync: %1.3f max skew, %u skew reset(s)\n", *(v4 + 1024), *(v4 + 1032));
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      FigCFDictionarySetInt32();
      UpTicksToSeconds();
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
      CFDictionarySetValue(Mutable, @"sessionType", @"AudioBuffered");
      APSRTCReportingAgentSendMediaEvent();
      APSRTCReportingAgentSendEvent();
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return 0;
    }

    else
    {
      APSLogErrorAt();
      return 4294895145;
    }
  }

  return result;
}

__CFDictionary *APReceiverAudioSessionBufferedCopyAudioBufferInfo(uint64_t a1, int *a2)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      if (!v6)
      {
        v21 = -72150;
        APSLogErrorAt();
        v18 = 0;
LABEL_13:
        CFRelease(v5);
        goto LABEL_14;
      }

      v8 = v6;
      theDict = v5;
      v23 = a2;
      audioSession_sessionLock_6081(*(a1 + 1128), v7);
      v24 = a1;
      v9 = *(a1 + 584);
      if (*v9 == v9)
      {
LABEL_11:
        v18 = theDict;
        CFDictionarySetValue(theDict, @"NodesInfo", v8);
        CFDictionarySetInt64();
        v19 = v24;
        CFDictionarySetInt64();
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v10 = *MEMORY[0x277CBED28];
        v11 = MEMORY[0x277CBF138];
        v12 = MEMORY[0x277CBF150];
        v13 = *MEMORY[0x277CBED10];
        v14 = *v9;
        while (1)
        {
          v15 = CFDictionaryCreateMutable(0, 0, v11, v12);
          if (!v15)
          {
            break;
          }

          v16 = v15;
          CFDictionarySetInt64();
          if (v14[3] == v14[2] + 12)
          {
            v17 = v10;
          }

          else
          {
            v17 = v13;
          }

          CFDictionarySetValue(v16, @"IsEncoded", v17);
          CFArrayAppendValue(v8, v16);
          CFRelease(v16);
          v14 = *v14;
          if (v14 == v9)
          {
            goto LABEL_11;
          }
        }

        v21 = -72150;
        APSLogErrorAt();
        v19 = v24;
        v20 = theDict;
        v18 = 0;
      }

      audioSession_sessionUnlock_6083(*(v19 + 1128));
      CFRelease(v8);
      v5 = v20;
      a2 = v23;
      if (v20)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v21 = -72150;
      APSLogErrorAt();
      v18 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    v18 = 0;
    v21 = -72152;
  }

LABEL_14:
  if (a2)
  {
    *a2 = v21;
  }

  return v18;
}

void *APReceiverAudioSessionBufferedCopyProperty(uint64_t a1, CFTypeRef cf1, int *a3)
{
  if (a1)
  {
    if (cf1)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "CFTypeRef APReceiverAudioSessionBufferedCopyProperty(void *, CFStringRef, OSStatus *)", 33554462, "%@ copy propertyKey: '%@'\n", *(a1 + 24), cf1);
      }

      if (CFEqual(cf1, @"AudioFormat"))
      {
        v6 = *(a1 + 1136);
LABEL_9:
        result = CFRetain(v6);
LABEL_18:
        v11 = 0;
        goto LABEL_19;
      }

      if (CFEqual(cf1, @"CompressionType"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 88);
LABEL_12:
        v10 = kCFNumberSInt32Type;
LABEL_13:
        result = CFNumberCreate(v8, v10, v9);
        goto LABEL_18;
      }

      if (CFEqual(cf1, @"MediaDataControlPort"))
      {
        result = CFNumberCreateInt64();
        goto LABEL_18;
      }

      if (CFEqual(cf1, @"MaximumLatency"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 468);
        goto LABEL_12;
      }

      if (CFEqual(cf1, @"MinimumLatency"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 464);
        goto LABEL_12;
      }

      if (CFEqual(cf1, @"NumberOfChannels"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 96);
        goto LABEL_12;
      }

      if (CFEqual(cf1, @"PlatformAudioLatency"))
      {
        audioSession_sessionLock_6081(*(a1 + 1128), v12);
        v16 = *(a1 + 460);
        audioSession_sessionUnlock_6083(*(a1 + 1128));
        v8 = *MEMORY[0x277CBECE8];
        v9 = &v16;
        goto LABEL_12;
      }

      if (CFEqual(cf1, @"AudioPort"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 456);
        v10 = kCFNumberIntType;
        goto LABEL_13;
      }

      if (CFEqual(cf1, @"SampleRate"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 92);
        goto LABEL_12;
      }

      if (CFEqual(cf1, @"audioBufferSize"))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = (a1 + 496);
        v10 = kCFNumberSInt64Type;
        goto LABEL_13;
      }

      if (CFEqual(cf1, @"IsPlayingBufferedAudio"))
      {
        audioSession_sessionLock_6081(*(a1 + 1128), v13);
        v14 = *(a1 + 880);
        audioSession_sessionUnlock_6083(*(a1 + 1128));
        v15 = MEMORY[0x277CBED28];
        if (!v14)
        {
          v15 = MEMORY[0x277CBED10];
        }

        goto LABEL_42;
      }

      if (CFEqual(cf1, @"IsUsingScreen"))
      {
        v15 = MEMORY[0x277CBED10];
LABEL_42:
        v6 = *v15;
        goto LABEL_9;
      }

      if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "CFTypeRef APReceiverAudioSessionBufferedCopyProperty(void *, CFStringRef, OSStatus *)", 33554482, "%@ Unknown copy property: %@\n", *(a1 + 24), cf1);
      }

      result = 0;
      v11 = -72154;
    }

    else
    {
      APSLogErrorAt();
      result = 0;
      v11 = -72151;
    }
  }

  else
  {
    APSLogErrorAt();
    result = 0;
    v11 = -72152;
  }

LABEL_19:
  if (a3)
  {
    *a3 = v11;
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedSetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  v12 = 0;
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  if (!a2)
  {
    v8 = 4294895145;
LABEL_33:
    APSLogErrorAt();
    return v8;
  }

  if (!a3)
  {
    v8 = 4294895145;
    goto LABEL_33;
  }

  if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedSetProperty(void *, CFStringRef, CFTypeRef)", 33554462, "%@ set propertyKey: '%@'\n", *(a1 + 24), a2);
  }

  audioSession_sessionLock_6081(*(a1 + 1128), a2);
  if (CFEqual(a2, @"VolumeLinear"))
  {
    if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedSetProperty(void *, CFStringRef, CFTypeRef)", 33554482, "<AirPlayVolume> session buffered, %@ set volume linear = %@\n", *(a1 + 24), a3);
    }

    v12 = APReceiverAudioSessionPlatformSetProperty(*a1, v6, @"RASP::VolumeLinear", v7, a3);
    if (v12)
    {
      APSLogErrorAt();
    }

    goto LABEL_19;
  }

  if (CFEqual(a2, @"PlatformAudioLatency"))
  {
    *(a1 + 460) = CFGetInt64Ranged();
  }

  else
  {
    if (!CFEqual(a2, @"RTCMetadata"))
    {
      if (CFEqual(a2, @"timelineOffset"))
      {
        v10 = CFGetInt64();
        if ((v10 - 251) > 0xFFFFFE0A)
        {
          gAirTunesRelativeTimeOffset_6209 = v10;
          goto LABEL_19;
        }

        APSLogErrorAt();
        v11 = -6710;
      }

      else
      {
        if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionBuffered, "OSStatus APReceiverAudioSessionBufferedSetProperty(void *, CFStringRef, CFTypeRef)", 33554482, "%@ Unknown set property: %@\n", *(a1 + 24), a2);
        }

        v11 = -72154;
      }

      v12 = v11;
      goto LABEL_19;
    }

    APSRTCReportingAgentSendMediaEvent();
  }

LABEL_19:
  audioSession_sessionUnlock_6083(*(a1 + 1128));
  return v12;
}

uint64_t _GetTypeID_6322()
{
  result = _CFRuntimeRegisterClass();
  gAirPlayReceiverSessionTypeID = result;
  return result;
}

void _Finalize_6325(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _Finalize(CFTypeRef)", 33554482, "Finalize session [%{ptr}]\n", a1);
  }

  if (!*(a1 + 441))
  {
    if (gLogCategory_AirPlayReceiverCore <= 100 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _Finalize(CFTypeRef)", 33554532, "### Session wasn't properly stopped!\n");
    }

    goto LABEL_51;
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    v2(a1, *(a1 + 56));
  }

  if (!*(a1 + 683))
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 30 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void AirPlayReceiverSessionPlatformFinalize(AirPlayReceiverSessionRef)", 33554462, "Finalizing...\n");
    }

    if (*(a1 + 48))
    {
      if (gLogCategory_AirPlayReceiverPlatform <= 100 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void AirPlayReceiverSessionPlatformFinalize(AirPlayReceiverSessionRef)", 33554532, "### Platform code wasn't invalidated!\n");
      }

LABEL_51:
      __break(1u);
      return;
    }
  }

  v3 = *(a1 + 760);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 760) = 0;
  }

  v4 = *(a1 + 568);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 568) = 0;
  }

  v5 = *(a1 + 696);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 696) = 0;
  }

  v6 = *(a1 + 736);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 736) = 0;
  }

  v7 = *(a1 + 744);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 744) = 0;
  }

  v8 = *(a1 + 648);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 648) = 0;
  }

  v9 = *(a1 + 664);
  if (v9)
  {
    dispatch_source_cancel(*(a1 + 664));
    dispatch_release(v9);
    *(a1 + 664) = 0;
  }

  v10 = *(a1 + 672);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 672) = 0;
  }

  v11 = *(a1 + 592);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 592) = 0;
  }

  v12 = *(a1 + 600);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 600) = 0;
  }

  v13 = *(a1 + 432);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 432) = 0;
  }

  v14 = *(a1 + 24);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 24) = 0;
  }

  v15 = *(a1 + 768);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 768) = 0;
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    dispatch_release(v16);
    *(a1 + 16) = 0;
  }
}

void _Cleanup(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 600) && !*(a1 + 683))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
  }

  if (!*(a1 + 441))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _Cleanup(AirPlayReceiverSessionRef, OSStatus)", 33554482, "Cleanup session [%{ptr}]\n", a1);
    }

    if (*(a1 + 683))
    {
      goto LABEL_19;
    }

    v4 = *(a1 + 592);
    if (!v4)
    {
LABEL_18:
      _AirPlayReceiverSessionRemoveTrafficRegistration(a1);
LABEL_19:
      mach_absolute_time();
      v9 = UpTicksToSeconds();
      if (a2)
      {
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          v10 = *(a1 + 288);
          v11 = *(a1 + 272);
          v12 = 78;
          if (*(a1 + 683))
          {
            v13 = 89;
          }

          else
          {
            v13 = 78;
          }

          if (*(a1 + 681))
          {
            v14 = 89;
          }

          else
          {
            v14 = 78;
          }

          if (*(a1 + 681))
          {
            if (APSIsMemberOfHTGroup())
            {
              v12 = 89;
            }

            else
            {
              v12 = 78;
            }
          }

          LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _LogEnded(AirPlayReceiverSessionRef, OSStatus)", 33554482, "[%{ptr}] AirPlay session ended: Dur=%{dur} Reason=%#m From=%@ D=0x%012llx A=%##a RO=%c PC=%c HT=%c\n", a1, v9, a2, v10, v11, a1 + 224, v13, v14, v12);
        }
      }

      else if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        v15 = *(a1 + 288);
        v16 = *(a1 + 272);
        v17 = 78;
        if (*(a1 + 683))
        {
          v18 = 89;
        }

        else
        {
          v18 = 78;
        }

        if (*(a1 + 681))
        {
          v19 = 89;
        }

        else
        {
          v19 = 78;
        }

        if (*(a1 + 681))
        {
          if (APSIsMemberOfHTGroup())
          {
            v17 = 89;
          }

          else
          {
            v17 = 78;
          }
        }

        LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _LogEnded(AirPlayReceiverSessionRef, OSStatus)", 33554482, "[%{ptr}] AirPlay session ended: Dur=%{dur} From=%@ D=0x%012llx A=%##a RO=%c PC=%c HT=%c\n", a1, v9, v15, v16, a1 + 224, v18, v19, v17);
      }

      v20 = *(a1 + 184);
      if (v20)
      {
        dispatch_source_cancel(*(a1 + 184));
        dispatch_release(v20);
        *(a1 + 184) = 0;
      }

      Count = CFDictionaryGetCount(*(a1 + 568));
      block[0] = 0;
      if (Count >= 1)
      {
        v22 = Count;
        if (_cfDictionaryCopyKeysAndValues(*(a1 + 568), block, 0))
        {
          APSLogErrorAt();
        }

        else
        {
          for (i = 0; i != v22; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(block[0], i);
            _AudioTearDownStream(a1, 0, ValueAtIndex, a2);
          }

          if (!*(a1 + 754))
          {
            CFObjectSetProperty();
          }
        }

        if (block[0])
        {
          CFRelease(block[0]);
        }
      }

      _ScreenTearDown(a1);
      if (!CFEqual(*(a1 + 672), @"None"))
      {
        v46 = *(a1 + 448);
        if (v46)
        {
          if (!*(a1 + 683))
          {
            v47 = *(*(CMBaseObjectGetVTable() + 16) + 88);
            if (v47)
            {
              v47(v46, a1);
            }
          }
        }
      }

      _ControlTearDown(a1);
      if (*(a1 + 736))
      {
        v25 = CFDictionaryCopyKeys();
        if (v25)
        {
          v26 = v25;
          v27 = CFArrayGetCount(v25);
          if (v27 >= 1)
          {
            v28 = v27;
            for (j = 0; j != v28; ++j)
            {
              v30 = CFArrayGetValueAtIndex(v26, j);
              _PlaybackV2TearDown(a1, v30);
            }
          }

          CFRelease(v26);
        }
      }

      _UpdateActiveSessionRegistration(a1, 1u, 1u);
      if (*(a1 + 696))
      {
        v31 = CFDictionaryCopyKeys();
        if (v31)
        {
          v32 = v31;
          v33 = CFArrayGetCount(v31);
          if (v33 >= 1)
          {
            v34 = v33;
            for (k = 0; k != v34; ++k)
            {
              v36 = CFArrayGetValueAtIndex(v32, k);
              _RemoteControlSessionTearDown(a1, v36);
            }
          }

          CFRelease(v32);
        }
      }

      if (!*(a1 + 683))
      {
        AirPlayReceiverSessionPlatformControl(a1, @"stopSession");
      }

      v37 = *(a1 + 176);
      if (v37)
      {
        CFRelease(v37);
        *(a1 + 176) = 0;
      }

      if (*(a1 + 600))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
      }

      v38 = *(a1 + 448);
      if (v38)
      {
        CFRelease(v38);
        *(a1 + 448) = 0;
      }

      v39 = *(a1 + 704);
      if (v39)
      {
        CFRelease(v39);
        *(a1 + 704) = 0;
      }

      v40 = *(a1 + 312);
      if (v40)
      {
        CFRelease(v40);
        *(a1 + 312) = 0;
      }

      v41 = *(a1 + 320);
      if (v41)
      {
        CFRelease(v41);
        *(a1 + 320) = 0;
      }

      v42 = *(a1 + 296);
      if (v42)
      {
        CFRelease(v42);
        *(a1 + 296) = 0;
      }

      v43 = *(a1 + 304);
      if (v43)
      {
        CFRelease(v43);
        *(a1 + 304) = 0;
      }

      v44 = *(a1 + 288);
      if (v44)
      {
        CFRelease(v44);
        *(a1 + 288) = 0;
      }

      AES_CBCFrame_Final();
      v45 = *(a1 + 616);
      if (v45)
      {
        CFRelease(v45);
        *(a1 + 616) = 0;
      }

      *(a1 + 32) = 0;
      *(a1 + 441) = 1;
      return;
    }

    v49 = 0;
    v50 = &v49;
    v51 = 0x2000000000;
    v52 = 0;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v6 = v5(v4);
      if (!v6)
      {
        v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v7)
        {
          v8 = v7(v4);
        }

        else
        {
          v8 = -12782;
        }

        *(v50 + 6) = v8;
        goto LABEL_17;
      }
    }

    else
    {
      v6 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APReceiverSBufConsumerStop_block_invoke;
    block[3] = &unk_278C60CF0;
    block[4] = &v49;
    block[5] = v4;
    dispatch_sync(v6, block);
LABEL_17:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    _Block_object_dispose(&v49, 8);
    goto LABEL_18;
  }
}

uint64_t __APReceiverSBufConsumerStop_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v3)
  {
    result = v3(v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void _AirPlayReceiverSessionRemoveTrafficRegistration(uint64_t a1)
{
  v2 = *(a1 + 432);
  if (v2)
  {
    if (gLogCategory_AirPlayReceiverCore > 50)
    {
LABEL_10:
      CFRelease(v2);
      *(a1 + 432) = 0;
      return;
    }

    if (gLogCategory_AirPlayReceiverCore == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v2 = *(a1 + 432);
    }

    if (*(a1 + 192) == 4)
    {
      v3 = "Traffic Registration";
    }

    else
    {
      v3 = "Infra Transaction";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AirPlayReceiverSessionRemoveTrafficRegistration(AirPlayReceiverSessionRef)", 33554482, "[%{ptr}] Removing %s [%{ptr}]", a1, v3, v2);
LABEL_9:
    v2 = *(a1 + 432);
    if (!v2)
    {
      return;
    }

    goto LABEL_10;
  }
}

uint64_t _cfDictionaryCopyKeysAndValues(const __CFDictionary *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  Count = CFDictionaryGetCount(a1);
  v7 = Count;
  if (!a2)
  {
    v8 = 0;
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  if (!v8)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = malloc_type_calloc(v7, 8uLL, 0xC0040B8AA526DuLL);
  if (!v9)
  {
    APSLogErrorAt();
    v10 = 0;
LABEL_31:
    v13 = 0;
    goto LABEL_33;
  }

LABEL_8:
  CFDictionaryGetKeysAndValues(a1, v8, v9);
  if (a2)
  {
    v11 = CFGetAllocator(a1);
    v10 = CFArrayCreate(v11, v8, v7, MEMORY[0x277CBF128]);
    if (!v10)
    {
      APSLogErrorAt();
      goto LABEL_31;
    }

    if (a3)
    {
LABEL_11:
      v12 = CFGetAllocator(a1);
      v13 = CFArrayCreate(v12, v9, v7, MEMORY[0x277CBF128]);
      if (!v13)
      {
        APSLogErrorAt();
LABEL_33:
        v14 = 4294960568;
        if (!v8)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (a2)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  v13 = 0;
  if (a2)
  {
LABEL_13:
    *a2 = CFRetain(v10);
  }

LABEL_14:
  if (a3)
  {
    v14 = 0;
    *a3 = CFRetain(v13);
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v14 = 0;
  if (v8)
  {
LABEL_21:
    free(v8);
  }

LABEL_22:
  if (v9)
  {
    free(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v14;
}

void _AudioTearDownStream(uint64_t a1, uint64_t a2, void *key, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    v8 = CFGetInt64();
    LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AudioTearDownStream(AirPlayReceiverSessionRef, CFDictionaryRef, CFNumberRef, OSStatus)", 33554482, "[%{ptr}] TearDown on stream %llu with reason: %#m\n", a1, v8, a4);
  }

  if (key)
  {
    Value = CFDictionaryGetValue(*(a1 + 568), key);
    if (Value)
    {
      v10 = Value;
      v11 = *(a1 + 576);
      if (!a2)
      {
        v13 = 0;
        goto LABEL_11;
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v13 = Mutable;
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
        CFDictionaryGetTypeID();
        CFDictionaryGetTypedValue();
        FigCFDictionarySetValue();
LABEL_11:
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        v14 = v10[10];
        if (v14)
        {
          v14(v10[5], v13);
        }

        DataBuffer_Init();
        DataBuffer_AppendF(&v23, "[%{ptr}] Session Summary: ", a1);
        v15 = v10[21];
        if (v15)
        {
          v15(v10[5], &v23, a4);
        }

        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AudioTearDownStream(AirPlayReceiverSessionRef, CFDictionaryRef, CFNumberRef, OSStatus)", 33554482, "%.*s", v25, *(&v24 + 1));
        }

        DataBuffer_Free();
        APReceiverAudioSessionInvalidate(v10);
        CFDictionaryRemoveValue(*(a1 + 568), key);
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          v16 = CFGetInt64();
          LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AudioTearDownStream(AirPlayReceiverSessionRef, CFDictionaryRef, CFNumberRef, OSStatus)", 33554482, "[%{ptr}] APReceiverAudioSession [%{ptr}] with stream ID %llu removed.\n", a1, v10, v16);
        }

        if (v10 == v11)
        {
          v17 = *(a1 + 576);
          if (v17)
          {
            CFRelease(v17);
            *(a1 + 576) = 0;
          }
        }

        if (*(a1 + 600))
        {
          v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(v18, @"sessionID", key);
          v19 = *(a1 + 600);
          v20 = *(*(CMBaseObjectGetVTable() + 16) + 136);
          if (v20)
          {
            v20(v19, v18);
          }

          if (v18)
          {
            CFRelease(v18);
          }
        }

        v21 = *(a1 + 556);
        if (*(a1 + 552) != v21)
        {
          *(a1 + 552) = v21;
          *(a1 + 520) = UpTicksPerSecond() * v21;
          SocketSetKeepAlive();
        }

        if (v10 == v11)
        {
          AirPlayReceiverSessionPlatformControl(a1, @"handleMediaAudioStoppingForSession");
          v22 = 0;
        }

        else
        {
          v22 = 3;
        }

        _UpdateActiveSessionRegistration(a1, 1u, v22);
        if (v13)
        {
          CFRelease(v13);
        }

        return;
      }
    }
  }

  APSLogErrorAt();
}

void _ScreenTearDown(uint64_t result)
{
  v1 = *(result + 616);
  if (v1)
  {
    v3 = *(result + 664);
    if (v3)
    {
      dispatch_source_set_timer(v3, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      v1 = *(result + 616);
    }

    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {
      v4(v1);
    }

    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _ScreenTearDown(AirPlayReceiverSessionRef)", 33554482, "[%{ptr}] screen session [%{ptr}] torn down\n", result, *(result + 616));
    }

    v5 = *(result + 616);
    if (v5)
    {
      CFRelease(v5);
      *(result + 616) = 0;
    }

    if (*(result + 600) && *(result + 633))
    {
      *(result + 633) = 0;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetNumber();
      CFDictionarySetNumber();
      v7 = *(result + 600);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v8)
      {
        v8(v7, Mutable);
      }

      *(result + 636) = 0;
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    _UpdateActiveSessionRegistration(result, 1u, 2u);
  }
}

int *_ControlTearDown(uint64_t a1)
{
  if (*(a1 + 456))
  {
    *(a1 + 456) = 0;
    if (gLogCategory_AirPlayReceiverCore <= 30 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _ControlTearDown(AirPlayReceiverSessionRef)", 33554462, "Tearing down control\n");
    }
  }

  if (*(a1 + 464))
  {
    HTTPClientInvalidate();
    CFRelease(*(a1 + 464));
    *(a1 + 464) = 0;
  }

  v2 = *(a1 + 488);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 488) = 0;
  }

  result = *(a1 + 476);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      result = __error();
      if (*result)
      {
        result = __error();
      }
    }

    *(a1 + 476) = -1;
  }

  return result;
}

void _PlaybackV2TearDown(uint64_t a1, const void *a2)
{
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    v4 = CFGetInt64();
    LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _PlaybackV2TearDown(AirPlayReceiverSessionRef, CFNumberRef)", 33554482, "[%{ptr}] Stopping video playback, streamID %llu\n", a1, v4);
  }

  if (*(a1 + 600))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"sessionID", a2);
    v6 = *(a1 + 600);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v7)
    {
      v7(v6, Mutable);
    }

    CFDictionaryRemoveValue(*(a1 + 736), a2);
    CFSetRemoveValue(*(a1 + 744), a2);
    if (CFSetGetCount(*(a1 + 744)))
    {
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      _UpdateActiveSessionRegistration(a1, 1u, 1u);
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _UpdateActiveSessionRegistration(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    CFDictionarySetValue(Mutable, @"session", a1);
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    if (AirPlayReceiverServerPlatformControl(a1[3], @"updateActiveSessionRegistration", 0, v5))
    {
      APSLogErrorAt();
    }

    CFRelease(v5);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _RemoteControlSessionTearDown(uint64_t a1, void *key)
{
  if (key)
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _RemoteControlSessionTearDown(AirPlayReceiverSessionRef, CFNumberRef)", 33554482, "[%{ptr}] Tear down RCS-%@\n", a1, key);
    }

    Value = CFDictionaryGetValue(*(a1 + 696), key);
    if (Value)
    {
      v5 = Value;
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v6)
      {
        v6(v5);
      }

      v7 = *(a1 + 696);

      CFDictionaryRemoveValue(v7, key);
    }

    else if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _RemoteControlSessionTearDown(AirPlayReceiverSessionRef, CFNumberRef)", 33554482, "[%{ptr}] RCS with ID %@ not found", a1, key);
    }
  }
}

void _AirPlayReceiverSession_HandleUINotifications(int a1, void *a2, CFTypeRef cf1, uint64_t a4, const void *a5)
{
  if (CFEqual(cf1, @"userStop"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AirPlayReceiverSession_HandleUINotifications(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Received UserStop UI event\n", a2);
    }

    _AirPlayReceiverSession_Terminate(a2);
    return;
  }

  if (CFEqual(cf1, @"FPSSecureStopGenerated"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AirPlayReceiverSession_HandleUINotifications(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Received FPSSecureStop from UI\n", a2);
    }

    CFRetain(a2);
    if (a5)
    {
      CFRetain(a5);
    }

    v8 = a2[2];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 0x40000000;
    v18[2] = ___AirPlayReceiverSession_HandleUINotifications_block_invoke;
    v18[3] = &__block_descriptor_tmp_346;
    v18[4] = a2;
    v18[5] = a5;
    v9 = v18;
LABEL_48:
    dispatch_async(v8, v9);
    return;
  }

  if (CFEqual(cf1, @"serverDied"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AirPlayReceiverSession_HandleUINotifications(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "### [%{ptr}] Presentation app died, stopping screen session\n", a2);
    }

    CFRetain(a2);
    v8 = a2[2];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 0x40000000;
    v17[2] = ___AirPlayReceiverSession_HandleUINotifications_block_invoke_2;
    v17[3] = &__block_descriptor_tmp_348;
    v17[4] = a2;
    v9 = v17;
    goto LABEL_48;
  }

  if (CFEqual(cf1, @"stopPresentation"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AirPlayReceiverSession_HandleUINotifications(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Received StopScreenPresentation UI event, stopping screen session\n", a2);
    }

    Int64 = CFDictionaryGetInt64();
    CFRetain(a2);
    v8 = a2[2];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 0x40000000;
    v15[2] = ___AirPlayReceiverSession_HandleUINotifications_block_invoke_3;
    v15[3] = &__block_descriptor_tmp_350;
    v16 = Int64;
    v15[4] = a2;
    v9 = v15;
    goto LABEL_48;
  }

  if (CFEqual(cf1, @"KeyFrameNeeded"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AirPlayReceiverSession_HandleUINotifications(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Received key frame request from UI\n", a2);
    }

    CFRetain(a2);
    v8 = a2[2];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = ___AirPlayReceiverSession_HandleUINotifications_block_invoke_4;
    v14[3] = &__block_descriptor_tmp_352;
    v14[4] = a2;
    v9 = v14;
    goto LABEL_48;
  }

  if (CFEqual(cf1, @"UpdateDisplayInfo"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AirPlayReceiverSession_HandleUINotifications(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Received update display info request from UI\n", a2);
    }

    CFRetain(a2);
    v8 = a2[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___AirPlayReceiverSession_HandleUINotifications_block_invoke_5;
    block[3] = &__block_descriptor_tmp_354;
    block[4] = a2;
    v9 = block;
    goto LABEL_48;
  }

  if (CFEqual(cf1, @"ScreenRecordingStarted"))
  {
    v11 = a2;
    v12 = 1;
  }

  else
  {
    if (!CFEqual(cf1, @"ScreenRecordingStopped"))
    {
      return;
    }

    v11 = a2;
    v12 = 0;
  }

  _ScreenPostRecordingState(v11, v12);
}

uint64_t _AirPlayReceiverSession_Terminate(uint64_t a1)
{
  if (!a1)
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AirPlayReceiverSession_Terminate(AirPlayReceiverSessionRef)", 33554482, "Ending all AirPlay receiver sessions\n");
    }

    return CFObjectControlAsync();
  }

  _ReportSessionStallIfNeeded(a1, 2);
  if (*(a1 + 32))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AirPlayReceiverSession_Terminate(AirPlayReceiverSessionRef)", 33554482, "Ending session [%{ptr}]\n", a1);
    }

    return CFObjectControlAsync();
  }

  return APSLogErrorAt();
}

void _ScreenPostRecordingState(NSObject **cf, int a2)
{
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    v4 = "";
    if (!a2)
    {
      v4 = "not ";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _ScreenPostRecordingState(AirPlayReceiverSessionRef, Boolean)", 33554482, "[%{ptr}] UI says screen recording is %sactive\n", cf, v4);
  }

  CFRetain(cf);
  v5 = cf[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ScreenPostRecordingState_block_invoke;
  block[3] = &__block_descriptor_tmp_376;
  v7 = a2;
  block[4] = cf;
  dispatch_async(v5, block);
}

uint64_t AirPlayReceiverSessionSendCommandForObject(uint64_t a1, const __CFNumber *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  if (!*(a1 + 458))
  {
    return 0;
  }

  if (!*(a1 + 464))
  {
    v22 = 0;
LABEL_26:
    v15 = 0;
    goto LABEL_27;
  }

  v10 = HTTPMessageCreate();
  if (v10)
  {
    v22 = v10;
LABEL_25:
    APSLogErrorAt();
    goto LABEL_26;
  }

  *(cf + 2411) = *(a1 + 556);
  inited = HTTPHeader_InitRequest();
  if (inited)
  {
    v22 = inited;
    goto LABEL_25;
  }

  v12 = *(a1 + 472) + 1;
  v13 = HTTPHeader_SetField(cf + 24, "CSeq", "%u", v12);
  if (v13)
  {
    v22 = v13;
    goto LABEL_25;
  }

  if (a2)
  {
    valuePtr = 0;
    CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr);
    HTTPHeader_SetField(cf + 24, "X-Apple-StreamID", "%llu", valuePtr);
  }

  Data = CFPropertyListCreateData(0, a3, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  v15 = Data;
  if (!Data)
  {
    APSLogErrorAt();
    Mutable = 0;
    v22 = 4294960596;
    goto LABEL_13;
  }

  CFDataGetBytePtr(Data);
  CFDataGetLength(v15);
  v16 = HTTPMessageSetBody();
  if (!v16)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      mach_absolute_time();
      CFDictionarySetInt64();
      HTTPClientGetClientID();
      CFDictionarySetInt64();
      *(a1 + 472) = v12;
      v18 = CFRetain(a1);
      v19 = cf;
      *(cf + 1209) = v18;
      v19[1210] = a4;
      v19[1211] = a5;
      v20 = CFRetain(Mutable);
      v21 = cf;
      *(cf + 1212) = v20;
      v21[1214] = _AirPlayReceiverSessionSendCommandCompletion;
      v22 = HTTPClientSendMessage();
      if (v22)
      {
        CFRelease(a1);
        CFRelease(Mutable);
        APSLogErrorAt();
      }
    }

    else
    {
      APSLogErrorAt();
      v22 = 0;
    }

    goto LABEL_13;
  }

  v22 = v16;
  APSLogErrorAt();
LABEL_27:
  Mutable = 0;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v22;
}

void _AirPlayReceiverSessionSendCommandCompletion(void *a1)
{
  v1 = a1[1209];
  v2 = a1[1210];
  v3 = a1[1212];
  CFDictionaryGetInt64();
  mach_absolute_time();
  UpTicksToSecondsF();
  v5 = v4;
  if (v4 > 5.0)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AirPlayReceiverSessionSendCommandCompletion(HTTPMessageRef)", 33554492, "[%{ptr}] Event message CID 0x%08X took too long to send (%.5f seconds)\n", v1, Int64Ranged, *&v5);
    }
  }

  if (v2)
  {
    CFDictionaryGetTypeID();
    v7 = CFCreateWithPlistBytes();
    CFDictionaryGetInt64();
    v2();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v1);
  CFRelease(v3);
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t AirPlayReceiverSessionForceKeyFrame(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    CFDictionarySetValue(Mutable, @"type", @"forceKeyFrame");
    v8 = AirPlayReceiverSessionSendCommandForObject(a1, 0, v7, a2, a3);
    if (v8)
    {
      APSLogErrorAt();
    }

    CFRelease(v7);
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }

  return v8;
}

void _ReportSessionStallIfNeeded(uint64_t a1, uint64_t a2)
{
  if ((a2 == 1) != (*(a1 + 536) == 1))
  {
    if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _ReportSessionStallIfNeeded(AirPlayReceiverSessionRef, AirPlaySessionStallState)", 33554492, "[%{ptr}] Reporting session stall state: %d\n", a1, a2);
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionarySetInt64();
      AirPlayReceiverServerPlatformControl(*(a1 + 24), @"reportSessionStall", 0, v5);
      *(a1 + 536) = a2;

      CFRelease(v5);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

__n128 AirPlayReceiverSessionSetDelegate(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 104) = *(a2 + 48);
  *(a1 + 88) = v4;
  *(a1 + 72) = v3;
  *(a1 + 56) = result;
  return result;
}

uint64_t AirPlayReceiverSessionControl(uint64_t a1, int a2, CFTypeRef cf1, __CFString *a4, const __CFDictionary *a5, __CFDictionary **a6)
{
  if (CFEqual(cf1, @"updateFeedback"))
  {
    if (!a1 || !a6)
    {
      return 0;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v12 = Mutable;
      v13 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      if (v13)
      {
        v14 = v13;
        CFDictionarySetValue(v12, @"streams", v13);
        *a6 = v12;
        CFRelease(v14);
        return 0;
      }

      APSLogErrorAt();
      CFRelease(v12);
    }

    else
    {
      APSLogErrorAt();
    }

    v35 = -6728;
    goto LABEL_31;
  }

  if (CFEqual(cf1, @"didReceiveData"))
  {
    CFNumberGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (CFDictionaryContainsKey(*(a1 + 736), TypedValue))
    {
      Value = CFDictionaryGetValue(a5, @"params");
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, Value);
      if (*(a1 + 600))
      {
        v19 = MutableCopy;
        CFDictionarySetValue(MutableCopy, @"X-Apple-StreamID", TypedValue);
        v20 = *(a1 + 600);
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v21)
        {
          v22 = v21(v20, v19, a6);
        }

        else
        {
          v22 = -12782;
        }

        v35 = v22;
        if (v19)
        {
          CFRelease(v19);
          v22 = v35;
        }

        if (!v22)
        {
          return 0;
        }

        goto LABEL_31;
      }

      APSLogErrorAt();
      return -6735;
    }

    v24 = CFDictionaryGetValue(*(a1 + 696), TypedValue);
    if (v24)
    {
      v25 = v24;
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v26)
      {
        v35 = v26(v25, a5);
        if (!v35)
        {
          return 0;
        }
      }

      else
      {
        v35 = -12782;
      }

      goto LABEL_31;
    }

LABEL_87:
    APSLogErrorAt();
    return -6709;
  }

  if (CFEqual(cf1, @"reportIssue"))
  {
    if (a5)
    {
      CFStringGetTypeID();
      v23 = CFDictionaryGetTypedValue();
      if (CFEqual(v23, *MEMORY[0x277CEA1F8]))
      {
        CFNumberGetTypeID();
        CFDictionaryGetTypedValue();
        CFNumberGetTypeID();
        CFDictionaryGetTypedValue();
        if (*(a1 + 192) == 128)
        {
          if (APSSettingsGetIntWithDefault())
          {
            APTNANDataSessionIssueReportCreate();
          }
        }
      }

      return 0;
    }

    APSLogErrorAt();
    v35 = -6705;
    goto LABEL_31;
  }

  if (CFEqual(cf1, @"nanWifiStats"))
  {
    if (*(a1 + 192) != 128)
    {
      if (a6)
      {
        Empty = CFDictionaryGetEmpty();
        *a6 = CFRetain(Empty);
      }

      return 0;
    }

    v35 = APAdvertiserCopyNANWifiStats(*(*(a1 + 24) + 40), a6);
    if (!v35)
    {
      return 0;
    }

LABEL_31:
    APSLogErrorAt();
    return v35;
  }

  if (CFEqual(cf1, @"sessionDied"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Received event to terminate session\n", a1);
    }

    _AirPlayReceiverSession_Terminate(a1);
    return 0;
  }

  if (CFEqual(cf1, @"volumeChanged"))
  {
    v28 = CFDictionaryGetValue(a5, @"volumeLinear");
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Received VolumeChanged, volume %@\n", a1, v28);
    }

    if (v28)
    {
      v35 = _ProcessSWVolumeChanged(a1, v28);
      if (!v35)
      {
        return 0;
      }

      goto LABEL_31;
    }

    goto LABEL_87;
  }

  if (CFEqual(cf1, @"audioInterruptionBegan"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Received kAirPlayEvent_AudioInterruptionBegan inQualifier=%@", a1, a4);
    }

    if (FigCFEqual())
    {
      v29 = a1;
      v30 = 1;
LABEL_78:
      _ForwardAudioInterruptionCommandsToReceiverAudioSessions(v29, v30, 0);
      return 0;
    }

    if (!FigCFEqual())
    {
      v35 = -6735;
      goto LABEL_31;
    }

    v31 = a1;
    v32 = 1;
    goto LABEL_81;
  }

  if (CFEqual(cf1, @"audioInterruptionEnded"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Received kAirPlayEvent_AudioInterruptionEnded inQualifier=%@", a1, a4);
    }

    if (FigCFEqual())
    {
      v29 = a1;
      v30 = 0;
      goto LABEL_78;
    }

    if (!FigCFEqual())
    {
      v35 = -6735;
      goto LABEL_31;
    }

    v31 = a1;
    v32 = 0;
LABEL_81:
    _HandleMediaAudioInterruption(v31, v32, a5);
    return 0;
  }

  if (CFEqual(cf1, @"otherProcessStartedPlaying"))
  {
    _HandleOtherProcessStartedPlaying(a1);
    return 0;
  }

  if (CFEqual(cf1, @"partnerProcessDeath"))
  {
    if (a4)
    {
      v33 = CFGetTypeID(a4);
      if (v33 == CFStringGetTypeID())
      {
        _HandlePartnerProcessDeath(a1, a4);
        return 0;
      }
    }

    APSLogErrorAt();
    return -6705;
  }

  if (CFEqual(cf1, @"handleMediaAudioResumedForSession"))
  {
    _HandleMediaAudioResumedForSession(a1, a4);
    return 0;
  }

  if (CFEqual(cf1, @"fadeAudio"))
  {
    _HandleFadeAudioCommand(a1, a5);
    return 0;
  }

  if (CFEqual(cf1, @"performPWDKeyExchange"))
  {
    v35 = _HandlePerformPWDKeyExchangeCommand(a1, a5, a6);
    if (!v35)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (*(a1 + 683))
  {
    APSLogErrorAt();
    v35 = 0;
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionControl(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Don't call Control on platform object for remote control session.\n", a1);
    }
  }

  else
  {
    return AirPlayReceiverSessionPlatformControl(a1, cf1);
  }

  return v35;
}

uint64_t _ProcessSWVolumeChanged(uint64_t a1, uint64_t a2)
{
  theArray = 0;
  Count = FigCFDictionaryGetCount();
  v5 = *(a1 + 568);
  if (!v5)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v6 = _cfDictionaryCopyKeysAndValues(v5, 0, &theArray);
  if (!v6)
  {
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _ProcessSWVolumeChanged(AirPlayReceiverSessionRef, CFNumberRef)", 33554482, "[%{ptr}] <AirPlayVolume> Setting volume %@ on session index %u\n", a1, a2, i);
        }

        APReceiverAudioSessionSetProperty(ValueAtIndex, @"VolumeLinear", a2);
      }
    }

    goto LABEL_10;
  }

  v9 = v6;
  APSLogErrorAt();
LABEL_11:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v9;
}

void _ForwardAudioInterruptionCommandsToReceiverAudioSessions(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v3 = @"RASP::HandleAudioInterruptionBegan";
  }

  else
  {
    v3 = @"RASP::HandleAudioInterruptionEnded";
  }

  if (!*(a1 + 683))
  {
    v7 = FigCFDictionaryCopyArrayOfValues();
    if (v7)
    {
      v8 = v7;
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v10 = Count;
        v11 = 0;
        v12 = "media";
        if (!a3)
        {
          v12 = "auxiliary";
        }

        v15 = v12;
        if (a2)
        {
          v13 = "began";
        }

        else
        {
          v13 = "ended";
        }

        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
          if ((CFObjectGetPropertyInt64Sync() != 0) == a3)
          {
            if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _ForwardAudioInterruptionCommandsToReceiverAudioSessions(AirPlayReceiverSessionRef, Boolean, CFDictionaryRef, Boolean)", 33554482, "[%{ptr}] Notifying %s audioSession [%{ptr}] about audio interruption %s.\n", a1, v15, ValueAtIndex, v13);
            }

            APReceiverAudioSessionPlatformControl(ValueAtIndex, v3);
          }

          ++v11;
        }

        while (v10 != v11);
      }

      CFRelease(v8);
    }
  }
}

void _HandleMediaAudioInterruption(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    if (!*(a1 + 683))
    {
      if (*(*(a1 + 24) + 251))
      {
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleMediaAudioInterruptionBegan(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] Mixable media audio session interruption began.\n", a1);
        }

        _ForwardAudioInterruptionCommandsToReceiverAudioSessions(a1, 1, 1);
        *(a1 + 753) = 1;
      }

      else if (*(a1 + 684))
      {
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleMediaAudioInterruptionBegan(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] Sender supports SurviveAudioInterruption.\n", a1);
        }

        if (*(a1 + 576))
        {
          v5 = AirPlayReceiverSessionSendMediaRemoteCommand(a1, -1, 1885435251, 0);
          if (gLogCategory_AirPlayReceiverCore <= 50)
          {
            v6 = v5;
            if (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize())
            {
              LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleMediaAudioInterruptionBegan(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] Mimic user pause because media audio was playing, error: %m\n", a1, v6);
            }
          }

          *(a1 + 753) = 1;
        }
      }

      else
      {
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleMediaAudioInterruptionBegan(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] Sender doesn't support SurviveAudioInterruption. Terminate session on audio session interruption.\n", a1);
        }

        _AirPlayReceiverSession_Terminate(a1);
        *(a1 + 752) = 1;
      }
    }
  }

  else if (!*(a1 + 683))
  {
    if (*(*(a1 + 24) + 251))
    {
      *(a1 + 753) = 0;
      _ForwardAudioInterruptionCommandsToReceiverAudioSessions(a1, 0, 1);
      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleMediaAudioInterruptionEnded(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] Mixable media audio session interruption ended.\n", a1);
      }
    }

    else if (*(a1 + 684))
    {
      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        if (*(a1 + 753))
        {
          v4 = "yes";
        }

        else
        {
          v4 = "no";
        }

        LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleMediaAudioInterruptionEnded(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] Sender supports resumable interruption. Was paused on media audio interruption? %s.\n", a1, v4);
      }

      if (*(a1 + 753))
      {
        *(a1 + 753) = 0;
        if (CFDictionaryGetInt64())
        {
          v7 = AirPlayReceiverSessionSendMediaRemoteCommand(a1, -1, 1886151033, 0);
          if (gLogCategory_AirPlayReceiverCore <= 50)
          {
            v8 = v7;
            if (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize())
            {
              LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleMediaAudioInterruptionEnded(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] Mimic user play when resumable interruption ended because media audio was playing before audio interruption, error: %m.\n", a1, v8);
            }
          }
        }

        else if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleMediaAudioInterruptionEnded(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] Do nothing on end media interruption, because the interruption was not resumable.\n", a1, v9);
        }
      }
    }

    else if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleMediaAudioInterruptionEnded(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] Sender doesn't support SurviveAudioInterruption. Do nothing. \n", a1);
    }
  }
}

uint64_t _HandleOtherProcessStartedPlaying(uint64_t result)
{
  if (!*(result + 683))
  {
    v1 = result;
    if (!*(result + 684))
    {
      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleOtherProcessStartedPlaying(AirPlayReceiverSessionRef)", 33554482, "[%{ptr}] Terminate session because another process started playing.\n", v1);
      }

      return _AirPlayReceiverSession_Terminate(v1);
    }
  }

  return result;
}

uint64_t _HandlePartnerProcessDeath(uint64_t result, __CFString *cf1)
{
  v2 = result;
  if (cf1 == @"MediaServices")
  {
    goto LABEL_24;
  }

  if (!cf1)
  {
    return result;
  }

  result = CFEqual(cf1, @"MediaServices");
  if (result)
  {
LABEL_24:
    if (*(v2 + 683))
    {
      return result;
    }

    if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandlePartnerProcessDeath(AirPlayReceiverSessionRef, CFStringRef)", 33554492, "[%{ptr}] Terminating AirPlay session due to MediaServices (mediaplaybackd, audiomxd) death.\n", v2);
    }

    *(v2 + 753) = 0;
    goto LABEL_17;
  }

  if (cf1 == @"MediaRemoteServices" || (result = CFEqual(cf1, @"MediaRemoteServices"), result))
  {
    if (*(v2 + 683))
    {
      if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandlePartnerProcessDeath(AirPlayReceiverSessionRef, CFStringRef)", 33554492, "[%{ptr}] Terminating RC session due to mediaremoted death.\n", v2);
      }

LABEL_17:

      return _AirPlayReceiverSession_Terminate(v2);
    }
  }

  return result;
}

uint64_t _HandleMediaAudioResumedForSession(uint64_t a1, __CFString *a2)
{
  result = APSIsAPMSpeaker();
  if (result && *(a1 + 681))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50)
    {
      if (gLogCategory_AirPlayReceiverCore != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleMediaAudioResumedForSession(AirPlayReceiverSessionRef, CFStringRef)", 33554482, "[%{ptr}] Media audio from '%@' has resumed.\n", a1, a2);
      }
    }

    if (a2 != @"com.apple.TVAirPlay")
    {
      if (!a2 || (result = CFEqual(a2, @"com.apple.TVAirPlay"), !result))
      {
        if (*(a1 + 32))
        {
          if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleMediaAudioResumedForSession(AirPlayReceiverSessionRef, CFStringRef)", 33554482, "[%{ptr}] Hijacking session because media audio from client '%@' has resumed.\n", a1, a2);
          }

          v5 = *(a1 + 32);

          return APReceiverRequestProcessorHijackAndBecomeMainSession(v5);
        }
      }
    }
  }

  return result;
}

uint64_t _HandleFadeAudioCommand(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 576))
  {
    if (CFDictionaryGetInt64() == 1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    CFDictionaryGetDouble();
    v5 = v4;
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleFadeAudioCommand(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] Applying fade of type %d with duration %lf.\n", v2, v3, *&v5);
    }

    v6 = *(v2 + 576);
    CMTimeMakeWithSeconds(&v7, v5, 1000);
    return APReceiverAudioSessionApplyVolumeFade(v6, v3, &v7);
  }

  else if (gLogCategory_AirPlayReceiverCore <= 50)
  {
    if (gLogCategory_AirPlayReceiverCore != -1)
    {
      return LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleFadeAudioCommand(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] Ignoring fade command in the adsence of media audio session.\n", v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleFadeAudioCommand(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] Ignoring fade command in the adsence of media audio session.\n", v2);
    }
  }

  return result;
}

uint64_t _HandlePerformPWDKeyExchangeCommand(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  v23 = 0;
  cf = 0;
  if (APSSettingsIsFeatureEnabled())
  {
    if (!*(a1 + 656))
    {
      CFDataGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      v6 = gLogCategory_AirPlayReceiverCore;
      if (gLogCategory_AirPlayReceiverCore <= 50)
      {
        if (gLogCategory_AirPlayReceiverCore != -1)
        {
LABEL_5:
          if (v6 > 30)
          {
            v7 = 1;
          }

          else
          {
            v7 = v6 == -1 && _LogCategory_Initialize() == 0;
          }

          LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _HandlePerformPWDKeyExchangeCommand(AirPlayReceiverSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "<PWDKeyExchange> [%{ptr}] Handling PWD key exchange request%?{end} with data=%1.64@", a1, v7, TypedValue);
          goto LABEL_13;
        }

        if (_LogCategory_Initialize())
        {
          v6 = gLogCategory_AirPlayReceiverCore;
          goto LABEL_5;
        }
      }

LABEL_13:
      v8 = (a1 + 648);
      if (!*(a1 + 648))
      {
        *(a1 + 640) = APSDisplayUtilsGetAggregatedDisplayProtectionBits();
        v23 = FigPWDKeyExchangeReceiverCreate();
        if (v23)
        {
          goto LABEL_36;
        }

        v9 = gLogCategory_AirPlayReceiverCore;
        if (gLogCategory_AirPlayReceiverCore <= 50)
        {
          if (gLogCategory_AirPlayReceiverCore == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_25;
            }

            v9 = gLogCategory_AirPlayReceiverCore;
          }

          v10 = *v8;
          if (v9 > 30)
          {
            v11 = 1;
          }

          else
          {
            v11 = v9 == -1 && _LogCategory_Initialize() == 0;
          }

          LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _HandlePerformPWDKeyExchangeCommand(AirPlayReceiverSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "<PWDKeyExchange> [%{ptr}] Created PWD key exchange receiver [%{ptr}]%?{end} with protectionBits=0x%x", a1, v10, v11, *(a1 + 640));
        }
      }

LABEL_25:
      v12 = *v8;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v13)
      {
        v23 = v13(v12, TypedValue, &cf, a1 + 656);
        if (!v23)
        {
          v14 = gLogCategory_AirPlayReceiverCore;
          if (gLogCategory_AirPlayReceiverCore <= 50)
          {
            if (gLogCategory_AirPlayReceiverCore != -1)
            {
LABEL_29:
              if (*(a1 + 656))
              {
                v15 = "yes";
              }

              else
              {
                v15 = "no";
              }

              if (v14 > 30)
              {
                v16 = 1;
              }

              else
              {
                v16 = v14 == -1 && _LogCategory_Initialize() == 0;
              }

              LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _HandlePerformPWDKeyExchangeCommand(AirPlayReceiverSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "<PWDKeyExchange> [%{ptr}] Processed PWD key exchange request - complete=%s%?{end}, data=%1.64@", a1, v15, v16, cf);
              goto LABEL_42;
            }

            if (_LogCategory_Initialize())
            {
              v14 = gLogCategory_AirPlayReceiverCore;
              goto LABEL_29;
            }
          }

LABEL_42:
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          FigCFDictionarySetValue();
          v18 = MEMORY[0x277CBED28];
          if (!*(a1 + 656))
          {
            v18 = MEMORY[0x277CBED10];
          }

          CFDictionarySetValue(Mutable, @"complete", *v18);
          if (!a3)
          {
LABEL_47:
            if (!v23)
            {
              goto LABEL_50;
            }

            goto LABEL_48;
          }

          *a3 = Mutable;
LABEL_46:
          Mutable = 0;
          goto LABEL_47;
        }
      }

      else
      {
        v23 = -12782;
      }

LABEL_36:
      APSLogErrorAt();
      goto LABEL_46;
    }

    APSLogErrorAt();
    Mutable = 0;
    v21 = -6709;
  }

  else
  {
    APSLogErrorAt();
    Mutable = 0;
    v21 = -6735;
  }

  v23 = v21;
LABEL_48:
  v19 = *(a1 + 648);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 648) = 0;
  }

LABEL_50:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v23;
}

uint64_t AirPlayReceiverSessionSendMediaRemoteCommand(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v15 = 0;
  v16 = 0;
  if (a2 < 0 && !a3)
  {
    APSLogErrorAt();
    v11 = 0;
    goto LABEL_17;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v11 = 4294960568;
    goto LABEL_17;
  }

  v9 = Mutable;
  CFDictionarySetValue(Mutable, @"type", @"sendMediaRemoteCommand");
  if ((a2 & 0x8000000000000000) == 0)
  {
    ASPrintF(&v15, "%zu", a2);
    if (!v15)
    {
      goto LABEL_22;
    }

    strlen(v15);
    CFDictionarySetCString();
  }

  if (!a3)
  {
    if (a4)
    {
LABEL_13:
      CFDictionarySetValue(v9, @"params", a4);
    }

LABEL_14:
    CFRetain(a1);
    CFRetain(v9);
    v10 = a1[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __AirPlayReceiverSessionSendMediaRemoteCommand_block_invoke;
    block[3] = &__block_descriptor_tmp_274;
    v14 = a3;
    block[4] = a1;
    block[5] = a2;
    block[6] = v9;
    dispatch_async(v10, block);
    v11 = 0;
    goto LABEL_15;
  }

  ASPrintF(&v16, "%C", a3);
  if (v16)
  {
    CFDictionarySetCString();
    if (a4)
    {
      if (a3 == 1685482595)
      {
        CFDictionaryMergeDictionary();
      }

      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_22:
  APSLogErrorAt();
  v11 = 4294960568;
LABEL_15:
  CFRelease(v9);
  if (v16)
  {
    free(v16);
    v16 = 0;
  }

LABEL_17:
  if (v15)
  {
    free(v15);
  }

  return v11;
}

void __AirPlayReceiverSessionSendMediaRemoteCommand_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 1885435251 || v2 == 1937010544 || v2 == 1886154867)
  {
    v7 = 0;
    if (CFObjectGetPropertyInt64Sync())
    {
      v5 = 0uLL;
      v6 = 0;
      AirPlayReceiverSessionSetRateAndAnchorTime(*(a1 + 32), 0, MEMORY[0x277CEA038], MEMORY[0x277CEA038], &v5);
    }
  }

  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionSendMediaRemoteCommand(AirPlayReceiverSessionRef, int64_t, APMediaRemoteCommand, CFDictionaryRef)_block_invoke", 33554482, "[%{ptr}] Sending MediaRemote command (MR: %lld) (AP: %'C) back to sender.\n", *(a1 + 32), *(a1 + 40), *(a1 + 56));
  }

  AirPlayReceiverSessionSendCommandForObject(*(a1 + 32), 0, *(a1 + 48), 0, 0);
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 48));
}

uint64_t AirPlayReceiverSessionSetRateAndAnchorTime(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, __int128 *a5)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  v5 = *(a1 + 576);
  if (!v5)
  {
    APSLogErrorAt();
    return 4294960578;
  }

  v6 = *(v5 + 112);
  if (!v6)
  {
    v8 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    return v8;
  }

  v7 = *(v5 + 40);
  v13[0] = *a3;
  *(v13 + 12) = *(a3 + 12);
  v12[0] = *a4;
  *(v12 + 12) = *(a4 + 12);
  v10 = *a5;
  v11 = *(a5 + 2);
  v8 = v6(v7, a2, v13, v12, &v10);
  if (v8)
  {
    goto LABEL_7;
  }

  return v8;
}

void *AirPlayReceiverSessionCopyProperty(uint64_t a1, int a2, CFTypeRef cf1, uint64_t a4, unsigned int *a5)
{
  v52 = 0;
  theArray = 0;
  v51 = 0;
  if (*(a1 + 441))
  {
    v19 = 0;
    v10 = 0;
    v14 = 0;
    v13 = 0;
    v47 = -6709;
LABEL_112:
    v52 = v47;
    goto LABEL_65;
  }

  if (!CFEqual(cf1, @"audioBufferInfo"))
  {
    if (CFEqual(cf1, @"metrics"))
    {
      Count = CFDictionaryGetCount(*(a1 + 568));
      v53 = 0;
      v54 = 0;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        APSLogErrorAt();
        v19 = 0;
        v27 = 0;
        goto LABEL_119;
      }

      CFDictionarySetInt64();
      CFDictionarySetInt64();
      mach_absolute_time();
      UpTicksToSeconds();
      CFDictionarySetInt64();
      v22 = *(a1 + 576);
      if (v22)
      {
        v23 = *(v22 + 160);
        if (!v23)
        {
          v36 = -12782;
          goto LABEL_49;
        }

        v24 = v23(*(v22 + 40), Mutable);
        if (v24)
        {
          v36 = v24;
          goto LABEL_49;
        }
      }

      v25 = _cfDictionaryCopyKeysAndValues(*(a1 + 568), &v54, &v53);
      if (!v25)
      {
        v26 = *MEMORY[0x277CBECE8];
        v27 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v27)
        {
          if (Count >= 1)
          {
            v28 = 0;
            v29 = MEMORY[0x277CBF138];
            v30 = MEMORY[0x277CBF150];
            while (1)
            {
              v31 = CFDictionaryCreateMutable(v26, 0, v29, v30);
              if (!v31)
              {
                break;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(v53, v28);
              if (!ValueAtIndex)
              {
                v36 = -72152;
                APSLogErrorAt();
                goto LABEL_47;
              }

              v33 = ValueAtIndex[20];
              if (!v33)
              {
                v36 = -12782;
LABEL_47:
                APSLogErrorAt();
                v19 = 0;
                goto LABEL_50;
              }

              v34 = v33(ValueAtIndex[5], v31);
              if (v34)
              {
                v36 = v34;
                goto LABEL_47;
              }

              v35 = CFArrayGetValueAtIndex(v54, v28);
              CFDictionarySetValue(v27, v35, v31);
              CFRelease(v31);
              if (Count == ++v28)
              {
                goto LABEL_36;
              }
            }

            APSLogErrorAt();
            v19 = 0;
            goto LABEL_102;
          }

LABEL_36:
          CFDictionarySetValue(Mutable, @"smet", v27);
          v36 = 0;
          v31 = 0;
          v19 = Mutable;
          Mutable = 0;
LABEL_50:
          if (v54)
          {
            CFRelease(v54);
          }

          if (v53)
          {
            CFRelease(v53);
          }

          if (v31)
          {
            CFRelease(v31);
          }

          if (v27)
          {
            CFRelease(v27);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v10 = 0;
          v14 = 0;
          v13 = 0;
          v52 = v36;
          goto LABEL_65;
        }

        APSLogErrorAt();
        v19 = 0;
LABEL_119:
        v31 = 0;
LABEL_102:
        v36 = -6728;
        goto LABEL_50;
      }

      v36 = v25;
LABEL_49:
      APSLogErrorAt();
      v19 = 0;
      v27 = 0;
      v31 = 0;
      goto LABEL_50;
    }

    if (CFEqual(cf1, @"hasActiveMediaAudioSession"))
    {
      if (*(a1 + 458) && *(a1 + 576))
      {
        v38 = MEMORY[0x277CBED28];
      }

      else
      {
        v38 = MEMORY[0x277CBED10];
      }

LABEL_62:
      v39 = *v38;
LABEL_63:
      v19 = CFRetain(v39);
LABEL_64:
      v10 = 0;
      v14 = 0;
      v13 = 0;
      v52 = 0;
      goto LABEL_65;
    }

    if (CFEqual(cf1, @"mediaAudioSession"))
    {
      if (*(a1 + 458))
      {
        v39 = *(a1 + 576);
        if (v39)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_81;
    }

    if (CFEqual(cf1, @"isRemoteControlOnly"))
    {
      v38 = MEMORY[0x277CBED28];
      if (!*(a1 + 683))
      {
        v38 = MEMORY[0x277CBED10];
      }

      goto LABEL_62;
    }

    if (CFEqual(cf1, @"isPlayingBufferedAudio"))
    {
      if (*(a1 + 576) && CFObjectGetPropertyInt64Sync() == 103)
      {
        v43 = APReceiverAudioSessionCopyProperty(*(a1 + 576), v41, @"IsPlayingBufferedAudio", v42, &v52);
      }

      else
      {
        v43 = CFRetain(*MEMORY[0x277CBED10]);
      }

      goto LABEL_90;
    }

    if (CFEqual(cf1, @"platformAudioLatency"))
    {
      v46 = *(a1 + 576);
      if (!v46)
      {
        APSLogErrorAt();
        v19 = 0;
        v10 = 0;
        v14 = 0;
        v13 = 0;
        v47 = -6718;
        goto LABEL_112;
      }

      v19 = APReceiverAudioSessionCopyProperty(v46, v44, @"PlatformAudioLatency", v45, &v52);
      if (v52)
      {
        APSLogErrorAt();
      }

      goto LABEL_95;
    }

    if (CFEqual(cf1, @"MRInfo"))
    {
      v39 = *(a1 + 760);
      if (v39)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (!CFEqual(cf1, @"networkClock"))
      {
        if (*(a1 + 683))
        {
          APSLogErrorAt();
          v52 = 0;
          if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverCore, "CFTypeRef AirPlayReceiverSessionCopyProperty(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, OSStatus *)", 33554482, "[%{ptr}] Don't call CopyProperty on platform object for remote control session.\n", a1);
          }

          v19 = 0;
          goto LABEL_95;
        }

        v43 = AirPlayReceiverSessionPlatformCopyProperty(a1, v48, cf1, v49, &v52);
LABEL_90:
        v19 = v43;
LABEL_95:
        v10 = 0;
LABEL_96:
        v14 = 0;
        goto LABEL_21;
      }

      v39 = *(a1 + 448);
      if (v39)
      {
        goto LABEL_63;
      }
    }

LABEL_81:
    v19 = 0;
    goto LABEL_64;
  }

  v8 = CFDictionaryGetCount(*(a1 + 568));
  v9 = *MEMORY[0x277CBECE8];
  v10 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v10)
  {
    APSLogErrorAt();
    v19 = 0;
    v14 = 0;
LABEL_111:
    v13 = 0;
    v47 = -6728;
    goto LABEL_112;
  }

  v11 = *(a1 + 576);
  if (v11)
  {
    LODWORD(v54) = 0;
    v12 = *(v11 + 176);
    if (v12)
    {
      v13 = v12(*(v11 + 40), &v54);
      v52 = v54;
      if (!v54)
      {
        v52 = CFDictionaryMergeDictionary();
        if (!v52)
        {
          if (v13)
          {
            CFRelease(v13);
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
      v13 = 0;
      v52 = -12782;
    }

    APSLogErrorAt();
    v19 = 0;
    v14 = 0;
    goto LABEL_65;
  }

LABEL_10:
  v52 = _cfDictionaryCopyKeysAndValues(*(a1 + 568), &v51, &theArray);
  if (v52)
  {
    APSLogErrorAt();
    v19 = 0;
    goto LABEL_96;
  }

  v14 = CFDictionaryCreateMutable(v9, v8, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v14)
  {
    APSLogErrorAt();
    v19 = 0;
    goto LABEL_111;
  }

  if (v8 < 1)
  {
LABEL_20:
    CFDictionarySetValue(v10, @"streams", v14);
    v19 = CFRetain(v10);
LABEL_21:
    v13 = 0;
    goto LABEL_65;
  }

  v15 = 0;
  while (1)
  {
    v16 = CFArrayGetValueAtIndex(theArray, v15);
    LODWORD(v54) = 0;
    if (!v16)
    {
      break;
    }

    v17 = v16[22];
    if (!v17)
    {
      v37 = -12782;
      goto LABEL_38;
    }

    v13 = v17(v16[5], &v54);
    v52 = v54;
    if (v54)
    {
      goto LABEL_39;
    }

    v18 = CFArrayGetValueAtIndex(v51, v15);
    CFDictionarySetValue(v14, v18, v13);
    if (v13)
    {
      CFRelease(v13);
    }

    if (v8 == ++v15)
    {
      goto LABEL_20;
    }
  }

  v37 = -72152;
  APSLogErrorAt();
LABEL_38:
  v13 = 0;
  v52 = v37;
LABEL_39:
  APSLogErrorAt();
  v19 = 0;
LABEL_65:
  if (v51)
  {
    CFRelease(v51);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (a5)
  {
    *a5 = v52;
  }

  return v19;
}

uint64_t AirPlayReceiverSessionSetProperty(uint64_t a1, int a2, CFTypeRef cf1, __CFString *a4, const void *a5)
{
  v5 = a1;
  v32 = 0;
  if (!a1)
  {
    goto LABEL_65;
  }

  if (*(a1 + 683))
  {
    APSLogErrorAt();
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionSetProperty(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFTypeRef)", 33554482, "[%{ptr}] SetProperty not applicable for remote control session.\n", v5);
    }

    return 0;
  }

  if (CFEqual(cf1, @"metaData"))
  {
    if (a5)
    {
      v9 = CFGetTypeID(a5);
      if (v9 == CFDictionaryGetTypeID())
      {
        v5 = AirPlayReceiverSessionPlatformSetProperty(v5, v10, @"metaData", 0, a5);
        if (v5)
        {
          goto LABEL_65;
        }

        return v5;
      }
    }

    goto LABEL_8;
  }

  if (CFEqual(cf1, @"mrNowPlayingInfo"))
  {
    if (a5)
    {
      v12 = CFGetTypeID(a5);
      if (v12 == CFDictionaryGetTypeID())
      {
        v14 = *(v5 + 576);
        if (v14)
        {
          APReceiverAudioSessionSetProperty(v14, @"RTCMetadata", a5);
        }

        v5 = AirPlayReceiverSessionPlatformSetProperty(v5, v13, @"mrNowPlayingInfo", a4, a5);
        if (!v5)
        {
          return v5;
        }

        goto LABEL_65;
      }
    }

    goto LABEL_8;
  }

  if (CFEqual(cf1, @"MRInfo"))
  {
    v11 = *(v5 + 760);
    if (a5)
    {
      CFRetain(a5);
    }

    *(v5 + 760) = a5;
    if (v11)
    {
      CFRelease(v11);
    }

    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionSetProperty(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFTypeRef)", 33554482, "[%{ptr}] Posting MRInfo did change", v5);
    }

    notify_post("com.apple.airplay.mrInfoDidChange");
    return 0;
  }

  if (CFEqual(cf1, @"progress"))
  {
    v30 = 0;
    v31 = 0;
    if (a5 && (v17 = CFGetTypeID(a5), v17 == CFDictionaryGetTypeID()))
    {
      if (*(v5 + 576))
      {
        Int64Ranged = CFDictionaryGetInt64Ranged();
        v19 = CFDictionaryGetInt64Ranged();
        v20 = CFDictionaryGetInt64Ranged();
        v21 = *(v5 + 576);
        if (v21 && !*(v5 + 440))
        {
          v22 = *(v21 + 120);
          if (!v22)
          {
            v32 = -12782;
LABEL_59:
            APSLogErrorAt();
            return v32;
          }

          v32 = v22(*(v21 + 40), Int64Ranged, v19, v20, &v31, &v30);
          if (v32)
          {
            goto LABEL_59;
          }

          v32 = CFObjectSetPropertyF(v5, 0, AirPlayReceiverSessionPlatformSetProperty, 1, @"progress", 0, "{%kO=%f%kO=%f}", @"elapsedTime", v31, @"duration", v30);
          if (v32)
          {
            goto LABEL_59;
          }
        }

        return 0;
      }

      APSLogErrorAt();
      return -6718;
    }

    else
    {
      APSLogErrorAt();
      return -6756;
    }
  }

  if (CFEqual(cf1, @"timelineOffset"))
  {
    if (a5)
    {
      v23 = CFGetTypeID(a5);
      if (v23 == CFNumberGetTypeID())
      {
        v24 = *(v5 + 576);
        if (!v24)
        {
          APSLogErrorAt();
          return 4294960578;
        }

        v5 = APReceiverAudioSessionSetProperty(v24, @"timelineOffset", a5);
        if (v5)
        {
          goto LABEL_65;
        }

        return v5;
      }
    }

    goto LABEL_8;
  }

  if (CFEqual(cf1, @"mrSupportedCommandsFromSender"))
  {
    if (a5)
    {
      v26 = CFGetTypeID(a5);
      if (v26 == CFArrayGetTypeID())
      {
        v5 = AirPlayReceiverSessionPlatformSetProperty(v5, v27, @"mrSupportedCommandsFromSender", 0, a5);
        if (v5)
        {
          goto LABEL_65;
        }

        return v5;
      }
    }

    goto LABEL_8;
  }

  if (CFEqual(cf1, @"mrPlaybackState"))
  {
    if (a5)
    {
      v28 = CFGetTypeID(a5);
      if (v28 == CFNumberGetTypeID())
      {
        v5 = AirPlayReceiverSessionPlatformSetProperty(v5, v29, @"mrPlaybackState", 0, a5);
        if (v5)
        {
LABEL_65:
          APSLogErrorAt();
        }

        return v5;
      }
    }

LABEL_8:
    APSLogErrorAt();
    return 4294960540;
  }

  return AirPlayReceiverSessionPlatformSetProperty(v5, v25, cf1, a4, a5);
}

uint64_t AirPlayReceiverSessionSetSecurityInfo(uint64_t a1, __CFDictionary *a2, CFTypeRef cf, void *a4, int a5, _OWORD *a6, _OWORD *a7)
{
  v10 = cf;
  v25 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 488);
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 488) = v10;
  if (v13)
  {
    CFRelease(v13);
    v10 = *(a1 + 488);
  }

  if (v10)
  {
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v14)
    {
      if (v14(v10))
      {
        return 0;
      }
    }
  }

  if (!a6 || !a7)
  {
    Int64 = CFDictionaryGetInt64();
    if (Int64 != 1)
    {
      CFDictionaryGetData();
      if (Int64 == 32 || Int64 == 8)
      {
        if (a4 && *a4)
        {
          OowSGu();
          v22 = v17;
          if (!v17 || *a4 && (IPaI1oem5iL(), *a4 = 0, !v22))
          {
            v22 = -6743;
            jEHf8Xzsv8K(0);
          }

          APSLogErrorAt();
        }

        else
        {
          APSLogErrorAt();
          v22 = -6754;
        }

        if (!v22)
        {
          v18 = _SetSecurityInfoAES(a1, &v24, &v23);
          for (i = 0; i != 16; ++i)
          {
            *(&v24 + i) = 0;
          }

          for (j = 0; j != 16; ++j)
          {
            *(&v23 + j) = 0;
          }

          if (v18)
          {
            goto LABEL_37;
          }

          goto LABEL_32;
        }
      }

      else if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _GetDecryptKey(AirPlayReceiverSessionRef, CFDictionaryRef, FPSAPContextRef *, int, AirPlayEncryptionType, uint8_t *, uint8_t *)", 33554492, "Bad ET: %d\n", Int64);
      }

      APSLogErrorAt();
      return 4294960542;
    }

LABEL_32:
    v21 = 0;
    goto LABEL_33;
  }

  v21 = _SetSecurityInfoAES(a1, a6, a7);
  if (!v21)
  {
LABEL_33:
    CFDictionaryRemoveValue(a2, @"ekey");
    CFDictionaryRemoveValue(a2, @"eiv");
    return v21;
  }

LABEL_37:
  APSLogErrorAt();
  return 4294960534;
}

uint64_t _SetSecurityInfoAES(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v6 = a1 + 360;
  AES_CBCFrame_Final();
  *(a1 + 384) = 0;
  v7 = AES_CBCFrame_Init();
  if (v7)
  {
    APSLogErrorAt();
  }

  else
  {
    *(a1 + 384) = v6;
    *(a1 + 392) = *a2;
    *(a1 + 408) = *a3;
  }

  return v7;
}

uint64_t AirPlayReceiverSessionSendCommand_b(uint64_t a1, const void *a2, void *aBlock)
{
  if (!aBlock)
  {
    v7 = AirPlayReceiverSessionSendCommandForObject(a1, 0, a2, 0, 0);
    if (!v7)
    {
      return v7;
    }

    goto LABEL_5;
  }

  v5 = _Block_copy(aBlock);
  if (!v5)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v6 = v5;
  v7 = AirPlayReceiverSessionSendCommandForObject(a1, 0, a2, _AirPlayReceiverSessionSendCommandCompletion_b, v5);
  if (v7)
  {
    _Block_release(v6);
LABEL_5:
    APSLogErrorAt();
  }

  return v7;
}

void _AirPlayReceiverSessionSendCommandCompletion_b(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  a3[2](a3, a1, a2);

  _Block_release(a3);
}

uint64_t AirPlayReceiverSessionSetup(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  v284 = *MEMORY[0x277D85DE8];
  v245 = 0;
  v5 = *(a1 + 456);
  theArray = 0;
  v6 = &unk_27E37E000;
  v7 = gLogCategory_AirPlayReceiverCore;
  if (gLogCategory_AirPlayReceiverCore <= 50)
  {
    if (gLogCategory_AirPlayReceiverCore == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v7 = gLogCategory_AirPlayReceiverCore;
    }

    v8 = *(a1 + 328);
    if (v7 > 20)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7 != -1 || _LogCategory_Initialize() != 0;
    }

    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Setting up session [%{ptr}]: %llu with %##a %?@\n", a1, v8, a1 + 224, v9, a2);
  }

LABEL_11:
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = Mutable;
  if (!Mutable)
  {
    APSLogErrorAt();
    v245 = -6728;
    goto LABEL_687;
  }

  v238 = a2;
  v243 = Mutable;
  if (!v5)
  {
    if (*(a1 + 456))
    {
      APSLogErrorAt();
      v27 = 4294960577;
LABEL_774:
      if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _ControlSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFMutableDictionaryRef)", 33554492, "[%{ptr}] Control setup failed: %#m\n", a1, v27);
      }

      v245 = v27;
LABEL_710:
      APSLogErrorAt();
      goto LABEL_687;
    }

    if (CFEqual(*(a1 + 672), @"None"))
    {
      goto LABEL_47;
    }

    *v262 = 0;
    cf[0] = 0;
    memset(bytes, 0, 28);
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v13 = *(a1 + 424);
    v14 = *MEMORY[0x277CBECE8];
    v15 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a1 + 152), 0x8000100u);
    if (!v15)
    {
      APSLogErrorAt();
      v27 = 4294960568;
      goto LABEL_773;
    }

    v16 = v15;
    if (CFEqual(@"PTP", TypedValue))
    {
      v280 = 0u;
      v281 = 0u;
      v278 = 0u;
      v279 = 0u;
      v276 = 0u;
      v277 = 0u;
      memset(cStr, 0, sizeof(cStr));
      if (*(a1 + 448))
      {
        APSLogErrorAt();
        v23 = 0;
        *v262 = -6709;
        goto LABEL_44;
      }

      *v262 = APSNetworkClockPTPCreate();
      if (!*v262)
      {
        mach_absolute_time();
        v17 = *(a1 + 448);
        v18 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (v18)
        {
          *v262 = v18(v17, a1);
          if (!*v262)
          {
            if (*(a1 + 681))
            {
              APSIsMemberOfHTGroup();
            }

            *v262 = APSNetworkClockDetermineAndSetOrUpdateLocalPeerInfo();
            if (*v262)
            {
              APSLogErrorAt();
              v23 = 0;
            }

            else
            {
              CFArrayGetTypeID();
              v21 = CFDictionaryGetTypedValue();
              CFDictionaryGetTypeID();
              v22 = CFDictionaryGetTypedValue();
              *v262 = SockAddrToString();
              if (!*v262)
              {
                v23 = CFStringCreateWithCString(v14, cStr, 0x8000100u);
                v11 = v243;
                if (v22)
                {
                  *v262 = APSNetworkClockAddOrUpdatePeerFromSerializablePeerDictionary();
                  if (*v262)
                  {
                    goto LABEL_795;
                  }
                }

                else
                {
                  *v262 = APSNetworkClockAddOrUpdatePeerWithAddressAndInterfaceNameStrings();
                  if (*v262)
                  {
                    goto LABEL_795;
                  }
                }

                if (!v21 || (*v262 = APSNetworkClockSetPeersFromSetPeersMessagePayload()) == 0)
                {
                  FigCFDictionarySetValue();
                  v51 = *(a1 + 32);
                  mach_absolute_time();
                  UpTicksToMilliseconds();
                  Int64 = CFNumberCreateInt64();
                  v53 = *(*(CMBaseObjectGetVTable() + 16) + 72);
                  if (v53)
                  {
                    a2 = v238;
                    v53(v51, @"networkClockStartDurationMs", Int64);
                    goto LABEL_44;
                  }

                  goto LABEL_796;
                }

LABEL_795:
                APSLogErrorAt();
LABEL_796:
                a2 = v238;
LABEL_44:
                CFRelease(v16);
                if (v23)
                {
                  CFRelease(v23);
                }

                v27 = *v262;
                if (!*v262)
                {
LABEL_47:
                  if (!*(a1 + 457))
                  {
                    goto LABEL_55;
                  }

                  v28 = ServerSocketOpen();
                  if (!v28)
                  {
                    if (*(a1 + 424))
                    {
                      SocketSetP2P();
                    }

                    CFDictionarySetInt64();
                    if (gLogCategory_AirPlayReceiverCore <= 30 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _ControlSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFMutableDictionaryRef)", 33554462, "Events set up on port %d\n", *(a1 + 480));
                    }

LABEL_55:
                    *(a1 + 456) = 1;
                    v29 = APReceiverStatsCollectorCreate();
                    *(a1 + 176) = v29;
                    if (!v29)
                    {
LABEL_63:
                      v245 = 0;
                      if (*(a1 + 600) && !*(a1 + 683))
                      {
                        CMNotificationCenterGetDefaultLocalCenter();
                        CMNotificationCenterAddListener();
                      }

                      if (CFDictionaryGetInt64())
                      {
                        *(a1 + 724) = 1;
                        CFDictionaryGetDouble();
                        *(a1 + 728) = v33;
                      }

                      goto LABEL_68;
                    }

                    if (gLogCategory_AirPlayReceiverCore <= 30)
                    {
                      if (gLogCategory_AirPlayReceiverCore == -1)
                      {
                        if (!_LogCategory_Initialize())
                        {
                          goto LABEL_60;
                        }

                        v29 = *(a1 + 176);
                      }

                      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _ControlSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFMutableDictionaryRef)", 33554462, "[%{ptr}] created stats collector [%{ptr}]\n", a1, v29);
                    }

LABEL_60:
                    v30 = *(a1 + 600);
                    if (v30)
                    {
                      v31 = *(a1 + 176);
                      v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v32)
                      {
                        v32(v30, @"StatsCollector", v31);
                      }
                    }

                    goto LABEL_63;
                  }

                  v27 = v28;
                }

LABEL_773:
                APSLogErrorAt();
                _ControlTearDown(a1);
                goto LABEL_774;
              }

              APSLogErrorAt();
              v23 = 0;
              a2 = v238;
            }

            v11 = v243;
            goto LABEL_44;
          }
        }

        else
        {
          *v262 = -12782;
        }
      }
    }

    else
    {
      v19 = CFDictionaryGetInt64();
      if (v19 >= 1)
      {
        v20 = v19;
      }

      else
      {
        v20 = 6002;
      }

      SockAddrCopy();
      SockAddrSetPort();
      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _TimingSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] NTP clock server %##a\n", a1, bytes);
      }

      v24 = *(a1 + 560);
      *cStr = *bytes;
      *&cStr[3] = *&bytes[3];
      *v262 = APNetworkClockNTPClientLegacyCreate(v14, v24, v13, cStr, v20, (a1 + 448));
      if (!*v262)
      {
        v25 = *(a1 + 448);
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (v26)
        {
          *v262 = v26(v25, a1);
          if (!*v262)
          {
LABEL_43:
            v23 = 0;
            goto LABEL_44;
          }
        }

        else
        {
          *v262 = -12782;
        }
      }
    }

    APSLogErrorAt();
    goto LABEL_43;
  }

LABEL_68:
  if (*(a1 + 768) || !CFDictionaryGetValue(a2, @"mc2ucDetectionSSMGroupInfo"))
  {
    goto LABEL_282;
  }

  value = 0;
  p_value = &value;
  v260 = 0x2000000000;
  v261 = -1;
  v254 = 0;
  v255 = &v254;
  v256 = 0x2000000000;
  v257 = -1;
  v253 = 1;
  v283 = 0;
  memset(v282, 0, sizeof(v282));
  v280 = 0u;
  v281 = 0u;
  v278 = 0u;
  v279 = 0u;
  v276 = 0u;
  v277 = 0u;
  memset(cStr, 0, sizeof(cStr));
  v274 = 0;
  memset(v273, 0, sizeof(v273));
  v271 = 0u;
  v272 = 0u;
  v269 = 0u;
  v270 = 0u;
  v267 = 0u;
  v268 = 0u;
  memset(bytes, 0, sizeof(bytes));
  v252 = 0;
  v251 = 4;
  if (APSSettingsIsFeatureEnabled())
  {
    v34 = v5;
    v35 = if_nametoindex((a1 + 152));
    if (gLogCategory_APMulticastProbeReceiver <= 10 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554442, "Using interface [%s] with index=%u\n", (a1 + 152), v35);
    }

    v241 = v35;
    SockAddr = APSCFDictionaryGetSockAddr();
    if (SockAddr)
    {
      if (gLogCategory_APMulticastProbeReceiver <= 50 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554482, "SourceIPv4Addr is not found!\n");
      }

LABEL_87:
      v37 = APSCFDictionaryGetSockAddr();
      if (v37)
      {
        if (gLogCategory_APMulticastProbeReceiver <= 50 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554482, "SourceIPv6Addr is not found!\n");
        }

        if (!SockAddr)
        {
          v38 = gLogCategory_APMulticastProbeReceiver;
LABEL_101:
          if (v38 <= 50 && (v38 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554482, "Creating APMulticastProbeReceiver with IPv4SrcAddr=%##a, IPv4GrpAddr=%##a, IPv6SrcAddr=%##a, IPv6GrpAddr=%##a\n", v282 + 4, &cStr[1], v273 + 4, &bytes[1]);
          }

          if (APMulticastProbeReceiverGetTypeID_initOnce != -1)
          {
            dispatch_once_f(&APMulticastProbeReceiverGetTypeID_initOnce, &APMulticastProbeReceiverGetTypeID_typeID, _APMulticastProbeReceiverClassRegister);
          }

          v6 = &unk_27E37E000;
          Instance = _CFRuntimeCreateInstance();
          v40 = Instance;
          if (Instance && (*(Instance + 3) = 0u, *(Instance + 4) = 0u, *(Instance + 1) = 0u, *(Instance + 2) = 0u, v41 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0), v40[2] = dispatch_queue_create("AirPlayMulticastProbeReceiverQueue", v41), v40[6] = a1, v40[7] = _AirPlayReceiverSessionUpdateMC2UCStatus, v42 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (v40[8] = v42) != 0))
          {
            CFDataGetTypeID();
            if (!CFDictionaryGetTypedValue())
            {
LABEL_115:
              if (SockAddr)
              {
                goto LABEL_116;
              }

              v44 = socket(BYTE1(cStr[1]), 2, 17);
              *(p_value + 6) = v44;
              if ((v44 & 0x80000000) == 0)
              {
LABEL_121:
                v252 = 0;
                v45 = getsockopt(v44, 0, 9697, &v252, &v251);
                v46 = gLogCategory_APMulticastProbeReceiver;
                if (v45)
                {
                  v5 = v34;
                  if (gLogCategory_APMulticastProbeReceiver <= 90)
                  {
LABEL_123:
                    v47 = v45;
                    a2 = v238;
                    v11 = v243;
                    if (v46 != -1 || _LogCategory_Initialize())
                    {
                      v213 = strerror(v47);
                      LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to get IP_RECV_LINK_ADDR_TYPE on IPv4 socket with error: %s\n", v40, v213, v221, v224);
                    }

                    goto LABEL_250;
                  }

LABEL_179:
                  a2 = v238;
                  v11 = v243;
                  goto LABEL_265;
                }

                if (gLogCategory_APMulticastProbeReceiver <= 40 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554472, "[%{ptr}] IP_RECV_LINK_ADDR_TYPE default setting=%d\n", v40, v252);
                }

                v253 = 1;
                v5 = v34;
                if (setsockopt(*(p_value + 6), 0xFFFF, 4, &v253, 4u) < 0)
                {
                  v47 = *__error();
                  if (v47)
                  {
                    if (gLogCategory_APMulticastProbeReceiver <= 90)
                    {
                      a2 = v238;
                      v11 = v243;
                      if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                      {
                        v215 = strerror(v47);
                        LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to set SO_REUSEADDR on IPv4 socket with error: %s\n", v40, v215, v221, v224);
                      }

                      goto LABEL_250;
                    }

                    goto LABEL_179;
                  }
                }

                v253 = 1;
                if (setsockopt(*(p_value + 6), 0xFFFF, 512, &v253, 4u) < 0)
                {
                  v47 = *__error();
                  if (v47)
                  {
                    if (gLogCategory_APMulticastProbeReceiver <= 90)
                    {
                      a2 = v238;
                      v11 = v243;
                      if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                      {
                        v216 = strerror(v47);
                        LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to set SO_REUSEPORT on IPv4 socket with error: %s\n", v40, v216, v221, v224);
                      }

                      goto LABEL_250;
                    }

                    goto LABEL_179;
                  }
                }

                v253 = 1;
                if (setsockopt(*(p_value + 6), 0, 9697, &v253, 4u) < 0)
                {
                  v47 = *__error();
                  if (v47)
                  {
                    if (gLogCategory_APMulticastProbeReceiver <= 90)
                    {
                      a2 = v238;
                      v11 = v243;
                      if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                      {
                        v217 = strerror(v47);
                        LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to set IP_RECV_LINK_ADDR_TYPE on IPv4 socket with error: %s\n", v40, v217, v221, v224);
                      }

                      goto LABEL_250;
                    }

                    goto LABEL_179;
                  }
                }

                v45 = getsockopt(*(p_value + 6), 0, 9697, &v252, &v251);
                v46 = gLogCategory_APMulticastProbeReceiver;
                if (v45)
                {
                  if (gLogCategory_APMulticastProbeReceiver <= 90)
                  {
                    goto LABEL_123;
                  }

                  goto LABEL_179;
                }

                if (gLogCategory_APMulticastProbeReceiver <= 40 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554472, "[%{ptr}] IP_RECV_LINK_ADDR_TYPE enabled=%d\n", v40, v252);
                }

                v11 = v243;
                if (bind(*(p_value + 6), &cStr[1], 0x10u))
                {
                  if (*__error())
                  {
                    v47 = *__error();
                    if (!v47)
                    {
                      goto LABEL_219;
                    }
                  }

                  else
                  {
                    v47 = 4294960596;
                  }

                  if (gLogCategory_APMulticastProbeReceiver <= 90)
                  {
                    a2 = v238;
                    if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                    {
                      v225 = strerror(v47);
                      LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to bind to IPv4 configured port=%u with err=%#m, %s\n", v40, 0, v47, v225);
                    }

                    goto LABEL_250;
                  }

                  goto LABEL_264;
                }

LABEL_219:
                cStr[0] = v241;
                if (setsockopt(*(p_value + 6), 0, 82, cStr, 0x104u) < 0)
                {
                  v47 = *__error();
                  if (v47)
                  {
                    if (gLogCategory_APMulticastProbeReceiver <= 90)
                    {
                      a2 = v238;
                      if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                      {
                        LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to join IPv4 source MC group with error: %#m\n", v40, v47, v221, v224);
                      }

                      goto LABEL_250;
                    }

                    goto LABEL_264;
                  }
                }

                v54 = dispatch_source_create(MEMORY[0x277D85D28], *(p_value + 6), 0, v40[2]);
                v40[3] = v54;
                if (!v54)
                {
                  if (gLogCategory_APMulticastProbeReceiver <= 90)
                  {
                    a2 = v238;
                    if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                    {
                      LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to create dispatch source from IPv4 recv socket\n", v40);
                    }

                    v47 = 4294960568;
                    goto LABEL_250;
                  }

                  goto LABEL_264;
                }

                cf[0] = MEMORY[0x277D85DD0];
                cf[1] = 0x40000000;
                cf[2] = __APMulticastProbeReceiverCreate_block_invoke;
                cf[3] = &unk_278C5F490;
                cf[4] = &value;
                cf[5] = v40;
                dispatch_source_set_event_handler(v54, cf);
                v55 = v40[3];
                *&handler = MEMORY[0x277D85DD0];
                *(&handler + 1) = 0x40000000;
                v248 = __APMulticastProbeReceiverCreate_block_invoke_2;
                v249 = &unk_278C5F4B8;
                v250 = &value;
                dispatch_source_set_cancel_handler(v55, &handler);
                dispatch_resume(v40[3]);
LABEL_116:
                v11 = v243;
                v5 = v34;
                if (v37)
                {
                  goto LABEL_117;
                }

                v48 = socket(BYTE1(bytes[1]), 2, 17);
                *(v255 + 6) = v48;
                if ((v48 & 0x80000000) == 0)
                {
LABEL_126:
                  v252 = 0;
                  v49 = getsockopt(v48, 41, 9697, &v252, &v251);
                  v50 = gLogCategory_APMulticastProbeReceiver;
                  if (v49)
                  {
                    goto LABEL_127;
                  }

                  if (gLogCategory_APMulticastProbeReceiver <= 40 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554472, "[%{ptr}] IPV6_RECV_LINK_ADDR_TYPE default setting=%d\n", v40, v252);
                  }

                  v253 = 1;
                  if (setsockopt(*(v255 + 6), 0xFFFF, 4, &v253, 4u) < 0)
                  {
                    v47 = *__error();
                    if (v47)
                    {
                      if (gLogCategory_APMulticastProbeReceiver <= 90)
                      {
                        a2 = v238;
                        if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                        {
                          v218 = strerror(v47);
                          LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to set SO_REUSEADDR on IPv6 socket with error: %s\n", v40, v218, v221, v224);
                        }

                        goto LABEL_250;
                      }

                      goto LABEL_264;
                    }
                  }

                  v253 = 1;
                  if (setsockopt(*(v255 + 6), 0xFFFF, 512, &v253, 4u) < 0)
                  {
                    v47 = *__error();
                    if (v47)
                    {
                      if (gLogCategory_APMulticastProbeReceiver <= 90)
                      {
                        a2 = v238;
                        if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                        {
                          v219 = strerror(v47);
                          LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to set SO_REUSEPORT on IPv6 socket with error: %s\n", v40, v219, v221, v224);
                        }

                        goto LABEL_250;
                      }

                      goto LABEL_264;
                    }
                  }

                  v253 = 1;
                  if (setsockopt(*(v255 + 6), 41, 9697, &v253, 4u) < 0)
                  {
                    v47 = *__error();
                    if (v47)
                    {
                      if (gLogCategory_APMulticastProbeReceiver <= 90)
                      {
                        a2 = v238;
                        if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                        {
                          v220 = strerror(v47);
                          LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to set IPV6_RECV_LINK_ADDR_TYPE on IPv6 socket with error: %s\n", v40, v220, v221, v224);
                        }

                        goto LABEL_250;
                      }

                      goto LABEL_264;
                    }
                  }

                  v252 = 0;
                  v49 = getsockopt(*(v255 + 6), 41, 9697, &v252, &v251);
                  v50 = gLogCategory_APMulticastProbeReceiver;
                  if (v49)
                  {
LABEL_127:
                    if (v50 <= 90)
                    {
                      v47 = v49;
                      a2 = v238;
                      if (v50 != -1 || _LogCategory_Initialize())
                      {
                        v214 = strerror(v47);
                        LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to get IPV6_RECV_LINK_ADDR_TYPE on IPv6 socket with error: %s\n", v40, v214, v221, v224);
                      }

                      goto LABEL_250;
                    }

                    goto LABEL_264;
                  }

                  if (gLogCategory_APMulticastProbeReceiver <= 40 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554472, "[%{ptr}] IPV6_RECV_LINK_ADDR_TYPE enabled=%d\n", v40, v252);
                  }

                  a2 = v238;
                  if (!bind(*(v255 + 6), &bytes[1], 0x1Cu))
                  {
                    goto LABEL_243;
                  }

                  if (*__error())
                  {
                    v47 = *__error();
                    if (!v47)
                    {
LABEL_243:
                      bytes[0] = v241;
                      if (setsockopt(*(v255 + 6), 41, 82, bytes, 0x104u) < 0)
                      {
                        v47 = *__error();
                        if (v47)
                        {
                          if (gLogCategory_APMulticastProbeReceiver <= 90)
                          {
                            if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                            {
                              LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to join IPv6 source MC group with error: %#m\n", v40, v47);
                            }

                            goto LABEL_250;
                          }

LABEL_265:
                          v58 = *(p_value + 6);
                          if ((v58 & 0x80000000) == 0)
                          {
                            if (close(v58) && *__error())
                            {
                              __error();
                            }

                            *(p_value + 6) = -1;
                          }

                          v59 = *(v255 + 6);
                          if ((v59 & 0x80000000) == 0)
                          {
                            if (close(v59) && *__error())
                            {
                              __error();
                            }

                            *(v255 + 6) = -1;
                          }

                          if (v40)
                          {
                            CFRelease(v40);
                          }

                          goto LABEL_277;
                        }
                      }

                      v56 = dispatch_source_create(MEMORY[0x277D85D28], *(v255 + 6), 0, v40[2]);
                      v40[4] = v56;
                      if (v56)
                      {
                        *v262 = MEMORY[0x277D85DD0];
                        *&v262[8] = 0x40000000;
                        *&v262[16] = __APMulticastProbeReceiverCreate_block_invoke_3;
                        *&v262[24] = &unk_278C5F4E0;
                        v263 = &v254;
                        v264 = v40;
                        dispatch_source_set_event_handler(v56, v262);
                        v57 = v40[4];
                        v246[0] = MEMORY[0x277D85DD0];
                        v246[1] = 0x40000000;
                        v246[2] = __APMulticastProbeReceiverCreate_block_invoke_4;
                        v246[3] = &unk_278C5F508;
                        v246[4] = &v254;
                        dispatch_source_set_cancel_handler(v57, v246);
                        dispatch_resume(v40[4]);
LABEL_117:
                        if (gLogCategory_APMulticastProbeReceiver <= 50 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554482, "Created APMulticastProbeReceiver [%{ptr}]\n", v40);
                        }

                        *(a1 + 768) = v40;
                        a2 = v238;
                        goto LABEL_277;
                      }

                      if (gLogCategory_APMulticastProbeReceiver <= 90)
                      {
                        if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                        {
                          LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to create dispatch source from IPv6 recv socket\n", v40);
                        }

                        v47 = 4294960568;
                        a2 = v238;
                        goto LABEL_250;
                      }

LABEL_264:
                      a2 = v238;
                      goto LABEL_265;
                    }
                  }

                  else
                  {
                    v47 = 4294960596;
                  }

                  if (gLogCategory_APMulticastProbeReceiver <= 90)
                  {
                    if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                    {
                      v226 = strerror(v47);
                      LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to bind to IPv6 configured port=%u with err=%#m, %s\n", v40, 0, v47, v226);
                    }

                    goto LABEL_250;
                  }

                  goto LABEL_265;
                }

                if (*__error())
                {
                  v47 = *__error();
                  if (!v47)
                  {
                    v48 = *(v255 + 6);
                    goto LABEL_126;
                  }
                }

                else
                {
                  v47 = 4294960596;
                }

                if (gLogCategory_APMulticastProbeReceiver <= 90)
                {
                  a2 = v238;
                  if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                  {
                    v223 = strerror(v47);
                    LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to create IPv6 socket with err=%#m, %s\n", v40, v47, v223, v224);
                  }

                  goto LABEL_250;
                }

                goto LABEL_264;
              }

              if (*__error())
              {
                v47 = *__error();
                if (!v47)
                {
                  v44 = *(p_value + 6);
                  goto LABEL_121;
                }
              }

              else
              {
                v47 = 4294960596;
              }

              if (gLogCategory_APMulticastProbeReceiver <= 90)
              {
                a2 = v238;
                v11 = v243;
                v5 = v34;
                if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
                {
                  v222 = strerror(v47);
                  LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "[%{ptr}] Failed to create IPv4 socket with err=%#m, %s\n", v40, v47, v222, v224);
                }

                goto LABEL_250;
              }

              a2 = v238;
LABEL_149:
              v11 = v243;
              v5 = v34;
              goto LABEL_265;
            }

            v43 = APSCryptorChaCha20Poly1305Create();
            if (!v43)
            {
              if (gLogCategory_APMulticastProbeReceiver <= 40 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554472, "[%{ptr}] ChaCha Cryptor created with shared key\n", v40);
              }

              goto LABEL_115;
            }

            v47 = v43;
            APSLogErrorAt();
          }

          else
          {
            APSLogErrorAt();
            v47 = 4294960568;
          }

          a2 = v238;
LABEL_766:
          v11 = v243;
          v5 = v34;
LABEL_250:
          if (gLogCategory_APMulticastProbeReceiver <= 50 && (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554482, "[%{ptr}] Cleaning up for reason: %#m\n", v40, v47);
          }

          goto LABEL_265;
        }

        APSLogErrorAt();
        if (gLogCategory_APMulticastProbeReceiver <= 90)
        {
          a2 = v238;
          v6 = &unk_27E37E000;
          v11 = v243;
          v5 = v34;
          if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "Source specific multicast group info for both IPv4/IPv6 is unavailable!\n");
          }

          v40 = 0;
          v47 = 4294960591;
          goto LABEL_250;
        }

LABEL_762:
        v40 = 0;
        a2 = v238;
        v6 = &unk_27E37E000;
        goto LABEL_149;
      }

      if (BYTE5(v273[0]) == 30)
      {
        if (APSCFDictionaryGetSockAddr())
        {
          if (gLogCategory_APMulticastProbeReceiver > 90)
          {
            goto LABEL_762;
          }

          if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "GroupIPv6Addr is not found!\n");
          }

          goto LABEL_764;
        }

        if (BYTE1(bytes[1]) == 30)
        {
          v38 = gLogCategory_APMulticastProbeReceiver;
          if (HIWORD(bytes[1]))
          {
            goto LABEL_101;
          }

          if (gLogCategory_APMulticastProbeReceiver > 90)
          {
            goto LABEL_762;
          }

          if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "sourceSpecificMulticastPortIPv6 is not set!\n");
          }

          v40 = 0;
          v47 = 4294960534;
LABEL_765:
          a2 = v238;
          v6 = &unk_27E37E000;
          goto LABEL_766;
        }
      }

      APSLogErrorAt();
LABEL_764:
      v40 = 0;
      v47 = 4294960591;
      goto LABEL_765;
    }

    if (BYTE5(v282[0]) == 2)
    {
      if (APSCFDictionaryGetSockAddr())
      {
        if (gLogCategory_APMulticastProbeReceiver > 90)
        {
          goto LABEL_756;
        }

        if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "GroupIPv4Addr is not found!\n");
        }

LABEL_758:
        v40 = 0;
        v47 = 4294960591;
        goto LABEL_766;
      }

      if (BYTE1(cStr[1]) == 2)
      {
        if (HIWORD(cStr[1]))
        {
          goto LABEL_87;
        }

        if (gLogCategory_APMulticastProbeReceiver <= 90)
        {
          if (gLogCategory_APMulticastProbeReceiver != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APMulticastProbeReceiver, "OSStatus APMulticastProbeReceiverCreate(CFDictionaryRef, const char *, APMulticastProbeReceiverDelegate *, APMulticastProbeReceiverRef *)", 33554522, "sourceSpecificMulticastPortIPv4 is not set!\n");
          }

          v40 = 0;
          v47 = 4294960534;
          goto LABEL_766;
        }

LABEL_756:
        v40 = 0;
        goto LABEL_149;
      }
    }

    APSLogErrorAt();
    goto LABEL_758;
  }

LABEL_277:
  _Block_object_dispose(&v254, 8);
  _Block_object_dispose(&value, 8);
  v60 = *(a1 + 768);
  if (v60 && gLogCategory_AirPlayReceiverCore <= 50)
  {
    if (gLogCategory_AirPlayReceiverCore != -1)
    {
LABEL_280:
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AirPlayReceiverSessionSetupMC2UC(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] Created multicastProbeReceiver [%{ptr}]", a1, v60);
      goto LABEL_282;
    }

    if (_LogCategory_Initialize())
    {
      v60 = *(a1 + 768);
      goto LABEL_280;
    }
  }

LABEL_282:
  CFDictionaryGetCString();
  if (!v245)
  {
    __strlcpy_chk();
    v245 = -6727;
  }

  if (CFDictionaryContainsKey(a2, @"osBuildVersion"))
  {
    v61 = *(a1 + 320);
    v62 = CFDictionaryGetValue(a2, @"osBuildVersion");
    v63 = v62;
    if (v62)
    {
      CFRetain(v62);
    }

    *(a1 + 320) = v63;
    if (v61)
    {
      CFRelease(v61);
    }
  }

  if (CFDictionaryContainsKey(a2, @"model"))
  {
    v64 = *(a1 + 312);
    v65 = CFDictionaryGetValue(a2, @"model");
    v66 = v65;
    if (v65)
    {
      CFRetain(v65);
    }

    *(a1 + 312) = v66;
    if (v64)
    {
      CFRelease(v64);
    }
  }

  if (CFDictionaryContainsKey(a2, @"modelCode"))
  {
    v67 = *(a1 + 304);
    v68 = CFDictionaryGetValue(a2, @"modelCode");
    v69 = v68;
    if (v68)
    {
      CFRetain(v68);
    }

    *(a1 + 304) = v69;
    if (v67)
    {
      CFRelease(v67);
    }
  }

  if (CFDictionaryContainsKey(a2, @"name"))
  {
    v70 = *(a1 + 288);
    v71 = CFDictionaryGetValue(a2, @"name");
    v72 = v71;
    if (v71)
    {
      CFRetain(v71);
    }

    *(a1 + 288) = v72;
    if (v70)
    {
      CFRelease(v70);
    }
  }

  if (CFDictionaryContainsKey(a2, @"udid"))
  {
    v73 = *(a1 + 296);
    v74 = CFDictionaryGetValue(a2, @"udid");
    v75 = v74;
    if (v74)
    {
      CFRetain(v74);
    }

    *(a1 + 296) = v75;
    if (v73)
    {
      CFRelease(v73);
    }
  }

  if (!v5 && !*(a1 + 683))
  {
    *(a1 + 680) = CFDictionaryGetInt64() != 0;
    v77 = CFDictionaryGetInt64();
    *(a1 + 496) = v77;
    if (gLogCategory_AirPlayReceiverCore <= 50)
    {
      if (gLogCategory_AirPlayReceiverCore == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_702;
        }

        v77 = *(a1 + 496);
      }

      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Multi-select: %d, sender perceived cluster type: %d\n", a1, *(a1 + 680), v77);
    }

LABEL_702:
    if (*(a1 + 680) && APSIsMemberOfHTGroup() && *(a1 + 496) != 2 && gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Group change: Sender does not perceive me in a HT cluster.\n", a1);
    }
  }

  if (!CFDictionaryContainsKey(a2, @"senderDisplayLatencyMs"))
  {
    goto LABEL_319;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  *(a1 + 720) = Int64Ranged;
  if (gLogCategory_AirPlayReceiverCore > 50)
  {
    goto LABEL_319;
  }

  if (gLogCategory_AirPlayReceiverCore != -1)
  {
    goto LABEL_314;
  }

  if (_LogCategory_Initialize())
  {
    Int64Ranged = *(a1 + 720);
LABEL_314:
    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Sender display latency: %ums\n", a1, Int64Ranged);
  }

LABEL_319:
  CFArrayGetTypeID();
  v78 = CFDictionaryGetTypedValue();
  if (!v78)
  {
    goto LABEL_686;
  }

  Count = CFArrayGetCount(v78);
  if (Count < 1)
  {
    goto LABEL_686;
  }

  v80 = Count;
  v237 = 0;
  v81 = 0;
  v240 = (a1 + 616);
  allocator = *MEMORY[0x277CBECE8];
  v235 = *MEMORY[0x277CBED10];
  v236 = *MEMORY[0x277CBED28];
  v242 = Count;
  do
  {
    CFDictionaryGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
    if (v245)
    {
      goto LABEL_732;
    }

    v83 = CFDictionaryGetInt64();
    v84 = v6[474];
    if (v84 <= 50 && (v84 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Setting up stream (type %u)\n", a1, v83);
    }

    if (*(a1 + 683) && v83 != 130)
    {
LABEL_714:
      APSLogErrorAt();
      v212 = -6735;
LABEL_722:
      v245 = v212;
      goto LABEL_733;
    }

    if (v83 > 109)
    {
      if (v83 != 110)
      {
        if (v83 != 120)
        {
          if (v83 != 130)
          {
            goto LABEL_364;
          }

          v85 = CFDictionaryGetValue(TypedValueAtIndex, @"clientTypeUUID");
          if (!v85)
          {
            APSLogErrorAt();
            v212 = -6705;
            goto LABEL_722;
          }

          if (!CFEqual(v85, @"A6B27562-B43A-4F2D-B75F-82391E250194"))
          {
            LODWORD(v254) = 0;
            value = 0;
            if (TypedValueAtIndex)
            {
              v103 = *(a1 + 688) + 1;
              *(a1 + 688) = v103;
              v104 = CFNumberCreateInt64();
              if (v104)
              {
                v105 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v105)
                {
                  CFDictionarySetInt64();
                  CFDictionarySetValue(v105, @"streamID", v104);
                  v106 = CFDictionaryGetValue(TypedValueAtIndex, @"clientTypeUUID");
                  v107 = v6;
                  v108 = v106;
                  v109 = v107[474];
                  if (v109 <= 50 && (v109 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _RemoteControlSessionSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFMutableDictionaryRef)", 33554482, "clientTypeUUID in remote control sesssion setup: %@\n", v108);
                  }

                  if (v108)
                  {
                    if (CFEqual(v108, @"1910A70F-DBC0-4242-AF95-115DB30604E1") || CFEqual(v108, @"82C33ABC-DABD-41C7-9A83-A8F67D5491C3"))
                    {
                      v232 = v103;
                      v233 = v104;
                      v147 = CFDictionaryGetValue(TypedValueAtIndex, @"clientUUID");
                      v148 = CFDictionaryGetValue(TypedValueAtIndex, @"channelID");
                      v149 = CFDictionaryGetInt64();
                      if ((v149 & 0xFFFFFFFD) != 0)
                      {
                        LODWORD(v254) = -6735;
                        v6 = &unk_27E37E000;
                        if (gLogCategory_AirPlayReceiverCore > 90)
                        {
                          TypedValueAtIndex = 0;
                          v150 = 0;
                          v151 = 0;
                          v104 = v233;
                          goto LABEL_599;
                        }

                        v104 = v233;
                        if (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize())
                        {
                          LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _RemoteControlSessionSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFMutableDictionaryRef)", 33554522, "[%{ptr}] Unsupported control type: %d\n", a1, v149);
                        }

                        TypedValueAtIndex = 0;
                        v151 = 0;
LABEL_486:
                        v150 = 0;
LABEL_598:
                        if (v254)
                        {
LABEL_599:
                          _RemoteControlSessionTearDown(a1, v104);
                        }

LABEL_600:
                        if (TypedValueAtIndex)
                        {
                          CFRelease(TypedValueAtIndex);
                        }

                        if (v104)
                        {
                          CFRelease(v104);
                        }

                        if (v105)
                        {
                          CFRelease(v105);
                        }

                        v80 = v242;
                        if (v151)
                        {
                          CFRelease(v151);
                        }

                        if (v150)
                        {
                          CFRelease(v150);
                        }

                        v245 = v254;
                        if (v254)
                        {
                          goto LABEL_732;
                        }

                        goto LABEL_611;
                      }

                      v230 = v148;
                      v229 = CFDictionaryGetInt64();
                      if (!v229)
                      {
                        v160 = _SendRemoteControlSessionOutgoingMessage;
                        v161 = 0;
                        v231 = 0;
                        goto LABEL_509;
                      }

                      memset(cStr, 0, sizeof(cStr));
                      memset(bytes, 0, sizeof(bytes));
                      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _RemoteControlSessionSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Sender wants a dedicated socket for RCS-%@\n", a1, v233);
                      }

                      v170 = CFDictionaryGetInt64();
                      if (v254 || (LODWORD(v254) = _GetDataStreamSecurityKeys(a1, v170, 32, bytes, cStr), v254))
                      {
                        APSLogErrorAt();
                        v151 = 0;
                      }

                      else
                      {
                        v171 = CFDataCreate(allocator, cStr, 32);
                        if (v171)
                        {
                          v161 = v171;
                          v231 = CFDataCreate(allocator, bytes, 32);
                          if (v231)
                          {
                            v160 = 0;
LABEL_509:
                            v228 = v161;
                            if (CFEqual(v108, @"1910A70F-DBC0-4242-AF95-115DB30604E1"))
                            {
                              *v262 = *(a1 + 224);
                              *&v262[12] = *(a1 + 236);
                              v246[0] = 0;
                              v276 = 0u;
                              v277 = 0u;
                              memset(cStr, 0, sizeof(cStr));
                              if (!v147)
                              {
                                APSLogErrorAt();
                                v193 = -6705;
                                goto LABEL_648;
                              }

                              if (APReceiverRemoteControlSessionGetClassID_sRegisterOnce != -1)
                              {
                                dispatch_once_f(&APReceiverRemoteControlSessionGetClassID_sRegisterOnce, &APReceiverRemoteControlSessionGetClassID_sClassID, rcs_getClassID);
                              }

                              v172 = CMDerivedObjectCreate();
                              if (v172)
                              {
                                v193 = v172;
                                APSLogErrorAt();
                                v147 = 0;
                                goto LABEL_648;
                              }

                              v227 = v105;
                              DerivedStorage = CMBaseObjectGetDerivedStorage();
                              DerivedStorage[2] = CFRetain(v233);
                              DerivedStorage[3] = CFRetain(v147);
                              v174 = v246[0];
                              ++APReceiverMediaRemoteXPCService_RegisterCommChannel_channelIDGenerator;
                              v175 = CFNumberCreateInt64();
                              FigSimpleMutexCheckIsNotLockedOnThisThread();
                              if (gAPReceiverMediaRemoteXPCServiceCommChannelEntryInitOnce != -1)
                              {
                                dispatch_once_f(&gAPReceiverMediaRemoteXPCServiceCommChannelEntryInitOnce, 0, _APReceiverMediaRemoteXPCServiceCommChannelEntryGetTypeID);
                              }

                              v176 = _CFRuntimeCreateInstance();
                              if (v176)
                              {
                                v177 = v176;
                                v176[2] = 0;
                                v176[3] = 0;
                                v176[4] = 0;
                                v176[2] = CFRetain(v147);
                                v177[3] = rcsMediaRemote_sendDataCallback;
                                if (v174)
                                {
                                  v177[4] = FigCFWeakReferenceHolderCreateWithReferencedObject();
                                }

                                FigSimpleMutexLock();
                                CFDictionarySetValue(gAPReceiverMediaRemoteService_1, v175, v177);
                                FigSimpleMutexUnlock();
                                if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
                                {
                                  LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "OSStatus APReceiverMediaRemoteXPCService_RegisterCommChannel(CFStringRef, APReceiverMediaRemoteXPCServiceSendDataCallback, CFTypeRef, CFNumberRef *)", 33554482, "Registered new commChannel %@ for clientUUID %@\n", v175, v147);
                                }

                                DerivedStorage[4] = v175;
                                v105 = v227;
LABEL_538:
                                CFRelease(v177);
                              }

                              else
                              {
                                APSLogErrorAt();
                                APSLogErrorAt();
                                v177 = v175;
                                v105 = v227;
                                if (v175)
                                {
                                  goto LABEL_538;
                                }
                              }

                              v187 = FigSimpleMutexCreate();
                              DerivedStorage[15] = v187;
                              if (v187 && (SNPrintF(cStr, 64, "APReceiverRemoteControlSessionMediaRemote.%{ptr}.incoming", v246[0]), v188 = dispatch_queue_create(cStr, 0), DerivedStorage[9] = v188, v151 = v228, v188) && (SNPrintF(cStr, 64, "APReceiverRemoteControlSessionMediaRemote.%{ptr}.outgoing", v246[0]), v189 = dispatch_queue_create(cStr, 0), (DerivedStorage[10] = v189) != 0) && (DerivedStorage[5] = a1, DerivedStorage[6] = v160, DerivedStorage[7] = _HandleRemoteControlSessionFailed, v190 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (DerivedStorage[8] = v190) != 0))
                              {
                                if (!v229)
                                {
                                  if (gLogCategory_APReceiverRemoteControlSessionMediaRemote > 50)
                                  {
                                    v147 = 0;
                                  }

                                  else
                                  {
                                    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize())
                                    {
                                      LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "OSStatus APReceiverRemoteControlSessionMediaRemoteCreate(CFAllocatorRef, CFNumberRef, sockaddr_ip, CFStringRef, CFDataRef, CFDataRef, const APReceiverRemoteControlSessionDelegate *, APReceiverRemoteControlSessionRef *)", 33554482, "[%{ptr}] Send outgoing messages with delegate function\n", v246[0]);
                                    }

                                    v147 = 0;
LABEL_567:
                                    v192 = v230;
                                    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote > 50)
                                    {
LABEL_572:
                                      v193 = 0;
                                      TypedValueAtIndex = v246[0];
                                      v246[0] = 0;
                                      if (!v147)
                                      {
                                        goto LABEL_574;
                                      }

                                      goto LABEL_573;
                                    }

                                    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize())
                                    {
                                      LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "OSStatus APReceiverRemoteControlSessionMediaRemoteCreate(CFAllocatorRef, CFNumberRef, sockaddr_ip, CFStringRef, CFDataRef, CFDataRef, const APReceiverRemoteControlSessionDelegate *, APReceiverRemoteControlSessionRef *)", 33554482, "[%{ptr}] RCS-%@ created, channelID %@, client UUID %'@\n", v246[0], DerivedStorage[2], DerivedStorage[4], DerivedStorage[3]);
                                    }
                                  }

                                  v192 = v230;
                                  goto LABEL_572;
                                }

                                v147 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                if (v147)
                                {
                                  FigCFDictionarySetValue();
                                  FigCFDictionarySetValue();
                                  CFDictionarySetValue(v147, @"MDC::Label", @"RCS-MediaRemote");
                                  FigCFDictionarySetInt32();
                                  CFDictionarySetInt64();
                                  *&handler = v246[0];
                                  *(&handler + 1) = rcsMediaRemote_handleMediaDataControlRequest;
                                  v248 = rcsMediaRemote_handleMediaDataControlFailure;
                                  *bytes = *v262;
                                  *&bytes[3] = *&v262[12];
                                  v191 = APMediaDataControlServerCreate(bytes, v147, &handler, DerivedStorage + 11);
                                  if (!v191)
                                  {
                                    v192 = v230;
                                    if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50)
                                    {
                                      if (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize())
                                      {
                                        LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "OSStatus APReceiverRemoteControlSessionMediaRemoteCreate(CFAllocatorRef, CFNumberRef, sockaddr_ip, CFStringRef, CFDataRef, CFDataRef, const APReceiverRemoteControlSessionDelegate *, APReceiverRemoteControlSessionRef *)", 33554482, "[%{ptr}] Created media data control server [%{ptr}]", v246[0], DerivedStorage[11]);
                                      }

                                      v192 = v230;
                                      if (gLogCategory_APReceiverRemoteControlSessionMediaRemote <= 50)
                                      {
                                        if (gLogCategory_APReceiverRemoteControlSessionMediaRemote != -1 || _LogCategory_Initialize())
                                        {
                                          LogPrintF(&gLogCategory_APReceiverRemoteControlSessionMediaRemote, "OSStatus APReceiverRemoteControlSessionMediaRemoteCreate(CFAllocatorRef, CFNumberRef, sockaddr_ip, CFStringRef, CFDataRef, CFDataRef, const APReceiverRemoteControlSessionDelegate *, APReceiverRemoteControlSessionRef *)", 33554482, "[%{ptr}] Listening for connection on port %d\n", v246[0], *(DerivedStorage[11] + 148));
                                        }

                                        goto LABEL_567;
                                      }
                                    }

                                    goto LABEL_572;
                                  }

                                  v193 = v191;
                                  APSLogErrorAt();
LABEL_648:
                                  v198 = v246[0];
                                  if (v246[0])
                                  {
                                    v199 = *(*(CMBaseObjectGetVTable() + 8) + 24);
                                    if (v199)
                                    {
                                      v199(v198);
                                    }

                                    if (v246[0])
                                    {
                                      CFRelease(v246[0]);
                                    }
                                  }

                                  TypedValueAtIndex = 0;
                                  v151 = v228;
                                  v192 = v230;
                                  if (!v147)
                                  {
LABEL_574:
                                    LODWORD(v254) = v193;
                                    if (v193)
                                    {
                                      APSLogErrorAt();
                                      v6 = &unk_27E37E000;
                                      v150 = v231;
                                      v104 = v233;
                                      goto LABEL_598;
                                    }

                                    v6 = &unk_27E37E000;
                                    v150 = v231;
                                    if (gLogCategory_AirPlayReceiverCore <= 50)
                                    {
                                      if (gLogCategory_AirPlayReceiverCore != -1 || (v194 = _LogCategory_Initialize(), v192 = v230, v194))
                                      {
                                        LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _RemoteControlSessionSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Created RCS-%@ [%{ptr}] for MediaRemote with channel name: %@, streamID: %llu\n", a1, v233, TypedValueAtIndex, v192, v232);
                                      }
                                    }

                                    v104 = v233;
                                    CFDictionarySetValue(*(a1 + 696), v233, TypedValueAtIndex);
                                    if (!v229)
                                    {
                                      goto LABEL_590;
                                    }

LABEL_587:
                                    v195 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                    if (v195)
                                    {
                                      LODWORD(v254) = v195(TypedValueAtIndex, @"RRCS::Property::ListenPort", allocator, &value);
                                      if (!v254)
                                      {
                                        CFDictionarySetValue(v105, @"dataPort", value);
LABEL_590:
                                        LODWORD(v254) = _AddResponseStream(v243, v105);
                                        if (!v254)
                                        {
                                          v196 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                                          if (v196)
                                          {
                                            LODWORD(v254) = v196(TypedValueAtIndex);
                                            if (!v254)
                                            {
                                              goto LABEL_600;
                                            }
                                          }

                                          else
                                          {
                                            LODWORD(v254) = -12782;
                                          }
                                        }
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v254) = -12782;
                                    }

                                    APSLogErrorAt();
                                    goto LABEL_598;
                                  }

LABEL_573:
                                  CFRelease(v147);
                                  v192 = v230;
                                  goto LABEL_574;
                                }

                                APSLogErrorAt();
                              }

                              else
                              {
                                APSLogErrorAt();
                                v147 = 0;
                              }

                              v193 = -6728;
                              goto LABEL_648;
                            }

                            v178 = *(a1 + 600);
                            *v262 = *(a1 + 224);
                            *&v262[12] = *(a1 + 236);
                            v246[0] = 0;
                            v276 = 0u;
                            v277 = 0u;
                            memset(cStr, 0, sizeof(cStr));
                            if (!v178 || !v229)
                            {
                              APSLogErrorAt();
                              v185 = 0;
                              v200 = -6705;
                              goto LABEL_663;
                            }

                            if (APReceiverRemoteControlSessionGetClassID_sRegisterOnce != -1)
                            {
                              dispatch_once_f(&APReceiverRemoteControlSessionGetClassID_sRegisterOnce, &APReceiverRemoteControlSessionGetClassID_sClassID, rcs_getClassID);
                            }

                            v179 = CMDerivedObjectCreate();
                            if (v179)
                            {
                              v200 = v179;
                              APSLogErrorAt();
                              v185 = 0;
                              goto LABEL_663;
                            }

                            v180 = CMBaseObjectGetDerivedStorage();
                            v180[2] = CFRetain(v233);
                            v180[10] = v178;
                            CFRetain(v178);
                            v181 = FigSimpleMutexCreate();
                            v180[14] = v181;
                            if (v181 && (SNPrintF(cStr, 64, "APReceiverRemoteControlSessionSenderUIEventsChannel.%{ptr}.incoming", v246[0]), v182 = dispatch_queue_create(cStr, 0), v180[7] = v182, v151 = v228, v182) && (SNPrintF(cStr, 64, "APReceiverRemoteControlSessionSenderUIEventsChannel.%{ptr}.outgoing", v246[0]), v183 = dispatch_queue_create(cStr, 0), (v180[8] = v183) != 0) && (v184 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (v180[6] = v184) != 0))
                            {
                              v185 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                              if (v185)
                              {
                                FigCFDictionarySetValue();
                                FigCFDictionarySetValue();
                                CFDictionarySetValue(v185, @"MDC::Label", @"RCS-SenderUIEventsChannel");
                                FigCFDictionarySetInt32();
                                *&handler = v246[0];
                                *(&handler + 1) = rcsSenderUIEventsChannel_handleMediaDataControlRequest;
                                v248 = rcsSenderUIEventsChannel_handleMediaDataControlFailure;
                                *bytes = *v262;
                                *&bytes[3] = *&v262[12];
                                v186 = APMediaDataControlServerCreate(bytes, v185, &handler, v180 + 9);
                                if (!v186)
                                {
                                  v6 = &unk_27E37E000;
                                  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 50)
                                  {
                                    if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize())
                                    {
                                      LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "OSStatus APReceiverRemoteControlSessionSenderUIEventsChannelCreate(CFAllocatorRef, CFNumberRef, sockaddr_ip, CFDataRef, CFDataRef, const APReceiverRemoteControlSessionDelegate *, APReceiverUIControllerRef, APReceiverRemoteControlSessionRef *)", 33554482, "[%{ptr}] Listening for connection on port %d\n", v246[0], *(v180[9] + 148));
                                    }

                                    if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 50 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
                                    {
                                      LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "OSStatus APReceiverRemoteControlSessionSenderUIEventsChannelCreate(CFAllocatorRef, CFNumberRef, sockaddr_ip, CFDataRef, CFDataRef, const APReceiverRemoteControlSessionDelegate *, APReceiverUIControllerRef, APReceiverRemoteControlSessionRef *)", 33554482, "[%{ptr}] RCS-%@ created\n", v246[0], v180[2]);
                                    }
                                  }

                                  TypedValueAtIndex = v246[0];
                                  v246[0] = 0;
                                  CFRelease(v185);
                                  LODWORD(v254) = 0;
                                  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                                  {
                                    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _RemoteControlSessionSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Created RCS-%@ [%{ptr}] for SenderUIEvents with channel name: %@, streamID: %llu\n", a1, v233, TypedValueAtIndex, v230, v232);
                                  }

                                  v104 = v233;
                                  CFDictionarySetValue(*(a1 + 696), v233, TypedValueAtIndex);
                                  v150 = v231;
                                  goto LABEL_587;
                                }

                                v200 = v186;
                                APSLogErrorAt();
LABEL_663:
                                v104 = v233;
                                v201 = v246[0];
                                if (v246[0])
                                {
                                  v202 = *(*(CMBaseObjectGetVTable() + 8) + 24);
                                  if (v202)
                                  {
                                    v202(v201);
                                  }

                                  if (v246[0])
                                  {
                                    CFRelease(v246[0]);
                                  }
                                }

                                if (v185)
                                {
                                  CFRelease(v185);
                                }

                                v151 = v228;
                                v150 = v231;
                                LODWORD(v254) = v200;
                                APSLogErrorAt();
                                TypedValueAtIndex = 0;
LABEL_555:
                                v6 = &unk_27E37E000;
                                goto LABEL_598;
                              }

                              APSLogErrorAt();
                            }

                            else
                            {
                              APSLogErrorAt();
                              v185 = 0;
                            }

                            v200 = -6728;
                            goto LABEL_663;
                          }

                          APSLogErrorAt();
                          LODWORD(v254) = -6728;
                          v6 = &unk_27E37E000;
                          v151 = v161;
LABEL_642:
                          v104 = v233;
                          TypedValueAtIndex = 0;
                          goto LABEL_486;
                        }

                        APSLogErrorAt();
                        v151 = 0;
                        LODWORD(v254) = -6728;
                      }

                      v6 = &unk_27E37E000;
                      goto LABEL_642;
                    }

                    LODWORD(v254) = -6735;
                    if (gLogCategory_AirPlayReceiverCore <= 90)
                    {
                      if (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize())
                      {
                        LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _RemoteControlSessionSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFMutableDictionaryRef)", 33554522, "[%{ptr}] Unsupported client type: %@\n", a1, v108);
                      }

                      TypedValueAtIndex = 0;
                      v151 = 0;
                      v150 = 0;
                      goto LABEL_555;
                    }

                    TypedValueAtIndex = 0;
                    v150 = 0;
                    v151 = 0;
                  }

                  else
                  {
                    APSLogErrorAt();
                    TypedValueAtIndex = 0;
                    v150 = 0;
                    v151 = 0;
                    LODWORD(v254) = -6705;
                  }

                  v6 = &unk_27E37E000;
                  goto LABEL_599;
                }

                APSLogErrorAt();
                TypedValueAtIndex = 0;
                v150 = 0;
                v151 = 0;
              }

              else
              {
                APSLogErrorAt();
                TypedValueAtIndex = 0;
                v150 = 0;
                v151 = 0;
                v105 = 0;
              }

              v197 = -6728;
            }

            else
            {
              APSLogErrorAt();
              v104 = 0;
              v150 = 0;
              v151 = 0;
              v105 = 0;
              v197 = -6705;
            }

            LODWORD(v254) = v197;
            goto LABEL_599;
          }

          if (*(a1 + 683))
          {
            goto LABEL_714;
          }

          if (!TypedValueAtIndex)
          {
            APSLogErrorAt();
            v156 = -6705;
            goto LABEL_731;
          }

          v86 = *(a1 + 688) + 1;
          *(a1 + 688) = v86;
          v87 = CFNumberCreateInt64();
          if (!v87)
          {
            APSLogErrorAt();
            v156 = -6728;
            goto LABEL_731;
          }

          v88 = v87;
          v89 = CFDictionaryGetValue(TypedValueAtIndex, @"clientUUID");
          if (!v89)
          {
            APSLogErrorAt();
            v156 = -6705;
            goto LABEL_730;
          }

          v90 = v89;
          v91 = v6[474];
          if (v91 <= 50)
          {
            if (v91 != -1 || _LogCategory_Initialize())
            {
              LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _PlaybackV2Setup(AirPlayReceiverSessionRef, CFDictionaryRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Set up RCS-%@ for Playback V2, streamID = %llu\n", a1, v88, v86);
            }

            v145 = v6[474];
            if (v145 <= 50 && (v145 != -1 || _LogCategory_Initialize()))
            {
              v146 = CFGetInt64();
              LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _PlaybackV2Start(AirPlayReceiverSessionRef, CFNumberRef)", 33554482, "[%{ptr}] Starting video playback, streamID %llu\n", a1, v146);
            }
          }

          if (!*(a1 + 600))
          {
            APSLogErrorAt();
            v156 = -6735;
LABEL_728:
            APSLogErrorAt();
LABEL_730:
            CFRelease(v88);
LABEL_731:
            v245 = v156;
LABEL_732:
            APSLogErrorAt();
LABEL_733:
            a2 = v238;
            v11 = v243;
            goto LABEL_687;
          }

          v152 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetNumber();
          CFDictionarySetValue(v152, @"sessionID", v88);
          v153 = *(a1 + 448);
          if (v153)
          {
            CFDictionarySetValue(v152, @"networkClock", v153);
          }

          v154 = *(a1 + 600);
          v155 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v155)
          {
            v156 = v155(v154, _PlaybackV2EventCallback, _PlaybackV2TLSInfoRequestCallback, a1, v152);
            if (!v156)
            {
              if (!v152)
              {
LABEL_470:
                if (v156)
                {
                  goto LABEL_728;
                }

                v157 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (!v157)
                {
                  APSLogErrorAt();
                  v156 = -6728;
                  goto LABEL_730;
                }

                v158 = v157;
                CFDictionarySetInt64();
                CFDictionarySetValue(v158, @"streamID", v88);
                v159 = _AddResponseStream(v243, v158);
                if (v159)
                {
                  APSLogErrorAt();
                }

                else
                {
                  CFDictionarySetValue(*(a1 + 736), v88, v90);
                  CFSetSetValue(*(a1 + 744), v88);
                  if (CFSetGetCount(*(a1 + 744)) == 1)
                  {
                    _UpdateActiveSessionRegistration(a1, 0, 1u);
                  }
                }

                CFRelease(v88);
                CFRelease(v158);
                v245 = v159;
                v80 = v242;
                if (v159)
                {
                  goto LABEL_732;
                }

                goto LABEL_611;
              }

LABEL_469:
              CFRelease(v152);
              goto LABEL_470;
            }
          }

          else
          {
            v156 = -12782;
          }

          APSLogErrorAt();
          if (!v152)
          {
            goto LABEL_470;
          }

          goto LABEL_469;
        }

        v96 = *(a1 + 688) + 1;
        *(a1 + 688) = v96;
        v97 = CFNumberCreateInt64();
        if (v97)
        {
          v98 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v98)
          {
            CFDictionarySetInt64();
            CFDictionarySetInt64();
            v99 = _AddResponseStream(v243, v98);
            if (v99)
            {
              v100 = v99;
              APSLogErrorAt();
            }

            else
            {
              CFSetSetValue(*(a1 + 744), v97);
              if (CFSetGetCount(*(a1 + 744)) == 1)
              {
                _UpdateActiveSessionRegistration(a1, 0, 1u);
              }

              v100 = 0;
            }

LABEL_359:
            v101 = v6[474];
            if (v101 <= 50 && (v101 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _PlaybackSetup(AirPlayReceiverSessionRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Playback set up, streamID = %llu, err = %d\n", a1, v96, v100);
            }

            if (v98)
            {
              CFRelease(v98);
            }

            v80 = v242;
            if (v97)
            {
              CFRelease(v97);
            }

            v245 = v100;
            if (v100)
            {
              goto LABEL_732;
            }

            goto LABEL_611;
          }

          APSLogErrorAt();
        }

        else
        {
          APSLogErrorAt();
          v98 = 0;
        }

        v100 = 4294960568;
        goto LABEL_359;
      }

      v246[0] = 0;
      value = 0;
      if (*v240)
      {
        APSLogErrorAt();
        v111 = 4294960577;
LABEL_441:
        for (i = 0; i != 32; ++i)
        {
          *(cStr + i) = 0;
        }

        if (v111)
        {
          v211 = v6[474];
          a2 = v238;
          v11 = v243;
          if (v211 <= 60 && (v211 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _ScreenSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFMutableDictionaryRef)", 33554492, "[%{ptr}] screen session setup failed: %#m\n", a1, v111);
          }

          v245 = v111;
          goto LABEL_710;
        }

        v245 = 0;
        goto LABEL_611;
      }

      v92 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v92)
      {
        APSLogErrorAt();
        v111 = 4294960568;
        goto LABEL_435;
      }

      v93 = v92;
      v94 = *(a1 + 592);
      if (v94)
      {
        *&handler = 0;
        v95 = CFGetTypeID(v94);
        if (v95 == FigValeriaGetTypeID())
        {
          if (gLogCategory_APReceiverScreenSinkSBufConsumer <= 30 && (gLogCategory_APReceiverScreenSinkSBufConsumer != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverScreenSinkSBufConsumer, "OSStatus APReceiverScreenSinkCreateSBufConsumer(CFAllocatorRef, APReceiverSBufConsumerRef, APReceiverScreenSinkRef *)", 33554462, "Creating SBufConsumer screen sink\n");
          }

          if (APReceiverScreenSinkGetClassID_once != -1)
          {
            dispatch_once(&APReceiverScreenSinkGetClassID_once, &__block_literal_global_5885);
          }

          v112 = CMDerivedObjectCreate();
          if (!v112)
          {
            v113 = CMBaseObjectGetDerivedStorage();
            *(v113 + 8) = CFRetain(v94);
            if (gLogCategory_APReceiverScreenSinkSBufConsumer <= 30 && (gLogCategory_APReceiverScreenSinkSBufConsumer != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APReceiverScreenSinkSBufConsumer, "OSStatus APReceiverScreenSinkCreateSBufConsumer(CFAllocatorRef, APReceiverSBufConsumerRef, APReceiverScreenSinkRef *)", 33554462, "Created SBufConsumer screen sink %{ptr}\n", handler);
            }

            v114 = handler;
            v246[0] = handler;
            v115 = *(a1 + 648);
            if (v115)
            {
              if (*(a1 + 656))
              {
                v116 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v116)
                {
                  v116(v114, @"KeyExchangeReceiver", v115);
                }
              }
            }

            goto LABEL_396;
          }

          v111 = v112;
          APSLogErrorAt();
          if (handler)
          {
            CFRelease(handler);
          }
        }

        else
        {
          APSLogErrorAt();
          v111 = 4294895165;
        }
      }

      else
      {
        AirPlay = APReceiverScreenSinkCreateAirPlay(allocator, v246);
        if (!AirPlay)
        {
LABEL_396:
          v117 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v117)
          {
            v118 = v117;
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            CFDictionarySetValue(v118, @"NetworkClock", *(a1 + 448));
            if (*(a1 + 560))
            {
              v119 = v235;
            }

            else
            {
              v119 = v236;
            }

            CFDictionarySetValue(v118, @"SetQoS", v119);
            if (*(a1 + 424))
            {
              v120 = v236;
            }

            else
            {
              v120 = v235;
            }

            CFDictionarySetValue(v118, @"AllowP2P", v120);
            CFDictionarySetValue(v118, @"ReceiverSession", a1);
            v121 = *(a1 + 176);
            if (v121)
            {
              APReceiverStatsCollectorSetScreenOptions(v121, TypedValueAtIndex);
              APReceiverStatsCollectorSetIfName(*(a1 + 176), a1 + 152);
              CFDictionarySetValue(v118, @"StatsCollector", *(a1 + 176));
            }

            v122 = APReceiverScreenSessionCreate(allocator, v246[0], v118, v240);
            if (v122)
            {
              v111 = v122;
              goto LABEL_432;
            }

            *(a1 + 440) = 1;
            *(a1 + 632) = 0;
            v123 = *(a1 + 616);
            v124 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (!v124)
            {
              v111 = 4294954514;
              goto LABEL_432;
            }

            v125 = v124(v123, _ScreenHandleEvent, a1);
            if (v125)
            {
              v111 = v125;
              goto LABEL_432;
            }

            v126 = CFDictionaryGetInt64();
            if (!v126)
            {
              APSLogErrorAt();
              v111 = 4294960581;
              goto LABEL_433;
            }

            v127 = v126;
            v128 = *(a1 + 488);
            if (v128 && (v129 = *(*(CMBaseObjectGetVTable() + 16) + 32)) != 0 && v129(v128))
            {
              DataStreamSecurityKeys = _GetDataStreamSecurityKeys(a1, v127, 0, 0, cStr);
              if (DataStreamSecurityKeys)
              {
                v111 = DataStreamSecurityKeys;
                goto LABEL_432;
              }

              v131 = *v240;
              v132 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (!v132)
              {
                v111 = 4294954514;
                goto LABEL_432;
              }

              v133 = v132(v131, cStr, 32);
              if (v133)
              {
                v111 = v133;
                goto LABEL_432;
              }
            }

            else
            {
              APSEncryptionUtilsDeriveAESKeySHA512ForScreen();
              v134 = *v240;
              v135 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (v135)
              {
                v111 = v135(v134, bytes, v262);
              }

              else
              {
                v111 = 4294954514;
              }

              for (j = 0; j != 16; ++j)
              {
                *(bytes + j) = 0;
              }

              for (k = 0; k != 16; ++k)
              {
                v262[k] = 0;
              }

              if (v111)
              {
                goto LABEL_432;
              }
            }

            v138 = *v240;
            v139 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v139)
            {
              v140 = v139(v138, @"ListenPort", 0, &value);
              if (v140)
              {
                v111 = v140;
              }

              else
              {
                CFDictionarySetInt64();
                CFDictionarySetValue(v93, @"dataPort", value);
                v141 = _AddResponseStream(v243, v93);
                if (v141)
                {
                  v111 = v141;
                }

                else
                {
                  v142 = v6[474];
                  if (v142 <= 50 && (v142 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _ScreenSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] screen session [%{ptr}] set up on port %@\n", a1, *(a1 + 616), value);
                  }

                  _UpdateActiveSessionRegistration(a1, 0, 2u);
                  if (TypedValueAtIndex && *(a1 + 600))
                  {
                    v162 = CFDictionaryGetValue(TypedValueAtIndex, @"ensembleInfo");
                    if (v162)
                    {
                      v163 = v162;
                      v164 = *(a1 + 600);
                      v165 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v165)
                      {
                        v165(v164, @"EnsembleInfo", v163);
                      }
                    }

                    v166 = CFDictionaryGetValue(TypedValueAtIndex, @"DemoDeviceInfo");
                    if (v166)
                    {
                      v167 = v166;
                      v168 = *(a1 + 600);
                      v169 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v169)
                      {
                        v169(v168, @"DemoDeviceInfo", v167);
                      }
                    }
                  }

                  if (!*(a1 + 458))
                  {
                    v111 = 0;
                    goto LABEL_433;
                  }

                  v111 = _ScreenStart(a1);
                  if (!v111)
                  {
LABEL_433:
                    CFRelease(v93);
                    v143 = v118;
LABEL_434:
                    CFRelease(v143);
LABEL_435:
                    v80 = v242;
                    if (v246[0])
                    {
                      CFRelease(v246[0]);
                    }

                    if (value)
                    {
                      CFRelease(value);
                    }

                    if (v111)
                    {
                      _ScreenTearDown(a1);
                    }

                    goto LABEL_441;
                  }
                }
              }
            }

            else
            {
              v111 = 4294954514;
            }

LABEL_432:
            APSLogErrorAt();
            goto LABEL_433;
          }

          APSLogErrorAt();
          v111 = 4294960568;
LABEL_625:
          v143 = v93;
          goto LABEL_434;
        }

        v111 = AirPlay;
      }

      APSLogErrorAt();
      goto LABEL_625;
    }

    if (v83 == 96)
    {
      v245 = _GeneralAudioSetup(a1, 0x60u, TypedValueAtIndex, v243);
      if (v245)
      {
        goto LABEL_732;
      }

      HIDWORD(v237) = 1;
    }

    else
    {
      if (v83 != 103)
      {
LABEL_364:
        v102 = v6[474];
        if (v102 <= 50 && (v102 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "### Unsupported stream type: %d\n", v83);
        }

        goto LABEL_611;
      }

      v245 = _GeneralAudioSetup(a1, 0x67u, TypedValueAtIndex, v243);
      if (v245)
      {
        goto LABEL_732;
      }

      LODWORD(v237) = 1;
    }

LABEL_611:
    ++v81;
  }

  while (v81 != v80);
  a2 = v238;
  v11 = v243;
  if (!*(a1 + 683) && v237)
  {
    v203 = CFDictionaryGetCount(*(a1 + 568));
    v245 = _cfDictionaryCopyKeysAndValues(*(a1 + 568), 0, &theArray);
    if (v245)
    {
      goto LABEL_710;
    }

    if (v203 >= 1)
    {
      for (m = 0; m != v203; ++m)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, m);
        if (ValueAtIndex)
        {
          v206 = ValueAtIndex[17];
          if (v206)
          {
            v206(ValueAtIndex[5]);
          }
        }

        else
        {
          APSLogErrorAt();
        }
      }
    }
  }

LABEL_686:
  *a3 = v11;
  v245 = 0;
  v11 = 0;
LABEL_687:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v207 = v245;
  if (!v245)
  {
    return 0;
  }

  v208 = v6[474];
  if (v208 <= 50)
  {
    if (v208 != -1 || (v210 = _LogCategory_Initialize(), v207 = v245, v210))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionSetup(AirPlayReceiverSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "### [%{ptr}] Set up session %llu with %##a failed: %#m %@\n", a1, *(a1 + 328), a1 + 224, v207, a2);
      v207 = v245;
    }
  }

  AirPlayReceiverSessionTearDown(a1, a2, v207, 0);
  return v245;
}

uint64_t _GeneralAudioSetup(uint64_t a1, unsigned int a2, CFDictionaryRef theDict, uint64_t a4)
{
  v131 = *MEMORY[0x277D85DE8];
  DataStreamSecurityKeys = 0;
  cf = 0;
  v8 = &unk_27E37E000;
  if (CFDictionaryContainsKey(theDict, @"isMedia") && !CFDictionaryGetInt64())
  {
    v122 = 1;
  }

  else
  {
    if (*(a1 + 576))
    {
      APSLogErrorAt();
      v12 = 0;
      goto LABEL_311;
    }

    v122 = 0;
  }

  if (CFDictionaryGetInt64())
  {
    v9 = 0;
    *v130 = 0;
    while (1)
    {
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = RandomBytes();
      if (v10)
      {
        v76 = v10;
        APSLogErrorAt();
        goto LABEL_174;
      }

      Int64 = CFNumberCreateInt64();
      if (!Int64)
      {
        break;
      }

      v9 = Int64;
    }

    APSLogErrorAt();
    v76 = -6728;
LABEL_174:
    DataStreamSecurityKeys = v76;
    APSLogErrorAt();
    v12 = 0;
    goto LABEL_175;
  }

  v12 = CFNumberCreateInt64();
  if (!v12)
  {
    APSLogErrorAt();
    v22 = 0;
    v77 = 0;
    v78 = -6728;
LABEL_312:
    DataStreamSecurityKeys = v78;
    goto LABEL_481;
  }

  if (CFDictionaryContainsKey(*(a1 + 568), v12))
  {
    APSLogErrorAt();
LABEL_311:
    v22 = 0;
    v77 = 0;
    v78 = -6719;
    goto LABEL_312;
  }

  *v130 = 0;
  v123 = a2;
  if (APSIsWHAParallelSetupProcessingEnabled())
  {
    if (a2 == 96 && !CFDictionaryGetInt64())
    {
      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _EnsurePlatformIsReadyToAcceptAudioIfNeeded(AirPlayReceiverSessionRef, APStreamType, CFDictionaryRef)", 33554482, "[%{ptr}] Non-media audio - skip waiting for platform readiness\n", a1);
      }

      v15 = 0;
    }

    else
    {
      APReceiverSessionManagerCopyAirPlaySessionWithAttribute(*(*(a1 + 24) + 216), 5, 0, v130);
      v13 = *v130;
      if (*v130)
      {
        if (gLogCategory_AirPlayReceiverCore <= 50)
        {
          if (gLogCategory_AirPlayReceiverCore != -1 || (v14 = _LogCategory_Initialize(), v13 = *v130, v14))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _EnsurePlatformIsReadyToAcceptAudioIfNeeded(AirPlayReceiverSessionRef, APStreamType, CFDictionaryRef)", 33554482, "[%{ptr}] Waiting for platform to be ready to accept audio from main media session [%{ptr}]\n", a1, v13);
            v13 = *v130;
          }
        }

        v15 = AirPlayReceiverSessionPlatformControl(v13, @"EnsurePlatformIsReadyToAcceptAudio");
        if (v15)
        {
          APSLogErrorAt();
        }
      }

      else
      {
        APSLogErrorAt();
        v15 = -6709;
      }
    }

    if (*v130)
    {
      CFRelease(*v130);
    }

    DataStreamSecurityKeys = v15;
    if (v15)
    {
      APSLogErrorAt();
LABEL_175:
      v22 = 0;
      v77 = 0;
      goto LABEL_481;
    }
  }

  else
  {
    DataStreamSecurityKeys = 0;
  }

  v16 = MEMORY[0x277CBED28];
  v17 = MEMORY[0x277CBED10];
  if (*(a1 + 600))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"sessionID", v12);
    if (CFDictionaryGetInt64())
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    CFDictionarySetValue(Mutable, @"IsScreenAudio", *v19);
    v20 = *(a1 + 600);
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v21)
    {
      v21(v20, Mutable);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v22 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v22)
  {
    PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
    v24 = *v16;
    v25 = *v17;
    if (PropertyInt64Sync)
    {
      v26 = *v16;
    }

    else
    {
      v26 = *v17;
    }

    CFDictionarySetValue(v22, @"RTPSkewPlatformAdjust", v26);
    if (*(a1 + 560))
    {
      v27 = v24;
    }

    else
    {
      v27 = v25;
    }

    CFDictionarySetValue(v22, @"QosDisabled", v27);
    CFDictionarySetInt64();
    if (*(a1 + 424))
    {
      v28 = v24;
    }

    else
    {
      v28 = v25;
    }

    CFDictionarySetValue(v22, @"AllowP2P", v28);
    v29 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v29)
    {
      v30 = v29;
      CFDictionaryGetInt64();
      DataStreamSecurityKeys = CFDictionarySetInt64();
      if (DataStreamSecurityKeys)
      {
        goto LABEL_521;
      }

      if (CFDictionaryContainsKey(theDict, @"audioFormatIndex"))
      {
        v31 = CFDictionaryGetInt64();
        v32 = v123;
        if (v31)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v32 = v123;
        if (CFDictionaryContainsKey(theDict, @"audioFormat"))
        {
          v33 = CFDictionaryGetInt64();
          if (v33 >= 2)
          {
            if (v33 <= 0x3FFFFFFF)
            {
              if (v33 < 0x8000)
              {
                if (v33 > 255)
                {
                  if (v33 <= 2047)
                  {
                    if (v33 == 256)
                    {
                      v31 = 8;
                    }

                    else if (v33 == 512)
                    {
                      v31 = 9;
                    }

                    else
                    {
                      v115 = 0;
                      if (v33 != 1024)
                      {
                        goto LABEL_55;
                      }

                      v31 = 10;
                    }
                  }

                  else
                  {
                    v115 = 0;
                    if (v33 >= 0x2000)
                    {
                      if (v33 == 0x2000)
                      {
                        v31 = 13;
                      }

                      else
                      {
                        if (v33 != 0x4000)
                        {
                          goto LABEL_55;
                        }

                        v31 = 14;
                      }
                    }

                    else if (v33 == 2048)
                    {
                      v31 = 11;
                    }

                    else
                    {
                      if (v33 != 4096)
                      {
                        goto LABEL_55;
                      }

                      v31 = 12;
                    }
                  }
                }

                else if (v33 <= 7)
                {
                  if (v33 == 0x8000000000000000)
                  {
                    v31 = 63;
                  }

                  else if (v33 == 2)
                  {
                    v31 = 1;
                  }

                  else
                  {
                    v115 = 0;
                    if (v33 != 4)
                    {
                      goto LABEL_55;
                    }

                    v31 = 2;
                  }
                }

                else
                {
                  v115 = 0;
                  if (v33 > 31)
                  {
                    if (v33 == 32)
                    {
                      v31 = 5;
                    }

                    else
                    {
                      if (v33 != 128)
                      {
                        goto LABEL_55;
                      }

                      v31 = 7;
                    }
                  }

                  else if (v33 == 8)
                  {
                    v31 = 3;
                  }

                  else
                  {
                    if (v33 != 16)
                    {
                      goto LABEL_55;
                    }

                    v31 = 4;
                  }
                }
              }

              else if (v33 < 0x400000)
              {
                if (v33 < 0x40000)
                {
                  if (v33 == 0x8000)
                  {
                    v31 = 15;
                  }

                  else if (v33 == 0x10000)
                  {
                    v31 = 16;
                  }

                  else
                  {
                    v115 = 0;
                    if (v33 != 0x20000)
                    {
                      goto LABEL_55;
                    }

                    v31 = 17;
                  }
                }

                else
                {
                  v115 = 0;
                  if (v33 >= 0x100000)
                  {
                    if (v33 == 0x100000)
                    {
                      v31 = 20;
                    }

                    else
                    {
                      if (v33 != 0x200000)
                      {
                        goto LABEL_55;
                      }

                      v31 = 21;
                    }
                  }

                  else if (v33 == 0x40000)
                  {
                    v31 = 18;
                  }

                  else
                  {
                    if (v33 != 0x80000)
                    {
                      goto LABEL_55;
                    }

                    v31 = 19;
                  }
                }
              }

              else
              {
                v115 = 0;
                if (v33 > 0x3FFFFFF)
                {
                  if (v33 > 0xFFFFFFF)
                  {
                    if (v33 == 0x10000000)
                    {
                      v31 = 28;
                    }

                    else
                    {
                      if (v33 != 0x20000000)
                      {
                        goto LABEL_55;
                      }

                      v31 = 29;
                    }
                  }

                  else if (v33 == 0x4000000)
                  {
                    v31 = 26;
                  }

                  else
                  {
                    if (v33 != 0x8000000)
                    {
                      goto LABEL_55;
                    }

                    v31 = 27;
                  }
                }

                else if (v33 > 0xFFFFFF)
                {
                  if (v33 == 0x1000000)
                  {
                    v31 = 24;
                  }

                  else
                  {
                    if (v33 != 0x2000000)
                    {
                      goto LABEL_55;
                    }

                    v31 = 25;
                  }
                }

                else if (v33 == 0x400000)
                {
                  v31 = 22;
                }

                else
                {
                  if (v33 != 0x800000)
                  {
                    goto LABEL_55;
                  }

                  v31 = 23;
                }
              }
            }

            else if (v33 > 0x7FFFFFFFFFFFLL)
            {
              if (v33 <= 0x3FFFFFFFFFFFFFLL)
              {
                if (v33 <= 0x3FFFFFFFFFFFFLL)
                {
                  if (v33 == 0x800000000000)
                  {
                    v31 = 47;
                  }

                  else if (v33 == 0x1000000000000)
                  {
                    v31 = 48;
                  }

                  else
                  {
                    v115 = 0;
                    if (v33 != 0x2000000000000)
                    {
                      goto LABEL_55;
                    }

                    v31 = 49;
                  }
                }

                else
                {
                  v115 = 0;
                  if (v33 > 0xFFFFFFFFFFFFFLL)
                  {
                    if (v33 == 0x10000000000000)
                    {
                      v31 = 52;
                    }

                    else
                    {
                      if (v33 != 0x20000000000000)
                      {
                        goto LABEL_55;
                      }

                      v31 = 53;
                    }
                  }

                  else if (v33 == 0x4000000000000)
                  {
                    v31 = 50;
                  }

                  else
                  {
                    if (v33 != 0x8000000000000)
                    {
                      goto LABEL_55;
                    }

                    v31 = 51;
                  }
                }
              }

              else
              {
                v115 = 0;
                if (v33 > 0x3FFFFFFFFFFFFFFLL)
                {
                  if (v33 > 0x1FFFFFFFFFFFFFFFLL)
                  {
                    if (v33 == 0x2000000000000000)
                    {
                      v31 = 61;
                    }

                    else
                    {
                      if (v33 != 0x4000000000000000)
                      {
                        goto LABEL_55;
                      }

                      v31 = 62;
                    }
                  }

                  else if (v33 == 0x400000000000000)
                  {
                    v31 = 58;
                  }

                  else
                  {
                    if (v33 != 0x1000000000000000)
                    {
                      goto LABEL_55;
                    }

                    v31 = 60;
                  }
                }

                else if (v33 > 0xFFFFFFFFFFFFFFLL)
                {
                  if (v33 == 0x100000000000000)
                  {
                    v31 = 56;
                  }

                  else
                  {
                    if (v33 != 0x200000000000000)
                    {
                      goto LABEL_55;
                    }

                    v31 = 57;
                  }
                }

                else if (v33 == 0x40000000000000)
                {
                  v31 = 54;
                }

                else
                {
                  if (v33 != 0x80000000000000)
                  {
                    goto LABEL_55;
                  }

                  v31 = 55;
                }
              }
            }

            else if (v33 <= 0x7FFFFFFFFFLL)
            {
              if (v33 <= 0x1FFFFFFFFLL)
              {
                if (v33 == 0x40000000)
                {
                  v31 = 30;
                }

                else if (v33 == 0x80000000)
                {
                  v31 = 31;
                }

                else
                {
                  v115 = 0;
                  if (v33 != 0x100000000)
                  {
                    goto LABEL_55;
                  }

                  v31 = 32;
                }
              }

              else
              {
                v115 = 0;
                if (v33 > 0x7FFFFFFFFLL)
                {
                  if (v33 == 0x800000000)
                  {
                    v31 = 35;
                  }

                  else
                  {
                    if (v33 != 0x4000000000)
                    {
                      goto LABEL_55;
                    }

                    v31 = 38;
                  }
                }

                else if (v33 == 0x200000000)
                {
                  v31 = 33;
                }

                else
                {
                  if (v33 != 0x400000000)
                  {
                    goto LABEL_55;
                  }

                  v31 = 34;
                }
              }
            }

            else
            {
              v115 = 0;
              if (v33 > 0x7FFFFFFFFFFLL)
              {
                if (v33 > 0x1FFFFFFFFFFFLL)
                {
                  if (v33 == 0x200000000000)
                  {
                    v31 = 45;
                  }

                  else
                  {
                    if (v33 != 0x400000000000)
                    {
                      goto LABEL_55;
                    }

                    v31 = 46;
                  }
                }

                else if (v33 == 0x80000000000)
                {
                  v31 = 43;
                }

                else
                {
                  if (v33 != 0x100000000000)
                  {
                    goto LABEL_55;
                  }

                  v31 = 44;
                }
              }

              else if (v33 > 0x1FFFFFFFFFFLL)
              {
                if (v33 == 0x20000000000)
                {
                  v31 = 41;
                }

                else
                {
                  if (v33 != 0x40000000000)
                  {
                    goto LABEL_55;
                  }

                  v31 = 42;
                }
              }

              else if (v33 == 0x8000000000)
              {
                v31 = 39;
              }

              else
              {
                if (v33 != 0x10000000000)
                {
                  goto LABEL_55;
                }

                v31 = 40;
              }
            }

LABEL_50:
            v115 = v31;
            DataStreamSecurityKeys = APSAudioFormatDescriptionCreateWithAudioFormatIndex();
            if (DataStreamSecurityKeys)
            {
              goto LABEL_521;
            }

            CFDictionarySetValue(v22, @"AudioFormat", 0);
LABEL_55:
            if (v122)
            {
              v34 = v25;
            }

            else
            {
              v34 = v24;
            }

            CFDictionarySetValue(v22, @"IsMedia", v34);
            v35 = *(a1 + 448);
            if (v35)
            {
              CFDictionarySetValue(v22, @"NetworkClock", v35);
              CFDictionaryGetInt64();
              DataStreamSecurityKeys = CFDictionarySetInt64();
              if (DataStreamSecurityKeys)
              {
                goto LABEL_521;
              }

              if (CFDictionaryGetInt64())
              {
                v36 = v24;
              }

              else
              {
                v36 = v25;
              }

              CFDictionarySetValue(v22, @"DisableRetransmits", v36);
              v37 = CFDictionaryGetInt64();
              *(a1 + 440) = v37 != 0;
              if (v37)
              {
                v38 = v24;
              }

              else
              {
                v38 = v25;
              }

              CFDictionarySetValue(v22, @"UsingScreen", v38);
              if (CFDictionaryGetInt64())
              {
                v39 = v24;
              }

              else
              {
                v39 = v25;
              }

              CFDictionarySetValue(v22, @"HTFTIsActive", v39);
              v40 = *(a1 + 176);
              if (v40)
              {
                CFDictionarySetValue(v22, @"StatsCollector", v40);
              }

              CFDictionarySetValue(v22, @"ReceiverSession", a1);
              CFDictionarySetValue(v22, @"StreamDescription", theDict);
              CFDictionaryGetInt64();
              DataStreamSecurityKeys = CFDictionarySetInt64();
              if (DataStreamSecurityKeys)
              {
                goto LABEL_521;
              }

              CFDictionaryGetInt64();
              DataStreamSecurityKeys = CFDictionarySetInt64();
              if (DataStreamSecurityKeys)
              {
                goto LABEL_521;
              }

              CFDictionaryGetInt64();
              DataStreamSecurityKeys = CFDictionarySetInt64();
              if (DataStreamSecurityKeys)
              {
                goto LABEL_521;
              }

              CFDictionaryGetInt64();
              DataStreamSecurityKeys = CFDictionarySetInt64();
              if (DataStreamSecurityKeys)
              {
                goto LABEL_521;
              }

              v41 = *(a1 + 312);
              if (v41)
              {
                v42 = CFGetTypeID(v41);
                if (v42 == CFStringGetTypeID())
                {
                  CFDictionarySetValue(v22, @"ClientDeviceModel", *(a1 + 312));
                }
              }

              v43 = *(a1 + 320);
              if (v43)
              {
                v44 = CFGetTypeID(v43);
                if (v44 == CFStringGetTypeID())
                {
                  CFDictionarySetValue(v22, @"ClientOSBuildVersion", *(a1 + 320));
                }
              }

              DataStreamSecurityKeys = CFDictionarySetInt64();
              if (DataStreamSecurityKeys)
              {
                goto LABEL_521;
              }

              DataStreamSecurityKeys = CFDictionarySetInt64();
              if (DataStreamSecurityKeys)
              {
                goto LABEL_521;
              }

              FigCFDictionarySetValueFromKeyInDict();
              v119 = a4;
              if (CFDictionaryContainsKey(theDict, @"shk"))
              {
                *v130 = 0;
                CFDictionaryGetData();
                if (*v130 != 32)
                {
                  APSLogErrorAt();
                  DataStreamSecurityKeys = -6743;
LABEL_522:
                  v77 = 0;
                  goto LABEL_523;
                }

                v45 = v128;
                goto LABEL_93;
              }

              v46 = *(a1 + 488);
              if (!v46 || (v47 = *(*(CMBaseObjectGetVTable() + 16) + 32)) == 0 || !v47(v46))
              {
                v45 = 0;
                goto LABEL_93;
              }

              v48 = CFDictionaryGetInt64();
              if (v48)
              {
                v45 = v128;
                DataStreamSecurityKeys = _GetDataStreamSecurityKeys(a1, v48, 0, 0, v128);
                if (DataStreamSecurityKeys)
                {
LABEL_521:
                  APSLogErrorAt();
                  goto LABEL_522;
                }

LABEL_93:
                v49 = CFDictionaryContainsKey(theDict, @"streamConnections");
                key = v12;
                if (v49)
                {
                  v117 = v30;
                  appended = 0;
                  CFDictionaryGetTypeID();
                  TypedValue = CFDictionaryGetTypedValue();
                  v51 = CFDictionaryContainsKey(TypedValue, @"streamConnectionTypeAPAP");
                  v52 = CFDictionaryContainsKey(TypedValue, @"streamConnectionTypeRTP");
                  v53 = CFDictionaryContainsKey(TypedValue, @"streamConnectionTypeAPAT");
                  if (!(v51 | v52) && !v53)
                  {
                    v54 = 0;
LABEL_140:
                    Value = CFDictionaryGetValue(TypedValue, @"streamConnectionTypeRTCP");
                    if (!Value)
                    {
                      v120 = 0;
                      v32 = v123;
                      goto LABEL_146;
                    }

                    v65 = Value;
                    v66 = CFGetTypeID(Value);
                    if (v66 == CFDictionaryGetTypeID())
                    {
                      v32 = v123;
                      if (CFDictionaryContainsKey(v65, @"streamConnectionKeyPort"))
                      {
                        CFDictionaryGetInt64();
                        appended = CFDictionarySetInt64();
                        if (appended)
                        {
                          APSLogErrorAt();
                          v54 = 0;
                          v120 = 0;
                          goto LABEL_324;
                        }
                      }

                      v120 = 1;
LABEL_146:
                      v67 = CFDictionaryGetValue(TypedValue, @"streamConnectionTypeMediaDataControl");
                      if (v67)
                      {
                        v68 = v67;
                        v69 = CFGetTypeID(v67);
                        if (v69 == CFDictionaryGetTypeID())
                        {
                          v70 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF128]);
                          if (v70)
                          {
                            v71 = v70;
                            v72 = CFDictionaryGetInt64();
                            v73 = CFDictionaryContainsKey(v68, @"streamConnectionKeyEncryptionSeed");
                            if (v72)
                            {
                              if (v73)
                              {
                                APSLogErrorAt();
                                v54 = 0;
                                v120 = 0;
                                v75 = 0;
                                appended = -6711;
                                v32 = v123;
                                goto LABEL_159;
                              }

                              v32 = v123;
                              if (v45)
                              {
                                appended = CFArrayAppendBytes();
                                if (appended)
                                {
LABEL_581:
                                  APSLogErrorAt();
                                  v54 = 0;
                                  v120 = 0;
                                  v75 = 0;
                                  goto LABEL_159;
                                }
                              }
                            }

                            else
                            {
                              v32 = v123;
                              if (v73)
                              {
                                v74 = CFDictionaryGetInt64();
                                appended = _GetDataStreamSecurityKeys(a1, v74, 32, v129, v130);
                                if (appended)
                                {
                                  goto LABEL_581;
                                }

                                appended = CFArrayAppendBytes();
                                if (appended)
                                {
                                  goto LABEL_581;
                                }

                                appended = CFArrayAppendBytes();
                                if (appended)
                                {
                                  goto LABEL_581;
                                }
                              }
                            }

                            CFDictionarySetValue(v22, @"MediaDataControl", v71);
                            v75 = 1;
LABEL_159:
                            CFRelease(v71);
LABEL_325:
                            DataStreamSecurityKeys = appended;
                            if (!appended)
                            {
                              v30 = v117;
                              v124 = v75;
                              if (v54)
                              {
                                if (v54 == 1095778644 || v54 == 1095778640)
                                {
                                  if (v32 != 103)
                                  {
                                    APSLogErrorAt();
                                    DataStreamSecurityKeys = -6735;
                                    v8 = &unk_27E37E000;
                                    if (gLogCategory_AirPlayReceiverCore <= 90 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                                    {
                                      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _GeneralAudioSetup(AirPlayReceiverSessionRef, APStreamType, CFDictionaryRef, CFMutableDictionaryRef)", 33554522, "### [%{ptr}] APAP/APAT only supported for BufferedAudio!\n", a1);
                                    }

                                    v77 = 0;
                                    goto LABEL_427;
                                  }

                                  CFDictionarySetInt64();
                                  v83 = 0;
                                  goto LABEL_335;
                                }
                              }

                              else
                              {
                                if (v120)
                                {
                                  APSLogErrorAt();
                                  DataStreamSecurityKeys = -6711;
                                  if (gLogCategory_AirPlayReceiverCore <= 90 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                                  {
                                    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _GeneralAudioSetup(AirPlayReceiverSessionRef, APStreamType, CFDictionaryRef, CFMutableDictionaryRef)", 33554522, "### [%{ptr}] Cannot have RTCP connection without RTP connection!\n", a1);
                                  }

                                  v77 = 0;
                                  v8 = &unk_27E37E000;
                                  v12 = key;
                                  v30 = v117;
                                  goto LABEL_479;
                                }

                                v54 = 0;
                                v120 = 0;
                              }

LABEL_333:
                              CFDictionarySetInt64();
                              v83 = v32 == 96;
                              if (v32 == 96)
                              {
                                v116 = 0;
LABEL_337:
                                if (*(a1 + 440))
                                {
                                  if (!APSIsMemberOfHTGroup())
                                  {
                                    goto LABEL_343;
                                  }

                                  v84 = kAPReceiverAudioSessionOption_ShouldAdjustPresentationByOutputLatency;
                                }

                                else
                                {
                                  if (!APSIsATVInHTGroup())
                                  {
                                    goto LABEL_343;
                                  }

                                  v84 = kAPReceiverAudioSessionOption_ReadAudioWithoutRendering;
                                }

                                CFDictionarySetValue(v22, *v84, v24);
LABEL_343:
                                *v130 = *(a1 + 196);
                                v85 = *(a1 + 224);
                                *&v130[12] = *(a1 + 208);
                                *v129 = v85;
                                *&v129[12] = *(a1 + 236);
                                DataStreamSecurityKeys = APReceiverAudioSessionCreate(v32, v130, v129, v22, &cf);
                                if (DataStreamSecurityKeys)
                                {
                                  APSLogErrorAt();
                                  v77 = 0;
                                  v8 = &unk_27E37E000;
LABEL_427:
                                  v12 = key;
                                  goto LABEL_479;
                                }

                                v8 = &unk_27E37E000;
                                if (CFDictionaryContainsKey(theDict, @"pkdDeviceContext"))
                                {
                                  v77 = APReceiverAudioSessionCopyProperty(cf, v86, @"PKDReceiverContext", v87, &DataStreamSecurityKeys);
                                  if (DataStreamSecurityKeys)
                                  {
LABEL_574:
                                    APSLogErrorAt();
                                    goto LABEL_427;
                                  }

                                  if (v77)
                                  {
                                    CFDictionarySetValue(v30, @"pkdDeviceContext", v77);
                                  }
                                }

                                else
                                {
                                  v77 = 0;
                                }

                                if (!*(a1 + 458) || *(a1 + 753) || (DataStreamSecurityKeys = APReceiverAudioSessionPlatformControl(cf, @"RASP::StartSession")) == 0)
                                {
                                  CFDictionarySetValue(*(a1 + 568), key, cf);
                                  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                                  {
                                    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _GeneralAudioSetup(AirPlayReceiverSessionRef, APStreamType, CFDictionaryRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] APReceiverAudioSession [%{ptr}] created with stream ID %llu.\n", a1, cf, 0);
                                  }

                                  if (v122)
                                  {
                                    _UpdateActiveSessionRegistration(a1, 0, 3u);
                                  }

                                  else
                                  {
                                    v88 = *(a1 + 576);
                                    if (!v88)
                                    {
                                      AirPlayReceiverSessionPlatformControl(a1, @"handleMediaAudioStartingForSession");
                                      _UpdateActiveSessionRegistration(a1, 0, 0);
                                      v88 = *(a1 + 576);
                                    }

                                    v89 = cf;
                                    if (cf)
                                    {
                                      CFRetain(cf);
                                    }

                                    *(a1 + 576) = v89;
                                    if (v88)
                                    {
                                      CFRelease(v88);
                                    }

                                    if (*(a1 + 724))
                                    {
                                      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                                      {
                                        LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _GeneralAudioSetup(AirPlayReceiverSessionRef, APStreamType, CFDictionaryRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] Applying fade of type %d with duration %lf.\n", a1, 1, *(a1 + 728));
                                      }

                                      v90 = cf;
                                      CMTimeMakeWithSeconds(v130, *(a1 + 728), 1000);
                                      APReceiverAudioSessionApplyVolumeFade(v90, 1, v130);
                                      *(a1 + 724) = 0;
                                    }
                                  }

                                  v118 = v77;
                                  if (*(a1 + 384) && cf && (v91 = *(cf + 8)) != 0)
                                  {
                                    v92 = v83;
                                    v91(*(cf + 5), a1 + 392, a1 + 408);
                                  }

                                  else
                                  {
                                    v92 = v83;
                                  }

                                  *(a1 + 584) = CFObjectGetPropertyInt64Sync();
                                  v93 = cf;
                                  if (v49)
                                  {
                                    *v130 = 0;
                                    v94 = *MEMORY[0x277CBECE8];
                                    v95 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                    if (!v95)
                                    {
                                      APSLogErrorAt();
                                      DataStreamSecurityKeys = -6728;
                                      goto LABEL_499;
                                    }

                                    v96 = v95;
                                    if (!v93)
                                    {
                                      APSLogErrorAt();
                                      *v130 = -6718;
                                      v8 = &unk_27E37E000;
                                      v12 = key;
                                      goto LABEL_411;
                                    }

                                    v97 = v30;
                                    if (v54)
                                    {
                                      v98 = CFDictionaryCreateMutable(v94, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                      if (!v98)
                                      {
                                        APSLogErrorAt();
                                        *v130 = -6728;
                                        v8 = &unk_27E37E000;
                                        v12 = key;
LABEL_516:
                                        v30 = v97;
                                        goto LABEL_411;
                                      }

                                      v99 = v98;
                                      CFObjectGetPropertyInt64Sync();
                                      if (*v130 || (*v130 = CFDictionarySetInt64()) != 0)
                                      {
                                        APSLogErrorAt();
                                        v8 = &unk_27E37E000;
                                        v12 = key;
LABEL_424:
                                        v105 = v119;
                                        CFRelease(v96);
                                        v96 = v99;
                                        v30 = v97;
LABEL_412:
                                        CFRelease(v96);
                                        DataStreamSecurityKeys = *v130;
                                        if (!*v130)
                                        {
LABEL_413:
                                          CFDictionarySetInt64();
                                          if (!v92 || (CFObjectGetPropertyInt64Sync(), (DataStreamSecurityKeys = CFDictionarySetInt64()) == 0))
                                          {
                                            if (v116)
                                            {
                                              CFObjectGetPropertyInt64Sync();
                                              CFDictionarySetInt64();
                                            }

                                            DataStreamSecurityKeys = _AddResponseStream(v105, v30);
                                            v77 = v118;
                                            if (DataStreamSecurityKeys)
                                            {
                                              goto LABEL_478;
                                            }

                                            v108 = v8[474];
                                            if (v108 <= 50 && (v108 != -1 || _LogCategory_Initialize()))
                                            {
                                              v109 = "PCM/24000/16/1";
                                              switch(v115)
                                              {
                                                case 2:
                                                  v109 = "PCM/8000/16/1";
                                                  break;
                                                case 3:
                                                  v109 = "PCM/8000/16/2";
                                                  break;
                                                case 4:
                                                  v109 = "PCM/16000/16/1";
                                                  break;
                                                case 5:
                                                  v109 = "PCM/16000/16/2";
                                                  break;
                                                case 6:
                                                  break;
                                                case 7:
                                                  v109 = "PCM/24000/16/2";
                                                  break;
                                                case 8:
                                                  v109 = "PCM/32000/16/1";
                                                  break;
                                                case 9:
                                                  v109 = "PCM/32000/16/2";
                                                  break;
                                                case 10:
                                                  v109 = "PCM/44100/16/1";
                                                  break;
                                                case 11:
                                                  v109 = "PCM/44100/16/2";
                                                  break;
                                                case 12:
                                                  v109 = "PCM/44100/24/1";
                                                  break;
                                                case 13:
                                                  v109 = "PCM/44100/24/2";
                                                  break;
                                                case 14:
                                                  v109 = "PCM/48000/16/1";
                                                  break;
                                                case 15:
                                                  v109 = "PCM/48000/16/2";
                                                  break;
                                                case 16:
                                                  v109 = "PCM/48000/24/1";
                                                  break;
                                                case 17:
                                                  v109 = "PCM/48000/24/2";
                                                  break;
                                                case 18:
                                                  v109 = "ALAC/44100/16/2";
                                                  break;
                                                case 19:
                                                  v109 = "ALAC/44100/24/2";
                                                  break;
                                                case 20:
                                                  v109 = "ALAC/48000/16/2";
                                                  break;
                                                case 21:
                                                  v109 = "ALAC/48000/24/2";
                                                  break;
                                                case 22:
                                                  v109 = "AAC-LC/44100/2";
                                                  break;
                                                case 24:
                                                  v109 = "AAC-ELD/44100/2";
                                                  break;
                                                case 38:
                                                  v109 = "PCM/48000/16/5.1.2";
                                                  break;
                                                case 39:
                                                  v109 = "AAC_LC/48000/5.1";
                                                  break;
                                                case 40:
                                                  v109 = "AAC_LC/48000/5.1.2";
                                                  break;
                                                case 44:
                                                  v109 = "PCM/48000/16/5.1";
                                                  break;
                                                case 45:
                                                  v109 = "PCM/48000/32f/1";
                                                  break;
                                                case 46:
                                                  v109 = "PCM/48000/32f/2";
                                                  break;
                                                case 47:
                                                  v109 = "PCM/48000/32f/5.1";
                                                  break;
                                                case 48:
                                                  v109 = "PCM/48000/32f/5.1.2";
                                                  break;
                                                case 69:
                                                  v109 = "PCM/48000/32f/7.1.4";
                                                  break;
                                                case 78:
                                                  v109 = "PCM/48000/16/7.1";
                                                  break;
                                                case 79:
                                                  v109 = "PCM/48000/32f/7.1";
                                                  break;
                                                case 80:
                                                  v109 = "PCM/48000/16/5.1.4";
                                                  break;
                                                case 81:
                                                  v109 = "PCM/48000/32f/5.1.4";
                                                  break;
                                                case 82:
                                                  v109 = "PCM/48000/16/7.1.2";
                                                  break;
                                                case 83:
                                                  v109 = "PCM/48000/32f/7.1.2";
                                                  break;
                                                case 84:
                                                  v109 = "PCM/48000/16/7.1.4";
                                                  break;
                                                case 85:
                                                  v109 = "ALAC/44100/20/2";
                                                  break;
                                                case 86:
                                                  v109 = "ALAC/48000/20/2";
                                                  break;
                                                case 93:
                                                  v109 = "PCM/48000/16/9.1.6";
                                                  break;
                                                case 94:
                                                  v109 = "PCM/48000/32f/9.1.6";
                                                  break;
                                                default:
                                                  v109 = "AAC_LC/48000/7.1";
                                                  switch(v115)
                                                  {
                                                    case 23:
                                                      v109 = "AAC-LC/48000/2";
                                                      break;
                                                    case 25:
                                                      v109 = "AAC-ELD/48000/2";
                                                      break;
                                                    case 26:
                                                      v109 = "AAC-ELD/16000/1";
                                                      break;
                                                    case 27:
                                                      v109 = "AAC-ELD/24000/1";
                                                      break;
                                                    case 28:
                                                      v109 = "OPUS/16000/1";
                                                      break;
                                                    case 29:
                                                      v109 = "OPUS/24000/1";
                                                      break;
                                                    case 30:
                                                      v109 = "OPUS/48000/1";
                                                      break;
                                                    case 31:
                                                      v109 = "AAC-ELD/44100/1";
                                                      break;
                                                    case 32:
                                                      v109 = "AAC-ELD/48000/1";
                                                      break;
                                                    case 33:
                                                      v109 = "QC3/48000/5.1.2";
                                                      break;
                                                    case 34:
                                                      v109 = "QC3/48000/7.1.4";
                                                      break;
                                                    case 35:
                                                      v109 = "QC3/48000/9.1.6";
                                                      break;
                                                    case 41:
                                                      v109 = "AAC_ELD/48000/5.1";
                                                      break;
                                                    case 42:
                                                      v109 = "AAC_ELD/48000/5.1.2";
                                                      break;
                                                    case 43:
                                                      v109 = "AAC-ELD/32000/1";
                                                      break;
                                                    case 49:
                                                      v109 = "DDPLUS/48000/2";
                                                      break;
                                                    case 50:
                                                      v109 = "DDPLUS/48000/5.1";
                                                      break;
                                                    case 51:
                                                      v109 = "DDPLUS/48000/5.1.2";
                                                      break;
                                                    case 52:
                                                      v109 = "DDPLUS/48000/7.1.4";
                                                      break;
                                                    case 53:
                                                      v109 = "DDPLUS/48000/9.1.6";
                                                      break;
                                                    case 54:
                                                      v109 = "QAAC/48000/2";
                                                      break;
                                                    case 55:
                                                      v109 = "QAAC/48000/5.1";
                                                      break;
                                                    case 56:
                                                      v109 = "QAAC/48000/5.1.2";
                                                      break;
                                                    case 57:
                                                      v109 = "QAACHE/48000/2";
                                                      break;
                                                    case 58:
                                                      v109 = "QAACHE/48000/5.1";
                                                      break;
                                                    case 60:
                                                      v109 = "QAACHE/48000/5.1.2";
                                                      break;
                                                    case 61:
                                                      v109 = "QLAC/48000/24/2";
                                                      break;
                                                    case 62:
                                                      v109 = "QC3/48000/2";
                                                      break;
                                                    case 63:
                                                      v109 = "QC3/48000/5.1";
                                                      break;
                                                    case 64:
                                                      v109 = "APAC/48000/2";
                                                      break;
                                                    case 65:
                                                      v109 = "APAC/48000/5.1";
                                                      break;
                                                    case 66:
                                                      v109 = "APAC/48000/5.1.2";
                                                      break;
                                                    case 67:
                                                      v109 = "APAC/48000/7.1";
                                                      break;
                                                    case 68:
                                                      v109 = "APAC/48000/7.1.4";
                                                      break;
                                                    case 70:
                                                      v109 = "QAAC/44100/2";
                                                      break;
                                                    case 71:
                                                      v109 = "QAACHE/44100/2";
                                                      break;
                                                    case 72:
                                                      v109 = "QAACHEV2/44100/2";
                                                      break;
                                                    case 73:
                                                      v109 = "QLAC/44100/24/2";
                                                      break;
                                                    case 74:
                                                      v109 = "MP3/44100/2";
                                                      break;
                                                    case 76:
                                                      v109 = "APAC/48000/5.1.4";
                                                      break;
                                                    case 77:
                                                      v109 = "APAC/48000/7.1.2";
                                                      break;
                                                    case 87:
                                                      v109 = "QAC3/48000/5.1";
                                                      break;
                                                    case 88:
                                                      v109 = "QEC3/48000/7.1";
                                                      break;
                                                    case 89:
                                                      v109 = "PAAC/44100/2";
                                                      break;
                                                    case 90:
                                                      goto LABEL_470;
                                                    case 91:
                                                      v109 = "EAC3/48000/5.1";
                                                      break;
                                                    case 92:
                                                      v109 = "APAC/48000/9.1.6";
                                                      break;
                                                    default:
                                                      v109 = "";
                                                      if (v115 == 75)
                                                      {
                                                        v109 = "MP3/48000/2";
                                                      }

                                                      break;
                                                  }

                                                  break;
                                              }

LABEL_470:
                                              LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _GeneralAudioSetup(AirPlayReceiverSessionRef, APStreamType, CFDictionaryRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] General audio set up for %s, streamID %llu\n", a1, v109, 0);
                                            }

                                            if (*(a1 + 458))
                                            {
                                              if (cf)
                                              {
                                                v110 = *(cf + 9);
                                                if (v110)
                                                {
                                                  DataStreamSecurityKeys = v110(*(cf + 5));
                                                  if (!DataStreamSecurityKeys)
                                                  {
                                                    goto LABEL_479;
                                                  }

                                                  goto LABEL_478;
                                                }

                                                v111 = -12782;
                                              }

                                              else
                                              {
                                                APSLogErrorAt();
                                                v111 = -72152;
                                              }

                                              DataStreamSecurityKeys = v111;
LABEL_478:
                                              APSLogErrorAt();
                                            }

LABEL_479:
                                            CFRelease(v30);
                                            v79 = DataStreamSecurityKeys;
                                            if (!DataStreamSecurityKeys)
                                            {
                                              goto LABEL_481;
                                            }

                                            goto LABEL_480;
                                          }

                                          APSLogErrorAt();
LABEL_503:
                                          v77 = v118;
                                          goto LABEL_479;
                                        }

LABEL_499:
                                        APSLogErrorAt();
                                        v8 = &unk_27E37E000;
                                        v12 = key;
                                        goto LABEL_503;
                                      }

                                      v102 = APReceiverAudioSessionCopyProperty(v93, v100, @"AudioNetworkInfo", v101, 0);
                                      if (v102)
                                      {
                                        v103 = v102;
                                        CFDictionarySetValue(v99, @"streamConnectionKeyNetworkInfo", v102);
                                        CFRelease(v103);
                                      }

                                      if (v54 == 1381257248)
                                      {
                                        v104 = @"streamConnectionTypeRTP";
                                      }

                                      else if (v54 == 1095778644)
                                      {
                                        v104 = @"streamConnectionTypeAPAT";
                                      }

                                      else
                                      {
                                        v104 = @"streamConnectionTypeAPAP";
                                      }

                                      CFDictionarySetValue(v96, v104, v99);
                                      CFRelease(v99);
                                    }

                                    v12 = key;
                                    if (v120)
                                    {
                                      v106 = CFDictionaryCreateMutable(v94, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                      if (!v106)
                                      {
LABEL_515:
                                        APSLogErrorAt();
                                        *v130 = -6728;
                                        v8 = &unk_27E37E000;
                                        goto LABEL_516;
                                      }

                                      v99 = v106;
                                      CFObjectGetPropertyInt64Sync();
                                      if (*v130 || (*v130 = CFDictionarySetInt64()) != 0)
                                      {
LABEL_517:
                                        APSLogErrorAt();
                                        v8 = &unk_27E37E000;
                                        goto LABEL_424;
                                      }

                                      CFDictionarySetValue(v96, @"streamConnectionTypeRTCP", v99);
                                      CFRelease(v99);
                                    }

                                    if (!v124)
                                    {
LABEL_410:
                                      v30 = v97;
                                      CFDictionarySetValue(v97, @"streamConnections", v96);
                                      v8 = &unk_27E37E000;
LABEL_411:
                                      v105 = v119;
                                      goto LABEL_412;
                                    }

                                    v107 = CFDictionaryCreateMutable(v94, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                    if (v107)
                                    {
                                      v99 = v107;
                                      CFObjectGetPropertyInt64Sync();
                                      if (!*v130)
                                      {
                                        *v130 = CFDictionarySetInt64();
                                        if (!*v130)
                                        {
                                          CFDictionarySetValue(v96, @"streamConnectionTypeMediaDataControl", v99);
                                          CFRelease(v99);
                                          goto LABEL_410;
                                        }
                                      }

                                      goto LABEL_517;
                                    }

                                    goto LABEL_515;
                                  }

                                  *v130 = 0;
                                  if (v54 == 1381257248)
                                  {
                                    v12 = key;
                                    if (v120 && !v124)
                                    {
                                      CFObjectGetPropertyInt64Sync();
                                      if (*v130)
                                      {
                                        APSLogErrorAt();
                                      }

                                      else
                                      {
                                        CFObjectGetPropertyInt64Sync();
                                        CFDictionarySetInt64();
                                        CFDictionarySetInt64();
                                      }

                                      v105 = v119;
                                      DataStreamSecurityKeys = *v130;
                                      if (!*v130)
                                      {
                                        goto LABEL_413;
                                      }

LABEL_511:
                                      v77 = v118;
                                      goto LABEL_478;
                                    }
                                  }

                                  else
                                  {
                                    v12 = key;
                                  }

                                  APSLogErrorAt();
                                  DataStreamSecurityKeys = -6705;
                                  goto LABEL_511;
                                }

                                goto LABEL_574;
                              }

                              if (v32 != 103)
                              {
                                v8 = &unk_27E37E000;
                                if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
                                {
                                  LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _GeneralAudioSetup(AirPlayReceiverSessionRef, APStreamType, CFDictionaryRef, CFMutableDictionaryRef)", 33554492, "Unsupported stream type (%u), cannot create audio session.\n", v32);
                                }

                                v77 = 0;
                                DataStreamSecurityKeys = -6735;
                                goto LABEL_427;
                              }

LABEL_335:
                              *(a1 + 552) = 120;
                              *(a1 + 520) = 120 * UpTicksPerSecond();
                              SocketSetKeepAlive();
                              FigCFDictionarySetValueFromKeyInDict();
                              v116 = 1;
                              goto LABEL_337;
                            }

                            v8 = &unk_27E37E000;
                            v12 = key;
                            v30 = v117;
LABEL_585:
                            APSLogErrorAt();
                            v77 = 0;
                            goto LABEL_479;
                          }

                          v81 = -6728;
                        }

                        else
                        {
                          v81 = -6756;
                        }

                        goto LABEL_583;
                      }

LABEL_324:
                      v75 = 0;
                      goto LABEL_325;
                    }

                    v81 = -6756;
LABEL_583:
                    v8 = &unk_27E37E000;
                    v12 = key;
                    goto LABEL_584;
                  }

                  if (v53)
                  {
                    if (v51 | v52)
                    {
                      v81 = -6711;
                      v8 = &unk_27E37E000;
LABEL_584:
                      v30 = v117;
                      APSLogErrorAt();
                      DataStreamSecurityKeys = v81;
                      goto LABEL_585;
                    }

                    v57 = CFDictionaryGetValue(TypedValue, @"streamConnectionTypeAPAT");
                    CFDictionarySetValue(v22, @"UseUDP", v24);
                    v54 = 1095778644;
                    if (!v57)
                    {
                      goto LABEL_314;
                    }
                  }

                  else
                  {
                    if (v51)
                    {
                      if (v52)
                      {
                        v81 = -6711;
                        goto LABEL_583;
                      }

                      v54 = 1095778640;
                      v58 = @"streamConnectionTypeAPAP";
                    }

                    else
                    {
                      v54 = 1381257248;
                      v58 = @"streamConnectionTypeRTP";
                    }

                    v57 = CFDictionaryGetValue(TypedValue, v58);
                    if (!v57)
                    {
                      goto LABEL_314;
                    }
                  }

                  v59 = CFGetTypeID(v57);
                  if (v59 != CFDictionaryGetTypeID())
                  {
LABEL_314:
                    v81 = -6756;
                    goto LABEL_583;
                  }

                  v60 = CFDictionaryGetInt64();
                  v61 = CFDictionaryContainsKey(v57, @"streamConnectionKeyEncryptionSeed");
                  if (v60)
                  {
                    if (v61)
                    {
                      v81 = -6711;
                      goto LABEL_583;
                    }

                    if (v45)
                    {
                      appended = CFDictionarySetData();
                      if (appended || (appended = CFDictionarySetData()) != 0)
                      {
LABEL_586:
                        APSLogErrorAt();
                        v54 = 0;
                        v120 = 0;
                        v75 = 0;
                        v32 = v123;
                        goto LABEL_325;
                      }
                    }
                  }

                  else if (v61)
                  {
                    v62 = CFDictionaryGetInt64();
                    appended = _GetDataStreamSecurityKeys(a1, v62, 32, v129, v130);
                    if (appended)
                    {
                      goto LABEL_586;
                    }

                    appended = CFDictionarySetData();
                    if (appended)
                    {
                      goto LABEL_586;
                    }

                    appended = CFDictionarySetData();
                    if (appended)
                    {
                      goto LABEL_586;
                    }
                  }

                  if (CFDictionaryContainsKey(v57, @"streamConnectionKeyNetworkInfo"))
                  {
                    v63 = CFDictionaryGetValue(v57, @"streamConnectionKeyNetworkInfo");
                    CFDictionarySetValue(v22, @"NetworkInfoRemoteRTP", v63);
                  }

                  FigCFDictionaryGetValue();
                  if (FigCFEqual())
                  {
                    CFDictionarySetValue(v22, @"UseQUIC", v24);
                  }

                  goto LABEL_140;
                }

                CFDictionaryGetInt64();
                v55 = CFDictionarySetInt64();
                if (v55)
                {
                  v82 = v55;
                }

                else
                {
                  if (!v45 || (v56 = CFDictionarySetData()) == 0)
                  {
                    v124 = 0;
                    v54 = 1381257248;
                    DataStreamSecurityKeys = 0;
                    v120 = 1;
                    goto LABEL_333;
                  }

                  v82 = v56;
                }

                APSLogErrorAt();
                DataStreamSecurityKeys = v82;
                goto LABEL_521;
              }

              APSLogErrorAt();
              v77 = 0;
              v80 = -6715;
            }

            else
            {
              APSLogErrorAt();
              v77 = 0;
              v80 = -6718;
            }

            DataStreamSecurityKeys = v80;
LABEL_523:
            v8 = &unk_27E37E000;
            goto LABEL_479;
          }
        }
      }

      v115 = 0;
      goto LABEL_55;
    }

    APSLogErrorAt();
    v77 = 0;
    v79 = 4294960568;
    DataStreamSecurityKeys = -6728;
    v8 = &unk_27E37E000;
  }

  else
  {
    APSLogErrorAt();
    v77 = 0;
    v79 = 4294960568;
    DataStreamSecurityKeys = -6728;
  }

LABEL_480:
  _AudioTearDownStream(a1, 0, v12, v79);
LABEL_481:
  if (v77)
  {
    CFRelease(v77);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  result = DataStreamSecurityKeys;
  if (DataStreamSecurityKeys)
  {
    v113 = v8[474];
    if (v113 <= 60)
    {
      if (v113 != -1 || (v114 = _LogCategory_Initialize(), result = DataStreamSecurityKeys, v114))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _GeneralAudioSetup(AirPlayReceiverSessionRef, APStreamType, CFDictionaryRef, CFMutableDictionaryRef)", 33554492, "[%{ptr}] General audio setup failed: %#m\n", a1, result);
        return DataStreamSecurityKeys;
      }
    }
  }

  return result;
}

uint64_t _GetDataStreamSecurityKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = 0;
  if (!*(a1 + 488))
  {
    APSLogErrorAt();
    return 4294960587;
  }

  v9 = ASPrintF(&v20, "%s%llu", "DataStream-Salt", a2);
  if (a5)
  {
    v10 = *(a1 + 488);
    v11 = v20;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v12)
    {
      v17 = 4294954514;
LABEL_11:
      APSLogErrorAt();
      goto LABEL_13;
    }

    v13 = v12(v10, v11, v9, "DataStream-Output-Encryption-Key", 32, 32, a5);
    if (v13)
    {
      v17 = v13;
      goto LABEL_11;
    }
  }

  if (!a4)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v14 = *(a1 + 488);
  v15 = v20;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v16)
  {
    v17 = 4294954514;
    goto LABEL_11;
  }

  v17 = v16(v14, v15, v9, "DataStream-Input-Encryption-Key", 31, a3, a4);
  if (v17)
  {
    goto LABEL_11;
  }

LABEL_13:
  v18 = v20;
  if (v9)
  {
    do
    {
      *v18++ = 0;
      --v9;
    }

    while (v9);
    v18 = v20;
  }

  if (v18)
  {
    free(v18);
  }

  return v17;
}

uint64_t _AddResponseStream(__CFDictionary *a1, const void *a2)
{
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    CFArrayAppendValue(TypedValue, a2);
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v6 = Mutable;
    CFArrayAppendValue(Mutable, a2);
    CFDictionarySetValue(a1, @"streams", v6);
    CFRelease(v6);
    return 0;
  }

  APSLogErrorAt();
  return 4294960568;
}

uint64_t _ScreenStart(uint64_t a1)
{
  theDict = 0;
  if (*(a1 + 632))
  {
    return 0;
  }

  v2 = *(*(a1 + 24) + 160);
  v3 = *(a1 + 608);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3010000000;
  v29 = 0;
  v30 = 0;
  v28 = &unk_23EAD36B9;
  v4 = *(v2 + 576);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APReceiverSystemInfoGetDisplaySizeForUserVersion_block_invoke;
  block[3] = &unk_278C5FCC0;
  block[4] = &v25;
  block[5] = v2;
  v24 = v3;
  dispatch_sync(v4, block);
  v5 = v26[4];
  v6 = v26[5];
  _Block_object_dispose(&v25, 8);
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _ScreenStart(AirPlayReceiverSessionRef)", 33554482, "[%{ptr}] screen session [%{ptr}] using display size %f x %f\n", a1, *(a1 + 616), v5, v6);
  }

  if (!*(a1 + 600))
  {
    theDict = 0;
    goto LABEL_26;
  }

  if (*(a1 + 633))
  {
    goto LABEL_26;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetNumber();
  if (*(a1 + 648) && *(a1 + 656))
  {
    CFDictionarySetValue(Mutable, @"protectedMirroring", *MEMORY[0x277CBED28]);
  }

  v8 = *(a1 + 600);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v9)
  {
    v10 = 4294954514;
LABEL_16:
    APSLogErrorAt();
    if (!Mutable)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v10 = v9(v8, Mutable, &theDict);
  if (v10)
  {
    goto LABEL_16;
  }

  *(a1 + 633) = 1;
  *(a1 + 636) = CFDictionaryGetInt64();
  if (Mutable)
  {
LABEL_17:
    CFRelease(Mutable);
  }

LABEL_18:
  if (v10)
  {
    if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _ScreenStartPresentation(AirPlayReceiverSessionRef, CFDictionaryRef *)", 33554492, "[%{ptr}] start UI presentation failed: %#m\n", a1, v10);
    }

    APSLogErrorAt();
    v11 = 0;
    goto LABEL_42;
  }

LABEL_26:
  v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v11)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"presentationLayer");
      if (Value)
      {
        CFDictionarySetValue(v11, @"PresentationLayer", Value);
      }

      v13 = CFDictionaryGetValue(theDict, @"presentationContext");
      if (v13)
      {
        CFDictionarySetValue(v11, @"PresentationContext", v13);
      }
    }

    FigCFDictionarySetCGSize();
    v14 = *(a1 + 616);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v15)
    {
      v16 = v15(v14, v11);
      if (!v16)
      {
        *(a1 + 632) = 1;
        if (*(a1 + 648) && *(a1 + 656))
        {
          v17 = *(a1 + 664);
          if (!v17)
          {
            v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 16));
            *(a1 + 664) = v18;
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 0x40000000;
            handler[2] = ___ScreenStart_block_invoke;
            handler[3] = &__block_descriptor_tmp_668;
            handler[4] = a1;
            dispatch_source_set_event_handler(v18, handler);
            dispatch_source_set_timer(*(a1 + 664), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
            dispatch_resume(*(a1 + 664));
            v17 = *(a1 + 664);
          }

          v19 = dispatch_time(0, 10000000000);
          dispatch_source_set_timer(v17, v19, 0x2540BE400uLL, 0x3B9ACA00uLL);
        }

        v10 = 0;
        goto LABEL_42;
      }

      v10 = v16;
    }

    else
    {
      v10 = 4294954514;
    }

    APSLogErrorAt();
  }

  else
  {
    APSLogErrorAt();
    v10 = 4294960568;
  }

LABEL_42:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _ScreenStart(AirPlayReceiverSessionRef)", 33554492, "[%{ptr}] screen session [%{ptr}] screen start failed: %#m\n", a1, *(a1 + 616), v10);
    }

    _ScreenTearDown(a1);
  }

  return v10;
}

void AirPlayReceiverSessionTearDown(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v4 = a4;
  if (!*(a1 + 441))
  {
    v8 = &unk_27E37E000;
    v9 = gLogCategory_AirPlayReceiverCore;
    if (gLogCategory_AirPlayReceiverCore <= 30)
    {
      if (gLogCategory_AirPlayReceiverCore != -1)
      {
        goto LABEL_4;
      }

      if (_LogCategory_Initialize())
      {
        v9 = gLogCategory_AirPlayReceiverCore;
LABEL_4:
        v10 = *(a1 + 328);
        if (v9 > 20)
        {
          v11 = 0;
        }

        else
        {
          v11 = v9 != -1 || _LogCategory_Initialize() != 0;
        }

        LogPrintF(&gLogCategory_AirPlayReceiverCore, "void AirPlayReceiverSessionTearDown(AirPlayReceiverSessionRef, CFDictionaryRef, OSStatus, Boolean *)", 33554462, "Tearing down session [%{ptr}]: %llu with %##a %?@\n", a1, v10, a1 + 224, v11, a2);
        if (!a2)
        {
          goto LABEL_69;
        }

LABEL_13:
        CFArrayGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        if (TypedValue)
        {
          Count = CFArrayGetCount(TypedValue);
          if (Count >= 1)
          {
            v31 = v4;
            v14 = 0;
            while (1)
            {
              CFDictionaryGetTypeID();
              TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
              Value = CFDictionaryGetValue(TypedValueAtIndex, @"streamID");
              Int64 = CFDictionaryGetInt64();
              v18 = v8[474];
              if (v18 <= 50 && (v18 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_AirPlayReceiverCore, "void AirPlayReceiverSessionTearDown(AirPlayReceiverSessionRef, CFDictionaryRef, OSStatus, Boolean *)", 33554482, "[%{ptr}] Tearing down stream type %d\n", a1, Int64);
              }

              if (Int64 <= 109)
              {
                break;
              }

              switch(Int64)
              {
                case 0x6E:
                  _ScreenTearDown(a1);
                  break;
                case 0x78:
                  if (!*(a1 + 441))
                  {
                    if (Value)
                    {
                      v19 = CFGetInt64();
                      if (v19)
                      {
                        v20 = a3;
                        v21 = *(a1 + 24);
                        v22 = *(a1 + 32);
                        DerivedStorage = CMBaseObjectGetDerivedStorage();
                        v32 = 0;
                        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus APReceiverRequestProcessorRemoveAndDestroyMCContextForSession(AirPlayReceiverServerRef, APReceiverRequestProcessorRef, uint64_t)", 33554482, "[%{ptr}] Remove and destroy MC context for session %llu\n", v22, v19);
                        }

                        if (v21)
                        {
                          v25 = CFNumberCreateInt64();
                          if (v25)
                          {
                            v26 = v25;
                            airplayReqProcessor_GetMCRPForMCSession(v22, v19, &v32);
                            if (v32)
                            {
                              v27 = airplayReqProcessor_tearDownMediaControlRequestProcessor(v22, v32);
                              if (!v27)
                              {
                                CFDictionaryRemoveValue(*(DerivedStorage + 104), v26);
                                CFRelease(v26);
                                CFSetRemoveValue(*(a1 + 744), Value);
                                if (!CFSetGetCount(*(a1 + 744)))
                                {
                                  _UpdateActiveSessionRegistration(a1, 1u, 1u);
                                }

                                v28 = 0;
                                a3 = v20;
                                v8 = &unk_27E37E000;
                                goto LABEL_52;
                              }

                              v28 = v27;
                              APSLogErrorAt();
                            }

                            else
                            {
                              APSLogErrorAt();
                              v28 = 4294960587;
                            }

                            CFRelease(v26);
LABEL_68:
                            a3 = v20;
                            APSLogErrorAt();
                            v8 = &unk_27E37E000;
LABEL_52:
                            v29 = v8[474];
                            if (v29 <= 50 && (v29 != -1 || _LogCategory_Initialize()))
                            {
                              LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _PlaybackTearDown(AirPlayReceiverSessionRef, CFNumberRef)", 33554482, "[%{ptr}] Playback torn down, streamID = %llu, err = %d\n", a1, v19, v28);
                            }

                            break;
                          }

                          v28 = 4294960568;
                        }

                        else
                        {
                          v28 = 4294895344;
                        }

                        APSLogErrorAt();
                        goto LABEL_68;
                      }

                      APSLogErrorAt();
                    }

                    else
                    {
                      APSLogErrorAt();
                      v19 = 0;
                    }

                    v28 = 4294960591;
                    goto LABEL_52;
                  }

                  APSLogErrorAt();
                  v19 = 0;
                  v28 = 4294960587;
                  goto LABEL_52;
                case 0x82:
                  if (CFDictionaryContainsKey(*(a1 + 736), Value))
                  {
                    _PlaybackV2TearDown(a1, Value);
                  }

                  else
                  {
                    _RemoteControlSessionTearDown(a1, Value);
                  }

                  break;
                default:
                  goto LABEL_38;
              }

LABEL_56:
              if (Count == ++v14)
              {
                v30 = 0;
                v4 = v31;
                if (!v31)
                {
                  return;
                }

LABEL_71:
                *v4 = v30;
                return;
              }
            }

            if (Int64 == 96 || Int64 == 103)
            {
              if (!Value)
              {
                Value = CFNumberGetObject();
              }

              _AudioTearDownStream(a1, TypedValueAtIndex, Value, a3);
              goto LABEL_56;
            }

LABEL_38:
            v24 = v8[474];
            if (v24 <= 50 && (v24 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_AirPlayReceiverCore, "void AirPlayReceiverSessionTearDown(AirPlayReceiverSessionRef, CFDictionaryRef, OSStatus, Boolean *)", 33554482, "### Unsupported stream type: %d\n");
            }

            goto LABEL_56;
          }

LABEL_70:
          _Cleanup(a1, a3);
          v30 = Count == 0;
          if (!v4)
          {
            return;
          }

          goto LABEL_71;
        }

LABEL_69:
        Count = 0;
        goto LABEL_70;
      }
    }

    if (!a2)
    {
      goto LABEL_69;
    }

    goto LABEL_13;
  }

  v30 = 1;
  if (a4)
  {
    goto LABEL_71;
  }
}

void _SendRemoteControlSessionOutgoingMessage(void *a1, uint64_t a2, const void *a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v10 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    *(v12 + 6) = -12782;
    goto LABEL_7;
  }

  v7 = v6(a2, @"RRCS::Property::SessionID", *MEMORY[0x277CBECE8], &v10);
  *(v12 + 6) = v7;
  if (v7)
  {
LABEL_7:
    APSLogErrorAt();
    goto LABEL_10;
  }

  if (gLogCategory_AirPlayReceiverCore <= 30 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _SendRemoteControlSessionOutgoingMessage(CFTypeRef, APReceiverRemoteControlSessionRef, CFDictionaryRef)", 33554462, "[%{ptr}] Sending outgoing message for RCS [%{ptr}-%@]\n", a1, a2, v10);
  }

  CFRetain(a1);
  CFRetain(v10);
  CFRetain(a3);
  v8 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___SendRemoteControlSessionOutgoingMessage_block_invoke;
  block[3] = &unk_278C60F98;
  block[4] = &v11;
  block[5] = a1;
  block[6] = v10;
  block[7] = a3;
  dispatch_async(v8, block);
LABEL_10:
  if (v10)
  {
    CFRelease(v10);
  }

  _Block_object_dispose(&v11, 8);
}

void _HandleRemoteControlSessionFailed(void *a1, const void *a2, int a3)
{
  CFRetain(a1);
  CFRetain(a2);
  v6 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___HandleRemoteControlSessionFailed_block_invoke;
  block[3] = &__block_descriptor_tmp_789;
  block[4] = a1;
  block[5] = a2;
  v8 = a3;
  dispatch_async(v6, block);
}

uint64_t _PlaybackV2TLSInfoRequestCallback(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 488);
  if (v3)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v5)
    {
      v3 = v5(v3, "Pair-TLS-PSK", 12, 0, 0, 16, v9);
      if (!v3)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetData();
        __s[0] = 0;
        SockAddrToString();
        strlen(__s);
        CFDictionarySetData();
        *a3 = Mutable;
        return v3;
      }
    }

    else
    {
      v3 = 4294954514;
    }

    APSLogErrorAt();
    if (gLogCategory_AirPlayReceiverCore <= 90 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _PlaybackV2TLSInfoRequestCallback(const void *, CFDictionaryRef, CFDictionaryRef *)", 33554522, "Error while responding to TLS request: %i", v3);
    }
  }

  return v3;
}

void _PlaybackV2EventCallback(void *a1, const void *a2, const void *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = Mutable;
  if (a3)
  {
    CFDictionarySetValue(Mutable, @"params", a3);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  CFRetain(a1);
  v8 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___PlaybackV2EventCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_753;
  block[4] = a1;
  block[5] = a2;
  block[6] = v7;
  dispatch_async(v8, block);
}

void _ScreenHandleEvent(uint64_t a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (CFEqual(cf1, @"SessionTerminated"))
  {
    FigCFDictionaryGetInt32IfPresent();
    if (gLogCategory_AirPlayReceiverCore <= 30 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _ScreenHandleEvent(APReceiverScreenSessionRef, CFStringRef, CFDictionaryRef, void *)", 33554462, "[%{ptr}] screen session [%{ptr}] ended successfully\n", a4, a1);
    }
  }

  else if (CFEqual(cf1, @"ForceKeyFrameNeeded"))
  {
    if (gLogCategory_AirPlayReceiverCore <= 40 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _ScreenHandleEvent(APReceiverScreenSessionRef, CFStringRef, CFDictionaryRef, void *)", 33554472, "[%{ptr}] screen session [%{ptr}] requested key frame from sender\n", a4, a1);
    }

    CFRetain(a4);
    v7 = a4[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ScreenHandleEvent_block_invoke;
    block[3] = &__block_descriptor_tmp_665;
    block[4] = a4;
    dispatch_async(v7, block);
  }
}

uint64_t _AirPlayReceiverSessionUpdateMC2UCStatus(NSObject **cf, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  if (a5 == 30)
  {
    v9 = 6;
  }

  else
  {
    v9 = 0;
  }

  if (a5 == 2)
  {
    v10 = 4;
  }

  else
  {
    v10 = v9;
  }

  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _AirPlayReceiverSessionUpdateMC2UCStatus(CFTypeRef, uint32_t, MC2UCFeatureStatus, int, sa_family_t)", 33554482, "[%{ptr}] [IPv%u] Send MC2UC detection status feedback: probeBurstID=%u, mc2ucStatus=%d, packetCount=%d\n", cf, v10, a2, a3, a4);
  }

  if (a3 >= 3)
  {
    APSLogErrorAt();
    v12 = 4294960559;
    *(v20 + 6) = -6737;
  }

  else
  {
    CFRetain(cf);
    v11 = cf[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___AirPlayReceiverSessionUpdateMC2UCStatus_block_invoke;
    block[3] = &unk_278C60CA0;
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = v10;
    block[4] = &v19;
    block[5] = cf;
    dispatch_async(v11, block);
    v12 = *(v20 + 6);
  }

  _Block_object_dispose(&v19, 8);
  return v12;
}

uint64_t __APReceiverSBufConsumerStart_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v3)
  {
    result = v3(v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void _PerformPeriodTasks(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = v2;
  v4 = *(a1 + 500);
  if (v4 == *(a1 + 504))
  {
    v5 = v2 - *(a1 + 512);
    if (v5 >= 60 * UpTicksPerSecond())
    {
      v6 = 2;
    }

    else
    {
      if (v5 < 10 * UpTicksPerSecond())
      {
LABEL_10:
        if (v3 - *(a1 + 528) > *(a1 + 544))
        {
          v7 = v5 / UpTicksPerSecond();
          if (gLogCategory_AirPlayReceiverCore <= 40 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _PerformPeriodTasks(void *)", 33554472, "### [%{ptr}] Idle for %llu seconds\n", a1, v7);
          }

          *(a1 + 528) = v3;
          if (IsAppleInternalBuild())
          {
            v8 = CFStringCreateF(0, "AirPlay Receiver Session [%{ptr}] has idled for %llu seconds.", a1, v7);
            AirPlayReceiverServerPlatformControl(*(a1 + 24), @"triggerStackShot", v8, 0);
            if (v8)
            {
              CFRelease(v8);
            }
          }
        }

        if (v5 > *(a1 + 520))
        {
          if (gLogCategory_AirPlayReceiverCore <= 90 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _PerformPeriodTasks(void *)", 33554522, "[%{ptr}] Idle timeout after %d seconds with no activity.\n", a1, *(a1 + 552));
          }

          _AirPlayReceiverSession_Terminate(a1);
        }

        return;
      }

      v6 = 1;
    }

    _ReportSessionStallIfNeeded(a1, v6);
    goto LABEL_10;
  }

  *(a1 + 504) = v4;
  *(a1 + 512) = v2;
  *(a1 + 528) = v2;

  _ReportSessionStallIfNeeded(a1, 0);
}

void _HandleEventConnectionInvalidated(int a1, NSObject **cf)
{
  if (cf)
  {
    CFRetain(cf);
    v4 = cf[2];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = ___HandleEventConnectionInvalidated_block_invoke;
    v5[3] = &__block_descriptor_tmp_416;
    v5[4] = cf;
    v6 = a1;
    dispatch_async(v4, v5);
    CFRelease(cf);
  }

  else if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleEventConnectionInvalidated(OSStatus, void *)", 33554482, "### Event connection context is invalid\n");
  }
}

uint64_t AirPlayReceiverSessionFlushAudio(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, _OWORD *a5)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  v5 = *(a1 + 576);
  if (!v5)
  {
    APSLogErrorAt();
    return 4294960578;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    v8 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    return v8;
  }

  v7 = *(v5 + 40);
  v11[0] = *a3;
  *(v11 + 12) = *(a3 + 12);
  v10[0] = *a5;
  *(v10 + 12) = *(a5 + 12);
  v8 = v6(v7, a2, v11, a4, v10);
  if (v8)
  {
    goto LABEL_7;
  }

  return v8;
}

uint64_t _AddVolumeOrMuteRequest(uint64_t a1, void *value)
{
  if (!value)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  Mutable = *(a1 + 704);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    *(a1 + 704) = Mutable;
    if (!Mutable)
    {
      APSLogErrorAt();
      return 4294960568;
    }
  }

  CFArrayAppendValue(Mutable, value);
  if (gLogCategory_AirPlayReceiverCore > 50)
  {
    return 0;
  }

  if (gLogCategory_AirPlayReceiverCore != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _AddVolumeOrMuteRequest(AirPlayReceiverSessionRef, CFTypeRef)", 33554482, "[%{ptr}] <APVolEntry> Added entry: %@\n", a1, value);
    return 0;
  }

  return result;
}

uint64_t AirPlayReceiverSessionAddMuteRequest(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = MEMORY[0x277CBED28];
  if (!a2)
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = _AddVolumeOrMuteRequest(a1, *v4);
  if (v5)
  {
    APSLogErrorAt();
  }

  else
  {
    *(a1 + 716) = v2;
  }

  return v5;
}

uint64_t __AirPlayReceiverSessionRemoveVolumeRequest_block_invoke(uint64_t a1, CFTypeRef cf)
{
  valuePtr = 0.0;
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  CFNumberGetValue(cf, kCFNumberFloatType, &valuePtr);
  if (APSVolumeSliderValuesAreNoticeablyDifferent())
  {
    return 0;
  }

  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionRemoveVolumeRequest(AirPlayReceiverSessionRef, Float32)_block_invoke", 33554482, "[%{ptr}] <APVolEntry> Volume entry found in session's volume array. VolumeEntryInQ: %f. inComingVolume: %f\n", *(a1 + 32), valuePtr, *(a1 + 40));
  }

  return 1;
}

uint64_t _RemoveVolumeOrMuteRequest(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 704);
  if (!v3)
  {
    return 4294960569;
  }

  Count = CFArrayGetCount(v3);
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _RemoveVolumeOrMuteRequest(AirPlayReceiverSessionRef, VolumeOrMuteMatcher)", 33554482, "[%{ptr}] <APVolEntry> Number of entries in session's volume array: %d\n", a1, Count);
  }

  if (Count < 1)
  {
    return 4294960569;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 704), v6);
    if ((*(a2 + 16))(a2, ValueAtIndex))
    {
      break;
    }

    if (Count == ++v6)
    {
      return 4294960569;
    }
  }

  CFArrayRemoveValueAtIndex(*(a1 + 704), v6);
  return 0;
}

uint64_t __AirPlayReceiverSessionRemoveMuteRequest_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFBooleanGetTypeID())
  {
    return 0;
  }

  v5 = *MEMORY[0x277CBED28];
  if (*(a1 + 40) != (*MEMORY[0x277CBED28] == cf))
  {
    return 0;
  }

  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    v6 = "no";
    if (v5 == cf)
    {
      v6 = "yes";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionRemoveMuteRequest(AirPlayReceiverSessionRef, Boolean)_block_invoke", 33554482, "[%{ptr}] <APVolEntry> Mute entry %s found in session's volume array.\n", *(a1 + 32), v6);
  }

  return 1;
}

void AirPlayReceiverSessionHandleVolumeUpdate(uint64_t a1, uint64_t a2)
{
  CFDictionaryGetDouble();
  v4 = v3;
  Int64 = CFDictionaryGetInt64();
  v6 = Int64 != 0;
  v7 = CFDictionaryGetInt64();
  if (*(a1 + 441))
  {
    return;
  }

  v8 = v4;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 0x40000000;
  if (v7)
  {
    v22 = __AirPlayReceiverSessionRemoveVolumeRequest_block_invoke;
    v23 = &__block_descriptor_tmp_7046;
    v25 = v8;
  }

  else
  {
    v22 = __AirPlayReceiverSessionRemoveMuteRequest_block_invoke;
    v23 = &__block_descriptor_tmp_236;
    LOBYTE(v25) = Int64 != 0;
  }

  v24 = a1;
  if (!_RemoveVolumeOrMuteRequest(a1, v21))
  {
    return;
  }

  if (APSVolumeSliderValuesAreNoticeablyDifferent() || *(a1 + 716) != v6)
  {
    Int64Ranged = CFObjectGetInt64Ranged();
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      v12 = "Y";
      if (*(a1 + 716))
      {
        v13 = "Y";
      }

      else
      {
        v13 = "N";
      }

      if (!Int64)
      {
        v12 = "N";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void AirPlayReceiverSessionHandleVolumeUpdate(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "Session [%{ptr}]. Old Volume: %f. New Volume: %f. Old Mute: %s. isMuted: %s\n", a1, *(a1 + 712), v8, v13, v12);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      return;
    }

    v15 = Mutable;
    CFDictionarySetDouble();
    if (*(a1 + 754))
    {
      v16 = MEMORY[0x277CBED28];
      if (!Int64)
      {
        v16 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v15, @"isMuted", *v16);
    }

    if (Int64Ranged > 0x36193D)
    {
      if (!AirPlayReceiverSessionSendMediaRemoteCommand(a1, -1, 1685482595, v15))
      {
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          v17 = "unmuted";
          if (Int64)
          {
            v17 = "muted";
          }

          LogPrintF(&gLogCategory_AirPlayReceiverCore, "void AirPlayReceiverSessionHandleVolumeUpdate(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] MediaRemote volume change to %f/%s sent\n", a1, v8, v17);
        }

        goto LABEL_44;
      }
    }

    else if (!AirPlayReceiverServerSendDACPCommands(1685482595, 1, v15))
    {
      if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverCore, "void AirPlayReceiverSessionHandleVolumeUpdate(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, "DACP volume changed sent\n", v18, v19, v20);
      }

LABEL_44:
      *(a1 + 712) = v8;
      *(a1 + 716) = v6;
LABEL_45:
      CFRelease(v15);
      return;
    }

    APSLogErrorAt();
    goto LABEL_45;
  }

  if (gLogCategory_AirPlayReceiverCore > 50)
  {
    return;
  }

  if (gLogCategory_AirPlayReceiverCore == -1)
  {
    if (!_LogCategory_Initialize())
    {
      return;
    }

    v6 = *(a1 + 716);
  }

  v9 = "Y";
  if (v6)
  {
    v10 = "Y";
  }

  else
  {
    v10 = "N";
  }

  if (!Int64)
  {
    v9 = "N";
  }

  LogPrintF(&gLogCategory_AirPlayReceiverCore, "void AirPlayReceiverSessionHandleVolumeUpdate(AirPlayReceiverSessionRef, CFDictionaryRef)", 33554482, " [%{ptr}] Volume/mute level unchanged. Not sending notification to sender. Old Volume: %f. New Volume: %f. Old Mute: %s. isMuted: %s\n", a1, *(a1 + 712), v8, v10, v9);
}

uint64_t APReceiverRequestProcessorCopyProperty_7067(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 0;
  }

  return v6(a1, a2, a3);
}

uint64_t APNetworkClockNTPClientLegacyCreate(uint64_t a1, int a2, int a3, _OWORD *a4, uint64_t a5, CFTypeRef *a6)
{
  v7 = a5;
  APSNetworkClockGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v26 = v10;
LABEL_57:
    APSLogErrorAt();
    return v26;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = 0;
  v12 = FigSimpleMutexCreate();
  *DerivedStorage = v12;
  if (!v12)
  {
    APSLogErrorAt();
    return 4294895326;
  }

  pthread_once(&gAirTunesRegisterClassOnce, _AirTunesClock_RegisterClass);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt();
    v26 = 4294960568;
    goto LABEL_57;
  }

  v14 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  *(Instance + 32) = 0;
  *(Instance + 40) = 0;
  *(Instance + 48) = 0;
  *(Instance + 56) = 0;
  v15 = UpTicksPerSecond();
  *(v14 + 64) = v15;
  *(v14 + 72) = 0xFFFFFFFFFFFFFFFFLL / v15;
  *(v14 + 80) = 0;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0;
  *(v14 + 128) = 1;
  v16 = pthread_mutex_init((v14 + 152), 0);
  if (v16)
  {
    v26 = v16;
LABEL_45:
    APSLogErrorAt();
    CFRelease(v14);
    goto LABEL_57;
  }

  *(v14 + 216) = v14 + 152;
  *(v14 + 224) = 1;
  v17 = pthread_create((v14 + 136), 0, _AirTunesClock_Thread, v14);
  if (v17)
  {
    v26 = v17;
    goto LABEL_45;
  }

  *(v14 + 144) = v14 + 136;
  if (gLogCategory_AirTunesClock <= 10 && (gLogCategory_AirTunesClock != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirTunesClock, "OSStatus AirTunesClock_Create(AirTunesClockRef *)", 33554442, "frequency %llu scale %llu actual %llu\n", *(v14 + 64), *(v14 + 72), 0xFFFFFFFFFFFFFFFFLL / *(v14 + 72));
  }

  *(DerivedStorage + 16) = v14;
  if (gLogCategory_APReceiverNTPClient <= 30 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APReceiverNTPClientCreate(Boolean, Boolean, sockaddr_ip, int, AirTunesClockRef, APReceiverNTPClientRef *)", 33554462, "Creating APReceiverNTPClient\n");
  }

  if (gAPReceiverNTPClientInitOnce != -1)
  {
    dispatch_once_f(&gAPReceiverNTPClientInitOnce, 0, _APReceiverNTPClientGetTypeID);
  }

  memset(v32, 0, 28);
  v18 = _CFRuntimeCreateInstance();
  v19 = v18;
  if (!v18)
  {
    APSLogErrorAt();
    v26 = 4294960568;
    goto LABEL_51;
  }

  v18[19] = 0u;
  v18[20] = 0u;
  v18[17] = 0u;
  v18[18] = 0u;
  v18[15] = 0u;
  v18[16] = 0u;
  v18[13] = 0u;
  v18[14] = 0u;
  v18[11] = 0u;
  v18[12] = 0u;
  v18[9] = 0u;
  v18[10] = 0u;
  v18[7] = 0u;
  v18[8] = 0u;
  v18[5] = 0u;
  v18[6] = 0u;
  v18[3] = 0u;
  v18[4] = 0u;
  v18[1] = 0u;
  v18[2] = 0u;
  v20 = CFRetain(v14);
  *(v19 + 2) = v20;
  if (v20)
  {
    v21 = CFGetTypeID(v20);
    pthread_once(&gAirTunesRegisterClassOnce, _AirTunesClock_RegisterClass);
    if (v21 != gAirTunesClockTypeID)
    {
      v26 = 4294895155;
      goto LABEL_50;
    }
  }

  SockAddrCopy();
  v22 = ServerSocketOpen();
  if (v22)
  {
    v26 = v22;
LABEL_50:
    APSLogErrorAt();
LABEL_51:
    if (gLogCategory_APReceiverNTPClient <= 60 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APReceiverNTPClientCreate(Boolean, Boolean, sockaddr_ip, int, AirTunesClockRef, APReceiverNTPClientRef *)", 33554492, "### NTP client setup failed: %#m\n", v26);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    goto LABEL_57;
  }

  if (a3)
  {
    SocketSetP2P();
  }

  SocketSetPacketTimestamps();
  if (!a2)
  {
    SocketSetQoS();
  }

  *(v19 + 8) = v7;
  SockAddrSetPort();
  *(v19 + 36) = v32[0];
  v19[3] = *&v32[0].sa_data[10];
  Size = SockAddrGetSize();
  *(v19 + 16) = Size;
  if (!connect(*(v19 + 6), v32, Size))
  {
    goto LABEL_28;
  }

  v24 = *__error();
  if (!v24)
  {
    goto LABEL_33;
  }

  if (*__error())
  {
    LOBYTE(v24) = 0;
  }

  else
  {
LABEL_28:
    *&v29.sa_len = 0;
    *&v29.sa_data[6] = 0;
    v31 = 0;
    v30 = 0;
    v28 = 28;
    getsockname(*(v19 + 6), &v29, &v28);
    if (gLogCategory_APReceiverNTPClient <= 50 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APReceiverNTPClientCreate(Boolean, Boolean, sockaddr_ip, int, AirTunesClockRef, APReceiverNTPClientRef *)", 33554482, "Timing connect UDP to %##a from %##a\n", v32, &v29);
    }

    LOBYTE(v24) = 1;
  }

LABEL_33:
  *(v19 + 68) = v24;
  v25 = OpenSelfConnectedLoopbackSocket();
  if (v25)
  {
    v26 = v25;
    goto LABEL_50;
  }

  if (gLogCategory_APReceiverNTPClient <= 30 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APReceiverNTPClientCreate(Boolean, Boolean, sockaddr_ip, int, AirTunesClockRef, APReceiverNTPClientRef *)", 33554462, "NTP client set up on port %d to port %d\n", *(v19 + 7), *(v19 + 8));
  }

  v26 = 0;
  *(DerivedStorage + 8) = v19;
  *a6 = 0;
  return v26;
}

uint64_t ntpClientLegacy_StopForClient(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24))
  {
    *(DerivedStorage + 24) = 0;
    v3 = APReceiverNTPClientStop(*(DerivedStorage + 8));
    if (v3)
    {
      v4 = v3;
      APSLogErrorAt();
      goto LABEL_8;
    }

    if (gLogCategory_APNetworkClockNTPClientLegacy <= 50 && (gLogCategory_APNetworkClockNTPClientLegacy != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APNetworkClockNTPClientLegacy, "OSStatus ntpClientLegacy_StopForClient(APSNetworkClockRef, void *)", 33554482, "Stopped APSNetworkClock NTPClient Legacy %{ptr}\n", a1);
    }
  }

  v4 = 0;
LABEL_8:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t ntpClientLegacy_StartForClient(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24))
  {
LABEL_78:
    v9 = 0;
    goto LABEL_66;
  }

  v2 = *(DerivedStorage + 8);
  v3 = *(v2 + 24);
  v22.tv_sec = 0;
  *&v22.tv_usec = 0;
  if (!*(v2 + 88))
  {
    v19 = 0;
    v4 = 0;
    v17 = 0;
    v18 = 0;
    v5 = 0;
    v6 = 0;
    memset(&v23, 0, sizeof(v23));
    while (2)
    {
      v20 = v6;
      v21 = v4;
      v7 = 64;
      while (1)
      {
        v8 = ntpClient_sendRequest(v2);
        if (!v8)
        {
          break;
        }

        v9 = v8;
        if (gLogCategory_APReceiverNTPClient <= 60 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APReceiverNTPClientNegotiate(APReceiverNTPClientRef)", 33554492, "### Time sync send error: %#m\n", v9);
        }

        usleep(0x186A0u);
        if (v9 != v5)
        {
          v5 = v9;
          if (gLogCategory_APReceiverNTPClient <= 50)
          {
            if (gLogCategory_APReceiverNTPClient != -1 || (v5 = v9, _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APReceiverNTPClientNegotiate(APReceiverNTPClientRef)", 33554482, "Time negotiate send error: %d\n", v9);
              v5 = v9;
            }
          }
        }

        if (!--v7)
        {
          if (gLogCategory_APReceiverNTPClient <= 90 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APReceiverNTPClientNegotiate(APReceiverNTPClientRef)", 33554522, "Too many time negotiate send failures: %d\n", v9);
          }

          goto LABEL_65;
        }
      }

      while (1)
      {
        if (__darwin_check_fd_set_overflow(v3, &v23, 0))
        {
          v23.fds_bits[v3 >> 5] |= 1 << v3;
        }

        v22.tv_sec = 0;
        v22.tv_usec = 500000;
        v10 = select(v3 + 1, &v23, 0, 0, &v22);
        if (v10 > 0)
        {
          break;
        }

        if (v10)
        {
          if (*__error())
          {
            v11 = *__error();
            if (!v11)
            {
              break;
            }
          }

          else
          {
            v11 = 4294960596;
          }
        }

        else
        {
          v11 = 4294960574;
        }

        if (gLogCategory_APReceiverNTPClient <= 60 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APReceiverNTPClientNegotiate(APReceiverNTPClientRef)", 33554492, "### Time sync select() error: %#m\n", v11);
        }

        if (v11 != 4)
        {
          ++v19;
          v4 = (v21 + 1);
          if (v11 == v20)
          {
            LODWORD(v11) = v20;
          }

          else if (gLogCategory_APReceiverNTPClient <= 50 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APReceiverNTPClientNegotiate(APReceiverNTPClientRef)", 33554482, "Time negotiate receive error: %d\n", v11);
          }

          goto LABEL_55;
        }
      }

      v12 = ntpClient_receiveResponse(v2, v3);
      if (v12)
      {
        v9 = v12;
        if (v12 == 61)
        {
          goto LABEL_65;
        }

        if (gLogCategory_APReceiverNTPClient <= 60 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APReceiverNTPClientNegotiate(APReceiverNTPClientRef)", 33554492, "### Time sync receive error: %#m\n", v9);
        }

        v13 = v20;
        if (v9 != v20)
        {
          if (gLogCategory_APReceiverNTPClient <= 50 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APReceiverNTPClientNegotiate(APReceiverNTPClientRef)", 33554482, "Time negotiate receive error: %d\n", v9);
          }

          v13 = v9;
        }

        ++v18;
        v4 = (v21 + 1);
        if (v9 == -6730)
        {
          LODWORD(v11) = v13;
          DrainUDPSocket();
        }

        else
        {
          LODWORD(v11) = v13;
        }

        goto LABEL_55;
      }

      v4 = v21;
      if (v17 <= 1)
      {
        ++v17;
        LODWORD(v11) = v20;
LABEL_55:
        v6 = v11;
        if (v4 < 64)
        {
          continue;
        }

        if (gLogCategory_APReceiverNTPClient > 90)
        {
          v9 = 4294960574;
        }

        else
        {
          if (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APReceiverNTPClientNegotiate(APReceiverNTPClientRef)", 33554522, "Too many time negotiate failures: G=%d B=%d R=%d T=%d\n", v17, v4, v18, v19);
          }

          v9 = 4294960574;
        }

        goto LABEL_65;
      }

      break;
    }

    v15 = pthread_create((v2 + 80), 0, ntpClient_thread, v2);
    if (v15)
    {
      v9 = v15;
      APSLogErrorAt();
      goto LABEL_65;
    }

    *(v2 + 88) = v2 + 80;
    if (gLogCategory_APReceiverNTPClient <= 30 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APReceiverNTPClientNegotiate(APReceiverNTPClientRef)", 33554462, "NTP client started\n");
    }

    *(DerivedStorage + 24) = 1;
    if (gLogCategory_APNetworkClockNTPClientLegacy <= 50 && (gLogCategory_APNetworkClockNTPClientLegacy != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APNetworkClockNTPClientLegacy, "OSStatus ntpClientLegacy_StartForClient(APSNetworkClockRef, void *)", 33554482, "Started APSNetworkClock NTPClient Legacy %{ptr}\n", a1);
    }

    goto LABEL_78;
  }

  APSLogErrorAt();
  v9 = 4294895154;
LABEL_65:
  APSLogErrorAt();
LABEL_66:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t ntpClientLegacy_ConvertNetworkTimeToUpTicks(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24))
  {
    *(&v7 + 1) = *(a2 + 16);
    *&v7 = *(a2 + 8);
    v6 = v7 >> 32;
    v8 = *(DerivedStorage + 16);
    v13 = 0;
    v14 = 0;
    AirTunesClock_GetSynchronizedTime(v8, &v13);
    *(&v7 + 1) = v13;
    *&v7 = v14;
    v9 = mach_absolute_time();
    if ((v7 >> 32) <= v6)
    {
      v10 = NTPtoUpTicks() + v9;
    }

    else
    {
      v10 = v9 - NTPtoUpTicks();
    }

    v11 = 0;
    *a3 = v10;
  }

  else
  {
    APSLogErrorAt();
    v11 = 4294895323;
  }

  FigSimpleMutexUnlock();
  return v11;
}

uint64_t ntpClientLegacy_ConvertUpTicksToNetworkTime(uint64_t a1, unint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24))
  {
    v10 = 0;
    v11 = 0;
    AirTunesClock_GetSynchronizedTimeNearUpTicks(*(DerivedStorage + 16), &v10, a2);
    v6 = 0;
    *(&v8 + 1) = v10;
    *&v8 = v11;
    v7 = v8 >> 32;
    *a3 = 0;
    a3[1] = v7 << 32;
    a3[2] = HIDWORD(v7);
  }

  else
  {
    APSLogErrorAt();
    v6 = 4294895323;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t ntpClientLegacy_GetSynchronizedNetworkTime(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24))
  {
    v8 = 0;
    v9 = 0;
    AirTunesClock_GetSynchronizedTime(*(DerivedStorage + 16), &v8);
    v4 = 0;
    *(&v6 + 1) = v8;
    *&v6 = v9;
    v5 = v6 >> 32;
    *a2 = 0;
    a2[1] = v5 << 32;
    a2[2] = HIDWORD(v5);
  }

  else
  {
    APSLogErrorAt();
    v4 = 4294895323;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t ntpClientLegacy_CopyProperty(int a1, CFTypeRef cf1, uint64_t a3, CFTypeRef *a4)
{
  if (CFEqual(cf1, *MEMORY[0x277CEA260]))
  {
    v6 = MEMORY[0x277CEA268];
  }

  else
  {
    if (!CFEqual(cf1, *MEMORY[0x277CEA248]))
    {
      v7 = 4294954509;
      APSLogErrorAt();
      return v7;
    }

    v6 = MEMORY[0x277CBED28];
  }

  v7 = 0;
  *a4 = CFRetain(*v6);
  return v7;
}

__CFString *ntpClientLegacy_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APNTPClientLegacy %p>", a1);
  return Mutable;
}

uint64_t ntpClientLegacy_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[1];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[1] = 0;
  }

  v3 = DerivedStorage[2];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[2] = 0;
  }

  result = FigSimpleMutexDestroy();
  *DerivedStorage = 0;
  return result;
}

uint64_t APPairingServicesCoreUtilsCreate(uint64_t a1, int a2, CFTypeRef *a3)
{
  if (APPairingServicesGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APPairingServicesGetClassID_sRegisterOnce, &APPairingServicesGetClassID_sClassID, pairingServices_registerBaseClass);
  }

  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    APSLogErrorAt();
    return v5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = a2;
  if (gLogCategory_APPairingServicesCoreUtils <= 50)
  {
    if (gLogCategory_APPairingServicesCoreUtils != -1)
    {
LABEL_6:
      v7 = "public";
      if (!a2)
      {
        v7 = "private";
      }

      LogPrintF(&gLogCategory_APPairingServicesCoreUtils, "OSStatus APPairingServicesCoreUtilsCreate(CFAllocatorRef, Boolean, APPairingServicesRef *)", 33554482, "[%{ptr}] APPairingServicesCoreUtils (%s) created.\n", 0, v7);
      goto LABEL_10;
    }

    v8 = DerivedStorage;
    if (_LogCategory_Initialize())
    {
      a2 = *(v8 + 40);
      goto LABEL_6;
    }
  }

LABEL_10:
  *a3 = 0;
  return v5;
}

uint64_t coreUtilsPairing_Reset(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  coreUtilsPairing_resetInternal(a1);
  return 0;
}

void coreUtilsPairing_resetInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APPairingServicesCoreUtils <= 50 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APPairingServicesCoreUtils, "void coreUtilsPairing_resetInternal(APPairingServicesRef)", 33554482, "[%{ptr}] Resetting: pair-setup session [%{ptr}], pair-verify session [%{ptr}].\n", a1, *DerivedStorage, DerivedStorage[1]);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[1] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[3] = 0;
  }

  v6 = DerivedStorage[4];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[4] = 0;
  }
}

uint64_t coreUtilsPairing_DeriveKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    v7 = PairingSessionDeriveKey();
    if (v7)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895104;
  }

  return v7;
}

uint64_t coreUtilsPairing_HandleVerify(uint64_t a1, CFDataRef theData, CFDataRef *a3, _BYTE *a4)
{
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v9 = DerivedStorage;
    *a3 = 0;
    v10 = (DerivedStorage + 8);
    if (*(DerivedStorage + 8))
    {
LABEL_29:
      v16 = PairingSessionExchange();
      if (!v16)
      {
        if (*a4 && gLogCategory_APPairingServicesCoreUtils <= 50 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APPairingServicesCoreUtils, "OSStatus coreUtilsPairing_HandleVerify(APPairingServicesRef, CFDataRef, CFDataRef *, Boolean *)", 33554482, "[%{ptr}] Pair-verify done on pair-verify session [%{ptr}].\n", a1, *v10);
        }

        return 0;
      }

      v17 = v16;
      goto LABEL_40;
    }

    v11 = PairingSessionCreate();
    if (v11)
    {
      v17 = v11;
LABEL_40:
      APSLogErrorAt();
      goto LABEL_41;
    }

    if (gLogCategory_APPairingServicesCoreUtils <= 40 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APPairingServicesCoreUtils, "OSStatus coreUtilsPairing_HandleVerify(APPairingServicesRef, CFDataRef, CFDataRef *, Boolean *)", 33554472, "[%{ptr}] Created pair-verify session [%{ptr}].\n", a1, *v10);
    }

    if (*(v9 + 41))
    {
      PairingSessionSetSignBytesHandler_b();
      PairingSessionSetVerifySignatureHandler_b();
      v12 = 12;
    }

    else
    {
      if (!*(v9 + 42))
      {
        v13 = 0;
        if (!*(v9 + 43))
        {
LABEL_20:
          v14 = *(v9 + 48);
          if (v14)
          {
            if (gLogCategory_APPairingServicesCoreUtils <= 50)
            {
              if (gLogCategory_APPairingServicesCoreUtils != -1 || (v15 = _LogCategory_Initialize(), v14 = *(v9 + 48), v15))
              {
                LogPrintF(&gLogCategory_APPairingServicesCoreUtils, "OSStatus coreUtilsPairing_HandleVerify(APPairingServicesRef, CFDataRef, CFDataRef *, Boolean *)", 50, "[%{ptr}] Pair-verify session [%{ptr}] PairingSessionSetACL %@.\n", a1, *(v9 + 8), v14);
              }
            }

            PairingSessionSetACL();
          }

          if ((v13 & 1) == 0)
          {
            PairingSessionSetKeychainInfo();
          }

          PairingSessionSetLogging();
          goto LABEL_29;
        }

        v12 = 12;
LABEL_13:
        PairingSessionSetFlags();
        if (gLogCategory_APPairingServicesCoreUtils <= 40 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APPairingServicesCoreUtils, "OSStatus coreUtilsPairing_HandleVerify(APPairingServicesRef, CFDataRef, CFDataRef *, Boolean *)", 33554472, "[%{ptr}] Pair-verify session [%{ptr}] PairingSessionSetFlags %u.\n", a1, *v10, v12);
        }

        goto LABEL_20;
      }

      v12 = 67108868;
    }

    v13 = 1;
    goto LABEL_13;
  }

  APSLogErrorAt();
  v17 = 4294895105;
LABEL_41:
  if (gLogCategory_APPairingServicesCoreUtils <= 90 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APPairingServicesCoreUtils, "OSStatus coreUtilsPairing_HandleVerify(APPairingServicesRef, CFDataRef, CFDataRef *, Boolean *)", 33554522, "[%{ptr}] Pair-verify failed with error %#m.\n", a1, v17);
  }

  return v17;
}

uint64_t coreUtilsPairing_HandleSetup(uint64_t a1, const __CFString *a2, int a3, CFDataRef theData, CFDataRef *a5, _BYTE *a6)
{
  v34 = *MEMORY[0x277D85DE8];
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *buffer = 0u;
  v27 = 0u;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = DerivedStorage;
  if (!a5)
  {
    v24 = 4294895105;
LABEL_52:
    APSLogErrorAt();
    goto LABEL_53;
  }

  *a5 = 0;
  if (!*DerivedStorage)
  {
    if (*(DerivedStorage + 43))
    {
      v14 = 12;
    }

    else
    {
      v14 = 0;
    }

    if (a3)
    {
      v15 = 16;
    }

    else
    {
      v15 = 134217744;
    }

    if (*(DerivedStorage + 44))
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 | v14;
    if (*(DerivedStorage + 40))
    {
      v18 = v17 | 0x8000000;
    }

    else
    {
      v18 = v17;
    }

    v19 = PairingSessionCreate();
    if (v19)
    {
      v24 = v19;
      goto LABEL_52;
    }

    if (gLogCategory_APPairingServicesCoreUtils <= 40 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APPairingServicesCoreUtils, "OSStatus coreUtilsPairing_HandleSetup(APPairingServicesRef, CFStringRef, APSecurityMode, CFDataRef, CFDataRef *, Boolean *)", 33554472, "[%{ptr}] Created pair-setup session [%{ptr}].\n", a1, *v13);
    }

    if (v18)
    {
      PairingSessionSetFlags();
      if (gLogCategory_APPairingServicesCoreUtils <= 40 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APPairingServicesCoreUtils, "OSStatus coreUtilsPairing_HandleSetup(APPairingServicesRef, CFStringRef, APSecurityMode, CFDataRef, CFDataRef *, Boolean *)", 33554472, "[%{ptr}] PairingSessionSetFlags %u on pair-setup session [%{ptr}].\n", a1, v18, *v13);
      }
    }

    v20 = v13[6];
    if (v20)
    {
      if (gLogCategory_APPairingServicesCoreUtils <= 50)
      {
        if (gLogCategory_APPairingServicesCoreUtils != -1 || (v21 = _LogCategory_Initialize(), v20 = v13[6], v21))
        {
          LogPrintF(&gLogCategory_APPairingServicesCoreUtils, "OSStatus coreUtilsPairing_HandleSetup(APPairingServicesRef, CFStringRef, APSecurityMode, CFDataRef, CFDataRef *, Boolean *)", 50, "[%{ptr}] PairingSessionSetACL %@ on pair-setup session [%{ptr}].\n", a1, v20, *v13);
        }
      }

      PairingSessionSetACL();
    }

    PairingSessionSetKeychainInfo();
    PairingSessionSetLogging();
  }

  CFStringGetCString(a2, buffer, 128, 0x8000100u);
  if (!buffer[0])
  {
    v24 = 4294895105;
    goto LABEL_52;
  }

  if (!PairingSessionSetSetupCode())
  {
    v22 = PairingSessionExchange();
    if (!v22)
    {
      if (*a6)
      {
        if (*(v13 + 44))
        {
          v23 = *v13;
          v13[1] = *v13;
          if (v23)
          {
            CFRetain(v23);
          }
        }

        if (gLogCategory_APPairingServicesCoreUtils <= 50 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APPairingServicesCoreUtils, "OSStatus coreUtilsPairing_HandleSetup(APPairingServicesRef, CFStringRef, APSecurityMode, CFDataRef, CFDataRef *, Boolean *)", 33554482, "[%{ptr}] Pair-setup done on pair-setup session [%{ptr}].\n", a1, *v13);
        }

        if (*v13)
        {
          CFRelease(*v13);
          *v13 = 0;
        }
      }

      return 0;
    }

    v24 = v22;
    goto LABEL_52;
  }

  APSLogErrorAt();
  v24 = 4294895102;
LABEL_53:
  if (gLogCategory_APPairingServicesCoreUtils <= 90 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APPairingServicesCoreUtils, "OSStatus coreUtilsPairing_HandleSetup(APPairingServicesRef, CFStringRef, APSecurityMode, CFDataRef, CFDataRef *, Boolean *)", 33554522, "[%{ptr}] Pair-setup on [%{ptr}] failed with error %#m.\n", a1, *v13, v24);
  }

  return v24;
}

uint64_t coreUtilsPairing_SetProperty(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v15 = 4294895105;
LABEL_21:
    APSLogErrorAt();
    return v15;
  }

  v7 = DerivedStorage;
  if (!CFEqual(a2, @"pairingParams"))
  {
    return 4294954512;
  }

  if (!a3)
  {
    v15 = 4294895105;
    goto LABEL_21;
  }

  v8 = CFDictionaryGetInt64() != 0;
  v9 = CFDictionaryGetInt64() != 0;
  v10 = CFDictionaryGetInt64() != 0;
  v11 = CFDictionaryGetInt64() != 0;
  Value = CFDictionaryGetValue(a3, @"ACL");
  if (*(v7 + 41) != v8 || *(v7 + 42) != v9 || *(v7 + 43) != v10 || *(v7 + 44) != v11 || (v13 = *(v7 + 48), v13 != Value) && (!v13 || !Value || !CFEqual(v13, Value)))
  {
    CMBaseObjectGetDerivedStorage();
    coreUtilsPairing_resetInternal(a1);
    *(v7 + 41) = v8;
    *(v7 + 42) = v9;
    *(v7 + 43) = v10;
    *(v7 + 44) = v11;
    v14 = *(v7 + 48);
    *(v7 + 48) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  return 0;
}

__CFString *coreUtilsPairing_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APPairingServicesCoreUtils '%@'>", *DerivedStorage);
  return Mutable;
}

void coreUtilsPairing_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  coreUtilsPairing_resetInternal(a1);
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  if (gLogCategory_APPairingServicesCoreUtils <= 50 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APPairingServicesCoreUtils, "void coreUtilsPairing_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] APPairingServicesCoreUtils finalized.\n", a1);
  }
}

uint64_t APPairingServicesCoreUtilsHandleAddPeer(uint64_t a1, const __CFData *a2, CFDataRef *a3, _BYTE *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = coreUtilsPairing_handleAdminRequest(a1, 10, (DerivedStorage + 16), a2, a3, a4);
  if (v9)
  {
    APSLogErrorAt();
  }

  return v9;
}

uint64_t coreUtilsPairing_handleAdminRequest(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFDataRef theData, CFDataRef *a5, _BYTE *a6)
{
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    APSLogErrorAt();
    return 4294895105;
  }

  *a5 = 0;
  if (!*a3)
  {
    v12 = PairingSessionCreate();
    if (v12)
    {
      v14 = v12;
      goto LABEL_18;
    }

    PairingSessionSetLogging();
  }

  v13 = PairingSessionExchange();
  if (v13)
  {
    v14 = v13;
LABEL_18:
    APSLogErrorAt();
    return v14;
  }

  if (*a6)
  {
    if (*a3)
    {
      CFRelease(*a3);
      *a3 = 0;
    }

    if (gLogCategory_APPairingServicesCoreUtils <= 50 && (gLogCategory_APPairingServicesCoreUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APPairingServicesCoreUtils, "OSStatus coreUtilsPairing_handleAdminRequest(APPairingServicesRef, PairingSessionType, PairingSessionRef *, CFDataRef, CFDataRef *, Boolean *)", 33554482, "[%{ptr}] Admin pairing operation (type %u) is done.\n", a1, a2);
    }
  }

  return 0;
}

uint64_t APPairingServicesCoreUtilsHandleRemovePeer(uint64_t a1, const __CFData *a2, CFDataRef *a3, _BYTE *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = coreUtilsPairing_handleAdminRequest(a1, 12, (DerivedStorage + 24), a2, a3, a4);
  if (v9)
  {
    APSLogErrorAt();
  }

  return v9;
}

uint64_t APPairingServicesCoreUtilsHandleListPeers(uint64_t a1, const __CFData *a2, CFDataRef *a3, _BYTE *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = coreUtilsPairing_handleAdminRequest(a1, 14, (DerivedStorage + 32), a2, a3, a4);
  if (v9)
  {
    APSLogErrorAt();
  }

  return v9;
}

uint64_t APPairingServicesLegacyCreate(uint64_t a1, CFTypeRef *a2)
{
  if (APPairingServicesGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APPairingServicesGetClassID_sRegisterOnce, &APPairingServicesGetClassID_sClassID, pairingServices_registerBaseClass);
  }

  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    APSLogErrorAt();
  }

  else
  {
    if (gLogCategory_APPairingServicesLegacy <= 50 && (gLogCategory_APPairingServicesLegacy != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APPairingServicesLegacy, "OSStatus APPairingServicesLegacyCreate(CFAllocatorRef, APPairingServicesRef *)", 33554482, "APPairingServicesLegacy created.\n");
    }

    *a2 = 0;
  }

  return v3;
}

uint64_t legacyPairing_Reset(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  return 0;
}

uint64_t legacyPairing_DeriveKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 8))
  {
    v7 = 4294895104;
    goto LABEL_7;
  }

  if (a6 != 16)
  {
    APSLogErrorAt();
    return 4294895105;
  }

  v7 = PCFdAVst();
  if (v7)
  {
LABEL_7:
    APSLogErrorAt();
  }

  return v7;
}

uint64_t legacyPairing_HandleVerify(uint64_t a1, CFDataRef theData, CFDataRef *a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    APSLogErrorAt();
    return 4294895105;
  }

  *a3 = 0;
  if (!*(DerivedStorage + 8) && gQblcfSzZBQsYCCV())
  {
    v8 = 4294895104;
    goto LABEL_10;
  }

  v7 = VBAEFt();
  if (v7)
  {
    v8 = v7;
LABEL_10:
    APSLogErrorAt();
    return v8;
  }

  return 0;
}

uint64_t legacyPairing_HandleSetup(uint64_t a1, uint64_t a2, int a3, CFDataRef theData, CFDataRef *a5, uint64_t a6)
{
  v15 = *MEMORY[0x277D85DE8];
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    APSLogErrorAt();
    return 4294895105;
  }

  *a5 = 0;
  if (*DerivedStorage)
  {
    if (a2)
    {
      goto LABEL_4;
    }

    return h4BvW7X();
  }

  if (gQblcfSzZBQsYCCV())
  {
    APSLogErrorAt();
    return 4294895104;
  }

  if (!a2)
  {
    return h4BvW7X();
  }

LABEL_4:
  v10 = GvMGlTNs();
  if (v10)
  {
    v13 = v10;
LABEL_19:
    APSLogErrorAt();
    return v13;
  }

  v11 = SrtySZG0();
  if (v11 == -6760 || v11 == 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = 4294895103;
  }

  if (v13)
  {
    goto LABEL_19;
  }

  return 0;
}

__CFString *legacyPairing_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APPairingServicesLegacy '%@'>", *DerivedStorage);
  return Mutable;
}

uint64_t legacyPairing_Finalize(uint64_t a1)
{
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = v4;
  if (*(v4 + 24))
  {
    v6 = *(v5 + 40);

    return v6(a1);
  }

  return result;
}

uint64_t APReceiverSessionManagerGetTypeID()
{
  if (APReceiverSessionManagerGetTypeID_once != -1)
  {
    dispatch_once(&APReceiverSessionManagerGetTypeID_once, &__block_literal_global_7471);
  }

  return APReceiverSessionManagerGetTypeID_typeID;
}

uint64_t __APReceiverSessionManagerGetTypeID_block_invoke()
{
  APReceiverSessionManagerGetTypeID_SessionManagerClass = 0;
  unk_28130A260 = "APReceiverSessionManager";
  qword_28130A268 = 0;
  unk_28130A270 = 0;
  qword_28130A278 = sessionManager_Finalize;
  unk_28130A280 = 0u;
  unk_28130A290 = 0u;
  result = _CFRuntimeRegisterClass();
  APReceiverSessionManagerGetTypeID_typeID = result;
  return result;
}

uint64_t sessionManager_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != -1)
  {
    notify_cancel(v2);
    *(a1 + 16) = -1;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 80) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 56) = 0;
  }

  result = pthread_mutex_destroy((a1 + 88));
  if (gLogCategory_APReceiverSessionManager <= 10)
  {
    if (gLogCategory_APReceiverSessionManager != -1)
    {
      return LogPrintF(&gLogCategory_APReceiverSessionManager, "void sessionManager_Finalize(CFTypeRef)", 33554442, "sessionManagerRef %{ptr} finalized\n", a1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APReceiverSessionManager, "void sessionManager_Finalize(CFTypeRef)", 33554442, "sessionManagerRef %{ptr} finalized\n", a1);
    }
  }

  return result;
}

void sessionManager_handleSenderSessionStateChangeNotification(int a1, CFTypeRef cf)
{
  CFRetain(cf);
  v3 = *(*(cf + 3) + 88);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __sessionManager_handleSenderSessionStateChangeNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_52_7480;
  block[4] = cf;
  dispatch_async(v3, block);
}

void __sessionManager_handleSenderSessionStateChangeNotification_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = APReceiverSystemInfoCopyProperty(*(*(*(a1 + 32) + 24) + 160), a2, @"LocalRouteInfo", 0, 0);
  v4 = *(a1 + 32);
  v5 = *(v4 + 41);
  v6 = *(v4 + 44);
  if (v3)
  {
    v7 = CFDictionaryGetInt64() != 0;
    Int64 = CFDictionaryGetInt64();
  }

  else
  {
    v7 = 0;
    Int64 = 0;
  }

  if (*(v4 + 41) == v7 && *(v4 + 44) == Int64)
  {
    goto LABEL_36;
  }

  *(v4 + 41) = v7;
  *(v4 + 44) = Int64;
  if (gLogCategory_APReceiverSessionManager <= 50)
  {
    v9 = Int64;
    v10 = v7;
    if (gLogCategory_APReceiverSessionManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v10 = *(v4 + 41);
      v9 = *(v4 + 44);
    }

    if (v5)
    {
      v11 = "yes";
    }

    else
    {
      v11 = "no";
    }

    if (v10)
    {
      v12 = "yes";
    }

    else
    {
      v12 = "no";
    }

    LogPrintF(&gLogCategory_APReceiverSessionManager, "void sessionManager_handleSenderSessionStateChange(APReceiverSessionManagerRef, CFDictionaryRef)", 33554482, "Sender session state changed: non buddy sender active: %s -> %s, local route type: %llu -> %llu\n", v11, v12, v6, v9);
  }

LABEL_16:
  v13 = *(v4 + 32);
  if (v13 == 1)
  {
    if ((v7 & 1) == 0 && Int64 != 1)
    {
      goto LABEL_28;
    }

    if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSessionManager, "void sessionManager_handleSenderSessionStateChange(APReceiverSessionManagerRef, CFDictionaryRef)", 33554482, "Terminating all AirPlay sessions on sender session activation.\n");
    }

    CFObjectControlAsync();
    v13 = *(v4 + 32);
  }

  if ((v13 | 2) == 2 && (IsAppleTV() || APSMultiPrimariesEnabled()))
  {
    v14 = v7 == 0;
    goto LABEL_29;
  }

LABEL_28:
  v14 = 1;
LABEL_29:
  if (gLogCategory_APReceiverSessionManager <= 40 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
  {
    v15 = "yes";
    if (v14)
    {
      v15 = "no";
    }

    LogPrintF(&gLogCategory_APReceiverSessionManager, "void sessionManager_handleSenderSessionStateChange(APReceiverSessionManagerRef, CFDictionaryRef)", 33554472, "isSecondHopEligibleSenderSessionActive: %s\n", v15);
  }

  CFObjectSetProperty();
LABEL_36:
  if (v3)
  {
    CFRelease(v3);
  }

  v16 = *(a1 + 32);

  CFRelease(v16);
}

uint64_t cfArrayContainsValue(const __CFArray *a1, const void *a2)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt();
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5.length = Count;
  v5.location = 0;

  return CFArrayContainsValue(a1, v5, a2);
}

void APReceiverSessionManagerUpdateParentGroupInfo(void *a1)
{
  v2 = a1[7];
  if (v2 && (v3 = *(*(CMBaseObjectGetVTable() + 16) + 64)) != 0 && (v4 = v3(v2, @"parentGroupInfo", 0)) != 0 || (v5 = a1[6]) != 0 && (v6 = *(*(CMBaseObjectGetVTable() + 16) + 64)) != 0 && (v4 = v6(v5, @"parentGroupInfo", 0)) != 0)
  {
    v7 = v4;
    v8 = *(a1[3] + 160);
    Value = CFDictionaryGetValue(v4, @"groupUUID");
    v10 = CFDictionaryGetInt64() != 0;
    v11 = CFDictionaryGetInt64() != 0;
    v12 = CFDictionaryGetInt64() != 0;
    v13 = CFDictionaryGetValue(v7, @"uglServerInfo");
    v14 = *(v8 + 16);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __APReceiverSystemInfoSetParentGroupInfo_block_invoke;
    v20 = &__block_descriptor_59_e5_v8__0l;
    v21 = v8;
    v22 = Value;
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v23 = v13;
    dispatch_sync(v14, &v17);

    CFRelease(v7);
  }

  else
  {
    v15 = *(a1[3] + 160);
    v16 = *(v15 + 16);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __APReceiverSystemInfoResetParentGroupInfo_block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0l;
    v21 = v15;
    dispatch_sync(v16, &v17);
  }
}

void APReceiverSessionManagerSetAsMainAirPlaySession(uint64_t a1, const void *a2)
{
  if (a2 && cfArrayContainsValue(*(a1 + 64), a2))
  {
    v4 = *(a1 + 56);
    if (v4 == a2)
    {
      return;
    }

    if (v4)
    {
      if (CFEqual(a2, v4))
      {
        return;
      }

      v5 = *(a1 + 56);
      CFRetain(a2);
      *(a1 + 56) = a2;
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      CFRetain(a2);
      *(a1 + 56) = a2;
    }

    if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus APReceiverSessionManagerSetAsMainAirPlaySession(APReceiverSessionManagerRef, APReceiverRequestProcessorRef)", 33554482, "Setting RP [%{ptr}] as main session...\n", *(a1 + 56));
    }

    APReceiverSessionManagerUpdateParentGroupInfo(a1);
    if (*(a1 + 56))
    {
      CFObjectSetProperty();
      if (APSIsMemberOfPersistentGroup())
      {
        v11 = 0;
        v6 = *(a1 + 56);
        if (v6)
        {
          v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (v7)
          {
            v8 = v7(v6, @"hijackID", &v11);
            if (v11)
            {
              APSLogErrorAt();
              if (!v8)
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v8 = 0;
          }

          if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus sessionManager_updateHijackIDForPersistentCluster(APReceiverSessionManagerRef)", 33554482, "Updating HijackID to %@...\n", v8);
          }

          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (Mutable)
          {
            v10 = Mutable;
            CFDictionarySetValue(Mutable, @"hijackID", v8);
            AirPlayReceiverServerPlatformControl(*(a1 + 24), @"updateHijackID", 0, v10);
            CFRelease(v10);
            if (!v8)
            {
              goto LABEL_28;
            }
          }

          else
          {
            APSLogErrorAt();
            v11 = -6728;
            if (!v8)
            {
LABEL_28:
              if (v11)
              {
                APSLogErrorAt();
              }

              return;
            }
          }

LABEL_27:
          CFRelease(v8);
          goto LABEL_28;
        }
      }
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

uint64_t APReceiverSessionManagerUpdateAndNotifyReceiverSessionState(uint64_t a1)
{
  if (CFArrayGetCount(*(a1 + 64)) < 1)
  {
    v2 = 0;
  }

  else if (APSMultiPrimariesEnabled())
  {
    v2 = 2;
  }

  else if (IsAppleTV())
  {
    CFArrayGetValueAtIndex(*(a1 + 64), 0);
    if (CFObjectGetInt64())
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 1;
  }

  cf = 0;
  CFArrayGetCount(*(a1 + 64));
  v3 = CFObjectSetPropertyInt64();
  if (v3)
  {
    v8 = v3;
  }

  else
  {
    if (!APSMultiPrimariesEnabled() || (APReceiverSessionManagerCopyAirPlaySessionWithAttribute(a1, 5, &cf, 0), v6 = AirPlayReceiverServerPlatformSetProperty(*(a1 + 24), v4, @"mainMediaReceiverSession", v5, cf), !v6))
    {
      v7 = *(a1 + 32);
      if (v7 == v2)
      {
        v8 = 0;
        goto LABEL_22;
      }

      if (gLogCategory_APReceiverSessionManager <= 50)
      {
        if (gLogCategory_APReceiverSessionManager == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_18;
          }

          v7 = *(a1 + 32);
        }

        LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus APReceiverSessionManagerUpdateAndNotifyReceiverSessionState(APReceiverSessionManagerRef)", 33554482, "ReceiverSessionState changed: %llu -> %llu\n", v7, v2);
      }

LABEL_18:
      *(a1 + 32) = v2;
      v9 = *(a1 + 16);
      if (v9 == -1)
      {
        v8 = 0;
      }

      else
      {
        notify_set_state(v9, v2);
        v8 = notify_post("com.apple.airplay.active");
      }

      CFObjectSetProperty();
      goto LABEL_22;
    }

    v8 = v6;
  }

  APSLogErrorAt();
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

void APReceiverSessionManagerRemoveSession(uint64_t a1, const void *a2)
{
  if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus APReceiverSessionManagerRemoveSession(APReceiverSessionManagerRef, APReceiverRequestProcessorRef)", 33554482, "Removing session [%{ptr}]\n", a2);
  }

  IndexOfValue = cfArrayGetIndexOfValue(*(a1 + 64), a2);
  if (IndexOfValue != -1)
  {
    v5 = IndexOfValue;
    v6 = *(a1 + 48);
    if (v6 == a2)
    {
      v8 = *(a1 + 72);
      if (v8 >= 2)
      {
        *(a1 + 72) = v8 - 1;
      }

      if (a2)
      {
        CFRelease(v6);
        *(a1 + 48) = 0;
      }

      if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus APReceiverSessionManagerRemoveSession(APReceiverSessionManagerRef, APReceiverRequestProcessorRef)", 33554482, "Releasing persistent session; sessions array capacity %d\n");
      }
    }

    else if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus APReceiverSessionManagerRemoveSession(APReceiverSessionManagerRef, APReceiverRequestProcessorRef)", 33554482, "Releasing AirPlay session\n");
    }

    v9 = *(a1 + 56);
    if (v9 != a2)
    {
      CFArrayRemoveValueAtIndex(*(a1 + 64), v5);
      if (v6 != a2)
      {
LABEL_38:

        APReceiverSessionManagerUpdateAndNotifyReceiverSessionState(a1);
        return;
      }

LABEL_37:
      APReceiverSessionManagerUpdateParentGroupInfo(a1);
      goto LABEL_38;
    }

    if (gLogCategory_APReceiverSessionManager > 50)
    {
LABEL_34:
      if (v9)
      {
        CFRelease(v9);
        *(a1 + 56) = 0;
      }

      CFArrayRemoveValueAtIndex(*(a1 + 64), v5);
      goto LABEL_37;
    }

    if (gLogCategory_APReceiverSessionManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_33;
      }

      v9 = *(a1 + 56);
    }

    LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus APReceiverSessionManagerRemoveSession(APReceiverSessionManagerRef, APReceiverRequestProcessorRef)", 33554482, "Resigning RP [%{ptr}] as main session...\n", v9);
LABEL_33:
    v9 = *(a1 + 56);
    goto LABEL_34;
  }

  v7 = cfArrayGetIndexOfValue(*(a1 + 80), a2);
  if (v7 != -1)
  {
    CFArrayRemoveValueAtIndex(*(a1 + 80), v7);
    if (gLogCategory_APReceiverSessionManager <= 50 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus APReceiverSessionManagerRemoveSession(APReceiverSessionManagerRef, APReceiverRequestProcessorRef)", 33554482, "Removed entry from Remote Control Array. %@\n", *(a1 + 80));
    }
  }
}

CFIndex cfArrayGetIndexOfValue(const __CFArray *a1, const void *a2)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt();
    return -1;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return -1;
  }

  v5.length = Count;
  v5.location = 0;

  return CFArrayGetFirstIndexOfValue(a1, v5, a2);
}

void APReceiverSessionManagerCopyAirPlaySessionWithAttribute(uint64_t a1, int a2, void *a3, const void **a4)
{
  if (a2 == 1)
  {
    v7 = 0;
LABEL_3:
    v8 = (a1 + 48);
LABEL_4:
    v9 = *v8;
    goto LABEL_14;
  }

  NonPersistentSession = sessionManager_copyFirstNonPersistentSession(a1);
  v7 = NonPersistentSession;
  v9 = *(a1 + 56);
  if (a2 == 4)
  {
    if (v9)
    {
      v12 = *(a1 + 48);
      if (v9 == v12)
      {
        goto LABEL_10;
      }

      if (!v12)
      {
        goto LABEL_14;
      }

      if (CFEqual(*(a1 + 56), v12))
      {
LABEL_10:
        v9 = v7;
        goto LABEL_14;
      }

      v8 = (a1 + 56);
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  if (!v9)
  {
    v9 = NonPersistentSession;
  }

  if (!v9)
  {
    if (a2 == 5)
    {
      v13 = *(a1 + 48);
      v8 = (a1 + 48);
      if (v13 && CFObjectGetInt64())
      {
        goto LABEL_4;
      }
    }

    else if (!a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (!a3)
    {
      goto LABEL_28;
    }

    v9 = 0;
    goto LABEL_27;
  }

LABEL_14:
  if (a4 && v9)
  {
    *a4 = APReceiverRequestProcessorCopyReceiverSession(v9);
  }

  if (a3)
  {
    if (v9)
    {
      CFRetain(v9);
    }

LABEL_27:
    *a3 = v9;
  }

LABEL_28:
  if (v7)
  {

    CFRelease(v7);
  }
}

CFTypeRef sessionManager_copyFirstNonPersistentSession(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 64));
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), v4);
    v6 = *(a1 + 48);
    if (ValueAtIndex != v6)
    {
      v7 = ValueAtIndex;
      v8 = !ValueAtIndex || v6 == 0;
      if (v8 || !CFEqual(ValueAtIndex, v6))
      {
        break;
      }
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return CFRetain(v7);
}

uint64_t APReceiverRequestProcessorCopyProperty_7555(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 0;
  }

  return v6(a1, a2, a3);
}

__CFArray *APReceiverSessionManagerCopyAllSessions(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v6.length = CFArrayGetCount(*(a1 + 80));
      v6.location = 0;
      CFArrayAppendArray(Mutable, v3, v6);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      v7.length = CFArrayGetCount(v4);
      v7.location = 0;
      CFArrayAppendArray(Mutable, v4, v7);
    }
  }

  else
  {
    APSLogErrorAt();
    if (gLogCategory_APReceiverSessionManager <= 60 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSessionManager, "CFArrayRef APReceiverSessionManagerCopyAllSessions(APReceiverSessionManagerRef)", 33554492, "Could not copy sessions. Error: %#m\n", 4294960568);
    }
  }

  return Mutable;
}

BOOL APReceiverSessionManagerCanHijack(uint64_t a1, const void *a2)
{
  v4 = 1;
  if (CFObjectGetPropertyInt64Sync() && *(a1 + 72) >= 1 && CFArrayGetCount(*(a1 + 64)) == *(a1 + 72))
  {
    return cfArrayContainsValue(*(a1 + 64), a2) != 0;
  }

  return v4;
}

void APReceiverSessionManagerHijack(uint64_t a1, const void *a2)
{
  NonPersistentSession = sessionManager_copyFirstNonPersistentSession(a1);
  if (NonPersistentSession)
  {
    v5 = NonPersistentSession;
    if (!CFEqual(NonPersistentSession, a2))
    {
      AirPlayReceiverServerHijackConnection(*(a1 + 24), v5, a2);
    }

    CFRelease(v5);
  }
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x282110B10](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x282114928](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}