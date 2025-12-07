uint64_t VideoReceiver_SetSynchronizer(uint64_t a1, uint64_t a2)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4 + 40920;
    if (*(v4 + 1400) == 2)
    {
      if (a2)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 0x40000000;
        v10[2] = __VideoReceiver_SetSynchronizer_block_invoke;
        v10[3] = &__block_descriptor_tmp_121;
        v10[4] = a1;
        v6 = v10;
        v7 = a2;
LABEL_10:
        VCMediaStreamSynchronizer_setSourcePlayoutTimeUpdatedHandler(v7, v6);
        goto LABEL_11;
      }

      v7 = *(v4 + 43328);
      if (v7)
      {
        v6 = 0;
        goto LABEL_10;
      }
    }

LABEL_11:
    *(v5 + 2408) = a2;
    *v5 = a2 != 0;
    CheckOutHandleDebug();
    return 0;
  }

  v8 = 2149515266;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoReceiver_SetSynchronizer_cold_1();
    }
  }

  return v8;
}

uint64_t _VideoReceiver_RTPPacketCallback(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149515266;
  }

  v6 = v5;
  v7 = v5 + 40896;
  *(v5 + 43216) = *(a2 + 40);
  ++*(v5 + 43212);
  v8 = _VideoReceiver_ProcessVideoRTPInternal(v4, v5, a1, a2);
  if ((v8 & 0x80000000) != 0)
  {
    _VideoReceiver_RTPPacketCallback_cold_1();
  }

  else if (*(v7 + 4) == 1 || *v7 == 1)
  {
    AssemblyRTPTimestamp = _VideoReceiver_GetAssemblyRTPTimestamp(v6);
    _VideoReceiver_ScheduleFramesForDecodingMultiway(v4, v6, AssemblyRTPTimestamp);
  }

  CheckOutHandleDebug();
  return v8;
}

void _VideoReceiverStreamStats_AddPacket(uint64_t a1, int a2, unsigned int a3)
{
  if (*(a1 + 4) == a2)
  {
    if (*a1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 4) = a2;
    *(a1 + 16) = 0;
    bzero((a1 + 24), 0x1000uLL);
  }

  *a1 = 1;
  *(a1 + 8) = a3;
  *(a1 + 12) = a3;
LABEL_6:
  if (*(a1 + 24 + 4 * (a3 & 0x3FF)) != a3)
  {
    *(a1 + 24 + 4 * (a3 & 0x3FF)) = a3;
    v5 = *(a1 + 12);
    ++*(a1 + 16);
    if (a3 != v5 && (a3 - v5) <= 0x7FFEu)
    {
      if (a3 < v5)
      {
        v5 += 0x10000;
      }

      *(a1 + 12) = v5 & 0xFFFF0000 | a3;
    }
  }
}

double _VideoReceiver_GetTotalPLR(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0.0;
  }

  v2 = 0;
  v3 = a1 + 468;
  result = 0.0;
  do
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v7 = *(v3 - 4);
    v8 = *(v3 - 6);
    v9 = (v7 - v8) - (v5 - *v3);
    v10 = v7 - v8;
    if (v10)
    {
      v11 = v9 < 1;
    }

    else
    {
      v11 = 1;
    }

    v12 = 0.0;
    if (!v11)
    {
      v12 = v9 / v10;
    }

    v3 += 1088;
    v13 = result + v12;
    if (v5 != v6)
    {
      result = v13;
      ++v2;
    }

    --v1;
  }

  while (v1);
  if (v2)
  {
    return result / v2;
  }

  return result;
}

uint64_t VideoReceiver_SetJitterBufferMode(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147680258;
  }

  _VideoReceiver_SetJitterBufferMode(v3, v2);
  CheckOutHandleDebug();
  return 0;
}

void _VideoReceiver_SetJitterBufferMode(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1164) != a2)
  {
    v4 = a1 + 40960;
    VCVideoPlayer_UpdateJitterBufferMode(*(a1 + 40976), a2);
    VCVideoJitterBuffer_UpdateMode(*(v4 + 2312), a2);
    *(a1 + 1164) = a2;
  }
}

uint64_t VideoReceiver_UpdateVideoExpected(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147680258;
  }

  v4 = v3;
  v5 = v3 + 10240;
  os_unfair_lock_lock(v3 + 10860);
  BYTE1(v5[616]._os_unfair_lock_opaque) = a2;
  if (a2)
  {
    *&v5[618]._os_unfair_lock_opaque = micro(v6, v7);
  }

  os_unfair_lock_unlock(v4 + 10860);
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoReceiver_SetExternalOutputLatency(uint64_t a1, double a2)
{
  v3 = CheckInHandleDebug();
  if (v3)
  {
    *(v3 + 43456) = a2;
    v4 = *(v3 + 40976);
    if (v4 != 0xFFFFFFFFLL)
    {
      VCVideoPlayer_SetOutputLatency(v4, a2);
    }

    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    v5 = 2147680258;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoReceiver_SetExternalOutputLatency_cold_1();
      }
    }
  }

  return v5;
}

uint64_t VideoReceiver_SetDeferredAssemblyEnabled(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (v3)
  {
    *(v3 + 1222) = a2;
    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    v4 = 2147680258;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoReceiver_SetDeferredAssemblyEnabled_cold_1();
      }
    }
  }

  return v4;
}

uint64_t VideoReceiver_SetLooseAVSyncEnabled(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (v3)
  {
    v4 = VCVideoPlayer_SetLooseAVSyncEnabled(*(v3 + 40976), a2);
    CheckOutHandleDebug();
    return v4;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoReceiver_SetLooseAVSyncEnabled_cold_1();
      }
    }

    return 2147680258;
  }
}

uint64_t VideoReceiver_SetForceRTCPForLTRPACK(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (v3)
  {
    v4 = v3;
    *(v3 + 43475) = a2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v4 + 43475);
        v10 = 136316162;
        v11 = v5;
        v12 = 2080;
        v13 = "VideoReceiver_SetForceRTCPForLTRPACK";
        v14 = 1024;
        v15 = 7191;
        v16 = 2048;
        v17 = v4;
        v18 = 1024;
        v19 = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] forceRTCPForLTRPACK=%d", &v10, 0x2Cu);
      }
    }

    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    v8 = 2147680258;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoReceiver_SetForceRTCPForLTRPACK_cold_1();
      }
    }
  }

  return v8;
}

void VideoReceiver_VideoAlarmForDisplay(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(a2 + 2);
  _VideoReceiver_VideoAlarmCommon(a1, &v6, a3, a4, 1, a5, a6);
}

void _VideoReceiver_ShowFrame(uint64_t a1, uint64_t a2)
{
  v77 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v4 = a1 + 40904;
      CVPixelBufferRetain(*(a2 + 16));
      if (*(a2 + 66) == 1)
      {
        if (*(a2 + 72) == 1)
        {
          _VideoReceiver_UpdateVideoStallStatus(a1, 0);
        }

        v5 = *(a2 + 16);
        v59 = kCVAttachmentMode_ShouldNotPropagate;
        LODWORD(valuePtr.value) = 0;
        attachmentMode = -1431655766;
        Attachment = CVBufferGetAttachment(v5, @"VraWidth", &attachmentMode);
        if (!Attachment || (CFNumberGetValue(Attachment, kCFNumberIntType, &valuePtr), Width = valuePtr.value, SLODWORD(valuePtr.value) <= 0))
        {
          Width = CVPixelBufferGetWidth(v5);
        }

        v8 = CVBufferGetAttachment(v5, @"VraHeight", &attachmentMode);
        if (!v8 || (CFNumberGetValue(v8, kCFNumberIntType, &v59), Height = v59, v59 <= kCVAttachmentMode_ShouldNotPropagate))
        {
          Height = CVPixelBufferGetHeight(v5);
        }

        if (*(v4 + 1660) != Width || *(v4 + 1664) != Height)
        {
          ReportingEventDictionary = _VideoReceiver_CreateReportingEventDictionary(a1);
          reportingVideoProp();
          if (ReportingEventDictionary)
          {
            CFRelease(ReportingEventDictionary);
          }

          *(v4 + 1660) = Width;
          *(v4 + 1664) = Height;
        }

        v11 = *(a2 + 16);
        v12 = *(a2 + 24);
        v13 = *(a1 + 1204);
        if (v13 == 1)
        {
          if (*(a1 + 1200) || (v14 = CVPixelBufferGetWidth(*(a2 + 16)), v15 = CVPixelBufferGetHeight(v11), BytesPerRow = CVPixelBufferGetBytesPerRow(v11), CVPixelBufferLockBaseAddress(v11, 0), BaseAddress = CVPixelBufferGetBaseAddress(v11), VideoReceiverUtil_Capture2vuyFile(BaseAddress, BytesPerRow * v15, v14, v15, *(a1 + 1180) >> 2, a1 + 42592, (v12 - *(v4 + 1756)) >> 2), CVPixelBufferUnlockBaseAddress(v11, 0), v13 = *(a1 + 1204), v13 == 1))
          {
            WriteYuvFrame(v11, *(v4 + 2072), 0);
            v13 = *(a1 + 1204);
          }
        }

        if (v13 == 2)
        {
          DumpFrameYuvWithTimestamp(1, v11, v12);
        }

        v18 = *(a2 + 16);
        if (*(v4 + 2041) == 1)
        {
          v59 = -1431655766;
          v19 = CVBufferGetAttachment(v18, @"PSNRArray", &v59);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v20 = VRTraceErrorLogLevelToCSTR();
            v21 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v22 = *(a2 + 48);
              v57 = *(a2 + 24);
              valuePtr = *(a2 + 88);
              Seconds = CMTimeGetSeconds(&valuePtr);
              v24 = *(a2 + 66);
              ValueAtIndex = CFArrayGetValueAtIndex(v19, 0);
              v26 = CFArrayGetValueAtIndex(v19, 1);
              v27 = CFArrayGetValueAtIndex(v19, 2);
              LODWORD(valuePtr.value) = 136317698;
              *(&valuePtr.value + 4) = v20;
              LOWORD(valuePtr.flags) = 2080;
              *(&valuePtr.flags + 2) = "_VideoReceiver_ShowFrame";
              HIWORD(valuePtr.epoch) = 1024;
              v61 = 2357;
              v62 = 2048;
              v63 = a1;
              v64 = 1024;
              v65 = v22;
              v66 = 1024;
              v67 = v57;
              v68 = 2048;
              *v69 = Seconds;
              *&v69[8] = 1024;
              v70 = v24;
              v71 = 2112;
              v72 = ValueAtIndex;
              v73 = 2112;
              v74 = v26;
              v75 = 2112;
              v76 = v27;
              _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] for streamID=%d decoded frame with presentationTimestamp=%u frameTime=%f shouldShowFrame=%d Y-PSNR=%@ U-PSNR=%@ V-PSNR=%@", &valuePtr, 0x60u);
            }
          }

          v18 = *(a2 + 16);
        }

        *(v4 + 2112) = *(a2 + 24);
        ++*(v4 + 1868);
        ++*(v4 + 1852);
        if (v18)
        {
          v28 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, (a2 + 28));
          CVBufferSetAttachment(*(a2 + 16), @"FrameSequenceNumber", v28, kCVAttachmentMode_ShouldPropagate);
          if (v28)
          {
            CFRelease(v28);
          }

          v29 = *(a1 + 1632);
          v30 = *(a1 + 1624);
          v31 = *(a2 + 16);
          v32 = *(v4 + 2216);
          valuePtr = *(a2 + 88);
          v29(v30, v31, &valuePtr, v32);
        }

        else if (*(a2 + 8))
        {
          (*(a1 + 1640))(*(a1 + 1624));
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v33 = VRTraceErrorLogLevelToCSTR();
          v34 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v53 = *(a2 + 48);
            v54 = *(a2 + 24);
            valuePtr = *(a2 + 88);
            v55 = CMTimeGetSeconds(&valuePtr);
            v56 = *(a2 + 66);
            LODWORD(valuePtr.value) = 136316930;
            *(&valuePtr.value + 4) = v33;
            LOWORD(valuePtr.flags) = 2080;
            *(&valuePtr.flags + 2) = "_VideoReceiver_ShowFrame";
            HIWORD(valuePtr.epoch) = 1024;
            v61 = 2373;
            v62 = 2048;
            v63 = a1;
            v64 = 1024;
            v65 = v53;
            v66 = 1024;
            v67 = v54;
            v68 = 2048;
            *v69 = v55;
            *&v69[8] = 1024;
            v70 = v56;
            _os_log_error_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Trying to show a NULL frame for streamID=%d decoded frame with presentationTimestamp=%u frameTime=%f shouldShowFrame=%d", &valuePtr, 0x42u);
          }
        }
      }

      CVPixelBufferRelease(*(a2 + 16));
      v35 = *(a2 + 24);
      v38 = micro(v36, v37);
      *(v4 + 1756) = v35;
      v39 = *(v4 + 1776);
      if (v39 != 0.0)
      {
        v40 = ((v38 - v39) * 1000.0 + 0.5);
        if (*(v4 + 1784) < v40)
        {
          *(v4 + 1784) = v40;
        }
      }

      *(v4 + 1776) = v38;
      v41 = *(a1 + 1312);
      if (v41)
      {
        if (!*v4 || (v42 = *(*v4 + 80)) == 0)
        {
          v42 = *(v4 + 1480);
        }

        if (VCMediaControlInfoGeneratorGetVersion(v42) == 2)
        {
          v43 = *(v4 + 1864) - *(v4 + 1856) + 1;
          *(v41 + 40) = v43 - *(v4 + 1852);
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v44 = VRTraceErrorLogLevelToCSTR();
            v45 = *MEMORY[0x1E6986650];
            v46 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                v47 = *(v41 + 40);
                v48 = *(v4 + 1864);
                v49 = *(v4 + 1856);
                LODWORD(valuePtr.value) = 136316930;
                *(&valuePtr.value + 4) = v44;
                LOWORD(valuePtr.flags) = 2080;
                *(&valuePtr.flags + 2) = "_VideoReceiver_UpdateWRMFrameErasureMetrics";
                HIWORD(valuePtr.epoch) = 1024;
                v61 = 2204;
                v62 = 2048;
                v63 = a1;
                v64 = 1024;
                v65 = v47;
                v66 = 1024;
                v67 = v43;
                v68 = 1024;
                *v69 = v48;
                *&v69[4] = 1024;
                *&v69[6] = v49;
                _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] videoFrameErasureCount=%d videoFramesExpected=%d maxFrameSequenceNumber=%d baseFrameSequenceNumber=%d", &valuePtr, 0x3Eu);
              }
            }

            else if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v50 = *(v41 + 40);
              v51 = *(v4 + 1864);
              v52 = *(v4 + 1856);
              LODWORD(valuePtr.value) = 136316930;
              *(&valuePtr.value + 4) = v44;
              LOWORD(valuePtr.flags) = 2080;
              *(&valuePtr.flags + 2) = "_VideoReceiver_UpdateWRMFrameErasureMetrics";
              HIWORD(valuePtr.epoch) = 1024;
              v61 = 2204;
              v62 = 2048;
              v63 = a1;
              v64 = 1024;
              v65 = v50;
              v66 = 1024;
              v67 = v43;
              v68 = 1024;
              *v69 = v51;
              *&v69[4] = 1024;
              *&v69[6] = v52;
              _os_log_debug_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] videoFrameErasureCount=%d videoFramesExpected=%d maxFrameSequenceNumber=%d baseFrameSequenceNumber=%d", &valuePtr, 0x3Eu);
            }
          }
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VideoReceiver_ShowFrame_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VideoReceiver_ShowFrame_cold_2();
    }
  }
}

BOOL _VideoReceiver_IsFrameQueueEmpty(void *a1, int a2, int a3)
{
  if (a2)
  {
    if (!a3)
    {
      Head = a1[5437];
      return Head == 0;
    }

    v3 = a1[5381];
  }

  else
  {
    if (!a3)
    {
      Head = a1[5435];
      return Head == 0;
    }

    v3 = a1[5380];
  }

  Head = CMSimpleQueueGetHead(v3);
  return Head == 0;
}

void _VideoReceiver_VideoAlarmCommon(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, unsigned int a6, int a7)
{
  v9 = a5;
  v76 = *MEMORY[0x1E69E9840];
  v14 = CheckInHandleDebug();
  if (v14)
  {
    v15 = v14;
    v60 = a1;
    v16 = *(v14 + 1688);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = a4 == 0;
    }

    if (!v18)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        v21 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.value) = 136315906;
            *(&buf.value + 4) = v19;
            LOWORD(buf.flags) = 2080;
            *(&buf.flags + 2) = "_VideoReceiver_VideoAlarmCommon";
            HIWORD(buf.epoch) = 1024;
            v63 = 2692;
            v64 = 2048;
            v65 = v15;
            _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] stopping", &buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          _VideoReceiver_VideoAlarmCommon_cold_1();
        }
      }

LABEL_78:
      CheckOutHandleDebug();
      return;
    }

    if (ErrorLogLevelForModule >= 8)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      v27 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(a2 + 8);
          v29 = *a2;
          LODWORD(buf.value) = 136317186;
          *(&buf.value + 4) = v25;
          LOWORD(buf.flags) = 2080;
          *(&buf.flags + 2) = "_VideoReceiver_VideoAlarmCommon";
          HIWORD(buf.epoch) = 1024;
          v63 = 2697;
          v64 = 2048;
          v65 = v15;
          v66 = 1024;
          v67 = v28;
          v68 = 1024;
          v69 = v9;
          v70 = 2048;
          v71 = v29;
          v72 = 1024;
          v73 = a6;
          v74 = 1024;
          v75 = a3;
          _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] alarmRtpTimestamp=%u alarmType=%d presentationTime=%f shouldShowFrame=%d didAssembleFail=%d", &buf, 0x48u);
        }
      }

      else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v58 = *(a2 + 8);
        v59 = *a2;
        LODWORD(buf.value) = 136317186;
        *(&buf.value + 4) = v25;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "_VideoReceiver_VideoAlarmCommon";
        HIWORD(buf.epoch) = 1024;
        v63 = 2697;
        v64 = 2048;
        v65 = v15;
        v66 = 1024;
        v67 = v58;
        v68 = 1024;
        v69 = v9;
        v70 = 2048;
        v71 = v59;
        v72 = 1024;
        v73 = a6;
        v74 = 1024;
        v75 = a3;
        _os_log_debug_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] alarmRtpTimestamp=%u alarmType=%d presentationTime=%f shouldShowFrame=%d didAssembleFail=%d", &buf, 0x48u);
      }
    }

    CMTimeMake(&v61, (*a2 * 1000000000.0), 1000000000);
    buf = v61;
    CMTimeGetSeconds(&buf);
    kdebug_trace();
    if (a3)
    {
      if (v9 == 1 || (*(v15 + 1335) & 1) == 0)
      {
        _VideoReceiver_UpdateVideoStallStatus(v15, 1);
      }

      else if (!v9)
      {
        VCVideoPlayer_QueueAlarmForDisplay(*(v15 + 40976), VideoReceiver_VideoAlarmForDisplay, v60, *(a2 + 8), a7, 1, *(a2 + 16));
      }
    }

    if (!_VideoReceiver_CanDequeue(v15, v9, *(a2 + 8)))
    {
      goto LABEL_78;
    }

    while (1)
    {
      if (*(v15 + 42904) == 1)
      {
        v30 = *a2;
        os_unfair_lock_lock((v15 + 42908));
        *(v15 + 42896) = v30;
        if (*(v15 + 42880) < v30)
        {
          *(v15 + 42880) = 0;
        }

        os_unfair_lock_unlock((v15 + 42908));
      }

      if (v9)
      {
        v31 = *a2;
        pthread_mutex_lock((v15 + 43056));
        if (*(v15 + 1558) == 1 && *(v15 + 1568) == 1)
        {
          v32 = *(v15 + 43496);
          if (!v32)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v46 = VRTraceErrorLogLevelToCSTR();
              v47 = *MEMORY[0x1E6986650];
              v48 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  v49 = *(v15 + 43504);
                  LODWORD(buf.value) = 136316162;
                  *(&buf.value + 4) = v46;
                  LOWORD(buf.flags) = 2080;
                  *(&buf.flags + 2) = "_VideoReceiver_DequeueFromOrderedFrameQueueForDisplay";
                  HIWORD(buf.epoch) = 1024;
                  v63 = 782;
                  v64 = 2048;
                  v65 = v15;
                  v66 = 1024;
                  v67 = v49;
                  _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Cant dequeue for display at this time, queue is empty. numFramesInQueue=%d", &buf, 0x2Cu);
                }
              }

              else if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                v57 = *(v15 + 43504);
                LODWORD(buf.value) = 136316162;
                *(&buf.value + 4) = v46;
                LOWORD(buf.flags) = 2080;
                *(&buf.flags + 2) = "_VideoReceiver_DequeueFromOrderedFrameQueueForDisplay";
                HIWORD(buf.epoch) = 1024;
                v63 = 782;
                v64 = 2048;
                v65 = v15;
                v66 = 1024;
                v67 = v57;
                _os_log_debug_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Cant dequeue for display at this time, queue is empty. numFramesInQueue=%d", &buf, 0x2Cu);
              }
            }

            pthread_mutex_unlock((v15 + 43056));
LABEL_72:
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v50 = VRTraceErrorLogLevelToCSTR();
              v51 = *MEMORY[0x1E6986650];
              v52 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf.value) = 136315906;
                  *(&buf.value + 4) = v50;
                  LOWORD(buf.flags) = 2080;
                  *(&buf.flags + 2) = "_VideoReceiver_DequeueAndDisplayFrame";
                  HIWORD(buf.epoch) = 1024;
                  v63 = 806;
                  v64 = 2048;
                  v65 = v15;
                  _os_log_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Unable to dequeue and display frame.  No frame returned from the queue.", &buf, 0x26u);
                }
              }

              else if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf.value) = 136315906;
                *(&buf.value + 4) = v50;
                LOWORD(buf.flags) = 2080;
                *(&buf.flags + 2) = "_VideoReceiver_DequeueAndDisplayFrame";
                HIWORD(buf.epoch) = 1024;
                v63 = 806;
                v64 = 2048;
                v65 = v15;
                _os_log_debug_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Unable to dequeue and display frame.  No frame returned from the queue.", &buf, 0x26u);
              }
            }

            goto LABEL_60;
          }

          *(v15 + 43496) = *(v32 + 14);
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v33 = VRTraceErrorLogLevelToCSTR();
            v34 = *MEMORY[0x1E6986650];
            v35 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                v36 = v32[14];
                LODWORD(buf.value) = 136316162;
                *(&buf.value + 4) = v33;
                LOWORD(buf.flags) = 2080;
                *(&buf.flags + 2) = "_VideoReceiver_DequeueFromOrderedFrameQueueForDisplay";
                HIWORD(buf.epoch) = 1024;
                v63 = 792;
                v64 = 2048;
                v65 = v15;
                v66 = 1024;
                v67 = v36;
                _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Dequeuing decodingOrder=%d", &buf, 0x2Cu);
              }
            }

            else if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              v56 = v32[14];
              LODWORD(buf.value) = 136316162;
              *(&buf.value + 4) = v33;
              LOWORD(buf.flags) = 2080;
              *(&buf.flags + 2) = "_VideoReceiver_DequeueFromOrderedFrameQueueForDisplay";
              HIWORD(buf.epoch) = 1024;
              v63 = 792;
              v64 = 2048;
              v65 = v15;
              v66 = 1024;
              v67 = v56;
              _os_log_debug_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Dequeuing decodingOrder=%d", &buf, 0x2Cu);
            }
          }

          --*(v15 + 43504);
          v61.value = v32;
          pthread_mutex_unlock((v15 + 43056));
        }

        else
        {
          v32 = CMSimpleQueueDequeue(*(v15 + 43048));
          v61.value = v32;
          pthread_mutex_unlock((v15 + 43056));
          if (!v32)
          {
            goto LABEL_72;
          }
        }

        if (*(v15 + 1568) == 1)
        {
          v37 = *(v32 + 6) - *(v15 + 43016);
          if (v37)
          {
            v38 = v37 >= 0x7FFFFFFF;
          }

          else
          {
            v38 = 1;
          }

          v39 = !v38;
        }

        else
        {
          v39 = 1;
        }

        CMTimeMake(&buf, (v31 * 1000000000.0), 1000000000);
        *(v32 + 44) = buf;
        *(v32 + 66) = a6 & v39;
        *(v15 + 43508) = 1;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v40 = VRTraceErrorLogLevelToCSTR();
          v41 = *MEMORY[0x1E6986650];
          v42 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v43 = v32[24];
              v44 = *(v32 + 6);
              v45 = *(v32 + 72);
              LODWORD(buf.value) = 136317186;
              *(&buf.value + 4) = v40;
              LOWORD(buf.flags) = 2080;
              *(&buf.flags + 2) = "_VideoReceiver_DequeueAndDisplayFrame";
              HIWORD(buf.epoch) = 1024;
              v63 = 813;
              v64 = 2048;
              v65 = v15;
              v66 = 1024;
              v67 = v43;
              v68 = 1024;
              v69 = v44;
              v70 = 2048;
              v71 = v31;
              v72 = 1024;
              v73 = a6;
              v74 = 1024;
              v75 = v45;
              _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] for streamID=%u dequeue and display frame. RTPTimestamp=%u presentationTime=%f shouldShowFrame=%d canStopVideoStall=%d", &buf, 0x48u);
            }
          }

          else if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            v53 = v32[24];
            v54 = *(v32 + 6);
            v55 = *(v32 + 72);
            LODWORD(buf.value) = 136317186;
            *(&buf.value + 4) = v40;
            LOWORD(buf.flags) = 2080;
            *(&buf.flags + 2) = "_VideoReceiver_DequeueAndDisplayFrame";
            HIWORD(buf.epoch) = 1024;
            v63 = 813;
            v64 = 2048;
            v65 = v15;
            v66 = 1024;
            v67 = v53;
            v68 = 1024;
            v69 = v54;
            v70 = 2048;
            v71 = v31;
            v72 = 1024;
            v73 = a6;
            v74 = 1024;
            v75 = v55;
            _os_log_debug_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] for streamID=%u dequeue and display frame. RTPTimestamp=%u presentationTime=%f shouldShowFrame=%d canStopVideoStall=%d", &buf, 0x48u);
          }
        }

        _VideoReceiver_ShowFrame(v15, v32);
        _VideoReceiver_CheckAndRequestKeyFrame(v15, v32);
        VCVideoReceiverDecodedFrame_Destroy(&v61);
      }

      else
      {
        _VideoReceiver_DequeueAndDecode(v15, *(a2 + 8), *a2, *(a2 + 16));
      }

LABEL_60:
      if (!_VideoReceiver_CanDequeue(v15, v9, *(a2 + 8)))
      {
        goto LABEL_78;
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    v24 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 136315906;
        *(&buf.value + 4) = v22;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "_VideoReceiver_VideoAlarmCommon";
        HIWORD(buf.epoch) = 1024;
        v63 = 2687;
        v64 = 1024;
        LODWORD(v65) = v9;
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver is null. alarmType=%d", &buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      _VideoReceiver_VideoAlarmCommon_cold_2();
    }
  }
}

BOOL _VideoReceiver_CanDequeue(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1 + 40960;
  v19 = 0;
  if (a2)
  {
    pthread_mutex_lock((a1 + 43056));
    if (*(a1 + 1558) == 1 && *(a1 + 1568) == 1)
    {
      v6 = *(v5 + 2536);
      if (v6)
      {
        v7 = *(v6 + 24);
        v19 = *(v5 + 2544);
        v8 = v7 - v3;
        if (v8)
        {
          v9 = v8 > 0x7FFFFFFE;
        }

        else
        {
          v9 = 1;
        }

        CanDequeueFromSimpleQueue = v9;
      }

      else
      {
        CanDequeueFromSimpleQueue = 0;
        v19 = 0;
      }
    }

    else
    {
      CanDequeueFromSimpleQueue = _VideoReceiver_CanDequeueFromSimpleQueue(a1, 1, v3, &v19);
    }

    pthread_mutex_unlock((a1 + 43056));
  }

  else if (*(a1 + 1558) == 1 && *(a1 + 1568) == 1)
  {
    v11 = *(a1 + 43480);
    if (v11)
    {
      v12 = *(v11 + 16);
      v19 = *(a1 + 43488);
      v13 = v12 - a3;
      if (v13)
      {
        v14 = v13 > 0x7FFFFFFE;
      }

      else
      {
        v14 = 1;
      }

      CanDequeueFromSimpleQueue = v14;
    }

    else
    {
      CanDequeueFromSimpleQueue = 0;
    }
  }

  else
  {
    CanDequeueFromSimpleQueue = _VideoReceiver_CanDequeueFromSimpleQueue(a1, 0, a3, &v19);
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
        *buf = 136316674;
        v21 = v15;
        v22 = 2080;
        v23 = "_VideoReceiver_CanDequeue";
        v24 = 1024;
        v25 = 775;
        v26 = 2048;
        v27 = a1;
        v28 = 1024;
        v29 = v3;
        v30 = 1024;
        v31 = v19;
        v32 = 1024;
        v33 = CanDequeueFromSimpleQueue;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] alarmRTPTimestamp=%u count=%d canDequeue=%d", buf, 0x38u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      v21 = v15;
      v22 = 2080;
      v23 = "_VideoReceiver_CanDequeue";
      v24 = 1024;
      v25 = 775;
      v26 = 2048;
      v27 = a1;
      v28 = 1024;
      v29 = v3;
      v30 = 1024;
      v31 = v19;
      v32 = 1024;
      v33 = CanDequeueFromSimpleQueue;
      _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] alarmRTPTimestamp=%u count=%d canDequeue=%d", buf, 0x38u);
    }
  }

  return CanDequeueFromSimpleQueue;
}

void _VideoReceiver_DequeueAndDecode(uint64_t a1, unsigned int a2, double a3, double a4)
{
  v6 = a1;
  v225 = *MEMORY[0x1E69E9840];
  v7 = a1 + 40900;
  if (*(a1 + 1558) != 1 || *(a1 + 1568) != 1)
  {
    v8 = CMSimpleQueueDequeue(*(a1 + 43040));
    cf = 0;
    v207 = v8;
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_210:
    _VideoReceiver_DequeueAndDecode_cold_18();
    goto LABEL_264;
  }

  v8 = *(a1 + 43480);
  if (!v8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VideoReceiver_DequeueAndDecode_cold_17();
      }
    }

    v207 = 0;
    goto LABEL_210;
  }

  *(a1 + 43480) = v8[30];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v8 + 12);
        *buf = 136316162;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_DequeueFromOrderedFrameForDecodeQueue";
        *&buf[22] = 1024;
        *&buf[24] = 2564;
        *&buf[28] = 2048;
        *&buf[30] = a1;
        *&buf[38] = 1024;
        *&buf[40] = v12;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Dequeuing decodingOrder=%d", buf, 0x2Cu);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v163 = *(v8 + 12);
      *buf = 136316162;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoReceiver_DequeueFromOrderedFrameForDecodeQueue";
      *&buf[22] = 1024;
      *&buf[24] = 2564;
      *&buf[28] = 2048;
      *&buf[30] = a1;
      *&buf[38] = 1024;
      *&buf[40] = v163;
      _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Dequeuing decodingOrder=%d", buf, 0x2Cu);
    }
  }

  *(v7 + 2592) = *(v8 + 12);
  --*(v7 + 2588);
  cf = 0;
  v207 = v8;
  v6 = a1;
