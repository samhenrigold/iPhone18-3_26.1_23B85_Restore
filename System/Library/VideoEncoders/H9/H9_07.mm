uint64_t H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a2 + 3180);
    if (v4 >= 0x1E)
    {
      v11 = 3758097084;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v15 = AVE_Log_CheckConsole(0x2Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 476, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", CurrTime, 46, LevelStr, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 476, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      v6 = *(a1 + 8 * v4 + 27072);
      if (v6)
      {
        v7 = a3;
        if (AVE_Log_CheckLevel(0x2Eu, 7))
        {
          v8 = AVE_Log_CheckConsole(0x2Eu);
          v9 = AVE_GetCurrTime();
          v10 = AVE_Log_GetLevelStr(7);
          if (v8)
          {
            printf("%lld %d AVE %s: %s::%s:%d DoneWithThis PlaneNumber %d size %d\n", v9, 46, v10, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 483, *(a2 + 3180), *(v6 + 288));
            v9 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d DoneWithThis PlaneNumber %d size %d", v9);
        }

        AVE_Dump_WriteVQMetrics(*(a1 + 40704), *(a2 + 20), *(a2 + 40), (v6 + 45320));
        AVE_Dump_WriteFPS(*(a1 + 40704), *(a2 + 20), *(a2 + 40), (a2 + 72664));
        File = AVE_Dump_FindFile(*(a1 + 40704), 7u, *(a2 + 20));
        AVE_MCTFStats_PrintAll((v6 + 42608), File, *(a2 + 40));
        v23 = AVE_Dump_FindFile(*(a1 + 40704), 6u, *(a2 + 20));
        AVE_FwStats_PrintAll((v6 + 4720), (a2 + 33012), v23, *(a2 + 40), v7);
        AVE_Dump_WriteHwEventTrace(*(a1 + 40704), *(a2 + 20), (v6 + 42760));
        bzero(v6, 0xBAA8uLL);
      }

      else if (AVE_Log_CheckLevel(3u, 4))
      {
        v11 = AVE_Log_CheckConsole(3u);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (!v11)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL");
          return v11;
        }

        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v18, 3, v19, "DoneWithThisFrameFromTheHW", 480, "codedHeader != __null");
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v20, 3, v21, "DoneWithThisFrameFromTheHW", 480, "codedHeader != __null");
      }

      return 0;
    }
  }

  else
  {
    v11 = 3758097084;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v12 = AVE_Log_CheckConsole(3u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: DoneWithThisFrameFromTheHW Frame == NULL\n", v13, 3, v14, "DoneWithThisFrameFromTheHW", 473, "Frame != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: DoneWithThisFrameFromTheHW Frame == NULL");
    }
  }

  return v11;
}

uint64_t H264VideoEncoderFrameReceiver::CollectSlicesInfo(H264VideoEncoderFrameReceiver *this, unsigned int a2, unsigned int a3)
{
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v6 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %d %d\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "CollectSlicesInfo", a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %d %d", CurrTime);
  }

  if (a2 >= 0x1E)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x2Eu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong plane number %d\n", v19, 46, v20, "AVE_FrameRecv", "CollectSlicesInfo", 521, "0 <= iPlaneNumber && iPlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", this, a2);
        v19 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v49 = v20;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong plane number %d", v19, 46, v49);
    }

    goto LABEL_46;
  }

  if (a3 >= 2)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x2Eu);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong layer ID %d\n", v22, 46, v23, "AVE_FrameRecv", "CollectSlicesInfo", 524, "0 <= iLayerID && iLayerID < ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", this, a3);
        v22 = AVE_GetCurrTime();
        v50 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v50 = v23;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong layer ID %d", v22, 46, v50);
    }

    goto LABEL_46;
  }

  v9 = *(this + a2 + 3384);
  if (!v9)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v24 = AVE_Log_CheckConsole(0x2Eu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d\n", v25, 46, v26, "AVE_FrameRecv", "CollectSlicesInfo", 528, "codedHeader != __null", this, a2);
        v27 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d", v27, 46, v51);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d", v25, 46, v26);
      }
    }

    goto LABEL_46;
  }

  v10 = (this + 28032);
  v11 = v9 + 12 * a3;
  v12 = this + 12 * a3;
  v13 = *(v11 + 144);
  v14 = v12 + 29084;
  *(v12 + 7273) = *(v11 + 152);
  *(v12 + 29084) = v13;
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v15 = AVE_Log_CheckConsole(0x2Eu);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d Filler[%d] %d %d\n", v16, 46, v17, "AVE_FrameRecv", "CollectSlicesInfo", 531, a3, v14[7], *(v14 + 2));
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d Filler[%d] %d %d", v16, 46);
  }

  *(this + 7270) = 3 * *(v9 + 140);
  memcpy(this + 28032, (v9 + 280), 0x204uLL);
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v28 = AVE_Log_CheckConsole(0x2Eu);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(7);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s:%d slice number %d\n", v29, 46, v30, "AVE_FrameRecv", "CollectSlicesInfo", 539, *v10);
      v29 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d slice number %d", v29);
  }

  if (*v10 > 0x20)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v41 = AVE_Log_CheckConsole(0x2Eu);
      v42 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(4);
      if (v41)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong slices %d\n", v42, 46, v43, "AVE_FrameRecv", "CollectSlicesInfo", 542, "0 <= m_sSliceInfo.iNum && m_sSliceInfo.iNum <= ((32) < (256) ? (32) : (256))", this, *v10);
        v42 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong slices %d", v42, 46, v43, "AVE_FrameRecv", "CollectSlicesInfo", 542, "0 <= m_sSliceInfo.iNum && m_sSliceInfo.iNum <= ((32) < (256) ? (32) : (256))", this, *v10);
    }

LABEL_46:
    v40 = 4294966295;
    goto LABEL_47;
  }

  if (*v10)
  {
    v31 = 0;
    v32 = (this + 28048);
    do
    {
      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v33 = AVE_Log_CheckConsole(0x2Eu);
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(7);
        v36 = *(v32 - 3);
        v37 = *(v32 - 2);
        v38 = *(v32 - 1);
        v39 = *v32;
        if (v33)
        {
          printf("%lld %d AVE %s: %s::%s:%d slice %2d offset %8d size %8d header offset %8d size %8d\n", v34, 46, v35, "AVE_FrameRecv", "CollectSlicesInfo", 548, v31, v36, v37, *(v32 - 1), v39);
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(7);
          v36 = *(v32 - 3);
          v37 = *(v32 - 2);
          v38 = *(v32 - 1);
          v39 = *v32;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d slice %2d offset %8d size %8d header offset %8d size %8d", v34, 46, v35, "AVE_FrameRecv", "CollectSlicesInfo", 548, v31, v36, v37, v38, v39);
      }

      ++v31;
      v32 += 4;
    }

    while (v31 < *v10);
    v40 = 0;
  }

  else
  {
    v40 = 0;
  }

LABEL_47:
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v44 = AVE_Log_CheckConsole(0x2Eu);
    v45 = AVE_GetCurrTime();
    v46 = AVE_Log_GetLevelStr(7);
    if (v44)
    {
      printf("%lld %d AVE %s: %s::%s Exit %d %d %d\n", v45, 46, v46, "AVE_FrameRecv", "CollectSlicesInfo", a2, a3, v40);
      v47 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %d %d %d", v47);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %d %d %d", v45);
    }
  }

  return v40;
}

uint64_t H264VideoEncoderFrameReceiver::AddAllSEIs(AVE_SEI **a1, unsigned int *a2, unsigned __int8 *a3, int a4, int a5, int a6)
{
  v31 = a1 + 17227;
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v12 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d %d %d\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "AddAllSEIs", a1, *v31, a2, a3, a4, a5, a6);
      v15 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d %d %d", v15, 46, v30, "AVE_FrameRecv", "AddAllSEIs");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d %d %d", CurrTime, 46, LevelStr, "AVE_FrameRecv", "AddAllSEIs");
    }
  }

  if (a2 && a3)
  {
    if (a2[795] >= 0x1E)
    {
      v16 = 3758097084;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x2Eu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v22, 46, v23, "AVE_FrameRecv", "AddAllSEIs", 579, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", a2[795]);
          v22 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v22, 46);
      }
    }

    else
    {
      *(v31 + 2) = 0;
      if (!a6 || (v16 = 0, (a5 & 1) == 0))
      {
        v32 = 0;
        H264VideoEncoderFrameReceiver::DecideSEIBits(a1, &v32, a2);
        v17 = AVE_SEI::Generate(a1[17962], a2[10], v32, a3, a4, v31 + 2);
        v16 = AVE_RetCode2OSStatus(v17);
      }
    }
  }

  else
  {
    v16 = 3758097084;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v18 = AVE_Log_CheckConsole(3u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | H264FrameRec ERROR\n", v19, 3, v20, "AVE_FrameRecv", "AddAllSEIs", 575, "pFrame != __null && pBuf != __null");
        v19 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | H264FrameRec ERROR", v19);
    }
  }

  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v24 = AVE_Log_CheckConsole(0x2Eu);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(7);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d\n", v25, 46, v26, "AVE_FrameRecv", "AddAllSEIs", a1, *v31, a2, a3, a4, a5, a6, v16);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d", v27, 46, v28, "AVE_FrameRecv", "AddAllSEIs");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d", v25, 46, v26, "AVE_FrameRecv", "AddAllSEIs");
    }
  }

  return v16;
}

uint64_t H264VideoEncoderFrameReceiver::DecideSEIBits(void *a1, uint64_t *a2, _DWORD *a3)
{
  v6 = a1 + 39468;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v7 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", CurrTime, 211, LevelStr, "AVE_FrameRecv", "DecideSEIBits", a1, a1[17227], a2, a3);
      v10 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v10, 211, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", CurrTime, 211, LevelStr);
    }
  }

  v11 = a3[614];
  if (v11)
  {
    v12 = v11 == 3;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || !a3[10])
  {
    if (a3[10])
    {
      v13 = 0x6B00000381;
    }

    else
    {
      v13 = 0x3FF000003E1;
    }

    v14 = 2;
    if (!a3[10])
    {
      v14 = 6;
    }
  }

  else
  {
    v13 = 0x6300000381;
    v14 = 2;
  }

  if (v6[156] == 1 && *v6 == 2)
  {
    v15 = v13 | v14;
    if (v11 == 3 || a3[7432] == 21)
    {
      v13 = v15 | 0x18;
    }

    else
    {
      v13 = v15 | 8;
    }
  }

  *a2 = v13;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v16 = AVE_Log_CheckConsole(0xD3u);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d\n", v17, 211, v18, "AVE_FrameRecv", "DecideSEIBits", a1, a1[17227], a2, a3, v13, 0);
      v19 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d", v19, 211, v22, "AVE_FrameRecv", "DecideSEIBits");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d", v17, 211, v18, "AVE_FrameRecv", "DecideSEIBits");
    }
  }

  return 0;
}

uint64_t H264VideoEncoderFrameReceiver::CopyEncodedFrameIntoExternalBuffer(void *a1, unsigned int *a2, int a3, char *a4)
{
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v8 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %d %p\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", a1, a1[17227], a2, a3, a4);
      v11 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %d %p", v11, 46, v36, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %d %p", CurrTime, 46, LevelStr, "AVE_FrameRecv");
    }
  }

  if (!a2 || a3 < 1 || !a4)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x2Eu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %d %p\n", v21, 46, v22, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 709, "(psEncFrameInfo != __null) && (iSize > 0) && (piFinalBuf != __null)", a1, a1[17227], a2, a3, a4);
        v23 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %d %p", v23, 46, v37, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 709);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %d %p", v21, 46, v22, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 709);
      }
    }

    goto LABEL_31;
  }

  v12 = *a2;
  if (v12 < 1)
  {
    v13 = 0;
    goto LABEL_21;
  }

  v13 = 0;
  v14 = 6;
  do
  {
    v13 += a2[v14];
    v14 += 8;
    --v12;
  }

  while (v12);
  if (v13 != a3)
  {
LABEL_21:
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v24 = AVE_Log_CheckConsole(0x2Eu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong total size %p %lld %p %d %p %d\n", v25, 46, v26, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 717, "size == iSize", a1, a1[17227], a2, a3, a4, v13);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong total size %p %lld %p %d %p %d", v25, 46, v26, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 717, "size == iSize");
    }

    goto LABEL_31;
  }

  v15 = 0;
  v16 = a2 + 4;
  v17 = a4;
  while (*v16)
  {
    v18 = v16[2];
    if (v18 <= 0)
    {
      break;
    }

    memcpy(v17, *v16, v18);
    *(v16 + 2) = v17;
    v17 += v16[2];
    ++v15;
    v16 += 8;
    if (v15 >= *a2)
    {
      v19 = 0;
      goto LABEL_32;
    }
  }

  if (AVE_Log_CheckLevel(0x2Eu, 4))
  {
    v27 = AVE_Log_CheckConsole(0x2Eu);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(4);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p %d\n", v28, 46, v29, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 727, "(psEncFrameInfo->saEntry[i].sBuf.pBuf != __null) && (psEncFrameInfo->saEntry[i].sBuf.iSize > 0)", a1, a1[17227], a2, v16, v16[2]);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p %d", v28, 46, v29, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 727);
  }

LABEL_31:
  v19 = 4294966295;
LABEL_32:
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v30 = AVE_Log_CheckConsole(0x2Eu);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(7);
    if (v30)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d\n", v31, 46, v32, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", a1, a1[17227], a2, a3, a4, v19);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d", v33, 46, v34, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d", v31, 46, v32, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer");
    }
  }

  return v19;
}

uint64_t H264VideoEncoderFrameReceiver::SendPS(uint64_t a1, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v4 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "SendPS", a2);
      v7 = AVE_GetCurrTime();
      v74 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v7, 46, v74, "AVE_FrameRecv", "SendPS", a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", CurrTime, 46, LevelStr, "AVE_FrameRecv", "SendPS", a2);
    }
  }

  if (!*(a1 + 29352))
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x2Eu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | nobody wants this SPS PPS header. dump it\n", v21, 46, v22, "AVE_FrameRecv", "SendPS", 757, "m_pSession != __null");
        v21 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | nobody wants this SPS PPS header. dump it", v21);
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v23 = AVE_Log_CheckConsole(0x2Eu);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter psFrameInfo == NULL\n", v24, 46, v25, "AVE_FrameRecv", "SendPS", 760, "psFrameInfo != __null");
        v24 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter psFrameInfo == NULL", v24);
    }

    goto LABEL_33;
  }

  v8 = *(a2 + 3180);
  if (v8 >= 0x1E)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v26 = AVE_Log_CheckConsole(0x2Eu);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v27, 46, v28, "AVE_FrameRecv", "SendPS", 764, "0 <= psFrameInfo->PlaneNumber && psFrameInfo->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
        v27 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v27, 46);
    }

LABEL_33:
    v32 = 4294966295;
    goto LABEL_34;
  }

  v9 = a1 + 143664;
  v10 = *(a1 + 8 * v8 + 27072);
  if (v10)
  {
    v11 = v10 + 45056;
    v12 = (v10 + 45392);
    v13 = *(v10 + 45392);
    if (v13 > 0)
    {
      v14 = v10 + 16 * (v13 - 1) + 45396;
      v15 = *(v14 + 8);
      LODWORD(v14) = *(v14 + 12);
      v16 = __OFADD__(v14, v15);
      LODWORD(v14) = v14 + v15;
      *(a1 + 143680) = v14;
      if ((v14 < 0) ^ v16 | (v14 == 0))
      {
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v40 = AVE_Log_CheckConsole(0x2Eu);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
          if (v40)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong PS size %d\n", v41, 46, v42, "AVE_FrameRecv", "SendPS", 777, "m_iPSSize > 0", *(a1 + 143680));
            v41 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong PS size %d", v41, 46);
        }

        v32 = 4294966281;
        goto LABEL_58;
      }

      v79 = v10;
      v80 = (v10 + 45392);
      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v17 = AVE_Log_CheckConsole(0x2Eu);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(7);
        if (v17)
        {
          printf("%lld %d AVE %s: %s::%s:%d codec %d PSInfo num %d size %d\n", v18, 46, v19, "AVE_FrameRecv", "SendPS", 780, *(a1 + 39468), *v12, *(a1 + 143680));
          v18 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d codec %d PSInfo num %d size %d", v18, 46);
      }

      Buffer = H264VideoEncoderFrameReceiver::CreateBuffer(a1, *(a1 + 143680), (a1 + 143672), *(a2 + 2552));
      *v9 = Buffer;
      if (!Buffer)
      {
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v48 = AVE_Log_CheckConsole(0x2Eu);
          v49 = AVE_GetCurrTime();
          v50 = AVE_Log_GetLevelStr(4);
          if (v48)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to create buffer. %d %p %p\n", v49, 46, v50, "AVE_FrameRecv", "SendPS", 785, "m_piPSOutput != __null", *(a1 + 143680), (a1 + 143672), *(a1 + 143672));
            v51 = AVE_GetCurrTime();
            v76 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create buffer. %d %p %p", v51, 46, v76, "AVE_FrameRecv");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create buffer. %d %p %p", v49, 46, v50, "AVE_FrameRecv");
          }
        }

        v32 = 4294966293;
        goto LABEL_58;
      }

      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v44 = AVE_Log_CheckConsole(0x2Eu);
        v45 = AVE_GetCurrTime();
        v46 = AVE_Log_GetLevelStr(7);
        if (v44)
        {
          printf("%lld %d AVE %s: %s::%s:%d create buffer %p %d %p\n", v45, 46, v46, "AVE_FrameRecv", "SendPS", 788, *v9, *(a1 + 143680), *(a1 + 143672));
          v47 = AVE_GetCurrTime();
          v75 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: %s::%s:%d create buffer %p %d %p", v47, 46, v75);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d create buffer %p %d %p", v45, 46, v46);
        }
      }

      v78 = (a1 + 143664);
      if (*v12 >= 1)
      {
        v53 = 0;
        v54 = (v11 + 352);
        do
        {
          if (AVE_Log_CheckLevel(0x2Eu, 8))
          {
            v55 = AVE_Log_CheckConsole(0x2Eu);
            v56 = AVE_GetCurrTime();
            v57 = AVE_Log_GetLevelStr(8);
            v58 = *(v54 - 3);
            v59 = *(v54 - 2);
            v60 = *(v54 - 1);
            v61 = *v54;
            if (v55)
            {
              printf("%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d\n", v56, 46, v57, "AVE_FrameRecv", "SendPS", 793, v53, v58, v59, *(v54 - 1), v61);
              v56 = AVE_GetCurrTime();
              v57 = AVE_Log_GetLevelStr(8);
              v58 = *(v54 - 3);
              v59 = *(v54 - 2);
              v60 = *(v54 - 1);
              v61 = *v54;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d", v56, 46, v57, "AVE_FrameRecv", "SendPS", 793, v53, v58, v59, v60, v61);
            v12 = v80;
          }

          ++v53;
          v54 += 4;
        }

        while (v53 < *v12);
      }

      v9 = a1 + 143664;
      memcpy(*(a1 + 143664), (v79 + 45732), *(a1 + 143680));
      if (AVE_Log_CheckLevel(0x2Eu, 8))
      {
        v62 = AVE_Log_CheckConsole(0x2Eu);
        v63 = AVE_GetCurrTime();
        v64 = AVE_Log_GetLevelStr(8);
        if (v62)
        {
          printf("%lld %d AVE %s: %s::%s:%d %d %p\n", v63, 46, v64, "AVE_FrameRecv", "SendPS", 800, *(a1 + 39448), *(a1 + 29352));
          v63 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(8);
          v12 = v80;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %d %p", v63, 46);
      }

      v65 = *(a1 + 29352);
      if (v65 == 1)
      {
        if (*(a1 + 29288) && *(a1 + 29280))
        {
          if (AVE_Log_CheckLevel(0x2Eu, 7))
          {
            v71 = AVE_Log_CheckConsole(0x2Eu);
            v72 = AVE_GetCurrTime();
            v73 = AVE_Log_GetLevelStr(7);
            if (v71)
            {
              printf("%lld %d AVE %s: %s::%s:%d calling emitEncodedFrame on %d bytes (SPS PPS)\n", v72, 46, v73, "AVE_FrameRecv", "SendPS", 810, *(a1 + 143680));
              v72 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d calling emitEncodedFrame on %d bytes (SPS PPS)", v72);
          }

          (*(a1 + 29288))(*(a1 + 29280), *(a1 + 143664), *(a1 + 143680), 0, *(a1 + 39468));
        }

        *(a1 + 25784) = 1;
      }

      else
      {
        if (*(a1 + 39252) >= 2u)
        {
          AVE_PS_Compose_general_profile_compatibility_flag(a1 + 57388, a1 + 137776, 4);
          AVE_PS_Compose_general_constraint_indicator_flags(a1 + 57388, (a1 + 137780), 6u);
          v65 = *(a1 + 29352);
        }

        VideoFormatDesc = H264VideoEncoderFrameReceiver::CreateVideoFormatDesc(a1, v65, *v78, a2, v12);
        if (VideoFormatDesc)
        {
          v32 = VideoFormatDesc;
          if (AVE_Log_CheckLevel(0x2Eu, 4))
          {
            v67 = AVE_Log_CheckConsole(0x2Eu);
            v68 = AVE_GetCurrTime();
            v69 = AVE_Log_GetLevelStr(4);
            if (v67)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %p %p %p %d\n", v68, 46, v69, "AVE_FrameRecv", "SendPS", 831, "ret == 0", *(a1 + 29352), *v78, a2, v32);
              v70 = AVE_GetCurrTime();
              v77 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %p %p %p %d", v70, 46, v77, "AVE_FrameRecv", "SendPS");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %p %p %p %d", v68, 46, v69, "AVE_FrameRecv", "SendPS");
            }
          }

          goto LABEL_58;
        }
      }

      AVE_Dump_WriteOutput(*(a1 + 40704), *(a2 + 20), *(a1 + 143664), *(a1 + 143680));
      v32 = 0;
      goto LABEL_34;
    }

    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v37 = AVE_Log_CheckConsole(0x2Eu);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      if (v37)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong PS number %p %d\n", v38, 46, v39, "AVE_FrameRecv", "SendPS", 772, "psPSInfo->iNum > 0", v12, *v12);
        v38 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong PS number %p %d", v38, 46, v39, "AVE_FrameRecv", "SendPS", 772, "psPSInfo->iNum > 0", v12, *v12);
    }
  }

  else if (AVE_Log_CheckLevel(0x2Eu, 4))
  {
    v29 = AVE_Log_CheckConsole(0x2Eu);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | m_CodedBuffPointerDataHeader[%d] == NULL\n", v30, 46, v31, "AVE_FrameRecv", "SendPS", 768, "codedHeader != __null", *(a2 + 3180));
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | m_CodedBuffPointerDataHeader[%d] == NULL", v30, 46, v31, "AVE_FrameRecv", "SendPS", 768, "codedHeader != __null", *(a2 + 3180));
  }

  v32 = 4294966296;
LABEL_58:
  *(v9 + 16) = 0;
  if (*v9)
  {
    H264VideoEncoderFrameReceiver::DeleteBuffer(a1, *v9);
    *v9 = 0;
  }

  v52 = *(v9 + 8);
  if (v52)
  {
    CFRelease(v52);
    *(v9 + 8) = 0;
  }

LABEL_34:
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v33 = AVE_Log_CheckConsole(0x2Eu);
    v34 = AVE_GetCurrTime();
    v35 = AVE_Log_GetLevelStr(7);
    if (v33)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v34, 46, v35, "AVE_FrameRecv", "SendPS", a2, v32);
      v34 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v34);
  }

  return v32;
}

char *H264VideoEncoderFrameReceiver::CreateBuffer(H264VideoEncoderFrameReceiver *this, size_t a2, OpaqueCMBlockBuffer **a3, uint64_t a4)
{
  dataPointerOut = 0;
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v7 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Enter %ld %p\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "CreateBuffer", a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %ld %p", CurrTime);
  }

  if (!a2)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v14 = AVE_Log_CheckConsole(0x2Eu);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter size %p %ld\n", v15, 46, v16, "AVE_FrameRecv", "CreateBuffer", 1600, "size != 0", this, 0);
        v17 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter size %p %ld", v17, 46, v26);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter size %p %ld", v15, 46, v16);
      }
    }

    goto LABEL_30;
  }

  if (!a3 || *a3)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v10 = AVE_Log_CheckConsole(0x2Eu);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        if (a3)
        {
          v13 = *a3;
        }

        else
        {
          v13 = 0;
        }

        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p %p\n", v11, 46, v12, "AVE_FrameRecv", "CreateBuffer", 1603, "(bbuf != __null) && (*bbuf == __null)", this, a3, v13);
        v11 = AVE_GetCurrTime();
        v12 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p %p", v11, 46, v12, "AVE_FrameRecv");
    }

LABEL_30:
    v20 = -1001;
    goto LABEL_31;
  }

  v18 = *(this + 34451);
  if (*(this + 3669) == 1)
  {
    if (v18 != 2)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v18 == 2)
  {
LABEL_23:
    if (*(this + 3663))
    {
      VTMotionEstimationProcessorSessionCreateMotionVectorPixelBufferWithOptions();
      goto LABEL_37;
    }

LABEL_25:
    v19 = malloc_type_malloc(a2, 0x100004077774924uLL);
    goto LABEL_26;
  }

  if (*(this + 9862) == 2)
  {
    v19 = MEMORY[0x29C24DF30](*(this + 3664), a2, 0x100004077774924, 0);
LABEL_26:
    v20 = 0;
    dataPointerOut = v19;
    goto LABEL_31;
  }

  VTEncoderSessionCreateCMBlockBuffer();
  CMBlockBufferGetDataPointer(*a3, 0, 0, 0, &dataPointerOut);
LABEL_37:
  v20 = 0;
LABEL_31:
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v21 = AVE_Log_CheckConsole(0x2Eu);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(7);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %ld %p %p %d\n", v22, 46, v23, "AVE_FrameRecv", "CreateBuffer", a2, a3, dataPointerOut, v20);
      v24 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %ld %p %p %d", v24, 46, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %ld %p %p %d", v22, 46, v23);
    }
  }

  return dataPointerOut;
}

void H264VideoEncoderFrameReceiver::DeleteBuffer(H264VideoEncoderFrameReceiver *this, unsigned __int8 *a2)
{
  if (a2)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v4 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v4)
      {
        printf("%lld %d AVE %s: H264FrameRec: DeleteBuffer %p\n", CurrTime, 46, LevelStr, a2);
        v7 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DeleteBuffer %p", v7, 46, v15, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DeleteBuffer %p", CurrTime, 46, LevelStr, a2);
      }
    }

    v12 = *(this + 34451);
    if (*(this + 3669) != 1)
    {
      if (v12 != 2)
      {
        if (*(this + 9862) == 2)
        {
          v13 = *(this + 3664);

          CFAllocatorDeallocate(v13, a2);
        }

        return;
      }

      goto LABEL_16;
    }

    if (v12 == 2)
    {
LABEL_16:
      if (!CVPixelBufferUnlockBaseAddress(a2, 0))
      {
        CVPixelBufferRelease(a2);
        v14 = *(this + 3663);

        MEMORY[0x2A1C5E1D8](v14);
      }

      return;
    }

    free(a2);
  }

  else if (AVE_Log_CheckLevel(0x2Eu, 4))
  {
    v8 = AVE_Log_CheckConsole(0x2Eu);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(4);
    if (v8)
    {
      printf("%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.\n", v9, 46, v10);
      v11 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.", v11, 46, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.", v9, 46, v10);
    }
  }
}

uint64_t H264VideoEncoderFrameReceiver::ProcessAndEmitLrmeStats(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a1 + 39224);
  v5 = 3758097084;
  v253[0] = 0;
  if (*(a1 + 39224))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (!a2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v17 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with Frame == NULL.\n", CurrTime, 3, LevelStr, "ProcessAndEmitLrmeStats", 996, "false");
        AVE_GetCurrTime();
        LODWORD(v5) = -536870212;
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with Frame == NULL.");
    }

    goto LABEL_27;
  }

  if (*(a1 + 137804) != 2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v20 = AVE_Log_CheckConsole(3u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec WARNING: ProcessAndEmitLrmeStats called with AVE_ClientType_LRME == false.\n", v21, 3, v22, "ProcessAndEmitLrmeStats", 998, "false");
        AVE_GetCurrTime();
        LODWORD(v5) = -536870212;
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec WARNING: ProcessAndEmitLrmeStats called with AVE_ClientType_LRME == false.");
    }

LABEL_27:
    H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, v2, 0);
    v31 = 0;
    v29 = 0;
    goto LABEL_28;
  }

  if (*(a2 + 2456) != 3)
  {
    v23 = 26432;
    if (!*(a1 + 39227))
    {
      v23 = 26392;
    }

    v24 = *(a1 + v23 + 4 * *(a2 + 3180));
    if (!v24)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v31 = AVE_Log_CheckConsole(3u);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        if (!v31)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.", v37, 3, v38, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
          v29 = 0;
          goto LABEL_68;
        }

        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.\n", v37, 3, v38, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        LODWORD(v5) = -536870212;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.", v39, 3, v40, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
      }

      v29 = 0;
LABEL_39:
      v31 = 0;
