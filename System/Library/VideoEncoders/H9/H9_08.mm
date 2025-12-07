void Connection::Connection(Connection *this)
{
  pthread_mutex_init(this, 0);
  pthread_cond_init((this + 64), 0);
  pthread_cond_init((this + 112), 0);
  *(this + 12) = vdupq_n_s64(0x80uLL);
  *(this + 26) = 0;
  *(this + 27) = 0;
  operator new[]();
}

uint64_t Connection::dropLastPacketBlock(pthread_mutex_t *this)
{
  pthread_mutex_lock(this);
  v2 = *&this[3].__opaque[16];
  if (v2 >= 1 && v2 > *&this[3].__opaque[8])
  {
    *&this[3].__opaque[16] = v2 - 1;
  }

  pthread_mutex_unlock(this);
  return 0;
}

uint64_t Connection::readPacketBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock(a1);
  v6 = a3 / 1000000;
  v7 = a3 % 1000000;
  while (1)
  {
    v8 = *(a1 + 208);
    if (*(a1 + 216) > v8)
    {
      break;
    }

    gettimeofday((a1 + 176), 0);
    v9 = 1000 * (v7 + *(a1 + 184));
    *(a1 + 160) = *(a1 + 176) + v6;
    *(a1 + 168) = v9;
    if (pthread_cond_timedwait((a1 + 64), a1, (a1 + 160)) == 60)
    {
      v10 = 0xFFFFFFFFLL;
      goto LABEL_11;
    }
  }

  v11 = *(a1 + 224) + 40 * (v8 % *(a1 + 192));
  v12 = *v11;
  v13 = *(v11 + 16);
  *(a2 + 32) = *(v11 + 32);
  *a2 = v12;
  *(a2 + 16) = v13;
  v14 = *(a1 + 200);
  v15 = *(a1 + 208) + 1;
  *(a1 + 208) = v15;
  v16 = *(a1 + 216);
  v17 = __OFSUB__(v16, v15);
  v18 = v16 - v15;
  if ((v18 < 0) ^ v17 | (v18 == 0))
  {
    v18 = 0;
  }

  if (v18 < v14)
  {
    pthread_cond_signal((a1 + 112));
  }

  v10 = 0;
LABEL_11:
  pthread_mutex_unlock(a1);
  return v10;
}

uint64_t Connection::connectionSize(pthread_mutex_t *this, unsigned int a2)
{
  pthread_mutex_lock(this);
  if (this[3].__sig >= a2)
  {
    v11 = 0;
    *this[3].__opaque = a2;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Au, 4))
    {
      v4 = AVE_Log_CheckConsole(0x2Au);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v8 = *&this[3].__opaque[8];
      v7 = *&this[3].__opaque[16];
      v9 = v7 <= v8;
      v10 = v7 - v8;
      if (v9)
      {
        v10 = 0;
      }

      if (v4)
      {
        printf("%lld %d AVE %s: configure connection size fail %lld %lld %d %lld\n", CurrTime, 42, LevelStr, this[3].__sig, *this[3].__opaque, a2, v10);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: configure connection size fail %lld %lld %d %lld", CurrTime);
    }

    v11 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock(this);
  return v11;
}

uint64_t AVE_USL_Drv_Stop(uint64_t a1, uint64_t *a2, int a3)
{
  v49 = -1;
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v6 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.\n", CurrTime, 40, LevelStr);
      v9 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.", v9, 40, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.", CurrTime, 40, LevelStr);
    }
  }

  if (a1)
  {
    v48 = *a2;
    if (AVE_USL_Drv_Complete(a1, &v48) == -1004)
    {
      v10 = 4294966292;
    }

    else
    {
      v47[0] = 0;
      AVE_DAL::Alloc(*(a1 + 24), 72736, v47);
      AVE_DAL::Addr2Idx(*(a1 + 24), v47[0], &v49);
      v15 = v47[0];
      if (!v47[0])
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v20 = AVE_Log_CheckConsole(3u);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v21, 3, v22, "AVE_USL_Drv_Stop", 1103, "Frame");
            v23 = AVE_GetCurrTime();
            v45 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v23, 3, v45, "AVE_USL_Drv_Stop", 1103, "Frame");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v21, 3, v22, "AVE_USL_Drv_Stop", 1103, "Frame");
          }
        }

        v10 = 4294966293;
        goto LABEL_32;
      }

      bzero((v47[0] + 8), 0x11C18uLL);
      v16 = v49;
      *v15 = v49;
      *(v15 + 4) = 6;
      *(v15 + 40) = *(a1 + 44);
      *(v15 + 33048) = *a2;
      *(v15 + 16) = *(a1 + 106088) != 0;
      *(v15 + 20) = *(a1 + 106096);
      memset(v47, 0, 40);
      LODWORD(v47[0]) = v16;
      if (Connection::writePacketBlock(*(a1 + 106080), v47))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v17 = AVE_Log_CheckConsole(3u);
          v18 = AVE_GetCurrTime();
          v19 = AVE_Log_GetLevelStr(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v18, 3, v19, "AVE_USL_Drv_Stop", 1123, "res == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
        }
      }

      else
      {
        *&v47[3] = 0u;
        *&v47[1] = 0u;
        memset(v46, 0, sizeof(v46));
        v47[0] = *a1;
        v47[5] = v49;
        v47[3] = 118000000;
        v47[4] = AVE_GetCurrTime();
        v24 = AVE_DAL::UCStop(*(a1 + 24), v47, v46);
        if (v24)
        {
          v10 = v24;
          v25 = *(a1 + 106080);
          pthread_mutex_lock(v25);
          v26 = *(v25 + 216);
          if (v26 >= 1 && v26 > *(v25 + 208))
          {
            *(v25 + 216) = v26 - 1;
          }

          pthread_mutex_unlock(v25);
          if (AVE_Log_CheckLevel(0x28u, 4))
          {
            v27 = AVE_Log_CheckConsole(0x28u);
            v28 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            if (v27)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v28, 40, v29, "AVE_USL_Drv_Stop", 1140, "ret == 0", v10);
              v28 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %d", v28);
          }

          goto LABEL_32;
        }

        memset(v47, 0, 40);
        PacketBlock = Connection::readPacketBlock(*(a1 + 106072), v47, 120000000);
        if (LODWORD(v47[0]) == v49)
        {
          if (!PacketBlock)
          {
            v10 = 0;
            goto LABEL_32;
          }

          if (AVE_Log_CheckLevel(3u, 4))
          {
            v37 = AVE_Log_CheckConsole(3u);
            v38 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(4);
            if (v37)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v38, 3, v39, "AVE_USL_Drv_Stop", 1152, "res == 0");
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
          }
        }

        else if (AVE_Log_CheckLevel(3u, 4))
        {
          v40 = AVE_Log_CheckConsole(3u);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
          if (v40)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.\n", v41, 3, v42, "AVE_USL_Drv_Stop", 1151, "status.counter == counter");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.");
        }
      }

      v10 = 4294966296;
    }

LABEL_32:
    if (a3)
    {
      AppleAVEVA_CleanMem(a1);
    }

    *(a1 + 40) = 0;
    goto LABEL_35;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v11 = AVE_Log_CheckConsole(3u);
    v12 = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.\n", v12, 3, v13, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
      v14 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.", v14, 3, v44, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.", v12, 3, v13, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
    }
  }

  v10 = 4294966295;
LABEL_35:
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v30 = AVE_Log_CheckConsole(0x28u);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(7);
    if (v30)
    {
      if (a1)
      {
        v33 = *(a1 + 44);
      }

      else
      {
        v33 = 0;
      }

      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Stop F %d %d\n", v31, 40, v32, v33, v10);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(7);
      if (!a1)
      {
        goto LABEL_43;
      }
    }

    else if (!a1)
    {
LABEL_43:
      v34 = 0;
      goto LABEL_44;
    }

    v34 = *(a1 + 44);
LABEL_44:
    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Stop F %d %d", v31, 40, v32, v34, v10);
  }

  return v10;
}

uint64_t AVE_USL_Drv_Complete(uint64_t a1, void *a2)
{
  v53 = -1;
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v4 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.\n", CurrTime, 40, LevelStr);
      v7 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.", v7, 40, v47);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.", CurrTime, 40, LevelStr);
    }
  }

  if (a1)
  {
    if (*(a1 + 40) != 1)
    {
      v17 = 4294966292;
      goto LABEL_32;
    }

    v52[0] = 0;
    AVE_DAL::Alloc(*(a1 + 24), 72736, v52);
    AVE_DAL::Addr2Idx(*(a1 + 24), v52[0], &v53);
    v8 = v52[0];
    if (v52[0])
    {
      bzero((v52[0] + 8), 0x11C18uLL);
      v9 = v53;
      *v8 = v53;
      *(v8 + 4) = 8;
      *(v8 + 40) = *(a1 + 44);
      *(v8 + 33048) = *a2;
      *(v8 + 16) = *(a1 + 106088) != 0;
      *(v8 + 20) = *(a1 + 106096);
      memset(v52, 0, 40);
      LODWORD(v52[0]) = v9;
      if (Connection::writePacketBlock(*(a1 + 106080), v52))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v10 = AVE_Log_CheckConsole(3u);
          v11 = AVE_GetCurrTime();
          v12 = AVE_Log_GetLevelStr(4);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v11, 3, v12, "AVE_USL_Drv_Complete", 1215, "res == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
        }

LABEL_29:
        v17 = 4294966296;
        goto LABEL_32;
      }

      *&v52[3] = 0u;
      *&v52[1] = 0u;
      v50 = 0u;
      v51 = 0u;
      v52[0] = *a1;
      v52[5] = v53;
      v52[3] = 118000000;
      v52[4] = AVE_GetCurrTime();
      v22 = AVE_DAL::UCComplete(*(a1 + 24), v52, &v50);
      if (!v22)
      {
        v32 = *(a1 + 106072);
        pthread_mutex_lock(v32);
        do
        {
          v34 = *(v32 + 208);
          v33 = *(v32 + 216);
          if (v33 > v34)
          {
            v37 = *(v32 + 200);
            v36 = *(*(v32 + 224) + 40 * (v34 % *(v32 + 192)));
            v38 = v34 + 1;
            *(v32 + 208) = v38;
            v39 = v33 <= v38;
            v40 = v33 - v38;
            if (v39)
            {
              v40 = 0;
            }

            if (v40 < v37)
            {
              pthread_cond_signal((v32 + 112));
            }

            pthread_mutex_unlock(v32);
            if (v36 == v53)
            {
              v17 = 0;
              goto LABEL_32;
            }

            goto LABEL_50;
          }

          gettimeofday((v32 + 176), 0);
          v35 = 1000 * *(v32 + 184);
          *(v32 + 160) = *(v32 + 176) + 120;
          *(v32 + 168) = v35;
        }

        while (pthread_cond_timedwait((v32 + 64), v32, (v32 + 160)) != 60);
        pthread_mutex_unlock(v32);
        if (v53)
        {
          v36 = 0;
LABEL_50:
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v41 = AVE_Log_CheckConsole(3u);
            v42 = AVE_GetCurrTime();
            v43 = AVE_Log_GetLevelStr(4);
            if (v41)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter (%d) != counter (%d).\n", v42, 3, v43, "AVE_USL_Drv_Complete", 1243, "status.counter == counter", v36, v53);
              v42 = AVE_GetCurrTime();
              v43 = AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter (%d) != counter (%d).", v42, 3, v43, "AVE_USL_Drv_Complete", 1243, "status.counter == counter", v36, v53, v50, v51);
          }

          goto LABEL_29;
        }

        if (AVE_Log_CheckLevel(3u, 4))
        {
          v44 = AVE_Log_CheckConsole(3u);
          v45 = AVE_GetCurrTime();
          v46 = AVE_Log_GetLevelStr(4);
          if (v44)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v45, 3, v46, "AVE_USL_Drv_Complete", 1244, "res == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
        }

        goto LABEL_29;
      }

      v17 = v22;
      v23 = *(a1 + 106080);
      pthread_mutex_lock(v23);
      v24 = *(v23 + 216);
      if (v24 >= 1 && v24 > *(v23 + 208))
      {
        *(v23 + 216) = v24 - 1;
      }

      pthread_mutex_unlock(v23);
      if (AVE_Log_CheckLevel(0x28u, 4))
      {
        v25 = AVE_Log_CheckConsole(0x28u);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %d\n", v26, 40, v27, "AVE_USL_Drv_Complete", 1232, "ret == 0", v17);
          v26 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %d", v26);
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v18 = AVE_Log_CheckConsole(3u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v19, 3, v20, "AVE_USL_Drv_Complete", 1195, "Frame");
          v21 = AVE_GetCurrTime();
          v49 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v21, 3, v49, "AVE_USL_Drv_Complete", 1195, "Frame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v19, 3, v20, "AVE_USL_Drv_Complete", 1195, "Frame");
        }
      }

      v17 = 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v13 = AVE_Log_CheckConsole(3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.\n", v14, 3, v15, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
        v16 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.", v16, 3, v48, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.", v14, 3, v15, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
      }
    }

    v17 = 4294966295;
  }

LABEL_32:
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v28 = AVE_Log_CheckConsole(0x28u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(7);
    if (v28)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeCompleteFrames F %d %d\n", v29, 40, v30, *(a1 + 44), v17);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeCompleteFrames F %d %d", v29, 40, v30, *(a1 + 44), v17);
  }

  return v17;
}

uint64_t AVE_USL_Drv_Process(void *a1, uint64_t a2)
{
  v142[0] = -1;
  pixelBufferOut = 0;
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v4 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame\n", CurrTime, 40, LevelStr);
      v7 = AVE_GetCurrTime();
      v125 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame", v7, 40, v125);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame", CurrTime, 40, LevelStr);
    }
  }

  if (!a1)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v14 = AVE_Log_CheckConsole(3u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for driver data.\n", v15, 3, v16, "AVE_USL_Drv_Process", 1268, "pDriverInstance");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for driver data.");
    }

    goto LABEL_58;
  }

  if (!a2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v17 = AVE_Log_CheckConsole(3u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for pSettings.\n", v18, 3, v19, "AVE_USL_Drv_Process", 1269, "pSettings");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for pSettings.");
    }

    goto LABEL_58;
  }

  if ((a1[5] & 1) == 0)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v20 = AVE_Log_CheckConsole(3u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.\n", v21, 3, v22, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
        v23 = AVE_GetCurrTime();
        v127 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.", v23, 3, v127, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.", v21, 3, v22, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
      }
    }

    v27 = 4294966285;
    goto LABEL_59;
  }

  if (!*(a2 + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v24 = AVE_Log_CheckConsole(3u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBuffer == NULL\n", v25, 3, v26, "AVE_USL_Drv_Process", 1271, "pSettings->CVImageBuffer");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBuffer == NULL");
    }

    goto LABEL_58;
  }

  v8 = *(a1 + 2);
  if (v8 != 5 && v8 != 3)
  {
    goto LABEL_36;
  }

  if (!*(a2 + 24))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v28 = AVE_Log_CheckConsole(3u);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBufferOutput == NULL\n", v29, 3, v30, "AVE_USL_Drv_Process", 1276, "pSettings->CVImageBufferOutput");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBufferOutput == NULL");
    }

LABEL_58:
    v27 = 4294966295;
    goto LABEL_59;
  }

  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v9 = AVE_Log_CheckConsole(0x28u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(7);
    v12 = *(a2 + 24);
    if (v9)
    {
      printf("%lld %d AVE %s: pSettings->CVImageBufferOutput = %p\n", v10, 40, v11, v12);
      v13 = AVE_GetCurrTime();
      v126 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: pSettings->CVImageBufferOutput = %p", v13, 40, v126, *(a2 + 24));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: pSettings->CVImageBufferOutput = %p", v10, 40, v11, v12);
    }
  }