LABEL_13:
  *(v8 + 4) = a3;
  v13 = *(v6 + 1306);
  if (*(v6 + 1558) == 1 && *(v6 + 1568) == 1)
  {
    StreamWithStreamIndex = _VideoReceiver_GetStreamWithStreamIndex(v6, *(v8 + 52));
  }

  else if (v13 < 2)
  {
    StreamWithStreamIndex = _VideoReceiver_GetStream(v6, *(v8 + 10), *(v8 + 64));
  }

  else
  {
    StreamWithStreamIndex = _VideoReceiver_GetStreamWithTileIndex(v6, *(v8 + 22));
  }

  v15 = StreamWithStreamIndex;
  if (!StreamWithStreamIndex)
  {
    _VideoReceiver_DequeueAndDecode_cold_16();
    goto LABEL_264;
  }

  if (*(v6 + 1397) == 1)
  {
    v16 = *(v8 + 82);
  }

  else
  {
    v16 = 0;
  }

  v194 = v13;
  CanDequeue = _VideoReceiver_CanDequeue(v6, 0, a2);
  v193 = v16 | CanDequeue;
  v198 = v15;
  v195 = (v13 > 1) | (v16 | CanDequeue) ^ 1;
  if (!((v13 > 1) | ((v16 | CanDequeue) ^ 1) & 1))
  {
    v18 = CanDequeue;
    v19 = v6;
    v20 = *(v7 + 1524);
    v21 = *(v8 + 4);
    v22 = *(v19 + 1176);
    if (VRTraceGetErrorLogLevelForModule() >= 7 && (v23 = VRTraceErrorLogLevelToCSTR(), v24 = *MEMORY[0x1E6986650], os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
    {
      v25 = (v20 - v21);
      *buf = 136318722;
      v26 = *(v8 + 2);
      v27 = *(v8 + 4);
      v28 = *(v8 + 12);
      v29 = *(v7 + 2592);
      v30 = *(v7 + 1524);
      *&buf[4] = v23;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoReceiver_DequeueAndDecode";
      *&buf[22] = 1024;
      *&buf[24] = 2609;
      *&buf[28] = 2048;
      v6 = a1;
      *&buf[30] = a1;
      *&buf[38] = 1024;
      *&buf[40] = v26;
      *&buf[44] = 1024;
      *&buf[46] = v27;
      *&buf[50] = 1024;
      *&buf[52] = v28;
      *&buf[56] = 1024;
      *&buf[58] = v29;
      *&buf[62] = 1024;
      *&buf[64] = a2;
      *&buf[68] = 1024;
      *&buf[70] = v30;
      *&buf[74] = 2048;
      *&buf[76] = 104;
      *&buf[84] = 1024;
      *&buf[86] = 0;
      *&buf[90] = 1024;
      *&buf[92] = v16 & 1;
      *&buf[96] = 1024;
      *&buf[98] = v18;
      *&buf[102] = 2048;
      *&buf[104] = v25 / v22;
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] decode but skip frame payload=%d sampleBuffer.timestamp=%u decodingOrder=%d lastFrameDecodingOrderDequeuedForDecode=%d alarmRtpTimestamp=%u playoutRTPTimestamp=%u argsLength=%zu shouldShowFrame=%d didFrameArriveLate=%d canDequeue=%d exceededTime=%2.4f", buf, 0x70u);
      v8 = v207;
    }

    else
    {
      v6 = a1;
    }

    v15 = v198;
    ++*(v7 + 1880);
  }

  v31 = *(v8 + 24);
  if (*(v7 + 1848))
  {
    v32 = *(v7 + 1868);
    if (v31 != v32 && (v31 - v32) <= 0x7FFEu)
    {
      if (v31 < v32)
      {
        v32 += 0x10000;
      }

      v32 = v32 & 0xFFFF0000 | v31;
      *(v7 + 1868) = v32;
    }
  }

  else
  {
    *(v7 + 1868) = v31;
    *(v7 + 1860) = v31;
    *(v7 + 1848) = 1;
    LOWORD(v32) = v31;
  }

  v33 = v32 - *(v7 + 1860);
  *(v7 + 1862) = v33 + 1;
  if (!*(v7 + 1864))
  {
    *(v7 + 1864) = v33;
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (ErrorLogLevelForModule >= 8)
  {
    v36 = VRTraceErrorLogLevelToCSTR();
    v37 = *MEMORY[0x1E6986650];
    v38 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      ErrorLogLevelForModule = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      if (ErrorLogLevelForModule)
      {
        v39 = *(v7 + 1862);
        v40 = *(v7 + 1864);
        v41 = *(v7 + 1868);
        v42 = *(v7 + 1860);
        *buf = 136316930;
        *&buf[4] = v36;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_UpdateExpectedNetworkFrameNumber";
        *&buf[22] = 1024;
        *&buf[24] = 2500;
        *&buf[28] = 2048;
        *&buf[30] = v6;
        *&buf[38] = 1024;
        *&buf[40] = v39;
        *&buf[44] = 1024;
        *&buf[46] = v40;
        *&buf[50] = 1024;
        *&buf[52] = v41;
        *&buf[56] = 1024;
        *&buf[58] = v42;
        _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] expectedNetworkFrameNumber=%d lastReportedExpectedNetworkFrameNumber=%d maxFrameSequenceNumber=%d baseFrameSequenceNumber=%d", buf, 0x3Eu);
      }
    }

    else
    {
      ErrorLogLevelForModule = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
      if (ErrorLogLevelForModule)
      {
        v159 = *(v7 + 1862);
        v160 = *(v7 + 1864);
        v161 = *(v7 + 1868);
        v162 = *(v7 + 1860);
        *buf = 136316930;
        *&buf[4] = v36;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_UpdateExpectedNetworkFrameNumber";
        *&buf[22] = 1024;
        *&buf[24] = 2500;
        *&buf[28] = 2048;
        *&buf[30] = v6;
        *&buf[38] = 1024;
        *&buf[40] = v159;
        *&buf[44] = 1024;
        *&buf[46] = v160;
        *&buf[50] = 1024;
        *&buf[52] = v161;
        *&buf[56] = 1024;
        *&buf[58] = v162;
        _os_log_debug_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] expectedNetworkFrameNumber=%d lastReportedExpectedNetworkFrameNumber=%d maxFrameSequenceNumber=%d baseFrameSequenceNumber=%d", buf, 0x3Eu);
      }
    }
  }

  if (*(v7 + 2045) == 1)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (ErrorLogLevelForModule >= 7)
    {
      v43 = VRTraceErrorLogLevelToCSTR();
      v44 = *MEMORY[0x1E6986650];
      ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (ErrorLogLevelForModule)
      {
        v45 = *(v8 + 10);
        v46 = *(v8 + 2);
        v47 = *(v8 + 4);
        *buf = 136317186;
        *&buf[4] = v43;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_DequeueAndDecode";
        *&buf[22] = 1024;
        *&buf[24] = 2617;
        *&buf[28] = 2048;
        *&buf[30] = v6;
        *&buf[38] = 1024;
        *&buf[40] = v45;
        *&buf[44] = 1024;
        *&buf[46] = v46;
        *&buf[50] = 1024;
        *&buf[52] = v47;
        *&buf[56] = 2048;
        *&buf[58] = 104;
        *&buf[66] = 1024;
        *&buf[68] = v195 & 1;
        _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] for streamID:%d dequeue frame for decode payload:%d timestamp:%u argsLength:%zu shouldShowFrame:%d", buf, 0x48u);
      }
    }
  }

  v208 = -1431655766;
  v209 = -1431655766;
  v48 = micro(ErrorLogLevelForModule, v35);
  cf = 0;
  if (*(v7 + 2028) == 1 && *(v7 + 2036))
  {
    v49 = *(v8 + 4);
    memset(md, 170, 20);
    dataPointerOut[0] = 0;
    lengthAtOffsetOut = 0;
    *&v50 = 0xAAAAAAAAAAAAAAAALL;
    *(&v50 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&c.data[9] = v50;
    *&c.data[13] = v50;
    *&c.data[1] = v50;
    *&c.data[5] = v50;
    *&c.h0 = v50;
    *&c.h4 = v50;
    CC_SHA1_Init(&c);
    if (CMBlockBufferGetDataPointer(v8[14], 0, &lengthAtOffsetOut, 0, dataPointerOut))
    {
      v51 = 0;
    }

    else
    {
      v52 = 0;
      do
      {
        CC_SHA1_Update(&c, dataPointerOut[0], lengthAtOffsetOut);
        v52 += lengthAtOffsetOut;
      }

      while (!CMBlockBufferGetDataPointer(v8[14], v52, &lengthAtOffsetOut, 0, dataPointerOut));
      v51 = v52;
    }

    CC_SHA1_Final(md, &c);
    v53 = *(v7 + 2036);
    fprintf(v53, "[%08X:%dB SHA1:", v49, v51);
    for (i = 0; i != 20; ++i)
    {
      fprintf(v53, "%02X", md[i]);
    }

    fwrite("]\n", 2uLL, 1uLL, v53);
    *&v55 = 0xAAAAAAAAAAAAAAAALL;
    *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&buf[284] = v55;
    *&buf[257] = v55;
    *&buf[273] = v55;
    *&buf[241] = v55;
    *&buf[225] = v55;
    *&buf[209] = v55;
    *&buf[193] = v55;
    *&buf[177] = v55;
    *&buf[161] = v55;
    *&buf[145] = v55;
    *&buf[129] = v55;
    *&buf[113] = v55;
    *&buf[97] = v55;
    *&buf[81] = v55;
    *&buf[65] = v55;
    *&buf[49] = v55;
    *&buf[33] = v55;
    *&buf[17] = v55;
    *&buf[1] = v55;
    LODWORD(v221) = -1431655766;
    v219 = v55;
    v220 = v55;
    *&valuePtr[32] = v55;
    *&valuePtr[48] = v55;
    *valuePtr = v55;
    *&valuePtr[16] = v55;
    buf[0] = 0;
    dataPointerOut[0] = 0;
    lengthAtOffsetOut = 0;
    if (!CMBlockBufferGetDataPointer(v8[14], 0, &lengthAtOffsetOut, 0, dataPointerOut))
    {
      v56 = 0;
      v57 = 0;
      do
      {
        v58 = lengthAtOffsetOut;
        if (lengthAtOffsetOut)
        {
          for (j = 0; j < lengthAtOffsetOut; ++j)
          {
            __sprintf_chk(valuePtr, 0, 0x64uLL, " %02X", dataPointerOut[0][j]);
            __strlcat_chk(buf, valuePtr, 300, 300);
            if ((~(v56 + j) & 0x1F) == 0)
            {
              fprintf(v53, "%s\n", buf);
              buf[0] = 0;
            }

            v58 = lengthAtOffsetOut;
          }

          v56 += j;
        }

        v57 += v58;
      }

      while (!CMBlockBufferGetDataPointer(v8[14], v57, &lengthAtOffsetOut, 0, dataPointerOut));
      v15 = v198;
      if ((v56 & 0x1F) != 0)
      {
        fprintf(v53, "%s\n", buf);
      }
    }
  }

  v60 = *(v8 + 2);
  if (v60 == 100)
  {
    v61 = 1752589105;
  }

  else
  {
    v61 = 1635148593;
  }

  *(v7 + 2500) = v61;
  v62 = *(v8 + 3);
  v63 = *(v8 + 4);
  if (v60 == 124 || v60 == 110)
  {
    *(v7 + 1656) = 1;
  }

  if (v62 == 2)
  {
    v64 = *(v8 + 58);
    v211 = v64;
    lengthAtOffsetOut = 0;
    memset(buf, 170, sizeof(buf));
    v65 = a1;
    if (v64 >= 0x801)
    {
      v64 = 2048;
      v211 = 2048;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v66 = VRTraceErrorLogLevelToCSTR();
        v67 = *MEMORY[0x1E6986650];
        v64 = 2048;
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 136315906;
          *&valuePtr[4] = v66;
          *&valuePtr[12] = 2080;
          *&valuePtr[14] = "_VideoReceiver_CreateCompressedVideoFrameForDecode";
          *&valuePtr[22] = 1024;
          *&valuePtr[24] = 1330;
          *&valuePtr[28] = 2048;
          *&valuePtr[30] = 2048;
          _os_log_error_impl(&dword_1DB56E000, v67, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d ParameterSet size=%zu too large", valuePtr, 0x26u);
          v64 = v211;
        }

        v15 = v198;
      }
    }

    v68 = CMBlockBufferAccessDataBytes(v8[14], 0, v64, buf, &lengthAtOffsetOut);
    if (v68)
    {
      v69 = v68;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_199;
      }

      v70 = VRTraceErrorLogLevelToCSTR();
      v71 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_199;
      }

      *valuePtr = 136316162;
      *&valuePtr[4] = v70;
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = "_VideoReceiver_CreateCompressedVideoFrameForDecode";
      *&valuePtr[22] = 1024;
      *&valuePtr[24] = 1335;
      *&valuePtr[28] = 2048;
      *&valuePtr[30] = a1;
      *&valuePtr[38] = 1024;
      *&valuePtr[40] = v69;
      v129 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] CMBlockBufferAccessDataBytes returned error:%i";
      goto LABEL_212;
    }

    v78 = lengthAtOffsetOut;
    if ((VideoDecoder_IsFormatCompatible_SPSPPS(*(v15 + 542), v61, lengthAtOffsetOut, &v211, 0, &v209, &v208) & 0x80000000) != 0)
    {
      *(v223 + 14) = 0xAAAAAAAAAAAAAAAALL;
      *&v121 = 0xAAAAAAAAAAAAAAAALL;
      *(&v121 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v222 = v121;
      v223[0] = v121;
      v220 = v121;
      v221 = v121;
      *&valuePtr[48] = v121;
      v219 = v121;
      *&valuePtr[16] = v121;
      *&valuePtr[32] = v121;
      *valuePtr = v121;
      v122 = *(v15 + 7);
      c.h0 = v60;
      v123 = CFNumberCreate(*(v7 + 2364), kCFNumberIntType, &c);
      Value = CFDictionaryGetValue(v122, v123);
      CFRelease(v123);
      if (!Value || !CFStringGetCString(Value, valuePtr, 150, 0x8000100u) || !valuePtr[0])
      {
        valuePtr[0] = 0;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v148 = VRTraceErrorLogLevelToCSTR();
          v149 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            c.h0 = 136316162;
            *&c.h1 = v148;
            LOWORD(c.h3) = 2080;
            *(&c.h3 + 2) = "_VideoReceiver_CreateCompressedVideoFrameForDecode";
            HIWORD(c.Nl) = 1024;
            c.Nh = 1349;
            LOWORD(c.data[0]) = 2048;
            *(c.data + 2) = a1;
            HIWORD(c.data[2]) = 1024;
            c.data[3] = v60;
            _os_log_error_impl(&dword_1DB56E000, v149, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] No matched feature list string for payload: %d", &c, 0x2Cu);
          }
        }

        v15 = v198;
        goto LABEL_231;
      }

      if ((*v7 & 0xFFFFFFFE) == 2)
      {
        v125 = 42;
      }

      else
      {
        v125 = 1;
      }

      v126 = *(v7 + 2292);
      v15 = v198;
      if (*(v198 + 108) == 1)
      {
        v126 = v126 & 0xFFFFFFF1 | (2 * (v198[28] & 7));
      }

      c.Nl = -1431655766;
      *&c.Nh = 0xAAAAAAAAAAAAAAAALL;
      *&c.h0 = valuePtr;
      c.h3 = -1431655935;
      c.h2 = v60;
      c.h4 = v126;
      LOWORD(c.Nl) = *(a1 + 1306);
      c.Nh = v125;
      v127 = *(v8 + 58);
      *&c.data[1] = v8[14];
      *&c.data[3] = v127;
      dataPointerOut[0] = v78;
      dataPointerOut[1] = &v211;
      dataPointerOut[2] = &v209;
      dataPointerOut[3] = &v208;
      if ((VideoDecoder_NewFormat_InitDecoder(*(v198 + 542), &c, dataPointerOut) & 0x80000000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_199;
        }

        v128 = VRTraceErrorLogLevelToCSTR();
        v71 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_199;
        }

        *md = 136316162;
        *&md[4] = v128;
        *&md[12] = 2080;
        *&md[14] = "_VideoReceiver_CreateCompressedVideoFrameForDecode";
        *&md[22] = 1024;
        *v215 = 1380;
        *&v215[4] = 2048;
        *&v215[6] = a1;
        v216 = 1024;
        v217 = v126;
        v129 = "VideoReceiver [%s] %s:%d VideoReceiver=%p decoderFlags=%d VideoDecoder_NewFormat_SPSPPS failed";
        v130 = md;
        goto LABEL_213;
      }
    }

    v79 = v208;
    *(v7 + 1648) = v209;
    *(v7 + 1652) = v79;
    *(v7 + 1656) = 1;
    *(v7 + 2062) = *v15;
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_111;
    }

    v80 = VRTraceErrorLogLevelToCSTR();
    v81 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_111;
    }

    v82 = *(a1 + 1296);
    v83 = *v15;
    *valuePtr = 136317186;
    *&valuePtr[4] = v80;
    *&valuePtr[12] = 2080;
    *&valuePtr[14] = "_VideoReceiver_CreateCompressedVideoFrameForDecode";
    *&valuePtr[22] = 1024;
    *&valuePtr[24] = 1390;
    *&valuePtr[28] = 2048;
    *&valuePtr[30] = a1;
    *&valuePtr[38] = 2048;
    *&valuePtr[40] = v82;
    *&valuePtr[48] = 2048;
    *&valuePtr[50] = v15;
    *&valuePtr[58] = 1024;
    *&valuePtr[60] = v83;
    LOWORD(v219) = 1024;
    *(&v219 + 2) = v209;
    WORD3(v219) = 1024;
    DWORD2(v219) = v208;
    goto LABEL_94;
  }

  LODWORD(lengthAtOffsetOut) = -1431655766;
  LODWORD(v211) = -1431655766;
  v65 = a1;
  if (!v8[17])
  {
    goto LABEL_119;
  }

  v72 = v8[18];
  v73 = v8[19] + 4;
  dataPointerOut[0] = v72 - 4;
  if ((VideoDecoder_IsFormatCompatible_ImgDesc(*(v15 + 542), v73, v72 - 4, 0) & 0x80000000) != 0)
  {
    *&buf[142] = 0xAAAAAAAAAAAAAAAALL;
    *&v84 = 0xAAAAAAAAAAAAAAAALL;
    *(&v84 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&buf[112] = v84;
    *&buf[128] = v84;
    *&buf[80] = v84;
    *&buf[96] = v84;
    *&buf[48] = v84;
    *&buf[64] = v84;
    *&buf[16] = v84;
    *&buf[32] = v84;
    *buf = v84;
    v85 = *(v15 + 7);
    *valuePtr = v60;
    v86 = CFNumberCreate(*(v7 + 2364), kCFNumberIntType, valuePtr);
    v87 = CFDictionaryGetValue(v85, v86);
    CFRelease(v86);
    if (!v87 || !CFStringGetCString(v87, buf, 150, 0x8000100u) || !buf[0])
    {
      buf[0] = 0;
      if (v60 == 126)
      {
        v88 = *(v198 + 7);
        *valuePtr = 123;
        v89 = CFNumberCreate(*(v7 + 2364), kCFNumberIntType, valuePtr);
        v90 = CFDictionaryGetValue(v88, v89);
        CFRelease(v89);
        if (v90 && CFStringGetCString(v90, buf, 150, 0x8000100u) && buf[0])
        {
          goto LABEL_102;
        }

        buf[0] = 0;
      }

      v15 = v198;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v150 = VRTraceErrorLogLevelToCSTR();
        v151 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 136316162;
          *&valuePtr[4] = v150;
          *&valuePtr[12] = 2080;
          *&valuePtr[14] = "_VideoReceiver_CreateCompressedVideoFrameForDecode";
          *&valuePtr[22] = 1024;
          *&valuePtr[24] = 1424;
          *&valuePtr[28] = 2048;
          *&valuePtr[30] = a1;
          *&valuePtr[38] = 1024;
          *&valuePtr[40] = v60;
          _os_log_error_impl(&dword_1DB56E000, v151, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] No matched feature list string for payload: %d", valuePtr, 0x2Cu);
        }
      }

      goto LABEL_231;
    }

LABEL_102:
    if ((*v7 & 0xFFFFFFFE) == 2)
    {
      v91 = 42;
    }

    else
    {
      v91 = 1;
    }

    v92 = *(v7 + 2292);
    v15 = v198;
    if (*(v198 + 108) == 1)
    {
      v92 = v92 & 0xFFFFFFF1 | (2 * (v198[28] & 7));
    }

    c.Nl = -1431655766;
    *&c.Nh = 0xAAAAAAAAAAAAAAAALL;
    *&c.h0 = buf;
    c.h3 = -1431655936;
    c.h2 = 128;
    c.h4 = v92;
    LOWORD(c.Nl) = *(a1 + 1306);
    c.Nh = v91;
    *&c.data[1] = 0;
    *&c.data[3] = 0;
    *md = v73;
    *&md[8] = dataPointerOut;
    *&md[16] = &lengthAtOffsetOut;
    *v215 = &v211;
    if ((VideoDecoder_NewFormat_InitDecoder(*(v198 + 542), &c, md) & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_199;
      }

      v153 = VRTraceErrorLogLevelToCSTR();
      v71 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_199;
      }

      *valuePtr = 136316162;
      *&valuePtr[4] = v153;
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = "_VideoReceiver_CreateCompressedVideoFrameForDecode";
      *&valuePtr[22] = 1024;
      *&valuePtr[24] = 1457;
      *&valuePtr[28] = 2048;
      *&valuePtr[30] = a1;
      *&valuePtr[38] = 1024;
      *&valuePtr[40] = v92;
      v129 = "VideoReceiver [%s] %s:%d VideoReceiver=%p decoderFlags=%d VideoDecoder_NewFormat_SPSPPS failed";
LABEL_212:
      v130 = valuePtr;
LABEL_213:
      _os_log_error_impl(&dword_1DB56E000, v71, OS_LOG_TYPE_ERROR, v129, v130, 0x2Cu);
      goto LABEL_199;
    }

    *(v7 + 1648) = lengthAtOffsetOut;
    *(v7 + 1652) = v211;
    *(v7 + 1656) = 1;
    *(v7 + 2062) = *v198;
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_111;
    }

    v93 = VRTraceErrorLogLevelToCSTR();
    v81 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_111;
    }

    v94 = *(a1 + 1296);
    v95 = *v198;
    *valuePtr = 136317186;
    *&valuePtr[4] = v93;
    *&valuePtr[12] = 2080;
    *&valuePtr[14] = "_VideoReceiver_CreateCompressedVideoFrameForDecode";
    *&valuePtr[22] = 1024;
    *&valuePtr[24] = 1464;
    *&valuePtr[28] = 2048;
    *&valuePtr[30] = a1;
    *&valuePtr[38] = 2048;
    *&valuePtr[40] = v94;
    *&valuePtr[48] = 2048;
    *&valuePtr[50] = v198;
    *&valuePtr[58] = 1024;
    *&valuePtr[60] = v95;
    LOWORD(v219) = 1024;
    *(&v219 + 2) = lengthAtOffsetOut;
    WORD3(v219) = 1024;
    DWORD2(v219) = v211;
LABEL_94:
    _os_log_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] participantId[%llu] stream[%p] streamId[%d] Got ImgDesc:%dx%d", valuePtr, 0x4Cu);
LABEL_111:
    v96 = (v7 + 1772);
    v97 = *(v7 + 1772);
    if (v97)
    {
      CFRelease(v97);
      *v96 = 0;
    }

    VideoDecoder_GetFormatDescription(*(v15 + 542), (v7 + 1772));
    if (*v96)
    {
      CFRetain(*v96);
      if (*(v65 + 1212))
      {
        VideoReceiver_DumpRecvSPSPPS(v65, v60, v15);
      }
    }

    v98 = *(v7 + 1700);
    if (v98)
    {
      CVPixelBufferPoolRelease(v98);
      *(v7 + 1700) = 0;
    }

    VideoDecoder_GetBufferPool(*(v15 + 542), v7 + 1700);
    goto LABEL_119;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v74 = VRTraceErrorLogLevelToCSTR();
    v75 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v76 = *(v7 + 2062);
      v77 = *v15;
      *buf = 136316418;
      *&buf[4] = v74;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoReceiver_CreateCompressedVideoFrameForDecode";
      *&buf[22] = 1024;
      *&buf[24] = 1485;
      *&buf[28] = 2048;
      *&buf[30] = a1;
      *&buf[38] = 1024;
      *&buf[40] = v76;
      *&buf[44] = 1024;
      *&buf[46] = v77;
      _os_log_impl(&dword_1DB56E000, v75, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] update lastKeyFrameStreamId from %d to %d", buf, 0x32u);
    }
  }

  *(v7 + 2062) = *v15;
LABEL_119:
  if (!*(v7 + 1656))
  {
LABEL_199:
    v152 = 0;
    goto LABEL_232;
  }

  v99 = v8[16];
  if (v99)
  {
    if (*(v65 + 1212))
    {
      v100 = *v15;
      c.h0 = 0x1000000;
      if (*v7 == 1 && *(v7 + 2060) != v100)
      {
        VideoReceiver_DumpRecvCreate(v65, v100);
      }

      v101 = (v7 + 2068);
      if (*(v7 + 2068))
      {
        *buf = 0xAAAAAAAAAAAAAAAALL;
        *valuePtr = 0;
        if (!CMBlockBufferGetDataPointer(v99, 0, buf, 0, valuePtr))
        {
          v102 = 0;
          do
          {
            v103 = bswap32(**valuePtr) + 4;
            fwrite(&c, 1uLL, 4uLL, *v101);
            v102 += 4;
            if (v102 != v103)
            {
              do
              {
                CMBlockBufferGetDataPointer(v99, v102, buf, 0, valuePtr);
                if (*buf >= v103 - v102)
                {
                  v104 = v103 - v102;
                }

                else
                {
                  v104 = *buf;
                }

                fwrite(*valuePtr, 1uLL, v104, *v101);
                v102 += v104;
              }

              while (v102 != v103);
              v102 = v103;
            }
          }

          while (!CMBlockBufferGetDataPointer(v99, v102, buf, 0, valuePtr));
        }

        v65 = a1;
      }
    }

    if (*(v65 + 1200))
    {
      v105 = *(v7 + 1772);
      if (v105)
      {
        VideoReceiverUtil_CaptureBitstreamFile(v8[16], *(v65 + 1180) >> 2, v65 + 42592, v105, (v63 - *(v7 + 1760)) >> 2);
      }
    }

    v106 = *(MEMORY[0x1E6960CF0] + 48);
    *&buf[32] = *(MEMORY[0x1E6960CF0] + 32);
    *&buf[48] = v106;
    *&buf[64] = *(MEMORY[0x1E6960CF0] + 64);
    v107 = *(MEMORY[0x1E6960CF0] + 16);
    *buf = *MEMORY[0x1E6960CF0];
    *&buf[16] = v107;
    CMTimeMake(valuePtr, (*(v8 + 4) * 1000000000.0), 1000000000);
    *&buf[24] = *valuePtr;
    *&buf[48] = *MEMORY[0x1E6960C70];
    v108 = *(MEMORY[0x1E6960C70] + 16);
    *&buf[40] = *&valuePtr[16];
    *&buf[64] = v108;
    CMTimeMake(valuePtr, 1, 1);
    *buf = *valuePtr;
    *&buf[16] = *&valuePtr[16];
    v109 = *(v8 + 2);
    v110 = (v109 == 124) & *(v7 + 2573);
    *(v7 + 2573) = v110;
    if (v109 != 124 && v109 != 110)
    {
      if (*v15 != *(v7 + 2062) && (*(v15 + 70) & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v154 = VRTraceErrorLogLevelToCSTR();
          v155 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v156 = *v15;
            v157 = *(v7 + 2062);
            v158 = *(v8 + 4);
            *valuePtr = 136316930;
            *&valuePtr[4] = v154;
            *&valuePtr[12] = 2080;
            *&valuePtr[14] = "_VideoReceiver_CreateCompressedVideoFrameForDecode";
            *&valuePtr[22] = 1024;
            *&valuePtr[24] = 1534;
            *&valuePtr[28] = 2048;
            *&valuePtr[30] = v65;
            *&valuePtr[38] = 1024;
            *&valuePtr[40] = v156;
            *&valuePtr[44] = 1024;
            *&valuePtr[46] = v157;
            *&valuePtr[50] = 1024;
            *&valuePtr[52] = v158;
            *&valuePtr[56] = 1024;
            *&valuePtr[58] = v156;
            _os_log_impl(&dword_1DB56E000, v155, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Skip frame due to mismatch with decoder. streamID=%d, lastKeyFrameStreamId=%d, timestamp=%u. Request key frame for streamID=%d", valuePtr, 0x3Eu);
          }
        }

        goto LABEL_199;
      }

      v119 = v8[14];
      v120 = *(v7 + 1772);
      *&valuePtr[32] = *&buf[32];
      *&valuePtr[48] = *&buf[48];
      *&v219 = *&buf[64];
      *valuePtr = *buf;
      *&valuePtr[16] = *&buf[16];
      SampleFromBuffer = VideoUtil_CreateSampleFromBuffer(v119, valuePtr, v120);
      cf = SampleFromBuffer;
      if (SampleFromBuffer)
      {
LABEL_150:
        LOBYTE(lengthAtOffsetOut) = *(v8 + 22);
        v113 = (v7 + 2364);
        v114 = CFNumberCreate(*(v7 + 2364), kCFNumberCharType, &lengthAtOffsetOut);
        if (v114)
        {
          v115 = v114;
          CMSetAttachment(SampleFromBuffer, @"FramePriority", v114, 1u);
          CFRelease(v115);
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v116 = VRTraceErrorLogLevelToCSTR();
            v117 = *MEMORY[0x1E6986650];
            v118 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 136316162;
                *&valuePtr[4] = v116;
                *&valuePtr[12] = 2080;
                *&valuePtr[14] = "_VideoReceiver_PrepareDecodeSampleBufferAttachments";
                *&valuePtr[22] = 1024;
                *&valuePtr[24] = 1283;
                *&valuePtr[28] = 1024;
                *&valuePtr[30] = lengthAtOffsetOut;
                *&valuePtr[34] = 2112;
                *&valuePtr[36] = @"FramePriority";
                _os_log_impl(&dword_1DB56E000, v117, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d [Media Priority] Attaching video priority=%u as kVCPixelBufferOptionKey_FramePriority(%@)", valuePtr, 0x2Cu);
              }
            }

            else if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
            {
              _VideoReceiver_DequeueAndDecode_cold_4();
            }
          }

          LODWORD(dataPointerOut[0]) = *(v8 + 4);
          v131 = CFNumberCreate(*v113, kCFNumberSInt32Type, dataPointerOut);
          if (v131)
          {
            v132 = v131;
            CMSetAttachment(SampleFromBuffer, @"rtpTimestsamp", v131, 0);
            CFRelease(v132);
            *&c.h0 = VideoUtil_ConstructSubFrameIdentifer(*(v8 + 12), *(v8 + 22));
            v133 = CFNumberCreate(*v113, kCFNumberSInt64Type, &c);
            v15 = v198;
            if (v133)
            {
              v134 = v133;
              CMSetAttachment(SampleFromBuffer, @"subFrameIndentifier", v133, 0);
              CFRelease(v134);
              kdebug_trace();
              if (!*(v65 + 1576))
              {
                goto LABEL_178;
              }

              SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(SampleFromBuffer, 1u);
              ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
              *valuePtr = VCCameraStatusUtil_RotationAngleForCameraStatusBits(*(v7 + 2220));
              v137 = CFNumberCreate(*v113, kCFNumberSInt32Type, valuePtr);
              if (v137)
              {
                v138 = v137;
                CFDictionarySetValue(ValueAtIndex, @"ContentRotationAngle", v137);
                CFRelease(v138);
LABEL_178:
                if (*(v65 + 1306) < 2u)
                {
                  goto LABEL_182;
                }

                v139 = CMSampleBufferGetSampleAttachmentsArray(SampleFromBuffer, 1u);
                v140 = CFArrayGetValueAtIndex(v139, 0);
                *valuePtr = *(v8 + 22);
                v141 = CFNumberCreate(*v113, kCFNumberSInt32Type, valuePtr);
                if (v141)
                {
                  v142 = v141;
                  CFDictionarySetValue(v140, @"TileID", v141);
                  CFRelease(v142);
                  *md = *(v8 + 12);
                  v143 = CFNumberCreate(*v113, kCFNumberSInt32Type, md);
                  if (v143)
                  {
                    v144 = v143;
                    CFDictionarySetValue(v140, @"TileOrder", v143);
                    CFRelease(v144);
LABEL_182:
                    if (*(v65 + 1544))
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 8)
                      {
                        v145 = VRTraceErrorLogLevelToCSTR();
                        v146 = *MEMORY[0x1E6986650];
                        v147 = *MEMORY[0x1E6986650];
                        if (*MEMORY[0x1E6986640] == 1)
                        {
                          if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                          {
                            *valuePtr = 136315650;
                            *&valuePtr[4] = v145;
                            *&valuePtr[12] = 2080;
                            *&valuePtr[14] = "_VideoReceiver_PrepareDecodeSampleBufferAttachments";
                            *&valuePtr[22] = 1024;
                            *&valuePtr[24] = 1301;
                            _os_log_impl(&dword_1DB56E000, v146, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d Attaching decryption context to sample buffer", valuePtr, 0x1Cu);
                          }
                        }

                        else if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
                        {
                          _VideoReceiver_DequeueAndDecode_cold_6();
                        }
                      }

                      FigSampleBufferSetDecryptor();
                    }

                    goto LABEL_231;
                  }

                  _VideoReceiver_DequeueAndDecode_cold_7();
                }

                else
                {
                  _VideoReceiver_DequeueAndDecode_cold_8();
                }

                goto LABEL_226;
              }

              _VideoReceiver_DequeueAndDecode_cold_5();
            }

            else
            {
              _VideoReceiver_DequeueAndDecode_cold_9();
            }
          }

          else
          {
            _VideoReceiver_DequeueAndDecode_cold_10();
            v15 = v198;
          }
        }

        else
        {
          _VideoReceiver_DequeueAndDecode_cold_11();
        }