LABEL_68:
      H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, v2, 0);
      goto LABEL_28;
    }

    v25 = (a1 + 30136);
    v26 = *(a1 + 30136);
    v27 = *(a1 + 30140);
    v28 = IOSurfaceLookup(v24);
    if (v28)
    {
      v29 = v28;
      v30 = IOSurfaceLock(v28, 0, 0);
      if (v30)
      {
        v31 = v30;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v32 = AVE_Log_CheckConsole(3u);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: IOSurfaceLock statSurfaceRef failed.\n", v33, 3, v34, "ProcessAndEmitLrmeStats", 1011, "lockErr == 0");
            v35 = AVE_GetCurrTime();
            v226 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: IOSurfaceLock statSurfaceRef failed.", v35, 3, v226, "ProcessAndEmitLrmeStats", 1011, "lockErr == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: IOSurfaceLock statSurfaceRef failed.", v33, 3, v34, "ProcessAndEmitLrmeStats", 1011, "lockErr == 0");
          }
        }

        LODWORD(v5) = v31;
        goto LABEL_68;
      }

      v252 = v29;
      if (v4[3])
      {
        if (*(a1 + 137808) < 30)
        {
          v51 = v4[3];
          v52 = (IOSurfaceGetAllocSize(v29) >> 1) * ((v51 & 1) == 0);
        }

        else if (v4[3])
        {
          v52 = ((2 * (*v25 << v6) + 254) & 0xFFFFFF00) * (((*(a1 + 30140) << v6) + 127) >> 7);
        }

        else
        {
          v52 = 0;
        }
      }

      else
      {
        v52 = 0;
      }

      BaseAddress = IOSurfaceGetBaseAddress(v252);
      if (BaseAddress)
      {
        v248 = v2;
        v54 = v26 << v6;
        v55 = v27 << v6;
        v241 = v54;
        v244 = v54 + 15;
        v56 = (v54 + 15) >> 4;
        v246 = v55 + 15;
        v57 = (v55 + 15) >> 4;
        v251 = &BaseAddress[v52];
        AllocSize = IOSurfaceGetAllocSize(v252);
        v59 = *(a1 + 137808);
        if (v59 <= 8)
        {
          v10 = 0;
          v7 = 0;
          v60 = *(v4 + 309);
          if (v60 > 1)
          {
            if (v60 != 2)
            {
              v2 = v248;
              if (v60 == 3)
              {
                v5 = 3758097084;
                if (AVE_Log_CheckLevel(0x2Eu, 5))
                {
                  v93 = AVE_Log_CheckConsole(0x2Eu);
                  v94 = AVE_GetCurrTime();
                  v95 = AVE_Log_GetLevelStr(5);
                  if (v93)
                  {
                    printf("%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported yet \n\n", v94, 46, v95);
                    AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(5);
                    v5 = 3758097084;
                  }

                  syslog(3, "%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported yet \n");
                }
              }

              else
              {
                v5 = 3758097084;
                if (v60 != 4)
                {
                  v8 = 0;
                  v9 = 0;
                  goto LABEL_8;
                }

                if (AVE_Log_CheckLevel(0x2Eu, 5))
                {
                  v61 = AVE_Log_CheckConsole(0x2Eu);
                  v62 = AVE_GetCurrTime();
                  v63 = AVE_Log_GetLevelStr(5);
                  if (v61)
                  {
                    printf("%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported yet \n\n", v62, 46, v63);
                    AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(5);
                    v5 = 3758097084;
                  }

                  syslog(3, "%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported yet \n");
                }
              }

              v7 = 0;
              v8 = 0;
              v9 = 0;
              v10 = 0;
              goto LABEL_8;
            }

            v2 = v248;
            if (AVE_Log_CheckLevel(0xDu, 4))
            {
              v90 = AVE_Log_CheckConsole(0xDu);
              v91 = AVE_GetCurrTime();
              v92 = AVE_Log_GetLevelStr(4);
              v29 = v252;
              if (v90)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_STATISTICS_ONLY is not supported in video toolbox path\n", v91, 13, v92, "ProcessAndEmitLrmeStats", 1236, "bVTOF == false");
                AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_STATISTICS_ONLY is not supported in video toolbox path");
LABEL_216:
              LODWORD(v5) = 0;
              v31 = 4294954394;
              goto LABEL_68;
            }

LABEL_125:
            LODWORD(v5) = 0;
            v31 = 4294954394;
            goto LABEL_126;
          }

          if (v60)
          {
            if (v60 == 1)
            {
              v2 = v248;
              if (AVE_Log_CheckLevel(0xDu, 4))
              {
                v70 = AVE_Log_CheckConsole(0xDu);
                v71 = AVE_GetCurrTime();
                v72 = AVE_Log_GetLevelStr(4);
                v29 = v252;
                if (v70)
                {
                  printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path\n", v71, 13, v72, "ProcessAndEmitLrmeStats", 1193, "bVTOF == false");
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path");
                goto LABEL_216;
              }

              goto LABEL_125;
            }

            goto LABEL_181;
          }

          v247 = AllocSize;
          Buffer = H264VideoEncoderFrameReceiver::CreateBuffer(a1, 4 * v56 * v57, v253, *(v248 + 2552));
          v97 = CVPixelBufferGetBaseAddress(Buffer);
          v249 = Buffer;
          if (v97)
          {
            v7 = v97;
            v98 = v55 + 31;
            v250 = 4 * v56 * v57;
            bzero(v97, v250);
            BytesPerRow = CVPixelBufferGetBytesPerRow(Buffer);
            if (*v4)
            {
              v100 = 0;
            }

            else
            {
              v100 = 2;
            }

            if (v98 >= 0x20)
            {
              v101 = 0;
              v102 = 0;
              v103 = 0;
              v104 = v241 + 31;
              v105 = (v241 + 31) >> 5;
              v245 = BytesPerRow >> 3;
              v106 = (96 * v105 + 63) & 0xFFFFFFC0;
              v107 = v56 * v57 - 1;
              v108 = 2 * v105;
              v109 = 2 * (BytesPerRow >> 3);
              v110 = 8 * v105;
              v111 = 8 * (BytesPerRow >> 3);
              v112 = v109;
              v113 = 2 * v105;
              do
              {
                if (v104 >= 0x20)
                {
                  v114 = 0;
                  v115 = v103 * v106;
                  do
                  {
                    if (v102 + v114 <= v107)
                    {
                      v116 = &v251[v115];
                      if (v114 < v56)
                      {
                        _S0 = (*v116 << 25 >> 25 << v100);
                        __asm { FCVT            H0, S0 }

                        v122 = &v7[4 * v101 + 4 * v114];
                        *v122 = LOWORD(_S0);
                        _S0 = (*v116 << 19 >> 26 << v100);
                        __asm { FCVT            H0, S0 }

                        *(v122 + 1) = LOWORD(_S0);
                      }

                      if (v114 + 1 < v56)
                      {
                        _S0 = (v116[9] << 25 >> 25 << v100);
                        __asm { FCVT            H0, S0 }

                        v125 = &v7[4 * v101 + 4 + 4 * v114];
                        *v125 = LOWORD(_S0);
                        _S0 = (v116[9] << 19 >> 26 << v100);
                        __asm { FCVT            H0, S0 }

                        *(v125 + 1) = LOWORD(_S0);
                      }

                      if (v113 + v114 <= v107 && ((4 * v103) | 1u) < v57)
                      {
                        if (v114 < v56)
                        {
                          _S0 = (v116[18] << 25 >> 25 << v100);
                          __asm { FCVT            H0, S0 }

                          v128 = &v7[4 * v112 + 4 * v114];
                          *v128 = LOWORD(_S0);
                          _S0 = (v116[18] << 19 >> 26 << v100);
                          __asm { FCVT            H0, S0 }

                          *(v128 + 1) = LOWORD(_S0);
                        }

                        if (v114 + 1 < v56)
                        {
                          _S0 = (v116[27] << 25 >> 25 << v100);
                          __asm { FCVT            H0, S0 }

                          v131 = &v7[4 * v112 + 4 + 4 * v114];
                          *v131 = LOWORD(_S0);
                          _S0 = (v116[27] << 19 >> 26 << v100);
                          __asm { FCVT            H0, S0 }

                          *(v131 + 1) = LOWORD(_S0);
                        }
                      }
                    }

                    v115 += 96;
                    v114 += 2;
                  }

                  while (v108 != v114);
                }

                ++v103;
                v113 += v110;
                v102 += v110;
                v112 += v111;
                v101 += v111;
              }

              while (v103 != ((v98 >> 5) + 1) >> 1);
              if (v98 >= 0x40)
              {
                v164 = 0;
                v165 = v98 >> 6;
                v9 = 4 * v56 * v57;
                v166 = 4 * v245;
                v167 = 6 * v105;
                v168 = 4 * v105;
                v169 = v109 + 4 * v245;
                v8 = v249;
                do
                {
                  if (v104 >= 0x20)
                  {
                    v170 = 0;
                    v171 = v164 * v106;
                    do
                    {
                      if (v168 + v170 <= v107)
                      {
                        v172 = &v251[(v247 >> 1) + v171];
                        if (v170 < v56)
                        {
                          _S0 = (*v172 << 25 >> 25 << v100);
                          __asm { FCVT            H0, S0 }

                          v174 = &v7[4 * v166 + 4 * v170];
                          *v174 = LOWORD(_S0);
                          _S0 = (*v172 << 19 >> 26 << v100);
                          __asm { FCVT            H0, S0 }

                          *(v174 + 1) = LOWORD(_S0);
                        }

                        if (v170 + 1 < v56)
                        {
                          _S0 = (v172[9] << 25 >> 25 << v100);
                          __asm { FCVT            H0, S0 }

                          v177 = &v7[4 * v166 + 4 + 4 * v170];
                          *v177 = LOWORD(_S0);
                          _S0 = (v172[9] << 19 >> 26 << v100);
                          v8 = v249;
                          __asm { FCVT            H0, S0 }

                          *(v177 + 1) = LOWORD(_S0);
                        }

                        v9 = 4 * v56 * v57;
                        if (v167 + v170 <= v107 && ((4 * v164) | 3u) < v57)
                        {
                          if (v170 < v56)
                          {
                            _S0 = (v172[18] << 25 >> 25 << v100);
                            __asm { FCVT            H0, S0 }

                            v180 = &v7[4 * v169 + 4 * v170];
                            *v180 = LOWORD(_S0);
                            _S0 = (v172[18] << 19 >> 26 << v100);
                            v8 = v249;
                            __asm { FCVT            H0, S0 }

                            *(v180 + 1) = LOWORD(_S0);
                            v9 = 4 * v56 * v57;
                          }

                          if (v170 + 1 < v56)
                          {
                            _S0 = (v172[27] << 25 >> 25 << v100);
                            __asm { FCVT            H0, S0 }

                            v183 = &v7[4 * v169 + 4 + 4 * v170];
                            *v183 = LOWORD(_S0);
                            _S0 = (v172[27] << 19 >> 26 << v100);
                            __asm { FCVT            H0, S0 }

                            *(v183 + 1) = LOWORD(_S0);
                          }
                        }
                      }

                      v171 += 96;
                      v170 += 2;
                    }

                    while (v108 != v170);
                  }

                  ++v164;
                  v167 += v110;
                  v168 += v110;
                  v169 += v111;
                  v166 += v111;
                }

                while (v164 != v165);
                goto LABEL_243;
              }
            }

            goto LABEL_281;
          }

          if (AVE_Log_CheckLevel(3u, 4))
          {
            v160 = AVE_Log_CheckConsole(3u);
            v161 = AVE_GetCurrTime();
            v162 = AVE_Log_GetLevelStr(4);
            v2 = v248;
            v8 = Buffer;
            if (v160)
            {
              printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: MvStatsBuffer = NULL.\n", v161, 3, v162, "ProcessAndEmitLrmeStats", 1077, "MvStatsBuffer != __null");
              v163 = AVE_GetCurrTime();
              v232 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: MvStatsBuffer = NULL.", v163, 3, v232, "ProcessAndEmitLrmeStats", 1077, "MvStatsBuffer != __null");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: MvStatsBuffer = NULL.", v161, 3, v162, "ProcessAndEmitLrmeStats", 1077, "MvStatsBuffer != __null");
            }

            v10 = 0;
          }

          else
          {
            v10 = 0;
            v2 = v248;
            v8 = Buffer;
          }

LABEL_278:
          v5 = 3758097084;
          goto LABEL_47;
        }

        if (v4[3])
        {
          if (*v4)
          {
            _H8 = COERCE_UNSIGNED_INT(4.0);
          }

          else
          {
            _H8 = COERCE_UNSIGNED_INT(1.0);
          }

          v242 = -64;
          v69 = 63;
          goto LABEL_100;
        }

        v73 = *(v4 + 309);
        if (v59 >= 0x1E && !v73)
        {
          if (*v4)
          {
            _H8 = COERCE_UNSIGNED_INT(1.0);
          }

          else
          {
            _H8 = COERCE_UNSIGNED_INT(0.25);
          }

          v242 = -128;
          v69 = 127;
LABEL_100:
          v240 = v69;
          v74 = *v25;
          v75 = v56 * v57;
          v76 = H264VideoEncoderFrameReceiver::CreateBuffer(a1, 4 * v56 * v57, v253, *(v248 + 2552));
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v76, 0);
          if (BaseAddressOfPlane)
          {
            v78 = BaseAddressOfPlane;
            v238 = v74;
            bzero(BaseAddressOfPlane, (4 * v75));
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v76, 0);
            v5 = 3758097084;
            v249 = v76;
            v250 = (4 * v75);
            v239 = v56 * v57;
            if (v4[1240] != 1)
            {
              v81 = 0;
              LODWORD(v82) = 0;
              goto LABEL_152;
            }

            v236 = BytesPerRowOfPlane;
            if (CVPixelBufferGetPlaneCount(v76) != 2)
            {
              v81 = 0;
              LODWORD(v82) = 0;
              goto LABEL_151;
            }

            v80 = CVPixelBufferGetBaseAddressOfPlane(v76, 1uLL);
            if (v80)
            {
              v81 = v80;
              v82 = CVPixelBufferGetBytesPerRowOfPlane(v76, 1uLL) >> 1;
LABEL_151:
              BytesPerRowOfPlane = v236;
LABEL_152:
              v133 = BytesPerRowOfPlane >> 2;
              if (AVE_Log_CheckLevel(0xDu, 7))
              {
                v237 = AVE_Log_CheckConsole(0xDu);
                v134 = AVE_GetCurrTime();
                v135 = AVE_Log_GetLevelStr(7);
                if (v237)
                {
                  printf("%lld %d AVE %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n\n", v134, 13, v135, v56, v57, v250, v133);
                  v235 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n", v235);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n", v134);
                }
              }

              if (v246 >= 0x10)
              {
                v137 = 0;
                v138 = 0;
                v136 = 0;
                __asm { FCVT            S0, H8 }

                do
                {
                  if (v244 >= 0x10)
                  {
                    v140 = 0;
                    v141 = &v251[(((v238 << v6) + v240) & v242) * v138];
                    v142 = 4 * v138 * v82;
                    v143 = 4 * v138 * v133;
                    do
                    {
                      v144 = 4;
                      v145 = v137;
                      v146 = v142;
                      v147 = v143;
                      do
                      {
                        if (v145 < v57)
                        {
                          _S1 = ((*v141 << 21) >> 21) / _S0;
                          __asm { FCVT            H1, S1 }

                          v149 = &v78[4 * v147];
                          *v149 = LOWORD(_S1);
                          _S1 = ((*v141 << 11) >> 22) / _S0;
                          __asm { FCVT            H1, S1 }

                          *(v149 + 1) = LOWORD(_S1);
                          if (v81)
                          {
                            _D1 = (2048.0 - (*v141 >> 21)) * 0.00048828125;
                            __asm { FCVT            H1, D1 }

                            v81[v146] = LOWORD(_D1);
                          }

                          if ((*v141 & 0x1FFFFF) != 0)
                          {
                            ++v136;
                          }
                        }

                        v141 += 4;
                        v147 += v133;
                        v146 += v82;
                        ++v145;
                        --v144;
                      }

                      while (v144);
                      ++v140;
                      ++v143;
                      ++v142;
                    }

                    while (v140 != v56);
                  }

                  ++v138;
                  v137 += 4;
                }

                while (v138 != (v57 + 3) >> 2);
              }

              else
              {
                v136 = 0;
              }

              if (AVE_Log_CheckLevel(0xDu, 7))
              {
                v152 = AVE_Log_CheckConsole(0xDu);
                v153 = AVE_GetCurrTime();
                v154 = AVE_Log_GetLevelStr(7);
                v8 = v249;
                if (v152)
                {
                  printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_nonzero = %d\n\n", v153, 13, v154, "ProcessAndEmitLrmeStats", v239, v136);
                  v155 = AVE_GetCurrTime();
                  v230 = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_nonzero = %d\n", v155, 13, v230, "ProcessAndEmitLrmeStats", v239, v136);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_nonzero = %d\n", v153, 13, v154, "ProcessAndEmitLrmeStats", v239, v136);
                }

                v7 = 0;
                v10 = 0;
                v2 = v248;
                goto LABEL_282;
              }

              goto LABEL_280;
            }

            if (AVE_Log_CheckLevel(0xDu, 4))
            {
              v185 = AVE_Log_CheckConsole(0xDu);
              v84 = AVE_GetCurrTime();
              v186 = AVE_Log_GetLevelStr(4);
              v2 = v248;
              v8 = v76;
              if (v185)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: %s: MVCostBuffer is NULL\n", v84, 13, v186, "ProcessAndEmitLrmeStats", 1326, "psMVCostBuffer != __null", "ProcessAndEmitLrmeStats");
                v84 = AVE_GetCurrTime();
                v234 = "psMVCostBuffer != __null";
                v233 = 1326;
                v5 = 3758097084;
                v229 = AVE_Log_GetLevelStr(4);
              }

              else
              {
                v234 = "psMVCostBuffer != __null";
                v233 = 1326;
                v229 = v186;
              }

              v86 = "%lld %d AVE %s: %s:%d %s | OF: %s: MVCostBuffer is NULL";
LABEL_183:
              syslog(3, v86, v84, 13, v229, "ProcessAndEmitLrmeStats", v233, v234, "ProcessAndEmitLrmeStats");
              v10 = 0;
              goto LABEL_47;
            }
          }

          else
          {
            v5 = 3758097084;
            if (AVE_Log_CheckLevel(0xDu, 4))
            {
              v83 = AVE_Log_CheckConsole(0xDu);
              v84 = AVE_GetCurrTime();
              v85 = AVE_Log_GetLevelStr(4);
              v2 = v248;
              v8 = v76;
              if (v83)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL\n", v84, 13, v85, "ProcessAndEmitLrmeStats", 1309, "MvStatsBuffer != __null", "ProcessAndEmitLrmeStats");
                v84 = AVE_GetCurrTime();
                v234 = "MvStatsBuffer != __null";
                v233 = 1309;
                v5 = 3758097084;
                v229 = AVE_Log_GetLevelStr(4);
              }

              else
              {
                v234 = "MvStatsBuffer != __null";
                v233 = 1309;
                v229 = v85;
              }

              v86 = "%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL";
              goto LABEL_183;
            }
          }

          v10 = 0;
          v2 = v248;
          v8 = v76;
          goto LABEL_47;
        }

        v10 = 0;
        v7 = 0;
        if (v73 <= 1)
        {
          if (!v73)
          {
            if (*v4)
            {
              v193 = 0;
            }

            else
            {
              v193 = 2;
            }

            v250 = 4 * v56 * v57;
            v194 = H264VideoEncoderFrameReceiver::CreateBuffer(a1, v250, v253, *(v248 + 2552));
            v195 = CVPixelBufferGetBaseAddress(v194);
            if (!v195)
            {
              v8 = v194;
              if (AVE_Log_CheckLevel(0xDu, 4))
              {
                v200 = AVE_Log_CheckConsole(0xDu);
                v201 = AVE_GetCurrTime();
                v202 = AVE_Log_GetLevelStr(4);
                if (v200)
                {
                  printf("%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL\n", v201, 13, v202, "ProcessAndEmitLrmeStats", 1387, "MvStatsBuffer != __null", "ProcessAndEmitLrmeStats");
                  v201 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL", v201);
              }

              v10 = 0;
              v2 = v248;
              goto LABEL_278;
            }

            v196 = v195;
            v249 = v194;
            v197 = CVPixelBufferGetBytesPerRow(v194) >> 2;
            if (AVE_Log_CheckLevel(0xDu, 7))
            {
              v198 = AVE_Log_CheckConsole(0xDu);
              v243 = AVE_GetCurrTime();
              v199 = AVE_Log_GetLevelStr(7);
              if (v198)
              {
                printf("%lld %d AVE %s: OF: %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n\n", v243, 13, v199, "ProcessAndEmitLrmeStats", v56, v57, v250, v197);
                v243 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(7);
              }

              syslog(3, "%lld %d AVE %s: OF: %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n", v243, 13);
            }

            if (*(a1 + 137808) >= 23)
            {
              v203 = v196;
              v9 = 4 * v56 * v57;
              AVE_LRME_FillFSResultsBestMV(v251, v203, v250, v56, v57, v197, *v4);
              v7 = 0;
              v10 = 0;
              v2 = v248;
              v8 = v249;
              goto LABEL_245;
            }

            bzero(v196, v250);
            if (v246 >= 0x10)
            {
              v207 = 0;
              v206 = 0;
              v205 = 0;
              v204 = 0;
              v208 = v251;
              do
              {
                if (v244 >= 0x10)
                {
                  v209 = 0;
                  do
                  {
                    v210 = 0;
                    v211 = v209 + 4 * v197 * v207;
                    v212 = v208;
                    do
                    {
                      for (i = 0; i != 7; ++i)
                      {
                        if (*&v212[2 * i] < 0)
                        {
                          break;
                        }
                      }

                      v214 = &v208[16 * v210];
                      v215 = *&v214[2 * i];
                      if (v215 < 0 && v211 < v57 * v197)
                      {
                        _S0 = (v215 << v193);
                        __asm { FCVT            H0, S0 }

                        v217 = &v196[4 * v211];
                        *v217 = LOWORD(_S0);
                        _S1 = (*&v214[2 * i] << 17 >> 25 << v193);
                        __asm { FCVT            H1, S1 }

                        *(v217 + 1) = LOWORD(_S1);
                        ++v205;
                        __asm { FCMP            H0, #0 }

                        if (_ZF)
                        {
                          v219 = 0;
                        }

                        else
                        {
                          v219 = 1;
                        }

                        __asm { FCMP            H1, #0 }

                        if (!_ZF)
                        {
                          v219 = 1;
                        }

                        v206 += v219;
                      }

                      v211 += v197;
                      ++v210;
                      v212 += 16;
                    }

                    while (v210 != 4);
                    v208 += 64;
                    ++v209;
                  }

                  while (v209 != v56);
                  v204 += 4 * v56;
                }

                ++v207;
              }

              while (v207 != (v57 + 3) >> 2);
            }

            else
            {
              v204 = 0;
              v205 = 0;
              v206 = 0;
            }

            v221 = v204;
            if (AVE_Log_CheckLevel(0xDu, 7))
            {
              v222 = AVE_Log_CheckConsole(0xDu);
              v223 = AVE_GetCurrTime();
              v224 = AVE_Log_GetLevelStr(7);
              if (v222)
              {
                printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n\n", v223, 13, v224, "ProcessAndEmitLrmeStats", v221, v205, v206);
                v223 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(7);
              }

              syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n", v223);
            }

LABEL_280:
            v7 = 0;
LABEL_281:
            v10 = 0;
            v2 = v248;
            v8 = v249;
LABEL_282:
            v5 = 3758097084;
            v9 = v250;
            goto LABEL_8;
          }

          if (v73 == 1)
          {
            if (AVE_Log_CheckLevel(0xDu, 4))
            {
              v156 = AVE_Log_CheckConsole(0xDu);
              v157 = AVE_GetCurrTime();
              v158 = AVE_Log_GetLevelStr(4);
              if (v156)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path\n", v157, 13, v158, "ProcessAndEmitLrmeStats", 1443, "bVTOF == false");
                v159 = AVE_GetCurrTime();
                v231 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path", v159, 13, v231, "ProcessAndEmitLrmeStats", 1443, "bVTOF == false");
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path", v157, 13, v158, "ProcessAndEmitLrmeStats", 1443, "bVTOF == false");
              }
            }

            LODWORD(v5) = 0;
            v31 = 4294954394;
            v2 = v248;
            goto LABEL_126;
          }
        }

        else
        {
          switch(v73)
          {
            case 2:
              if (AVE_Log_CheckLevel(0x2Eu, 5))
              {
                v187 = AVE_Log_CheckConsole(0x2Eu);
                v188 = AVE_GetCurrTime();
                v189 = AVE_Log_GetLevelStr(5);
                if (v187)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_STATISTICS_ONLY is not supported\n\n", v188, 46, v189);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_STATISTICS_ONLY is not supported\n");
              }

              goto LABEL_242;
            case 3:
              if (AVE_Log_CheckLevel(0x2Eu, 5))
              {
                v190 = AVE_Log_CheckConsole(0x2Eu);
                v191 = AVE_GetCurrTime();
                v192 = AVE_Log_GetLevelStr(5);
                if (v190)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported\n\n", v191, 46, v192);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported\n");
              }

              goto LABEL_242;
            case 4:
              if (AVE_Log_CheckLevel(0x2Eu, 5))
              {
                v87 = AVE_Log_CheckConsole(0x2Eu);
                v88 = AVE_GetCurrTime();
                v89 = AVE_Log_GetLevelStr(5);
                if (v87)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported\n\n", v88, 46, v89);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported\n");
              }

LABEL_242:
              v7 = 0;
              v8 = 0;
              v9 = 0;
LABEL_243:
              v10 = 0;
              goto LABEL_244;
          }
        }

LABEL_181:
        v8 = 0;
        v9 = 0;
LABEL_244:
        v2 = v248;
LABEL_245:
        v5 = 3758097084;
        goto LABEL_8;
      }

      if (!AVE_Log_CheckLevel(3u, 4))
      {
        LODWORD(v5) = 0;
        v31 = 0;
LABEL_126:
        v29 = v252;
        goto LABEL_68;
      }

      v64 = AVE_Log_CheckConsole(3u);
      v65 = AVE_GetCurrTime();
      v66 = AVE_Log_GetLevelStr(4);
      v29 = v252;
      if (v64)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.\n", v65, 3, v66, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
        v67 = AVE_GetCurrTime();
        v228 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.", v67, 3, v228, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.", v65, 3, v66, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
      }

      LODWORD(v5) = 0;
      goto LABEL_39;
    }

    if (AVE_Log_CheckLevel(3u, 4))
    {
      v31 = AVE_Log_CheckConsole(3u);
      v47 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(4);
      if (!v31)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.", v47, 3, v48, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
        v29 = 0;
        goto LABEL_67;
      }

      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.\n", v47, 3, v48, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
      v49 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.", v49, 3, v50, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
    }

    v29 = 0;
    v31 = 0;
LABEL_67:
    LODWORD(v5) = -536870212;
    goto LABEL_68;
  }

  v7 = 0;
  v252 = 0;
  v8 = 0;
  v9 = 0;
  v10 = -536870212;
LABEL_8:
  AVE_Dump_WriteOutput(*(v4 + 185), *(v2 + 20), v7, v9);
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v11 = v2;
    v12 = AVE_Log_CheckConsole(0x2Eu);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(7);
    v15 = *(v11 + 40);
    if (v12)
    {
      printf("%lld %d AVE %s: ARK H264FrameRec:ProcessAndEmitLrmeStats %d\n", v13, 46, v14, v15);
      v16 = AVE_GetCurrTime();
      v225 = AVE_Log_GetLevelStr(7);
      v5 = 3758097084;
      syslog(3, "%lld %d AVE %s: ARK H264FrameRec:ProcessAndEmitLrmeStats %d", v16, 46, v225, *(v11 + 40));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ARK H264FrameRec:ProcessAndEmitLrmeStats %d", v13, 46, v14, v15);
    }

    v2 = v11;
  }

  if (*(v2 + 2456) != 3)
  {
    v41 = *(a1 + 29288);
    if (!v41 || (v42 = *(a1 + 29280)) == 0)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v43 = AVE_Log_CheckConsole(3u);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | OF: Session callbacks are not set properly, output will be dropped\n", v44, 3, v45, "ProcessAndEmitLrmeStats", 1522, "false");
          v46 = AVE_GetCurrTime();
          v5 = 3758097084;
          v227 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Session callbacks are not set properly, output will be dropped", v46, 3, v227, "ProcessAndEmitLrmeStats", 1522, "false");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Session callbacks are not set properly, output will be dropped", v44, 3, v45, "ProcessAndEmitLrmeStats", 1522, "false");
        }
      }

      goto LABEL_47;
    }

    v41(v42, v8, v9, v2, *(v4 + 61));
  }

  v5 = 0;
LABEL_47:
  H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, v2, 0);
  if (v8)
  {
    H264VideoEncoderFrameReceiver::DeleteBuffer(a1, v8);
  }

  v31 = v5;
  LODWORD(v5) = v10;
  v29 = v252;
LABEL_28:
  if (v253[0])
  {
    CFRelease(v253[0]);
    v253[0] = 0;
  }

  if (v29)
  {
    if (!v5)
    {
      IOSurfaceUnlock(v29, 0, 0);
    }

    CFRelease(v29);
  }

  return v31;
}

void AVE_LRME_FillFSResultsBestMV(char *a1, char *a2, size_t a3, int a4, int a5, int a6, int a7)
{
  bzero(a2, a3);
  if (a5)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = (a5 + 3) >> 2;
    if (a7)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    if (v17 <= 1)
    {
      v17 = 1;
    }

    do
    {
      if (a4)
      {
        v19 = 0;
        do
        {
          v20 = 0;
          v21 = v19 + 4 * a6 * v13;
          v22 = a1;
          do
          {
            v23 = 0;
            v24 = &a1[20 * v20];
            do
            {
              if (*&v22[2 * v23] < 0)
              {
                break;
              }

              ++v23;
            }

            while (v23 != 7);
            v25 = *&v24[2 * v23];
            if (v25 < 0 && v21 < a6 * a5)
            {
              _S0 = (v25 << v18);
              __asm { FCVT            H0, S0 }

              v31 = &a2[4 * v21];
              *v31 = LOWORD(_S0);
              _S1 = (*&v24[2 * v23] << 17 >> 25 << v18);
              __asm { FCVT            H1, S1 }

              *(v31 + 1) = LOWORD(_S1);
              ++v15;
              __asm { FCMP            H0, #0 }

              if (_ZF)
              {
                v33 = 0;
              }

              else
              {
                v33 = 1;
              }

              __asm { FCMP            H1, #0 }

              if (!_ZF)
              {
                v33 = 1;
              }

              v14 += v33;
            }

            v21 += a6;
            ++v20;
            v22 += 20;
          }

          while (v20 != 4);
          a1 += 80;
          ++v19;
        }

        while (v19 != a4);
        v16 += 4 * a4;
      }

      ++v13;
    }

    while (v13 != v17);
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v14 = 0;
  }

  if (AVE_Log_CheckLevel(0xDu, 7))
  {
    v35 = AVE_Log_CheckConsole(0xDu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v35)
    {
      printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n\n", CurrTime, 13, LevelStr, "AVE_LRME_FillFSResultsBestMV", v16, v15, v14);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n", CurrTime);
  }
}

uint64_t H264VideoEncoderFrameReceiver::SendOutputFrameDMV(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 6))
    {
      v4 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v7 = *(a2 + 40);
      v8 = *(a2 + 2568);
      if (v4)
      {
        printf("%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p\n", CurrTime, 46, LevelStr, v7, *(a1 + 29280), v8);
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p", v9, 46, v10, *(a2 + 40), *(a1 + 29280), *(a2 + 2568));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p", CurrTime, 46, LevelStr, v7, *(a1 + 29280), v8);
      }
    }

    v15 = *(a1 + 29288);
    if (v15 && (v16 = *(a1 + 29280)) != 0)
    {
      v15(v16, 0, 0, a2, *(a1 + 39468));
      v11 = 0;
    }

    else
    {
      v11 = 3758097084;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v17 = AVE_Log_CheckConsole(3u);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR:: Session callbacks are not set properly, output will be dropped\n", v18, 3, v19, "SendOutputFrameDMV", 1579, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR:: Session callbacks are not set properly, output will be dropped");
      }
    }
  }

  else
  {
    v11 = 3758097084;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v12 = AVE_Log_CheckConsole(3u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV pFrame == NULL\n", v13, 3, v14, "SendOutputFrameDMV", 1564, "pFrame != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV pFrame == NULL");
    }
  }

  H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, a2, 0);
  return v11;
}

void *H264VideoEncoderFrameReceiver::MultiPass_EnqueueStats(uint64_t a1, const void *a2)
{
  result = AVE_MultiPass::new_stats((a1 + 16));
  if (result)
  {
    v5 = result;
    memcpy(result, a2, 0x626uLL);

    return AVE_MultiPass::enqueue_first_pass((a1 + 16), v5, 0);
  }

  return result;
}

uint64_t AVE_MultiPass::new_stats(AVE_MultiPass *this)
{
  v1 = *(this + 6330);
  if (v1)
  {
    v2 = v1 - 1;
    *(this + 6330) = v2;
    return *(this + v2 + 3149);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD8u, 4))
    {
      v4 = AVE_Log_CheckConsole(0xD8u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get free spot \n", CurrTime, 216, LevelStr, "new_stats", 56, "free_pool_available > 0");
        v7 = AVE_GetCurrTime();
        v8 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get free spot ", v7, 216, v8, "new_stats", 56, "free_pool_available > 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get free spot ", CurrTime, 216, LevelStr, "new_stats", 56, "free_pool_available > 0");
      }
    }

    return 0;
  }
}

uint64_t H264VideoEncoderFrameReceiver::Emit(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, const void *a8)
{
  if (a7)
  {
    v11 = 0;
  }

  else
  {
    v16 = a8;
    if (a8)
    {
      v11 = 0;
      v17 = 0;
      v15 = 1;
      goto LABEL_11;
    }

    v11 = -12904;
  }

  if (AVE_Log_CheckLevel(0x2Eu, 5))
  {
    v12 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(5);
    if (v12)
    {
      v15 = 3;
      printf("%lld %d AVE %s: %s::%s:%d frame drop %lld %d %lld %d 0x%x %p\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "Emit", 1764, a2, a3, a6, v11, 3, 0);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(5);
    }

    else
    {
      v15 = 3;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d frame drop %lld %d %lld %d 0x%x %p", CurrTime, 46, LevelStr, "AVE_FrameRecv", "Emit", 1764, a2, a3, a6, v11, 3, 0);
    v16 = 0;
    v17 = 4294966271;
  }

  else
  {
    v16 = 0;
    v17 = 4294966271;
    v15 = 3;
  }

LABEL_11:
  kdebug_trace();
  if (a3 == 2)
  {
    v18 = VTEncoderSessionEmitEncodedTile();
  }

  else
  {
    v18 = VTEncoderSessionEmitEncodedFrame();
  }

  v19 = v18;
  kdebug_trace();
  if (v19)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x2Eu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d fail to emit %lld %d %lld %d 0x%x %p %d\n", v21, 46, v22, "AVE_FrameRecv", "Emit", 1788, a2, a3, a6, v11, v15, v16, v19);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d fail to emit %lld %d %lld %d 0x%x %p %d", v23, 46, v24, "AVE_FrameRecv", "Emit", 1788);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d fail to emit %lld %d %lld %d 0x%x %p %d", v21, 46, v22, "AVE_FrameRecv", "Emit", 1788);
      }
    }

    return 4294966283;
  }

  return v17;
}