LABEL_36:
  v140[0] = 0;
  AVE_DAL::Alloc(a1[3], 72736, v140);
  AVE_DAL::Addr2Idx(a1[3], v140[0], v142);
  v31 = v140[0];
  if (v140[0])
  {
    v32 = a1 + 13260;
    bzero((v140[0] + 8), 0x11C18uLL);
    *v31 = v142[0];
    *(v31 + 4) = 7;
    *(v31 + 40) = *(a1 + 11);
    *(v31 + 44) = *(a2 + 188);
    *(v31 + 16) = a1[13261] != 0;
    *(v31 + 20) = *(a1 + 26524);
    *(v31 + 2552) = *a2;
    *(v31 + 2600) = *(a2 + 56);
    IOSurface = CVPixelBufferGetIOSurface(*(a2 + 8));
    *(v31 + 2508) = IOSurfaceGetID(IOSurface);
    v34 = CVPixelBufferGetIOSurface(*(a2 + 16));
    *(v31 + 2512) = IOSurfaceGetID(v34);
    v35 = *(*(a2 + 144) + 19000);
    if (v35)
    {
      v36 = CVPixelBufferGetIOSurface(v35);
      *(v31 + 2516) = IOSurfaceGetID(v36);
    }

    v37 = *(a1 + 2);
    if (v37 > 3)
    {
      if (v37 == 4)
      {
        *(v31 + 2552) = *a2;
        *(v31 + 2560) = *(a2 + 8);
        if (AVE_Log_CheckLevel(0x28u, 7))
        {
          v48 = AVE_Log_CheckConsole(0x28u);
          v49 = AVE_GetCurrTime();
          v50 = AVE_Log_GetLevelStr(7);
          if (v48)
          {
            printf("%lld %d AVE %s: %s: sSIDDataSet.iInputData = %d\n", v49, 40, v50, "AVE_USL_Drv_Process", *(v31 + 2508));
            v49 = AVE_GetCurrTime();
            v50 = AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iInputData = %d", v49, 40, v50, "AVE_USL_Drv_Process", *(v31 + 2508));
        }

        v55 = *(a2 + 32);
        *(v31 + 2576) = v55;
        if (v55)
        {
          v56 = CVPixelBufferGetIOSurface(v55);
          *(v31 + 2536) = IOSurfaceGetID(v56);
          if (AVE_Log_CheckLevel(0x28u, 7))
          {
            v57 = AVE_Log_CheckConsole(0x28u);
            v58 = AVE_GetCurrTime();
            v59 = AVE_Log_GetLevelStr(7);
            if (v57)
            {
              printf("%lld %d AVE %s: %s: sSIDDataSet.iGGMStats = %d\n", v58, 40, v59, "AVE_USL_Drv_Process", *(v31 + 2536));
              v58 = AVE_GetCurrTime();
              v59 = AVE_Log_GetLevelStr(7);
            }

            syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iGGMStats = %d", v58, 40, v59, "AVE_USL_Drv_Process", *(v31 + 2536));
          }
        }

        v60 = 0;
        v61 = v31 + 2528;
        v62 = 1;
        do
        {
          v63 = v62;
          v64 = *(a2 + 40 + 8 * v60);
          *(v31 + 2584 + 8 * v60) = v64;
          if (v64)
          {
            v65 = CVPixelBufferGetIOSurface(v64);
            *(v61 + 4 * v60) = IOSurfaceGetID(v65);
            if (AVE_Log_CheckLevel(0x28u, 7))
            {
              v66 = AVE_Log_CheckConsole(0x28u);
              v67 = AVE_GetCurrTime();
              v68 = AVE_Log_GetLevelStr(7);
              v69 = *(v61 + 4 * v60);
              if (v66)
              {
                printf("%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d\n", v67, 40, v68, "AVE_USL_Drv_Process", v60, v69);
                v70 = AVE_GetCurrTime();
                v71 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d", v70, 40, v71, "AVE_USL_Drv_Process", v60, *(v61 + 4 * v60));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d", v67, 40, v68, "AVE_USL_Drv_Process", v60, v69);
              }
            }
          }

          v62 = 0;
          v60 = 1;
        }

        while ((v63 & 1) != 0);
        v72 = *(a2 + 24);
        v32 = a1 + 13260;
        *(v31 + 2568) = v72;
        if (v72)
        {
          v73 = CVPixelBufferGetIOSurface(v72);
          *(v31 + 2540) = IOSurfaceGetID(v73);
          if (AVE_Log_CheckLevel(0x28u, 7))
          {
            v74 = AVE_Log_CheckConsole(0x28u);
            v75 = AVE_GetCurrTime();
            v76 = AVE_Log_GetLevelStr(7);
            if (v74)
            {
              printf("%lld %d AVE %s: %s: sSIDDataSet.iGGMOutput = %d\n", v75, 40, v76, "AVE_USL_Drv_Process", *(v31 + 2540));
              v75 = AVE_GetCurrTime();
              v76 = AVE_Log_GetLevelStr(7);
            }

            syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iGGMOutput = %d", v75, 40, v76, "AVE_USL_Drv_Process", *(v31 + 2540));
          }
        }
      }

      else if (v37 == 5)
      {
        *(v31 + 2552) = *a2;
        v46 = *(a2 + 24);
        *(v31 + 2568) = v46;
        v47 = CVPixelBufferGetIOSurface(v46);
        *(v31 + 2544) = IOSurfaceGetID(v47);
      }
    }

    else if (v37 == 2)
    {
      *(v31 + 2552) = *a2;
    }

    else if (v37 == 3)
    {
      *(v31 + 2560) = *(a2 + 8);
      v38 = *(a2 + 24);
      *(v31 + 2568) = v38;
      *(v31 + 2584) = *(a2 + 40);
      v39 = CVPixelBufferGetIOSurface(v38);
      *(v31 + 2520) = IOSurfaceGetID(v39);
      v40 = *(a2 + 40);
      if (v40)
      {
        v41 = CVPixelBufferGetIOSurface(v40);
        *(v31 + 2524) = IOSurfaceGetID(v41);
      }
    }

    v77 = *(a2 + 72);
    *(v31 + 4576) = *(a2 + 88);
    *(v31 + 4560) = v77;
    v78 = *(a2 + 112);
    *(v31 + 4584) = *(a2 + 96);
    *(v31 + 4600) = v78;
    *(v31 + 4608) = *(a2 + 120);
    *(v31 + 33048) = *(a2 + 160);
    v79 = *(a2 + 136);
    v80 = *(v79 + 16);
    *(v31 + 4632) = *v79;
    *(v31 + 4648) = v80;
    v81 = *(v79 + 32);
    v82 = *(v79 + 48);
    v83 = *(v79 + 64);
    *(v31 + 4712) = *(v79 + 80);
    *(v31 + 4680) = v82;
    *(v31 + 4696) = v83;
    *(v31 + 4664) = v81;
    memcpy((v31 + 4720), *(a2 + 144), 0x4A40uLL);
    memcpy((v31 + 23728), *(a2 + 152), 0x1738uLL);
    if (*(a1 + 13256) == 1)
    {
      v85 = *(a2 + 64);
      if (v85)
      {
        if (*(a1 + 3351))
        {
          if (!v32[4])
          {
            if (AVE_Log_CheckLevel(0x28u, 4))
            {
              v107 = AVE_Log_CheckConsole(0x28u);
              v108 = AVE_GetCurrTime();
              v109 = AVE_Log_GetLevelStr(4);
              if (v107)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get VCP %p\n", v108, 40, v109, "AVE_USL_Drv_Process", 1413, "pDriverInstance->pcVCP != __null", a1);
                v108 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VCP %p", v108);
            }

            v27 = 4294966281;
            goto LABEL_142;
          }

          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
          if (!Mutable)
          {
            if (AVE_Log_CheckLevel(0x28u, 4))
            {
              v113 = AVE_Log_CheckConsole(0x28u);
              v114 = AVE_GetCurrTime();
              v115 = AVE_Log_GetLevelStr(4);
              if (v113)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray\n", v114, 40, v115, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
                v116 = AVE_GetCurrTime();
                v131 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray", v116, 40, v131, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray", v114, 40, v115, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
              }
            }

            v27 = 4294966293;
            goto LABEL_142;
          }

          v87 = Mutable;
          AVE_Ref_MakeArray((v31 + 4788), *(v31 + 4776), Mutable);
          AVE_VCP::ScaleRefFrames(v32[4], *(a2 + 64), v87);
          CFRelease(v87);
          v85 = *(a2 + 64);
        }

        AVE_DPB_RetrieveSnapshot(v85, (v31 + 3184));
      }
    }

    AVE_USL_CalcDataSurfaceInfo(a1, v84, v31, (a1 + 6));
    v88 = v32[6];
    if (v88)
    {
      v89 = CVPixelBufferPoolCreatePixelBuffer(0, v88, &pixelBufferOut);
      if (v89)
      {
        v27 = v89;
        if (!AVE_Log_CheckLevel(0x28u, 4))
        {
          goto LABEL_142;
        }

        v90 = AVE_Log_CheckConsole(0x28u);
        v91 = AVE_GetCurrTime();
        v92 = AVE_Log_GetLevelStr(4);
        if (v90)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to create CVPixelBuf %p %d\n", v91, 40, v92, "AVE_USL_Drv_Process", 1440, "ret == 0", v32[6], v27);
          v91 = AVE_GetCurrTime();
          v92 = AVE_Log_GetLevelStr(4);
        }

        v135 = v32[6];
        v137 = v27;
        v133 = 1440;
        v129 = v92;
        v93 = "%lld %d AVE %s: %s:%d %s | failed to create CVPixelBuf %p %d";
        goto LABEL_112;
      }

      v95 = CVPixelBufferGetIOSurface(pixelBufferOut);
      if (!v95)
      {
        if (AVE_Log_CheckLevel(0x28u, 4))
        {
          v104 = AVE_Log_CheckConsole(0x28u);
          v105 = AVE_GetCurrTime();
          v106 = AVE_Log_GetLevelStr(4);
          if (v104)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create IOSurface %p %d\n", v105, 40, v106, "AVE_USL_Drv_Process", 1444, "pIOSurface != __null", pixelBufferOut, 0);
            v105 = AVE_GetCurrTime();
            v106 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create IOSurface %p %d", v105, 40, v106, "AVE_USL_Drv_Process", 1444, "pIOSurface != __null", pixelBufferOut, 0);
        }

        goto LABEL_141;
      }

      ID = IOSurfaceGetID(v95);
    }

    else
    {
      ID = 0;
    }

    DataUSurfaces = AVE_CreateDataUSurfaces(a1 + 12, *a1, (a1 + 16), a1 + 17, ID);
    if (DataUSurfaces)
    {
      v27 = DataUSurfaces;
      if (!AVE_Log_CheckLevel(0x28u, 4))
      {
        goto LABEL_142;
      }

      v97 = AVE_Log_CheckConsole(0x28u);
      v98 = AVE_GetCurrTime();
      v99 = AVE_Log_GetLevelStr(4);
      if (v97)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d\n", v98, 40, v99, "AVE_USL_Drv_Process", 1454, "ret == 0", *a1, *(v31 + 40));
        v98 = AVE_GetCurrTime();
        v99 = AVE_Log_GetLevelStr(4);
      }

      v136 = *a1;
      v138 = *(v31 + 40);
      v134 = 1454;
      v130 = v99;
      v100 = "%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d";
LABEL_129:
      syslog(3, v100, v98, 40, v130, "AVE_USL_Drv_Process", v134, "ret == 0", v136, v138);
      goto LABEL_142;
    }

    *(v31 + 2608) = pixelBufferOut;
    v101 = PrepareMBInputCtrl(a1, v31);
    if (v101)
    {
      v27 = v101;
      if (!AVE_Log_CheckLevel(0x28u, 4))
      {
        goto LABEL_142;
      }

      v102 = AVE_Log_CheckConsole(0x28u);
      v98 = AVE_GetCurrTime();
      v103 = AVE_Log_GetLevelStr(4);
      if (v102)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare MB input control %lld %d\n", v98, 40, v103, "AVE_USL_Drv_Process", 1462, "ret == 0", *a1, *(v31 + 40));
        v98 = AVE_GetCurrTime();
        v103 = AVE_Log_GetLevelStr(4);
      }

      v136 = *a1;
      v138 = *(v31 + 40);
      v134 = 1462;
      v130 = v103;
      v100 = "%lld %d AVE %s: %s:%d %s | fail to prepare MB input control %lld %d";
      goto LABEL_129;
    }

    PrepareMultiPassStats(a1, v31);
    AVE_RetrieveDataUSurfaces(a1 + 17, (v31 + 2500));
    memset(v140, 0, 40);
    LODWORD(v140[0]) = v142[0];
    *&v140[1] = *(v31 + 4560);
    v140[3] = *(v31 + 4576);
    if (Connection::writePacketBlock(*v32, v140))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v110 = AVE_Log_CheckConsole(3u);
        v111 = AVE_GetCurrTime();
        v112 = AVE_Log_GetLevelStr(4);
        if (v110)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v111, 3, v112, "AVE_USL_Drv_Process", 1482, "res == 0");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
      }

LABEL_141:
      v27 = 4294966296;
      goto LABEL_142;
    }

    *&v140[3] = 0u;
    *&v140[1] = 0u;
    memset(v139, 0, sizeof(v139));
    v140[0] = *a1;
    v140[5] = v142[0];
    v140[2] = *(v31 + 40);
    v140[3] = 58000000;
    v140[4] = AVE_GetCurrTime();
    *(v31 + 33072) = AVE_GetCurrTime();
    v117 = AVE_DAL::UCProcess(a1[3], v140, v139);
    if (v117)
    {
      v27 = v117;
      Connection::dropLastPacketBlock(*v32);
      if (AVE_Log_CheckLevel(0x28u, 4))
      {
        v118 = AVE_Log_CheckConsole(0x28u);
        v91 = AVE_GetCurrTime();
        v119 = AVE_Log_GetLevelStr(4);
        if (v118)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v91, 40, v119, "AVE_USL_Drv_Process", 1503, "ret == 0", v27);
          v91 = AVE_GetCurrTime();
          v135 = v27;
          v133 = 1503;
          v129 = AVE_Log_GetLevelStr(4);
        }

        else
        {
          v135 = v27;
          v133 = 1503;
          v129 = v119;
        }

        v93 = "%lld %d AVE %s: %s:%d %s | fail to process %d";
LABEL_112:
        syslog(3, v93, v91, 40, v129, "AVE_USL_Drv_Process", v133, "ret == 0", v135, v137);
      }

LABEL_142:
      if (pixelBufferOut)
      {
        CVPixelBufferRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }

      goto LABEL_59;
    }

    pixelBufferOut = 0;
    v120 = *(a1 + 11) + 1;
    *(a1 + 11) = v120;
    if (v120 != *(a1 + 2999) || *(a1 + 3048) == 2 || (*(a1 + 138) & 0x3C0) != 0)
    {
      v27 = 0;
    }

    else if ((*(a1 + 2) - 2) >= 4)
    {
      v140[0] = AVE_GetCurrTime();
      v27 = AVE_USL_Drv_Complete(a1, v140);
      if (v27 && AVE_Log_CheckLevel(3u, 4))
      {
        v121 = AVE_Log_CheckConsole(3u);
        v122 = AVE_GetCurrTime();
        v123 = AVE_Log_GetLevelStr(4);
        if (v121)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.\n", v122, 3, v123, "AVE_USL_Drv_Process", 1535, "ret == 0");
          v124 = AVE_GetCurrTime();
          v132 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.", v124, 3, v132, "AVE_USL_Drv_Process", 1535, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.", v122, 3, v123, "AVE_USL_Drv_Process", 1535, "ret == 0");
        }
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v42 = AVE_Log_CheckConsole(3u);
      v43 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(4);
      if (v42)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.\n", v43, 3, v44, "AVE_USL_Drv_Process", 1293, "Frame");
        v45 = AVE_GetCurrTime();
        v128 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.", v45, 3, v128, "AVE_USL_Drv_Process", 1293, "Frame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.", v43, 3, v44, "AVE_USL_Drv_Process", 1293, "Frame");
      }
    }

    v27 = 4294966293;
  }

LABEL_59:
  AVE_DestroyDataUSurfaces((a1 + 17));
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v51 = AVE_Log_CheckConsole(0x28u);
    v52 = AVE_GetCurrTime();
    v53 = AVE_Log_GetLevelStr(7);
    if (v51)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeFrame frame number %d. %d\n", v52, 40, v53, *(a1 + 11) - 1, v27);
      v52 = AVE_GetCurrTime();
      v53 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeFrame frame number %d. %d", v52, 40, v53, *(a1 + 11) - 1, v27);
  }

  return v27;
}

AVE_USurface *PrepareMBInputCtrl(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 136);
  if (result)
  {
    if (!*(a2 + 4744))
    {
      return 0;
    }

    v5 = *(a1 + 12212);
    if (v5 == 2)
    {
      Addr = AVE_USurface::GetAddr(result, 0);
      v13 = *(a1 + 2880);
      v14 = *(a1 + 2884);
      v15 = (v13 + 31) & 0xFFFFFFE0;
      v16 = (v14 + 31) >> 5;
      v17 = (v13 + 63) & 0xFFFFFFC0;
      v18 = ((v14 + 63) >> 5) & 0x7FFFFFE;
      if (*(a1 + 20) < 30)
      {
        v19 = v16;
      }

      else
      {
        v15 = v17;
        v19 = v18;
      }

      v11 = *(a2 + 4744);
      v12 = v15 * v19;
LABEL_12:
      if (*(a2 + 4752) < v12)
      {
        if (AVE_Log_CheckLevel(0x28u, 5))
        {
          v20 = AVE_Log_CheckConsole(0x28u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(5);
          if (v20)
          {
            printf("%lld %d AVE %s: UserQpMapSize (%d) is smaller than required (%d), copying only received data\n", CurrTime, 40, LevelStr, *(a2 + 4752), v12);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(5);
          }

          syslog(3, "%lld %d AVE %s: UserQpMapSize (%d) is smaller than required (%d), copying only received data", CurrTime, 40, LevelStr, *(a2 + 4752), v12);
        }

        v12 = *(a2 + 4752);
      }

      memcpy(Addr, v11, v12);
      return 0;
    }

    if (v5 == 1)
    {
      Addr = AVE_USurface::GetAddr(result, 0);
      v7 = *(a1 + 2880);
      v8 = (v7 + 15) >> 4;
      v9 = (*(a1 + 2884) + 15) & 0xFFFFFFF0;
      v10 = ((v7 + 63) >> 4) & 0xFFFFFFC;
      if (*(a1 + 20) <= 29)
      {
        v10 = v8;
      }

      v11 = *(a2 + 4744);
      v12 = v9 * v10;
      goto LABEL_12;
    }

    if (AVE_Log_CheckLevel(0x28u, 4))
    {
      v23 = AVE_Log_CheckConsole(0x28u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      v26 = *(a1 + 12212);
      if (v23)
      {
        printf("%lld %d AVE %s: wrong encode type %d\n", v24, 40, v25, v26);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: wrong encode type %d", v27, 40, v28, *(a1 + 12212));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: wrong encode type %d", v24, 40, v25, v26);
      }
    }

    return 4294966295;
  }

  return result;
}

