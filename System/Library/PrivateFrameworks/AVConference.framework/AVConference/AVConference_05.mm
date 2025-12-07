uint64_t _VCScreenCapture_clearScreenProc(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v21.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v21.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  v20.tv_sec = 0;
  v20.tv_nsec = 0;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  pthread_setname_np("com.apple.vcscreencapture.clearscreenproc");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v2;
      *&buf[12] = 2080;
      *&buf[14] = "_VCScreenCapture_clearScreenProc";
      *&buf[22] = 1024;
      v23 = 369;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Clear Screen Thread Started", buf, 0x1Cu);
    }
  }

  pthread_mutex_lock((a1 + 320));
  if ([a1 isClearScreenThreadRunning])
  {
    *&v4 = 136315650;
    v17 = v4;
    do
    {
      v5 = (a1 + 256);
      v6 = (a1 + 320);
      if (*(a1 + 428))
      {
        pthread_cond_timedwait(v5, v6, &v20);
      }

      else
      {
        pthread_cond_wait(v5, v6);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            *&buf[4] = v7;
            *&buf[12] = 2080;
            *&buf[14] = "_VCScreenCapture_clearScreenProc";
            *&buf[22] = 1024;
            v23 = 381;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Clear Screen Signalled", buf, 0x1Cu);
          }
        }

        gettimeofday(&v21, 0);
        v20.tv_sec = v21.tv_sec;
        v20.tv_nsec = 1000 * v21.tv_usec;
      }

      v9 = [a1 newIdleBlackFrameWithAttributes:{v18, v17}];
      v10 = *(a1 + 404);
      v11 = *(a1 + 412);
      v12 = *(a1 + 420);
      pthread_mutex_unlock((a1 + 320));
      if (v9)
      {
        *buf = v10;
        *&buf[8] = v11;
        *&buf[16] = v12;
        VCVideoCapture_DistributeVideoFrame(a1, v9, buf, v18);
        CFRelease(v9);
      }

      v13 = v20.tv_nsec + 1000000000 * v20.tv_sec + 33333333;
      v20.tv_sec = v13 / 0x3B9ACA00;
      v20.tv_nsec = v13 % 0x3B9ACA00;
      pthread_mutex_lock((a1 + 320));
    }

    while (([a1 isClearScreenThreadRunning] & 1) != 0);
  }

  pthread_mutex_unlock((a1 + 320));
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = "_VCScreenCapture_clearScreenProc";
      *&buf[22] = 1024;
      v23 = 403;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCScreenCapture [%s] %s:%d Clear Screen Thread Ended", buf, 0x1Cu);
    }
  }

  return a1;
}

void OUTLINED_FUNCTION_7_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x1Cu);
}

_OWORD *VCAudioDucker_Allocate(__int128 *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004047CAF6D5uLL);
  v3 = v2;
  if (v2)
  {
    v4 = *a1;
    v5 = a1[2];
    v2[1] = a1[1];
    v2[2] = v5;
    *v2 = v4;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioDucker_Allocate_cold_1();
    }
  }

  return v3;
}

void VCAudioDucker_Destroy(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      free(v2);
    }
  }
}

OpaqueAudioComponentInstance *VCAudioDucker_Start(AudioUnit *a1)
{
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioDucker_Start_cold_17();
    }

    return 0;
  }

  if (!VCAudioUnit_NewInstance(a1 + 6, 0x6479646Bu))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioDucker_Start_cold_1();
    }

    return 0;
  }

  if (AudioUnitSetProperty(a1[6], 0xEu, 0, 0, a1 + 5, 4u))
  {
    VCAudioDucker_Start_cold_2();
LABEL_31:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioDucker_Start_cold_5();
      }
    }

    goto LABEL_34;
  }

  for (i = 0; i != 5; ++i)
  {
    if (AudioUnitSetProperty(a1[6], 8u, 1u, i, a1, 0x28u))
    {
      VCAudioDucker_Start_cold_3();
      goto LABEL_31;
    }
  }

  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    if (AudioUnitSetProperty(a1[6], 8u, 2u, v3, a1, 0x28u))
    {
      VCAudioDucker_Start_cold_4();
      goto LABEL_31;
    }

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  if (AudioUnitSetParameter(a1[6], 2u, 0, 0, -15.0, 0))
  {
    VCAudioDucker_Start_cold_6();
  }

  else if (AudioUnitSetParameter(a1[6], 4u, 0, 0, -32.0, 0))
  {
    VCAudioDucker_Start_cold_7();
  }

  else if (AudioUnitSetParameter(a1[6], 5u, 0, 0, -30.0, 0))
  {
    VCAudioDucker_Start_cold_8();
  }

  else if (AudioUnitSetParameter(a1[6], 7u, 0, 0, -30.0, 0))
  {
    VCAudioDucker_Start_cold_9();
  }

  else if (AudioUnitSetParameter(a1[6], 8u, 0, 0, 0.0, 0))
  {
    VCAudioDucker_Start_cold_10();
  }

  else if (AudioUnitSetParameter(a1[6], 0xDu, 0, 0, 0.15, 0))
  {
    VCAudioDucker_Start_cold_11();
  }

  else if (AudioUnitSetParameter(a1[6], 0xEu, 0, 0, 0.8, 0))
  {
    VCAudioDucker_Start_cold_12();
  }

  else if (AudioUnitSetParameter(a1[6], 0xFu, 0, 0, 1.3, 0))
  {
    VCAudioDucker_Start_cold_13();
  }

  else
  {
    if (!AudioUnitSetParameter(a1[6], 0x10u, 0, 0, 1.0, 0))
    {
      if (!AudioUnitInitialize(a1[6]))
      {
        return 1;
      }

      VCAudioDucker_Start_cold_16();
      goto LABEL_34;
    }

    VCAudioDucker_Start_cold_14();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioDucker_Start_cold_15();
    }
  }

LABEL_34:
  result = a1[6];
  if (result)
  {
    AudioComponentInstanceDispose(result);
    result = 0;
    a1[6] = 0;
  }

  return result;
}

void VCAudioDucker_Stop(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      AudioComponentInstanceDispose(v2);
      *(a1 + 48) = 0;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioDucker_Stop_cold_1();
    }
  }
}

BOOL VCAudioDucker_Process(UInt64 a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    ioActionFlags = 512;
    SampleCount = VCAudioBufferList_GetSampleCount(a2);
    inTimeStamp.mSampleTime = NAN;
    inTimeStamp.mHostTime = 0xAAAAAAAAAAAAAAAALL;
    inTimeStamp.mRateScalar = NAN;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&inTimeStamp.mWordClockTime = v7;
    *&inTimeStamp.mSMPTETime.mType = v7;
    *&inTimeStamp.mFlags = 0xAAAAAAAAAAAAAAAALL;
    VCAudioBufferList_GetAudioTimestamp(a2, &inTimeStamp);
    inInputBufferLists[0] = VCAudioBufferList_GetAudioBufferList(a2);
    inInputBufferLists[1] = 0;
    inInputBufferLists[2] = 0;
    AudioBufferList = VCAudioBufferList_GetAudioBufferList(a3);
    v17 = 0;
    ioOutputBufferLists[0] = inInputBufferLists[0];
    ioOutputBufferLists[1] = AudioBufferList;
    v8 = AudioUnitProcessMultiple(*(a1 + 48), &ioActionFlags, &inTimeStamp, SampleCount, 5u, inInputBufferLists, 2u, ioOutputBufferLists);
    v9 = v8 == 0;
    if (v8)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCAudioDucker_Process_cold_1();
        }
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        LODWORD(inTimeStamp.mSampleTime) = 136316418;
        *(&inTimeStamp.mSampleTime + 4) = v10;
        WORD2(inTimeStamp.mHostTime) = 2080;
        *(&inTimeStamp.mHostTime + 6) = "VCAudioDucker_Process";
        HIWORD(inTimeStamp.mRateScalar) = 1024;
        LODWORD(inTimeStamp.mWordClockTime) = 177;
        WORD2(inTimeStamp.mWordClockTime) = 2048;
        *(&inTimeStamp.mWordClockTime + 6) = a1;
        HIWORD(inTimeStamp.mSMPTETime.mCounter) = 2048;
        *&inTimeStamp.mSMPTETime.mType = a2;
        inTimeStamp.mSMPTETime.mHours = 2048;
        *&inTimeStamp.mSMPTETime.mMinutes = a3;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d invalid parameter, audioDucker=%p sampleBuffer=%p sysaSampleBuffer=%p", &inTimeStamp, 0x3Au);
      }
    }

    return 0;
  }

  return v9;
}

void OUTLINED_FUNCTION_10_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x28u);
}

uint64_t RTPSendH263Packet(uint64_t a1, char a2, int a3, char a4, char a5, uint64_t a6, int a7, char a8, double a9, char a10, void *a11, unsigned int a12, int *a13, const void *a14, uint64_t a15, uint64_t a16, _DWORD *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, unsigned __int16 *a22, unsigned __int16 *a23)
{
  v23 = a21;
  v37 = *MEMORY[0x1E69E9840];
  v24 = 2147549185;
  v36 = -1431655766;
  if (a13)
  {
    v26 = a6;
    *a13 = 0;
    v33 = CheckInHandleDebug();
    if (v33 == 0xFFFFFFFFLL)
    {
      VCMediaControlInfoDispose(a21);
      return 2147549190;
    }

    else if (v33)
    {
      *(v33 + 16) = *(v33 + 16) & 0x80FF | ((a2 & 0x7F) << 8);
      if ((a2 & 0x7F) == 0x7E)
      {
        if (!a3)
        {
          if (a12 <= 1456)
          {
            LOBYTE(v36) = a10 & 7 | (8 * (a8 & 7));
            BYTE1(v36) = (32 * a4) | (16 * (a5 & 1));
            HIWORD(v36) = 0;
            v24 = SendRTP(a1, v33, v26, a7, &v36, 4uLL, a11, a12, a9, a13, a14, a15, SHIDWORD(a15), a16, SBYTE4(a16), a17, a18, a19, a20, a21, a22, a23, 0, 0);
            v23 = 0;
          }

          else
          {
            v24 = 2147549198;
          }
        }
      }

      else
      {
        v24 = 2147549199;
      }

      VCMediaControlInfoDispose(v23);
      CheckOutHandleDebug();
    }

    else
    {
      VCMediaControlInfoDispose(a21);
      return 2147549186;
    }
  }

  else
  {
    VCMediaControlInfoDispose(a21);
  }

  return v24;
}

uint64_t RTPProcessH263Packet(uint64_t a1, int *a2, int *a3, _BYTE *a4, _BYTE *a5, CFAllocatorRef structureAllocator, CMBlockBufferRef *blockBufferOut)
{
  v7 = 2147549185;
  if (a1 && blockBufferOut)
  {
    v8 = (a1 + 152);
    if (!*(a1 + 152))
    {
      return 2147549199;
    }

    v9 = *(a1 + 160);
    if ((*v9 & 0xC0) == 0x80)
    {
      *a4 = (*v9 >> 3) & 7;
      *a5 = *v9 & 7;
      *a2 = v9[1] >> 5;
      *a3 = v9[4] >> 7;
      v10 = *v8;
      if (*v8 <= 7)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            RTPProcessH263Packet_cold_1();
          }
        }

        return 2147549199;
      }

      v11 = 8;
    }

    else
    {
      if ((*v9 & 0xC0) != 0)
      {
        return 2147549200;
      }

      *a4 = (*v9 >> 3) & 7;
      *a5 = *v9 & 7;
      *a2 = v9[1] >> 5;
      *a3 = (v9[1] >> 4) & 1;
      v10 = *v8;
      if (*v8 <= 3)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            RTPProcessH263Packet_cold_3();
          }
        }

        return 2147549199;
      }

      v11 = 4;
    }

    v12 = (v10 - v11);
    v13 = (*(a1 + 160) + v11);
    blockBufferOut[1] = v12;
    blockBufferOut[2] = v13;
    if (CMBlockBufferCreateWithBufferReference(structureAllocator, *(a1 + 144), v11, v12, 0, blockBufferOut))
    {
      v7 = 2147549187;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          RTPProcessH263Packet_cold_2();
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t VCTimescale_InitializeTimescaleAlgo(_BOOL4 *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  v53 = *MEMORY[0x1E69E9840];
  v12 = HasMulticore();
  if (a4 >= 5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v45 = 136315906;
        v46 = v13;
        v47 = 2080;
        v48 = "_VCTimescale_TimescaleEnablement";
        v49 = 1024;
        v50 = 44;
        v51 = 1024;
        LODWORD(v52) = a4;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Timescale Disabled channelCount[%d]", &v45, 0x22u);
      }
    }

    goto LABEL_14;
  }

  v15 = v12;
  v16 = a6;
  if (a4 >= 2)
  {
    v16 = a6;
    if (a6 == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        v16 = 0;
      }

      else
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (v16)
        {
          v45 = 136315906;
          v46 = v17;
          v47 = 2080;
          v48 = "_VCTimescale_TimescaleEnablement";
          v49 = 1024;
          v50 = 46;
          v51 = 1024;
          LODWORD(v52) = a4;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Disable WSOLA Timescale selected for channelCount=%d", &v45, 0x22u);
          v16 = 0;
          v19 = 0;
          if (!v15)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }
      }
    }
  }

  if (!v15)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

LABEL_13:
  v19 = v16;
LABEL_15:
  *a1 = v19;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v22 = *a1;
      v45 = 136315906;
      v46 = v20;
      v47 = 2080;
      v48 = "_VCTimescale_TimescaleEnablement";
      v49 = 1024;
      v50 = 51;
      v51 = 1024;
      LODWORD(v52) = v22;
      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Timescale algorithm selected is %d", &v45, 0x22u);
    }
  }

  *(a1 + 34700) = a4;
  v23 = malloc_type_malloc(0x40uLL, 0x80040A284212CuLL);
  *(a1 + 4338) = v23;
  if (v23)
  {
    v24 = *a1 - 1;
    if (v24 >= 3)
    {
      v23[2] = 0u;
      v23[3] = 0u;
      *v23 = 0u;
      v23[1] = 0u;
      if (!**(a1 + 4338))
      {
        v33 = 0;
LABEL_35:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v40 = VRTraceErrorLogLevelToCSTR();
          v41 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v42 = *a1;
            if (*a1)
            {
              v43 = "WSOLA";
            }

            else
            {
              v43 = "PSOLA";
              if (v42 != 2 && v42 != 3)
              {
                v43 = "Empty";
              }
            }

            v45 = 136315906;
            v46 = v40;
            v47 = 2080;
            v48 = "VCTimescale_InitializeTimescaleAlgo";
            v49 = 1024;
            v50 = 127;
            v51 = 2080;
            v52 = v43;
            _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s Timescale successfully initialized ", &v45, 0x26u);
          }
        }

        return v33;
      }
    }

    else
    {
      v25 = off_1F570D330[v24];
      v26 = off_1F570D348[v24];
      v27 = off_1F570D360[v24];
      v28 = off_1F570D378[v24];
      v29 = off_1F570D390[v24];
      v30 = off_1F570D3A8[v24];
      v31 = off_1F570D3C0[v24];
      v32 = off_1F570D3D8[v24];
      *v23 = v25;
      *(v23 + 1) = v26;
      *(v23 + 4) = v29;
      *(v23 + 5) = v28;
      *(v23 + 2) = v27;
      *(v23 + 3) = v30;
      *(v23 + 6) = v31;
      *(v23 + 7) = v32;
    }

    v37 = a6 == 2 || (a6 & 0xFFFFFFFD) == 1;
    BoolValueForKey = VCDefaults_GetBoolValueForKey(@"audioTimescalingHysteresisEnabled", v37);
    v33 = (**(a1 + 4338))(a1, a2, a3, a5, BoolValueForKey);
    if ((v33 & 0x80000000) != 0)
    {
      v39 = *(a1 + 4338);
      if (v39)
      {
        v39[2] = 0u;
        v39[3] = 0u;
        *v39 = 0u;
        v39[1] = 0u;
      }
    }

    goto LABEL_35;
  }

  v33 = 2147549187;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCTimescale_InitializeTimescaleAlgo_cold_1(v34, v35);
    }
  }

  return v33;
}

uint64_t VCTimescale_UpdateTimescaleHistoryBuffer(uint64_t result)
{
  if (result)
  {
    v1 = *(*(result + 34704) + 24);
    if (v1)
    {
      if (*result)
      {
        return v1();
      }
    }
  }

  return result;
}

uint64_t VCTimescale_ActiveSpeechAdapt(uint64_t a1)
{
  v1 = *(*(a1 + 34704) + 32);
  if (v1 && *a1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t VCTimescale_IsCompressionNeeded(uint64_t a1)
{
  v1 = *(*(a1 + 34704) + 40);
  if (v1 && *a1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t VCTimescale_TailSize(uint64_t a1)
{
  v1 = *(*(a1 + 34704) + 16);
  if (v1 && *a1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

void VCTimescale_Finalize(uint64_t a1)
{
  v2 = *(a1 + 34704);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      if (*a1)
      {
        v3(a1);
        v2 = *(a1 + 34704);
      }
    }

    free(v2);
    *(a1 + 34704) = 0;
  }
}

uint64_t VCTimescale_TailExtractAvailable(uint64_t a1)
{
  v1 = *(*(a1 + 34704) + 48);
  if (v1 && *a1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t VCTimescale_WarpFrameSize(uint64_t a1)
{
  v1 = *(*(a1 + 34704) + 56);
  if (v1 && *a1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t RTPSendH264Packet(uint64_t a1, char a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, int *a8, double a9, const void *a10, uint64_t a11, uint64_t a12, _DWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, unsigned __int16 *a18, unsigned __int16 *a19, char a20, int a21)
{
  v21 = a17;
  v22 = 2147549198;
  if (a8)
  {
    v27 = a5;
    v28 = a4;
    *a8 = 0;
    v32 = CheckInHandleDebug();
    if (v32 == 0xFFFFFFFFLL)
    {
      VCMediaControlInfoDispose(a17);
      return 2147549190;
    }

    else if (v32)
    {
      if (a7 >= 1 && ((*(v32 + 16) = *(v32 + 16) & 0x80FF | ((a2 & 0x7F) << 8), (a2 & 0x7F) == 0x7B) || (a2 & 0x7F) == 0x64))
      {
        if (a3 <= 1)
        {
          if (a7 < 0x5B5)
          {
            v22 = SendRTP(a1, v32, v28, v27, 0, 0, a6, a7, a9, a8, a10, a11, SHIDWORD(a11), a12, SBYTE4(a12), a13, a14, a15, a16, a17, a18, a19, a20, a21);
            v21 = 0;
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              RTPSendH264Packet_cold_1();
            }
          }
        }

        else
        {
          v22 = 2147549185;
        }
      }

      else
      {
        v22 = 2147549199;
      }

      VCMediaControlInfoDispose(v21);
      CheckOutHandleDebug();
    }

    else
    {
      VCMediaControlInfoDispose(a17);
      return 2147549186;
    }
  }

  else
  {
    VCMediaControlInfoDispose(a17);
    return 2147549185;
  }

  return v22;
}

uint64_t RTPProcessH264FragmentationHeader(uint64_t a1, uint64_t a2, int *a3, int *a4, _WORD *a5, _BYTE *a6, int *a7, int a8)
{
  v8 = a2;
  v32 = *MEMORY[0x1E69E9840];
  if (a2 > 0)
  {
    v13 = *a1 & 0x1F;
    if (a7)
    {
      *a7 = v13;
    }

    if (a6)
    {
      *a6 = 0;
    }

    switch(v13)
    {
      case 25:
        if (a3)
        {
          *a3 = 1;
        }

        if (a4)
        {
          *a4 = 1;
        }

        v14 = 0;
        if (!a5 || !a6)
        {
          goto LABEL_47;
        }

        if (a2 < 3)
        {
          v14 = 2147549199;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              RTPProcessH264FragmentationHeader_cold_1();
            }
          }

          goto LABEL_47;
        }

        *a5 = bswap32(*(a1 + 1)) >> 16;
        *a6 = 1;
        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          break;
        }

        v20 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        v21 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            RTPProcessH264FragmentationHeader_cold_2();
          }

          break;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *a5;
          v24 = 136315906;
          v25 = v20;
          v26 = 2080;
          v27 = "RTPProcessH264FragmentationHeader";
          v28 = 1024;
          v29 = 197;
          v30 = 1024;
          v31 = v22;
          v19 = " [%s] %s:%d STAP-B Decoding order is %hu";
          goto LABEL_31;
        }

        break;
      case 29:
        _RTPProcessH264FragmentationHeaderStartEndBits(a1, a2, a3, a4);
        v14 = 0;
        if (!a5 || !a6)
        {
          goto LABEL_47;
        }

        if (v8 < 4)
        {
          v14 = 2147549199;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              RTPProcessH264FragmentationHeader_cold_3();
            }
          }

          goto LABEL_47;
        }

        *a5 = bswap32(*(a1 + 2)) >> 16;
        *a6 = 1;
        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          break;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        v17 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            RTPProcessH264FragmentationHeader_cold_4();
          }

          break;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *a5;
          v24 = 136315906;
          v25 = v15;
          v26 = 2080;
          v27 = "RTPProcessH264FragmentationHeader";
          v28 = 1024;
          v29 = 180;
          v30 = 1024;
          v31 = v18;
          v19 = " [%s] %s:%d FU-B Decoding order is %hu";
LABEL_31:
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v19, &v24, 0x22u);
        }

        break;
      case 28:
        _RTPProcessH264FragmentationHeaderStartEndBits(a1, a2, a3, a4);
        break;
      default:
        if (a3)
        {
          *a3 = 1;
        }

        if (!a4)
        {
          break;
        }

        v14 = 0;
        *a4 = 1;
LABEL_47:
        if (a6)
        {
          if (a8)
          {
            if ((*a6 & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                RTPProcessH264FragmentationHeader_cold_5();
              }
            }
          }
        }

        return v14;
    }

    v14 = 0;
    goto LABEL_47;
  }

  v14 = 2147549199;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPProcessH264FragmentationHeader_cold_6();
    }
  }

  return v14;
}

void _RTPProcessH264FragmentationHeaderStartEndBits(uint64_t result, int a2, int *a3, int *a4)
{
  if (a2 > 1)
  {
    if (a3)
    {
      *a3 = *(result + 1) >> 7;
    }

    if (a4)
    {
      *a4 = (*(result + 1) >> 6) & 1;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _RTPProcessH264FragmentationHeaderStartEndBits_cold_1();
    }
  }
}

uint64_t RTPProcessH264Packet(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  if (v4)
  {
    *v4 = 0;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    return 2147549199;
  }

  v6 = **(a1 + 16);
  v7 = v6 & 0x1F;
  if (v7 <= 0x1B)
  {
    if (v7 == 24)
    {
      v8 = 0;
      goto LABEL_19;
    }

    if (v7 == 25)
    {
      v8 = 1;
LABEL_19:

      return _RTPProcessSTAPPacket(a1, a2, v8);
    }

LABEL_13:
    **a2 = 1;
    **(a2 + 8) = 1;
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);
    targetBBuf = 0;
    DataPointer = VCBlockBufferUtilities_CreateAndGetDataPointer(v12, 0, 4uLL, v13, 0, 0, 4uLL, 1u, &targetBBuf);
    if (DataPointer)
    {
      *DataPointer = bswap32(v5);
      if (CMBlockBufferAppendBufferReference(*(a2 + 48), targetBBuf, 0, 4uLL, 0))
      {
        RTPProcessH264Packet_cold_1();
      }

      else
      {
        appended = CMBlockBufferAppendBufferReference(*(a2 + 48), *a1, 0, v5, 0);
        v9 = 0;
        if (!appended)
        {
          goto LABEL_16;
        }

        RTPProcessH264Packet_cold_2();
      }
    }

    else
    {
      RTPProcessH264Packet_cold_3();
    }

    v9 = v17;
LABEL_16:
    if (targetBBuf)
    {
      CFRelease(targetBBuf);
    }

    return v9;
  }

  if (v7 == 28)
  {
    v11 = 0;
  }

  else
  {
    if (v7 != 29)
    {
      goto LABEL_13;
    }

    v11 = 1;
  }

  return _RTPProcessFUPacket(a1, a2, v11, v6);
}

uint64_t _RTPProcessSTAPPacket(uint64_t a1, uint64_t a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  targetBBuf = 0;
  if (v3)
  {
    v6 = 1;
    **a2 = 1;
    **(a2 + 8) = 1;
    v7 = v3 - 1;
    if (!a3)
    {
      goto LABEL_13;
    }

    if (v3 > 2)
    {
      v9 = (a2 + 16);
      v8 = *(a2 + 16);
      if (v8)
      {
        v10 = *(a2 + 24);
        if (v10)
        {
          *v8 = bswap32(*(*(a1 + 16) + 1)) >> 16;
          *v10 = 1;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            v13 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = **v9;
                *buf = 136315906;
                v25 = v11;
                v26 = 2080;
                v27 = "_RTPProcessSTAPPacket";
                v28 = 1024;
                v29 = 238;
                v30 = 1024;
                v31 = v14;
                _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STAP-B Decoding order is %hu", buf, 0x22u);
              }
            }

            else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              _RTPProcessSTAPPacket_cold_1();
            }
          }
        }
      }

      v7 = v3 - 3;
      v6 = 3;
LABEL_13:
      if (v7)
      {
        while (v7 != 1)
        {
          v15 = bswap32(*(*(a1 + 16) + v6)) >> 16;
          v16 = v7 - 2 >= v15;
          v7 = v7 - 2 - v15;
          if (!v16)
          {
            _RTPProcessSTAPPacket_cold_6();
            goto LABEL_36;
          }

          v17 = *(a2 + 32);
          v18 = *(a2 + 40);
          targetBBuf = 0;
          DataPointer = VCBlockBufferUtilities_CreateAndGetDataPointer(v17, 0, 4uLL, v18, 0, 0, 4uLL, 1u, &targetBBuf);
          if (!DataPointer)
          {
            _RTPProcessSTAPPacket_cold_5();
            goto LABEL_36;
          }

          *DataPointer = bswap32(v15);
          if (CMBlockBufferAppendBufferReference(*(a2 + 48), targetBBuf, 0, 4uLL, 0))
          {
            _RTPProcessSTAPPacket_cold_3();
            goto LABEL_36;
          }

          v20 = v6 + 2;
          if (CMBlockBufferAppendBufferReference(*(a2 + 48), *a1, v20, v15, 0))
          {
            _RTPProcessSTAPPacket_cold_4();
            goto LABEL_36;
          }

          if (targetBBuf)
          {
            CFRelease(targetBBuf);
            targetBBuf = 0;
          }

          v6 = v20 + v15;
          if (!v7)
          {
            goto LABEL_23;
          }
        }

        v21 = 2147549199;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _RTPProcessSTAPPacket_cold_2();
          }
        }
      }

      else
      {
LABEL_23:
        v21 = 0;
      }

      goto LABEL_24;
    }

    _RTPProcessSTAPPacket_cold_7();
  }

  else if (_RTPProcessSTAPPacket_cold_8(buf))
  {
    return 2147549199;
  }

LABEL_36:
  v21 = *buf;
LABEL_24:
  if (targetBBuf)
  {
    CFRelease(targetBBuf);
  }

  return v21;
}