uint64_t H264VideoEncoderFrameReceiver::DropFrame(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 29352) && (v3 = a1 + 137804, *(a1 + 137804) != 2))
  {
    v9 = a2 + 29732;
    v10 = (a1 + 39252);
    v11 = a1 + 16 * *(a2 + 40) + 139568;
    *(v11 + 8) = *(a2 + 4608);
    v12 = *(a2 + 29732);
    v13 = (a1 + 29120);
    *v11 = 0;
    *(v11 + 4) = v12;
    v14 = AVE_Log_CheckLevel(0x2Eu, 7);
    if (v14)
    {
      v15 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %d %d %d %p %d %d %d\n", CurrTime, 46, LevelStr, "DropFrame", 1824, *v10, *(a2 + 44), *(a2 + 40), *(a1 + 29112), *v13, v13[38], *(a1 + 29276));
        v18 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %p %d %d %d", v18, 46, v41, "DropFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %p %d %d %d", CurrTime, 46, LevelStr, "DropFrame");
      }
    }

    *(a1 + 29272) = -1;
    *(a1 + 29276) = 0;
    if (*v10 >= 2u && !*(a2 + 44))
    {
      *(a1 + 29277) = 1;
    }

    v21 = *(a1 + 29352);
    if (v21 == 1)
    {
      kdebug_trace();
      if (*(a1 + 29288) && *(a1 + 29280))
      {
        if (AVE_Log_CheckLevel(0x2Eu, 7))
        {
          v23 = AVE_Log_CheckConsole(0x2Eu);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(7);
          if (v23)
          {
            printf("%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes\n", v24, 46, v25, 0);
            v26 = AVE_GetCurrTime();
            v42 = AVE_Log_GetLevelStr(7);
            syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes", v26, 46, v42, 0);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes", v24, 46, v25, 0);
          }
        }

        (*(a1 + 29288))(*(a1 + 29280), 0, 0, 0, *(a1 + 39468));
      }

      else if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v27 = AVE_Log_CheckConsole(0x2Eu);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(7);
        if (v27)
        {
          printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v28, 46, v29);
          v30 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v30, 46, v43);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v28, 46, v29);
        }
      }

      kdebug_trace();
      v19 = 0;
    }

    else
    {
      v22 = H264VideoEncoderFrameReceiver::Emit(v14, *(v3 + 12), *(a1 + 39448), v21, *(a2 + 2552), *(a2 + 40), -1000, 0);
      if (v22 == -1025)
      {
        v19 = 0;
      }

      else
      {
        v19 = v22;
      }

      ++*a1;
      ++*(a1 + 8);
    }

    *(v9 + 3324) = AVE_GetCurrTime();
    AVE_SEI::DeleteFrame(*(a1 + 143696), *(a2 + 40));
    v31 = *(a2 + 3180);
    if ((v31 & 0x80000000) == 0)
    {
      if (v31 >= 0x1E)
      {
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v33 = AVE_Log_CheckConsole(0x2Eu);
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          if (v33)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v34, 46, v35, "AVE_FrameRecv", "DropFrame", 1884, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
            v34 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v34, 46);
        }

        return 4294966296;
      }

      else
      {
        v32 = *(a1 + 8 * v31 + 27072);
        if (v32)
        {
          bzero(v32, 0xBAA8uLL);
        }

        else if (AVE_Log_CheckLevel(3u, 4))
        {
          v36 = AVE_Log_CheckConsole(3u);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(4);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v37, 3, v38, "DropFrame", 1886, "codedHeader != __null");
            v39 = AVE_GetCurrTime();
            v44 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v39, 3, v44, "DropFrame", 1886, "codedHeader != __null");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v37, 3, v38, "DropFrame", 1886, "codedHeader != __null");
          }
        }
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v4 = AVE_Log_CheckConsole(0x2Eu);
      v5 = AVE_GetCurrTime();
      v6 = AVE_Log_GetLevelStr(7);
      if (v4)
      {
        printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v5, 46, v6);
        v7 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v7, 46, v40);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v5, 46, v6);
      }
    }

    return 0;
  }

  return v19;
}

__CFDictionary *H264VideoEncoderFrameReceiver::CreateTemporalLevelInfoDictionary(uint64_t a1, int *a2, int a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | TemporalLevelInfoDict == NULL\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1911, "TemporalLevelInfoDict != __null");
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | TemporalLevelInfoDict == NULL", CurrTime);
    }

    return 0;
  }

  v7 = Mutable;
  AVE_CFDict_AddSInt32(*MEMORY[0x29EDB9340], a3, Mutable);
  AVE_CFDict_AddSInt32(*MEMORY[0x29EDB9338], *a2, v7);
  v8 = *MEMORY[0x29EDB9348];
  TierFlag = HEVC_FindTierFlag(a2[1]);
  AVE_CFDict_AddSInt32(v8, TierFlag, v7);
  v10 = *MEMORY[0x29EDB9330];
  ProfileIdc = HEVC_FindProfileIdc(a2[2]);
  AVE_CFDict_AddSInt32(v10, ProfileIdc, v7);
  v12 = CFDataCreate(0, (a1 + 137776), 4);
  if (!v12)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x2Eu);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | cf_profileCompatibilityFlags == NULL\n", v22, 46, v23, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1922, "cf_profileCompatibilityFlags != __null");
        v22 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | cf_profileCompatibilityFlags == NULL", v22);
    }

    v27 = v7;
    goto LABEL_21;
  }

  v13 = v12;
  CFDictionaryAddValue(v7, *MEMORY[0x29EDB9328], v12);
  v14 = CFDataCreate(0, (a1 + 137780), 6);
  if (!v14)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v24 = AVE_Log_CheckConsole(0x2Eu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | cf_constraintIndicatorFlags == NULL\n", v25, 46, v26, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1929, "cf_constraintIndicatorFlags != __null");
        v25 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | cf_constraintIndicatorFlags == NULL", v25);
    }

    CFRelease(v7);
    v27 = v13;
LABEL_21:
    CFRelease(v27);
    return 0;
  }

  v15 = v14;
  CFDictionaryAddValue(v7, *MEMORY[0x29EDB9318], v14);
  v16 = *MEMORY[0x29EDB9320];
  LevelIdc = HEVC_FindLevelIdc(a2[15]);
  AVE_CFDict_AddSInt32(v16, LevelIdc, v7);
  CFRelease(v13);
  CFRelease(v15);
  return v7;
}

uint64_t H264VideoEncoderFrameReceiver::SendFrameMCTF(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 3180) >= 0x1Eu)
    {
      v7 = 3758097084;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v11 = AVE_Log_CheckConsole(0x2Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "SendFrameMCTF", 1969, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", CurrTime, 46, LevelStr, "AVE_FrameRecv", "SendFrameMCTF", 1969, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x2Eu, 6))
      {
        v4 = AVE_Log_CheckConsole(0x2Eu);
        v5 = AVE_GetCurrTime();
        v6 = AVE_Log_GetLevelStr(6);
        if (v4)
        {
          printf("%lld %d AVE %s: Send MCTF PlaneNumber:%d framenumber:%d %p %p\n", v5, 46, v6, *(a2 + 3180), *(a2 + 40), *(a1 + 29280), *(a2 + 2568));
          v5 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(6);
        }

        syslog(3, "%lld %d AVE %s: Send MCTF PlaneNumber:%d framenumber:%d %p %p", v5);
      }

      v14 = *(a1 + 29296);
      if (v14 && *(a1 + 29280) && *(a2 + 2568))
      {
        v14();
      }

      return 0;
    }
  }

  else
  {
    v7 = 3758097084;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v8 = AVE_Log_CheckConsole(3u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF pFrame == NULL\n", v9, 3, v10, "SendFrameMCTF", 1966, "pFrame != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF pFrame == NULL");
    }
  }

  return v7;
}

uint64_t H264VideoEncoderFrameReceiver::SendFrameGGM(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 3180) >= 0x1Eu)
    {
      v8 = 3758097084;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v12 = AVE_Log_CheckConsole(0x2Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong plane number %d\n", CurrTime, 46, LevelStr, "SendFrameGGM", 1999, "0 <= psFrame->PlaneNumber && psFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong plane number %d", CurrTime, 46, LevelStr, "SendFrameGGM", 1999, "0 <= psFrame->PlaneNumber && psFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x2Eu, 6))
      {
        v4 = AVE_Log_CheckConsole(0x2Eu);
        v5 = AVE_GetCurrTime();
        v6 = AVE_Log_GetLevelStr(6);
        if (v4)
        {
          printf("%lld %d AVE %s: %s: Send GGM frame done: plane number (%d) frame number (%d), %p %p %p\n", v5, 46, v6, "SendFrameGGM", *(a2 + 3180), *(a2 + 40), *(a1 + 29280), *(a2 + 2576), *(a2 + 2568));
          v7 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(6);
          syslog(3, "%lld %d AVE %s: %s: Send GGM frame done: plane number (%d) frame number (%d), %p %p %p", v7, 46, v16);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s: Send GGM frame done: plane number (%d) frame number (%d), %p %p %p", v5, 46, v6);
        }
      }

      if (*(a1 + 29296) && *(a1 + 29280))
      {
        kdebug_trace();
        (*(a1 + 29296))(*(a1 + 29280), a2, 0);
        kdebug_trace();
      }

      return 0;
    }
  }

  else
  {
    v8 = 3758097084;
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v9 = AVE_Log_CheckConsole(0x2Eu);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameters\n", v10, 46, v11, "SendFrameGGM", 1996, "psFrame != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameters");
    }
  }

  return v8;
}

uint64_t H264VideoEncoderFrameReceiver::SendFrame(void *a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  v739 = *MEMORY[0x29EDCA608];
  v6 = a1 + 17958;
  v7 = a1 + 17224;
  v8 = (a1 + 4868);
  v9 = a1 + 3369;
  dataLength = 0;
  v736 = 0;
  v735 = 0;
  cf = 0;
  v10 = *(a1 + 9737);
  bzero(v731, 0x948uLL);
  if (AVE_Log_CheckLevel(0x2Eu, 6))
  {
    v11 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v11)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "SendFrame", a1, v7[3], a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d", CurrTime, 46, LevelStr, "AVE_FrameRecv");
  }

  if (!a2)
  {
    v722 = 3758097084;
    v721 = v9;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v23 = AVE_Log_CheckConsole(3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (!v23)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL");
        goto LABEL_44;
      }

      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL\n", v24, 3, v25, "SendFrame", 2137, "Frame != __null");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL");
    }

LABEL_24:
    v23 = 0;
LABEL_44:
    v49 = 0;
    v31 = 0;
    goto LABEL_45;
  }

  if (*(a2 + 3180) >= 0x1Eu)
  {
    v722 = 3758097084;
    v721 = v9;
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v23 = AVE_Log_CheckConsole(0x2Eu);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      if (!v23)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v26, 46);
        goto LABEL_44;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v26, 46, v27, "AVE_FrameRecv", "SendFrame", 2140, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v28, 46);
    }

    goto LABEL_24;
  }

  v14 = a4;
  if (!a1[3669])
  {
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v43 = a2;
      v44 = AVE_Log_CheckConsole(0x2Eu);
      v45 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(7);
      if (v44)
      {
        printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v45, 46, v46);
        v47 = AVE_GetCurrTime();
        sampleSizeArrayf = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v47, 46, sampleSizeArrayf);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v45, 46, v46);
      }

      a2 = v43;
    }

    AVE_SEI::DeleteFrame(v6[4], *(a2 + 40));
    H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, a2, 0);
    return 0;
  }

  v701 = v10;
  v15 = *v8;
  v16 = a4 >= 0;
  v719 = a2;
  v720 = v7;
  v17 = a2;
  v709 = v8;
  v721 = v9;
  if ((*(v8 + 77) < 2u || *(a2 + 44)) && (v18 = *(v9 + 580), (v18 & 0x80000000) == 0) && v18 == *(a2 + 40) - 1 && a1[3639] && *(v9 + 542) >= 1)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 8))
    {
      v19 = AVE_Log_CheckConsole(0x2Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(8);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d\n", v20, 46, v21, "AVE_FrameRecv", "SendFrame", 2169, a1, v720[3], a1[3639], *(v9 + 542));
        v22 = AVE_GetCurrTime();
        sampleSizeArraye = AVE_Log_GetLevelStr(8);
        v17 = a2;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d", v22, 46, sampleSizeArraye, "AVE_FrameRecv");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d", v20, 46, v21, "AVE_FrameRecv");
      }
    }

    if (AVE_EncFrameInfo_AddBuf(a1[3639], *(v9 + 542), 1u, v731))
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v23 = AVE_Log_CheckConsole(0x2Eu);
        v200 = AVE_GetCurrTime();
        v201 = AVE_Log_GetLevelStr(4);
        v84 = v720;
        v202 = v720[3];
        v203 = *(v17 + 40);
        v204 = a1[3639];
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p\n", v200, 46, v201, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v202, v203, v204, *(v9 + 542), v731);
          v205 = AVE_GetCurrTime();
          v206 = AVE_Log_GetLevelStr(4);
          a2 = v17;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p", v205, 46, v206, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v720[3], *(v17 + 40), a1[3639], *(v9 + 542), v731);
          v23 = 0;
        }

        else
        {
          a2 = v17;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p", v200, 46, v201, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v202, v203, v204, *(v9 + 542), v731);
        }

        v49 = 0;
        v31 = 0;
        v722 = 0;
        goto LABEL_304;
      }

      v23 = 0;
      v49 = 0;
      v31 = 0;
      v722 = 0;
      a2 = v17;
LABEL_258:
      v7 = v720;
      goto LABEL_45;
    }

    v696 = *(v9 + 542);
    dataLength = v696;
    v23 = 1;
    v14 = a4;
  }

  else
  {
    v23 = 0;
    v696 = 0;
  }

  a2 = v17;
  v706 = v17 + 29688;
  v29 = v16 & v15;
  if (v14)
  {
    v30 = v16 & v15;
  }

  else
  {
    v30 = 0;
  }

  v714 = v23;
  v697 = v30;
  if (v30)
  {
    v31 = 0;
    v7 = v720;
  }

  else
  {
    AVE_SEI::SetRCMode(v6[4], *(v17 + 40), v721[719]);
    AVE_SEI::SetThroughputMode(v6[4], *(v17 + 40), v721[778]);
    AVE_SEI::SetBitrate(v6[4], *(v17 + 40), v721[720]);
    if ((*(a1 + 29819) & 0x80) != 0)
    {
      v48 = v721[718];
    }

    else
    {
      v48 = -1;
    }

    AVE_SEI::SetLookAheadInfo(v6[4], *(v17 + 40), v48);
    if (*(v8 + 131) == 2)
    {
      if (v721[758] <= 1)
      {
        v82 = v721[750] >= 3 && v721[751] > 2;
      }

      else
      {
        v82 = 1;
      }

      v93 = *(v17 + 2456);
      if (v93 > 6)
      {
        v94 = 0;
      }

      else
      {
        v94 = dword_295650DD8[v93];
      }

      AVE_SEI::SetActiveParameterSets(v6[4], *(v17 + 40), *(a1 + 14459));
      AVE_SEI::SetPictureTiming(v6[4], *(v17 + 40), v94, v82, *(v17 + 2464), *(v17 + 29728));
      AVE_SEI::SetBufferingPeriod(v6[4], *(v17 + 40), *(a1 + 14459));
      v23 = v714;
    }

    AVE_SEI::SetContentColorVolume(v6[4], *(v17 + 40));
    AVE_SEI::SetMCTFTag(v6[4], *(v17 + 40), *(v17 + 4672), *(v17 + 4656), *(v17 + 4664), *(v17 + 4680), *(v17 + 4688), *(v17 + 4708), *(v17 + 4704), *(v17 + 6116));
    v95 = AVE_SEI::EstimateSEISize(v6[4], *(v17 + 40), -1);
    v31 = malloc_type_malloc(v95, 0x100004077774924uLL);
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v712 = v31;
      v96 = a3;
      v97 = AVE_Log_CheckConsole(0xD3u);
      v98 = AVE_GetCurrTime();
      v99 = AVE_Log_GetLevelStr(8);
      if (v97)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Allocating %d bytes for SEI buffer\n", v98, 211, v99, "AVE_FrameRecv", "SendFrame", 2254, a1, v720[3], v95);
        v98 = AVE_GetCurrTime();
        v99 = AVE_Log_GetLevelStr(8);
        v23 = v714;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Allocating %d bytes for SEI buffer", v98, 211, v99, "AVE_FrameRecv", "SendFrame", 2254, a1, v720[3], v95);
      a3 = v96;
      a2 = v719;
      v31 = v712;
    }

    v7 = v720;
    if (!v31)
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        v49 = 0;
        v31 = 0;
        v722 = 3758097085;
        goto LABEL_45;
      }

      v716 = a3;
      v106 = AVE_Log_CheckConsole(3u);
      v107 = AVE_GetCurrTime();
      v108 = AVE_Log_GetLevelStr(4);
      if (v106)
      {
        v109 = v95;
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d\n", v107, 3, v108, "SendFrame", 2258, "pSEIBuffer != __null", *(a2 + 40), v95);
        v110 = AVE_GetCurrTime();
        v111 = AVE_Log_GetLevelStr(4);
        a2 = v719;
        v7 = v720;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d", v110, 3, v111, "SendFrame", 2258, "pSEIBuffer != __null", *(v719 + 40), v109);
        v49 = 0;
        v31 = 0;
        v722 = 3758097085;
LABEL_121:
        a3 = v716;
        v23 = v714;
        goto LABEL_45;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d", v107, 3, v108, "SendFrame", 2258, "pSEIBuffer != __null", *(a2 + 40), v95);
      v49 = 0;
      v31 = 0;
      v722 = 3758097085;
      v23 = v714;
      goto LABEL_258;
    }

    v722 = H264VideoEncoderFrameReceiver::AddAllSEIs(a1, a2, v31, v95, v29, a4);
    if (v722)
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        v49 = 0;
        goto LABEL_45;
      }

      v100 = v720;
      v708 = v6;
      v101 = AVE_Log_CheckConsole(3u);
      v102 = AVE_GetCurrTime();
      v103 = AVE_Log_GetLevelStr(4);
      if (v101)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d\n", v102, 3, v103, "SendFrame", 2264, "err == 0", *(a2 + 40), v722);
        v104 = AVE_GetCurrTime();
        v105 = AVE_Log_GetLevelStr(4);
        v7 = v720;
        v23 = v714;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d", v104, 3, v105, "SendFrame", 2264, "err == 0", *(a2 + 40), v722);
        v49 = 0;
LABEL_228:
        v6 = v708;
        goto LABEL_45;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d", v102, 3, v103, "SendFrame", 2264, "err == 0", *(a2 + 40), v722);
      v49 = 0;
LABEL_128:
      v6 = v708;
      goto LABEL_313;
    }

    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v112 = AVE_Log_CheckConsole(0x2Eu);
      v113 = AVE_GetCurrTime();
      v114 = AVE_Log_GetLevelStr(7);
      v115 = *(v720 + 8);
      if (v112)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer\n", v113, 46, v114, "AVE_FrameRecv", "SendFrame", 2267, a1, v720[3], v115);
        v116 = AVE_GetCurrTime();
        v117 = AVE_Log_GetLevelStr(7);
        v7 = v720;
        v23 = v714;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer", v116, 46, v117, "AVE_FrameRecv", "SendFrame", 2267, a1, v720[3], *(v720 + 8));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer", v113, 46, v114, "AVE_FrameRecv", "SendFrame", 2267, a1, v720[3], v115);
        v7 = v720;
      }
    }

    v133 = *(v7 + 8);
    if (v133 >= 1)
    {
      if (AVE_EncFrameInfo_AddBuf(v31, v133, 2u, v731))
      {
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v715 = a3;
          v134 = v7;
          v135 = AVE_Log_CheckConsole(0x2Eu);
          v136 = AVE_GetCurrTime();
          v137 = AVE_Log_GetLevelStr(4);
          v138 = v134[3];
          v139 = *(a2 + 40);
          if (!v135)
          {
            v100 = v134;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p", v136, 46, v137, "AVE_FrameRecv", "SendFrame", 2275, "ret == 0", a1, v138, v139, v31, *(v134 + 8), v731);
            v49 = 0;
            v722 = 0;
            goto LABEL_313;
          }

          v684 = *(v134 + 8);
          v89 = v6;
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p\n", v136, 46, v137, "AVE_FrameRecv", "SendFrame", 2275, "ret == 0", a1, v138, v139, v31, v684, v731);
          v90 = AVE_GetCurrTime();
          v140 = AVE_Log_GetLevelStr(4);
          v683 = *(v720 + 8);
          v687 = v731;
          v678 = *(a2 + 40);
          v681 = v31;
          v671 = a1;
          v674 = v720[3];
          v661 = 2275;
          v666 = "ret == 0";
          v23 = v714;
          v7 = v720;
          sampleSizeArray = v140;
          v92 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p";
LABEL_147:
          v6 = v89;
          syslog(3, v92, v90, 46, sampleSizeArray, "AVE_FrameRecv", "SendFrame", v661, v666, v671, v674, v678, v681, v683, v687);
LABEL_159:
          v49 = 0;
LABEL_160:
          v722 = 0;
LABEL_161:
          a3 = v715;
          goto LABEL_45;
        }

LABEL_148:
        v49 = 0;
        goto LABEL_149;
      }

      dataLength += *(v7 + 8);
    }

    v14 = a4;
  }

  allocator = v16 & v15;
  if ((v29 & 1) == 0)
  {
    v711 = v31;
    if (v721[270] >= 1)
    {
      v59 = 0;
      v60 = 0;
      memoryBlock = a1 + 7137;
      v61 = (a1 + 3503);
      v716 = a3;
      v707 = v6;
      while (1)
      {
        v62 = v61[6];
        if (v62 >= 1)
        {
          v63 = a1[*(a2 + 3180) + 3444];
          if (!v63)
          {
            if (!AVE_Log_CheckLevel(0x2Eu, 4))
            {
              goto LABEL_140;
            }

            v118 = AVE_Log_CheckConsole(0x2Eu);
            v119 = AVE_GetCurrTime();
            v120 = AVE_Log_GetLevelStr(4);
            v100 = v720;
            v121 = v720[3];
            v31 = v711;
            if (v118)
            {
              v7 = v720;
              printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d\n", v119, 46, v120, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v121, *(a2 + 3180), v60);
              v122 = AVE_GetCurrTime();
              v123 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v122, 46, v123, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v720[3], *(a2 + 3180), v60);
              v49 = 0;
              v722 = 0;
              goto LABEL_121;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v119, 46, v120, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v121, *(a2 + 3180), v60);
            v49 = 0;
            v722 = 0;
            a3 = v716;
LABEL_312:
            v23 = v714;
LABEL_313:
            v7 = v100;
            goto LABEL_45;
          }

          v64 = v61;
          v65 = a2;
          if (AVE_Log_CheckLevel(0x2Eu, 8))
          {
            v66 = AVE_Log_CheckConsole(0x2Eu);
            v67 = AVE_GetCurrTime();
            v68 = AVE_Log_GetLevelStr(8);
            v69 = v720[3];
            if (v66)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d\n", v67, 46, v68, "AVE_FrameRecv", "SendFrame", 2355, a1, v69, v60, (v63 + v59), v62);
              v70 = AVE_GetCurrTime();
              v71 = AVE_Log_GetLevelStr(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v70, 46, v71, "AVE_FrameRecv", "SendFrame", 2355, a1, v720[3], v60, (v63 + v59), v62);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v67, 46, v68, "AVE_FrameRecv", "SendFrame", 2355, a1, v69, v60, (v63 + v59), v62);
            }

            v65 = v719;
            v6 = v707;
          }

          if (AVE_EncFrameInfo_AddBuf((v63 + v59), v62, 3u, v731))
          {
            a2 = v65;
            if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v124 = (v63 + v59);
              v125 = AVE_Log_CheckConsole(0x2Eu);
              v126 = AVE_GetCurrTime();
              v127 = AVE_Log_GetLevelStr(4);
              v7 = v720;
              if (v125)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p\n", v126, 46, v127, "AVE_FrameRecv", "SendFrame", 2362, "ret == 0", a1, v720[3], *(v65 + 40), v124, v62, v731);
                v126 = AVE_GetCurrTime();
                v127 = AVE_Log_GetLevelStr(4);
                v7 = v720;
                a2 = v65;
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p", v126, 46, v127, "AVE_FrameRecv", "SendFrame", 2362, "ret == 0");
LABEL_315:
              v49 = 0;
              v722 = 0;
              a3 = v716;
LABEL_437:
              v23 = v714;
LABEL_438:
              v31 = v711;
              goto LABEL_45;
            }

LABEL_140:
            v49 = 0;
            v722 = 0;
            a3 = v716;
            v7 = v720;
            goto LABEL_437;
          }

          dataLength += v62;
          a2 = v65;
          v61 = v64;
        }

        v72 = v61[4];
        if (v72 < 1)
        {
          a3 = v716;
          v7 = v720;
        }

        else
        {
          v73 = a1[*(a2 + 3180) + 3309];
          if (!v73)
          {
            if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v128 = AVE_Log_CheckConsole(0x2Eu);
              v129 = AVE_GetCurrTime();
              v130 = AVE_Log_GetLevelStr(4);
              v7 = v720;
              v31 = v711;
              if (v128)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d\n", v129, 46, v130, "AVE_FrameRecv", "SendFrame", 2375, "m_CodedBuffPointer[Frame->PlaneNumber] != __null", a1, v720[3], *(a2 + 3180), v60);
                v131 = AVE_GetCurrTime();
                v132 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v131, 46, v132, "AVE_FrameRecv");
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v129, 46, v130, "AVE_FrameRecv");
              }

              v49 = 0;
              v722 = 0;
              a3 = v716;
              v23 = v714;
              goto LABEL_45;
            }

            goto LABEL_140;
          }

          v74 = (v73 + v61[3]);
          if (AVE_Log_CheckLevel(0x2Eu, 8))
          {
            v75 = v61;
            v76 = AVE_Log_CheckConsole(0x2Eu);
            v77 = AVE_GetCurrTime();
            v78 = AVE_Log_GetLevelStr(8);
            v79 = v720[3];
            if (v76)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d\n", v77, 46, v78, "AVE_FrameRecv", "SendFrame", 2377, a1, v79, v60, v74, v72);
              v80 = AVE_GetCurrTime();
              v81 = AVE_Log_GetLevelStr(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v80, 46, v81, "AVE_FrameRecv", "SendFrame", 2377, a1, v720[3], v60, v74, v72);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v77, 46, v78, "AVE_FrameRecv", "SendFrame", 2377, a1, v79, v60, v74, v72);
            }

            a2 = v719;
            v61 = v75;
          }

          if (AVE_EncFrameInfo_AddBuf(v74, v72, 3u, v731))
          {
            v141 = v720;
            if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v142 = AVE_Log_CheckConsole(0x2Eu);
              v143 = AVE_GetCurrTime();
              v144 = AVE_Log_GetLevelStr(4);
              v145 = v720[3];
              v146 = *(a2 + 40);
              if (v142)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p\n", v143, 46, v144, "AVE_FrameRecv", "SendFrame", 2383, "ret == 0", a1, v145, v146, v74, v72, v731);
                v147 = AVE_GetCurrTime();
                v148 = AVE_Log_GetLevelStr(4);
                v685 = v72;
                v688 = v731;
                v679 = *(a2 + 40);
                v682 = v74;
                v672 = a1;
                v675 = v720[3];
                v7 = v720;
                v662 = 2383;
                sampleSizeArraya = v148;
                v149 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p";
                goto LABEL_256;
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", v143, 46, v144, "AVE_FrameRecv", "SendFrame", 2383, "ret == 0", a1, v145, v146, v74, v72, v731);
            }

            v49 = 0;
            v722 = 0;
            a3 = v716;
            v23 = v714;
            v31 = v711;
            goto LABEL_320;
          }

          v7 = v720;
          if ((*(a2 + 9) & 1) != 0 && AVE_Crypto_AddInfo(dataLength, v72, memoryBlock))
          {
            if (!AVE_Log_CheckLevel(0x2Eu, 4))
            {
              goto LABEL_315;
            }

            v252 = AVE_Log_CheckConsole(0x2Eu);
            v253 = AVE_GetCurrTime();
            v254 = AVE_Log_GetLevelStr(4);
            if (!v252)
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", v253, 46, v254, "AVE_FrameRecv", "SendFrame", 2391, "ret == 0");
              goto LABEL_315;
            }

            printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p\n", v253, 46, v254, "AVE_FrameRecv", "SendFrame", 2391, "ret == 0", a1, v720[3], *(a2 + 40), v60, dataLength, v72, memoryBlock);
            v147 = AVE_GetCurrTime();
            v255 = AVE_Log_GetLevelStr(4);
            v688 = v72;
            v690 = a1 + 28548;
            v682 = v60;
            v685 = dataLength;
            v675 = v720[3];
            v679 = *(a2 + 40);
            v672 = a1;
            v6 = v707;
            v662 = 2391;
            v149 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p";
            sampleSizeArraya = v255;
LABEL_256:
            syslog(3, v149, v147, 46, sampleSizeArraya, "AVE_FrameRecv", "SendFrame", v662, "ret == 0", v672, v675, v679, v682, v685, v688, v690);
            goto LABEL_315;
          }

          dataLength += v72;
          LODWORD(v72) = v61[4];
          a3 = v716;
        }

        ++v60;
        v61 += 4;
        v59 += 1024;
        if (v60 >= v721[270])
        {
          goto LABEL_169;
        }
      }
    }

    LODWORD(v72) = 0;
    v61 = 0;
LABEL_169:
    v23 = v714;
    if (!dataLength)
    {
      goto LABEL_248;
    }

    goto LABEL_170;
  }

  v32 = &a1[2 * v14 + 3504] + 1;
  v33 = v32[3];
  if (v33 >= 1)
  {
    v34 = a1[*(a2 + 3180) + 3444];
    if (v34)
    {
      v715 = a3;
      v35 = (v34 + (v14 << 10));
      if (AVE_Log_CheckLevel(0x2Eu, 8))
      {
        v710 = v31;
        v36 = AVE_Log_CheckConsole(0x2Eu);
        v37 = v7;
        v38 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(8);
        if (v36)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d\n", v38, 46, v39, "AVE_FrameRecv", "SendFrame", 2297, a1, v37[3], a4, v35, v33);
          v40 = v35;
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(8);
          v23 = v714;
          blockBufferOut = v41;
          v35 = v40;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", blockBufferOut, 46, v42, "AVE_FrameRecv", "SendFrame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v38, 46, v39, "AVE_FrameRecv", "SendFrame");
        }

        v7 = v37;
        a2 = v719;
        v31 = v710;
      }

      if (AVE_EncFrameInfo_AddBuf(v35, v33, 3u, v731))
      {
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v708 = v6;
          v150 = AVE_Log_CheckConsole(0x2Eu);
          v151 = AVE_GetCurrTime();
          v152 = AVE_Log_GetLevelStr(4);
          if (v150)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p\n", v151, 46, v152, "AVE_FrameRecv", "SendFrame", 2302, "ret == 0", a1, v7[3], *(a2 + 40), v35, v33, v731);
            v153 = AVE_GetCurrTime();
            sampleSizeArrayh = AVE_Log_GetLevelStr(4);
            v23 = v714;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p", v153, 46, sampleSizeArrayh, "AVE_FrameRecv", "SendFrame", 2302, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p", v151, 46, v152, "AVE_FrameRecv", "SendFrame", 2302, "ret == 0");
          }

          v49 = 0;
          v722 = 0;
          a3 = v715;
          goto LABEL_228;
        }

        goto LABEL_159;
      }

      dataLength += v33;
      goto LABEL_163;
    }

    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v715 = a3;
      v84 = v7;
      v85 = AVE_Log_CheckConsole(0x2Eu);
      v86 = AVE_GetCurrTime();
      v87 = AVE_Log_GetLevelStr(4);
      v88 = v84[3];
      if (!v85)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v86, 46, v87, "AVE_FrameRecv", "SendFrame", 2295, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v88, *(a2 + 3180), a4);
        v49 = 0;
        v722 = 0;