void PrepareMultiPassStats(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 102400;
  if (!*(a1 + 106096))
  {
    return;
  }

  *(a2 + 24) = 2;
  v5 = *(a1 + 108);
  Addr = AVE_USurface::GetAddr(*(a1 + 144), 0);
  v7 = Addr;
  v8 = *(a2 + 23712);
  if (v8)
  {
    *(a2 + 16) = 1;
LABEL_6:

    memcpy(Addr, v8, v5);
    return;
  }

  v9 = (a2 + 23446);
  H264VideoEncoderFrameReceiver::GetMpGlobalRcInfo(*(v2 + 3664), (a2 + 23446));
  if (*(a1 + 44))
  {
    *(a2 + 4724) = 0;
    memcpy(v7, (a2 + 23446), 0x108uLL);
    Addr = (v7 + 264);
    v8 = (a2 + 6132);
    goto LABEL_6;
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v10 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v10)
    {
      printf("%lld %d AVE %s: ------ Sequence RC Info ------\n", CurrTime, 216, LevelStr);
      v13 = AVE_GetCurrTime();
      v78 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: ------ Sequence RC Info ------", v13, 216, v78);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ------ Sequence RC Info ------", CurrTime, 216, LevelStr);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v14 = AVE_Log_CheckConsole(0xD8u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(6);
    v17 = *v9;
    if (v14)
    {
      printf("%lld %d AVE %s:  total_scenes %u\n", v15, 216, v16, v17);
      v18 = AVE_GetCurrTime();
      v79 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v18, 216, v79, *v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v15, 216, v16, v17);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v19 = AVE_Log_CheckConsole(0xD8u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(6);
    v22 = *(a2 + 23450);
    if (v19)
    {
      printf("%lld %d AVE %s:  cnt_All %u\n", v20, 216, v21, v22);
      v23 = AVE_GetCurrTime();
      v80 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v23, 216, v80, *(a2 + 23450));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v20, 216, v21, v22);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v24 = AVE_Log_CheckConsole(0xD8u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(6);
    v27 = *(a2 + 23454);
    if (v24)
    {
      printf("%lld %d AVE %s:  bits_All %llu\n", v25, 216, v26, v27);
      v28 = AVE_GetCurrTime();
      v81 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v28, 216, v81, *(a2 + 23454));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v25, 216, v26, v27);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v29 = AVE_Log_CheckConsole(0xD8u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(6);
    v32 = *(a2 + 23474);
    if (v29)
    {
      printf("%lld %d AVE %s:  cnt_NORMAL %u\n", v30, 216, v31, v32);
      v33 = AVE_GetCurrTime();
      v82 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v33, 216, v82, *(a2 + 23474));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v30, 216, v31, v32);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v34 = AVE_Log_CheckConsole(0xD8u);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(6);
    v37 = *(a2 + 23478);
    if (v34)
    {
      printf("%lld %d AVE %s:  bits_NORMAL %llu\n", v35, 216, v36, v37);
      v38 = AVE_GetCurrTime();
      v83 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v38, 216, v83, *(a2 + 23478));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v35, 216, v36, v37);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v39 = AVE_Log_CheckConsole(0xD8u);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(6);
    v42 = *(a2 + 23486);
    if (v39)
    {
      printf("%lld %d AVE %s:  cnt_MIN %u\n", v40, 216, v41, v42);
      v43 = AVE_GetCurrTime();
      v84 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v43, 216, v84, *(a2 + 23486));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v40, 216, v41, v42);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v44 = AVE_Log_CheckConsole(0xD8u);
    v45 = AVE_GetCurrTime();
    v46 = AVE_Log_GetLevelStr(6);
    v47 = *(a2 + 23490);
    if (v44)
    {
      printf("%lld %d AVE %s:  bits_MIN %llu\n", v45, 216, v46, v47);
      v48 = AVE_GetCurrTime();
      v85 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v48, 216, v85, *(a2 + 23490));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v45, 216, v46, v47);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v49 = AVE_Log_CheckConsole(0xD8u);
    v50 = AVE_GetCurrTime();
    v51 = AVE_Log_GetLevelStr(6);
    v52 = *(a2 + 23498);
    if (v49)
    {
      printf("%lld %d AVE %s:  cnt_MAX %u\n", v50, 216, v51, v52);
      v53 = AVE_GetCurrTime();
      v86 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v53, 216, v86, *(a2 + 23498));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v50, 216, v51, v52);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v54 = AVE_Log_CheckConsole(0xD8u);
    v55 = AVE_GetCurrTime();
    v56 = AVE_Log_GetLevelStr(6);
    v57 = *(a2 + 23502);
    if (v54)
    {
      printf("%lld %d AVE %s:  bits_MAX %llu\n", v55, 216, v56, v57);
      v58 = AVE_GetCurrTime();
      v87 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v58, 216, v87, *(a2 + 23502));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v55, 216, v56, v57);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v59 = AVE_Log_CheckConsole(0xD8u);
    v60 = AVE_GetCurrTime();
    v61 = AVE_Log_GetLevelStr(6);
    v62 = *(a2 + 23510);
    if (v59)
    {
      printf("%lld %d AVE %s:  cnt_BLANK %u\n", v60, 216, v61, v62);
      v63 = AVE_GetCurrTime();
      v88 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v63, 216, v88, *(a2 + 23510));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v60, 216, v61, v62);
    }
  }

  H264VideoEncoderFrameReceiver::GetMpGlobalRcInfo(*(v2 + 3664), (a2 + 23446));
  memcpy(v7, (a2 + 23446), 0x108uLL);
  memcpy(v7 + 264, (a2 + 6132), v5);
  for (i = 0; i != 11; ++i)
  {
    if (AVE_Log_CheckLevel(0xD8u, 6))
    {
      v65 = AVE_Log_CheckConsole(0xD8u);
      v66 = AVE_GetCurrTime();
      v67 = AVE_Log_GetLevelStr(6);
      v68 = *(v7 + 371);
      v69 = *(v7 + 1492);
      v70 = *(v7 + 1508);
      v71 = *(v7 + 1516);
      v72 = *(v7 + 1524);
      v73 = *(v7 + 1532);
      v74 = *(v7 + 1540);
      v75 = *(v7 + 388);
      if (v65)
      {
        printf("%lld %d AVE %s: frame %u: cnt %d, bits %llu, %llu, %llu, %llu; QScale: %f, %f, %f, %f\n", v66, 216, v67, i, v68, v69, v70, v71, v72, v73, v74, *(v7 + 387), v75);
        v76 = AVE_GetCurrTime();
        v77 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: frame %u: cnt %d, bits %llu, %llu, %llu, %llu; QScale: %f, %f, %f, %f", v76, 216, v77, i, *(v7 + 371), *(v7 + 1492), *(v7 + 1508), *(v7 + 1516), *(v7 + 1524), *(v7 + 1532), *(v7 + 1540), *(v7 + 387), *(v7 + 388));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: frame %u: cnt %d, bits %llu, %llu, %llu, %llu; QScale: %f, %f, %f, %f", v66, 216, v67, i, v68, v69, v70, v71, v72, v73, v74, *(v7 + 387), v75);
      }
    }

    v7 = (v7 + 1574);
  }
}

uint64_t AVE_USL_Drv_SetInternalThreadPriority(void *a1, int a2)
{
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v4 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.\n", CurrTime, 40, LevelStr);
      v7 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.", v7, 40, v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.", CurrTime, 40, LevelStr);
    }
  }

  if (a1)
  {
    if (*(a1 + 40) == 1)
    {
      AVE_DAL::UpdatePriorityPolicy(*(a1 + 3), a2, *(a1 + 168));
    }

    v8 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v9 = AVE_Log_CheckConsole(3u);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.\n", v10, 3, v11, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
        v12 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.", v12, 3, v18, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.", v10, 3, v11, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
      }
    }

    v8 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v13 = AVE_Log_CheckConsole(0x28u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(7);
    if (v13)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_SetInternalThreadPriority frame number %d. %d\n", v14, 40, v15, *(a1 + 11), v8);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_SetInternalThreadPriority frame number %d. %d", v14, 40, v15, *(a1 + 11), v8);
  }

  return v8;
}

uint64_t AVE_USL_Drv_SetQueueSize(_DWORD *a1, signed int a2)
{
  if (AVE_Log_CheckLevel(0x28u, 8))
  {
    v4 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d\n", CurrTime, 40, LevelStr, "AVE_USL_Drv_SetQueueSize", a1, a2);
      v7 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v7, 40, v36, "AVE_USL_Drv_SetQueueSize", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", CurrTime, 40, LevelStr, "AVE_USL_Drv_SetQueueSize", a1, a2);
    }
  }

  if (a1)
  {
    if (a2 == -1)
    {
      v8 = a1[26526];
    }

    else if (a2)
    {
      v8 = a2;
      if (a1[26526] > a2)
      {
        if (AVE_Log_CheckLevel(0x28u, 5))
        {
          v12 = AVE_Log_CheckConsole(0x28u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(5);
          if (v12)
          {
            printf("%lld %d AVE %s: %s below minimum value %p %d [%d, %d]\n", v13, 40, v14, "AVE_USL_Drv_SetQueueSize", a1, a2, a1[26526], 48);
            v13 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(5);
          }

          syslog(3, "%lld %d AVE %s: %s below minimum value %p %d [%d, %d]", v13);
        }

LABEL_43:
        v27 = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v8 = a1[26525];
    }

    v15 = *(a1 + 13260);
    if (v15)
    {
      if (Connection::connectionSize(v15, v8))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v16 = AVE_Log_CheckConsole(3u);
          v17 = AVE_GetCurrTime();
          v18 = AVE_Log_GetLevelStr(4);
          if (v16)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d\n", v17, 3, v18, "AVE_USL_Drv_SetQueueSize", 1635, "ret == 0", v8);
            v17 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d", v17);
        }

LABEL_36:
        v27 = 4294966296;
        goto LABEL_44;
      }

      v22 = *(a1 + 13259);
      if (v22)
      {
        if (Connection::connectionSize(v22, v8))
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v23 = AVE_Log_CheckConsole(3u);
            v24 = AVE_GetCurrTime();
            v25 = AVE_Log_GetLevelStr(4);
            if (v23)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d\n", v24, 3, v25, "AVE_USL_Drv_SetQueueSize", 1640, "ret == 0", v8);
              v26 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v26);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v24);
            }
          }

          goto LABEL_36;
        }

        goto LABEL_43;
      }

      if (AVE_Log_CheckLevel(3u, 4))
      {
        v28 = AVE_Log_CheckConsole(3u);
        v29 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverOutput connection failed.\n", v29, 3, v30, "AVE_USL_Drv_SetQueueSize", 1637, "pDriverInstance->FrameReceiverOutput");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverOutput connection failed.");
      }
    }

    else if (AVE_Log_CheckLevel(3u, 4))
    {
      v19 = AVE_Log_CheckConsole(3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverInput connection failed.\n", v20, 3, v21, "AVE_USL_Drv_SetQueueSize", 1632, "pDriverInstance->FrameReceiverInput");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverInput connection failed.");
    }

    v27 = 4294966293;
    goto LABEL_44;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v9 = AVE_Log_CheckConsole(3u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Wrong parameter %p %d\n", v10, 3, v11, "AVE_USL_Drv_SetQueueSize", 1600, "pDrv != __null", 0, a2);
      v10 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Wrong parameter %p %d", v10, 3);
  }

  v27 = 4294966295;
LABEL_44:
  if (AVE_Log_CheckLevel(0x28u, 8))
  {
    v31 = AVE_Log_CheckConsole(0x28u);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(8);
    if (v31)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v32, 40, v33, "AVE_USL_Drv_SetQueueSize", a1, a2, v27);
      v34 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v32);
    }
  }

  return v27;
}

uint64_t AVE_USL_Drv_Reset(uint64_t a1, int a2)
{
  v53 = -1;
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v4 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.\n", CurrTime, 40, LevelStr);
      v7 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.", v7, 40, v45);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.", CurrTime, 40, LevelStr);
    }
  }

  if (!a1)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v13 = AVE_Log_CheckConsole(3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset, Null pointer for driver data.\n", v14, 3, v15, "AVE_USL_Drv_Reset", 1659, "pDriverInstance");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset, Null pointer for driver data.");
    }

    goto LABEL_26;
  }

  if (!a2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v16 = AVE_Log_CheckConsole(3u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset multiPassEndPassCounter = %d.\n", v17, 3, v18, "AVE_USL_Drv_Reset", 1660, "multiPassEndPassCounter > 0", 0);
        v17 = AVE_GetCurrTime();
        v46 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v46 = v18;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset multiPassEndPassCounter = %d.", v17, 3, v46, "AVE_USL_Drv_Reset", 1660, "multiPassEndPassCounter > 0", 0);
    }

LABEL_26:
    v9 = 4294966295;
    goto LABEL_27;
  }

  v52 = AVE_GetCurrTime();
  v8 = AVE_USL_Drv_Complete(a1, &v52);
  if (v8)
  {
    v9 = v8;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v10 = AVE_Log_CheckConsole(3u);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames failed.\n", v11, 3, v12, "AVE_USL_Drv_Reset", 1669, "ret == 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames failed.");
    }

    goto LABEL_27;
  }

  *(a1 + 44) = 0;
  *(a1 + 106096) = a2;
  v51[0] = 0;
  AVE_DAL::Alloc(*(a1 + 24), 72736, v51);
  AVE_DAL::Addr2Idx(*(a1 + 24), v51[0], &v53);
  v19 = v51[0];
  if (v51[0])
  {
    bzero((v51[0] + 8), 0x11C18uLL);
    v20 = v53;
    *v19 = v53;
    *(v19 + 4) = 10;
    *(v19 + 40) = *(a1 + 44);
    *(v19 + 16) = *(a1 + 106088) != 0;
    *(v19 + 20) = *(a1 + 106096);
    memset(v51, 0, 40);
    LODWORD(v51[0]) = v20;
    if (Connection::writePacketBlock(*(a1 + 106080), v51))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v21 = AVE_Log_CheckConsole(3u);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v22, 3, v23, "AVE_USL_Drv_Reset", 1705, "res == 0");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
      }

      goto LABEL_44;
    }

    *&v51[3] = 0u;
    *&v51[1] = 0u;
    memset(v50, 0, sizeof(v50));
    v51[0] = *a1;
    v51[5] = v53;
    v51[3] = 118000000;
    v51[4] = AVE_GetCurrTime();
    v32 = AVE_DAL::UCReset(*(a1 + 24), v51, v50);
    if (!v32)
    {
      memset(v51, 0, 40);
      PacketBlock = Connection::readPacketBlock(*(a1 + 106072), v51, 120000000);
      if (LODWORD(v51[0]) == v53)
      {
        if (!PacketBlock)
        {
          v9 = 0;
          goto LABEL_27;
        }

        if (AVE_Log_CheckLevel(3u, 4))
        {
          v39 = AVE_Log_CheckConsole(3u);
          v40 = AVE_GetCurrTime();
          v41 = AVE_Log_GetLevelStr(4);
          if (v39)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v40, 3, v41, "AVE_USL_Drv_Reset", 1736, "res == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
        }
      }

      else if (AVE_Log_CheckLevel(3u, 4))
      {
        v42 = AVE_Log_CheckConsole(3u);
        v43 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        if (v42)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.\n", v43, 3, v44, "AVE_USL_Drv_Reset", 1735, "status.counter == counter");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.");
      }

LABEL_44:
      v9 = 4294966296;
      goto LABEL_27;
    }

    v9 = v32;
    v33 = *(a1 + 106080);
    pthread_mutex_lock(v33);
    v34 = *(v33 + 216);
    if (v34 >= 1 && v34 > *(v33 + 208))
    {
      *(v33 + 216) = v34 - 1;
    }

    pthread_mutex_unlock(v33);
    if (AVE_Log_CheckLevel(0x28u, 4))
    {
      v35 = AVE_Log_CheckConsole(0x28u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v36, 40, v37, "AVE_USL_Drv_Reset", 1722, "ret == 0", v9);
        v36 = AVE_GetCurrTime();
        v49 = v9;
        v48 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v49 = v9;
        v48 = v37;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %d", v36, 40, v48, "AVE_USL_Drv_Reset", 1722, "ret == 0", v49);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v28 = AVE_Log_CheckConsole(3u);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v29, 3, v30, "AVE_USL_Drv_Reset", 1685, "Frame");
        v31 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v31, 3, v47, "AVE_USL_Drv_Reset", 1685, "Frame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v29, 3, v30, "AVE_USL_Drv_Reset", 1685, "Frame");
      }
    }

    v9 = 4294966293;
  }

LABEL_27:
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v24 = AVE_Log_CheckConsole(0x28u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(7);
    if (v24)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Reset frame number %d. err 0x%08x\n", v25, 40, v26, *(a1 + 44), v9);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Reset frame number %d. err 0x%08x", v25, 40, v26, *(a1 + 44), v9);
  }

  return v9;
}

void Connection::~Connection(Connection *this)
{
  pthread_mutex_lock(this);
  if (*(this + 27) > *(this + 26) && AVE_Log_CheckLevel(0x2Au, 5))
  {
    if (AVE_Log_CheckConsole(0x2Au))
    {
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(5);
      v5 = *(this + 26);
      v4 = *(this + 27);
      v6 = v4 <= v5;
      v7 = v4 - v5;
      if (v6)
      {
        v7 = 0;
      }

      printf("%lld %d AVE %s: H264 Connection: WARNING! deleting connection %p with %lld packets left\n", CurrTime, 42, LevelStr, this, v7);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(5);
    }

    else
    {
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(5);
    }

    v11 = *(this + 26);
    v10 = *(this + 27);
    v6 = v10 <= v11;
    v12 = v10 - v11;
    if (v6)
    {
      v12 = 0;
    }

    syslog(3, "%lld %d AVE %s: H264 Connection: WARNING! deleting connection %p with %lld packets left", v8, 42, v9, this, v12);
  }

  v13 = *(this + 28);
  if (v13)
  {
    MEMORY[0x29C24E8F0](v13, 0x1000C807607B2BCLL);
    *(this + 28) = 0;
  }

  pthread_cond_destroy((this + 112));
  pthread_cond_destroy((this + 64));
  pthread_mutex_unlock(this);
  pthread_mutex_destroy(this);
}

uint64_t AVE_DevCap_PixelFmt_FindList(_DWORD *a1, int a2, uint64_t a3, _DWORD *a4)
{
  LODWORD(v4) = *a1;
  if (*a1 >= *a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = v4;
  }

  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a1 + 2;
    v7 = a1 + 2;
    do
    {
      v8 = *v7;
      v7 += 2;
      if ((a2 & ~v8) == 0)
      {
        *(a3 + 4 * v5++) = *(v6 - 1);
      }

      v6 = v7;
      --v4;
    }

    while (v4);
  }

  *a4 = v5;
  return 0;
}

unsigned int *AVE_DevCap_Perf_Find(unsigned int *a1, int a2, int a3, int a4)
{
  v4 = *a1;
  if (v4 < 1)
  {
    return 0;
  }

  for (i = a1 + 5; *(i - 1) != a2 || *i != a3 || *(i - 2) != a4; i += 6)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  return i - 3;
}

