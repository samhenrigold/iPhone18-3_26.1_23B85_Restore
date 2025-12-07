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

uint64_t AVE_SEI::Generate(AVE_SEI *this, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int a5, int *a6)
{
  v91 = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "Generate", this, *this, a2, a3, a4, a5);
      v15 = AVE_GetCurrTime();
      v84 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d", v15, 211, v84, "AVE_SEI", "Generate");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d", CurrTime, 211, LevelStr, "AVE_SEI", "Generate");
    }
  }

  if (a4 && (a5 & 0x80000000) == 0 && a6)
  {
    *a6 = 0;
    AVE_Mutex_Lock(*(this + 4));
    Frame = AVE_SEI::FindFrame(this, a2);
    if (Frame)
    {
      v17 = Frame;
      v18 = *(this + 1) & a3 & Frame[4];
      if (v18)
      {
        v91 = 0;
        v19 = AVE_SEI::GenerateISPMetadataNALU(this, a4, (a5 - *a6), Frame, v18, &v91);
        if (v19)
        {
          v20 = v19;
          if (!AVE_Log_CheckLevel(0xD3u, 4))
          {
LABEL_24:
            AVE_Mutex_Unlock(*(this + 4));
            v24 = 4;
            goto LABEL_80;
          }

          v21 = AVE_Log_CheckConsole(0xD3u);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          if (v21)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 345, "ret == 0", this, *this, v20);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
          }

LABEL_23:
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v22, 211, v23, "AVE_SEI");
          goto LABEL_24;
        }

        if (v91 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
        {
          v31 = AVE_Log_CheckConsole(0xD3u);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(7);
          if (v31)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateISPMetadataNALU added %d bytes\n", v32, 211, v33, "AVE_SEI", "Generate", 349, this, *this, v91);
            v34 = AVE_GetCurrTime();
            v85 = AVE_Log_GetLevelStr(7);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateISPMetadataNALU added %d bytes", v34, 211, v85);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateISPMetadataNALU added %d bytes", v32, 211, v33);
          }
        }

        v35 = v91;
        v36 = *a6 + v91;
        *a6 = v36;
        v37 = &a4[v35];
        if (*(this + 5) == 2)
        {
          v91 = 0;
          v38 = AVE_SEI::GenerateTimingInfoMetadata(this, v37, (a5 - v36), v17, v18, &v91);
          if (v38)
          {
            v20 = v38;
            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_24;
            }

            v39 = AVE_Log_CheckConsole(0xD3u);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
            if (v39)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 361, "ret == 0", this, *this, v20);
              v22 = AVE_GetCurrTime();
              v23 = AVE_Log_GetLevelStr(4);
            }

            goto LABEL_23;
          }

          if (v91 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
          {
            v40 = AVE_Log_CheckConsole(0xD3u);
            v87 = AVE_GetCurrTime();
            v41 = AVE_Log_GetLevelStr(7);
            if (v40)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes\n", v87, 211, v41, "AVE_SEI", "Generate", 366, this, *this, v91);
              v42 = AVE_GetCurrTime();
              v43 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes", v42, 211, v43);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes", v87, 211, v41);
            }
          }

          v44 = v91;
          v45 = *a6 + v91;
          *a6 = v45;
          v46 = &v37[v44];
          v91 = 0;
          v47 = AVE_SEI::GenerateContentColorVolumeNALU(this, v46, (a5 - v45), v17, v18, &v91);
          if (v47)
          {
            v20 = v47;
            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_24;
            }

            v48 = AVE_Log_CheckConsole(0xD3u);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
            if (v48)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 376, "ret == 0", this, *this, v20);
              v22 = AVE_GetCurrTime();
              v23 = AVE_Log_GetLevelStr(4);
            }

            goto LABEL_23;
          }

          if (v91 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
          {
            v49 = AVE_Log_CheckConsole(0xD3u);
            v88 = AVE_GetCurrTime();
            v50 = AVE_Log_GetLevelStr(7);
            if (v49)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes\n", v88, 211, v50, "AVE_SEI", "Generate", 381, this, *this, v91);
              v51 = AVE_GetCurrTime();
              v52 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes", v51, 211, v52);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes", v88, 211, v50);
            }
          }

          v53 = v91;
          v54 = *a6 + v91;
          *a6 = v54;
          v55 = &v46[v53];
          v91 = 0;
          v56 = AVE_SEI::GenerateAmbientViewingEnvironmentNALU(this, v55, (a5 - v54), v17, v18, &v91);
          if (v56)
          {
            v20 = v56;
            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_24;
            }

            v57 = AVE_Log_CheckConsole(0xD3u);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
            if (v57)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 390, "ret == 0", this, *this, v20);
              v22 = AVE_GetCurrTime();
              v23 = AVE_Log_GetLevelStr(4);
            }

            goto LABEL_23;
          }

          if (v91 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
          {
            v58 = AVE_Log_CheckConsole(0xD3u);
            v89 = AVE_GetCurrTime();
            v59 = AVE_Log_GetLevelStr(7);
            if (v58)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes\n", v89, 211, v59, "AVE_SEI", "Generate", 396, this, *this, v91);
              v60 = AVE_GetCurrTime();
              v61 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes", v60, 211, v61);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes", v89, 211, v59);
            }
          }

          v62 = v91;
          v36 = *a6 + v91;
          *a6 = v36;
          v37 = &v55[v62];
        }

        v91 = 0;
        v63 = AVE_SEI::GenerateLuxLevelNALU(this, v37, (a5 - v36), v17, v18, &v91);
        if (v63)
        {
          v20 = v63;
          if (!AVE_Log_CheckLevel(0xD3u, 4))
          {
            goto LABEL_24;
          }

          v64 = AVE_Log_CheckConsole(0xD3u);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          if (v64)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 407, "ret == 0", this, *this, v20);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
          }

          goto LABEL_23;
        }

        if (v91 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
        {
          v65 = AVE_Log_CheckConsole(0xD3u);
          v90 = AVE_GetCurrTime();
          v66 = AVE_Log_GetLevelStr(7);
          if (v65)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes\n", v90, 211, v66, "AVE_SEI", "Generate", 411, this, *this, v91);
            v67 = AVE_GetCurrTime();
            v68 = AVE_Log_GetLevelStr(7);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes", v67, 211, v68);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes", v90, 211, v66);
          }
        }

        v69 = v91;
        v70 = *a6 + v91;
        *a6 = v70;
        v91 = 0;
        v71 = AVE_SEI::GenerateUnregisteredSEINALU(this, &v37[v69], a5 - v70, v17, v18, &v91);
        if (v71)
        {
          v20 = v71;
          if (!AVE_Log_CheckLevel(0xD3u, 4))
          {
            goto LABEL_24;
          }

          v72 = AVE_Log_CheckConsole(0xD3u);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          if (v72)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 421, "ret == 0", this, *this, v20);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
          }

          goto LABEL_23;
        }

        if (v91 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
        {
          v73 = AVE_Log_CheckConsole(0xD3u);
          v74 = AVE_GetCurrTime();
          v75 = AVE_Log_GetLevelStr(7);
          if (v73)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateUnregisteredSEINALU added %d bytes\n", v74, 211, v75, "AVE_SEI", "Generate", 425, this, *this, v91);
            v76 = AVE_GetCurrTime();
            v86 = AVE_Log_GetLevelStr(7);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateUnregisteredSEINALU added %d bytes", v76, 211, v86);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateUnregisteredSEINALU added %d bytes", v74, 211, v75);
          }
        }

        *a6 += v91;
      }
    }

    AVE_Mutex_Unlock(*(this + 4));
    v20 = 0;
    v24 = 7;
  }

  else
  {
    v24 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v25 = AVE_Log_CheckConsole(0xD3u);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      v28 = *this;
      if (v25)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d\n", v26, 211, v27, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", this, v28, a6, a4, a5);
        v29 = AVE_GetCurrTime();
        v24 = 4;
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d", v29, 211, v30, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", this, *this, a6, a4, a5);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d", v26, 211, v27, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", this, v28, a6, a4, a5);
        v24 = 4;
      }
    }

    v20 = 4294966295;
  }

LABEL_80:
  if (AVE_Log_CheckLevel(0xD3u, v24))
  {
    v77 = AVE_Log_CheckConsole(0xD3u);
    v78 = AVE_GetCurrTime();
    v79 = AVE_Log_GetLevelStr(v24);
    v80 = *this;
    if (v77)
    {
      if (a6)
      {
        v81 = *a6;
      }

      else
      {
        v81 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %p %d %d\n", v78, 211, v79, "AVE_SEI", "Generate", this, v80, a2, a3, a4, v81, v20);
      v78 = AVE_GetCurrTime();
      v79 = AVE_Log_GetLevelStr(v24);
      v80 = *this;
      if (a6)
      {
        v82 = *a6;
      }

      else
      {
        v82 = -1;
      }
    }

    else if (a6)
    {
      v82 = *a6;
    }

    else
    {
      v82 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %p %d %d", v78, 211, v79, "AVE_SEI", "Generate", this, v80, a2, a3, a4, v82, v20);
  }

  return v20;
}

uint64_t AVE_RetCode2OSStatus(uint64_t result)
{
  if (result <= -2002)
  {
    if (result > -2006)
    {
      if (result == -2005)
      {
        return 4294948264;
      }

      else
      {
        return 4294954396;
      }
    }

    else if (result > -2008)
    {
      if (result == -2007)
      {
        return 4294948263;
      }

      else
      {
        return 4294948265;
      }
    }

    else if (result == -2009)
    {
      return 4294948262;
    }

    else if (result == -2008)
    {
      return 4294949598;
    }

    else
    {
      return 4294949605;
    }
  }

  else
  {
    switch(result)
    {
      case 0xFFFFFC01:
      case 0xFFFFFC02:
      case 0xFFFFFC03:
      case 0xFFFFFC04:
      case 0xFFFFFC05:
      case 0xFFFFFC06:
      case 0xFFFFFC07:
      case 0xFFFFFC08:
      case 0xFFFFFC09:
      case 0xFFFFFC0A:
      case 0xFFFFFC0B:
      case 0xFFFFFC0C:
      case 0xFFFFFC0D:
      case 0xFFFFFC0E:
      case 0xFFFFFC0F:
      case 0xFFFFFC10:
      case 0xFFFFFC11:
      case 0xFFFFFC12:
      case 0xFFFFFC13:
      case 0xFFFFFC14:
      case 0xFFFFFC16:
      case 0xFFFFFC18:
        return 4294949605;
      case 0xFFFFFC15:
        return 4294954392;
      case 0xFFFFFC17:
        return 4294954394;
      default:
        if (result == -2001)
        {
          result = 4294947942;
        }

        else if (result)
        {
          return 4294949605;
        }

        break;
    }
  }

  return result;
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
    v19 = MEMORY[0x29C24D0D0](*(this + 3664), a2, 0x100004077774924, 0);
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

uint64_t AVE_Dump_WriteFPS(void *a1, int a2, int a3, double *a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteFPS", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 16];
    if (v11)
    {
      if (a4)
      {
        if (fprintf(v11, "%d, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f\n", a3, a4[2], a4[1], *a4, a4[5], a4[4], a4[3], a4[8], a4[7], a4[6]) <= 0)
        {
          v12 = 4294965296;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 4294966287;
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v13 = AVE_Log_CheckConsole(0x3Du);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v14, 61, v15, "AVE_Dump_WriteFPS", 863, "pDump != __null", 0, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v14, 61, v15);
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v17 = AVE_Log_CheckConsole(0x3Du);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v18, 61, v19, "AVE_Dump_WriteFPS", a1, a2, a3, a4, v12);
      v20 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v18, 61, v19);
    }
  }

  return v12;
}

uint64_t AVE_DLList_PushBack(uint64_t result, void *a2)
{
  if (!result)
  {
    AVE_DLList_PushBack_cold_4();
  }

  if (!a2)
  {
    AVE_DLList_PushBack_cold_3();
  }

  if (!*result)
  {
    AVE_DLList_PushBack_cold_2();
  }

  if (!*(result + 8))
  {
    AVE_DLList_PushBack_cold_1();
  }

  *a2 = *result;
  a2[1] = result;
  *(*result + 8) = a2;
  *result = a2;
  a2[2] = result;
  ++*(result + 24);
  return result;
}

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

uint64_t AVE_Dump_WriteVQMetrics(void *a1, int a2, int a3, double *a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteVQMetrics", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 15];
    if (v11)
    {
      if (a4)
      {
        if (fprintf(v11, "%d, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f\n", a3, a4[3], a4[4], a4[5], *a4, a4[1], a4[2]) <= 0)
        {
          v12 = 4294965296;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 4294966287;
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v13 = AVE_Log_CheckConsole(0x3Du);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v14, 61, v15, "AVE_Dump_WriteVQMetrics", 815, "pDump != __null", 0, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v14, 61, v15);
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v17 = AVE_Log_CheckConsole(0x3Du);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v18, 61, v19, "AVE_Dump_WriteVQMetrics", a1, a2, a3, a4, v12);
      v20 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v18, 61, v19);
    }
  }

  return v12;
}

uint64_t AVE_Dump_FindFile(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 > 0xB)
  {
    return 0;
  }

  else
  {
    return *(a1 + 96 * (a3 > 0) + 8 * a2 + 48);
  }
}

uint64_t AVE_MCTFStats_PrintAll(void *a1, FILE *a2, int a3)
{
  if (AVE_Log_CheckLevel(0x3Au, 7))
  {
    v6 = AVE_Log_CheckConsole(0x3Au);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d\n", CurrTime, 58, LevelStr, "AVE_MCTFStats_PrintAll", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %d", CurrTime);
  }

  if (a1)
  {
    if (a2)
    {
      if (!a3)
      {
        fwrite("Frame#, FrameDiff, Fn_SetLrmeDiff, HW_LrmeDiff, Fn_SetLrrcDiff, HW_LrrcDiff, Fn_SetPipeDiff, HW_PipeDiff, Fn_PipeDoneDiff, FrameQIn, Fn_SetLrmeStart, HW_LrmeStart, Fn_SetLRMEDone, Fn_SetLrrcStart, HW_LrrcStart, Fn_SetLRRCDone, Fn_SetPipeStart, HW_PipeStart, Fn_SetPipeDone, HW_LrmeDone, HW_LrrcDone, HW_PipeDone, Fn_PipeDoneStart, Fn_PipeDoneEnd, LrmeStatsDone, LrrcStatsDone, PipeStatsDone, FrameOut\n", 0x191uLL, 1uLL, a2);
      }

      operator new[]();
    }

    v13 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Au, 4))
    {
      v9 = AVE_Log_CheckConsole(0x3Au);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v10, 58, v11, "AVE_MCTFStats_PrintAll", 367, "pMctfStats != __null", 0, a2, a3);
        v12 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 58, v19);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 58, v11);
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Au, 7))
  {
    v14 = AVE_Log_CheckConsole(0x3Au);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d\n", v15, 58, v16, "AVE_MCTFStats_PrintAll", a1, a2, a3, v13);
      v17 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d", v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d", v15);
    }
  }

  return v13;
}

uint64_t AVE_FwStats_PrintAll(char *a1, int *a2, FILE *a3, int a4, int a5)
{
  if (AVE_Log_CheckLevel(0x3Au, 7))
  {
    v7 = AVE_Log_CheckConsole(0x3Au);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d\n", CurrTime, 58, LevelStr, "AVE_FwStats_PrintAll", a1, a2, a3, a4, a5);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d", CurrTime, 58);
  }

  if (a1 && a2)
  {
    if (a3)
    {
      operator new[]();
    }

    v14 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Au, 4))
    {
      v10 = AVE_Log_CheckConsole(0x3Au);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d\n", v11, 58, v12, "AVE_FwStats_PrintAll", 181, "(psFwStats != __null) && (pEUMap != __null)", a1, a2, a3, a4, a5);
        v13 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d", v13, 58, v20, "AVE_FwStats_PrintAll");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d", v11, 58, v12, "AVE_FwStats_PrintAll");
      }
    }

    v14 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Au, 7))
  {
    v15 = AVE_Log_CheckConsole(0x3Au);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %d\n", v16, 58, v17, "AVE_FwStats_PrintAll", a1, a2, a3, a4, a5, v14);
      v18 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d", v18, 58, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d", v16, 58, v17);
    }
  }

  return v14;
}