LABEL_226:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VideoReceiver_DequeueAndDecode_cold_12();
          }
        }

        goto LABEL_229;
      }

      goto LABEL_158;
    }

    if (v110)
    {
      if (!*(v7 + 2644))
      {
        *&valuePtr[16] = 1936287538;
        v111 = *(v7 + 2236);
        *valuePtr = *(v7 + 2276);
        *&valuePtr[8] = v111;
        if ((VCSignalDecoder_Create(*MEMORY[0x1E695E480], valuePtr, (v7 + 2644)) & 0x80000000) != 0)
        {
          _VideoReceiver_DequeueAndDecode_cold_3();
LABEL_229:
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          goto LABEL_231;
        }
      }
    }

    *valuePtr = 0;
    cf = 0;
    *&c.h0 = 0;
    if (CMFormatDescriptionCreate(*(v7 + 2268), 0x6D657461u, 0x64617461u, 0, &c))
    {
      _VideoReceiver_DequeueAndDecode_cold_1();
    }

    else
    {
      if (!CMSampleBufferCreate(*(v7 + 2276), v8[14], 1u, 0, 0, *&c.h0, 1, 1, buf, 0, 0, valuePtr))
      {
        SampleFromBuffer = *valuePtr;
        cf = *valuePtr;
        *valuePtr = 0;
        goto LABEL_147;
      }

      _VideoReceiver_DequeueAndDecode_cold_2();
    }

    if (*valuePtr)
    {
      CFRelease(*valuePtr);
    }

    SampleFromBuffer = 0;
LABEL_147:
    if (*&c.h0)
    {
      CFRelease(*&c.h0);
    }

    if (SampleFromBuffer)
    {
      goto LABEL_150;
    }

LABEL_158:
    _VideoReceiver_DequeueAndDecode_cold_13();
    goto LABEL_229;
  }

LABEL_231:
  pthread_mutex_lock((v65 + 42192));
  SummerAdd(*(v7 + 36), *(v7 + 1500), v48);
  *(v7 + 1500) = 0;
  SummerAdd(*(v7 + 44), *(v7 + 1504), v48);
  *(v7 + 1504) = 0;
  SummerAdd(*(v7 + 52), *(v7 + 1512), v48);
  *(v7 + 1512) = 0;
  SummerAdd(*(v7 + 60), v8[11], v48);
  SummerAdd(*(v7 + 68), *(v7 + 1508), v48);
  *(v7 + 1508) = 0;
  pthread_mutex_unlock((v65 + 42192));
  v152 = 1;
LABEL_232:
  if (*(v8 + 3) == 2)
  {
    VideoPacketBuffer_SetFrameSize(*(v15 + 16), v209, v208);
  }

  if ((v152 & 1) == 0 && (v8[10] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v187 = VRTraceErrorLogLevelToCSTR();
      v188 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v189 = *v15;
        *buf = 136316162;
        *&buf[4] = v187;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_CreateSampleBufferForDecode";
        *&buf[22] = 1024;
        *&buf[24] = 2466;
        *&buf[28] = 2048;
        *&buf[30] = v65;
        *&buf[38] = 1024;
        *&buf[40] = v189;
        _os_log_impl(&dword_1DB56E000, v188, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] CreateCompressedVideoFrameForDecode failed, request key frame for stream %d", buf, 0x2Cu);
      }
    }

    _VideoReceiver_DecoderNeedsRefresh(v65, v15, 0, 0x13u, v48);
  }

  v164 = cf;
  if (!cf)
  {
    _VideoReceiver_DequeueAndDecode_cold_15();
    goto LABEL_264;
  }

  v165 = v207;
  v205 = *(v207 + 4);
  v166 = CFNumberCreate(*(v7 + 2364), kCFNumberSInt32Type, &v205);
  CMSetAttachment(v164, @"rtpTimestsamp", v166, 0);
  v204 = VideoUtil_ConstructSubFrameIdentifer(*(v165 + 12), *(v165 + 22));
  v167 = CFNumberCreate(*(v7 + 2364), kCFNumberSInt64Type, &v204);
  CMSetAttachment(v164, @"subFrameIndentifier", v167, 0);
  v168 = CFNumberCreate(*(v7 + 2364), kCFNumberIntType, v165 + 13);
  CMSetAttachment(v164, @"InterleavedStreamIndex", v168, 0);
  kdebug_trace();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v169 = VRTraceErrorLogLevelToCSTR();
    v170 = *MEMORY[0x1E6986650];
    v171 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
      {
        v172 = v165[4];
        v173 = *(v165 + 23);
        v174 = *(v165 + 22);
        *buf = 136316674;
        *&buf[4] = v169;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_DequeueAndDecode";
        *&buf[22] = 1024;
        *&buf[24] = 2635;
        *&buf[28] = 1024;
        *&buf[30] = v205;
        *&buf[34] = 2048;
        *&buf[36] = v172;
        *&buf[44] = 1024;
        *&buf[46] = v173;
        *&buf[50] = 1024;
        *&buf[52] = v174;
        _os_log_impl(&dword_1DB56E000, v170, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d Start Decode RTPTimestamp=%u PresentationTime=%f isRefreshFrame=%d tileIndex=%u", buf, 0x38u);
      }
    }

    else if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
    {
      v190 = v165[4];
      v191 = *(v165 + 23);
      v192 = *(v165 + 22);
      *buf = 136316674;
      *&buf[4] = v169;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoReceiver_DequeueAndDecode";
      *&buf[22] = 1024;
      *&buf[24] = 2635;
      *&buf[28] = 1024;
      *&buf[30] = v205;
      *&buf[34] = 2048;
      *&buf[36] = v190;
      *&buf[44] = 1024;
      *&buf[46] = v191;
      *&buf[50] = 1024;
      *&buf[52] = v192;
      _os_log_debug_impl(&dword_1DB56E000, v170, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d Start Decode RTPTimestamp=%u PresentationTime=%f isRefreshFrame=%d tileIndex=%u", buf, 0x38u);
    }
  }

  CFRelease(v167);
  CFRelease(v166);
  CFRelease(v168);
  v175 = *(v165 + 22);
  v176 = *(v165 + 23) | (v194 < 2) & (v193 ^ 1);
  HIDWORD(v177) = -1431655766;
  v203 = 0xAAAAAAAAAAAAAAAALL;
  *&v178 = 0xAAAAAAAAAAAAAAAALL;
  *(&v178 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v201 = v178;
  v202 = v178;
  LODWORD(v177) = v205;
  *&v199 = v177;
  WORD2(v199) = *(v165 + 24);
  *(&v199 + 1) = a4;
  v200 = v204;
  LOWORD(v201) = *v198;
  v179 = *(v65 + 1168);
  *(&v201 + 1) = v179;
  v180 = *(v198 + 33);
  LOWORD(v202) = v180;
  BYTE2(v202) = v195 & 1;
  *(&v202 + 3) = 0;
  BYTE5(v202) = v175 != 0;
  BYTE6(v202) = v175;
  BYTE7(v202) = *(v198 + 69);
  BYTE8(v202) = v176;
  BYTE9(v202) = *(v165 + 80);
  BYTE10(v202) = *(v165 + 96);
  HIDWORD(v202) = *(v165 + 25);
  LOWORD(v203) = 0;
  v181 = *(v165 + 2);
  if (v181 == 124 || v181 == 110)
  {
    _VideoReceiver_HandleDataBuffer(v65, v198, &cf, &v199);
    v182 = cf;
    if (!cf)
    {
      goto LABEL_264;
    }

    goto LABEL_263;
  }

  v182 = cf;
  LOBYTE(c.h0) = 0;
  LOBYTE(dataPointerOut[0]) = 0;
  LOBYTE(lengthAtOffsetOut) = 0;
  *(v7 + 1876) = v180 * *(v7 + 2288);
  if ((*(v7 + 1849) & 1) == 0)
  {
    *(v7 + 1849) = 1;
LABEL_252:
    *(v7 + 1852) = a2;
    ++*(v7 + 1874);
    goto LABEL_253;
  }

  v183 = a2 - *(v7 + 1852);
  if (v183 && v183 <= 0x7FFFFFFE)
  {
    goto LABEL_252;
  }

LABEL_253:
  v184 = VideoDecoder_DecodeFrame(*(v198 + 542), v179, &c, dataPointerOut, &lengthAtOffsetOut, v182, &v199);
  if (v184 < 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v185 = VRTraceErrorLogLevelToCSTR();
    v186 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = v185;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoReceiver_DecodeFrame";
      *&buf[22] = 1024;
      *&buf[24] = 2307;
      *&buf[28] = 1024;
      *&buf[30] = 2307;
      *&buf[34] = 2048;
      *&buf[36] = v65;
      *&buf[44] = 1024;
      *&buf[46] = v184;
      _os_log_error_impl(&dword_1DB56E000, v186, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoReceiver.c:%d: VideoReceiver[%p] VideoPlayer_DecodeFrame failed (%08X)", buf, 0x32u);
    }
  }

  if (LOBYTE(c.h0) == 1 && (BYTE9(v202) & 1) == 0)
  {
    _VideoReceiver_DecoderRequestKeyFrame(v65, v198, 0x11u, v199, *(v198 + 100), lengthAtOffsetOut);
  }

  if (LOBYTE(dataPointerOut[0]) != 1)
  {
    if ((v184 & 0x80000000) == 0)
    {
      goto LABEL_262;
    }

LABEL_266:
    _VideoReceiver_DequeueAndDecode_cold_14(v65, v184, v182, buf);
    v182 = *buf;
    if (!*buf)
    {
      goto LABEL_264;
    }

    goto LABEL_263;
  }

  ++*(v7 + 1892);
  if (v184 < 0)
  {
    goto LABEL_266;
  }

LABEL_262:
  if (v182)
  {
LABEL_263:
    CFRelease(v182);
  }

LABEL_264:
  VCVideoReceiverSampleBuffer_Destroy(&v207);
}

BOOL _VideoReceiver_CanDequeueFromSimpleQueue(void *a1, int a2, int a3, int32_t *a4)
{
  if (_VideoReceiver_IsFrameQueueEmpty(a1, a2, 1))
  {
    result = 0;
    *a4 = 0;
  }

  else
  {
    v9 = 5381;
    if (a2)
    {
      v10 = 24;
    }

    else
    {
      v9 = 5380;
      v10 = 16;
    }

    v11 = a1[v9];
    v12 = *(CMSimpleQueueGetHead(v11) + v10);
    *a4 = CMSimpleQueueGetCount(v11);
    return v12 == a3 || (v12 - a3) > 0x7FFFFFFE;
  }

  return result;
}

unsigned int *_VideoReceiver_GetStreamWithStreamIndex(unsigned int *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (v4)
  {
    v5 = a1;
    while (v5[1510] != a2)
    {
      v5 += 1088;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    return v5 + 424;
  }

  else
  {
LABEL_5:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v9 = 136316162;
        v10 = v6;
        v11 = 2080;
        v12 = "_VideoReceiver_GetStreamWithStreamIndex";
        v13 = 1024;
        v14 = 1927;
        v15 = 2048;
        v16 = a1;
        v17 = 1024;
        v18 = a2;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] unknown streamIndex:%u", &v9, 0x2Cu);
      }
    }

    return 0;
  }
}

unsigned int *_VideoReceiver_GetStreamWithTileIndex(unsigned int *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (v4)
  {
    result = a1 + 424;
    while (*(result + 68) != a2)
    {
      result += 1088;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = 136316162;
        v9 = v6;
        v10 = 2080;
        v11 = "_VideoReceiver_GetStreamWithTileIndex";
        v12 = 1024;
        v13 = 1916;
        v14 = 2048;
        v15 = a1;
        v16 = 1024;
        v17 = a2;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] unknown tileIndex:%u", &v8, 0x2Cu);
      }
    }

    return 0;
  }

  return result;
}

void VideoReceiver_DumpRecvSPSPPS(uint64_t a1, int a2, unsigned __int16 *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v27 = 0;
  if (*(a1 + 1212))
  {
    v6 = a1 + 40900;
    if (*(a1 + 40900) == 1)
    {
      v7 = *a3;
      if (*(a1 + 42960) != v7)
      {
        VideoReceiver_DumpRecvCreate(a1, v7);
      }
    }

    v8 = (v6 + 2068);
    if (*(v6 + 2068))
    {
      AvcCFromFormatDescriptionForLog = extractAvcCFromFormatDescriptionForLog(*(v6 + 1772));
      if (AvcCFromFormatDescriptionForLog)
      {
        v10 = AvcCFromFormatDescriptionForLog;
        BytePtr = CFDataGetBytePtr(AvcCFromFormatDescriptionForLog);
        Length = CFDataGetLength(v10);
        v13 = Length;
        MEMORY[0x1EEE9AC00](Length);
        v15 = &v27 - ((v14 + 15) & 0x1FFFFFFF0);
        if (v14)
        {
          memset(&v27 - ((v14 + 15) & 0x1FFFFFFF0), 170, v14);
        }

        v16 = readAVCCAndEncodeH264SPSPPS(BytePtr, v13, v15, &v27);
        if (v16)
        {
          v17 = v16;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v18 = VRTraceErrorLogLevelToCSTR();
            v19 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              *&buf[4] = v18;
              *&buf[12] = 2080;
              *&buf[14] = "VideoReceiver_DumpRecvSPSPPS";
              *&buf[22] = 1024;
              *&buf[24] = 1096;
              *&buf[28] = 1024;
              *&buf[30] = 1096;
              *&buf[34] = 2048;
              *&buf[36] = a1;
              *&buf[44] = 1024;
              *&buf[46] = v17;
              _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoReceiver.c:%d: VideoReceiver[%p] readAVCCAndEncodeH264SPSPPS %d", buf, 0x32u);
            }
          }
        }

        else
        {
          __ptr = 50331648;
          fwrite(&__ptr, 1uLL, 4uLL, *v8);
          *&v44[14] = 0xAAAAAAAAAAAAAAAALL;
          *&v20 = 0xAAAAAAAAAAAAAAAALL;
          *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v43 = v20;
          *v44 = v20;
          v41 = v20;
          v42 = v20;
          *&buf[48] = v20;
          v40 = v20;
          *&buf[16] = v20;
          *&buf[32] = v20;
          *buf = v20;
          v21 = *(a3 + 7);
          valuePtr = a2;
          v22 = CFNumberCreate(*(v6 + 2364), kCFNumberIntType, &valuePtr);
          Value = CFDictionaryGetValue(v21, v22);
          CFRelease(v22);
          if (Value && CFStringGetCString(Value, buf, 150, 0x8000100u) && buf[0])
          {
            v24 = strlen(buf);
            fwrite(buf, 1uLL, v24 + 1, *v8);
          }

          else
          {
            buf[0] = 0;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v25 = VRTraceErrorLogLevelToCSTR();
              v26 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                valuePtr = 136316162;
                v30 = v25;
                v31 = 2080;
                v32 = "VideoReceiver_DumpRecvSPSPPS";
                v33 = 1024;
                v34 = 1118;
                v35 = 2048;
                v36 = a1;
                v37 = 1024;
                v38 = a2;
                _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] No matched feature list string for payload: %d", &valuePtr, 0x2Cu);
              }
            }
          }

          fwrite(v15, 1uLL, v27, *v8);
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VideoReceiver_DumpRecvSPSPPS_cold_1();
        }
      }
    }
  }
}

void _VideoReceiver_ResetExpectedDecodingOrder(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1306) >= 2u)
  {
    v2 = a1 + 40960;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v2 + 2294);
        v6 = 136316162;
        v7 = v3;
        v8 = 2080;
        v9 = "_VideoReceiver_ResetExpectedDecodingOrder";
        v10 = 1024;
        v11 = 1165;
        v12 = 2048;
        v13 = a1;
        v14 = 1024;
        v15 = v5;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Reset expectedDecodingOrder:%hu", &v6, 0x2Cu);
      }
    }

    *(v2 + 2292) = 0;
    *(v2 + 2288) = 0;
  }
}

void _VideoReceiver_ReportDegradedEvent(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1540) == 1)
  {
    ReportingEventDictionary = _VideoReceiver_CreateReportingEventDictionary(a1);
    if (ReportingEventDictionary)
    {
      v4 = ReportingEventDictionary;
      valuePtr = a2;
      v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v4, @"VCSPVideoDegraded", v5);
      CFRelease(v5);
      reportingGenericEvent();
      CFRelease(v4);
    }
  }
}

void _VideoReceiver_SendRTCPResiliencyInfo(uint64_t a1, uint64_t a2, int a3, int a4, __int16 a5, uint64_t a6, double a7)
{
  v39 = *MEMORY[0x1E69E9840];
  memset(v22, 0, sizeof(v22));
  v23 = 0u;
  v24 = 0;
  v20 = 0;
  if (a6)
  {
    v12 = *(a6 + 14);
    if (v12)
    {
      v13 = *(a6 + 4);
      if (v13 != *(a2 + 4320))
      {
        goto LABEL_6;
      }
    }

    if (a7 - *(a2 + 4312) >= 0.1)
    {
      v13 = *(a6 + 4);
LABEL_6:
      LODWORD(v20) = v13;
      WORD2(v20) = a5;
      v14 = *(a6 + 10);
      goto LABEL_15;
    }

LABEL_11:
    *(&v23 + 1) = 0;
    if (!a4)
    {
      return;
    }

    v15 = 1024;
    goto LABEL_23;
  }

  if (*(a2 + 101) != 1)
  {
    goto LABEL_11;
  }

  v21 = 0;
  bzero(buf, 0x320uLL);
  VideoPacketBuffer_GetCachedBurstLossStatistics(*(a2 + 128), buf);
  _VideoReceiver_PackFrameLoss(a1, &v21, buf);
  LOBYTE(v12) = v28;
  if (!v28 || (v13 = v26, v26 == *(a2 + 4320)))
  {
    if (a7 - *(a2 + 4312) < 0.1)
    {
      goto LABEL_11;
    }

    v13 = v26;
  }

  LODWORD(v20) = v13;
  WORD2(v20) = v21;
  v14 = BYTE6(v26);
LABEL_15:
  BYTE6(v20) = v14;
  HIBYTE(v20) = v12;
  *(&v23 + 1) = &v20;
  LODWORD(v22[0]) = 512;
  *(a2 + 4320) = v13;
  *(a2 + 4312) = a7;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    v18 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v26 = v16;
        v27 = 2080;
        v28 = "_VideoReceiver_SendRTCPResiliencyInfo";
        v29 = 1024;
        v30 = 2894;
        v31 = 1024;
        v32 = v20;
        v33 = 1024;
        v34 = WORD2(v20);
        v35 = 1024;
        v36 = BYTE6(v20);
        v37 = 1024;
        v38 = HIBYTE(v20);
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d RTCP sending loss feedback: frameRTPTimestamp=%u, numReceivedPackets=%u, frameSize=%u, numLostPackets=%u", buf, 0x34u);
        if ((a4 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      _VideoReceiver_SendRTCPResiliencyInfo_cold_1();
      if (a4)
      {
        goto LABEL_22;
      }

LABEL_25:
      v19 = 4280;
      goto LABEL_26;
    }
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v15 = 1536;
LABEL_23:
  LODWORD(v22[0]) = v15;
  LODWORD(v24) = a3;
  v19 = 4276;
LABEL_26:
  ++*(a2 + v19);
  _VideoReceiver_SendRTCP(a1, a2, v22, 0, a7);
}

void _VideoReceiver_PackFrameLoss(uint64_t a1, _WORD *a2, unsigned __int16 *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 43300);
  if (v5 == 2)
  {
    FECUtil_PackFrameLoss(a2, a3[6], a3[9], *(a1 + 1556));
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    v14 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v15 = a3[6];
      v16 = a3[9];
      if (a3[5])
      {
        v17 = v16 / a3[5];
        v18 = v17;
      }

      else
      {
        v18 = 0.0;
      }

      v29 = 136316674;
      v30 = v13;
      v31 = 2080;
      v32 = "_VideoReceiver_PackFrameLoss";
      v33 = 1024;
      v34 = 2842;
      v35 = 2048;
      v36 = a1;
      v37 = 1024;
      v38 = v15;
      v39 = 1024;
      v40 = v16;
      v41 = 2048;
      v42 = v18;
      v28 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] FEC Feedback ready groupSize=%d loss=%d ratio=%2.2f";
      goto LABEL_26;
    }

    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v24 = a3[6];
    v25 = a3[9];
    v26 = 0.0;
    if (a3[5])
    {
      v27 = v25 / a3[5];
      v26 = v27;
    }

    v29 = 136316674;
    v30 = v13;
    v31 = 2080;
    v32 = "_VideoReceiver_PackFrameLoss";
    v33 = 1024;
    v34 = 2842;
    v35 = 2048;
    v36 = a1;
    v37 = 1024;
    v38 = v24;
    v39 = 1024;
    v40 = v25;
    v41 = 2048;
    v42 = v26;
    v23 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] FEC Feedback ready groupSize=%d loss=%d ratio=%2.2f";
LABEL_21:
    _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, v23, &v29, 0x3Cu);
    return;
  }

  if (v5 == 1)
  {
    FECUtil_PackFrameLoss(a2, a3[5], a3[7], *(a1 + 1556));
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v9 = a3[5];
        v10 = a3[7];
        if (a3[5])
        {
          v11 = v10 / v9;
          v12 = v11;
        }

        else
        {
          v12 = 0.0;
        }

        v29 = 136316674;
        v30 = v6;
        v31 = 2080;
        v32 = "_VideoReceiver_PackFrameLoss";
        v33 = 1024;
        v34 = 2839;
        v35 = 2048;
        v36 = a1;
        v37 = 1024;
        v38 = v9;
        v39 = 1024;
        v40 = v10;
        v41 = 2048;
        v42 = v12;
        v28 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] FEC Feedback ready frameSize=%d loss=%d ratio=%2.2f";
LABEL_26:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v28, &v29, 0x3Cu);
        return;
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v19 = a3[5];
      v20 = a3[7];
      v21 = 0.0;
      if (a3[5])
      {
        v22 = v20 / v19;
        v21 = v22;
      }

      v29 = 136316674;
      v30 = v6;
      v31 = 2080;
      v32 = "_VideoReceiver_PackFrameLoss";
      v33 = 1024;
      v34 = 2839;
      v35 = 2048;
      v36 = a1;
      v37 = 1024;
      v38 = v19;
      v39 = 1024;
      v40 = v20;
      v41 = 2048;
      v42 = v21;
      v23 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] FEC Feedback ready frameSize=%d loss=%d ratio=%2.2f";
      goto LABEL_21;
    }
  }
}

void _VideoReceiver_DecoderCallbackMultiImage(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = CheckInHandleDebug();
  if (v8)
  {
    v9 = v8;
    v10 = v8 + 40960;
    ++*(v8 + 42788);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      v13 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a3 + 4);
          v15 = *(v9 + 1572);
          *buf = 136316162;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoReceiver_DecoderCallbackMultiImage";
          *&buf[22] = 1024;
          v22 = 897;
          v23 = 1024;
          v24 = v14;
          v25 = 1024;
          v26 = v14 % v15;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d Received decoder callback for frame que frameSequenceNumber=%u streamIndex=%d", buf, 0x28u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a3 + 4);
        v18 = *(v9 + 1572);
        *buf = 136316162;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_DecoderCallbackMultiImage";
        *&buf[22] = 1024;
        v22 = 897;
        v23 = 1024;
        v24 = v17;
        v25 = 1024;
        v26 = v17 % v18;
        _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d Received decoder callback for frame que frameSequenceNumber=%u streamIndex=%d", buf, 0x28u);
      }
    }

    VideoUtil_PropagateSampleBufferAttachmentsDecoderToClient(a2);
    v20 = 0;
    v19 = 1;
    v16 = *(v10 + 2200);
    *buf = *a4;
    *&buf[16] = *(a4 + 16);
    if (VCVideoReceiverDecodedFrame_Create(v16, &v20, a2, 0, a3, buf))
    {
      if ((_VideoReceiver_EnqueueDecodedFrameForDisplay(a1, v9, a3, &v20, &v19) & 1) == 0)
      {
        _VideoReceiver_DecoderCallbackMultiImage_cold_2();
      }
    }

    else
    {
      _VideoReceiver_DecoderCallbackMultiImage_cold_1();
    }

    _VideoReceiver_CheckAndRequestKeyFrame(v9, v20);
    if (v20)
    {
      if (v19 == 1)
      {
        VCVideoReceiverDecodedFrame_Destroy(&v20);
      }
    }

    CheckOutHandleDebug();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VideoReceiver_DecoderCallbackMultiImage_cold_3();
    }
  }
}

void _VideoReceiver_ComputePacketLoss2DHistogram(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = 0;
  v7 = MEMORY[0x1E695E9C0];
  do
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      if (*(a3 + 2 * v8))
      {
        v10 = v8;
      }

      v9 += *(a3 + 2 * v8++);
    }

    while (v8 != 102);
    if (v9)
    {
      v11 = CFArrayCreateMutable(v4, 0, v7);
      if ((v10 & 0x80000000) == 0)
      {
        v12 = 0;
        v13 = 2 * (v10 + 1);
        while (1)
        {
          valuePtr = *(a3 + v12);
          v14 = CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr);
          v15 = v14;
          if (v11)
          {
            if (v14)
            {
              break;
            }
          }

          if (v14)
          {
            goto LABEL_13;
          }

LABEL_14:
          v12 += 2;
          if (v13 == v12)
          {
            goto LABEL_15;
          }
        }

        CFArrayAppendValue(v11, v14);
LABEL_13:
        CFRelease(v15);
        goto LABEL_14;
      }

LABEL_15:
      v16 = CFStringCreateWithFormat(v4, 0, @"%d", v6);
      v17 = v16;
      if (Mutable && v16 && v11)
      {
        CFDictionaryAddValue(Mutable, v16, v11);
      }

      else if (!v16)
      {
        goto LABEL_21;
      }

      CFRelease(v17);
LABEL_21:
      if (v11)
      {
        CFRelease(v11);
      }
    }

    ++v6;
    a3 += 204;
  }

  while (v6 != 102);
  if (a1 && Mutable)
  {
    CFDictionaryAddValue(a1, a2, Mutable);
    goto LABEL_28;
  }

  if (Mutable)
  {
LABEL_28:
    CFRelease(Mutable);
  }
}

void _VideoReceiver_ProcessCompletedFrames(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v47 = *MEMORY[0x1E69E9840];
  if (*(a2 + 653) < 2u)
  {
    if (*(a2 + 1568) == 1)
    {

      _VideoReceiver_ProcessCompletedFramesForInterleavedStreams(a1, a2);
    }

    else
    {
      v20 = *(a3 + 128);

      _VideoReceiver_ScheduleFramesForVideoPacketBuffer(a1, a2, v20, a4, a3);
    }
  }

  else
  {
    v30 = 0;
    v29 = 0;
    v28 = 0;
    VideoPacketBuffer_GetFrameDecodingOrder(*(a3 + 128), &v30, &v29, &v28);
    if (v30 == 1 && *(a2 + 43252) == 1)
    {
      v8 = *(a2 + 21627);
      if (v29 != v8 && (v29 - v8) <= 0x7FFEu && a2[10606] - v28 <= 0x7FFFFFFE)
      {
        v9 = *a2;
        if (v9)
        {
          v10 = 0;
          v11 = a2 + 424;
          do
          {
            if (v11 != a3)
            {
              v27 = 0;
              v26 = 0;
              *buf = 0;
              VideoPacketBuffer_GetFrameDecodingOrder(*(v11 + 16), &v27, &v26, buf);
              if (v27 == 1 && v30 == 1 && v29 != v26 && (v29 - v26) <= 0x7FFEu)
              {
                goto LABEL_30;
              }

              v9 = *a2;
            }

            ++v10;
            v11 += 1088;
          }

          while (v10 < v9);
        }

        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 5)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
          if (ErrorLogLevelForModule)
          {
            v16 = *(a3 + 128);
            v17 = *(a2 + 21627);
            v18 = *(a2 + 43252);
            *buf = 136316930;
            v32 = v14;
            v33 = 2080;
            v34 = "_VideoReceiver_DetectFullSubFrameLoss";
            v35 = 1024;
            v36 = 3541;
            v37 = 2048;
            v38 = a2;
            v39 = 2048;
            v40 = v16;
            v41 = 1024;
            v42 = v29;
            v43 = 1024;
            v44 = v17;
            v45 = 1024;
            v46 = v18;
            _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] VideoPacketBuffer[%p] Needs refresh and reset DON due to sub frame loss in frameDecodingOrder:%hu expectedDecodingOrder:%hu isExpectedDecodingOrderValid:%d", buf, 0x42u);
          }
        }

        v19 = *(a2 + 1329) == 1 && a2[10639] != 0;
        v21 = micro(ErrorLogLevelForModule, v13);
        _VideoReceiver_DecoderNeedsRefresh(a2, a3, v19, 0x17u, v21);
      }
    }