uint64_t _RTPProcessFUPacket(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  targetBBuf = 0;
  if (v4 <= 1)
  {
    v5 = 2147549199;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTPProcessFUPacket_cold_5();
      }
    }

    return v5;
  }

  v9 = *(a1 + 16);
  v10 = *(v9 + 1);
  **a2 = v10 >> 7;
  if (a3)
  {
    **(a2 + 8) = (*(v9 + 1) & 0x40) != 0;
    v10 = *(v9 + 1);
    v12 = (a2 + 16);
    v11 = *(a2 + 16);
    if (v11)
    {
      v13 = *(a2 + 24);
      if (v13)
      {
        *v11 = bswap32(*(v9 + 2)) >> 16;
        *v13 = 1;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          v16 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = **v12;
              *buf = 136315906;
              v25 = v14;
              v26 = 2080;
              v27 = "_RTPProcessFUPacket";
              v28 = 1024;
              v29 = 306;
              v30 = 1024;
              v31 = v17;
              _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FU-B Decoding order is %hu", buf, 0x22u);
            }
          }

          else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            _RTPProcessFUPacket_cold_1();
          }
        }
      }
    }

    v18 = -3;
    v19 = 4;
  }

  else
  {
    **(a2 + 8) = (v10 & 0x40) != 0;
    v18 = -1;
    v19 = 2;
  }

  if (**a2)
  {
    DataPointer = VCBlockBufferUtilities_CreateAndGetDataPointer(*(a2 + 32), 0, 5uLL, *(a2 + 40), 0, 0, 5uLL, 1u, &targetBBuf);
    if (!DataPointer)
    {
      _RTPProcessFUPacket_cold_3();
      goto LABEL_26;
    }

    *DataPointer = bswap32(v18 + v4);
    DataPointer[4] = v10 & 0x1F | a4 & 0xE0;
    if (CMBlockBufferAppendBufferReference(*(a2 + 48), targetBBuf, 0, 5uLL, 0))
    {
      _RTPProcessFUPacket_cold_2();
      goto LABEL_26;
    }
  }

  appended = CMBlockBufferAppendBufferReference(*(a2 + 48), *a1, v19, v4 - v19, 0);
  v5 = 0;
  if (!appended)
  {
    goto LABEL_20;
  }

  _RTPProcessFUPacket_cold_4();
LABEL_26:
  v5 = *buf;
LABEL_20:
  if (targetBBuf)
  {
    CFRelease(targetBBuf);
  }

  return v5;
}

void OUTLINED_FUNCTION_21_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x22u);
}

uint64_t _VCCannedVideoPacketSource_InjectionThread(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v64 = *MEMORY[0x1E69E9840];
  v46 = 0;
  bzero(v49, 0x17B8uLL);
  v45.tv_sec = 0;
  *&v45.tv_usec = 0;
  gettimeofday(&v45, 0);
  setRealTimeConstraints(0.0);
  bzero(&v60, 0x17B8uLL);
  v47 = 0;
  do
  {
    _VCCannedVideoPacketSource_ReadPacketAndAllocateBlockBuffers(v2, &v60, &v47);
    if (v47 == 1)
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v44 = MEMORY[0x1E6986650];
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
        {
          _VCCannedVideoPacketSource_InjectionThread_cold_1();
        }
      }

      [*(v2 + 16) seekToFileOffset:0];
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
        {
          _VCCannedVideoPacketSource_InjectionThread_cold_2();
        }
      }

      return 0;
    }
  }

  while (LOBYTE(v60.value) != 1 || v60.timescale != 0);
  LODWORD(v1) = v62;
  memset(&v48, 170, sizeof(v48));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v48, HostTimeClock);
  v5 = +[VCCannedAVSync sharedCannedAVSync];
  VCCannedAVSync_SetBase(v5, v48.value / v48.timescale);
  v6 = v1 / 90000.0;
  v8 = VCCannedAVSync_AddDrift(v5, v6);
  if (LOBYTE(v60.value) == 2)
  {
    v8 = NTPToMicro(*&v60.timescale, v7);
    v9 = v8;
  }

  else
  {
    if (LOBYTE(v60.value) != 1)
    {
      goto LABEL_13;
    }

    if (v60.timescale == 1)
    {
      v9 = v61;
    }

    else
    {
      if (!v60.timescale)
      {
        v9 = v63;
        goto LABEL_16;
      }

LABEL_13:
      v9 = NAN;
    }
  }

LABEL_16:
  [*(v2 + 16) seekToFileOffset:{0, v8}];
  _VCCannedVideoPacketSource_ReadPacketAndAllocateBlockBuffers(v2, v49, &v46);
  pthread_mutex_lock((v2 + 88));
  if ((*(v2 + 80) & 1) == 0)
  {
    tv_sec = v45.tv_sec;
    tv_usec = v45.tv_usec;
    while (1)
    {
      v48.value = 0xAAAAAAAAAAAAAAAALL;
      *&v48.timescale = 0xAAAAAAAAAAAAAAAALL;
      *&v60.timescale = 0;
      v60.value = 0;
      gettimeofday(&v60, 0);
      value = tv_sec;
      do
      {
        while (1)
        {
          if (tv_usec <= 979999)
          {
            v13 = 20000;
          }

          else
          {
            tv_sec = ++value;
            v13 = -980000;
          }

          tv_usec += v13;
          v9 = v9 + 0.02;
          if (value == v60.value)
          {
            break;
          }

          if (value >= v60.value)
          {
            goto LABEL_26;
          }
        }
      }

      while (tv_usec < v60.timescale);
      value = v60.value;
LABEL_26:
      v48.value = value;
      *&v48.timescale = 1000 * tv_usec;
      v14 = pthread_cond_timedwait((v2 + 152), (v2 + 88), &v48);
      if (v14 == 60)
      {
        break;
      }

LABEL_86:
      if (*(v2 + 80) == 1)
      {
        goto LABEL_87;
      }
    }

    v18 = micro(v14, v15);
    while (2)
    {
      if (v49[0] == 2)
      {
        v19 = NTPToMicro(v50, v17);
      }

      else
      {
        if (v49[0] != 1)
        {
          goto LABEL_86;
        }

        if (v50 == 1)
        {
          v19 = v52[0];
        }

        else
        {
          if (v50)
          {
            goto LABEL_86;
          }

          v19 = v53;
        }
      }

      if (v19 >= v9)
      {
        goto LABEL_86;
      }

      v20 = v49[0];
      if (v49[0] == 2)
      {
        v50 = MicroToNTP(v18, v16, v17);
        v20 = v49[0];
      }

      else if (v49[0] == 1)
      {
        v21 = &v53;
        if (!v50 || (v21 = v52, v50 == 1))
        {
          *v21 = v18;
          goto LABEL_45;
        }

LABEL_51:
        v23 = 0;
        v22 = 0;
        goto LABEL_52;
      }

      if (v20 == 1)
      {
LABEL_45:
        if (v50)
        {
          v23 = 0;
        }

        else
        {
          v23 = v54;
        }

        if (v50)
        {
          v22 = 0;
        }

        else
        {
          v22 = v54[24];
        }
      }

      else
      {
        if (v20 != 2)
        {
          goto LABEL_51;
        }

        v22 = v59[24];
        v23 = v59;
      }

LABEL_52:
      v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
      v25 = [*(v2 + 56) objectForKeyedSubscript:v24];
      v26 = [*(v2 + 64) objectForKeyedSubscript:v24];

      v27 = v49[0];
      if (v49[0] == 2)
      {
        if (!v22)
        {
          v25 = v26;
          if (v26)
          {
            goto LABEL_62;
          }
        }

        if (v22)
        {
          v33 = v22;
          do
          {
            v34 = objc_alloc(MEMORY[0x1E696AD98]);
            v35 = *v23;
            v23 += 2;
            v36 = [v34 initWithInt:v35];
            v37 = [*(v2 + 64) objectForKeyedSubscript:v36];
            (*(v37 + 16))(v37, &v50);

            --v33;
          }

          while (v33);
        }

LABEL_66:
        v27 = v49[0];
      }

      else if (v49[0] == 1)
      {
        if (v22 || !v25)
        {
          if (v22)
          {
            v28 = v22;
            do
            {
              v29 = objc_alloc(MEMORY[0x1E696AD98]);
              v30 = *v23;
              v23 += 2;
              v31 = [v29 initWithInt:v30];
              v32 = [*(v2 + 56) objectForKeyedSubscript:v31];
              (*(v32 + 16))(v32, &v50);

              --v28;
            }

            while (v28);
          }

          goto LABEL_66;
        }

LABEL_62:
        (*(v25 + 16))(v25, &v50);
        goto LABEL_66;
      }

      if (v27 == 1)
      {
        if (!v50)
        {
          VCBlockBuffer_Clear(v56);
          VCBlockBuffer_Clear(v57);
          VCBlockBuffer_Clear(v58);
        }
      }

      else if (v27 == 2)
      {
        if (v51)
        {
          for (i = 0; i < v51; v52[i++] = 0.0)
          {
            CFAllocatorDeallocate(*(v2 + 40), *&v52[i]);
          }
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      _VCCannedVideoPacketSource_ReadPacketAndAllocateBlockBuffers(v2, v49, &v46);
      if (v46 == 1)
      {
        if (v49[0] == 2)
        {
          v9 = NTPToMicro(v50, v17);
        }

        else
        {
          if (v49[0] != 1)
          {
            goto LABEL_82;
          }

          if (v50 == 1)
          {
            v9 = v52[0];
            goto LABEL_85;
          }

          if (v50)
          {
LABEL_82:
            v9 = NAN;
          }

          else
          {
            v9 = v53;
          }
        }

LABEL_85:
        memset(&v60, 170, sizeof(v60));
        v39 = CMClockGetHostTimeClock();
        CMClockGetTime(&v60, v39);
        v40 = +[VCCannedAVSync sharedCannedAVSync];
        VCCannedAVSync_SetBase(v40, v60.value / v60.timescale);
        VCCannedAVSync_AddDrift(v40, v6);
        goto LABEL_86;
      }

      continue;
    }
  }

LABEL_87:
  if (v49[0] == 1)
  {
    if (!v50)
    {
      VCBlockBuffer_Clear(v56);
      VCBlockBuffer_Clear(v57);
      VCBlockBuffer_Clear(v58);
    }
  }

  else if (v49[0] == 2)
  {
    if (v51)
    {
      for (j = 0; j < v51; v52[j++] = 0.0)
      {
        CFAllocatorDeallocate(*(v2 + 40), *&v52[j]);
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  pthread_mutex_unlock((v2 + 88));
  return 0;
}

unint64_t VCCannedVideoPacketSource_RegisterForCannedReplay(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  if (v4 == 1)
  {
    if (!a2)
    {
      VCCannedVideoPacketSource_RegisterForCannedReplay_cold_1(&aBlock, v13);
      return LODWORD(v13[0]);
    }

    aBlock = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = ___VCCannedVideoPacketSource_RegisterRTPCallback_block_invoke;
    v17 = &unk_1E85F55E8;
    v18 = a3;
    v19 = a2;
    v11 = _Block_copy(&aBlock);
    [*(a1 + 56) setObject:v11 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *a2)}];
    _Block_release(v11);
    aBlock = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = ___VCCannedVideoPacketSource_RegisterRTCPCallback_block_invoke;
    v17 = &unk_1E85F5610;
    v18 = a4;
    v19 = a2;
    v12 = _Block_copy(&aBlock);
    [*(a1 + 64) setObject:v12 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *a2)}];
    _Block_release(v12);
    return 0;
  }

  if (v4 != 2)
  {
    return 2147549183;
  }

  v8 = *(a2 + 6);
  aBlock = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = ___VCCannedVideoPacketSource_RegisterCannedReplayWriteCallbacks_block_invoke;
  v17 = &unk_1E85F5598;
  v18 = a1;
  v19 = a3;
  if ((RTPRegisterPacketCallback(v8, a2, &aBlock) & 0x80000000) != 0)
  {
    VCCannedVideoPacketSource_RegisterForCannedReplay_cold_3();
    return LODWORD(v13[0]);
  }

  v9 = *(a2 + 6);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___VCCannedVideoPacketSource_RegisterCannedReplayWriteCallbacks_block_invoke_49;
  v13[3] = &unk_1E85F55C0;
  v13[4] = a1;
  v13[5] = a4;
  result = RTCPRegisterPacketCallback(v9, a2, v13);
  if ((result & 0x80000000) != 0)
  {
    VCCannedVideoPacketSource_RegisterForCannedReplay_cold_2();
    return v20;
  }

  return result;
}

uint64_t VCCannedVideoPacketSource_UnregisterForCannedReplay(uint64_t a1, unsigned __int16 *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCCannedVideoPacketSource_UnregisterForCannedReplay_cold_3(&v6);
    return v6;
  }

  v3 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  if (v3 == 2)
  {
    if ((RTPUnregisterPacketCallback(*(a2 + 6)) & 0x80000000) != 0)
    {
      VCCannedVideoPacketSource_UnregisterForCannedReplay_cold_2();
    }

    else
    {
      result = RTCPUnregisterPacketCallback(*(a2 + 6));
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      VCCannedVideoPacketSource_UnregisterForCannedReplay_cold_1();
    }

    return v6;
  }

  if (v3 == 1)
  {
    [*(a1 + 56) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *a2)}];
    [*(a1 + 56) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *a2)}];
    return 0;
  }

  return 2147549183;
}

void _VCCannedVideoPacketSource_WriteBytes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
    if (v4)
    {
      v5 = *(a1 + 48);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___VCCannedVideoPacketSource_WriteBytes_block_invoke;
      block[3] = &unk_1E85F37F0;
      block[4] = a1;
      block[5] = v4;
      dispatch_async(v5, block);
    }

    else
    {
      _VCCannedVideoPacketSource_WriteBytes_cold_1();
    }
  }

  else
  {
    _VCCannedVideoPacketSource_WriteBytes_cold_2();
  }
}

void _VCCannedVideoPacketSource_WriteBlockBuffer(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (a2 && (v3 = *(a2 + 8)) != 0)
  {
    blockBufferOut = 0;
    if (CMBlockBufferCreateContiguous(*(a1 + 32), *a2, *MEMORY[0x1E695E480], 0, 0, v3, 0, &blockBufferOut))
    {
      _VCCannedVideoPacketSource_WriteBlockBuffer_cold_1();
    }

    else
    {
      v4 = 0;
      if (CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &v4))
      {
        _VCCannedVideoPacketSource_WriteBlockBuffer_cold_2();
      }

      else
      {
        v6[0] = CMBlockBufferGetDataLength(blockBufferOut);
        _VCCannedVideoPacketSource_WriteBytes(a1, v6, 8);
        _VCCannedVideoPacketSource_WriteBytes(a1, v4, v6[0]);
      }
    }

    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }
  }

  else
  {
    _VCCannedVideoPacketSource_WriteBytes(a1, v6, 8);
  }
}

void _VCCannedVideoPacketSource_ReadPacketAndAllocateBlockBuffers(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v9[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (*(a1 + 8) == 1)
  {
    PacketTypeFromFile = _VCCannedVideoPacketSource_ReadPacketTypeFromFile(a1);
    if (PacketTypeFromFile)
    {
      goto LABEL_9;
    }

    if (a3)
    {
      *a3 = 1;
    }

    [*(a1 + 16) seekToFileOffset:0];
    PacketTypeFromFile = _VCCannedVideoPacketSource_ReadPacketTypeFromFile(a1);
    if (PacketTypeFromFile)
    {
LABEL_9:
      if (PacketTypeFromFile == 2)
      {
        _VCCannedVideoPacketSource_ReadDataFromFile(*(a1 + 16), 0x668uLL, (a2 + 8));
        if (*(a2 + 16))
        {
          v7 = 0;
          do
          {
            v8 = MEMORY[0x1E1288880](*(a1 + 40), 1036, 0x10000409551EE10, 0);
            *(a2 + 24 + 8 * v7) = v8;
            _VCCannedVideoPacketSource_ReadDataFromFile(*(a1 + 16), 0x40CuLL, v8);
            ++v7;
          }

          while (v7 < *(a2 + 16));
        }

        memset(v9, 0, 24);
        _VCCannedVideoPacketSource_ReadBlockBufferFromFile(a1, *(a1 + 16), v9);
        *(a2 + 104) = v9[0];
      }

      else if (PacketTypeFromFile == 1)
      {
        _VCCannedVideoPacketSource_ReadDataFromFile(*(a1 + 16), 0x17B0uLL, (a2 + 8));
        if (!*(a2 + 8))
        {
          *(a2 + 136) = 0u;
          *(a2 + 200) = 0;
          *(a2 + 152) = 0u;
          *(a2 + 168) = 0u;
          *(a2 + 184) = 0u;
          _VCCannedVideoPacketSource_ReadBlockBufferFromFile(a1, *(a1 + 16), a2 + 136);
          _VCCannedVideoPacketSource_ReadBlockBufferFromFile(a1, *(a1 + 16), a2 + 160);
          _VCCannedVideoPacketSource_ReadBlockBufferFromFile(a1, *(a1 + 16), a2 + 184);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCCannedVideoPacketSource_ReadPacketAndAllocateBlockBuffers_cold_2();
      }
    }

    *a2 = PacketTypeFromFile;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCCannedVideoPacketSource_ReadPacketAndAllocateBlockBuffers_cold_1();
    }
  }
}

void _VCCannedVideoPacketSource_ReadBlockBufferFromFile(uint64_t a1, void *a2, uint64_t a3)
{
  dataLength[1] = *MEMORY[0x1E69E9840];
  dataLength[0] = 0;
  _VCCannedVideoPacketSource_ReadDataFromFile(*(a1 + 16), 8uLL, dataLength);
  if (!dataLength[0])
  {
    goto LABEL_16;
  }

  v11 = 0;
  v6 = [a2 readDataUpToLength:dataLength[0] error:&v11];
  if ([v6 length])
  {
    v7 = v11 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_4();
LABEL_16:
    _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_5(a3);
    return;
  }

  if (CMBlockBufferCreateWithMemoryBlock(*(a1 + 32), 0, dataLength[0], *MEMORY[0x1E695E480], 0, 0, dataLength[0], 1u, a3))
  {
    _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_1();
    goto LABEL_16;
  }

  v8 = [v6 bytes];
  if (CMBlockBufferReplaceDataBytes(v8, *a3, 0, dataLength[0]))
  {
    _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_2();
    goto LABEL_16;
  }

  dataPointerOut = 0;
  if (CMBlockBufferGetDataPointer(*a3, 0, 0, 0, &dataPointerOut) || (v9 = dataPointerOut) == 0)
  {
    _VCCannedVideoPacketSource_ReadBlockBufferFromFile_cold_3();
    goto LABEL_16;
  }

  *(a3 + 8) = dataLength[0];
  *(a3 + 16) = v9;
}

FILE **LogDump_OpenLog(const char *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, const char *a6)
{
  v7 = a5;
  v27 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat[0] = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableTFRCDump", @"com.apple.VideoConference", keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat[0])
  {
    if (VCDefaults_DefaultDumpEnablementValue(AppBooleanValue, v13))
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  if (!AppBooleanValue)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = VRLogfileAlloc(0, a1, a2, a3, "com.apple.VideoConference.Jitterlog", v7);
  VRLogfilePrintSync(v14, "VERSION = %s, DTX Support\n", a6);
  VRLogfilePrintSync(v14, "CALLID = %s\n", a1);
  VRLogfilePrintSync(v14, "%s", a4);
LABEL_6:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = "Enabled";
      v20 = v15;
      *keyExistsAndHasValidFormat = 136315906;
      v22 = "LogDump_OpenLog";
      v21 = 2080;
      if (!v14)
      {
        v17 = "Disabled";
      }

      v23 = 1024;
      v24 = 69;
      v25 = 2080;
      v26 = v17;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Log Dump is %s", keyExistsAndHasValidFormat, 0x26u);
    }
  }

  return v14;
}

uint64_t LogDump_CloseLog(uint64_t a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = a1;
  VRLogfileFree(v2);
  return VRLogfileRemoveOldFilesInDefaultLogDumpPath();
}

unint64_t GetNTPTime(uint64_t a1, uint64_t a2)
{
  v4 = micro(a1, a2);
  if (!dword_1ECC7670C)
  {
    TimeZeroInit(v2, v3);
  }

  return (TimeZero + v4 * 4294967300.0);
}

unint64_t MicroToNTP(double a1, uint64_t a2, uint64_t a3)
{
  if (!dword_1ECC7670C)
  {
    TimeZeroInit(a2, a3);
  }

  return (TimeZero + a1 * 4294967300.0);
}

void TimeZeroInit(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 170, sizeof(v8));
  v2 = micro(a1, a2);
  v3 = gettimeofday(&v8[1], 0);
  v5 = micro(v3, v4);
  v6 = gettimeofday(v8, 0);
  if (micro(v6, v7) - v5 < v5 - v2)
  {
    v8[1] = v8[0];
    v2 = v5;
  }

  TimeZero = vcvtd_n_u64_f64(v8[1].tv_sec + v8[1].tv_usec * 0.000001 + 2208988800.0 - v2, 0x20uLL);
}

double NTPToMicro(uint64_t a1, uint64_t a2)
{
  if (!dword_1ECC7670C)
  {
    TimeZeroInit(a1, a2);
  }

  return vcvtd_n_f64_u64(a1 - TimeZero, 0x20uLL);
}

void _VCStreamIOAudioController_SampleBufferCallback(uint64_t a1, CMSampleBufferRef sbuf)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    NumSamples = CMSampleBufferGetNumSamples(sbuf);
    if (NumSamples > VCAudioBufferList_GetSampleCapacity(*(a1 + 248)))
    {
      _VCStreamIOAudioController_SampleBufferCallback_cold_2(a1);
    }

    else
    {
      memset(&v34, 170, sizeof(v34));
      CMSampleBufferGetPresentationTimeStamp(&v34, sbuf);
      v33 = v34;
      if (*(a1 + 296))
      {
        v5 = *[*(a1 + 232) clientFormat];
        lhs = v33;
        rhs = *(a1 + 304);
        memset(&v36, 170, sizeof(v36));
        CMTimeSubtract(&v36, &lhs, &rhs);
        v6 = *(a1 + 328);
        lhs = v36;
        Seconds = CMTimeGetSeconds(&lhs);
        v8 = *(a1 + 328);
        v9 = llround(Seconds * (v5 / v8)) * v6;
        if (v8 == v9)
        {
          v10 = NAN;
        }

        else
        {
          lhs = v36;
          v10 = CMTimeGetSeconds(&lhs);
          lhs = v36;
          *(a1 + 300) += llround(v5 * CMTimeGetSeconds(&lhs)) - *(a1 + 328);
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v31 = VRTraceErrorLogLevelToCSTR();
            log = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              lhs = v36;
              v12 = CMTimeGetSeconds(&lhs);
              lhs = *(a1 + 304);
              v13 = CMTimeGetSeconds(&lhs);
              lhs = v33;
              v14 = CMTimeGetSeconds(&lhs);
              v15 = [objc_msgSend(*(a1 + 224) "streamInputID")];
              v16 = *(a1 + 328);
              v17 = *(a1 + 300);
              LODWORD(lhs.value) = 136317698;
              *(&lhs.value + 4) = v31;
              LOWORD(lhs.flags) = 2080;
              *(&lhs.flags + 2) = "_VCStreamIOAudioController_GetSampleBufferTimestamp";
              HIWORD(lhs.epoch) = 1024;
              v38 = 486;
              v39 = 2048;
              v40 = a1;
              v41 = 2048;
              *v42 = v12;
              *&v42[8] = 1024;
              *&v42[10] = v9;
              v43 = 2048;
              v44 = v13;
              v45 = 2048;
              v46 = v14;
              v47 = 2048;
              v48 = v15;
              v49 = 2048;
              v50 = v16;
              v51 = 1024;
              v52 = v17;
              _os_log_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEFAULT, "VCStreamIOAudioController [%s] %s:%d controller=%p Real time miss. host time jumped: %f (%u samples) (%f to %f) for streamInputID=%ld. lastSampleCount=%lu -> nextExpectedSampleTime=%u", &lhs, 0x64u);
            }
          }
        }

        v11 = *(a1 + 300);
      }

      else
      {
        v11 = 0;
        v10 = NAN;
      }

      *(a1 + 304) = v33;
      *(a1 + 328) = NumSamples;
      *(a1 + 300) += NumSamples;
      *(a1 + 296) = 1;
      VCAudioBufferList_Reset(*(a1 + 248));
      AudioBufferList = VCAudioBufferList_GetAudioBufferList(*(a1 + 248));
      if (CMSampleBufferCopyPCMDataIntoAudioBufferList(sbuf, 0, NumSamples, AudioBufferList))
      {
        _VCStreamIOAudioController_SampleBufferCallback_cold_1(a1);
      }

      else
      {
        v19 = *(a1 + 248);
        lhs = v34;
        v20 = CMTimeGetSeconds(&lhs);
        VCAudioBufferList_SetTime(v19, v11, v20);
        VCAudioBufferList_SetSampleCount(*(a1 + 248), NumSamples);
        VCAudioBufferList_SetPriority(*(a1 + 248), 255);
        VCAudioBufferList_SetVoiceActivity(*(a1 + 248), 1);
        VCAudioBufferList_SetHostTimeJumpSize(*(a1 + 248), v10);
        ++*(a1 + 352);
        AveragePower = VCAudioBufferList_GetAveragePower(*(a1 + 248));
        v22 = VCAudioIOControllerClient_ControllerFormat(*(a1 + 232));
        if (v22 && (v23 = *(v22 + 40)) != 0)
        {
          v24 = (*v22 / v23);
        }

        else
        {
          v24 = 100;
        }

        VCUtil_ExponentialMovingAverage((a1 + 344), AveragePower, (5 * v24));
        HostTime = VCAudioBufferList_GetHostTime(*(a1 + 248));
        if (HostTime - *(a1 + 336) >= 5.0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v26 = VRTraceErrorLogLevelToCSTR();
            v27 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v28 = VCStreamInput_Identifier(*(a1 + 224));
              v29 = *(a1 + 352);
              v30 = *(a1 + 344);
              LODWORD(lhs.value) = 136316930;
              *(&lhs.value + 4) = v26;
              LOWORD(lhs.flags) = 2080;
              *(&lhs.flags + 2) = "_VCStreamIOAudioController_UpdateAndDisplayHealthInfo";
              HIWORD(lhs.epoch) = 1024;
              v38 = 516;
              v39 = 2048;
              v40 = v28;
              v41 = 1024;
              *v42 = v24;
              *&v42[4] = 2048;
              *&v42[6] = v29;
              v43 = 2048;
              v44 = AveragePower;
              v45 = 2048;
              v46 = v30;
              _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "VCStreamIOAudioController [%s] %s:%d @=@ Health: VCStreamIOAudioController streamInputID=%ld blocksPerSecond=%u inputBlocksEnqueued=%lu inputPowerAverage=%f inputPowerMovingAverage=%f", &lhs, 0x4Au);
            }
          }

          *(a1 + 336) = HostTime;
        }

        PacketThread_SendSampleBuffer(*(a1 + 240), *(a1 + 248));
      }
    }
  }

  else
  {
    _VCStreamIOAudioController_SampleBufferCallback_cold_3();
  }
}

void _VCStreamIOAudioController_PullAudioSamples(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 280);
  v12[0] = 0xAAAAAAAAAAAAAAAALL;
  VCAudioBufferList_ZeroMemory(a2);
  SampleFormat = VCAudioBufferList_GetSampleFormat(a2);
  if (SampleFormat)
  {
    LODWORD(v12[0]) = *SampleFormat;
    v12[1] = VCAudioBufferList_GetTimestamp(a2);
    (*(v4 + 8))(*v4, v12, a2);
    memset(v14, 170, sizeof(v14));
    VCAudioBufferList_GetNetworkTimestamp(a2, v14);
    if ((v14[1] & 0x100000000) != 0)
    {
      v6 = VCAudioBufferList_CreateSampleBufferAllocateWithAllocator(a2, *(a1 + 256), *(a1 + 288));
      valuePtr = v14[0];
      v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      if (!v7)
      {
        _VCStreamIOAudioController_PullAudioSamples_cold_1();
        if (!v6)
        {
          return;
        }

        goto LABEL_10;
      }

      v8 = v7;
      CMSetAttachment(v6, @"networkTimestamp", v7, 1u);
      CFRelease(v8);
      os_unfair_lock_lock((a1 + 272));
      v9 = *(a1 + 264);
      if (v9 && (VCStreamOutput_EnqueueSampleBuffer(v9, v6) & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v16 = v10;
          v17 = 2080;
          v18 = "_VCStreamIOAudioController_EnqueueSampleBuffer";
          v19 = 1024;
          v20 = 587;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCStreamIOAudioController [%s] %s:%d Enqueue failed", buf, 0x1Cu);
        }
      }

      os_unfair_lock_unlock((a1 + 272));
      if (v6)
      {
LABEL_10:
        CFRelease(v6);
      }
    }
  }
}