uint64_t AVE_Dump_WriteHwEventTrace(void *a1, int a2, int *a3)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v6 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteHwEventTrace", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", CurrTime);
  }

  if (a1)
  {
    v9 = a1[12 * (a2 > 0) + 14];
    if (v9)
    {
      if (a3)
      {
        if (*a3 < 2)
        {
          v13 = 0;
        }

        else
        {
          v10 = a3 + 19;
          v11 = 1;
          do
          {
            v12 = fprintf(v9, "%6d, %d, %d, %d, %8lld, 0x%x, 0x%x, 0x%x, 0x%x\n", v11++, *(v10 - 8), *(v10 - 9), *(v10 - 7), *(v10 - 5), *(v10 - 3), *(v10 - 2), *(v10 - 1), *v10);
            v10 += 10;
          }

          while (v11 < *a3);
          if (v12 <= 0)
          {
            v13 = 4294965296;
          }

          else
          {
            v13 = 0;
          }
        }
      }

      else
      {
        v13 = 4294966287;
      }
    }

    else
    {
      v13 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v14 = AVE_Log_CheckConsole(0x3Du);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v15, 61, v16, "AVE_Dump_WriteHwEventTrace", 763, "pDump != __null", 0, a2, a3);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v17, 61, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v15, 61, v16);
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v18 = AVE_Log_CheckConsole(0x3Du);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(8);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteHwEventTrace", a1, a2, a3, v13);
      v21 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v21, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v19, 61);
    }
  }

  return v13;
}

uint64_t AVE_Dump_WriteMBStats(void *a1, int a2, const void *a3, unsigned int a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteMBStats", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 9];
    if (v11)
    {
      v12 = 4294966287;
      if (a3 && a4 >= 1)
      {
        v13 = fwrite(a3, 1uLL, a4, v11);
        v12 = v13 == a4 ? 0 : 4294965296;
        if (AVE_Log_CheckLevel(0x3Du, 8))
        {
          v14 = AVE_Log_CheckConsole(0x3Du);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(8);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %p %d %p %d %d\n", v15, 61, v16, "AVE_Dump_WriteMBStats", 735, a1, a2, a3, a4, v13);
            v17 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v17, 61, v27);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v15, 61, v16);
          }
        }
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v18 = AVE_Log_CheckConsole(0x3Du);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteMBStats", 717, "pDump != __null", 0, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v21, 61, v28, "AVE_Dump_WriteMBStats");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v19, 61, v20, "AVE_Dump_WriteMBStats");
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v22 = AVE_Log_CheckConsole(0x3Du);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %d\n", v23, 61, v24, "AVE_Dump_WriteMBStats", a1, a2, a3, a4, v12);
      v25 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v25, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v23, 61);
    }
  }

  return v12;
}

uint64_t AVE_Dump_WriteOutput(void *a1, int a2, const void *a3, unsigned int a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteOutput", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 7];
    if (v11)
    {
      v12 = 4294966287;
      if (a3 && a4 >= 1)
      {
        v13 = fwrite(a3, 1uLL, a4, v11);
        v12 = v13 == a4 ? 0 : 4294965296;
        if (AVE_Log_CheckLevel(0x3Du, 8))
        {
          v14 = AVE_Log_CheckConsole(0x3Du);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(8);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %p %d %p %d %d\n", v15, 61, v16, "AVE_Dump_WriteOutput", 596, a1, a2, a3, a4, v13);
            v17 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v17, 61, v27);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v15, 61, v16);
          }
        }
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v18 = AVE_Log_CheckConsole(0x3Du);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteOutput", 578, "pDump != __null", 0, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v21, 61, v28, "AVE_Dump_WriteOutput");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v19, 61, v20, "AVE_Dump_WriteOutput");
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v22 = AVE_Log_CheckConsole(0x3Du);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %d\n", v23, 61, v24, "AVE_Dump_WriteOutput", a1, a2, a3, a4, v12);
      v25 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v25, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v23, 61);
    }
  }

  return v12;
}

uint64_t AVE_DPB_MakeSnapshot(int *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE10], a1[340], a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE20], a1[341], a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE18], a1[342], a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE28], a1[343], a2);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v5 = Mutable;
      if (a1[343] < 0)
      {
        SnapshotEntry = 0;
LABEL_19:
        CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE30], v5);
        CFRelease(v5);
        return SnapshotEntry;
      }

      v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = MEMORY[0x29EDB9010];
        v10 = MEMORY[0x29EDB9020];
        v11 = a1;
        while (1)
        {
          SnapshotEntry = AVE_DPB_MakeSnapshotEntry(v11, v7);
          CFArrayAppendValue(v5, v7);
          CFRelease(v7);
          if (v8 >= a1[343])
          {
            goto LABEL_19;
          }

          ++v8;
          v7 = CFDictionaryCreateMutable(0, 0, v9, v10);
          v11 += 20;
          if (!v7)
          {
            goto LABEL_21;
          }
        }
      }

      LODWORD(v8) = 0;
      LODWORD(SnapshotEntry) = 0;
      v11 = a1;
LABEL_21:
      if (AVE_Log_CheckLevel(0xE2u, 4))
      {
        v21 = AVE_Log_CheckConsole(0xE2u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d\n", CurrTime, 226, LevelStr, "AVE_DPB_MakeSnapshot", 339, "pTmpDict != __null", a1, a2, v11, v8, SnapshotEntry);
          v24 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d", v24, 226, v28, "AVE_DPB_MakeSnapshot");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d", CurrTime, 226, LevelStr, "AVE_DPB_MakeSnapshot");
        }
      }

      CFRelease(v5);
    }

    else if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v17 = AVE_Log_CheckConsole(0xE2u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d\n", v18, 226, v19, "AVE_DPB_MakeSnapshot", 329, "pTmpArray != __null", a1, a2, 0);
        v20 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d", v20, 226, v27);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d", v18, 226, v19);
      }
    }

    return 4294966293;
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v13 = AVE_Log_CheckConsole(0xE2u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v14, 226, v15, "AVE_DPB_MakeSnapshot", 316, "pDict != __null && pSnapshot != __null", a2, a1, 0);
      v16 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v16, 226, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v14, 226, v15);
    }
  }

  return 4294966295;
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

uint64_t AVE_SEI::DeleteFrame(AVE_SEI *this, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "DeleteFrame", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", CurrTime, 211);
  }

  v7 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindFrame(this, a2);
  if (Frame)
  {
    v7 = AVE_SEI::RemoveFrame(this, Frame);
  }

  AVE_Mutex_Unlock(*(this + 4));
  if (v7)
  {
    v9 = 4;
  }

  else
  {
    v9 = 7;
  }

  if (AVE_Log_CheckLevel(0xD3u, v9))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(v9);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v11, 211, v12, "AVE_SEI", "DeleteFrame", this, *this, a2, v7);
      v13 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(v9);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v13, 211, v15);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v11, 211, v12);
    }
  }

  return v7;
}

uint64_t AVE_SEI::RemoveFrame(AVE_BlkPool **a1, uint64_t *a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "RemoveFrame", a1, *a1, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p", CurrTime, 211);
  }

  AVE_DLList_Erase(a2);
  v7 = a2[27];
  if (v7)
  {
    CFRelease(v7);
  }

  a2[30] = 0;
  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  v8 = AVE_BlkPool::Free(a1[5], a2);
  if (v8)
  {
    v9 = 4;
  }

  else
  {
    v9 = 7;
  }

  if (AVE_Log_CheckLevel(0xD3u, v9))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(v9);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %d\n", v11, 211, v12, "AVE_SEI", "RemoveFrame", a1, *a1, a2, v8);
      v13 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(v9);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d", v13, 211, v15);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d", v11, 211, v12);
    }
  }

  return v8;
}

uint64_t AVE_DAL::Free(AVE_DAL *this, uint64_t **a2)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v4 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Free", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p", CurrTime, 36);
  }

  if (a2)
  {
    AVE_Mutex_Lock(*(this + 1));
    v7 = *(this + 4);
    if (v7)
    {
      v8 = AVE_BlkPool::Free(v7, a2);
      if (v8)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v9 = AVE_Log_CheckConsole(0x24u);
          v10 = AVE_GetCurrTime();
          v11 = AVE_Log_GetLevelStr(4);
          if (v9)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d\n", v10, 36, v11, "AVE_DAL", "Free", 398, "ret == 0", this, *this, a2, v8);
            v12 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d", v12, 36, v29, "AVE_DAL", "Free");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d", v10, 36, v11, "AVE_DAL", "Free");
          }
        }

        AVE_Mutex_Unlock(*(this + 1));
        v13 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v13 = 8;
      }
    }

    else
    {
      v13 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v19 = AVE_Log_CheckConsole(0x24u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p\n", v20, 36, v21, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", this, *this, a2);
          v22 = AVE_GetCurrTime();
          v13 = 4;
          v23 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v22, 36, v23, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", this, *this, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v20, 36, v21, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", this, *this, a2);
          v13 = 4;
        }
      }

      v8 = 4294966285;
    }
  }

  else
  {
    v13 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v14 = AVE_Log_CheckConsole(0x24u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p\n", v15, 36, v16, "AVE_DAL", "Free", 387, "addr != 0", this, *this, 0);
        v17 = AVE_GetCurrTime();
        v13 = 4;
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p", v17, 36, v18, "AVE_DAL", "Free", 387, "addr != 0", this, *this, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p", v15, 36, v16, "AVE_DAL", "Free", 387, "addr != 0", this, *this, 0);
        v13 = 4;
      }
    }

    v8 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v13))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v13);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d\n", v25, 36, v26, "AVE_DAL", "Free", this, *this, a2, v8);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v13);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v27, 36, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v25, 36, v26);
    }
  }

  return v8;
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

uint64_t AVE_DPB_MakeSnapshotEntry(uint64_t a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE80], *a1, a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE50], *(a1 + 4), a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE58], *(a1 + 8), a2);
    AVE_CFDict_AddSInt64(*MEMORY[0x29EDBCE70], *(a1 + 16), a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE68], *(a1 + 24), a2);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = *MEMORY[0x29EDBCE48];
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE48], *(a1 + 48), Mutable);
      v7 = *MEMORY[0x29EDBCE38];
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE38], *(a1 + 56), v5);
      v8 = *MEMORY[0x29EDBCE40];
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE40], *(a1 + 64), v5);
      CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE60], v5);
      CFRelease(v5);
      v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (v9)
      {
        v10 = v9;
        AVE_CFDict_AddSInt32(v6, *(a1 + 52), v9);
        AVE_CFDict_AddSInt32(v7, *(a1 + 60), v10);
        AVE_CFDict_AddSInt32(v8, *(a1 + 68), v10);
        CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE78], v10);
        CFRelease(v10);
        v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (v11)
        {
          v12 = v11;
          MetaData = AVE_DRC_MakeMetaData((a1 + 72), v11);
          if (MetaData)
          {
            if (AVE_Log_CheckLevel(0xE2u, 4))
            {
              v14 = AVE_Log_CheckConsole(0xE2u);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              if (v14)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DPB_MakeSnapshotEntry", 227, "ret == 0", a1, a2, MetaData);
                v17 = AVE_GetCurrTime();
                v29 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d", v17, 226, v29);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d", CurrTime, 226, LevelStr);
              }
            }
          }

          else
          {
            CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE88], v12);
          }

          CFRelease(v12);
          return MetaData;
        }

        if (AVE_Log_CheckLevel(0xE2u, 4))
        {
          v26 = AVE_Log_CheckConsole(0xE2u);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 223, "pTmpDict != __null", a1, a2, 0);
            goto LABEL_24;
          }

LABEL_30:
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d", v23, 226, v24);
        }

        return 4294966293;
      }

      if (!AVE_Log_CheckLevel(0xE2u, 4))
      {
        return 4294966293;
      }

      v25 = AVE_Log_CheckConsole(0xE2u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (!v25)
      {
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 206, "pTmpDict != __null", a1, a2, 0);
    }

    else
    {
      if (!AVE_Log_CheckLevel(0xE2u, 4))
      {
        return 4294966293;
      }

      v22 = AVE_Log_CheckConsole(0xE2u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (!v22)
      {
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 189, "pTmpDict != __null", a1, a2, 0);
    }

LABEL_24:
    v27 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d", v27, 226, v31);
    return 4294966293;
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v18 = AVE_Log_CheckConsole(0xE2u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v19, 226, v20, "AVE_DPB_MakeSnapshotEntry", 170, "pEntry != __null && pDict != __null", a1, a2, 0);
      v21 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v21, 226, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v19, 226, v20);
    }
  }

  return 4294966295;
}

uint64_t AVE_DRC_MakeMetaData(unsigned __int8 *a1, CFMutableDictionaryRef theDict)
{
  if (a1 && theDict)
  {
    v4 = AVE_CFDict_AddBool(*MEMORY[0x29EDBCE90], *a1, theDict);
    v5 = AVE_CFDict_AddBool(*MEMORY[0x29EDBCEB0], a1[1], theDict) + v4;
    v6 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCEA0], a1[2], theDict);
    v7 = v5 + v6 + AVE_CFDict_AddBool(*MEMORY[0x29EDBCE98], a1[3], theDict);
    return v7 + AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCEA8], *(a1 + 1), theDict);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v9 = AVE_Log_CheckConsole(0xE2u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DRC_MakeMetaData", 60, "pMetaData != __null && pDict != __null", a1, theDict, 0);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 226, LevelStr);
      }
    }

    return 4294966295;
  }
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

uint64_t *AVE_DLList_Erase(uint64_t *result)
{
  if (!result)
  {
    AVE_DLList_Erase_cold_3();
  }

  v1 = *result;
  if (!*result)
  {
    AVE_DLList_Erase_cold_2();
  }

  v2 = result[1];
  if (!v2)
  {
    AVE_DLList_Erase_cold_1();
  }

  *(v1 + 8) = v2;
  v3 = result[2];
  *result[1] = v1;
  *result = result;
  result[1] = result;
  if (v3)
  {
    --*(v3 + 24);
    result[2] = 0;
  }

  return result;
}

uint64_t AVE_BlkPool::Free(AVE_BlkPool *this, uint64_t **a2)
{
  v35 = 0;
  if (*this)
  {
    AVE_Mutex_Lock(*(this + 3));
  }

  v4 = AVE_BlkPool::SearchFreeBuf(this, a2, &v35);
  if (v4)
  {
    v5 = v4;
    if (!AVE_Log_CheckLevel(0x38u, 4))
    {
      goto LABEL_20;
    }

    v6 = AVE_Log_CheckConsole(0x38u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d\n", CurrTime, 56, LevelStr, "AVE_BlkPool", "Free", 447, "ret == 0", this, a2, &v35, v5);
      v9 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d", v9, 56, v26, "AVE_BlkPool", "Free");
      goto LABEL_20;
    }

    v34 = v5;
    v32 = a2;
    v33 = &v35;
    v31 = this;
    v30 = 447;
    v28 = LevelStr;
    v16 = "%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d";
LABEL_19:
    syslog(3, v16, CurrTime, 56, v28, "AVE_BlkPool", "Free", v30, "ret == 0", v31, v32, v33, v34);
    goto LABEL_20;
  }

  v10 = v35;
  v11 = AVE_BlkBuf_Free(v35, a2);
  if (v11)
  {
    v5 = v11;
    if (!AVE_Log_CheckLevel(0x38u, 4))
    {
      goto LABEL_20;
    }

    v13 = AVE_Log_CheckConsole(0x38u);
    CurrTime = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d\n", CurrTime, 56, v14, "AVE_BlkPool", "Free", 451, "ret == 0", this, &v35, a2, v5);
      v15 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d", v15, 56, v27, "AVE_BlkPool", "Free");
      goto LABEL_20;
    }

    v33 = a2;
    v34 = v5;
    v31 = this;
    v32 = &v35;
    v30 = 451;
    v28 = v14;
    v16 = "%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d";
    goto LABEL_19;
  }

  v17 = AVE_DLList_RBegin(this + 32, v12);
  if (*(this + 16))
  {
    v19 = v17;
    while (v19 != AVE_DLList_REnd(this + 32, v18))
    {
      v10 = v19;
      v19 = AVE_DLList_Prev(v19, v20);
      if (AVE_BlkBuf_Empty(v10))
      {
        v35 = v10;
        AVE_DLList_Erase(v10);
        v5 = AVE_BlkBuf_Destroy(v10);
        if (v5 && AVE_Log_CheckLevel(0x38u, 5))
        {
          v22 = AVE_Log_CheckConsole(0x38u);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(5);
          if (v22)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d\n", v23, 56, v24, "AVE_BlkPool", "Free", 468, this, v10, v5);
            v25 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v25, 56, v29);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v23, 56, v24);
          }
        }

        --*(this + 16);
        goto LABEL_20;
      }

      if (!*(this + 16))
      {
        break;
      }
    }
  }

  v5 = 0;
  v35 = v10;
LABEL_20:
  if (*this)
  {
    AVE_Mutex_Unlock(*(this + 3));
  }

  return v5;
}