LABEL_30:
    LODWORD(v22) = *a2;
    v23 = (exp2(*a2) + -1.0);
    while (v23)
    {
      if (v22)
      {
        v24 = 0;
        v25 = a2 + 424;
        do
        {
          if (_VideoReceiver_ScheduleFramesForVideoPacketBuffer(a1, a2, *(v25 + 16), v4, v25))
          {
            v23 |= 1 << v24;
          }

          else
          {
            v23 &= ~(1 << v24);
          }

          ++v24;
          v22 = *a2;
          v25 += 1088;
        }

        while (v24 < v22);
      }
    }
  }
}

uint64_t _VideoReceiver_ScheduleFramesForVideoPacketBuffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = a2 + 40960;
  v17 = -1431655766;
  v11 = VideoPacketBuffer_SchedulePastIncompleteFrame(a3, a4, &v17, *(a2 + 42424), *(a2 + 43252), *(a2 + 43254));
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v17;
      if ((v12 & 1) != 0 && v13 == v17)
      {
        break;
      }

      _VideoReceiver_AssembleAndEnqueueFrame(a1, a2, a5, v17);
      v15 = VideoPacketBuffer_SchedulePastIncompleteFrame(a3, a4, &v17, *(v10 + 1464), *(v10 + 2292), *(v10 + 2294));
      v12 = 1;
      v13 = v14;
    }

    while ((v15 & 1) != 0);
  }

  if (VideoPacketBuffer_ScheduleFutureFrame(a3, *(a5 + 152), a4, &v17, *(v10 + 1464), *(v10 + 2292), *(v10 + 2294), *(v10 + 2256)))
  {
    do
    {
      _VideoReceiver_AssembleAndEnqueueFrame(a1, a2, a5, v17);
    }

    while (VideoPacketBuffer_ScheduleFutureFrame(a3, *(a5 + 152), a4, &v17, *(v10 + 1464), *(v10 + 2292), *(v10 + 2294), *(v10 + 2256)));
    return 1;
  }

  return v11;
}

void _VideoReceiver_ProcessCompletedFramesForInterleavedStreams(uint64_t result, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  memset(v21, 0, sizeof(v21));
  v16 = 0;
  v15 = 0;
  if (*(a2 + 42440) == 1)
  {
    v4 = *(a2 + 1572);
    if (v4)
    {
      v5 = 0;
      v6 = *(a2 + 42436);
      v7 = a2 + 1696;
      do
      {
        v17[0] = 0;
        LOBYTE(v20) = 0;
        if (*(v7 + 128))
        {
          v15 = v16 == 8;
          if (v16 == 8)
          {
            break;
          }

          *(&v22 + 1) = &v16;
          *&v22 = v6 | 0xAAAAAAAA00000000;
          *&v23 = v17;
          *(&v23 + 1) = &v20;
          *&v24 = &v15;
          *(&v24 + 1) = v21;
          if ((_VideoReceiver_ScheduleFrameAssemblyForStream(a2, v7, 1, &v22) & 1) != 0 || _VideoReceiver_ScheduleFrameAssemblyForStream(a2, v7, 0, &v22))
          {
            v8 = 1;
            goto LABEL_12;
          }

          v4 = *(a2 + 1572);
        }

        ++v5;
        v7 += 4352;
      }

      while (v5 < v4);
    }

    v8 = 0;
LABEL_12:
    v9 = v16;
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    if (v16)
    {
      v10 = v21 + 2;
      do
      {
        v11 = *v10;
        v12 = *(v10 - 1);
        v17[1] = -1431655766;
        v17[0] = v11;
        v18 = v12;
        v19 = 0xAAAAAAAAAAAAAA00;
        VideoReceiver_InsertScheduledItem(v17, &v22, &v20);
        v10 += 4;
        --v9;
      }

      while (v9);
      v13 = v20;
      if (v20)
      {
        v14 = &v22 + 1;
        do
        {
          _VideoReceiver_AssembleAndEnqueueFrame(result, a2, *v14, *(v14 - 2));
          v14 += 3;
          --v13;
        }

        while (v13);
      }
    }

    if (v8)
    {
      _VideoReceiver_ProcessCompletedFramesForInterleavedStreams(result, a2);
    }
  }
}

uint64_t _VideoReceiver_AssembleAndEnqueueFrame(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  v224 = *MEMORY[0x1E69E9840];
  v6 = a2 + 40897;
  v7 = (a2 + 42428);
  v8 = *(a2 + 42428);
  v9 = a4 >= v8;
  v10 = a4 - v8;
  if (!v9 && v10 <= 0x7FFFFFFE)
  {
    ++*(a2 + 42432);
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
        *buf = 136316162;
        *&buf[4] = v12;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_AssembleAndEnqueueFrame";
        *&buf[22] = 1024;
        v215 = 3279;
        *v216 = 2048;
        *&v216[2] = a2;
        *&v216[10] = 1024;
        *&v216[12] = a4;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Got frame with RTPTimestamp=%u", buf, 0x2Cu);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoReceiver_AssembleAndEnqueueFrame";
      *&buf[22] = 1024;
      v215 = 3279;
      *v216 = 2048;
      *&v216[2] = a2;
      *&v216[10] = 1024;
      *&v216[12] = a4;
      _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Got frame with RTPTimestamp=%u", buf, 0x2Cu);
    }
  }

  *v7 = a4;
  v204 = 0;
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  VideoFrameTimeInSeconds = _VideoReceiver_GetVideoFrameTimeInSeconds(a2, a4, 0.0);
  v210 = -1431655766;
  v209 = -1431655766;
  v208 = 0;
  v205 = 0;
  v190 = (v6 + 2471);
  v207 = 1;
  v187 = (v6 + 1663);
  v188 = (v6 + 2351);
  v194 = (v6 + 2357);
  v195 = (v6 + 2405);
  v196 = (v6 + 2143);
  v192 = (v6 + 2335);
  v193 = (v6 + 2407);
  v191 = (v6 + 2319);
  v189 = (v6 + 2583);
  v186 = (v6 + 2255);
  while (1)
  {
    v16 = pthread_mutex_lock((a2 + 42256));
    v209 = 0;
    v18 = micro(v16, v17);
    v205 = 0;
    v210 = -1;
    element = 0;
    v211 = -1431655936;
    NextFrame = VideoPacketBuffer_GetNextFrame(*(a3 + 16), a4, &v210, &v207, &v205, &v209, &v208, &v211, &element, &v198);
    if (v211 < 0)
    {
      *(v6 + 2223) = v211;
    }

    if (v210 != -1)
    {
      v20 = (v210 == 2) & *(a2 + 1329);
      v21 = v207;
      if (*(a2 + 1420) == 1)
      {
        *(a3 + 4296) = v20;
        *(a3 + 1075) = v21;
        if (*(a3 + 538) == 0.0)
        {
          *(a3 + 538) = v18;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v24 = *(a3 + 16);
            v25 = *(a3 + 538);
            *buf = 136316418;
            *&buf[4] = v22;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_SendFIRWithDelay";
            *&buf[22] = 1024;
            v215 = 2049;
            *v216 = 2048;
            *&v216[2] = a2;
            *&v216[10] = 2048;
            *&v216[12] = v24;
            *&v216[20] = 2048;
            *&v216[22] = v25;
            _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] VideoPacketBuffer[%p] Delay FIR cachedFIRcurrentTime=%2.4f", buf, 0x3Au);
          }
        }
      }

      else
      {
        _VideoReceiver_SendFIR(a2, a3, v20, v207, v18);
      }
    }

    if (v205)
    {
      _VideoReceiver_ResetExpectedDecodingOrder(a2);
    }

    if (element)
    {
      if (*(element + 23) == 1)
      {
        *buf = *(element + 15);
        ReportingEventDictionary = _VideoReceiver_CreateReportingEventDictionary(a2);
        v27 = CFNumberCreate(*(v6 + 2367), kCFNumberSInt16Type, buf);
        CFDictionaryAddValue(ReportingEventDictionary, @"VCVSKeyFrameSize", v27);
        CFRelease(v27);
        reportingVideoStreamEvent();
        CFRelease(ReportingEventDictionary);
        memset(v213, 0, sizeof(v213));
        memset(v212, 0, sizeof(v212));
        VCUtil_ConvertStreamIDArrayToString((a3 + 6), a3[4], v213, 0x60uLL);
        VCUtil_ConvertStreamIDArrayToString((a3 + 15), a3[4], v212, 0x60uLL);
        *v190 = *(element + 4);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v28 = VRTraceErrorLogLevelToCSTR();
          v29 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v30 = *(a3 + 1086);
            v31 = *v190;
            v32 = *(element + 15);
            v33 = *a3;
            v34 = a3[1];
            v35 = *(a3 + 70);
            v36 = v33 == a3[2];
            *buf = 136318210;
            *&buf[4] = v28;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_AssembleAndEnqueueForDecode";
            *&buf[22] = 1024;
            v215 = 3148;
            *v216 = 2048;
            *&v216[2] = a2;
            *&v216[10] = 1024;
            *&v216[12] = v30;
            *&v216[16] = 1024;
            *&v216[18] = v31;
            *&v216[22] = 1024;
            *&v216[24] = v32;
            *&v216[28] = 1024;
            *&v216[30] = v33;
            *&v216[34] = 1024;
            *&v216[36] = v34;
            *&v216[40] = 2080;
            *&v216[42] = v213;
            LOWORD(v217) = 2080;
            *(&v217 + 2) = v212;
            WORD5(v217) = 1024;
            HIDWORD(v217) = v35;
            LOWORD(v218) = 1024;
            *(&v218 + 2) = v36;
            _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Received key frame on streamIndex=%d timestamp=%u bytes=%d for streamID=%d, repairStreamID=%d, subStreamIDs=%s, repairSubStreamIDs=%s, isTemporalScaledStream=%d isBaseLayer=%d", buf, 0x64u);
          }
        }
      }
    }

    if (!NextFrame)
    {
      break;
    }

    v37 = element;
    if (!element)
    {
      goto LABEL_180;
    }

    if (*(a2 + 1306) >= 2u)
    {
      if (*(element + 26) != 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v47 = VRTraceErrorLogLevelToCSTR();
          v48 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = v47;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_AssembleAndEnqueueForDecode";
            *&buf[22] = 1024;
            v215 = 3166;
            *v216 = 2048;
            *&v216[2] = a2;
            _os_log_error_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Received a frame with invalid decoding order!", buf, 0x26u);
          }
        }

        goto LABEL_72;
      }

      v38 = *(element + 23);
      v39 = *(element + 12);
      if (*(v6 + 2355) == 1)
      {
        v40 = v39 - *v194;
        if (v40)
        {
          if (v40 <= 0x7FFEu && VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v41 = VRTraceErrorLogLevelToCSTR();
            v42 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v43 = *v194;
              *buf = 136316418;
              *&buf[4] = v41;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoReceiver_UpdateExpectedDecodingOrder";
              *&buf[22] = 1024;
              v215 = 1203;
              *v216 = 2048;
              *&v216[2] = a2;
              *&v216[10] = 1024;
              *&v216[12] = v39;
              *&v216[16] = 1024;
              *&v216[18] = v43;
              _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Jump in frameDecodingOrder:%hu expectedDecodingOrder:%hu", buf, 0x32u);
            }
          }
        }

        if ((v39 - *v194) >= 0x7FFFu && VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v44 = VRTraceErrorLogLevelToCSTR();
          v45 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v46 = *v194;
            *buf = 136316418;
            *&buf[4] = v44;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_UpdateExpectedDecodingOrder";
            *&buf[22] = 1024;
            v215 = 1206;
            *v216 = 2048;
            *&v216[2] = a2;
            *&v216[10] = 1024;
            *&v216[12] = v39;
            *&v216[16] = 1024;
            *&v216[18] = v46;
            _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] out of order in frameDecodingOrder:%hu expectedDecodingOrder:%hu", buf, 0x32u);
          }
        }
      }

      if (*(v6 + 2355) == 1)
      {
        if ((v39 - *v194) <= 0x7FFEu)
        {
          *v194 = v39 + 1;
        }

        goto LABEL_72;
      }

      if (v38)
      {
        v49 = *v188 + 1;
        *v188 = v49;
        if ((*(v6 + 2356) & 1) == 0)
        {
          *v194 = v39 + 1;
          *(v6 + 2355) = v49 == *(a2 + 1306);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v64 = VRTraceErrorLogLevelToCSTR();
            v65 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v66 = *v188;
              v67 = *v194;
              v68 = *(v6 + 2355);
              *buf = 136316930;
              *&buf[4] = v64;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoReceiver_UpdateExpectedDecodingOrderForRefreshFrame";
              *&buf[22] = 1024;
              v215 = 1179;
              *v216 = 2048;
              *&v216[2] = a2;
              *&v216[10] = 1024;
              *&v216[12] = v39;
              *&v216[16] = 1024;
              *&v216[18] = v66;
              *&v216[22] = 1024;
              *&v216[24] = v67;
              *&v216[28] = 1024;
              *&v216[30] = v68;
              _os_log_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] First refresh frameDecodingOrder:%hu refreshFrameCount:%d expectedDecodingOrder:%hu isExpectedDecodingOrderValid:%d", buf, 0x3Eu);
            }
          }

          *(v6 + 2356) = 1;
          goto LABEL_72;
        }

        v50 = *v194;
        if ((v39 - v50) <= 0x7FFEu)
        {
          if (v39 != v50)
          {
            *v188 = 1;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v51 = VRTraceErrorLogLevelToCSTR();
              v52 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v53 = *v188;
                v54 = *v194;
                v55 = *(v6 + 2355);
                *buf = 136316930;
                *&buf[4] = v51;
                *&buf[12] = 2080;
                *&buf[14] = "_VideoReceiver_UpdateExpectedDecodingOrderForRefreshFrame";
                *&buf[22] = 1024;
                v215 = 1188;
                *v216 = 2048;
                *&v216[2] = a2;
                *&v216[10] = 1024;
                *&v216[12] = v39;
                *&v216[16] = 1024;
                *&v216[18] = v53;
                *&v216[22] = 1024;
                *&v216[24] = v54;
                *&v216[28] = 1024;
                *&v216[30] = v55;
                _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Jump within refresh frameDecodingOrder:%hu refreshFrameCount:%d expectedDecodingOrder:%hu isExpectedDecodingOrderValid:%d", buf, 0x3Eu);
              }
            }
          }

          *v194 = v39 + 1;
          *(v6 + 2355) = *v188 == *(a2 + 1306);
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_72;
          }

          v56 = VRTraceErrorLogLevelToCSTR();
          v57 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_72;
          }

          v58 = *v188;
          v59 = *v194;
          v60 = *(v6 + 2355);
          *buf = 136316930;
          *&buf[4] = v56;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoReceiver_UpdateExpectedDecodingOrderForRefreshFrame";
          *&buf[22] = 1024;
          v215 = 1194;
          *v216 = 2048;
          *&v216[2] = a2;
          *&v216[10] = 1024;
          *&v216[12] = v39;
          *&v216[16] = 1024;
          *&v216[18] = v58;
          *&v216[22] = 1024;
          *&v216[24] = v59;
          *&v216[28] = 1024;
          *&v216[30] = v60;
          v61 = v57;
          v62 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] Refresh frameDecodingOrder:%d refreshFrameCount:%d expectedDecodingOrder:%hu isExpectedDecodingOrderValid:%d";
          v63 = 62;
LABEL_71:
          _os_log_impl(&dword_1DB56E000, v61, OS_LOG_TYPE_DEFAULT, v62, buf, v63);
LABEL_72:
          v37 = element;
          *(element + 22) = *(a3 + 68);
          goto LABEL_73;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_72;
        }

        v69 = VRTraceErrorLogLevelToCSTR();
        v70 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_72;
        }

        v71 = *v194;
        v72 = *(v6 + 2355);
        *buf = 136316674;
        *&buf[4] = v69;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_UpdateExpectedDecodingOrderForRefreshFrame";
        *&buf[22] = 1024;
        v215 = 1196;
        *v216 = 2048;
        *&v216[2] = a2;
        *&v216[10] = 1024;
        *&v216[12] = v39;
        *&v216[16] = 1024;
        *&v216[18] = v71;
        *&v216[22] = 1024;
        *&v216[24] = v72;
        v61 = v70;
        v62 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] Received out of order refresh frameDecodingOrder:%hu expectedDecodingOrder:%hu isExpectedDecodingOrderValid:%d";
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          goto LABEL_72;
        }

        v166 = VRTraceErrorLogLevelToCSTR();
        v167 = *MEMORY[0x1E6986650];
        v168 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
          {
            v173 = *v194;
            v174 = *(v6 + 2355);
            *buf = 136316674;
            *&buf[4] = v166;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_UpdateExpectedDecodingOrder";
            *&buf[22] = 1024;
            v215 = 1221;
            *v216 = 2048;
            *&v216[2] = a2;
            *&v216[10] = 1024;
            *&v216[12] = v39;
            *&v216[16] = 1024;
            *&v216[18] = v173;
            *&v216[22] = 1024;
            *&v216[24] = v174;
            _os_log_debug_impl(&dword_1DB56E000, v167, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Not a refresh frameDecodingOrder:%hu expectedDecodingOrder:%hu isExpectedDecodingOrderValid:%d", buf, 0x38u);
          }

          goto LABEL_72;
        }

        if (!os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_72;
        }

        v169 = *v194;
        v170 = *(v6 + 2355);
        *buf = 136316674;
        *&buf[4] = v166;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_UpdateExpectedDecodingOrder";
        *&buf[22] = 1024;
        v215 = 1221;
        *v216 = 2048;
        *&v216[2] = a2;
        *&v216[10] = 1024;
        *&v216[12] = v39;
        *&v216[16] = 1024;
        *&v216[18] = v169;
        *&v216[22] = 1024;
        *&v216[24] = v170;
        v61 = v167;
        v62 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] Not a refresh frameDecodingOrder:%hu expectedDecodingOrder:%hu isExpectedDecodingOrderValid:%d";
      }

      v63 = 56;
      goto LABEL_71;
    }

    if (*(a2 + 1558) == 1 && (*(a2 + 1568) & 1) != 0)
    {
      *(element + 26) = *(a3 + 1086);
    }

LABEL_73:
    *(v37 + 10) = *a3;
    v37[64] = *(a3 + 69);
    *(v37 + 9) = VideoFrameTimeInSeconds;
    *(v37 + 11) = *(v37 + 15);
    v73 = *(a2 + 1329);
    if (!v209)
    {
      v73 = 0;
    }

    v37[96] = v73;
    *(v37 + 25) = v208;
    v74 = *(v37 + 40);
    v75 = *(v37 + 8);
    v199 = *(v37 + 24);
    v200 = v74;
    v198 = v75;
    v76 = *(v37 + 56);
    v77 = *(v37 + 13);
    v78 = *(v37 + 88);
    v202 = *(v37 + 72);
    v203 = v78;
    v204 = v77;
    v201 = v76;
    if (*(v6 + 2048) == 1 && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v79 = VRTraceErrorLogLevelToCSTR();
      v80 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v81 = *(v37 + 10);
        v82 = *(v37 + 2);
        v83 = *(v37 + 4);
        *buf = 136316930;
        *&buf[4] = v79;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_EnqueueForDecode";
        *&buf[22] = 1024;
        v215 = 3013;
        *v216 = 2048;
        *&v216[2] = a2;
        *&v216[10] = 1024;
        *&v216[12] = v81;
        *&v216[16] = 1024;
        *&v216[18] = v82;
        *&v216[22] = 1024;
        *&v216[24] = v83;
        *&v216[28] = 2048;
        *&v216[30] = 104;
        _os_log_impl(&dword_1DB56E000, v80, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] for streamID=%d enqueue encoded frame for later decode. payload=%d timestamp=%u argsLength=%zu", buf, 0x42u);
      }
    }

    v84 = *(a2 + 1306);
    if (v84 >= 2)
    {
      if ((*(v6 + 2355) & 1) == 0 && (v37[23] & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v127 = VRTraceErrorLogLevelToCSTR();
          v128 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v129 = *v194;
            v130 = v37[23];
            v131 = v37[26];
            v132 = *(v37 + 12);
            *buf = 136316930;
            *&buf[4] = v127;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_EnqueueForDecode";
            *&buf[22] = 1024;
            v215 = 3016;
            *v216 = 2048;
            *&v216[2] = a2;
            *&v216[10] = 1024;
            *&v216[12] = v129;
            *&v216[16] = 1024;
            *&v216[18] = v130;
            *&v216[22] = 1024;
            *&v216[24] = v131;
            *&v216[28] = 1024;
            *&v216[30] = v132;
            _os_log_impl(&dword_1DB56E000, v128, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Don't process sub frame when expectedDecodingOrder:%d is invalid! isRefreshFrame:%d frameDecodingOrderValid:%d frameDecodingOrder:%d", buf, 0x3Eu);
          }
        }

        v104 = 20;
        goto LABEL_151;
      }

      if (*v194 != (*(v37 + 12) + 1))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v97 = VRTraceErrorLogLevelToCSTR();
          v98 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v99 = *v194;
            v100 = *(v6 + 2355);
            v101 = v37[23];
            v102 = v37[26];
            v103 = *(v37 + 12);
            *buf = 136317186;
            *&buf[4] = v97;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_EnqueueForDecode";
            *&buf[22] = 1024;
            v215 = 3022;
            *v216 = 2048;
            *&v216[2] = a2;
            *&v216[10] = 1024;
            *&v216[12] = v99;
            *&v216[16] = 1024;
            *&v216[18] = v100;
            *&v216[22] = 1024;
            *&v216[24] = v101;
            *&v216[28] = 1024;
            *&v216[30] = v102;
            *&v216[34] = 1024;
            *&v216[36] = v103;
            _os_log_impl(&dword_1DB56E000, v98, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Don't process sub frame when expectedDecodingOrder:%d isExpectedDecodingOrderValid:%d is jumping or out of order! isRefreshFrame:%d frameDecodingOrderValid:%d frameDecodingOrder:%d", buf, 0x44u);
          }
        }

        v104 = 21;
LABEL_151:
        v207 = v104;
LABEL_152:
        if (*(a2 + 1306) >= 2u && (*(v6 + 2355) & 1) == 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v139 = VRTraceErrorLogLevelToCSTR();
            v140 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v141 = *(a3 + 16);
              v142 = *(element + 12);
              v143 = *v194;
              v144 = *(v6 + 2355);
              *buf = 136316930;
              *&buf[4] = v139;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoReceiver_AssembleAndEnqueueForDecode";
              *&buf[22] = 1024;
              v215 = 3187;
              *v216 = 2048;
              *&v216[2] = a2;
              *&v216[10] = 2048;
              *&v216[12] = v141;
              *&v216[20] = 1024;
              *&v216[22] = v142;
              *&v216[26] = 1024;
              *&v216[28] = v143;
              *&v216[32] = 1024;
              *&v216[34] = v144;
              _os_log_impl(&dword_1DB56E000, v140, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] VideoPacketBuffer[%p] Needs refresh and reset DON due to failure to enqueue video frameDecodingOrder:%hu expectedDecodingOrder:%hu isExpectedDecodingOrderValid:%d", buf, 0x42u);
            }
          }

          v145 = *(a2 + 1329) == 1 && *(v6 + 1659) != 0;
          _VideoReceiver_DecoderNeedsRefresh(a2, a3, v145, v207, v18);
        }

        VCVideoReceiverSampleBuffer_Destroy(&element);
        goto LABEL_180;
      }
    }

    if (*(a2 + 1324) == 1)
    {
      if (*(a2 + 1338) == 1 && v37[23] == 1)
      {
        v85 = *(v37 + 17);
        if (v85 != *v187)
        {
          v86 = VCDefaults_GetIntValueForKey(@"pixelCountThresholdForDynamicVideoJitterBufferMode", 8294400) > v85;
          _VideoReceiver_SetJitterBufferMode(a2, v86);
          v84 = *(a2 + 1306);
        }

        *v187 = v85;
      }

      v87 = (v37 + 8);
      if (v84 >= 2)
      {
        buf[0] = 0;
        VideoDecoder_IsLastSubframe(*(a3 + 542), *(v37 + 14), *(v37 + 22), buf);
        if (!buf[0])
        {
          v87 = 0;
        }
      }

      _VideoReceiver_EnqueueFrameToJitterBuffer(a2, v87);
    }

    v88 = *(v37 + 24) - *v195;
    if (v88 >= 0x7FFFu)
    {
      v88 = 1;
    }

    if ((a3[35] & 1) == 0 && *(v37 + 10) == *v193 && *(v6 + 1851) == 1 && v88 >= 2u)
    {
      v89 = v88 - 1;
      *(v6 + 2411) += v89;
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v90 = VRTraceErrorLogLevelToCSTR();
        v91 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v92 = *(v37 + 4);
          v93 = *(v37 + 24);
          v94 = *v195;
          *buf = 136316930;
          *&buf[4] = v90;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoReceiver_CalculateFrameErasures";
          *&buf[22] = 1024;
          v215 = 2803;
          *v216 = 2048;
          *&v216[2] = a2;
          *&v216[10] = 1024;
          *&v216[12] = v89;
          *&v216[16] = 1024;
          *&v216[18] = v92;
          *&v216[22] = 1024;
          *&v216[24] = v93;
          *&v216[28] = 1024;
          *&v216[30] = v94;
          _os_log_impl(&dword_1DB56E000, v91, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Detected video frame erasure count of %u frames. rtpTimestamp=%u frameSequenceNumber=%u lastFrameSequenceNumber=%u", buf, 0x3Eu);
        }
      }
    }

    *v195 = *(v37 + 24);
    *v193 = *(v37 + 10);
    if ((v37[23] & 1) == 0)
    {
      if (*v6)
      {
        if ((v37[81] & 1) == 0)
        {
          v95 = *(v37 + 7);
          memset(v216, 0, sizeof(v216));
          v217 = 0u;
          v218 = 0u;
          v219 = 0u;
          v220 = 0u;
          v221 = 0u;
          v222 = 0u;
          memset(v223, 0, sizeof(v223));
          v96 = *v186;
          *buf = 10;
          *&buf[8] = v95;
          *&buf[16] = 0;
          v215 = 5;
          goto LABEL_112;
        }
      }

      else if (v37[81])
      {
        v105 = *(v37 + 7);
        *&v216[8] = 0;
        *v216 = 0;
        *&v216[16] = 256;
        memset(&v216[18], 0, 32);
        v217 = 0u;
        v218 = 0u;
        v219 = 0u;
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        memset(v223, 0, sizeof(v223));
        v96 = *v186;
        *buf = 10;
        *&buf[8] = v105;
        *&buf[16] = 0;
        v215 = 5;
LABEL_112:
        VCRateControlSetStatistics(v96, buf);
      }

      *v6 = v37[81];
    }

    if (*(a2 + 1398) == 1)
    {
      Head = CMSimpleQueueGetHead(*v196);
      if (Head)
      {
        v109 = Head[9];
        LODWORD(v107) = *(v6 + 1527);
        LODWORD(v108) = *(v6 + 1535);
        v110 = (v107 + v108 * 4294967300.0) / *(a2 + 1180);
        if (v110 - v109 > *(v6 + 2455) && *v191 - *v192 > 30.0)
        {
          Count = CMSimpleQueueGetCount(*v196);
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v112 = VRTraceErrorLogLevelToCSTR();
            v113 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316930;
              *&buf[4] = v112;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoReceiver_CheckQueueDepthMeetsRealtime";
              *&buf[22] = 1024;
              v215 = 2931;
              *v216 = 2048;
              *&v216[2] = a2;
              *&v216[10] = 2048;
              *&v216[12] = v110 - v109;
              *&v216[20] = 2048;
              *&v216[22] = v110;
              *&v216[30] = 2048;
              *&v216[32] = v109;
              *&v216[40] = 1024;
              *&v216[42] = Count;
              _os_log_impl(&dword_1DB56E000, v113, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] High watermark exceeded in frameQueueForDecode. delay=%0.3f playoutTimeInSeconds=%0.6f, oldestVideoFrameTimeInSeconds=%0.6f, numFramesEnqueuedForDecode=%d", buf, 0x4Au);
            }
          }

          reportingSymptom();
          *v192 = *v191;
        }
      }
    }

    if (*(a2 + 1558) != 1 || *(a2 + 1568) != 1)
    {
      v123 = CMSimpleQueueEnqueue(*v196, v37);
      if (!v123)
      {
        goto LABEL_180;
      }

      v124 = v123;
      v207 = 22;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v125 = VRTraceErrorLogLevelToCSTR();
        v126 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v146 = *(v37 + 10);
          v147 = *(v37 + 2);
          v148 = *(v37 + 4);
          *buf = 136316930;
          *&buf[4] = v125;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoReceiver_EnqueueToSimpleQueue";
          *&buf[22] = 1024;
          v215 = 2947;
          *v216 = 2048;
          *&v216[2] = a2;
          *&v216[10] = 1024;
          *&v216[12] = v146;
          *&v216[16] = 1024;
          *&v216[18] = v147;
          *&v216[22] = 1024;
          *&v216[24] = v148;
          *&v216[28] = 1024;
          *&v216[30] = v124;
          _os_log_error_impl(&dword_1DB56E000, v126, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] for streamID=%d failed to enqueue frame for decode. payload=%d timestamp=%u status=%d", buf, 0x3Eu);
        }
      }

      if ((*(v6 + 2123) & 1) == 0)
      {
        *(v6 + 2123) = 1;
        VCUtil_GenerateDiagnostics(0, 0, "VideoReceiver failed to enqueue frame into frameQueueForDecode", 1u);
      }

      goto LABEL_152;
    }

    v114 = *v189;
    if (*v189)
    {
      v115 = 0;
      v116 = *(v37 + 4);
      while (1)
      {
        v117 = v114;
        v114 = *(v114 + 240);
        v118 = v114 && v116 < *(v114 + 16);
        if (!(v115 & 1 | (v116 > *(v117 + 16))))
        {
          break;
        }

        if (v116 <= *(v117 + 16))
        {
          v115 = 1;
          if (!v114)
          {
            goto LABEL_136;
          }
        }

        else
        {
          if (!v114)
          {
            v118 = 1;
          }

          v115 = 1;
          if (v118)
          {
LABEL_136:
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v119 = VRTraceErrorLogLevelToCSTR();
              v120 = *MEMORY[0x1E6986650];
              v121 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
                {
                  if (v114)
                  {
                    v122 = *(v114 + 24);
                  }

                  else
                  {
                    v122 = -1;
                  }

                  v152 = *(v37 + 12);
                  v153 = *(v117 + 24);
                  v154 = *(v37 + 26);
                  *buf = 136316930;
                  *&buf[4] = v119;
                  *&buf[12] = 2080;
                  *&buf[14] = "_VideoReceiver_EnqueueToOrderedQueue";
                  *&buf[22] = 1024;
                  v215 = 2978;
                  *v216 = 2048;
                  *&v216[2] = a2;
                  *&v216[10] = 1024;
                  *&v216[12] = v152;
                  *&v216[16] = 1024;
                  *&v216[18] = v153;
                  *&v216[22] = 1024;
                  *&v216[24] = v122;
                  *&v216[28] = 1024;
                  *&v216[30] = v154;
                  _os_log_impl(&dword_1DB56E000, v120, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Inserting at the end of queue for display: decOrder=%d beforeDecOrder=%d afterDecOrder=%d streamIndex=%d", buf, 0x3Eu);
                }
              }

              else if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
              {
                if (v114)
                {
                  v138 = *(v114 + 24);
                }

                else
                {
                  v138 = -1;
                }

                v158 = *(v37 + 12);
                v159 = *(v117 + 24);
                v160 = *(v37 + 26);
                *buf = 136316930;
                *&buf[4] = v119;
                *&buf[12] = 2080;
                *&buf[14] = "_VideoReceiver_EnqueueToOrderedQueue";
                *&buf[22] = 1024;
                v215 = 2978;
                *v216 = 2048;
                *&v216[2] = a2;
                *&v216[10] = 1024;
                *&v216[12] = v158;
                *&v216[16] = 1024;
                *&v216[18] = v159;
                *&v216[22] = 1024;
                *&v216[24] = v138;
                *&v216[28] = 1024;
                *&v216[30] = v160;
                _os_log_debug_impl(&dword_1DB56E000, v120, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Inserting at the end of queue for display: decOrder=%d beforeDecOrder=%d afterDecOrder=%d streamIndex=%d", buf, 0x3Eu);
              }
            }

            *(v37 + 30) = *(v117 + 240);
            *(v117 + 240) = v37;
            goto LABEL_179;
          }
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v133 = VRTraceErrorLogLevelToCSTR();
        v134 = *MEMORY[0x1E6986650];
        v135 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
          {
            if (v114)
            {
              v136 = *(v114 + 24);
            }

            else
            {
              v136 = -1;
            }

            v149 = *(v37 + 12);
            v150 = *(v117 + 24);
            v151 = *(v37 + 26);
            *buf = 136316930;
            *&buf[4] = v133;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_EnqueueToOrderedQueue";
            *&buf[22] = 1024;
            v215 = 2972;
            *v216 = 2048;
            *&v216[2] = a2;
            *&v216[10] = 1024;
            *&v216[12] = v149;
            *&v216[16] = 1024;
            *&v216[18] = v150;
            *&v216[22] = 1024;
            *&v216[24] = v136;
            *&v216[28] = 1024;
            *&v216[30] = v151;
            _os_log_impl(&dword_1DB56E000, v134, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Inserting frame at queue for decode HEAD: decOrder=%d beforeDecOrder=%d afterDecOrder=%d streamIndex=%d", buf, 0x3Eu);
          }
        }

        else if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
        {
          if (v114)
          {
            v137 = *(v114 + 24);
          }

          else
          {
            v137 = -1;
          }

          v155 = *(v37 + 12);
          v156 = *(v117 + 24);
          v157 = *(v37 + 26);
          *buf = 136316930;
          *&buf[4] = v133;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoReceiver_EnqueueToOrderedQueue";
          *&buf[22] = 1024;
          v215 = 2972;
          *v216 = 2048;
          *&v216[2] = a2;
          *&v216[10] = 1024;
          *&v216[12] = v155;
          *&v216[16] = 1024;
          *&v216[18] = v156;
          *&v216[22] = 1024;
          *&v216[24] = v137;
          *&v216[28] = 1024;
          *&v216[30] = v157;
          _os_log_debug_impl(&dword_1DB56E000, v134, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Inserting frame at queue for decode HEAD: decOrder=%d beforeDecOrder=%d afterDecOrder=%d streamIndex=%d", buf, 0x3Eu);
        }
      }

      *(v37 + 30) = *v189;
      *v189 = v37;
    }

    else
    {
      *(v37 + 30) = 0;
      *v189 = v37;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v161 = VRTraceErrorLogLevelToCSTR();
        v162 = *MEMORY[0x1E6986650];
        v163 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
          {
            v164 = *(v37 + 12);
            v165 = *(v37 + 26);
            *buf = 136316418;
            *&buf[4] = v161;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_EnqueueToOrderedQueue";
            *&buf[22] = 1024;
            v215 = 2990;
            *v216 = 2048;
            *&v216[2] = a2;
            *&v216[10] = 1024;
            *&v216[12] = v164;
            *&v216[16] = 1024;
            *&v216[18] = v165;
            _os_log_impl(&dword_1DB56E000, v162, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Queue empty, adding frame with decOrder=%d streamIndex=%d", buf, 0x32u);
          }
        }

        else if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
        {
          v171 = *(v37 + 12);
          v172 = *(v37 + 26);
          *buf = 136316418;
          *&buf[4] = v161;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoReceiver_EnqueueToOrderedQueue";
          *&buf[22] = 1024;
          v215 = 2990;
          *v216 = 2048;
          *&v216[2] = a2;
          *&v216[10] = 1024;
          *&v216[12] = v171;
          *&v216[16] = 1024;
          *&v216[18] = v172;
          _os_log_debug_impl(&dword_1DB56E000, v162, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Queue empty, adding frame with decOrder=%d streamIndex=%d", buf, 0x32u);
        }
      }
    }

LABEL_179:
    ++*(v6 + 2591);
LABEL_180:
    pthread_mutex_unlock((a2 + 42256));
  }

  VCVideoReceiverSampleBuffer_Destroy(&element);
  v175 = pthread_mutex_unlock((a2 + 42256));
  if (*(a2 + 1324) == 1)
  {
    if (*(a2 + 1325) == 1 && ((*(a2 + 1396) & 1) != 0 || (*(v6 + 2387) & 1) == 0))
    {
      _VideoReceiver_AssembleAndEnqueueFrame_cold_1(a2);
    }

    v177 = (v6 + 1607);
    v178 = micro(v175, v176);
    *(v6 + 1607) = *(v6 + 1591);
    v179 = *(v6 + 1599);
    TargetJitterQueueSize = VCVideoJitterBuffer_GetTargetJitterQueueSize(*(v6 + 2375));
    if (v179 == 1)
    {
      TargetJitterQueueSize = VCDefaults_GetDoubleValueForKey(@"videoPlayerJitterQueueSize", TargetJitterQueueSize);
    }

    *(v6 + 1591) = TargetJitterQueueSize;
    v181 = *v177;
    if (*v177 != TargetJitterQueueSize)
    {
      v182 = v178 - *(v6 + 1623);
      ++*(v6 + 1615);
      *(v6 + 1639) = *(v6 + 1639) + v182 * v181;
      if (TargetJitterQueueSize == 0.0 || v181 != 0.0)
      {
        *(v6 + 1631) = v182 + *(v6 + 1631);
      }

      *(v6 + 1623) = v178;
    }

    VCVideoPlayer_SetTargetQueueSizeInSeconds(*(v6 + 79), TargetJitterQueueSize);
    if (*(a2 + 1325) == 1)
    {
      *buf = 0;
      IsRunning = VCVideoJitterBuffer_GetIsRunning(*(v6 + 2375), buf);
      VCVideoPlayer_UpdateJitterBufferState(*(v6 + 79), IsRunning, *buf);
    }
  }

  VideoUtil_ConstructSubFrameIdentifer(v199, *(a3 + 68));
  kdebug_trace();
  return VCVideoPlayer_QueueAlarmForDecode(*(v6 + 79), VideoReceiver_VideoAlarmForDecode, a1, a4, WORD4(v200), v205 != 0, VideoFrameTimeInSeconds);
}