void OUTLINED_FUNCTION_30_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x36u);
}

void VCVirtualAVCaptureDeviceInput_OnMediaSample(uint64_t a1, const void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 40));
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(a1 + 24);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v11 "mediaType")])
        {
          VCVirtualAVCaptureInputPort_OnMediaSample(v11, a2, a3);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock((a1 + 40));
}

uint64_t _VCConnectionStatisticsCollector_ComparePacketCounts(void *a1, void *a2)
{
  v3 = [objc_msgSend(a1 objectForKeyedSubscript:{@"PktCnt", "unsignedIntValue"}];
  v4 = [objc_msgSend(a2 objectForKeyedSubscript:{@"PktCnt", "unsignedIntValue"}];
  if (v3 <= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v3 < v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

char *RTPMapCreate()
{
  v0 = malloc_type_calloc(1uLL, 0x50uLL, 0x102004089B94702uLL);
  v1 = v0;
  if (v0)
  {
    pthread_mutex_init((v0 + 16), 0);
  }

  return v1;
}

void RTPMapDestroy(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    RTPMapResetMapping(v2);
    pthread_mutex_destroy((*a1 + 16));
    free(*a1);
    *a1 = 0;
  }
}

void RTPMapResetMapping(uint64_t a1)
{
  if (a1)
  {
    pthread_mutex_lock((a1 + 16));
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;

    pthread_mutex_unlock((a1 + 16));
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPMapResetMapping_cold_1();
    }
  }
}

void RTPMapAddMappingForPayload(char **a1, int a2, int a3, int a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a4 == 128)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315650;
        v34 = v4;
        v35 = 2080;
        v36 = "RTPMapAddMappingForPayload";
        v37 = 1024;
        v38 = 63;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d internalPayload is invalid.", &v33, 0x1Cu);
      }
    }

    return;
  }

  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPMapAddMappingForPayload_cold_1();
      }
    }

    return;
  }

  pthread_mutex_lock((a1 + 2));
  v10 = *(a1 + 3);
  v11 = *(a1 + 2);
  if (v10 < 1)
  {
    v18 = 0;
LABEL_22:
    if (v10 == v11)
    {
      v11 = v10 + 5;
      v19 = malloc_type_malloc(6 * v11, 0x1000040274DC3F3uLL);
      if (!v19)
      {
LABEL_36:

        pthread_mutex_unlock((a1 + 2));
        return;
      }

      if (v10 < -5)
      {
        goto LABEL_57;
      }

      v20 = *(a1 + 2);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_57;
      }

      v21 = 6 * *(a1 + 3);
      if (v21 > 6 * v20 || v21 > 6 * (v10 + 5))
      {
        goto LABEL_57;
      }

      v22 = v19;
      memcpy(v19, *a1, v21);
      free(*a1);
      *a1 = v22;
      *(a1 + 2) = v11;
    }

    else
    {
      v22 = *a1;
    }

    v23 = &v22[6 * v18];
    if (v23 >= &v22[6 * v11] || v23 < v22)
    {
      goto LABEL_57;
    }

    *v23 = a4;
    *(v23 + 1) = a2;
    *(v23 + 2) = a3;
    ++*(a1 + 3);
    goto LABEL_36;
  }

  v12 = 0;
  v13 = *a1;
  while (1)
  {
    v14 = &v13[v12];
    if (&v13[v12] >= &(*a1)[6 * v11] || v14 < v13)
    {
      goto LABEL_57;
    }

    v16 = *v14;
    v17 = v14[1];
    if (v16 == a4)
    {
      break;
    }

    if (v17 == a2 && v13[v12 + 2] == a3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v31 = &(*a1)[v12 * 2];
          if (v31 < &(*a1)[6 * *(a1 + 2)] && v31 >= *a1)
          {
            v32 = *v31;
            v33 = 136316674;
            v34 = v29;
            v35 = 2080;
            v36 = "RTPMapAddMappingForPayload";
            v37 = 1024;
            v38 = 95;
            v39 = 1024;
            v40 = a2;
            v41 = 1024;
            v42 = a3;
            v43 = 1024;
            v44 = v32;
            v45 = 1024;
            v46 = a4;
            _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d External payloads send(%d), recv(%d) are used twice by existing internal payload %d and new internal payload %d. Treated as no-op", &v33, 0x34u);
            goto LABEL_55;
          }

LABEL_57:
          __break(0x5519u);
        }
      }

      goto LABEL_55;
    }

    v12 += 3;
    if (3 * v10 == v12)
    {
      v18 = *(a1 + 3);
      goto LABEL_22;
    }
  }

  if (v17 != a2 || v13[v12 + 2] != a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315906;
        v34 = v25;
        v35 = 2080;
        v36 = "RTPMapAddMappingForPayload";
        v37 = 1024;
        v38 = 79;
        v39 = 1024;
        v40 = a4;
        _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Internal payload(%d)'s mapping is overwriten", &v33, 0x22u);
      }
    }

    v27 = &(*a1)[v12 * 2];
    if (v27 < &(*a1)[6 * *(a1 + 2)] && v27 >= *a1)
    {
      *(v27 + 1) = a2;
      *(v27 + 2) = a3;
      goto LABEL_55;
    }

    goto LABEL_57;
  }

LABEL_55:
  pthread_mutex_unlock((a1 + 2));
}

void RTPMapPrintMapping(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    pthread_mutex_lock((a1 + 16));
    if (*(a1 + 12) >= 1)
    {
      v2 = 0;
      v3 = 0;
      v4 = MEMORY[0x1E6986640];
      v5 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *v5;
          v8 = *v5;
          if (*v4 == 1)
          {
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = (*a1 + v2);
              if (v9 >= *a1 + 6 * *(a1 + 8) || v9 < *a1)
              {
                goto LABEL_27;
              }

              v11 = v9[2];
              v12 = *v9;
              v13 = v9[1];
              *buf = 136316418;
              v20 = v6;
              v21 = 2080;
              v22 = "RTPMapPrintMapping";
              v23 = 1024;
              v24 = 154;
              v25 = 1024;
              v26 = v11;
              v27 = 1024;
              v28 = v12;
              v29 = 1024;
              v30 = v13;
              _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d *** RTPPrintRTPMapping *** external payload receive %d -> internal payload %d -> external payload send %d", buf, 0x2Eu);
            }
          }

          else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v14 = (*a1 + v2);
            if (v14 >= *a1 + 6 * *(a1 + 8) || v14 < *a1)
            {
LABEL_27:
              __break(0x5519u);
            }

            v16 = v14[2];
            v17 = *v14;
            v18 = v14[1];
            *buf = 136316418;
            v20 = v6;
            v21 = 2080;
            v22 = "RTPMapPrintMapping";
            v23 = 1024;
            v24 = 154;
            v25 = 1024;
            v26 = v16;
            v27 = 1024;
            v28 = v17;
            v29 = 1024;
            v30 = v18;
            _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, " [%s] %s:%d *** RTPPrintRTPMapping *** external payload receive %d -> internal payload %d -> external payload send %d", buf, 0x2Eu);
          }
        }

        ++v3;
        v2 += 6;
      }

      while (v3 < *(a1 + 12));
    }

    pthread_mutex_unlock((a1 + 16));
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPMapPrintMapping_cold_1();
    }
  }
}

uint64_t RTPMapGetInternalPayload(unsigned __int16 **a1, unsigned int a2)
{
  if (a1)
  {
    if (a2 > 0x5F || a2 == 20)
    {
      result = pthread_mutex_lock((a1 + 2));
      v5 = *(a1 + 3);
      if (v5 < 1)
      {
LABEL_10:
        pthread_mutex_unlock((a1 + 2));
      }

      else
      {
        v6 = *a1;
        while (1)
        {
          if (v6 >= &(*a1)[3 * *(a1 + 2)] || v6 < *a1)
          {
            __break(0x5519u);
            return result;
          }

          if (v6[2] == a2)
          {
            break;
          }

          v6 += 3;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = *v6;
        v8 = *v6;
        pthread_mutex_unlock((a1 + 2));
        if (v8 != 128)
        {
          return v7;
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPMapGetInternalPayload_cold_1();
    }
  }

  return a2;
}

uint64_t RTPMapGetExternalPayload(unsigned __int16 **a1, unsigned int a2)
{
  if (a1)
  {
    if (a2 > 0x5F || a2 == 20)
    {
      result = pthread_mutex_lock((a1 + 2));
      v5 = *(a1 + 3);
      if (v5 < 1)
      {
LABEL_10:
        pthread_mutex_unlock((a1 + 2));
      }

      else
      {
        v6 = *a1;
        while (1)
        {
          if (v6 >= &(*a1)[3 * *(a1 + 2)] || v6 < *a1)
          {
            __break(0x5519u);
            return result;
          }

          if (*v6 == a2)
          {
            break;
          }

          v6 += 3;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = v6[1];
        pthread_mutex_unlock((a1 + 2));
        if (v7 != 128)
        {
          return v7;
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPMapGetExternalPayload_cold_1();
    }
  }

  return a2;
}

uint64_t VCRateControlAlgorithmLayeredContinuousTier_ResetRampingStatus(uint64_t result)
{
  *(result + 1092) = 0;
  *(result + 1096) = 0;
  return result;
}

double VCRateControlAlgorithmLayeredContinuousTierPriv_Configure(uint64_t a1, void *a2, int a3)
{
  VCRateControlAlgorithmStabilizedNOWRDPriv_Configure(a1, a2, a3);
  *(a1 + 25720) = 0;
  *(a1 + 25728) = 0;
  LODWORD(v4) = *(a1 + 1120);
  result = v4;
  *(a1 + 1112) = result;
  *(a1 + 1124) = vcRateControlTierBitrates[*(a1 + 1100)];
  return result;
}

BOOL _VCRateControlAlgorithmLayeredContinuousTier_DoRateControl(uint64_t a1, int *a2, double a3, double a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*a2 <= 10)
  {
    if (v6 == 1)
    {
      if (VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPreStateTransitionUpdate(a1, a2))
      {
        v27 = 1;
        VCRateControlAlgorithmLayeredContinuousTierPriv_UpdateTargetBitrate(a1, 1);
        if (*(a1 + 5416) == 1)
        {
          VCRateControlMediaController_UpdateBasebandSuggestion(*(a1 + 1064), a2);
        }

        return v27;
      }

      return 0;
    }

    if (v6 == 2)
    {
      if (VCRateControlAlgorithmLayeredContinuousTierPriv_VCRCStatisticsPreStateTransitionUpdates(a1, a2))
      {
        VCRateControlAlgorithmLayeredContinuousTierPriv_UpdateTargetBitrate(a1, 2);
        VCRateControlAlgorithmLayeredContinuousTierPriv_VCRCStatisticsPostStateTransitionUpdates(a1, v7);
        if (VCRateControlAlgorithmBase_IsPeriodicLogOrLogDumpEnabled(a1))
        {
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v49 = 0u;
          v8 = *(a1 + 1144);
          v47 = 0u;
          v48 = 0u;
          v32 = *(a1 + 5320);
          v9 = *(a1 + 2904);
          v45 = 0u;
          v46 = 0u;
          v10 = *(a1 + 2912);
          v11 = *(a1 + 2920);
          v43 = 0u;
          v44 = 0u;
          v12 = *(a1 + 2928);
          v31 = *(a1 + 5152);
          *__str = 0u;
          v42 = 0u;
          v13 = *(a1 + 5352);
          v14 = *(a1 + 5336);
          v30 = ((v13 + v14) / 1000.0);
          v15 = (v13 / 1000.0);
          v16 = (v14 / 1000.0);
          v19 = "OFF";
          if (*(a1 + 5416))
          {
            v19 = "ON";
          }

          if (*(a1 + 5322))
          {
            v20 = "S";
          }

          else
          {
            v20 = "U";
          }

          if (*(a1 + 1169))
          {
            v21 = "<";
          }

          else
          {
            v21 = "-";
          }

          v22 = 88;
          if (v31)
          {
            v22 = 79;
          }

          v17 = *(a1 + 5360);
          v18 = *(a1 + 5344);
          snprintf(__str, 0x190uLL, "%8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:%u\tMBL:%d %u\t%4u/%4u\t %4u:%4u/%4u  %4u:%4u/%4u  CS: %05X %05X %u BB: %3u\t%4u\t%3u\t%s UAT %u\t%u\t%s\t%s\t%d\t%d\t%d\t%d\t%.3f\t%.3f\t%u\t%u\t%.3f\t%u\t%u", v8, v32, v9, v10, v11, v12, v22, (*(a1 + 5120) * 1000.0), *(a1 + 5040) * 100.0, *(a1 + 5104) * 100.0, *(a1 + 1216), *(a1 + 5032), *(a1 + 1220), *(a1 + 1128) / 0x3E8u, *(a1 + 1120) / 0x3E8u, v30, v15, v16, ((v17 + v18) / 1000.0), (v17 / 1000.0), (v18 / 1000.0), *(a1 + 1092), *(a1 + 1096), *(a1 + 1132), *(a1 + 5392) / 0x3E8u, *(a1 + 5396), (*(a1 + 5400) * 1000.0), v19, *(a1 + 5420), *(a1 + 5424), v20, v21, *(a1 + 1088), *(a1 + 5020) / 0x3E8u, *(a1 + 5024), *(a1 + 5016), *(a1 + 5184), *(a1 + 5432), *(a1 + 5436) / 0x3E8u, *(a1 + 5440) / 0x3E8u, *(a1 + 25736), *(a1 + 25720) / 0x3E8, *(a1 + 25728));
          if (*(a1 + 5176) == 1)
          {
            v23 = *(a1 + 1136);
            *(a1 + 1136) = v23 + 1;
            if ((v23 & 0xF) == 0 && VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v24 = VRTraceErrorLogLevelToCSTR();
              v25 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v34 = v24;
                v35 = 2080;
                v36 = "_VCRateControlAlgorithmLayeredContinuousTier_PrintRateControlInfoToLogDump";
                v37 = 1024;
                v38 = 701;
                v39 = 2080;
                v40 = __str;
                _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d %s", buf, 0x26u);
              }
            }
          }

          v26 = *(a1 + 5160);
          if (v26)
          {
            VRLogfilePrintWithTimestamp(v26, "%s\n", __str);
          }
        }

        *(a1 + 1092) = 0;
        *(a1 + 1096) = 0;
        return 1;
      }

      return 0;
    }

    goto LABEL_29;
  }

  if (v6 != 11)
  {
    if (v6 == 14)
    {
      if (VCRateControlAlgorithmLayeredContinuousTierPriv_LocalRCEventPreStateTransitionUpdate(a1, a2, a3, a4))
      {
        VCRateControlAlgorithmLayeredContinuousTierPriv_UpdateTargetBitrate(a1, 14);
        return 1;
      }

      return 0;
    }

LABEL_29:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCRateControlAlgorithmLayeredContinuousTier_DoRateControl_cold_1(v28);
      }
    }

    return 0;
  }

  return VCRateControlAlgorithmStabilizedNOWRDPriv_DoRateControlWithNWStatistics(a1, a2);
}

uint64_t VCRateControlAlgorithmLayeredContinuousTierPriv_UpdateTargetBitrate(uint64_t result, uint64_t a2)
{
  v2 = result;
  v32 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 1:
      if (!VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToBaseband(result))
      {
        if (VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToBaseband(v2))
        {
          *(v2 + 5412) = VCRateControlAlgorithmStabilizedNOWRDPriv_BasebandAdditionalTiersForRampUp(v2);
        }

        goto LABEL_23;
      }

      *(v2 + 1100) = VCRateControlAlgorithmStabilizedNOWRDPriv_RampDownTierDueToBaseband(v2, v10, *(v2 + 5368));
      LODWORD(v11) = *(*(v2 + 48) + 4 * *(v2 + 1100));
      v9 = v11;
      break;
    case 0xE:
      if (!VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDownDueToLocalRCEvent(result))
      {
        *(v2 + 5418) = VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUpDueToLocalRCEvent(v2, v6);
        goto LABEL_23;
      }

      v7 = (*(v2 + 5420) - *(v2 + 5424)) / *(v2 + 5424);
      if (v7 < 0.25)
      {
        v7 = 0.25;
      }

      *(v2 + 25752) = v7;
      VCRateControlAlgorithmBasePriv_LogToDumpFiles(v2, "congestionSeverity=%f, bytesInFlight=%u, bytesInFlightThreshold=%u", v7, *(v2 + 5420), *(v2 + 5424));
      v9 = _VCRateControlAlgorithmLayeredContinuousTier_RampDown(v2, v8);
      break;
    case 2:
      v3 = *(result + 1088);
      if (v3 <= 1)
      {
        if (!v3)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v27 = v14;
              v28 = 2080;
              v29 = "_VCRateControlAlgorithmLayeredContinuousTier_UpdateTargetBitrateWithVCRCStatistics";
              v30 = 1024;
              v31 = 419;
              _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d VCRateControl is paused", buf, 0x1Cu);
            }
          }

          return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v2, *(v2 + 1112));
        }

        if (v3 == 1)
        {
          if (!*(result + 25761))
          {
            if (!*(result + 25760))
            {
              return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v2, *(v2 + 1112));
            }

            *(result + 1112) = _VCRateControlAlgorithmLayeredContinuousTier_RampUp(result, a2);
            v5 = *(v2 + 60);
            if (v5 >= *(v2 + 76))
            {
              v5 = *(v2 + 76);
            }

            LODWORD(v4) = *(*(v2 + 48) + 4 * v5);
            if (*(v2 + 1112) < v4)
            {
              return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v2, *(v2 + 1112));
            }

            goto LABEL_41;
          }

LABEL_61:
          *(v2 + 1112) = _VCRateControlAlgorithmLayeredContinuousTier_RampDown(v2, a2);
          v18 = v2;
          v19 = 6;
          goto LABEL_62;
        }

LABEL_30:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VCRateControlAlgorithmLayeredContinuousTierPriv_UpdateTargetBitrate_cold_1(v13);
          }
        }

        return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v2, *(v2 + 1112));
      }

      if (v3 != 2)
      {
        if (v3 == 6)
        {
          if (*(result + 25761))
          {
            *(result + 1112) = _VCRateControlAlgorithmLayeredContinuousTier_RampDown(result, a2);
          }

          else if (*(result + 25760))
          {
            *(result + 1112) = _VCRateControlAlgorithmLayeredContinuousTier_RampUp(result, a2);
LABEL_41:
            v18 = v2;
            v19 = 2;
LABEL_62:
            VCRateControlAlgorithmBasePriv_StateChange(v18, v19);
          }

          return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v2, *(v2 + 1112));
        }

        goto LABEL_30;
      }

      if (!*(result + 25761))
      {
        if (!*(result + 25760))
        {
          return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v2, *(v2 + 1112));
        }

        *(result + 1112) = _VCRateControlAlgorithmLayeredContinuousTier_RampUp(result, a2);
        if (!VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldFastRampUp(v2))
        {
          return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v2, *(v2 + 1112));
        }

        v21 = *(v2 + 60);
        if (v21 >= *(v2 + 76))
        {
          v21 = *(v2 + 76);
        }

        LODWORD(v20) = *(*(v2 + 48) + 4 * v21);
        if (*(v2 + 1112) >= v20)
        {
          return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v2, *(v2 + 1112));
        }

        v18 = v2;
        v19 = 1;
        goto LABEL_62;
      }

      v16 = *(result + 1112);
      v17 = *(result + 25720);
      if (v17 == 0.0)
      {
        *(result + 25720) = v16;
        ++*(result + 25728);
        goto LABEL_61;
      }

      v22 = (v16 - v17);
      if (v22 >= 0)
      {
        v23 = (v16 - v17);
      }

      else
      {
        v23 = -v22;
      }

      if (v17 * 0.15 <= v23)
      {
        if (*(result + 430) != 1 || (v22 & 0x80000000) == 0 || *(result + 1216) - 1 >= *(*(result + 48) + 4 * *(result + 68)) / 0x3E8u)
        {
          *(result + 25728) = 0;
          goto LABEL_60;
        }

        v24 = --*(result + 25728) & ~(*(result + 25728) >> 31);
      }

      else
      {
        v24 = ++*(result + 25728);
        if (v24 >= 10)
        {
          v24 = 10;
        }
      }

      *(result + 25728) = v24;
LABEL_60:
      v25 = vcvtd_n_f64_u32(v16, 1uLL) + *(result + 25720) * 0.5;
      *(result + 25720) = v25;
      VCRateControlAlgorithmBasePriv_LogToDumpFiles(result, "VCRC update bandwidthWall=%f, confidence=%u, diff=%d", v25, *(result + 25728), v22);
      goto LABEL_61;
    default:
      return result;
  }

  *(v2 + 1112) = v9;
  VCRateControlAlgorithmBasePriv_StateChange(v2, 6);
LABEL_23:
  v12 = *(v2 + 1112);

  return VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(v2, v12);
}

uint64_t VCRateControlAlgorithmLayeredContinuousTierPriv_LocalRCEventPreStateTransitionUpdate(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (*a2 != 14)
  {
    VCRateControlAlgorithmLayeredContinuousTierPriv_LocalRCEventPreStateTransitionUpdate_cold_1();
    return v7;
  }

  if (!*(a1 + 1088))
  {
    VCRateControlAlgorithmStabilizedNOWRDPriv_ResetBytesInFlight(a1);
    return 0;
  }

  v5 = *(a2 + 8);
  *(a1 + 5448) = v5;
  LODWORD(v5) = *(a1 + 5420);
  LODWORD(a4) = *(a2 + 40);
  *(a1 + 5420) = (*&a4 * 0.1 + v5 * 0.9);
  VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateBytesInFlightThreshold(a1);
  result = 1;
  if ((*(a1 + 5428) & 1) == 0)
  {
    *(a1 + 5418) = 1;
    return 0;
  }

  return result;
}

uint64_t VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPreStateTransitionUpdate(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 1088))
  {
    if (*(a1 + 1064))
    {
      if (*a2 == 1)
      {
        VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateAlgorithmWithBasebandStatistics(a1, a2);
        return 1;
      }

      else
      {
        VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPreStateTransitionUpdate_cold_1();
        return v3;
      }
    }

    else
    {
      VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPreStateTransitionUpdate_cold_2();
      return v4;
    }
  }

  else
  {
    VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPreStateTransitionUpdate_cold_3();
    return v5;
  }
}

void VCRateControlAlgorithmLayeredContinuousTierPriv_BasebandStatisticsPostStateTransitionUpdate(uint64_t result, uint64_t a2)
{
  if (*(result + 5416) == 1)
  {
    VCRateControlMediaController_UpdateBasebandSuggestion(*(result + 1064), a2);
  }
}

uint64_t VCRateControlAlgorithmLayeredContinuousTierPriv_VCRCStatisticsPreStateTransitionUpdates(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 2)
  {
    result = VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateInternalStatistics(a1, a2);
    if (result)
    {
      VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateSmartBrakeOutputWithVCRCStatistics(a1, a2);
      *(a1 + 25760) = 0;
      *(a1 + 25761) = VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampDown(a1);
      if ((*(a1 + 25761) & 1) == 0)
      {
        *(a1 + 25760) = VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldRampUp(a1);
      }

      return 1;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCRateControlAlgorithmLayeredContinuousTierPriv_VCRCStatisticsPreStateTransitionUpdates_cold_1(v5);
    }

    return 0;
  }

  return result;
}

void VCRateControlAlgorithmLayeredContinuousTierPriv_VCRCStatisticsPostStateTransitionUpdates(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1092) != 2 || *(a1 + 1096))
  {
    *(a1 + 25744) = *(a1 + 1144);
  }

  VCRateControlAlgorithmStabilizedNOWRDPriv_UpdateVCRateControlHistory(a1, a2);
  v3 = *(a1 + 1064);
  if (v3)
  {
    v4 = *(a1 + 1169) == 1 && *(a1 + 1144) - *(a1 + 5328) > 0.5;
    VCRateControlMediaController_SetShouldDisableLargeFrameRequestsWhenInitialRampUp(v3, (*(a1 + 1088) == 1) & (v4 ^ 1));
    v5 = *(a1 + 1064);

    VCRateControlMediaController_SetRateLimitedMaxTimeExceeded(v5, v4);
  }
}

uint64_t VCRateControlAlgorithmLayeredContinuousTierPriv_SetTargetBitrate(uint64_t result, unsigned int a2)
{
  v2 = *(result + 60);
  if ((v2 & 0x80000000) == 0)
  {
    while (vcRateControlTierBitrates[v2] > a2)
    {
      if (v2-- <= 0)
      {
        v2 = -1;
        break;
      }
    }
  }

  v4 = *(result + 1100);
  v5 = *(result + 64);
  if (v2 > v5)
  {
    v5 = v2;
  }

  *(result + 1100) = v5;
  if (*(result + 1100) < v4)
  {
    *(result + 1192) = *(result + 1144);
  }

  *(result + 1120) = a2;
  *(result + 1124) = vcRateControlTierBitrates[*(result + 1100)];
  return result;
}

uint64_t _VCRateControlAlgorithmLayeredContinuousTier_RampDown(uint64_t a1, uint64_t a2)
{
  VCRateControlAlgorithmStabilizedNOWRDPriv_SetBitrateUnstable(a1, a2);
  VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampDown(a1, *(a1 + 1144));
  v3 = *(a1 + 1112);
  if (v3 <= 228000.0)
  {
    v9 = _VCRateControlAlgorithmLayeredContinuousTier_RampDownSpeedFactor(a1, 1, 228000.0);
    *(a1 + 25736) = v9;
    v10 = *(a1 + 1112);
    if (v10 >= 50000.0)
    {
      if (v10 >= 132000.0)
      {
        v6 = 32000.0;
      }

      else
      {
        v6 = 16000.0;
      }
    }

    else
    {
      v6 = 8000.0;
    }

    v8 = v3 - v6 * v9;
    v7 = "[%u] Congestion!!! New bitrate down linearly newTargetBitrate=%f, congestionSeverity=%f";
  }

  else
  {
    v4 = _VCRateControlAlgorithmLayeredContinuousTier_RampDownSpeedFactor(a1, 0, 228000.0);
    *(a1 + 25736) = v4;
    v5 = pow(1.159, v4);
    v7 = "[%u] Congestion!!! New bitrate down exponentially to newTargetBitrate=%f, congestionSeverity=%f";
    v8 = v3 / v5;
  }

  LODWORD(v6) = vcRateControlTierBitrates[*(a1 + 64)];
  v11 = *&v6;
  if (v8 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, v7, *(a1 + 1132), *&v12, *(a1 + 25752));
  v14 = v12;
  *(a1 + 25752) = 0x3FF0000000000000;
  if (*(a1 + 430) == 1)
  {
    if ((*(a1 + 1096) & 0x10) != 0)
    {
      v15 = *(a1 + 1100);
      if (v15 < *(a1 + 72))
      {
        v16 = v15 - 1;
        v17 = *(a1 + 64);
        if (v16 > v17)
        {
          v17 = v16;
        }

        v18 = *(a1 + 48);
LABEL_24:
        LODWORD(v14) = *(v18 + 4 * v17);
        return *&v14;
      }
    }

    if (*(a1 + 426) == 1)
    {
      v18 = *(a1 + 48);
      LODWORD(v13) = *(v18 + 4 * *(a1 + 84));
      if (v13 > v14)
      {
        v14 = v13;
        if (*(a1 + 1112) <= v13)
        {
          v14 = *(a1 + 1112);
          if (*(a1 + 1144) - *(a1 + 1192) >= *(a1 + 600))
          {
            v17 = *(a1 + 1100) - 1;
            if (v17 <= *(a1 + 64))
            {
              v17 = *(a1 + 64);
            }

            goto LABEL_24;
          }
        }
      }
    }
  }

  return v14;
}