uint64_t AVE_BlkPool::SearchFreeBuf(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  *a3 = 0;
  for (i = AVE_DLList_Begin(a1 + 32, a2); ; i = AVE_DLList_Next(v8, v9))
  {
    v8 = i;
    if (i == AVE_DLList_End(a1 + 32, v7))
    {
      return 4294966295;
    }

    if (AVE_BlkBuf_CheckAddr(v8, a2))
    {
      break;
    }
  }

  result = 0;
  *a3 = v8;
  return result;
}

BOOL AVE_BlkBuf_CheckAddr(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2 <= a2 && v2 + *(a1 + 72) > a2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t AVE_BlkBuf_Free(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 4294966295;
  }

  v3 = *(a1 + 64);
  if (a2 < v3 || v3 + *(a1 + 72) <= a2)
  {
    return 4294966295;
  }

  v4 = (*(a1 + 88) + 24 * ((a2 - v3) / *(a1 + 80)));
  AVE_DLList_Erase(v4);
  AVE_DLList_PushBack(a1 + 96, v4);
  result = 0;
  ++*(a1 + 164);
  return result;
}

uint64_t AVE_DLList_RBegin(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    AVE_DLList_RBegin_cold_1();
  }

  return *a1;
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

uint64_t AVE_BlkBuf_Alloc(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 4294966295;
  if (a1 && a2)
  {
    *a2 = 0;
    v7 = AVE_DLList_Front((a1 + 96));
    if (v7)
    {
      v8 = v7;
      AVE_DLList_PopFront(a1 + 96);
      AVE_DLList_PushBack(a1 + 128, v8);
      v9 = *(a1 + 80);
      *a2 = *(a1 + 64) + (-1431655765 * ((v8 - *(a1 + 88)) >> 3) * v9);
      if (a3)
      {
        *a3 = v9;
      }

      result = 0;
      --*(a1 + 164);
    }

    else
    {
      return 4294966289;
    }
  }

  return result;
}

BOOL AVE_DLList_PopFront(uint64_t a1)
{
  if (!a1)
  {
    AVE_DLList_PopFront_cold_3();
  }

  if (!*a1)
  {
    AVE_DLList_PopFront_cold_2();
  }

  if (!*(a1 + 8))
  {
    AVE_DLList_PopFront_cold_1();
  }

  result = AVE_DLList_Empty(a1);
  if (!result)
  {
    v3 = *(a1 + 8);
    v4 = v3[1];
    *(a1 + 8) = v4;
    *v4 = a1;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
    --*(a1 + 24);
  }

  return result;
}

uint64_t AVE_UC_Process(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Process", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 7u, a2, 0x30uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v9, v10);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 8;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Process", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
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

uint64_t AVE_DAL::Alloc(AVE_DAL *this, int a2, unint64_t *a3)
{
  v40 = a2;
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Alloc", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", v9, 36, v37);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", CurrTime, 36, LevelStr);
    }
  }

  if (a2 >= 1 && a3 && *(this + 5) >= a2)
  {
    *a3 = 0;
    AVE_Mutex_Lock(*(this + 1));
    v10 = *(this + 4);
    if (v10)
    {
      v11 = AVE_BlkPool::Alloc(v10, a3, &v40);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v12 = AVE_Log_CheckConsole(0x24u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d\n", v13, 36, v14, "AVE_DAL", "Alloc", 357, "ret == 0", this, *this, a3, v40, v11);
            v15 = AVE_GetCurrTime();
            v38 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d", v15, 36, v38, "AVE_DAL", "Alloc");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d", v13, 36, v14, "AVE_DAL", "Alloc");
          }
        }

        AVE_Mutex_Unlock(*(this + 1));
        v16 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v30 = AVE_Log_CheckConsole(0x24u);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        v33 = *this;
        if (v30)
        {
          v34 = a2;
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p\n", v31, 36, v32, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", this, v33, a2, a3);
          v35 = AVE_GetCurrTime();
          v16 = 4;
          v36 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v35, 36, v36, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", this, *this, v34, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v31, 36, v32, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", this, v33, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = *this;
      v21 = *(this + 5);
      if (v17)
      {
        v22 = a2;
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p\n", v18, 36, v19, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", this, v20, v21, a2, a3);
        v23 = AVE_GetCurrTime();
        v16 = 4;
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p", v23, 36, v24, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", this, *this, *(this + 5), v22, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p", v18, 36, v19, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", this, v20, v21, a2, a3);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v16))
  {
    v25 = AVE_Log_CheckConsole(0x24u);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(v16);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v26, 36, v27, "AVE_DAL", "Alloc", this, *this, v40, a3, v11);
      v28 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(v16);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v28, 36, v39, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v26, 36, v27, "AVE_DAL");
    }
  }

  return v11;
}

uint64_t AVE_USL_CalcDataSurfaceInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 40) == 0;
  v6 = *(a3 + 23712) != 0;
  *(a4 + 56) = AVE_CalcBufNumOfMultiPassStats(*(a1 + 8), 2 * (*(a1 + 106096) != 0), *(a1 + 106096));
  *(a4 + 60) = AVE_CalcBufSizeOfMultiPassStats(v5, v6);
  return 0;
}

uint64_t AVE_PIP_GetInfo(CFDictionaryRef theDict, _DWORD *a2)
{
  if (theDict && a2)
  {
    a2[8] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    Value = CFDictionaryGetValue(theDict, @"PictureInPictureRegion");
    if (Value)
    {
      Entry = AVE_PIP_RetrieveEntry(Value, a2 + 1);
      if (Entry)
      {
        if (AVE_Log_CheckLevel(0x32u, 4))
        {
          v6 = AVE_Log_CheckConsole(0x32u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v6)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", CurrTime, 50, LevelStr, "AVE_PIP_GetInfo", 229, "ret == 0", theDict, a2, Entry);
            v9 = AVE_GetCurrTime();
            v14 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v9, 50, v14);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", CurrTime, 50, LevelStr);
          }
        }
      }

      else
      {
        *a2 = 1;
      }
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x32u);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 50, v12, "AVE_PIP_GetInfo", 217, "pProperty != __null && pInfo != __null", theDict, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 50);
    }

    return 4294966295;
  }

  return Entry;
}

uint64_t AVE_SEI::CreateFrame(AVE_BlkPool **a1, uint64_t a2, unint64_t *a3)
{
  v33 = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "CreateFrame", a1, *a1, a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v9, 211, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", CurrTime, 211, LevelStr);
    }
  }

  v10 = AVE_BlkPool::Alloc(a1[5], &v33, 0);
  if (v10)
  {
    if (v10 == -1007)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v11 = AVE_Log_CheckConsole(0xD3u);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %llu No more SEI frame data blocks available. Possible memory leak?\n", v12, 211, v13, "AVE_SEI", "CreateFrame", 1351, a1, *a1);
          v12 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu No more SEI frame data blocks available. Possible memory leak?", v12, 211);
      }

      AVE_SEI::PrintAllPFData(a1, 5);
    }

    else if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v19 = AVE_Log_CheckConsole(0xD3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu error while creating frame data for frameNum %lld %d\n", v20, 211, v21, "AVE_SEI", "CreateFrame", 1360, "ret == 0", a1, *a1, a2, v10);
        v22 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu error while creating frame data for frameNum %lld %d", v22, 211, v31, "AVE_SEI", "CreateFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu error while creating frame data for frameNum %lld %d", v20, 211, v21, "AVE_SEI", "CreateFrame");
      }
    }
  }

  else
  {
    v14 = v33;
    *v33 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
    *(v14 + 128) = 0u;
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
    *(v14 + 176) = 0u;
    *(v14 + 192) = 0u;
    *(v14 + 208) = 0u;
    *(v14 + 224) = 0u;
    *(v14 + 240) = 0;
    AVE_DLList_PushBack((a1 + 6), v14);
    *(v14 + 24) = a2;
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v15 = AVE_Log_CheckConsole(0xD3u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(7);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu Created frame #%lld at %p\n", v16, 211, v17, "AVE_SEI", "CreateFrame", 1369, a1, *a1, a2, v14);
        v18 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu Created frame #%lld at %p", v18, 211, v30, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu Created frame #%lld at %p", v16, 211, v17, "AVE_SEI");
      }
    }

    if (a3)
    {
      *a3 = v14;
    }
  }

  if (v10)
  {
    v23 = 4;
  }

  else
  {
    v23 = 7;
  }

  if (AVE_Log_CheckLevel(0xD3u, v23))
  {
    v24 = AVE_Log_CheckConsole(0xD3u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v23);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v25, 211, v26, "AVE_SEI", "CreateFrame", a1, *a1, a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(v23);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v27, 211, v32, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v25, 211, v26, "AVE_SEI");
    }
  }

  return v10;
}

uint64_t AVE_PixelFmt_GetSupportedList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v7 = a1;
  result = 4294966295;
  if (!a5 || !a6)
  {
LABEL_5:
    if (!a6)
    {
      return result;
    }

    goto LABEL_6;
  }

  v10 = a3;
  PixelFmt = AVE_DevCap_FindPixelFmt(v7, a2, a4);
  if (PixelFmt)
  {
    result = AVE_DevCap_PixelFmt_FindList(PixelFmt, v10, a5, a6);
    goto LABEL_5;
  }

  result = 4294966288;
  if (!a6)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *a6 = 0;
  }

  return result;
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

uint64_t AVE_ImgBuf_VerifyUncompressed(__CVBuffer *a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5)
{
  extraColumnsOnLeft = 0;
  extraRowsOnTop = 0;
  extraColumnsOnRight = 0;
  extraRowsOnBottom = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v11 = BaseAddressOfPlane;
  if (!BaseAddressOfPlane || (BaseAddressOfPlane & 0x3F) != 0)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v13 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address 0x%lx\n", CurrTime, 3, LevelStr, "AVE_ImgBuf_VerifyUncompressed", 81, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v11);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer base address 0x%lx", CurrTime);
    }

    goto LABEL_39;
  }

  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  if (a5)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    v12 = (extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight);
    v18 = (extraRowsOnTop + HeightOfPlane + extraRowsOnBottom);
    if (v12 < a2 || v18 < a3)
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_39;
      }

      v35 = AVE_Log_CheckConsole(3u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 93, "width >= videoWidth && height >= videoHeight", v12, v18, a2, a3);
        v36 = AVE_GetCurrTime();
        v61 = a2;
        v62 = a3;
        v59 = v12;
        v60 = v18;
        v57 = 93;
        v58 = "width >= videoWidth && height >= videoHeight";
        v56 = AVE_Log_GetLevelStr(4);
LABEL_51:
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v36, 3, v56, "AVE_ImgBuf_VerifyUncompressed", v57, v58, v59, v60, v61, v62);
        goto LABEL_39;
      }

      v61 = a2;
      v62 = a3;
      v59 = v12;
      v60 = v18;
      v50 = "width >= videoWidth && height >= videoHeight";
      v51 = 93;
      goto LABEL_50;
    }
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v20 = BytesPerRowOfPlane;
  if (a4[6] == 1)
  {
    v21 = (2 * ((2863311531u * (v12 + 2)) >> 32)) & 0xFFFFFFFC;
    if (!BytesPerRowOfPlane)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v12 << (a4[1] != 8);
    if (!BytesPerRowOfPlane)
    {
      goto LABEL_23;
    }
  }

  if ((BytesPerRowOfPlane & 0x3F) != 0 || v21 > BytesPerRowOfPlane)
  {
LABEL_23:
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v32 = AVE_Log_CheckConsole(3u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x\n", v33, 3, v34, "AVE_ImgBuf_VerifyUncompressed", 101, "stride != 0 && (stride & 0x3F) == 0 && stride >= neededStride", v20, v21);
        v33 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v33);
    }

    goto LABEL_39;
  }

  if (!a4[3])
  {
    if ((a5 & 1) != 0 || (v38 = CVPixelBufferGetWidthOfPlane(a1, 1uLL), v39 = CVPixelBufferGetHeightOfPlane(a1, 1uLL), !(v38 | v39)))
    {
      v40 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      if (v40)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v41 = AVE_Log_CheckConsole(3u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride %x\n", v42, 3, v43, "AVE_ImgBuf_VerifyUncompressed", 120, "stride == 0", v40);
            v42 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride %x", v42);
        }

        goto LABEL_39;
      }

      goto LABEL_45;
    }

    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_39;
    }

    v54 = AVE_Log_CheckConsole(3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(4);
    if (v54)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 114, "width == 0 && height == 0", v38, v39, a2, a3);
      v55 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v55, 3);
      goto LABEL_39;
    }

    v61 = a2;
    v62 = a3;
    v59 = v38;
    v60 = v39;
    v50 = "width == 0 && height == 0";
    v51 = 114;
LABEL_50:
    v57 = v51;
    v58 = v50;
    v56 = v37;
    goto LABEL_51;
  }

  if ((a5 & 1) != 0 || (v22 = CVPixelBufferGetWidthOfPlane(a1, 1uLL), v23 = CVPixelBufferGetHeightOfPlane(a1, 1uLL), v24 = a4[4] >> 1, v25 = (extraColumnsOnRight >> v24) + v22 + (extraColumnsOnLeft >> v24), v26 = a4[5] >> 1, v27 = (extraRowsOnBottom >> v26) + v23 + (extraRowsOnTop >> v26), a2 >> v24 <= v25) && (LODWORD(v12) = (extraColumnsOnRight >> v24) + v22 + (extraColumnsOnLeft >> v24), a3 >> v26 <= v27))
  {
    v28 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v29 = v28;
    v30 = (2 * v12) >> (a4[4] >> 1);
    if (a4[6] == 1)
    {
      v31 = (2 * ((2863311531u * (v30 + 2)) >> 32)) & 0xFFFFFFFC;
    }

    else
    {
      v31 = v30 << (a4[1] != 8);
    }

    if (!v28 || (v28 & 0x3F) != 0 || v31 > v28)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v46 = AVE_Log_CheckConsole(3u);
        v47 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x\n", v47, 3, v48, "AVE_ImgBuf_VerifyUncompressed", 144, "stride != 0 && (stride & 0x3F) == 0 && stride >= neededStride", v29, v31);
          v49 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v49);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v47);
        }
      }

      goto LABEL_39;
    }

LABEL_45:
    v44 = 0;
    goto LABEL_40;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v52 = AVE_Log_CheckConsole(3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(4);
    if (v52)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 134, "(width >= (videoWidth >> ((pFmt->iSubWidthC) >> 1))) && (height >= (videoHeight >> ((pFmt->iSubHeightC) >> 1)))", v25, v27, a2, a3);
      v53 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v53, 3);
      goto LABEL_39;
    }

    v61 = a2;
    v62 = a3;
    v59 = v25;
    v60 = v27;
    v50 = "(width >= (videoWidth >> ((pFmt->iSubWidthC) >> 1))) && (height >= (videoHeight >> ((pFmt->iSubHeightC) >> 1)))";
    v51 = 134;
    goto LABEL_50;
  }

LABEL_39:
  v44 = 4294954394;
LABEL_40:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v44;
}

uint64_t AVE_SEI::SetDriverVersion(AVE_SEI *this, uint64_t a2)
{
  v31 = 0;
  v30 = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %llu\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetDriverVersion", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %llu", CurrTime, 211);
  }

  v7 = sscanf("905.5.3", "%d.%d.%d", &v31 + 4, &v31, &v30);
  if (v7 == 3)
  {
    AVE_Mutex_Lock(*(this + 4));
    Frame = AVE_SEI::FindOrCreateFrame(this, a2);
    if (Frame)
    {
      Frame[4] |= 0x10000000000uLL;
      v9 = v31;
      *(Frame + 12) = HIDWORD(v31);
      *(Frame + 13) = v9;
      *(Frame + 14) = v30;
      AVE_Mutex_Unlock(*(this + 4));
      v10 = 0;
      v11 = 7;
      goto LABEL_20;
    }

    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v19 = AVE_Log_CheckConsole(0xD3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetDriverVersion", 1113, "pPFData != __null", this, *this, a2);
        v22 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v22, 211, v28, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }
    }

    AVE_Mutex_Unlock(*(this + 4));
    goto LABEL_18;
  }

  v12 = v7;
  v11 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v13 = AVE_Log_CheckConsole(0xD3u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    v16 = *this;
    if (!v13)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d", v14, 211, v15, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", this, v16, "905.5.3", v12, HIDWORD(v31), v31, v30);
LABEL_18:
      v11 = 4;
      goto LABEL_19;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d\n", v14, 211, v15, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", this, v16, "905.5.3", v12, HIDWORD(v31), v31, v30);
    v17 = AVE_GetCurrTime();
    v11 = 4;
    v18 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d", v17, 211, v18, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", this, *this, "905.5.3", v12, HIDWORD(v31), v31, v30);
  }

