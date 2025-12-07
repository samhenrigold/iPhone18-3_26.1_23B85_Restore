@interface Start
@end

@implementation Start

void __aprscreen_Start_block_invoke(uint64_t a1)
{
  v1 = a1;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 228) & 0x80000000) != 0)
  {
    *&block.sa_len = 28;
    FigCFDictionaryGetInt32IfPresent();
    APSLogErrorAt();
    if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSession, "void aprscreen_thread(APReceiverScreenSessionRef, CFDictionaryRef)", 33554522, "### Screen session %{ptr}: no valid socket\n", v3);
    }

    goto LABEL_17;
  }

  *&block.sa_len = 0;
  *&block.sa_data[6] = 0;
  LODWORD(v124) = 0;
  v123 = 0;
  v113[0] = 0;
  v5 = SocketAccept();
  if (v5)
  {
    v9 = v5;
    goto LABEL_236;
  }

  v113[0] = 28;
  getsockname(-1, &block, v113);
  if (gLogCategory_APReceiverScreenSession <= 50 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSession, "void aprscreen_thread(APReceiverScreenSessionRef, CFDictionaryRef)", 33554482, "Screen session %{ptr}: accepted connection from %##a on %##a\n", v3, DerivedStorage + 252, &block);
  }

  v6 = *(DerivedStorage + 228);
  if ((v6 & 0x80000000) == 0)
  {
    if (close(v6) && *__error())
    {
      __error();
    }

    *(DerivedStorage + 228) = -1;
  }

  if (*(DerivedStorage + 187))
  {
    SocketSetQoS();
  }

  v7 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(v7 + 248))
  {
    FigSimpleMutexUnlock();
LABEL_17:
    Mutable = 0;
    v9 = 0;
    goto LABEL_237;
  }

  v9 = NetSocket_CreateWithNative();
  FigSimpleMutexUnlock();
  if (v9)
  {
    if (v9 != -6723)
    {
      goto LABEL_236;
    }

    goto LABEL_17;
  }

  if (v2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    Value = CFDictionaryGetValue(v2, @"PresentationLayer");
    if (Value)
    {
      CFDictionarySetValue(Mutable, @"PresentationLayer", Value);
    }

    v11 = CFDictionaryGetValue(v2, @"PresentationContext");
    if (v11)
    {
      CFDictionarySetValue(Mutable, @"PresentationContext", v11);
    }

    v12 = CFDictionaryGetValue(v2, @"ReportedDisplaySize");
    if (v12)
    {
      CFDictionarySetValue(Mutable, @"ReportedDisplaySize", v12);
    }
  }

  else
  {
    Mutable = 0;
  }

  v13 = *(DerivedStorage + 144);
  v105 = *MEMORY[0x277CBED10];
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v14)
  {
    v14(v13, @"ScreenFadeOutOnStop", v105);
  }

  v15 = *(DerivedStorage + 144);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v16)
  {
    v9 = 4294954514;
LABEL_39:
    APSLogErrorAt();
    goto LABEL_237;
  }

  v17 = v16(v15, Mutable);
  if (v17)
  {
    v9 = v17;
    goto LABEL_39;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (FigGetCFPreferenceNumberWithDefault())
  {
    aprscreen_captureStart(v3, 0, 0);
  }

  v103 = v1;
  if (gLogCategory_APReceiverScreenSession <= 50 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSession, "void aprscreen_thread(APReceiverScreenSessionRef, CFDictionaryRef)", 33554482, "Screen session %{ptr}: starting frame processing\n", v3);
  }

  v102 = DerivedStorage;
  APTTrafficMetricsConnectionFormed();
  v18 = CMBaseObjectGetDerivedStorage();
  v104 = *MEMORY[0x277CBED28];
  v108 = *MEMORY[0x277CBECF0];
  v109 = *MEMORY[0x277CBECE8];
  while (1)
  {
    APTTrafficMetricsMessageReadStarted();
    v9 = (*(*(v18 + 29) + 24))();
    APTTrafficMetricsMessageReadFinished();
    if (v9)
    {
      break;
    }

    v19 = aprscreen_ntpTimestamp(v3);
    *(v18 + 38) = v19;
    *(v18 + 39) = v19;
    if (*v18)
    {
      v20 = malloc_type_malloc(*v18, 0xD992E056uLL);
      if (!v20)
      {
        APSLogErrorAt();
        v9 = 4294960568;
LABEL_227:
        v1 = v103;
LABEL_229:
        DerivedStorage = v102;
        goto LABEL_230;
      }

      APTTrafficMetricsMessageReadStarted();
      v9 = (*(*(v18 + 29) + 24))();
      APTTrafficMetricsMessageReadFinished();
      if (v9)
      {
        v1 = v103;
        if (v9 == -6723)
        {
          free(v20);
          DerivedStorage = v102;
LABEL_222:
          if (gLogCategory_APReceiverScreenSession <= 50 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverScreenSession, "void aprscreen_thread(APReceiverScreenSessionRef, CFDictionaryRef)", 33554482, "Screen session %{ptr}: finished frame processing, received %zu frames\n", v3, *(DerivedStorage + 336));
          }

          v100 = *(DerivedStorage + 144);
          v101 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v101)
          {
            v101(v100, @"ScreenFadeOutOnStop", v104);
          }

          goto LABEL_17;
        }

        APSLogErrorAt();
        goto LABEL_229;
      }
    }

    else
    {
      v20 = 0;
    }

    *(v18 + 40) = aprscreen_ntpTimestamp(v3);
    v21 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v22 = *(v21 + 4);
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        if (v22 == 4)
        {
          goto LABEL_124;
        }

        if (v22 != 5)
        {
LABEL_75:
          if (gLogCategory_APReceiverScreenSession <= 50)
          {
            if (gLogCategory_APReceiverScreenSession != -1)
            {
              goto LABEL_77;
            }

            if (_LogCategory_Initialize())
            {
              v22 = *(v21 + 4);
LABEL_77:
              LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_processFrameBuf(APReceiverScreenSessionRef, void *)", 33554482, "Unknown screen opcode: %u\n", v22);
            }
          }

LABEL_124:
          if (v20)
          {
            free(v20);
          }

          FigSimpleMutexUnlock();
          goto LABEL_199;
        }
      }

      *&block.sa_len = 0;
      v23 = CMBaseObjectGetDerivedStorage();
      aprstats_logEnable(*(v23 + 136), (*(v23 + 5) & 2) != 0);
      *(v23 + 705) = *(v23 + 5) & 1;
      if (v20 && *(v23 + 4) == 5)
      {
        v24 = *(v23 + 124);
        if (v24)
        {
          CFDictionaryGetTypeID();
          v24 = CFCreateWithPlistBytes();
          if (*&block.sa_len)
          {
LABEL_79:
            APSLogErrorAt();
            v44 = *&block.sa_len;
            if (*&block.sa_len && gLogCategory_APReceiverScreenSession <= 90)
            {
              if (gLogCategory_APReceiverScreenSession != -1)
              {
                goto LABEL_82;
              }

              if (_LogCategory_Initialize())
              {
                v44 = *&block.sa_len;
LABEL_82:
                LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_handleKeepAlive(APReceiverScreenSessionRef, void *)", 33554522, "### Keep-alive processing failed, error: %#m\n", v44);
              }
            }

LABEL_68:
            if (v24)
            {
              CFRelease(v24);
            }

            if (v20)
            {
              free(v20);
            }

            v9 = *&block.sa_len;
            goto LABEL_198;
          }
        }
      }

      else
      {
        v24 = 0;
      }

      v36 = *(v23 + 144);
      v37 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v37 && (v38 = v37(v36, v24), v38 != -12782))
      {
        *&block.sa_len = v38;
        if (v38)
        {
          goto LABEL_79;
        }
      }

      else
      {
        *&block.sa_len = 0;
      }

      goto LABEL_68;
    }

    if (*(v21 + 4))
    {
      if (v22 != 1)
      {
        goto LABEL_75;
      }

      v25 = CMBaseObjectGetDerivedStorage();
      *&block.sa_len = 0;
      v26 = *(v25 + 5);
      v27 = *(v25 + 6);
      *(v25 + 706) = (v27 & 0x10) != 0;
      if (!*(v25 + 36))
      {
        *(v25 + 36) = mach_absolute_time();
      }

      v106 = *(v25 + 4);
      v107 = *(v25 + 5);
      v28 = *(v25 + 8);
      v29 = *(v25 + 9);
      v30 = *(v25 + 10);
      v31 = *(v25 + 11);
      v32 = *(v25 + 12);
      v33 = *(v25 + 13);
      v34 = *(v25 + 14);
      v35 = *(v25 + 15);
      if (gLogCategory_APReceiverScreenSession <= 50 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_handleVideoConfig(APReceiverScreenSessionRef, void *)", 33554482, "Updating config: VS=%.0f x %.0f, SR=%.0f, %.0f, %.0f x %.0f, DR=%.0f, %.0f, %.0f x %.0f, T=%u, avcC=%d\n", v106, v107, v28, v29, v30, v31, v32, v33, v34, v35, v26, (v27 & 8) == 0);
      }

      v49 = *(v25 + 18);
      if (v27)
      {
        v50 = v104;
      }

      else
      {
        v50 = v105;
      }

      v51 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v51)
      {
        v51(v49, @"StatsDisplayEnabled", v50);
      }

      v52 = *v25;
      if (!v52)
      {
        goto LABEL_111;
      }

      if (((v27 >> 3) & 1) == 0)
      {
        v53 = CFDataCreateWithBytesNoCopy(v109, v20, v52, v108);
        if (v53)
        {
          v54 = *(v25 + 18);
          v55 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v55)
          {
            v56 = v55(v54, v53, v26, v106, v107, v28, v29, v30, v31);
            if (!v56)
            {
              v20 = *(v25 + 21);
              if (v20)
              {
                v57 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v57)
                {
                  v57(v20, v53, v26, v106, v107, v28, v29, v30, v31);
                }

                goto LABEL_108;
              }

              goto LABEL_109;
            }

            v9 = v56;
          }

          else
          {
            v9 = 4294954514;
          }

          APSLogErrorAt();