double _VCRateControlAlgorithmLayeredContinuousTier_RampDownSpeedFactor(uint64_t a1, int a2, double a3)
{
  if (!a2 || (LODWORD(a3) = vcRateControlTierBitrates[*(a1 + 84)], v4 = *&a3, v5 = 1.0, *(a1 + 1112) >= v4))
  {
    ShouldDoAdditionalRampDownDueToLossEvent = VCRateControlAlgorithmStabilizedNOWRDPriv_ShouldDoAdditionalRampDownDueToLossEvent(a1);
    v5 = 2.0;
    if (!ShouldDoAdditionalRampDownDueToLossEvent)
    {
      v5 = 1.0;
      if ((*(a1 + 1097) & 2) == 0)
      {
        v5 = 3.0;
        if (*(a1 + 427))
        {
          v5 = 1.0;
        }
      }
    }
  }

  return v5 * *(a1 + 25752);
}

uint64_t _VCRateControlAlgorithmLayeredContinuousTier_RampUp(uint64_t a1, uint64_t a2)
{
  VCRateControlAlgorithmStabilizedNOWRDPriv_SetBitrateUnstable(a1, a2);
  VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampUp(a1);
  *(a1 + 5016) = 0;
  v3 = *(a1 + 1112);
  v4 = *(a1 + 1144) - *(a1 + 25744);
  v5 = _VCRateControlAlgorithmLayeredContinuousTier_RampUpSpeedFactor(a1);
  *(a1 + 25736) = v5;
  v6 = v4 * v5;
  if (v3 <= 228000.0)
  {
    v7 = v3 + v6 * 32000.0;
  }

  else
  {
    v7 = v3 * pow(1.159, v6);
  }

  LODWORD(v6) = vcRateControlTierBitrates[*(a1 + 60)];
  v8 = *&v6;
  if (v7 >= v8)
  {
    return v8;
  }

  return v7;
}

double _VCRateControlAlgorithmLayeredContinuousTier_RampUpSpeedFactor(uint64_t a1)
{
  if ((*(a1 + 5178) & 1) == 0 || (v2 = 30.0, *(a1 + 1100) <= *(a1 + 72)))
  {
    if (*(a1 + 430) != 1 || (v3 = *(a1 + 1216)) == 0 || (v2 = 3.0, v3 > *(*(a1 + 48) + 4 * *(a1 + 68)) / 0x3E8u))
    {
      if (*(a1 + 1088) == 1)
      {
        v4 = (a1 + 5128);
      }

      else
      {
        v4 = (a1 + 40 + 8 * VCRateControlCongestionLevel_BitrateRange(*(a1 + 1112)) + 336);
      }

      v2 = *v4;
    }
  }

  v5 = *(a1 + 1112);
  v6 = *(a1 + 1216);
  v7 = 1000 * v6;
  v8 = *(a1 + 25720);
  v9 = 3;
  if (v8 == 0.0 || v5 < 76000.0 || v7 && v8 > (1000 * v6))
  {
    v8 = v7;
  }

  else
  {
    v9 = *(a1 + 25728);
  }

  v10 = 1.0 / v2;
  v11 = v8 - v5;
  v12 = -(v8 - v5);
  if (v11 < 0.0)
  {
    v11 = v12;
  }

  v13 = v8 * 0.15;
  v15 = v11 >= v8 * 0.15 || v9 < 3;
  if (*(a1 + 430) != 1 || v6 == 0)
  {
    if (v15)
    {
LABEL_32:
      v17 = v10;
      return fmin(fmax(v17, 0.0166666667), 2.0);
    }

    v17 = v11 / v13 / (v9 - 2);
    goto LABEL_34;
  }

  if (v15)
  {
    goto LABEL_32;
  }

  v17 = v11 / v13 / (v9 - 2);
  if (v6 > *(*(a1 + 48) + 4 * *(a1 + 68)) / 0x3E8u)
  {
LABEL_34:
    if (*(a1 + 5178) != 1)
    {
      return fmin(fmax(v17, 0.0166666667), 2.0);
    }
  }

  if (v17 > v10)
  {
    v17 = v10;
  }

  return fmin(fmax(v17, 0.0166666667), 2.0);
}

uint64_t RTPGenerateSSRC(uint64_t result)
{
  do
  {
    v1 = vcvtd_n_s64_f64(vcvtd_n_f64_u32(hwrandom(), 0x1FuLL), 0x10uLL);
    v2 = vcvtd_n_s64_f64(vcvtd_n_f64_u32(hwrandom(), 0x1FuLL), 0x10uLL) | (v1 << 16);
  }

  while (!v2);
  return v2;
}

uint64_t RTPCreateHandle(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v8 = a2;
  v55 = *MEMORY[0x1E69E9840];
  if (a2 > 1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 2147549199;
    }

    VRTraceErrorLogLevelToCSTR();
    v9 = 2147549199;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPCreateHandle_cold_9();
    }

    return v9;
  }

  v16 = malloc_type_calloc(1uLL, 0x6C98uLL, 0x10F0040549470A2uLL);
  if (!v16)
  {
    v9 = 2147549187;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPCreateHandle_cold_8();
      }
    }

    return v9;
  }

  v17 = v16;
  v18 = v16 + 27800;
  *(v16 + 2) = -1;
  *v16 = 0xFFFFFFFF00000001;
  *(v16 + 8) = 128;
  result = RTPMapCreate();
  *(v17 + 8) = result;
  *(v17 + 7) = v8;
  *(v17 + 1321) = a6;
  *(v17 + 1322) = a7;
  *(v17 + 38) = -1;
  *(v17 + 2646) = a5;
  *(v17 + 1750) = 3;
  *(v17 + 23) = 1;
  *(v17 + 663) = 0u;
  *(v17 + 1329) = 0;
  *(v17 + 1328) = 0;
  *(v17 + 168) = xmmword_1DBD478D0;
  *(v17 + 2668) = -1;
  *(v17 + 2708) = -1;
  *(v17 + 6946) = 0;
  if (v17 < v18)
  {
    *(v17 + 2257) = 0;
    bzero(v17 + 7080, 0x700uLL);
    *(v17 + 179) = 1;
    if (!*(v17 + 96))
    {
      do
      {
        v20 = hwrandom16();
        *(v17 + 96) = v20;
      }

      while (!v20);
    }

    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (ErrorLogLevelForModule >= 6)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (ErrorLogLevelForModule)
      {
        v24 = *(v17 + 96);
        *buf = 136316418;
        v44 = v22;
        v45 = 2080;
        v46 = "RTPCreateHandle";
        v47 = 1024;
        v48 = 217;
        v49 = 2048;
        v50 = v17;
        v51 = 1024;
        v52 = v8;
        v53 = 1024;
        v54 = v24;
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p Starting SeqNum for PayloadType %d = %d", buf, 0x32u);
      }
    }

    if (!a8)
    {
      a8 = RTPGenerateSSRC(ErrorLogLevelForModule);
    }

    *(v17 + 50) = a8;
    v25 = *(v17 + 49);
    if (a4 && !v25)
    {
      do
      {
        v26 = hwrandom();
        v25 = vcvtd_n_s64_f64(vcvtd_n_f64_u32(hwrandom(), 0x1FuLL), 0x10uLL) | (vcvtd_n_s64_f64(vcvtd_n_f64_u32(v26, 0x1FuLL), 0x10uLL) << 16);
        *(v17 + 49) = v25;
      }

      while (!v25);
      a8 = *(v17 + 50);
    }

    *(v17 + 37) = 0;
    *(v17 + 3474) = 0x3FF0000000000000;
    *(v17 + 29) = v25;
    *(v17 + 30) = v25;
    *(v17 + 31) = v25;
    *(v17 + 32) = v25;
    *(v17 + 79) = 24000;
    *(v17 + 6) = bswap32(a8);
    pthread_mutex_init((v17 + 7016), 0);
    Typed = VCMemoryPool_CreateTyped(0x17B0uLL, 0x1032040646F23E4);
    *(v17 + 1332) = Typed;
    if (Typed)
    {
      v28 = *MEMORY[0x1E695E480];
      if (VCAllocatorFirstCome_Create(*MEMORY[0x1E695E480], "RTCPPacketAllocator", v17 + 1353))
      {
        RTPCreateHandle_cold_1();
      }

      else if (VCAllocatorFirstCome_Create(v28, "RTCPBlockBufferHeaderAllocator", v17 + 1333))
      {
        RTPCreateHandle_cold_2();
      }

      else if (VCAllocatorFirstCome_Create(v28, "RTPPacketBlockBufferAllocator", v17 + 1373))
      {
        RTPCreateHandle_cold_3();
      }

      else
      {
        v29 = *(v17 + 1373);
        blockBufferOut = 0;
        v30 = CMBlockBufferCreateWithMemoryBlock(v29, 0, 0x5DCuLL, 0, 0, 0, 0x5DCuLL, 1u, &blockBufferOut);
        if (v30)
        {
          if (v30 >= 0)
          {
            v34 = v30;
          }

          else
          {
            v34 = -v30;
          }

          v9 = v34 | 0xD0010000;
          goto LABEL_49;
        }

        if (blockBufferOut)
        {
          CFRelease(blockBufferOut);
          blockBufferOut = 0;
        }

        if (VCAllocatorFirstCome_Create(v28, "channelDataFormatAllocator", v17 + 1375))
        {
          RTPCreateHandle_cold_4();
        }

        else
        {
          v42 = xmmword_1DBD478E0;
          if (VCAllocatorMultiQueue_Create(v28, "RTPPacketMetadataAllocator", 2u, &v42, v17 + 1374))
          {
            RTPCreateHandle_cold_5();
          }

          else
          {
            Handle = CreateHandle();
            if (Handle != 0xFFFFFFFFLL)
            {
              v32 = Handle;
              *(v17 + 1317) = 0xFFFFFFFFLL;
              *(v17 + 1318) = 0xFFFFFFFFLL;
              *(v17 + 1319) = 0;
              *(v17 + 2640) = 0;
              *(v17 + 2662) = -1;
              if (VCDefaults_GetBoolValueForKey(@"enableLTRPLogging", 0))
              {
                v33 = 7;
              }

              else
              {
                v33 = 8;
              }

              *(v17 + 2660) = v33;
              *(v17 + 1418) = 0;
              *(v17 + 1419) = v17 + 11344;
              *(v17 + 1420) = 0;
              *(v17 + 1421) = v17 + 11360;
              *(v17 + 1422) = 0;
              bzero(v17 + 11392, 0x4000uLL);
              v9 = 0;
              *a1 = v32;
              return v9;
            }

            RTPCreateHandle_cold_6();
          }
        }
      }
    }

    else
    {
      RTPCreateHandle_cold_7();
    }

    v9 = *buf;
LABEL_49:
    pthread_mutex_destroy((v17 + 7016));
    v35 = *(v17 + 1353);
    if (v35)
    {
      CFRelease(v35);
    }

    v36 = *(v17 + 1332);
    if (v36)
    {
      VCMemoryPool_Destroy(v36);
    }

    v37 = *(v17 + 1333);
    if (v37)
    {
      CFRelease(v37);
    }

    v38 = *(v17 + 1373);
    if (v38)
    {
      CFRelease(v38);
    }

    v39 = *(v17 + 1375);
    if (v39)
    {
      CFRelease(v39);
    }

    v40 = *(v17 + 1374);
    if (v40)
    {
      CFRelease(v40);
    }

    free(v17);
    return v9;
  }

  __break(0x5519u);
  return result;
}

uint64_t RTPGetTimestampBase(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 196);
  CheckOutHandleDebug();
  return v2;
}

void RTPCloseHandle(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = CheckInHandleDebug();
  if (v1)
  {
    v2 = v1;
    _RTPUnregisterPacketCallback(v1);
    _RTCPUnregisterPacketCallback(v2);
    v3 = *(v2 + 4);
    if (v3 != -1)
    {
      VTP_Close(v3);
    }

    v4 = *(v2 + 8);
    if (v4 != -1)
    {
      VTP_Close(v4);
    }

    CheckOutHandleDebug();
    if (*(v2 + 10608))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(v2 + 10608);
          *buf = 136315906;
          *&buf[4] = v5;
          v48 = 2080;
          v49 = "RTPCloseHandle";
          v50 = 1024;
          v51 = 407;
          v52 = 2048;
          v53 = v7;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Releasing the statisticsCollector:%p", buf, 0x26u);
        }
      }

      CFRelease(*(v2 + 10608));
    }

    if (*(v2 + 10616))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(v2 + 10616);
          *buf = 136315906;
          *&buf[4] = v8;
          v48 = 2080;
          v49 = "RTPCloseHandle";
          v50 = 1024;
          v51 = 411;
          v52 = 2048;
          v53 = v10;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Releasing the basebandCongestionDetector:%p", buf, 0x26u);
        }
      }

      CFRelease(*(v2 + 10616));
    }

    if (*(v2 + 10624))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(v2 + 10624);
          *buf = 136315906;
          *&buf[4] = v11;
          v48 = 2080;
          v49 = "RTPCloseHandle";
          v50 = 1024;
          v51 = 415;
          v52 = 2048;
          v53 = v13;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Releasing the mediaQueue:%p", buf, 0x26u);
        }
      }

      CFRelease(*(v2 + 10624));
    }

    if (v2 >= v2 + 27800)
    {
      __break(0x5519u);
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = v14;
        _RTPTransportMediaPacketHistoryCleanUp(v2, v14++);
      }

      while (v15 < 0x3FF);
      if (*(v2 + 28) <= 1u)
      {
        pthread_mutex_destroy((v2 + 7016));
        SRTPCleanUp(v2 + 7080);
        SRTPCleanUp(v2 + 7528);
        SRTPCleanUp(v2 + 7976);
        SRTPCleanUp(v2 + 8424);
        v16 = *(v2 + 40);
        if (v16)
        {
          free(v16);
          *(v2 + 40) = 0;
          *(v2 + 32) = 0;
        }

        v17 = *(v2 + 56);
        if (v17)
        {
          free(v17);
          *(v2 + 56) = 0;
          *(v2 + 48) = 0;
        }
      }

      if (*(v2 + 64))
      {
        RTPMapDestroy((v2 + 64));
      }

      v18 = *(v2 + 80);
      if (v18)
      {
        free(v18);
      }

      v19 = *(v2 + 10632);
      if (v19)
      {
        CFRelease(v19);
      }

      _RTPClearTransportStreamsInternal(v2);
      v20 = *(v2 + 11312);
      if (v20)
      {
        CFRelease(v20);
      }

      v21 = *(v2 + 11320);
      if (v21)
      {
        CFRelease(v21);
      }

      v22 = *(v2 + 11328);
      if (v22)
      {
        CFRelease(v22);
      }

      v23 = *(v2 + 11336);
      if (v23)
      {
        CFRelease(v23);
      }

      v24 = *(v2 + 11376);
      if (v24)
      {
        CFRelease(v24);
      }

      v25 = *(v2 + 11344);
      *buf = v25;
      if (v25)
      {
        v26 = (v2 + 11344);
        do
        {
          v27 = v25;
          v25 = *(v25 + 6056);
          v28 = *v26;
          if (*v26 == v27)
          {
            v32 = *(v28 + 6056);
            *v26 = v32;
            v30 = v2 + 11344;
            if (v32)
            {
              goto LABEL_51;
            }
          }

          else
          {
            do
            {
              v29 = v28;
              v28 = *(v28 + 6056);
            }

            while (v28 != v27);
            v30 = v29 + 6056;
            v31 = *(v28 + 6056);
            *(v29 + 6056) = v31;
            if (v31)
            {
              goto LABEL_51;
            }
          }

          *(v2 + 11352) = v30;
LABEL_51:
          _RTPReleaseRTPPacketInternal(v2, buf);
          *buf = v25;
        }

        while (v25);
      }

      v33 = *(v2 + 11360);
      v46 = v33;
      if (v33)
      {
        v34 = (v2 + 11360);
        while (1)
        {
          v35 = v33;
          v33 = *(v33 + 1632);
          v36 = *v34;
          if (*v34 != v35)
          {
            break;
          }

          v40 = *(v36 + 1632);
          *v34 = v40;
          v39 = v2 + 11360;
          if (!v40)
          {
            goto LABEL_62;
          }

LABEL_63:
          _RTCPPacketForget(v2, &v46);
          v46 = v33;
          if (!v33)
          {
            goto LABEL_64;
          }
        }

        do
        {
          v37 = v36;
          v36 = *(v36 + 1632);
        }

        while (v36 != v35);
        v38 = *(v36 + 1632);
        *(v37 + 1632) = v38;
        if (v38)
        {
          goto LABEL_63;
        }

        v39 = v37 + 1632;
LABEL_62:
        *(v2 + 11368) = v39;
        goto LABEL_63;
      }

LABEL_64:
      v41 = *(v2 + 10824);
      if (v41)
      {
        CFRelease(v41);
      }

      VCMemoryPool_Destroy(*(v2 + 10656));
      v42 = *(v2 + 10664);
      if (v42)
      {
        CFRelease(v42);
      }

      v43 = *(v2 + 10984);
      if (v43)
      {
        CFRelease(v43);
      }

      v44 = *(v2 + 11000);
      if (v44)
      {
        CFRelease(v44);
      }

      v45 = *(v2 + 10992);
      if (v45)
      {
        CFRelease(v45);
      }

      free(v2);
    }
  }
}

double _RTPUnregisterPacketCallback(uint64_t a1)
{
  if (*(a1 + 10688))
  {
    v2 = *(a1 + 10672);
    if (v2 == -1)
    {
      if (*(a1 + 11288))
      {
        _RTPEnsureTransportStreamsDeactivated(a1);
      }
    }

    else
    {
      VTP_UnregisterPacketCallback(v2);
      *(a1 + 10672) = -1;
    }

    _Block_release(*(a1 + 10688));
    result = 0.0;
    *(a1 + 10680) = 0u;
  }

  return result;
}

uint64_t _RTPClearTransportStreamsInternal(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = _RTPEnsureTransportStreamsDeactivated(a1);
  if ((v2 & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = v3;
      v13 = 2080;
      v14 = "_RTPClearTransportStreamsInternal";
      v15 = 1024;
      v16 = 5539;
      v17 = 1024;
      v18 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _RTPEnsureTransportStreamsDeactivated failed %d", &v11, 0x22u);
    }
  }

  v5 = a1[1411];
  if (v5)
  {
    CFRelease(v5);
    a1[1411] = 0;
  }

  v6 = a1[1412];
  if (v6)
  {
    CFRelease(v6);
    a1[1412] = 0;
  }

  v7 = a1[1413];
  if (v7)
  {
    CFRelease(v7);
    a1[1413] = 0;
  }

  v8 = a1[985];
  if (v8)
  {
    CFRelease(v8);
    a1[985] = 0;
  }

  v9 = a1[986];
  if (v9)
  {
    CFRelease(v9);
    a1[986] = 0;
  }

  return v2;
}

void _RTPReleaseRTPPacketInternal(uint64_t result, _DWORD **a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      if (!*v2)
      {
        VCBlockBuffer_Clear((v2 + 32));
        VCBlockBuffer_Clear((v2 + 38));
        VCBlockBuffer_Clear((v2 + 44));
      }

      if (v2 >= v2 + 1516)
      {
        __break(0x5519u);
      }

      else
      {
        v4 = *(result + 10656);

        VCMemoryPool_Free(v4, v2);
      }
    }
  }
}

uint64_t RTPGetJitter(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = 2147549185;
  if (a2 && a3 && a4)
  {
    v8 = CheckInHandleDebug();
    if (v8)
    {
      *a2 = *(v8 + 4828);
      *a3 = *(v8 + 6776);
      *a4 = vcvtad_u64_f64(*(v8 + 6784));
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147549186;
    }
  }

  return v4;
}

uint64_t RTPGetPacketSent(uint64_t a1, _DWORD *a2)
{
  v2 = 2147549185;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *a2 = *(v4 + 204);
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

uint64_t RTPSetAudioReceiver(uint64_t a1, uint64_t a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 10600) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetWRMInfo(uint64_t a1, uint64_t a2)
{
  v2 = 2147549185;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *(v4 + 10592) = a2;
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

uint64_t RTPGetPacketLossMetrics(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = CheckInHandleDebug();
  if (!v7)
  {
    return 2147549186;
  }

  if (*(v7 + 7004))
  {
    v8 = *(v7 + 704) - *(v7 + 712);
    v9 = *(v7 + 692) - (*(v7 + 708) + *(v7 + 688)) + 1;
    if (a2)
    {
      *a2 = v8;
    }

    if (a3)
    {
      *a3 = v9;
    }

    if (a4)
    {
      v10 = v9 - v8;
      if (v9 < v8)
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
              v15 = 136316162;
              v16 = v11;
              v17 = 2080;
              v18 = "RTPGetPacketLossMetrics";
              v19 = 1024;
              v20 = 588;
              v21 = 1024;
              v22 = v8;
              v23 = 1024;
              v24 = v9;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Negative packetsLostForInterval detected. receivedForInterval=%d expectedForInterval=%d. Reset to 0", &v15, 0x28u);
            }
          }

          else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v15 = 136316162;
            v16 = v11;
            v17 = 2080;
            v18 = "RTPGetPacketLossMetrics";
            v19 = 1024;
            v20 = 588;
            v21 = 1024;
            v22 = v8;
            v23 = 1024;
            v24 = v9;
            _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Negative packetsLostForInterval detected. receivedForInterval=%d expectedForInterval=%d. Reset to 0", &v15, 0x28u);
          }
        }

        v10 = 0;
      }

      *a4 = v10;
    }
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPResetHandle(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2147549186;
  }

  RTPReset(v1, *(v1 + 4832));
  CheckOutHandleDebug();
  return 0;
}

void RTPReset(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a1 + 6480;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "RTPReset";
      v11 = 1024;
      v12 = 604;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SSRC:%X", &v7, 0x22u);
    }
  }

  *(a1 + 688) = 0;
  *(a1 + 692) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 4816) = 0;
  *(a1 + 4828) = 0;
  *(a1 + 4832) = a2;
  *(a1 + 4840) = 0;
  *(a1 + 4852) = 0;
  *(a1 + 6472) = vneg_f32(0xFFFFFFFFLL);
  *v4 = 255;
  *(a1 + 6488) = 0;
  *(a1 + 7004) = 0;
  *(a1 + 10648) = -1;
  os_unfair_lock_lock((a1 + 9028));
  *(v4 + 2544) = 0;
  *(a1 + 7648) = 0;
  os_unfair_lock_unlock((a1 + 9028));
  *(a1 + 7658) = 0;
}

uint64_t RTPResetDecryptionStatus(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2147549186;
  }

  *(v1 + 10648) = -1;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetDestinationWithToken(uint64_t a1, uint64_t a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2147549186;
  }

  v6 = v5;
  *(v5 + 144) = a3;
  VTP_SetSourceDestinationWithToken(*(v5 + 4), a2);
  VTP_SetSourceDestinationWithToken(*(v6 + 8), a2);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v6 + 28);
      v11 = 136316162;
      v12 = v7;
      v13 = 2080;
      v14 = "RTPSetDestinationWithToken";
      v15 = 1024;
      v16 = 684;
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP/RTCP Destination for PT%d = [IDS datagram channel token %u]", &v11, 0x28u);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetDestination(uint64_t a1, int a2, const char *a3, int a4, int a5, int a6, int a7)
{
  v43 = *MEMORY[0x1E69E9840];
  memset(v31, 170, 6);
  v29 = 0;
  v13 = CheckInHandleDebug();
  if (!v13)
  {
    return 2147549186;
  }

  v14 = v13;
  if (!a7)
  {
    *(v13 + 144) = a6;
  }

  *(v13 + 12) = a2;
  memset(&v30, 0, sizeof(v30));
  if (a2)
  {
    v15 = 30;
  }

  else
  {
    v15 = 2;
  }

  v30.ai_family = v15;
  v30.ai_socktype = 2;
  __sprintf_chk(v31, 0, 6uLL, "%u", a4);
  v16 = getaddrinfo(a3, v31, &v30, &v29);
  if (v16 == -1 || !v29)
  {
    v24 = v16 | 0xB0010000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v33 = v25;
        v34 = 2080;
        v35 = "RTPSetDestination";
        v36 = 1024;
        v37 = 719;
        v38 = 1024;
        v39 = 719;
        v40 = 2080;
        *v41 = a3;
        *&v41[8] = 2080;
        *&v41[10] = v31;
        *&v41[18] = 1024;
        v42[0] = v24;
        _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPTransport.c:%d: getaddrinfo(%s,%s) failed(%08X)", buf, 0x3Cu);
      }
    }

    goto LABEL_29;
  }

  result = *(v14 + 4);
  ai_addr = v29->ai_addr;
  if (!ai_addr || ai_addr < (ai_addr + v29->ai_addrlen))
  {
    VTP_SetSourceDestinationWithIPPort(result, ai_addr);
    freeaddrinfo(v29);
    __sprintf_chk(v31, 0, 6uLL, "%u", a5);
    if (getaddrinfo(a3, v31, &v30, &v29) == -1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        v24 = 0xFFFFFFFFLL;
      }

      else
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        v24 = 0xFFFFFFFFLL;
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v33 = v27;
          v34 = 2080;
          v35 = "RTPSetDestination";
          v36 = 1024;
          v37 = 735;
          v38 = 1024;
          v39 = 735;
          v40 = 2080;
          *v41 = a3;
          *&v41[8] = 2080;
          *&v41[10] = v31;
          *&v41[18] = 1024;
          v42[0] = -1;
          _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPTransport.c:%d: getaddrinfo(%s,%s) failed(%08X)", buf, 0x3Cu);
        }
      }

      goto LABEL_29;
    }

    result = *(v14 + 8);
    v19 = v29->ai_addr;
    if (!v19 || v19 < (v19 + v29->ai_addrlen))
    {
      VTP_SetSourceDestinationWithIPPort(result, v19);
      freeaddrinfo(v29);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(v14 + 28);
          *buf = 136316930;
          v33 = v20;
          v34 = 2080;
          v35 = "RTPSetDestination";
          v36 = 1024;
          v37 = 746;
          v38 = 1024;
          v39 = v22;
          v40 = 1024;
          *v41 = a7;
          *&v41[4] = 2080;
          *&v41[6] = a3;
          *&v41[14] = 1024;
          *&v41[16] = a4;
          LOWORD(v42[0]) = 1024;
          *(v42 + 2) = a5;
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP/RTCP Destination for PT%d(%d) = [%s:%u/%u]", buf, 0x3Eu);
        }
      }

      v23 = *(v14 + 10536);
      if (v23 != 0xFFFFFFFFLL)
      {
        MediaQueue_SetThrottlingIsIPv6(v23, *(v14 + 12) != 0);
      }

      v24 = 0;