LABEL_304:
        v7 = v84;
        goto LABEL_45;
      }

      v7 = v84;
      v89 = v6;
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d\n", v86, 46, v87, "AVE_FrameRecv", "SendFrame", 2295, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v88, *(a2 + 3180), a4);
      v90 = AVE_GetCurrTime();
      v91 = AVE_Log_GetLevelStr(4);
      v678 = *(a2 + 3180);
      v681 = a4;
      v671 = a1;
      v674 = v84[3];
      v661 = 2295;
      v666 = "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null";
      v23 = v714;
      sampleSizeArray = v91;
      v92 = "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d";
      goto LABEL_147;
    }

    goto LABEL_148;
  }

LABEL_163:
  v711 = v31;
  v154 = v32 + 1;
  v72 = v32[1];
  if (v72 < 1)
  {
    v61 = v32 + 1;
    goto LABEL_169;
  }

  v155 = a1[*(a2 + 3180) + 3309];
  if (!v155)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v195 = v23;
      v84 = v7;
      v196 = AVE_Log_CheckConsole(0x2Eu);
      v197 = AVE_GetCurrTime();
      v198 = AVE_Log_GetLevelStr(4);
      if (v196)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d\n", v197, 46, v198, "AVE_FrameRecv", "SendFrame", 2315, "m_CodedBuffPointer[Frame->PlaneNumber] != __null", a1, v84[3], *(a2 + 3180), a4);
        v199 = AVE_GetCurrTime();
        v195 = v714;
        sampleSizeArrayj = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v199, 46, sampleSizeArrayj, "AVE_FrameRecv");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v197, 46, v198, "AVE_FrameRecv");
      }

      v49 = 0;
      v722 = 0;
      v31 = v711;
      v23 = v195;
      goto LABEL_304;
    }

    goto LABEL_322;
  }

  v156 = (v155 + *v32);
  v61 = v32 + 1;
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v717 = a3;
    v157 = v7;
    v158 = AVE_Log_CheckConsole(0x2Eu);
    v159 = AVE_GetCurrTime();
    v160 = AVE_Log_GetLevelStr(8);
    if (v158)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d\n", v159, 46, v160, "AVE_FrameRecv", "SendFrame", 2317, a1, v157[3], a4, v156, v72);
      v161 = AVE_GetCurrTime();
      v61 = v154;
      sampleSizeArrayi = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v161, 46, sampleSizeArrayi, "AVE_FrameRecv", "SendFrame");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v159, 46, v160, "AVE_FrameRecv", "SendFrame");
    }

    a3 = v717;
    a2 = v719;
    v7 = v157;
    v23 = v714;
  }

  if (AVE_EncFrameInfo_AddBuf(v156, v72, 3u, v731))
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v708 = v6;
      v237 = AVE_Log_CheckConsole(0x2Eu);
      v238 = AVE_GetCurrTime();
      v239 = AVE_Log_GetLevelStr(4);
      v240 = v7[3];
      v241 = *(a2 + 40);
      if (!v237)
      {
        v100 = v7;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", v238, 46, v239, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v240, v241, v156, v72, v731);
        v49 = 0;
        v722 = 0;
        v6 = v708;
        v31 = v711;
        goto LABEL_312;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p\n", v238, 46, v239, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v240, v241, v156, v72, v731);
      v242 = AVE_GetCurrTime();
      v243 = AVE_Log_GetLevelStr(4);
      v23 = v714;
      a2 = v719;
      blockBufferOuta = v242;
      v7 = v720;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", blockBufferOuta, 46, v243, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v720[3], *(v719 + 40), v156, v72, v731);
      v49 = 0;
      v722 = 0;
      goto LABEL_396;
    }

    goto LABEL_322;
  }

  if ((*(a2 + 9) & 1) != 0 && AVE_Crypto_AddInfo(dataLength, v72, a1 + 7137))
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v708 = v6;
      v244 = AVE_Log_CheckConsole(0x2Eu);
      v245 = AVE_GetCurrTime();
      v246 = AVE_Log_GetLevelStr(4);
      if (v244)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p\n", v245, 46, v246, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0", a1, v7[3], *(a2 + 40), a4, dataLength, v72, a1 + 28548);
        v247 = AVE_GetCurrTime();
        sampleSizeArrayl = AVE_Log_GetLevelStr(4);
        blockBufferOutb = v247;
        a2 = v719;
        v7 = v720;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", blockBufferOutb, 46, sampleSizeArrayl, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", v245, 46, v246, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0");
      }

      v49 = 0;
      v722 = 0;
      goto LABEL_436;
    }

LABEL_322:
    v49 = 0;
LABEL_323:
    v722 = 0;
    goto LABEL_438;
  }

  dataLength += v72;
  LODWORD(v72) = *v61;
  if (!dataLength)
  {
LABEL_248:
    v722 = 3758097084;
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v248 = AVE_Log_CheckConsole(0x2Eu);
      v249 = AVE_GetCurrTime();
      v250 = AVE_Log_GetLevelStr(4);
      if (v248)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size\n", v249, 46, v250, "AVE_FrameRecv", "SendFrame", 2402, "totalSize != 0", a1, v7[3], *(a2 + 40));
        v251 = AVE_GetCurrTime();
        v23 = v714;
        sampleSizeArraym = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size", v251, 46, sampleSizeArraym, "AVE_FrameRecv");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size", v249, 46, v250, "AVE_FrameRecv");
      }
    }

    v49 = 0;
    goto LABEL_438;
  }

LABEL_170:
  if (v701 - 1 == a4)
  {
    v162 = 0;
  }

  else
  {
    v162 = allocator;
  }

  if (v162)
  {
    v691 = v162;
    v715 = a3;
    v49 = 0;
    goto LABEL_175;
  }

  v188 = v721[532];
  if (!v188)
  {
    v691 = v162;
    v49 = 0;
    goto LABEL_202;
  }

  if (-1431655765 * v188 >= 0x55555556)
  {
    if (!AVE_Log_CheckLevel(0x2Eu, 4))
    {
      goto LABEL_322;
    }

    v189 = AVE_Log_CheckConsole(0x2Eu);
    v190 = AVE_GetCurrTime();
    v191 = AVE_Log_GetLevelStr(4);
    if (!v189)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d", v190, 46, v191, "AVE_FrameRecv");
      goto LABEL_322;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d\n", v190, 46, v191, "AVE_FrameRecv", "SendFrame", 2412, "m_numCABACzeroWordToBeInserted % 3 == 0", a1, v7[3], *(a2 + 40), v721[532]);
    v192 = AVE_GetCurrTime();
    v193 = AVE_Log_GetLevelStr(4);
    v677 = *(a2 + 40);
    v680 = v721[532];
    v673 = a1;
    v676 = v7[3];
    v663 = 2412;
    v667 = "m_numCABACzeroWordToBeInserted % 3 == 0";
    v23 = v714;
    sampleSizeArrayb = v193;
    v194 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d";
LABEL_188:
    syslog(3, v194, v192, 46, sampleSizeArrayb, "AVE_FrameRecv", "SendFrame", v663, v667, v673, v676, v677, v680);
    goto LABEL_322;
  }

  if (!v61)
  {
    if (!AVE_Log_CheckLevel(0x2Eu, 4))
    {
      goto LABEL_322;
    }

    v297 = AVE_Log_CheckConsole(0x2Eu);
    v298 = AVE_GetCurrTime();
    v299 = AVE_Log_GetLevelStr(4);
    if (!v297)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld", v298, 46, v299);
      goto LABEL_322;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld\n", v298, 46, v299, "AVE_FrameRecv", "SendFrame", 2414, "piLastOutputSliceSize != __null", a1, v7[3]);
    v192 = AVE_GetCurrTime();
    v300 = AVE_Log_GetLevelStr(4);
    v673 = a1;
    v676 = v7[3];
    v663 = 2414;
    v667 = "piLastOutputSliceSize != __null";
    v23 = v714;
    sampleSizeArrayb = v300;
    v194 = "%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld";
    goto LABEL_188;
  }

  v691 = v162;
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v700 = v61;
    v233 = AVE_Log_CheckConsole(0x2Eu);
    v234 = AVE_GetCurrTime();
    v235 = AVE_Log_GetLevelStr(8);
    if (v233)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld\n", v234, 46, v235, "AVE_FrameRecv", "SendFrame", 2417, a1, v7[3], v721[532], dataLength);
      v236 = AVE_GetCurrTime();
      sampleSizeArrayk = AVE_Log_GetLevelStr(8);
      v23 = v714;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld", v236, 46, sampleSizeArrayk, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld", v234, 46, v235, "AVE_FrameRecv");
    }

    v61 = v700;
  }

  v338 = malloc_type_malloc(v721[532], 0x100004077774924uLL);
  if (!v338)
  {
    if (!AVE_Log_CheckLevel(0x2Eu, 4))
    {
      goto LABEL_322;
    }

    v342 = AVE_Log_CheckConsole(0x2Eu);
    v343 = AVE_GetCurrTime();
    v344 = AVE_Log_GetLevelStr(4);
    if (!v342)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d", v343, 46, v344, "AVE_FrameRecv");
      goto LABEL_322;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d\n", v343, 46, v344, "AVE_FrameRecv", "SendFrame", 2423, "piCABACZeroWordInsertBuf != __null", a1, v7[3], *(a2 + 3180), v721[532]);
    v192 = AVE_GetCurrTime();
    v345 = AVE_Log_GetLevelStr(4);
    v677 = *(a2 + 3180);
    v680 = v721[532];
    v673 = a1;
    v676 = v7[3];
    v663 = 2423;
    v667 = "piCABACZeroWordInsertBuf != __null";
    v23 = v714;
    sampleSizeArrayb = v345;
    v194 = "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d";
    goto LABEL_188;
  }

  v49 = v338;
  if (v721[532])
  {
    v339 = 0;
    v340 = v338 + 2;
    do
    {
      *(v340 - 1) = 0;
      *v340 = 3;
      v340 += 3;
      v339 += 3;
      v341 = v721[532];
    }

    while (v339 < v341);
  }

  else
  {
    LODWORD(v341) = 0;
  }

  if (AVE_EncFrameInfo_AddBuf(v338, v341, 4u, v731))
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v346 = v23;
      v347 = AVE_Log_CheckConsole(0x2Eu);
      v348 = a2;
      v349 = AVE_GetCurrTime();
      v350 = AVE_Log_GetLevelStr(4);
      v351 = v7[3];
      v352 = *(v348 + 40);
      if (!v347)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p", v349, 46, v350, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v351, v352, v49, v721[532], v731);
        v722 = 0;
        v31 = v711;
        a2 = v348;
        v23 = v346;
        goto LABEL_45;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p\n", v349, 46, v350, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v351, v352, v49, v721[532], v731);
      v353 = AVE_GetCurrTime();
      v354 = AVE_Log_GetLevelStr(4);
      v23 = v714;
      a2 = v719;
      v7 = v720;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p", v353, 46, v354, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v720[3], *(v719 + 40), v49, v721[532], v731);
      v722 = 0;
      goto LABEL_438;
    }

    goto LABEL_323;
  }

  v355 = v61;
  v356 = v7;
  v357 = v721;
  dataLength += v721[532];
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v358 = AVE_Log_CheckConsole(0x2Eu);
    v359 = AVE_GetCurrTime();
    v360 = AVE_Log_GetLevelStr(8);
    v361 = *v355;
    if (v358)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes\n", v359, 46, v360, "AVE_FrameRecv", "SendFrame", 2440, a1, v356[3], v361);
      v362 = AVE_GetCurrTime();
      v363 = AVE_Log_GetLevelStr(8);
      v23 = v714;
      v357 = v721;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes", v362, 46, v363, "AVE_FrameRecv", "SendFrame", 2440, a1, v356[3], *v355);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes", v359, 46, v360, "AVE_FrameRecv", "SendFrame", 2440, a1, v356[3], v361);
      v357 = v721;
    }
  }

  LODWORD(v72) = v357[532] + v72;
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v409 = AVE_Log_CheckConsole(0x2Eu);
    v410 = AVE_GetCurrTime();
    v411 = AVE_Log_GetLevelStr(8);
    v412 = v356[3];
    v413 = *v355;
    if (v409)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes\n", v410, 46, v411, "AVE_FrameRecv", "SendFrame", 2444, a1, v412, v413);
      v414 = AVE_GetCurrTime();
      v415 = AVE_Log_GetLevelStr(8);
      v23 = v714;
      blockBufferOutc = v414;
      v61 = v355;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes", blockBufferOutc, 46, v415, "AVE_FrameRecv", "SendFrame", 2444, a1, v720[3], *v355);
      a2 = v719;
      goto LABEL_202;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes", v410, 46, v411, "AVE_FrameRecv", "SendFrame", 2444, a1, v412, v413);
    a2 = v719;
  }

  else
  {
    a2 = v719;
  }

  v61 = v355;
LABEL_202:
  v715 = a3;
  if (*(v709 + 77) >= 2u && !*(a2 + 44))
  {
LABEL_175:
    v698 = v61;
    if (v709[682] != 1)
    {
      goto LABEL_179;
    }

    v163 = v697;
    if (*(v709 + 299) < 1)
    {
      v163 = 1;
    }

    if (v163)
    {
      goto LABEL_179;
    }

    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v228 = AVE_Log_CheckConsole(0x2Eu);
      v229 = AVE_GetCurrTime();
      v230 = AVE_Log_GetLevelStr(7);
      if (v228)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d\n", v229, 46, v230, "AVE_FrameRecv", "SendFrame", 2505, a1, v720[3], *(v719 + 40), a1 + 39627, *(v709 + 299));
        v231 = AVE_GetCurrTime();
        v232 = AVE_Log_GetLevelStr(7);
        v23 = v714;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d", v231, 46, v232, "AVE_FrameRecv", "SendFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d", v229, 46, v230, "AVE_FrameRecv", "SendFrame");
      }
    }

    v301 = a1 + 39627;
    if (AVE_EncFrameInfo_AddBuf(a1 + 39627, *(v709 + 299), 6u, v731))
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v302 = AVE_Log_CheckConsole(0x2Eu);
        v303 = AVE_GetCurrTime();
        v304 = AVE_Log_GetLevelStr(4);
        v305 = v720[3];
        v306 = *(v719 + 40);
        if (!v302)
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p", v303, 46, v304, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v305, v306, v301, *(v709 + 299), v731);
          v722 = 0;
          a3 = v715;
          v7 = v720;
          a2 = v719;
          v31 = v711;
          goto LABEL_45;
        }

        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p\n", v303, 46, v304, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v305, v306, v301, *(v709 + 299), v731);
        v307 = AVE_GetCurrTime();
        v308 = AVE_Log_GetLevelStr(4);
        v23 = v714;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p", v307, 46, v308, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v720[3], *(v719 + 40), v301, *(v709 + 299), v731);
        v722 = 0;
        a3 = v715;
        v7 = v720;
        a2 = v719;
        goto LABEL_438;
      }
    }

    else
    {
      dataLength += *(v709 + 299);
      if ((*(v719 + 9) & 1) == 0)
      {
        goto LABEL_179;
      }

      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v309 = AVE_Log_CheckConsole(0x2Eu);
        v310 = AVE_GetCurrTime();
        v311 = AVE_Log_GetLevelStr(7);
        v312 = v720[3];
        v313 = *(v719 + 40);
        v314 = *(v709 + 299);
        if (v309)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d\n", v310, 46, v311, "AVE_FrameRecv", "SendFrame", 2519, a1, v312, v313, v301, dataLength, v314);
          v315 = AVE_GetCurrTime();
          v316 = AVE_Log_GetLevelStr(7);
          v23 = v714;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d", v315, 46, v316, "AVE_FrameRecv", "SendFrame", 2519, a1, v720[3], *(v719 + 40), v301, dataLength, *(v709 + 299));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d", v310, 46, v311, "AVE_FrameRecv", "SendFrame", 2519, a1, v312, v313, v301, dataLength, v314);
          v23 = v714;
        }
      }

      v397 = a1 + 28548;
      if (!AVE_Crypto_AddInfo(dataLength, 0, a1 + 7137))
      {
LABEL_179:
        v708 = v6;
        v164 = dataLength;
        v165 = v721[542];
        a2 = v719;
        AVE_Crypto_PrintInfo(a1 + 7137, 46, 8, 0, *(v719 + 40));
        v166 = a1 + 3384;
        v167 = a1[*(v719 + 3180) + 3384];
        if (v167)
        {
          v702 = (v719 + 40);
          v168 = v164 - v165;
          v169 = v167 + 45320;
          v170 = &a1[9 * *(v719 + 44) + 3641];
          *v170 = *v169;
          v171 = *(v169 + 16);
          v172 = *(v169 + 32);
          v173 = *(v169 + 48);
          v170[8] = *(v169 + 64);
          *(v170 + 2) = v172;
          *(v170 + 3) = v173;
          *(v170 + 1) = v171;
          v7 = v720;
          if (AVE_Log_CheckLevel(0x2Eu, 7))
          {
            v174 = v168;
            v175 = AVE_Log_CheckConsole(0x2Eu);
            v176 = AVE_GetCurrTime();
            v177 = AVE_Log_GetLevelStr(7);
            v178 = v720[3];
            v179 = *(v709 + 77);
            v181 = *(v719 + 40);
            v180 = *(v719 + 44);
            v182 = a1[3639];
            v183 = v721[542];
            v184 = v721[580];
            v185 = *(v721 + 2324);
            if (v175)
            {
              v168 = v174;
              printf("%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld\n", v176, 46, v177, "AVE_FrameRecv", "SendFrame", 2540, a1, v178, v179, v180, v181, v182, v183, v184, v185, v174, dataLength);
              v186 = AVE_GetCurrTime();
              v187 = AVE_Log_GetLevelStr(7);
              v23 = v714;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld", v186, 46, v187, "AVE_FrameRecv", "SendFrame", 2540, a1, v720[3], *(v709 + 77), *(v719 + 44), *(v719 + 40), a1[3639], v721[542], v721[580], *(v721 + 2324), v174, dataLength);
              a2 = v719;
              v7 = v720;
            }

            else
            {
              v168 = v174;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld", v176, 46, v177, "AVE_FrameRecv", "SendFrame", 2540, a1, v178, v179, v180, v181, v182, v183, v184, v185, v174, dataLength);
              a2 = v719;
              v7 = v720;
              v23 = v714;
            }

            v166 = a1 + 3384;
          }

          a3 = v715;
          if (*(v709 + 77) < 2u || *(a2 + 44))
          {
            Buffer = H264VideoEncoderFrameReceiver::CreateBuffer(a1, dataLength, &cf, *(a2 + 2552));
            v257 = Buffer;
            v721[580] = -1;
            v258 = *(v709 + 77);
            if (v258 <= 1)
            {
              *(v721 + 2324) = 0;
            }

            if (Buffer)
            {
              goto LABEL_267;
            }

            if (AVE_Log_CheckLevel(3u, 4))
            {
              v266 = v168;
              v267 = AVE_Log_CheckConsole(3u);
              v268 = AVE_GetCurrTime();
              v269 = AVE_Log_GetLevelStr(4);
              if (v267)
              {
                printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld\n", v268, 3, v269, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v702, v266);
                v270 = AVE_GetCurrTime();
                v271 = AVE_Log_GetLevelStr(4);
                v23 = v714;
                syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld", v270, 3, v271, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v702, v266);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld", v268, 3, v269, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v702, v266);
              }

              v272 = 3758097085;
            }

            else
            {
              v272 = 3758097085;
            }

LABEL_395:
            v722 = v272;
            goto LABEL_396;
          }

          v287 = *v721;
          if (v168 > v287)
          {
            if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v288 = v168;
              v289 = AVE_Log_CheckConsole(0x2Eu);
              v290 = AVE_GetCurrTime();
              v291 = AVE_Log_GetLevelStr(4);
              v292 = v7[3];
              v293 = *(v709 + 77);
              v294 = *(a2 + 44);
              if (!v289)
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld", v290, 46, v291, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v292, v293, v294, *v721, v288);
                v722 = 4294954394;
                v6 = v708;
                v31 = v711;
                goto LABEL_161;
              }

              printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld\n", v290, 46, v291, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v292, v293, v294, *v721, v288);
              v295 = AVE_GetCurrTime();
              v296 = AVE_Log_GetLevelStr(4);
              v23 = v714;
              a3 = v715;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld", v295, 46, v296, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v7[3], *(v709 + 77), *(a2 + 44), *v721, v288);
              v722 = 4294954394;
LABEL_396:
              v6 = v708;
              goto LABEL_438;
            }

            v272 = 4294954394;
            goto LABEL_395;
          }

          v257 = a1[3639];
          if (v257 || (v257 = malloc_type_malloc(v287, 0x100004077774924uLL), (a1[3639] = v257) != 0))
          {
            v721[542] = v168;
            v721[580] = *(a2 + 40);
            v318 = *(a2 + 2456) == 3 || *(v706 + 40) == 21;
            *(v721 + 2324) = v318;
            v258 = *(v709 + 77);
LABEL_267:
            v724 = v168;
            v259 = v715;
            if (v258 >= 2)
            {
              *(v721 + 2325) = 0;
            }

            v260 = H264VideoEncoderFrameReceiver::CopyEncodedFrameIntoExternalBuffer(a1, v731, dataLength, v257);
            if (v260)
            {
              v261 = v260;
              if (AVE_Log_CheckLevel(0x2Eu, 4))
              {
                v262 = AVE_Log_CheckConsole(0x2Eu);
                v263 = AVE_GetCurrTime();
                v264 = AVE_Log_GetLevelStr(4);
                if (v262)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d\n", v263, 46, v264, "AVE_FrameRecv", "SendFrame", 2589, "ret == 0", v731, dataLength, v257, v261);
                  v265 = AVE_GetCurrTime();
                  v23 = v714;
                  sampleSizeArrayn = AVE_Log_GetLevelStr(4);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d", v265, 46, sampleSizeArrayn, "AVE_FrameRecv", "SendFrame");
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d", v263, 46, v264, "AVE_FrameRecv", "SendFrame");
                }

                v722 = 0;
                a2 = v719;
                a3 = v715;
                goto LABEL_351;
              }

              v722 = 0;
              a2 = v719;
              v7 = v720;
              v6 = v708;
              v31 = v711;
LABEL_310:
              a3 = v715;
              goto LABEL_45;
            }

            if (v698)
            {
              *v698 = v72;
            }

            if ((v691 & 1) == 0 && (*(v709 + 77) < 2u || *(v719 + 44)))
            {
              v273 = 0;
              v274 = 1;
              do
              {
                v275 = v274;
                v276 = a1 + 12 * v273 + 29084;
                if (*(v276 + 2) >= 1)
                {
                  *(v276 + 2) = 0;
                  *v276 = 0;
                }

                v274 = 0;
                v273 = 1;
              }

              while ((v275 & 1) != 0);
            }

            if (*v720)
            {
              v277 = v719;
              v278 = v166[*(v719 + 3180)];
              if (!v278)
              {
                v141 = v720;
                if (AVE_Log_CheckLevel(3u, 4))
                {
                  v368 = AVE_Log_CheckConsole(3u);
                  v369 = AVE_GetCurrTime();
                  v370 = AVE_Log_GetLevelStr(4);
                  v31 = v711;
                  if (v368)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v369, 3, v370, "SendFrame", 2616, "codedHeader != __null");
                    v371 = AVE_GetCurrTime();
                    sampleSizeArrayo = AVE_Log_GetLevelStr(4);
                    v23 = v714;
                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v371, 3, sampleSizeArrayo, "SendFrame", 2616, "codedHeader != __null");
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v369, 3, v370, "SendFrame", 2616, "codedHeader != __null");
                  }

                  v722 = 0;
                  a3 = v715;
                  v6 = v708;
                  goto LABEL_462;
                }

                v722 = 0;
                v6 = v708;
                v31 = v711;
                a2 = v719;
                v7 = v720;
                goto LABEL_310;
              }

              *(v720 + 8) = 0;
              v279 = *(v719 + 4560);
              *(v278 + 2000) = *(v719 + 4576);
              *(v278 + 1984) = v279;
              if (!*(v719 + 20))
              {
                v383 = H264VideoEncoderFrameReceiver::MultiPass_EnqueueStats(a1, (v278 + 1980));
                if (v383)
                {
                  v384 = v383;
                  memcpy((v719 + 31438), v383, 0x626uLL);
                  *(v720 + 8) = 1;
                  File = AVE_Dump_FindFile(*(v709 + 220), 4u, *(v719 + 20));
                  if (File)
                  {
                    v386 = File;
                    fseeko(File, 1574 * v384[11] + 264, 0);
                    fwrite(v384, 1uLL, 0x626uLL, v386);
                  }
                }

                else if (AVE_Log_CheckLevel(0xD8u, 6))
                {
                  v420 = AVE_Log_CheckConsole(0xD8u);
                  v421 = AVE_GetCurrTime();
                  v422 = AVE_Log_GetLevelStr(6);
                  v423 = *v702;
                  if (v420)
                  {
                    printf("%lld %d AVE %s:   F %d pMpStats NULL \n", v421, 216, v422, v423);
                    v424 = AVE_GetCurrTime();
                    sampleSizeArrays = AVE_Log_GetLevelStr(6);
                    syslog(3, "%lld %d AVE %s:   F %d pMpStats NULL ", v424, 216, sampleSizeArrays, *v702);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s:   F %d pMpStats NULL ", v421, 216, v422, v423);
                  }

                  v259 = v715;
                  v23 = v714;
                }
              }
            }

            memoryBlocka = v257;
            a2 = v719;
            if ((v691 & 1) == 0)
            {
              if (allocator)
              {
                v280 = a4;
              }

              else
              {
                v280 = 0;
              }

              H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, v719, v280);
            }

            v7 = v720;
            v6 = v708;
            v281 = v709;
            if (v711)
            {
              free(v711);
            }

            v282 = vshr_n_u32(vadd_s32(a1[3767], 0xF0000000FLL), 4uLL);
            AVE_Dump_WriteMBStats(*(v709 + 220), *(v719 + 24), a1[*(v719 + 3180) + 3224], 432 * v282.i32[0] * v282.i32[1]);
            v283 = *(v719 + 23720);
            if (v283)
            {
              AVE_Dump_WriteRecon(*(v709 + 220), v283);
            }

            a3 = v259;
            if (*(v709 + 77) >= 2u && *(v719 + 44))
            {
              v284 = &a1[2 * *(v719 + 40) + 17446];
              v285 = HIDWORD(a1[2 * *(v719 + 40) + 17446]);
              v286 = v724;
              *v284 += 8 * v724;
              v284[1] = *(v719 + 4608);
              *(v284 + 1) = v285 + *(v706 + 44);
            }

            else
            {
              v286 = v724;
              v317 = &a1[2 * *(v719 + 40) + 17446];
              *v317 = 8 * v724;
              v317[1] = *(v719 + 4608);
              *(v317 + 1) = *(v706 + 44);
            }

            AVE_Dump_WriteOutput(*(v709 + 220), *(v719 + 24), &memoryBlocka[v696], v286);
            *(v706 + 3376) = AVE_GetCurrTime();
            if (a1[3669] != 1)
            {
              if (allocator)
              {
                v722 = 0;
LABEL_542:
                v31 = 0;
                *(v706 + 3368) = AVE_GetCurrTime();
                goto LABEL_45;
              }

              v713 = a1 + 3224;
              v364 = v720;
              sampleBufferOut = 0;
              v365 = memoryBlocka;
              if ((v709[508] & 1) == 0)
              {
                LODWORD(v406) = v731[0];
                if (v731[0] >= 1)
                {
                  v693 = v49;
                  v718 = a3;
                  v407 = v733;
                  v408 = v731[0];
                  while (*(v407 - 6) != 3)
                  {
                    v407 += 4;
                    if (!--v408)
                    {
                      goto LABEL_483;
                    }
                  }

                  v427 = *v407;
                  if (*v407)
                  {
                    v428 = v721 + 274;
                    v429 = 32;
                    while (1)
                    {
                      v430 = *v428 + *(v428 - 2);
                      if (!v430)
                      {
LABEL_482:
                        LODWORD(v406) = v731[0];
                        goto LABEL_483;
                      }

                      if (AVE_Log_CheckLevel(0x2Eu, 7))
                      {
                        v431 = AVE_Log_CheckConsole(0x2Eu);
                        v432 = AVE_GetCurrTime();
                        v433 = AVE_Log_GetLevelStr(7);
                        v434 = *v427;
                        if (v431)
                        {
                          printf("%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x\n", v432, 46, v433, "AVE_FrameRecv", "SendFrame", 2827, v430, v430 - 4, *(v719 + 3180), v434);
                          v435 = AVE_GetCurrTime();
                          v436 = AVE_Log_GetLevelStr(7);
                          syslog(3, "%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x", v435, 46, v436, "AVE_FrameRecv", "SendFrame", 2827, v430, v430 - 4, *(v719 + 3180), *v427);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x", v432, 46, v433, "AVE_FrameRecv", "SendFrame", 2827, v430, v430 - 4, *(v719 + 3180), v434);
                        }
                      }

                      if (*v427 != 0x1000000)
                      {
                        break;
                      }

                      v428 += 4;
                      *v427 = bswap32(v430 - 4);
                      v427 = (v427 + v430);
                      if (!--v429)
                      {
                        goto LABEL_482;
                      }
                    }

                    if (!AVE_Log_CheckLevel(3u, 4))
                    {
                      goto LABEL_698;
                    }

                    v462 = AVE_Log_CheckConsole(3u);
                    v463 = AVE_GetCurrTime();
                    v464 = AVE_Log_GetLevelStr(4);
                    if (!v462)
                    {
                      syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)", v463);
                      goto LABEL_698;
                    }

                    printf("%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)\n", v463, 3, v464, "SendFrame", 2835, "*(uint32_t *)&pSliceAddr[0] == 0x01000000", *v427);
                    v465 = AVE_GetCurrTime();
                    v466 = AVE_Log_GetLevelStr(4);
                    v664 = "*(uint32_t *)&pSliceAddr[0] == 0x01000000";
                    v668 = *v427;
                    v660 = 2835;
                    sampleSizeArrayc = v466;
                    v467 = "%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)";
LABEL_606:
                    syslog(3, v467, v465, 3, sampleSizeArrayc, "SendFrame", v660, v664, v668);
LABEL_698:
                    v722 = 3758097085;
                    goto LABEL_516;
                  }

LABEL_483:
                  a3 = v718;
                  a2 = v719;
                  v364 = v720;
                  v6 = v708;
                  v365 = memoryBlocka;
                  if (v406 >= 1)
                  {
                    v406 = v406;
                    v437 = v733;
                    v438 = v406;
                    while (*(v437 - 6) != 5)
                    {
                      v437 += 4;
                      if (!--v438)
                      {
                        goto LABEL_386;
                      }
                    }

                    v443 = *v437;
                    if (*v437)
                    {
                      if (*(v709 + 77) < 2u || *(v719 + 44))
                      {
                        v444 = 0;
                        v445 = &v732;
                        do
                        {
                          if (*(v445 - 4) == 5)
                          {
                            v444 += *v445;
                          }

                          v445 += 4;
                          --v406;
                        }

                        while (v406);
                        v446 = v444 - 4;
                        if (AVE_Log_CheckLevel(0x2Eu, 8))
                        {
                          v447 = AVE_Log_CheckConsole(0x2Eu);
                          v448 = AVE_GetCurrTime();
                          v449 = AVE_Log_GetLevelStr(8);
                          if (v447)
                          {
                            printf("%lld %d AVE %s: %s:%d %d %p 0x%x\n", v448, 46, v449, "SendFrame", 2861, v446, v443, *v443);
                            v450 = AVE_GetCurrTime();
                            AVE_Log_GetLevelStr(8);
                            syslog(3, "%lld %d AVE %s: %s:%d %d %p 0x%x", v450, 46);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: %s:%d %d %p 0x%x", v448, 46);
                          }
                        }

                        if (*v443 == 0x1000000)
                        {
                          *v443 = bswap32(v446);
                          a3 = v718;
                          a2 = v719;
                          v364 = v720;
                          v6 = v708;
                          v365 = memoryBlocka;
                          goto LABEL_386;
                        }

                        if (!AVE_Log_CheckLevel(3u, 4))
                        {
                          goto LABEL_698;
                        }

                        v529 = AVE_Log_CheckConsole(3u);
                        v530 = AVE_GetCurrTime();
                        v531 = AVE_Log_GetLevelStr(4);
                        if (!v529)
                        {
                          syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)", v530);
                          goto LABEL_698;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)\n", v530, 3, v531, "SendFrame", 2864, "*pFillerAddr == 0x01000000", *v443);
                        v465 = AVE_GetCurrTime();
                        v532 = AVE_Log_GetLevelStr(4);
                        v664 = "*pFillerAddr == 0x01000000";
                        v668 = *v443;
                        v660 = 2864;
                        sampleSizeArrayc = v532;
                        v467 = "%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)";
                        goto LABEL_606;
                      }

                      goto LABEL_507;
                    }
                  }
                }
              }