LABEL_19:
  v10 = 4294966296;
LABEL_20:
  if (AVE_Log_CheckLevel(0xD3u, v11))
  {
    v23 = AVE_Log_CheckConsole(0xD3u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(v11);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %llu %d\n", v24, 211, v25, "AVE_SEI", "SetDriverVersion", this, *this, a2, v10);
      v26 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %d", v26, 211, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %d", v24, 211, v25);
    }
  }

  return v10;
}

uint64_t AVE_PixelFmt_Check(const unsigned int *a1, unsigned int a2, int a3)
{
  if (a2 < 1)
  {
    return 4294966295;
  }

  v3 = a2;
  while (1)
  {
    v4 = *a1++;
    if (v4 == a3)
    {
      break;
    }

    if (!--v3)
    {
      return 4294966295;
    }
  }

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

uint64_t AVE_BlkPool::Alloc(AVE_BlkPool *this, unint64_t *a2, int *a3)
{
  v20 = 0;
  if (a2)
  {
    *a2 = 0;
    if (*this)
    {
      AVE_Mutex_Lock(*(this + 3));
    }

    v6 = AVE_BlkPool::SearchAllocBuf(this, &v20);
    if (v6)
    {
      v7 = v6;
      if (*(this + 16) >= *(this + 4))
      {
        goto LABEL_17;
      }

      v8 = AVE_BlkBuf_Create(*(this + 1), *(this + 2), *(this + 3), &v20);
      if (v8)
      {
        v7 = v8;
        if (AVE_Log_CheckLevel(0x38u, 6))
        {
          v9 = AVE_Log_CheckConsole(0x38u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(6);
          if (v9)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to create block buffer %p %d %d %d %p %d\n", CurrTime, 56, LevelStr, "AVE_BlkPool", "Alloc", 377, this, *(this + 1), *(this + 2), *(this + 3), &v20, v7);
            v12 = AVE_GetCurrTime();
            v18 = AVE_Log_GetLevelStr(6);
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to create block buffer %p %d %d %d %p %d", v12, 56, v18, "AVE_BlkPool", "Alloc");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to create block buffer %p %d %d %d %p %d", CurrTime, 56, LevelStr, "AVE_BlkPool", "Alloc");
          }
        }

        goto LABEL_17;
      }

      AVE_DLList_PushBack(this + 32, v20);
      ++*(this + 16);
    }

    v7 = AVE_BlkBuf_Alloc(v20, a2, a3);
LABEL_17:
    if (*this)
    {
      AVE_Mutex_Unlock(*(this + 3));
    }

    return v7;
  }

  if (AVE_Log_CheckLevel(0x38u, 4))
  {
    v13 = AVE_Log_CheckConsole(0x38u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p\n", v14, 56, v15, "AVE_BlkPool", "Alloc", 353, "pAddr != __null", this, a3);
      v16 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p", v16, 56, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p", v14, 56, v15);
    }
  }

  return 4294966295;
}

uint64_t AVE_BlkPool::SearchAllocBuf(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  for (i = AVE_DLList_Begin(a1 + 32, a2); ; i = AVE_DLList_Next(v6, v7))
  {
    v6 = i;
    if (i == AVE_DLList_End(a1 + 32, v5))
    {
      return 4294966289;
    }

    if (AVE_BlkBuf_Avail(v6))
    {
      break;
    }
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t AVE_CreateDataUSurfaces(_DWORD *a1, uint64_t a2, uint64_t a3, AVE_USurface **a4, IOSurfaceID a5)
{
  v37 = *MEMORY[0x29EDCA608];
  v35 = 0u;
  v36 = 0u;
  *v33 = 0u;
  v34 = 0u;
  if (!a1 || !a4)
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p\n", CurrTime, 76, LevelStr, "AVE_CreateDataUSurfaces", 352, "pSInfoSet != __null && pSet != __null", a1, a2, a4);
        v20 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v20, 76, v32);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", CurrTime, 76, LevelStr);
      }
    }

    v21 = 4294966295;
    goto LABEL_24;
  }

  SurfaceCfg = AVE_GetSurfaceCfg(4);
  v11 = a1[14];
  v10 = a1[15];
  v12 = SurfaceCfg[1];
  AVE_SNPrintf(v33, 64, "%s-%lld", *SurfaceCfg, a2);
  if (v11 >= 1)
  {
    v14 = a4 + 1;
    v13 = a4[1];
    if (v13)
    {
      Size = AVE_USurface::GetSize(v13);
      v16 = *v14;
      if (Size >= v10)
      {
        if (v16)
        {
          goto LABEL_17;
        }
      }

      else
      {
        AVE_DestroyUSurface(v16);
        *v14 = 0;
      }
    }

    USurface = AVE_CreateUSurface(a2, v33, v10, v12, a4 + 1);
    if (USurface)
    {
      v21 = USurface;
      if (!AVE_Log_CheckLevel(0x4Cu, 4))
      {
LABEL_24:
        AVE_DestroyDataUSurfaces(a4);
        return v21;
      }

      v23 = AVE_Log_CheckConsole(0x4Cu);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create surface %s %d\n", v24, 76, v25, "AVE_CreateDataUSurfaces", 372, "ret == 0", v33, v21);
        v26 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v26, 76);
        goto LABEL_24;
      }

LABEL_23:
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v24, 76);
      goto LABEL_24;
    }
  }

LABEL_17:
  if (a5)
  {
    v27 = AVE_GetSurfaceCfg(5);
    v21 = AVE_CreateUSurface(a2, v33, a5, v27[1], a4);
    if (v21)
    {
      if (!AVE_Log_CheckLevel(0x4Cu, 4))
      {
        goto LABEL_24;
      }

      v28 = AVE_Log_CheckConsole(0x4Cu);
      v24 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create surface %s %d\n", v24, 76, v29, "AVE_CreateDataUSurfaces", 386, "ret == 0", v33, v21);
        v30 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v30, 76);
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v21 = 0;
    *a4 = 0;
  }

  return v21;
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

BOOL AVE_BlkBuf_Avail(_BOOL8 result)
{
  if (result)
  {
    return !AVE_DLList_Empty((result + 96));
  }

  return result;
}

uint64_t AVE_SEI::SetSessionID(AVE_SEI *this, uint64_t a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %llu %llu\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetSessionID", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %llu %llu", v9, 211, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %llu %llu", CurrTime, 211, LevelStr);
    }
  }

  AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    v11 = 0;
    Frame[4] |= 0x8000000000uLL;
    Frame[5] = a3;
    v12 = 7;
    goto LABEL_12;
  }

  v12 = 4;
  if (!AVE_Log_CheckLevel(0xD3u, 4))
  {
    goto LABEL_10;
  }

  v13 = AVE_Log_CheckConsole(0xD3u);
  v14 = AVE_GetCurrTime();
  v15 = AVE_Log_GetLevelStr(4);
  if (v13)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", this, *this, a2);
    v16 = AVE_GetCurrTime();
    v12 = 4;
    v17 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v16, 211, v17, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", this, *this, a2);
LABEL_10:
    v11 = 4294966296;
    goto LABEL_12;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", this, *this, a2);
  v11 = 4294966296;
  v12 = 4;
LABEL_12:
  AVE_Mutex_Unlock(*(this + 4));
  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v18 = AVE_Log_CheckConsole(0xD3u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(v12);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %llu %llu %d\n", v19, 211, v20, "AVE_SEI", "SetSessionID", this, *this, a2, a3, v11);
      v21 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %llu %d", v21, 211, v24, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %llu %d", v19, 211, v20, "AVE_SEI");
    }
  }

  return v11;
}

uint64_t AVE_SEI::SetExposureTime(AVE_SEI *this, uint64_t a2, double a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetExposureTime", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f", CurrTime, 211);
  }

  if (a3 <= 0.0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v12 = AVE_Log_CheckConsole(0xD3u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | exposure time %f invalid, ignoring\n", v13, 211, v14, "AVE_SEI", "SetExposureTime", 657, "fExposureTime > 0", a3);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | exposure time %f invalid, ignoring", v13);
    }

LABEL_18:
    v9 = 0;
    v11 = 7;
    goto LABEL_21;
  }

  v9 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    *(Frame + 4) |= 0x100000000uLL;
    Frame[8] = a3;
    AVE_Mutex_Unlock(*(this + 4));
    if (v9)
    {
      v11 = 4;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v15 = AVE_Log_CheckConsole(0xD3u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v16, 211, v17, "AVE_SEI", "SetExposureTime", 664, "pPFData != __null", this, *this, a2);
      v18 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v18, 211, v24, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v16, 211, v17, "AVE_SEI");
    }
  }

  AVE_Mutex_Unlock(*(this + 4));
  v11 = 4;
  v9 = 4294966296;
LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v11))
  {
    v19 = AVE_Log_CheckConsole(0xD3u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(v11);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d\n", v20, 211, v21, "AVE_SEI", "SetExposureTime", this, *this, a2, a3, v9);
      v22 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v22, 211, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v20, 211, v21);
    }
  }

  return v9;
}

uint64_t AVE_SEI::SetSNR(AVE_SEI *this, uint64_t a2, double a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetSNR", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f", CurrTime, 211);
  }

  if (a3 <= 0.0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v12 = AVE_Log_CheckConsole(0xD3u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | SNR value %f invalid, ignoring\n", v13, 211, v14, "AVE_SEI", "SetSNR", 695, "fSNR > 0", a3);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | SNR value %f invalid, ignoring", v13);
    }

LABEL_18:
    v9 = 0;
    v11 = 7;
    goto LABEL_21;
  }

  v9 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    *(Frame + 4) |= 0x200000000uLL;
    Frame[9] = a3;
    AVE_Mutex_Unlock(*(this + 4));
    if (v9)
    {
      v11 = 4;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v15 = AVE_Log_CheckConsole(0xD3u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v16, 211, v17, "AVE_SEI", "SetSNR", 702, "pPFData != __null", this, *this, a2);
      v18 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v18, 211, v24, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v16, 211, v17, "AVE_SEI");
    }
  }

  AVE_Mutex_Unlock(*(this + 4));
  v11 = 4;
  v9 = 4294966296;
LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v11))
  {
    v19 = AVE_Log_CheckConsole(0xD3u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(v11);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d\n", v20, 211, v21, "AVE_SEI", "SetSNR", this, *this, a2, a3, v9);
      v22 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v22, 211, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v20, 211, v21);
    }
  }

  return v9;
}

uint64_t AVE_SEI::SetLuxLevel(AVE_SEI *this, uint64_t a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetLuxLevel", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v9, 211, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", CurrTime, 211, LevelStr);
    }
  }

  if (a3 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring\n", v14, 211, v15, "AVE_SEI", "SetLuxLevel", 569, "luxLevel > 0", a3);
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring", v16, 211);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring", v14, 211);
      }
    }

LABEL_16:
    v10 = 0;
    v12 = 7;
    goto LABEL_19;
  }

  v10 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    Frame[4] |= 0x80uLL;
    *(Frame + 15) = a3;
    AVE_Mutex_Unlock(*(this + 4));
    if (v10)
    {
      v12 = 4;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v17 = AVE_Log_CheckConsole(0xD3u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v18, 211, v19, "AVE_SEI", "SetLuxLevel", 577, "pPFData != __null", this, *this, a2);
      v20 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v27, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v18, 211, v19, "AVE_SEI");
    }
  }

  AVE_Mutex_Unlock(*(this + 4));
  v12 = 4;
  v10 = 4294966296;
LABEL_19:
  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v21 = AVE_Log_CheckConsole(0xD3u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(v12);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v22, 211, v23, "AVE_SEI", "SetLuxLevel", this, *this, a2, v10);
      v24 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v24, 211, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v22, 211, v23);
    }
  }

  return v10;
}

uint64_t AVE_SEI::SetPTS(AVE_SEI *this, uint64_t a2, int a3, uint64_t a4)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v8 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetPTS", this, *this, a2, a3, a4);
      v11 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %lld", v11, 211, v28, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %lld", CurrTime, 211, LevelStr, "AVE_SEI");
    }
  }

  if (a3 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v15 = AVE_Log_CheckConsole(0xD3u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(7);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | timescale invalid, skipping\n", v16, 211, v17, "AVE_SEI", "SetPTS", 883, "iTimescale > 0");
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | timescale invalid, skipping", v16);
    }

LABEL_17:
    v12 = 0;
    v14 = 7;
    goto LABEL_20;
  }

  v12 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    Frame[4] |= 0x2000000000uLL;
    *(Frame + 26) = a3;
    Frame[12] = a4;
    AVE_Mutex_Unlock(*(this + 4));
    if (v12)
    {
      v14 = 4;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v18 = AVE_Log_CheckConsole(0xD3u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v19, 211, v20, "AVE_SEI", "SetPTS", 890, "pPFData != __null", this, *this, a2);
      v21 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v21, 211, v29, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v19, 211, v20, "AVE_SEI");
    }
  }

  AVE_Mutex_Unlock(*(this + 4));
  v14 = 4;
  v12 = 4294966296;
LABEL_20:
  if (AVE_Log_CheckLevel(0xD3u, v14))
  {
    v22 = AVE_Log_CheckConsole(0xD3u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v14);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d\n", v23, 211, v24, "AVE_SEI", "SetPTS", this, *this, a2, a3, a4, v12);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(v14);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d", v25, 211, v26, "AVE_SEI", "SetPTS");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d", v23, 211, v24, "AVE_SEI", "SetPTS");
    }
  }

  return v12;
}

uint64_t AVE_Ref_RetrieveArray(CFArrayRef theArray, int *a2, int *a3)
{
  if (theArray && a2 && a3 && *a3 > 0)
  {
    Count = CFArrayGetCount(theArray);
    v7 = *a3;
    if (Count < *a3)
    {
      v7 = Count;
    }

    if (v7 >= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = v7;
    }

    if (v7 < 1)
    {
LABEL_17:
      result = 0;
      *a3 = v8;
    }

    else
    {
      v9 = 0;
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = a2;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
        if (!ValueAtIndex)
        {
          break;
        }

        v13 = ValueAtIndex;
        AVE_CFDict_GetSInt32(ValueAtIndex, @"ReferenceFrameNumDriver", v11);
        AVE_CFDict_GetSInt32(v13, @"ReferenceRVRAIndex", v11 + 1);
        ++v9;
        v11 += 2;
        if (v10 == v9)
        {
          goto LABEL_17;
        }
      }

      if (AVE_Log_CheckLevel(0xE1u, 4))
      {
        v19 = AVE_Log_CheckConsole(0xE1u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p\n", CurrTime, 225, LevelStr, "AVE_Ref_RetrieveArray", 36, "pDict != __null", theArray, a2, a3);
          v22 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p", v22, 225, v24);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p", CurrTime, 225, LevelStr);
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE1u, 4))
    {
      v15 = AVE_Log_CheckConsole(0xE1u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v16, 225, v17, "AVE_Ref_RetrieveArray", 25, "pArray != __null && pInfo != __null && pNum != __null && *pNum > 0", theArray, a2, a3);
        v18 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 225, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 225, v17);
      }
    }

    return 4294966295;
  }

  return result;
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

void AVE_H264_UpdateSettingsBasedOnSNR(uint64_t a1, uint64_t a2, double a3)
{
  if (!*(a1 + 10892))
  {
    if (AVE_Log_CheckLevel(0x30u, 6))
    {
      v6 = AVE_Log_CheckConsole(0x30u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v9 = *(a1 + 16468);
      if (v6)
      {
        printf("%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f\n", CurrTime, 48, LevelStr, v9, 25.0, a3);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", v10, 48, v11, *(a1 + 16468), 25.0, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", CurrTime, 48, LevelStr, v9, 25.0, a3);
      }
    }

    if (*(a1 + 10804) == 2)
    {
      *(a2 + 20) = a3 <= 25.0;
    }

    if (*(a1 + 10852) == 1)
    {
      *(a2 + 20) = 1;
    }
  }
}