double _VideoReceiver_GetVideoFrameTimeInSeconds(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a2;
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1 + 40960;
  v6 = *(a1 + 43328);
  if (v6)
  {
    v7 = VCMediaStreamSynchronizer_scheduleTimeForDestinationRTPTimestamp(v6, a2);
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return v7;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v10 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136316418;
        v17 = v8;
        v18 = 2080;
        v19 = "_VideoReceiver_GetVideoFrameTimeInSeconds";
        v20 = 1024;
        v21 = 3260;
        v22 = 2048;
        v23 = a1;
        v24 = 2048;
        v25 = v7;
        v26 = 1024;
        v27 = v3;
        v11 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] videoFrameTimeInSeconds=%.6f from VCMediaStreamSynchronizer for RTPTimestamp=%u";
LABEL_10:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v11, &v16, 0x36u);
        return v7;
      }

      return v7;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      return v7;
    }

    v16 = 136316418;
    v17 = v8;
    v18 = 2080;
    v19 = "_VideoReceiver_GetVideoFrameTimeInSeconds";
    v20 = 1024;
    v21 = 3260;
    v22 = 2048;
    v23 = a1;
    v24 = 2048;
    v25 = v7;
    v26 = 1024;
    v27 = v3;
    v14 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] videoFrameTimeInSeconds=%.6f from VCMediaStreamSynchronizer for RTPTimestamp=%u";
LABEL_16:
    _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, v14, &v16, 0x36u);
    return v7;
  }

  LODWORD(a3) = *(v5 + 1472);
  v7 = (a2 + *&a3 * 4294967300.0) / *(a1 + 1180);
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    return v7;
  }

  v12 = VRTraceErrorLogLevelToCSTR();
  v9 = *MEMORY[0x1E6986650];
  v13 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      return v7;
    }

    v16 = 136316418;
    v17 = v12;
    v18 = 2080;
    v19 = "_VideoReceiver_GetVideoFrameTimeInSeconds";
    v20 = 1024;
    v21 = 3263;
    v22 = 2048;
    v23 = a1;
    v24 = 2048;
    v25 = v7;
    v26 = 1024;
    v27 = v3;
    v14 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] videoFrameTimeInSeconds=%.6f for RTPTimestamp=%u";
    goto LABEL_16;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136316418;
    v17 = v12;
    v18 = 2080;
    v19 = "_VideoReceiver_GetVideoFrameTimeInSeconds";
    v20 = 1024;
    v21 = 3263;
    v22 = 2048;
    v23 = a1;
    v24 = 2048;
    v25 = v7;
    v26 = 1024;
    v27 = v3;
    v11 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] videoFrameTimeInSeconds=%.6f for RTPTimestamp=%u";
    goto LABEL_10;
  }

  return v7;
}

void VideoReceiver_VideoAlarmForDecode(uint64_t a1, __int128 *a2, int a3, int a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a2 + 2);
  _VideoReceiver_VideoAlarmCommon(a1, &v4, a3, a4, 0, 1u, 0);
}

void _VideoReceiver_EnqueueFrameToJitterBuffer(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(a2 + 48) == 0.0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VideoReceiver_EnqueueFrameToJitterBuffer_cold_1();
        }
      }
    }

    else
    {
      v3 = a1 + 40960;
      if (*(a2 + 75) == 1)
      {
        ++*(a1 + 43308);
        *(a1 + 43302) = *(a2 + 40);
      }

      v21 = 0u;
      v22 = 0u;
      VCVideoPlayer_GetVideoPlayerStatsForJB(*(a1 + 40976), &v21);
      *(&v21 + 1) = *(v3 + 1488);
      v4 = *(v3 + 2348);
      WORD1(v21) = v4 - *(v3 + 2356);
      *(v3 + 2356) = v4;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        v7 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = *(a2 + 16);
            v9 = *(a2 + 36);
            v10 = *(a2 + 39);
            v11 = *(a2 + 40);
            v12 = *(a2 + 8);
            v13 = *(a2 + 75);
            *buf = 136317186;
            *&buf[4] = v5;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_EnqueueFrameToJitterBuffer";
            *&buf[22] = 1024;
            *&buf[24] = 2773;
            *&buf[28] = 1024;
            *&buf[30] = v8;
            v24 = 1024;
            v25 = v9;
            v26 = 1024;
            v27 = v10;
            v28 = 1024;
            v29 = v11;
            v30 = 1024;
            v31 = v12;
            v32 = 1024;
            v33 = v13;
            _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d Sending frame to video jitter buffer with DON=%u tileIndex=%u for isFrameSequenceNumberValid=%d FrameSequenceNumber=%u rtpTimeStamp=%u isFailedCompleteFrame=%d", buf, 0x40u);
          }
        }

        else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v15 = *(a2 + 16);
          v16 = *(a2 + 36);
          v17 = *(a2 + 39);
          v18 = *(a2 + 40);
          v19 = *(a2 + 8);
          v20 = *(a2 + 75);
          *buf = 136317186;
          *&buf[4] = v5;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoReceiver_EnqueueFrameToJitterBuffer";
          *&buf[22] = 1024;
          *&buf[24] = 2773;
          *&buf[28] = 1024;
          *&buf[30] = v15;
          v24 = 1024;
          v25 = v16;
          v26 = 1024;
          v27 = v17;
          v28 = 1024;
          v29 = v18;
          v30 = 1024;
          v31 = v19;
          v32 = 1024;
          v33 = v20;
          _os_log_debug_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d Sending frame to video jitter buffer with DON=%u tileIndex=%u for isFrameSequenceNumberValid=%d FrameSequenceNumber=%u rtpTimeStamp=%u isFailedCompleteFrame=%d", buf, 0x40u);
        }
      }

      v14 = *(v3 + 2312);
      *buf = v21;
      *&buf[16] = v22;
      VCVideoJitterBuffer_EnqueueFrame(v14, a2, buf);
    }
  }
}

__n128 VideoReceiver_InsertScheduledItem(int *a1, int *a2, _DWORD *a3)
{
  v6 = *a3;
  if (!v6)
  {
    LODWORD(v7) = 0;
LABEL_15:
    v14 = v7;
    goto LABEL_16;
  }

  v7 = 0;
  v8 = *a1;
  v9 = a2;
  while (1)
  {
    v11 = *v9;
    v9 += 6;
    v10 = v11;
    v12 = v8 - v11;
    if (v8 == v11 || v12 >= 0x7FFFFFFF)
    {
      break;
    }

    --v7;
    if (!(v6 + v7))
    {
      LODWORD(v7) = *a3;
      goto LABEL_15;
    }
  }

  if (v8 == v10)
  {
    LODWORD(v7) = (*(a1 + 16) ^ 1) - v7;
  }

  else
  {
    v7 = -v7;
  }

  if (v6 <= v7)
  {
    goto LABEL_15;
  }

  v14 = v7;
  memmove(&a2[6 * (v7 + 1)], &a2[6 * v7], 24 * (v6 - v7));
LABEL_16:
  v15 = &a2[6 * v14];
  result = *a1;
  v15[1].n128_u64[0] = *(a1 + 2);
  *v15 = result;
  *a3 = v6 + 1;
  return result;
}

void _VideoReceiver_ScheduleFramesForDecodingMultiway(uint64_t a1, unsigned int *a2, int a3)
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = a2 + 10220;
  v61 = 0;
  if (*(a2 + 42440) == 1)
  {
    v4 = a2;
    v5 = *a2;
    if (v5)
    {
      v7 = 0;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v65[3] = v8;
      v65[4] = v8;
      v65[1] = v8;
      v65[2] = v8;
      v64 = v8;
      v65[0] = v8;
      v9 = a2 + 424;
      v59 = a2 + 424;
      do
      {
        v10 = &v9[1088 * v7];
        if (*(v10 + 16))
        {
          v11 = v61;
          if (v61 == 4)
          {
            v34 = a1;
            v33 = 4;
            goto LABEL_52;
          }

          if (*(v10 + 70) != 1 || *(v10 + 2) == *v10)
          {
            v12 = 0;
            v66 = 0xAAAAAAAAAAAAAAAALL;
            v13 = &v66;
            v14 = 1;
            while (1)
            {
              v15 = v14;
              if (v11 + v12 > 3 || !VideoPacketBuffer_SchedulePastIncompleteFrame(*(v10 + 16), a3, v13, v3[386], 0, 0))
              {
                break;
              }

              v14 = 0;
              v13 = (&v66 + 4);
              v12 = 1;
              if ((v15 & 1) == 0)
              {
LABEL_16:
                v17 = 2;
                goto LABEL_19;
              }
            }

            while (1)
            {
              v16 = v12;
              if (v11 + v12 > 3 || !VideoPacketBuffer_ScheduleFutureFrame(*(v10 + 16), v10[38], a3, &v66 + v12, v3[386], 0, 0, *(v3 + 292)))
              {
                break;
              }

              v12 = 1;
              if (v16)
              {
                goto LABEL_16;
              }
            }

            if (v12)
            {
              v17 = 1;
LABEL_19:
              for (i = 0; i != v17; ++i)
              {
                v63 = 0;
                v62 = 0;
                if (*(v10 + 69))
                {
LABEL_21:
                  v19 = 0;
LABEL_22:
                  *&buf_4[4] = v10;
                  *&buf_4[12] = 0;
                  v20 = *(&v66 + i);
                  *buf_4 = 0;
                  buf = v20;
                  buf_4[12] = v19;
                  VideoReceiver_InsertScheduledItem(&buf, &v64, &v61);
                }

                else
                {
                  VideoPacketBuffer_GetFrameStreamIDs(*(v10 + 16), *(&v66 + i), &v62, &v63);
                  v21 = v62;
                  if (v62)
                  {
                    v22 = 0;
                    v23 = v63;
                    v24 = *(v3 + 1);
                    do
                    {
                      v26 = *v23++;
                      v25 = v26;
                      if ((v24 & 0x1000000000000) != 0 && (v25 == *(v3 + 1) || WORD1(v24) == v25))
                      {
                        v19 = 1;
                        goto LABEL_22;
                      }

                      v28 = *v3;
                      if ((*v3 & 0x1000000000000) != 0)
                      {
                        v30 = v25 == v28 || v25 == WORD1(v28);
                        v22 |= v30;
                      }

                      --v21;
                    }

                    while (v21);
                    if (v22)
                    {
                      goto LABEL_21;
                    }
                  }

                  else if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v31 = VRTraceErrorLogLevelToCSTR();
                    v32 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      buf = 136315906;
                      *buf_4 = v31;
                      *&buf_4[8] = 2080;
                      *&buf_4[10] = "_VideoReceiver_FindCurrentAndTargetFramesToBeScheduledForMultiway";
                      *&buf_4[18] = 1024;
                      v69 = 4460;
                      v70 = 2048;
                      v71 = a2;
                      _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] No valid stream id found in packet!", &buf, 0x26u);
                    }
                  }
                }
              }
            }

            v4 = a2;
            v5 = *a2;
            v9 = v59;
          }
        }

        ++v7;
      }

      while (v7 < v5);
      v33 = v61;
      v34 = a1;
      if (!v61)
      {
        return;
      }

LABEL_52:
      v35 = 0;
      for (j = v65; ; j += 24)
      {
        v37 = *(j - 1);
        if ((*(v37 + 69) & 1) == 0 && (v35 & 1) != 0 && *j != 1)
        {
          goto LABEL_77;
        }

        _VideoReceiver_AssembleAndEnqueueFrame(v34, v4, *(j - 1), *(j - 4));
        v38 = *(v37 + 69);
        if (v38 != 1)
        {
          break;
        }

        if ((v3[4] & 1) == 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v39 = VRTraceErrorLogLevelToCSTR();
            v40 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v41 = *(v4 + 162);
              v42 = *v3;
              buf = 136316418;
              *buf_4 = v39;
              *&buf_4[8] = 2080;
              *&buf_4[10] = "_VideoReceiver_ApplyMultiwaySchedule";
              *&buf_4[18] = 1024;
              v69 = 4703;
              v70 = 2048;
              v71 = v4;
              v72 = 2048;
              v73 = v41;
              v74 = 1024;
              v75 = v42;
              _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] participantId[%llu] Successfully switched stream %d -> 1:1", &buf, 0x36u);
            }
          }

          _VideoReceiver_UpdateStreamSwitchContextForTargetStream(v4, *v37, v37[1], v37[2]);
          _VideoReceiver_CompleteStreamSwitch(v4, v37);
LABEL_62:
          _VideoReceiver_SwitchIntoOneToOne(v4, v38, v37);
LABEL_63:
          v35 = 1;
          v34 = a1;
        }

LABEL_77:
        if (!--v33)
        {
          return;
        }
      }

      if (*j != 1)
      {
        goto LABEL_77;
      }

      if ((v3[4] & 1) == 0 && *(v3 + 6) == 1 && *(v3 + 14) == 1)
      {
        if ((*v3 == *(v3 + 4)) | v35 & 1)
        {
          goto LABEL_77;
        }
      }

      else if (v35)
      {
        v35 = 1;
        goto LABEL_77;
      }

      if (!VideoPacketBuffer_FirstIDRReceived(*(v37 + 16)))
      {
        goto LABEL_77;
      }

      v43 = *(v3 + 16);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v43 == 1)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v45 = VRTraceErrorLogLevelToCSTR();
          v46 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v47 = *(v4 + 162);
            v48 = *(v3 + 4);
            buf = 136316418;
            *buf_4 = v45;
            *&buf_4[8] = 2080;
            *&buf_4[10] = "_VideoReceiver_ApplyMultiwaySchedule";
            *&buf_4[18] = 1024;
            v69 = 4716;
            v70 = 2048;
            v71 = v4;
            v72 = 2048;
            v73 = v47;
            v74 = 1024;
            v75 = v48;
            v49 = v46;
            v50 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] participantId[%llu] Successfully switched stream 1:1 -> %d";
            v51 = 54;
LABEL_82:
            _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, v50, &buf, v51);
          }
        }
      }

      else if (ErrorLogLevelForModule >= 7)
      {
        v52 = VRTraceErrorLogLevelToCSTR();
        v53 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v54 = *(v4 + 162);
          v55 = *v37;
          v56 = *v3;
          v57 = *(v3 + 4);
          buf = 136316930;
          *buf_4 = v52;
          *&buf_4[8] = 2080;
          *&buf_4[10] = "_VideoReceiver_ApplyMultiwaySchedule";
          *&buf_4[18] = 1024;
          v69 = 4718;
          v70 = 2048;
          v71 = v4;
          v72 = 2048;
          v73 = v54;
          v74 = 1024;
          v75 = v55;
          v76 = 1024;
          v77 = v56;
          v78 = 1024;
          v79 = v57;
          v49 = v53;
          v50 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] participantId[%llu] streamId:[%d] Successfully switched stream %d -> %d";
          v51 = 66;
          goto LABEL_82;
        }
      }

      _VideoReceiver_CompleteStreamSwitch(v4, v37);
      if (*(v3 + 16) == 1)
      {
        goto LABEL_62;
      }

      goto LABEL_63;
    }
  }
}

uint64_t _VideoReceiver_ProcessVideoRTPInternal(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v221 = *MEMORY[0x1E69E9840];
  v8 = (a2 + 40880);
  v197 = *(a4 + 12);
  v198 = *(a4 + 20);
  value = *(a4 + 24);
  v210 = 0;
  v9 = *(a4 + 40);
  v10 = micro(a1, a2);
  v209 = 0;
  v216 = 0;
  v215 = 0u;
  v214 = 0u;
  v213 = 0u;
  blockBufferOut = 0;
  v207 = 0;
  v208 = 0;
  v205 = -21846;
  *(v8 + 292) = v9;
  v212 = 0;
  v11 = *(a4 + 136);
  v12 = *(a4 + 144);
  v204 = 0u;
  v202 = 0u;
  memset(v203, 0, sizeof(v203));
  v201 = 0u;
  if (*(v8 + 2065) == 1)
  {
    if (*(a4 + 88))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = *v8;
          v16 = v8[4];
          v17 = *(a4 + 88);
          v18 = *(a4 + 64);
          *buf = 136316930;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoReceiver_ProcessVideoRTPInternal";
          *&buf[22] = 1024;
          *&buf[24] = 3943;
          *&buf[28] = 2048;
          *&buf[30] = a2;
          *&buf[38] = 1024;
          *&buf[40] = v15;
          *&buf[44] = 1024;
          *&buf[46] = v16;
          *&buf[50] = 1024;
          *&buf[52] = v17;
          *&buf[56] = 1024;
          *&buf[58] = v18;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] currentStreamId:%u targetStreamId:%u received packet with numOfStreamIDs:%d streamID[0]:%u", buf, 0x3Eu);
        }
      }
    }
  }

  if ((_VideoReceiver_ShouldProcessPacket(a2, a3, *(a4 + 50), *(a4 + 56), (a4 + 64), *(a4 + 88)) & 1) == 0)
  {
    v28 = 2149515265;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v31 = *v8;
        v32 = v8[4];
        v33 = *(a4 + 88);
        v34 = *(a4 + 64);
        v35 = *(a4 + 66);
        v36 = *(a4 + 68);
        v37 = *(a4 + 70);
        *buf = 136317698;
        *&buf[4] = v29;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_ProcessVideoRTPInternal";
        *&buf[22] = 1024;
        *&buf[24] = 3948;
        *&buf[28] = 2048;
        *&buf[30] = a2;
        *&buf[38] = 1024;
        *&buf[40] = v31;
        *&buf[44] = 1024;
        *&buf[46] = v32;
        *&buf[50] = 1024;
        *&buf[52] = v33;
        *&buf[56] = 1024;
        *&buf[58] = v34;
        *&buf[62] = 1024;
        *&buf[64] = v35;
        *&buf[68] = 1024;
        *&buf[70] = v36;
        *&buf[74] = 1024;
        *&buf[76] = v37;
        v38 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] Ignoring video packet (currentID:%d target:%d numOfStreamIDs:%d streamIDs:[%d %d %d %d...]) !";
        v39 = v30;
        v40 = 80;
LABEL_184:
        _os_log_error_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
        return v28;
      }
    }

    return v28;
  }

  v19 = (a2 + 40900);
  v196 = (a4 + 8);
  v20 = value;
  kdebug_trace();
  if (*(a2 + 1353) == 1 && (*(a3 + 69) & 1) == 0)
  {
    if (*(a4 + 88))
    {
      v42 = *a3;
      v43 = *(a4 + 88) - 1;
      v44 = (a4 + 64);
      do
      {
        v46 = *v44++;
        v45 = v46;
        v48 = v43-- != 0;
        v49 = v45 == v42;
        v21 = v45 != v42;
      }

      while (!v49 && v48);
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  v195 = a1;
  v201 = xmmword_1DBD45AE0;
  *&v202 = &blockBufferOut;
  DWORD2(v202) = 0;
  memset(v203, 0, 18);
  *(&v203[1] + 1) = &v212;
  *&v204 = a4 + 8;
  BYTE8(v204) = v21;
  v22 = *(a3 + 1086);
  if (*(a2 + 42440) != 1)
  {
    v41 = 0;
    *(a2 + 42436) = value;
    *(a2 + 42440) = 1;
    goto LABEL_33;
  }

  v23 = *(a2 + 42436);
  if (v23 == value || (v23 - value) > 0x7FFFFFFE)
  {
    if (v23 == value)
    {
      goto LABEL_21;
    }

    v41 = 0;
    *(a2 + 42436) = value;
  }

  else
  {
    ++*(a2 + 43208);
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
LABEL_21:
      v41 = 1;
      goto LABEL_33;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a2 + 42436);
      v27 = *(a2 + 43208);
      *buf = 136316674;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoReceiver_CheckStartOfNewFrameAndOutOfOrderCondition";
      *&buf[22] = 1024;
      *&buf[24] = 3471;
      *&buf[28] = 2048;
      *&buf[30] = a2;
      *&buf[38] = 1024;
      *&buf[40] = v26;
      *&buf[44] = 1024;
      v20 = value;
      *&buf[46] = value;
      *&buf[50] = 1024;
      *&buf[52] = v27;
      _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Video packet arrived out of order. lastReceivedPacketTimestamp=%u, packetTimestamp=%u, significantOutOfOrderPacketCount=%u", buf, 0x38u);
      goto LABEL_21;
    }

    v41 = 1;
    v20 = value;
  }

LABEL_33:
  *(a2 + 42456) = v22;
  if (!v11)
  {
    goto LABEL_89;
  }

  v50 = v41;
  v200 = 0;
  RTPGetRecvStats(*(a3 + 6), &v200 + 1, &v200);
  if (VCMediaControlInfo_IsLossStatsEnabled(*(a2 + 43300)) && (v51 = *(a3 + 16)) != 0)
  {
    memcpy(buf, &unk_1DBD481B8, sizeof(buf));
    VideoPacketBuffer_GetCachedBurstLossStatistics(v51, buf);
    memcpy(__dst, buf, sizeof(__dst));
    if (*(a3 + 101) == 1)
    {
      _VideoReceiver_SendRTCPResiliencyInfo(a2, a3, 0, 0, SWORD2(v200), __dst, v10);
    }

    _VideoReceiver_PackFrameLoss(a2, &v200 + 2, buf);
  }

  else if (*(a3 + 116) == 1)
  {
    HIDWORD(v200) = 0;
  }

  v52 = *(a3 + 10);
  if (!v52)
  {
    v63 = *(a2 + 40904);
    if ((!v63 || !*(v63 + 80)) && !*(a2 + 42384))
    {
      if (*(a2 + 43324))
      {
        if (!VCCVOExtensionUtils_CameraStatusBitsFromCVOExtension(*(a2 + 43324), v12, v11, v203 + 12) && VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VideoReceiver_ProcessVideoRTPInternal_cold_1();
          }
        }
      }

LABEL_75:
      LOBYTE(v64) = v212;
      if (v212)
      {
        v20 = value;
        v41 = v50;
        if (DWORD1(v213) >> 30)
        {
          if (DWORD1(v213) >> 30 == 1)
          {
            v64 = ((DWORD1(v213) >> 22) & 1) == 0;
          }

          else
          {
            v64 = (DWORD1(v213) >> 26) & 1;
          }
        }

        else
        {
          v64 = ((DWORD1(v213) >> 23) & 1) == 0;
        }

        if (v64 && *(a2 + 43288) == 1)
        {
          FECUtil_UpdateParitySequenceNumberHistory(a2 + 43288, *(*(&v203[1] + 1) + 54));
          LOBYTE(v64) = 1;
        }
      }

      else
      {
        v20 = value;
        v41 = v50;
      }

      if (LOWORD(v203[1]) == 1)
      {
        ++*(a2 + 42784);
      }

      if (v64)
      {
        v65 = 1;
        goto LABEL_92;
      }

LABEL_89:
      if ((*(a4 + 202) & 1) == 0)
      {
        _VideoReceiverStreamStats_AddPacket((a3 + 78), *(a4 + 28), *(a4 + 20));
      }

      v65 = 0;
LABEL_92:
      if (*(a2 + 1329) == 1)
      {
        v66 = v210;
        if (v210)
        {
          v67 = *(a2 + 1672);
          if (v67)
          {
            v67(*(a2 + 1656));
            v66 = v210;
          }

          VideoTransmitter_ACKLTRFrame(*(a2 + 40928), v66);
        }
      }

      v194 = v41;
      if (!(v41 & 1 | ((*(a2 + 1332) & 1) == 0)))
      {
        v68 = *(a2 + 1180);
        buf[23] = 0;
        *&buf[19] = 0;
        memset(&buf[72], 0, 128);
        v69 = *(a2 + 42704);
        v70 = *(a2 + 42488);
        v71 = *(a2 + 43152);
        *buf = 7;
        *&buf[8] = v9;
        *&buf[16] = 0;
        buf[18] = 1;
        *&buf[24] = 4;
        *&buf[28] = v20;
        *&buf[32] = v68;
        *&buf[36] = v69;
        *&buf[40] = 0;
        *&buf[48] = v9;
        *&buf[56] = 0;
        *&buf[64] = v70;
        VCRateControlSetStatistics(v71, buf);
      }

      v72 = v65;
      v73 = *(a4 + 40);
      v74 = *(a4 + 24);
      v75 = *(a4 + 8);
      if ((*v19 - 2) >= 2)
      {
        if (*v19 != 1 || !*(a4 + 88))
        {
          goto LABEL_126;
        }

        v76 = *(a4 + 64);
      }

      else
      {
        v76 = 0;
      }

      if (v73 - *(a2 + 43032) < 2.0)
      {
        goto LABEL_126;
      }

      v192 = *(a4 + 120);
      FrameSliceHeader = ReadFrameSliceHeader(*(a4 + 12), *(a4 + 168), *(a4 + 160), 0, 0);
      if (FrameSliceHeader <= 6 && ((1 << FrameSliceHeader) & 0x4C) != 0)
      {
        *(a2 + 43024) = v74;
        *(a2 + 43028) = 1;
        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          goto LABEL_118;
        }

        v189 = VRTraceErrorLogLevelToCSTR();
        v78 = *MEMORY[0x1E6986650];
        v79 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_118;
          }

          v80 = *(a2 + 43024);
          *buf = 136316418;
          *&buf[4] = v189;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoReceiver_ProcessProbingSequence";
          *&buf[22] = 1024;
          *&buf[24] = 3410;
          *&buf[28] = 2048;
          *&buf[30] = a2;
          *&buf[38] = 1024;
          *&buf[40] = v80;
          *&buf[44] = 1024;
          *&buf[46] = v76;
          v81 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] Receiving a packet of a probing sequence:%u, streamID:%u";
          v82 = v78;
          v83 = 50;
          goto LABEL_111;
        }

        if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