LABEL_386:
              if (*(v709 + 77) >= 2u && !*(a2 + 44))
              {
LABEL_507:
                v693 = v49;
                v718 = a3;
                if (AVE_Log_CheckLevel(0x2Eu, 7))
                {
                  v451 = AVE_Log_CheckConsole(0x2Eu);
                  v452 = AVE_GetCurrTime();
                  v453 = AVE_Log_GetLevelStr(7);
                  if (v451)
                  {
                    printf("%lld %d AVE %s: BAIL for first layer\n", v452, 46, v453);
                    AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(7);
                  }

                  syslog(3, "%lld %d AVE %s: BAIL for first layer");
                }

                goto LABEL_515;
              }

              v366 = MEMORY[0x29EDB8ED8];
              if (*(v709 + 126) == 2)
              {
                v367 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x29EDB8ED8], v365, dataLength, a1[3664], 0, 0, dataLength, 1u, &cf);
                v722 = v367;
                if (v367)
                {
                  v7 = v364;
                  H264VideoEncoderFrameReceiver::Emit(v367, v364[3], *(v709 + 126), a1[3669], *(a2 + 2552), *(a2 + 40), 0, 0);
                  ++*a1;
                  ++a1[1];
                  goto LABEL_540;
                }
              }

              sampleTimingArray.duration.value = *(a2 + 4584);
              v387 = *(a2 + 4600);
              v388 = *(a2 + 4596);
              sampleTimingArray.duration.timescale = *(a2 + 4592);
              sampleTimingArray.duration.flags = v388;
              v389 = *(a2 + 4560);
              sampleTimingArray.duration.epoch = v387;
              sampleTimingArray.presentationTimeStamp.value = v389;
              v390 = *(a2 + 4576);
              v391 = *(a2 + 4572);
              sampleTimingArray.presentationTimeStamp.timescale = *(a2 + 4568);
              sampleTimingArray.presentationTimeStamp.flags = v391;
              v392 = a3[1];
              sampleTimingArray.presentationTimeStamp.epoch = v390;
              sampleTimingArray.decodeTimeStamp.value = v392;
              *&sampleTimingArray.decodeTimeStamp.timescale = a3[2];
              sampleTimingArray.decodeTimeStamp.epoch = a3[3];
              *&time1[0].value = *&sampleTimingArray.presentationTimeStamp.value;
              time1[0].epoch = v390;
              time2 = sampleTimingArray.decodeTimeStamp;
              if (!CMTimeCompare(time1, &time2) && !v721[750])
              {
                sampleTimingArray.decodeTimeStamp = **&MEMORY[0x29EDB9398];
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v393 = AVE_Log_CheckConsole(0x2Eu);
                  v394 = AVE_GetCurrTime();
                  v395 = AVE_Log_GetLevelStr(8);
                  if (v393)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID\n", v394, 46, v395);
                    v396 = AVE_GetCurrTime();
                    sampleSizeArrayq = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID", v396, 46, sampleSizeArrayq);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID", v394, 46, v395);
                  }

                  a2 = v719;
                  v364 = v720;
                  v6 = v708;
                }
              }

              if (AVE_Log_CheckLevel(0x33u, 7))
              {
                v468 = AVE_Log_CheckConsole(0x33u);
                v469 = AVE_GetCurrTime();
                v470 = AVE_Log_GetLevelStr(7);
                v471 = v364[3];
                v472 = *(a2 + 40);
                if (v468)
                {
                  printf("%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld\n", v469, 51, v470, "SendFrame", 2931, v471, v472, sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value, sampleTimingArray.presentationTimeStamp.timescale, sampleTimingArray.presentationTimeStamp.flags, sampleTimingArray.presentationTimeStamp.epoch, *(a2 + 4608), *(a2 + 4616), sampleTimingArray.duration.value, sampleTimingArray.duration.timescale, sampleTimingArray.duration.flags, sampleTimingArray.duration.epoch);
                  v473 = AVE_GetCurrTime();
                  v474 = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v473, 51, v474, "SendFrame", 2931, v364[3], *(a2 + 40), sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v469, 51, v470, "SendFrame", 2931, v471, v472, sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value);
                }

                v6 = v708;
              }

              allocatora = *v366;
              v475 = CMSampleBufferCreate(*v366, cf, 1u, 0, 0, a1[3670], 1, 1, &sampleTimingArray, 1, &dataLength, &sampleBufferOut);
              v476 = AVE_Log_CheckLevel(0x2Eu, 7);
              if (v476)
              {
                v477 = AVE_Log_CheckConsole(0x2Eu);
                v478 = AVE_GetCurrTime();
                v479 = AVE_Log_GetLevelStr(7);
                v480 = a1[3670];
                if (v477)
                {
                  printf("%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p\n", v478, 46, v479, v475, sampleBufferOut, v480);
                  v481 = AVE_GetCurrTime();
                  v482 = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p", v481, 46, v482, v475, sampleBufferOut, a1[3670]);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p", v478, 46, v479, v475, sampleBufferOut, v480);
                }
              }

              v722 = v475;
              if (v475)
              {
                v7 = v364;
                H264VideoEncoderFrameReceiver::Emit(v476, v364[3], *(v709 + 126), a1[3669], *(a2 + 2552), *(a2 + 40), 0, 0);
                ++*a1;
LABEL_539:
                ++a1[1];
LABEL_540:
                v23 = v714;
                if (sampleBufferOut)
                {
                  CFRelease(sampleBufferOut);
                }

                goto LABEL_542;
              }

              v693 = v49;
              v718 = a3;
              v483 = v721[758];
              v484 = *(a2 + 2456);
              v725 = (a2 + 4756);
              if (v484 == 3)
              {
                v485 = *(a2 + 6112);
              }

              else
              {
                if (*(v706 + 40) == 21)
                {
                  v486 = 1;
                }

                else if (*(v709 + 77) < 2u)
                {
                  v486 = 0;
                }

                else
                {
                  v486 = *(v721 + 2324);
                }

                if (v484 == 2)
                {
                  v485 = 1;
                }

                else
                {
                  v485 = *(a2 + 6112);
                  if ((v725[1356] & 1) == 0 && v483 >= 2)
                  {
                    v485 = v484 == 1 && *(v706 + 36) == v483 - 1;
                  }
                }

                if ((v486 & 1) == 0)
                {
                  v487 = 0;
                  v488 = 0;
                  v489 = v484 == 0;
LABEL_559:
                  if (AVE_Log_CheckLevel(0x2Eu, 7))
                  {
                    v490 = AVE_Log_CheckConsole(0x2Eu);
                    v491 = AVE_GetCurrTime();
                    v492 = AVE_Log_GetLevelStr(7);
                    v493 = *(v719 + 2456);
                    if (v490)
                    {
                      printf("%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d\n", v491, 46, v492, v493, v488, v489);
                      v494 = AVE_GetCurrTime();
                      sampleSizeArrayv = AVE_Log_GetLevelStr(7);
                      syslog(3, "%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d", v494, 46, sampleSizeArrayv, *(v719 + 2456), v488, v489);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d", v491, 46, v492, v493, v488, v489);
                    }
                  }

                  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sampleBufferOut, 1u);
                  ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
                  if (!ValueAtIndex)
                  {
                    Mutable = AVE_Log_CheckLevel(0x2Eu, 4);
                    if (Mutable)
                    {
                      v506 = AVE_Log_CheckConsole(0x2Eu);
                      v507 = AVE_GetCurrTime();
                      v508 = AVE_Log_GetLevelStr(4);
                      if (v506)
                      {
                        printf("%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.\n", v507, 46, v508, "SendFrame", 3376);
                        v509 = AVE_GetCurrTime();
                        sampleSizeArrayw = AVE_Log_GetLevelStr(4);
                        syslog(3, "%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.", v509, 46, sampleSizeArrayw, "SendFrame", 3376);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.", v507, 46, v508, "SendFrame", 3376);
                      }
                    }

                    goto LABEL_644;
                  }

                  v497 = ValueAtIndex;
                  v498 = MEMORY[0x29EDB8F00];
                  if ((v487 & 1) == 0)
                  {
                    CFDictionarySetValue(ValueAtIndex, *MEMORY[0x29EDB9388], *MEMORY[0x29EDB8F00]);
                  }

                  v499 = MEMORY[0x29EDB8EF8];
                  if (v489)
                  {
                    v500 = MEMORY[0x29EDB8EF8];
                  }

                  else
                  {
                    v500 = v498;
                  }

                  CFDictionarySetValue(v497, *MEMORY[0x29EDB9358], *v500);
                  if (v485)
                  {
                    CFDictionarySetValue(v497, *MEMORY[0x29EDB9380], *v499);
                  }

                  if (AVE_Log_CheckLevel(0x2Eu, 7))
                  {
                    v501 = AVE_Log_CheckConsole(0x2Eu);
                    v502 = AVE_GetCurrTime();
                    v503 = AVE_Log_GetLevelStr(7);
                    if (v501)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d IsHierarchical %d\n", v502, 46, v503, "AVE_FrameRecv", "SendFrame", 2999, v721[758] > 1);
                      v504 = AVE_GetCurrTime();
                      AVE_Log_GetLevelStr(7);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d IsHierarchical %d", v504);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d IsHierarchical %d", v502);
                    }
                  }

                  Mutable = AVE_Log_CheckLevel(0x2Eu, 7);
                  if (Mutable)
                  {
                    v510 = AVE_Log_CheckConsole(0x2Eu);
                    v511 = AVE_GetCurrTime();
                    v512 = AVE_Log_GetLevelStr(7);
                    v513 = *(v719 + 40);
                    v514 = *(v706 + 40);
                    if (v510)
                    {
                      printf("%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d\n", v511, 46, v512, v513, *(v719 + 2456), v514);
                      v515 = AVE_GetCurrTime();
                      v516 = AVE_Log_GetLevelStr(7);
                      syslog(3, "%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d", v515, 46, v516, *(v719 + 40), *(v719 + 2456), *(v706 + 40));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d", v511, 46, v512, v513, *(v719 + 2456), v514);
                    }
                  }

                  if (v483 >= 2)
                  {
                    memcpy(time1, a1 + 7176, 0x1ACuLL);
                    TemporalLevelInfoDictionary = H264VideoEncoderFrameReceiver::CreateTemporalLevelInfoDictionary(a1, time1, *(v706 + 36));
                    if (TemporalLevelInfoDictionary)
                    {
                      v518 = TemporalLevelInfoDictionary;
                      CFDictionarySetValue(v497, *MEMORY[0x29EDB9370], TemporalLevelInfoDictionary);
                      CFRelease(v518);
                    }

                    v519 = *MEMORY[0x29EDB8F00];
                    v520 = *v499;
                    if ((*(v706 + 40) & 0xFFFFFFFE) == 2)
                    {
                      v521 = *MEMORY[0x29EDB8F00];
                    }

                    else
                    {
                      v521 = *v499;
                    }

                    CFDictionarySetValue(v497, *MEMORY[0x29EDB9378], v521);
                    if ((*(v706 + 40) & 0xFFFFFFFE) == 4)
                    {
                      v522 = v519;
                    }

                    else
                    {
                      v522 = v520;
                    }

                    CFDictionarySetValue(v497, *MEMORY[0x29EDB9360], v522);
                  }

                  if (*(v709 + 131) == 2 && (*(v706 + 40) - 19) <= 2)
                  {
                    Mutable = CFNumberCreate(allocatora, kCFNumberSInt32Type, (v706 + 40));
                    if (Mutable)
                    {
                      v523 = Mutable;
                      if (AVE_Log_CheckLevel(0x2Eu, 7))
                      {
                        v524 = AVE_Log_CheckConsole(0x2Eu);
                        v525 = AVE_GetCurrTime();
                        v526 = AVE_Log_GetLevelStr(7);
                        v527 = *v702;
                        if (v524)
                        {
                          printf("%lld %d AVE %s: H264FrameRec: F %d NUT CRA\n", v525, 46, v526, v527);
                          v528 = AVE_GetCurrTime();
                          sampleSizeArrayx = AVE_Log_GetLevelStr(7);
                          syslog(3, "%lld %d AVE %s: H264FrameRec: F %d NUT CRA", v528, 46, sampleSizeArrayx, *v702);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: H264FrameRec: F %d NUT CRA", v525, 46, v526, v527);
                        }
                      }

                      CFDictionarySetValue(v497, *MEMORY[0x29EDB9368], v523);
                      CFRelease(v523);
                    }
                  }

                  if ((v721[760] & 2) != 0)
                  {
                    if (*v706 == 1)
                    {
                      Mutable = CFNumberCreate(allocatora, kCFNumberIntType, v702);
                      if (Mutable)
                      {
                        v533 = Mutable;
                        CFDictionarySetValue(v497, *MEMORY[0x29EDBD158], Mutable);
                        CFRelease(v533);
                      }
                    }

                    if (*(v706 + 48) == 1 && *(v709 + 161) != 1)
                    {
                      CFDictionarySetValue(v497, *MEMORY[0x29EDBD150], *MEMORY[0x29EDB8F00]);
                    }
                  }

                  if ((*(a1 + 30147) & 8) == 0)
                  {
LABEL_619:
                    if (*(v720 + 4) >= 17 && (v721[615] & 0x3C0) != 0)
                    {
                      Mutable = CFNumberCreate(allocatora, kCFNumberSInt32Type, (v719 + 6116));
                      if (Mutable)
                      {
                        v534 = Mutable;
                        CFDictionarySetValue(v497, *MEMORY[0x29EDBD160], Mutable);
                        CFRelease(v534);
                      }
                    }

                    if (*(v719 + 9))
                    {
                      v535 = AVE_Crypto_Make(a1 + 28548, v497);
                      bzero(a1 + 28548, 0x214uLL);
                      if (v535)
                      {
                        if (AVE_Log_CheckLevel(0x2Eu, 4))
                        {
                          v536 = AVE_Log_CheckConsole(0x2Eu);
                          v537 = AVE_GetCurrTime();
                          v538 = AVE_Log_GetLevelStr(4);
                          if (v536)
                          {
                            printf("%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d\n", v537, 46, v538, "AVE_FrameRecv", "SendFrame", 3116, "ret == 0", a1, v720[3], *(v719 + 8), v497, v535);
                            v539 = AVE_GetCurrTime();
                            sampleSizeArrayy = AVE_Log_GetLevelStr(4);
                            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d", v539, 46, sampleSizeArrayy, "AVE_FrameRecv", "SendFrame", 3116);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d", v537, 46, v538, "AVE_FrameRecv", "SendFrame", 3116);
                          }
                        }

LABEL_515:
                        v722 = 0;
LABEL_516:
                        v31 = 0;
LABEL_517:
                        a3 = v718;
                        a2 = v719;
                        v7 = v720;
                        v6 = v708;
                        v23 = v714;
                        v49 = v693;
                        goto LABEL_45;
                      }
                    }

                    v549 = *(v709 + 161);
                    if (v549 > 36)
                    {
                      if ((v549 - 37) >= 2 && v549 != 10000)
                      {
                        goto LABEL_644;
                      }

                      goto LABEL_640;
                    }

                    if (v549)
                    {
                      if (v549 != 1)
                      {
                        if (v549 != 20)
                        {
                          goto LABEL_644;
                        }

LABEL_640:
                        LODWORD(time1[0].value) = *(v706 + 172);
                        Mutable = CFNumberCreate(0, kCFNumberSInt32Type, time1);
                        if (Mutable)
                        {
                          v550 = Mutable;
                          v551 = *MEMORY[0x29EDBD148];
LABEL_642:
                          CFDictionarySetValue(v497, v551, v550);
LABEL_643:
                          CFRelease(v550);
                        }

LABEL_644:
                        if (*v720 && *(v720 + 8) == 1 && (Mutable = CFDataCreateMutable(allocatora, 0)) != 0)
                        {
                          v552 = Mutable;
                          CFDataAppendBytes(Mutable, (v719 + 31438), 1574);
                          if (AVE_Log_CheckLevel(0x2Eu, 7))
                          {
                            v553 = AVE_Log_CheckConsole(0x2Eu);
                            v554 = AVE_GetCurrTime();
                            v555 = AVE_Log_GetLevelStr(7);
                            v556 = *(v719 + 20);
                            if (v556 >= 2)
                            {
                              v556 = 2;
                            }

                            if (v553)
                            {
                              printf("%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d\n", v554, 46, v555, v556);
                              v557 = AVE_GetCurrTime();
                              v558 = AVE_Log_GetLevelStr(7);
                              v559 = *(v719 + 20);
                              if (v559 >= 2)
                              {
                                v559 = 2;
                              }

                              syslog(3, "%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d", v557, 46, v558, v559);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d", v554, 46, v555, v556);
                            }
                          }

                          v586 = *(v706 + 1754);
                          v587 = *(v706 + 1770);
                          v588 = *(v706 + 1762);
                          if (AVE_Log_CheckLevel(0xD8u, 7))
                          {
                            v589 = AVE_Log_CheckConsole(0xD8u);
                            v590 = AVE_GetCurrTime();
                            v591 = AVE_Log_GetLevelStr(7);
                            if (v589)
                            {
                              printf("%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld\n", v590, 216, v591, *(v719 + 4560), *(v719 + 4568), *(v719 + 4572), *(v719 + 4576));
                              v592 = AVE_GetCurrTime();
                              AVE_Log_GetLevelStr(7);
                              syslog(3, "%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v592);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v590);
                            }
                          }

                          time1[0].value = v586;
                          *&time1[0].timescale = v588;
                          time1[0].epoch = v587;
                          v722 = VTMultiPassStorageSetDataAtTimeStamp();
                          if (v722 && AVE_Log_CheckLevel(0x2Eu, 4))
                          {
                            v593 = AVE_Log_CheckConsole(0x2Eu);
                            v594 = AVE_GetCurrTime();
                            v595 = AVE_Log_GetLevelStr(4);
                            if (v593)
                            {
                              printf("%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...\n", v594, 46, v595);
                              v596 = AVE_GetCurrTime();
                              sampleSizeArrayz = AVE_Log_GetLevelStr(4);
                              syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v596, 46, sampleSizeArrayz);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v594, 46, v595);
                            }
                          }

                          CFRelease(v552);
                        }

                        else
                        {
                          v722 = 0;
                        }

                        a2 = v719;
                        v7 = v720;
                        v560 = H264VideoEncoderFrameReceiver::Emit(Mutable, v720[3], *(v709 + 126), a1[3669], *(v719 + 2552), *(v719 + 40), 0, sampleBufferOut);
                        ++*a1;
                        a3 = v718;
                        v6 = v708;
                        v49 = v693;
                        if (!v560)
                        {
                          goto LABEL_540;
                        }

                        goto LABEL_539;
                      }

                      v573 = MEMORY[0x29EDB9000];
                      v574 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                      v575 = CFArrayCreateMutable(0, 0, v573);
                      v576 = (v706 + 68);
                      v577 = 4;
                      do
                      {
                        AVE_CFArray_AddSInt64(*v576, v574);
                        AVE_CFArray_AddSInt64(*(v576 - 4), v575);
                        ++v576;
                        --v577;
                      }

                      while (v577);
                      CFDictionarySetValue(v497, *MEMORY[0x29EDBD180], v574);
                      if (v574)
                      {
                        CFRelease(v574);
                      }

                      CFDictionarySetValue(v497, *MEMORY[0x29EDBD188], v575);
                      if (v575)
                      {
                        CFRelease(v575);
                      }

                      v578 = *(v709 + 131);
                      if (v578 == 2)
                      {
                        v597 = MEMORY[0x29EDB9000];
                        v598 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                        v599 = CFArrayCreateMutable(0, 0, v597);
                        v581 = CFArrayCreateMutable(0, 0, v597);
                        v600 = (v706 + 124);
                        v601 = 4;
                        do
                        {
                          AVE_CFArray_AddSInt64(*(v600 - 8), v598);
                          AVE_CFArray_AddSInt64(*(v600 - 4), v599);
                          v602 = *v600++;
                          AVE_CFArray_AddSInt64(v602, v581);
                          --v601;
                        }

                        while (v601);
                        CFDictionarySetValue(v497, *MEMORY[0x29EDBD1A0], v598);
                        if (v598)
                        {
                          CFRelease(v598);
                        }

                        CFDictionarySetValue(v497, *MEMORY[0x29EDBD198], v599);
                        if (v599)
                        {
                          CFRelease(v599);
                        }

                        v585 = @"NumberOfSkipped8x8Blocks";
                      }

                      else
                      {
                        if (v578 != 1)
                        {
                          v722 = 3758097084;
                          if (AVE_Log_CheckLevel(3u, 4))
                          {
                            v616 = AVE_Log_CheckConsole(3u);
                            v617 = AVE_GetCurrTime();
                            v618 = AVE_Log_GetLevelStr(4);
                            if (v616)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.\n", v617, 3, v618, "SendFrame", 3247, "false", *(v709 + 131));
                              v619 = AVE_GetCurrTime();
                              AVE_Log_GetLevelStr(4);
                              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.", v619);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.", v617);
                            }
                          }

                          goto LABEL_516;
                        }

                        v579 = MEMORY[0x29EDB9000];
                        v580 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                        v581 = CFArrayCreateMutable(0, 0, v579);
                        v582 = (v706 + 124);
                        v583 = 4;
                        do
                        {
                          AVE_CFArray_AddSInt64(*(v582 - 8), v580);
                          v584 = *v582++;
                          AVE_CFArray_AddSInt64(v584, v581);
                          --v583;
                        }

                        while (v583);
                        CFDictionarySetValue(v497, *MEMORY[0x29EDBD1A8], v580);
                        if (v580)
                        {
                          CFRelease(v580);
                        }

                        v585 = *MEMORY[0x29EDBD1B0];
                      }

                      CFDictionarySetValue(v497, v585, v581);
                      if (v581)
                      {
                        CFRelease(v581);
                      }

                      v603 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                      for (i = 0; i != 16; i += 4)
                      {
                        AVE_CFArray_AddSInt64(*(v719 + 29828 + i), v603);
                      }

                      if (v603)
                      {
                        CFDictionarySetValue(v497, *MEMORY[0x29EDBD178], v603);
                        CFRelease(v603);
                      }

                      v605 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                      for (j = 0; j != 16; j += 4)
                      {
                        Mutable = AVE_CFArray_AddSInt64(*(v719 + 29844 + j), v605);
                      }

                      if (v605)
                      {
                        CFDictionarySetValue(v497, @"SliceDataLength", v605);
                        CFRelease(v605);
                      }

                      if (!v721[802] || *(v709 + 131) != 1)
                      {
LABEL_738:
                        if (*v725 == 1)
                        {
                          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                          if (Mutable)
                          {
                            v550 = Mutable;
                            if (!AVE_DPB_MakeSnapshot((v719 + 3184), Mutable))
                            {
                              CFDictionarySetValue(v497, *MEMORY[0x29EDBD1B8], v550);
                              v625 = *(v719 + 23728);
                              if ((v625 & 0x8000) != 0)
                              {
                                v626 = v708[3];
                                if (v626)
                                {
                                  AVE_VCP::ChromaFilter(v626, v550, *(v719 + 40), *(v719 + 4764));
                                  v625 = *(v719 + 23728);
                                }
                              }

                              if ((v625 & 0x10000) != 0)
                              {
                                v627 = v708[3];
                                if (v627)
                                {
                                  AVE_VCP::CalcChecksum(v627, v550, *v702, v497);
                                }
                              }
                            }

                            goto LABEL_643;
                          }
                        }

                        goto LABEL_644;
                      }

                      v607 = v713[*(v719 + 3180)];
                      if (v607)
                      {
                        v608 = v721[796];
                        v609 = v721[797];
                        Mutable = CFDataCreateMutable(allocatora, 0);
                        if (Mutable)
                        {
                          v610 = Mutable;
                          v611 = 432 * ((v608 + 15) >> 4) * ((v609 + 15) >> 4);
                          CFDataAppendBytes(Mutable, v607, v611);
                          if (AVE_Log_CheckLevel(0x2Eu, 7))
                          {
                            v612 = AVE_Log_CheckConsole(0x2Eu);
                            v613 = AVE_GetCurrTime();
                            v614 = AVE_Log_GetLevelStr(7);
                            if (v612)
                            {
                              printf("%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out\n", v613, 46, v614, v611);
                              v615 = AVE_GetCurrTime();
                              sampleSizeArrayba = AVE_Log_GetLevelStr(7);
                              syslog(3, "%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out", v615, 46, sampleSizeArrayba, v611);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out", v613, 46, v614, v611);
                            }
                          }

                          CFDictionarySetValue(v497, @"MBStatistics", v610);
                          CFRelease(v610);
                        }

                        goto LABEL_738;
                      }

                      v722 = 3758097084;
                      if (!AVE_Log_CheckLevel(3u, 4))
                      {
                        goto LABEL_516;
                      }

                      v620 = AVE_Log_CheckConsole(3u);
                      v621 = AVE_GetCurrTime();
                      v622 = AVE_Log_GetLevelStr(4);
                      if (v620)
                      {
                        v623 = 3281;
LABEL_735:
                        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: stat = NULL.\n", v621, 3, v622, "SendFrame", v623, "stat != __null");
                        AVE_GetCurrTime();
                        AVE_Log_GetLevelStr(4);
                      }
                    }

                    else
                    {
                      if (!v721[802] || *(v709 + 131) != 1 || *(v709 + 132) != 1)
                      {
                        goto LABEL_644;
                      }

                      v564 = v713[*(v719 + 3180)];
                      if (v564)
                      {
                        v565 = v721[796];
                        v566 = v721[797];
                        Mutable = CFDataCreateMutable(allocatora, 0);
                        if (!Mutable)
                        {
                          goto LABEL_644;
                        }

                        v550 = Mutable;
                        v567 = 432 * ((v565 + 15) >> 4) * ((v566 + 15) >> 4);
                        CFDataAppendBytes(Mutable, v564, v567);
                        if (AVE_Log_CheckLevel(0x2Eu, 7))
                        {
                          v568 = AVE_Log_CheckConsole(0x2Eu);
                          v569 = AVE_GetCurrTime();
                          v570 = AVE_Log_GetLevelStr(7);
                          if (v568)
                          {
                            printf("%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n\n", v569, 46, v570, *(v709 + 132), v567);
                            v571 = AVE_GetCurrTime();
                            v572 = AVE_Log_GetLevelStr(7);
                            syslog(3, "%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n", v571, 46, v572, *(v709 + 132), v567);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n", v569, 46, v570, *(v709 + 132), v567);
                          }
                        }

                        v551 = @"MBStatistics";
                        goto LABEL_642;
                      }

                      v722 = 3758097084;
                      if (!AVE_Log_CheckLevel(3u, 4))
                      {
                        goto LABEL_516;
                      }

                      v624 = AVE_Log_CheckConsole(3u);
                      v621 = AVE_GetCurrTime();
                      v622 = AVE_Log_GetLevelStr(4);
                      if (v624)
                      {
                        v623 = 3340;
                        goto LABEL_735;
                      }
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: stat = NULL.");
                    goto LABEL_516;
                  }

                  v540 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                  if (v540)
                  {
                    v541 = v540;
                    Dict = AVE_MSE_MakeDict(a1 + 3641, *(v709 + 77), v540);
                    if (!Dict)
                    {
                      CFDictionarySetValue(v497, @"QualityMetrics", v541);
                      CFRelease(v541);
                      goto LABEL_619;
                    }

                    v543 = Dict;
                    if (AVE_Log_CheckLevel(0x2Eu, 4))
                    {
                      v544 = AVE_Log_CheckConsole(0x2Eu);
                      v545 = AVE_GetCurrTime();
                      v546 = AVE_Log_GetLevelStr(4);
                      if (!v544)
                      {
                        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d", v545, 46);
                        goto LABEL_695;
                      }

                      printf("%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d\n", v545, 46, v546, "AVE_FrameRecv", "SendFrame", 3085, "ret == 0", v543);
                      v547 = AVE_GetCurrTime();
                      v669 = "ret == 0";
                      v670 = v543;
                      v665 = 3085;
                      sampleSizeArrayd = AVE_Log_GetLevelStr(4);
                      v548 = "%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d";
                      goto LABEL_660;
                    }
                  }

                  else if (AVE_Log_CheckLevel(0x2Eu, 4))
                  {
                    v561 = AVE_Log_CheckConsole(0x2Eu);
                    v562 = AVE_GetCurrTime();
                    v563 = AVE_Log_GetLevelStr(4);
                    if (!v561)
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary", v562);
                      goto LABEL_695;
                    }

                    printf("%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary\n", v562, 46, v563, "AVE_FrameRecv", "SendFrame", 3081, "pMSEDict != __null");
                    v547 = AVE_GetCurrTime();
                    v665 = 3081;
                    v669 = "pMSEDict != __null";
                    sampleSizeArrayd = AVE_Log_GetLevelStr(4);
                    v548 = "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary";
LABEL_660:
                    syslog(3, v548, v547, 46, sampleSizeArrayd, "AVE_FrameRecv", "SendFrame", v665, v669, v670);
                  }

LABEL_695:
                  v31 = 0;
                  v722 = 4294966293;
                  goto LABEL_517;
                }
              }

              v487 = 1;
              v488 = 1;
              v489 = 1;
              goto LABEL_559;
            }

            if (!a1[3661] || !a1[3660])
            {
              if (AVE_Log_CheckLevel(0x2Eu, 7))
              {
                v379 = AVE_Log_CheckConsole(0x2Eu);
                v380 = AVE_GetCurrTime();
                v381 = AVE_Log_GetLevelStr(7);
                if (v379)
                {
                  printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v380, 46, v381);
                  v382 = AVE_GetCurrTime();
                  sampleSizeArrayp = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v382, 46, sampleSizeArrayp);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v380, 46, v381);
                }

                v722 = 0;
                v23 = v714;
              }

              else
              {
                v722 = 0;
              }

LABEL_495:
              H264VideoEncoderFrameReceiver::DeleteBuffer(a1, memoryBlocka);
              bzero(a1 + 28548, 0x214uLL);
              goto LABEL_542;
            }

            memset(time1, 0, 32);
            if (*(v709 + 77) < 2u || *(v719 + 44))
            {
              if (allocator)
              {
                v334 = 0;
                v335 = -1;
                v336 = -1;
                v337 = a4;
              }

              else
              {
                v335 = *(v719 + 4560);
                v336 = *(v719 + 4568);
                v337 = -1;
                v334 = *(v719 + 23720);
              }

              time1[0].value = *v702;
              *&time1[0].timescale = v337;
              time1[0].epoch = v335;
              time1[1].value = v336;
              *&time1[1].timescale = v334;
              if (*v720)
              {
                v425 = v286;
                v426 = v49;
                if (*(v720 + 8) == 1)
                {
                  if (!*(v719 + 20) && (v454 = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0)) != 0 && (v455 = v454, CFDataAppendBytes(v454, (v719 + 31438), 1574), v456 = *(v706 + 1770), sampleTimingArray.duration.value = *(v706 + 1754), *&sampleTimingArray.duration.timescale = *(v706 + 1762), sampleTimingArray.duration.epoch = v456, v457 = VTMultiPassStorageSetDataAtTimeStamp(), CFRelease(v455), v722 = v457, v457))
                  {
                    if (AVE_Log_CheckLevel(0x2Eu, 4))
                    {
                      v458 = AVE_Log_CheckConsole(0x2Eu);
                      v459 = AVE_GetCurrTime();
                      v460 = AVE_Log_GetLevelStr(4);
                      if (v458)
                      {
                        printf("%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...\n", v459, 46, v460);
                        v461 = AVE_GetCurrTime();
                        sampleSizeArrayu = AVE_Log_GetLevelStr(4);
                        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v461, 46, sampleSizeArrayu);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v459, 46, v460);
                      }
                    }
                  }

                  else
                  {
                    v722 = 0;
                  }

                  a2 = v719;
                  v7 = v720;
                  v6 = v708;
                }

                else
                {
                  v722 = 0;
                }

                v49 = v426;
                v281 = v709;
              }

              else
              {
                v425 = v286;
                v722 = 0;
              }

              if (AVE_Log_CheckLevel(0x2Eu, 7))
              {
                v439 = AVE_Log_CheckConsole(0x2Eu);
                v440 = AVE_GetCurrTime();
                v441 = AVE_Log_GetLevelStr(7);
                if (v439)
                {
                  printf("%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes\n", v440, 46, v441, memoryBlocka, v425);
                  v442 = AVE_GetCurrTime();
                  sampleSizeArrayt = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes", v442, 46, sampleSizeArrayt, memoryBlocka, v425);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes", v440, 46, v441, memoryBlocka, v425);
                }
              }

              kdebug_trace();
              (a1[3661])(a1[3660], memoryBlocka, dataLength, time1, *(v281 + 131));
              ++*a1;
              kdebug_trace();
              v23 = v714;
              goto LABEL_495;
            }

            v31 = 0;