uint64_t AVE_DAL::Addr2Idx(AVE_DAL *this, const void *a2, int *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Addr2Idx", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v9, 36, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", CurrTime, 36, LevelStr);
    }
  }

  if (a3)
  {
    AVE_Mutex_Lock(*(this + 1));
    v10 = *(this + 4);
    if (v10)
    {
      v11 = AVE_BlkPool::Addr2Idx(v10, a2, a3);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v12 = AVE_Log_CheckConsole(0x24u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "Addr2Idx", 488, "ret == 0", this, *this, a2, a3, v11);
            v15 = AVE_GetCurrTime();
            v35 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d", v15, 36, v35, "AVE_DAL", "Addr2Idx", 488);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "Addr2Idx", 488);
          }
        }

        AVE_Mutex_Unlock(*(this + 1));
        v16 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v23 = AVE_Log_CheckConsole(0x24u);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        v26 = *this;
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p\n", v24, 36, v25, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", this, v26, a2, a3);
          v27 = AVE_GetCurrTime();
          v16 = 4;
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p", v27, 36, v28, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", this, *this, a2, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p", v24, 36, v25, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", this, v26, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = *this;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p\n", v18, 36, v19, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", this, v20, a2, 0);
        v21 = AVE_GetCurrTime();
        v16 = 4;
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v21, 36, v22, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", this, *this, a2, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v18, 36, v19, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", this, v20, a2, 0);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v16))
  {
    v29 = AVE_Log_CheckConsole(0x24u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v16);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d\n", v30, 36, v31, "AVE_DAL", "Addr2Idx", this, *this, a2, a3, v11);
      v32 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(v16);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v32, 36, v36, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v30, 36, v31, "AVE_DAL");
    }
  }

  return v11;
}

uint64_t AVE_BlkPool::Addr2Idx(pthread_mutex_t **this, unint64_t a2, int *a3)
{
  if (*this)
  {
    AVE_Mutex_Lock(this[3]);
  }

  if (*(this + 16))
  {
    v6 = 4294966295;
  }

  else
  {
    v7 = AVE_DLList_Front(this + 4);
    v6 = AVE_BlkBuf_Addr2Idx(v7, a2, a3);
  }

  if (*this)
  {
    AVE_Mutex_Unlock(this[3]);
  }

  return v6;
}

uint64_t AVE_BlkBuf_Addr2Idx(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  result = 4294966295;
  if (a1)
  {
    if (a3)
    {
      v5 = *(a1 + 64);
      if (a2 >= v5 && v5 + *(a1 + 72) > a2)
      {
        result = 0;
        *a3 = (a2 - v5) / *(a1 + 80);
      }
    }
  }

  return result;
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

uint64_t AVE_VSNPrintf(char *a1, int a2, const char *a3, va_list a4)
{
  result = vsnprintf(a1, a2, a3, a4);
  if (a1)
  {
    if (result >= a2)
    {
      result = a2 - 1;
      a1[result] = 0;
    }
  }

  return result;
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

uint64_t AVE_USurface::Lock(AVE_USurface *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    if (*(this + 97))
    {
      return 0;
    }

    else
    {
      IOSurfaceLock(v2, 0, 0);
      result = 0;
      *(this + 12) |= 0x100uLL;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v4 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s\n", CurrTime, 76, LevelStr, "AVE_USurface", "Lock", 392, "m_pcSurface != __null", this, *this, this + 8);
        v7 = AVE_GetCurrTime();
        v8 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s", v7, 76, v8, "AVE_USurface");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s", CurrTime, 76, LevelStr, "AVE_USurface");
      }
    }

    return 4294966285;
  }

  return result;
}

uint64_t AVE_DestroyUSurface(AVE_USurface *a1)
{
  if (a1)
  {
    v2 = AVE_USurface::Destroy(a1);
    AVE_USurface::~AVE_USurface(a1);
    MEMORY[0x29C24DA40]();
    return v2;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v4 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", CurrTime, 76, LevelStr, "AVE_DestroyUSurface", 174, "pSurface != __null", 0);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", CurrTime);
    }

    return 4294966295;
  }
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
        v14 = &unk_2954B8F4E;
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
      v10 = &unk_2954B8F4E;
      v11 = &unk_2954B8F4E;
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

uint64_t AVE_USurface::Unlock(AVE_USurface *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    if (*(this + 97))
    {
      IOSurfaceUnlock(v2, 0, 0);
      result = 0;
      *(this + 12) &= ~0x100uLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v4 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s\n", CurrTime, 76, LevelStr, "AVE_USurface", "Unlock", 417, "m_pcSurface != __null", this, *this, this + 8);
        v7 = AVE_GetCurrTime();
        v8 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s", v7, 76, v8, "AVE_USurface");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s", CurrTime, 76, LevelStr, "AVE_USurface");
      }
    }

    return 4294966285;
  }

  return result;
}

uint64_t AVE_Plugin_AVC_CompleteFrames(const void *a1, void *a2)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 7))
  {
    v5 = AVE_Log_CheckConsole(0xBu);
    v6 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld %d %lld\n", v6, 11, LevelStr, "AVE_Plugin_AVC_CompleteFrames", a1, *a2, *(a2 + 2), 0);
      v6 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %lld %d %lld", v6, 11);
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
    if (DerivedStorage)
    {
      AVE_Mutex_Lock(*DerivedStorage);
      v10 = v9[7];
      kdebug_trace();
      v11 = AVE_Session_AVC_Complete(v9);
      if (v11 && AVE_Log_CheckLevel(0xBu, 4))
      {
        v12 = AVE_Log_CheckConsole(0xBu);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %d %lld %p %d\n", v13, 11, v14, "AVE_Plugin_AVC_CompleteFrames", 477, "ret == 0", a1, *a2, *(a2 + 2), v10, v9, v11);
          v15 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %d %lld %p %d", v15, 11, v33, "AVE_Plugin_AVC_CompleteFrames", 477, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %d %lld %p %d", v13, 11, v14, "AVE_Plugin_AVC_CompleteFrames", 477, "ret == 0");
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v20 = AVE_Log_CheckConsole(0xBu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v21, 11, v22, "AVE_Plugin_AVC_CompleteFrames", 465, "pPI != __null", a1, 0, 0);
          v23 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v23, 11, v35);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v21, 11, v22);
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    kdebug_trace();
    AVE_Mutex_Unlock(*v9);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v16 = AVE_Log_CheckConsole(0xBu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d\n", v17, 11, v18, "AVE_Plugin_AVC_CompleteFrames", 460, "encoder != __null", 0, *a2, *(a2 + 2), 0, 0);
        v19 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d", v19, 11, v34, "AVE_Plugin_AVC_CompleteFrames", 460);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d", v17, 11, v18, "AVE_Plugin_AVC_CompleteFrames", 460);
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v24 = AVE_GetCurrTime() - CurrTime;
  if (v24 >= 50000)
  {
    v25 = 5;
  }

  else
  {
    v25 = 7;
  }

  v26 = AVE_RetCode2OSStatus(v11);
  if (v11)
  {
    v25 = 4;
  }

  if (AVE_Log_CheckLevel(0xBu, v25))
  {
    v27 = AVE_Log_CheckConsole(0xBu);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v25);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_AVC_CompleteFrames", a1, *a2, *(a2 + 2), v10, v24, v11, v26);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d", v30, 11, v31, "AVE_Plugin_AVC_CompleteFrames");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d", v28, 11, v29, "AVE_Plugin_AVC_CompleteFrames");
    }
  }

  return v26;
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

uint64_t AVE_DPB_RetrieveSnapshot(CFDictionaryRef theDict, _DWORD *a2)
{
  v36 = 0;
  if (!theDict || !a2)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xE2u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DPB_RetrieveSnapshot", 261, "pDict != __null && pSnapshot != __null", theDict, a2, 0);
        v17 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v17, 226, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 226, LevelStr);
      }
    }

    return 4294966295;
  }

  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE10], &v36);
  a2[340] = v36;
  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE20], &v36);
  a2[341] = v36;
  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE18], &v36);
  a2[342] = v36;
  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE28], &v36);
  v4 = v36;
  a2[343] = v36;
  if (v4 >= 17)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v18 = AVE_Log_CheckConsole(0xE2u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | number of reference is out of range %d %d\n", v19, 226, v20, "AVE_DPB_RetrieveSnapshot", 274, "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))", a2[343], 16);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | number of reference is out of range %d %d", v19, 226, v20, "AVE_DPB_RetrieveSnapshot", 274, "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))", a2[343], 16);
    }

    return 4294966296;
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE30]);
  if (!Value)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v21 = AVE_Log_CheckConsole(0xE2u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d\n", v22, 226, v23, "AVE_DPB_RetrieveSnapshot", 278, "pTmpArray != __null", theDict, a2, 0);
        v24 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d", v24, 226, v34);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d", v22, 226, v23);
      }
    }

    return 4294966288;
  }

  v6 = Value;
  Count = CFArrayGetCount(Value);
  v8 = Count;
  if (Count > 17)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v25 = AVE_Log_CheckConsole(0xE2u);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | number of reference buffer is out of range %d %d\n", v26, 226, v27, "AVE_DPB_RetrieveSnapshot", 284, "num <= (((16) > (16) ? (16) : (16)) + 1)", v8, 17);
        v26 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | number of reference buffer is out of range %d %d", v26);
    }

    return 4294966296;
  }

  if (Count < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = Count & 0x7FFFFFFF;
  for (i = a2; ; i += 20)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    SnapshotEntry = AVE_DPB_RetrieveSnapshotEntry(ValueAtIndex, i);
    if (SnapshotEntry)
    {
      break;
    }

    if (v10 == ++v9)
    {
      return SnapshotEntry;
    }
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v28 = AVE_Log_CheckConsole(0xE2u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(4);
    if (v28)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d\n", v29, 226, v30, "AVE_DPB_RetrieveSnapshot", 293, "ret == 0", theDict, a2, ValueAtIndex, v9, SnapshotEntry);
      v31 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d", v31, 226, v35, "AVE_DPB_RetrieveSnapshot");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d", v29, 226, v30, "AVE_DPB_RetrieveSnapshot");
    }
  }

  return SnapshotEntry;
}

uint64_t AVE_USurface::Print(AVE_USurface *this, uint64_t a2, int a3, const char *a4, uint64_t a5)
{
  v5 = a5;
  v54 = *MEMORY[0x29EDCA608];
  memset(v53, 0, sizeof(v53));
  v52 = 0;
  v51 = 0;
  v10 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    AVE_ComposePosStr(a4, v5, v53, 32);
    v11 = *(this + 9);
    if (v11)
    {
      v51 = bswap32(IOSurfaceGetPixelFormat(v11));
      v52 = 0;
    }

    if (AVE_Log_CheckLevel(a2, v10))
    {
      v12 = AVE_Log_CheckConsole(a2);
      if (a3 < 0)
      {
        if (!v12 || (-a3 & 0x20) != 0)
        {
          v33 = *this;
          v34 = *(this + 9);
          if (v34)
          {
            IOSurfaceGetID(*(this + 9));
            v35 = *(this + 9);
            if (v35)
            {
              IOSurfaceGetUseCount(v35);
              v36 = *(this + 9);
              if (v36)
              {
                IOSurfaceGetBaseAddress(v36);
              }
            }
          }

          syslog(3, "Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v53, this + 8, this, v33, v34);
        }

        else
        {
          v24 = *this;
          v25 = *(this + 9);
          if (v25)
          {
            ID = IOSurfaceGetID(*(this + 9));
            v27 = *(this + 12);
            BaseAddress = *(this + 9);
            v29 = *(this + 20);
            if (BaseAddress)
            {
              UseCount = IOSurfaceGetUseCount(BaseAddress);
              BaseAddress = *(this + 9);
              if (BaseAddress)
              {
                BaseAddress = IOSurfaceGetBaseAddress(BaseAddress);
              }
            }

            else
            {
              UseCount = 0;
            }
          }

          else
          {
            UseCount = 0;
            ID = 0;
            BaseAddress = 0;
            v29 = *(this + 20);
            v27 = *(this + 12);
          }

          printf("Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s \n", v53, this + 8, this, v24, v25, ID, v29, v27, UseCount, BaseAddress, &v51);
          v42 = *this;
          v43 = *(this + 9);
          if (v43)
          {
            IOSurfaceGetID(*(this + 9));
            v44 = *(this + 9);
            if (v44)
            {
              IOSurfaceGetUseCount(v44);
              v45 = *(this + 9);
              if (v45)
              {
                IOSurfaceGetBaseAddress(v45);
              }
            }
          }

          syslog(3, "Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v53, this + 8, this, v42, v43);
        }
      }

      else
      {
        v13 = v12 ^ 1;
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(v10);
        v16 = LevelStr;
        v17 = *this;
        v18 = *(this + 9);
        if ((v13 | ((a3 & 0x20) >> 5)))
        {
          if (v18)
          {
            v49 = LevelStr;
            IOSurfaceGetID(v18);
            v31 = *(this + 9);
            if (v31)
            {
              IOSurfaceGetUseCount(v31);
              v32 = *(this + 9);
              if (v32)
              {
                IOSurfaceGetBaseAddress(v32);
              }
            }

            v16 = v49;
          }

          syslog(3, "%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", CurrTime, a2, v16, v53, this + 8, this, v17);
        }

        else
        {
          v50 = this + 8;
          if (v18)
          {
            v48 = LevelStr;
            v19 = IOSurfaceGetID(v18);
            v20 = *(this + 12);
            v21 = *(this + 9);
            v22 = *(this + 20);
            if (v21)
            {
              v47 = v19;
              v23 = IOSurfaceGetUseCount(v21);
              v21 = *(this + 9);
              if (v21)
              {
                v21 = IOSurfaceGetBaseAddress(v21);
              }

              v16 = v48;
              v19 = v47;
            }

            else
            {
              v23 = 0;
              v16 = v48;
            }
          }

          else
          {
            v23 = 0;
            v19 = 0;
            v21 = 0;
            v22 = *(this + 20);
            v20 = *(this + 12);
          }

          printf("%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s \n", CurrTime, a2, v16, v53, v50, this, v17, v18, v19, v22, v20, v23, v21, &v51);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(v10);
          v39 = *this;
          if (*(this + 9))
          {
            IOSurfaceGetID(*(this + 9));
            v40 = *(this + 9);
            if (v40)
            {
              IOSurfaceGetUseCount(v40);
              v41 = *(this + 9);
              if (v41)
              {
                IOSurfaceGetBaseAddress(v41);
              }
            }
          }

          syslog(3, "%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v37, a2, v38, v53, v50, this, v39);
        }
      }
    }
  }

  return 0;
}

uint64_t AVE_DestroyDataUSurfaces(uint64_t a1)
{
  if (a1)
  {
    result = *a1;
    if (result)
    {
      result = AVE_DestroyUSurface(result);
      *a1 = 0;
    }

    if (*(a1 + 8))
    {
      result = AVE_DestroyUSurface(*(a1 + 8));
      *(a1 + 8) = 0;
    }

    if (*(a1 + 16))
    {
      result = AVE_DestroyUSurface(*(a1 + 16));
      *(a1 + 16) = 0;
    }

    if (*(a1 + 24))
    {
      result = AVE_DestroyUSurface(*(a1 + 24));
      *(a1 + 24) = 0;
    }

    if (*(a1 + 32))
    {
      result = AVE_DestroyUSurface(*(a1 + 32));
      *(a1 + 32) = 0;
    }

    if (*(a1 + 40))
    {
      result = AVE_DestroyUSurface(*(a1 + 40));
      *(a1 + 40) = 0;
    }

    if (*(a1 + 48))
    {
      result = AVE_DestroyUSurface(*(a1 + 48));
      *(a1 + 48) = 0;
    }

    v3 = 0;
    v4 = a1 + 56;
    v5 = 1;
    do
    {
      v6 = v5;
      if (*(v4 + 8 * v3))
      {
        result = AVE_DestroyUSurface(*(v4 + 8 * v3));
        *(v4 + 8 * v3) = 0;
      }

      v5 = 0;
      v3 = 1;
    }

    while ((v6 & 1) != 0);
    if (*(a1 + 72))
    {
      result = AVE_DestroyUSurface(*(a1 + 72));
      *(a1 + 72) = 0;
    }

    if (*(a1 + 80))
    {
      result = AVE_DestroyUSurface(*(a1 + 80));
      *(a1 + 80) = 0;
    }

    if (*(a1 + 88))
    {
      result = AVE_DestroyUSurface(*(a1 + 88));
      *(a1 + 88) = 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v7 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", CurrTime, 76, LevelStr, "AVE_DestroyDataUSurfaces", 414, "pSet != __null", 0);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", CurrTime);
    }

    return 4294966295;
  }

  return result;
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

uint64_t AVE_DPB_RetrieveSnapshotEntry(CFDictionaryRef theDict, void *a2)
{
  v33 = 0;
  if (theDict && a2)
  {
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE80], &v33);
    *a2 = v33;
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE50], &v33);
    *(a2 + 1) = v33;
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE58], &v33);
    *(a2 + 2) = v33;
    AVE_CFDict_GetSInt64(theDict, *MEMORY[0x29EDBCE70], a2 + 2);
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE68], &v33);
    *(a2 + 6) = v33;
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE60]);
    if (Value)
    {
      v5 = Value;
      v6 = *MEMORY[0x29EDBCE48];
      AVE_CFDict_GetSInt32(Value, *MEMORY[0x29EDBCE48], &v33);
      *(a2 + 12) = v33;
      v7 = *MEMORY[0x29EDBCE38];
      AVE_CFDict_GetSInt32(v5, *MEMORY[0x29EDBCE38], &v33);
      *(a2 + 14) = v33;
      v8 = *MEMORY[0x29EDBCE40];
      AVE_CFDict_GetSInt32(v5, *MEMORY[0x29EDBCE40], &v33);
      *(a2 + 16) = v33;
      v9 = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE78]);
      if (v9)
      {
        v10 = v9;
        AVE_CFDict_GetSInt32(v9, v6, &v33);
        *(a2 + 13) = v33;
        AVE_CFDict_GetSInt32(v10, v7, &v33);
        *(a2 + 15) = v33;
        AVE_CFDict_GetSInt32(v10, v8, &v33);
        *(a2 + 17) = v33;
        v11 = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE88]);
        MetaData = AVE_DRC_RetrieveMetaData(v11, a2 + 72);
        if (MetaData && AVE_Log_CheckLevel(0xE2u, 4))
        {
          v13 = AVE_Log_CheckConsole(0xE2u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v13)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DPB_RetrieveSnapshotEntry", 150, "ret == 0", theDict, a2, MetaData);
            v16 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d", v16, 226, v29);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d", CurrTime, 226, LevelStr);
          }
        }

        return MetaData;
      }

      if (AVE_Log_CheckLevel(0xE2u, 4))
      {
        v24 = AVE_Log_CheckConsole(0xE2u);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d\n", v25, 226, v26, "AVE_DPB_RetrieveSnapshotEntry", 131, "pTmpDict != __null", theDict, a2, 0);
          v27 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d", v27, 226, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d", v25, 226, v26);
        }
      }
    }

    else if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v21 = AVE_Log_CheckConsole(0xE2u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get original reference buffer %p %p %d\n", v22, 226, v23, "AVE_DPB_RetrieveSnapshotEntry", 113, "pTmpDict != __null", theDict, a2, 0);
        v22 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v31 = v23;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get original reference buffer %p %p %d", v22, 226, v31);
    }

    return 4294966288;
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v17 = AVE_Log_CheckConsole(0xE2u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v18, 226, v19, "AVE_DPB_RetrieveSnapshotEntry", 92, "pDict != __null && pEntry != __null", theDict, a2, 0);
      v20 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v20, 226, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v18, 226, v19);
    }
  }

  return 4294966295;
}