LABEL_29:
      CheckOutHandleDebug();
      return v24;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t RTPPayloads_PayloadProperties(int a1, int a2, uint64_t a3, int a4, int a5, _DWORD *a6, int *a7, int *a8, int *a9)
{
  v9 = 24;
  for (i = &dword_1DBD47908; *(i - 2) != a5; i += 5)
  {
    if (!--v9)
    {
      return 2147549199;
    }
  }

  v12 = *i;
  v13 = i[2];
  if (a5 > 118)
  {
    if (a5 == 119)
    {
      if (a4)
      {
        v13 = a4 | 0x200000;
        v12 = a4;
      }

      goto LABEL_23;
    }

    if (a5 != 123 && a5 != 126)
    {
      goto LABEL_23;
    }

LABEL_12:
    if (a7)
    {
      v14 = a2 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v12 = 8000;
    }

    else
    {
      v12 = 90000;
    }

    goto LABEL_23;
  }

  if (a5 == 3)
  {
    if (a1)
    {
      v13 = 458753;
    }

    else
    {
      v13 = 458754;
    }

    goto LABEL_23;
  }

  if (a5 == 100)
  {
    goto LABEL_12;
  }

LABEL_23:
  v15 = i[1];
  if (a6)
  {
    *a6 = *(i - 1);
  }

  if (a7)
  {
    *a7 = v12;
  }

  if (a8)
  {
    if (v15 == -1)
    {
      v15 = *(a3 + 40);
    }

    *a8 = v15;
  }

  result = 0;
  if (a9)
  {
    *a9 = v13;
  }

  return result;
}

uint64_t RTPSetRTCPFB(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 148) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetTxPayloadList(uint64_t a1, int a2, const void *a3)
{
  v3 = 2147549185;
  if (a2 >= 1 && a3)
  {
    v6 = CheckInHandleDebug();
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + 56);
      if (v8)
      {
        free(v8);
        *(v7 + 56) = 0;
        *(v7 + 48) = 0;
      }

      v9 = malloc_type_malloc(4 * a2, 0xEEAD9C92uLL);
      if (v9)
      {
        v10 = v9;
        memcpy(v9, a3, 4 * a2);
        v3 = 0;
        *(v7 + 56) = v10;
        *(v7 + 48) = a2;
      }

      else
      {
        RTPSetTxPayloadList_cold_1();
        v3 = v12;
      }

      CheckOutHandleDebug();
    }

    else
    {
      return 2147549186;
    }
  }

  return v3;
}

uint64_t RTPSetRxPayloadList(uint64_t a1, uint64_t a2, const void *a3)
{
  v3 = 2147549185;
  if (a2 < 1 || !a3)
  {
    return v3;
  }

  v5 = a2;
  v6 = CheckInHandleDebug();
  if (!v6)
  {
    return 2147549186;
  }

  v7 = v6;
  v8 = *(v6 + 40);
  if (v8)
  {
    free(v8);
    *(v7 + 40) = 0;
    *(v7 + 32) = 0;
  }

  v9 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
  if (!v9)
  {
    RTPSetRxPayloadList_cold_3();
    goto LABEL_29;
  }

  v10 = v9;
  memcpy(v9, a3, 4 * v5);
  *(v7 + 40) = v10;
  *(v7 + 32) = v5;
  result = *(v7 + 4);
  if (result != -1)
  {
    result = VTP_SetPayloadList(result, v5, v10);
  }

  if (v7 < v7 + 27800)
  {
    if (*(v7 + 40))
    {
      v12 = *(v7 + 32);
      if (v12 > 0)
      {
        v13 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v12, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          v3 = 2147549187;
          goto LABEL_23;
        }

        v15 = Mutable;
        if (*(v7 + 32) >= 1)
        {
          v16 = 0;
          v17 = 0;
          do
          {
            v18 = CFNumberCreate(v13, kCFNumberIntType, (*(v7 + 40) + v16));
            CFArrayAppendValue(v15, v18);
            CFRelease(v18);
            ++v17;
            v16 += 4;
          }

          while (v17 < *(v7 + 32));
        }

        if (*(v7 + 11312) || (v19 = VCPacketFilterRTPCreate(v13, (v7 + 11312)), (v19 & 0x80000000) == 0))
        {
          VCPacketFilterGetCMBaseObject();
          v21 = v20;
          v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v22)
          {
            v3 = 4294954514;
            goto LABEL_22;
          }

          v19 = v22(v21, @"RTPPayloadList", v15);
        }

        v3 = v19;
LABEL_22:
        CFRelease(v15);
LABEL_23:
        CheckOutHandleDebug();
        return v3;
      }

      RTPSetRxPayloadList_cold_1();
    }

    else
    {
      RTPSetRxPayloadList_cold_2();
    }

LABEL_29:
    v3 = v23;
    goto LABEL_23;
  }

  __break(0x5519u);
  return result;
}

uint64_t RTPAddMappingForPayload(uint64_t a1, int a2, int a3, int a4)
{
  v7 = CheckInHandleDebug();
  if (!v7)
  {
    return 2147549186;
  }

  v8 = v7;
  RTPMapAddMappingForPayload(*(v7 + 64), a2, a3, a4);
  RTPMapPrintMapping(*(v8 + 64));
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPResetPayloadMapping(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2147549186;
  }

  RTPMapResetMapping(*(v1 + 64));
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPGetInternalPayload(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (v3)
  {
    InternalPayload = RTPMapGetInternalPayload(*(v3 + 64), a2);
    CheckOutHandleDebug();
    return InternalPayload;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPGetInternalPayload_cold_1();
      }
    }

    return 128;
  }
}

uint64_t RTPGetExternalPayload(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (v3)
  {
    ExternalPayload = RTPMapGetExternalPayload(*(v3 + 64), a2);
    CheckOutHandleDebug();
    return ExternalPayload;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPGetExternalPayload_cold_1();
      }
    }

    return 128;
  }
}

uint64_t RTPSetSourceRate(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  v4 = v3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v4 + 28);
      v9 = 136316162;
      v10 = v5;
      v11 = 2080;
      v12 = "RTPSetSourceRate";
      v13 = 1024;
      v14 = 1004;
      v15 = 1024;
      v16 = v7;
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d payloadType=%d, sourceRate=%u", &v9, 0x28u);
    }
  }

  *(v4 + 700) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPGetPacketMultiplexMode(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 0;
  }

  v2 = *v1;
  CheckOutHandleDebug();
  return v2;
}

uint64_t RTPSetPacketMultiplexMode(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *v3 = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetThrottlingAudioInterval(uint64_t a1, double a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  v4 = *(v3 + 10536);
  if (v4 != 0xFFFFFFFFLL)
  {
    MediaQueue_SetThrottlingAudioInterval(v4, a2);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetRTCPEnabled(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 184) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetRTCPXREnabled(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 188) = a2;
  v4 = *(v3 + 11288);
  if (v4)
  {
    _RTPSetTransportStreamReceiveHopLimitEnabled(v4, a2 != 0);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t _RTPSetTransportStreamReceiveHopLimitEnabled(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  VCPacketFilterGetCMBaseObject();
  v4 = v3;
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 8);
  result = VTable + 8;
  v8 = *(v7 + 56);
  if (v8)
  {
    v9 = *v2;

    return v8(v4, @"ReceiveHopLimitEnabled", v9);
  }

  return result;
}

uint64_t RTPSetRTCPSendInterval(uint64_t a1, double a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  v4 = 5.0;
  if (a2 > 0.0)
  {
    v4 = a2;
  }

  *(v3 + 176) = v4;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPGetSequenceNumber(uint64_t a1, _WORD *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  if (a2)
  {
    *a2 = *(v3 + 18);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPGetSendROCWithSequenceNumber(uint64_t a1, int *a2, unsigned int a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2147549186;
  }

  SRTPGetSendROC(v5 + 7080, __rev16(a3), a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTCPGetReportNTPTimeMiddle32(uint64_t a1, char a2, _DWORD *a3)
{
  result = CheckInHandleDebug();
  if (!result)
  {
    return 2147549186;
  }

  v6 = (result + 620 + 4 * (a2 & 0xF));
  if (v6 < result + 684 && v6 >= result + 620)
  {
    *a3 = *v6;
    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t RTPGetExtendedSequenceNumber(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2147549186;
  }

  v6 = *(v5 + 224);
  if (a2 < v6)
  {
    v6 -= 0x10000;
  }

  *a3 = v6 & 0xFFFF0000 | a2;
  CheckOutHandleDebug();
  return 0;
}

unint64_t RTPSendRTP(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, double a7, int *a8, const void *a9, float s1_0, uint64_t a10, void *a11, unsigned __int16 *a13, char a14, int a15)
{
  v21 = a4;
  v22 = a3;
  v25 = a11;
  v32 = *MEMORY[0x1E69E9840];
  v26 = 2147549186;
  result = CheckInHandleDebug();
  if (!result)
  {
    goto LABEL_6;
  }

  if (result == 0xFFFFFFFF)
  {
    v26 = 2147549190;
    goto LABEL_6;
  }

  *(result + 16) = *(result + 16) & 0x80FF | ((a2 & 0x7F) << 8);
  v28[1] = 0;
  v29 = 0;
  v28[0] = 0;
  v31 = 0;
  v30 = s1_0;
  if ((a6 & 0x80000000) == 0 && result < result + 27800)
  {
    v26 = SendRTP(a1, result, v22, v21, 0, 0, a5, a6, a7, a8, a9, a10, SHIDWORD(a10), 0, 0, 0, 0, v28, 0, a11, a13, 0, a14, a15);
    CheckOutHandleDebug();
    v25 = 0;
LABEL_6:
    VCMediaControlInfoDispose(v25);
    return v26;
  }

  __break(0x5519u);
  return result;
}

uint64_t SendRTP(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, size_t a6, void *a7, uint64_t a8, double a9, int *a10, const void *a11, unsigned __int8 a12, int a13, int a14, char a15, _DWORD *a16, int a17, uint64_t a18, int a19, void *a20, unsigned __int16 *a21, unsigned __int16 *a22, char a23, int a24)
{
  v24 = a8;
  v236 = *MEMORY[0x1E69E9840];
  dataLength = 12;
  v216 = 0;
  v35 = micro(a1, a2);
  blockBufferOut = 0;
  v215 = 0;
  v219 = 0u;
  memset(dataLength_4, 0, sizeof(dataLength_4));
  v213 = 0;
  if (a10)
  {
    *a10 = 0;
  }

  v36 = a20;
  ++*(a2 + 352);
  if ((a6 & 0x80000000) != 0)
  {
    v37 = 2147549185;
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_309;
    }

    v170 = VRTraceErrorLogLevelToCSTR();
    v39 = *MEMORY[0x1E6986650];
    v171 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_309;
      }

      *buf = 136315906;
      *&buf[4] = v170;
      *&buf[12] = 2080;
      *&buf[14] = "SendRTP";
      *&buf[22] = 1024;
      *&buf[24] = 1577;
      *&buf[28] = 1024;
      *&buf[30] = v24;
      v42 = " [%s] %s:%d Header size is negative: %d";
      goto LABEL_10;
    }

    if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
    {
      SendRTP_cold_17();
    }

    goto LABEL_309;
  }

  if ((v24 & 0x80000000) == 0)
  {
    if ((*(a2 + 7000) | 2) == 2)
    {
      v37 = 2147549185;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x1E6986650];
        v40 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = *(a2 + 7000);
            *buf = 136315906;
            *&buf[4] = v38;
            *&buf[12] = 2080;
            *&buf[14] = "SendRTP";
            *&buf[22] = 1024;
            *&buf[24] = 1579;
            *&buf[28] = 1024;
            *&buf[30] = v41;
            v42 = " [%s] %s:%d RTP SendRTP direction[%d] dropping packet";
LABEL_10:
            _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, v42, buf, 0x22u);
            goto LABEL_309;
          }
        }

        else if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          SendRTP_cold_1();
        }
      }

      goto LABEL_309;
    }

    __src = a5;
    if (!*(a2 + 10624))
    {
      v43 = *(a2 + 7488);
      if ((v43 - 3) <= 1)
      {
        v37 = 2149711924;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v182 = VRTraceErrorLogLevelToCSTR();
          v183 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v184 = *(a2 + 10624);
            v185 = *(a2 + 200);
            *buf = 136316674;
            *&buf[4] = v182;
            *&buf[12] = 2080;
            *&buf[14] = "SendRTP";
            *&buf[22] = 1024;
            *&buf[24] = 1586;
            *&buf[28] = 2048;
            *&buf[30] = a1;
            *&buf[38] = 2048;
            *&buf[40] = v184;
            *&buf[48] = 1024;
            *&buf[50] = v43;
            *&buf[54] = 1024;
            *&buf[56] = v185;
            _os_log_error_impl(&dword_1DB56E000, v183, OS_LOG_TYPE_ERROR, " [%s] %s:%d Attempt to send un-encrypted packet with rtpHandle=%p, VCMediaQueue=%p, authenticationMode=%d, and ssrc=%u", buf, 0x3Cu);
          }
        }

        goto LABEL_309;
      }
    }

    if (a11)
    {
      v44 = a12;
    }

    else
    {
      v44 = 0;
    }

    v207 = a7;
    if (a16 && *a16)
    {
      v45 = a16[2];
      if (v45 >> 30)
      {
        if (v45 >> 30 == 1)
        {
          v46 = ((v45 >> 22) & 1) == 0;
        }

        else
        {
          v46 = (v45 >> 26) & 1;
        }
      }

      else
      {
        v46 = ((v45 >> 23) & 1) == 0;
      }
    }

    else
    {
      v46 = 0;
    }

    v47 = MicroToNTP(a9, v33, v34);
    v48 = *(a2 + 196) + a4;
    *(a2 + 304) = v47;
    *(a2 + 312) = v48;
    if (!*(a2 + 220))
    {
      *(a2 + 216) = v47;
    }

    v49 = (a2 + 16);
    *(a2 + 16) = ((a3 != 0) << 15) | (32 * (v44 != 0)) | *(a2 + 16) & 0x7FCF;
    v50 = *(a2 + 192);
    if (v46)
    {
      *(a2 + 192) = --v50;
    }

    *(a2 + 18) = bswap32(v50) >> 16;
    v209 = _RTPSendTimestampWithMediaSampleTime(a2, v48);
    *(a2 + 20) = bswap32(v209);
    v51 = *(a2 + 224);
    v52 = *(a2 + 192);
    if (v52 >= v51)
    {
      v53 = v51 & 0xFFFF0000;
    }

    else
    {
      v53 = (v51 & 0xFFFF0000) + 0x10000;
    }

    *(a2 + 224) = v53 | v52;
    *(a2 + 192) = v52 + 1;
    v54 = *(a2 + 10536);
    v199 = v54 != 0xFFFFFFFFLL;
    v206 = a3;
    v197 = a1;
    v196 = v46;
    if (v54 == 0xFFFFFFFFLL)
    {
      v55 = *(a2 + 80);
      if (v55)
      {
        v58 = *(a2 + 72);
        v56 = &v55[v58];
      }

      else
      {
        v58 = 1500;
        v55 = malloc_type_calloc(0x5DCuLL, 1uLL, 0x100004077774924uLL);
        if (!v55)
        {
          SendRTP_cold_2();
          v37 = *src;
          v36 = *buf;
          goto LABEL_309;
        }

        v56 = (v55 + 1500);
        *(a2 + 80) = v55;
        *(a2 + 72) = 1500;
      }

      v57 = 12;
    }

    else
    {
      MediaQueue_Malloc(v54, 12, &v216, v35);
      if (!v216)
      {
        v37 = 2147549187;
        goto LABEL_309;
      }

      v55 = v216 + 4;
      v56 = (v216 + 188);
      v57 = dataLength;
      v58 = 1500;
    }

    v204 = a21;
    dataLength = v57 + 4 * (*(a2 + 16) & 0xF);
    sourceBytes = v55;
    v195 = v54;
    v205 = dataLength;
    if (!*(a2 + 28))
    {
      if (*(a2 + 10608))
      {
        if (a20)
        {
          if (VCMediaControlInfoHasInfo(a20, 0))
          {
            v54 = src;
            *&v229 = 0;
            v228 = 0u;
            memset(v227, 0, sizeof(v227));
            v226 = 0u;
            memset(buf, 0, sizeof(buf));
            VCRateControlGetStatistics(*(a2 + 10608), 2, buf);
            v215 = *&buf[8];
            v59 = *&buf[80];
          }

          else
          {
            v59 = 0x7FF8000000000000;
          }

          v55 = sourceBytes;
LABEL_42:
          v60 = a21 + 12;
          if (*(a2 + 10544) == 0xFFFFFFFFLL && !*(a2 + 10608))
          {
LABEL_47:
            if (a20)
            {
              *v49 |= 0x10u;
              *buf = 0xAAAAAAAAAAAAAAAALL;
              v61 = &v55[dataLength];
              if (v61 && (v61 >= v56 || v61 < sourceBytes))
              {
                goto LABEL_325;
              }

              v62 = VCMediaControlInfoSerialize(a20);
              VCMediaControlInfoDispose(a20);
              if ((v62 & 0x80000000) == 0)
              {
                dataLength += *buf;
              }
            }

            goto LABEL_63;
          }

          if (a21)
          {
            if (!a20 || *v60)
            {
              goto LABEL_47;
            }
          }

          else if (!a20)
          {
LABEL_63:
            LOBYTE(v198) = 0;
            v201 = 0;
            goto LABEL_70;
          }

          Size = VCMediaControlInfoGetSize(a20);
          v54 = Size;
          if ((Size & 3) != 0)
          {
            v37 = 2147549227;
            if (VRTraceGetErrorLogLevelForModule() < 3 || (v56 = VRTraceErrorLogLevelToCSTR(), a6 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
            {
              sourceBytesa = 0;
              v120 = 0;
LABEL_323:
              v114 = v199;
              goto LABEL_193;
            }

LABEL_326:
            *buf = 136316162;
            *&buf[4] = v56;
            *&buf[12] = 2080;
            *&buf[14] = "SendRTP";
            *&buf[22] = 1024;
            *&buf[24] = 1660;
            *&buf[28] = 1024;
            *&buf[30] = 1660;
            *&buf[34] = 2048;
            *&buf[36] = v54;
            _os_log_error_impl(&dword_1DB56E000, a6, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPTransport.c:%d: Bad RTP extension length (%ld)", buf, 0x2Cu);
            v37 = 2147549227;
            if (v195 == 0xFFFFFFFFLL)
            {
              goto LABEL_309;
            }

            goto LABEL_290;
          }

          v64 = *(a2 + 28);
          v201 = a20;
          if (v64 == 1)
          {
            if (!a13 && !Size)
            {
              v198 = a15 & (a15 >> 7) & 0xB | (16 * a14);
              goto LABEL_70;
            }
          }

          else if (!Size || v64)
          {
            LOBYTE(v198) = 0;
            goto LABEL_70;
          }

          *v49 |= 0x10u;
          if (Size + dataLength > v58)
          {
            v37 = 2147549198;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v191 = VRTraceErrorLogLevelToCSTR();
              v192 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v177 = SendRTP_cold_3(v191, v192, v195 != 0xFFFFFFFFLL);
LABEL_316:
                v37 = 2147549198;
                v36 = v201;
                if ((v177 & 1) == 0)
                {
                  goto LABEL_308;
                }

                goto LABEL_290;
              }
            }

            goto LABEL_321;
          }

          LOBYTE(v198) = 0;
          dataLength += Size;
LABEL_70:
          v54 = dataLength;
          *(a2 + 16) = *(a2 + 16) & 0x80FF | ((RTPMapGetExternalPayload(*(a2 + 64), *(a2 + 17) & 0x7F) & 0x7F) << 8);
          if (sourceBytes > v56)
          {
            goto LABEL_325;
          }

          v208 = v56 - sourceBytes;
          if (v56 - sourceBytes < 0xC)
          {
            goto LABEL_325;
          }

          v65 = *v49;
          v66 = sourceBytes;
          *(sourceBytes + 2) = *(a2 + 24);
          *sourceBytes = v65;
          v67 = dataLength;
          if (a6)
          {
            if (v58 < dataLength + a6)
            {
              v37 = 2147549198;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v178 = VRTraceErrorLogLevelToCSTR();
                v179 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  v177 = SendRTP_cold_4(v178, v179, v195 != 0xFFFFFFFFLL);
                  goto LABEL_316;
                }
              }

              goto LABEL_321;
            }

            v68 = &sourceBytes[dataLength];
            if (v56 < v68 || sourceBytes > v68 || v56 - v68 < a6)
            {
              goto LABEL_325;
            }

            memcpy(v68, __src, a6);
            v67 = dataLength + a6;
            dataLength += a6;
            v66 = sourceBytes;
          }

          if (v58 < (v67 + v24))
          {
            v37 = 2147549198;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v175 = VRTraceErrorLogLevelToCSTR();
              v176 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v177 = SendRTP_cold_15(v175, v176, v195 != 0xFFFFFFFFLL);
                goto LABEL_316;
              }
            }
          }

          else
          {
            v69 = &v66[v67];
            if (v56 < v69 || sourceBytes > v69 || v56 - v69 < v24)
            {
              goto LABEL_325;
            }

            memcpy(v69, v207, v24);
            v70 = dataLength + v24;
            dataLength += v24;
            if (!v44)
            {
LABEL_91:
              v36 = 7080;
              if (*(a2 + 28) == 1 && !*(a2 + 7084) && *(a2 + 7080) == 1)
              {
                sourceBytesa = 0;
                v120 = 0;
                v37 = 2147549204;
              }

              else
              {
                v76 = *(a2 + 7488) - 3;
                v77 = SRTPCalculateTotalSuffixBytes(a2 + 7080, *(a2 + 10632), bswap32(*(a2 + 18)) >> 16);
                if (v77 != -1)
                {
                  a6 = v77;
                  if (v76 <= 1)
                  {
                    dataLength += v77;
LABEL_107:
                    v212 = -1;
                    __srca = _RTPGetRTPSocketForMediaQueue(a2, &v212);
                    if ((__srca & 0x80000000) != 0)
                    {
                      sourceBytesa = 0;
                      v120 = 0;
                      v36 = v201;
                      v114 = v199;
LABEL_192:
                      v37 = __srca;
                      goto LABEL_193;
                    }

                    v82 = v216;
                    if (v216 && *(a2 + 10536) != 0xFFFFFFFFLL)
                    {
                      v83 = a21;
                      if (!a21)
                      {
                        v89 = 0;
                        v84 = a10;
                        v85 = v205;
LABEL_166:
                        *(v82 + 1621) = v89;
                        *(v82 + 398) = v85;
                        *v82 = dataLength;
                        v121 = *v49;
                        *(v82 + 378) = *(a2 + 24);
                        *(v82 + 188) = v121;
                        *(v82 + 379) = *(a2 + 28);
                        *(v82 + 380) = *(a2 + 10584);
                        *(v82 + 381) = v212;
                        *(v82 + 1528) = *(a2 + 12) != 0;
                        v82[192] = v35;
                        *(v82 + 386) = 0;
                        *(v82 + 194) = v215;
                        *(v82 + 390) = a17;
                        *(v82 + 391) = a19;
                        if (!a16 || (v122 = a16[12], v122 <= 1))
                        {
                          v122 = 1;
                        }

                        *(v82 + 387) = v122;
                        *(v82 + 198) = v201;
                        v82[196] = 0.0;
                        *(v82 + 1578) = a13 != 0;
                        *(v82 + 1579) = v206 != 0;
                        Throttling_RTP_SendRTP_SetThrottlingParams(v82, a18);
                        v123 = v216;
                        *(v216 + 1620) = v198;
                        v124 = MediaQueue_AddPacket(*(a2 + 10536), v123);
                        if ((v124 & 0x80000000) == 0)
                        {
                          __srca = v124;
                          sourceBytesa = 0;
                          v120 = 0;
                          v114 = 0;
                          v36 = 0;
                          v116 = *(v216 + 387);
                          v117 = dataLength;
                          if (v84)
                          {
LABEL_171:
                            if (v117 != -1)
                            {
                              kdebug_trace();
                              if (VRTraceGetErrorLogLevelForModule() >= 8)
                              {
                                v125 = VRTraceErrorLogLevelToCSTR();
                                v126 = *MEMORY[0x1E6986650];
                                v127 = *MEMORY[0x1E6986650];
                                if (*MEMORY[0x1E6986640] == 1)
                                {
                                  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v128 = *(a2 + 16);
                                    v129 = bswap32(*(a2 + 18));
                                    v130 = *(a2 + 200);
                                    *buf = 136316930;
                                    *&buf[4] = v125;
                                    *&buf[12] = 2080;
                                    *&buf[14] = "SendRTP";
                                    *&buf[22] = 1024;
                                    *&buf[24] = 1896;
                                    *&buf[28] = 1024;
                                    *&buf[30] = v128 >> 15;
                                    *&buf[34] = 1024;
                                    *&buf[36] = (v128 >> 8) & 0x7F;
                                    *&buf[40] = 1024;
                                    *&buf[42] = HIWORD(v129);
                                    *&buf[46] = 1024;
                                    *&buf[48] = v209;
                                    *&buf[52] = 1024;
                                    *&buf[54] = v130;
                                    _os_log_impl(&dword_1DB56E000, v126, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sent RTP packet with marker: %u, payload type: %u, sequence number: %u, timestamp: %u, ssrc: %u", buf, 0x3Au);
                                  }
                                }

                                else if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
                                {
                                  v167 = *(a2 + 16);
                                  v168 = bswap32(*(a2 + 18));
                                  v169 = *(a2 + 200);
                                  *buf = 136316930;
                                  *&buf[4] = v125;
                                  *&buf[12] = 2080;
                                  *&buf[14] = "SendRTP";
                                  *&buf[22] = 1024;
                                  *&buf[24] = 1896;
                                  *&buf[28] = 1024;
                                  *&buf[30] = v167 >> 15;
                                  *&buf[34] = 1024;
                                  *&buf[36] = (v167 >> 8) & 0x7F;
                                  *&buf[40] = 1024;
                                  *&buf[42] = HIWORD(v168);
                                  *&buf[46] = 1024;
                                  *&buf[48] = v209;
                                  *&buf[52] = 1024;
                                  *&buf[54] = v169;
                                  _os_log_debug_impl(&dword_1DB56E000, v126, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Sent RTP packet with marker: %u, payload type: %u, sequence number: %u, timestamp: %u, ssrc: %u", buf, 0x3Au);
                                }
                              }

                              v131.i32[0] = 1;
                              v131.i32[1] = dataLength;
                              *(a2 + 204) = vadd_s32(*(a2 + 204), v131);
                              if (v83)
                              {
                                IDSAttributeSizeWithChannelDataFormat = VCIDSChannelData_GetIDSAttributeSizeWithChannelDataFormat(v83);
                              }

                              else
                              {
                                IDSAttributeSizeWithChannelDataFormat = 0;
                              }

                              v133 = *(a2 + 27784);
                              if (!v133)
                              {
                                if (*(a2 + 12))
                                {
                                  v133 = 48;
                                }

                                else
                                {
                                  v133 = 28;
                                }
                              }

                              v134 = IDSAttributeSizeWithChannelDataFormat + v117 + v133;
                              *v84 = v134;
                              v135 = *(a2 + 27776);
                              if (v135)
                              {
                                *buf = 0xAAAAAAAAAAAAAAAALL;
                                *buf = *(a2 + 200);
                                *&buf[4] = bswap32(*(a2 + 18)) >> 16;
                                *&buf[8] = v35;
                                *&buf[16] = v134;
                                VCNACKConsumer_UpdateTransmissionStatus(v135, buf);
                              }

                              if (*(a2 + 28) == 1)
                              {
                                if (*(a2 + 10536) == 0xFFFFFFFFLL)
                                {
                                  v136 = 1;
                                }

                                else
                                {
                                  v136 = v116;
                                }

                                _RTPUpdateAFRCVideoSendingBitrate(a2, v136 * *v84, a13 != 0, v35);
                              }

                              goto LABEL_192;
                            }

                            v37 = *__error() | 0xC0010000;
LABEL_193:
                            if (!v114)
                            {
                              goto LABEL_194;
                            }

                            goto LABEL_300;
                          }

LABEL_164:
                          v37 = 2147549185;
                          goto LABEL_193;
                        }

                        SendRTP_cold_9();
                        v36 = *buf;
                        v37 = *src;
LABEL_290:
                        MediaQueue_FreePacket(*(a2 + 10536), v216);
                        goto LABEL_306;
                      }

                      v84 = a10;
                      if (!*v60)
                      {
                        v85 = v205;
                        if (*(a21 + 30) == 1)
                        {
                          *(v216 + 203) = *a21;
                          v86 = *(a21 + 1);
                          v87 = *(a21 + 2);
                          v88 = *(a21 + 4);
                          *(v82 + 209) = *(a21 + 3);
                          *(v82 + 211) = v88;
                          *(v82 + 205) = v86;
                          *(v82 + 207) = v87;
                          v89 = 1;
                        }

                        else
                        {
                          v89 = 0;
                        }

                        goto LABEL_166;
                      }

                      v37 = 2147549194;
                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        v188 = VRTraceErrorLogLevelToCSTR();
                        v189 = *MEMORY[0x1E6986650];
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                        {
                          v190 = SendRTP_cold_8(v188, v189, v195 != 0xFFFFFFFFLL);
                          goto LABEL_329;
                        }
                      }

                      goto LABEL_321;
                    }

                    if (*(a2 + 10624))
                    {
                      if (!a21)
                      {
                        if (*(a2 + 28))
                        {
                          v37 = 2147549194;
                          if (VRTraceGetErrorLogLevelForModule() >= 3)
                          {
                            v193 = VRTraceErrorLogLevelToCSTR();
                            v194 = *MEMORY[0x1E6986650];
                            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                            {
                              v190 = SendRTP_cold_10(v193, v194, v195 != 0xFFFFFFFFLL);
LABEL_329:
                              v37 = 2147549194;
                              v36 = v201;
                              if ((v190 & 1) == 0)
                              {
                                goto LABEL_309;
                              }

                              goto LABEL_290;
                            }
                          }

                          goto LABEL_321;
                        }

                        v60 = &dataLength_4[1] + 4;
                        HIBYTE(v219) = 1;
                        v204 = dataLength_4;
                      }

                      if (a18)
                      {
                        v90 = *(a18 + 1);
                      }

                      else
                      {
                        v90 = 0;
                      }

                      v92 = (v204[21] & 1) == 0 && (!v201 || *(a2 + 28) || (VCMediaControlInfoHasInfo(v201, 0) & 1) == 0);
                      v93 = 37;
                      if (!*(v204 + 72))
                      {
                        v93 = 0;
                      }

                      v94 = v204[v93];
                      if (!*v60 && !v204[v93])
                      {
                        v94 = *(a2 + 200);
                      }

                      v95 = VCMediaQueue_AllocMediaPacket(*(a2 + 10624), v94, 0, &v213);
                      v96 = v95 == 0;
                      if (v95)
                      {
                        sourceBytesa = 0;
                        SendRTP_cold_11();
                      }

                      else
                      {
                        v97 = CMBlockBufferCreateWithMemoryBlock(*(a2 + 10984), 0, 0x5DCuLL, 0, 0, 0, dataLength, 1u, &blockBufferOut);
                        if (v97)
                        {
                          sourceBytesa = v96;
                          v120 = 0;
                          if (v97 >= 0)
                          {
                            v186 = v97;
                          }

                          else
                          {
                            v186 = -v97;
                          }

                          v37 = v186 | 0xD0010000;
LABEL_299:
                          v36 = v201;
                          if (v195 == 0xFFFFFFFFLL)
                          {
LABEL_194:
                            if (!v120)
                            {
                              goto LABEL_304;
                            }

                            goto LABEL_301;
                          }

LABEL_300:
                          MediaQueue_FreePacket(*(a2 + 10536), v216);
                          if ((v120 & 1) == 0)
                          {
                            goto LABEL_304;
                          }

LABEL_301:
                          if (blockBufferOut)
                          {
                            CFRelease(blockBufferOut);
                            blockBufferOut = 0;
                            if (sourceBytesa)
                            {
                              goto LABEL_305;
                            }

                            goto LABEL_306;
                          }

LABEL_304:
                          if (sourceBytesa)
                          {
LABEL_305:
                            VCMediaQueue_FreeMediaPacket(*(a2 + 10624), v213);
                          }

LABEL_306:
                          if (v37 != -2145255410 && v37 != -2147418098)
                          {
                            goto LABEL_309;
                          }

LABEL_308:
                          VCTerminateProcess(@"Failed to add data into RTP packet", @"SendRTP", 0, 1);
                          goto LABEL_309;
                        }

                        v99 = v213;
                        v98 = blockBufferOut;
                        *(v213 + 8) = blockBufferOut;
                        *(v99 + 272) = v35;
                        v100 = v204;
                        *(v99 + 16) = *v204;
                        v101 = *(v204 + 4);
                        v103 = *(v204 + 1);
                        v102 = *(v204 + 2);
                        *(v99 + 64) = *(v204 + 3);
                        *(v99 + 80) = v101;
                        *(v99 + 32) = v103;
                        *(v99 + 48) = v102;
                        if (a22)
                        {
                          v100 = a22;
                        }

                        v105 = *(v100 + 3);
                        v104 = *(v100 + 4);
                        v106 = *(v100 + 2);
                        *(v99 + 112) = *(v100 + 1);
                        *(v99 + 128) = v106;
                        *(v99 + 144) = v105;
                        *(v99 + 160) = v104;
                        *(v99 + 96) = *v100;
                        v107 = dataLength;
                        *(v99 + 4) = dataLength;
                        *(v99 + 200) = 0xFFFFFFFFLL;
                        *(v99 + 297) = v76 < 2;
                        if (v76 <= 1)
                        {
                          *(v99 + 192) = RTPMediaQueueSecurityCallback;
                          *(v99 + 200) = v197;
                          *(v99 + 300) = v107 - (a6 + v54);
                        }

                        v84 = a10;
                        if (v107 >= 0x5DDu)
                        {
                          sourceBytesa = v96;
                          SendRTP_cold_14();
                        }

                        else
                        {
                          v83 = v204;
                          if (!CMBlockBufferReplaceDataBytes(sourceBytes, v98, 0, v107))
                          {
                            IDSHeaderSizeWithChannelDataFormatArray = VCIDSChannelData_GetIDSHeaderSizeWithChannelDataFormatArray(v204, 1u);
                            v109 = v213;
                            *v213 = IDSHeaderSizeWithChannelDataFormatArray;
                            *(v109 + 176) = v92;
                            v36 = v201;
                            *(v109 + 184) = v201;
                            *(v109 + 244) = v205;
                            v110 = v215;
                            *(v109 + 208) = v59;
                            *(v109 + 216) = v110;
                            *(v109 + 224) = 0;
                            v111 = *(v204 + 77);
                            *(v109 + 225) = v111 ^ 1;
                            *(v109 + 288) = (v90 | v111) & 1;
                            *(v109 + 226) = v111;
                            *(v109 + 289) = a23;
                            *(v109 + 293) = *(a2 + 12) != 0;
                            if (a16)
                            {
                              v112 = *a16 != 0;
                            }

                            else
                            {
                              v112 = 0;
                            }

                            *(v109 + 290) = v112;
                            *(v109 + 291) = a13 != 0;
                            *(v109 + 292) = v206 != 0;
                            *(v109 + 304) = 0;
                            *(v109 + 232) = *(a2 + 10584);
                            *(v109 + 248) = bswap32(*(a2 + 18)) >> 16;
                            *(v109 + 264) = v212;
                            *(v109 + 236) = v209;
                            *(v109 + 240) = *(a2 + 316);
                            *(v109 + 252) = *(a2 + 200);
                            *(v109 + 227) = *(a2 + 28) == 0;
                            *(v109 + 256) = a17;
                            *(v109 + 260) = a19;
                            *(v109 + 294) = 1;
                            if (a16 && (v113 = a16[12], v113 >= 2))
                            {
                              *(v109 + 268) = v113;
                              *(v109 + 288) = 1;
                            }

                            else
                            {
                              *(v109 + 268) = 1;
                            }

                            v114 = v199;
                            VCMediaQueue_AddPacket(*(a2 + 10624), v109);
                            if (v115)
                            {
                              __srca = v115;
                              if (VRTraceGetErrorLogLevelForModule() >= 3)
                              {
                                VRTraceErrorLogLevelToCSTR();
                                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                                {
                                  SendRTP_cold_13();
                                }
                              }

                              v116 = 0;
                              v117 = -1;
                              sourceBytesa = 1;
                            }

                            else
                            {
                              v117 = dataLength;
                              v118 = v196;
                              if (!*(a2 + 27776))
                              {
                                v118 = 1;
                              }

                              if ((v118 & 1) == 0 && (updated = _RTPTransportUpdateMediaPacketHistory(a2, v213), (updated & 0x80000000) != 0))
                              {
                                __srca = updated;
                                if (VRTraceGetErrorLogLevelForModule() >= 3)
                                {
                                  v165 = VRTraceErrorLogLevelToCSTR();
                                  v166 = *MEMORY[0x1E6986650];
                                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                                  {
                                    v174 = *(a2 + 27776);
                                    *buf = 136316162;
                                    *&buf[4] = v165;
                                    *&buf[12] = 2080;
                                    *&buf[14] = "SendRTP";
                                    *&buf[22] = 1024;
                                    *&buf[24] = 1868;
                                    *&buf[28] = 2048;
                                    *&buf[30] = v213;
                                    *&buf[38] = 2048;
                                    *&buf[40] = v174;
                                    _os_log_error_impl(&dword_1DB56E000, v166, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not update media packet history for packet=%pfor nackConsumer=%p", buf, 0x30u);
                                  }
                                }

                                sourceBytesa = 0;
                                v116 = 0;
                              }

                              else
                              {
                                sourceBytesa = 0;
                                v116 = 0;
                                __srca = 0;
                              }

                              v36 = 0;
                            }

                            v120 = 1;
                            if (a10)
                            {
                              goto LABEL_171;
                            }

                            goto LABEL_164;
                          }

                          sourceBytesa = v96;
                          SendRTP_cold_12();
                        }
                      }

                      v120 = src[0];
                      v37 = *buf;
                      goto LABEL_299;
                    }

                    if (a16)
                    {
                      v91 = a16[12];
                      if (v91 <= 1)
                      {
                        v36 = 1;
                      }

                      else
                      {
                        v36 = v91;
                      }
                    }

                    else
                    {
                      v36 = 1;
                    }

                    v137 = a21;
                    v138 = a21 + 40;
                    v56 = buf;
                    blockAllocator = *MEMORY[0x1E695E498];
                    v139 = a21;
                    while (1)
                    {
                      a6 = dataLength;
                      if (v208 < dataLength || v137 && (v137 >= v138 || v137 < v139))
                      {
                        goto LABEL_325;
                      }

                      v140 = bswap32(*(a2 + 18)) >> 16;
                      if (!*(a2 + 11288))
                      {
                        if (!dataLength)
                        {
                          goto LABEL_325;
                        }

                        v148 = *(a2 + 4);
                        v234 = 0u;
                        memset(v235, 0, 48);
                        v232 = 0u;
                        v233 = 0u;
                        v230 = 0u;
                        v231 = 0u;
                        v228 = 0u;
                        v229 = 0u;
                        v226 = 0u;
                        memset(v227, 0, sizeof(v227));
                        memset(buf, 0, sizeof(buf));
                        *&buf[8] = *(a2 + 10584);
                        if (v137)
                        {
                          v149 = *(v137 + 3);
                          v230 = *(v137 + 2);
                          v231 = v149;
                          v232 = *(v137 + 4);
                          v150 = *(v137 + 1);
                          v228 = *v137;
                          v229 = v150;
                          BYTE13(v229) = 1;
                        }

                        v235[0] = a24;
                        v151 = *(a2 + 200);
                        v152 = *(a2 + 17) & 0x7F;
                        *&src[12] = 0;
                        src[0] = 1;
                        src[1] = v152;
                        *&src[2] = v140;
                        *&src[4] = v209;
                        *&src[8] = v151;
                        uuid_copy(&v235[1], src);
                        v54 = 7016;
                        pthread_mutex_lock((a2 + 7016));
                        VTP_SetPktTag(buf, 0, v140);
                        VTP_SetPktTag(buf, 1, *(a2 + 200));
                        VTP_SetPktTag(buf, 2, v209);
                        v153 = VTP_Send(v148, sourceBytes, a6, 0x320u, buf);
                        pthread_mutex_unlock((a2 + 7016));
                        v117 = v153;
                        goto LABEL_243;
                      }

                      v56 = buf;
                      v226 = unk_1DBD47B50;
                      v227[0] = xmmword_1DBD47B60;
                      memset(&v227[1], 170, 24);
                      memset(buf, 170, sizeof(buf));
                      VCPacketInitialize(buf);
                      if (!*(a2 + 11288))
                      {
                        if (VRTraceGetErrorLogLevelForModule() < 3)
                        {
                          goto LABEL_241;
                        }

                        v54 = VRTraceErrorLogLevelToCSTR();
                        v159 = *MEMORY[0x1E6986650];
                        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_241;
                        }

                        *src = 136315650;
                        *&src[4] = v54;
                        *&src[12] = 2080;
                        *&src[14] = "_RTPSendWithTransportStream";
                        v221 = 1024;
                        v222 = 5663;
                        v146 = v159;
                        v147 = " [%s] %s:%d NULL transportStream";
                        goto LABEL_239;
                      }

                      if (!a6)
                      {
                        if (VRTraceGetErrorLogLevelForModule() < 3)
                        {
                          goto LABEL_241;
                        }

                        v54 = VRTraceErrorLogLevelToCSTR();
                        v160 = *MEMORY[0x1E6986650];
                        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_241;
                        }

                        *src = 136315650;
                        *&src[4] = v54;
                        *&src[12] = 2080;
                        *&src[14] = "_RTPSendWithTransportStream";
                        v221 = 1024;
                        v222 = 5665;
                        v146 = v160;
                        v147 = " [%s] %s:%d data length <= 0";
                        goto LABEL_239;
                      }

                      v141 = *(a2 + 10664);
                      if (*(a2 + 27776))
                      {
                        v142 = CMBlockBufferCreateWithMemoryBlock(v141, 0, a6, 0, 0, 0, a6, 1u, buf);
                        if (v142)
                        {
                          v54 = v142;
                          if (VRTraceGetErrorLogLevelForModule() < 3)
                          {
                            goto LABEL_241;
                          }

                          v161 = VRTraceErrorLogLevelToCSTR();
                          v162 = *MEMORY[0x1E6986650];
                          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_241;
                          }

                          *src = 136315906;
                          *&src[4] = v161;
                          *&src[12] = 2080;
                          *&src[14] = "_RTPSendWithTransportStream";
                          v221 = 1024;
                          v222 = 5670;
                          v223 = 1024;
                          v224 = v54;
                          v146 = v162;
                          v147 = " [%s] %s:%d Failed to create a CMBlockBuffer. Error=%d!";
LABEL_235:
                          v163 = 34;
                          goto LABEL_240;
                        }

                        v143 = CMBlockBufferReplaceDataBytes(sourceBytes, *buf, 0, a6);
                        if (v143)
                        {
                          v54 = v143;
                          if (VRTraceGetErrorLogLevelForModule() < 3)
                          {
                            goto LABEL_241;
                          }

                          v144 = VRTraceErrorLogLevelToCSTR();
                          v145 = *MEMORY[0x1E6986650];
                          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_241;
                          }

                          *src = 136315906;
                          *&src[4] = v144;
                          *&src[12] = 2080;
                          *&src[14] = "_RTPSendWithTransportStream";
                          v221 = 1024;
                          v222 = 5673;
                          v223 = 1024;
                          v224 = v54;
                          v146 = v145;
                          v147 = " [%s] %s:%d Failed to copy data bytes. Error=%d!";
                          goto LABEL_235;
                        }
                      }

                      else if (CMBlockBufferCreateWithMemoryBlock(v141, sourceBytes, a6, blockAllocator, 0, 0, a6, 0, buf))
                      {
                        goto LABEL_241;
                      }

                      *&buf[8] = 257;
                      *(&v226 + 1) = v35;
                      v154 = *(a2 + 200);
                      *&buf[56] = v140;
                      *&buf[64] = v154;
                      *&buf[72] = v209;
                      DWORD1(v227[0]) = a24;
                      v155 = *(a2 + 17) & 0x7F;
                      *&src[12] = 0;
                      src[0] = 1;
                      src[1] = v155;
                      *&src[2] = v140;
                      *&src[4] = v209;
                      *&src[8] = v154;
                      uuid_copy(v227 + 8, src);
                      if ((_RTPEnsureTransportStreamsActivated(a2) & 0x80000000) == 0)
                      {
                        if (*(a2 + 27776))
                        {
                          LOWORD(v226) = a6;
                          v156 = VCBoundsSafety_AllocatorAllocate(*(a2 + 10992), 80, 0);
                          if (!v156)
                          {
                            if (VRTraceGetErrorLogLevelForModule() < 3)
                            {
                              goto LABEL_241;
                            }

                            v54 = VRTraceErrorLogLevelToCSTR();
                            v164 = *MEMORY[0x1E6986650];
                            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_241;
                            }

                            *src = 136315650;
                            *&src[4] = v54;
                            *&src[12] = 2080;
                            *&src[14] = "_RTPSendWithTransportStream";
                            v221 = 1024;
                            v222 = 5694;
                            v146 = v164;
                            v147 = " [%s] %s:%d Could not update media packet history";
LABEL_239:
                            v163 = 28;
LABEL_240:
                            _os_log_error_impl(&dword_1DB56E000, v146, OS_LOG_TYPE_ERROR, v147, src, v163);
                            goto LABEL_241;
                          }

                          if (v156 >= v157)
                          {
                            goto LABEL_325;
                          }

                          *v156 = *&buf[56];
                          *(v156 + 4) = *&buf[64];
                          *(v156 + 16) = *&buf[72];
                          *(v156 + 52) = DWORD1(v227[0]);
                          *(v156 + 8) = v226;
                          *(v156 + 56) = 0;
                          *(v156 + 64) = *(&v226 + 1);
                          *(v156 + 72) = 0;
                          *src = v156;
                          *&src[8] = *buf;
                          _RTPTransportAddMediaPacketHistory(a2, src);
                        }

                        v54 = *(a2 + 11288);
                        v158 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                        if (v158)
                        {
                          v54 = v158(v54, buf);
                          VCPacketInvalidate(buf);
                          if (v54 < 0)
                          {
                            v117 = -1;
                          }

                          else
                          {
                            v117 = a6;
                          }

                          goto LABEL_242;
                        }
                      }

LABEL_241:
                      VCPacketInvalidate(buf);
                      v117 = -1;
LABEL_242:
                      v56 = buf;
LABEL_243:
                      if (a22)
                      {
                        v137 = a22;
                        v138 = a22 + 40;
                        v139 = a22;
                      }

                      v36 = (v36 - 1);
                      if (!v36)
                      {
                        sourceBytesa = 0;
                        v120 = 0;
                        v116 = 0;
                        v36 = v201;
                        v114 = v199;
                        v84 = a10;
                        v83 = a21;
                        if (a10)
                        {
                          goto LABEL_171;
                        }

                        goto LABEL_164;
                      }
                    }
                  }

                  v78 = &sourceBytes[v54];
                  if (&sourceBytes[v54] <= v56 && sourceBytes <= v78)
                  {
                    v79 = dataLength - v54;
                    if ((v79 & 0x80000000) == 0 && (v56 - v78) >= v79)
                    {
                      v56 = 2149711924;
                      SRTPEncrypt(a2 + 7080, bswap32(*(a2 + 18)) >> 16, v78, v79);
                      if (v80 < 0 && v80 != -2145255368)
                      {
                        SendRTP_cold_7();
                        goto LABEL_284;
                      }

                      if ((v58 & 0x8000000000000000) == 0 && v58 <= v208)
                      {
                        v81 = SRTPAddAuthenticationTag(a2 + 7080, *(a2 + 10632), bswap32(*(a2 + 18)) >> 16, v58, sourceBytes, dataLength, &dataLength);
                        if ((v81 & 0x80000000) == 0 || v81 == -2145255368)
                        {
                          goto LABEL_107;
                        }

                        SendRTP_cold_6();
LABEL_284:
                        v37 = *buf;
                        v36 = v201;
                        if (v195 == 0xFFFFFFFFLL)
                        {
                          goto LABEL_306;
                        }

                        goto LABEL_290;
                      }
                    }
                  }

                  goto LABEL_325;
                }

                sourceBytesa = 0;
                v120 = 0;
                v37 = 2149711873;
              }