LABEL_149:
            v722 = 0;
            goto LABEL_45;
          }

          if (!AVE_Log_CheckLevel(0x2Eu, 4))
          {
            v722 = 4294954394;
LABEL_351:
            v7 = v720;
            goto LABEL_396;
          }

          v416 = AVE_Log_CheckConsole(0x2Eu);
          v417 = AVE_GetCurrTime();
          v418 = AVE_Log_GetLevelStr(4);
          if (v416)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d\n", v417, 46, v418, "AVE_FrameRecv", "SendFrame", 2571, "m_sMVBuf.pBuf != __null", a1[3639], *v702);
            v419 = AVE_GetCurrTime();
            sampleSizeArrayr = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d", v419, 46, sampleSizeArrayr);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d", v417, 46, v418);
          }

          v722 = 4294954394;
          a2 = v719;
          a3 = v715;
LABEL_402:
          v7 = v720;
LABEL_436:
          v6 = v708;
          goto LABEL_437;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          v722 = 0;
          a3 = v715;
          v6 = v708;
          v31 = v711;
          goto LABEL_258;
        }

        v223 = AVE_Log_CheckConsole(3u);
        v224 = AVE_GetCurrTime();
        v225 = AVE_Log_GetLevelStr(4);
        v6 = v708;
        v31 = v711;
        if (v223)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v224, 3, v225, "SendFrame", 2536, "codedHeader != __null");
          v226 = AVE_GetCurrTime();
          v227 = AVE_Log_GetLevelStr(4);
          a2 = v719;
          v7 = v720;
          v23 = v714;
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v226, 3, v227, "SendFrame", 2536, "codedHeader != __null");
          goto LABEL_160;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v224, 3, v225, "SendFrame", 2536, "codedHeader != __null");
        v722 = 0;
        a3 = v715;
LABEL_430:
        a2 = v719;
        v7 = v720;
        goto LABEL_45;
      }

      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v398 = v6;
        v399 = AVE_Log_CheckConsole(0x2Eu);
        v400 = AVE_GetCurrTime();
        v401 = AVE_Log_GetLevelStr(4);
        v402 = v720[3];
        v403 = *(v719 + 40);
        if (v399)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p\n", v400, 46, v401, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v402, v403, dataLength, v397);
          v404 = AVE_GetCurrTime();
          v405 = AVE_Log_GetLevelStr(4);
          v23 = v714;
          a2 = v719;
          v7 = v720;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p", v404, 46, v405, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v720[3], *(v719 + 40), dataLength, a1 + 28548);
          v722 = 0;
          a3 = v715;
          v6 = v398;
          goto LABEL_438;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p", v400, 46, v401, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v402, v403, dataLength, v397);
        v722 = 0;
        a3 = v715;
        v6 = v398;
        goto LABEL_429;
      }
    }

    v722 = 0;
    a3 = v715;
LABEL_429:
    v31 = v711;
    goto LABEL_430;
  }

  v708 = v6;
  v207 = 0;
  v208 = a1 + 29084;
  v209 = &v736;
  v210 = 1;
  v699 = v61;
  while (1)
  {
    v211 = v210;
    v212 = &v208[12 * v207];
    v213 = v212[7];
    if (v213 < 1 || *(v212 + 2) < 1)
    {
      goto LABEL_218;
    }

    if (!v61)
    {
      if (!AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v722 = 0;
        a3 = v715;
        v6 = v708;
        v23 = v714;
        goto LABEL_429;
      }

      v319 = AVE_Log_CheckConsole(0x2Eu);
      v320 = AVE_GetCurrTime();
      v321 = AVE_Log_GetLevelStr(4);
      v100 = v720;
      v23 = v714;
      v31 = v711;
      if (v319)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i\n", v320, 46, v321, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v720[3], v207);
        v322 = AVE_GetCurrTime();
        v323 = AVE_Log_GetLevelStr(4);
        v7 = v720;
        a2 = v719;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i", v322, 46, v323, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v720[3], v207);
        v722 = 0;
        a3 = v715;
        goto LABEL_228;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i", v320, 46, v321, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v720[3], v207);
      v722 = 0;
      a3 = v715;
      a2 = v719;
      goto LABEL_128;
    }

    v703 = *(v212 + 2);
    v723 = v210;
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v214 = AVE_Log_CheckConsole(0x2Eu);
      v692 = AVE_GetCurrTime();
      v215 = AVE_Log_GetLevelStr(7);
      v216 = v720[3];
      v217 = v212[7];
      if (v214)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld\n", v692, 46, v215, "AVE_FrameRecv", "SendFrame", 2467, a1, v216, v207, v217, *(v212 + 2), dataLength);
        v218 = AVE_GetCurrTime();
        v219 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld", v218, 46, v219, "AVE_FrameRecv", "SendFrame", 2467, a1, v720[3], v207, v212[7], *(v212 + 2), dataLength);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld", v692, 46, v215, "AVE_FrameRecv", "SendFrame", 2467, a1, v216, v207, v217, *(v212 + 2), dataLength);
      }

      v61 = v699;
    }

    v220 = v212[7];
    if (v220 >= 2)
    {
      if (AVE_EncFrameInfo_AddBuf(v212, v220 - 1, 5u, v731))
      {
        break;
      }
    }

    v221 = malloc_type_malloc(*(v212 + 2) + 1, 0x100004077774924uLL);
    *v209 = v221;
    if (!v221)
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v324 = AVE_Log_CheckConsole(0x2Eu);
        v325 = AVE_GetCurrTime();
        v326 = AVE_Log_GetLevelStr(4);
        v141 = v720;
        v31 = v711;
        if (v324)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d\n", v325, 46, v326, "AVE_FrameRecv", "SendFrame", 2483, "piFillerBuf[i] != __null", a1, v720[3], *(v719 + 3180), v207, *(v212 + 2));
          v327 = AVE_GetCurrTime();
          v328 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d", v327, 46, v328, "AVE_FrameRecv", "SendFrame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d", v325, 46, v326, "AVE_FrameRecv", "SendFrame");
        }

        v722 = 0;
        a3 = v715;
        v6 = v708;
        a2 = v719;
        v23 = v714;
        goto LABEL_320;
      }

      goto LABEL_401;
    }

    v222 = v221;
    memset(v221, 255, *(v212 + 2));
    v222[*(v212 + 2)] = 0x80;
    if (AVE_EncFrameInfo_AddBuf(v222, *(v212 + 2) + 1, 5u, v731))
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v329 = AVE_Log_CheckConsole(0x2Eu);
        v330 = AVE_GetCurrTime();
        v331 = AVE_Log_GetLevelStr(4);
        if (v329)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p\n", v330, 46, v331, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0", a1, v720[3], *(v719 + 40), v207, v222, *(v212 + 2), v731);
          v332 = AVE_GetCurrTime();
          v333 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p", v332, 46, v333, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p", v330, 46, v331, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0");
        }

        v722 = 0;
        a2 = v719;
        a3 = v715;
        v7 = v720;
        goto LABEL_436;
      }

      goto LABEL_401;
    }

    dataLength += (v703 + v213);
    v208 = a1 + 29084;
    v211 = v723;
LABEL_218:
    v210 = 0;
    v209 = &v735;
    v207 = 1;
    if ((v211 & 1) == 0)
    {
      v6 = v708;
      v23 = v714;
      goto LABEL_175;
    }
  }

  if (!AVE_Log_CheckLevel(0x2Eu, 4))
  {
LABEL_401:
    v722 = 0;
    a3 = v715;
    a2 = v719;
    goto LABEL_402;
  }

  v372 = AVE_Log_CheckConsole(0x2Eu);
  v373 = AVE_GetCurrTime();
  v374 = AVE_Log_GetLevelStr(4);
  v141 = v720;
  v375 = v720[3];
  v277 = v719;
  v376 = *(v719 + 40);
  if (v372)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p\n", v373, 46, v374, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v375, v376, v207, v212, v212[7], v731);
    v377 = AVE_GetCurrTime();
    v378 = AVE_Log_GetLevelStr(4);
    v689 = v212[7];
    v686 = v212;
    a2 = v719;
    v7 = v720;
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p", v377, 46, v378, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v720[3], *(v719 + 40), v207, v686, v689, v731);
    v722 = 0;
    a3 = v715;
    goto LABEL_436;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p", v373, 46, v374, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v375, v376, v207, v212, v212[7], v731);
  v722 = 0;
  a3 = v715;
  v6 = v708;
  v23 = v714;
  v31 = v711;
LABEL_462:
  a2 = v277;
LABEL_320:
  v7 = v141;
LABEL_45:
  AVE_SEI::DeleteFrame(v6[4], *(a2 + 40));
  if (v31)
  {
    free(v31);
  }

  if (v23)
  {
    v721[542] = 0;
  }

  *(v6 + 4) = 0;
  if (*v6)
  {
    H264VideoEncoderFrameReceiver::DeleteBuffer(a1, *v6);
    *v6 = 0;
  }

  v50 = v6[1];
  if (v50)
  {
    CFRelease(v50);
    v6[1] = 0;
  }

  v51 = &v736;
  v52 = 1;
  v53 = v722;
  do
  {
    v54 = v52;
    if (*v51)
    {
      free(*v51);
      *v51 = 0;
    }

    v52 = 0;
    v51 = &v735;
  }

  while ((v54 & 1) != 0);
  if (v49)
  {
    free(v49);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v55 = AVE_Log_CheckConsole(0x2Eu);
    v56 = AVE_GetCurrTime();
    v57 = AVE_Log_GetLevelStr(7);
    if (v55)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d\n", v56, 46, v57, "AVE_FrameRecv", "SendFrame", a1, v7[3], a2, a3, a4, v722);
      v58 = AVE_GetCurrTime();
      sampleSizeArrayg = AVE_Log_GetLevelStr(7);
      v53 = v722;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d", v58, 46, sampleSizeArrayg, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d", v56, 46, v57, "AVE_FrameRecv");
    }
  }

  return v53;
}

uint64_t AVE_EncFrameInfo_AddBuf(const void *a1, int a2, unsigned int a3, unsigned int *a4)
{
  if (a1 && a2 >= 1 && a4)
  {
    v7 = *a4;
    if (v7 < 0x4A)
    {
      result = 0;
      v9 = &a4[8 * v7];
      v9[2] = a3;
      *(v9 + 2) = a1;
      v9[6] = a2;
      *a4 = v7 + 1;
      return result;
    }

    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d\n", CurrTime, 46, LevelStr, "AVE_EncFrameInfo_AddBuf", 2098, "0 <= psEncFrameInfo->iNum && psEncFrameInfo->iNum < (2 * ((32) < (256) ? (32) : (256)) + 10)", a1, a2, a4, *a4);
        v16 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d", v16, 46, v18, "AVE_EncFrameInfo_AddBuf");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d", CurrTime, 46, LevelStr, "AVE_EncFrameInfo_AddBuf");
      }
    }
  }

  else if (AVE_Log_CheckLevel(0x2Eu, 4))
  {
    v10 = AVE_Log_CheckConsole(0x2Eu);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v11, 46, v12, "AVE_EncFrameInfo_AddBuf", 2093, "(pBuf != __null) && (iSize > 0) && (psEncFrameInfo != __null)", a1, a2, a4);
      v11 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
    }

    else
    {
      v17 = v12;
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v11, 46, v17);
  }

  return 4294966295;
}

uint64_t H264VideoEncoderFrameReceiver::Recv(H264VideoEncoderFrameReceiver *this, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v8 = a2;
  if (this)
  {
    H264VideoEncoderFrameReceiver::FrameDone(this, a2, a3, a4, a5);
    return 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v10 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d\n", CurrTime, 46, LevelStr, "Recv", 3528, "pCtx != __null", 0, v8, a3, v6, v5);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d", v13, 46, v14);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d", CurrTime, 46, LevelStr);
      }
    }

    return 4294966295;
  }
}

void H264VideoEncoderFrameReceiver::FrameDone(H264VideoEncoderFrameReceiver *this, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = this + 137804;
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v10 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d %d\n", CurrTime, 46, LevelStr, "FrameDone", a2, a3, a4, a5);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d %d", CurrTime);
  }

  if (!*(this + 3666) || !*(v9 + 1))
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x2Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d\n", v18, 46, v19, "FrameDone", 3558, "m_pcDAL != __null && m_DeviceType != AVE_DevType_None", *(this + 3666), *(v9 + 1));
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d", v18, 46, v19, "FrameDone", 3558, "m_pcDAL != __null && m_DeviceType != AVE_DevType_None", *(this + 3666), *(v9 + 1));
    }

    goto LABEL_348;
  }

  if (a2 != -1023)
  {
    if (!a2)
    {
      goto LABEL_22;
    }

    if (a2 != -1004)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v20 = AVE_Log_CheckConsole(3u);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: commandResult != kIOReturnSuccess.\n", v21, 3, v22, "FrameDone", 3568, "result == 0");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: commandResult != kIOReturnSuccess.");
      }

      goto LABEL_348;
    }
  }

  if (AVE_Log_CheckLevel(0x2Eu, 4))
  {
    v13 = AVE_Log_CheckConsole(0x2Eu);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources\n", v14, 46, v15);
      v16 = AVE_GetCurrTime();
      v331 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources", v16, 46, v331);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources", v14, 46, v15);
    }
  }

LABEL_22:
  v363 = (this + 137792);
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v23 = a5;
    v24 = AVE_Log_CheckConsole(0x2Eu);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(7);
    if (v24)
    {
      printf("%lld %d AVE %s: \nH264FrameRec: counter received = %d\n", v25, 46, v26, a4);
      v27 = AVE_GetCurrTime();
      v332 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: \nH264FrameRec: counter received = %d", v27, 46, v332, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: \nH264FrameRec: counter received = %d", v25, 46, v26, a4);
    }

    a5 = v23;
  }

  v368[0] = 0;
  AVE_DAL::Idx2Addr(*(this + 3666), a4, v368);
  v28 = v368[0];
  kdebug_trace();
  v367 = v28;
  v29 = *(v28 + 4);
  v364 = a5;
  v365 = a4;
  if (v29 <= 6)
  {
    if (v29 == 5)
    {
      if (a2 != -1023 && a2 != -1004)
      {
        v357 = a2;
        if (AVE_Log_CheckLevel(0x2Eu, 7))
        {
          v59 = AVE_Log_CheckConsole(0x2Eu);
          v60 = AVE_GetCurrTime();
          v61 = AVE_Log_GetLevelStr(7);
          if (v59)
          {
            printf("%lld %d AVE %s: %s:%d DataType_INIT counter %d frame %d\n", v60, 46, v61, "FrameDone", 3788, a4, *(v28 + 40));
            v60 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d DataType_INIT counter %d frame %d", v60);
        }

        v356 = v9;
        v215 = 0;
        v216 = v28 + 2620;
        v217 = (this + 26712);
        do
        {
          v218 = *(v216 + 4 * v215);
          if (v218)
          {
            v219 = IOSurfaceLookup(v218);
            *v217 = v219;
            IOSurfaceLock(v219, 0, 0);
            *(v217 - 30) = IOSurfaceGetBaseAddress(*v217);
            *(this + v215 + 6738) = IOSurfaceGetAllocSize(*v217);
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v220 = AVE_Log_CheckConsole(0x2Eu);
              v221 = AVE_GetCurrTime();
              v222 = AVE_Log_GetLevelStr(7);
              v223 = *(v216 + 4 * v215);
              v224 = *(v217 - 30);
              if (v220)
              {
                printf("%lld %d AVE %s: %s:%d CodedData %d %d %p %p\n", v221, 46, v222, "FrameDone", 3802, v215, v223, *v217, v224);
                v225 = AVE_GetCurrTime();
                v226 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s:%d CodedData %d %d %p %p", v225, 46, v226, "FrameDone", 3802, v215, *(v216 + 4 * v215), *v217, *(v217 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d CodedData %d %d %p %p", v221, 46, v222, "FrameDone", 3802, v215, v223, *v217, v224);
              }
            }
          }

          ++v215;
          ++v217;
        }

        while (v215 != 30);
        v227 = (v367 + 2740);
        v228 = (this + 27312);
        v229 = -30;
        do
        {
          if (*v227)
          {
            v230 = IOSurfaceLookup(*v227);
            *v228 = v230;
            IOSurfaceLock(v230, 0, 0);
            *(v228 - 30) = IOSurfaceGetBaseAddress(*v228);
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v231 = AVE_Log_CheckConsole(0x2Eu);
              v232 = AVE_GetCurrTime();
              v233 = AVE_Log_GetLevelStr(7);
              v234 = *v227;
              v235 = *(v228 - 30);
              if (v231)
              {
                printf("%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p\n", v232, 46, v233, "FrameDone", 3818, v229 + 30, v234, *v228, v235);
                v236 = AVE_GetCurrTime();
                v237 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p", v236, 46, v237, "FrameDone", 3818, v229 + 30, *v227, *v228, *(v228 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p", v232, 46, v233, "FrameDone", 3818, v229 + 30, v234, *v228, v235);
              }
            }
          }

          ++v228;
          ++v227;
          v238 = __CFADD__(v229++, 1);
        }

        while (!v238);
        v239 = (v367 + 2860);
        v240 = (this + 27792);
        v241 = -30;
        do
        {
          if (*v239)
          {
            v242 = IOSurfaceLookup(*v239);
            *v240 = v242;
            IOSurfaceLock(v242, 0, 0);
            *(v240 - 30) = IOSurfaceGetBaseAddress(*v240);
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v243 = AVE_Log_CheckConsole(0x2Eu);
              v244 = AVE_GetCurrTime();
              v245 = AVE_Log_GetLevelStr(7);
              v246 = *v239;
              v247 = *(v240 - 30);
              if (v243)
              {
                printf("%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p\n", v244, 46, v245, "FrameDone", 3834, v241 + 30, v246, *v240, v247);
                v248 = AVE_GetCurrTime();
                v249 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p", v248, 46, v249, "FrameDone", 3834, v241 + 30, *v239, *v240, *(v240 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p", v244, 46, v245, "FrameDone", 3834, v241 + 30, v246, *v240, v247);
              }
            }
          }

          ++v240;
          ++v239;
          v238 = __CFADD__(v241++, 1);
        }

        while (!v238);
        v250 = (v367 + 2980);
        v251 = (this + 26032);
        v252 = -30;
        do
        {
          if (*v250)
          {
            v253 = IOSurfaceLookup(*v250);
            *v251 = v253;
            IOSurfaceLock(v253, 0, 0);
            *(v251 - 30) = IOSurfaceGetBaseAddress(*v251);
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v254 = AVE_Log_CheckConsole(0x2Eu);
              v255 = AVE_GetCurrTime();
              v256 = AVE_Log_GetLevelStr(7);
              v257 = *v250;
              v258 = *(v251 - 30);
              if (v254)
              {
                printf("%lld %d AVE %s: %s:%d MBStats %d %d %p %p\n", v255, 46, v256, "FrameDone", 3850, v252 + 30, v257, *v251, v258);
                v259 = AVE_GetCurrTime();
                v260 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s:%d MBStats %d %d %p %p", v259, 46, v260, "FrameDone", 3850, v252 + 30, *v250, *v251, *(v251 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d MBStats %d %d %p %p", v255, 46, v256, "FrameDone", 3850, v252 + 30, v257, *v251, v258);
              }
            }
          }

          ++v251;
          ++v250;
          v238 = __CFADD__(v252++, 1);
        }

        while (!v238);
        v261 = 0;
        v262 = v367 + 3100;
        do
        {
          v263 = *(v262 + 4 * v261);
          if (v263)
          {
            *(this + v261 + 6598) = v263;
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v264 = AVE_Log_CheckConsole(0x2Eu);
              v265 = AVE_GetCurrTime();
              v266 = AVE_Log_GetLevelStr(7);
              v267 = *(v262 + 4 * v261);
              if (v264)
              {
                printf("%lld %d AVE %s: %s:%d iaLFSResult %d %d\n", v265, 46, v266, "FrameDone", 3864, v261, v267);
                v268 = AVE_GetCurrTime();
                v269 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s:%d iaLFSResult %d %d", v268, 46, v269, "FrameDone", 3864, v261, *(v262 + 4 * v261));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d iaLFSResult %d %d", v265, 46, v266, "FrameDone", 3864, v261, v267);
              }
            }
          }

          ++v261;
        }

        while (v261 != 10);
        v270 = 0;
        v271 = v367 + 3140;
        do
        {
          v272 = *(v271 + 4 * v270);
          if (v272)
          {
            *(this + v270 + 6608) = v272;
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v273 = AVE_Log_CheckConsole(0x2Eu);
              v274 = AVE_GetCurrTime();
              v275 = AVE_Log_GetLevelStr(7);
              v276 = *(v271 + 4 * v270);
              if (v273)
              {
                printf("%lld %d AVE %s: %s:%d iaLRSResult %d %d\n", v274, 46, v275, "FrameDone", 3876, v270, v276);
                v277 = AVE_GetCurrTime();
                v278 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s:%d iaLRSResult %d %d", v277, 46, v278, "FrameDone", 3876, v270, *(v271 + 4 * v270));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d iaLRSResult %d %d", v274, 46, v275, "FrameDone", 3876, v270, v276);
              }
            }
          }

          ++v270;
        }

        while (v270 != 10);
        *(this + 9735) = *(v367 + 4624);
        v9 = v356;
        a2 = v357;
      }

      AVE_DAL::Free(*(this + 3666), v367);
      v362 = -1;
      goto LABEL_104;
    }

    v30 = a2;
    if (v29 == 6)
    {
      v39 = v9;
      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v40 = AVE_Log_CheckConsole(0x2Eu);
        v41 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(7);
        v43 = *(v9 + 12);
        if (v40)
        {
          printf("%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld \n", v41, 46, v42, *(v28 + 40), v43);
          v44 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld ", v44, 46, v45, *(v28 + 40), *(v9 + 12));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld ", v41, 46, v42, *(v28 + 40), v43);
        }
      }

      v86 = this + 26032;
      v87 = 30;
      do
      {
        if (*v86)
        {
          IOSurfaceUnlock(*v86, 0, 0);
          CFRelease(*v86);
          *v86 = 0;
        }

        v88 = *(v86 + 85);
        if (v88)
        {
          IOSurfaceUnlock(v88, 0, 0);
          CFRelease(*(v86 + 85));
          *(v86 + 85) = 0;
        }

        v89 = *(v86 + 160);
        if (v89)
        {
          IOSurfaceUnlock(v89, 0, 0);
          CFRelease(*(v86 + 160));
          *(v86 + 160) = 0;
        }

        v90 = *(v86 + 220);
        if (v90)
        {
          IOSurfaceUnlock(v90, 0, 0);
          CFRelease(*(v86 + 220));
          *(v86 + 220) = 0;
        }

        v86 += 8;
        --v87;
      }

      while (v87);
      AVE_DAL::Free(*(this + 3666), v367);
      v362 = -1;
      v9 = v39;
      goto LABEL_103;
    }

    goto LABEL_51;
  }

  v30 = a2;
  v31 = this + 25784;
  if (v29 == 10)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v46 = AVE_Log_CheckConsole(0x2Eu);
      v47 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(7);
      v49 = *(v28 + 40);
      if (v46)
      {
        printf("%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d\n", v47, 46, v48, v49);
        v50 = AVE_GetCurrTime();
        v333 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d", v50, 46, v333, *(v28 + 40));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d", v47, 46, v48, v49);
      }
    }

    if (*v363)
    {
      AVE_MultiPass::FlushStats((this + 16), *v363, 0);
    }

    *v31 = 0;
    if (*(this + 3670))
    {
      FigFormatDescriptionRelease();
      *(this + 3670) = 0;
    }

    goto LABEL_62;
  }

  if (v29 == 8)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v51 = v30;
      v52 = AVE_Log_CheckConsole(0x2Eu);
      v53 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(7);
      v55 = *(v28 + 40);
      v56 = *(v9 + 12);
      if (v52)
      {
        printf("%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld\n", v53, 46, v54, v55, v365, v56);
        v57 = AVE_GetCurrTime();
        v58 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld", v57, 46, v58, *(v28 + 40), v365, *(v9 + 12));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld", v53, 46, v54, v55, v365, v56);
      }

      v30 = v51;
    }

LABEL_62:
    AVE_DAL::Free(*(this + 3666), v28);
LABEL_63:
    v362 = -1;
LABEL_103:
    a2 = v30;
    goto LABEL_104;
  }

  if (v29 != 7)
  {
LABEL_51:
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v62 = AVE_Log_CheckConsole(0x2Eu);
      v63 = AVE_GetCurrTime();
      v64 = AVE_Log_GetLevelStr(4);
      v65 = *(v28 + 4);
      if (v62)
      {
        printf("%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame\n", v63, 46, v64, v65);
        v66 = AVE_GetCurrTime();
        v334 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v66, 46, v334, *(v28 + 4));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v63, 46, v64, v65);
      }
    }

    goto LABEL_63;
  }

  v360 = a3;
  v32 = this + 38944;
  *(v28 + 33080) = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v33 = a5;
    v34 = a4;
    v35 = v30;
    v36 = AVE_Log_CheckConsole(0x2Eu);
    v37 = AVE_GetCurrTime();
    v38 = AVE_Log_GetLevelStr(7);
    if (v36)
    {
      printf("%lld %d AVE %s: H264FrameRec: DataType_YUV frame %d type %d ClientID %lld counter %d\n", v37, 46, v38, *(v28 + 40), *(v28 + 2456), *(v9 + 12), v34);
      v37 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_YUV frame %d type %d ClientID %lld counter %d", v37);
    v30 = v35;
    LODWORD(a4) = v34;
    a5 = v33;
    v32 = this + 38944;
  }

  if (!*(v28 + 40))
  {
    *(this + 3665) = *(v28 + 4608);
  }

  if (*(v32 + 77) >= 2u && *(v28 + 44) && *(this + 29277) == 1)
  {
    *(v28 + 2456) = 4;
  }

  v67 = *v9;
  if (*v9 == 5)
  {
    v76 = H264VideoEncoderFrameReceiver::SendOutputFrameDMV(this, v28);
    AVE_DAL::Free(*(this + 3666), v28);
    if (v76)
    {
      a3 = v360;
      LODWORD(a5) = v364;
      a2 = v30;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v77 = AVE_Log_CheckConsole(3u);
        v78 = AVE_GetCurrTime();
        v79 = AVE_Log_GetLevelStr(4);
        if (v77)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV failed.\n", v78, 3, v79, "FrameDone", 3629, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          a3 = v360;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV failed.");
      }

      goto LABEL_344;
    }