uint64_t AVE_DRL_Retrieve(CFArrayRef theArray, char *a2)
{
  v15 = 0;
  v16 = 0.0;
  if (theArray && a2)
  {
    *(a2 + 4) = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    Count = CFArrayGetCount(theArray);
    v5 = Count >> 1;
    if (Count >> 1 >= 1)
    {
      v6 = 0;
      v7 = (a2 + 16);
      v8 = (Count >> 1);
      do
      {
        if (AVE_CFArray_GetFloat64(theArray, v6, &v16))
        {
          result = AVE_CFArray_GetSInt64(theArray, v6, &v15);
          if (result)
          {
            return result;
          }

          v10 = v15;
        }

        else
        {
          v10 = v16;
        }

        *(v7 - 1) = v10;
        if (AVE_CFArray_GetFloat64(theArray, (v6 + 1), &v16))
        {
          result = AVE_CFArray_GetSInt64(theArray, (v6 + 1), &v15);
          if (result)
          {
            return result;
          }

          v11 = v15;
        }

        else
        {
          v11 = v16;
        }

        *v7 = v11;
        v7 += 2;
        v6 = (v6 + 2);
        --v8;
      }

      while (v8);
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x35u, 4))
    {
      v12 = AVE_Log_CheckConsole(0x35u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 53, LevelStr, "AVE_DRL_Retrieve", 28, "pArray != __null && pDRL != __null", theArray, a2);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 53);
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_DRL_Make(int *a1, __CFArray *a2)
{
  if (a1 && a2)
  {
    if (*a1 < 1)
    {
      return 0;
    }

    else
    {
      v4 = 0;
      for (i = (a1 + 4); ; i += 2)
      {
        v6 = AVE_CFArray_AddFloat64(*(i - 1), a2);
        result = AVE_CFArray_AddFloat64(*i, a2) + v6;
        if (result)
        {
          break;
        }

        if (++v4 >= *a1)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x35u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x35u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 53, LevelStr, "AVE_DRL_Make", 95, "pDRL != __null && pArray != __null", a1, a2);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 53);
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_SearchRange_Make(int *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    v4 = AVE_CFDict_AddSInt32(@"MotionEstimationModeID", *a1, a2);
    if (!v4)
    {
      v13 = AVE_CFDict_AddSInt32(@"MotionEstimationHorizontalSearchRange", a1[1], a2);
      if (v13)
      {
        v5 = v13;
        if (!AVE_Log_CheckLevel(0x36u, 4))
        {
          return v5;
        }

        v14 = AVE_Log_CheckConsole(0x36u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v14)
        {
          goto LABEL_29;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_Make", 82, "ret == 0", a1, a2, v5);
      }

      else
      {
        v15 = AVE_CFDict_AddSInt32(@"MotionEstimationVerticalSearchRange", a1[2], a2);
        if (v15)
        {
          v5 = v15;
          if (!AVE_Log_CheckLevel(0x36u, 4))
          {
            return v5;
          }

          v16 = AVE_Log_CheckConsole(0x36u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (!v16)
          {
            goto LABEL_29;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_Make", 87, "ret == 0", a1, a2, v5);
        }

        else
        {
          v5 = AVE_CFDict_AddSInt32(@"MotionEstimationCacheMode", a1[3], a2);
          if (!v5 || !AVE_Log_CheckLevel(0x36u, 4))
          {
            return v5;
          }

          v17 = AVE_Log_CheckConsole(0x36u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (!v17)
          {
            goto LABEL_29;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_Make", 92, "ret == 0", a1, a2, v5);
        }
      }

      v9 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      goto LABEL_28;
    }

    v5 = v4;
    if (AVE_Log_CheckLevel(0x36u, 4))
    {
      v6 = AVE_Log_CheckConsole(0x36u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v6)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_Make", 77, "ret == 0", a1, a2, v5);
        v9 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
LABEL_28:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d", v9, 54, v19);
        return v5;
      }

LABEL_29:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d", CurrTime, 54, LevelStr);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x36u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x36u);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 54, v12, "AVE_SearchRange_Make", 72, "pEntry != __null && pDict != __null", a1, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 54);
    }

    return 4294966295;
  }

  return v5;
}

uint64_t AVE_SearchRange_MakeArray(int *a1, int a2, __CFArray *a3)
{
  if (a1 && a2 >= 1 && a3)
  {
    v6 = 0;
    v7 = MEMORY[0x29EDB9010];
    v8 = MEMORY[0x29EDB9020];
    for (i = a1; ; i += 4)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, v7, v8);
      if (!Mutable)
      {
        break;
      }

      v11 = Mutable;
      v12 = AVE_SearchRange_Make(i, Mutable);
      if (v12)
      {
        v13 = v12;
        CFRelease(v11);
        return v13;
      }

      CFArrayAppendValue(a3, v11);
      CFRelease(v11);
      if (a2 == ++v6)
      {
        return 0;
      }
    }

    if (AVE_Log_CheckLevel(0x36u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x36u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_MakeArray", 168, "pDict != __null", a1, a2, a3, v6);
        v21 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d", v21, 54, v24, "AVE_SearchRange_MakeArray");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d", CurrTime, 54, LevelStr, "AVE_SearchRange_MakeArray");
      }
    }

    return 4294966293;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x36u, 4))
    {
      v14 = AVE_Log_CheckConsole(0x36u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v15, 54, v16, "AVE_SearchRange_MakeArray", 160, "pEntry != __null && num > 0 && pArray != __null", a1, a2, a3);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v17, 54, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v15, 54, v16);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_DW_Cfg_Init(_DWORD *a1)
{
  bzero(a1, 0x650uLL);
  *a1 = -1;
  a1[20] = -2;
  for (i = 31; i != 103; i += 12)
  {
    *&a1[i] = -1;
  }

  v3 = 0;
  a1[18] = -2;
  *(a1 + 420) = 0;
  a1[189] = -1;
  *(a1 + 98) = 0xC0000000CLL;
  a1[198] = -2;
  a1[201] = -13;
  *(a1 + 101) = 0xC0000000CLL;
  *(a1 + 102) = 0xBFF0000000000000;
  *(a1 + 105) = 0xBFF0000000000000;
  *(a1 + 110) = -1;
  *(a1 + 112) = -1;
  *(a1 + 113) = 0xBFF0000000000000;
  *(a1 + 114) = 0xBFF0000000000000;
  a1[261] = -1;
  *(a1 + 133) = 0xBFF0000000000000;
  *(a1 + 134) = 0xBFF0000000000000;
  v4 = a1 + 278;
  *(a1 + 120) = 0xC0000000CLL;
  *(a1 + 136) = -1;
  do
  {
    v5 = 0;
    a1[24 * v3 + 276] = 1;
    do
    {
      *&v4[v5] = -NAN;
      v5 += 3;
    }

    while (v5 != 21);
    ++v3;
    v4 += 24;
  }

  while (v3 != 5);
  a1[255] = -1;
  *(a1 + 395) = 0xFFFFFFFFLL;
  *(a1 + 257) = -1;
  *(a1 + 259) = -1;
  *(a1 + 199) = -1;
  return 0;
}

uint64_t AVE_ANFD_RetrieveEntry(CFDictionaryRef theDict, int *a2)
{
  v41 = 0.0;
  if (theDict && a2)
  {
    SInt32 = AVE_CFDict_GetSInt32(theDict, @"AnfdModality", a2);
    if (!SInt32)
    {
      v13 = AVE_CFDict_GetSInt32(theDict, @"FaceID", a2 + 1);
      if (v13)
      {
        v5 = v13;
        if (!AVE_Log_CheckLevel(0x2Fu, 4))
        {
          return v5;
        }

        v14 = AVE_Log_CheckConsole(0x2Fu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v14)
        {
          goto LABEL_30;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 40, "ret == 0", theDict, a2, v5);
      }

      else
      {
        v15 = AVE_CFDict_GetSInt32(theDict, @"ConfidenceLevel", a2 + 2);
        if (v15)
        {
          v5 = v15;
          if (!AVE_Log_CheckLevel(0x2Fu, 4))
          {
            return v5;
          }

          v16 = AVE_Log_CheckConsole(0x2Fu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (!v16)
          {
            goto LABEL_30;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 45, "ret == 0", theDict, a2, v5);
        }

        else
        {
          Value = CFDictionaryGetValue(theDict, @"Rect");
          if (!Value)
          {
            if (AVE_Log_CheckLevel(0x2Fu, 4))
            {
              v22 = AVE_Log_CheckConsole(0x2Fu);
              v23 = AVE_GetCurrTime();
              v24 = AVE_Log_GetLevelStr(4);
              if (v22)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v23, 47, v24, "AVE_ANFD_RetrieveEntry", 50, "pRect != __null", theDict, a2, 0);
                v25 = AVE_GetCurrTime();
                v40 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v25, 47, v40);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v23, 47, v24);
              }
            }

            return 4294966288;
          }

          v18 = Value;
          Double = AVE_CFDict_GetDouble(Value, @"X", &v41);
          if (Double)
          {
            v5 = Double;
            if (!AVE_Log_CheckLevel(0x2Fu, 4))
            {
              return v5;
            }

            v20 = AVE_Log_CheckConsole(0x2Fu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (!v20)
            {
              goto LABEL_30;
            }

            printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 54, "ret == 0", theDict, a2, v5);
          }

          else
          {
            a2[4] = vcvtd_n_s64_f64(v41, 0x13uLL);
            v26 = AVE_CFDict_GetDouble(v18, @"Y", &v41);
            if (v26)
            {
              v5 = v26;
              if (!AVE_Log_CheckLevel(0x2Fu, 4))
              {
                return v5;
              }

              v27 = AVE_Log_CheckConsole(0x2Fu);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              if (!v27)
              {
                goto LABEL_30;
              }

              printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 60, "ret == 0", theDict, a2, v5);
            }

            else
            {
              a2[5] = vcvtd_n_s64_f64(v41, 0x13uLL);
              v28 = AVE_CFDict_GetDouble(v18, @"Width", &v41);
              if (v28)
              {
                v5 = v28;
                if (!AVE_Log_CheckLevel(0x2Fu, 4))
                {
                  return v5;
                }

                v29 = AVE_Log_CheckConsole(0x2Fu);
                CurrTime = AVE_GetCurrTime();
                LevelStr = AVE_Log_GetLevelStr(4);
                if (!v29)
                {
                  goto LABEL_30;
                }

                printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 66, "ret == 0", theDict, a2, v5);
              }

              else
              {
                a2[6] = vcvtd_n_s64_f64(v41, 0x13uLL);
                v30 = AVE_CFDict_GetDouble(v18, @"Height", &v41);
                if (v30)
                {
                  v5 = v30;
                  if (!AVE_Log_CheckLevel(0x2Fu, 4))
                  {
                    return v5;
                  }

                  v31 = AVE_Log_CheckConsole(0x2Fu);
                  CurrTime = AVE_GetCurrTime();
                  LevelStr = AVE_Log_GetLevelStr(4);
                  if (!v31)
                  {
                    goto LABEL_30;
                  }

                  printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 72, "ret == 0", theDict, a2, v5);
                }

                else
                {
                  a2[7] = vcvtd_n_s64_f64(v41, 0x13uLL);
                  a2[3] = 0x80000;
                  v32 = AVE_CFDict_GetSInt32(theDict, @"AngleInfoRoll", a2 + 8);
                  if (v32)
                  {
                    v5 = v32;
                    if (!AVE_Log_CheckLevel(0x2Fu, 4))
                    {
                      return v5;
                    }

                    v33 = AVE_Log_CheckConsole(0x2Fu);
                    CurrTime = AVE_GetCurrTime();
                    LevelStr = AVE_Log_GetLevelStr(4);
                    if (!v33)
                    {
                      goto LABEL_30;
                    }

                    printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 82, "ret == 0", theDict, a2, v5);
                  }

                  else
                  {
                    v34 = AVE_CFDict_GetSInt32(theDict, @"AngleInfoYaw", a2 + 9);
                    if (v34)
                    {
                      v5 = v34;
                      if (!AVE_Log_CheckLevel(0x2Fu, 4))
                      {
                        return v5;
                      }

                      v35 = AVE_Log_CheckConsole(0x2Fu);
                      CurrTime = AVE_GetCurrTime();
                      LevelStr = AVE_Log_GetLevelStr(4);
                      if (!v35)
                      {
                        goto LABEL_30;
                      }

                      printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 87, "ret == 0", theDict, a2, v5);
                    }

                    else
                    {
                      SInt64 = AVE_CFDict_GetSInt64(theDict, @"OriginalTimestamp", a2 + 5);
                      if (SInt64)
                      {
                        v5 = SInt64;
                        if (!AVE_Log_CheckLevel(0x2Fu, 4))
                        {
                          return v5;
                        }

                        v37 = AVE_Log_CheckConsole(0x2Fu);
                        CurrTime = AVE_GetCurrTime();
                        LevelStr = AVE_Log_GetLevelStr(4);
                        if (!v37)
                        {
                          goto LABEL_30;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 92, "ret == 0", theDict, a2, v5);
                      }

                      else
                      {
                        v5 = AVE_CFDict_GetSInt64(theDict, @"Timestamp", a2 + 6);
                        if (!v5 || !AVE_Log_CheckLevel(0x2Fu, 4))
                        {
                          return v5;
                        }

                        v38 = AVE_Log_CheckConsole(0x2Fu);
                        CurrTime = AVE_GetCurrTime();
                        LevelStr = AVE_Log_GetLevelStr(4);
                        if (!v38)
                        {
                          goto LABEL_30;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 96, "ret == 0", theDict, a2, v5);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v9 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      goto LABEL_23;
    }

    v5 = SInt32;
    if (AVE_Log_CheckLevel(0x2Fu, 4))
    {
      v6 = AVE_Log_CheckConsole(0x2Fu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v6)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 35, "ret == 0", theDict, a2, v5);
        v9 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(4);
LABEL_23:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v9, 47, v39);
        return v5;
      }

LABEL_30:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", CurrTime, 47, LevelStr);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Fu, 4))
    {
      v10 = AVE_Log_CheckConsole(0x2Fu);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 47, v12, "AVE_ANFD_RetrieveEntry", 30, "pDict != __null && psEntry != __null", theDict, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 47);
    }

    return 4294966295;
  }

  return v5;
}

uint64_t AVE_ANFD_RetrieveArray(CFArrayRef theArray, _DWORD *a2)
{
  if (theArray && a2)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 10)
    {
      v5 = 10;
    }

    else
    {
      v5 = Count;
    }

    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v7 = a2 + 2;
      if (v5 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v5;
      }

      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
        if (!ValueAtIndex)
        {
          break;
        }

        Entry = AVE_ANFD_RetrieveEntry(ValueAtIndex, v7);
        if (Entry)
        {
          v11 = Entry;
          if (AVE_Log_CheckLevel(0x2Fu, 4))
          {
            v20 = AVE_Log_CheckConsole(0x2Fu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v20)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveArray", 225, "ret == 0", theArray, a2, v11);
              v23 = AVE_GetCurrTime();
              v25 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v23, 47, v25);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", CurrTime, 47, LevelStr);
            }
          }

          return v11;
        }

        ++*a2;
        ++v6;
        v7 += 16;
        if (v8 == v6)
        {
          return 0;
        }
      }

      if (AVE_Log_CheckLevel(0x2Fu, 4))
      {
        v16 = AVE_Log_CheckConsole(0x2Fu);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d\n", v17, 47, v18, "AVE_ANFD_RetrieveArray", 220, "pDict != __null", theArray, a2, theArray, v5, v6);
          v19 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d", v19, 47, v24, "AVE_ANFD_RetrieveArray");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d", v17, 47, v18, "AVE_ANFD_RetrieveArray");
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Fu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x2Fu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 47, v14, "AVE_ANFD_RetrieveArray", 211, "pArray != __null && pInfo != __null", theArray, a2);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 47);
    }

    return 4294966295;
  }
}

uint64_t AVE_ANFD_Print(unsigned int *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  v22 = *MEMORY[0x29EDCA608];
  memset(v21, 0, sizeof(v21));
  AVE_ComposePosStr(a4, a5, v21, 32);
  v8 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v9 = AVE_Log_CheckConsole(a2);
    if (a3 < 0)
    {
      if (!v9 || (-a3 & 0x20) != 0)
      {
        syslog(3, "ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", v21, *a1, a1[1]);
      }

      else
      {
        v19 = a1[3];
        printf("ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d\n", v21, *a1, a1[1], a1[2], a1[4] / v19, a1[5] / v19, a1[6] / v19, a1[7] / v19, a1[8], a1[9], *(a1 + 5), *(a1 + 6), a1[14]);
        syslog(3, "ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", v21, *a1, a1[1]);
      }
    }

    else
    {
      v10 = a3 & 0x20;
      v11 = v9 ^ 1;
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v8);
      v14 = a1[3];
      v15 = a1[4] / v14;
      v16 = a1[5] / v14;
      v17 = a1[6] / v14;
      v18 = a1[7] / v14;
      if (((v11 | (v10 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d\n", CurrTime, a2, LevelStr, v21, *a1, a1[1], a1[2], v15, v16, v17, v18, a1[8], a1[9], *(a1 + 5), *(a1 + 6), a1[14]);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(v8);
      }

      syslog(3, "%lld %d AVE %s: ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", CurrTime, a2, LevelStr, v21, *a1);
    }
  }

  return 0;
}

uint64_t AVE_ANFD_PrintInfo(int *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (*a1 >= 1)
  {
    v10 = 0;
    v11 = (a1 + 2);
    do
    {
      AVE_ANFD_Print(v11, a2, a3, a4, a5);
      ++v10;
      v11 += 16;
    }

    while (v10 < *a1);
  }

  return 0;
}

uint64_t AVE_ANFD_GetInfo(const __CFDictionary *a1, _DWORD *a2)
{
  if (a1 && a2)
  {
    bzero(a2, 0x288uLL);
    Value = CFDictionaryGetValue(a1, @"StabilizedDetectedFacesArray");
    if (Value)
    {
      Array = AVE_ANFD_RetrieveArray(Value, a2);
      if (Array && AVE_Log_CheckLevel(0x2Fu, 4))
      {
        v6 = AVE_Log_CheckConsole(0x2Fu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v6)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_GetInfo", 365, "ret == 0", a1, a2, Array);
          v9 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v9, 47, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", CurrTime, 47, LevelStr);
        }
      }
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Fu, 6))
    {
      v10 = AVE_Log_CheckConsole(0x2Fu);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(6);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 47, v12, "AVE_ANFD_GetInfo", 354, "pProperty != NULL && pInfo != NULL", a1, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 47);
    }

    return 4294966295;
  }

  return Array;
}

uint64_t AVE_CalcBufNumOfMBInputCtrl(int a1, uint64_t a2, unsigned __int8 a3, unsigned int a4)
{
  if (((a1 == 1) & a3) != 0)
  {
    return a4;
  }

  else
  {
    return 0;
  }
}

uint64_t AVE_CalcBufSizeOfMBInputCtrl(int a1, int a2, int a3, int a4)
{
  if (a2 == 2)
  {
    v6 = ((a3 + 31) & 0xFFFFFFE0) * ((a4 + 31) >> 5);
    if (a1 >= 30)
    {
      v6 = (((a4 + 63) >> 5) & 0x3FFFFFE) * ((a3 + 63) & 0xFFFFFFC0);
    }
  }

  else if (a2 == 1)
  {
    v4 = (a3 + 15) & 0xFFFFFFF0;
    if (a1 < 30)
    {
      v5 = (a4 + 15) >> 4;
    }

    else
    {
      v4 = (v4 + 63) & 0x3FFFFFC0;
      v5 = ((a4 + 63) >> 4) & 0xFFFFFFFC;
    }

    v6 = v4 * v5;
  }

  else
  {
    v6 = 0;
  }

  return (v6 + 4095) & 0xFFFFF000;
}

uint64_t AVE_CalcBufSizeOfMultiPassStats(int a1, int a2)
{
  if (a1)
  {
    v2 = 17314;
  }

  else
  {
    v2 = 1574;
  }

  if (a2)
  {
    return v2 + 264;
  }

  else
  {
    return v2;
  }
}