LABEL_322:
              v36 = v201;
              goto LABEL_323;
            }

            if (v58 >= v44 + v70 + 1)
            {
              v71 = &sourceBytes[v70];
              v72 = v56 >= &sourceBytes[v70];
              v73 = v56 - &sourceBytes[v70];
              if (v72 && sourceBytes <= v71 && v73 >= v44)
              {
                memcpy(v71, a11, v44);
                v74 = dataLength + v44;
                dataLength = v74 + 1;
                v75 = &sourceBytes[v74];
                if (v75 < v56 && v75 >= sourceBytes)
                {
                  *v75 = v44 + 1;
                  goto LABEL_91;
                }
              }

LABEL_325:
              __break(0x5519u);
              goto LABEL_326;
            }

            v37 = 2147549198;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v180 = VRTraceErrorLogLevelToCSTR();
              v181 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v177 = SendRTP_cold_5(v180, v181, v195 != 0xFFFFFFFFLL);
                goto LABEL_316;
              }
            }
          }

LABEL_321:
          sourceBytesa = 0;
          v120 = 0;
          goto LABEL_322;
        }
      }

      else
      {
        AFRCGetPeerArrivalTime(*(a2 + 10544), 0, &v215);
        v55 = sourceBytes;
      }
    }

    v59 = 0x7FF8000000000000;
    goto LABEL_42;
  }

  v37 = 2147549185;
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_309;
  }

  v172 = VRTraceErrorLogLevelToCSTR();
  v39 = *MEMORY[0x1E6986650];
  v173 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    if (!os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_309;
    }

    *buf = 136315906;
    *&buf[4] = v172;
    *&buf[12] = 2080;
    *&buf[14] = "SendRTP";
    *&buf[22] = 1024;
    *&buf[24] = 1578;
    *&buf[28] = 1024;
    *&buf[30] = v24;
    v42 = " [%s] %s:%d Data size is negative: %d";
    goto LABEL_10;
  }

  if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
  {
    SendRTP_cold_16();
  }

LABEL_309:
  VCMediaControlInfoDispose(v36);
  return v37;
}

uint64_t _RTPUpdateAFRCVideoSendingBitrate(uint64_t a1, int a2, int a3, double a4)
{
  result = *(a1 + 10544);
  if (result != 0xFFFFFFFFLL)
  {
    if (a3)
    {
      v8 = *(a1 + 11272);
      if (v8 <= 0.0)
      {
LABEL_26:
        *(a1 + 11272) = a4;
        *(a1 + 11280) = a2;
      }

      else
      {
        v9 = a1 + 11008;
        v10 = *(a1 + 11264);
        v11 = a1 + 11008 + 16 * v10;
        if (v11 < a1 + 11264 && v11 >= v9)
        {
          *(v11 + 8) = *(a1 + 11280);
          *v11 = a4 - v8;
          *(a1 + 11264) = (v10 + 1) & 0xF;
          v13 = *(a1 + 11268);
          if (v13 > 0xF)
          {
            v14 = 16;
          }

          else
          {
            v14 = v13 + 1;
            *(a1 + 11268) = v13 + 1;
          }

          v15 = 0;
          v16 = v14 - 1;
          v17 = 0.0;
          while (1)
          {
            v18 = v9 + 16 * (v10 & 0xF);
            if (v18 >= a1 + 11264 || v18 < v9)
            {
              break;
            }

            v15 += *(v18 + 8);
            v17 = v17 + *v18;
            v20 = v17 > 0.5 || v16-- == 0;
            LOBYTE(v10) = v10 - 1;
            if (v20)
            {
              if (v17 > 0.0)
              {
                result = AFRCUpdateVideoSendingBitrate(result, ((8 * v15) / v17));
              }

              goto LABEL_26;
            }
          }
        }

        __break(0x5519u);
      }
    }

    else
    {
      *(a1 + 11280) += a2;
    }
  }

  return result;
}

uint64_t RTPMediaQueueSecurityCallback(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 == 0xFFFFFFFFLL)
  {
    RTPMediaQueueSecurityCallback_cold_8();
    return v18;
  }

  if (!a2)
  {
    RTPMediaQueueSecurityCallback_cold_7();
    return v18;
  }

  if (!a3)
  {
    RTPMediaQueueSecurityCallback_cold_6();
    return v18;
  }

  v9 = CheckInHandleDebug();
  if (!v9)
  {
    RTPMediaQueueSecurityCallback_cold_5();
    return v18;
  }

  v10 = v9;
  if ((*(v9 + 7488) - 3) >= 2)
  {
    RTPMediaQueueSecurityCallback_cold_1();
LABEL_27:
    v15 = v18;
    goto LABEL_16;
  }

  if (a2 + 12 > a2 + a3 || (v11 = a2 + a4, a2 + a4 > a2 + a3) || v11 < a2 || a5 < 0 || a5 > a3 - a4)
  {
LABEL_28:
    __break(0x5519u);
  }

  v12 = bswap32(*(a2 + 2));
  v13 = HIWORD(v12);
  SRTPEncrypt(v9 + 7080, HIWORD(v12), v11, a5);
  if (v14 < 0)
  {
    RTPMediaQueueSecurityCallback_cold_4();
    goto LABEL_27;
  }

  v17 = 0;
  if ((a3 & 0x80000000) != 0 || a3 > a3)
  {
    goto LABEL_28;
  }

  v15 = SRTPAddAuthenticationTag(v10 + 7080, *(v10 + 10632), v13, a3, a2, a5 + a4, &v17);
  if ((v15 & 0x80000000) != 0)
  {
    RTPMediaQueueSecurityCallback_cold_3();
    goto LABEL_27;
  }

  if (v17 != a3)
  {
    RTPMediaQueueSecurityCallback_cold_2(&v17, a3, v15, &v18);
    goto LABEL_27;
  }

LABEL_16:
  CheckOutHandleDebug();
  return v15;
}

unint64_t _RTPSendTimestampWithMediaSampleTime(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 232);
  v4 = *(a1 + 240);
  v5 = v3 & 0xFFFFFFFF00000000;
  if (v3 - a2 >= 0x7FFFFFFF)
  {
    v6 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = (v3 & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (v3 >= a2)
  {
    v6 = v3 & 0xFFFFFFFF00000000;
  }

  if (a2 - v3 < 0x7FFFFFFF)
  {
    v5 += 0x100000000;
  }

  if (v3 > a2)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 + a2;
  *(a1 + 232) = v8;
  v9 = v8 - v4;
  v10 = (a1 + 296);
  v11 = *(a1 + 296);
  if (v11 >= 7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTPSendTimestampWithMediaSampleTime_cold_1();
      }
    }

    v11 = *v10;
  }

  if (v11 <= 3)
  {
    if (v11 == 1)
    {
      v9 >>= 1;
      goto LABEL_30;
    }

    if (v11 == 2)
    {
      v9 -= v9 >> 2;
      goto LABEL_30;
    }

    if (v11 != 3)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  if ((v11 - 5) < 2)
  {
LABEL_22:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTPSendTimestampWithMediaSampleTime_cold_2();
      }
    }

    goto LABEL_30;
  }

  if (v11 == 4)
  {
    v9 *= 2;
  }

LABEL_30:
  result = *(a1 + 256) + v9;
  *(a1 + 248) = result;
  return result;
}