LABEL_86:
    v362 = -1;
    a3 = v360;
    goto LABEL_103;
  }

  if (v67 == 4)
  {
    v72 = H264VideoEncoderFrameReceiver::SendFrameGGM(this, v28);
    AVE_DAL::Free(*(this + 3666), v28);
    if (v72)
    {
      a3 = v360;
      LODWORD(a5) = v364;
      a2 = v30;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v73 = AVE_Log_CheckConsole(0x2Eu);
        v74 = AVE_GetCurrTime();
        v75 = AVE_Log_GetLevelStr(4);
        if (v73)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to send GGM frame done\n", v74, 46, v75, "FrameDone", 3620, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          a3 = v360;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to send GGM frame done");
      }

      goto LABEL_344;
    }

    goto LABEL_86;
  }

  if (v67 == 3)
  {
    v68 = H264VideoEncoderFrameReceiver::SendFrameMCTF(this, v28);
    AVE_DAL::Free(*(this + 3666), v28);
    if (v68)
    {
      a3 = v360;
      LODWORD(a5) = v364;
      a2 = v30;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v69 = AVE_Log_CheckConsole(3u);
        v70 = AVE_GetCurrTime();
        v71 = AVE_Log_GetLevelStr(4);
        if (v69)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF failed.\n", v70, 3, v71, "FrameDone", 3613, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          a3 = v360;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF failed.");
      }

      goto LABEL_344;
    }

    goto LABEL_86;
  }

  v80 = *(v28 + 2456);
  if (v80 >= 4)
  {
    if (v80 == 4)
    {
      a2 = v30;
      if (AVE_Log_CheckLevel(0x2Eu, 5))
      {
        v287 = AVE_Log_CheckConsole(0x2Eu);
        v288 = AVE_GetCurrTime();
        v289 = AVE_Log_GetLevelStr(5);
        v290 = *(v28 + 40);
        v291 = *(v28 + 2456);
        if (v287)
        {
          printf("%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d\n", v288, 46, v289, v290, v291);
          v292 = AVE_GetCurrTime();
          v293 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d", v292, 46, v293, *(v28 + 40), *(v28 + 2456));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d", v288, 46, v289, v290, v291);
        }
      }

      v104 = H264VideoEncoderFrameReceiver::DropFrame(this, v28);
      v297 = 0;
      v308 = 0;
      v319 = -1;
LABEL_367:
      v362 = v319;
      goto LABEL_368;
    }

    if (v80 != 6)
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        a2 = v30;
        v210 = AVE_Log_CheckConsole(0x2Eu);
        v211 = AVE_GetCurrTime();
        v212 = AVE_Log_GetLevelStr(4);
        v213 = *(v28 + 2456);
        if (v210)
        {
          printf("%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.\n", v211, 46, v212, v213);
          v214 = AVE_GetCurrTime();
          v342 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.", v214, 46, v342, *(v28 + 2456));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.", v211, 46, v212, v213);
        }

        v297 = 0;
        v308 = 0;
        v104 = 0;
        v362 = -1;
      }

      else
      {
        v297 = 0;
        v308 = 0;
        v104 = 0;
        v362 = -1;
        a2 = v30;
      }

      goto LABEL_368;
    }
  }

  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v81 = v30;
    v82 = AVE_Log_CheckConsole(0x2Eu);
    v83 = AVE_GetCurrTime();
    v84 = AVE_Log_GetLevelStr(8);
    if (v82)
    {
      printf("%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d\n", v83, 46, v84, "AVE_FrameRecv", "FrameDone", 3645, *v9, *(v28 + 40), *(v28 + 2456), *(this + 3670), *v31, *(v32 + 126), *(v28 + 6081));
      v85 = AVE_GetCurrTime();
      v335 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d", v85, 46, v335, "AVE_FrameRecv", "FrameDone");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d", v83, 46, v84, "AVE_FrameRecv", "FrameDone");
    }

    v30 = v81;
    a5 = v364;
  }

  v279 = *(this + 3670);
  if (v279 || *v31 == 1)
  {
    a2 = v30;
    if (*(v32 + 126) == 2 && *(v28 + 6081) == 1)
    {
      if (v279)
      {
        FigFormatDescriptionRelease();
        *(this + 3670) = 0;
      }

      if (H264VideoEncoderFrameReceiver::SendPS(this, v28))
      {
        a3 = v360;
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v280 = a5;
          v281 = AVE_Log_CheckConsole(0x2Eu);
          v282 = AVE_GetCurrTime();
          v283 = AVE_Log_GetLevelStr(4);
          if (v281)
          {
            v284 = v367;
            v349 = v367;
            v285 = this;
            v346 = this;
            v286 = 3667;
LABEL_326:
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p\n", v282, 46, v283, "AVE_FrameRecv", "FrameDone", v286, "ret == 0", v346, v349);
            v282 = AVE_GetCurrTime();
            v347 = v285;
            v350 = v284;
            v345 = v286;
            a2 = v30;
            a3 = v360;
            v343 = AVE_Log_GetLevelStr(4);
            v295 = "%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p";
LABEL_386:
            syslog(3, v295, v282, 46, v343, "AVE_FrameRecv", "FrameDone", v345, "ret == 0", v347, v350, v352);
            LODWORD(a5) = v280;
            goto LABEL_344;
          }

          v350 = v367;
          v347 = this;
          v330 = 3667;
          goto LABEL_385;
        }

        goto LABEL_344;
      }
    }
  }

  else
  {
    a2 = v30;
    if (*v9 == 1 && H264VideoEncoderFrameReceiver::SendPS(this, v28))
    {
      a3 = v360;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v280 = a5;
        v294 = AVE_Log_CheckConsole(0x2Eu);
        v282 = AVE_GetCurrTime();
        v283 = AVE_Log_GetLevelStr(4);
        if (v294)
        {
          v284 = v367;
          v349 = v367;
          v285 = this;
          v346 = this;
          v286 = 3675;
          goto LABEL_326;
        }

        v350 = v367;
        v347 = this;
        v330 = 3675;
LABEL_385:
        v345 = v330;
        v343 = v283;
        v295 = "%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p";
        goto LABEL_386;
      }

LABEL_344:
      v312 = *(v367 + 2600);
      if (v312)
      {
        CVPixelBufferRelease(v312);
        *(v367 + 2600) = 0;
      }

      v313 = *(v367 + 2608);
      if (v313)
      {
        CVPixelBufferRelease(v313);
        *(v367 + 2608) = 0;
      }

      goto LABEL_348;
    }
  }

  v296 = *(v32 + 1) - 1;
  v297 = v296 == a5;
  if ((a5 & 0x80000000) != 0 || !*v32)
  {
    v304 = *v9;
    if (*v9 == 2)
    {
      if (H264VideoEncoderFrameReceiver::ProcessAndEmitLrmeStats(this, v367))
      {
        a3 = v360;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v305 = AVE_Log_CheckConsole(3u);
          v306 = AVE_GetCurrTime();
          v307 = AVE_Log_GetLevelStr(4);
          if (v305)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats failed\n", v306, 3, v307, "FrameDone", 3704, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            a3 = v360;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats failed");
        }

        goto LABEL_344;
      }

      v308 = 0;
      v319 = a5;
      v104 = 0;
    }

    else
    {
      if (*v32)
      {
        v308 = 0;
        v309 = a5;
        v104 = 0;
        v362 = v309;
LABEL_369:
        if (v304 == 1)
        {
          v322 = *(v32 + 219);
          v323 = AVE_GetCurrTime();
          AVE_TimeStats_AddEndTime(v322, 5u, v323);
        }

        a3 = v360;
        if (v104 && AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v324 = v9;
          v325 = a2;
          v326 = AVE_Log_CheckConsole(0x2Eu);
          v327 = AVE_GetCurrTime();
          v328 = AVE_Log_GetLevelStr(4);
          if (v326)
          {
            printf("%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.\n", v327, 46, v328);
            v329 = AVE_GetCurrTime();
            v344 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.", v329, 46, v344);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.", v327, 46, v328);
          }

          a2 = v325;
          v9 = v324;
        }

        AVE_DAL::Free(*(this + 3666), v367);
        if (v297 || (v308 & 1) == 0)
        {
          goto LABEL_104;
        }

        if (!v308)
        {
          goto LABEL_121;
        }

        goto LABEL_379;
      }

      if (H264VideoEncoderFrameReceiver::CollectSlicesInfo(this, *(v367 + 3180), *(v367 + 44)))
      {
        a3 = v360;
        if (!AVE_Log_CheckLevel(0x2Eu, 4))
        {
          goto LABEL_344;
        }

        v280 = a5;
        v318 = AVE_Log_CheckConsole(0x2Eu);
        v282 = AVE_GetCurrTime();
        v299 = AVE_Log_GetLevelStr(4);
        if (v318)
        {
          v300 = v367;
          v351 = *(v367 + 3180);
          v353 = *(v367 + 44);
          v301 = this;
          v348 = this;
          v302 = 3716;
          goto LABEL_333;
        }

        v350 = *(v367 + 3180);
        v352 = *(v367 + 44);
        v347 = this;
        v320 = 3716;
LABEL_361:
        v345 = v320;
        v343 = v299;
        v295 = "%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d";
        goto LABEL_386;
      }

      v370 = 0;
      *v368 = 0u;
      v369 = 0u;
      Connection::peekPacket(*(this + 3667), v368);
      v321 = H264VideoEncoderFrameReceiver::SendFrame(this, v367, v368, 0xFFFFFFFFLL);
      v319 = a5;
      v104 = v321;
      v308 = 0;
    }

    goto LABEL_367;
  }

  if (H264VideoEncoderFrameReceiver::CollectSlicesInfo(this, *(v367 + 3180), *(v367 + 44)))
  {
    a3 = v360;
    if (!AVE_Log_CheckLevel(0x2Eu, 4))
    {
      goto LABEL_344;
    }

    v280 = a5;
    v298 = AVE_Log_CheckConsole(0x2Eu);
    v282 = AVE_GetCurrTime();
    v299 = AVE_Log_GetLevelStr(4);
    if (v298)
    {
      v300 = v367;
      v351 = *(v367 + 3180);
      v353 = *(v367 + 44);
      v301 = this;
      v348 = this;
      v302 = 3692;
LABEL_333:
      printf("%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d\n", v282, 46, v299, "AVE_FrameRecv", "FrameDone", v302, "ret == 0", v348, v351, v353);
      v282 = AVE_GetCurrTime();
      v303 = AVE_Log_GetLevelStr(4);
      v350 = *(v300 + 3180);
      v352 = *(v300 + 44);
      v347 = v301;
      v345 = v302;
      a2 = v30;
      v343 = v303;
      a3 = v360;
      v295 = "%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d";
      goto LABEL_386;
    }

    v350 = *(v367 + 3180);
    v352 = *(v367 + 44);
    v347 = this;
    v320 = 3692;
    goto LABEL_361;
  }

  v370 = 0;
  *v368 = 0u;
  v369 = 0u;
  Connection::peekPacket(*(this + 3667), v368);
  v310 = H264VideoEncoderFrameReceiver::SendFrame(this, v367, v368, a5);
  v311 = a5;
  v104 = v310;
  if (v296 == v311)
  {
    v297 = 1;
    v362 = v311;
    v308 = 1;
LABEL_368:
    v304 = *v9;
    goto LABEL_369;
  }

  v362 = v311;
  a3 = v360;
LABEL_379:
  if (*(v367 + 2456) != 4)
  {
LABEL_121:
    v105 = *(v367 + 4);
    if (v105 <= 6)
    {
      if (v105 == 5)
      {
        *v368 = 0u;
        v369 = 0u;
        LODWORD(a4) = v365;
        LODWORD(v368[0]) = v365;
        v370 = a2;
        v118 = Connection::writePacketBlock(*(this + 3668), v368);
        if (v104)
        {
          LODWORD(a5) = v364;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_344;
          }

          v119 = AVE_Log_CheckConsole(3u);
          v113 = AVE_GetCurrTime();
          v114 = AVE_Log_GetLevelStr(4);
          if (!v119)
          {
            goto LABEL_302;
          }

          v115 = 4018;
          goto LABEL_167;
        }

        if (!v118)
        {
          goto LABEL_174;
        }

        LODWORD(a5) = v364;
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_344;
        }

        v129 = AVE_Log_CheckConsole(3u);
        v126 = AVE_GetCurrTime();
        v127 = AVE_Log_GetLevelStr(4);
        if (!v129)
        {
          goto LABEL_343;
        }

        v128 = 4019;
      }

      else
      {
        LODWORD(a4) = v365;
        if (v105 != 6)
        {
          goto LABEL_146;
        }

        *v368 = 0u;
        v369 = 0u;
        LODWORD(v368[0]) = v365;
        v370 = a2;
        v111 = Connection::writePacketBlock(*(this + 3668), v368);
        if (v104)
        {
          LODWORD(a5) = v364;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_344;
          }

          v112 = AVE_Log_CheckConsole(3u);
          v113 = AVE_GetCurrTime();
          v114 = AVE_Log_GetLevelStr(4);
          if (!v112)
          {
            goto LABEL_302;
          }

          v115 = 4034;
LABEL_167:
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: writePacketBlock failed.\n", v113, 3, v114, "FrameDone", v115, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_302;
        }

        if (!v111)
        {
          goto LABEL_174;
        }

        LODWORD(a5) = v364;
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_344;
        }

        v130 = AVE_Log_CheckConsole(3u);
        v126 = AVE_GetCurrTime();
        v127 = AVE_Log_GetLevelStr(4);
        if (!v130)
        {
          goto LABEL_343;
        }

        v128 = 4035;
      }
    }

    else
    {
      LODWORD(a4) = v365;
      if (v105 == 7)
      {
        goto LABEL_174;
      }

      if (v105 != 10)
      {
        if (v105 == 8)
        {
          *v368 = 0u;
          v369 = 0u;
          LODWORD(v368[0]) = v365;
          v370 = a2;
          if (AVE_Log_CheckLevel(0x2Eu, 7))
          {
            v106 = AVE_Log_CheckConsole(0x2Eu);
            v107 = AVE_GetCurrTime();
            v108 = AVE_Log_GetLevelStr(7);
            if (v106)
            {
              printf("%lld %d AVE %s: H264FrameRec: writePacketBlock = %d\n", v107, 46, v108, v365);
              v109 = AVE_GetCurrTime();
              v110 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: H264FrameRec: writePacketBlock = %d", v109, 46, v110, v365);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: H264FrameRec: writePacketBlock = %d", v107, 46, v108, v365);
            }

            LODWORD(a4) = v365;
          }

          v131 = Connection::writePacketBlock(*(this + 3668), v368);
          if (v104)
          {
            LODWORD(a5) = v364;
            if (!AVE_Log_CheckLevel(3u, 4))
            {
              goto LABEL_344;
            }

            v132 = AVE_Log_CheckConsole(3u);
            v113 = AVE_GetCurrTime();
            v114 = AVE_Log_GetLevelStr(4);
            if (v132)
            {
              v115 = 4002;
              goto LABEL_167;
            }

LABEL_302:
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: writePacketBlock failed.");
            goto LABEL_344;
          }

          if (v131)
          {
            LODWORD(a5) = v364;
            if (!AVE_Log_CheckLevel(3u, 4))
            {
              goto LABEL_344;
            }

            v133 = AVE_Log_CheckConsole(3u);
            v126 = AVE_GetCurrTime();
            v127 = AVE_Log_GetLevelStr(4);
            if (v133)
            {
              v128 = 4003;
              goto LABEL_172;
            }

LABEL_343:
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: Timed Out waiting for space to write packet to main thread");
            goto LABEL_344;
          }

LABEL_174:
          LODWORD(a5) = v364;
          if ((AVE_DW_Get()[103] & 0x20) != 0)
          {
            v361 = a3;
            v134 = this + 139568;
            v135 = *(this + 2 * *(v367 + 40) + 17447);
            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v136 = AVE_Log_CheckConsole(0x2Eu);
              v137 = AVE_GetCurrTime();
              v138 = AVE_Log_GetLevelStr(8);
              if (v136)
              {
                printf("%lld %d AVE %s: \n", v137, 46, v138);
                v139 = AVE_GetCurrTime();
                v338 = AVE_Log_GetLevelStr(8);
                v134 = this + 139568;
                syslog(3, "%lld %d AVE %s: ", v139, 46, v338);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: ", v137, 46, v138);
              }
            }

            v140 = v135;
            v141 = *(v367 + 40) - 1;
            v355 = v9;
            v358 = a2;
            if (v141 < 0)
            {
              v151 = 0;
              LODWORD(v143) = 0;
              v152 = 0;
              *(v367 + 34744) = 0;
              v145 = 0.0;
            }

            else
            {
              v354 = *(v367 + 40);
              v142 = 0;
              LODWORD(v143) = 0;
              while (1)
              {
                v144 = &v134[16 * v141];
                v145 = (v140 - v144[1]) / *(v367 + 4616);
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v146 = AVE_Log_CheckConsole(0x2Eu);
                  v147 = AVE_GetCurrTime();
                  v148 = AVE_Log_GetLevelStr(8);
                  v149 = *(v367 + 40);
                  if (v146)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v147, 46, v148, v149, v141, v143, v145, v142);
                    v150 = AVE_GetCurrTime();
                    v134 = this + 139568;
                    v339 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v150, 46, v339, *(v367 + 40), v141, v143, v145, v142);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v147, 46, v148, v149, v141, v143, v145, v142);
                  }
                }

                v143 = *v144 + v143;
                if (v145 >= 0.1)
                {
                  break;
                }

                --v141;
                ++v142;
                if (v141 == -1)
                {
                  v151 = v354;
                  goto LABEL_190;
                }
              }

              v151 = v142 + 1;
LABEL_190:
              *(v367 + 34744) = v143;
              if (v145 == 0.0)
              {
                v152 = 0;
              }

              else
              {
                v152 = (v143 / v145);
              }
            }

            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v153 = AVE_Log_CheckConsole(0x2Eu);
              v154 = AVE_GetCurrTime();
              v155 = AVE_Log_GetLevelStr(8);
              if (v153)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d\n", v154, 46, v155, *(v367 + 40), v151, v143, v145, v152);
                v156 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d", v156);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d", v154);
              }
            }

            v157 = *(v367 + 40);
            v158 = v157 - 1;
            if (v157 - 1 < 0)
            {
              v160 = 0;
              LODWORD(v159) = 0;
              v168 = 0;
              *(v367 + 34752) = 0;
              v162 = 0.0;
            }

            else
            {
              LODWORD(v159) = 0;
              v160 = 1;
              while (1)
              {
                v161 = &v134[16 * v158];
                v162 = (v140 - v161[1]) / *(v367 + 4616);
                v159 = *v161 + v159;
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v163 = AVE_Log_CheckConsole(0x2Eu);
                  v164 = AVE_GetCurrTime();
                  v165 = AVE_Log_GetLevelStr(8);
                  v166 = *(v367 + 40);
                  if (v163)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v164, 46, v165, v166, v158, v159, v162, v160);
                    v167 = AVE_GetCurrTime();
                    v340 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v167, 46, v340, *(v367 + 40), v158, v159, v162, v160);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v164, 46, v165, v166, v158, v159, v162, v160);
                  }
                }

                if (v162 >= 0.5)
                {
                  break;
                }

                --v158;
                ++v160;
                if (v158 == -1)
                {
                  v160 = v157;
                  break;
                }
              }

              *(v367 + 34752) = v159;
              if (v162 == 0.0)
              {
                v168 = 0;
              }

              else
              {
                v168 = (v159 / v162);
              }
            }

            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v169 = AVE_Log_CheckConsole(0x2Eu);
              v170 = AVE_GetCurrTime();
              v171 = AVE_Log_GetLevelStr(8);
              if (v169)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d\n", v170, 46, v171, *(v367 + 40), v160, v159, v162, v168);
                v172 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v172);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v170);
              }
            }

            if (*(v367 + 40) - 1 <= 0)
            {
              v174 = 0;
              LODWORD(v173) = 0;
              v185 = 0;
              *(v367 + 34760) = 0;
              v177 = 0.0;
            }

            else
            {
              LODWORD(v173) = 0;
              v174 = 1;
              v359 = *(v367 + 40) - 1;
              v175 = v359;
              while (1)
              {
                v176 = &v134[16 * v175];
                v177 = (v140 - v176[1]) / *(v367 + 4616);
                v173 = *v176 + v173;
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v178 = AVE_Log_CheckConsole(0x2Eu);
                  v179 = AVE_GetCurrTime();
                  v180 = AVE_Log_GetLevelStr(8);
                  v181 = *(v367 + 40);
                  v182 = *v176;
                  if (v178)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d\n", v179, 46, v180, v181, v175, v173, v182, v177, v174);
                    v183 = AVE_GetCurrTime();
                    v184 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d", v183, 46, v184, *(v367 + 40), v175, v173, *v176, v177, v174);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d", v179, 46, v180, v181, v175, v173, v182, v177, v174);
                  }
                }

                if (v177 >= 1.0)
                {
                  break;
                }

                ++v174;
                if (!--v175)
                {
                  v174 = v359;
                  break;
                }
              }

              *(v367 + 34760) = v173;
              if (v177 == 0.0)
              {
                v185 = 0;
              }

              else
              {
                v185 = (v173 / v177);
              }
            }

            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v186 = AVE_Log_CheckConsole(0x2Eu);
              v187 = AVE_GetCurrTime();
              v188 = AVE_Log_GetLevelStr(8);
              if (v186)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######\n", v187, 46, v188, *(v367 + 40), v174, v173, v177, v185);
                v189 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######", v189);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######", v187);
              }
            }

            v190 = *(v367 + 40);
            v191 = v190 - 1;
            if (v190 - 1 < 0)
            {
              v193 = 0;
              LODWORD(v192) = 0;
              v202 = 0;
              *(v367 + 34768) = 0;
              v195 = 0.0;
              LODWORD(a4) = v365;
              v201 = v355;
            }

            else
            {
              LODWORD(v192) = 0;
              v193 = 1;
              LODWORD(a4) = v365;
              while (1)
              {
                v194 = &v134[16 * v191];
                v195 = (v140 - v194[1]) / *(v367 + 4616);
                v192 = *v194 + v192;
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v196 = AVE_Log_CheckConsole(0x2Eu);
                  v197 = AVE_GetCurrTime();
                  v198 = AVE_Log_GetLevelStr(8);
                  v199 = *(v367 + 40);
                  if (v196)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v197, 46, v198, v199, v191, v192, v195, v193);
                    v200 = AVE_GetCurrTime();
                    LODWORD(a4) = v365;
                    v341 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v200, 46, v341, *(v367 + 40), v191, v192, v195, v193);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v197, 46, v198, v199, v191, v192, v195, v193);
                  }
                }

                if (v195 >= 2.0)
                {
                  break;
                }

                --v191;
                ++v193;
                if (v191 == -1)
                {
                  v193 = v190;
                  break;
                }
              }

              *(v367 + 34768) = v192;
              v201 = v355;
              if (v195 == 0.0)
              {
                v202 = 0;
              }

              else
              {
                v202 = (v192 / v195);
              }
            }

            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v203 = AVE_Log_CheckConsole(0x2Eu);
              v204 = AVE_GetCurrTime();
              v205 = AVE_Log_GetLevelStr(8);
              if (v203)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d\n", v204, 46, v205, *(v367 + 40), v193, v192, v195, v202);
                v206 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v206);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v204);
              }
            }

            v207 = *(this + 9897);
            *(this + 137852) = (*(this + 29992) & 2) != 0;
            v208 = *(v201 + 1);
            *(this + 34461) = v207;
            *(this + 34462) = v208;
            *(this + 34460) = AVE_DW_Get()[104] & 0x20;
            *(this + 137853) = *(this + 38944);
            *(this + 34464) = v362;
            File = AVE_Dump_FindFile(*(this + 5088), 5u, *(v367 + 24));
            AVE_FrameStats_PrintStatFrame(this + 34460, v367, File);
            memcpy(this + 137864, (v367 + 33048), 0x698uLL);
            *(this + 8722) = *(v367 + 4608);
            a2 = v358;
            a3 = v361;
            LODWORD(a5) = v364;
          }

          goto LABEL_344;
        }

LABEL_146:
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v120 = AVE_Log_CheckConsole(0x2Eu);
          v121 = AVE_GetCurrTime();
          v122 = AVE_Log_GetLevelStr(4);
          v123 = *(v367 + 4);
          if (v120)
          {
            printf("%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame\n", v121, 46, v122, v123);
            v124 = AVE_GetCurrTime();
            v337 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v124, 46, v337, *(v367 + 4));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v121, 46, v122, v123);
          }
        }

        goto LABEL_174;
      }

      *v368 = 0u;
      v369 = 0u;
      LODWORD(v368[0]) = v365;
      v370 = a2;
      v116 = Connection::writePacketBlock(*(this + 3668), v368);
      if (v104)
      {
        LODWORD(a5) = v364;
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_344;
        }

        v117 = AVE_Log_CheckConsole(3u);
        v113 = AVE_GetCurrTime();
        v114 = AVE_Log_GetLevelStr(4);
        if (!v117)
        {
          goto LABEL_302;
        }

        v115 = 4050;
        goto LABEL_167;
      }

      if (!v116)
      {
        goto LABEL_174;
      }

      LODWORD(a5) = v364;
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_344;
      }

      v125 = AVE_Log_CheckConsole(3u);
      v126 = AVE_GetCurrTime();
      v127 = AVE_Log_GetLevelStr(4);
      if (!v125)
      {
        goto LABEL_343;
      }

      v128 = 4051;
    }

LABEL_172:
    printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: Timed Out waiting for space to write packet to main thread\n", v126, 3, v127, "FrameDone", v128, "ret == 0");
    AVE_GetCurrTime();
    AVE_Log_GetLevelStr(4);
    goto LABEL_343;
  }

LABEL_104:
  a5 = *(this + 3667);
  pthread_mutex_lock(a5);
  do
  {
    v92 = *(a5 + 208);
    v91 = *(a5 + 216);
    if (v91 > v92)
    {
      v97 = v92 + 1;
      *(a5 + 208) = v97;
      v98 = v91 <= v97;
      v99 = v91 - v97;
      if (v98)
      {
        v99 = 0;
      }

      if (v99 < *(a5 + 200))
      {
        pthread_cond_signal((a5 + 112));
      }

      pthread_mutex_unlock(a5);
      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v100 = AVE_Log_CheckConsole(0x2Eu);
        v101 = AVE_GetCurrTime();
        v102 = AVE_Log_GetLevelStr(7);
        if (v100)
        {
          printf("%lld %d AVE %s: H264FrameRec: readPacketBlock = %d\n", v101, 46, v102, v365);
          v103 = AVE_GetCurrTime();
          v336 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: H264FrameRec: readPacketBlock = %d", v103, 46, v336, v365);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: readPacketBlock = %d", v101, 46, v102, v365);
        }
      }

      v104 = 0;
      goto LABEL_121;
    }

    gettimeofday((a5 + 176), 0);
    v93 = 1000 * *(a5 + 184);
    *(a5 + 160) = *(a5 + 176) + 120;
    *(a5 + 168) = v93;
  }

  while (pthread_cond_timedwait((a5 + 64), a5, (a5 + 160)) != 60);
  pthread_mutex_unlock(a5);
  LODWORD(a5) = v364;
  if (AVE_Log_CheckLevel(3u, 4))
  {
    v94 = AVE_Log_CheckConsole(3u);
    v95 = AVE_GetCurrTime();
    v96 = AVE_Log_GetLevelStr(4);
    if (v94)
    {
      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: readPacketBlock failed. %d\n", v95, 3, v96, "FrameDone", 3978, "err == noErr", -1);
      v95 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: readPacketBlock failed. %d", v95);
  }

  LODWORD(a4) = v365;
  if (v367)
  {
    goto LABEL_344;
  }

LABEL_348:
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v314 = AVE_Log_CheckConsole(0x2Eu);
    v315 = AVE_GetCurrTime();
    v316 = AVE_Log_GetLevelStr(8);
    if (v314)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d\n", v315, 46, v316, "FrameDone", a2, a3, a4, a5);
      v317 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v317);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v315);
    }
  }
}

uint64_t Connection::peekPacket(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(a1);
  v4 = *(a1 + 208);
  if (*(a1 + 216) > v4)
  {
    v5 = *(a1 + 224) + 40 * (v4 % *(a1 + 192));
    v6 = *v5;
    v7 = *(v5 + 16);
    *(a2 + 32) = *(v5 + 32);
    *a2 = v6;
    *(a2 + 16) = v7;
  }

  return pthread_mutex_unlock(a1);
}

uint64_t Connection::writePacketBlock(uint64_t a1, __int128 *a2)
{
  pthread_mutex_lock(a1);
  while (1)
  {
    v5 = *(a1 + 208);
    v4 = *(a1 + 216);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if ((v7 < 0) ^ v6 | (v7 == 0))
    {
      v7 = 0;
    }

    if (v7 < *(a1 + 200))
    {
      break;
    }

    gettimeofday((a1 + 176), 0);
    v8 = 1000 * *(a1 + 184);
    *(a1 + 160) = *(a1 + 176) + 120;
    *(a1 + 168) = v8;
    if (pthread_cond_timedwait((a1 + 112), a1, (a1 + 160)) == 60)
    {
      if (AVE_Log_CheckLevel(0x2Au, 4))
      {
        v9 = AVE_Log_CheckConsole(0x2Au);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v13 = *(a1 + 208);
        v12 = *(a1 + 216);
        v14 = v12 <= v13;
        v15 = v12 - v13;
        if (v14)
        {
          v15 = 0;
        }

        if (v9)
        {
          printf("%lld %d AVE %s: H264 Connection: connection full %lld\n", CurrTime, 42, LevelStr, v15);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v17 = *(a1 + 208);
          v16 = *(a1 + 216);
          v14 = v16 <= v17;
          v15 = v16 - v17;
          if (v14)
          {
            v15 = 0;
          }
        }

        syslog(3, "%lld %d AVE %s: H264 Connection: connection full %lld", CurrTime, 42, LevelStr, v15);
      }

      v23 = 0xFFFFFFFFLL;
      goto LABEL_20;
    }
  }

  v18 = *(a1 + 224) + 40 * (v4 % *(a1 + 192));
  v19 = *a2;
  v20 = a2[1];
  *(v18 + 32) = *(a2 + 4);
  *v18 = v19;
  *(v18 + 16) = v20;
  v22 = *(a1 + 208);
  v21 = *(a1 + 216);
  *(a1 + 216) = v21 + 1;
  if (v21 >= v22)
  {
    pthread_cond_signal((a1 + 64));
  }

  v23 = 0;
LABEL_20:
  pthread_mutex_unlock(a1);
  return v23;
}

void AVE_MultiPass::AVE_MultiPass(AVE_MultiPass *this)
{
  *(this + 25352) = 0u;
  *(this + 3171) = 0;
  v2 = this + 24576;
  *(this + 25384) = 0u;
  *(this + 25400) = 0u;
  *(this + 25416) = 0u;
  *(this + 25432) = 0u;
  *(this + 25448) = 0u;
  *(this + 25464) = 0u;
  AVE_MultiPass::empty_queues(this);
  *(v2 + 226) = 0;
  *(this + 3186) = 0;
  *(this + 3220) = 0;
  bzero(this + 25496, 0x108uLL);
  *(v2 + 249) = 0;
  *(this + 3168) = 0;
}

void AVE_MultiPass::empty_queues(AVE_MultiPass *this)
{
  v2 = (this + 25352);
  v3 = *(this + 3169);
  if (v3)
  {
    *(this + 3170) = v3;
    operator delete(v3);
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v4 = *(this + 3174);
  v5 = *(this + 3175);
  *(this + 3178) = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v4 = (*(this + 3174) + 8);
      *(this + 3174) = v4;
      v6 = (*(this + 3175) - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v7 = 256;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v7 = 512;
  }

  *(this + 3177) = v7;
LABEL_10:
  v8 = *(this + 3180);
  v9 = *(this + 3181);
  *(this + 3184) = 0;
  v10 = (v9 - v8) >> 3;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v8);
      v8 = (*(this + 3180) + 8);
      *(this + 3180) = v8;
      v10 = (*(this + 3181) - v8) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 256;
    goto LABEL_16;
  }

  if (v10 == 2)
  {
    v11 = 512;
LABEL_16:
    *(this + 3183) = v11;
  }

  v12 = 0;
  v13 = xmmword_295650A20;
  v14 = vdupq_n_s64(this + 2);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    v16.i64[0] = 1574 * v13.i64[0];
    v16.i64[1] = 1574 * v13.i64[1];
    *(this + v12 + 25192) = vaddq_s64(v14, v16);
    v13 = vaddq_s64(v13, v15);
    v12 += 16;
  }

  while (v12 != 128);
  *(this + 6330) = 16;
}

uint64_t std::deque<_S_AVE_MultiPassStats *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<_S_AVE_MultiPassStats **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<_S_AVE_MultiPassStats **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void AVE_MultiPass::~AVE_MultiPass(AVE_MultiPass *this)
{
  std::deque<_S_AVE_MultiPassStats *>::~deque[abi:ne200100](this + 3179);
  std::deque<_S_AVE_MultiPassStats *>::~deque[abi:ne200100](this + 3173);
  v2 = *(this + 3169);
  if (v2)
  {
    *(this + 3170) = v2;
    operator delete(v2);
  }
}

uint64_t AVE_USL_CalcSurfaceInfo(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4)
{
  v5 = *(a1 + 20);
  v6 = a2[2995];
  v7 = a2[662];
  v8 = a2[663];
  *(a3 + 16) = AVE_CalcBufNumOfMBInputCtrl(*(a1 + 8), v6, HIWORD(a2[166]) & 1, a4);
  *(a3 + 20) = AVE_CalcBufSizeOfMBInputCtrl(v5, v6, v7, v8);
  return 0;
}

uint64_t AVE_USL_CalcDataSurfaceInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 40) == 0;
  v6 = *(a3 + 23712) != 0;
  *(a4 + 56) = AVE_CalcBufNumOfMultiPassStats(*(a1 + 8), 2 * (*(a1 + 106096) != 0), *(a1 + 106096));
  *(a4 + 60) = AVE_CalcBufSizeOfMultiPassStats(v5, v6);
  return 0;
}

uint64_t AVE_USL_Drv_Create(uint64_t a1, int a2, void *a3)
{
  v4 = a1;
  v17 = *MEMORY[0x29EDCA608];
  bzero(v16, 0x7A0uLL);
  if (AVE_Log_CheckLevel(0x28u, 6))
  {
    v5 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %d %d\n", CurrTime, 40, LevelStr, "AVE_USL_Drv_Create", v4, a2);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d", CurrTime, 40, LevelStr, "AVE_USL_Drv_Create", v4, a2);
  }

  v8 = malloc_type_malloc(0x19E98uLL, 0x10200409CA022ABuLL);
  if (v8)
  {
    bzero(v8, 0x19E98uLL);
    operator new();
  }

  if (AVE_Log_CheckLevel(0x28u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x28u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to allocate %d %d\n", v10, 40, v11, "AVE_USL_Drv_Create", 354, "pINS != __null", v4, a2);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to allocate %d %d", v10, 40, v11, "AVE_USL_Drv_Create", 354, "pINS != __null", v4, a2);
  }

  if (AVE_Log_CheckLevel(0x28u, 6))
  {
    v12 = AVE_Log_CheckConsole(0x28u);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d\n", v13, 40, v14, "AVE_USL_Drv_Create", v4, a2, -1003);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %d %d %d", v13, 40, v14, "AVE_USL_Drv_Create", v4, a2, -1003);
  }

  return 4294966293;
}