LABEL_119:
          v20 = 0;
        }

        else
        {
          APSLogErrorAt();
          v9 = 4294895176;
        }

LABEL_120:
        if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_handleVideoConfig(APReceiverScreenSessionRef, void *)", 33554522, "### Video config processing failed, error: %#m\n", v9);
        }

LABEL_140:
        if (*&block.sa_len)
        {
          CFRelease(*&block.sa_len);
        }

        if (v53)
        {
          CFRelease(v53);
        }

        if (v20)
        {
          free(v20);
        }

        goto LABEL_198;
      }

      v58 = CMBlockBufferCreateWithMemoryBlock(v109, v20, v52, v108, 0, 0, v52, 0, &block);
      if (v58)
      {
        v9 = v58;
        APSLogErrorAt();
        v53 = 0;
        goto LABEL_120;
      }

      v59 = *(v25 + 18);
      v60 = *&block.sa_len;
      v61 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v61)
      {
        v62 = v61(v59, v60, v26, v106, v107, v28, v29, v30, v31);
        if (!v62)
        {
          v20 = *(v25 + 21);
          if (v20)
          {
            v63 = *&block.sa_len;
            v64 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v64)
            {
              v64(v20, v63, v26, v106, v107, v28, v29, v30, v31);
            }

            v53 = 0;
LABEL_108:
            v20 = 0;
            *(v25 + 176) = 1;
LABEL_109:
            if ((v27 & 0x40) == 0)
            {
              goto LABEL_139;
            }

            goto LABEL_112;
          }

LABEL_111:
          v53 = 0;
          if ((v27 & 0x40) == 0)
          {
LABEL_139:
            v9 = 0;
            ++*(v25 + 43);
            goto LABEL_140;
          }

LABEL_112:
          if (gLogCategory_APReceiverScreenSession <= 50 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_handleVideoConfig(APReceiverScreenSessionRef, void *)", 33554482, "Clearing screen\n");
          }

          v68 = *(v25 + 18);
          v69 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v69)
          {
            v70 = v69(v68);
            if (v70 != -12782)
            {
              v9 = v70;
              if (v70)
              {
                APSLogErrorAt();
                goto LABEL_120;
              }
            }
          }

          goto LABEL_139;
        }

        v9 = v62;
      }

      else
      {
        v9 = 4294954514;
      }

      APSLogErrorAt();
      v53 = 0;
      goto LABEL_119;
    }

    v112 = 0;
    v39 = CMBaseObjectGetDerivedStorage();
    *&dataLength[1] = 0;
    v40 = *(v39 + 1);
    v41 = *(v39 + 5);
    v42 = CMBaseObjectGetDerivedStorage();
    *v113 = 0;
    if (*(v42 + 188))
    {
      v43 = mach_absolute_time();
      goto LABEL_151;
    }

    v45 = v42;
    v46 = *(v42 + 128);
    if (v46)
    {
      v47 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v47)
      {
        *&block.sa_len = v41;
        *&block.sa_data[6] = v40 << 32;
        v123 = HIDWORD(v40);
        v48 = v47(v46, &block, v113);
        if (!v48)
        {
          v43 = *v113;
          v45[35] = *v113;
          goto LABEL_151;
        }
      }

      else
      {
        v48 = 4294954514;
      }

      if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverScreenSession, "uint64_t aprscreen_displayTicksFromNTP(APReceiverScreenSessionRef, uint64_t, uint64_t)", 33554522, "### Convert network time error: %#m\n", v48);
      }

      v43 = v45[35];
    }

    else
    {
      v65 = NTPtoUpTicks();
      v66 = v65;
      if (v45[42])
      {
        v67 = v45[37];
      }

      else
      {
        v45[37] = v45[36] - v65;
        v67 = v45[37] + MillisecondsToUpTicks();
        v45[37] = v67;
      }

      v43 = v67 + v66;
    }