uint64_t _RTPGetRTPSocketForMediaQueue(uint64_t a1, _DWORD *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _RTPGetRTPSocketForMediaQueue_cold_3();
    return v4;
  }

  if (!a2)
  {
    _RTPGetRTPSocketForMediaQueue_cold_2();
    return v4;
  }

  result = *(a1 + 11288);
  if (result)
  {
    _RTPGetRTPSocketForMediaQueue_cold_1(result, a2, &v4);
    return v4;
  }

  *a2 = *(a1 + 4);
  return result;
}

uint64_t _RTPTransportUpdateMediaPacketHistory(uint64_t a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = 2147549187;
  v5 = VCBoundsSafety_AllocatorAllocate(*(a1 + 10992), 80, 0);
  if (v5)
  {
    v7 = v5;
    if (v5 >= v6 || (*v5 = *(a2 + 248), *(v5 + 4) = *(a1 + 200), *(v5 + 20) = *(a2 + 291), v8 = *(a2 + 244), *(v5 + 8) = *(a2 + 4), *(v5 + 12) = v8, *(v5 + 16) = *(a2 + 236), *(v5 + 22) = *(a2 + 290), *(v5 + 24) = *(a2 + 256), *(v5 + 28) = *(a2 + 288), *(v5 + 32) = *(a2 + 260), *(v5 + 40) = 0, (v9 = VCBoundsSafety_AllocatorAllocate(*(a1 + 11000), 80, 0)) != 0) && v9 >= v10)
    {
      __break(0x5519u);
    }

    *(v7 + 40) = v9;
    if (v9)
    {
      *v9 = *(a2 + 16);
      v11 = *(a2 + 32);
      v12 = *(a2 + 48);
      v13 = *(a2 + 80);
      v9[3] = *(a2 + 64);
      v9[4] = v13;
      v9[1] = v11;
      v9[2] = v12;
      *(v7 + 48) = *(a2 + 289);
      *(v7 + 56) = 1;
      *(v7 + 64) = *(a2 + 272);
      *(v7 + 72) = 0;
      v14 = *(a2 + 8);
      v16[0] = v7;
      v16[1] = v14;
      _RTPTransportAddMediaPacketHistory(a1, v16);
      return 0;
    }

    else
    {
      _RTPTransportUpdateMediaPacketHistory_cold_1();
    }
  }

  return v4;
}

uint64_t RTPTransportResendRTP(uint64_t a1, int a2, int a3, int *a4, double a5)
{
  v69[5] = *MEMORY[0x1E69E9840];
  v9 = 2147549188;
  v62 = 0;
  v10 = CheckInHandleDebug();
  if (!v10)
  {
    return 2147549186;
  }

  v11 = v10;
  if (v10 != 0xFFFFFFFF)
  {
    v59 = a4;
    if (v10 >= v10 + 27800)
    {
      goto LABEL_80;
    }

    ++*(v10 + 352);
    LODWORD(v60[0]) = a2;
    WORD2(v60[0]) = a3;
    HIWORD(v60[0]) = 1;
    v60[1] = a5;
    v60[2] = -3.72066208e-103;
    v61 = 0;
    v12 = v10 + 11392 + 16 * (a3 & 0x3FF);
    if (!v12)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v53 = VRTraceErrorLogLevelToCSTR();
        v54 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *&buf[4] = v53;
          *&buf[12] = 2080;
          *&buf[14] = "_RTPTransportRetrieveMediaPacketHistory";
          *&buf[22] = 1024;
          *&buf[24] = 1359;
          *&buf[28] = 2048;
          *&buf[30] = v11;
          *&buf[38] = 1024;
          *&buf[40] = a3 & 0x3FF;
          _os_log_error_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_ERROR, " [%s] %s:%d mediaPacketHistory retrieval failed for rtpInfo=%p with seqNumHash=%d", buf, 0x2Cu);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v55 = VRTraceErrorLogLevelToCSTR();
        v56 = *MEMORY[0x1E6986650];
        v57 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v55;
            *&buf[12] = 2080;
            *&buf[14] = "RTPTransportResendRTP";
            *&buf[22] = 1024;
            *&buf[24] = 1971;
            _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Couldn't retrieve media packet from cache for retransmission", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          RTPTransportResendRTP_cold_10();
        }
      }

      BYTE6(v60[0]) = 0;
      goto LABEL_73;
    }

    if (v12 >= v10 + 27776 || v10 + 11392 > v12 || v12 + 16 > v10 + 27776)
    {
      goto LABEL_80;
    }

    v13 = *v12;
    if (!*v12)
    {
      RTPTransportResendRTP_cold_9();
      goto LABEL_76;
    }

    v14 = v13 + 40;
    if (*v13 != a3)
    {
      RTPTransportResendRTP_cold_1();
      goto LABEL_76;
    }

    if (*(v13 + 1) != a2)
    {
      RTPTransportResendRTP_cold_2();
      goto LABEL_76;
    }

    v15 = *(v13 + 56);
    if (v15 == 1)
    {
      v16 = *(v13 + 5);
      if (v16)
      {
        *(v16 + 76) = 1;
        v17 = 74;
        if (!*(v16 + 72))
        {
          v17 = 0;
        }

        v18 = *(v16 + v17);
        if (*(v16 + 24))
        {
          v19 = 0;
        }

        else
        {
          v19 = v18 == 0;
        }

        if (v19)
        {
          v18 = *(v10 + 200);
        }

        *src = -1;
        v20 = _RTPGetRTPSocketForMediaQueue(v10, src);
        if ((v20 & 0x80000000) == 0)
        {
          v21 = (v13 + 4);
          if (*(v13 + 2) >= 1501)
          {
            RTPTransportResendRTP_cold_8();
          }

          else
          {
            if ((VCMediaQueue_AllocMediaPacket(*(v11 + 10624), v18, 2, &v62) & 0x80000000) == 0)
            {
              v22 = *(v12 + 8);
              v23 = v62;
              *(v62 + 8) = v22;
              *(v23 + 272) = a5;
              v24 = *(v16 + 16);
              v25 = *(v16 + 32);
              v26 = *(v16 + 48);
              *(v23 + 80) = *(v16 + 64);
              v27 = *v16;
              *(v23 + 48) = v25;
              *(v23 + 64) = v26;
              *(v23 + 16) = v27;
              *(v23 + 32) = v24;
              *(v23 + 176) = 3;
              *(v23 + 295) = 1;
              *(v23 + 94) = 0;
              *(v23 + 248) = a3;
              *(v23 + 4) = *(v13 + 2);
              *(v23 + 264) = *src;
              if (v13 < v14)
              {
                *v23 = VCIDSChannelData_GetIDSHeaderSizeWithChannelDataFormatArray(v23 + 16, 1u);
                *(v23 + 244) = *(v13 + 3);
                *(v23 + 208) = xmmword_1DBD478F0;
                *(v23 + 224) = 0;
                v28 = *(v23 + 93);
                *(v23 + 225) = v28 ^ 1;
                *(v23 + 288) = *(v13 + 28);
                *(v23 + 226) = v28;
                *(v23 + 289) = *(v13 + 48);
                *(v23 + 293) = *(v11 + 12) != 0;
                *(v23 + 290) = *(v13 + 22);
                *(v23 + 291) = *(v13 + 20);
                v30 = (v13 + 8);
                v29 = *(v13 + 4);
                *(v23 + 292) = *(v13 + 21);
                *(v23 + 304) = 0;
                *(v23 + 232) = *(v11 + 10584);
                *(v23 + 236) = v29;
                *(v23 + 240) = *(v11 + 316);
                *(v23 + 252) = *(v11 + 200);
                *(v23 + 227) = *(v11 + 28) == 0;
                *(v23 + 256) = *(v13 + 6);
                *(v23 + 260) = *(v13 + 8);
                *(v23 + 294) = 1;
                VCMediaQueue_AddPacket(*(v11 + 10624), v62);
                v9 = v31;
                if ((v31 & 0x80000000) == 0)
                {
                  v32 = *(v62 + 4);
LABEL_37:
                  kdebug_trace();
                  HIBYTE(v60[0]) = 1;
                  if (VRTraceGetErrorLogLevelForModule() >= 8)
                  {
                    v38 = VRTraceErrorLogLevelToCSTR();
                    v39 = *MEMORY[0x1E6986650];
                    v40 = *MEMORY[0x1E6986650];
                    if (*MEMORY[0x1E6986640] == 1)
                    {
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                      {
                        v41 = *(v11 + 16);
                        v42 = bswap32(*(v11 + 18));
                        v43 = *v30;
                        v44 = *(v11 + 200);
                        *buf = 136316930;
                        *&buf[4] = v38;
                        *&buf[12] = 2080;
                        *&buf[14] = "RTPTransportResendRTP";
                        *&buf[22] = 1024;
                        *&buf[24] = 2027;
                        *&buf[28] = 1024;
                        *&buf[30] = v41 >> 15;
                        *&buf[34] = 1024;
                        *&buf[36] = (v41 >> 8) & 0x7F;
                        *&buf[40] = 1024;
                        *&buf[42] = HIWORD(v42);
                        *&buf[46] = 1024;
                        *&buf[48] = v43;
                        *&buf[52] = 1024;
                        *&buf[54] = v44;
                        _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Resent RTP packet with marker=%u, payload type=%u, sequence number=%u, timestamp=%u, ssrc=%u", buf, 0x3Au);
                      }
                    }

                    else if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                    {
                      v49 = *(v11 + 16);
                      v50 = bswap32(*(v11 + 18));
                      v51 = *v30;
                      v52 = *(v11 + 200);
                      *buf = 136316930;
                      *&buf[4] = v38;
                      *&buf[12] = 2080;
                      *&buf[14] = "RTPTransportResendRTP";
                      *&buf[22] = 1024;
                      *&buf[24] = 2027;
                      *&buf[28] = 1024;
                      *&buf[30] = v49 >> 15;
                      *&buf[34] = 1024;
                      *&buf[36] = (v49 >> 8) & 0x7F;
                      *&buf[40] = 1024;
                      *&buf[42] = HIWORD(v50);
                      *&buf[46] = 1024;
                      *&buf[48] = v51;
                      *&buf[52] = 1024;
                      *&buf[54] = v52;
                      _os_log_debug_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Resent RTP packet with marker=%u, payload type=%u, sequence number=%u, timestamp=%u, ssrc=%u", buf, 0x3Au);
                    }
                  }

                  v45.i32[0] = 1;
                  v45.i32[1] = *v21;
                  *(v11 + 204) = vadd_s32(*(v11 + 204), v45);
                  if (v15)
                  {
                    IDSAttributeSizeWithChannelDataFormat = VCIDSChannelData_GetIDSAttributeSizeWithChannelDataFormat(v16);
                  }

                  else
                  {
                    IDSAttributeSizeWithChannelDataFormat = 0;
                  }

                  if (*(v11 + 12))
                  {
                    v47 = 48;
                  }

                  else
                  {
                    v47 = 28;
                  }

                  v48 = IDSAttributeSizeWithChannelDataFormat + v47 + v32;
                  v61 = v48;
                  if (v59)
                  {
                    *v59 = v48;
                  }

                  if (*(v11 + 28) == 1)
                  {
                    _RTPUpdateAFRCVideoSendingBitrate(v11, v48, *(v13 + 20), a5);
                  }

                  goto LABEL_73;
                }

                RTPTransportResendRTP_cold_6();
                goto LABEL_76;
              }

LABEL_80:
              __break(0x5519u);
            }

            RTPTransportResendRTP_cold_7();
          }

LABEL_76:
          v9 = *buf;
          goto LABEL_73;
        }

        v9 = v20;
      }

LABEL_73:
      VCNACKConsumer_UpdateRetransmissionStatus(*(v11 + 27776), v60);
      CheckOutHandleDebug();
      return v9;
    }

    if (v13 >= v14)
    {
      goto LABEL_80;
    }

    v33 = *(v12 + 8);
    v68 = unk_1DBD47B50;
    *v69 = xmmword_1DBD47B60;
    memset(&v69[2], 170, 24);
    memset(buf, 170, sizeof(buf));
    if ((VCPacketInitialize(buf) & 0x80000000) == 0)
    {
      if (*(v11 + 11288))
      {
        if (v33)
        {
          v21 = (v13 + 4);
          if (*(v13 + 2) <= 0)
          {
            RTPTransportResendRTP_cold_3();
          }

          else
          {
            *buf = v33;
            CFRetain(v33);
            *&buf[8] = 257;
            *&buf[56] = *v13;
            *&buf[64] = *(v13 + 1);
            v30 = (v13 + 8);
            *&buf[72] = *(v13 + 4);
            HIDWORD(v69[0]) = *(v13 + 13);
            v34 = *(v11 + 17) & 0x7F;
            v65 = *&buf[64];
            v66 = 0;
            src[0] = 1;
            src[1] = v34;
            *&src[2] = *&buf[56];
            v64 = *&buf[72];
            uuid_copy(&v69[1], src);
            if ((_RTPEnsureTransportStreamsActivated(v11) & 0x80000000) == 0)
            {
              v35 = *(v11 + 11288);
              v36 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v36)
              {
                v37 = v36(v35, buf);
                VCPacketInvalidate(buf);
                if ((v37 & 0x80000000) == 0)
                {
                  v32 = *v21;
                  if (*v21 != -1)
                  {
                    v9 = 0;
                    v16 = 0;
                    goto LABEL_37;
                  }
                }

                goto LABEL_72;
              }
            }
          }
        }

        else
        {
          RTPTransportResendRTP_cold_4();
        }
      }

      else
      {
        RTPTransportResendRTP_cold_5();
      }
    }

    VCPacketInvalidate(buf);
LABEL_72:
    v9 = *__error() | 0xC0010000;
    goto LABEL_73;
  }

  return 2147549190;
}

uint64_t RTPRexmitRTP(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = 2147549186;
  v7 = CheckInHandleDebug();
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 10536) != 0xFFFFFFFFLL)
    {
      if (v7 == 0xFFFFFFFFLL)
      {
        return 2147549190;
      }

      else
      {
        *a4 = 0;
        v9 = bswap32(*(v7 + 24));
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315906;
            v14 = v10;
            v15 = 2080;
            v16 = "RTPRexmitRTP";
            v17 = 1024;
            v18 = 2072;
            v19 = 1024;
            v20 = a2;
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPRexmitRTP rexmit packet (%04X)", &v13, 0x22u);
          }
        }

        MediaQueue_RexmitPacket(*(v8 + 10536), v9, a2, a4);
        CheckOutHandleDebug();
        if (*a4)
        {
          return 0;
        }

        else
        {
          return 2147549196;
        }
      }
    }
  }

  return v6;
}

unint64_t _RTPMediaSampleTimeWithReceiveTimestamp(uint64_t a1, unsigned int a2, int a3)
{
  if (a3)
  {
    v4 = a2;
    *(a1 + 280) = a2;
    *(a1 + 288) = 0;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
  }

  else
  {
    v5 = *(a1 + 280);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (v5 - a2 >= 0x7FFFFFFF)
    {
      v7 = v5 & 0xFFFFFFFF00000000;
    }

    else
    {
      v7 = (v5 & 0xFFFFFFFF00000000) - 0x100000000;
    }

    if (v5 >= a2)
    {
      v7 = v5 & 0xFFFFFFFF00000000;
    }

    if (a2 - v5 < 0x7FFFFFFF)
    {
      v6 += 0x100000000;
    }

    if (v5 > a2)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    v4 = v8 + a2;
    *(a1 + 280) = v4;
  }

  v9 = *(a1 + 300);
  if (v9 >= 7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTPMediaSampleTimeWithReceiveTimestamp_cold_1();
      }
    }

    v9 = *(a1 + 300);
    v4 = *(a1 + 280);
  }

  v10 = v4 - *(a1 + 288);
  if (v9 > 3)
  {
    v11 = v10 + (v10 >> 1);
    v12 = 3 * v10;
    if (v9 != 6)
    {
      v12 = v4 - *(a1 + 288);
    }

    if (v9 != 5)
    {
      v11 = v12;
    }

    if (v9 == 4)
    {
      v10 *= 2;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        v10 >>= 1;
        break;
      case 2:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _RTPMediaSampleTimeWithReceiveTimestamp_cold_2();
          }
        }

        break;
      case 3:
        v10 += v10 / 3;
        break;
    }
  }

  result = *(a1 + 272) + v10;
  *(a1 + 264) = result;
  return result;
}

uint64_t RTPProcessDecryptionStatusChange(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  v4 = _RTPProcessDecryptionStatusChange(v3, v2);
  CheckOutHandleDebug();
  return v4;
}

uint64_t _RTPProcessDecryptionStatusChange(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (*(a1 + 10648) == a2)
  {
    return 0;
  }

  *(a1 + 10648) = a2;
  v2 = *(a1 + 10568);
  if (!v2)
  {
    return 0;
  }

  v3 = v2(5, *(a1 + 10576), &v6, 0);
  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  v4 = v3;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _RTPProcessDecryptionStatusChange_cold_1();
    }
  }

  return v4;
}

uint64_t RTPReleaseRTPPacket(uint64_t a1, _DWORD **a2)
{
  result = CheckInHandleDebug();
  if (result)
  {
    _RTPReleaseRTPPacketInternal(result, a2);

    return CheckOutHandleDebug();
  }

  return result;
}

uint64_t RTPRecvRTP(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = 2147549186;
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    if (v5 == 0xFFFFFFFF)
    {
      return 2147549190;
    }

    else
    {
      v16 = 0;
      v4 = RecvRTP(a1, v5, &v16);
      if ((v4 & 0x80000000) != 0 || (v7 = v16) == 0)
      {
        RTPRecvRTP_cold_1();
      }

      else
      {
        if (!*v16 && !*(v6 + 28))
        {
          v8 = *(v16 + 104);
          v9 = *(v6 + 152);
          if (v9 != v8)
          {
            if (v8)
            {
              (*(v6 + 10568))(2, *(v6 + 10576), v16 + 25, 0);
            }

            else
            {
              if (v9 == -1)
              {
                v11 = v16 + 25;
                v10 = 0;
              }

              else
              {
                v10 = 1;
                v11 = 0;
              }

              (*(v6 + 10568))(v10, *(v6 + 10576), v11, 0);
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v12 = VRTraceErrorLogLevelToCSTR();
              v13 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v14 = *(v6 + 152);
                *buf = 136316162;
                v18 = v12;
                v19 = 2080;
                v20 = "RTPRecvRTP";
                v21 = 1024;
                v22 = 2330;
                v23 = 1024;
                v24 = v14;
                v25 = 1024;
                v26 = v8;
                _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP relay flag (%d->%d).", buf, 0x28u);
              }
            }

            *(v6 + 152) = v8;
          }
        }

        *a2 = v7;
        v16 = 0;
      }

      _RTPReleaseRTPPacketInternal(v6, &v16);
      CheckOutHandleDebug();
    }
  }

  return v4;
}

_DWORD *RecvRTP(uint64_t a1, unint64_t a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (*(a2 + 11288))
  {
    v15[0] = 0;
    v6 = _RTPEnsureTransportStreamsActivated(a2);
    if ((v6 & 0x80000000) == 0)
    {
      v7 = (a2 + 11344);
      v8 = *(a2 + 11344);
      v15[0] = v8;
      if (v8)
      {
LABEL_17:
        v14 = *(v8 + 6056);
        *v7 = v14;
        if (!v14)
        {
          *(a2 + 11352) = v7;
        }

        *a3 = v8;
        v15[0] = 0;
        goto LABEL_20;
      }

      v9 = *(a2 + 11336);
      if (!v9)
      {
        v10 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        CFArrayAppendValue(Mutable, *(a2 + 11288));
        v12 = *(a2 + 11304);
        if (v12)
        {
          CFArrayAppendValue(Mutable, v12);
        }

        v6 = VCTransportStreamRunLoopCreateWithTransportStreams(v10, Mutable, (a2 + 11336));
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if ((v6 & 0x80000000) != 0)
        {
          goto LABEL_20;
        }

        v9 = *(a2 + 11336);
      }

      v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v13)
      {
        v6 = v13(v9, 0.0);
        if ((v6 & 0x80000000) == 0)
        {
          v8 = *v7;
          goto LABEL_17;
        }
      }

      else
      {
        v6 = 4294954514;
      }
    }

LABEL_20:
    _RTPReleaseRTPPacketInternal(a2, v15);
    return v6;
  }

  return _RTPRecvWithSocket(a1, a2, a3);
}

uint64_t _RTPTransport_EstimateRTCPXRSummaryJitter(uint64_t result, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v7 = *(result + 4836) - *(a4 + 4);
  if (v7)
  {
    v8 = *(a2 + 128);
    v9 = *(a4 + 2);
    v10 = *(result + 4848);
    if (v10 >= v9)
    {
      v10 = *(a4 + 2);
    }

    v11 = v9 - v10;
    if (v9 - v10 <= 0x13F)
    {
      v9 = v10;
    }

    *(result + 4848) = v9;
    if (v11 <= 0x13F)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = result + 6152;
    v14 = (result + 4872 + 4 * v12);
    if (v14 >= result + 6152 || v14 < result + 4872)
    {
      goto LABEL_25;
    }

    LODWORD(a7) = *(result + 700);
    v16 = v7 + vcvtad_u64_f64((v8 - *(result + 4864)) * *&a7);
    if (a3)
    {
      v16 = 0;
    }

    *v14 = v16;
    *(result + 4836) = *(a4 + 4);
    *(result + 4864) = v8;
    v17 = (v13 + v12);
    if (v13 + v12 < result + 6472 && v17 >= v13)
    {
      *v17 = *(a2 + 136);
      if (v12 <= *(result + 4856))
      {
        LODWORD(v12) = *(result + 4856);
      }

      *(result + 4856) = v12;
    }

    else
    {
LABEL_25:
      __break(0x5519u);
    }
  }

  return result;
}