uint64_t AVE_USL_Drv_GetDevID(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t AVE_USL_Drv_GetDevRevision(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t AVE_USL_Drv_GetClientID(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t AVE_USL_Drv_GetProcCnt(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 106064);
    if (v1)
    {
      return *v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVE_USL_Drv_GetDropCnt(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 106064);
    if (v1)
    {
      return *(v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVE_USL_Drv_Destroy(const void ***a1)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  memset(v32, 0, sizeof(v32));
  if (AVE_Log_CheckLevel(0x28u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 40, LevelStr, "AVE_USL_Drv_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 40, v27, "AVE_USL_Drv_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 40, LevelStr, "AVE_USL_Drv_Destroy", a1);
    }
  }

  if (a1)
  {
    if (a1[3])
    {
      *&v33 = *a1;
      *(&v34 + 1) = 118000000;
      v35 = AVE_GetCurrTime();
      v6 = AVE_DAL::UCClose(a1[3], &v33, v32);
      if (v6)
      {
        v7 = v6;
        if (!AVE_Log_CheckLevel(0x28u, 4))
        {
LABEL_30:
          free(a1);
          goto LABEL_31;
        }

        v8 = AVE_Log_CheckConsole(0x28u);
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(4);
        if (v8)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close client %d\n", v9, 40, v10, "AVE_USL_Drv_Destroy", 528, "ret == 0", v7);
          v11 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close client %d", v11);
          goto LABEL_30;
        }

        v31 = v7;
        v30 = 528;
        v28 = v10;
        v19 = "%lld %d AVE %s: %s:%d %s | fail to close client %d";
LABEL_29:
        syslog(3, v19, v9, 40, v28, "AVE_USL_Drv_Destroy", v30, "ret == 0", v31);
        goto LABEL_30;
      }

      AVE_DAL::TearDownIPC(a1[3]);
      v15 = AVE_DAL::UCDestroy(a1[3]);
      if (v15)
      {
        v7 = v15;
        if (!AVE_Log_CheckLevel(0x28u, 4))
        {
          goto LABEL_30;
        }

        v16 = AVE_Log_CheckConsole(0x28u);
        v9 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close driver %d\n", v9, 40, v17, "AVE_USL_Drv_Destroy", 534, "ret == 0", v7);
          v18 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close driver %d", v18);
          goto LABEL_30;
        }

        v31 = v7;
        v30 = 534;
        v28 = v17;
        v19 = "%lld %d AVE %s: %s:%d %s | fail to close driver %d";
        goto LABEL_29;
      }

      v20 = a1[3];
      if (v20)
      {
        AVE_DAL::~AVE_DAL(v20);
        MEMORY[0x29C24E920]();
      }

      a1[3] = 0;
    }

    AppleAVEVA_CleanMem(a1);
    v21 = a1[13266];
    if (v21)
    {
      CVPixelBufferPoolRelease(v21);
    }

    v7 = 0;
    goto LABEL_30;
  }

  if (AVE_Log_CheckLevel(0x28u, 4))
  {
    v12 = AVE_Log_CheckConsole(0x28u);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v13, 40, v14, "AVE_USL_Drv_Destroy", 518, "pDrv != __null", 0);
      v13 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v13);
  }

  v7 = 4294966295;
LABEL_31:
  if (AVE_Log_CheckLevel(0x28u, 6))
  {
    v22 = AVE_Log_CheckConsole(0x28u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(6);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v23, 40, v24, "AVE_USL_Drv_Destroy", a1, v7);
      v25 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v25, 40, v29, "AVE_USL_Drv_Destroy", a1, v7);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v23, 40, v24, "AVE_USL_Drv_Destroy", a1, v7);
    }
  }

  return v7;
}

uint64_t AppleAVEVA_CleanMem(uint64_t a1)
{
  v2 = (a1 + 102400);
  v3 = *(a1 + 106064);
  if (v3)
  {
    H264VideoEncoderFrameReceiver::~H264VideoEncoderFrameReceiver(v3);
    MEMORY[0x29C24E920]();
    v2[458] = 0;
  }

  v4 = v2[459];
  if (v4)
  {
    Connection::~Connection(v4);
    MEMORY[0x29C24E920]();
    v2[459] = 0;
  }

  v5 = v2[460];
  if (v5)
  {
    Connection::~Connection(v5);
    MEMORY[0x29C24E920]();
    v2[460] = 0;
  }

  AVE_DestroyDataUSurfaces(a1 + 136);

  return AVE_DestroyInUSurfaces(a1 + 128);
}

uint64_t AVE_USL_Drv_Prepare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v109 = *MEMORY[0x29EDCA608];
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v14 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v14)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.\n", CurrTime, 40, LevelStr);
      v17 = AVE_GetCurrTime();
      v90 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.", v17, 40, v90);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.", CurrTime, 40, LevelStr);
    }
  }

  if (!v13)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v23 = AVE_Log_CheckConsole(3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_Prepare, Null pointer for driver data.\n", v24, 3, v25, "AVE_USL_Drv_Prepare", 569, "pDriverInstance");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_Prepare, Null pointer for driver data.");
    }

    goto LABEL_100;
  }

  if (!v12)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v26 = AVE_Log_CheckConsole(3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for AppleAVEVA_InitSettings.\n", v27, 3, v28, "AVE_USL_Drv_Prepare", 570, "pInitSettings");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for AppleAVEVA_InitSettings.");
    }

    goto LABEL_100;
  }

  if (!*v12)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v29 = AVE_Log_CheckConsole(3u);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for psSessionCfg.\n", v30, 3, v31, "AVE_USL_Drv_Prepare", 572, "pInitSettings->psSessionCfg");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for psSessionCfg.");
    }

    goto LABEL_100;
  }

  if (!*(v12 + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v32 = AVE_Log_CheckConsole(3u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParams.\n", v33, 3, v34, "AVE_USL_Drv_Prepare", 573, "pInitSettings->pVideoParams");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParams.");
    }

    goto LABEL_100;
  }

  v18 = *(v12 + 16);
  if (!v18)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v35 = AVE_Log_CheckConsole(3u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParamsDriver.\n", v36, 3, v37, "AVE_USL_Drv_Prepare", 574, "pInitSettings->pVideoParamsDriver");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParamsDriver.");
    }

    goto LABEL_100;
  }

  v19 = *(v18 + 20);
  if (v19 == 2)
  {
    if (!*(v12 + 2304))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v50 = AVE_Log_CheckConsole(3u);
        v51 = AVE_GetCurrTime();
        v52 = AVE_Log_GetLevelStr(4);
        if (v50)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for VPSHevcParams.\n", v51, 3, v52, "AVE_USL_Drv_Prepare", 588, "pInitSettings->VPSHevcParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for VPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 2312))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v57 = AVE_Log_CheckConsole(3u);
        v58 = AVE_GetCurrTime();
        v59 = AVE_Log_GetLevelStr(4);
        if (v57)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSHevcParams.\n", v58, 3, v59, "AVE_USL_Drv_Prepare", 589, "pInitSettings->psaHEVC_SPS[0]");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 2328))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v60 = AVE_Log_CheckConsole(3u);
        v61 = AVE_GetCurrTime();
        v62 = AVE_Log_GetLevelStr(4);
        if (v60)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSHevcParams.\n", v61, 3, v62, "AVE_USL_Drv_Prepare", 590, "pInitSettings->psaHEVC_PPS[0]");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 2344))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v63 = AVE_Log_CheckConsole(3u);
        v64 = AVE_GetCurrTime();
        v65 = AVE_Log_GetLevelStr(4);
        if (v63)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHHevcParams.\n", v64, 3, v65, "AVE_USL_Drv_Prepare", 591, "pInitSettings->SHHevcParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 2352))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v66 = AVE_Log_CheckConsole(3u);
        v67 = AVE_GetCurrTime();
        v68 = AVE_Log_GetLevelStr(4);
        if (v66)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for RPSHevcParams.\n", v67, 3, v68, "AVE_USL_Drv_Prepare", 592, "pInitSettings->RPSHevcParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for RPSHevcParams.");
      }

      goto LABEL_100;
    }
  }

  else
  {
    if (v19 != 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v42 = AVE_Log_CheckConsole(3u);
        v43 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        if (v42)
        {
          v45 = 597;
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d\n", v43, 3, v44, "AVE_USL_Drv_Prepare", 597, "false", *(*(v12 + 16) + 20));
LABEL_48:
          v43 = AVE_GetCurrTime();
          v46 = AVE_Log_GetLevelStr(4);
          v93 = *(*(v12 + 16) + 20);
          v92 = v45;
          v91 = v46;
LABEL_59:
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d", v43, 3, v91, "AVE_USL_Drv_Prepare", v92, "false", v93);
          goto LABEL_100;
        }

        v93 = *(*(v12 + 16) + 20);
        v53 = 597;
LABEL_58:
        v92 = v53;
        v91 = v44;
        goto LABEL_59;
      }

LABEL_100:
      v74 = 4294966295;
      goto LABEL_101;
    }

    if (!*(v12 + 808))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v47 = AVE_Log_CheckConsole(3u);
        v48 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(4);
        if (v47)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSParams.\n", v48, 3, v49, "AVE_USL_Drv_Prepare", 580, "pInitSettings->SPSParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 816))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v54 = AVE_Log_CheckConsole(3u);
        v55 = AVE_GetCurrTime();
        v56 = AVE_Log_GetLevelStr(4);
        if (v54)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSParams.\n", v55, 3, v56, "AVE_USL_Drv_Prepare", 581, "pInitSettings->PPSParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 824))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v20 = AVE_Log_CheckConsole(3u);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHParams.\n", v21, 3, v22, "AVE_USL_Drv_Prepare", 582, "pInitSettings->SHParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHParams.");
      }

      goto LABEL_100;
    }
  }

  memcpy((v13 + 232), *v12, 0x300uLL);
  memcpy((v13 + 2880), *(v12 + 8), 0x2460uLL);
  memcpy((v13 + 12192), *(v12 + 16), 0x4E0uLL);
  if ((*(v13 + 8) - 2) >= 4)
  {
    v38 = *(*(v12 + 16) + 20);
    if (v38 == 2)
    {
      memcpy((v13 + 13440), *(v12 + 2304), 0x2FCCuLL);
      memcpy((v13 + 25676), *(v12 + 2312), 0x1E7CuLL);
      memcpy((v13 + 41284), *(v12 + 2328), 0x25A0uLL);
      memcpy((v13 + 33480), *(v12 + 2320), 0x1E7CuLL);
      memcpy((v13 + 50916), *(v12 + 2336), 0x25A0uLL);
      memcpy((v13 + 60552), *(v12 + 2344), 0x53F0uLL);
      v39 = *(v12 + 2352);
      v40 = (v13 + 82040);
      v41 = 24024;
      goto LABEL_80;
    }

    if (v38 == 1)
    {
      memcpy((v13 + 13440), *(v12 + 808), 0x6B4uLL);
      memcpy((v13 + 15156), *(v12 + 816), 0x180uLL);
      v39 = *(v12 + 824);
      v40 = (v13 + 15540);
      v41 = 2340;
LABEL_80:
      memcpy(v40, v39, v41);
      goto LABEL_81;
    }

    if (AVE_Log_CheckLevel(3u, 4))
    {
      v85 = AVE_Log_CheckConsole(3u);
      v43 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(4);
      if (v85)
      {
        v45 = 637;
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d\n", v43, 3, v44, "AVE_USL_Drv_Prepare", 637, "false", *(*(v12 + 16) + 20));
        goto LABEL_48;
      }

      v93 = *(*(v12 + 16) + 20);
      v53 = 637;
      goto LABEL_58;
    }

    goto LABEL_100;
  }

LABEL_81:
  bzero(v96, 0x1A098uLL);
  v95 = *v13;
  v69 = &unk_295613FE7;
  if (v10)
  {
    v69 = v10;
  }

  AVE_SNPrintf(v97, 512, "%s", v69);
  v70 = *(v13 + 13280);
  v71 = *(v13 + 13312);
  v100 = *(v13 + 13296);
  v101 = v71;
  v98 = *(v13 + 13264);
  v99 = v70;
  v102 = *(v13 + 13328);
  v72 = *(v13 + 13380);
  v105 = *(v13 + 13364);
  v106 = v72;
  v107 = *(v13 + 13396);
  v73 = *(v13 + 13348);
  v103 = *(v13 + 13332);
  v104 = v73;
  v96[2] = 118000000;
  v96[3] = AVE_GetCurrTime();
  memcpy(v108, (v13 + 232), sizeof(v108));
  memset(v94, 0, sizeof(v94));
  v74 = AVE_DAL::UCPrepare(*(v13 + 24), &v95, v94);
  if (v74)
  {
    if (AVE_Log_CheckLevel(0x28u, 4))
    {
      v75 = AVE_Log_CheckConsole(0x28u);
      v76 = AVE_GetCurrTime();
      v77 = AVE_Log_GetLevelStr(4);
      if (v75)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare %d\n", v76, 40, v77, "AVE_USL_Drv_Prepare", 665, "ret == 0", v74);
        v76 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %d", v76);
    }
  }

  else
  {
    v78 = 0;
    v79 = *(v12 + 16) + 1072;
    v80 = 1;
    do
    {
      v81 = 0;
      v82 = 17 * v78;
      v83 = v80;
      v84 = v13 + 13264 + 68 * v78;
      do
      {
        *(v79 + 4 * v82 + v81) = *(v84 + v81);
        v81 += 4;
      }

      while (v81 != 68);
      v80 = 0;
      v78 = 1;
    }

    while ((v83 & 1) != 0);
  }

LABEL_101:
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v86 = AVE_Log_CheckConsole(0x28u);
    v87 = AVE_GetCurrTime();
    v88 = AVE_Log_GetLevelStr(7);
    if (v86)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Prepare F %d %d\n", v87, 40, v88, *(v13 + 44), v74);
      v87 = AVE_GetCurrTime();
      v88 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Prepare F %d %d", v87, 40, v88, *(v13 + 44), v74);
  }

  return v74;
}

uint64_t AVE_USL_Drv_Start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, void *__dst)
{
  v10 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v145 = v11;
  v13 = v12;
  v15 = v14;
  v16 = v10;
  v177 = *MEMORY[0x29EDCA608];
  v162 = -1;
  bzero(v163, 0x1A0B0uLL);
  memset(v161, 0, sizeof(v161));
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v17 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v17)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Start.\n", CurrTime, 40, LevelStr);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Start.", CurrTime, 40, LevelStr);
  }

  if (!v16)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v26 = AVE_Log_CheckConsole(3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for driver data.\n", v27, 3, v28, "AVE_USL_Drv_Start", 711, "pDriverInstance");
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for driver data.", v27, 3, v28, "AVE_USL_Drv_Start", 711, "pDriverInstance");
    }

    goto LABEL_170;
  }

  if (!v15)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v29 = AVE_Log_CheckConsole(3u);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for AppleAVEVA_InitSettings.\n", v30, 3, v31, "AVE_USL_Drv_Start", 712, "pInitSettings");
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for AppleAVEVA_InitSettings.", v30, 3, v31, "AVE_USL_Drv_Start", 712, "pInitSettings");
    }

    goto LABEL_170;
  }

  v20 = *v15;
  if (!*v15)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v32 = AVE_Log_CheckConsole(3u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for psSessionCfg.\n", v33, 3, v34, "AVE_USL_Drv_Start", 714, "pInitSettings->psSessionCfg");
        v33 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for psSessionCfg.", v33, 3, v34, "AVE_USL_Drv_Start", 714, "pInitSettings->psSessionCfg");
    }

    goto LABEL_170;
  }

  if (!v15[1])
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v35 = AVE_Log_CheckConsole(3u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParams.\n", v36, 3, v37, "AVE_USL_Drv_Start", 715, "pInitSettings->pVideoParams");
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParams.", v36, 3, v37, "AVE_USL_Drv_Start", 715, "pInitSettings->pVideoParams");
    }

    goto LABEL_170;
  }

  v21 = v15[2];
  if (!v21)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v38 = AVE_Log_CheckConsole(3u);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParamsDriver.\n", v39, 3, v40, "AVE_USL_Drv_Start", 716, "pInitSettings->pVideoParamsDriver");
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParamsDriver.", v39, 3, v40, "AVE_USL_Drv_Start", 716, "pInitSettings->pVideoParamsDriver");
    }

    goto LABEL_170;
  }

  v22 = v21[5];
  if (v22 == 2)
  {
    if (!v15[288])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v49 = AVE_Log_CheckConsole(3u);
        v50 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(4);
        if (v49)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for VPSHevcParams.\n", v50, 3, v51, "AVE_USL_Drv_Start", 730, "pInitSettings->VPSHevcParams");
          v50 = AVE_GetCurrTime();
          v51 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for VPSHevcParams.", v50, 3, v51, "AVE_USL_Drv_Start", 730, "pInitSettings->VPSHevcParams");
      }

      goto LABEL_170;
    }

    if (!v15[289])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v55 = AVE_Log_CheckConsole(3u);
        v56 = AVE_GetCurrTime();
        v57 = AVE_Log_GetLevelStr(4);
        if (v55)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSHevcParams.\n", v56, 3, v57, "AVE_USL_Drv_Start", 731, "pInitSettings->psaHEVC_SPS[0]");
          v56 = AVE_GetCurrTime();
          v57 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSHevcParams.", v56, 3, v57, "AVE_USL_Drv_Start", 731, "pInitSettings->psaHEVC_SPS[0]");
      }

      goto LABEL_170;
    }

    if (!v15[291])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v58 = AVE_Log_CheckConsole(3u);
        v59 = AVE_GetCurrTime();
        v60 = AVE_Log_GetLevelStr(4);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSHevcParams.\n", v59, 3, v60, "AVE_USL_Drv_Start", 732, "pInitSettings->psaHEVC_PPS[0]");
          v59 = AVE_GetCurrTime();
          v60 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSHevcParams.", v59, 3, v60, "AVE_USL_Drv_Start", 732, "pInitSettings->psaHEVC_PPS[0]");
      }

      goto LABEL_170;
    }

    if (!v15[293])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v74 = AVE_Log_CheckConsole(3u);
        v75 = AVE_GetCurrTime();
        v76 = AVE_Log_GetLevelStr(4);
        if (v74)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHHevcParams.\n", v75, 3, v76, "AVE_USL_Drv_Start", 733, "pInitSettings->SHHevcParams");
          v75 = AVE_GetCurrTime();
          v76 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHHevcParams.", v75, 3, v76, "AVE_USL_Drv_Start", 733, "pInitSettings->SHHevcParams");
      }

      goto LABEL_170;
    }

    if (!v15[294])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v88 = AVE_Log_CheckConsole(3u);
        v89 = AVE_GetCurrTime();
        v90 = AVE_Log_GetLevelStr(4);
        if (v88)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for RPSHevcParams.\n", v89, 3, v90, "AVE_USL_Drv_Start", 734, "pInitSettings->RPSHevcParams");
          v89 = AVE_GetCurrTime();
          v90 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for RPSHevcParams.", v89, 3, v90, "AVE_USL_Drv_Start", 734, "pInitSettings->RPSHevcParams");
      }

      goto LABEL_170;
    }
  }

  else
  {
    if (v22 != 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v43 = AVE_Log_CheckConsole(3u);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d\n", v44, 3, v45, "AVE_USL_Drv_Start", 738, "false", *(v15[2] + 5));
          v44 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d", v44, 3, v45, "AVE_USL_Drv_Start", 738, "false", *(v15[2] + 5));
      }

      goto LABEL_170;
    }

    if (!v15[101])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v46 = AVE_Log_CheckConsole(3u);
        v47 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSParams.\n", v47, 3, v48, "AVE_USL_Drv_Start", 722, "pInitSettings->SPSParams");
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSParams.", v47, 3, v48, "AVE_USL_Drv_Start", 722, "pInitSettings->SPSParams");
      }

      goto LABEL_170;
    }

    if (!v15[102])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v52 = AVE_Log_CheckConsole(3u);
        v53 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSParams.\n", v53, 3, v54, "AVE_USL_Drv_Start", 723, "pInitSettings->PPSParams");
          v53 = AVE_GetCurrTime();
          v54 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSParams.", v53, 3, v54, "AVE_USL_Drv_Start", 723, "pInitSettings->PPSParams");
      }

      goto LABEL_170;
    }

    if (!v15[103])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v23 = AVE_Log_CheckConsole(3u);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHParams.\n", v24, 3, v25, "AVE_USL_Drv_Start", 724, "pInitSettings->SHParams");
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHParams.", v24, 3, v25, "AVE_USL_Drv_Start", 724, "pInitSettings->SHParams");
      }

LABEL_170:
      SurfacePool = 4294966295;
      goto LABEL_171;
    }
  }

  v41 = v16 + 12800;
  v16[13261] = v13;
  memcpy(v16 + 29, v20, 0x300uLL);
  memcpy(v16 + 360, v15[1], 0x2460uLL);
  memcpy(v16 + 1524, v15[2], 0x4E0uLL);
  v42 = *(v15[2] + 5);
  v142 = v16 + 12800;
  if (v42 == 2)
  {
    __src = v16 + 29;
    memcpy(v16 + 1680, v15[288], 0x2FCCuLL);
    v61 = v15;
    v62 = 0;
    v63 = v61 + 289;
    v140 = v61;
    v64 = v61 + 291;
    v144 = v16 + 25676;
    v65 = v16;
    v143 = v16 + 41284;
    v66 = 1;
    do
    {
      v67 = v66;
      v68 = v63[v62];
      if (v68)
      {
        memcpy(&v144[7804 * v62], v68, 0x1E7CuLL);
      }

      v69 = v64[v62];
      if (v69)
      {
        memcpy(&v143[9632 * v62], v69, 0x25A0uLL);
      }

      v66 = 0;
      v62 = 1;
    }

    while ((v67 & 1) != 0);
    v15 = v140;
    v16 = v65;
    memcpy(v65 + 7569, v140[293], 0x53F0uLL);
    memcpy(v65 + 10255, v140[294], 0x5DD8uLL);
    memcpy(v65 + 125, v140 + 295, 0x758uLL);
    v41 = v142;
  }

  else
  {
    if (v42 != 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v71 = AVE_Log_CheckConsole(3u);
        v72 = AVE_GetCurrTime();
        v73 = AVE_Log_GetLevelStr(4);
        if (v71)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d\n", v72, 3, v73, "AVE_USL_Drv_Start", 785, "false", *(v15[2] + 5));
          v72 = AVE_GetCurrTime();
          v73 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d", v72, 3, v73, "AVE_USL_Drv_Start", 785, "false", *(v15[2] + 5));
      }

      goto LABEL_170;
    }

    __src = v16 + 29;
    memcpy(v16 + 1680, v15[101], 0x6B4uLL);
    memcpy(v16 + 15156, v15[102], 0x180uLL);
    memcpy(v16 + 15540, v15[103], 0x924uLL);
    memcpy(v16 + 125, v15 + 104, 0x5C0uLL);
  }

  v70 = *(v16 + 2);
  if (v70 == 4)
  {
    v77 = *(v15 + 48);
    v78 = *(v15 + 49);
    v16[129] = v15[100];
    *(v16 + 125) = v77;
    *(v16 + 127) = v78;
  }

  else if (v70 == 3)
  {
    memcpy(v16 + 125, v15 + 7, 0x2C8uLL);
  }

  *(v41 + 232) = *(v15 + 5);
  if (!v41[458])
  {
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v84 = 48;
    *v146 = 0u;
    if (v70 <= 2)
    {
      if (v70 == 1)
      {
        if ((*(v16 + 683) & 0x80) != 0)
        {
          v106 = *(v16 + 172);
        }

        else
        {
          v106 = -1;
        }

        v100 = AVE_Enc_DecideInputQueueMaxCnt(*(v16 + 80), *(v16 + 81), *(v16 + 82), *(v16 + 83), v106);
        goto LABEL_154;
      }

      if (v70 != 2)
      {
LABEL_155:
        v110 = AVE_DAL::SetUpIPC(v16[3], (v84 + 1), 72736);
        if (!v110)
        {
          operator new();
        }

        SurfacePool = v110;
        if (AVE_Log_CheckLevel(0xEu, 4))
        {
          v111 = AVE_Log_CheckConsole(0xEu);
          v112 = AVE_GetCurrTime();
          v113 = AVE_Log_GetLevelStr(4);
          if (v111)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to set up IPC %p %lld %d\n", v112, 14, v113, "AVE_USL_Drv_Start", 837, "ret == 0", v16, *v16, SurfacePool);
            v112 = AVE_GetCurrTime();
            v113 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set up IPC %p %lld %d", v112, 14, v113, "AVE_USL_Drv_Start", 837, "ret == 0", v16, *v16, SurfacePool);
        }

        goto LABEL_171;
      }
    }

    else if (v70 != 3 && v70 != 4 && v70 != 5)
    {
      goto LABEL_155;
    }

    v100 = AVE_LRME_DecideInputQueueMaxCnt();
LABEL_154:
    v84 = v100;
    goto LABEL_155;
  }

  v146[0] = 0;
  AVE_DAL::Alloc(v16[3], 72736, v146);
  AVE_DAL::Addr2Idx(v16[3], v146[0], &v162);
  v79 = v146[0];
  if (!v146[0])
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v85 = AVE_Log_CheckConsole(3u);
      v86 = AVE_GetCurrTime();
      v87 = AVE_Log_GetLevelStr(4);
      if (v85)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v86, 3, v87, "AVE_USL_Drv_Start", 926, "Frame");
        v86 = AVE_GetCurrTime();
        v87 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v86, 3, v87, "AVE_USL_Drv_Start", 926, "Frame");
    }

    goto LABEL_164;
  }

  bzero((v146[0] + 8), 0x11C18uLL);
  v80 = v162;
  *v79 = v162;
  *(v79 + 4) = 5;
  *(v79 + 40) = *(v16 + 11);
  *(v79 + 33048) = v15[530];
  *(v79 + 16) = v142[461] != 0;
  *(v79 + 20) = *(v142 + 924);
  *&v148 = 0;
  *v146 = 0u;
  v147 = 0u;
  LODWORD(v146[0]) = v80;
  if (Connection::writePacketBlock(v142[460], v146))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v81 = AVE_Log_CheckConsole(3u);
      v82 = AVE_GetCurrTime();
      v83 = AVE_Log_GetLevelStr(4);
      if (v81)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v82, 3, v83, "AVE_USL_Drv_Start", 946, "res == 0");
        v82 = AVE_GetCurrTime();
        v83 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread", v82, 3, v83, "AVE_USL_Drv_Start", 946, "res == 0");
    }

LABEL_135:
    SurfacePool = 4294966296;
    v101 = v16;
LABEL_136:
    v146[0] = v15[530];
    AVE_USL_Drv_Stop(v101, v146, 0);
    goto LABEL_171;
  }

  v163[0] = *v16;
  v91 = &unk_295613FE7;
  if (v145)
  {
    v91 = v145;
  }

  AVE_SNPrintf(v164, 512, "%s", v91);
  v176 = v162;
  v92 = *(v16 + 830);
  v93 = *(v16 + 832);
  v167 = *(v16 + 831);
  v168 = v93;
  v165 = *(v16 + 829);
  v166 = v92;
  v169 = *(v16 + 3332);
  v94 = *(v16 + 13380);
  v172 = *(v16 + 13364);
  v173 = v94;
  v95 = *(v16 + 13348);
  v170 = *(v16 + 13332);
  v171 = v95;
  v174 = *(v16 + 3349);
  v163[3] = 118000000;
  v163[4] = AVE_GetCurrTime();
  memcpy(v175, __src, sizeof(v175));
  *(v79 + 33072) = AVE_GetCurrTime();
  SurfacePool = AVE_DAL::UCStart(v16[3], v163, v161);
  if (SurfacePool)
  {
    Connection::dropLastPacketBlock(v142[460]);
    if (AVE_Log_CheckLevel(0x28u, 4))
    {
      v97 = AVE_Log_CheckConsole(0x28u);
      v98 = AVE_GetCurrTime();
      v99 = AVE_Log_GetLevelStr(4);
      if (v97)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to start %d\n", v98, 40, v99, "AVE_USL_Drv_Start", 973, "ret == 0", SurfacePool);
        v98 = AVE_GetCurrTime();
        v99 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %d", v98, 40, v99, "AVE_USL_Drv_Start", 973, "ret == 0", SurfacePool);
    }

    goto LABEL_163;
  }

  *&v148 = 0;
  *v146 = 0u;
  v147 = 0u;
  PacketBlock = Connection::readPacketBlock(v142[459], v146, 120000000);
  if (LODWORD(v146[0]) != v162)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v107 = AVE_Log_CheckConsole(3u);
      v108 = AVE_GetCurrTime();
      v109 = AVE_Log_GetLevelStr(4);
      if (v107)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter != counter.\n", v108, 3, v109, "AVE_USL_Drv_Start", 984, "status.counter == counter");
        v108 = AVE_GetCurrTime();
        v109 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter != counter.", v108, 3, v109, "AVE_USL_Drv_Start", 984, "status.counter == counter");
    }

    goto LABEL_135;
  }

  if (v148)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v103 = AVE_Log_CheckConsole(3u);
      v104 = AVE_GetCurrTime();
      v105 = AVE_Log_GetLevelStr(4);
      if (v103)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: errorCode = 0x%08x.\n", v104, 3, v105, "AVE_USL_Drv_Start", 985, "status.errorCode == 0", v148);
        v104 = AVE_GetCurrTime();
        v105 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: errorCode = 0x%08x.", v104, 3, v105, "AVE_USL_Drv_Start", 985, "status.errorCode == 0", v148);
    }

    goto LABEL_135;
  }

  if (PacketBlock)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v114 = AVE_Log_CheckConsole(3u);
      v115 = AVE_GetCurrTime();
      v116 = AVE_Log_GetLevelStr(4);
      if (v114)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v115, 3, v116, "AVE_USL_Drv_Start", 986, "res == 0");
        v115 = AVE_GetCurrTime();
        v116 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread", v115, 3, v116, "AVE_USL_Drv_Start", 986, "res == 0");
    }

    goto LABEL_135;
  }

  v121 = v161[2];
  v122 = DWORD1(v161[2]);
  *(v142 + 925) = v161[2];
  *(v142 + 926) = v122;
  v123 = *a9;
  if (*a9)
  {
    if (v123 != -1 && v123 > v122)
    {
      v122 = *a9;
    }
  }

  else
  {
    v122 = v121;
  }

  *a9 = v122;
  if (Connection::connectionSize(v142[460], v122))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v124 = AVE_Log_CheckConsole(3u);
      v125 = AVE_GetCurrTime();
      v126 = AVE_Log_GetLevelStr(4);
      if (v124)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d\n", v125, 3, v126, "AVE_USL_Drv_Start", 1010, "ret == 0", *a9);
        v125 = AVE_GetCurrTime();
        v126 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d", v125, 3, v126, "AVE_USL_Drv_Start", 1010, "ret == 0", *a9);
    }

    goto LABEL_135;
  }

  if (Connection::connectionSize(v142[459], *a9))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v127 = AVE_Log_CheckConsole(3u);
      v128 = AVE_GetCurrTime();
      v129 = AVE_Log_GetLevelStr(4);
      if (v127)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d\n", v128, 3, v129, "AVE_USL_Drv_Start", 1012, "ret == 0", *a9);
        v128 = AVE_GetCurrTime();
        v129 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v128, 3, v129, "AVE_USL_Drv_Start", 1012, "ret == 0", *a9);
    }

    goto LABEL_135;
  }

  if (__dst)
  {
    memcpy(__dst, &v161[2] + 8, 0x128uLL);
  }

  AVE_USL_CalcSurfaceInfo(v16, __src, (v16 + 6), *a9);
  if ((*(*v15 + 666) & 1) != 0 && !v142[466])
  {
    SurfacePool = AVE_PixelBuf_CreateSurfacePool(*(v16 + 17), *(v16 + 16), v142 + 466);
    if (SurfacePool)
    {
      if (AVE_Log_CheckLevel(0x28u, 4))
      {
        v133 = AVE_Log_CheckConsole(0x28u);
        v134 = AVE_GetCurrTime();
        v135 = AVE_Log_GetLevelStr(4);
        v137 = *(v16 + 16);
        v136 = *(v16 + 17);
        if (v133)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d\n", v134, 40, v135, "AVE_USL_Drv_Start", 1036, "ret == 0", v136, v137, *v16, SurfacePool);
          v138 = AVE_GetCurrTime();
          v139 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d", v138, 40, v139, "AVE_USL_Drv_Start", 1036, "ret == 0", *(v16 + 17), *(v16 + 16), *v16, SurfacePool);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d", v134, 40, v135, "AVE_USL_Drv_Start", 1036, "ret == 0", v136, v137, *v16, SurfacePool);
        }
      }

      goto LABEL_163;
    }
  }

  SurfacePool = AVE_CreateInUSurfaces(v16 + 6, *v16, v16 + 16);
  if (SurfacePool)
  {
    if (AVE_Log_CheckLevel(0x28u, 4))
    {
      v130 = AVE_Log_CheckConsole(0x28u);
      v131 = AVE_GetCurrTime();
      v132 = AVE_Log_GetLevelStr(4);
      if (v130)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d\n", v131, 40, v132, "AVE_USL_Drv_Start", 1043, "ret == 0", *v16, SurfacePool);
        v131 = AVE_GetCurrTime();
        v132 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d", v131, 40, v132, "AVE_USL_Drv_Start", 1043, "ret == 0", *v16, SurfacePool);
    }

LABEL_163:
    v101 = v16;
    if (SurfacePool != -1003)
    {
      goto LABEL_136;
    }

LABEL_164:
    SurfacePool = 4294966293;
    goto LABEL_171;
  }

  *(v16 + 40) = 1;
LABEL_171:
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v117 = AVE_Log_CheckConsole(0x28u);
    v118 = AVE_GetCurrTime();
    v119 = AVE_Log_GetLevelStr(7);
    if (v117)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverInit err %d.\n", v118, 40, v119, SurfacePool);
      v118 = AVE_GetCurrTime();
      v119 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverInit err %d.", v118, 40, v119, SurfacePool);
  }

  return SurfacePool;
}