LABEL_151:
    v71 = *v39;
    v72 = v39[7];
    v110 = v72;
    dataLength[0] = v71;
    if ((*(v39 + 5) & 0x10) != 0)
    {
      v73 = 1;
      if (!v72)
      {
LABEL_157:
        v92 = 0;
        goto LABEL_158;
      }
    }

    else
    {
      v73 = *(v39 + 42) == 0;
      if (!v72)
      {
        goto LABEL_157;
      }
    }

    v74 = v71 >= v72;
    v75 = v71 - v72;
    if (v75 != 0 && v74)
    {
      dataLength[0] = v75;
      v92 = &v20[v75];
LABEL_158:
      v112 = aprscreen_decryptBuffer(v3, v20, dataLength);
      if (v112 || (v112 = CMBlockBufferCreateWithMemoryBlock(v109, v20, *v39, v108, 0, 0, dataLength[0], 0, &dataLength[1])) != 0)
      {
        APSLogErrorAt();
        v92 = 0;
        v91 = 0;
        goto LABEL_184;
      }

      if (!v92)
      {
        goto LABEL_163;
      }

      v112 = aprscreen_decryptBuffer(v3, v92, &v110);
      if (v112)
      {
        APSLogErrorAt();
        v92 = 0;
      }

      else
      {
        CFDictionaryGetTypeID();
        v92 = CFCreateWithPlistBytes();
        if (!v112)
        {
LABEL_163:
          *(v39 + 41) = aprscreen_ntpTimestamp(v3);
          v76 = CMBaseObjectGetDerivedStorage();
          v121 = 0;
          v77 = *(v76 + 136);
          if (v77)
          {
            v78 = *(v76 + 88);
            *v113 = v43;
            v114 = v78;
            v115 = *(v76 + 32);
            v116 = v76 + 96;
            v117 = v76 + 304;
            v118 = 0x400000010;
            v119 = *v76;
            v120 = *(v76 + 24);
            v79 = &v121;
            if (!*(v76 + 705))
            {
              v79 = 0;
            }

            v80 = *(v77 + 16);
            *&block.sa_len = MEMORY[0x277D85DD0];
            *&block.sa_data[6] = 3221225472;
            v123 = __APReceiverStatsCollectorUpdateAndCopyFrameStats_block_invoke;
            v124 = &__block_descriptor_56_e5_v8__0l;
            v125 = v77;
            v126 = v113;
            v127 = v79;
            dispatch_sync(v80, &block);
            v91 = v121;
          }

          else
          {
            v91 = 0;
          }

          v81 = *(v39 + 18);
          v82 = *&dataLength[1];
          v83 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (v83)
          {
            v84 = v83(v81, v82, v92, v43, v91, v73);
            v112 = v84;
            if (v84 != -12782)
            {
              goto LABEL_175;
            }
          }

          else
          {
            v112 = -12782;
          }

          v85 = *(v39 + 18);
          v86 = *&dataLength[1];
          v87 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v87)
          {
            v84 = v87(v85, v86, v43, v91, v73);
          }

          else
          {
            v84 = -12782;
          }

          v112 = v84;
LABEL_175:
          if (!v84)
          {
            v88 = *(v39 + 21);
            if (v88)
            {
              if (v73 && *(v39 + 176))
              {
                *(v39 + 177) = 1;
              }

              if (*(v39 + 177))
              {
                v89 = *&dataLength[1];
                v90 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                if (v90)
                {
                  v90(v88, v89, v43, v91, v73);
                }
              }
            }

            v20 = 0;
            ++*(v39 + 42);
LABEL_184:
            v93 = v112;
            if (!v112)
            {
              goto LABEL_189;
            }

            goto LABEL_185;
          }

          APSLogErrorAt();
LABEL_206:
          v20 = 0;
          goto LABEL_184;
        }

        APSLogErrorAt();
      }

      v91 = 0;
      goto LABEL_206;
    }

    APSLogErrorAt();
    v91 = 0;
    v92 = 0;
    v93 = 4294960553;
    v112 = -6743;