LABEL_118:
          v86 = *(a2 + 43152);
          if (v86)
          {
            v87 = *(a2 + 1168);
            v88 = *(a2 + 43028);
            *buf = 4;
            *&buf[8] = v73;
            *&buf[16] = 0;
            buf[18] = v75 != 0;
            buf[19] = 1;
            *&buf[20] = 0;
            *&buf[24] = v87;
            buf[28] = 0;
            buf[29] = v88;
            *&buf[30] = v75 != 0;
            *&buf[32] = v74;
            *&buf[36] = v192;
            *&buf[40] = v73;
            memset(&buf[52], 0, 148);
            *&buf[48] = v74;
            VCRateControlSetStatistics(v86, buf);
            if (!v75)
            {
              goto LABEL_124;
            }
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
          {
            _VideoReceiver_ProcessVideoRTPInternal_cold_2();
            if (!v75)
            {
LABEL_124:
              if (*(a2 + 43028))
              {
                goto LABEL_126;
              }
            }
          }

          else if (!v75)
          {
            goto LABEL_124;
          }

          *(a2 + 43032) = v73;
          goto LABEL_126;
        }

        v188 = *(a2 + 43024);
        *buf = 136316418;
        *&buf[4] = v189;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_ProcessProbingSequence";
        *&buf[22] = 1024;
        *&buf[24] = 3410;
        *&buf[28] = 2048;
        *&buf[30] = a2;
        *&buf[38] = 1024;
        *&buf[40] = v188;
        *&buf[44] = 1024;
        *&buf[46] = v76;
        v185 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] Receiving a packet of a probing sequence:%u, streamID:%u";
        v186 = v78;
        v187 = 50;
LABEL_274:
        _os_log_debug_impl(&dword_1DB56E000, v186, OS_LOG_TYPE_DEBUG, v185, buf, v187);
        goto LABEL_118;
      }

      if (v74 == *(a2 + 43024))
      {
        *(a2 + 43028) = 1;
        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          goto LABEL_118;
        }

        v190 = VRTraceErrorLogLevelToCSTR();
        v84 = *MEMORY[0x1E6986650];
        v85 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_118;
          }

          *buf = 136316162;
          *&buf[4] = v190;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoReceiver_ProcessProbingSequence";
          *&buf[22] = 1024;
          *&buf[24] = 3414;
          *&buf[28] = 2048;
          *&buf[30] = a2;
          *&buf[38] = 1024;
          *&buf[40] = v76;
          v81 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] Continue receiving a packet of the same probing sequence, streamID:%u";
          goto LABEL_197;
        }

        if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_118;
        }

        *buf = 136316162;
        *&buf[4] = v190;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_ProcessProbingSequence";
        *&buf[22] = 1024;
        *&buf[24] = 3414;
        *&buf[28] = 2048;
        *&buf[30] = a2;
        *&buf[38] = 1024;
        *&buf[40] = v76;
        v185 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] Continue receiving a packet of the same probing sequence, streamID:%u";
        goto LABEL_272;
      }

      if (*(a2 + 43028) == 1)
      {
        *(a2 + 43028) = 0;
        *(a2 + 43024) = 0;
        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          goto LABEL_118;
        }

        v191 = VRTraceErrorLogLevelToCSTR();
        v84 = *MEMORY[0x1E6986650];
        v116 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_118;
          }

          *buf = 136316162;
          *&buf[4] = v191;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoReceiver_ProcessProbingSequence";
          *&buf[22] = 1024;
          *&buf[24] = 3419;
          *&buf[28] = 2048;
          *&buf[30] = a2;
          *&buf[38] = 1024;
          *&buf[40] = v76;
          v81 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] Receiving a packet that is not a probing sequence, streamID:%u";
LABEL_197:
          v82 = v84;
          v83 = 44;
LABEL_111:
          _os_log_impl(&dword_1DB56E000, v82, OS_LOG_TYPE_DEFAULT, v81, buf, v83);
          goto LABEL_118;
        }

        if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_118;
        }

        *buf = 136316162;
        *&buf[4] = v191;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_ProcessProbingSequence";
        *&buf[22] = 1024;
        *&buf[24] = 3419;
        *&buf[28] = 2048;
        *&buf[30] = a2;
        *&buf[38] = 1024;
        *&buf[40] = v76;
        v185 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] Receiving a packet that is not a probing sequence, streamID:%u";
LABEL_272:
        v186 = v84;
        v187 = 44;
        goto LABEL_274;
      }

LABEL_126:
      ++*(a2 + 42704);
      v89 = *(a2 + 1312);
      if (v89)
      {
        v90 = *(a4 + 96);
        v91 = *(a2 + 43288);
        *buf = v91;
        *&buf[8] = *(a2 + 43296);
        v92 = v197;
        v93 = v72;
        if ((v91 - 1) > 1)
        {
          if (v91)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                _VideoReceiver_ProcessVideoRTPInternal_cold_3();
              }
            }
          }

          else if ((v72 & 1) == 0)
          {
            if (!v90)
            {
              ++v89[60];
            }

            ++v89[62];
          }
        }

        else
        {
          if (!v90)
          {
            ++v89[60];
          }

          ++v89[62];
          v89[64] += FECUtil_GetExpectedParityPacketCount(buf);
        }
      }

      else
      {
        v92 = v197;
        v93 = v72;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v94 = VRTraceErrorLogLevelToCSTR();
          v95 = *MEMORY[0x1E6986650];
          v96 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              *&buf[4] = v94;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoReceiver_UpdateWRMVideoPacketMetrics";
              *&buf[22] = 1024;
              *&buf[24] = 2172;
              *&buf[28] = 2048;
              *&buf[30] = a2;
              _os_log_impl(&dword_1DB56E000, v95, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Uninitialized wrmInfo: cannot update WRM video packet metrics!", buf, 0x26u);
            }
          }

          else if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
          {
            _VideoReceiver_ProcessVideoRTPInternal_cold_4();
          }
        }
      }

      if (v92 > 122)
      {
        if (v92 == 124)
        {
          goto LABEL_154;
        }

        if (v92 != 123)
        {
          goto LABEL_155;
        }
      }

      else if (v92 != 100)
      {
        if (v92 != 110)
        {
LABEL_155:
          v98 = RTPProcessH263Packet(v196, &v201, &v201 + 1, &v205 + 1, &v205, *(a2 + 43240), &blockBufferOut);
          v28 = v98;
          DWORD2(v201) = (HIBYTE(v205) >> 1) & 1;
          HIDWORD(v201) = HIBYTE(v205) & 1;
          if ((v98 & 0x80000000) != 0)
          {
            goto LABEL_156;
          }

          goto LABEL_169;
        }

LABEL_154:
        v205 = 0;
        *(&v201 + 1) = 0x100000001;
        VCBlockBuffer_Copy(a4 + 152, &blockBufferOut);
        goto LABEL_169;
      }

      v205 = 0;
      if (v93)
      {
        v28 = 0;
      }

      else
      {
        if (*(a2 + 1306) <= 1u)
        {
          if (*(a2 + 1558) == 1)
          {
            v97 = *(a2 + 1568);
          }

          else
          {
            v97 = 0;
          }
        }

        else
        {
          v97 = 1;
        }

        if (v92 == 123)
        {
          v101 = RTPProcessH264FragmentationHeader(*(a4 + 168), *(a4 + 160), &v201 + 2, (&v201 | 0xC), (a4 + 32), (a4 + 34), &v209, v97 & 1);
        }

        else
        {
          v101 = RTPProcessHEVCFragmentationHeader(*(a4 + 168), *(a4 + 160), &v201 + 2, (&v201 | 0xC), (a4 + 32), (a4 + 34), v97 & 1, &v209);
        }

        v28 = v101;
      }

      VCBlockBuffer_Copy(a4 + 152, &blockBufferOut);
      if ((v28 & 0x80000000) != 0)
      {
LABEL_156:
        VCBlockBuffer_Clear(&blockBufferOut);
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v100 = VRTraceErrorLogLevelToCSTR();
          v62 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *&buf[4] = v100;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_ProcessVideoRTPInternal";
            *&buf[22] = 1024;
            *&buf[24] = 4053;
            *&buf[28] = 2048;
            *&buf[30] = a2;
            *&buf[38] = 1024;
            *&buf[40] = v28;
            v38 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] UNEXPECTED hResult:%d";
            goto LABEL_159;
          }
        }

        return v28;
      }

LABEL_169:
      v193 = a3;
      v102 = v93;
      if (*(a2 + 42912) == 1)
      {
        v103 = (a2 + 42920);
        if (*(a2 + 42920))
        {
          *&v104 = 0xAAAAAAAAAAAAAAAALL;
          *(&v104 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&buf[284] = v104;
          *&buf[257] = v104;
          *&buf[273] = v104;
          *&buf[241] = v104;
          *&buf[225] = v104;
          *&buf[209] = v104;
          *&buf[193] = v104;
          *&buf[177] = v104;
          *&buf[161] = v104;
          *&buf[145] = v104;
          *&buf[129] = v104;
          *&buf[113] = v104;
          *&buf[97] = v104;
          *&buf[81] = v104;
          *&buf[65] = v104;
          *&buf[49] = v104;
          *&buf[33] = v104;
          *&buf[17] = v104;
          *&buf[1] = v104;
          LODWORD(__dst[6]) = -1431655766;
          __dst[5] = v104;
          __dst[4] = v104;
          __dst[3] = v104;
          __dst[2] = v104;
          __dst[1] = v104;
          __dst[0] = v104;
          buf[0] = 0;
          v105 = micro(v98, v99);
          fprintf(*v103, "[%.6f:%04X:%08X:%d:%08X]\n", v105, v198, value, v207, DWORD1(v213));
          if (v207)
          {
            for (i = 0; i < v207; ++i)
            {
              __sprintf_chk(__dst, 0, 0x64uLL, " %02X", *(v208 + i));
              __strlcat_chk(buf, __dst, 300, 300);
              if ((~i & 0x1F) == 0)
              {
                fprintf(*v103, "%s\n", buf);
                buf[0] = 0;
              }
            }

            v92 = v197;
            if ((i & 0x1F) != 0)
            {
              fprintf(*v103, "%s\n", buf);
            }
          }
        }
      }

      if (!v207)
      {
        v28 = 2149515265;
        VCBlockBuffer_Clear(&blockBufferOut);
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v109 = VRTraceErrorLogLevelToCSTR();
          v110 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316674;
            *&buf[4] = v109;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_ProcessVideoRTPInternal";
            *&buf[22] = 1024;
            *&buf[24] = 4064;
            *&buf[28] = 2048;
            *&buf[30] = a2;
            *&buf[38] = 1024;
            *&buf[40] = v198;
            *&buf[44] = 1024;
            *&buf[46] = value;
            *&buf[50] = 1024;
            *&buf[52] = v92;
            v38 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] UNEXPECTED: Received 0-length pkt seq: %d ts: %d payload: %d ";
            v39 = v110;
            v40 = 56;
            goto LABEL_184;
          }
        }

        return v28;
      }

      pthread_mutex_lock((a2 + 42192));
      v107 = *(v204 + 112);
      *(a2 + 42400) += v107;
      v108 = value;
      if (v102)
      {
        *(a2 + 42404) += v107;
      }

      else
      {
        *(a2 + 42412) += *(v202 + 8);
      }

      v111 = v195;
      pthread_mutex_unlock((a2 + 42192));
      *(a2 + 43384) = _VideoReceiver_HandleStreamSwitch(a2, v193);
      if ((v193[68] & 1) == 0)
      {
        *(v193 + 38) = *(a4 + 28);
        if (!*(v193 + 16))
        {
          if (*(v193 + 70) == 1 && (v112 = v193[2], *v193 != v112))
          {
            Stream = _VideoReceiver_GetStream(a2, v112, *(v193 + 69));
            if (Stream)
            {
              v119 = Stream;
              v120 = *(Stream + 16);
              if (v120)
              {
                *(v193 + 16) = v120;
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v121 = VRTraceErrorLogLevelToCSTR();
                  v122 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    v123 = *v193;
                    v124 = *(v193 + 16);
                    v125 = *v119;
                    *buf = 136316674;
                    *&buf[4] = v121;
                    *&buf[12] = 2080;
                    *&buf[14] = "_VideoReceiver_CreateVPB";
                    *&buf[22] = 1024;
                    *&buf[24] = 3870;
                    *&buf[28] = 2048;
                    *&buf[30] = a2;
                    *&buf[38] = 1024;
                    *&buf[40] = v123;
                    *&buf[44] = 2048;
                    *&buf[46] = v124;
                    *&buf[54] = 1024;
                    *&buf[56] = v125;
                    _os_log_impl(&dword_1DB56E000, v122, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Higher layer in temporal scaling group with streamID %d, uses base layer's VPB[%p]. Base Layer streamID is %d", buf, 0x3Cu);
                  }
                }

                *(v193 + 136) = 1;
              }

              else
              {
                _VideoReceiver_ProcessVideoRTPInternal_cold_5();
              }
            }

            else
            {
              _VideoReceiver_ProcessVideoRTPInternal_cold_6();
            }
          }

          else
          {
            memset(&buf[16], 0, 384);
            *buf = 0u;
            *buf = *(a4 + 20);
            v113 = *(a2 + 1180);
            *&buf[4] = *(a4 + 24);
            *&buf[8] = v113;
            *&buf[16] = *(a2 + 43416);
            *&buf[224] = *(a2 + 1208);
            buf[228] = *(a2 + 43000) != 0;
            buf[229] = *(a2 + 1352);
            if (*(a2 + 1306) <= 1u)
            {
              v115 = *(a2 + 1558);
              if (v115 == 1)
              {
                v117 = *(a2 + 1568);
              }

              else
              {
                v117 = 0;
              }

              buf[240] = v117 & 1;
              v114 = *(a2 + 1397);
            }

            else
            {
              v114 = 0;
              buf[240] = 1;
              LOBYTE(v115) = *(a2 + 1558);
            }

            buf[241] = v114 & 1;
            *&buf[248] = v193;
            if (*(v193 + 536))
            {
              v126 = _VideoReceiver_DecryptFrame;
            }

            else
            {
              v126 = 0;
            }

            *&buf[256] = v126;
            *&buf[264] = a2;
            if (*(a2 + 1324))
            {
              v127 = _VideoReceiver_EnqueueFailedFrameToJitterBuffer;
            }

            else
            {
              v127 = 0;
            }

            *&buf[272] = v127;
            buf[280] = *(a2 + 1404);
            *&buf[288] = *(a2 + 43376);
            buf[364] = *(a2 + 1477);
            buf[365] = *(a2 + 43473);
            buf[367] = v115;
            buf[366] = *(v193 + 124) == 2;
            snprintf(&buf[368], 0x1EuLL, "parent=%p", a2);
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v128 = VRTraceErrorLogLevelToCSTR();
              v129 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v130 = buf[280];
                v131 = buf[366];
                v132 = FourccToCStr(*(a2 + 1392));
                LODWORD(__dst[0]) = 136316674;
                *(__dst + 4) = v128;
                WORD6(__dst[0]) = 2080;
                *(__dst + 14) = "_VideoReceiver_NewVideoPacketBufferConfig";
                WORD3(__dst[1]) = 1024;
                DWORD2(__dst[1]) = 3853;
                WORD6(__dst[1]) = 2048;
                *(&__dst[1] + 14) = a2;
                WORD3(__dst[2]) = 1024;
                DWORD2(__dst[2]) = v130;
                v108 = value;
                WORD6(__dst[2]) = 1024;
                *(&__dst[2] + 14) = v131;
                WORD1(__dst[3]) = 2080;
                *(&__dst[3] + 4) = v132;
                _os_log_impl(&dword_1DB56E000, v129, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d [%p] isServerPacketRetransmissionEnabled=%d, isFrameBasedFECEnabled=%d, streamGroupID=%s", __dst, 0x3Cu);
              }
            }

            _VCVideoReceiver_InitDumpFileName(a2, &buf[24]);
            v133 = *(a2 + 1424);
            v134 = *(a2 + 1456);
            *&buf[328] = *(a2 + 1440);
            *&buf[344] = v134;
            *&buf[296] = *(a2 + 1408);
            *&buf[312] = v133;
            *&buf[360] = *(a2 + 1472);
            *(v193 + 16) = VideoPacketBuffer_Create(buf);
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v135 = VRTraceErrorLogLevelToCSTR();
              v136 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v137 = *(v193 + 16);
                v138 = *v193;
                v139 = *(v193 + 70);
                v140 = v193[2] == v138;
                LODWORD(__dst[0]) = 136316930;
                *(__dst + 4) = v135;
                WORD6(__dst[0]) = 2080;
                *(__dst + 14) = "_VideoReceiver_CreateVPB";
                WORD3(__dst[1]) = 1024;
                DWORD2(__dst[1]) = 3877;
                WORD6(__dst[1]) = 2048;
                *(&__dst[1] + 14) = a2;
                WORD3(__dst[2]) = 2048;
                *(&__dst[2] + 1) = v137;
                LOWORD(__dst[3]) = 1024;
                *(&__dst[3] + 2) = v138;
                WORD3(__dst[3]) = 1024;
                DWORD2(__dst[3]) = v139;
                WORD6(__dst[3]) = 1024;
                *(&__dst[3] + 14) = v140;
                _os_log_impl(&dword_1DB56E000, v136, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] created VideoPacketBuffer[%p] for stream:%d, isTemporalScalingEnabled=%d, isBaseLayerStream=%d", __dst, 0x42u);
              }
            }

            *(v193 + 136) = 1;
            v111 = v195;
          }
        }
      }

      v141 = *v193;
      v142 = v193[2] == v141;
      VideoPacketDump_RTPLog(*(a2 + 42984), v141, v108, v198, HIWORD(v203[0]), v212, *(v193 + 70), v142);
      VideoPacketBuffer_AddPacket(*(v193 + 16), &v201, *(v193 + 70), v142, *(a2 + 43384));
      VCBlockBuffer_Clear(&blockBufferOut);
      v143 = *(a2 + 1309);
      if ((v194 & v143) == 1)
      {
        v143 = *v196 != 0;
      }

      if (*(a2 + 1353) & 1) == 0 && ((*(a4 + 49) | v143))
      {
        if (*(a2 + 1309))
        {
          dispatch_semaphore_signal(*(a2 + 43528));
        }

        else
        {
          _VideoReceiver_ProcessCompletedFrames(v111, a2, v193, value);
        }

        v144 = v10 - *(a2 + 42472);
        memset(buf, 0, 168);
        _VideoReceiver_SendRTCP(a2, v193, buf, v144 > 5.0, v10);
      }

      v145 = *(a2 + 43328);
      if (v145 && *(a2 + 43193) == 1)
      {
        LODWORD(__dst[0]) = 0;
        if (!VCMediaStreamSynchronizer_sourceRTPTimestampFromDestinationRTPTimestamp(v145, value, __dst))
        {
          _VideoReceiver_CallAlarms(a2, MEMORY[0x1E6960CC0], v10);
LABEL_238:
          if (*(a2 + 1420) == 1)
          {
            v151 = *(v193 + 538);
            if (v151 != 0.0)
            {
              v152 = *(a2 + 42680);
              v153 = v10 - v151;
              if (v152 == 0.0 || v153 > 0.15 && *(a2 + 42872) != 0.0)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 5)
                {
                  v154 = VRTraceErrorLogLevelToCSTR();
                  v155 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    v156 = *(v193 + 16);
                    v157 = *(a2 + 43344);
                    *buf = 136317186;
                    *&buf[4] = v154;
                    *&buf[12] = 2080;
                    *&buf[14] = "_VideoReceiver_ShallSendCachedDelayedFIR";
                    *&buf[22] = 1024;
                    *&buf[24] = 2059;
                    *&buf[28] = 2048;
                    *&buf[30] = a2;
                    *&buf[38] = 2048;
                    *&buf[40] = v156;
                    *&buf[48] = 2048;
                    *&buf[50] = v153;
                    *&buf[58] = 2048;
                    *&buf[60] = 0x3FC3333333333333;
                    *&buf[68] = 2048;
                    *&buf[70] = v157;
                    *&buf[78] = 1024;
                    *&buf[80] = v152 == 0.0;
                    _os_log_impl(&dword_1DB56E000, v155, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] VideoPacketBuffer[%p] Sending Delayed FIR timeSinceFIRRequest=%2.4f waitFIRTime=%2.4f roundTripTime=%2.4f noFramesDisplayed=%d", buf, 0x54u);
                  }
                }

                _VideoReceiver_SendFIR(a2, v193, *(v193 + 4296), *(v193 + 1075), *(v193 + 538));
                *(v193 + 538) = 0;
                v111 = v195;
              }
            }
          }

          if (*(a2 + 43408))
          {
            *&__dst[0] = 0;
            v219[0] = 0.0;
            v211 = 0.0;
            VideoReceiver_GetBitrate(v111, __dst, v219, &v211, 0, 0, 1.0);
            memset(buf, 0, 32);
            VCVideoPlayer_GetVideoPlayerStatsForJB(*(a2 + 40976), buf);
            v158 = (v211 / 1000.0 + 0.5);
            v159 = *(a2 + 43408);
            v160 = *(v159 + 40);
            v161 = *(a2 + 40904);
            if (v161)
            {
              v162 = *v161;
            }

            else
            {
              v162 = *(v160 + 24);
            }

            v163 = 0.0;
            v164 = 0.0;
            if (*(a2 + 42692))
            {
              LOWORD(v164) = *(a2 + 42690);
              v164 = LODWORD(v164) / *(a2 + 42692);
            }

            v165 = *(a2 + 42816) / 1000.0 + 0.5;
            v166 = *__dst / 1000.0 + 0.5;
            v167 = (v219[0] / 1000.0 + 0.5);
            if (v164 == 0.0)
            {
              v168 = *(v160 + 128);
            }

            else
            {
              v168 = v164;
            }

            v169 = *(a2 + 43400);
            TotalPLR = _VideoReceiver_GetTotalPLR(a2);
            v171 = *(a2 + 42808);
            v172 = v171;
            if (v158)
            {
              v163 = (v167 / v158);
            }

            v173 = TotalPLR;
            v174 = *(a2 + 42800);
            v175 = *(a2 + 42864);
            v176 = *(a2 + 42840) * 1000.0;
            v177 = *(a2 + 42488) * 1000.0;
            v178 = *(a2 + 1325);
            v179 = *(a2 + 43308) - *(a2 + 43312);
            v180 = *(a2 + 42740);
            v181 = *&buf[8];
            v182 = *(a2 + 43188);
            if (v182)
            {
              v183 = *(a2 + 42536) / v182 * 1000.0;
            }

            else
            {
              v183 = 0.0;
            }

            *(v160 + 24) = v162;
            *(v160 + 28) = v169;
            *(v160 + 92) = v166;
            *(v160 + 96) = v158;
            *(v160 + 100) = v167;
            *(v160 + 104) = v163;
            *(v160 + 108) = v173;
            *(v160 + 120) = v172;
            *(v160 + 124) = v174;
            *(v160 + 128) = v168;
            *(v160 + 152) = v165;
            *(v160 + 156) = v176;
            *(v160 + 160) = v175;
            *(v160 + 164) = v177;
            *(v160 + 168) = v178;
            *(v160 + 172) = v183;
            *(v160 + 176) = v179;
            *(v160 + 188) = v180;
            *(v160 + 192) = v181;
            VCOverlaySource_Write(v159);
          }

          return 0;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v146 = VRTraceErrorLogLevelToCSTR();
          v147 = *MEMORY[0x1E6986650];
          v148 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              *&buf[4] = v146;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoReceiver_ProcessVideoRTPInternal";
              *&buf[22] = 1024;
              *&buf[24] = 4115;
              *&buf[28] = 1024;
              *&buf[30] = value;
              *&buf[34] = 1024;
              *&buf[36] = __dst[0];
              _os_log_impl(&dword_1DB56E000, v147, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d Converted video dwTimestamp=%u into audio domain with timestamp=%u", buf, 0x28u);
            }
          }

          else if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136316162;
            *&buf[4] = v146;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_ProcessVideoRTPInternal";
            *&buf[22] = 1024;
            *&buf[24] = 4115;
            *&buf[28] = 1024;
            *&buf[30] = value;
            *&buf[34] = 1024;
            *&buf[36] = __dst[0];
            _os_log_debug_impl(&dword_1DB56E000, v147, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d Converted video dwTimestamp=%u into audio domain with timestamp=%u", buf, 0x28u);
          }
        }

        v150 = LODWORD(__dst[0]);
        v149 = a2;
      }

      else
      {
        v149 = a2;
        v150 = value;
      }

      _VideoReceiver_ProcessInternalCallAlarms(v149, v150, v10);
      goto LABEL_238;
    }
  }

  v53 = v11;
  *(__dst + 8) = 0u;
  *(&__dst[1] + 8) = 0u;
  *&__dst[0] = v9;
  v54 = *(a4 + 24);
  DWORD2(__dst[0]) = *(a4 + 120);
  DWORD1(__dst[1]) = HIDWORD(v200);
  HIDWORD(__dst[1]) = v54;
  DWORD2(__dst[1]) = v200 >> 3;
  if (!v52)
  {
    v55 = *(a2 + 40904);
    if (!v55 || (v52 = *(v55 + 80)) == 0)
    {
      v52 = *(a2 + 42384);
    }
  }

  v28 = 2149515265;
  ControlInfoWithBuffer = VCMediaControlInfoGeneratorCreateControlInfoWithBuffer(v52, v12, v53, __dst);
  v57 = ControlInfoWithBuffer;
  if (ControlInfoWithBuffer)
  {
    if (VCMediaControlInfoHasInfo(ControlInfoWithBuffer, 3))
    {
      VCMediaControlInfoGetInfo(v57, 3, v203 + 12, 1, 0);
      BYTE12(v203[0]) |= 0x80u;
    }

    if (VCMediaControlInfoHasInfo(v57, 4))
    {
      VCMediaControlInfoGetInfo(v57, 4, v203 + 8, 4, 0);
    }

    if (VCMediaControlInfoHasInfo(v57, 6) && VCMediaControlInfoGetVersion(v57) == 2)
    {
      *buf = -1431655766;
      VCMediaControlInfoGetInfo(v57, 6, buf, 4, 0);
      HIDWORD(v58) = *buf;
      LODWORD(v58) = *buf;
      BYTE13(v203[0]) = 1;
      *(v203 + 14) = v58 >> 16;
    }

    if (VCMediaControlInfoHasInfo(v57, 5))
    {
      VCMediaControlInfoGetInfo(v57, 5, &v210, 4, 0);
      v210 = bswap32(v210);
    }

    if (VCMediaControlInfoHasInfo(v57, 7))
    {
      v220 = 0;
      memset(v219, 0, sizeof(v219));
      v211 = -3.72066208e-103;
      VCMediaControlInfoGetInfo(v57, 7, v219, 36, &v211);
      if (*&v211 <= 3uLL)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v59 = VRTraceErrorLogLevelToCSTR();
          v60 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *&buf[4] = v59;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_ProcessVideoControlInfo";
            *&buf[22] = 1024;
            *&buf[24] = 3364;
            *&buf[28] = 2048;
            *&buf[30] = a2;
            *&buf[38] = 2048;
            *&buf[40] = v211;
            _os_log_error_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] FEC header size %ld too small!", buf, 0x30u);
          }
        }

        v28 = 2149515307;
        goto LABEL_62;
      }

      FECHeader_UnpackHeaderFromBuffer(&v212, *(a2 + 43288), v219, *&v211);
    }

    VCMediaControlInfoDispose(v57);
    goto LABEL_75;
  }

LABEL_62:
  VCMediaControlInfoDispose(v57);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v61 = VRTraceErrorLogLevelToCSTR();
    v62 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = v61;
      *&buf[12] = 2080;
      *&buf[14] = "_VideoReceiver_ProcessVideoRTPInternal";
      *&buf[22] = 1024;
      *&buf[24] = 3978;
      *&buf[28] = 2048;
      *&buf[30] = a2;
      *&buf[38] = 1024;
      *&buf[40] = v28;
      v38 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] UNEXPECTED hResult:%d after processing video control Info";
LABEL_159:
      v39 = v62;
      v40 = 44;
      goto LABEL_184;
    }
  }

  return v28;
}