__IOSurface *AVE_USurface::GetAddr(AVE_USurface *this, int a2)
{
  result = *(this + 9);
  if (result)
  {
    return (IOSurfaceGetBaseAddress(result) + a2);
  }

  return result;
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

uint64_t AVE_Session_AVC_Complete(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: Enter %s %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_Complete", a1);
      v5 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: Enter %s %p", v5, 12, v23, "AVE_Session_AVC_Complete", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Enter %s %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_Complete", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 12000);
    v7 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v6, 6u, v7);
    if (*(a1 + 16464) == 30568)
    {
      v26 = AVE_GetCurrTime();
      v8 = AVE_USL_Drv_Complete(*(a1 + 120), &v26);
      if (v8 && AVE_Log_CheckLevel(0xCu, 4))
      {
        v9 = AVE_Log_CheckConsole(0xCu);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d\n", v10, 12, v11, "AVE_Session_AVC_Complete", 5476, "ret == 0", a1, *(a1 + 56), v8);
          v12 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d", v12, 12, v24);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d", v10, 12, v11);
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v13 = AVE_Log_CheckConsole(0xCu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v14, 12, v15, "AVE_Session_AVC_Complete", 5463, "pINS != __null", 0);
        v14 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v14);
    }

    v8 = 4294966295;
  }

  v16 = *(a1 + 12000);
  v17 = AVE_GetCurrTime();
  AVE_TimeStats_AddEndTime(v16, 6u, v17);
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v18 = AVE_Log_CheckConsole(0xCu);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(7);
    if (v18)
    {
      printf("%lld %d AVE %s: Exit %s %p %d\n", v19, 12, v20, "AVE_Session_AVC_Complete", a1, v8);
      v21 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v21, 12, v25, "AVE_Session_AVC_Complete", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v19, 12, v20, "AVE_Session_AVC_Complete", a1, v8);
    }
  }

  return v8;
}

uint64_t AVE_RetrieveDataUSurfaces(AVE_USurface **a1, _DWORD *a2)
{
  v4 = *a1;
  if (v4)
  {
    *a2 = AVE_USurface::GetID(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a2[1] = AVE_USurface::GetID(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    a2[2] = AVE_USurface::GetID(v6);
  }

  v7 = a1[3];
  if (v7)
  {
    a2[3] = AVE_USurface::GetID(v7);
  }

  v8 = a1[4];
  if (v8)
  {
    a2[4] = AVE_USurface::GetID(v8);
  }

  v9 = a1[5];
  if (v9)
  {
    a2[5] = AVE_USurface::GetID(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    a2[6] = AVE_USurface::GetID(v10);
  }

  v11 = 0;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = a1[v11 + 7];
    if (v14)
    {
      a2[v11 + 7] = AVE_USurface::GetID(v14);
    }

    v12 = 0;
    v11 = 1;
  }

  while ((v13 & 1) != 0);
  v15 = a1[9];
  if (v15)
  {
    a2[9] = AVE_USurface::GetID(v15);
  }

  v16 = a1[10];
  if (v16)
  {
    a2[10] = AVE_USurface::GetID(v16);
  }

  v17 = a1[11];
  if (v17)
  {
    a2[11] = AVE_USurface::GetID(v17);
  }

  return 0;
}

uint64_t AVE_DRC_RetrieveMetaData(CFDictionaryRef theDict, BOOL *a2)
{
  v14 = 0;
  if (theDict && a2)
  {
    Bool = AVE_CFDict_GetBool(theDict, *MEMORY[0x29EDBCE90], a2);
    v5 = AVE_CFDict_GetBool(theDict, *MEMORY[0x29EDBCEB0], a2 + 1) + Bool;
    SInt32 = AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCEA0], &v14);
    a2[2] = v14;
    v7 = v5 + SInt32 + AVE_CFDict_GetBool(theDict, *MEMORY[0x29EDBCE98], a2 + 3);
    return v7 + AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCEA8], a2 + 1);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v9 = AVE_Log_CheckConsole(0xE2u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DRC_RetrieveMetaData", 25, "pDict != __null && pMetaData != __null", theDict, a2, 0);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 226, LevelStr);
      }
    }

    return 4294966295;
  }
}

__IOSurface *AVE_USurface::GetID(AVE_USurface *this)
{
  result = *(this + 9);
  if (result)
  {
    return IOSurfaceGetID(result);
  }

  return result;
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

uint64_t AVE_DAL::UCProcess(const void **a1, void *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCProcess", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Process(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 8;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCProcess", a1, *a1, a1[5], a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCProcess");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCProcess");
    }
  }

  return v10;
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

uint64_t AVE_DAL::UCComplete(const void **a1, void *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCComplete", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Complete(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 7;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCComplete", a1, *a1, a1[5], a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCComplete");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCComplete");
    }
  }

  return v10;
}

uint64_t AVE_UC_Complete(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 7))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Complete", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 8u, a2, 0x30uLL, a3, &outputStructCnt);
    v10 = AVE_IOReturn2RetCode(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x23u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v9, v10);
          v15 = AVE_GetCurrTime();
          v11 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x23u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
          v29 = AVE_GetCurrTime();
          v11 = 4;
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 7;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x23u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v11 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v11))
  {
    v22 = AVE_Log_CheckConsole(0x23u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Complete", a1, a2, a3, v10);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t AVE_SEI::SetSEIBits(AVE_SEI *this, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetSEIBits", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx", CurrTime, 211);
  }

  AVE_Mutex_Lock(*(this + 4));
  *(this + 1) = a2;
  AVE_Mutex_Unlock(*(this + 4));
  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v7 = AVE_Log_CheckConsole(0xD3u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d\n", v8, 211, v9, "AVE_SEI", "SetSEIBits", this, *this, a2, 0);
      v10 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d", v10, 211, v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d", v8, 211, v9);
    }
  }

  return 0;
}

uint64_t AVE_MCTF_SMap_Parse(char *a1, _DWORD *a2)
{
  v2 = 4294966295;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = a2 + 1;
    v6 = a2 + 4;
    do
    {
      v7 = 0;
      v5[24 * v4 + 1] = 1;
      do
      {
        *&v6[v7] = -NAN;
        v7 += 3;
      }

      while (v7 != 21);
      ++v4;
      v6 += 24;
    }

    while (v4 != 5);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v2 = 0;
    v11 = 1;
    v12 = -1;
    v13 = 0x7FFFFFFF;
    while (1)
    {
      while (1)
      {
        v14 = *a1;
        if (v14 <= 0x54)
        {
          break;
        }

        if (*a1 <= 0x6Bu)
        {
          if (v14 == 85)
          {
            goto LABEL_29;
          }

          if (v14 == 99)
          {
LABEL_31:
            v12 = 0;
            goto LABEL_38;
          }

          if (v14 != 105)
          {
            goto LABEL_36;
          }

LABEL_26:
          ++a1;
          v12 = 1;
        }

        else if (*a1 > 0x73u)
        {
          if (v14 == 116)
          {
            goto LABEL_32;
          }

          if (v14 != 117)
          {
            goto LABEL_36;
          }

LABEL_29:
          ++a1;
          v12 = 4;
        }

        else
        {
          if (v14 == 108)
          {
            goto LABEL_30;
          }

          if (v14 != 115)
          {
            goto LABEL_36;
          }

LABEL_33:
          ++a1;
          v12 = 5;
        }
      }

      if (*a1 > 0x4Bu)
      {
        switch(v14)
        {
          case 'L':
LABEL_30:
            ++a1;
            v12 = 3;
            break;
          case 'S':
            goto LABEL_33;
          case 'T':
LABEL_32:
            ++a1;
            v12 = 2;
            break;
          default:
            goto LABEL_36;
        }
      }

      else
      {
        if (*a1 > 0x42u)
        {
          if (v14 == 67)
          {
            goto LABEL_31;
          }

          if (v14 != 73)
          {
            goto LABEL_36;
          }

          goto LABEL_26;
        }

        if (v14 == 32)
        {
          goto LABEL_38;
        }

        if (!*a1)
        {
          return v2;
        }

LABEL_36:
        if (v14 - 48 < 0xA || (v14 & 0xFFFFFFDF) - 65 <= 0x19)
        {
          __endptr = 0;
          v15 = strtol(a1, &__endptr, 0);
          if (v12 > 2)
          {
            if (v12 == 3)
            {
              v10 = v15;
            }

            else if (v12 == 4)
            {
              v13 = v15;
            }

            else if (v9 > 4 || (v16 = &v5[24 * v9], v17 = v16[2], v17 > 6))
            {
              if (AVE_Log_CheckLevel(0x10u, 4))
              {
                v20 = AVE_Log_CheckConsole(0x10u);
                CurrTime = AVE_GetCurrTime();
                LevelStr = AVE_Log_GetLevelStr(4);
                if (v20)
                {
                  if (v9 > 4)
                  {
                    v23 = -1;
                  }

                  else
                  {
                    v23 = v5[24 * v9 + 2];
                  }

                  printf("%lld %d AVE %s: %s:%d Invalid bounds %d %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_SMap_Parse", 266, v9, v23);
                  CurrTime = AVE_GetCurrTime();
                  LevelStr = AVE_Log_GetLevelStr(4);
                  if (v9 > 4)
                  {
                    v24 = -1;
                  }

                  else
                  {
                    v24 = v5[24 * v9 + 2];
                  }
                }

                else if (v9 > 4)
                {
                  v24 = -1;
                }

                else
                {
                  v24 = v5[24 * v9 + 2];
                }

                syslog(3, "%lld %d AVE %s: %s:%d Invalid bounds %d %d", CurrTime, 16, LevelStr, "AVE_MCTF_SMap_Parse", 266, v9, v24);
              }

              v2 = 4294966278;
            }

            else
            {
              *v16 = v8;
              v16[1] = v11;
              v18 = &v16[3 * v17];
              v18[3] = v10;
              v18[4] = v13;
              v18[5] = v15;
              v19 = v17 + 1;
              v16[2] = v19;
              if (*a2 <= v9)
              {
                *a2 = v9 + 1;
              }

              v10 = 0;
              if (v19 == 7)
              {
                v8 = 0;
                v11 = 1;
              }

              v13 = 0x7FFFFFFF;
            }
          }

          else if (v12)
          {
            if (v12 == 1)
            {
              if (v9 != v15)
              {
                v11 = 1;
                v10 = 0;
                v13 = 0x7FFFFFFF;
              }

              v9 = v15;
            }

            else if (v12 == 2)
            {
              v11 = v15;
            }
          }

          else
          {
            v8 = v15;
          }

          a1 = __endptr;
        }

        else
        {
LABEL_38:
          ++a1;
        }
      }
    }
  }

  return v2;
}

void AVE_SEI::AVE_SEI(AVE_SEI *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 2) = 0u;
  *(this + 4) = 0u;
  *(this + 3) = 0u;
  AVE_DLList_Init(this + 48, a2);
}

uint64_t AVE_SEI::Uninit(AVE_SEI *this)
{
  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v2 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu\n", CurrTime, 211, LevelStr, "AVE_SEI", "Uninit", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu", CurrTime);
  }

  if (*(this + 5))
  {
    while (!AVE_DLList_Empty(this + 6))
    {
      v5 = AVE_DLList_Front(this + 6);
      if (AVE_Log_CheckLevel(0xD3u, 5))
      {
        v6 = AVE_Log_CheckConsole(0xD3u);
        v7 = AVE_GetCurrTime();
        v8 = AVE_Log_GetLevelStr(5);
        v9 = v5[3];
        v10 = *this;
        if (v6)
        {
          printf("%lld %d AVE %s: %s::%s SEI Frame # %lld not used before destruction of SEI manager %llu\n", v7, 211, v8, "AVE_SEI", "Uninit", v5[3], v10);
          v7 = AVE_GetCurrTime();
          v8 = AVE_Log_GetLevelStr(5);
          v9 = v5[3];
          v10 = *this;
        }

        syslog(3, "%lld %d AVE %s: %s::%s SEI Frame # %lld not used before destruction of SEI manager %llu", v7, 211, v8, "AVE_SEI", "Uninit", v9, v10);
      }

      AVE_SEI::RemoveFrame(this, v5);
    }

    v11 = *(this + 5);
    if (v11)
    {
      AVE_BlkPool::~AVE_BlkPool(v11);
      MEMORY[0x29C24DA40]();
    }

    *(this + 5) = 0;
  }

  v12 = *(this + 4);
  if (v12)
  {
    AVE_Mutex_Destroy(v12);
    *(this + 4) = 0;
  }

  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v13 = AVE_Log_CheckConsole(0xD3u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(6);
    if (v13)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %d\n", v14, 211, v15, "AVE_SEI", "Uninit", this, *this, 0);
      v14 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %d", v14, 211);
  }

  return 0;
}