LABEL_185:
    if (gLogCategory_APReceiverScreenSession <= 90)
    {
      if (gLogCategory_APReceiverScreenSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_189;
        }

        v93 = v112;
      }

      LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_handleVideoFrame(APReceiverScreenSessionRef, void *)", 33554522, "### Video frame processing failed, error: %#m\n", v93);
    }

LABEL_189:
    if (v92)
    {
      CFRelease(v92);
    }

    if (*&dataLength[1])
    {
      CFRelease(*&dataLength[1]);
    }

    if (v91)
    {
      CFRelease(v91);
    }

    if (v20)
    {
      free(v20);
    }

    v9 = v112;
LABEL_198:
    FigSimpleMutexUnlock();
    if (v9)
    {
      APSLogErrorAt();
      v20 = 0;
      goto LABEL_227;
    }

LABEL_199:
    APTTrafficMetricsMessageProcessed();
  }

  v94 = v9 == -6753 || v9 == -6723;
  DerivedStorage = v102;
  v1 = v103;
  if (v94)
  {
    goto LABEL_222;
  }

  APSLogErrorAt();
  v20 = 0;
LABEL_230:
  if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSession, "OSStatus aprscreen_processFrames(APReceiverScreenSessionRef)", 33554522, "### processFrames error: %#m\n", v9);
  }

  if (v20)
  {
    free(v20);
  }

LABEL_236:
  APSLogErrorAt();
  Mutable = 0;
LABEL_237:
  aprscreen_captureStop(v3);
  v95 = *(DerivedStorage + 144);
  v96 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v96)
  {
    v96(v95);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v97 = CMBaseObjectGetDerivedStorage();
  if (*(v97 + 240))
  {
    FigSimpleMutexLock();
    if (*(v97 + 232))
    {
      NetSocket_Delete();
      *(v97 + 232) = 0;
    }

    FigSimpleMutexUnlock();
  }

  if (v9 && gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSession, "void aprscreen_thread(APReceiverScreenSessionRef, CFDictionaryRef)", 33554522, "### Screen thread error: %#m\n", v9);
  }

  if (*(DerivedStorage + 152))
  {
    v98 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    FigCFDictionarySetInt32();
    (*(DerivedStorage + 152))(v3, @"SessionTerminated", v98, *(DerivedStorage + 160));
    CFRelease(v98);
  }

  v99 = *(v1 + 40);
  if (v99)
  {
    CFRelease(v99);
  }
}

@end