uint64_t _RTPTransport_ParseMediaPacket(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v208 = *MEMORY[0x1E69E9840];
  v3 = (a2 + 88);
  if (*(a2 + 88) != -1)
  {
    v7 = *(a1 + 4832);
    dataPointerOut = 0;
    lengthAtOffsetOut = 0;
    if (CMBlockBufferGetDataPointer(*a2, 0, &lengthAtOffsetOut, 0, &dataPointerOut))
    {
      _RTPTransport_ParseMediaPacket_cold_1();
      return *buf;
    }

    v184 = v7;
    *a3 = 0;
    if (dataPointerOut && !lengthAtOffsetOut)
    {
      goto LABEL_291;
    }

    v8 = 2147549191;
    if (lengthAtOffsetOut < 0xC)
    {
      v8 = 2147549192;
      goto LABEL_23;
    }

    v10 = *dataPointerOut;
    v189 = v10;
    v11 = *(dataPointerOut + 2);
    v12 = WORD1(v10);
    v13 = __rev16(WORD1(v10));
    WORD1(v189) = v13;
    v14 = bswap32(HIDWORD(v10));
    v15 = bswap32(v11);
    v190 = v15;
    if (*(a1 + 7004))
    {
      v16 = *(a1 + 4832) != v15;
    }

    else
    {
      v16 = 1;
    }

    v185 = _RTPMediaSampleTimeWithReceiveTimestamp(a1, v14, v16);
    HIDWORD(v189) = v185;
    v17 = v189;
    if ((v189 & 0xC0) != 0x80)
    {
      v8 = 2147549193;
LABEL_23:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _RTPTransport_ParseMediaPacket_cold_21();
        }
      }

      return v8;
    }

    if (!*(a1 + 7004) && !v12 && !*(a1 + 188))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _RTPTransport_ParseMediaPacket_cold_20();
        }
      }

      goto LABEL_23;
    }

    v182 = (a1 + 7962);
    v168 = BYTE1(v189) & 0x7F;
    InternalPayload = RTPMapGetInternalPayload(*(a1 + 64), v168);
    LOWORD(v189) = v17 & 0x80BF | ((InternalPayload & 0x7F) << 8);
    if (!*(a1 + 28))
    {
      kdebug_trace();
    }

    v180 = v15;
    v181 = v17;
    if (*(a1 + 7004) && *(a1 + 4832) == v15)
    {
      v166 = 0;
      v167 = 0;
    }

    else
    {
      v19 = *(a2 + 128);
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 28);
          v23 = *(a1 + 4832);
          *buf = 136317186;
          *&buf[4] = v20;
          *&buf[12] = 2080;
          *&buf[14] = "_RTPTransport_ReinitializeStream";
          *&buf[22] = 1024;
          *&buf[24] = 2380;
          LOWORD(v197[0]) = 1024;
          *(v197 + 2) = v22;
          WORD3(v197[0]) = 1024;
          DWORD2(v197[0]) = v15;
          WORD6(v197[0]) = 1024;
          *(v197 + 14) = v23;
          WORD1(v197[1]) = 1024;
          DWORD1(v197[1]) = InternalPayload & 0x7F;
          WORD4(v197[1]) = 1024;
          *(&v197[1] + 10) = v13;
          HIWORD(v197[1]) = 1024;
          LODWORD(v198) = v185;
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP(%d): recv started(%X,%X, %d) SeqNum = %u, TimeStamp = %u", buf, 0x40u);
        }
      }

      *(a1 + 688) = v13;
      *(a1 + 692) = v13;
      *(a1 + 696) = v185;
      *(a1 + 704) = 0;
      *(a1 + 712) = 0;
      *(a1 + 4816) = 0;
      *(a1 + 4828) = 0;
      *(a1 + 4832) = v15;
      bzero((a1 + 716), 0x1000uLL);
      *(a1 + 716) = 1;
      v26 = MicroToNTP(v19, v24, v25);
      *&v27 = 0;
      *(a1 + 6792) = 0u;
      *(a1 + 6808) = 0u;
      *(a1 + 6824) = 0u;
      *(a1 + 6840) = 0u;
      *(a1 + 6856) = 0u;
      *(a1 + 6872) = 0u;
      *(a1 + 6888) = 0u;
      *(a1 + 6904) = 0u;
      *(a1 + 6920) = 0u;
      *(a1 + 6936) = 0u;
      *(a1 + 6952) = 0u;
      *(a1 + 6968) = 0u;
      *(a1 + 6488) = v26;
      *(a1 + 6984) = v27;
      *(a1 + 7004) = 1;
      os_unfair_lock_lock((a1 + 9028));
      *(a1 + 7648) = v15;
      *(a1 + 9024) = 1;
      os_unfair_lock_unlock((a1 + 9028));
      *(a1 + 8544) = v15;
      *(a1 + 7658) = v13;
      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(a1 + 7528);
          *buf = 136316162;
          *&buf[4] = v28;
          *&buf[12] = 2080;
          *&buf[14] = "_RTPTransport_ReinitializeStream";
          *&buf[22] = 1024;
          *&buf[24] = 2414;
          LOWORD(v197[0]) = 1024;
          *(v197 + 2) = v30 & 1;
          WORD3(v197[0]) = 1024;
          DWORD2(v197[0]) = (v30 >> 2) & 1;
          _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPTransport: need to wait for SRTP to init? (%d/%d)", buf, 0x28u);
        }
      }

      if (*(a1 + 7528) == 1)
      {
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 7)
        {
          v33 = VRTraceErrorLogLevelToCSTR();
          v34 = *MEMORY[0x1E6986650];
          ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
          if (ErrorLogLevelForModule)
          {
            *buf = 136315650;
            *&buf[4] = v33;
            *&buf[12] = 2080;
            *&buf[14] = "_RTPTransport_ReinitializeStream";
            *&buf[22] = 1024;
            *&buf[24] = 2417;
            _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPTransport: Need to wait for SRTP to init...", buf, 0x1Cu);
          }
        }

        blockBufferOut = 0x4034000000000000;
        v35 = micro(ErrorLogLevelForModule, v32);
        v36 = SRTPWaitUseEncryptionRTP(a1 + 7528, &blockBufferOut);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v37 = VRTraceErrorLogLevelToCSTR();
          v38 = *MEMORY[0x1E6986650];
          v39 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
          if (v39)
          {
            v41 = micro(v39, v40);
            *buf = 136316162;
            *&buf[4] = v37;
            *&buf[12] = 2080;
            *&buf[14] = "_RTPTransport_ReinitializeStream";
            *&buf[22] = 1024;
            *&buf[24] = 2423;
            LOWORD(v197[0]) = 2048;
            *(v197 + 2) = v41 - v35;
            WORD5(v197[0]) = 1024;
            HIDWORD(v197[0]) = v36;
            _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPTransport: end wait SRTP @ %.3f seconds (%08X)", buf, 0x2Cu);
          }
        }

        if (v36 < 0)
        {
          v9 = 2147549199;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              _RTPTransport_ParseMediaPacket_cold_2();
              v9 = 2147549199;
            }
          }

          goto LABEL_277;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v42 = VRTraceErrorLogLevelToCSTR();
        v43 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(a1 + 7528);
          *buf = 136316162;
          *&buf[4] = v42;
          *&buf[12] = 2080;
          *&buf[14] = "_RTPTransport_ReinitializeStream";
          *&buf[22] = 1024;
          *&buf[24] = 2430;
          LOWORD(v197[0]) = 1024;
          *(v197 + 2) = v44 & 1;
          WORD3(v197[0]) = 1024;
          DWORD2(v197[0]) = (v44 >> 2) & 1;
          _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPTransport: done waiting for SRTP to init. (%d/%d)", buf, 0x28u);
        }
      }

      v166 = 1;
      v167 = 1;
    }

    if (*(a1 + 12))
    {
      v45 = 48;
    }

    else
    {
      v45 = 28;
    }

    v46 = (a1 + 716 + 4 * (v13 & 0x3FF));
    if (v46 >= a1 + 4812 || v46 < a1 + 716)
    {
      goto LABEL_291;
    }

    v47 = *(a2 + 104);
    v48 = lengthAtOffsetOut;
    v49 = *v46;
    if (*v46 == v13)
    {
      if (!*(a1 + 28))
      {
        if (*(a1 + 188))
        {
          ++*(a1 + 4840);
          v50 = (a1 + 6792 + 4 * *(a1 + 6992));
          if (v50 >= a1 + 6992 || v50 < a1 + 6792)
          {
            goto LABEL_291;
          }

          *v50 = v13;
          *(a1 + 6992) = (*(a1 + 6992) + 1) % 0x32u;
        }

        v51 = 1;
        v52 = 1;
LABEL_63:
        v54 = *v3;
        v55 = *(a1 + 10592);
        v56 = *(a1 + 28);
        if (v55)
        {
          if (v56)
          {
            if (v56 == 1)
            {
              v55[64] = *(a1 + 692) - *(a1 + 688) + 1;
            }

            goto LABEL_86;
          }

          if (!v54)
          {
            ++v55[61];
            v55[65] = *(a1 + 692) - *(a1 + 688) + 1;
          }

          ++v55[63];
        }

        else if (v56)
        {
          goto LABEL_86;
        }

        if (v54 >= 2)
        {
          _RTPTransport_ParseMediaPacket_cold_19();
          v103 = v104;
          if (!v104)
          {
            goto LABEL_175;
          }

          v9 = 2147549199;
          goto LABEL_173;
        }

        v56 = 0;
LABEL_86:
        v172 = v48 + v47 + v45;
        if (v49 == v13)
        {
          v62 = 0;
        }

        else
        {
          v62 = v48 + v47 + v45;
        }

        v63 = *(a1 + 10536);
        if (v63 == 0xFFFFFFFFLL)
        {
          if (v62)
          {
            ++*(a1 + 320);
            HIDWORD(v64) = 1083129856;
            LODWORD(v64) = *(a1 + 324);
            *(a1 + 324) = ((8 * v62) / 1000.0 + v64);
          }
        }

        else
        {
          MediaQueue_RecordNewPacketWithSize(v63, v62, v56, (a1 + 320), (a1 + 324));
        }

        if (!*(a1 + 10560))
        {
          AFRCCalcRxEstimate(*(a1 + 10544), *(a1 + 28), v185, v13, v172, 0, 0, *(a2 + 128));
        }

        v65 = *(a1 + 11376);
        if (v65)
        {
          VCConnectionManager_UpdateConnectionHealthWithIndicator(v65, *v3 == 0, v13, v52);
        }

        v169 = v52;
        v165 = v51;
        v186 = 0;
        v66 = _RTPTransport_PacketExtensionLength(dataPointerOut, lengthAtOffsetOut, &v189, &v186);
        if ((v66 & 0x80000000) == 0)
        {
          v67 = v186;
          v68 = lengthAtOffsetOut;
          v178 = dataPointerOut;
          v192 = 0;
          v191 = 0;
          if (*(a1 + 7936) == 1)
          {
            v69 = a1 + 7962;
            if (*(a1 + 11384) == 1)
            {
              if (*(a1 + 11386) + 1 != v13)
              {
                blockBufferOut = 0;
                pthread_mutex_lock((a1 + 7816));
                VCMediaKeyIndex_ReleaseAndCopyNewValue(&blockBufferOut, *(a1 + 7880));
                pthread_mutex_unlock((a1 + 7816));
                v70 = *(a1 + 10568);
                if (v70)
                {
                  if ((v70(6, *(a1 + 10576), blockBufferOut, 0) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      _RTPTransport_ParseMediaPacket_cold_4();
                    }
                  }
                }

                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v71 = VRTraceErrorLogLevelToCSTR();
                  v72 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    v100 = *(a1 + 11386) + 1;
                    v101 = *(a1 + 10576);
                    *buf = 136316674;
                    *&buf[4] = v71;
                    *&buf[12] = 2080;
                    *&buf[14] = "_RTPTransport_DetectSequenceNumberGap";
                    *&buf[22] = 1024;
                    *&buf[24] = 2128;
                    LOWORD(v197[0]) = 1024;
                    *(v197 + 2) = v100;
                    WORD3(v197[0]) = 1024;
                    DWORD2(v197[0]) = v13;
                    WORD6(v197[0]) = 2048;
                    *(v197 + 14) = v101;
                    WORD3(v197[1]) = 2112;
                    *(&v197[1] + 1) = blockBufferOut;
                    _os_log_error_impl(&dword_1DB56E000, v72, OS_LOG_TYPE_ERROR, " [%s] %s:%d Detected gap in RTP sequence number: expected=%u, received=%u, for stream=%p with MKI=%@", buf, 0x3Cu);
                  }
                }

                VCMediaKeyIndex_Release(&blockBufferOut);
                v69 = a1 + 7962;
                *(a1 + 11384) = 0;
              }

              *(v69 + 3424) = v13;
            }

            if (!*(a1 + 7880))
            {
              *(a1 + 11384) = 1;
              *(a1 + 11386) = v13;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v73 = VRTraceErrorLogLevelToCSTR();
                v74 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v75 = *(a1 + 10576);
                  *buf = 136315906;
                  *&buf[4] = v73;
                  *&buf[12] = 2080;
                  *&buf[14] = "_RTPTransport_DetectSequenceNumberGap";
                  *&buf[22] = 1024;
                  *&buf[24] = 2139;
                  LOWORD(v197[0]) = 2048;
                  *(v197 + 2) = v75;
                  _os_log_impl(&dword_1DB56E000, v74, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Started RTP sequence number gap detection for stream=%p", buf, 0x26u);
                }
              }
            }
          }

          if ((v68 & 0x80000000) != 0 || v68 > v68)
          {
            goto LABEL_291;
          }

          offsetToData = 4 * (v181 & 0xF) + 12;
          v175 = v67 + offsetToData;
          v76 = SRTPVerifyAuthenticationTag(a1 + 7528, v13, v178, v68, &v191, &v192);
          if ((v76 & 0x80000000) != 0)
          {
            v9 = v76;
            if (v76 != -2145255368)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  _RTPTransport_ParseMediaPacket_cold_13();
                }
              }

              if (v9 == -2145255361 && (*v182 & 1) == 0)
              {
                *v182 = 1;
                v77 = *(a1 + 7968);
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v78 = VRTraceErrorLogLevelToCSTR();
                  v79 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    v80 = VCSecurityKeyHolder_ParticipantID(*(a1 + 10632));
                    *buf = 136316162;
                    *&buf[4] = v78;
                    *&buf[12] = 2080;
                    *&buf[14] = "_RTPProcessMKICollision";
                    *&buf[22] = 1024;
                    *&buf[24] = 2239;
                    LOWORD(v197[0]) = 2048;
                    *(v197 + 2) = v80;
                    WORD5(v197[0]) = 2048;
                    *(v197 + 12) = v77;
                    _os_log_impl(&dword_1DB56E000, v79, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Processing MKI collision: participantID=%llu, MKI size=%lu... Aborting the call", buf, 0x30u);
                  }
                }

                v81 = *(a1 + 10568);
                if (v81)
                {
                  if ((v81(7, *(a1 + 10576), 0, 0) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      _RTPTransport_ParseMediaPacket_cold_14();
                    }
                  }

                  v9 = 2149711935;
                }

                else
                {
                  _RTPTransport_ParseMediaPacket_cold_15();
                  v68 = *buf;
                  v9 = blockBufferOut;
                }

                goto LABEL_201;
              }

LABEL_197:
              _RTPProcessDecryptionStatusChange(a1, 0);
LABEL_201:
              if (v68 > lengthAtOffsetOut)
              {
                goto LABEL_291;
              }

              lengthAtOffsetOut = v68;
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_276;
              }

              if ((v181 & 0x20) != 0)
              {
                v111 = &dataPointerOut[v68 - 1];
                if (v111 >= &dataPointerOut[v68] || v111 < dataPointerOut)
                {
                  goto LABEL_291;
                }

                v110 = *v111;
              }

              else
              {
                v110 = 0;
              }

              v112 = v180;
              if ((v68 - v110 - v175) >= 0x5C1)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v159 = VRTraceErrorLogLevelToCSTR();
                  v160 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136316674;
                    *&buf[4] = v159;
                    *&buf[12] = 2080;
                    *&buf[14] = "_RTPTransport_ParseMediaPacket";
                    *&buf[22] = 1024;
                    *&buf[24] = 2965;
                    LOWORD(v197[0]) = 1024;
                    *(v197 + 2) = lengthAtOffsetOut;
                    WORD3(v197[0]) = 1024;
                    DWORD2(v197[0]) = lengthAtOffsetOut;
                    WORD6(v197[0]) = 1024;
                    *(v197 + 14) = v175;
                    WORD1(v197[1]) = 1024;
                    DWORD1(v197[1]) = (v181 >> 5) & 1;
                    _os_log_error_impl(&dword_1DB56E000, v160, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid packet! length:%d iRet:%d iOffset:%d padding:%d, ", buf, 0x34u);
                    v9 = 2147549191;
                    goto LABEL_257;
                  }
                }

                goto LABEL_255;
              }

              if (v169)
              {
LABEL_210:
                *(a3 + 120) = v172;
                *(a3 + 40) = *(a2 + 128);
                v113 = *(a2 + 34);
                if (!*(a2 + 34))
                {
LABEL_213:
                  v9 = 0;
                  *(a3 + 50) = *(a2 + 36);
                  *(a3 + 56) = *(a2 + 40);
                  *(a3 + 89) = *(a2 + 35);
                  v114 = *v3;
                  *(a3 + 112) = *(v3 + 2);
                  *(a3 + 96) = v114;
                  *(a3 + 49) = *(a2 + 9);
                  *(a3 + 48) = v166;
                  *(a3 + 8) = v181 >> 15;
                  *(a3 + 12) = InternalPayload & 0x7F;
                  *(a3 + 16) = v168;
                  *(a3 + 20) = v13;
                  *(a3 + 24) = v185;
                  *(a3 + 28) = v112;
                  *(a3 + 200) = v165;
                  *(a3 + 201) = *(a2 + 88) == 0;
                  *(a3 + 202) = *(a2 + 137);
                  *(a3 + 203) = *(a2 + 138);
                  return v9;
                }

                *(a3 + 88) = v113;
                if (v113 <= 0xC)
                {
                  memcpy((a3 + 64), (a2 + 10), 2 * v113);
                  v112 = v180;
                  goto LABEL_213;
                }

LABEL_291:
                __break(0x5519u);
              }

              v115 = *(a2 + 128);
              v116 = *(a1 + 696);
              v117 = *(a1 + 700);
              v118 = NTPToMicro(*(a1 + 6488), v82);
              if (v185 != *(a1 + 4824))
              {
                v119 = (v116 + v117 * (v115 - v118)) - v185;
                if (v167)
                {
                  v120 = 0;
                }

                else
                {
                  v120 = v119 - *(a1 + 4816);
                  if (v120 < 0)
                  {
                    v120 = *(a1 + 4816) - v119;
                  }
                }

                *(a1 + 4816) = v119;
                v121 = v120 - ((*(a1 + 4828) + 8) >> 4) + *(a1 + 4828);
                *(a1 + 4828) = v121;
                *(a1 + 4824) = v185;
                *(a1 + 6784) = ((v121 >> 4) + *(a1 + 6784) * (*(a1 + 704) - 1)) / *(a1 + 704);
                if (*(a1 + 6776) <= v121 >> 4)
                {
                  v122 = v121 >> 4;
                }

                else
                {
                  v122 = *(a1 + 6776);
                }

                *(a1 + 6776) = v122;
              }

              if (a3 + 8 >= (a3 + 208))
              {
                goto LABEL_291;
              }

              v123 = *a2;
              v124 = dataPointerOut;
              v125 = lengthAtOffsetOut;
              VCBlockBuffer_Clear(a3 + 128);
              v129 = v181;
              if ((v181 & 0x10) != 0)
              {
                *buf = 0;
                v130 = _RTPTransport_PacketExtensionLength(v124, v125, &v189, buf);
                if ((v130 & 0x80000000) != 0)
                {
                  v9 = v130;
                  goto LABEL_257;
                }

                v131 = *buf;
                if (*buf)
                {
                  v132 = &v124[offsetToData];
                  if (&v124[offsetToData] < v124 || v132 > &v124[v125] || *buf > v125 - offsetToData)
                  {
                    goto LABEL_291;
                  }

                  *(a3 + 136) = *buf;
                  *(a3 + 144) = v132;
                  if (CMBlockBufferCreateWithBufferReference(*(a1 + 10664), v123, offsetToData, v131, 0, (a3 + 128)))
                  {
                    v9 = 2147549188;
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        _RTPTransport_ParseMediaPacket_cold_16();
                      }
                    }

LABEL_257:
                    if ((v167 & 1) == 0)
                    {
                      return v9;
                    }

                    goto LABEL_277;
                  }
                }

                v129 = v181;
              }

              v133 = *a2;
              v134 = dataPointerOut;
              v135 = &dataPointerOut[lengthAtOffsetOut];
              if ((v129 & 0x20) != 0)
              {
                v138 = v135 - 1;
                v137 = v175;
                if (!v135 || v138 < dataPointerOut)
                {
                  goto LABEL_291;
                }

                v136 = *v138;
              }

              else
              {
                v136 = 0;
                v137 = v175;
              }

              v139 = 0;
              v140 = 0;
              v141 = 0;
              v142 = 0;
              v143 = v136 + v137;
              blockBufferOut = 0;
              v144 = lengthAtOffsetOut - v143;
              if (lengthAtOffsetOut == v143)
              {
LABEL_243:
                *(a3 + 152) = v139;
                if (v141 < v142 || v140 > v142 || v144 > v141 - v142)
                {
                  goto LABEL_291;
                }

                *(a3 + 160) = v144;
                *(a3 + 168) = v142;
                if ((v181 & 0x20) == 0)
                {
                  goto LABEL_247;
                }

                v146 = dataPointerOut;
                v147 = &dataPointerOut[lengthAtOffsetOut];
                v148 = &dataPointerOut[lengthAtOffsetOut - 1];
                if (v148 >= &dataPointerOut[lengthAtOffsetOut] || v148 < dataPointerOut)
                {
                  goto LABEL_291;
                }

                v149 = *v148;
                if (*(a1 + 28))
                {
                  if ((v149 - 1) > 3u)
                  {
LABEL_255:
                    v9 = 2147549191;
                    goto LABEL_276;
                  }

                  if (v149 != 1)
                  {
                    v150 = &dataPointerOut[lengthAtOffsetOut - v149];
                    v151 = (v149 - 1);
                    while (v150 < v147 && v150 >= dataPointerOut)
                    {
                      v152 = *v150;
                      v154 = v152 == 255 && (v149 - 1) == 3;
                      if ((v152 - 4) < 0xFB || v154)
                      {
                        goto LABEL_255;
                      }

                      ++v150;
                      if (!--v151)
                      {
                        goto LABEL_274;
                      }
                    }

                    goto LABEL_291;
                  }
                }

                else
                {
                  v9 = 2147549191;
                  if ((v149 - 1) > 0xAu)
                  {
LABEL_276:
                    if (!v167)
                    {
                      return v9;
                    }

                    goto LABEL_277;
                  }
                }

LABEL_274:
                v155 = lengthAtOffsetOut - v149;
                if (!CMBlockBufferCreateWithBufferReference(*(a1 + 10664), *a2, lengthAtOffsetOut - v149, (v149 - 1), 0, (a3 + 176)))
                {
                  v158 = &v146[v155];
                  if (&v146[v155] > v147 || v158 < v146 || !v149)
                  {
                    goto LABEL_291;
                  }

                  *(a3 + 184) = (v149 - 1);
                  *(a3 + 192) = v158;
LABEL_247:
                  v112 = v180;
                  if (*(a1 + 188))
                  {
                    if (v167)
                    {
                      *(a1 + 4848) = 0;
                    }

                    _RTPTransport_EstimateRTCPXRSummaryJitter(a1, a2, v167, &v189, v126, v127, v128);
                  }

                  goto LABEL_210;
                }

                v9 = 2147549187;
                goto LABEL_276;
              }

              v145 = v137;
              if (!CMBlockBufferCreateWithBufferReference(*(a1 + 10664), v133, v137, lengthAtOffsetOut - v143, 0, &blockBufferOut))
              {
                v142 = &v134[v145];
                v139 = blockBufferOut;
                v140 = v134;
                v141 = v135;
                goto LABEL_243;
              }

              _RTPTransport_ParseMediaPacket_cold_17();
              v9 = 2147549188;
              if ((v161 & 1) == 0)
              {
                return v9;
              }

LABEL_277:
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v156 = VRTraceErrorLogLevelToCSTR();
                v157 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  *&buf[4] = v156;
                  *&buf[12] = 2080;
                  *&buf[14] = "RTPUninitialize";
                  *&buf[22] = 1024;
                  *&buf[24] = 636;
                  LOWORD(v197[0]) = 1024;
                  *(v197 + 2) = v9;
                  _os_log_impl(&dword_1DB56E000, v157, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Uninitializing RTP with error %X", buf, 0x22u);
                }
              }

              RTPReset(a1, v184);
              return v9;
            }
          }

          if (v192 != 1)
          {
LABEL_188:
            v107 = &v178[v175];
            if (&v178[v175] > &v178[v68])
            {
              goto LABEL_291;
            }

            if (v107 < v178)
            {
              goto LABEL_291;
            }

            v108 = v191 - v175;
            if (v191 - v175 < 0 || (v68 - v175) < v108)
            {
              goto LABEL_291;
            }

            v109 = SRTPDecrypt(a1 + 7528, v13, v107, v108);
            if ((v109 & 0x80000000) == 0 || (v9 = v109, v109 == -2145255368))
            {
              v68 = v191;
              if (*(a1 + 7920))
              {
                _RTPProcessDecryptionStatusChange(a1, 1);
              }

              v9 = 0;
              goto LABEL_201;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                _RTPTransport_ParseMediaPacket_cold_12();
              }
            }

            goto LABEL_197;
          }

          v194 = 0;
          blockBufferOut = 0;
          theArray = 0;
          pthread_mutex_lock((a1 + 7816));
          VCMediaKeyIndex_ReleaseAndCopyNewValue(&blockBufferOut, *(a1 + 7880));
          VCMediaKeyIndex_ReleaseAndCopyNewValue(&v194, *(a1 + 7888));
          pthread_mutex_unlock((a1 + 7816));
          v83 = *(a1 + 7936);
          if (v83 <= 4 && ((1 << v83) & 0x1A) != 0)
          {
            if ((VCSecurityKeyHolder_CopyKeyMaterialForKeyIndex(*(a1 + 10632), v194, &theArray) & 0x80000000) != 0)
            {
              _RTPTransport_ParseMediaPacket_cold_11(&v194);
            }

            else if (theArray)
            {
              v84 = *(a1 + 10568);
              if (v84 && (v84(4, *(a1 + 10576), v194, 0) & 0x80000000) != 0)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    _RTPTransport_ParseMediaPacket_cold_5();
                  }
                }

                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    _RTPTransport_ParseMediaPacket_cold_6();
                  }
                }
              }

              ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
              Value = CFDictionaryGetValue(ValueAtIndex, @"SecurityKeyIndex");
              if (Value)
              {
                if ((VCSecurityKeyHolder_AssociateKeyIndex(*(a1 + 10632), Value) & 0x80000000) != 0)
                {
                  _RTPTransport_ParseMediaPacket_cold_8();
                }

                else
                {
                  SRTPUpdateKeyMaterialForRTPInfo(a1, ValueAtIndex);
                  v88 = v87;
                  v89 = VRTraceGetErrorLogLevelForModule();
                  if (!v88)
                  {
                    if (v89 >= 7)
                    {
                      v90 = VRTraceErrorLogLevelToCSTR();
                      v91 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        v92 = VCMediaKeyIndex_Description(v194);
                        *buf = 136316162;
                        *&buf[4] = v90;
                        *&buf[12] = 2080;
                        *&buf[14] = "_RTPTransport_HandleMKIChanged";
                        *&buf[22] = 1024;
                        *&buf[24] = 2700;
                        LOWORD(v197[0]) = 2048;
                        *(v197 + 2) = a1;
                        WORD5(v197[0]) = 2080;
                        *(v197 + 12) = v92;
                        _os_log_impl(&dword_1DB56E000, v91, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d rtpInfo=%p: SRTP has been updated with new key material with index=%s", buf, 0x30u);
                      }
                    }

                    v9 = 0;
                    v93 = 1;
                    goto LABEL_185;
                  }

                  _RTPTransport_ParseMediaPacket_cold_7(v89);
                }
              }

              else
              {
                _RTPTransport_ParseMediaPacket_cold_9();
              }
            }

            else
            {
              _RTPTransport_ParseMediaPacket_cold_10(&v194);
            }
          }

          v9 = 2149711929;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v183 = VRTraceErrorLogLevelToCSTR();
            v105 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v162 = VCMediaKeyIndex_Description(v194);
              v106 = VCMediaKeyIndex_Description(blockBufferOut);
              *buf = 136316418;
              *&buf[4] = v183;
              *&buf[12] = 2080;
              *&buf[14] = "_RTPTransport_HandleMKIChanged";
              *&buf[22] = 1024;
              *&buf[24] = 2703;
              LOWORD(v197[0]) = 2048;
              *(v197 + 2) = a1;
              WORD5(v197[0]) = 2080;
              *(v197 + 12) = v162;
              WORD2(v197[1]) = 2080;
              *(&v197[1] + 6) = v106;
              _os_log_impl(&dword_1DB56E000, v105, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d rtpInfo=%p: SRTP drop packet due to media key index changed [new:%s, old:%s]", buf, 0x3Au);
            }
          }

          v93 = 0;
LABEL_185:
          if (theArray)
          {
            CFRelease(theArray);
          }

          VCMediaKeyIndex_Release(&blockBufferOut);
          VCMediaKeyIndex_Release(&v194);
          if ((v93 & 1) == 0)
          {
            goto LABEL_197;
          }

          goto LABEL_188;
        }

        v9 = v66;
        _RTPTransport_ParseMediaPacket_cold_18();
        v103 = v102;
        if (!v102)
        {
LABEL_175:
          v9 = *buf;
          goto LABEL_276;
        }

LABEL_173:
        if (v103 != 1)
        {
          return v9;
        }

        goto LABEL_277;
      }
    }

    else
    {
      *v46 = v13;
      ++*(a1 + 704);
      v53 = *(a1 + 10592);
      if (v53)
      {
        ++*(v53 + 56);
      }

      ++*(a1 + 328);
    }

    if (*(a1 + 11284))
    {
LABEL_62:
      v51 = 0;
      v52 = 0;
      goto LABEL_63;
    }

    v57 = *(a1 + 692);
    if (v13 == v57 || (v13 - v57) > 0x7FFEu)
    {
      if ((v57 - v13) < 0x33u)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v58 = v57 + 0x10000;
      if (v13 >= v57)
      {
        v58 = *(a1 + 692);
      }

      *(a1 + 692) = v58 & 0xFFFF0000 | v13;
      v59 = (v13 - v57);
      if (v59 < 2)
      {
        goto LABEL_62;
      }

      v171 = v48;
      v174 = v47;
      v177 = v45;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v164 = VRTraceErrorLogLevelToCSTR();
        v60 = *MEMORY[0x1E6986650];
        v61 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v164;
            *&buf[12] = 2080;
            *&buf[14] = "_RTPTransport_DetectPacketLoss";
            *&buf[22] = 1024;
            *&buf[24] = 2729;
            LOWORD(v197[0]) = 1024;
            *(v197 + 2) = v59 - 1;
            _os_log_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %d packets lost", buf, 0x22u);
          }
        }

        else if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          _RTPTransport_ParseMediaPacket_cold_3();
        }
      }

      v94 = *(a1 + 10544);
      v95 = v59 - 1;
      if (*(a1 + 28) == 1)
      {
        AFRCRecordMaxBurstyLoss(v94, v95);
        *&buf[11] = 0;
        *&buf[4] = 0;
        memset(v197, 0, sizeof(v197));
        v198 = 0u;
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        v204 = 0u;
        v205 = 0u;
        v206 = 0u;
        v207 = 0;
        v96 = *(a1 + 10608);
        *buf = 7;
        buf[19] = 1;
        v97 = 0x200000000;
      }

      else
      {
        AFRCRecordMaxAudioConsecutiveLoss(v94, v95);
        *&buf[11] = 0;
        *&buf[4] = 0;
        memset(v197, 0, sizeof(v197));
        v198 = 0u;
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        v204 = 0u;
        v205 = 0u;
        v206 = 0u;
        v207 = 0;
        v96 = *(a1 + 10608);
        *buf = 7;
        buf[19] = 1;
        v97 = 0x100000000;
      }

      *&buf[20] = v97;
      v199 = v95;
      VCRateControlSetStatistics(v96, buf);
      v47 = v174;
      v45 = v177;
      v48 = v171;
      if ((v13 - v57) <= 0x5DCu)
      {
        goto LABEL_62;
      }
    }

    v173 = v48;
    v176 = v47;
    v179 = v45;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v98 = VRTraceErrorLogLevelToCSTR();
      v99 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v98;
        *&buf[12] = 2080;
        *&buf[14] = "_RTPTransport_DetectPacketLoss";
        *&buf[22] = 1024;
        *&buf[24] = 2763;
        LOWORD(v197[0]) = 1024;
        *(v197 + 2) = v57;
        WORD3(v197[0]) = 1024;
        DWORD2(v197[0]) = v13;
        _os_log_impl(&dword_1DB56E000, v99, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Big jump in sequence Number! LastSeq:%d CurrentSeq:%d", buf, 0x28u);
      }
    }

    v51 = 0;
    v52 = 0;
    v47 = v176;
    v45 = v179;
    v48 = v173;
    goto LABEL_63;
  }

  v9 = 2147549195;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _RTPTransport_ParseMediaPacket_cold_22();
      return 2147549195;
    }
  }

  return v9;
}