uint64_t AVE_SEI::Init(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x\n", CurrTime, 211, LevelStr, "AVE_SEI", "Init", a1, a2, a3, a4, a5, a6);
      v15 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x", v15, 211, v50, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x", CurrTime, 211, LevelStr, "AVE_SEI");
    }
  }

  *a1 = a2;
  if (a4 < 0)
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v17 = AVE_Log_CheckConsole(0xD3u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d\n", v18, 211, v19, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, a4);
        v20 = AVE_GetCurrTime();
        v16 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d", v20, 211, v21, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, a4);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d", v18, 211, v19, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, a4);
        v16 = 4;
      }
    }

    v26 = 4294966295;
  }

  else
  {
    if (a4)
    {
      ++a4;
    }

    else if (AVE_Log_CheckLevel(0xD3u, 6))
    {
      v22 = AVE_Log_CheckConsole(0xD3u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(6);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu maxFrameCount was 0, defaulting to %d\n", v23, 211, v24, "AVE_SEI", "Init", 95, a1, *a1, 49);
        v25 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu maxFrameCount was 0, defaulting to %d", v25, 211, v51);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu maxFrameCount was 0, defaulting to %d", v23, 211, v24);
      }

      a4 = 49;
    }

    else
    {
      a4 = 49;
    }

    a1[1] = a3;
    v27 = operator new(0x48uLL, MEMORY[0x29EDC9418]);
    if (v27)
    {
      v29 = v27;
      AVE_BlkPool::AVE_BlkPool(v27, v28);
      v30 = AVE_BlkPool::Create(v29, 0, a4, 248, 0, 0);
      if (v30)
      {
        v26 = v30;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v31 = AVE_Log_CheckConsole(0xD3u);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to create block pool %p %llu %d %d\n", v32, 211, v33, "AVE_SEI", "Init", 112, "ret == 0", a1, *a1, a4, v26);
            v34 = AVE_GetCurrTime();
            v52 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create block pool %p %llu %d %d", v34, 211, v52, "AVE_SEI");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create block pool %p %llu %d %d", v32, 211, v33, "AVE_SEI");
          }
        }
      }

      else
      {
        a1[5] = v29;
        *(a1 + 6) = a4;
        v40 = AVE_Mutex_Create();
        if (v40)
        {
          v26 = 0;
          a1[4] = v40;
          v16 = 6;
          *(a1 + 4) = a6;
          *(a1 + 5) = a5;
          goto LABEL_39;
        }

        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v41 = AVE_Log_CheckConsole(0xD3u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p %llu %d\n", v42, 211, v43, "AVE_SEI", "Init", 120, "pMutex != __null", a1, *a1, 0);
            v44 = AVE_GetCurrTime();
            v53 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p %llu %d", v44, 211, v53, "AVE_SEI");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p %llu %d", v42, 211, v43, "AVE_SEI");
          }
        }

        v26 = 4294966293;
      }

      AVE_BlkPool::~AVE_BlkPool(v29);
      MEMORY[0x29C24DA40]();
      v16 = 4;
    }

    else
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v35 = AVE_Log_CheckConsole(0xD3u);
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
        if (v35)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d\n", v36, 211, v37, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
          v38 = AVE_GetCurrTime();
          v16 = 4;
          v39 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d", v38, 211, v39, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d", v36, 211, v37, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
          v16 = 4;
        }
      }

      v26 = 4294966293;
    }
  }

LABEL_39:
  if (AVE_Log_CheckLevel(0xD3u, v16))
  {
    v45 = AVE_Log_CheckConsole(0xD3u);
    v46 = AVE_GetCurrTime();
    v47 = AVE_Log_GetLevelStr(v16);
    if (v45)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d\n", v46, 211, v47, "AVE_SEI", "Init", a1, a2, a3, a4, a5, a6, v26);
      v48 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(v16);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d", v48, 211, v54, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d", v46, 211, v47, "AVE_SEI");
    }
  }

  return v26;
}

uint64_t AVE_SEI::GenerateISPMetadataNALU(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = a3;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateISPMetadataNALU", a1, v15, a2, a4, v16, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateISPMetadataNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 1) == 0)
  {
    goto LABEL_19;
  }

  BytePtr = CFDataGetBytePtr(*(a4 + 216));
  Length = CFDataGetLength(*(a4 + 216));
  v20 = AVE_SEI_WriteSEIISPMetadata(a2, v9, BytePtr, Length, *(a4 + 24), *(a1 + 5), a1[2] & 1, a6);
  if (!v20)
  {
    if ((a1[2] & 2) != 0)
    {
      v21 = 0;
      *a2 = bswap32(*a6 - 4);
      goto LABEL_20;
    }

LABEL_19:
    v21 = 0;
LABEL_20:
    v22 = 7;
    goto LABEL_21;
  }

  v21 = v20;
  v22 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v23 = AVE_Log_CheckConsole(0xD3u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d\n", v24, 211, v25, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
      v26 = AVE_GetCurrTime();
      v22 = 4;
      v27 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d", v26, 211, v27, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d", v24, 211, v25, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
      v22 = 4;
    }
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v22))
  {
    v28 = AVE_Log_CheckConsole(0xD3u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(v22);
    v31 = *a1;
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d\n", v29, 211, v30, "AVE_SEI", "GenerateISPMetadataNALU", a1, v31, a2, a4, *(a4 + 24), a5, a6, v21);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(v22);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v32, 211, v33, "AVE_SEI", "GenerateISPMetadataNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v29, 211, v30, "AVE_SEI", "GenerateISPMetadataNALU", a1, v31);
    }
  }

  return v21;
}

uint64_t AVE_SEI::GenerateTimingInfoMetadata(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v9 = a3;
  v65 = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v15 = *a1;
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v15, a2, v9, a4, *(a4 + 24), a5, a6);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p", v16, 211, v17, "AVE_SEI", "GenerateTimingInfoMetadata", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v15);
    }
  }

  *a6 = 0;
  v18 = a1[1] & *(a4 + 32);
  v19 = v18 & a5;
  if ((v18 & a5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v22 = AVE_SEI_WriteAccessUnitDelimiter(a2, v9, *(a4 + 24), *(a1 + 5), *(a4 + 224), &v65);
  if (v22)
  {
    v20 = v22;
    v21 = 4;
    if (!AVE_Log_CheckLevel(0xD3u, 4))
    {
      goto LABEL_43;
    }

    v23 = AVE_Log_CheckConsole(0xD3u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v24, 211, v25, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
      v26 = AVE_GetCurrTime();
      v21 = 4;
      v27 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v26, 211, v27, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
      goto LABEL_43;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v24, 211, v25, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
    goto LABEL_20;
  }

  v28 = v65;
  if ((a1[2] & 2) != 0)
  {
    *a2 = bswap32(v65 - 4);
  }

  v29 = *a6 + v28;
  *a6 = v29;
  a2 += v28;
  v65 = 0;
  if ((v19 & 4) != 0)
  {
    v30 = AVE_SEI_WriteActiveParameterSets(a2, v9 - v29, *(a4 + 228), *(a4 + 24), *(a1 + 5), &v65);
    if (v30)
    {
      v20 = v30;
      v21 = 4;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_43;
      }

      v31 = AVE_Log_CheckConsole(0xD3u);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(4);
      if (v31)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v32, 211, v33, "AVE_SEI", "GenerateTimingInfoMetadata", 2136, "ret == 0", a1, *a1, v20);
        v34 = AVE_GetCurrTime();
        v21 = 4;
        v35 = AVE_Log_GetLevelStr(4);
        v63 = *a1;
        v64 = v20;
        v62 = a1;
        v36 = 2136;
LABEL_32:
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v34, 211, v35, "AVE_SEI", "GenerateTimingInfoMetadata", v36, "ret == 0", v62, v63, v64);
        goto LABEL_43;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v32, 211, v33, "AVE_SEI", "GenerateTimingInfoMetadata", 2136, "ret == 0", a1, *a1, v20);
      goto LABEL_20;
    }

    v37 = v65;
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v65 - 4);
    }

    v29 = *a6 + v37;
    *a6 = v29;
    a2 += v37;
    v65 = 0;
  }

  if ((v19 & 8) != 0)
  {
    v44 = AVE_SEI_WritePictureTiming(a2, v9 - v29, *(a4 + 24), *(a1 + 5), *(a4 + 232) != 0, *(a4 + 236), *(a4 + 224), *(a4 + 240), &v65);
    if (v44)
    {
      v20 = v44;
      v21 = 4;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_43;
      }

      v45 = AVE_Log_CheckConsole(0xD3u);
      v46 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(4);
      if (v45)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v46, 211, v47, "AVE_SEI", "GenerateTimingInfoMetadata", 2160, "ret == 0", a1, *a1, v20);
        v34 = AVE_GetCurrTime();
        v21 = 4;
        v35 = AVE_Log_GetLevelStr(4);
        v63 = *a1;
        v64 = v20;
        v62 = a1;
        v36 = 2160;
        goto LABEL_32;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v46, 211, v47, "AVE_SEI", "GenerateTimingInfoMetadata", 2160, "ret == 0", a1, *a1, v20);
LABEL_20:
      v21 = 4;
      goto LABEL_43;
    }

    v48 = v65;
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v65 - 4);
    }

    v49 = *a6 + v48;
    *a6 = v49;
    a2 += v48;
    v65 = 0;
    if ((v19 & 0x10) == 0)
    {
LABEL_6:
      v20 = 0;
LABEL_7:
      v21 = 7;
      goto LABEL_43;
    }

    v50 = AVE_SEI_WriteBufferingPeriod(a2, v9 - v49, *(a4 + 24), *(a4 + 228), *(a1 + 5), &v65);
    if (!v50)
    {
      v61 = v65;
      if ((a1[2] & 2) != 0)
      {
        *a2 = bswap32(v65 - 4);
      }

      v20 = 0;
      *a6 += v61;
      a2 += v61;
      goto LABEL_7;
    }

    v20 = v50;
    v21 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v51 = AVE_Log_CheckConsole(0xD3u);
      v52 = AVE_GetCurrTime();
      v53 = AVE_Log_GetLevelStr(4);
      if (v51)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v52, 211, v53, "AVE_SEI", "GenerateTimingInfoMetadata", 2178, "ret == 0", a1, *a1, v20);
        v34 = AVE_GetCurrTime();
        v21 = 4;
        v35 = AVE_Log_GetLevelStr(4);
        v63 = *a1;
        v64 = v20;
        v62 = a1;
        v36 = 2178;
        goto LABEL_32;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v52, 211, v53, "AVE_SEI", "GenerateTimingInfoMetadata", 2178, "ret == 0", a1, *a1, v20);
      goto LABEL_20;
    }
  }

  else
  {
    v21 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v38 = AVE_Log_CheckConsole(0xD3u);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      v41 = *(a4 + 24);
      if (v38)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed\n", v39, 211, v40, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, v41);
        v42 = AVE_GetCurrTime();
        v21 = 4;
        v43 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed", v42, 211, v43, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, *(a4 + 24));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed", v39, 211, v40, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, v41);
        v21 = 4;
      }
    }

    v20 = 4294966296;
  }

LABEL_43:
  if (AVE_Log_CheckLevel(0xD3u, v21))
  {
    v54 = AVE_Log_CheckConsole(0xD3u);
    v55 = AVE_GetCurrTime();
    v56 = AVE_Log_GetLevelStr(v21);
    v57 = *a1;
    if (v54)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d\n", v55, 211, v56, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v57, a2, a4, *(a4 + 24), a5, a6, v20);
      v58 = AVE_GetCurrTime();
      v59 = AVE_Log_GetLevelStr(v21);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d", v58, 211, v59, "AVE_SEI", "GenerateTimingInfoMetadata", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d", v55, 211, v56, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v57);
    }
  }

  return v20;
}

uint64_t AVE_SEI::GenerateContentColorVolumeNALU(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = a3;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v15, a2, a4, v16, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x20) == 0)
  {
    goto LABEL_19;
  }

  v18 = AVE_SEI_WriteContentColorVolume(a2, v9, *(a1 + 5), a6);
  if (!v18)
  {
    if ((a1[2] & 2) != 0)
    {
      v19 = 0;
      *a2 = bswap32(*a6 - 4);
      goto LABEL_20;
    }

LABEL_19:
    v19 = 0;
LABEL_20:
    v20 = 7;
    goto LABEL_21;
  }

  v19 = v18;
  v20 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v21 = AVE_Log_CheckConsole(0xD3u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
      v24 = AVE_GetCurrTime();
      v20 = 4;
      v25 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v24, 211, v25, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v22, 211, v23, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
      v20 = 4;
    }
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v20))
  {
    v26 = AVE_Log_CheckConsole(0xD3u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(v20);
    v29 = *a1;
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d\n", v27, 211, v28, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v29, a2, a4, *(a4 + 24), a5, a6, v19);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v20);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d", v30, 211, v31, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d", v27, 211, v28, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v29);
    }
  }

  return v19;
}

uint64_t AVE_SEI::GenerateAmbientViewingEnvironmentNALU(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v9 = a3;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v15, a2, a4, v16, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x40) == 0)
  {
    goto LABEL_20;
  }

  v34 = 0;
  v18 = AVE_SEI_WriteAmbientViewingEnvironment(a2, v9, (a4 + 148), *(a1 + 5), &v34);
  v19 = v34;
  *a6 = v34;
  if (!v18)
  {
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v19 - 4);
    }

LABEL_20:
    v20 = 0;
    v25 = 7;
    goto LABEL_23;
  }

  v20 = v18;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v21 = AVE_Log_CheckConsole(0xD3u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", 2237, "ret == 0", a1, *a1, v20);
      v24 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v24, 211, v33, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v22, 211, v23, "AVE_SEI");
    }
  }

  v25 = 4;
LABEL_23:
  if (AVE_Log_CheckLevel(0xD3u, v25))
  {
    v26 = AVE_Log_CheckConsole(0xD3u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(v25);
    v29 = *a1;
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d\n", v27, 211, v28, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v29, a2, a4, *(a4 + 24), a5, a6, v20);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v25);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v30, 211, v31, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v27, 211, v28, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v29);
    }
  }

  return v20;
}

uint64_t AVE_SEI::GenerateLuxLevelNALU(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = a3;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateLuxLevelNALU", a1, v15, a2, a4, v16, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateLuxLevelNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x80) == 0)
  {
    goto LABEL_19;
  }

  v18 = AVE_SEI_WriteLuxLevel(a2, v9, *(a4 + 24), *(a4 + 60), *(a1 + 5), 1, a6);
  if (!v18)
  {
    if ((a1[2] & 2) != 0)
    {
      v19 = 0;
      *a2 = bswap32(*a6 - 4);
      goto LABEL_20;
    }

LABEL_19:
    v19 = 0;
LABEL_20:
    v20 = 7;
    goto LABEL_21;
  }

  v19 = v18;
  v20 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v21 = AVE_Log_CheckConsole(0xD3u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
      v24 = AVE_GetCurrTime();
      v20 = 4;
      v25 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d", v24, 211, v25, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d", v22, 211, v23, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
      v20 = 4;
    }
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v20))
  {
    v26 = AVE_Log_CheckConsole(0xD3u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(v20);
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d\n", v27, 211, v28, "AVE_SEI", "GenerateLuxLevelNALU", a1, *a1, a4, *(a4 + 24), a5, a6, v19);
      v29 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v20);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d", v29, 211, v31, "AVE_SEI", "GenerateLuxLevelNALU", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d", v27, 211, v28, "AVE_SEI", "GenerateLuxLevelNALU", a1);
    }
  }

  return v19;
}

uint64_t AVE_SEI::GenerateUnregisteredSEINALU(uint64_t *a1, unsigned __int8 *a2, int a3, void *a4, uint64_t a5, int *a6)
{
  v177 = *MEMORY[0x29EDCA608];
  *v176 = xmmword_2954DF860;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v13 = *a1;
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v13, a2, a3, a4, a5, a6);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p", v14, 211, v15, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, *a1, a2, a3, a4, a5, a6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v13, a2, a3, a4, a5, a6);
    }
  }

  *a6 = 0;
  v16 = a4[4] & a1[1];
  if ((a5 & v16 & 0x3FF00000000) == 0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v27 = AVE_Log_CheckConsole(0xD3u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      v30 = *a1;
      if (v27)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early\n", v28, 211, v29, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, v30);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early", v31, 211, v32, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, *a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early", v28, 211, v29, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, v30);
      }
    }

    goto LABEL_21;
  }

  v17 = v16 & a5;
  v18 = AVE_SEI::EstimateUnregisteredSEIMessageSizes(a1, a4, v16 & a5);
  if (v18 < 1)
  {
LABEL_21:
    v23 = 0;
    goto LABEL_46;
  }

  v19 = v18;
  v20 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v20)
  {
    v21 = v20;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v20, a2, a3, 0);
    v22 = AVE_SyntaxWriter::WriteStartCode(v21);
    if (v22)
    {
      v23 = v22;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v24 = AVE_Log_CheckConsole(0xD3u);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v25, 211, v26, "AVE_SEI", "GenerateUnregisteredSEINALU", 1762, "ret == 0", a1, *a1, v23);
          v25 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v25, 211, v26, "AVE_SEI", "GenerateUnregisteredSEINALU", 1762, "ret == 0", a1, *a1, v23);
      }

      goto LABEL_41;
    }

    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v36 = AVE_Log_CheckConsole(0xD3u);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(8);
      v39 = *(v21 + 3);
      if (v36)
      {
        printf("%lld %d AVE %s: %s::%s:%d start code %p (%d)\n", v37, 211, v38, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 4) + v39), v39);
        v40 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d start code %p (%d)", v40, 211, v41, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 4) + *(v21 + 3)), *(v21 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d start code %p (%d)", v37, 211, v38, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 4) + v39), v39);
      }
    }

    v42 = *(a1 + 5);
    if (v42 == 2)
    {
      HEVCHeaderStart = AVE_SEI_GenerateHEVCHeaderStart(39, v21);
      if (HEVCHeaderStart)
      {
        v23 = HEVCHeaderStart;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v44 = v21;
          v49 = AVE_Log_CheckConsole(0xD3u);
          v50 = AVE_GetCurrTime();
          v51 = AVE_Log_GetLevelStr(4);
          if (v49)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v50, 211, v51, "AVE_SEI", "GenerateUnregisteredSEINALU", 1778, "ret == 0", a1, *a1, v23);
            v50 = AVE_GetCurrTime();
            v51 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v50, 211, v51, "AVE_SEI", "GenerateUnregisteredSEINALU", 1778, "ret == 0", a1, *a1, v23);
          goto LABEL_74;
        }