uint64_t AVE_CFArray_AddChar(int a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v10 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p\n", CurrTime, 20, LevelStr, "AVE_CFArray_AddChar", 27, "pNum != __null", valuePtr, a2);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p", CurrTime, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v8, 20, v9, "AVE_CFArray_AddChar", 23, "pArray != __null", a1, 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFArray_AddSInt16(int a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v10 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p\n", CurrTime, 20, LevelStr, "AVE_CFArray_AddSInt16", 55, "pNum != __null", valuePtr, a2);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p", CurrTime, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v8, 20, v9, "AVE_CFArray_AddSInt16", 51, "pArray != __null", a1, 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFArray_AddSInt32(int a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v10 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p\n", CurrTime, 20, LevelStr, "AVE_CFArray_AddSInt32", 83, "pNum != __null", valuePtr, a2);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p", CurrTime, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v8, 20, v9, "AVE_CFArray_AddSInt32", 79, "pArray != __null", a1, 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFArray_AddSInt64(uint64_t a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v10 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lld %p\n", CurrTime, 20, LevelStr, "AVE_CFArray_AddSInt64", 110, "pNum != __null", valuePtr, a2);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lld %p", CurrTime, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lld %p\n", v8, 20, v9, "AVE_CFArray_AddSInt64", 106, "pArray != __null", a1, 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lld %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFArray_AddFloat64(double a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v4 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CFArrayAppendValue(a2, v4);
      CFRelease(v5);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v10 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p\n", CurrTime, 20, LevelStr, "AVE_CFArray_AddFloat64", 138, "pNum != __null", a1, a2);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p", CurrTime);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p\n", v8, 20, v9, "AVE_CFArray_AddFloat64", 134, "pArray != __null", a1, 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p", v8);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFArray_AddDouble(double a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v10 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p\n", CurrTime, 20, LevelStr, "AVE_CFArray_AddDouble", 165, "pNum != __null", valuePtr, a2);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p", CurrTime);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p\n", v8, 20, v9, "AVE_CFArray_AddDouble", 161, "pArray != __null", a1, 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p", v8);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFArray_GetChar(CFArrayRef theArray, CFIndex idx, char *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberCharType, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFArray_GetChar", 198, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFArray_GetChar", 198, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetChar", 191, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFArray_GetSInt16(CFArrayRef theArray, CFIndex idx, __int16 *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFArray_GetSInt16", 229, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFArray_GetSInt16", 229, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetSInt16", 222, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFArray_GetSInt32(CFArrayRef theArray, CFIndex idx, int *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFArray_GetSInt32", 260, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFArray_GetSInt32", 260, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetSInt32", 253, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFArray_GetSInt64(CFArrayRef theArray, CFIndex idx, uint64_t *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFArray_GetSInt64", 291, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFArray_GetSInt64", 291, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetSInt64", 284, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFArray_GetFloat64(CFArrayRef theArray, CFIndex idx, double *a3)
{
  v4 = idx;
  valuePtr = 0;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0.0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberFloat64Type, &valuePtr))
        {
          result = 0;
        }

        else
        {
          result = 4294966288;
        }

        *a3 = valuePtr;
        return result;
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFArray_GetFloat64", 323, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_26;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_26;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_26:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFArray_GetFloat64", 323, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetFloat64", 316, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFDict_AddBool(const __CFString *key, int a2, CFMutableDictionaryRef theDict)
{
  if (key && theDict)
  {
    v6 = MEMORY[0x29EDB8F00];
    if (!a2)
    {
      v6 = MEMORY[0x29EDB8EF8];
    }

    CFDictionaryAddValue(theDict, key, *v6);
    return 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", CurrTime, 20, LevelStr, "AVE_CFDict_AddBool", 378, "pKey != __null && pDict != __null", key, a2, theDict);
        v11 = AVE_GetCurrTime();
        v12 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v11, 20, v12);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFDict_AddDouble(const __CFString *a1, double a2, __CFDictionary *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v6 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(a3, a1, v6);
      CFRelease(v7);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lf %p\n", CurrTime, 20, LevelStr, "AVE_CFDict_AddDouble", 493, "pNum != __null", a1, valuePtr, a3);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lf %p", CurrTime, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v9 = AVE_Log_CheckConsole(0x14u);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lf %p\n", v10, 20, v11, "AVE_CFDict_AddDouble", 489, "pKey != __null && pDict != __null", a1, a2, a3);
        v10 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lf %p", v10, 20);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFDict_AddSInt32(const __CFString *a1, int a2, __CFDictionary *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(a3, a1, v6);
      CFRelease(v7);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v13 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p\n", CurrTime, 20, LevelStr, "AVE_CFDict_AddSInt32", 584, "pNum != __null", a1, valuePtr, a3);
          v16 = AVE_GetCurrTime();
          v18 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p", v16, 20, v18);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p", CurrTime, 20, LevelStr);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v9 = AVE_Log_CheckConsole(0x14u);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFDict_AddSInt32", 580, "pKey != __null && pDict != __null", a1, a2, a3);
        v12 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFDict_AddSInt64(const __CFString *a1, uint64_t a2, __CFDictionary *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v6 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(a3, a1, v6);
      CFRelease(v7);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v13 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p\n", CurrTime, 20, LevelStr, "AVE_CFDict_AddSInt64", 614, "pNum != __null", a1, valuePtr, a3);
          v16 = AVE_GetCurrTime();
          v18 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p", v16, 20, v18);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p", CurrTime, 20, LevelStr);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v9 = AVE_Log_CheckConsole(0x14u);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p\n", v10, 20, v11, "AVE_CFDict_AddSInt64", 610, "pKey != __null && pDict != __null", a1, a2, a3);
        v12 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p", v12, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p", v10, 20, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFDict_GetBool(CFDictionaryRef theDict, const __CFString *key, BOOL *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        v8 = CFBooleanGetValue(Value);
        result = 0;
        *a3 = v8 != 0;
        return result;
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v14 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      if (Value)
      {
        v17 = CFGetTypeID(Value);
      }

      else
      {
        v17 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFBoolean %p %p %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFDict_GetBool", 654, "pBool != __null && CFBooleanGetTypeID() == CFGetTypeID(pBool)", theDict, key, a3, Value, v17);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!Value)
      {
        v18 = -1;
        goto LABEL_25;
      }
    }

    else if (!Value)
    {
      v18 = -1;
      goto LABEL_25;
    }

    v18 = CFGetTypeID(Value);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFBoolean %p %p %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFDict_GetBool", 654, "pBool != __null && CFBooleanGetTypeID() == CFGetTypeID(pBool)", theDict, key, a3, Value, v18);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v10 = AVE_Log_CheckConsole(0x14u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFDict_GetBool", 640, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v13 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFDict_GetChar(CFDictionaryRef theDict, const __CFString *key, char *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberCharType, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFDict_GetChar", 690, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFDict_GetChar", 690, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetChar", 676, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFDict_GetDouble(CFDictionaryRef theDict, const __CFString *key, double *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0.0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberDoubleType, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFDict_GetDouble", 802, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFDict_GetDouble", 802, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetDouble", 788, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFDict_GetSInt16(CFDictionaryRef theDict, const __CFString *key, __int16 *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberSInt16Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFDict_GetSInt16", 877, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFDict_GetSInt16", 877, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetSInt16", 863, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFDict_GetSInt32(CFDictionaryRef theDict, const __CFString *key, int *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberSInt32Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFDict_GetSInt32", 915, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFDict_GetSInt32", 915, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetSInt32", 901, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFDict_GetSInt64(CFDictionaryRef theDict, const __CFString *key, uint64_t *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberSInt64Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFDict_GetSInt64", 953, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFDict_GetSInt64", 953, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetSInt64", 939, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

const char *AVE_CFStr_GetStr(const __CFString *a1, char *a2, unsigned int a3)
{
  if (a1)
  {
    result = CFStringGetCStringPtr(a1, 0);
    if (a3 >= 1 && a2 && !result)
    {
      CFStringGetCString(a1, a2, a3, 0);
      return a2;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 20, LevelStr, "AVE_CFStr_GetStr", 975, "pStr != __null", 0, a2, a3);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 20, v11);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 20, LevelStr);
      }
    }

    return 0;
  }

  return result;
}

uint64_t AVE_CFPref_GetStr(CFStringRef applicationID, CFStringRef key, char *a3, uint64_t a4)
{
  v4 = a4;
  if (applicationID && key && a3 && a4 > 0)
  {
    v8 = CFPreferencesCopyAppValue(key, applicationID);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFStringGetTypeID())
      {
        Str = AVE_CFStr_GetStr(v9, a3, v4);
        if (Str != a3)
        {
          AVE_SNPrintf(a3, v4, "%s", Str);
        }

        v12 = 0;
      }

      else
      {
        v12 = 4294966296;
      }

      CFRelease(v9);
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v13 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetStr", 1006, "pAppID != __null && pKey != __null && pVal != __null && num > 0", applicationID, key, a3, v4);
        v16 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v16, 20, v18, "AVE_CFPref_GetStr");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", CurrTime, 20, LevelStr, "AVE_CFPref_GetStr");
      }
    }

    return 4294966295;
  }

  return v12;
}

uint64_t AVE_CFPref_GetBool(CFStringRef applicationID, CFStringRef key, BOOL *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFBooleanGetTypeID())
      {
        v9 = CFEqual(v7, *MEMORY[0x29EDB8F00]) != 0;
      }

      else
      {
        v15 = CFGetTypeID(v7);
        if (v15 != CFStringGetTypeID())
        {
          goto LABEL_19;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"true", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"yes", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"1", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        if (CFStringCompare(v7, @"false", 1uLL) && CFStringCompare(v7, @"no", 1uLL) && CFStringCompare(v7, @"0", 1uLL))
        {
LABEL_19:
          v10 = 4294966296;
          goto LABEL_20;
        }

        v9 = 0;
      }

LABEL_7:
      v10 = 0;
      *a3 = v9;
LABEL_20:
      CFRelease(v7);
      return v10;
    }

    return 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v11 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetBool", 1047, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v14 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFPref_GetUInt32(CFStringRef applicationID, CFStringRef key, unsigned int *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr;
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          v19 = 0;
          valuePtr = 0;
          Str = AVE_CFStr_GetStr(v7, &valuePtr, 0xCu);
          if (Str)
          {
            v9 = 0;
            *a3 = strtoumax(Str, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetUInt32", 1151, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFPref_GetUInt64(CFStringRef applicationID, CFStringRef key, unint64_t *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr[0] = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt64Type, valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr[0];
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          valuePtr[0] = 0;
          valuePtr[1] = 0;
          v19 = 0;
          Str = AVE_CFStr_GetStr(v7, valuePtr, 0x14u);
          if (Str)
          {
            v9 = 0;
            *a3 = strtoumax(Str, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetUInt64", 1202, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFPref_GetInt32(CFStringRef applicationID, CFStringRef key, int *a3)
{
  valuePtr[2] = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr[0]) = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt32Type, valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr[0];
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          memset(valuePtr, 0, 13);
          Str = AVE_CFStr_GetStr(v7, valuePtr, 0xDu);
          if (Str)
          {
            v9 = 0;
            *a3 = strtoumax(Str, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetInt32", 1252, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFPref_GetInt64(CFStringRef applicationID, CFStringRef key, uintmax_t *a3)
{
  v19[2] = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr;
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          valuePtr = 0;
          v19[0] = 0;
          *(v19 + 5) = 0;
          Str = AVE_CFStr_GetStr(v7, &valuePtr, 0x15u);
          if (Str)
          {
            v9 = 0;
            *a3 = strtoumax(Str, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetInt64", 1303, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFPref_GetDouble(CFStringRef applicationID, CFStringRef key, double *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        v19 = 0;
        valuePtr[0] = 0;
        if (CFNumberGetValue(v7, kCFNumberDoubleType, valuePtr))
        {
          v9 = *valuePtr;
LABEL_19:
          v14 = 0;
          *a3 = v9;
LABEL_21:
          CFRelease(v7);
          return v14;
        }

        if (CFNumberGetValue(v7, kCFNumberSInt64Type, &v19))
        {
          v9 = v19;
          goto LABEL_19;
        }
      }

      else
      {
        v15 = CFGetTypeID(v7);
        if (v15 == CFStringGetTypeID())
        {
          valuePtr[0] = 0;
          valuePtr[1] = 0;
          v21 = 0;
          Str = AVE_CFStr_GetStr(v7, valuePtr, 0x14u);
          if (Str)
          {
            v9 = strtod(Str, 0);
            goto LABEL_19;
          }
        }
      }

      v14 = 4294966296;
      goto LABEL_21;
    }

    return 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetDouble", 1353, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_DW_GetStr(const char *a1, const char *a2, char *a3, uint64_t a4)
{
  v38 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3 || a4 <= 0)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d\n", CurrTime, 44, LevelStr, "AVE_DW_GetStr", 63, "pKey != __null && pVal != __null && num > 0", a1, a2, a3, a4);
        v18 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v18, 44, v26, "AVE_DW_GetStr");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", CurrTime, 44, LevelStr, "AVE_DW_GetStr");
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = "com.apple.coremedia";
  }

  v9 = CFStringCreateWithCString(0, v8, 0);
  v10 = CFStringCreateWithCString(0, a2, 0);
  v11 = v10;
  if (!v9 || !v10)
  {
    v13 = 4294966293;
    if (!v9)
    {
      if (!v10)
      {
        return v13;
      }

      goto LABEL_32;
    }

    goto LABEL_31;
  }

  Str = AVE_CFPref_GetStr(v9, v10, a3, a4);
  if (Str)
  {
    v13 = Str;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *cStr = 0u;
    v31 = 0u;
    AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
    CFRelease(v11);
    v11 = CFStringCreateWithCString(0, cStr, 0);
    if (!v11)
    {
      goto LABEL_31;
    }

    v14 = AVE_CFPref_GetStr(v9, v11, a3, a4);
    if (v14)
    {
      v13 = v14;
      goto LABEL_31;
    }

    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v22 = AVE_Log_CheckConsole(0x2Cu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %s\n", v23, 44, v24, cStr, a3);
        v23 = AVE_GetCurrTime();
        v29 = a3;
        v28 = AVE_Log_GetLevelStr(6);
      }

      else
      {
        v29 = a3;
        v28 = v24;
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %s", v23, 44, v28, cStr, v29);
    }
  }

  else if (AVE_Log_CheckLevel(0x2Cu, 6))
  {
    v13 = AVE_Log_CheckConsole(0x2Cu);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(6);
    if (!v13)
    {
      syslog(3, "%lld %d AVE %s: defaults write %s = %s", v19, 44, v20, a2, a3);
      goto LABEL_31;
    }

    printf("%lld %d AVE %s: defaults write %s = %s\n", v19, 44, v20, a2, a3);
    v21 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %s", v21, 44, v27, a2, a3);
  }

  v13 = 0;
LABEL_31:
  CFRelease(v9);
  if (v11)
  {
LABEL_32:
    CFRelease(v11);
  }

  return v13;
}

uint64_t AVE_DW_GetBool(const char *a1, const char *a2, BOOL *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetBool", 134, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Bool = AVE_CFPref_GetBool(v7, v8, a3);
  if (!Bool)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v17 = AVE_Log_CheckConsole(0x2Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = %d\n", v18, 44, v19, a2, *a3);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %d", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = Bool;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = AVE_CFPref_GetBool(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = AVE_Log_CheckConsole(0x2Cu);
  v20 = AVE_GetCurrTime();
  v21 = AVE_Log_GetLevelStr(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = %d\n", v20, 44, v21, cStr, *a3);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %d", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %d", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t AVE_DW_GetUInt32(const char *a1, const char *a2, unsigned int *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetUInt32", 276, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  UInt32 = AVE_CFPref_GetUInt32(v7, v8, a3);
  if (!UInt32)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v17 = AVE_Log_CheckConsole(0x2Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = 0x%x\n", v18, 44, v19, a2, *a3);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = UInt32;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = AVE_CFPref_GetUInt32(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = AVE_Log_CheckConsole(0x2Cu);
  v20 = AVE_GetCurrTime();
  v21 = AVE_Log_GetLevelStr(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = 0x%x\n", v20, 44, v21, cStr, *a3);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t AVE_DW_GetUInt64(const char *a1, const char *a2, unint64_t *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetUInt64", 348, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  UInt64 = AVE_CFPref_GetUInt64(v7, v8, a3);
  if (!UInt64)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v17 = AVE_Log_CheckConsole(0x2Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = 0x%llx\n", v18, 44, v19, a2, *a3);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = UInt64;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = AVE_CFPref_GetUInt64(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = AVE_Log_CheckConsole(0x2Cu);
  v20 = AVE_GetCurrTime();
  v21 = AVE_Log_GetLevelStr(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = 0x%llx\n", v20, 44, v21, cStr, *a3);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t AVE_DW_GetInt32(const char *a1, const char *a2, int *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetInt32", 419, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Int32 = AVE_CFPref_GetInt32(v7, v8, a3);
  if (!Int32)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v17 = AVE_Log_CheckConsole(0x2Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = %d\n", v18, 44, v19, a2, *a3);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %d", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = Int32;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = AVE_CFPref_GetInt32(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = AVE_Log_CheckConsole(0x2Cu);
  v20 = AVE_GetCurrTime();
  v21 = AVE_Log_GetLevelStr(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = %d\n", v20, 44, v21, cStr, *a3);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %d", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %d", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t AVE_DW_GetInt64(const char *a1, const char *a2, uint64_t *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetInt64", 491, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Int64 = AVE_CFPref_GetInt64(v7, v8, a3);
  if (!Int64)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v17 = AVE_Log_CheckConsole(0x2Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = %lld\n", v18, 44, v19, a2, *a3);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = Int64;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = AVE_CFPref_GetInt64(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = AVE_Log_CheckConsole(0x2Cu);
  v20 = AVE_GetCurrTime();
  v21 = AVE_Log_GetLevelStr(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = %lld\n", v20, 44, v21, cStr, *a3);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t AVE_DW_GetDouble(const char *a1, const char *a2, double *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetDouble", 562, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Double = AVE_CFPref_GetDouble(v7, v8, a3);
  if (!Double)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v17 = AVE_Log_CheckConsole(0x2Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = %lf\n", v18, 44, v19, a2, *a3);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = Double;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = AVE_CFPref_GetDouble(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = AVE_Log_CheckConsole(0x2Cu);
  v20 = AVE_GetCurrTime();
  v21 = AVE_Log_GetLevelStr(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = %lf\n", v20, 44, v21, cStr, *a3);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

char **AVE_GetSurfaceCfg(int a1)
{
  if (a1 >= 41)
  {
    return 0;
  }

  else
  {
    return &(&gs_saAVE_SurfaceCfg)[2 * a1];
  }
}

uint64_t AVE_MSE_MakeDict(double *a1, int a2, __CFDictionary *a3)
{
  if (a2 <= 1)
  {
    AVE_CFDict_AddDouble(*MEMORY[0x29EDBD190], a1[3], a3);
    AVE_CFDict_AddDouble(*MEMORY[0x29EDBD168], a1[4], a3);
    AVE_CFDict_AddDouble(*MEMORY[0x29EDBD170], a1[5], a3);
    return 0;
  }

  LODWORD(v6) = a2;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  if (!Mutable)
  {
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v14 = AVE_Log_CheckConsole(0x10u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p\n", CurrTime, 16, LevelStr, "AVE_MSE_MakeDict", 48, "pLumaMSEArr != __null", a1, v6, a3);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v17, 16, v27);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", CurrTime, 16, LevelStr);
      }
    }

    return 4294966293;
  }

  v8 = Mutable;
  v9 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  if (!v9)
  {
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x10u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p\n", v19, 16, v20, "AVE_MSE_MakeDict", 52, "pChromaBlueMSEArr != __null", a1, v6, a3);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v21, 16, v28);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v19, 16, v20);
      }
    }

    CFRelease(v8);
    return 4294966293;
  }

  v10 = v9;
  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  if (v11)
  {
    v6 = v6;
    v12 = a1 + 5;
    do
    {
      AVE_CFArray_AddDouble(*(v12 - 2), v8);
      AVE_CFArray_AddDouble(*(v12 - 1), v10);
      v13 = *v12;
      v12 += 9;
      AVE_CFArray_AddDouble(v13, v11);
      --v6;
    }

    while (v6);
    CFDictionaryAddValue(a3, *MEMORY[0x29EDBD190], v8);
    CFDictionaryAddValue(a3, *MEMORY[0x29EDBD168], v10);
    CFDictionaryAddValue(a3, *MEMORY[0x29EDBD170], v11);
    v5 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x10u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p\n", v23, 16, v24, "AVE_MSE_MakeDict", 56, "pChromaRedMSEArr != __null", a1, v6, a3);
        v25 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v25, 16, v29);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v23, 16, v24);
      }
    }

    v5 = 4294966293;
  }

  CFRelease(v8);
  CFRelease(v10);
  if (v11)
  {
    CFRelease(v11);
  }

  return v5;
}

char *AVE_DevID2Type(uint64_t a1)
{
  result = AVE_DevCap_Find(a1);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

uint64_t AVE_TimeStats_Create(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v6 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %lld %d %p\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Create", a1, v4, 0);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %lld %d %p", CurrTime);
  }

  if ((v4 & 0x80000000) != 0 || !a3)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x3Cu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p\n", v17, 60, v18, "AVE_TimeStats_Create", 29, "num >= 0 && ppTS != __null", a1, v4, a3);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p", v19, 60, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p", v17, 60, v18);
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  else
  {
    v9 = malloc_type_malloc(0xD8uLL, 0x10A0040F185B927uLL);
    if (v9)
    {
      v10 = v9;
      v11 = AVE_TimeStats_Init(v9, a1, v4);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x3Cu, 4))
        {
          v12 = AVE_Log_CheckConsole(0x3Cu);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d\n", v13, 60, v14, "AVE_TimeStats_Create", 37, "ret == 0", v10, a1, v4, v11);
            v15 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d", v15, 60, v29);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d", v13, 60, v14);
          }
        }

        AVE_TimeStats_Uninit(v10);
        free(v10);
      }

      else
      {
        *a3 = v10;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x3Cu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x3Cu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p\n", v21, 60, v22, "AVE_TimeStats_Create", 33, "pTS != __null", a1, v4, a3);
          v23 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p", v23, 60, v31);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p", v21, 60, v22);
        }
      }

      v10 = 0;
      v11 = 4294966293;
    }
  }

  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v24 = AVE_Log_CheckConsole(0x3Cu);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(6);
    if (v24)
    {
      printf("%lld %d AVE %s: %s Exit %lld %d %p %d\n", v25, 60, v26, "AVE_TimeStats_Create", a1, v4, v10, v11);
      v27 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %lld %d %p %d", v27, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %lld %d %p %d", v25, 60);
    }
  }

  return v11;
}

uint64_t AVE_TimeStats_Init(_OWORD *a1, uint64_t a2, unsigned int a3)
{
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v6 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld %d\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Init", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %lld %d", CurrTime);
  }

  if (!a1 || (a3 & 0x80000000) != 0)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x3Cu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d\n", v14, 60, v15, "AVE_TimeStats_Init", 104, "pTS != __null && num >= 0", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d", v16, 60, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d", v14, 60, v15);
      }
    }

    v12 = 4294966295;
  }

  else
  {
    *(a1 + 26) = 0;
    a1[11] = 0u;
    a1[12] = 0u;
    a1[9] = 0u;
    a1[10] = 0u;
    a1[7] = 0u;
    a1[8] = 0u;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    v9 = AVE_Mutex_Create();
    if (v9)
    {
      v10 = v9;
      if (!a3)
      {
        a3 = 2;
      }

      v11 = malloc_type_malloc(16 * a3, 0x1000040451B5BE8uLL);
      if (v11)
      {
        v12 = 0;
        *a1 = a2;
        *(a1 + 2) = a3;
        *(a1 + 2) = v11;
        *(a1 + 22) = v10;
        goto LABEL_28;
      }

      if (AVE_Log_CheckLevel(0x3Cu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x3Cu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d\n", v22, 60, v23, "AVE_TimeStats_Init", 119, "pTP != __null", a1, a2, a3);
          v24 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d", v24, 60, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d", v22, 60, v23);
        }
      }

      AVE_Mutex_Destroy(v10);
    }

    else if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x3Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d\n", v18, 60, v19, "AVE_TimeStats_Init", 110, "pMutex != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d", v20, 60, v31);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d", v18, 60, v19);
      }
    }

    v12 = 4294966293;
  }