uint64_t _VideoReceiver_ShouldProcessPacket(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned __int16 *a5, unsigned int a6)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1353) == 1 && (*(a2 + 69) & 1) == 0)
  {
    if (a3 && *(a1 + 1296) != a4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 1296);
          v23 = 136316418;
          v24 = v20;
          v25 = 2080;
          v26 = "_VideoReceiver_ShouldProcessPacket";
          v27 = 1024;
          v28 = 3495;
          v29 = 2048;
          v30 = a1;
          v31 = 2048;
          v32 = a4;
          v33 = 2048;
          v34 = v22;
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Unexpected idsParticipantID=%llu, expected=%llu", &v23, 0x3Au);
        }
      }
    }

    else if (a6)
    {
      v10 = *(a1 + 40880);
      v11 = *(a1 + 40888);
      v12 = a6 - 1;
      while (1)
      {
        v13 = v12;
        v15 = *a5++;
        v14 = v15;
        if ((v10 & 0x1000000000000) != 0)
        {
          v16 = v14 == *(a1 + 40880) || WORD1(v10) == v14;
          if ((v11 & 0x1000000000000) != 0)
          {
LABEL_11:
            v18 = v14 == *(a1 + 40888) || WORD1(v11) == v14;
            goto LABEL_25;
          }
        }

        else
        {
          v16 = 0;
          if ((v11 & 0x1000000000000) != 0)
          {
            goto LABEL_11;
          }
        }

        v18 = 0;
LABEL_25:
        v6 = v16 || v18;
        if ((v6 & 1) == 0)
        {
          v12 = v13 - 1;
          if (v13)
          {
            continue;
          }
        }

        return v6 & 1;
      }
    }

    v6 = 0;
    return v6 & 1;
  }

  v6 = 1;
  return v6 & 1;
}

uint64_t _VideoReceiver_HandleStreamSwitch(uint64_t a1, unsigned __int16 *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1353) == 1)
  {
    v4 = (a1 + 40880);
    v5 = *(a1 + 40912);
    if (v5 != a2)
    {
      if (!v5)
      {
LABEL_6:
        v6 = 0;
LABEL_34:
        *(v4 + 4) = a2;
        return v6;
      }

      if (*(v5 + 70))
      {
        if (a2[35])
        {
          goto LABEL_6;
        }

        v8 = (a1 + 40888);
        if ((*(a1 + 40886) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (a2[35])
        {
          if (*(a1 + 40886) && *(a1 + 40894) == 1)
          {
            v7 = (a1 + 40884);
            v8 = (a1 + 40892);
LABEL_16:
            v9 = *v7 == *v8;
            goto LABEL_18;
          }

LABEL_17:
          v9 = 0;
LABEL_18:
          if (*(a1 + 40920) == 1)
          {
            VCMediaStreamSynchronizer_resetDestinationState(*(a1 + 43328));
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v10 = VRTraceErrorLogLevelToCSTR();
              v11 = *MEMORY[0x1E6986650];
              v12 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  v13 = *(v4 + 192);
                  v14 = *(v4 + 386);
                  v15 = *(v4 + 387);
                  v16 = *(v4 + 388);
                  v17 = *(v4 + 389);
                  v18 = *(v4 + 1560);
                  v27 = 136317186;
                  v28 = v10;
                  v29 = 2080;
                  v30 = "_VideoReceiver_HandleStreamSwitch";
                  v31 = 1024;
                  v32 = 3754;
                  v33 = 2048;
                  v34 = v13;
                  v35 = 1024;
                  v36 = v14;
                  v37 = 1024;
                  v38 = v15;
                  v39 = 1024;
                  v40 = v16;
                  v41 = 1024;
                  v42 = v17;
                  v43 = 1024;
                  v44 = v18;
                  _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d Before resetting playoutContext, soundAlarmReferenceTimestamp=%llu playoutRTPTimestamp=%u lastVideoTS=%u videoTSWraps=%u lastReceivedTimestamp=%u lastReceivedTimestampValid=%d", &v27, 0x44u);
                }
              }

              else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                _VideoReceiver_HandleStreamSwitch_cold_1();
              }
            }

            *(a1 + 42448) = 0u;
            *(a1 + 42432) = 0u;
            *(a1 + 42416) = 0u;
            v5 = *(v4 + 4);
          }

          else if (!v9)
          {
            v6 = 0;
LABEL_32:
            v25 = *(v4 + 317);
            if (v25)
            {
              v27 = *a2;
              v28 = *(v4 + 834);
              VRDump_AddEvent(v25, 9u, &v27);
            }

            goto LABEL_34;
          }

          RTPResetHandle(*(v5 + 48));
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v19 = VRTraceErrorLogLevelToCSTR();
            v20 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v21 = *v4;
              v22 = v4[4];
              v23 = **(v4 + 4);
              v24 = *a2;
              v27 = 136316930;
              v28 = v19;
              v29 = 2080;
              v30 = "_VideoReceiver_HandleStreamSwitch";
              v31 = 1024;
              v32 = 3763;
              v33 = 2048;
              v34 = a1;
              v35 = 1024;
              v36 = v21;
              v37 = 1024;
              v38 = v22;
              v39 = 1024;
              v40 = v23;
              v41 = 1024;
              v42 = v24;
              _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] currentStreamID:%u targetStreamID:%u, packet receive switched from stream:%u to stream:%u", &v27, 0x3Eu);
            }
          }

          v6 = 1;
          goto LABEL_32;
        }

        v8 = (a1 + 40888);
        if ((*(a1 + 40886) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v7 = (a1 + 40880);
      if (*(a1 + 40894) == 1)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  return 0;
}

uint64_t _VideoReceiver_ProcessInternalCallAlarms(uint64_t result, int64_t value, double a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = result + 40960;
  if (*(result + 43193) == 1)
  {
    v5 = value;
    v6 = result;
    v12 = **&MEMORY[0x1E6960CC0];
    if (*(result + 43448) == 1)
    {
      os_unfair_lock_lock((result + 43444));
      v7 = *(v3 + 2240);
      if (v7 == 0.0)
      {
        v8 = v5;
        *(v3 + 2240) = a3;
        *(v3 + 1456) = v5;
        v7 = a3;
      }

      else
      {
        v8 = *(v3 + 1456);
      }

      CMTimeMake(&v12, (v8 + (a3 - v7) * v6[294]._os_unfair_lock_opaque), v6[294]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v6 + 10861);
    }

    else
    {
      v9 = *(result + 43200);
      if (v9 == 0.0)
      {
        v11 = value;
        *(v3 + 2240) = a3;
        *(v3 + 1456) = value;
        os_unfair_lock_opaque = v6[294]._os_unfair_lock_opaque;
      }

      else
      {
        os_unfair_lock_opaque = *(result + 1176);
        v11 = (*(result + 42416) + (a3 - v9) * os_unfair_lock_opaque);
      }

      CMTimeMake(&v12, v11, os_unfair_lock_opaque);
    }

    return _VideoReceiver_CallAlarms(v6, &v12, a3);
  }

  return result;
}

void _VideoReceiver_ProcessVideoRTCPInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *(&v108[21] + 4) = *MEMORY[0x1E69E9840];
  v6 = a1 + 40928;
  v104[0] = 0;
  v104[1] = 0;
  v105 = 0;
  v7 = micro(a1, a2);
  *(v6 + 2296) = v7;
  if (!*(a3 + 8))
  {
    return;
  }

  v8 = v7;
  v9 = 0;
  v93 = 0;
  v94 = 0;
  v98 = -1431655766;
  allocator = *MEMORY[0x1E695E480];
  v95 = v4;
  do
  {
    v10 = a3 + 16;
    v11 = *(a3 + 16 + 8 * v9);
    v12 = *(v11 + 1);
    if (v12 <= 0xC8)
    {
      switch(v12)
      {
        case 0xC0u:
          v26 = RTCPPacketFIREntryCount(*(v10 + 8 * v9));
          v27 = v26;
          if (v26)
          {
            v28 = (v11 + 8);
            v29 = v26;
            v30 = v104;
            do
            {
              v32 = *v28++;
              v31 = v32;
              if (v32 == 0xFFFF)
              {
                break;
              }

              *v30++ = v31;
              --v29;
            }

            while (v29);
            if ((*(a1 + 1329) & 1) == 0)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v33 = VRTraceErrorLogLevelToCSTR();
                v34 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  *&buf[4] = v33;
                  *&buf[12] = 2080;
                  *&buf[14] = "_VideoReceiver_ProcessVideoRTCPInternal";
                  *&buf[22] = 1024;
                  v107 = 4932;
                  LOWORD(v108[0]) = 2048;
                  *(v108 + 2) = a1;
                  _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] LTRP is disabled. Converting refresh request to key frame request", buf, 0x26u);
                }
              }

              v27 = 0;
            }
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v35 = VRTraceErrorLogLevelToCSTR();
            v36 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316674;
              *&buf[4] = v35;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoReceiver_ProcessVideoRTCPInternal";
              *&buf[22] = 1024;
              v107 = 4936;
              LOWORD(v108[0]) = 2048;
              *(v108 + 2) = a1;
              WORD1(v108[1]) = 1024;
              HIDWORD(v108[1]) = v27;
              LOWORD(v108[2]) = 1024;
              *(&v108[2] + 2) = LOWORD(v104[0]);
              HIWORD(v108[2]) = 1024;
              LODWORD(v108[3]) = WORD1(v104[0]);
              _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Received FIR(%d) %dx%d", buf, 0x38u);
            }
          }

          v93 = 1;
          VideoTransmitter_GenerateKeyFrameNow(*v6, *(v11 + 4), v104, v27, 0, 1, 2 * (v27 != 0));
          break;
        case 0xC1u:
          if ((*(a1 + 1404) & 1) == 0 && *(v6 + 2416) < 0.2 && (RTPRexmitRTP(*(v4 + 48), *(v11 + 8), *(v11 + 10), &v98) & 0x80000000) == 0)
          {
            VideoTransmitter_AddRexmitBytes(*v6, v98);
          }

          break;
        case 0xC8u:
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = v17;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoReceiver_ProcessRTCPSRPacket";
              *&buf[22] = 1024;
              v107 = 4757;
              _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d Received RTCP SR", buf, 0x1Cu);
            }
          }

          if (_VideoReceiver_ShouldProcessPacket(a1, v4, *(a3 + 1621), *(a3 + 1624), (a3 + 1596), *(a3 + 1620)))
          {
            *(v6 + 2456) = _VideoReceiver_HandleStreamSwitch(a1, v4);
            v19 = v4;
            v20 = *(v11 + 8);
            v21 = *(v11 + 12);
            v94 = (v11 + 28);
            _VideoReceiver_ProcessReceptionReportBlock(*(v19 + 48), *v11 & 0x1F, (v11 + 28), *a3);
            v23 = *(v6 + 2400);
            if (v23)
            {
              v24 = NTPToMicro(v21 | (v20 << 32), v22);
              VCMediaStreamSynchronizer_updateDestinationNTPTime(v23, *(v11 + 16), v24);
            }

            goto LABEL_73;
          }

          break;
      }
    }

    else if (*(v11 + 1) > 0xCCu)
    {
      if (v12 == 205)
      {
        if (*(v6 + 2416) < 0.2 && (RTPRexmitRTP(*(v4 + 48), *(v11 + 12), *(v11 + 14), &v98) & 0x80000000) == 0)
        {
          VideoTransmitter_AddRexmitBytes(*v6, v98);
        }

        v41 = *(v11 + 2);
        if (v41 >= 3)
        {
          v42 = (v41 - 2);
          v43 = (v11 + 14);
          do
          {
            if ((VideoTransmitter_RetransmitPackets(*v6, *(v11 + 8), *(v43 - 1), *v43, v8) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v44 = VRTraceErrorLogLevelToCSTR();
              v45 = *MEMORY[0x1E6986650];
              v46 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  v47 = *(v11 + 8);
                  v48 = *(v43 - 1);
                  v49 = *v43;
                  *buf = 136316930;
                  *&buf[4] = v44;
                  *&buf[12] = 2080;
                  *&buf[14] = "_VideoReceiver_ProcessVideoRTCPNACKPacket";
                  *&buf[22] = 1024;
                  v107 = 4860;
                  LOWORD(v108[0]) = 2048;
                  *(v108 + 2) = a1;
                  WORD1(v108[1]) = 1024;
                  HIDWORD(v108[1]) = v47;
                  LOWORD(v108[2]) = 1024;
                  *(&v108[2] + 2) = v48;
                  HIWORD(v108[2]) = 1024;
                  LODWORD(v108[3]) = v49;
                  WORD2(v108[3]) = 2048;
                  *(&v108[3] + 6) = v8;
                  _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] VRTCP: Failed to retransmit packets ssrc=%u, firstSequenceNumber=%u, bitmask=%u, currentTime=%f", buf, 0x42u);
                }
              }

              else if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                v50 = *(v11 + 8);
                v51 = *(v43 - 1);
                v52 = *v43;
                *buf = 136316930;
                *&buf[4] = v44;
                *&buf[12] = 2080;
                *&buf[14] = "_VideoReceiver_ProcessVideoRTCPNACKPacket";
                *&buf[22] = 1024;
                v107 = 4860;
                LOWORD(v108[0]) = 2048;
                *(v108 + 2) = a1;
                WORD1(v108[1]) = 1024;
                HIDWORD(v108[1]) = v50;
                LOWORD(v108[2]) = 1024;
                *(&v108[2] + 2) = v51;
                HIWORD(v108[2]) = 1024;
                LODWORD(v108[3]) = v52;
                WORD2(v108[3]) = 2048;
                *(&v108[3] + 6) = v8;
                _os_log_debug_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] VRTCP: Failed to retransmit packets ssrc=%u, firstSequenceNumber=%u, bitmask=%u, currentTime=%f", buf, 0x42u);
              }
            }

            v43 += 2;
            --v42;
          }

          while (v42);
LABEL_73:
          v4 = v95;
        }
      }

      else
      {
        if (v12 != 206)
        {
          goto LABEL_74;
        }

        LODWORD(v100) = 0;
        v99 = 0uLL;
        v25 = *(v11 + 12);
        if (v25 != 6)
        {
          if (v25 == 5)
          {
            v14 = a1;
            v15 = v11;
            v16 = 206;
LABEL_24:
            _VideoReceiver_ProcessRtcpLTRAck(v14, v15, v16);
            goto LABEL_74;
          }

          v72 = (*v11 & 0x1F) == 2;
          v73 = *(a1 + 1392);
          Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v75 = Mutable;
            v76 = *(a1 + 1376);
            if (v76)
            {
              CFDictionaryAddValue(Mutable, @"VCSPUUID", v76);
            }

            *buf = v73;
            v77 = CFNumberCreate(allocator, kCFNumberIntType, buf);
            CFDictionaryAddValue(v75, @"VCASStreamIDs", v77);
            CFRelease(v77);
            reportingVideoStreamEvent();
            CFRelease(v75);
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v83 = VRTraceErrorLogLevelToCSTR();
            v84 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = v83;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoReceiver_ReportFIRFBReceived";
              *&buf[22] = 1024;
              v107 = 4809;
              _os_log_error_impl(&dword_1DB56E000, v84, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d Failed to create reporting dictionary", buf, 0x1Cu);
            }
          }

          VideoTransmitter_GenerateKeyFrameNow(*v6, *(v11 + 4), &v99, (2 * v72), 1, 1, 2 * v72);
          goto LABEL_73;
        }

        v64 = *(v11 + 16);
        v65 = *(v11 + 20);
        v66 = *(v11 + 22);
        v67 = *(v11 + 23);
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 8)
        {
          v91 = VRTraceErrorLogLevelToCSTR();
          v70 = *MEMORY[0x1E6986650];
          v71 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            ErrorLogLevelForModule = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
            if (ErrorLogLevelForModule)
            {
              *buf = 136316674;
              *&buf[4] = v91;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoReceiver_ProcessRtcpLossFeedback";
              *&buf[22] = 1024;
              v107 = 4796;
              LOWORD(v108[0]) = 1024;
              *(v108 + 2) = v64;
              HIWORD(v108[0]) = 1024;
              LODWORD(v108[1]) = v65;
              WORD2(v108[1]) = 1024;
              *(&v108[1] + 6) = v66;
              WORD1(v108[2]) = 1024;
              HIDWORD(v108[2]) = v67;
              _os_log_impl(&dword_1DB56E000, v70, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d RTCP received loss feedback: frameRTPTimestamp=%u, numReceivedPackets=%u, frameSize=%u, numLostPackets=%u", buf, 0x34u);
            }
          }

          else
          {
            ErrorLogLevelForModule = os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG);
            if (ErrorLogLevelForModule)
            {
              *buf = 136316674;
              *&buf[4] = v91;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoReceiver_ProcessRtcpLossFeedback";
              *&buf[22] = 1024;
              v107 = 4796;
              LOWORD(v108[0]) = 1024;
              *(v108 + 2) = v64;
              HIWORD(v108[0]) = 1024;
              LODWORD(v108[1]) = v65;
              WORD2(v108[1]) = 1024;
              *(&v108[1] + 6) = v66;
              WORD1(v108[2]) = 1024;
              HIDWORD(v108[2]) = v67;
              _os_log_debug_impl(&dword_1DB56E000, v70, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d RTCP received loss feedback: frameRTPTimestamp=%u, numReceivedPackets=%u, frameSize=%u, numLostPackets=%u", buf, 0x34u);
            }
          }
        }

        v78 = micro(ErrorLogLevelForModule, v69);
        v79 = *(v6 + 2224);
        *buf = 13;
        *&buf[8] = v78;
        *&buf[16] = 0;
        buf[18] = 1;
        *&buf[19] = 0;
        buf[23] = 0;
        v107 = v64;
        LOWORD(v108[0]) = v65;
        BYTE2(v108[0]) = v66;
        BYTE3(v108[0]) = v67;
        memset(v108 + 4, 0, 48);
        memset(&v108[6] + 4, 0, 120);
        VCRateControlSetStatistics(v79, buf);
        v4 = v95;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v80 = VRTraceErrorLogLevelToCSTR();
          v81 = *MEMORY[0x1E6986650];
          v82 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              *&buf[4] = v80;
              *&buf[12] = 2080;
              *&buf[14] = "_VideoReceiver_ProcessRtcpPSFBPacket";
              *&buf[22] = 1024;
              v107 = 4841;
              LOWORD(v108[0]) = 2048;
              *(v108 + 2) = a1;
              _os_log_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Received PSFB LOSS FB", buf, 0x26u);
            }
          }

          else if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = v80;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_ProcessRtcpPSFBPacket";
            *&buf[22] = 1024;
            v107 = 4841;
            LOWORD(v108[0]) = 2048;
            *(v108 + 2) = a1;
            _os_log_debug_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Received PSFB LOSS FB", buf, 0x26u);
          }
        }
      }
    }

    else if (v12 == 201)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v37;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoReceiver_ProcessVideoRTCPInternal";
          *&buf[22] = 1024;
          v107 = 4883;
          _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d Received RTCP RR", buf, 0x1Cu);
        }
      }

      v40 = *v11;
      v39 = (v11 + 8);
      _VideoReceiver_ProcessReceptionReportBlock(*(v4 + 48), v40 & 0x1F, v39, *a3);
      v94 = v39;
    }

    else
    {
      if (v12 != 204)
      {
        goto LABEL_74;
      }

      v13 = *(v11 + 8);
      if (v13 != 1380144204)
      {
        if (v13 != 5)
        {
          goto LABEL_74;
        }

        v14 = a1;
        v15 = *(v10 + 8 * v9);
        v16 = 204;
        goto LABEL_24;
      }

      v103 = -1431655766;
      *&v102 = 0xAAAAAAAAAAAAAAAALL;
      *(&v102 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v53 = *(v11 + 12);
      v103 = *(v11 + 28);
      v102 = v53;
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
      v97 = 0;
      v96 = 16843010;
      v54 = VCMediaControlInfoUnserializeWithData(&v99, &v102, 0x14uLL, &v96);
      v55 = *(v11 + 4);
      v57 = micro(v54, v56);
      v58 = WORD4(v100);
      v59 = RTPUnpackDouble(HIDWORD(v100));
      v60 = *(v6 + 2224);
      *buf = 2;
      *&buf[8] = v57;
      *&buf[16] = 0;
      buf[18] = 1;
      *&buf[19] = 0;
      buf[23] = 0;
      v107 = v58;
      v4 = v95;
      LODWORD(v108[0]) = DWORD1(v100);
      HIDWORD(v108[0]) = WORD1(v99);
      LODWORD(v108[1]) = 0;
      HIDWORD(v108[2]) = 0;
      LODWORD(v108[3]) = 0;
      *(&v108[1] + 4) = WORD2(v99);
      HIDWORD(v108[3]) = WORD3(v99);
      v108[4] = 0;
      LODWORD(v108[6]) = 0;
      *(&v108[6] + 4) = v59;
      memset(&v108[7] + 4, 0, 96);
      *&v108[19] = 0u;
      v108[5] = v99;
      LODWORD(v108[21]) = v55;
      VCRateControlSetStatistics(v60, buf);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v61 = VRTraceErrorLogLevelToCSTR();
        v62 = *MEMORY[0x1E6986650];
        v63 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316930;
            *&buf[4] = v61;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoReceiver_ProcessVideoRTCPInternal";
            *&buf[22] = 1024;
            v107 = 4914;
            LOWORD(v108[0]) = 2048;
            *(v108 + 2) = a1;
            WORD1(v108[1]) = 1024;
            HIDWORD(v108[1]) = HIDWORD(v100);
            LOWORD(v108[2]) = 1024;
            *(&v108[2] + 2) = WORD1(v99);
            HIWORD(v108[2]) = 1024;
            LODWORD(v108[3]) = WORD2(v99);
            WORD2(v108[3]) = 1024;
            *(&v108[3] + 6) = v100;
            _os_log_impl(&dword_1DB56E000, v62, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Received APP_RTCL with owrd:%u, BWE:%u, burstyLoss:%u, JQSize:%u", buf, 0x3Eu);
          }
        }

        else if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316930;
          *&buf[4] = v61;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoReceiver_ProcessVideoRTCPInternal";
          *&buf[22] = 1024;
          v107 = 4914;
          LOWORD(v108[0]) = 2048;
          *(v108 + 2) = a1;
          WORD1(v108[1]) = 1024;
          HIDWORD(v108[1]) = HIDWORD(v100);
          LOWORD(v108[2]) = 1024;
          *(&v108[2] + 2) = WORD1(v99);
          HIWORD(v108[2]) = 1024;
          LODWORD(v108[3]) = WORD2(v99);
          WORD2(v108[3]) = 1024;
          *(&v108[3] + 6) = v100;
          _os_log_debug_impl(&dword_1DB56E000, v62, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Received APP_RTCL with owrd:%u, BWE:%u, burstyLoss:%u, JQSize:%u", buf, 0x3Eu);
        }
      }

      VideoTransmitter_SetPacketExpirationTime(*v6, v100);
    }

LABEL_74:
    ++v9;
  }

  while (v9 < *(a3 + 8));
  if (v94)
  {
    VideoTransmitter_SetVideoLossFraction(*v6, *(v94 + 4));
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v85 = VRTraceErrorLogLevelToCSTR();
      v86 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v87 = v94[1];
        v88 = v94[1] >> 8;
        v89 = v94[3];
        v90 = *(v6 + 2416);
        *buf = 136317186;
        *&buf[4] = v85;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_ProcessVideoRTCPInternal";
        *&buf[22] = 1024;
        v107 = 4973;
        LOWORD(v108[0]) = 2048;
        *(v108 + 2) = a1;
        WORD1(v108[1]) = 1024;
        HIDWORD(v108[1]) = v87;
        LOWORD(v108[2]) = 1024;
        *(&v108[2] + 2) = v88;
        HIWORD(v108[2]) = 2048;
        v108[3] = v89;
        LOWORD(v108[4]) = 2048;
        *(&v108[4] + 2) = v90;
        WORD1(v108[5]) = 1024;
        HIDWORD(v108[5]) = v93;
        _os_log_impl(&dword_1DB56E000, v86, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] VRTCP: Fraction=%03d, Lost=%d, Jitter=%lu, RTT=%.3f, FIR=%d", buf, 0x4Cu);
      }
    }
  }
}

void _VideoReceiver_ProcessReceptionReportBlock(uint64_t a1, int a2, _DWORD *a3, unint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = 0;
  if ((RTPGetLocalSSRC(a1, &v15) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = v7;
        v18 = 2080;
        v19 = "_VideoReceiver_ProcessReceptionReportBlock";
        v20 = 1024;
        v21 = 4742;
        v9 = "VideoReceiver [%s] %s:%d Could not get the local SSRC";
        v10 = v8;
        v11 = 28;
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }
  }

  else if (a2)
  {
    while (*a3 != v15)
    {
      a3 += 6;
      if (!--a2)
      {
        return;
      }
    }

    v12 = RTCPComputeRoundTripTimeMiddle32(a3, a4);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = v13;
        v18 = 2080;
        v19 = "_VideoReceiver_ProcessReceptionReportBlock";
        v20 = 1024;
        v21 = 4749;
        v22 = 1024;
        v23 = v12;
        v9 = "VideoReceiver [%s] %s:%d RTCP ReceptionReport RTT=%u";
        v10 = v14;
        v11 = 34;
        goto LABEL_12;
      }
    }
  }
}

void _VideoReceiver_ProcessRtcpLTRAck(uint64_t a1, uint64_t a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = (a1 + 40928);
  if (a3 == 204)
  {
    v6 = bswap32(*(a2 + 12));
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v7 = *(a1 + 42944);
  if (*(a1 + 42944))
  {
    v8 = 7;
  }

  else
  {
    v8 = 8;
  }

  if (v8 > VRTraceGetErrorLogLevelForModule())
  {
    goto LABEL_16;
  }

  v9 = VRTraceErrorLogLevelToCSTR();
  if (v7)
  {
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

LABEL_13:
    v14 = 136316418;
    v15 = v9;
    v16 = 2080;
    v17 = "_VideoReceiver_ProcessRtcpLTRAck";
    v18 = 1024;
    v19 = 4780;
    v20 = 2048;
    v21 = a1;
    v22 = 1024;
    v23 = v6;
    v24 = 1024;
    v25 = a3;
    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Received APP_LTRP_ACK timestamp=%u, RTCP packet type=%u", &v14, 0x32u);
    goto LABEL_16;
  }

  v10 = *MEMORY[0x1E6986650];
  v11 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136316418;
    v15 = v9;
    v16 = 2080;
    v17 = "_VideoReceiver_ProcessRtcpLTRAck";
    v18 = 1024;
    v19 = 4780;
    v20 = 2048;
    v21 = a1;
    v22 = 1024;
    v23 = v6;
    v24 = 1024;
    v25 = a3;
    _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Received APP_LTRP_ACK timestamp=%u, RTCP packet type=%u", &v14, 0x32u);
  }

LABEL_16:
  if (*(a1 + 1329) == 1 && v6 != 0)
  {
    v13 = *(a1 + 1672);
    if (v13)
    {
      v13(*(a1 + 1656), v6);
    }

    VideoTransmitter_ACKLTRFrame(*v5, v6);
  }
}

void _VideoReceiver_CompleteStreamSwitch(unsigned int *a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a1 + 10220;
  v5 = *(a1 + 157);
  if (v5)
  {
    v5(*(a1 + 154), *(a1 + 20440), *(a1 + 20444));
  }

  if (*(v4 + 6) == 1)
  {
    v6 = 10222;
    if (*(a2 + 70))
    {
      v6 = 10223;
    }

    v7 = 10220;
    if (*(a2 + 70))
    {
      v7 = 10221;
    }

    if (LOWORD(a1[v7]) != LOWORD(a1[v6]))
    {
      v8 = *a1;
      if (v8)
      {
        v9 = 0;
        v10 = 0;
        v11 = 14821;
        while (1)
        {
          v12 = &a1[v9 + 424];
          if (v12 != a2)
          {
            break;
          }

LABEL_23:
          ++v10;
          v11 += 4352;
          v9 += 1088;
          if (v10 >= v8)
          {
            goto LABEL_24;
          }
        }

        v13 = a2;
        _X19 = a1 + v11;
        __asm { PRFM            #0, [X19] }

        v19 = BYTE1(a1[v9 + 441]);
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (v19 == 1)
        {
          if (ErrorLogLevelForModule < 7)
          {
            goto LABEL_20;
          }

          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_20;
          }

          *buf = 136315906;
          v50 = v21;
          v51 = 2080;
          v52 = "_VideoReceiver_ResetNonTargetStreams";
          v53 = 1024;
          v54 = 4497;
          v55 = 2048;
          v56 = a1;
          v23 = v22;
          v24 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] resetting 1:1 stream";
          v25 = 38;
        }

        else
        {
          if (ErrorLogLevelForModule < 7)
          {
            goto LABEL_20;
          }

          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_20;
          }

          _X8 = _X19 - 69;
          __asm { PRFM            #0, [X8] }

          LODWORD(_X8) = *v12;
          *buf = 136316162;
          v50 = v26;
          v51 = 2080;
          v52 = "_VideoReceiver_ResetNonTargetStreams";
          v53 = 1024;
          v54 = 4499;
          v55 = 2048;
          v56 = a1;
          v57 = 1024;
          LODWORD(v58) = _X8;
          v23 = v27;
          v24 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] resetting non target stream %d";
          v25 = 44;
        }

        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, v25);
LABEL_20:
        v30 = &a1[v9];
        if (*&a1[v9 + 456])
        {
          pthread_mutex_lock((a1 + 10564));
          VideoPacketBuffer_NeedRefreshFrame(*(v30 + 228), 1, 1, 0x18u);
          pthread_mutex_unlock((a1 + 10564));
        }

        *(v4 + 2504) = 1;
        RTPResetHandle(*(v30 + 218));
        v8 = *a1;
        a2 = v13;
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v31 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 162);
      v34 = *v4;
      v35 = *(v4 + 4);
      v36 = *(v4 + 6);
      *buf = 136316930;
      v50 = v31;
      v51 = 2080;
      v52 = "_VideoReceiver_UpdateStreamSwitchContextForCurrentStream";
      v53 = 1024;
      v54 = 4520;
      v55 = 2048;
      v56 = a1;
      v57 = 2048;
      v58 = v33;
      v59 = 1024;
      v60 = v34;
      v61 = 1024;
      v62 = v35;
      v63 = 1024;
      v64 = v36;
      _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] participantId[%llu]: Stream switch completed from (%d), to (%d). New baseStreamID is (%d)", buf, 0x42u);
    }
  }

  *v4 = *(v4 + 4);
  *(v4 + 2) = *(v4 + 10);
  *(v4 + 6) = 1;
  if (a2)
  {
    v37 = *(a2 + 8);
    if (!v37)
    {
      goto LABEL_42;
    }

    v38 = WORD1(*v4);
    v39 = *v4;
    v40 = (a2 + 30);
    v41 = 1;
    v42 = *(a2 + 8);
    v43 = 1;
    do
    {
      if ((*v4 & 0x1000000000000) != 0)
      {
        v44 = *(v40 - 9);
        if (v44 == v39 || v38 == v44)
        {
          break;
        }

        v46 = *v40;
        if (v46 == v39 || v38 == v46)
        {
          break;
        }
      }

      v43 = v41++ < v37;
      ++v40;
      --v42;
    }

    while (v42);
    if (v43)
    {
      v48 = 1;
    }

    else
    {
LABEL_42:
      v48 = 0;
    }

    RTPIgnorePacketLossAccounting(*(a2 + 48), v48);
    *(v4 + 3) = a2;
  }
}

void OUTLINED_FUNCTION_13_6(uint64_t a1@<X8>)
{
  *(v5 + 14) = a1;
  *(v6 - 138) = 1024;
  *(v6 - 136) = 2814;
  *(v6 - 132) = 2048;
  *(v5 + 30) = v1;
  *(v6 - 122) = 1024;
  *(v6 - 120) = v2;
  *(v6 - 116) = 1024;
  *(v5 + 46) = v4;
  *(v6 - 110) = 1024;
  *(v6 - 108) = v3;
}