LABEL_41:
        v52 = 0;
        v53 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      if (v42 != 1)
      {
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v61 = AVE_Log_CheckConsole(0xD3u);
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(4);
          v64 = *(a1 + 5);
          if (v61)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL\n", v62, 211, v63, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, v64);
            v65 = AVE_GetCurrTime();
            v66 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL", v65, 211, v66, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, *(a1 + 5));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL", v62, 211, v63, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, v64);
          }
        }

        v52 = 0;
        v53 = 0;
        v23 = 4294966295;
        goto LABEL_42;
      }

      AVCHeaderStart = AVE_SEI_GenerateAVCHeaderStart(v21);
      if (AVCHeaderStart)
      {
        v23 = AVCHeaderStart;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v44 = v21;
          v45 = AVE_Log_CheckConsole(0xD3u);
          v46 = AVE_GetCurrTime();
          v47 = AVE_Log_GetLevelStr(4);
          if (v45)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v46, 211, v47, "AVE_SEI", "GenerateUnregisteredSEINALU", 1772, "ret == 0", a1, *a1, v23);
            v46 = AVE_GetCurrTime();
            v47 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v46, 211, v47, "AVE_SEI", "GenerateUnregisteredSEINALU", 1772, "ret == 0", a1, *a1, v23);
LABEL_74:
          v52 = 0;
          v53 = 0;
          v21 = v44;
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v67 = AVE_Log_CheckConsole(0xD3u);
      v68 = AVE_GetCurrTime();
      v69 = AVE_Log_GetLevelStr(8);
      v70 = *a1;
      v71 = *(v21 + 3);
      if (v67)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)\n", v68, 211, v69, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, v70, (*(v21 + 4) + v71), v71);
        v72 = AVE_GetCurrTime();
        v73 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)", v72, 211, v73, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, *a1, (*(v21 + 4) + *(v21 + 3)), *(v21 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)", v68, 211, v69, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, v70, (*(v21 + 4) + v71), v71);
      }
    }

    AVE_SyntaxWriter::WriteU(v21, 5u, 8);
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v74 = AVE_Log_CheckConsole(0xD3u);
      v75 = AVE_GetCurrTime();
      v76 = AVE_Log_GetLevelStr(8);
      v77 = *a1;
      v78 = *(v21 + 3);
      if (v74)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)\n", v75, 211, v76, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, v77, (*(v21 + 4) + v78), v78);
        v79 = AVE_GetCurrTime();
        v80 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)", v79, 211, v80, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, *a1, (*(v21 + 4) + *(v21 + 3)), *(v21 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)", v75, 211, v76, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, v77, (*(v21 + 4) + v78), v78);
      }
    }

    v81 = malloc_type_malloc(v19, 0x100004077774924uLL);
    if (!v81)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v85 = AVE_Log_CheckConsole(0xD3u);
        v86 = AVE_GetCurrTime();
        v87 = AVE_Log_GetLevelStr(4);
        v88 = *a1;
        if (v85)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.\n", v86, 211, v87, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, v88);
          v89 = AVE_GetCurrTime();
          v90 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.", v89, 211, v90, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, *a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.", v86, 211, v87, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, v88);
        }
      }

      v52 = 0;
      v53 = 0;
      v23 = 4294966293;
      goto LABEL_42;
    }

    v171 = v21;
    v172 = v81;
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v82 = AVE_Log_CheckConsole(0xD3u);
      v83 = AVE_GetCurrTime();
      v84 = AVE_Log_GetLevelStr(8);
      if (v82)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for SEI Buffer\n", v83, 211, v84, "AVE_SEI", "GenerateUnregisteredSEINALU", 1803, a1, *a1, v19);
        v83 = AVE_GetCurrTime();
        v84 = AVE_Log_GetLevelStr(8);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for SEI Buffer", v83, 211, v84, "AVE_SEI", "GenerateUnregisteredSEINALU", 1803, a1, *a1, v19);
    }

    v91 = 0;
    v92 = &off_2A1C7E128;
    v93 = 10;
    v94 = v172;
    do
    {
      if ((v17 >> *(v92 - 2)))
      {
        v175 = 0;
        (*v92)(a4, v94, v19, &v175);
        v94 += v175;
        v19 = (v19 - v175);
        v91 += v175;
      }

      v92 += 2;
      --v93;
    }

    while (v93);
    v170 = v91 + v91 / 2 + 17;
    v52 = malloc_type_malloc(v170, 0x100004077774924uLL);
    if (v52)
    {
      if (AVE_Log_CheckLevel(0xD3u, 8))
      {
        v95 = AVE_Log_CheckConsole(0xD3u);
        v96 = AVE_GetCurrTime();
        v97 = AVE_Log_GetLevelStr(8);
        if (v95)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for EPB Buffer\n", v96, 211, v97, "AVE_SEI", "GenerateUnregisteredSEINALU", 1828, a1, *a1, v170);
          v96 = AVE_GetCurrTime();
          v97 = AVE_Log_GetLevelStr(8);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for EPB Buffer", v96, 211, v97, "AVE_SEI", "GenerateUnregisteredSEINALU", 1828, a1, *a1, v170);
      }

      v104 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
      if (v104)
      {
        v105 = v104;
        AVE_SyntaxWriter::AVE_SyntaxWriter(v104, v52, v170, 1);
        v169 = v105;
        v23 = AVE_SyntaxWriter::WriteBytes(v105, v176, 0x10u);
        if (v23)
        {
          if (AVE_Log_CheckLevel(0xD3u, 4))
          {
            v106 = AVE_Log_CheckConsole(0xD3u);
            v107 = AVE_GetCurrTime();
            v108 = AVE_Log_GetLevelStr(4);
            if (v106)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v107, 211, v108, "AVE_SEI", "GenerateUnregisteredSEINALU", 1838, "ret == 0", a1, *a1, v23);
              v107 = AVE_GetCurrTime();
              v108 = AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v107, 211, v108, "AVE_SEI", "GenerateUnregisteredSEINALU", 1838, "ret == 0", a1, *a1, v23);
          }
        }

        else
        {
          v23 = AVE_SyntaxWriter::WriteBytes(v105, v172, v91);
          if (v23)
          {
            if (AVE_Log_CheckLevel(0xD3u, 4))
            {
              v112 = AVE_Log_CheckConsole(0xD3u);
              v113 = AVE_GetCurrTime();
              v114 = AVE_Log_GetLevelStr(4);
              if (v112)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v113, 211, v114, "AVE_SEI", "GenerateUnregisteredSEINALU", 1843, "ret == 0", a1, *a1, v23);
                v113 = AVE_GetCurrTime();
                v114 = AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v113, 211, v114, "AVE_SEI", "GenerateUnregisteredSEINALU", 1843, "ret == 0", a1, *a1, v23);
            }
          }

          else
          {
            v116 = *(v105 + 3);
            v115 = *(v169 + 4);
            if (v115 >= 0)
            {
              v117 = *(v169 + 4);
            }

            else
            {
              v117 = v115 + 7;
            }

            v168 = *(v171 + 3);
            v118 = v116 - (v117 >> 3);
            if (AVE_Log_CheckLevel(0xD3u, 8))
            {
              v119 = AVE_Log_CheckConsole(0xD3u);
              v120 = AVE_GetCurrTime();
              v121 = AVE_Log_GetLevelStr(8);
              v122 = *a1;
              v123 = *(v171 + 3);
              if (v119)
              {
                printf("%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)\n", v120, 211, v121, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, v122, v116 - (v117 >> 3), (*(v171 + 4) + v123), v123);
                v124 = AVE_GetCurrTime();
                v125 = AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)", v124, 211, v125, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, *a1, v118, (*(v171 + 4) + *(v171 + 3)), *(v171 + 3));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)", v120, 211, v121, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, v122, v116 - (v117 >> 3), (*(v171 + 4) + v123), v123);
              }
            }

            v23 = AVE_SEI_WritePayloadSize(v118, v171);
            if (v23)
            {
              if (AVE_Log_CheckLevel(0xD3u, 4))
              {
                v126 = AVE_Log_CheckConsole(0xD3u);
                v127 = AVE_GetCurrTime();
                v128 = AVE_Log_GetLevelStr(4);
                if (v126)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v127, 211, v128, "AVE_SEI", "GenerateUnregisteredSEINALU", 1856, "ret == 0", a1, *a1, v23);
                  v127 = AVE_GetCurrTime();
                  v128 = AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v127, 211, v128, "AVE_SEI", "GenerateUnregisteredSEINALU", 1856, "ret == 0", a1, *a1, v23);
              }
            }

            else
            {
              if (AVE_Log_CheckLevel(0xD3u, 8))
              {
                v129 = AVE_Log_CheckConsole(0xD3u);
                v130 = AVE_GetCurrTime();
                v131 = AVE_Log_GetLevelStr(8);
                v132 = *a1;
                v133 = *(v171 + 3);
                if (v129)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)\n", v130, 211, v131, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, v132, v133 - v168, (*(v171 + 4) + v133), v133);
                  v134 = AVE_GetCurrTime();
                  v135 = AVE_Log_GetLevelStr(8);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)", v134, 211, v135, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, *a1, *(v171 + 3) - v168, (*(v171 + 4) + *(v171 + 3)), *(v171 + 3));
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)", v130, 211, v131, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, v132, v133 - v168, (*(v171 + 4) + v133), v133);
                }
              }

              if (AVE_Log_CheckLevel(0xD3u, 8))
              {
                v136 = AVE_Log_CheckConsole(0xD3u);
                v137 = AVE_GetCurrTime();
                v138 = AVE_Log_GetLevelStr(8);
                v139 = *(v169 + 3);
                if (v136)
                {
                  printf("%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d\n", v137, 211, v138, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v139, v170, *(v171 + 3), a3);
                  v140 = AVE_GetCurrTime();
                  v141 = AVE_Log_GetLevelStr(8);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d", v140, 211, v141, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, *(v169 + 3), v170, *(v171 + 3), a3);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d", v137, 211, v138, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v139, v170, *(v171 + 3), a3);
                }
              }

              v23 = AVE_SyntaxWriter::CopyFromSyntaxWriter(v171, v169);
              if (v23)
              {
                if (AVE_Log_CheckLevel(0xD3u, 4))
                {
                  v142 = AVE_Log_CheckConsole(0xD3u);
                  v143 = AVE_GetCurrTime();
                  v144 = AVE_Log_GetLevelStr(4);
                  if (v142)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to copy payload into SyntaxWriterNALU ret %d\n", v143, 211, v144, "AVE_SEI", "GenerateUnregisteredSEINALU", 1870, "ret == 0", a1, *a1, v23);
                    v143 = AVE_GetCurrTime();
                    v144 = AVE_Log_GetLevelStr(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to copy payload into SyntaxWriterNALU ret %d", v143, 211, v144, "AVE_SEI", "GenerateUnregisteredSEINALU", 1870, "ret == 0", a1, *a1, v23);
                }
              }

              else
              {
                if (AVE_Log_CheckLevel(0xD3u, 8))
                {
                  v145 = AVE_Log_CheckConsole(0xD3u);
                  v146 = AVE_GetCurrTime();
                  v147 = AVE_Log_GetLevelStr(8);
                  v148 = *a1;
                  v149 = *(v171 + 3);
                  if (v145)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)\n", v146, 211, v147, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, v148, (*(v171 + 4) + v149), v149);
                    v150 = AVE_GetCurrTime();
                    v151 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)", v150, 211, v151, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, *a1, (*(v171 + 4) + *(v171 + 3)), *(v171 + 3));
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)", v146, 211, v147, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, v148, (*(v171 + 4) + v149), v149);
                  }
                }

                v23 = AVE_SyntaxWriter::AlignToByte(v171);
                if (v23)
                {
                  if (AVE_Log_CheckLevel(0xD3u, 4))
                  {
                    v152 = AVE_Log_CheckConsole(0xD3u);
                    v153 = AVE_GetCurrTime();
                    v154 = AVE_Log_GetLevelStr(4);
                    if (v152)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v153, 211, v154, "AVE_SEI", "GenerateUnregisteredSEINALU", 1879, "ret == 0", a1, *a1, v23);
                      v153 = AVE_GetCurrTime();
                      v154 = AVE_Log_GetLevelStr(4);
                    }

                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v153, 211, v154, "AVE_SEI", "GenerateUnregisteredSEINALU", 1879, "ret == 0", a1, *a1, v23);
                  }
                }

                else
                {
                  if (AVE_Log_CheckLevel(0xD3u, 8))
                  {
                    v155 = AVE_Log_CheckConsole(0xD3u);
                    v156 = AVE_GetCurrTime();
                    v157 = AVE_Log_GetLevelStr(8);
                    v158 = *a1;
                    v159 = *(v171 + 3);
                    if (v155)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)\n", v156, 211, v157, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, v158, (*(v171 + 4) + v159), v159);
                      v160 = AVE_GetCurrTime();
                      v161 = AVE_Log_GetLevelStr(8);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)", v160, 211, v161, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, *a1, (*(v171 + 4) + *(v171 + 3)), *(v171 + 3));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)", v156, 211, v157, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, v158, (*(v171 + 4) + v159), v159);
                    }
                  }

                  *a6 = *(v171 + 3);
                  if (AVE_Log_CheckLevel(0xD3u, 8))
                  {
                    v162 = AVE_Log_CheckConsole(0xD3u);
                    v163 = AVE_GetCurrTime();
                    v164 = AVE_Log_GetLevelStr(8);
                    v165 = *a6;
                    if (v162)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d\n", v163, 211, v164, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, v165);
                      v166 = AVE_GetCurrTime();
                      v167 = AVE_Log_GetLevelStr(8);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d", v166, 211, v167, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, *a6);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d", v163, 211, v164, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, v165);
                    }
                  }

                  v23 = 0;
                  if ((a1[2] & 2) != 0)
                  {
                    *a2 = bswap32(*a6 - 4);
                  }
                }
              }
            }
          }
        }

        v21 = v171;
        v53 = v172;
        (*(*v169 + 8))(v169);
        goto LABEL_42;
      }

      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v109 = AVE_Log_CheckConsole(0xD3u);
        v110 = AVE_GetCurrTime();
        v111 = AVE_Log_GetLevelStr(4);
        if (v109)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter\n", v110, 211, v111, "GenerateUnregisteredSEINALU", 1832, "pcSyntaxWriter != __null");
          v110 = AVE_GetCurrTime();
          v111 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter", v110, 211, v111, "GenerateUnregisteredSEINALU", 1832, "pcSyntaxWriter != __null");
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v98 = AVE_Log_CheckConsole(0xD3u);
        v99 = AVE_GetCurrTime();
        v100 = AVE_Log_GetLevelStr(4);
        v101 = *a1;
        if (v98)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed\n", v99, 211, v100, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, v101);
          v102 = AVE_GetCurrTime();
          v103 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed", v102, 211, v103, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, *a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed", v99, 211, v100, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, v101);
        }
      }

      v52 = 0;
    }

    v23 = 4294966293;
    v21 = v171;
    v53 = v172;
LABEL_42:
    (*(*v21 + 8))(v21);
    if (v52)
    {
      free(v52);
    }

    if (v53)
    {
      free(v53);
    }

    goto LABEL_46;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v33 = AVE_Log_CheckConsole(0xD3u);
    v34 = AVE_GetCurrTime();
    v35 = AVE_Log_GetLevelStr(4);
    if (v33)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter\n", v34, 211, v35, "GenerateUnregisteredSEINALU", 1757, "pcSyntaxWriter_NALU != __null");
      v34 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter", v34, 211, v35, "GenerateUnregisteredSEINALU", 1757, "pcSyntaxWriter_NALU != __null");
  }

  v23 = 4294966293;
LABEL_46:
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v54 = AVE_Log_CheckConsole(0xD3u);
    v55 = AVE_GetCurrTime();
    v56 = AVE_Log_GetLevelStr(7);
    v57 = *a1;
    if (v54)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d\n", v55, 211, v56, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v57, a2, a3, a4, a5, a6, *a6, v23);
      v58 = AVE_GetCurrTime();
      v59 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d", v58, 211, v59, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, *a1, a2, a3, a4, a5, a6, *a6, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d", v55, 211, v56, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v57, a2, a3, a4, a5, a6, *a6, v23);
    }
  }

  return v23;
}