LABEL_28:
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v25 = AVE_Log_CheckConsole(0x3Cu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(6);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %d\n", v26, 60, v27, "AVE_TimeStats_Init", a1, a2, a3, v12);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d", v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d", v26);
    }
  }

  return v12;
}

uint64_t AVE_TimeStats_Uninit(_OWORD *a1)
{
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v2 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Uninit", a1);
      v5 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v17, "AVE_TimeStats_Uninit", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 60, LevelStr, "AVE_TimeStats_Uninit", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 2);
    if (v6)
    {
      free(v6);
      *(a1 + 2) = 0;
    }

    v7 = *(a1 + 22);
    if (v7)
    {
      AVE_Mutex_Destroy(v7);
    }

    v8 = 0;
    *(a1 + 26) = 0;
    a1[11] = 0u;
    a1[12] = 0u;
    a1[9] = 0u;
    a1[10] = 0u;
    a1[7] = 0u;
    a1[8] = 0u;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v9 = AVE_Log_CheckConsole(0x3Cu);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v10, 60, v11, "AVE_TimeStats_Uninit", 166, "pTS != __null", 0);
        v10 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v10);
    }

    v8 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v12 = AVE_Log_CheckConsole(0x3Cu);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v13, 60, v14, "AVE_TimeStats_Uninit", a1, v8);
      v15 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 60, v18, "AVE_TimeStats_Uninit", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 60, v14, "AVE_TimeStats_Uninit", a1, v8);
    }
  }

  return v8;
}

uint64_t AVE_TimeStats_Destroy(_OWORD *a1)
{
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v2 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v15, "AVE_TimeStats_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 60, LevelStr, "AVE_TimeStats_Destroy", a1);
    }
  }

  if (a1)
  {
    v6 = AVE_TimeStats_Uninit(a1);
    free(a1);
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v7 = AVE_Log_CheckConsole(0x3Cu);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v8, 60, v9, "AVE_TimeStats_Destroy", 73, "pTS != __null", 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v8);
    }

    v6 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v10 = AVE_Log_CheckConsole(0x3Cu);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v11, 60, v12, "AVE_TimeStats_Destroy", a1, v6);
      v13 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 60, v16, "AVE_TimeStats_Destroy", a1, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v11, 60, v12, "AVE_TimeStats_Destroy", a1, v6);
    }
  }

  return v6;
}

uint64_t AVE_TimeStats_Restart(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v2 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Restart", a1);
      v5 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v15, "AVE_TimeStats_Restart", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 60, LevelStr, "AVE_TimeStats_Restart", a1);
    }
  }

  if (a1)
  {
    AVE_Mutex_Lock(*(a1 + 176));
    ++*(a1 + 24);
    AVE_Mutex_Unlock(*(a1 + 176));
    v6 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v7 = AVE_Log_CheckConsole(0x3Cu);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v8, 60, v9, "AVE_TimeStats_Restart", 203, "pTS != __null", 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v8);
    }

    v6 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v10 = AVE_Log_CheckConsole(0x3Cu);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v11, 60, v12, "AVE_TimeStats_Restart", a1, v6);
      v13 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 60, v16, "AVE_TimeStats_Restart", a1, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v11, 60, v12, "AVE_TimeStats_Restart", a1, v6);
    }
  }

  return v6;
}

uint64_t AVE_TimeStats_AddStartTime(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0x3Cu, 7))
  {
    v6 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", CurrTime, 60, LevelStr, "AVE_TimeStats_AddStartTime", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld", CurrTime);
  }

  if (!a1 || a2 > 8 || a3 < 0)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x3Cu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld\n", v13, 60, v14, "AVE_TimeStats_AddStartTime", 235, "pTS != __null && 0 <= pos && pos < AVE_TimeStats_Pos_Max && ts >= 0", a1, a2, a3);
        v15 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v15, 60, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v13, 60, v14);
      }
    }

    v11 = 4294966295;
  }

  else
  {
    AVE_Mutex_Lock(*(a1 + 176));
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 24);
      if (a2 == 5)
      {
        *(v9 + 16 * (v10 % *(a1 + 8))) = a3;
      }

      v11 = 0;
      if (!v10)
      {
        *(a1 + 16 * a2 + 32) = a3;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x3Cu, 4))
      {
        v16 = AVE_Log_CheckConsole(0x3Cu);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld\n", v17, 60, v18, "AVE_TimeStats_AddStartTime", 240, "pTS->psTP != __null", a1, a2, a3);
          v19 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v19, 60, v26);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v17, 60, v18);
        }
      }

      v11 = 4294966285;
    }

    AVE_Mutex_Unlock(*(a1 + 176));
  }

  if (AVE_Log_CheckLevel(0x3Cu, 7))
  {
    v20 = AVE_Log_CheckConsole(0x3Cu);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d\n", v21, 60, v22, "AVE_TimeStats_AddStartTime", a1, a2, a3, v11);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v23, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v21, 60);
    }
  }

  return v11;
}

uint64_t AVE_TimeStats_AddEndTime(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0x3Cu, 7))
  {
    v6 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", CurrTime, 60, LevelStr, "AVE_TimeStats_AddEndTime", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld", CurrTime);
  }

  if (!a1 || a2 > 8 || a3 < 0)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v11 = AVE_Log_CheckConsole(0x3Cu);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld\n", v12, 60, v13, "AVE_TimeStats_AddEndTime", 282, "pTS != __null && 0 <= pos && pos < AVE_TimeStats_Pos_Max && ts >= 0", a1, a2, a3);
        v14 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v14, 60, v24);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v12, 60, v13);
      }
    }

    v10 = 4294966295;
  }

  else
  {
    AVE_Mutex_Lock(*(a1 + 176));
    v9 = *(a1 + 16);
    if (v9)
    {
      if (a2 == 5)
      {
        *(v9 + 16 * (*(a1 + 24) % *(a1 + 8)) + 8) = a3;
      }

      v10 = 0;
      *(a1 + 16 * a2 + 40) = a3;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x3Cu, 4))
      {
        v15 = AVE_Log_CheckConsole(0x3Cu);
        v16 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld\n", v16, 60, v17, "AVE_TimeStats_AddEndTime", 287, "pTS->psTP != __null", a1, a2, a3);
          v18 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v18, 60, v25);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v16, 60, v17);
        }
      }

      v10 = 4294966285;
    }

    AVE_Mutex_Unlock(*(a1 + 176));
  }

  if (AVE_Log_CheckLevel(0x3Cu, 7))
  {
    v19 = AVE_Log_CheckConsole(0x3Cu);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d\n", v20, 60, v21, "AVE_TimeStats_AddEndTime", a1, a2, a3, v10);
      v22 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v22, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v20, 60);
    }
  }

  return v10;
}

uint64_t AVE_TimeStats_Calc(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0x3Cu, 7))
  {
    v2 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Calc", a1);
      v5 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v28, "AVE_TimeStats_Calc", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 60, LevelStr, "AVE_TimeStats_Calc", a1);
    }
  }

  if (!a1)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x3Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v18, 60, v19, "AVE_TimeStats_Calc", 326, "pTS != __null", 0);
        v18 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v18);
    }

    v16 = 4294966295;
    goto LABEL_38;
  }

  AVE_Mutex_Lock(*(a1 + 176));
  v6 = *(a1 + 16);
  if (!v6)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x3Cu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong state %p\n", v21, 60, v22, "AVE_TimeStats_Calc", 331, "pTS->psTP != __null", a1);
        v21 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p", v21);
    }

    v16 = 4294966285;
    goto LABEL_37;
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v7 = (a1 + 184);
  *(a1 + 200) = 0;
  v8 = *(a1 + 24);
  LODWORD(v9) = *(a1 + 8);
  if (v8 < v9)
  {
    v9 = (v8 + 1);
  }

  else
  {
    v9 = v9;
  }

  if (v9 < 1)
  {
    goto LABEL_28;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = (v6 + 8);
  do
  {
    v15 = *v14 - *(v14 - 1);
    if (v15 < 1)
    {
      goto LABEL_21;
    }

    if (v12)
    {
      if (v15 < v11)
      {
        *v7 = v15;
        v11 = v15;
      }

      if (v15 <= v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v7 = v15;
      v11 = v15;
    }

    *(a1 + 200) = v15;
    v10 = v15;
LABEL_20:
    v13 += v15;
    ++v12;
LABEL_21:
    v14 += 2;
    --v9;
  }

  while (v9);
  if (v12)
  {
    v16 = 0;
    *(a1 + 192) = v13 / v12;
    *(a1 + 208) = v12;
    goto LABEL_37;
  }

LABEL_28:
  v16 = 0;
LABEL_37:
  AVE_Mutex_Unlock(*(a1 + 176));
LABEL_38:
  if (AVE_Log_CheckLevel(0x3Cu, 7))
  {
    v23 = AVE_Log_CheckConsole(0x3Cu);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(7);
    if (v23)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v24, 60, v25, "AVE_TimeStats_Calc", a1, v16);
      v26 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v26, 60, v29, "AVE_TimeStats_Calc", a1, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v24, 60, v25, "AVE_TimeStats_Calc", a1, v16);
    }
  }

  return v16;
}