void OUTLINED_FUNCTION_32_2(float a1)
{
  *(v3 - 160) = a1;
  *(v2 + 4) = v1;
  *(v3 - 148) = 2080;
}

void OUTLINED_FUNCTION_12_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 0x22u);
}

void OUTLINED_FUNCTION_21_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 0x1Cu);
}

CMSimpleQueueRef *VCAudioIssueDetectorUtil_Create(uint64_t a1)
{
  v1 = a1;
  v17 = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(1uLL, 0x4650uLL, 0x1020040E3657F74uLL);
  if (v2)
  {
    v3 = v2;
    *(v2 + 4494) = v1;
    v4 = CMSimpleQueueCreate(*MEMORY[0x1E695E480], 25, v2 + 2246);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v4)
    {
      VCAudioIssueDetectorUtil_Create_cold_1(ErrorLogLevelForModule, v3);
      return 0;
    }

    else if (ErrorLogLevelForModule >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 136315906;
          *&v10[4] = v6;
          v11 = 2080;
          v12 = "VCAudioIssueDetectorUtil_Create";
          v13 = 1024;
          v14 = 1521;
          v15 = 1024;
          v16 = v1;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio issue detector created for direction=%d", v10, 0x22u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        VCAudioIssueDetectorUtil_Create_cold_2();
      }
    }
  }

  else
  {
    VCAudioIssueDetectorUtil_Create_cold_3(v10);
    return *v10;
  }

  return v3;
}

void VCAudioIssueDetectorUtil_Configure(uint64_t a1, unsigned __int16 *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (a2[1] && (v4 = *a2) != 0)
    {
      v5 = a1 + 0x4000;
      *(a1 + 17982) = a2[1];
      *(a1 + 17980) = v4;
      v6 = *(a1 + 17984);
      v7 = *(a2 + 1);
      *(a1 + 17984) = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      *(a1 + 17992) = *(a2 + 2);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        v10 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(v5 + 1592);
            v12 = *a2;
            v13 = a2[1];
            v17 = 136316418;
            v18 = v8;
            v19 = 2080;
            v20 = "VCAudioIssueDetectorUtil_Configure";
            v21 = 1024;
            v22 = 1541;
            v23 = 1024;
            v24 = v11;
            v25 = 1024;
            v26 = v12;
            v27 = 1024;
            v28 = v13;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio issue detector configured for direction=%d with audioIOSampleCount=%d, audioIOSampleRate=%d", &v17, 0x2Eu);
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(v5 + 1592);
          v15 = *a2;
          v16 = a2[1];
          v17 = 136316418;
          v18 = v8;
          v19 = 2080;
          v20 = "VCAudioIssueDetectorUtil_Configure";
          v21 = 1024;
          v22 = 1541;
          v23 = 1024;
          v24 = v14;
          v25 = 1024;
          v26 = v15;
          v27 = 1024;
          v28 = v16;
          _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Audio issue detector configured for direction=%d with audioIOSampleCount=%d, audioIOSampleRate=%d", &v17, 0x2Eu);
        }
      }
    }

    else
    {
      VCAudioIssueDetectorUtil_Configure_cold_1();
    }
  }

  else
  {
    VCAudioIssueDetectorUtil_Configure_cold_2(a1, a2);
  }
}

void VCAudioIssueDetectorUtil_UpdateRATType(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1 + 0x4000;
    if (*(a1 + 17996) != a2)
    {
      *(a1 + 17996) = a2;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        v5 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v6 = *(v2 + 1612);
            v7 = *(v2 + 1592);
            v10 = 136316162;
            v11 = v3;
            v12 = 2080;
            v13 = "VCAudioIssueDetectorUtil_UpdateRATType";
            v14 = 1024;
            v15 = 1550;
            v16 = 1024;
            v17 = v6;
            v18 = 1024;
            v19 = v7;
            _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio issue detector link type updated to %d for direction=%d", &v10, 0x28u);
          }
        }

        else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(v2 + 1612);
          v9 = *(v2 + 1592);
          v10 = 136316162;
          v11 = v3;
          v12 = 2080;
          v13 = "VCAudioIssueDetectorUtil_UpdateRATType";
          v14 = 1024;
          v15 = 1550;
          v16 = 1024;
          v17 = v8;
          v18 = 1024;
          v19 = v9;
          _os_log_debug_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Audio issue detector link type updated to %d for direction=%d", &v10, 0x28u);
        }
      }
    }
  }

  else
  {
    VCAudioIssueDetectorUtil_UpdateRATType_cold_1();
  }
}

void VCAudioIssueDetectorUtil_ProcessCellularNetworkNotification(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = (result + 14736);
      v3 = *(a2 + 4);
      if (!v3)
      {
        if (*(result + 14737) != *(a2 + 60))
        {
          *v2 = 0;
          *(result + 14744) = 0;
          *(result + 14752) = 0;
          *(result + 14737) = *(a2 + 60);
        }

        *(result + 14738) = *(a2 + 61);
        *(result + 14740) = *(a2 + 63);
        *(result + 14742) = *(a2 + 65);
        *(result + 14743) = *(a2 + 66);
        *(result + 14744) = *(a2 + 67);
        *(result + 14745) = *(a2 + 68) != 0;
        *(result + 14746) = *(a2 + 69) != 0;
        *(result + 14748) = *(a2 + 70);
        *(result + 14750) = *(a2 + 74) != 0;
        v3 = *(a2 + 4);
      }

      if (v3 > 3)
      {
        if (v3 == 5)
        {
          *(result + 14737) = *(a2 + 8);
          *(result + 14752) = *(a2 + 12);
          *(result + 14750) = *(a2 + 74) != 0;
        }

        else if (v3 == 4)
        {
          *(result + 14748) = *(a2 + 10);
          *(result + 14746) = *(a2 + 8) != 0;
        }
      }

      else if (v3 == 2)
      {
        *(result + 14737) = *(a2 + 8);
        *(result + 14742) = *(a2 + 16);
        *(result + 14744) = *(a2 + 18);
        *(result + 14738) = *(a2 + 12);
        *(result + 14740) = *(a2 + 14);
        *(result + 14743) = *(a2 + 17);
      }

      else if (v3 == 3)
      {
        *(result + 14745) = *(a2 + 8) != 0;
      }

      *v2 = 1;
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioIssueDetectorUtil_ProcessCellularNetworkNotification_cold_1();
      }
    }
  }

  else
  {
    VCAudioIssueDetectorUtil_ProcessCellularNetworkNotification_cold_2();
  }
}

void VCAudioIssueDetectorUtil_Finalize(int32x2_t **result)
{
  if (result)
  {
    v2 = *result;
    if (v2)
    {
      _VCAudioIssueDetectorUtil_StateMachine(v2, 5, 5, 0, 0.0);
    }

    *result = 0;
  }
}

void _VCAudioIssueDetectorUtil_StateMachine(int32x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, float a5)
{
  v7 = a3;
  v8 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  if (a3 != 5)
  {
    v9 = a1->i32[1] + 1;
    a1->i32[1] = v9;
    a1[23].i32[1] = v9;
  }

  v10 = a1->i32[0];
  if (a1->i32[0] > 1)
  {
    if (v10 == 2)
    {
      if (a2 > 2)
      {
        if (a2 != 3)
        {
          if (a2 == 4)
          {
            a1->i32[0] = 1;
            v13 = 2;
LABEL_51:
            _VCAudioIssueDetectorUtil_MonitorAndUpdateRmsSegmentStats(a1, 4, v13);
            _VCAudioIssueDetectorUtilFlushSilenceDistortionStats(v8);
            _VCAudioIssueDetectorUtil_StopZerosMonitoring(v8);
            _VCAudioIssueDetectorUtil_FlushRmsStats(v8, v14);
            _VCAudioIssueDetectorUtil_ReportCallEndStatsIfNeeded(v8);

            VCAudioIssueDetectorUtil_FlushLogEvents(v8);
            return;
          }

          v17[0] = a1;
          a1->i32[0] = 0;
          v15 = 2;
LABEL_60:
          _VCAudioIssueDetectorUtil_MonitorAndUpdateRmsSegmentStats(a1, 5, v15);
          _VCAudioIssueDetectorUtilFlushSilenceDistortionStats(v8);
          _VCAudioIssueDetectorUtil_StopZerosMonitoring(v8);
          _VCAudioIssueDetectorUtil_FlushRmsStats(v8, v16);
          _VCAudioIssueDetectorUtil_ReportCallEndStatsIfNeeded(v8);
          VCAudioIssueDetectorUtil_FlushLogEvents(v8);
          goto LABEL_61;
        }
      }

      else
      {
        if (!a2)
        {
          goto LABEL_44;
        }

        if (a2 != 1)
        {
          a1->i32[0] = 3;
          _VCAudioIssueDetectorUtil_MonitorAndUpdateRmsSegmentStats(a1, 2, 2);
          _VCAudioIssueDetectorUtil_UpdateAggregatedStats(v8, v7);
          _VCAudioIssueDetectorUtil_UpdateRmsStats(v8, a5);

          _VCAudioIssueDetectorUtilFlushSilenceDistortionStats(v8);
          return;
        }
      }

      _VCAudioIssueDetectorUtil_UpdateAggregatedStats(a1, a3);
      if (v8[4494])
      {
        ++v8[38];
        if ((v7 & 0xFFFFFFFE) == 2)
        {
          ++v8[39];
        }
      }

      else
      {
        ++*(v8 + 76);
      }
    }

    else
    {
      if (v10 != 3)
      {
LABEL_20:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VCAudioIssueDetectorUtil_StateMachine_cold_3();
          }
        }

        return;
      }

      if (a2 > 1)
      {
        if ((a2 - 2) < 2)
        {
          _VCAudioIssueDetectorUtil_UpdateAggregatedStats(a1, a3);
          _VCAudioIssueDetectorUtil_MonitorContinuousSpeechDistortion(v8, v7);
          _VCAudioIssueDetectorUtil_UpdateRmsStats(v8, a5);
          if (a4)
          {
            v12 = *(v8 + 93);
            if (v12 != a4 && (a4 > 0x960 || v12 <= 0x960))
            {
              *(v8 + 93) = a4;
            }
          }

          return;
        }

        if (a2 == 4)
        {
          _VCAudioIssueDetectorUtil_MonitorContinuousSpeechDistortion(a1, a3);
          _VCAudioIssueDetectorUtil_MonitorAverageSpeechDistortion(v8);
          *v8 = 1;
          a1 = v8;
          v13 = 3;
          goto LABEL_51;
        }

        v17[0] = a1;
        _VCAudioIssueDetectorUtil_MonitorContinuousSpeechDistortion(a1, a3);
        _VCAudioIssueDetectorUtil_MonitorAverageSpeechDistortion(v8);
        *v8 = 0;
        a1 = v8;
        v15 = 3;
        goto LABEL_60;
      }

      if (!a2)
      {
LABEL_44:
        bzero(a1, 0x4630uLL);
        v8[5] = -956694528;
        v8[8] = -956694528;
        v8[17] = -956694528;
        v8[20] = -956694528;
        goto LABEL_45;
      }

      a1->i32[0] = 2;
      _VCAudioIssueDetectorUtil_MonitorAndUpdateRmsSegmentStats(a1, 1, 3);
      _VCAudioIssueDetectorUtil_UpdateAggregatedStats(v8, v7);
      _VCAudioIssueDetectorUtil_MonitorContinuousSpeechDistortion(v8, v7);
      _VCAudioIssueDetectorUtil_MonitorAverageSpeechDistortion(v8);
    }

    _VCAudioIssueDetectorUtil_UpdateRmsStats(v8, a5);
    return;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v17[0] = a1;
      if (a2 > 1)
      {
        if (a2 == 2)
        {
          v11 = 3;
          goto LABEL_55;
        }

        if (a2 != 5)
        {
          if (a2 == 3)
          {
LABEL_10:
            v11 = 2;
LABEL_55:
            a1->i32[0] = v11;
            _VCAudioIssueDetectorUtil_UpdateAggregatedStats(a1, a3);
            _VCAudioIssueDetectorUtil_UpdateRmsStats(v8, a5);
            return;
          }

          goto LABEL_39;
        }

        _VCAudioIssueDetectorUtil_ReportCallEndStatsIfNeeded(a1);
LABEL_61:
        _VCAudioIssueDetectorUtilDeInit(v17);
        return;
      }

      if (a2)
      {
        if (a2 == 1)
        {
          goto LABEL_10;
        }

LABEL_39:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VCAudioIssueDetectorUtil_StateMachine_cold_1();
          }
        }

        return;
      }

      goto LABEL_42;
    }

    goto LABEL_20;
  }

  v17[0] = a1;
  if (a2 == 5)
  {
    goto LABEL_61;
  }

  if (!a2)
  {
LABEL_42:
    _VCAudioIssueDetectorUtil_InitAndUseLatestConfig(a1);
LABEL_45:
    *v8 = 1;
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCAudioIssueDetectorUtil_StateMachine_cold_2();
    }
  }
}

void VCAudioIssueDetectorUtil_Start(int32x2_t *a1)
{
  if (a1)
  {

    _VCAudioIssueDetectorUtil_StateMachine(a1, 0, 5, 0, 0.0);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioIssueDetectorUtil_Start_cold_1();
    }
  }
}

void VCAudioIssueDetectorUtil_Stop(int32x2_t *a1)
{
  if (a1)
  {

    _VCAudioIssueDetectorUtil_StateMachine(a1, 4, 5, 0, 0.0);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioIssueDetectorUtil_Stop_cold_1();
    }
  }
}

void VCAudioIssueDetectorUtil_FlushLogEvents(uint64_t a1)
{
  v135 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 17968);
    if (v2)
    {
      v3 = CMSimpleQueueDequeue(v2);
      if (v3)
      {
        v4 = v3;
        v5 = *(a1 + 17976);
        v6 = MEMORY[0x1E6986650];
        do
        {
          v7 = *v4;
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          switch(v7)
          {
            case 0:
              if (ErrorLogLevelForModule >= 7)
              {
                v9 = VRTraceErrorLogLevelToCSTR();
                v10 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                {
                  v11 = v4[1];
                  v12 = v4[2];
                  *buf = 136316418;
                  v98 = v9;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1457;
                  v103 = 1024;
                  v104 = v5;
                  v105 = 1024;
                  v106 = v11;
                  v107 = 1024;
                  v108 = v12;
                  v13 = v10;
                  v14 = " [%s] %s:%d Audio issue detector: DistortionEvent: Continuous speech loss: direction=%d, disortionTimeMs=%d, distortionDurationMs=%d";
                  goto LABEL_50;
                }
              }

              break;
            case 1:
              if (ErrorLogLevelForModule >= 7)
              {
                v52 = VRTraceErrorLogLevelToCSTR();
                v53 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                {
                  v54 = v4[1];
                  v55 = v4[2];
                  *buf = 136316418;
                  v98 = v52;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1460;
                  v103 = 1024;
                  v104 = v5;
                  v105 = 1024;
                  v106 = v54;
                  v107 = 1024;
                  v108 = v55;
                  v13 = v53;
                  v14 = " [%s] %s:%d Audio issue detector: DistortionEvent: Average speech loss: direction=%d, disortionTimeMs=%d, distortionDurationMs=%d";
                  goto LABEL_50;
                }
              }

              break;
            case 2:
              if (ErrorLogLevelForModule >= 7)
              {
                v40 = VRTraceErrorLogLevelToCSTR();
                v41 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = v4[1];
                  v43 = v4[2];
                  *buf = 136316418;
                  v98 = v40;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1463;
                  v103 = 1024;
                  v104 = v5;
                  v105 = 1024;
                  v106 = v42;
                  v107 = 1024;
                  v108 = v43;
                  v13 = v41;
                  v14 = " [%s] %s:%d Audio issue detector: DistortionEvent: Downlink link broken: direction=%d, disortionTimeMs=%d, distortionDurationMs=%d";
                  goto LABEL_50;
                }
              }

              break;
            case 3:
              if (ErrorLogLevelForModule >= 7)
              {
                v44 = VRTraceErrorLogLevelToCSTR();
                v45 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                {
                  v46 = v4[1];
                  v47 = v4[2];
                  *buf = 136316418;
                  v98 = v44;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1466;
                  v103 = 1024;
                  v104 = v5;
                  v105 = 1024;
                  v106 = v46;
                  v107 = 1024;
                  v108 = v47;
                  v13 = v45;
                  v14 = " [%s] %s:%d Audio issue detector: DistortionEvent: Downlink silence > 5s: direction=%d, disortionTimeMs=%d, distortionDurationMs=%d";
                  goto LABEL_50;
                }
              }

              break;
            case 4:
              if (ErrorLogLevelForModule >= 7)
              {
                v21 = VRTraceErrorLogLevelToCSTR();
                v22 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = v4[1];
                  v24 = v4[2];
                  *buf = 136316418;
                  v98 = v21;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1469;
                  v103 = 1024;
                  v104 = v5;
                  v105 = 1024;
                  v106 = v23;
                  v107 = 1024;
                  v108 = v24;
                  v13 = v22;
                  v14 = " [%s] %s:%d Audio issue detector: DistortionEvent: Uplink silence > 5s: direction=%d, disortionTimeMs=%d, distortionDurationMs=%d";
                  goto LABEL_50;
                }
              }

              break;
            case 5:
              if (ErrorLogLevelForModule >= 7)
              {
                v56 = VRTraceErrorLogLevelToCSTR();
                v57 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                {
                  v58 = v4[1];
                  v59 = v4[2];
                  *buf = 136316418;
                  v98 = v56;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1472;
                  v103 = 1024;
                  v104 = v5;
                  v105 = 1024;
                  v106 = v58;
                  v107 = 1024;
                  v108 = v59;
                  v13 = v57;
                  v14 = " [%s] %s:%d Audio issue detector: DistortionEvent: Continuous zero pcm samples > 5s in uplink: direction=%d, disortionTimeMs=%d, distortionDurationMs=%d";
                  goto LABEL_50;
                }
              }

              break;
            case 6:
              if (ErrorLogLevelForModule >= 7)
              {
                v70 = VRTraceErrorLogLevelToCSTR();
                v71 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                {
                  v72 = v4[1];
                  v73 = v4[2];
                  *buf = 136316418;
                  v98 = v70;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1475;
                  v103 = 1024;
                  v104 = v5;
                  v105 = 1024;
                  v106 = v72;
                  v107 = 1024;
                  v108 = v73;
                  v13 = v71;
                  v14 = " [%s] %s:%d Audio issue detector: DistortionEvent: Continuous zero pcm samples > 5s in downlink: direction=%d, disortionTimeMs=%d, distortionDurationMs=%d";
                  goto LABEL_50;
                }
              }

              break;
            case 7:
              if (ErrorLogLevelForModule >= 7)
              {
                v48 = VRTraceErrorLogLevelToCSTR();
                v49 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                {
                  v50 = v4[1];
                  v51 = v4[2];
                  *buf = 136316418;
                  v98 = v48;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1478;
                  v103 = 1024;
                  v104 = v5;
                  v105 = 1024;
                  v106 = v50;
                  v107 = 1024;
                  v108 = v51;
                  v13 = v49;
                  v14 = " [%s] %s:%d Audio issue detector: DistortionEvent: Low energy in uplink: direction=%d, disortionTimeMs=%d, distortionDurationMs=%d";
                  goto LABEL_50;
                }
              }

              break;
            case 8:
              if (ErrorLogLevelForModule >= 7)
              {
                v79 = VRTraceErrorLogLevelToCSTR();
                v80 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                {
                  v81 = v4[1];
                  v82 = v4[2];
                  *buf = 136316418;
                  v98 = v79;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1481;
                  v103 = 1024;
                  v104 = v5;
                  v105 = 1024;
                  v106 = v81;
                  v107 = 1024;
                  v108 = v82;
                  v13 = v80;
                  v14 = " [%s] %s:%d Audio issue detector: DistortionEvent: Low energy in downlink: direction=%d, disortionTimeMs=%d, distortionDurationMs=%d";
LABEL_50:
                  v20 = 46;
                  goto LABEL_51;
                }
              }

              break;
            case 9:
              if (ErrorLogLevelForModule >= 7)
              {
                v35 = VRTraceErrorLogLevelToCSTR();
                v36 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                {
                  v37 = v4[1];
                  v38 = v4[2];
                  v39 = v4[3];
                  *buf = 136316674;
                  v98 = v35;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1484;
                  v103 = 1024;
                  v104 = v5;
                  v105 = 1024;
                  v106 = v37;
                  v107 = 1024;
                  v108 = v38;
                  v109 = 1024;
                  v110 = v39;
                  v13 = v36;
                  v14 = " [%s] %s:%d Audio issue detector: DistortionEvent: High noise floor in uplink: direction=%d, disortionTimeMs=%d, distortionDurationMs=%d, segmentRmsMeanDb=%d";
                  goto LABEL_46;
                }
              }

              break;
            case 10:
              if (ErrorLogLevelForModule >= 7)
              {
                v74 = VRTraceErrorLogLevelToCSTR();
                v75 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                {
                  v76 = v4[1];
                  v77 = v4[2];
                  v78 = v4[3];
                  *buf = 136316674;
                  v98 = v74;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1487;
                  v103 = 1024;
                  v104 = v5;
                  v105 = 1024;
                  v106 = v76;
                  v107 = 1024;
                  v108 = v77;
                  v109 = 1024;
                  v110 = v78;
                  v13 = v75;
                  v14 = " [%s] %s:%d Audio issue detector: DistortionEvent: High noise floor in downlink: direction=%d, disortionTimeMs=%d, distortionDurationMs=%d, segmentRmsMeanDb=%d";
LABEL_46:
                  v20 = 52;
                  goto LABEL_51;
                }
              }

              break;
            case 11:
              if (ErrorLogLevelForModule >= 7)
              {
                v15 = VRTraceErrorLogLevelToCSTR();
                v16 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                {
                  v85 = v4[1];
                  v86 = v4[2];
                  v17 = v4[5];
                  v88 = *(v4 + 12);
                  v89 = v4[4];
                  v90 = *(v4 + 13);
                  v91 = v4[7];
                  v93 = v4[8];
                  v94 = v4[10];
                  v92 = v4[11];
                  v95 = v4[12];
                  v96 = v4[9];
                  v87 = _VCAudioIssueDetectorUtil_PayloadBitRateString(*(v4 + 86), v4[44]);
                  v18 = _VCAudioIssueDetectorUtil_PayloadBitRateString(*(v4 + 92), v4[47]);
                  v19 = _VCAudioIssueDetectorUtil_PayloadBitRateString(*(v4 + 98), v4[50]);
                  *buf = 136319746;
                  v98 = v15;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1499;
                  v103 = 1024;
                  v104 = v5;
                  v105 = 1024;
                  v106 = v85;
                  v107 = 1024;
                  v108 = v86;
                  v109 = 1024;
                  v110 = v17;
                  v6 = MEMORY[0x1E6986650];
                  v111 = 1024;
                  v112 = v88;
                  v113 = 1024;
                  v114 = v90;
                  v115 = 1024;
                  v116 = v89;
                  v117 = 1024;
                  v118 = v91;
                  v119 = 1024;
                  v120 = v93;
                  v121 = 1024;
                  v122 = v94;
                  v123 = 1024;
                  v124 = v92;
                  v125 = 1024;
                  v126 = v96;
                  v127 = 1024;
                  v128 = v95;
                  v129 = 2080;
                  v130 = v87;
                  v131 = 2080;
                  v132 = v18;
                  v133 = 2080;
                  v134 = v19;
                  v13 = v16;
                  v14 = " [%s] %s:%d Audio issue detector: CallEndEvent: Call end stats: direction=%d, disortionTimeMs=%d, distortionDurationMs=%d, payloadType=%d, codecSampleRate=%d, bitRateInBps=%d, ratType=%d, totalFrameCount=%d, speechFrameCount=%d, speechBadFrameCount=%d, speechLostFrameCount=%d, silenceFrameCount=%d, noDataFrameCount=%d, top1UsedBitrate=%s, top2UsedBitrate=%s, top3UsedBitrate=%s";
                  v20 = 136;
                  goto LABEL_51;
                }
              }

              break;
            case 12:
              if (ErrorLogLevelForModule >= 7)
              {
                v25 = VRTraceErrorLogLevelToCSTR();
                v26 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = v4[1];
                  v28 = v4[2];
                  v29 = v4[3];
                  v30 = v4[4];
                  v31 = v4[5];
                  v32 = v4[6];
                  v34 = v4[7];
                  v33 = v4[8];
                  *buf = 136317954;
                  v98 = v25;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1490;
                  v103 = 1024;
                  v104 = v5;
                  v105 = 1024;
                  v106 = v27;
                  v107 = 1024;
                  v108 = v28;
                  v109 = 1024;
                  v110 = v29;
                  v111 = 1024;
                  v112 = v31;
                  v113 = 1024;
                  v114 = v30;
                  v115 = 1024;
                  v116 = v32;
                  v117 = 1024;
                  v118 = v33;
                  v119 = 1024;
                  v120 = v34;
                  v13 = v26;
                  v14 = " [%s] %s:%d Audio issue detector: CallEndEvent: Speech state rms stats: direction=%d, disortionTimeMs=%d, distortionDurationMs=%d, rmsMeanDb=%d, rmsMinDb=%d, rmsMaxDb=%d, rmsSegmentMeanDb=%d, rmsSegmentMinDb=%d, rmsSegmentMaxDb=%d";
                  goto LABEL_39;
                }
              }

              break;
            case 13:
              if (ErrorLogLevelForModule >= 7)
              {
                v60 = VRTraceErrorLogLevelToCSTR();
                v61 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                {
                  v62 = v4[1];
                  v63 = v4[2];
                  v64 = v4[3];
                  v65 = v4[4];
                  v66 = v4[5];
                  v67 = v4[6];
                  v69 = v4[7];
                  v68 = v4[8];
                  *buf = 136317954;
                  v98 = v60;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1493;
                  v103 = 1024;
                  v104 = v5;
                  v105 = 1024;
                  v106 = v62;
                  v107 = 1024;
                  v108 = v63;
                  v109 = 1024;
                  v110 = v64;
                  v111 = 1024;
                  v112 = v66;
                  v113 = 1024;
                  v114 = v65;
                  v115 = 1024;
                  v116 = v67;
                  v117 = 1024;
                  v118 = v68;
                  v119 = 1024;
                  v120 = v69;
                  v13 = v61;
                  v14 = " [%s] %s:%d Audio issue detector: CallEndEvent: Silence state rms stats: direction=%d, disortionTimeMs=%d, distortionDurationMs=%d, rmsMeanDb=%d, rmsMinDb=%d, rmsMaxDb=%d, rmsSegmentMeanDb=%d, rmsSegmentMinDb=%d, rmsSegmentMaxDb=%d";
LABEL_39:
                  v20 = 82;
LABEL_51:
                  _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, v20);
                }
              }

              break;
            default:
              if (ErrorLogLevelForModule >= 3)
              {
                v83 = VRTraceErrorLogLevelToCSTR();
                v84 = *v6;
                if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315906;
                  v98 = v83;
                  v99 = 2080;
                  v100 = "_VCAudioIssueDetectorUtil_HandleLogEvents";
                  v101 = 1024;
                  v102 = 1502;
                  v103 = 1024;
                  v104 = 1502;
                  _os_log_error_impl(&dword_1DB56E000, v84, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioIssueDetectorUtil.c:%d: Unexpected log event", buf, 0x22u);
                }
              }

              break;
          }

          v4 = CMSimpleQueueDequeue(*(a1 + 17968));
        }

        while (v4);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioIssueDetectorUtil_FlushLogEvents_cold_1();
    }
  }
}

uint64_t VCAudioIssueDetectorUtil_RtpPacketIndication(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = 0;
    *(a1 + 14728) = *(a1 + 4) * *(a1 + 8);
  }

  else
  {
    VCAudioIssueDetectorUtil_RtpPacketIndication_cold_1(&v3);
    return v3;
  }

  return result;
}

uint64_t VCAudioIssueDetectorUtil_RtpPacketTimeoutIndication(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 4) * *(a1 + 8);
    v3 = v2 - *(a1 + 14728);
    *(a1 + 14732) = v3;
    if (v3 >= 0x1389 && !_VCAudioIssueDetectorUtil_IsReportingQueueFull(*(a1 + 17968)))
    {
      v4 = *(a1 + 720);
      *(a1 + 720) = v4 + 1;
      v5 = a1 + 560 * (v4 - 25 * ((((v4 - ((18351 * v4) >> 16)) >> 1) + ((18351 * v4) >> 16)) >> 4));
      *(v5 + 724) = 14;
      *(v5 + 728) = *(a1 + 14728);
      _VCAudioIssueDetectorUtil_EnqueueDistortion(a1, (v5 + 724));
    }

    result = 0;
    *(a1 + 14728) = v2;
    *(a1 + 14732) = 0;
  }

  else
  {
    VCAudioIssueDetectorUtil_RtpPacketTimeoutIndication_cold_1(&v7);
    return v7;
  }

  return result;
}

void _VCAudioIssueDetectorUtil_InitAndUseLatestConfig(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a1 + 0x4000;
  bzero(a1, 0x4630uLL);
  *(a1 + 20) = -956694528;
  *(a1 + 32) = -956694528;
  *(a1 + 68) = -956694528;
  *(a1 + 80) = -956694528;
  if (*(v2 + 1598) && (v3 = *(v2 + 1596), *(v2 + 1596)))
  {
    *(a1 + 8) = 0x3E8 / (*(v2 + 1598) / v3);
    *(a1 + 136) = v3;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = *(v2 + 1598);
      v7 = *(v2 + 1596);
      v8 = *(v2 + 1592);
      v9 = 136316418;
      v10 = v4;
      v11 = 2080;
      v12 = "_VCAudioIssueDetectorUtil_InitAndUseLatestConfig";
      v13 = 1024;
      v14 = 1161;
      v15 = 1024;
      v16 = v6;
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unexpected configuration audioIOSampleRate=%d, audioIOSampleCount=%d for direction=%d", &v9, 0x2Eu);
    }
  }
}

void _VCAudioIssueDetectorUtilDeInit(void *a1)
{
  if (a1 && (v2 = *a1) != 0 && (v3 = v2[2246]) != 0)
  {
    free(v3);
    v2[2246] = 0;
    v4 = v2[2248];
    if (v4)
    {
      CFRelease(v4);
    }

    *a1 = 0;

    free(v2);
  }

  else
  {
    _VCAudioIssueDetectorUtilDeInit_cold_1();
  }
}

_DWORD *_VCAudioIssueDetectorUtil_UpdateAggregatedStats(_DWORD *result, int a2)
{
  if ((*result - 1) >= 2)
  {
    if (*result != 3)
    {
      return result;
    }

    ++result[48];
    if (a2 == 1)
    {
      v2 = 50;
    }

    else
    {
      if (a2 != 4)
      {
        return result;
      }

      v2 = 51;
    }
  }

  else
  {
    ++result[49];
    if (a2 != 4)
    {
      return result;
    }

    v2 = 52;
  }

  ++result[v2];
  return result;
}