uint64_t AVE_TimeStats_Print(void *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  v34 = *MEMORY[0x29EDCA608];
  memset(v33, 0, sizeof(v33));
  if (a1)
  {
    v10 = a3;
    result = AVE_Log_CheckLevel(a2, a3);
    if (result)
    {
      AVE_ComposePosStr(a4, a5, v33, 32);
      AVE_Mutex_Lock(a1[22]);
      if (AVE_Log_CheckLevel(a2, a3))
      {
        v12 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if (v12 && (-a3 & 0x20) == 0)
          {
            printf("TimeStats ID: %lld %s | Session: %lld Process: %lld\n", *a1, v33, a1[7] - a1[4], a1[15] - a1[14]);
          }

          syslog(3, "TimeStats ID: %lld %s | Session: %lld Process: %lld");
        }

        else
        {
          v13 = v12 ^ 1;
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(a3);
          if (((v13 | ((a3 & 0x20) >> 5)) & 1) == 0)
          {
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Session: %lld Process: %lld\n", CurrTime, a2, LevelStr, *a1, v33, a1[7] - a1[4], a1[15] - a1[14]);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(a3);
          }

          syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Session: %lld Process: %lld", CurrTime, a2, LevelStr, *a1, v33, a1[7] - a1[4], a1[15] - a1[14]);
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v20 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if (!v20 || (-a3 & 0x20) != 0)
          {
            syslog(3, "TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", *a1, v33, a1[5] - a1[4], a1[7] - a1[6]);
          }

          else
          {
            printf("TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld\n", *a1, v33, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
            syslog(3, "TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", *a1, v33, a1[5] - a1[4], a1[7] - a1[6]);
          }
        }

        else
        {
          v21 = v20 ^ 1;
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(a3);
          if (((v21 | ((a3 & 0x20) >> 5)) & 1) == 0)
          {
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld\n", v22, a2, v23, *a1, v33, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(a3);
          }

          syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", v22, a2, v23, *a1, v33, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v24 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if (v24 && (-a3 & 0x20) == 0)
          {
            printf("TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d\n", *a1, v33, a1[23], a1[24], a1[25], *(a1 + 52));
          }

          syslog(3, "TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d");
        }

        else
        {
          v25 = a3 & 0x20;
          v26 = v24 ^ 1;
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(v10);
          if ((v26 | (v25 >> 5)))
          {
            syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d", v27, a2, v28);
          }

          else
          {
            v29 = a2;
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d\n", v27, a2, v28, *a1, v33, a1[23], a1[24], a1[25], *(a1 + 52));
            v30 = AVE_GetCurrTime();
            v32 = AVE_Log_GetLevelStr(v10);
            syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d", v30, v29, v32);
          }
        }
      }

      AVE_Mutex_Unlock(a1[22]);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x3Cu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d\n", v17, 60, v18, "AVE_TimeStats_Print", 404, "pTS != __null", 0, a2, a3, a4, a5);
        v19 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d", v19, 60, v31, "AVE_TimeStats_Print");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d", v17, 60, v18, "AVE_TimeStats_Print");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_DW_RetrieveDeprecatedKeys(int *a1)
{
  v7 = 0;
  v6 = 0;
  if (!AVE_DW_GetBool(0, "AVE_EnableLossless", &v7))
  {
    v2 = 10;
    if (v7)
    {
      v2 = 8;
    }

    *&a1[v2] |= 0x200uLL;
  }

  if (!AVE_DW_GetInt32(0, "AVE_FrameQP", &v6))
  {
    v3 = v6;
    a1[201] = v6;
    a1[202] = v3;
    a1[203] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MaximizePowerEfficiency", &v6))
  {
    if (v6)
    {
      a1[16] |= 2u;
    }

    else
    {
      a1[17] |= 2u;
    }
  }

  if (!AVE_DW_GetInt32(0, "AVE_UseCAVLCBits", &v6))
  {
    if (v6)
    {
      a1[16] |= 0x100u;
    }

    else
    {
      a1[17] |= 0x100u;
    }
  }

  if (!AVE_DW_GetInt32(0, "AVE_EnableMCTF", &v6))
  {
    v4 = 8;
    if (!v6)
    {
      v4 = 10;
    }

    *&a1[v4] |= 0x20uLL;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Bframes", &v6))
  {
    a1[221] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_BaseFrameRate", &v6))
  {
    *a1 = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_InitialQPI", &v6))
  {
    a1[201] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_InitialQPP", &v6))
  {
    a1[202] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_InitialQPB", &v6))
  {
    a1[203] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SoftMinQP", &v6))
  {
    a1[196] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SoftMaxQP", &v6))
  {
    a1[197] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_HardMinQP", &v6))
  {
    a1[240] = v6;
  }

  result = AVE_DW_GetInt32(0, "AVE_HardMaxQP", &v6);
  if (!result)
  {
    a1[241] = v6;
  }

  return result;
}

uint64_t AVE_DW_RetrieveFeature(void *a1)
{
  v3 = 0;
  if (!AVE_DW_GetUInt64(0, "AVE_CfgOn", &v3))
  {
    a1[2] = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_CfgOff", &v3))
  {
    a1[3] = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_SwFeatureOn", &v3))
  {
    a1[4] = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_SwFeatureOff", &v3))
  {
    a1[5] = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_HwFeatureOn", &v3))
  {
    a1[6] = v3;
  }

  result = AVE_DW_GetUInt64(0, "AVE_HwFeatureOff", &v3);
  if (!result)
  {
    a1[7] = v3;
  }

  return result;
}

uint64_t AVE_DW_RetrieveDPM(int *a1)
{
  v9 = 0;
  if (!AVE_DW_GetInt32(0, "AVE_DPM_Mode", &v9))
  {
    *a1 = v9 | 0x100;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_IOPMin", &v9))
  {
    v2 = v9;
    if (v9 <= 1)
    {
      v2 = 1;
    }

    if (v2 >= 4)
    {
      v2 = 4;
    }

    a1[1] |= 1u;
    a1[2] = v2;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_IOPMax", &v9))
  {
    v3 = v9;
    if (v9 <= 1)
    {
      v3 = 1;
    }

    if (v3 >= 4)
    {
      v3 = 4;
    }

    a1[3] = v3;
    a1[1] |= 0x10000u;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_DCSMin", &v9))
  {
    v4 = v9;
    if (v9 <= 1)
    {
      v4 = 1;
    }

    if (v4 >= 4)
    {
      v4 = 4;
    }

    a1[4] = v4;
    a1[1] |= 2u;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_DCSMax", &v9))
  {
    v5 = v9;
    if (v9 <= 1)
    {
      v5 = 1;
    }

    if (v5 >= 4)
    {
      v5 = 4;
    }

    a1[5] = v5;
    a1[1] |= 0x20000u;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_FABMin", &v9))
  {
    v6 = v9;
    if (v9 <= 1)
    {
      v6 = 1;
    }

    if (v6 >= 4)
    {
      v6 = 4;
    }

    a1[6] = v6;
    a1[1] |= 4u;
  }

  result = AVE_DW_GetInt32(0, "AVE_DPM_PL_FABMax", &v9);
  if (!result)
  {
    v8 = v9;
    if (v9 <= 1)
    {
      v8 = 1;
    }

    if (v8 >= 4)
    {
      v8 = 4;
    }

    a1[7] = v8;
    a1[1] |= 0x40000u;
  }

  return result;
}

uint64_t AVE_DW_RetrieveDLB(int *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *v5 = 0u;
  v6 = 0u;
  v4 = 0;
  if (!AVE_DW_GetInt32(0, "AVE_DLB_AllocMode", &v4))
  {
    a1[1] = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DLB_Type", &v4))
  {
    a1[2] = v4;
    *a1 = 1;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DLB_SVESchedMode", &v4))
  {
    a1[3] = v4;
    *a1 = 1;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DLB_SVENum", &v4))
  {
    a1[4] = v4;
    *a1 = 1;
  }

  if (!AVE_DW_GetStr(0, "AVE_DLB_SVEMap", v5, 128))
  {
    AVE_DLB_ParseCfg(v5, a1);
  }

  Str = AVE_DW_GetStr(0, "AVE_DLB_Cfg", v5, 128);
  if (!Str)
  {
    AVE_DLB_ParseCfg(v5, a1);
  }

  return Str;
}

uint64_t AVE_DW_RetrievePerf(_DWORD *a1)
{
  *v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_PerfFeatureOn", &v3[1]))
  {
    a1[16] = v3[1];
  }

  if (!AVE_DW_GetUInt32(0, "AVE_PerfFeatureOff", &v3[1]))
  {
    a1[17] = v3[1];
  }

  if (!AVE_DW_GetInt32(0, "AVE_InputQueueMaxCount", v3))
  {
    a1[18] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_MaxFrameRate", v3))
  {
    a1[19] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_Realtime", v3))
  {
    a1[20] = v3[0];
  }

  AVE_DW_RetrieveDPM(a1 + 21);
  return AVE_DW_RetrieveDLB(a1 + 29);
}

uint64_t AVE_DW_RetrieveDump(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__src = 0u;
  v6 = 0u;
  if (!AVE_DW_GetUInt32(0, "AVE_DumpFeature", &v4))
  {
    *(a1 + 412) = v4;
  }

  if (!AVE_DW_GetUInt32(0, "AVE_DumpMode", &v4))
  {
    *(a1 + 416) = v4;
  }

  Str = AVE_DW_GetStr(0, "AVE_OutputPath", __src, 128);
  if (!Str)
  {
    strncpy((a1 + 420), __src, 0x7FuLL);
  }

  return Str;
}

uint64_t AVE_DW_RetrieveLog(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = 0;
  v4 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__src = 0u;
  v7 = 0u;
  if (!AVE_DW_GetUInt64(0, "AVE_Verbose", &v5))
  {
    *(a1 + 8) = v5;
    *a1 |= 0x100u;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_KernelVerbose", &v5))
  {
    *(a1 + 16) = v5;
    *a1 |= 0x200u;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_FirmwareVerbose", &v5))
  {
    *(a1 + 24) = v5;
    *a1 |= 0x300u;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_AlgVerbose", &v5))
  {
    *(a1 + 32) = v5;
    *a1 |= 0x400u;
  }

  if (!AVE_DW_GetInt32(0, "AVE_LogConsole", &v4))
  {
    *(a1 + 40) = v4;
  }

  Str = AVE_DW_GetStr(0, "AVE_LogPath", __src, 128);
  if (!Str)
  {
    strncpy((a1 + 44), __src, 0x7FuLL);
  }

  return Str;
}

uint64_t AVE_DW_RetrieveRC(uint64_t a1)
{
  v6 = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  if (!AVE_DW_GetUInt64(0, "AVE_RCFeatureOn", &v4))
  {
    *(a1 + 768) = v4;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_RCFeatureOff", &v4))
  {
    *(a1 + 776) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_RCMinQP", &v6))
  {
    *(a1 + 784) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_RCMaxQP", &v6))
  {
    *(a1 + 788) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_LookAheadFrameCount", &v6))
  {
    *(a1 + 792) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_RCMode", &v6))
  {
    *(a1 + 796) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Bitrate", &v6))
  {
    *(a1 + 800) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_QPI", &v6))
  {
    *(a1 + 804) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_QPP", &v6))
  {
    *(a1 + 808) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_QPB", &v6))
  {
    *(a1 + 812) = v6;
  }

  if (!AVE_DW_GetDouble(0, "AVE_CRFScale", &v3))
  {
    *(a1 + 816) = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_VBVMaxBitRate", &v6))
  {
    *(a1 + 824) = v6;
  }

  if (!AVE_DW_GetDouble(0, "AVE_VBVBufferSize", &v3))
  {
    *(a1 + 832) = v3;
  }

  if (!AVE_DW_GetDouble(0, "AVE_VBVInitialDelay", &v3))
  {
    *(a1 + 840) = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Parallel_Limit", &v6))
  {
    *(a1 + 848) = v6;
  }

  if (!AVE_DW_GetInt64(0, "AVE_Parallel_MinFrameCnt", &v5))
  {
    *(a1 + 856) = v5;
  }

  result = AVE_DW_GetInt64(0, "AVE_Parallel_MinDuration", &v5);
  if (!result)
  {
    *(a1 + 864) = v5;
  }

  return result;
}

uint64_t AVE_DW_RetrieveGOP(uint64_t a1)
{
  v3 = 0;
  *v4 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_GOPFeatureOn", &v4[1]))
  {
    *(a1 + 872) = v4[1];
  }

  if (!AVE_DW_GetUInt32(0, "AVE_GOPFeatureOff", &v4[1]))
  {
    *(a1 + 876) = v4[1];
  }

  if (!AVE_DW_GetInt32(0, "AVE_NumOfPFrame", v4))
  {
    *(a1 + 880) = v4[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_NumOfBFrame", v4))
  {
    *(a1 + 884) = v4[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_NumOfGOPLayer", v4))
  {
    *(a1 + 888) = v4[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_MaxKeyFrameInterval", v4))
  {
    *(a1 + 896) = v4[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_StrictKeyFrameInterval", v4))
  {
    *(a1 + 900) = v4[0];
  }

  if (!AVE_DW_GetDouble(0, "AVE_MaxKeyFrameIntervalDuration", &v3))
  {
    *(a1 + 904) = v3;
  }

  if (!AVE_DW_GetDouble(0, "AVE_StrictKeyFrameIntervalDuration", &v3))
  {
    *(a1 + 912) = v3;
  }

  result = AVE_DW_GetInt32(0, "AVE_NumOfTemporalLayer", v4);
  if (!result)
  {
    *(a1 + 892) = v4[0];
  }

  return result;
}

uint64_t AVE_DW_RetrieveRef(_DWORD *a1)
{
  *v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_RefFeatureOn", &v3[1]))
  {
    a1[230] = v3[1];
  }

  if (!AVE_DW_GetUInt32(0, "AVE_RefFeatureOff", &v3[1]))
  {
    a1[231] = v3[1];
  }

  if (!AVE_DW_GetInt32(0, "AVE_RefNumOfPFrame", v3))
  {
    a1[232] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_RefNumOfBFrame", v3))
  {
    a1[233] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_RefGapOfPFrame", v3))
  {
    a1[234] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_RefGapOfBFrameL0", v3))
  {
    a1[235] = v3[0];
  }

  result = AVE_DW_GetInt32(0, "AVE_RefGapOfBFrameL1", v3);
  if (!result)
  {
    a1[236] = v3[0];
  }

  return result;
}

uint64_t AVE_DW_RetrieveQPMod(_DWORD *a1)
{
  *v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_QPModFeatureOn", &v3[1]))
  {
    a1[237] = v3[1];
  }

  if (!AVE_DW_GetUInt32(0, "AVE_QPModFeatureOff", &v3[1]))
  {
    a1[238] = v3[1];
  }

  if (!AVE_DW_GetInt32(0, "AVE_QPModLevel", v3))
  {
    a1[239] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_BlkMinQP", v3))
  {
    a1[240] = v3[0];
  }

  result = AVE_DW_GetInt32(0, "AVE_BlkMaxQP", v3);
  if (!result)
  {
    a1[241] = v3[0];
  }

  return result;
}

uint64_t AVE_DW_RetrieveLambdaMod(uint64_t a1)
{
  v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_LambdaModFeatureOn", &v3))
  {
    *(a1 + 968) = v3;
  }

  result = AVE_DW_GetUInt32(0, "AVE_LambdaModFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 972) = v3;
  }

  return result;
}

uint64_t AVE_DW_RetrieveModeDec(uint64_t a1)
{
  v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_ModeDecFeatureOn", &v3))
  {
    *(a1 + 976) = v3;
  }

  result = AVE_DW_GetUInt32(0, "AVE_ModeDecFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 980) = v3;
  }

  return result;
}

uint64_t AVE_DW_RetrieveAlg(uint64_t a1)
{
  v4 = 0;
  v3 = 0;
  if (!AVE_DW_GetUInt64(0, "AVE_AlgFeatureOn", &v3))
  {
    *(a1 + 728) = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_AlgFeatureOff", &v3))
  {
    *(a1 + 736) = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Profile", &v4))
  {
    *(a1 + 744) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Level", &v4))
  {
    *(a1 + 748) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Tier", &v4))
  {
    *(a1 + 752) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_ScalingMatrix", &v4))
  {
    *(a1 + 756) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_FrameRate", &v4))
  {
    *(a1 + 760) = v4;
  }

  AVE_DW_RetrieveRC(a1);
  AVE_DW_RetrieveGOP(a1);
  AVE_DW_RetrieveRef(a1);
  AVE_DW_RetrieveQPMod(a1);
  AVE_DW_RetrieveLambdaMod(a1);
  AVE_DW_RetrieveModeDec(a1);
  if (!AVE_DW_GetUInt64(0, "AVE_SEIFeatureOn", &v3))
  {
    *(a1 + 984) = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_SEIFeatureOff", &v3))
  {
    *(a1 + 992) = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_VUIFeatureOn", &v3))
  {
    *(a1 + 1000) = v3;
  }

  result = AVE_DW_GetUInt64(0, "AVE_VUIFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 1008) = v3;
  }

  return result;
}

uint64_t AVE_DW_RetrieveHw(_DWORD *a1)
{
  v3 = 0;
  if (!AVE_DW_GetInt32(0, "AVE_SliceNum", &v3))
  {
    a1[254] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SearchRangeMode", &v3))
  {
    a1[255] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_ThroughputMode", &v3))
  {
    a1[256] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MergeCandidateNum", &v3))
  {
    a1[257] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DeblockMode", &v3))
  {
    a1[258] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SAOMode", &v3))
  {
    a1[259] = v3;
  }

  result = AVE_DW_GetInt32(0, "AVE_EdgeReplication", &v3);
  if (!result)
  {
    a1[260] = v3;
  }

  return result;
}

uint64_t AVE_DW_RetrieveMCTF(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  v4 = 0;
  v3 = 0.0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *v5 = 0u;
  v6 = 0u;
  if (!AVE_DW_GetInt32(0, "AVE_MCTFStrengthLevel", &v4))
  {
    *(a1 + 1044) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFStrengthDelta", &v4))
  {
    *(a1 + 1048) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFTogglePeriod", &v4))
  {
    *(a1 + 1052) = v4;
  }

  if (!AVE_DW_GetDouble(0, "AVE_MCTFISPGainThreshold", &v3))
  {
    *(a1 + 1056) = v3;
  }

  if (!AVE_DW_GetDouble(0, "AVE_MCTFISPGain1RefThreshold", &v3))
  {
    *(a1 + 1072) = v3;
  }

  if (!AVE_DW_GetDouble(0, "AVE_MCTFISPGain2RefThreshold", &v3))
  {
    *(a1 + 1064) = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFOnToOffPerfThreshold", &v4))
  {
    *(a1 + 1080) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFOffToOnPerfThreshold", &v4))
  {
    *(a1 + 1084) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFMaxNextRefNum", &v4))
  {
    *(a1 + 1088) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFRampUpFrameNum", &v4))
  {
    *(a1 + 1092) = v4;
  }

  result = AVE_DW_GetStr(0, "AVE_MCTF_SMap", v5, 512);
  if (!result)
  {
    return AVE_MCTF_SMap_Parse(v5, (a1 + 1096));
  }

  return result;
}

uint64_t AVE_DW_Retrieve(uint64_t a1)
{
  v4 = 0;
  if (!AVE_DW_GetInt32(0, "AVE_DWMode", &v4))
  {
    *(a1 + 4) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DefaultCfg", &v4))
  {
    *(a1 + 8) = v4;
  }

  AVE_DW_RetrieveFeature(a1);
  AVE_DW_RetrievePerf(a1);
  AVE_DW_RetrieveDump(a1);
  AVE_DW_RetrieveLog(a1 + 552);
  AVE_DW_RetrieveAlg(a1);
  AVE_DW_RetrieveHw(a1);
  AVE_DW_RetrieveMCTF(a1);
  if (!AVE_DW_GetInt32(0, "AVE_Usage", &v4))
  {
    *(a1 + 1580) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_PropertyMode", &v4))
  {
    *(a1 + 1584) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_TotalFrameCount", &v4))
  {
    *(a1 + 1588) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_CmdTimeOutMode", &v4))
  {
    *(a1 + 1592) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SchedPolicy", &v4))
  {
    *(a1 + 1596) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_OutputBufNum", &v4))
  {
    *(a1 + 1600) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_OutputBufSize", &v4))
  {
    *(a1 + 1604) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SNR", &v4))
  {
    *(a1 + 1608) = v4;
  }

  Int32 = AVE_DW_GetInt32(0, "AVE_TimeStats_MaxCnt", &v4);
  if (!Int32)
  {
    *(a1 + 1612) = v4;
  }

  AVE_DW_RetrieveDeprecatedKeys(a1);
  return Int32;
}

uint64_t AVE_DW_Init(void)
{
  if (AVE_Log_CheckLevel(0x2Cu, 7))
  {
    v0 = AVE_Log_CheckConsole(0x2Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", CurrTime, 44, LevelStr, "AVE_DW_Init");
      v3 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 44, v10, "AVE_DW_Init");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", CurrTime, 44, LevelStr, "AVE_DW_Init");
    }
  }

  AVE_DW_Cfg_Init(gs_sAVE_DW_Cfg);
  v4 = AVE_DW_Retrieve(gs_sAVE_DW_Cfg);
  if (AVE_Log_CheckLevel(0x2Cu, 7))
  {
    v5 = AVE_Log_CheckConsole(0x2Cu);
    v6 = AVE_GetCurrTime();
    v7 = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v6, 44, v7, "AVE_DW_Init", v4);
      v8 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v8, 44, v11, "AVE_DW_Init", v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v6, 44, v7, "AVE_DW_Init", v4);
    }
  }

  return v4;
}

uint64_t AVE_DW_Uninit(void)
{
  if (AVE_Log_CheckLevel(0x2Cu, 7))
  {
    v0 = AVE_Log_CheckConsole(0x2Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", CurrTime, 44, LevelStr, "AVE_DW_Uninit");
      v3 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 44, v10, "AVE_DW_Uninit");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", CurrTime, 44, LevelStr, "AVE_DW_Uninit");
    }
  }

  v4 = AVE_DW_Cfg_Uninit();
  if (AVE_Log_CheckLevel(0x2Cu, 7))
  {
    v5 = AVE_Log_CheckConsole(0x2Cu);
    v6 = AVE_GetCurrTime();
    v7 = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v6, 44, v7, "AVE_DW_Uninit", v4);
      v8 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v8, 44, v11, "AVE_DW_Uninit", v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v6, 44, v7, "AVE_DW_Uninit", v4);
    }
  }

  return v4;
}

uint64_t AVE_EdgeReplication_DetermineMode(__CVBuffer *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, _DWORD *a8, int a9)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight[0] = 0;
  v16 = AVE_DevID2Type(a3);
  v17 = v16;
  v50 = v16;
  if (a4 == 2 && v16 < 12 || !a8[1] && !a8[3])
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_67;
  }

  if (a9 != -1)
  {
    v18 = a9 + 3;
    goto LABEL_19;
  }

  if (!a5)
  {
    v18 = 2;
    goto LABEL_19;
  }

  v18 = 1;
  if (a6 != 2 || a7)
  {
LABEL_19:
    CVPixelBufferGetExtendedPixels(a1, 0, extraColumnsOnRight, 0, &extraRowsOnBottom);
    v28 = a2[6];
    if (v28)
    {
      v20 = 0;
      v29 = 1;
      if (v28 != 1 || !extraRowsOnBottom)
      {
LABEL_26:
        if (v17 < 12)
        {
          if (v17 < 4)
          {
            v21 = 0;
          }

          else
          {
            if (a8[1] == 8u >> (a2[4] >> 1))
            {
              v39 = 3328;
            }

            else
            {
              v39 = 0;
            }

            if (a8[3] == 8u >> (a2[5] >> 1))
            {
              v21 = v39 | 0x50000;
            }

            else
            {
              v21 = v39;
            }
          }
        }

        else
        {
          v32 = a8[1];
          v33 = a2[4] >> 1;
          if (v32 > (0xEu >> v33) || v32 < (2u >> v33))
          {
            v35 = 0;
          }

          else
          {
            v35 = 3328;
          }

          v36 = a8[3];
          v37 = a2[5] >> 1;
          if (v36 > (0xEu >> v37) || v36 < (2u >> v37))
          {
            v21 = v35;
          }

          else
          {
            v21 = v35 | 0x50000;
          }
        }

        v40 = 0;
        if (v18 <= 4)
        {
          if ((v18 - 1) >= 2)
          {
            if (v18)
            {
              if (v18 == 4)
              {
                v40 = v21 & 0xFF00;
              }

              goto LABEL_66;
            }

            if ((v21 & 0x70000) == 0)
            {
              if (v29)
              {
                v41 = 0;
              }

              else
              {
                v41 = v20;
              }

              v40 = v21 & 0xFF00 | v41;
              goto LABEL_66;
            }
          }

          goto LABEL_58;
        }

        switch(v18)
        {
          case 5:
            v40 = v21 & 0x70000;
            break;
          case 6:
            v40 = v20 | 2;
            if (v29)
            {
              v40 = 0;
            }

            break;
          case 7:
LABEL_58:
            v40 = v21 & 0x7FF00;
            break;
        }

LABEL_66:
        v19 = v40 | ((v40 & 0x10100) != 0);
        goto LABEL_67;
      }
    }

    else if (!extraRowsOnBottom)
    {
      v20 = 0;
      v29 = 1;
      goto LABEL_26;
    }

    v30 = a8[3];
    v31 = v30 != 0;
    v29 = v30 == 0;
    v20 = v31 << 16;
    goto LABEL_26;
  }

  v22 = a4;
  v23 = a6;
  v24 = a5;
  v25 = CVBufferCopyAttachment(a1, *MEMORY[0x29EDB96B8], 0);
  if (!v25)
  {
LABEL_17:
    v18 = 0;
    a5 = v24;
    a6 = v23;
    a4 = v22;
    a7 = 0;
    goto LABEL_19;
  }

  v26 = v25;
  if (CFEqual(v25, *MEMORY[0x29EDB8F00]))
  {
    v27 = v17 < 7;
  }

  else
  {
    v27 = 0;
  }

  if (!v27)
  {
    CFRelease(v26);
    goto LABEL_17;
  }

  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 16;
  a5 = v24;
  a6 = v23;
  a4 = v22;
  a7 = 0;
LABEL_67:
  if (AVE_Log_CheckLevel(0x11u, 7))
  {
    v49 = a4;
    v42 = a5;
    v43 = AVE_Log_CheckConsole(0x11u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v43)
    {
      printf("%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n\n", CurrTime, 17, LevelStr, "AVE_EdgeReplication_DetermineMode", 240, v50, v49, v42, a6, a7, a9, *a8, a8[1], a8[2], a8[3], LODWORD(extraColumnsOnRight[0]), extraRowsOnBottom, v18, v20, v21, v19);
      v48 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n", v48, 17, v46, "AVE_EdgeReplication_DetermineMode", 240, v50, v49, v42);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n", CurrTime, 17, LevelStr, "AVE_EdgeReplication_DetermineMode", 240, v50, v49, v42);
    }
  }

  return v19;
}

uint64_t AVE_EdgeReplication_FillPlaneRight(__CVBuffer *a1, unsigned int a2)
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  v5 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  CVPixelBufferGetWidthOfPlane(a1, a2);
  CVPixelBufferGetHeightOfPlane(a1, a2);
  CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &v5);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 4294966296;
}

uint64_t AVE_EdgeReplication_FillPlaneBottom(__CVBuffer *a1, unsigned int a2, int a3, uint64_t a4)
{
  v17 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  CVPixelBufferGetWidthOfPlane(a1, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, a2);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  CVPixelBufferGetExtendedPixels(a1, 0, 0, &extraRowsOnTop, &v17);
  if (a2)
  {
    if (*(a4 + 12))
    {
      v11 = *(a4 + 20) >> 1;
      v17 >>= v11;
      extraRowsOnTop >>= v11;
    }

    else
    {
      v17 = 0;
    }
  }

  v12 = &BaseAddressOfPlane[(extraRowsOnTop + HeightOfPlane - 1) * BytesPerRowOfPlane];
  v13 = &v12[BytesPerRowOfPlane];
  if (a3)
  {
    if (v17)
    {
      for (i = 0; i < v17; ++i)
      {
        memcpy(v13, v12, BytesPerRowOfPlane);
        v13 += BytesPerRowOfPlane;
        v12 -= BytesPerRowOfPlane;
      }
    }
  }

  else if (v17)
  {
    for (j = 0; j < v17; ++j)
    {
      memcpy(v13, v12, BytesPerRowOfPlane);
      v13 += BytesPerRowOfPlane;
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 0;
}

uint64_t AVE_EdgeReplication_Fill(__CVBuffer *a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  if ((a2 & 0x50000) == 0x10000 && *(a3 + 8) >= 1)
  {
    v6 = 0;
    v7 = HIWORD(a2);
    do
    {
      AVE_EdgeReplication_FillPlaneBottom(a1, v6++, v7 & 8, a3);
    }

    while (v6 < *(a3 + 8));
  }

  if ((v4 & 0x500) == 0x100 && *(a3 + 8) >= 1)
  {
    v8 = 0;
    do
    {
      AVE_EdgeReplication_FillPlaneRight(a1, v8++);
    }

    while (v8 < *(a3 + 8));
  }

  return 0;
}

char *AVE_DevCap_Find(int a1)
{
  if (a1 >= 35)
  {
    return 0;
  }

  else
  {
    return &gsc_saAVE_DevCap[9 * a1];
  }
}

uint64_t AVE_DevCap_FindResolution(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = gsc_saAVE_DevCap[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 24);
  }

  return v3;
}

uint64_t AVE_DevCap_FindPixelFmt(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = gsc_saAVE_DevCap[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 32);
  }

  return v3;
}

uint64_t AVE_DevCap_FindSearchRange(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = gsc_saAVE_DevCap[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 40);
  }

  return v3;
}

uint64_t AVE_DevCap_FindPerf(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = gsc_saAVE_DevCap[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 48);
  }

  return v3;
}

uint64_t AVE_DevCap_FindThroughput(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = gsc_saAVE_DevCap[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 56);
  }

  return v3;
}

uint64_t AVE_PixelFmt_AddAll(const unsigned int *a1, unsigned int a2, __CFArray *a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = a2;
  while (1)
  {
    v6 = *a1++;
    result = AVE_CFArray_AddSInt32(v6, a3);
    if (result)
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVE_USurface::CreateDict(AVE_USurface *this, int a2, int a3, int a4, __CFDictionary **a5, __CFDictionary **a6)
{
  v10 = this;
  *a5 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v12 = Mutable;
    v13 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB140], v10, Mutable);
    v14 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB160], a2, v12) + v13;
    v15 = v14 + AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB180], a3, v12);
    v16 = *MEMORY[0x29EDCA6D0];
    if (*MEMORY[0x29EDCA6D0] <= 0x4000uLL)
    {
      LODWORD(v16) = 0x4000;
    }

    v17 = (a4 + v16 - 1) & -v16;
    if (!(v15 + AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB128], v17, v12)))
    {
      result = 0;
      *a5 = v12;
      return result;
    }

    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v22 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to add keys %d %d 0x%x %d %p\n", CurrTime, 76, LevelStr, "AVE_USurface", "CreateDict", 49, "ret == 0", v10, a2, a3, v17, v12);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add keys %d %d 0x%x %d %p", v25, 76, v26, "AVE_USurface");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add keys %d %d 0x%x %d %p", CurrTime, 76, LevelStr, "AVE_USurface");
      }
    }

    CFRelease(v12);
  }

  else if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v19 = AVE_Log_CheckConsole(0x4Cu);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(4);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to create CFDictionary\n", v20, 76, v21, "AVE_USurface", "CreateDict", 36, "pDict != __null");
      v20 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create CFDictionary", v20);
  }

  return 4294966293;
}

uint64_t AVE_USurface::CreateIOSurface(AVE_USurface *this, int a2, int a3, int a4, IOSurfaceRef *a5, __IOSurface **a6)
{
  v10 = this;
  v31 = 0;
  if (a4 >= 1 && a5)
  {
    *a5 = 0;
    v11 = AVE_USurface::CreateDict(this, a2, a3, a4, &v31, a6);
    if (v11)
    {
      v12 = v11;
      if (AVE_Log_CheckLevel(0x4Cu, 4))
      {
        v13 = AVE_Log_CheckConsole(0x4Cu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create surface dictionary %d %d %d %d %d\n", CurrTime, 76, LevelStr, "AVE_USurface", "CreateIOSurface", 94, "ret == 0", v10, a2, a3, a4, v12);
          v16 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface dictionary %d %d %d %d %d", v16, 76, v28, "AVE_USurface");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface dictionary %d %d %d %d %d", CurrTime, 76, LevelStr, "AVE_USurface");
        }
      }
    }

    else
    {
      v21 = v31;
      v22 = IOSurfaceCreate(v31);
      if (v22)
      {
        v12 = 0;
        *a5 = v22;
        if (!v21)
        {
          return v12;
        }

        goto LABEL_17;
      }

      if (!AVE_Log_CheckLevel(0x4Cu, 4))
      {
        v12 = 4294966296;
        if (!v21)
        {
          return v12;
        }

        goto LABEL_17;
      }

      v24 = AVE_Log_CheckConsole(0x4Cu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to create surface %d %d %d %d\n", v25, 76, v26, "AVE_USurface", "CreateIOSurface", 99, "pSurface != __null", v10, a2, a3, a4);
        v27 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %d %d %d %d", v27, 76, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %d %d %d %d", v25, 76, v26);
      }

      v12 = 4294966296;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x4Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %d %d %d %d %p\n", v18, 76, v19, "AVE_USurface", "CreateIOSurface", 88, "size > 0 && ppSurface != __null", v10, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %d %d %d %d %p", v20, 76, v29, "AVE_USurface");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %d %d %d %d %p", v18, 76, v19, "AVE_USurface");
      }
    }

    v12 = 4294966295;
  }

  v21 = v31;
  if (v31)
  {
LABEL_17:
    CFRelease(v21);
  }

  return v12;
}

void AVE_USurface::AVE_USurface(AVE_USurface *this, uint64_t a2)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
}

uint64_t AVE_USurface::Create(AVE_USurface *this, __IOSurface *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v29 = *MEMORY[0x29EDCA608];
  v27 = 0u;
  v28 = 0u;
  *cStr = 0u;
  v26 = 0u;
  if (a2)
  {
    if ((a3 & 8) == 0)
    {
LABEL_8:
      if (a4)
      {
        v14 = a4;
      }

      else
      {
        v14 = &unk_295613FE7;
      }

      AVE_SNPrintf(this + 8, 64, "%s", v14);
      AllocSize = IOSurfaceGetAllocSize(a2);
      result = 0;
      *(this + 20) = AllocSize;
      *(this + 9) = a2;
      *(this + 11) = a5;
      return result;
    }

    v10 = " ";
    if (a4)
    {
      v11 = a4;
    }

    else
    {
      v10 = &unk_295613FE7;
      v11 = &unk_295613FE7;
    }

    AVE_SNPrintf(cStr, 64, "%s%s%s", "AVE2", v10, v11);
    v12 = CFStringCreateWithCString(0, cStr, 0);
    if (v12)
    {
      v13 = v12;
      IOSurfaceSetValue(a2, *MEMORY[0x29EDBB168], v12);
      CFRelease(v13);
      goto LABEL_8;
    }

    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to create CFString %s\n", CurrTime, 76, LevelStr, "AVE_USurface", "Create", 171, "pNameStr != __null", cStr);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create CFString %s", CurrTime, 76);
    }

    return 4294966293;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x4Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p 0x%llx %p 0x%llx\n", v18, 76, v19, "AVE_USurface", "Create", 162, "pSurface != __null", this, *this, 0, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p 0x%llx %p 0x%llx", v20, 76, v24, "AVE_USurface", "Create", 162, "pSurface != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p 0x%llx %p 0x%llx", v18, 76, v19, "AVE_USurface", "Create", 162, "pSurface != __null");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_USurface::Create(AVE_USurface *this, IOSurfaceID csid, uint64_t a3, const char *a4, uint64_t a5)
{
  v10 = IOSurfaceLookup(csid);
  if (!v10)
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to get surface %p %lld %d 0x%llx 0x%llx\n", CurrTime, 76, LevelStr, "AVE_USurface", "Create", 209, "pSurface != __null", this, *this, csid, a3, a5);
        v16 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to get surface %p %lld %d 0x%llx 0x%llx", v16, 76, v18, "AVE_USurface", "Create", 209);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to get surface %p %lld %d 0x%llx 0x%llx", CurrTime, 76, LevelStr, "AVE_USurface", "Create", 209);
      }
    }

    v12 = 4294966281;
    goto LABEL_9;
  }

  v11 = v10;
  v12 = AVE_USurface::Create(this, v10, a3, a4, a5);
  if (v12)
  {
    CFRelease(v11);
LABEL_9:
    *(this + 11) = 0;
    *(this + 20) = 0;
  }

  return v12;
}

uint64_t AVE_USurface::Create(AVE_USurface *this, AVE_USurface *a2, int a3, int a4, int a5, __IOSurface **a6, const char *a7, uint64_t a8)
{
  v13 = a2;
  v31 = 0;
  if (a5 > 0)
  {
    v16 = *MEMORY[0x29EDCA6D0];
    if (*MEMORY[0x29EDCA6D0] <= 0x4000uLL)
    {
      LODWORD(v16) = 0x4000;
    }

    v17 = (a5 + v16 - 1) & -v16;
    v18 = AVE_USurface::CreateIOSurface(a2, a3, a4, v17, &v31, a6);
    if (v18)
    {
      v19 = v18;
      if (AVE_Log_CheckLevel(0x4Cu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x4Cu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create surface %p %lld %d %d %d %d %d\n", CurrTime, 76, LevelStr, "AVE_USurface", "Create", 264, "ret == 0", this, *this, v13, a3, a4, v17, v19);
          v23 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %p %lld %d %d %d %d %d", v23, 76, v29, "AVE_USurface", "Create", 264);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %p %lld %d %d %d %d %d", CurrTime, 76, LevelStr, "AVE_USurface", "Create", 264);
        }
      }
    }

    else
    {
      v19 = AVE_USurface::Create(this, v31, a6, a7, a8);
      *(this + 11) |= 4uLL;
      if (!v19)
      {
        return v19;
      }
    }

    goto LABEL_17;
  }

  if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v24 = AVE_Log_CheckConsole(0x4Cu);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(4);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d %d 0x%llx 0x%llx\n", v25, 76, v26, "AVE_USurface", "Create", 251, "size > 0", this, *this, v13, a3, a4, a5, a6, a8);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d %d 0x%llx 0x%llx", v27, 76, v30, "AVE_USurface", "Create", 251, "size > 0");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d %d 0x%llx 0x%llx", v25, 76, v26, "AVE_USurface", "Create", 251, "size > 0");
    }

    v19 = 4294966295;
LABEL_17:
    if (v31)
    {
      CFRelease(v31);
    }

    goto LABEL_19;
  }

  v19 = 4294966295;
LABEL_19:
  *(this + 11) = 0;
  *(this + 20) = 0;
  return v19;
}

uint64_t AVE_USurface::Destroy(AVE_USurface *this)
{
  if (*(this + 9))
  {
    v2 = AVE_USurface::Unlock(this);
    if (v2)
    {
      v3 = v2;
      if (AVE_Log_CheckLevel(0x4Cu, 4))
      {
        v4 = AVE_Log_CheckConsole(0x4Cu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v4)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to do unlock %p %lld %d\n", CurrTime, 76, LevelStr, "AVE_USurface", "Destroy", 325, "ret == 0", this, *this, v3);
          v7 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to do unlock %p %lld %d", v7, 76, v14, "AVE_USurface");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to do unlock %p %lld %d", CurrTime, 76, LevelStr, "AVE_USurface");
        }
      }
    }

    else
    {
      v12 = *(this + 9);
      if (v12)
      {
        CFRelease(v12);
        *(this + 9) = 0;
      }

      v3 = 0;
      *(this + 8) = 0;
      *(this + 20) = 0;
      *(this + 11) = 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v8 = AVE_Log_CheckConsole(0x4Cu);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld\n", v9, 76, v10, "AVE_USurface", "Destroy", 299, "m_pcSurface != __null", this, *this);
        v11 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld", v11, 76, v15);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld", v9, 76, v10);
      }
    }

    return 4294966285;
  }

  return v3;
}