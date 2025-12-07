void gckSessionRecvTCPMessage(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v87 = *MEMORY[0x277D85DE8];
  memset(v86, 170, sizeof(v86));
  v70 = v3;
  v5 = recv(*(v3 + 72), v86, 0x1000uLL, 0);
  v6 = v5;
  if (v5 == -1)
  {
    v10 = *__error();
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(v70 + 72);
        v81[0] = 136316418;
        *&v81[1] = v11;
        LOWORD(v81[3]) = 2080;
        *(&v81[3] + 2) = "gckSessionRecvTCPMessage";
        HIWORD(v81[5]) = 1024;
        v81[6] = 3158;
        LOWORD(v81[7]) = 1024;
        *(&v81[7] + 2) = 3158;
        HIWORD(v81[8]) = 1024;
        v81[9] = v13;
        LOWORD(v81[10]) = 1024;
        *(&v81[10] + 2) = v10 | 0xC01A0000;
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GCKSession.c:%d: recv(%d) failed(%X)", v81, 0x2Eu);
      }
    }

    return;
  }

  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v70 + 72);
        v81[0] = 136316162;
        *&v81[1] = v7;
        LOWORD(v81[3]) = 2080;
        *(&v81[3] + 2) = "gckSessionRecvTCPMessage";
        HIWORD(v81[5]) = 1024;
        v81[6] = 3149;
        LOWORD(v81[7]) = 1024;
        *(&v81[7] + 2) = 3149;
        HIWORD(v81[8]) = 1024;
        v81[9] = v9;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GCKSession.c:%d: recv(%d) returned 0: Shutting down connection", v81, 0x28u);
      }
    }

    shutdown(*(v70 + 72), 2);
    close(*(v70 + 72));
    *(v70 + 72) = -1;
    return;
  }

  v80 = 0xAAAAAAAAAAAAAAAALL;
  v14 = OSPFGetLength(v86, v5);
  if (v14 < 1)
  {
    return;
  }

  v16 = v14;
  v17 = v86;
  *&v15 = 136317186;
  v65 = v15;
  v72 = v4;
  do
  {
    v79 = 0;
    if (*(v70 + 504))
    {
      v18 = &__block_literal_global;
    }

    else
    {
      v18 = 0;
    }

    ErrorLogLevelForModule = OSPFParse(&v80, &v79, v17, v16, 0, v18);
    if (ErrorLogLevelForModule < 1)
    {
      if (!ErrorLogLevelForModule)
      {
        v64 = v80;
        if (*(v80 + 1) != 1)
        {
LABEL_73:
          free(v64);
LABEL_74:
          if (v79)
          {
            free(v79);
          }

          return;
        }

        gckSessionProcessHello(v4, v70, v79, 0);
      }

      v64 = v80;
      if (!v80)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    v20 = v80;
    v77 = *(v80 + 1);
    if (v77 != 6)
    {
      *&v85[14] = 0xAAAAAAAAAAAAAAAALL;
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v85 = v21;
      v84[3] = v21;
      v84[2] = v21;
      *(v84 + 14) = 0xAAAAAAAAAAAAAAAALL;
      v84[0] = v21;
      v83 = v21;
      v82 = v21;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 8)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x277CE5818];
        v24 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] == 1)
        {
          ErrorLogLevelForModule = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          if (ErrorLogLevelForModule)
          {
            v25 = IPPORTToStringWithSize();
            v26 = v17;
            v27 = v80[3];
            v28 = IPPORTToStringWithSize();
            v29 = v80[2];
            v81[0] = v65;
            *&v81[1] = v22;
            LOWORD(v81[3]) = 2080;
            *(&v81[3] + 2) = "gckSessionRecvTCPMessage";
            HIWORD(v81[5]) = 1024;
            v81[6] = 3196;
            LOWORD(v81[7]) = 2080;
            *(&v81[7] + 2) = v25;
            HIWORD(v81[9]) = 1024;
            v81[10] = v27;
            v17 = v26;
            LOWORD(v81[11]) = 2080;
            *(&v81[11] + 2) = v28;
            HIWORD(v81[13]) = 1024;
            v81[14] = v29;
            LOWORD(v81[15]) = 1024;
            *(&v81[15] + 2) = v6;
            HIWORD(v81[16]) = 1024;
            v81[17] = v77;
            _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCP: [%s] %08X <= [%s] %08X: %d bytes(%d)", v81, 0x48u);
          }
        }

        else
        {
          ErrorLogLevelForModule = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
          if (ErrorLogLevelForModule)
          {
            v59 = IPPORTToStringWithSize();
            v60 = v17;
            v61 = v80[3];
            v62 = IPPORTToStringWithSize();
            v63 = v80[2];
            v81[0] = v65;
            *&v81[1] = v22;
            LOWORD(v81[3]) = 2080;
            *(&v81[3] + 2) = "gckSessionRecvTCPMessage";
            HIWORD(v81[5]) = 1024;
            v81[6] = 3196;
            LOWORD(v81[7]) = 2080;
            *(&v81[7] + 2) = v59;
            HIWORD(v81[9]) = 1024;
            v81[10] = v61;
            v17 = v60;
            LOWORD(v81[11]) = 2080;
            *(&v81[11] + 2) = v62;
            HIWORD(v81[13]) = 1024;
            v81[14] = v63;
            LOWORD(v81[15]) = 1024;
            *(&v81[15] + 2) = v6;
            HIWORD(v81[16]) = 1024;
            v81[17] = v77;
            _os_log_debug_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEBUG, " [%s] %s:%d TCP: [%s] %08X <= [%s] %08X: %d bytes(%d)", v81, 0x48u);
          }
        }
      }

      v20 = v80;
    }

    v30 = (v20 + 3);
    v31 = 4 * (*v20 & 0xF);
    MEMORY[0x28223BE20](ErrorLogLevelForModule);
    v34 = (&v65 - v32);
    if (!v33)
    {
      goto LABEL_62;
    }

    v67 = v17;
    v69 = v6;
    v35 = v33;
    memset(&v65 - v32, 170, v31);
    v73 = 0;
    v75 = v20 + 3;
    v76 = v35;
    v74 = v34;
    do
    {
      v37 = *v30++;
      v36 = v37;
      if (v37 == *(v4 + 108))
      {
        v73 = 1;
        NextHop = 0xFFFFFFFFLL;
      }

      else
      {
        NextHop = gckSessionFindNextHop(v4, v36);
      }

      *v34++ = NextHop;
      --v35;
    }

    while (v35);
    v66 = &v65;
    v68 = v16;
    v39 = v77;
    v71 = v77 == 7;
    v40 = v20 + 4;
    v41 = v74;
    v42 = v75;
    v43 = v74 + 1;
    v44 = v76;
    v45 = v76 - 1;
    do
    {
      v46 = v41[v35];
      if (v46 == -1)
      {
        ++v35;
        goto LABEL_50;
      }

      v78 = &v65;
      MEMORY[0x28223BE20](NextHop);
      v48 = (&v65 - v47);
      NextHop = memset(&v65 - v47, 170, v31);
      v44 = v76;
      *v48 = v42[v35++];
      v49 = 1;
      if (v35 >= v44)
      {
        v39 = v77;
      }

      else
      {
        v50 = v45;
        v51 = v43;
        v52 = v40;
        v39 = v77;
        do
        {
          if (*v51 == v46)
          {
            v48[v49] = *v52;
            v49 = (v49 + 1);
            *v51 = -1;
          }

          ++v52;
          ++v51;
          --v50;
        }

        while (v50);
      }

      switch(v39)
      {
        case 7:
LABEL_43:
          memset(v81, 170, sizeof(v81));
          v53 = v72;
          NextHop = OSPFMakeData(v81, 4096, v79, 0, v71, v80[2], v48, v49, *(*(v72 + 96) + 24), *(*(v72 + 96) + 32), 0x40u, 0, 0);
          if (NextHop >= 1)
          {
            NextHop = SendUDPPacketToParticipantChannelID(v53, v81, NextHop, v46, 0, -1, 1);
          }

LABEL_48:
          v39 = v77;
          v44 = v76;
          break;
        case 6:
          memset(v81, 170, sizeof(v81));
          NextHop = OSPFMakeAudio(v81, 4096, v79, 0, v80[2], v48, v49);
          if (NextHop >= 1)
          {
            NextHop = SendUDPPacketToParticipantChannelID(v72, v81, NextHop, v46, 0, -1, 2);
          }

          goto LABEL_48;
        case 5:
          goto LABEL_43;
      }

      v41 = v74;
      v42 = v75;
LABEL_50:
      ++v40;
      ++v43;
      --v45;
    }

    while (v35 != v44);
    v4 = v72;
    LODWORD(v6) = v69;
    LODWORD(v16) = v68;
    v17 = v67;
    if (v73)
    {
      switch(v39)
      {
        case 7:
          goto LABEL_55;
        case 6:
          v54 = *(v72 + 96);
          v55 = v80[2];
          v57 = *v79;
          v58 = v79[2];
          v56 = 5;
          goto LABEL_60;
        case 5:
LABEL_55:
          v54 = *(v72 + 96);
          v55 = v80[2];
          if (v39 == 7)
          {
            v56 = 6;
          }

          else
          {
            v56 = 4;
          }

          v57 = *v79;
          v58 = v79[2];
LABEL_60:
          PostEventCallback(v54, v55, v56, v57, v58, 0);
          break;
        default:
          gckSessionProcessOSPFPacket(v72, v70, v80, v79);
          break;
      }
    }

LABEL_62:
    if (v80)
    {
      free(v80);
    }

    if (v79)
    {
      free(v79);
    }

    v6 = (v6 - v16);
    if (v6 < 1)
    {
      break;
    }

    v17 = (v17 + v16);
    v16 = OSPFGetLength(v17, v6);
  }

  while (v16 > 0);
}

uint64_t __gckSessionRecvMessage_block_invoke(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(result + 32);
  ++*(v3 + 652);
  if (a3)
  {
    v6 = result;
    pthread_mutex_lock((v3 + 664));
    if (a3 >= 1)
    {
      v7 = 0;
      v8 = a3;
      do
      {
        v9 = *(a2 + 8 * v7);
        if (v9)
        {
          v10 = v9[1];
          v11 = *v9;
          if ((v11 - 13) >= 2)
          {
            if (v11 == 15)
            {
              v26 = *(v6 + 48);
              if ((*v26 & 1) == 0)
              {
                *v26 = 1;
                *(v26 + 8) = 4 * v10;
                *(v26 + 6) = bswap32(*(v9 + 1)) >> 16;
                *(v26 + 2) = bswap32(*(v9 + 2)) >> 16;
                *(v26 + 4) = bswap32(*(v9 + 3)) >> 16;
              }
            }
          }

          else
          {
            v12 = *(v6 + 32);
            v13 = v12[161];
            v14 = v12[165];
            if ((OSPFProcessDynamicOption(v12 + 156, v9, *(v6 + 40)) & 1) == 0)
            {
              v15 = *(v6 + 32);
              v16 = *(v15 + 644);
              v17 = v16 >= v13;
              v18 = v16 - v13;
              *(v15 + 604) = *(v15 + 604) + v18;
              if (v18 != 0 && v17)
              {
                *(v15 + 612) = *(v15 + 612) + (*(v15 + 660) - v14);
              }

              v19 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
              if (v19)
              {
                v20 = v19;
                v21 = 4 * v10;
                v22 = malloc_type_calloc(1uLL, v21 + 4, 0x100004052888210uLL);
                *v20 = v22;
                if (v22)
                {
                  memcpy(v22, *(a2 + 8 * v7), v21 + 4);
                  v23 = (*(v6 + 32) + 520);
                  do
                  {
                    v24 = v23;
                    v25 = *v23;
                    v23 = (*v23 + 8);
                  }

                  while (v25);
                  *v24 = v20;
                }

                else
                {
                  free(v20);
                }
              }
            }
          }
        }

        ++v7;
      }

      while (v7 != v8);
    }

    v27 = (*(v6 + 32) + 664);

    return pthread_mutex_unlock(v27);
  }

  return result;
}

void gckSessionProcessOSPFPacket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 1);
  if (v7 <= 2)
  {
    if (v7 == 1)
    {

      gckSessionProcessHello(a1, a2, a4, 1);
    }

    else if (v7 == 2)
    {

      gckSessionProcessDD(a1, a2, a4);
    }
  }

  else
  {
    switch(v7)
    {
      case 3u:

        gckSessionProcessLSA(a1, a2, a4);
        break;
      case 4u:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(a1 + 108);
            v19 = *(a2 + 116);
            *buf = 136316162;
            v41 = v16;
            v42 = 2080;
            v43 = "gckSessionProcessLSAACK";
            v44 = 1024;
            v45 = 3031;
            v46 = 1024;
            *v47 = v18;
            *&v47[4] = 1024;
            *&v47[6] = v19;
            _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am %08X ==================================== LSAACK from %08X", buf, 0x28u);
          }
        }

        pthread_mutex_lock((a2 + 664));
        v20 = *(a2 + 496);
        if (v20)
        {
          v21 = (a2 + 496);
          do
          {
            if (*v20 == 4 && *(v20 + 28) == *(a4 + 12))
            {
              *v21 = *(v20 + 8);
              v22 = *(v20 + 5);
              if (v22)
              {
                free(v22);
              }

              free(v20);
            }

            else
            {
              v21 = v20 + 64;
            }

            v20 = *v21;
          }

          while (*v21);
        }

LABEL_35:
        pthread_mutex_unlock((a2 + 664));
        return;
      case 8u:
        v8 = micro(a1, a2);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v11 = "request";
            v12 = *(a4 + 14);
            v13 = *(a2 + 116);
            if ((*(a4 + 12) & 2) == 0)
            {
              v11 = "response";
            }

            v14 = *(a2 + 100);
            *buf = 136316674;
            v41 = v9;
            v42 = 2080;
            v43 = "gckSessionProcessHeartbeat";
            v44 = 1024;
            v45 = 2594;
            v46 = 2080;
            *v47 = v11;
            *&v47[8] = 1024;
            *v48 = v12;
            *&v48[4] = 1024;
            v49 = v13;
            v50 = 1024;
            v51 = v14;
            _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received Heartbeat (%s) with SN [%d] from participant [%08X] over channel [%d]", buf, 0x38u);
          }
        }

        if ((*(a4 + 12) & 2) == 0)
        {
          pthread_mutex_lock((a2 + 664));
          v15 = *(a2 + 496);
          if (v15)
          {
            while (*v15 != 8)
            {
              v15 = *(v15 + 64);
              if (!v15)
              {
                goto LABEL_35;
              }
            }

            if (*(v15 + 56) == *(a4 + 14))
            {
              *(v15 + 8) = 0x3FC999999999999ALL;
              v34 = *(a2 + 392);
              *(v15 + 32) = v8 + v34;
              *(v15 + 16) = v8 + v34 * 0.5;
            }

            else if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v35 = VRTraceErrorLogLevelToCSTR();
              v36 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v37 = *(a4 + 14);
                v38 = *(v15 + 56);
                *buf = 136316162;
                v41 = v35;
                v42 = 2080;
                v43 = "gckSessionProcessHeartbeat";
                v44 = 1024;
                v45 = 2617;
                v46 = 1024;
                *v47 = v37;
                *&v47[4] = 1024;
                *&v47[6] = v38;
                _os_log_impl(&dword_24E50C000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received SN [%u] doesn't match the expected SN [%u]", buf, 0x28u);
              }
            }
          }

          goto LABEL_35;
        }

        v23 = *(a2 + 116);
        v24 = *(a4 + 14);
        v25 = *(a2 + 100);
        v39 = 0xAAAAAAAAAAAAAAAALL;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v41 = v26;
            v42 = 2080;
            v43 = "gckSessionSendHeartbeat";
            v44 = 1024;
            v45 = 1689;
            v46 = 1024;
            *v47 = v23;
            _os_log_impl(&dword_24E50C000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending Heartbeat to [%08X]", buf, 0x22u);
          }
        }

        v28 = OSPFMakeHeartbeat(&v39, *(a1 + 108), v23, 0, v24);
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if ((v28 & 0x80000000) != 0)
        {
          if (ErrorLogLevelForModule >= 3)
          {
            v32 = VRTraceErrorLogLevelToCSTR();
            v33 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              v41 = v32;
              v42 = 2080;
              v43 = "gckSessionSendHeartbeat";
              v44 = 1024;
              v45 = 1694;
              v46 = 1024;
              *v47 = v23;
              *&v47[4] = 1024;
              *&v47[6] = v24;
              *v48 = 1024;
              *&v48[2] = v25;
              _os_log_error_impl(&dword_24E50C000, v33, OS_LOG_TYPE_ERROR, " [%s] %s:%d OSPFMakeHeartbeat failed for participant [%08X], SN [%d], channel [%d]", buf, 0x2Eu);
            }
          }
        }

        else
        {
          if (ErrorLogLevelForModule >= 7)
          {
            v30 = VRTraceErrorLogLevelToCSTR();
            v31 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316674;
              v41 = v30;
              v42 = 2080;
              v43 = "gckSessionSendHeartbeat";
              v44 = 1024;
              v45 = 1698;
              v46 = 2080;
              *v47 = "response";
              *&v47[8] = 1024;
              *v48 = v24;
              *&v48[4] = 1024;
              v49 = v23;
              v50 = 1024;
              v51 = v25;
              _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending Heartbeat (%s) with SN [%d] to participant [%08X] over channel [%d]", buf, 0x38u);
            }
          }

          SendUDPPacketToParticipantChannelID(a1, v39, v28, v23, 0, v25, 0);
          free(v39);
        }

        break;
      default:
        return;
    }
  }
}

uint64_t gckSessionProcessHello(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v78[2] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 408);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (ErrorLogLevelForModule >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
    if (ErrorLogLevelForModule)
    {
      v13 = *(a2 + 116);
      v14 = *(a2 + 100);
      v15 = *(a3 + 16);
      *buf = 136316418;
      v71 = v11;
      v72 = 2080;
      v73 = "gckSessionProcessHello";
      v74 = 1024;
      v75 = 2423;
      v76 = 1024;
      *v77 = v13;
      *&v77[4] = 1024;
      *&v77[6] = v14;
      LOWORD(v78[0]) = 2048;
      *(v78 + 2) = v15;
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received Hello from participant [%08X] over channel [%d]. Hello Flags [%llX]", buf, 0x32u);
    }
  }

  v16 = micro(ErrorLogLevelForModule, v10);
  if (a4)
  {
    v17 = gckSessionChangeStateCList(a1, a2, 3);
    v18 = *(a3 + 12);
    v19 = *(a1 + 24);
    if (v19 < v18)
    {
      v18 = v19;
    }

    if (v18 <= 5)
    {
      v20 = 5;
    }

    else
    {
      v20 = v18;
    }
  }

  else
  {
    v20 = 0;
    v17 = 0;
  }

  v21 = *(a2 + 116);
  if (*(a1 + 108) > v21)
  {
    v22 = gckSessionSendHello(a1, v21, 0, 0, v20, *(a2 + 100));
    if (v22 < 0 && v22 != -1072037876)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
      {
        gckSessionProcessHello_cold_1();
        if (a4)
        {
          goto LABEL_17;
        }
      }

      else if (a4)
      {
LABEL_17:
        gckSessionChangeStateCList(a1, a2, 5);
        goto LABEL_19;
      }

      return 0;
    }
  }

  if (!a4)
  {
    return 0;
  }

LABEL_19:
  pthread_mutex_lock((a2 + 664));
  v23 = *(a3 + 16);
  *(a2 + 56) = v23;
  if ((v23 & 2) != 0)
  {
    if ((v23 & 0x400) != 0 && *(a1 + 104) != 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x277CE5818];
        v29 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] == 1)
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v71 = v27;
            v72 = 2080;
            v73 = "gckSessionProcessHello";
            v74 = 1024;
            v75 = 2467;
            _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FLOW CONTROL enabled.", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          gckSessionProcessHello_cold_2();
        }
      }

      *(a2 + 504) = 1;
    }

    v68 = v8;
    v34 = (a2 + 496);
    v35 = *(a2 + 496);
    if (!v35)
    {
LABEL_49:
      v69 = 0xAAAAAAAAAAAAAAAALL;
      v43 = OSPFMakeHeartbeat(&v69, *(a1 + 108), *(a2 + 116), 1, 1u);
      if ((v43 & 0x80000000) == 0)
      {
        v44 = v43;
        v45 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
        *v45 = 8;
        v45[1] = 0.2;
        v46 = *(a2 + 392);
        v45[4] = v16 + v46;
        v45[2] = v16 + v46 * 0.5;
        *(v45 + 5) = v69;
        *(v45 + 12) = v44;
        *(v45 + 28) = 1;
        *(v45 + 13) = *(a2 + 116);
        *v34 = v45;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v47 = VRTraceErrorLogLevelToCSTR();
          v48 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v49 = *(v45 + 28);
            v50 = *(a2 + 116);
            v51 = *(a2 + 100);
            *buf = 136316418;
            v71 = v47;
            v72 = 2080;
            v73 = "gckSessionProcessHello";
            v74 = 1024;
            v75 = 2510;
            v76 = 1024;
            *v77 = v49;
            *&v77[4] = 1024;
            *&v77[6] = v50;
            LOWORD(v78[0]) = 1024;
            *(v78 + 2) = v51;
            _os_log_impl(&dword_24E50C000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Schedule a Heartbeat with SN [%d] for participant [%08X] over channel [%d].", buf, 0x2Eu);
          }
        }

        if (*(a2 + 504))
        {
          if (*(a2 + 528) == 0.0)
          {
            v52 = *(a2 + 536);
            if (v52 != 0.0)
            {
              ++*(a2 + 652);
              *(a2 + 528) = v16 + v52;
            }
          }
        }
      }

      v8 = v68;
      goto LABEL_63;
    }

    v36 = MEMORY[0x277CE5818];
    while (1)
    {
      v37 = *v35;
      if (v37 == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v38 = VRTraceErrorLogLevelToCSTR();
          v39 = *v36;
          if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
          {
            v40 = *(a2 + 116);
            v41 = *(a2 + 100);
            *buf = 136316162;
            v71 = v38;
            v72 = 2080;
            v73 = "gckSessionProcessHello";
            v74 = 1024;
            v75 = 2474;
            v76 = 1024;
            *v77 = v40;
            *&v77[4] = 1024;
            *&v77[6] = v41;
            _os_log_impl(&dword_24E50C000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove Hello from the retry list for participant [%08X] channel [%d]", buf, 0x28u);
          }
        }

        *v34 = *(v35 + 8);
        v42 = *(v35 + 5);
        if (v42)
        {
          free(v42);
        }

        free(v35);
      }

      else
      {
        if (v37 == 8)
        {
          v35[1] = 0.2;
          v53 = *(a2 + 392);
          v35[4] = v16 + v53;
          v35[2] = v16 + v53 * 0.5;
          v8 = v68;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v54 = VRTraceErrorLogLevelToCSTR();
            v55 = *v36;
            if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
            {
              v56 = *(v35 + 2);
              v57 = *(v35 + 4);
              *buf = 136316162;
              v71 = v54;
              v72 = 2080;
              v73 = "gckSessionProcessHello";
              v74 = 1024;
              v75 = 2485;
              v76 = 2048;
              *v77 = v56;
              *&v77[8] = 2048;
              v78[0] = v57;
              _os_log_impl(&dword_24E50C000, v55, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Heartbeat queued. Updated state to: nextFire [%.1lf] waitUntil [%.1lf]", buf, 0x30u);
            }
          }

          goto LABEL_63;
        }

        v34 = (v35 + 8);
      }

      v35 = *v34;
      if (!*v34)
      {
        goto LABEL_49;
      }
    }
  }

  v24 = *(a2 + 496);
  if (v24)
  {
    while (1)
    {
      v25 = v24;
      if (*v24 == 1)
      {
        break;
      }

      v24 = *(v24 + 64);
      if (!v24)
      {
        v26 = (v25 + 64);
        goto LABEL_31;
      }
    }

    *(v24 + 8) = 0x3FB0A3D70A3D70A4;
    v32 = v16 + v20;
    *(v24 + 32) = v32;
    if (*(v24 + 40))
    {
      v33 = *(a1 + 32);
    }

    else
    {
      v33 = 0.0;
    }

    *(v24 + 16) = v32 - v33;
  }

  else
  {
    v26 = (a2 + 496);
LABEL_31:
    v30 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v30 = 1;
    v30[1] = 0.065;
    v31 = v16 + v20;
    v30[4] = v31;
    v30[2] = v31;
    v30[5] = 0.0;
    *(v30 + 12) = 0;
    *(v30 + 13) = *(a2 + 116);
    *v26 = v30;
  }

LABEL_63:
  v58 = *(a1 + 12);
  if (v58 != -1)
  {
    *(a1 + 12) = -1;
    close(v58);
  }

  pthread_mutex_unlock((a2 + 664));
  if ((v17 & 0x80000000) == 0)
  {
    if (*(a1 + 104))
    {
      v59 = *(a2 + 84);
      if (*(a2 + 76))
      {
        if (!v59)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v60 = VRTraceErrorLogLevelToCSTR();
            v61 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v71 = v60;
              v72 = 2080;
              v73 = "gckSessionProcessHello";
              v74 = 1024;
              v75 = 2554;
              v76 = 2080;
              *v77 = a2 + 120;
              _os_log_impl(&dword_24E50C000, v61, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invitation from %s", buf, 0x26u);
            }
          }

          PostEventCallback(*(a1 + 96), *(a2 + 116), 0, (a2 + 120), *(a2 + 376), 0);
        }

        return v17;
      }

      if (v59)
      {
        return v17;
      }

      if (v8 == 3)
      {
        return v17;
      }

      if (*(a1 + 108) >= *(a2 + 116))
      {
        return v17;
      }

      if (*(a2 + 108))
      {
        return v17;
      }

      pthread_mutex_lock((a1 + 7800));
      v63 = *(a1 + 112);
      pthread_mutex_unlock((a1 + 7800));
      if (v63 < 2)
      {
        return v17;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v64 = VRTraceErrorLogLevelToCSTR();
        v65 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v66 = *(a2 + 116);
          *buf = 136315906;
          v71 = v64;
          v72 = 2080;
          v73 = "gckSessionProcessHello";
          v74 = 1024;
          v75 = 2571;
          v76 = 1024;
          *v77 = v66;
          _os_log_impl(&dword_24E50C000, v65, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Send DD to %08X (local)", buf, 0x22u);
        }
      }

      v62 = *(a2 + 116);
    }

    else
    {
      if (v8 == 3)
      {
        return v17;
      }

      v62 = *(a2 + 116);
      if (*(a1 + 108) >= v62)
      {
        return v17;
      }
    }

    gckSessionSendDD(a1, v62, 1);
  }

  return v17;
}

void gckSessionProcessDD(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v101 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 112);
  v85 = a2;
  v86 = a1;
  if (v4 < 1)
  {
    v8 = 0;
  }

  else
  {
    v5 = (a1 + 396);
    v6 = 1;
    v7 = v4;
    v8 = 1;
    do
    {
      if (*(v5 - 1) && *v5 != *(a2 + 116))
      {
        break;
      }

      v8 = v6++ < v4;
      v5 += 120;
      --v7;
    }

    while (v7);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v86 + 108);
      v12 = *(v85 + 116);
      *buf = 136316162;
      v90 = v9;
      v91 = 2080;
      v92 = "gckSessionProcessDD";
      v93 = 1024;
      v94 = 2667;
      v95 = 1024;
      *v96 = v11;
      *&v96[4] = 1024;
      *&v96[6] = v12;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am %08X ==================================== DD from %08X", buf, 0x28u);
    }
  }

  TracePrintNodes(*(a3 + 12), *(a3 + 16));
  v13 = v86;
  if (!*(v86 + 48) && !*(v86 + 104))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v85 + 116);
        *buf = 136315906;
        v90 = v14;
        v91 = 2080;
        v92 = "gckSessionProcessDD";
        v93 = 1024;
        v94 = 2671;
        v95 = 1024;
        *v96 = v16;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DD: STOP ICE check with peer %08X", buf, 0x22u);
      }
    }

    v13 = v86;
    ICEStopConnectivityCheck();
    ICEStopConnectivityCheck();
  }

  v17 = v13[26];
  if (v17 == 1)
  {
    if (*(v85 + 76))
    {
      goto LABEL_24;
    }

    v18 = *(v85 + 116);
    goto LABEL_23;
  }

  if (!v17)
  {
    v18 = *(v85 + 116);
    if (v13[27] > v18)
    {
LABEL_23:
      gckSessionSendDD(v13, v18, 0);
    }
  }

LABEL_24:
  v88 = (v13 + 29);
  pthread_mutex_lock((v85 + 664));
  v19 = *(v85 + 496);
  if (v19)
  {
    v20 = (v85 + 496);
    do
    {
      if (*v19 == 2)
      {
        *v20 = v19[8];
        v21 = v19[5];
        if (v21)
        {
          free(v21);
        }

        free(v19);
      }

      else
      {
        v20 = v19 + 8;
      }

      v19 = *v20;
    }

    while (*v20);
  }

  v22 = pthread_mutex_unlock((v85 + 664));
  v23 = *(a3 + 12);
  *&v84 = *(a3 + 16);
  MEMORY[0x28223BE20](v22);
  v87 = &v79 - ((v24 + 15) & 0x7FFFFFFF0);
  if (!v23)
  {
    v25 = v86;
    v80 = (v86 + 7800);
    pthread_mutex_lock((v86 + 7800));
    goto LABEL_65;
  }

  memset(&v79 - ((v24 + 15) & 0x7FFFFFFF0), 170, v24);
  v25 = v86;
  v80 = (v86 + 7800);
  pthread_mutex_lock((v86 + 7800));
  if (v23 < 1)
  {
LABEL_65:
    v28 = 0;
    goto LABEL_66;
  }

  v27 = 0;
  v28 = 0;
  *&v83 = v25 + 125;
  *&v26 = 136315906;
  v82 = v26;
  *&v26 = 136316162;
  v81 = v26;
  do
  {
    v29 = *(v25 + 112);
    if (v29 < 1)
    {
      LODWORD(v30) = 0;
    }

    else
    {
      v30 = 0;
      v31 = (v84 + 480 * v27);
      v32 = v83;
      v33 = v25;
      while (*v31 != *(v33 + 116))
      {
        ++v30;
        v33 += 480;
        v32 += 480;
        if (v29 == v30)
        {
          v25 = v86;
          goto LABEL_53;
        }
      }

      if (v31[136] <= *(v33 + 388) || (memcpy((v33 + 116), v31, 0x1E0uLL), *(v85 + 108)) || *(v85 + 116) != *(v33 + 116))
      {
        v25 = v86;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v79 = VRTraceErrorLogLevelToCSTR();
          v34 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v82;
            v90 = v79;
            v91 = 2080;
            v92 = "gckSessionProcessDD";
            v93 = 1024;
            v94 = 2718;
            v95 = 2080;
            *v96 = v32;
            _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DD: Connected to %s (promote direct)", buf, 0x26u);
          }
        }

        v25 = v86;
        if (*(v86 + 104) == 1)
        {
          v35 = v85;
          if (!isInNeighbor(v88, 1u, *(v85 + 116)) && (gckSessionAddNode(v25, *(v35 + 116), 255) & 0x80000000) == 0)
          {
            gckSessionUpdateNode(v25, *(v35 + 116), *(v35 + 560), 0);
            ++*(v25 + 388);
            v8 = 1;
            *(v25 + 392) = 1;
          }
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v79 = VRTraceErrorLogLevelToCSTR();
            v40 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v41 = *(v33 + 116);
              *buf = v82;
              v90 = v79;
              v91 = 2080;
              v92 = "gckSessionProcessDD";
              v93 = 1024;
              v94 = 2726;
              v95 = 1024;
              *v96 = v41;
              _os_log_impl(&dword_24E50C000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionProcessDD: init RetryICE w/ remoteID %08X OOB", buf, 0x22u);
            }
          }

          GCKSessionSendDOOB(v25, *(v33 + 116), 0, 0, 1u, 0.0);
        }
      }
    }

    if (v30 == v29)
    {
LABEL_53:
      v36 = *(v25 + 112);
      if (v36 > 15)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v38 = VRTraceErrorLogLevelToCSTR();
          v39 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            v42 = *(v84 + 480 * v27);
            *buf = v81;
            v90 = v38;
            v91 = 2080;
            v92 = "gckSessionProcessDD";
            v93 = 1024;
            v94 = 2754;
            v95 = 1024;
            *v96 = 2754;
            *&v96[4] = 1024;
            *&v96[6] = v42;
            _os_log_error_impl(&dword_24E50C000, v39, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GCKSession.c:%d: Maximum # of nodes reached.  Ignoring node [%08X]\n", buf, 0x28u);
          }
        }
      }

      else
      {
        v37 = (v84 + 480 * v27);
        memcpy(&v88[480 * v36], v37, 0x1E0uLL);
        ++*(v25 + 112);
        *&v87[4 * v28++] = *v37;
      }
    }

    ++v27;
  }

  while (v27 != v23);
LABEL_66:
  gckSessionFindShortestPath(*(v25 + 112), v88);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v43 = VRTraceErrorLogLevelToCSTR();
    v44 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v90 = v43;
      v91 = 2080;
      v92 = "gckSessionProcessDD";
      v93 = 1024;
      v94 = 2760;
      _os_log_impl(&dword_24E50C000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====== After processing incoming DD", buf, 0x1Cu);
    }
  }

  v45 = v86;
  TracePrintNodes(*(v86 + 112), v88);
  if (v8)
  {
    v46 = -1;
  }

  else
  {
    v46 = *(v85 + 116);
  }

  gckSessionSendLSA(v45, *(v45 + 112), v88, v46, 0);
  gckSessionCleanupNodes(v45, -1, 0);
  v47 = *(v45 + 112);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v49 = VRTraceErrorLogLevelToCSTR();
    v50 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v90 = v49;
      v91 = 2080;
      v92 = "gckSessionProcessDD";
      v93 = 1024;
      v94 = 2770;
      v95 = 1024;
      *v96 = v28;
      *&v96[4] = 1024;
      *&v96[6] = v47;
      _os_log_impl(&dword_24E50C000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====== iNewNodeIDs = %d, iNodes = %d", buf, 0x28u);
    }
  }

  if (v28 >= 1)
  {
    v51 = 0;
    *&v81 = v28;
    *&v48 = 136316674;
    v84 = v48;
    *&v48 = 136315906;
    v83 = v48;
    *&v48 = 136315650;
    v82 = v48;
    while (v47 < 1)
    {
LABEL_116:
      if (++v51 == v81)
      {
        goto LABEL_117;
      }
    }

    v52 = 0;
    while (1)
    {
      if (VRTraceGetErrorLogLevelForModule() <= 6)
      {
        v56 = *&v87[4 * v51];
      }

      else
      {
        v53 = VRTraceErrorLogLevelToCSTR();
        v54 = *MEMORY[0x277CE5818];
        v55 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
        v56 = *&v87[4 * v51];
        if (v55)
        {
          v57 = *&v88[480 * v52];
          *buf = v84;
          v90 = v53;
          v91 = 2080;
          v92 = "gckSessionProcessDD";
          v93 = 1024;
          v94 = 2773;
          v95 = 1024;
          *v96 = v51;
          *&v96[4] = 1024;
          *&v96[6] = v52;
          v97 = 1024;
          v98 = v56;
          v99 = 1024;
          v100 = v57;
          _os_log_impl(&dword_24E50C000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====== @ %d (%08X), %d (%08X)", buf, 0x34u);
        }
      }

      v58 = &v88[480 * v52];
      if (v56 != *v58 || *(v58 + 1) == -1)
      {
        goto LABEL_115;
      }

      v59 = v85;
      reportingGKLog();
      if (*(v59 + 108) || *(v59 + 116) != *v58)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v67 = VRTraceErrorLogLevelToCSTR();
          v68 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v83;
            v90 = v67;
            v91 = 2080;
            v92 = "gckSessionProcessDD";
            v93 = 1024;
            v94 = 2794;
            v95 = 2080;
            *v96 = v58 + 9;
            _os_log_impl(&dword_24E50C000, v68, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DD: Connected to %s (new connection)", buf, 0x26u);
          }
        }

        v62 = v85;
        v63 = v86;
        v69 = *(v86 + 7888);
        if (v69)
        {
          while (*(v69 + 116) != *v58)
          {
            v69 = *(v69 + 728);
            if (!v69)
            {
              goto LABEL_103;
            }
          }

          v70 = 0;
          atomic_compare_exchange_strong_explicit((v69 + 96), &v70, 2u, memory_order_relaxed, memory_order_relaxed);
        }
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v60 = VRTraceErrorLogLevelToCSTR();
          v61 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v83;
            v90 = v60;
            v91 = 2080;
            v92 = "gckSessionProcessDD";
            v93 = 1024;
            v94 = 2782;
            v95 = 2080;
            *v96 = v58 + 9;
            _os_log_impl(&dword_24E50C000, v61, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DD: Connected to %s (direct connection)", buf, 0x26u);
          }
        }

        v62 = v85;
        v63 = v86;
        if (*(v86 + 104) != 1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v64 = VRTraceErrorLogLevelToCSTR();
            v65 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v66 = *v58;
              *buf = v83;
              v90 = v64;
              v91 = 2080;
              v92 = "gckSessionProcessDD";
              v93 = 1024;
              v94 = 2790;
              v95 = 1024;
              *v96 = v66;
              _os_log_impl(&dword_24E50C000, v65, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionProcessDD: init RetryICE w/ remoteID %08X OOB", buf, 0x22u);
            }
          }

          v63 = v86;
          GCKSessionSendDOOB(v86, *v58, 0, 0, 1u, 0.0);
          v62 = v85;
        }
      }

LABEL_103:
      if (*(v62 + 4))
      {
        v71 = 13;
      }

      else
      {
        v71 = 1;
      }

      PostEventCallback(*(v63 + 96), *v58, v71, v58 + 9, v58[8], 0);
      v72 = *(v63 + 104);
      if (v72 == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_115;
        }

        v77 = VRTraceErrorLogLevelToCSTR();
        v78 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_115;
        }

        *buf = v82;
        v90 = v77;
        v91 = 2080;
        v92 = "gckSessionProcessDD";
        v93 = 1024;
        v94 = 2817;
        v75 = v78;
        v76 = " [%s] %s:%d localscopeconnected";
      }

      else
      {
        if (v72)
        {
          goto LABEL_115;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_115;
        }

        v73 = VRTraceErrorLogLevelToCSTR();
        v74 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_115;
        }

        *buf = v82;
        v90 = v73;
        v91 = 2080;
        v92 = "gckSessionProcessDD";
        v93 = 1024;
        v94 = 2813;
        v75 = v74;
        v76 = " [%s] %s:%d globalscopeconnected";
      }

      _os_log_impl(&dword_24E50C000, v75, OS_LOG_TYPE_DEFAULT, v76, buf, 0x1Cu);
LABEL_115:
      if (++v52 == v47)
      {
        goto LABEL_116;
      }
    }
  }

LABEL_117:
  *(v85 + 92) = 1;
  pthread_mutex_unlock(v80);
  gckSessionCheckPendingConnections(v86, 0);
}

void gckSessionProcessLSA(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v88 = a2;
  *(&v98[2] + 2) = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  MEMORY[0x28223BE20](a1);
  v8 = &v80 - ((v7 + 15) & 0x7FFFFFFF0);
  if (v5)
  {
    memset(&v80 - ((v7 + 15) & 0x7FFFFFFF0), 170, v7);
  }

  v9 = *(a1 + 112);
  if (v9 < 1)
  {
    v13 = 0;
  }

  else
  {
    v10 = (a1 + 396);
    v11 = 1;
    v12 = *(a1 + 112);
    v13 = 1;
    do
    {
      if (*(v10 - 1) && *v10 != v88[29])
      {
        break;
      }

      v13 = v11++ < v9;
      v10 += 120;
      --v12;
    }

    while (v12);
  }

  v14 = (a1 + 116);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 108);
      v18 = v88[29];
      *buf = 136316162;
      v92 = v15;
      v93 = 2080;
      v94 = "gckSessionProcessLSA";
      v95 = 1024;
      v96 = 2855;
      v97 = 1024;
      LODWORD(v98[0]) = v17;
      WORD2(v98[0]) = 1024;
      *(v98 + 6) = v18;
      _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am %08X ==================================== LSA from %08X", buf, 0x28u);
    }
  }

  TracePrintNodes(*(a3 + 16), *(a3 + 24));
  pthread_mutex_lock((a1 + 7800));
  v19 = isInNeighbor(v6, v5, *(a1 + 108));
  if (*(a3 + 16) == 1 && !((*v6 != v88[29]) | v19 & 1))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v92 = v24;
        v93 = 2080;
        v94 = "gckSessionProcessLSA";
        v95 = 1024;
        v96 = 2869;
        _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got declining LSA", buf, 0x1Cu);
      }
    }

    v26 = *(a1 + 112);
    v27 = *v6;
    if (v26 < 1)
    {
      goto LABEL_28;
    }

    if (*v14 != v27)
    {
      v28 = (a1 + 596);
      v29 = 1;
      do
      {
        v30 = v29;
        if (v26 == v29)
        {
          break;
        }

        v31 = *v28;
        ++v29;
        v28 += 120;
      }

      while (v31 != v27);
      if (v30 >= v26)
      {
LABEL_28:
        PostEventCallback(*(a1 + 96), v27, 3, (v6 + 9), *(v6 + 8), 0);
      }
    }

    v88[21] = 1;
    v32 = *(a1 + 12);
    if (v32 != -1)
    {
      *(a1 + 12) = -1;
      close(v32);
    }

    goto LABEL_31;
  }

  if (v88[23])
  {
LABEL_31:
    v81 = a3;
    v87 = (a1 + 116);
    v82 = v8;
    if (v5 >= 1)
    {
      v33 = 0;
      LODWORD(v86) = 0;
      *&v84 = a1 + 404;
      *&v20 = 136315650;
      v83 = v20;
      *&v20 = 136316162;
      v80 = v20;
      v85 = v5;
      while (1)
      {
        v34 = *(a1 + 112);
        if (v34 < 1)
        {
          LODWORD(v35) = 0;
        }

        else
        {
          v35 = 0;
          v36 = (v6 + 480 * v33);
          v37 = a1;
          while (*v36 != *(v37 + 116))
          {
            ++v35;
            v37 += 480;
            if (v34 == v35)
            {
              goto LABEL_42;
            }
          }

          if (v36[136] > *(v37 + 388))
          {
            memcpy((v37 + 116), v36, 0x1E0uLL);
            if (!*(v37 + 400))
            {
              v52 = *(a1 + 400);
              if (v52 > 0)
              {
                v53 = v52 - 1;
                v54 = v84;
                while (*v54 != *(v37 + 116))
                {
                  v54 += 3;
                  --v53;
                  if (!--v52)
                  {
                    goto LABEL_41;
                  }
                }

                memmove(v54, v54 + 3, 12 * v53);
                --*(a1 + 400);
                ++*(a1 + 388);
                *(a1 + 392) = 1;
              }
            }
          }
        }

LABEL_41:
        if (v35 != v34)
        {
          goto LABEL_63;
        }

LABEL_42:
        v38 = (v6 + 480 * v33);
        if (v38[71])
        {
          v39 = *(a1 + 112);
          if (v39 > 15)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v47 = VRTraceErrorLogLevelToCSTR();
              v48 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                v49 = *v38;
                *buf = v80;
                v92 = v47;
                v93 = 2080;
                v94 = "gckSessionProcessLSA";
                v95 = 1024;
                v96 = 2941;
                v97 = 1024;
                LODWORD(v98[0]) = 2941;
                WORD2(v98[0]) = 1024;
                *(v98 + 6) = v49;
                _os_log_error_impl(&dword_24E50C000, v48, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GCKSession.c:%d: Maximum # of nodes reached.  Ignoring node [%08X]\n", buf, 0x28u);
              }

              goto LABEL_61;
            }
          }

          else
          {
            memcpy(&v14[120 * v39], (v6 + 480 * v33), 0x1E0uLL);
            ++*(a1 + 112);
            v40 = v86 + 1;
            *&v82[4 * v86] = *v38;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v41 = VRTraceErrorLogLevelToCSTR();
              v42 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = v83;
                v92 = v41;
                v93 = 2080;
                v94 = "gckSessionProcessLSA";
                v95 = 1024;
                v96 = 2937;
                _os_log_impl(&dword_24E50C000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Added one node", buf, 0x1Cu);
              }

              LODWORD(v86) = v40;
              goto LABEL_62;
            }

            LODWORD(v86) = v40;
          }
        }

        else
        {
          v43 = *(a1 + 400);
          if (v43 >= 1)
          {
            v44 = *v38;
            v45 = 1;
            v46 = v84;
            while (*v46 != v44)
            {
              v46 += 3;
              ++v45;
              if (!--v43)
              {
                goto LABEL_63;
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v50 = VRTraceErrorLogLevelToCSTR();
              v51 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = v83;
                v92 = v50;
                v93 = 2080;
                v94 = "gckSessionProcessLSA";
                v95 = 1024;
                v96 = 2922;
                _os_log_impl(&dword_24E50C000, v51, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Removing Disconnecting Node", buf, 0x1Cu);
              }
            }

            memmove(v46, v46 + 3, 12 * (*(a1 + 400) - v45));
            --*(a1 + 400);
            ++*(a1 + 388);
            *(a1 + 392) = 1;
LABEL_61:
            v14 = v87;
LABEL_62:
            v5 = v85;
          }
        }

LABEL_63:
        if (++v33 == v5)
        {
          goto LABEL_72;
        }
      }
    }

    LODWORD(v86) = 0;
LABEL_72:
    gckSessionFindShortestPath(*(a1 + 112), v14);
    TracePrintNodes(*(a1 + 112), v14);
    v55 = v88[29];
    v56 = *(v81 + 12);
    *&v57 = 0xAAAAAAAAAAAAAAAALL;
    *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v90[0] = v57;
    v90[1] = v57;
    v89 = 0xAAAAAAAAAAAAAAAALL;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v58 = VRTraceErrorLogLevelToCSTR();
      v59 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v92 = v58;
        v93 = 2080;
        v94 = "gckSessionSendLSAACK";
        v95 = 1024;
        v96 = 1906;
        v97 = 1024;
        LODWORD(v98[0]) = v55;
        _os_log_impl(&dword_24E50C000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending LSAACK to [%08X]", buf, 0x22u);
      }
    }

    WORD6(v90[0]) = v56;
    v60 = OSPFMakeLSAACK(&v89, v90, 0, *(a1 + 108), v55);
    if ((v60 & 0x80000000) == 0)
    {
      SendUDPPacketToParticipantChannelID(a1, v89, v60, v55, 0, -1, 0);
      free(v89);
    }

    if (v13)
    {
      v61 = -1;
    }

    else
    {
      v61 = v88[29];
    }

    gckSessionSendLSA(a1, *(a1 + 112), v14, v61, 0);
    gckSessionCleanupNodes(a1, -1, 0);
    if (v86 < 1)
    {
LABEL_111:
      pthread_mutex_unlock((a1 + 7800));
      return;
    }

    v85 = 0;
    *&v83 = v86;
    v63 = *(a1 + 112);
    *&v62 = 136315906;
    v86 = v62;
    *&v62 = 136315650;
    v84 = v62;
    while (v63 < 1)
    {
LABEL_110:
      if (++v85 == v83)
      {
        goto LABEL_111;
      }
    }

    v64 = 0;
    v65 = *&v82[4 * v85];
    while (1)
    {
      v66 = &v14[120 * v64];
      if (v65 == *v66 && *(v66 + 1) != -1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v67 = VRTraceErrorLogLevelToCSTR();
          v68 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v86;
            v92 = v67;
            v93 = 2080;
            v94 = "gckSessionProcessLSA";
            v95 = 1024;
            v96 = 2964;
            v97 = 2080;
            v98[0] = v66 + 9;
            _os_log_impl(&dword_24E50C000, v68, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LSA: Connected to %s (new connection) ", buf, 0x26u);
          }
        }

        reportingGKLog();
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v69 = VRTraceErrorLogLevelToCSTR();
          v70 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v71 = *v66;
            *buf = v86;
            v92 = v69;
            v93 = 2080;
            v94 = "gckSessionProcessLSA";
            v95 = 1024;
            v96 = 2974;
            v97 = 1024;
            LODWORD(v98[0]) = v71;
            _os_log_impl(&dword_24E50C000, v70, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionProcessLSA: async RetryICE w/ remoteID %08X OOB", buf, 0x22u);
          }
        }

        v72 = *(a1 + 7888);
        v14 = v87;
        if (v72)
        {
          while (*(v72 + 116) != *v66)
          {
            v72 = *(v72 + 728);
            if (!v72)
            {
              goto LABEL_95;
            }
          }

          v73 = 0;
          atomic_compare_exchange_strong_explicit((v72 + 96), &v73, 2u, memory_order_relaxed, memory_order_relaxed);
        }

        else
        {
LABEL_95:
          if (*(a1 + 104) != 1)
          {
            GCKSessionSendDOOB(a1, *(a1 + 108), v66, 4, 9u, 5.0);
          }
        }

        if (v88[1])
        {
          v74 = 13;
        }

        else
        {
          v74 = 1;
        }

        PostEventCallback(*(a1 + 96), *v66, v74, v66 + 9, v66[8], 0);
        v75 = *(a1 + 104);
        if (v75 == 1)
        {
          goto LABEL_106;
        }

        if (!v75)
        {
          break;
        }
      }

LABEL_109:
      if (++v64 == v63)
      {
        goto LABEL_110;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v76 = VRTraceErrorLogLevelToCSTR();
      v77 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = v84;
        v92 = v76;
        v93 = 2080;
        v94 = "gckSessionProcessLSA";
        v95 = 1024;
        v96 = 3013;
        _os_log_impl(&dword_24E50C000, v77, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d globalscopeconnected", buf, 0x1Cu);
      }
    }

LABEL_106:
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v78 = VRTraceErrorLogLevelToCSTR();
      v79 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = v84;
        v92 = v78;
        v93 = 2080;
        v94 = "gckSessionProcessLSA";
        v95 = 1024;
        v96 = 3015;
        _os_log_impl(&dword_24E50C000, v79, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d localscopeconnected", buf, 0x1Cu);
      }
    }

    goto LABEL_109;
  }

  pthread_mutex_unlock((a1 + 7800));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v23 = v88[29];
      *buf = 136315906;
      v92 = v21;
      v93 = 2080;
      v94 = "gckSessionProcessLSA";
      v95 = 1024;
      v96 = 2887;
      v97 = 1024;
      LODWORD(v98[0]) = v23;
      _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Premature LSA from %08X: ignoring...", buf, 0x22u);
    }
  }
}

void TracePrintNodes(int a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v31 = v3;
      v32 = 2080;
      v33 = "TracePrintNodes";
      v34 = 1024;
      v35 = 2382;
      v36 = 1024;
      v37 = a1;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====== %d nodes =====", buf, 0x22u);
    }
  }

  if (a1 >= 1)
  {
    v5 = 0;
    v6 = (a2 + 292);
    v7 = MEMORY[0x277CE5808];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v10 = (a2 + 480 * v5);
          v11 = *v10;
          v12 = v10[1];
          v13 = v10[67];
          v14 = *(v10 + 136);
          v15 = v10[69];
          v16 = v10[70];
          v17 = v10[71];
          v18 = v10 + 9;
          LODWORD(v10) = *(v10 + 8);
          *buf = 136318210;
          v31 = v8;
          v32 = 2080;
          v33 = "TracePrintNodes";
          v34 = 1024;
          v35 = 2389;
          v36 = 1024;
          v37 = v5;
          v38 = 1024;
          v39 = v11;
          v40 = 1024;
          v41 = v12;
          v42 = 1024;
          v43 = v13;
          v44 = 1024;
          v45 = v14;
          v46 = 1024;
          v47 = v15;
          v48 = 1024;
          v49 = v16;
          v50 = 1024;
          v51 = v17;
          v52 = 2080;
          v53 = v18;
          v54 = 1024;
          v55 = v10;
          _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %d: %08X Next[%08X], dist[%u], SN[%u], New[%d], From[%08X], #NEIGHBOR[%d] %s[%u]\n", buf, 0x5Cu);
        }
      }

      v19 = a2 + 480 * v5;
      if (*(v19 + 284) >= 1)
      {
        v20 = 0;
        v21 = v6;
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v22 = VRTraceErrorLogLevelToCSTR();
            v23 = *MEMORY[0x277CE5818];
            v24 = *MEMORY[0x277CE5818];
            if (*v7 == 1)
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = *(v21 - 1);
                v26 = *v21;
                *buf = 136316162;
                v31 = v22;
                v32 = 2080;
                v33 = "TracePrintNodes";
                v34 = 1024;
                v35 = 2392;
                v36 = 1024;
                v37 = v25;
                v38 = 1024;
                v39 = v26;
                _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d     %08X, RTT[%u]", buf, 0x28u);
              }
            }

            else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v27 = *(v21 - 1);
              v28 = *v21;
              *buf = 136316162;
              v31 = v22;
              v32 = 2080;
              v33 = "TracePrintNodes";
              v34 = 1024;
              v35 = 2392;
              v36 = 1024;
              v37 = v27;
              v38 = 1024;
              v39 = v28;
              _os_log_debug_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEBUG, " [%s] %s:%d     %08X, RTT[%u]", buf, 0x28u);
            }
          }

          ++v20;
          v21 += 3;
        }

        while (v20 < *(v19 + 284));
      }

      ++v5;
      v6 += 120;
    }

    while (v5 != a1);
  }
}

uint64_t isInNeighbor(uint64_t a1, unsigned int a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v4 = 0;
    v13 = 0;
    v15 = a2;
    v5 = (a1 + 288);
    v14 = a1;
    do
    {
      v6 = a1 + 480 * v4;
      if (*(v6 + 284) >= 1)
      {
        v7 = 0;
        v8 = v5;
        while (*v8 != a3)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v11 = *v8;
              *buf = 136315906;
              v17 = v9;
              v18 = 2080;
              v19 = "isInNeighbor";
              v20 = 1024;
              v21 = 2652;
              v22 = 1024;
              v23 = v11;
              _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Neighbor %08X", buf, 0x22u);
            }
          }

          ++v7;
          v8 += 3;
          if (v7 >= *(v6 + 284))
          {
            goto LABEL_12;
          }
        }

        v13 = 1;
LABEL_12:
        a1 = v14;
      }

      ++v4;
      v5 += 120;
    }

    while (v4 != v15);
  }

  return v13 & 1;
}

void gckSessionFindShortestPath(uint64_t a1, _DWORD *a2)
{
  v3 = a1;
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v35 - v6;
  v8 = 4 * v4;
  if (v5)
  {
    v9 = memset(v35 - v6, 170, 4 * v4);
    MEMORY[0x28223BE20](v9);
    v10 = v35 - ((v8 + 15) & 0x7FFFFFFF0);
    v11 = memset(v10, 170, 4 * v4);
    MEMORY[0x28223BE20](v11);
    v12 = v10;
    memset(v10, 170, 4 * v4);
  }

  else
  {
    v13 = MEMORY[0x28223BE20](v5);
    v10 = v35 - ((v8 + 15) & 0x7FFFFFFF0);
    MEMORY[0x28223BE20](v13);
    v12 = (v35 - v14);
  }

  memset(v12, 255, 4 * v3);
  memset(v7, 255, 4 * v3);
  bzero(v10, 4 * v3);
  *v12 = 0;
  if (v3 >= 1)
  {
    v15 = 0;
    v16 = -1;
    for (i = -1; ; i = -1)
    {
      do
      {
        if (!*&v10[4 * v15] && v12[v15] < v16)
        {
          i = v15;
          v16 = v12[v15];
        }

        ++v15;
      }

      while (v15 != v4);
      if (i == -1)
      {
        break;
      }

      *&v10[4 * i] = 1;
      v18 = &a2[120 * i];
      v19 = v18[71];
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = v18 + 72;
        do
        {
          v22 = 0;
          v23 = a2;
          while (*v23 != v21[3 * v20])
          {
            v23 += 120;
            if (v4 == ++v22)
            {
              goto LABEL_19;
            }
          }

          if (v22 != v3 && !*&v10[4 * v22])
          {
            v24 = v21[3 * v20 + 1];
            if (v24 != -1)
            {
              v25 = v24 + v16;
              if (v25 < v12[v22])
              {
                v12[v22] = v25;
                *&v7[4 * v22] = i;
              }
            }
          }

LABEL_19:
          ++v20;
        }

        while (v20 != v19);
      }

      v15 = 0;
      v16 = -1;
    }
  }

  v26 = a2[71];
  if (v26 >= 1)
  {
    v27 = 0;
    v28 = a2 + 72;
    do
    {
      if (v3 < 1)
      {
        LODWORD(v29) = 0;
      }

      else
      {
        v29 = 0;
        v30 = a2;
        while (*v30 != v28[3 * v27])
        {
          v30 += 120;
          if (v4 == ++v29)
          {
            goto LABEL_36;
          }
        }
      }

      if (v29 != v3 && v28[3 * v27 + 1] != -1)
      {
        *&v7[4 * v29] = 0;
      }

LABEL_36:
      ++v27;
    }

    while (v27 != v26);
  }

  if (v3 > 1)
  {
    v31 = 1;
    do
    {
      v32 = v31;
      while (1)
      {
        v33 = v32;
        v32 = *&v7[4 * v32];
        if (v32 == -1)
        {
          break;
        }

        if (!v32)
        {
          a2[120 * v31 + 1] = a2[120 * v33];
          v34 = v12[v31];
          goto LABEL_44;
        }
      }

      v34 = -1;
      a2[120 * v31 + 1] = -1;
LABEL_44:
      a2[120 * v31++ + 67] = v34;
    }

    while (v31 != v4);
  }
}

void gckSessionSendLSA(uint64_t a1, int a2, void *a3, int a4, int a5)
{
  v43 = *MEMORY[0x277D85DE8];
  memset(v34, 170, 32);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v11 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 400);
      *buf = 136315906;
      v36 = v12;
      v37 = 2080;
      v38 = "gckSessionSendLSA";
      v39 = 1024;
      v40 = 1830;
      v41 = 1024;
      v42 = v14;
      _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending LSA to %2d neighbors", buf, 0x22u);
    }
  }

  LODWORD(v34[3]) = a2;
  v34[4] = a3;
  if (*(a1 + 400) >= 1)
  {
    v15 = 0;
    v33 = a5;
    do
    {
      v16 = *(a1 + 404 + 12 * v15);
      if (v16 != a4)
      {
        v17 = *(a1 + 20);
        *(a1 + 20) = v17 + 1;
        WORD2(v34[2]) = v17;
        v18 = OSPFMakeLSA(v34, &v34[1], 0, *(a1 + 108), v16, 0);
        if ((v18 & 0x80000000) == 0)
        {
          v19 = *(a1 + 7888);
          if (!v19)
          {
            goto LABEL_25;
          }

          v20 = v18;
          while (v16 != *(v19 + 116) || *(v19 + 108))
          {
            v19 = *(v19 + 728);
            if (!v19)
            {
              goto LABEL_25;
            }
          }

          if (!*(v19 + 88) && a5 == 0)
          {
LABEL_25:
            free(v34[0]);
          }

          else
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v22 = VRTraceErrorLogLevelToCSTR();
              v23 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v36 = v22;
                v37 = 2080;
                v38 = "gckSessionSendLSA";
                v39 = 1024;
                v40 = 1857;
                v41 = 1024;
                v42 = v16;
                _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending LSA to [%08X]", buf, 0x22u);
              }
            }

            pthread_mutex_lock((v19 + 664));
            v24 = (v19 + 496);
            do
            {
              v25 = v24;
              v26 = *v24;
              v24 = (*v24 + 64);
            }

            while (v26);
            v27 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
            *v27 = 4;
            *(v27 + 8) = xmmword_24E5907C0;
            v28 = v34[0];
            *(v27 + 4) = 0x4082BFEB851EB852;
            *(v27 + 5) = v28;
            *(v27 + 12) = v20;
            *(v27 + 13) = v16;
            *(v27 + 28) = WORD2(v34[2]);
            *v25 = v27;
            pthread_mutex_unlock((v19 + 664));
            v29 = *(a1 + 12);
            a5 = v33;
            if (v29 != -1)
            {
              *(a1 + 12) = -1;
              close(v29);
            }
          }
        }
      }

      ++v15;
    }

    while (v15 < *(a1 + 400));
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 108);
      *buf = 136315906;
      v36 = v30;
      v37 = 2080;
      v38 = "gckSessionSendLSA";
      v39 = 1024;
      v40 = 1894;
      v41 = 1024;
      v42 = v32;
      _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am %08X ========= After sending all LSAs...", buf, 0x22u);
    }
  }

  TracePrintNodes(*(a1 + 112), a1 + 116);
}

void gckSessionCleanupNodes(uint64_t a1, int a2, int a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  if (v5 < 1)
  {
    goto LABEL_48;
  }

  v6 = 0;
  v7 = 0;
  v8 = a1 + 116;
  v9 = a1 + 404;
  v10 = a3 ? -2145779689 : 0;
  v55 = v10;
  v56 = a1 + 116;
  do
  {
    v11 = (v8 + 480 * v6);
    if (v11[1] == -1)
    {
      v12 = *(a1 + 400);
      if (v12 >= 1)
      {
        for (i = 0; i < v12; ++i)
        {
          v14 = (v9 + 12 * i);
          if (*v14 == *v11)
          {
            memmove(v14, (v9 + 12 * i + 12), 12 * (v12 + ~i));
            v12 = *(a1 + 400) - 1;
            *(a1 + 400) = v12;
            --i;
          }
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v17 = *v11;
          *buf = 136316162;
          v60 = v15;
          v61 = 2080;
          v62 = "gckSessionCleanupNodes";
          v63 = 1024;
          v64 = 1320;
          v65 = 2080;
          v66 = v11 + 9;
          v67 = 1024;
          v68 = v17;
          _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Disconnected from %s[%08X]", buf, 0x2Cu);
        }
      }

      v18 = *(a1 + 96);
      v19 = *(v18 + 168);
      v20 = *v11;
      if (v19 < 1)
      {
        LODWORD(v21) = 0;
      }

      else
      {
        v21 = 0;
        while (*(v18 + 172 + 4 * v21) != v20)
        {
          if (v19 == ++v21)
          {
            LODWORD(v21) = *(v18 + 168);
            break;
          }
        }
      }

      if (v21 <= 0xF && v21 == v19)
      {
        *(v18 + 4 * v19 + 172) = v20;
        *(v18 + 168) = v19 + 1;
      }

      PostEventCallback(v18, v20, 3, v11 + 9, *(v11 + 8), v55);
      if (*v11 == a2)
      {
        v7 = 1;
      }

      v57 = v7;
      for (j = *(a1 + 7888); j; j = *(j + 728))
      {
        if (*(j + 116) == *v11)
        {
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          if (ErrorLogLevelForModule >= 7)
          {
            v25 = VRTraceErrorLogLevelToCSTR();
            v26 = *MEMORY[0x277CE5818];
            ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
            if (ErrorLogLevelForModule)
            {
              v27 = *(j + 116);
              *buf = 136315906;
              v60 = v25;
              v61 = 2080;
              v62 = "gckSessionCleanupNodes";
              v63 = 1024;
              v64 = 1357;
              v65 = 1024;
              LODWORD(v66) = v27;
              _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionCleanupNodes closing invalid (%08X)", buf, 0x22u);
            }
          }

          *(j + 84) = 1;
          if (a3)
          {
            *(j + 24) = micro(ErrorLogLevelForModule, v24);
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v28 = VRTraceErrorLogLevelToCSTR();
              v29 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v60 = v28;
                v61 = 2080;
                v62 = "gckSessionCleanupNodes";
                v63 = 1024;
                v64 = 1362;
                _os_log_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionCleanupNodes: timed out, enforcing clean up", buf, 0x1Cu);
              }
            }
          }
        }
      }

      v8 = v56;
      memmove(v11, (v56 + 480 * v6 + 480), 480 * (*(a1 + 112) + ~v6));
      v5 = *(a1 + 112) - 1;
      *(a1 + 112) = v5;
      --v6;
      v7 = v57;
    }

    ++v6;
  }

  while (v6 < v5);
  if (v5 >= 1)
  {
    v30 = v5;
    v31 = (v5 + 3) & 0xFFFFFFFC;
    v32 = xmmword_24E5907E0;
    v33 = xmmword_24E5907F0;
    v34 = vdupq_n_s64(v30 - 1);
    v35 = vdupq_n_s64(4uLL);
    v36 = a1;
    do
    {
      v37 = vmovn_s64(vcgeq_u64(v34, v33));
      if (vuzp1_s16(v37, *v32.i8).u8[0])
      {
        v36[98] = 0;
      }

      if (vuzp1_s16(v37, *&v32).i8[2])
      {
        v36[218] = 0;
      }

      if (vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v34, *&v32))).i32[1])
      {
        v36[338] = 0;
        v36[458] = 0;
      }

      v32 = vaddq_s64(v32, v35);
      v33 = vaddq_s64(v33, v35);
      v36 += 480;
      v31 -= 4;
    }

    while (v31);
  }

  if (!v7)
  {
LABEL_48:
    v38 = *(a1 + 7888);
    if (v38)
    {
      v39 = 0;
      if (a3)
      {
        v40 = -2145779689;
      }

      else
      {
        v40 = 0;
      }

      do
      {
        if (*(v38 + 116) == a2)
        {
          if (!v39)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v41 = VRTraceErrorLogLevelToCSTR();
              v42 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v43 = *(v38 + 116);
                *buf = 136316162;
                v60 = v41;
                v61 = 2080;
                v62 = "gckSessionCleanupNodes";
                v63 = 1024;
                v64 = 1384;
                v65 = 2080;
                v66 = (v38 + 120);
                v67 = 1024;
                v68 = v43;
                _os_log_impl(&dword_24E50C000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Disconnected from %s[%08X]", buf, 0x2Cu);
              }
            }

            v44 = *(a1 + 96);
            v45 = *(v44 + 168);
            v46 = *(v38 + 116);
            if (v45 < 1)
            {
              LODWORD(v47) = 0;
            }

            else
            {
              v47 = 0;
              while (*(v44 + 172 + 4 * v47) != v46)
              {
                if (v45 == ++v47)
                {
                  LODWORD(v47) = *(v44 + 168);
                  break;
                }
              }
            }

            if (v47 <= 0xF && v47 == v45)
            {
              *(v44 + 4 * v45 + 172) = v46;
              *(v44 + 168) = v45 + 1;
            }

            PostEventCallback(v44, v46, 3, (v38 + 120), *(v38 + 376), v40);
          }

          v48 = VRTraceGetErrorLogLevelForModule();
          if (v48 >= 7)
          {
            v50 = VRTraceErrorLogLevelToCSTR();
            v51 = *MEMORY[0x277CE5818];
            v48 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
            if (v48)
            {
              v52 = *(v38 + 116);
              *buf = 136315906;
              v60 = v50;
              v61 = 2080;
              v62 = "gckSessionCleanupNodes";
              v63 = 1024;
              v64 = 1416;
              v65 = 1024;
              LODWORD(v66) = v52;
              _os_log_impl(&dword_24E50C000, v51, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionCleanupNodes closing disconnectID (%d)", buf, 0x22u);
            }
          }

          v39 = 1;
          *(v38 + 84) = 1;
          if (a3)
          {
            *(v38 + 24) = micro(v48, v49);
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v53 = VRTraceErrorLogLevelToCSTR();
              v54 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v60 = v53;
                v61 = 2080;
                v62 = "gckSessionCleanupNodes";
                v63 = 1024;
                v64 = 1421;
                _os_log_impl(&dword_24E50C000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionCleanupNodes: timed out, enforcing clean up", buf, 0x1Cu);
              }
            }

            v39 = 1;
          }
        }

        v38 = *(v38 + 728);
      }

      while (v38);
    }
  }
}

void BWE_EndCurrentSequence(uint64_t a1, double a2)
{
  v2 = a1 + 0x2000;
  v3 = *(a1 + 7888);
  if (v3)
  {
    while (*(v3 + 116) != *(a1 + 8468) || *(v3 + 100) != *(a1 + 8472))
    {
      v3 = *(v3 + 728);
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    v4 = *(v3 + 736);
    if (v4 != 0xFFFFFFFFLL)
    {
      if (*(v3 + 412))
      {
        v5 = 48;
      }

      else
      {
        v5 = 28;
      }

      GCK_BWE_CalcRxEstimate(v4, 0, *(v2 + 284) | 0xFFFF0000, 16 * (*(v2 + 284) & 0xFFF), v5, 1, *(v2 + 284) | 0xFFFF0000, 0, a2, (v3 + 752));
    }
  }

LABEL_5:
  *(v2 + 272) = 0;
}

void __gckSessionRecvTCPMessage_block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315650;
      v3 = v0;
      v4 = 2080;
      v5 = "gckSessionRecvTCPMessage_block_invoke";
      v6 = 1024;
      v7 = 3179;
      _os_log_impl(&dword_24E50C000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionRecvTCPMessage: optionHandler invoked...", &v2, 0x1Cu);
    }
  }
}

void gckNetworkMonitorCallback(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "gckNetworkMonitorCallback";
      v9 = 1024;
      v10 = 5500;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckNetworkMonitorCallback: ...", buf, 0x1Cu);
    }
  }

  CheckInHandleDebug();
}

void gckDisplayNetworkState(uint64_t a1)
{
  values[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8296);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v40 = v4;
        v41 = 2080;
        v42 = "gckDisplayNetworkState";
        v43 = 1024;
        v44 = 1438;
        _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckDisplayNetworkState: ...", buf, 0x1Cu);
      }
    }

    v6 = *MEMORY[0x277CBECE8];
    v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "State:/Network/Interface/[^/]+/Link", 0x8000100u);
    v8 = CFStringCreateWithCString(v6, "State:/Network/Interface/[^/]+/IPv4", 0x8000100u);
    values[0] = v7;
    values[1] = v8;
    v9 = CFArrayCreate(v6, values, 2, MEMORY[0x277CBF128]);
    v10 = SCDynamicStoreCopyMultiple(*(a1 + 8296), 0, v9);
    if (v10)
    {
      v11 = v10;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v40 = v12;
          v41 = 2080;
          v42 = "gckDisplayNetworkState";
          v43 = 1024;
          v44 = 1453;
          _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d first SCDynamicStoreCopyMultiple succeeded", buf, 0x1Cu);
        }
      }

      Count = CFDictionaryGetCount(v11);
      if (Count)
      {
        v15 = Count;
        v35 = v9;
        v36 = v8;
        v37 = v7;
        v34 = &v34;
        v16 = 8 * Count;
        MEMORY[0x28223BE20](Count);
        v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = memset(v17, 170, v16);
        MEMORY[0x28223BE20](v18);
        memset(v17, 170, v16);
        CFDictionaryGetKeysAndValues(v11, v17, v17);
        if (v15 >= 1)
        {
          v20 = 0;
          *&v19 = 136316162;
          v38 = v19;
          do
          {
            v21 = *&v17[8 * v20];
            if (v21)
            {
              Length = CFStringGetLength(*&v17[8 * v20]);
              MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
              v24 = MEMORY[0x28223BE20](MaximumSizeForEncoding);
              v26 = &v34 - v25;
              if (v24)
              {
                memset(&v34 - v25, 170, MaximumSizeForEncoding);
              }

              CStringPtr = CFStringGetCStringPtr(v21, 0x8000100u);
              if (!CStringPtr)
              {
                if (CFStringGetCString(v21, v26, MaximumSizeForEncoding, 0x8000100u))
                {
                  CStringPtr = v26;
                }

                else
                {
                  CStringPtr = 0;
                }
              }

              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v28 = VRTraceErrorLogLevelToCSTR();
                v29 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v38;
                  v40 = v28;
                  v41 = 2080;
                  v42 = "gckDisplayNetworkState";
                  v43 = 1024;
                  v44 = 1482;
                  v45 = 1024;
                  LODWORD(v46[0]) = v20;
                  WORD2(v46[0]) = 2080;
                  *(v46 + 6) = CStringPtr;
                  _os_log_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d key[%d] == %s", buf, 0x2Cu);
                }
              }
            }

            else if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v30 = VRTraceErrorLogLevelToCSTR();
              v31 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = v38;
                v40 = v30;
                v41 = 2080;
                v42 = "gckDisplayNetworkState";
                v43 = 1024;
                v44 = 1484;
                v45 = 1024;
                LODWORD(v46[0]) = v20;
                WORD2(v46[0]) = 2080;
                *(v46 + 6) = "NULL";
                _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d key[%d] == %s", buf, 0x2Cu);
              }
            }

            ++v20;
          }

          while (v15 != v20);
        }

        v9 = v35;
        v8 = v36;
        v7 = v37;
      }

      CFRelease(v11);
    }

    CFRelease(v8);
    CFRelease(v7);
    CFRelease(v9);
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v40 = v32;
      v41 = 2080;
      v42 = "gckDisplayNetworkState";
      v43 = 1024;
      v44 = 1499;
      v45 = 2048;
      v46[0] = a1;
      _os_log_impl(&dword_24E50C000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckDisplayNetworkState: error %p", buf, 0x26u);
    }
  }
}

void freeOptionsList(uint64_t *a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    *a1 = *(i + 8);
    *(i + 8) = 0;
    if (*i)
    {
      free(*i);
    }

    free(i);
  }
}

void OUTLINED_FUNCTION_14_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

void OUTLINED_FUNCTION_23(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x30u);
}

BOOL OUTLINED_FUNCTION_29()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

void sub_24E537B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, __int16 a11, __int16 a12, __int128 a13, uint64_t a14)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        Name = sel_getName(v14);
        v19 = [objc_msgSend_description(v15) UTF8String];
        LODWORD(a9) = 136316162;
        *(&a9 + 4) = v16;
        WORD6(a9) = 2080;
        *(&a9 + 14) = "+[GKConnection externalAddressForSelfConnectionData:]";
        a12 = 1024;
        LODWORD(a13) = 357;
        WORD2(a13) = 2080;
        *(&a13 + 6) = Name;
        HIWORD(a13) = 2080;
        a14 = v19;
        _os_log_error_impl(&dword_24E50C000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d +[GKConnection %s]: Exception thrown: %s", &a9, 0x30u);
      }
    }

    objc_end_catch();
    JUMPOUT(0x24E537B44);
  }

  _Unwind_Resume(exception_object);
}

void sub_24E537CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, __int16 a11, __int16 a12, __int128 a13, uint64_t a14)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        Name = sel_getName(v14);
        v19 = [objc_msgSend_description(v15) UTF8String];
        LODWORD(a9) = 136316162;
        *(&a9 + 4) = v16;
        WORD6(a9) = 2080;
        *(&a9 + 14) = "+[GKConnection externalAddressForCDXSelfConnectionData:]";
        a12 = 1024;
        LODWORD(a13) = 367;
        WORD2(a13) = 2080;
        *(&a13 + 6) = Name;
        HIWORD(a13) = 2080;
        a14 = v19;
        _os_log_error_impl(&dword_24E50C000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d +[GKConnection %s]: Exception thrown: %s", &a9, 0x30u);
      }
    }

    objc_end_catch();
    JUMPOUT(0x24E537CB0);
  }

  _Unwind_Resume(exception_object);
}

void GCKEventListenerForGKConnection(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v6;
      v11 = 2080;
      v12 = "GCKEventListenerForGKConnection";
      v13 = 1024;
      v14 = 158;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKEventListenerForGKConnection", &v9, 0x1Cu);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [a1 addEvent:a3 remotePeer:a2];
}

void OUTLINED_FUNCTION_8_1()
{
  *(v2 - 132) = 2080;
  *(v0 + 14) = v1;
  *(v2 - 122) = 1024;
}

void OUTLINED_FUNCTION_20_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x22u);
}

void OUTLINED_FUNCTION_24_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  _os_log_impl(a1, v22, OS_LOG_TYPE_DEFAULT, a4, va, 0x26u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x22u);
}

id GCKGameConnectivityKitBundle(uint64_t a1, uint64_t a2)
{
  result = GCKGameConnectivityKitBundle_cachedBundle;
  if (!GCKGameConnectivityKitBundle_cachedBundle)
  {
    result = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    GCKGameConnectivityKitBundle_cachedBundle = result;
  }

  return result;
}

void AGPNetworkEventListener(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v7 = a1;
  if (*a3 != 5)
  {
    if (*a3 == 7)
    {
      v10 = *a3;
      v11 = *(a3 + 16);
      v8 = objc_alloc_init(GCKOOBMessage);
      v8->type = 1000;
      v8->band = *(a3 + 20);
      v8->data = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*(a3 + 8) length:{*(a3 + 16), v10, v11}];
      v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:0 error:0];
      LODWORD(v11) = [v9 length];
      *(&v10 + 1) = [v9 bytes];
      AGPSessionEvent([a1 agpSessionRef], a2, &v10);
    }

    AGPSessionEvent([a1 agpSessionRef], a2, a3);
  }
}

void GKNetworkEventListener(void *a1, uint64_t a2, __int128 *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v20 = *a3;
  v21 = *(a3 + 2);
  if (*a3 != 6)
  {
    v13 = 0;
    goto LABEL_9;
  }

  HIDWORD(v21) = 0;
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:*(a3 + 1) length:*(a3 + 4)];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0, v20, v21}];
  v12 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v8 error:0];
  v13 = [v12 decodeObjectOfClasses:v11 forKey:*MEMORY[0x277CCA308]];
  [v12 finishDecoding];

  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = objc_opt_class();
  if (v14 != objc_getClass("GCKOOBMessage") || ![v13 data])
  {
LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  if (v13[2] != 1000)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v23 = v18;
        v24 = 2080;
        v25 = "GKNetworkEventListener";
        v26 = 1024;
        v27 = 1428;
        _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNetworkEventListener: received oobMessage w/unrecognized type...", buf, 0x1Cu);
      }
    }

    goto LABEL_5;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v23 = v16;
      v24 = 2080;
      v25 = "GKNetworkEventListener";
      v26 = 1024;
      v27 = 1420;
      _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNetworkEventListener: received oobMessage of type GCKOOBInternal", buf, 0x1Cu);
    }
  }

  LODWORD(v21) = [objc_msgSend(v13 "data")];
  *(&v20 + 1) = [objc_msgSend(v13 "data")];
  HIDWORD(v21) = [v13 band];
LABEL_19:
  v15 = 1;
LABEL_6:
  if (v15)
  {
LABEL_9:
    [a1 sendCallbacksToDelegate:&v20 remotePeer:a2];
  }

  if (v13)
  {
  }

LABEL_12:
}

void sub_24E549B48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_24E549B80(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf, int a16, __int16 a17, __int16 a18, int a19)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(a1);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315650;
          *(&buf + 4) = v19;
          WORD6(buf) = 2080;
          *(&buf + 14) = "GKNetworkEventListener";
          a18 = 1024;
          a19 = 1407;
          _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNetworkEventListener: received oob event with unrecognized message archive...", &buf, 0x1Cu);
        }
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(a1);
    }

    JUMPOUT(0x24E549930);
  }

  JUMPOUT(0x24E549B78);
}

id NSStringCreateTruncatedStringWithMaxBytesInUTF8Encoding(void *a1)
{
  v1 = [a1 UTF8String];
  if (strlen(v1) >= 41)
  {
    v3 = 40;
    do
    {
      v4 = v1[v3--] & 0xC0;
    }

    while (v4 == 128);
    v5 = objc_alloc(MEMORY[0x277CCACA8]);

    return [v5 initWithBytes:v1 length:v3 + 1 encoding:4];
  }

  else
  {

    return a1;
  }
}

uint64_t gkResolveCallback(uint64_t a1, int a2, uint64_t a3, int a4, const char *a5, const char *a6, unsigned int a7, uint64_t a8, uint64_t a9, void *a10)
{
  v46 = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v18 = MEMORY[0x277CE5818];
  v27 = __rev16(a7);
  if (ErrorLogLevelForModule >= 7)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317698;
      v30 = v19;
      v31 = 2080;
      v32 = "gkResolveCallback";
      v33 = 1024;
      v34 = 4442;
      v35 = 1024;
      *v36 = a1;
      *&v36[4] = 1024;
      *&v36[6] = a2;
      LOWORD(v37) = 1024;
      *(&v37 + 2) = a3;
      HIWORD(v37) = 1024;
      *v38 = a4;
      *&v38[4] = 2080;
      v39 = a5;
      v40 = 2080;
      v41 = a6;
      v42 = 1024;
      v43 = v27;
      v44 = 1024;
      v45 = a8;
      _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ~ DNSServiceResolve callback: Ref=%x, Flags=%x, IFIndex=%d, ErrorType=%d fullname=%s hosttarget=%s port=%u txtLen=%u", buf, 0x54u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "null";
      *buf = 136316674;
      if (a5)
      {
        v24 = a5;
      }

      else
      {
        v24 = "null";
      }

      v30 = v21;
      v31 = 2080;
      v32 = "gkResolveCallback";
      if (a6)
      {
        v23 = a6;
      }

      v33 = 1024;
      v34 = 4444;
      v35 = 2080;
      *v36 = v24;
      *&v36[8] = 2080;
      v37 = v23;
      *v38 = 1024;
      *&v38[2] = v27;
      LOWORD(v39) = 1024;
      *(&v39 + 2) = a4;
      _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ************* fullname: %s, hosttarget: %s port: %u error: %d", buf, 0x3Cu);
    }
  }

  BYTE4(v26) = a2 & 1;
  LODWORD(v26) = a4;
  return [objc_msgSend(a10 "session")];
}

uint64_t gkRegisterCallback(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v35 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136317186;
      v18 = v14;
      v19 = 2080;
      v20 = "gkRegisterCallback";
      v21 = 1024;
      v22 = 3714;
      v23 = 1024;
      v24 = a1;
      v25 = 1024;
      v26 = a2;
      v27 = 1024;
      v28 = a3;
      v29 = 2080;
      v30 = a4;
      v31 = 2080;
      v32 = a5;
      v33 = 2080;
      v34 = a6;
      _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ~ DNSServiceRegister callback: Ref=%x, Flags=%x, ErrorType=%d name=%s regtype=%s domain=%s", &v17, 0x4Cu);
    }
  }

  return [a7 didPublishWithError:a3];
}

uint64_t gkQueryRecordCallback(int a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, int a10, void *a11)
{
  v49 = *MEMORY[0x277D85DE8];
  memset(v48, 170, sizeof(v48));
  if (!if_indextoname(a3, v48))
  {
    v48[0] = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136318210;
      v23 = v17;
      v24 = 2080;
      v25 = "gkQueryRecordCallback";
      v26 = 1024;
      v27 = 3904;
      v28 = 1024;
      v29 = a1;
      v30 = 1024;
      v31 = a2;
      v32 = 1024;
      v33 = a3;
      v34 = 2080;
      v35 = v48;
      v36 = 1024;
      v37 = a4;
      v38 = 2080;
      v39 = a5;
      v40 = 1024;
      v41 = a6;
      v42 = 1024;
      v43 = a7;
      v44 = 1024;
      v45 = a8;
      v46 = 1024;
      v47 = a10;
      _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ~ DNSServiceQueryRecord callback: Ref=%x, Flags=%x, IFIndex=%d (name=[%s]), ErrorType=%d fullname=%s rrtype=%u rrclass=%u rdlen=%u ttl=%u", buf, 0x60u);
    }
  }

  return [objc_msgSend(a11 "session")];
}

uint64_t gkBrowseCallback(int a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v40 = *MEMORY[0x277D85DE8];
  memset(v39, 170, sizeof(v39));
  if (!if_indextoname(a3, v39))
  {
    v39[0] = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136317698;
      v25 = v16;
      v26 = 2080;
      v27 = "gkBrowseCallback";
      v28 = 1024;
      v29 = 4106;
      v30 = 1024;
      *v31 = a1;
      *&v31[4] = 1024;
      *&v31[6] = a2;
      LOWORD(v32) = 1024;
      *(&v32 + 2) = a3;
      HIWORD(v32) = 2080;
      *v33 = v39;
      *&v33[8] = 1024;
      *v34 = a4;
      *&v34[4] = 2080;
      *v35 = a5;
      *&v35[8] = 2080;
      v36 = a6;
      v37 = 2080;
      v38 = a7;
      _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ~ DNSServiceBrowse callback: Ref=%x, Flags=%x, IFIndex=%d (name=[%s]), ErrorType=%d name=%s regtype=%s domain=%s", &v24, 0x5Cu);
    }
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if ((a2 & 2) != 0)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136317186;
        v25 = v22;
        v26 = 2080;
        v27 = "gkBrowseCallback";
        v28 = 1024;
        v29 = 4111;
        v30 = 2080;
        *v31 = a5;
        *&v31[8] = 2080;
        v32 = a6;
        *v33 = 2080;
        *&v33[2] = a7;
        *v34 = 1024;
        *&v34[2] = a3;
        *v35 = 2080;
        *&v35[2] = v39;
        LOWORD(v36) = 1024;
        *(&v36 + 2) = a4;
        _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d browse add: [%s][%s][%s] from %d [%s] (%d)", &v24, 0x50u);
      }
    }

    return [a8 didFindService:a5 fromIF:v39 withError:a4 moreComing:a2 & 1];
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136317186;
        v25 = v19;
        v26 = 2080;
        v27 = "gkBrowseCallback";
        v28 = 1024;
        v29 = 4114;
        v30 = 2080;
        *v31 = a5;
        *&v31[8] = 2080;
        v32 = a6;
        *v33 = 2080;
        *&v33[2] = a7;
        *v34 = 1024;
        *&v34[2] = a3;
        *v35 = 2080;
        *&v35[2] = v39;
        LOWORD(v36) = 1024;
        *(&v36 + 2) = a4;
        _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d browse rmv: [%s][%s][%s] from %d [%s] (%d)", &v24, 0x50u);
      }
    }

    return [a8 didRemoveService:a5 fromIF:v39 withError:a4 moreComing:a2 & 1];
  }
}

void hostnameLookupCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v34 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316930;
      v21 = v15;
      v22 = 2080;
      v23 = "hostnameLookupCallback";
      v24 = 1024;
      v25 = 4317;
      v26 = 1024;
      *v27 = a1;
      *&v27[4] = 1024;
      *&v27[6] = a2;
      v28 = 1024;
      v29 = a3;
      v30 = 1024;
      v31 = a4;
      v32 = 2080;
      v33 = a5;
      _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ~ DNSServiceGetAddrInfo callback: Ref=%x, Flags=%x, IFIndex=%d, ErrorType=%d hostname=%s", buf, 0x3Eu);
    }
  }

  if (*(a6 + 1) == 2)
  {
    LOBYTE(v19) = a2 & 1;
    [objc_msgSend(a8 "session")];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v21 = v17;
      v22 = 2080;
      v23 = "hostnameLookupCallback";
      v24 = 1024;
      v25 = 4320;
      v26 = 2080;
      *v27 = a5;
      _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d hostname lookup got non-AF_INET address for %s", buf, 0x26u);
    }
  }
}

void sub_24E55D324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

uint64_t OUTLINED_FUNCTION_5_1@<X0>(void **a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;
  v4 = *a1;

  return [v4 UTF8String];
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

uint64_t OSPFProcessDynamicOption(_DWORD *a1, unsigned __int8 *a2, timeval *a3)
{
  if (a2)
  {
    v4 = *a2;
    if (v4 == 13)
    {
      if (a2[3] == 1)
      {
        memset(v24, 170, sizeof(v24));
        v23 = 0xAAAAAAAAAAAAAAAALL;
        v10 = a2[2];
        if (v10 <= 5 && ((1 << v10) & 0x36) != 0)
        {
          if (!OSPFReadTimeval((a2 + 4), 4 * a2[1], &v24[1]))
          {
            goto LABEL_33;
          }

          if (!a3)
          {
            a3 = v24;
            if (gettimeofday(v24, 0))
            {
              goto LABEL_33;
            }
          }

          v13 = a3->tv_sec - v24[1].tv_sec;
          v22 = v13;
          v14 = a3->tv_usec - v24[1].tv_usec;
          LODWORD(v23) = v14;
          if (v14 < 0)
          {
            v22 = v13 - 1;
            LODWORD(v23) = v14 + 1000000;
          }

          if (!OSPFWriteTimeval(a2 + 4, 4 * a2[1], &v22))
          {
LABEL_33:
            v9 = 0;
            v6 = 1;
            goto LABEL_34;
          }

          v10 = a2[2];
        }

        if (v10 - 1 <= 4)
        {
          v6 = 0;
          v9 = v10 + 1;
          goto LABEL_34;
        }
      }

      return 0;
    }

    if (v4 != 14 || a2[3] != 1)
    {
      return 0;
    }

    v5 = a2[2];
    if (v5 != 2)
    {
      if (v5 == 1)
      {
        if (a2[1] >= 2u)
        {
          v6 = 0;
          v7 = a1[4];
          v8 = v7 - a1[6];
          a1[6] = v7;
          *(a2 + 1) = bswap32(v7);
          *(a2 + 2) = bswap32(v8);
          v9 = 2;
LABEL_34:
          a2[2] = v9;
          return v6;
        }

        return 1;
      }

      return 0;
    }

    if (a2[1] < 2u)
    {
      return 1;
    }

    v15 = bswap32(*(a2 + 1));
    v16 = bswap32(*(a2 + 2));
    v17 = a1[5];
    if (v15 - v16 != v17)
    {
      if (v15 - v16 <= v17)
      {
        v16 = 0;
        v20 = 0;
        goto LABEL_35;
      }

      v16 = v15 - v17;
    }

    v18 = a1[7];
    v19 = v15 >= v18;
    v20 = v15 - v18;
    if (!v19)
    {
      v20 = 0;
    }

    a1[7] = v15;
    a1[5] = v15;
LABEL_35:
    *(a2 + 1) = bswap32(v16);
    *(a2 + 2) = bswap32(v20);
    a2[2] = 3;
    if (v20)
    {
      v6 = 0;
      a1[9] += v20;
      return v6;
    }

    return 0;
  }

  return 0;
}

uint64_t OSPFReadTimeval(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  result = 0;
  v15 = 0;
  v16 = 0;
  if (a2 >= 0x10 && a1 && a3)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v14.x_public = v6;
    *&v14.x_base = v6;
    *&v14.x_op = v6;
    v12 = bswap64(*a1);
    xdrmem_create(&v14, &v12, 8u, XDR_DECODE);
    v7 = xdr_int64_t(&v14, &v16);
    x_destroy = v14.x_ops->x_destroy;
    if (x_destroy)
    {
      (x_destroy)(&v14);
    }

    *v13 = bswap64(a1[1]);
    xdrmem_create(&v14, v13, 8u, XDR_DECODE);
    v9 = xdr_int64_t(&v14, &v15);
    v10 = v14.x_ops->x_destroy;
    if (v10)
    {
      (v10)(&v14);
    }

    result = 0;
    if (v7)
    {
      if (v9)
      {
        v11 = v15;
        *a3 = v16;
        *(a3 + 8) = v11;
        return 1;
      }
    }
  }

  return result;
}

uint64_t OSPFWriteTimeval(void *a1, unint64_t a2, uint64_t a3)
{
  result = 0;
  v21 = *MEMORY[0x277D85DE8];
  *v18 = 0;
  *v19 = 0;
  if (a1 && a3)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v17.x_public = v6;
    *&v17.x_base = v6;
    *&v17.x_op = v6;
    v7 = *a3;
    v15 = *(a3 + 8);
    v16 = v7;
    xdrmem_create(&v17, v18, 8u, XDR_ENCODE);
    v8 = xdr_int64_t(&v17, &v16);
    x_destroy = v17.x_ops->x_destroy;
    if (x_destroy)
    {
      (x_destroy)(&v17);
    }

    memset(v20, 170, 17);
    if (v8)
    {
      v10 = v16;
      __sprintf_chk(v20, 0, 0x11uLL, "%02X", HIBYTE(v16));
      __sprintf_chk(&v20[2], 0, 0xFuLL, "%02X", BYTE6(v10));
      __sprintf_chk(&v20[4], 0, 0xDuLL, "%02X", BYTE5(v10));
      __sprintf_chk(&v20[6], 0, 0xBuLL, "%02X", BYTE4(v10));
      __sprintf_chk(&v20[8], 0, 9uLL, "%02X", BYTE3(v10));
      __sprintf_chk(&v20[10], 0, 7uLL, "%02X", BYTE2(v10));
      __sprintf_chk(&v20[12], 0, 5uLL, "%02X", BYTE1(v10));
      __sprintf_chk(&v20[14], 0, 3uLL, "%02X", v10);
      v20[16] = 0;
    }

    xdrmem_create(&v17, v19, 8u, XDR_ENCODE);
    v11 = xdr_int64_t(&v17, &v15);
    v12 = v17.x_ops->x_destroy;
    if (v12)
    {
      (v12)(&v17);
    }

    if (v11)
    {
      v13 = v15;
      __sprintf_chk(v20, 0, 0x11uLL, "%02X", HIBYTE(v15));
      __sprintf_chk(&v20[2], 0, 0xFuLL, "%02X", BYTE6(v13));
      __sprintf_chk(&v20[4], 0, 0xDuLL, "%02X", BYTE5(v13));
      __sprintf_chk(&v20[6], 0, 0xBuLL, "%02X", BYTE4(v13));
      __sprintf_chk(&v20[8], 0, 9uLL, "%02X", BYTE3(v13));
      __sprintf_chk(&v20[10], 0, 7uLL, "%02X", BYTE2(v13));
      __sprintf_chk(&v20[12], 0, 5uLL, "%02X", BYTE1(v13));
      __sprintf_chk(&v20[14], 0, 3uLL, "%02X", v13);
      result = 0;
      if (a2 >= 0x10)
      {
        if (v8)
        {
          v14 = bswap64(*v19);
          *a1 = bswap64(*v18);
          a1[1] = v14;
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t OSPFMakeHello(void *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = malloc_type_calloc(1uLL, 0x22uLL, 0x1000040451B5BE8uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0;
  LOWORD(v10) = 0;
  *v8 = 449;
  *(v8 + 2) = 50340352;
  *(v8 + 2) = bswap32(a3);
  *(v8 + 3) = bswap32(a4);
  *(v8 + 8) = bswap32(*(a2 + 12)) >> 16;
  *(v8 + 18) = 268435960;
  *(v8 + 22) = 523;
  *(v8 + 26) = bswap64(*(a2 + 16));
  do
  {
    v10 = CRC16Table[(v8[v9++] ^ v10)] ^ ((v10 & 0xFF00) >> 8);
  }

  while (v9 != 34);
  *(v8 + 3) = bswap32(v10) >> 16;
  *a1 = v8;
  return 34;
}

uint64_t OSPFMakeHeartbeat(void *a1, unsigned int a2, unsigned int a3, int a4, unsigned int a5)
{
  v10 = malloc_type_calloc(1uLL, 0x14uLL, 0x1000040451B5BE8uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  LOWORD(v12) = 0;
  *v10 = 2241;
  *(v10 + 2) = 5120;
  v10[2] = bswap32(a2);
  v10[3] = bswap32(a3);
  *(v10 + 8) = (a4 != 0) << 9;
  *(v10 + 9) = __rev16(a5);
  do
  {
    v12 = CRC16Table[(*(v10 + v11++) ^ v12)] ^ ((v12 & 0xFF00) >> 8);
  }

  while (v11 != 20);
  *(v10 + 3) = bswap32(v12) >> 16;
  *a1 = v10;
  return 20;
}

uint64_t OSPFMakeDD(Bytef **a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  v10 = *(a2 + 12);
  v11 = *(a2 + 16);
  if (v10 < 1)
  {
    v12 = 0;
    v16 = 18;
  }

  else
  {
    v12 = 0;
    v13 = 2;
    v14 = *(a2 + 12);
    v15 = *(a2 + 16);
    do
    {
      if (*v15 != a5)
      {
        v13 += *(v15 + 8) + 8 * *(v15 + 284) + 9;
        ++v12;
      }

      v15 += 480;
      --v14;
    }

    while (v14);
    v16 = (v13 + 16);
  }

  v17 = malloc_type_calloc(1uLL, v16, 0x1000040451B5BE8uLL);
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v17;
  v36 = a6;
  v37 = v16;
  v38 = a1;
  *v17 = 705;
  *(v17 + 1) = bswap32(v16) >> 16;
  *(v17 + 2) = bswap32(a4);
  *(v17 + 3) = bswap32(a5);
  *(v17 + 8) = bswap32(v12) >> 16;
  if (v10 >= 1)
  {
    v19 = 0;
    v20 = v17 + 18;
    v21 = (v11 + 292);
    do
    {
      v22 = v11 + 480 * v19;
      if (*v22 != a5)
      {
        v23 = *(v22 + 284);
        *v20 = bswap32(*v22);
        v20[2] = bswap32(*(v22 + 272)) >> 16;
        v24 = *(v22 + 8);
        *(v20 + 6) = v24;
        v25 = v20 + 7;
        memcpy(v20 + 7, (v22 + 9), v24);
        v26 = &v25[*(v22 + 8)];
        *v26 = bswap32(v23) >> 16;
        v20 = v26 + 2;
        if (v23 >= 1)
        {
          v27 = v21;
          do
          {
            *v20 = bswap32(*(v27 - 1));
            v28 = *v27;
            v27 += 3;
            *(v20 + 1) = bswap32(v28);
            v20 += 4;
            --v23;
          }

          while (v23);
        }
      }

      ++v19;
      v21 += 120;
    }

    while (v19 != v10);
  }

  if (v36)
  {
    v40 = 0xAAAAAAAAAAAAAAAALL;
    v39 = -1431655766;
    v29 = v37;
    v30 = v38;
    if (!ospfTryCompressPacket(&v40, &v39, v18, v37))
    {
      free(v18);
      v18 = v40;
      v29 = v39;
    }
  }

  else
  {
    v29 = v37;
    v30 = v38;
  }

  if (v29 < 1)
  {
    v31 = 0;
  }

  else
  {
    LOWORD(v31) = 0;
    v32 = v29;
    v33 = v18;
    do
    {
      v34 = *v33++;
      v31 = CRC16Table[(v34 ^ v31)] ^ ((v31 & 0xFF00) >> 8);
      --v32;
    }

    while (v32);
  }

  *(v18 + 3) = bswap32(v31) >> 16;
  *v30 = v18;
  return v29;
}

BOOL ospfTryCompressPacket(Bytef **a1, unsigned int *a2, uint64_t a3, signed int a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a4 - 16;
  v8 = compressBound(a4 - 16);
  destLen = v8;
  v9 = malloc_type_malloc(v8 + 18, 0x1000040451B5BE8uLL);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316930;
      v27 = v10;
      v28 = 2080;
      v29 = "ospfTryCompressPacket";
      v30 = 1024;
      v31 = 628;
      v32 = 1024;
      *v33 = 16;
      *&v33[4] = 1024;
      *&v33[6] = 2;
      *v34 = 2048;
      *&v34[2] = v8;
      v35 = 1024;
      v36 = v7;
      v37 = 2048;
      v38 = v8 + 18;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ospfTryCompressPacket: %u + %u + %lu(%d) = %lu", buf, 0x42u);
    }
  }

  if (!v9)
  {
    return 1;
  }

  if (compress2(v9 + 18, &destLen, (a3 + 16), v7, 9) || (v12 = destLen, destLen + 2 >= v7))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a3 + 1);
        v23 = "OSPF";
        if (v22 == 3)
        {
          v23 = "LSA";
        }

        *buf = 136316418;
        v27 = v20;
        v28 = 2080;
        v29 = "ospfTryCompressPacket";
        if (v22 == 2)
        {
          v23 = "DD";
        }

        v30 = 1024;
        v31 = 645;
        v32 = 2080;
        *v33 = v23;
        *&v33[8] = 1024;
        *v34 = v7;
        *&v34[4] = 1024;
        *&v34[6] = destLen;
        _os_log_impl(&dword_24E50C000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s compressed body %u => %u+2 (not performed)", buf, 0x32u);
      }
    }

    free(v9);
    return 1;
  }

  *v9 = *a3;
  *(v9 + 8) = bswap32(v7) >> 16;
  *(v9 + 2) = 256;
  v13 = v12 + 18;
  *(v9 + 1) = bswap32(v13) >> 16;
  *a1 = v9;
  *a2 = v13;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v17 = "OSPF";
    v18 = *(a3 + 1);
    v19 = *a2;
    if (v18 == 3)
    {
      v17 = "LSA";
    }

    *buf = 136316930;
    v27 = v14;
    v28 = 2080;
    v29 = "ospfTryCompressPacket";
    if (v18 == 2)
    {
      v17 = "DD";
    }

    v30 = 1024;
    v31 = 642;
    v32 = 2080;
    *v33 = v17;
    *&v33[8] = 1024;
    *v34 = v7;
    *&v34[4] = 1024;
    *&v34[6] = v12;
    v35 = 1024;
    v36 = a4;
    v37 = 1024;
    LODWORD(v38) = v19;
    _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s compressed body %u => %u+2, total size: %d => %d", buf, 0x3Eu);
  }

  return 0;
}

uint64_t OSPFMakeLSA(Bytef **a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  v6 = *(a2 + 16);
  if (v6 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  v12 = *(a2 + 12);
  v13 = *(a2 + 24);
  v14 = 4;
  v15 = *(a2 + 16);
  v16 = v13;
  do
  {
    if (*v16 != a5 && *(v16 + 276) && *(v16 + 280) != a5)
    {
      v14 += *(v16 + 8) + 8 * *(v16 + 284) + 9;
      ++v11;
    }

    v16 += 480;
    --v15;
  }

  while (v15);
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = (v14 + 16);
  v18 = malloc_type_calloc(1uLL, v17, 0x1000040451B5BE8uLL);
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = v18;
  v36 = a6;
  v37 = v17;
  v38 = a1;
  v20 = 0;
  *v18 = 961;
  *(v18 + 1) = bswap32(v17) >> 16;
  *(v18 + 2) = bswap32(a4);
  *(v18 + 3) = bswap32(a5);
  *(v18 + 8) = __rev16(v12);
  *(v18 + 9) = bswap32(v11) >> 16;
  v21 = v18 + 20;
  v22 = (v13 + 292);
  do
  {
    v23 = v13 + 480 * v20;
    if (*v23 != a5)
    {
      if (*(v23 + 276))
      {
        if (*(v23 + 280) != a5)
        {
          v24 = *(v23 + 284);
          *v21 = bswap32(*v23);
          v21[2] = bswap32(*(v23 + 272)) >> 16;
          v25 = *(v23 + 8);
          *(v21 + 6) = v25;
          v26 = v21 + 7;
          memcpy(v21 + 7, (v23 + 9), v25);
          v27 = &v26[*(v23 + 8)];
          *v27 = bswap32(v24) >> 16;
          v21 = v27 + 2;
          if (v24 >= 1)
          {
            v28 = v22;
            do
            {
              *v21 = bswap32(*(v28 - 1));
              v29 = *v28;
              v28 += 3;
              *(v21 + 1) = bswap32(v29);
              v21 += 4;
              --v24;
            }

            while (v24);
          }
        }
      }
    }

    ++v20;
    v22 += 120;
  }

  while (v20 != v6);
  if (v36)
  {
    v40 = 0xAAAAAAAAAAAAAAAALL;
    v39 = -1431655766;
    v30 = v37;
    if (!ospfTryCompressPacket(&v40, &v39, v19, v37))
    {
      free(v19);
      v19 = v40;
      v30 = v39;
    }
  }

  else
  {
    v30 = v37;
  }

  if (v30 < 1)
  {
    v31 = 0;
  }

  else
  {
    LOWORD(v31) = 0;
    v32 = v30;
    v33 = v19;
    do
    {
      v34 = *v33++;
      v31 = CRC16Table[(v34 ^ v31)] ^ ((v31 & 0xFF00) >> 8);
      --v32;
    }

    while (v32);
  }

  *(v19 + 3) = bswap32(v31) >> 16;
  *v38 = v19;
  return v30;
}

uint64_t OSPFMakeLSAACK(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v9 = malloc_type_calloc(1uLL, 0x12uLL, 0x1000040451B5BE8uLL);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = 0;
  LOWORD(v11) = 0;
  *v9 = 301991105;
  v9[2] = bswap32(a4);
  v9[3] = bswap32(a5);
  *(v9 + 8) = bswap32(*(a2 + 12)) >> 16;
  do
  {
    v11 = CRC16Table[(*(v9 + v10++) ^ v11)] ^ ((v11 & 0xFF00) >> 8);
  }

  while (v10 != 18);
  *(v9 + 3) = bswap32(v11) >> 16;
  *a1 = v9;
  return 18;
}

uint64_t OSPFMakeData(char *a1, int a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, unsigned int *a7, uint64_t a8, uint64_t (*a9)(uint64_t, unsigned int *, uint64_t, char *, void, void, void, void, unsigned __int16), uint64_t a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13)
{
  v13 = a8;
  v14 = a7;
  v19 = a1;
  v20 = &a1[4 * a8];
  if (a9)
  {
    v21 = a9(a10, a7, a8, v20 + 12, (1488 - 4 * a8), *a3, *(a3 + 8), a11, __PAIR16__(a13, a12));
    if (v21 < 0)
    {
      v22 = 0;
      v23 = 0;
      *(v19 + 2) = 0;
      v24 = v19 + 6;
LABEL_18:
      *v24 = bswap32(v23) >> 16;
      return v22;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = (4 * v13 + *(a3 + 8) + v21 + 12);
  if (v22 <= a2)
  {
    *v19 = v13 & 0xF | 0xC0;
    if (a5)
    {
      v25 = 7;
    }

    else
    {
      v25 = 5;
    }

    v19[1] = v25;
    *(v19 + 1) = bswap32(v22) >> 16;
    *(v19 + 2) = bswap32(a6);
    if (v13 >= 1)
    {
      v26 = v19 + 12;
      v27 = v13;
      do
      {
        v28 = *v14++;
        *v26++ = bswap32(v28);
        --v27;
      }

      while (v27);
    }

    memcpy(&v20[v21 + 12], *a3, *(a3 + 8));
    *(v19 + 1) = 0;
    v24 = v19 + 6;
    if (v22 < 1)
    {
      v23 = 0;
    }

    else
    {
      LOWORD(v23) = 0;
      v29 = v22;
      do
      {
        v30 = *v19++;
        v23 = CRC16Table[(v30 ^ v23)] ^ ((v23 & 0xFF00) >> 8);
        --v29;
      }

      while (v29);
    }

    goto LABEL_18;
  }

  return 0xFFFFFFFFLL;
}

uint64_t OSPFMakeAudio(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int *a6, unsigned int a7)
{
  v7 = *(a3 + 8) + 4 * a7 + 12;
  if (v7 > a2)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = a7 & 0xF | 0xC0;
  *(a1 + 1) = 6;
  *(a1 + 2) = bswap32(v7) >> 16;
  *(a1 + 8) = bswap32(a5);
  if (a7 >= 1)
  {
    v9 = (a1 + 12);
    v10 = a7;
    do
    {
      v11 = *a6++;
      *v9++ = bswap32(v11);
      --v10;
    }

    while (v10);
  }

  memcpy((a1 + 4 * a7 + 12), *a3, *(a3 + 8));
  *(a1 + 4) = 0;
  if (v7 < 1)
  {
    v12 = 0;
  }

  else
  {
    LOWORD(v12) = 0;
    v13 = a1;
    v14 = v7;
    do
    {
      v15 = *v13++;
      v12 = CRC16Table[(v15 ^ v12)] ^ ((v12 & 0xFF00) >> 8);
      --v14;
    }

    while (v14);
  }

  *(a1 + 6) = bswap32(v12) >> 16;
  return v7;
}

uint64_t OSPFGetLength(uint64_t a1, unsigned int a2)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a2 <= 15)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0xFFFFFFFFLL;
    }

    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v33 = 136315650;
    v34 = v2;
    v35 = 2080;
    v36 = "OSPFGetLength";
    v37 = 1024;
    v38 = 921;
    v4 = " [%s] %s:%d OSPFGetLength: buffer is too short...";
LABEL_5:
    _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, v4, &v33, 0x1Cu);
    return 0xFFFFFFFFLL;
  }

  v6 = (*a1 & 0xF0) != 0xC0 || (*a1 & 0xF) == 0;
  if (v6 || *(a1 + 1) - 1 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  result = bswap32(*(a1 + 2)) >> 16;
  if (result > a2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v33 = 136315650;
    v34 = v8;
    v35 = 2080;
    v36 = "OSPFGetLength";
    v37 = 1024;
    v38 = 941;
    v4 = " [%s] %s:%d OSPFGetLength: Length doesn't fit in buffer ...";
    goto LABEL_5;
  }

  LOWORD(v9) = 0;
  v10 = *(a1 + 6);
  *(a1 + 6) = 0;
  v11 = a2;
  v12 = a1;
  do
  {
    v13 = *v12++;
    v9 = CRC16Table[(v13 ^ v9)] ^ ((v9 & 0xFF00) >> 8);
    --v11;
  }

  while (v11);
  v14 = bswap32(v9) >> 16;
  *(a1 + 6) = v14;
  if (v14 != v10)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v16 = MEMORY[0x277CE5818];
    if (ErrorLogLevelForModule >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315650;
        v34 = v17;
        v35 = 2080;
        v36 = "OSPFGetLength";
        v37 = 1024;
        v38 = 948;
        _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFGetLength: bad checksum...", &v33, 0x1Cu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315906;
        v34 = v19;
        v35 = 2080;
        v36 = "OSPFGetLength";
        v37 = 1024;
        v38 = 949;
        v39 = 1024;
        v40 = v10;
        _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFGetLength: checksum == %04X NO...", &v33, 0x22u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 6);
        v33 = 136315906;
        v34 = v21;
        v35 = 2080;
        v36 = "OSPFGetLength";
        v37 = 1024;
        v38 = 950;
        v39 = 1024;
        v40 = v23;
        _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFGetLength: shouldbe == %04X OK...", &v33, 0x22u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 1);
        v33 = 136315906;
        v34 = v24;
        v35 = 2080;
        v36 = "OSPFGetLength";
        v37 = 1024;
        v38 = 951;
        v39 = 1024;
        v40 = v26;
        _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFGetLength: pkttype == %d ...", &v33, 0x22u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v29 = bswap32(*(a1 + 4)) >> 16;
        v33 = 136315906;
        v34 = v27;
        v35 = 2080;
        v36 = "OSPFGetLength";
        v37 = 1024;
        v38 = 952;
        v39 = 1024;
        v40 = v29;
        _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFGetLength: flags == %04X ...", &v33, 0x22u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v32 = bswap32(*(a1 + 2)) >> 16;
        v33 = 136315906;
        v34 = v30;
        v35 = 2080;
        v36 = "OSPFGetLength";
        v37 = 1024;
        v38 = 953;
        v39 = 1024;
        v40 = v32;
        _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFGetLength: length == %d ...", &v33, 0x22u);
      }
    }

    *(a1 + 6) = v10;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t OSPFParse_ParsePacketHeader(_WORD *a1, uint64_t a2, unsigned int **a3, _DWORD *a4)
{
  if (!a1)
  {
    OSPFParse_ParsePacketHeader_cold_7();
    return v23;
  }

  v4 = a2;
  if (a2 <= 15)
  {
    OSPFParse_ParsePacketHeader_cold_6(a2);
    return v23;
  }

  v8 = 0;
  LOWORD(v9) = 0;
  v10 = a1[3];
  a1[3] = 0;
  do
  {
    v9 = CRC16Table[(*(a1 + v8++) ^ v9)] ^ ((v9 & 0xFF00) >> 8);
  }

  while (a2 != v8);
  a1[3] = v10;
  if (__rev16(v10) != v9)
  {
    return 0;
  }

  if ((*a1 & 0xF) == 0)
  {
    OSPFParse_ParsePacketHeader_cold_5();
    return v23;
  }

  v11 = 4 * (*a1 & 0xF);
  v12 = v11 + 12;
  if (v11 + 12 > a2)
  {
    OSPFParse_ParsePacketHeader_cold_4(a2);
    return v23;
  }

  v13 = malloc_type_malloc(v11 + 12, 0x1000040451B5BE8uLL);
  memcpy(v13, a1, v12);
  v14 = *v13;
  v15 = *(v13 + 1);
  if ((*v13 & 0xF0) == 0xC0)
  {
    if ((v15 - 10) <= 0xFFFFFFF6)
    {
      OSPFParse_ParsePacketHeader_cold_3();
LABEL_31:
      v16 = v22;
      v13 = v23;
LABEL_22:
      free(v13);
      return v16;
    }
  }

  else if (v15 != 1)
  {
    OSPFParse_ParsePacketHeader_cold_1(v13, &v22, &v23);
    goto LABEL_31;
  }

  v17 = *(v13 + 1);
  *(v13 + 3) = bswap32(*(v13 + 3)) >> 16;
  v18 = bswap32(v17) >> 16;
  *(v13 + 1) = v18;
  if (v18 != v4)
  {
    OSPFParse_ParsePacketHeader_cold_2();
    goto LABEL_31;
  }

  *(v13 + 2) = bswap32(*(v13 + 2)) >> 16;
  v13[2] = bswap32(v13[2]);
  v19 = v14 & 0xF;
  if (v19)
  {
    for (i = 0; i < v19; ++i)
    {
      v13[i + 3] = bswap32(v13[i + 3]);
    }
  }

  if (a3)
  {
    *a3 = v13;
    v13 = 0;
  }

  if (a4)
  {
    *a4 = v12;
  }

  v16 = 1;
  if (v13)
  {
    goto LABEL_22;
  }

  return v16;
}

BOOL _OSPFParse_ParseDecompress(uint64_t a1, const Bytef *a2, unsigned int a3, Bytef **a4, _DWORD *a5, _BYTE *a6)
{
  v51 = *MEMORY[0x277D85DE8];
  if (!a2 || !a4 || !a5 || !a6)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315650;
    v38 = v11;
    v39 = 2080;
    v40 = "_OSPFParse_ParseDecompress";
    v41 = 1024;
    v42 = 1139;
    v13 = " [%s] %s:%d Invalid parameter...";
    goto LABEL_11;
  }

  *a6 = 0;
  if ((*(a1 + 1) & 0xFE) != 2 || (*(a1 + 4) & 1) == 0)
  {
    return 1;
  }

  if (a3 > 2)
  {
    v19 = bswap32(*a2) >> 16;
    destLen = v19;
    v20 = malloc_type_malloc(v19, 0x100004077774924uLL);
    if (v20)
    {
      v21 = v20;
      v22 = a3 - 2;
      v23 = uncompress(v20, &destLen, a2 + 2, v22);
      v24 = destLen;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v23 || v24 != v19)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v32 = VRTraceErrorLogLevelToCSTR();
          v33 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v34 = *(a1 + 1);
            v35 = "OSPF";
            if (v34 == 3)
            {
              v35 = "LSA";
            }

            *buf = 136316674;
            v38 = v32;
            v39 = 2080;
            v40 = "_OSPFParse_ParseDecompress";
            if (v34 == 2)
            {
              v35 = "DD";
            }

            v41 = 1024;
            v42 = 1172;
            v43 = 2080;
            v44 = v35;
            v45 = 1024;
            v46 = destLen;
            v47 = 1024;
            v48 = v19;
            v49 = 1024;
            v50 = v23;
            _os_log_impl(&dword_24E50C000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s uncompressed body (real %u =? %u) failed (%d)", buf, 0x38u);
          }
        }

        free(v21);
        return 0;
      }

      if (ErrorLogLevelForModule >= 7)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(a1 + 1);
          v29 = "OSPF";
          if (v28 == 3)
          {
            v29 = "LSA";
          }

          *buf = 136316674;
          v38 = v26;
          v39 = 2080;
          v40 = "_OSPFParse_ParseDecompress";
          if (v28 == 2)
          {
            v29 = "DD";
          }

          v41 = 1024;
          v42 = 1176;
          v43 = 2080;
          v44 = v29;
          v45 = 1024;
          v46 = v22;
          v47 = 1024;
          v48 = destLen;
          v49 = 1024;
          v50 = v19;
          _os_log_impl(&dword_24E50C000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s uncompressed body %u+2 => %u (stated %u)", buf, 0x38u);
        }
      }

      *a4 = v21;
      *a5 = destLen;
      result = 1;
      *a6 = 1;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 0;
      }

      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x277CE5818];
      result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        *buf = 136315906;
        v38 = v30;
        v39 = 2080;
        v40 = "_OSPFParse_ParseDecompress";
        v41 = 1024;
        v42 = 1166;
        v43 = 1024;
        LODWORD(v44) = v19;
        v13 = " [%s] %s:%d Failed to allocate packet size=%d";
        v14 = v31;
        v15 = 34;
        goto LABEL_12;
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 136315650;
      v38 = v17;
      v39 = 2080;
      v40 = "_OSPFParse_ParseDecompress";
      v41 = 1024;
      v42 = 1153;
      v13 = " [%s] %s:%d Size is too small...";
LABEL_11:
      v14 = v12;
      v15 = 28;
LABEL_12:
      _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      return 0;
    }
  }

  return result;
}

BOOL _OSPFParse_ParseExtractOptions(uint64_t a1, unsigned __int8 *a2, unsigned int a3, void *a4, _DWORD *a5, _DWORD *a6)
{
  v6 = a1;
  v94 = *MEMORY[0x277D85DE8];
  *a6 = -1;
  if (a3 <= 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v6 + 1);
        *buf = 136315906;
        v77 = v7;
        v78 = 2080;
        v79 = "ospfVerifyOptions";
        v80 = 1024;
        v81 = 1027;
        v82 = 1024;
        v83 = v9;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VerifyOptions: msg: %d: missing options info", buf, 0x22u);
      }
    }

    v10 = 1;
    goto LABEL_16;
  }

  if (*a2 != 248)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(v6 + 1);
        v20 = *a2;
        *buf = 136316162;
        v77 = v17;
        v78 = 2080;
        v79 = "ospfVerifyOptions";
        v80 = 1024;
        v81 = 1032;
        v82 = 1024;
        v83 = v19;
        v84 = 1024;
        v85 = v20;
        _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VerifyOptions: msg: %d: expecting options info, got %d", buf, 0x28u);
      }
    }

    v10 = 2;
    goto LABEL_16;
  }

  v13 = __rev16(*(a2 + 1));
  if (v13 > a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v6 + 1);
        *buf = 136316418;
        v77 = v14;
        v78 = 2080;
        v79 = "ospfVerifyOptions";
        v80 = 1024;
        v81 = 1037;
        v82 = 1024;
        v83 = v16;
        v84 = 1024;
        v85 = v13;
        v86 = 1024;
        v87 = a3;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VerifyOptions: msg: %d: body offset %d > %d", buf, 0x2Eu);
      }
    }

    v10 = 3;
    goto LABEL_16;
  }

  v28 = a2 + 4;
  if (a2[1])
  {
    v29 = 0;
    v30 = a2 + 4;
    while (1)
    {
      v31 = v30 - a2;
      v32 = v13 - (v30 - a2);
      if (v32 <= 3)
      {
        v48 = a2[1];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v49 = VRTraceErrorLogLevelToCSTR();
          v50 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v51 = *(a1 + 1);
            *buf = 136316418;
            v77 = v49;
            v78 = 2080;
            v79 = "ospfVerifyOptions";
            v80 = 1024;
            v81 = 1049;
            v82 = 1024;
            v83 = v51;
            v84 = 1024;
            v85 = v29;
            v6 = a1;
            v86 = 1024;
            v87 = v48;
            _os_log_impl(&dword_24E50C000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VerifyOptions: msg: %d: option %d of %d: not enough option header", buf, 0x2Eu);
            v10 = 4;
            goto LABEL_16;
          }
        }

        v10 = 4;
        goto LABEL_52;
      }

      v33 = 4 * v30[1] + 4;
      if (v32 < v33)
      {
        break;
      }

      v30 += v33;
      if (a2[1] == ++v29)
      {
        v6 = a1;
        goto LABEL_28;
      }
    }

    v52 = a2[1];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      v54 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v55 = *(a1 + 1);
        *buf = 136317186;
        v77 = v53;
        v78 = 2080;
        v79 = "ospfVerifyOptions";
        v80 = 1024;
        v81 = 1055;
        v82 = 1024;
        v83 = v55;
        v84 = 1024;
        v85 = v29;
        v6 = a1;
        v86 = 1024;
        v87 = v52;
        v88 = 1024;
        v89 = v31;
        v90 = 1024;
        v91 = v13;
        v92 = 1024;
        v93 = v33;
        _os_log_impl(&dword_24E50C000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VerifyOptions: msg: %d: option %d of %d: @%d/%d, size=%d", buf, 0x40u);
        v10 = 5;
        goto LABEL_16;
      }
    }

    v10 = 5;
LABEL_52:
    v6 = a1;
LABEL_16:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x277CE5818];
      result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v24 = *(v6 + 1);
      *buf = 136316162;
      v77 = v21;
      v78 = 2080;
      v79 = "_OSPFParse_ParseExtractOptions";
      v80 = 1024;
      v81 = 1193;
      v82 = 1024;
      v83 = v24;
      v84 = 1024;
      v85 = v10;
      _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d msg: %d: options verification failed (%d)", buf, 0x28u);
    }

    return 0;
  }

  v30 = a2 + 4;
LABEL_28:
  v34 = v30 - a2;
  if (v30 - a2 != v13)
  {
    v44 = a2[1];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v45 = VRTraceErrorLogLevelToCSTR();
      v46 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v47 = *(v6 + 1);
        *buf = 136316674;
        v77 = v45;
        v78 = 2080;
        v79 = "ospfVerifyOptions";
        v80 = 1024;
        v81 = 1063;
        v82 = 1024;
        v83 = v47;
        v84 = 1024;
        v85 = v44;
        v86 = 1024;
        v87 = v34;
        v88 = 1024;
        v89 = v13;
        _os_log_impl(&dword_24E50C000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VerifyOptions: msg: %d: %d options used %d bytes != %d offset", buf, 0x34u);
      }
    }

    v10 = 6;
    goto LABEL_16;
  }

  v35 = a2[1];
  v36 = malloc_type_malloc(8 * v35, 0x2004093837F09uLL);
  if (v36)
  {
    v37 = v36;
    v38 = v35;
    if (!v35)
    {
LABEL_39:
      *a5 = v38;
      *a4 = v36;
      result = 1;
      *a6 = v13;
      return result;
    }

    v39 = v6;
    v40 = 0;
    v41 = a3 - 4;
    v42 = *(v39 + 4);
    while (1)
    {
      *(v36 + v40) = v28;
      if ((v42 & 2) == 0 || !v41)
      {
        goto LABEL_59;
      }

      if (v41 <= 3)
      {
        v56 = v38;
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        LODWORD(v38) = v56;
        if (ErrorLogLevelForModule >= 7)
        {
          v58 = VRTraceErrorLogLevelToCSTR();
          v59 = *MEMORY[0x277CE5818];
          v60 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
          LODWORD(v38) = v56;
          if (v60)
          {
            v61 = *(v39 + 1);
            *buf = 136316162;
            v77 = v58;
            v78 = 2080;
            v79 = "ospfParseOption";
            v80 = 1024;
            v81 = 980;
            v82 = 1024;
            v83 = v61;
            v84 = 1024;
            v85 = v41;
            _os_log_impl(&dword_24E50C000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ParseOption: msg: %d: option too small: %d", buf, 0x28u);
            LODWORD(v38) = v56;
          }
        }

LABEL_59:
        v62 = v38;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v63 = VRTraceErrorLogLevelToCSTR();
          v64 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v77 = v63;
            v78 = 2080;
            v79 = "_OSPFParse_ParseExtractOptions";
            v80 = 1024;
            v81 = 1211;
            v82 = 1024;
            v83 = v40;
            v84 = 1024;
            v85 = v62;
            v65 = " [%s] %s:%d expecting option %d of %d";
            v66 = v64;
            goto LABEL_68;
          }
        }

        goto LABEL_70;
      }

      v43 = 4 * v28[1] + 4;
      if (v41 < v43)
      {
        break;
      }

      if (!*v28)
      {
        goto LABEL_70;
      }

      if (*v28 < 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v71 = VRTraceErrorLogLevelToCSTR();
          v72 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v73 = *(v39 + 1);
            v74 = *v28;
            *buf = 136316162;
            v77 = v71;
            v78 = 2080;
            v79 = "ospfParseOption";
            v80 = 1024;
            v81 = 1001;
            v82 = 1024;
            v83 = v73;
            v84 = 1024;
            v85 = v74;
            v65 = " [%s] %s:%d ParseOption: msg: %d: unsupported required option: %d";
            v66 = v72;
LABEL_68:
            v70 = 40;
LABEL_69:
            _os_log_impl(&dword_24E50C000, v66, OS_LOG_TYPE_DEFAULT, v65, buf, v70);
            goto LABEL_70;
          }
        }

        goto LABEL_70;
      }

      v28 += v43;
      ++v40;
      v41 -= v43;
      if (v38 == v40)
      {
        goto LABEL_39;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v67 = VRTraceErrorLogLevelToCSTR();
      v68 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v69 = *(v39 + 1);
        *buf = 136316418;
        v77 = v67;
        v78 = 2080;
        v79 = "ospfParseOption";
        v80 = 1024;
        v81 = 988;
        v82 = 1024;
        v83 = v69;
        v84 = 1024;
        v85 = v43;
        v86 = 1024;
        v87 = v41;
        v65 = " [%s] %s:%d ParseOption: msg: %d: incorrect option size: %d > %d";
        v66 = v68;
        v70 = 46;
        goto LABEL_69;
      }
    }

LABEL_70:
    free(v37);
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 0;
  }

  VRTraceErrorLogLevelToCSTR();
  result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
  if (result)
  {
    _OSPFParse_ParseExtractOptions_cold_1();
    return 0;
  }

  return result;
}

uint64_t OSPFParse(unsigned int **a1, void *a2, _WORD *a3, uint64_t a4, Bytef **a5, uint64_t a6)
{
  v8 = a4;
  v40 = *MEMORY[0x277D85DE8];
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v32 = -1431655766;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v12 = 0xFFFFFFFFLL;
  v27 = -1;
  v28 = 0;
  if (!OSPFParse_ParsePacketHeader(a3, a4, &v30, &v27) || !v30)
  {
    return v12;
  }

  if (!a2 && (v30[1] & 1) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v35 = v13;
        v36 = 2080;
        v37 = "OSPFParse";
        v38 = 1024;
        v39 = 1523;
        _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Flow control: returning -1 when message is compressed and ppOSPFBody is NULL", buf, 0x1Cu);
      }
    }

    goto LABEL_15;
  }

  v33 = a3 + v27;
  v32 = v8 - v27;
  if (!_OSPFParse_ParseDecompress(v30, v33, v8 - v27, &v33, &v32, &v31))
  {
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v15 = v33;
  if (v31)
  {
    v16 = v33;
  }

  else
  {
    v16 = 0;
  }

  if (*(v30 + 1) == 1)
  {
    if (v32 <= 1)
    {
LABEL_16:
      v18 = 0;
LABEL_17:
      v19 = -1;
LABEL_18:
      v27 = v19;
      goto LABEL_19;
    }

    v15 = v33 + 2;
    v17 = bswap32(*v33) >> 16;
    v33 += 2;
    v32 -= 2;
  }

  else
  {
    LOWORD(v17) = 0;
  }

  if ((v30[1] & 2) == 0)
  {
LABEL_33:
    if (a5)
    {
      if (v16)
      {
        v22 = 0;
      }

      else
      {
        v22 = v15;
      }

      *a5 = v22;
    }

    if (a6)
    {
      (*(a6 + 16))(a6, v29, v28);
    }

    v18 = 0;
    if (!a2)
    {
      v24 = 0;
      goto LABEL_71;
    }

    v27 = -1;
    v20 = v30;
    v23 = *(v30 + 1);
    if (v23 <= 4)
    {
      if (*(v30 + 1) > 2u)
      {
        if (v23 == 3)
        {
          v25 = _OSPFParse_ParsePacketLSA(v30, v33, v32, &v27);
        }

        else
        {
          if (v23 != 4)
          {
            goto LABEL_20;
          }

          v25 = _OSPFParse_ParsePacketLSAAck(v33, v32, &v27);
        }
      }

      else
      {
        if (v23 == 1)
        {
          v18 = _OSPFParse_ParsePacketHello(v17, v29, v28);
          if ((*v30 & 0xF0) != 0xC0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v26 = VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                OSPFParse_cold_1(v26);
              }
            }

            v24 = 1;
LABEL_69:
            if (*(v30 + 1) != 9 && !v18)
            {
              goto LABEL_17;
            }

LABEL_71:
            if (a1)
            {
              *a1 = v30;
              v30 = 0;
            }

            if (a2)
            {
              *a2 = v18;
              v18 = 0;
            }

            if (v24)
            {
              v19 = 0;
            }

            else
            {
              v19 = v8;
            }

            goto LABEL_18;
          }

LABEL_68:
          v24 = 0;
          goto LABEL_69;
        }

        if (v23 != 2)
        {
          goto LABEL_20;
        }

        v25 = _OSPFParse_ParsePacketDD(v30, v33, v32, &v27);
      }
    }

    else
    {
      if (*(v30 + 1) <= 6u)
      {
        if (v23 != 5)
        {
          if (v23 != 6)
          {
            goto LABEL_20;
          }

          v25 = _OSPFParse_ParsePacketAudio(v33, v32, &v27);
          goto LABEL_67;
        }
      }

      else if (v23 != 7)
      {
        if (v23 != 8)
        {
          if (v23 != 9)
          {
            goto LABEL_20;
          }

          goto LABEL_68;
        }

        v25 = _OSPFParse_ParsePacketHeartbeat(v33, v32, &v27);
        goto LABEL_67;
      }

      v25 = _OSPFParse_ParsePacketData(v33, v32, &v27);
    }

LABEL_67:
    v18 = v25;
    goto LABEL_68;
  }

  if (_OSPFParse_ParseExtractOptions(v30, v15, v32, &v29, &v28, &v27))
  {
    v15 = &v33[v27];
    v33 = v15;
    v32 -= v27;
    goto LABEL_33;
  }

  v18 = 0;
LABEL_19:
  v20 = v30;
  if (v30)
  {
LABEL_20:
    free(v20);
  }

  if (v18)
  {
    free(v18);
  }

  if (v16)
  {
    free(v16);
  }

  if (v29)
  {
    free(v29);
  }

  return v27;
}

_WORD *_OSPFParse_ParsePacketHello(__int16 a1, uint64_t a2, unsigned int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10300409059B04AuLL);
  v7 = v6;
  if (v6)
  {
    v6[6] = a1;
    *v6 = 0;
    *(v6 + 2) = 0;
    if (a3)
    {
      v8 = a3;
      do
      {
        if (**a2 == 11)
        {
          *(v6 + 2) = bswap64(*(*a2 + 4));
        }

        a2 += 8;
        --v8;
      }

      while (v8);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = v9;
      v14 = 2080;
      v15 = "_OSPFParse_ParsePacketHello";
      v16 = 1024;
      v17 = 1236;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to allocate buffer", &v12, 0x1Cu);
    }
  }

  return v7;
}

_DWORD *_OSPFParse_ParsePacketHeartbeat(unsigned __int16 *a1, unsigned int a2, _DWORD *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        _OSPFParse_ParsePacketHeartbeat_cold_1();
      }
    }

    return 0;
  }

  if (a2 <= 3)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v14 = 136315906;
    v15 = v4;
    v16 = 2080;
    v17 = "_OSPFParse_ParsePacketHeartbeat";
    v18 = 1024;
    v19 = 1267;
    v20 = 1024;
    v21 = a2;
    v6 = " [%s] %s:%d Payload size=%d is too small";
    v7 = v5;
    v8 = 34;
    goto LABEL_14;
  }

  result = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040FDD9F14CuLL);
  if (result)
  {
    *result = 0;
    result[2] = 0;
    *(result + 6) = bswap32(*a1) >> 16;
    *(result + 7) = bswap32(a1[1]) >> 16;
    *a3 = 4;
    return result;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = v12;
      v16 = 2080;
      v17 = "_OSPFParse_ParsePacketHeartbeat";
      v18 = 1024;
      v19 = 1274;
      v6 = " [%s] %s:%d Failed to allocate buffer";
      v7 = v13;
      v8 = 28;
LABEL_14:
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, v6, &v14, v8);
    }
  }

  return 0;
}

void *_OSPFParse_ParsePacketDD(uint64_t a1, unsigned __int16 *a2, unsigned int a3, _DWORD *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0;
  *a4 = 0;
  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        _OSPFParse_ParsePacketDD_cold_1();
      }
    }

    return 0;
  }

  v4 = a3 - 2;
  if (a3 < 2)
  {
    return 0;
  }

  v6 = a2;
  v8 = a2 + 1;
  v9 = bswap32(*a2) >> 16;
  v10 = malloc_type_malloc((480 * v9) | 0x18, 0x1030040D5FA72FAuLL);
  if (!v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = v12;
        v18 = 2080;
        v19 = "_OSPFParse_ParsePacketDD";
        v20 = 1024;
        v21 = 1479;
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to allocate buffer", buf, 0x1Cu);
      }
    }

    return 0;
  }

  v11 = v10;
  *v10 = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = v9;
  *(v10 + 2) = v10 + 24;
  if (!_OSPFParse_ParseNodes(a1, (v10 + 24), v9, v8, v4, &v15))
  {
    free(v11);
    return 0;
  }

  *a4 = v8 + v15 - v6;
  return v11;
}

void *_OSPFParse_ParsePacketLSA(uint64_t a1, unsigned __int16 *a2, unsigned int a3, _DWORD *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0;
  *a4 = 0;
  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        _OSPFParse_ParsePacketLSA_cold_1();
      }
    }

    return 0;
  }

  v4 = a3 - 4;
  if (a3 < 4)
  {
    return 0;
  }

  v8 = *a2;
  v9 = bswap32(a2[1]) >> 16;
  v10 = malloc_type_malloc(480 * v9 + 32, 0x1030040A19808B3uLL);
  if (!v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = v12;
        v18 = 2080;
        v19 = "_OSPFParse_ParsePacketLSA";
        v20 = 1024;
        v21 = 1408;
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to allocate buffer", buf, 0x1Cu);
      }
    }

    return 0;
  }

  v11 = v10;
  *v10 = 0;
  *(v10 + 2) = 0;
  *(v10 + 6) = __rev16(v8);
  *(v10 + 4) = v9;
  *(v10 + 3) = v10 + 32;
  if (!_OSPFParse_ParseNodes(a1, (v10 + 32), v9, a2 + 2, v4, &v15))
  {
    free(v11);
    return 0;
  }

  *a4 = v15 + 4;
  return v11;
}

_DWORD *_OSPFParse_ParsePacketLSAAck(unsigned __int16 *a1, unsigned int a2, _DWORD *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *a3 = 0;
    if (a2 >= 2)
    {
      result = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040F51ADB7CuLL);
      if (result)
      {
        *result = 0;
        result[2] = 0;
        *(result + 6) = bswap32(*a1) >> 16;
        *a3 = 2;
        return result;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315650;
          v9 = v6;
          v10 = 2080;
          v11 = "_OSPFParse_ParsePacketLSAAck";
          v12 = 1024;
          v13 = 1443;
          _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to allocate buffer", &v8, 0x1Cu);
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      _OSPFParse_ParsePacketLSAAck_cold_1();
    }
  }

  return 0;
}

_DWORD *_OSPFParse_ParsePacketData(uint64_t a1, int a2, _DWORD *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    v6[2] = a2;
    *a3 = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = v8;
      v13 = 2080;
      v14 = "_OSPFParse_ParsePacketData";
      v15 = 1024;
      v16 = 1298;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to allocate buffer", &v11, 0x1Cu);
    }
  }

  return v7;
}

_DWORD *_OSPFParse_ParsePacketAudio(uint64_t a1, int a2, _DWORD *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    v6[2] = a2;
    *a3 = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = v8;
      v13 = 2080;
      v14 = "_OSPFParse_ParsePacketAudio";
      v15 = 1024;
      v16 = 1312;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to allocate buffer", &v11, 0x1Cu);
    }
  }

  return v7;
}

uint64_t OSPFAddDynamicOptions(unsigned __int8 ***a1, _WORD *a2, unint64_t a3, int a4, unsigned int a5, _DWORD *a6, unint64_t a7, uint64_t a8)
{
  v139 = a8;
  v129 = a7;
  v173 = *MEMORY[0x277D85DE8];
  v153 = 0;
  v148 = -21846;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  memset(v154, 0, sizeof(v154));
  v135 = a4;
  if (a4)
  {
    v148 = __rev16(a5);
    *&v154[0] = &v148;
    *(&v154[0] + 1) = 4;
    DWORD2(v151) = 1;
  }

  v149 = -21846;
  v144 = 0;
  v145 = &v144;
  v146 = 0x2000000000;
  v147 = 0;
  v142 = 0;
  v143[0] = MEMORY[0x277D85DD0];
  v143[1] = 0x40000000;
  v143[2] = __OSPFAddDynamicOptions_block_invoke;
  v143[3] = &unk_279683068;
  v143[4] = &v144;
  v137 = a2;
  v11 = OSPFGetLength(a2, a3);
  v12 = v11;
  v131 = a6;
  if (v11 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1238 - v11;
    ++a6[4];
  }

  MEMORY[0x28223BE20](v11);
  v15 = (&v119 - ((v14 + 15) & 0x1FFFFFFF0));
  v16 = memset(v15, 170, v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v119 - ((v17 + 15) & 0x1FFFFFFF0);
  if ((v19 & 1) == 0)
  {
    memset(&v119 - ((v17 + 15) & 0x1FFFFFFF0), 170, v17);
  }

  v141 = 0;
  if (v12 >= 1 && v13 >= 1 && a1)
  {
    LODWORD(v12) = OSPFParse(&v153, 0, v137, v12, &v141, v143);
    v21 = v145;
    if (v12 < 1)
    {
      v140 = -1431655766;
    }

    else
    {
      v140 = -1431655766;
      if ((v145[3] & 1) == 0 && v141)
      {
        v127 = v18;
        v22 = *a1;
        v138 = a3;
        if (v22)
        {
          if (v13 < 4)
          {
            v23 = 0;
          }

          else
          {
            v23 = 0;
            *&v20 = 136315906;
            v136 = v20;
            do
            {
              if (*v22)
              {
                v24 = 4 * (*v22)[1];
                if (v13 >= (v24 + 8))
                {
                  *a1 = v22[1];
                  v22[1] = 0;
                  if (OSPFProcessDynamicOption(v131, *v22, 0))
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v25 = VRTraceErrorLogLevelToCSTR();
                      v26 = *MEMORY[0x277CE5818];
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                      {
                        v27 = **v22;
                        *buf = v136;
                        v156 = v25;
                        v157 = 2080;
                        v158 = "OSPFAddDynamicOptions";
                        v159 = 1024;
                        v160 = 1795;
                        v161 = 1024;
                        v162 = v27;
                        _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFAddOptions: error processing option node (type == %d)", buf, 0x22u);
                      }
                    }

                    if (*v22)
                    {
                      free(*v22);
                    }

                    free(v22);
                  }

                  else
                  {
                    v13 -= v24 + 4;
                    v28 = &v142;
                    do
                    {
                      v29 = v28;
                      v30 = *v28;
                      v28 = (*v28 + 8);
                    }

                    while (v30);
                    v23 += v24 + 4;
                    *v29 = v22;
                  }
                }

                else
                {
                  a1 = (v22 + 1);
                }
              }

              else
              {
                *a1 = v22[1];
                free(v22);
              }

              v22 = *a1;
              if (*a1)
              {
                v31 = v13 <= 3;
              }

              else
              {
                v31 = 1;
              }
            }

            while (!v31);
            if (v23)
            {
              v32 = v23 + 4;
LABEL_103:
              v83 = v129;
              v84 = v127;
              goto LABEL_106;
            }
          }

          v83 = v129;
          v84 = v127;
          v32 = 0;
LABEL_106:
          LODWORD(v136) = 43690;
          v124 = &v119;
          if (v83 && v13 >= 12)
          {
            if (*v83 != 0xFFFFFFFFLL && *(v83 + 8) && (v12 + v23 + 8 >= 196 ? (v85 = 8) : (v85 = ((191 - (v12 + v23)) & 0xFFFFFFFC) + 8), v13 - v85 >= 4))
            {
              v109 = v32;
              v110 = malloc_type_malloc(v85 + 4, 0x100004052888210uLL);
              v111 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
              v112 = v111;
              if (v110 && v111)
              {
                v113 = v129;
                v114 = *(v129 + 16);
                *v110 = 15;
                v110[1] = (v85 + 1020) >> 2;
                v110[2] = BYTE1(v114);
                v110[3] = v114;
                *(v110 + 3) = 0;
                *(v110 + 2) = bswap32(*(v113 + 12)) >> 16;
                *v111 = v110;
                v111[1] = 0;
                v115 = &v142;
                do
                {
                  v116 = v115;
                  v117 = *v115;
                  v115 = (*v115 + 8);
                }

                while (v117);
                *v116 = v111;
                v118 = *v110;
                v121 = *v110 >> 8;
                v125 = v118;
                buf[0] = 0;
                GCK_BWE_TrackLargeFrameState(*v129, *(v129 + 8), 0, buf);
              }

              free(v110);
              free(v112);
              v134 = 170;
              LODWORD(v136) = 43690;
              v133 = 170;
              v132 = 170;
              v125 = 170;
              v42 = 43690;
              v123 = 43690;
              v128 = 170;
              v122 = 170;
              v121 = 170;
              v84 = v127;
              v32 = v109;
            }

            else
            {
              v134 = 170;
              LODWORD(v136) = 43690;
              v133 = 170;
              v132 = 170;
              v125 = 170;
              v42 = 43690;
              v123 = 43690;
              v128 = 170;
              v122 = 170;
              v121 = 170;
            }
          }

          else
          {
            v132 = 170;
            v133 = 170;
            v125 = 170;
            v42 = 43690;
            v123 = 43690;
            v128 = 170;
            v122 = 170;
            v134 = 170;
            v121 = 170;
          }

          v138 = 0;
          LODWORD(v130) = 0;
          v47 = 0;
          if (v32)
          {
            v120 = 0;
            v126 = 43690;
            v86 = v142;
            if (v142)
            {
              v87 = 0;
              v88 = (v84 + 4);
              do
              {
                v89 = 4 * *(*v86 + 1) + 4;
                memcpy(v88, *v86, v89);
                v88 += v89;
                ++v87;
                v86 = *(v86 + 8);
              }

              while (v86);
            }

            else
            {
              v87 = 0;
            }

            v92 = v127;
            *v127 = -8;
            *(v92 + 1) = v87;
            *(v92 + 2) = bswap32(v32) >> 16;
            v93 = v141;
            v94 = v141 - v137;
            v95 = v141 - v137;
            memcpy(v15, v137, v95);
            v15[2] |= 0x200u;
            v15[1] = bswap32(v32 + (bswap32(v15[1]) >> 16)) >> 16;
            v15[3] = 0;
            if (v94 < 1)
            {
              v96 = 0;
              v37 = v124;
            }

            else
            {
              LOWORD(v96) = 0;
              v97 = v94 & 0x7FFFFFFF;
              v98 = v15;
              v37 = v124;
              do
              {
                v99 = *v98++;
                v96 = CRC16Table[(v99 ^ v96)] ^ ((v96 & 0xFF00) >> 8);
                --v97;
              }

              while (v97);
            }

            v100 = v12 - v94;
            if (v32 < 1)
            {
              v42 = v126;
            }

            else
            {
              v101 = v32;
              v42 = v126;
              v102 = v127;
              do
              {
                v103 = *v102++;
                v96 = CRC16Table[(v103 ^ v96)] ^ ((v96 & 0xFF00) >> 8);
                --v101;
              }

              while (v101);
            }

            if (v100 >= 1)
            {
              v104 = v93;
              v105 = (v12 - v94);
              do
              {
                v106 = *v104++;
                v96 = CRC16Table[(v106 ^ v96)] ^ ((v96 & 0xFF00) >> 8);
                --v105;
              }

              while (v105);
            }

            v15[3] = bswap32(v96) >> 16;
            v107 = DWORD2(v151);
            if (DWORD2(v151))
            {
              v149 = bswap32(v32 + v12) >> 16;
            }

            v108 = &v154[SDWORD2(v151)];
            *v108 = v15;
            v108[1] = v95;
            v44 = v128;
            v108[2] = v127;
            v108[3] = v32;
            v108[4] = v93;
            v108[5] = v100;
            DWORD2(v151) = v107 + 3;
            v40 = v137;
            v41 = v125;
            v45 = v122;
            v43 = v123;
            v46 = v121;
            v47 = v120;
          }

          else
          {
            v90 = DWORD2(v151);
            v46 = v121;
            v45 = v122;
            if (DWORD2(v151))
            {
              v149 = bswap32(v12) >> 16;
            }

            v91 = &v154[SDWORD2(v151)];
            v40 = v137;
            *v91 = v137;
            v91[1] = v12;
            DWORD2(v151) = v90 + 1;
            v37 = v124;
            v41 = v125;
            v43 = v123;
            v44 = v128;
          }

          goto LABEL_51;
        }

        v23 = 0;
        v32 = 0;
        goto LABEL_103;
      }
    }

    goto LABEL_41;
  }

  v140 = -1431655766;
  if (a1)
  {
    v21 = v145;
LABEL_41:
    if ((v21[3] & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v33 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v156 = v33;
          v157 = 2080;
          v158 = "OSPFAddDynamicOptions";
          v159 = 1024;
          v160 = 1754;
          v161 = 1024;
          v162 = v12;
          _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFAddOptions: fail iOSPFLen == %d)", buf, 0x22u);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v35 = VRTraceErrorLogLevelToCSTR();
        v36 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v156 = v35;
          v157 = 2080;
          v158 = "OSPFAddDynamicOptions";
          v159 = 1024;
          v160 = 1755;
          v161 = 1024;
          v162 = a3;
          _os_log_impl(&dword_24E50C000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFAddOptions: iLen == %d)", buf, 0x22u);
        }
      }
    }
  }

  v37 = &v119;
  v38 = DWORD2(v151);
  if (DWORD2(v151))
  {
    v149 = bswap32(a3) >> 16;
  }

  v138 = 0;
  LODWORD(v130) = 0;
  v39 = &v154[SDWORD2(v151)];
  v40 = v137;
  *v39 = v137;
  v39[1] = a3;
  DWORD2(v151) = v38 + 1;
  v134 = 170;
  LODWORD(v136) = 43690;
  v133 = 170;
  v132 = 170;
  v41 = 170;
  v42 = 43690;
  v43 = 43690;
  v44 = 170;
  v45 = -86;
  v46 = -86;
  v47 = -1431655766;
LABEL_51:
  *&v151 = v154;
  if (v153)
  {
    free(v153);
  }

  if (v139)
  {
    v125 = v41;
    v48 = (*(v139 + 16))();
    v49 = v130 ^ 1;
    if (!v48)
    {
      v49 = 1;
    }

    if ((v49 & 1) == 0)
    {
      v128 = v44;
      v126 = v42;
      LODWORD(v131) = *(v40 + 2);
      LODWORD(v123) = *(v129 + 20);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v52 = v138;
      if (ErrorLogLevelForModule >= 8)
      {
        v53 = VRTraceErrorLogLevelToCSTR();
        v54 = *MEMORY[0x277CE5818];
        v55 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] == 1)
        {
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136317186;
            v156 = v53;
            v157 = 2080;
            v158 = "BWE_SendProbePkts";
            v159 = 1024;
            v160 = 481;
            v161 = 1024;
            v162 = v123;
            v163 = 1024;
            v164 = v47;
            v165 = 1024;
            v166 = 4 * v46;
            v167 = 1024;
            v168 = v128 | (v45 << 8);
            v169 = 1024;
            v170 = bswap32(v43) >> 16;
            v171 = 1024;
            v172 = __rev16(v126);
            _os_log_impl(&dword_24E50C000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ****************************************************\nOSPFAddDynamicOption (to %d)  %d bytes optionDataLength: %d\n \t\t wRxEstimate_kbps: %d  wProbeSeqId: %d  wPktIndex: %x  \n****************************************************\n", buf, 0x40u);
          }
        }

        else if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136317186;
          v156 = v53;
          v157 = 2080;
          v158 = "BWE_SendProbePkts";
          v159 = 1024;
          v160 = 481;
          v161 = 1024;
          v162 = v123;
          v163 = 1024;
          v164 = v47;
          v165 = 1024;
          v166 = 4 * v46;
          v167 = 1024;
          v168 = v128 | (v45 << 8);
          v169 = 1024;
          v170 = bswap32(v43) >> 16;
          v171 = 1024;
          v172 = __rev16(v126);
          _os_log_debug_impl(&dword_24E50C000, v54, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ****************************************************\nOSPFAddDynamicOption (to %d)  %d bytes optionDataLength: %d\n \t\t wRxEstimate_kbps: %d  wProbeSeqId: %d  wPktIndex: %x  \n****************************************************\n", buf, 0x40u);
        }
      }

      v124 = v37;
      if (v52 < 1)
      {
        v58 = 0;
      }

      else
      {
        v58 = 0;
        LODWORD(v128) = bswap32(v123);
        v127 = &v154[v135 != 0];
        v126 = v127 | 8;
        v59 = 4 * v132;
        v60 = (v59 + 24);
        v130 = v136 << 32;
        v61 = v125;
        LODWORD(v137) = __rev16(v60);
        LODWORD(v122) = v59;
        LODWORD(v125) = __rev16(v59 + 8);
        LODWORD(v121) = v134 | (v133 << 8);
        v120 = bswap32(v136) >> 16;
        v62 = 1;
        v63 = 0xAAAAAAAAAAAAAAAALL;
        *&v51 = 136317186;
        v119 = v51;
        v129 = (v134 << 24) | (v133 << 16) | (v132 << 8) | v61;
        do
        {
          if (v62 == v52)
          {
            v64 = 61440;
          }

          else
          {
            v64 = 0;
          }

          v65 = v64 | v62;
          v66 = bswap32(v64 | v62) >> 16;
          if (v62 == 1)
          {
            v67 = malloc_type_calloc(1uLL, v60, 0x1000040451B5BE8uLL);
            if (!v67)
            {
              break;
            }

            v68 = 0;
            LOWORD(v69) = 0;
            v58 = v67;
            *v67 = 2497;
            *(v67 + 1) = v137;
            *(v67 + 2) = 512;
            v70 = v128;
            *(v67 + 2) = v131;
            *(v67 + 3) = v70;
            *(v67 + 8) = 504;
            *(v67 + 9) = v125;
            *(v67 + 13) = v66;
            v67[20] = 15;
            v63 = (v67 + 20);
            LOBYTE(v70) = v133;
            v67[21] = v132;
            v67[22] = v70;
            v67[23] = v134;
            *(v67 + 12) = v136;
            do
            {
              v69 = CRC16Table[(v67[v68++] ^ v69)] ^ ((v69 & 0xFF00) >> 8);
            }

            while (v60 != v68);
            *(v67 + 3) = bswap32(v69) >> 16;
            if (v135)
            {
              v149 = v137;
              v71 = 2;
            }

            else
            {
              v71 = 1;
            }

            v77 = v126;
            *v127 = v67;
            *v77 = v60;
            DWORD2(v151) = v71;
            v72 = v60;
            *&v151 = v154;
          }

          else
          {
            *v63 = v130 | (v66 << 48) | v129;
            *(v58 + 3) = 0;
            v72 = v140;
            if (v140 < 1)
            {
              v73 = 0;
            }

            else
            {
              LOWORD(v73) = 0;
              v74 = v140;
              v75 = v58;
              do
              {
                v76 = *v75++;
                v73 = CRC16Table[(v76 ^ v73)] ^ ((v73 & 0xFF00) >> 8);
                --v74;
              }

              while (v74);
            }

            *(v58 + 3) = bswap32(v73) >> 16;
          }

          if (!(*(v139 + 16))(v139, &v150))
          {
            break;
          }

          v140 = v72;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v78 = VRTraceErrorLogLevelToCSTR();
            v79 = *MEMORY[0x277CE5818];
            v80 = *MEMORY[0x277CE5818];
            if (*MEMORY[0x277CE5808] == 1)
            {
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v119;
                v156 = v78;
                v157 = 2080;
                v158 = "BWE_SendProbePkts";
                v159 = 1024;
                v160 = 540;
                v161 = 1024;
                v162 = v123;
                v163 = 1024;
                v164 = v140;
                v165 = 1024;
                v166 = v122;
                v167 = 1024;
                v168 = v121;
                v169 = 1024;
                v170 = v120;
                v171 = 1024;
                v172 = v65;
                _os_log_impl(&dword_24E50C000, v79, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ****************************************************\nOSPFAddDynamicOption (to %d)  %d bytes optionDataLength: %d\n \t\t wRxEstimate_kbps: %d  wProbeSeqId: %d  wPktIndex: %x  \n****************************************************\n", buf, 0x40u);
              }
            }

            else if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
            {
              *buf = v119;
              v156 = v78;
              v157 = 2080;
              v158 = "BWE_SendProbePkts";
              v159 = 1024;
              v160 = 540;
              v161 = 1024;
              v162 = v123;
              v163 = 1024;
              v164 = v140;
              v165 = 1024;
              v166 = v122;
              v167 = 1024;
              v168 = v121;
              v169 = 1024;
              v170 = v120;
              v171 = 1024;
              v172 = v65;
              _os_log_debug_impl(&dword_24E50C000, v79, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ****************************************************\nOSPFAddDynamicOption (to %d)  %d bytes optionDataLength: %d\n \t\t wRxEstimate_kbps: %d  wProbeSeqId: %d  wPktIndex: %x  \n****************************************************\n", buf, 0x40u);
            }
          }

          v52 = v138;
        }

        while (v62++ != v138);
      }

      free(v58);
      goto LABEL_100;
    }

    if (v48)
    {
LABEL_100:
      v56 = v142;
      goto LABEL_101;
    }
  }

  ++v131[8];
  v56 = v142;
  if (v142)
  {
    do
    {
      v57 = *(v56 + 8);
      if (*v56)
      {
        free(*v56);
      }

      free(v56);
      v56 = v57;
    }

    while (v57);
  }

LABEL_101:
  _Block_object_dispose(&v144, 8);
  return v56;
}

uint64_t __OSPFAddDynamicOptions_block_invoke(uint64_t result, void *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (*a2)
      {
        *(*(*(result + 32) + 8) + 24) = 1;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _OSPFParse_ParseNodes(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int16 *a4, unsigned int a5, _DWORD *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v24 = a4;
  LODWORD(v6) = a4;
  if (a3)
  {
    v9 = 0;
    v10 = (a2 + 292);
    v6 = a4;
    v11 = a3;
    while (1)
    {
      v12 = a5 - 7;
      if (a5 < 7)
      {
        return 0;
      }

      v13 = a2 + 480 * v9;
      *v13 = bswap32(*v6);
      *(v13 + 4) = -1;
      *(v13 + 268) = -1;
      *(v13 + 272) = bswap32(v6[2]) >> 16;
      *(v13 + 276) = 1;
      *(v13 + 280) = *(a1 + 8);
      v14 = *(v6 + 6);
      *(v13 + 8) = v14;
      if (v12 < v14 + 2)
      {
        return 0;
      }

      v15 = v6 + 7;
      memcpy((v13 + 9), v6 + 7, v14);
      v16 = &v15[v14];
      *(v13 + 9 + v14) = 0;
      v17 = *v16;
      v18 = __rev16(v17);
      if (v18 >= 0x11)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x277CE5818];
          result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          *buf = 136315906;
          v26 = v21;
          v27 = 2080;
          v28 = "_OSPFParse_ParseNodes";
          v29 = 1024;
          v30 = 1360;
          v31 = 1024;
          v32 = v18;
          _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Too many neighbors. Count=%d", buf, 0x22u);
        }

        return 0;
      }

      a5 = v12 - v14 - 2;
      *(v13 + 284) = v18;
      if (a5 < 8 * v18)
      {
        return 0;
      }

      v6 = (v16 + 2);
      if (v17)
      {
        v19 = v10;
        do
        {
          *(v19 - 1) = bswap32(*v6);
          *v19 = bswap32(*(v6 + 1));
          v19 += 3;
          v6 += 4;
          a5 -= 8;
          --v18;
        }

        while (v18);
      }

      ++v9;
      v10 += 120;
      if (v9 == v11)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    *a6 = v6 - v24;
    return 1;
  }
}

uint64_t TimingLog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v28 = *MEMORY[0x277D85DE8];
  v6 = micro(a1, a2);
  v7 = v6;
  if (v4)
  {
    g_resetTime = *&v6;
    pthread_mutex_lock(&g_xTimingLog);
    if (v5 != 3)
    {
      if (v5 == 2)
      {
        fprintf(*MEMORY[0x277D85DF8], "**TIME** %0.3lf (T0 ---): %s\n");
      }

      else if (v5 == 1)
      {
        NSLog(&cfstr_Time03lfT0S.isa, *&v7, a3);
      }

      return pthread_mutex_unlock(&g_xTimingLog);
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return pthread_mutex_unlock(&g_xTimingLog);
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return pthread_mutex_unlock(&g_xTimingLog);
    }

    *buf = 136316162;
    v17 = v8;
    v18 = 2080;
    v19 = "TimingLog";
    v20 = 1024;
    v21 = 28;
    v22 = 2048;
    v23 = v7;
    v24 = 2080;
    v25 = *&a3;
    v10 = " [%s] %s:%d **TIME** %0.3lf (T0 ---): %s";
    v11 = v9;
    v12 = 48;
LABEL_20:
    _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    return pthread_mutex_unlock(&g_xTimingLog);
  }

  pthread_mutex_lock(&g_xTimingLog);
  switch(v5)
  {
    case 3:
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return pthread_mutex_unlock(&g_xTimingLog);
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        return pthread_mutex_unlock(&g_xTimingLog);
      }

      *buf = 136316418;
      v17 = v14;
      v18 = 2080;
      v19 = "TimingLog";
      v20 = 1024;
      v21 = 45;
      v22 = 2048;
      v23 = v7;
      v24 = 2048;
      v25 = v7 - *&g_resetTime;
      v26 = 2080;
      v27 = a3;
      v10 = " [%s] %s:%d **TIME** %0.3lf (T+%0.3lf): %s";
      v11 = v15;
      v12 = 58;
      goto LABEL_20;
    case 2:
      fprintf(*MEMORY[0x277D85DF8], "**TIME** %0.3lf (T+%0.3lf): %s\n");
      break;
    case 1:
      NSLog(&cfstr_Time03lfT03lfS.isa, *&v7, v7 - *&g_resetTime, a3);
      break;
  }

  return pthread_mutex_unlock(&g_xTimingLog);
}

void UpdateRxEstimate(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, __n128 a5, __n128 a6, __n128 a7)
{
  v8 = a7.n128_f64[0];
  v9 = a3;
  v10 = a2;
  v11 = a6.n128_f64[0];
  v12 = a5.n128_f64[0];
  v71 = *MEMORY[0x277D85DE8];
  if (*(a1 + 356) == 1)
  {
    UpdateRxEstimate_v1(a1, a2, a3, a4, a5.n128_f64[0], a6.n128_f64[0], a7.n128_f64[0]);
    *(a1 + 264) = *(a1 + 320);
    return;
  }

  if (*(a1 + 357) == 1)
  {
    v57 = -1;
    UpdateRxEstimate_v1(a1, a2, a3, &v57, a5.n128_f64[0], a6.n128_f64[0], a7.n128_f64[0]);
  }

  v14 = *(a1 + 92);
  if (v14 == 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = 3;
  }

  v16 = *(a1 + 264);
  if (v16 != 0.0)
  {
    if (!v10 || v9 < 250)
    {
      return;
    }

    if (dbl_24E590AA0[v14 == 2] <= v11)
    {
      *(a1 + 296) = 0;
    }

    else
    {
      v22 = *(a1 + 296);
      if (v22 < v15)
      {
        *(a1 + 296) = ++v22;
      }

      if (v22 < v15)
      {
        return;
      }
    }
  }

  if (v12 <= 0.0)
  {
    return;
  }

  if (dbl_24E590AB0[v14 == 2] >= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = dbl_24E590AB0[v14 == 2];
  }

  *(a1 + 464) = *(a1 + 464) + v12;
  ++*(a1 + 472);
  if (v14 != 2)
  {
    v21 = 0.0;
    v20 = 4.0;
    if (v14 == 1)
    {
      v18 = 4;
    }

    else
    {
      v20 = 0.0;
      v18 = 3;
    }

    v19 = v20;
LABEL_28:
    v23 = v16 - v17 > 200000.0 || v17 <= v16 * 0.5;
    v24 = v17 - v16 > 200000.0 || v17 >= v16 * 1.5;
    v25 = v16 - v17 > v21 && v23;
    v26 = v17 - v16 > v21 && v24;
    if (v16 == 0.0)
    {
      v27 = 0;
      v28 = 100000.0;
      if (v17 >= 100000.0)
      {
        v28 = v17;
      }

      *(a1 + 264) = v28;
      goto LABEL_91;
    }

    if (!v25 && !v26)
    {
      if (v14 == 2)
      {
        v33 = *(a1 + 220);
        if (v33 >= 1)
        {
          v34 = (a1 + 100);
          do
          {
            v35 = *v34++;
            v16 = v35 * 0.05 + v16 * 0.95;
            --v33;
          }

          while (v33);
          *(a1 + 220) = 0;
        }

        v36 = v17 * 0.075;
        v37 = 0.925;
      }

      else
      {
        v36 = v17 * 0.1;
        v37 = 0.9;
      }

      *(a1 + 264) = v36 + v16 * v37;
      *(a1 + 280) = 0;
      v27 = 1;
      *(a1 + 272) = 0;
      goto LABEL_91;
    }

    if ((v14 - 1) > 1)
    {
      v29 = 0;
    }

    else
    {
      if (*(a1 + 280) >= 0)
      {
        v20 = v19;
      }

      v29 = v8 - *(a1 + 288) < v20;
    }

    if (v25)
    {
      v38 = *(a1 + 280);
      if (v38 < 0)
      {
        v39 = v38 - 1;
      }

      else
      {
        *(a1 + 272) = 0;
        *(a1 + 288) = v8;
        v39 = -1;
      }

      *(a1 + 280) = v39;
      v42 = -10;
    }

    else
    {
      if (!v26)
      {
LABEL_75:
        v43 = v17 + *(a1 + 272);
        *(a1 + 272) = v43;
        v44 = *(a1 + 280);
        if ((v44 & 0x80000000) != 0)
        {
          v44 = -v44;
        }

        if (*(a1 + 92) == 2)
        {
          v45 = *(a1 + 220);
          if (v45 <= 29)
          {
            *(a1 + 4 * v45 + 100) = v17;
            ++*(a1 + 220);
          }
        }

        if (v44 < v18 || v29)
        {
          goto LABEL_92;
        }

        if (*(a1 + 92) == 2)
        {
          v46 = v43 / v44;
          if ((*(a1 + 280) & 0x80000000) == 0)
          {
            v46 = v46 * 0.9 + v16 * 0.1;
          }
        }

        else
        {
          v46 = v43 / v44;
        }

        *(a1 + 264) = v46;
        *(a1 + 280) = 0;
        *(a1 + 272) = 0;
        if (*a4 == -10)
        {
          v47 = -100;
        }

        else
        {
          v47 = 200;
        }

        if (*a4 == 10)
        {
          v27 = 100;
        }

        else
        {
          v27 = v47;
        }

LABEL_91:
        *a4 = v27;
LABEL_92:
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v48 = VRTraceErrorLogLevelToCSTR();
          v49 = *MEMORY[0x277CE5818];
          v50 = *MEMORY[0x277CE5818];
          if (*MEMORY[0x277CE5808] == 1)
          {
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v51 = *(a1 + 264);
              v52 = *a4;
              v53 = *(a1 + 280);
              v57 = 136316674;
              v58 = v48;
              v59 = 2080;
              v60 = "UpdateRxEstimate";
              v61 = 1024;
              v62 = 817;
              v63 = 1024;
              v64 = v17;
              v65 = 1024;
              v66 = v51;
              v67 = 1024;
              v68 = v52;
              v69 = 1024;
              v70 = v53;
              _os_log_impl(&dword_24E50C000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \t\t\t\t\t\t\t\t ------ dBWD: %d Rx: %d  \t %d %d", &v57, 0x34u);
            }
          }

          else if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            v54 = *(a1 + 264);
            v55 = *a4;
            v56 = *(a1 + 280);
            v57 = 136316674;
            v58 = v48;
            v59 = 2080;
            v60 = "UpdateRxEstimate";
            v61 = 1024;
            v62 = 817;
            v63 = 1024;
            v64 = v17;
            v65 = 1024;
            v66 = v54;
            v67 = 1024;
            v68 = v55;
            v69 = 1024;
            v70 = v56;
            _os_log_debug_impl(&dword_24E50C000, v49, OS_LOG_TYPE_DEBUG, " [%s] %s:%d \t\t\t\t\t\t\t\t ------ dBWD: %d Rx: %d  \t %d %d", &v57, 0x34u);
          }
        }

        return;
      }

      v40 = *(a1 + 280);
      if (v40 <= 0)
      {
        *(a1 + 272) = 0;
        *(a1 + 288) = v8;
        v41 = 1;
      }

      else
      {
        v41 = v40 + 1;
      }

      *(a1 + 280) = v41;
      v42 = 10;
    }

    *a4 = v42;
    goto LABEL_75;
  }

  if (*(a1 + 97))
  {
    v18 = 6;
    v19 = 10.0;
    v20 = 7.0;
    v21 = 100000.0;
    goto LABEL_28;
  }

  v30 = 200000.0;
  if (v17 <= 200000.0)
  {
    v30 = v17;
  }

  v31 = v30 + *(a1 + 272);
  *(a1 + 272) = v31;
  v32 = *(a1 + 280);
  *(a1 + 280) = v32 + 1;
  if (v32 > 8 || v8 - *(a1 + 288) >= 7.0)
  {
    *(a1 + 97) = 1;
    *(a1 + 264) = v31 / (v32 + 1);
    *(a1 + 288) = 0;
    *(a1 + 280) = 0;
  }
}

uint64_t UpdateRxEstimate_v1(uint64_t result, int a2, int a3, int *a4, double a5, double a6, double a7)
{
  v8 = *(result + 320);
  if (v8 != 0.0)
  {
    if (!a2 || a3 < 250)
    {
      return result;
    }

    if (a6 >= 0.008)
    {
      *(result + 352) = 0;
    }

    else
    {
      v14 = *(result + 352);
      if (v14 <= 2)
      {
        *(result + 352) = v14 + 1;
        if (v14 != 2)
        {
          return result;
        }
      }
    }
  }

  if (a5 <= 0.0)
  {
    return result;
  }

  v9 = 2300000.0;
  if (a5 <= 2300000.0)
  {
    v9 = a5;
  }

  v10 = v9 <= v8 * 0.5;
  if (v8 - v9 > 200000.0)
  {
    v10 = 1;
  }

  v11 = v9 >= v8 * 1.5;
  if (v9 - v8 > 200000.0)
  {
    v11 = 1;
  }

  if (v8 == 0.0)
  {
    v12 = 0;
    v13 = 100000.0;
    if (v9 >= 100000.0)
    {
      v13 = v9;
    }

    *(result + 320) = v13;
    goto LABEL_43;
  }

  if (!v10 && !v11)
  {
    *(result + 320) = v9 * 0.1 + v8 * 0.9;
    *(result + 336) = 0;
    *(result + 328) = 0;
    v12 = 1;
LABEL_43:
    *a4 = v12;
    return result;
  }

  if (v10)
  {
    v15 = *(result + 336);
    if (v15 < 0)
    {
      v16 = v15 - 1;
    }

    else
    {
      *(result + 328) = 0;
      *(result + 344) = a7;
      v16 = -1;
    }

    *(result + 336) = v16;
    v19 = -10;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_34;
    }

    v17 = *(result + 336);
    if (v17 <= 0)
    {
      *(result + 328) = 0;
      *(result + 344) = a7;
      v18 = 1;
    }

    else
    {
      v18 = v17 + 1;
    }

    *(result + 336) = v18;
    v19 = 10;
  }

  *a4 = v19;
LABEL_34:
  v20 = v9 + *(result + 328);
  *(result + 328) = v20;
  v21 = *(result + 336);
  if (v21 < 0)
  {
    v21 = -v21;
  }

  if (v21 >= 3)
  {
    *(result + 320) = v20 / v21;
    *(result + 336) = 0;
    *(result + 328) = 0;
    if (*a4 == -10)
    {
      v22 = -100;
    }

    else
    {
      v22 = 200;
    }

    if (*a4 == 10)
    {
      v12 = 100;
    }

    else
    {
      v12 = v22;
    }

    goto LABEL_43;
  }

  return result;
}

uint64_t BWEstCheckIfLargeFrameNeeded(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = micro(a1, a2);
  if (*(a1 + 360) == 0.0)
  {
    *(a1 + 400) = v3;
    v4 = v3;
  }

  else
  {
    v4 = *(a1 + 400);
  }

  v5 = v3 - v4;
  v6 = 2.0;
  if (v5 >= 10.0 && *(a1 + 408) >= 5)
  {
    v6 = 10.0;
  }

  v7 = *(a1 + 416);
  if (v7 == 1)
  {
    LOBYTE(v7) = 0;
    *(a1 + 416) = 0;
  }

  v8 = 5 * *(a1 + 8);
  v9 = (v8 >> 1) & 0x1FFFFFFF;
  if (((v8 >> 2) & 0xFFFFFFF) < 0x55F)
  {
    v11 = 20 * *(a1 + 8);
    v12 = v11 >> 4;
    if (v11 <= 0x897)
    {
      v9 = 257;
    }

    if (v12 <= 0x100)
    {
      v13 = 256;
    }

    else
    {
      v13 = v11 >> 4;
    }

    if (v11 >= 0xFA0)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    if (v11 >= 0xFA0)
    {
      v9 = v13 + 1;
    }

    if (v12 >= 0x36B)
    {
      v10 = 3;
    }

    else
    {
      v10 = v14;
    }

    if (v12 >= 0x36B)
    {
      v9 = (20 * *(a1 + 8)) / 0x18u + 1;
    }
  }

  else
  {
    v10 = 2;
    do
    {
      ++v10;
    }

    while (v9 / v10 > *(a1 + 84));
    v9 = v9 / v10 + 1;
  }

  *(a1 + 388) = v9;
  *(a1 + 392) = v10;
  v15 = v9 * v10;
  *(a1 + 380) = v15;
  if ((v7 & 1) != 0 || v3 - *(a1 + 368) < v6)
  {
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x277CE5818];
    v19 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315906;
        v21 = v17;
        v22 = 2080;
        v23 = "BWEstCheckIfLargeFrameNeeded";
        v24 = 1024;
        v25 = 1730;
        v26 = 1024;
        v27 = v15;
        _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ^^^^^ LARGE frame req'd of %d ", &v20, 0x22u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      BWEstCheckIfLargeFrameNeeded_cold_1();
    }
  }

  return v15;
}

uint64_t GCK_BWE_CreateHandle(uint64_t *a1, int a2, int a3)
{
  if (malloc_type_calloc(1uLL, 0x2B8uLL, 0x1000040040ACAD7uLL))
  {
    CreateHandle();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GCK_BWE_CreateHandle_cold_3();
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_FAULT))
    {
      GCK_BWE_CreateHandle_cold_2();
    }
  }

  return 2149908483;
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1)
{

  return [v1 serviceNameforDeviceID:v2 playerID:a1];
}

uint64_t OUTLINED_FUNCTION_7_2()
{
  v2 = *(v0 + 40);

  return [v2 playerID];
}

double machTimeScale(uint64_t a1, uint64_t a2)
{
  if ((_MergedGlobals_0 & 1) == 0)
  {
    machTimeScale_cold_1();
  }

  return *&qword_27F20E558;
}

void gkDiscoveryBrowseCallback(int a1, int a2, uint32_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a4;
  v49 = *MEMORY[0x277D85DE8];
  sdRef = 0xAAAAAAAAAAAAAAAALL;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317442;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = "gkDiscoveryBrowseCallback";
      *&buf[22] = 1024;
      LODWORD(v32) = 253;
      WORD2(v32) = 1024;
      *(&v32 + 6) = a1;
      WORD5(v32) = 1024;
      HIDWORD(v32) = a2;
      LOWORD(v33) = 1024;
      *(&v33 + 2) = a3;
      HIWORD(v33) = 1024;
      v34 = v12;
      v35 = 2080;
      v36 = a5;
      v37 = 2080;
      v38 = a6;
      v39 = 2080;
      v40 = a7;
      _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bonjour browse callback - sdRef=%x, flags=%x, interfaceIndex=%d, errorCode=%d, serviceName=%s, regtype=%s, replyDomain=%s", buf, 0x52u);
    }
  }

  if (a8)
  {
    if (v12)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gkDiscoveryBrowseCallback_cold_1();
        }
      }

      return;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *&v32 = __Block_byref_object_copy__0;
    *(&v32 + 1) = __Block_byref_object_dispose__0;
    v33 = a8;
    if (a5)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:a5];
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 & 2;
    if (!v18)
    {
      if ([*(*&buf[8] + 40) browseCallback])
      {
        v19 = [*(*&buf[8] + 40) browseCallback];
        (*(v19 + 16))(v19, 0, v17, a3, 0, 0);
      }

LABEL_43:
      _Block_object_dispose(buf, 8);
      return;
    }

    if (a5 && a6 && a7)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.%s%s", a5, a6, a7];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          if (v20)
          {
            v23 = [objc_msgSend_description(v20) UTF8String];
          }

          else
          {
            v23 = "<nil>";
          }

          *v41 = 136315906;
          v42 = v21;
          v43 = 2080;
          v44 = "generateFullName";
          v45 = 1024;
          v46 = 236;
          v47 = 2080;
          v48 = v23;
          _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gkDiscovery: generated fullname %s for TxT record", v41, 0x26u);
        }
      }

      if (v20)
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __gkDiscoveryBrowseCallback_block_invoke;
        v26[3] = &unk_279683338;
        v29 = v18 >> 1;
        v26[4] = v17;
        v26[5] = buf;
        v27 = a3;
        v28 = 0;
        v24 = [v26 copy];
        if (DNSServiceQueryRecord(&sdRef, 0x20000u, a3, [v20 UTF8String], 0x10u, 1u, gkDiscoveryTxtCallback, v24))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              gkDiscoveryBrowseCallback_cold_3();
            }
          }
        }

        else if (DNSServiceSetDispatchQueue(sdRef, MEMORY[0x277D85CD0]))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              gkDiscoveryBrowseCallback_cold_4();
            }
          }
        }

        goto LABEL_43;
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gkDiscoveryBrowseCallback_cold_2();
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gkDiscoveryBrowseCallback_cold_5();
      }
    }

    goto LABEL_43;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      gkDiscoveryBrowseCallback_cold_6();
    }
  }
}

void sub_24E572E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void gkDiscoveryResolveCallback(int a1, int a2, uint32_t a3, uint64_t a4, uint64_t a5, const char *a6, unsigned int a7, int a8, uint64_t a9, void *a10)
{
  v53 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317698;
      *&buf[4] = v17;
      v33 = 2080;
      v34 = "gkDiscoveryResolveCallback";
      v35 = 1024;
      v36 = 401;
      v37 = 1024;
      v38 = a1;
      v39 = 1024;
      v40 = a2;
      v41 = 1024;
      v42 = a3;
      v43 = 1024;
      v44 = a4;
      v45 = 2080;
      v46 = a5;
      v47 = 2080;
      v48 = a6;
      v49 = 1024;
      v50 = __rev16(a7);
      v51 = 1024;
      v52 = a8;
      _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bonjour resolve callback - sdRef=%x, flags=%x, interfaceIndex=%d, errorCode=%d, fullname=%s, hosttarget=%s, port=%d, txtLen=%d", buf, 0x54u);
    }
  }

  if (a10)
  {
    v19 = [objc_msgSend(a10 "context")];
    v20 = [a10 resolveCompletionHandler];
    v21 = v20;
    if (a4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gkDiscoveryResolveCallback_cold_1();
        }
      }

      (*(v21 + 16))(v21, 0, 0, 0, a4);
      return;
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __gkDiscoveryResolveCallback_block_invoke;
    v30[3] = &unk_279683360;
    v30[4] = v20;
    v31 = a7;
    v22 = [v30 copy];
    *buf = 0;
    AddrInfo = DNSServiceGetAddrInfo(buf, 0x20000u, a3, 0, a6, gkDiscoveryGetAddrCallback, v22);
    if (AddrInfo || (v25 = DNSServiceSetDispatchQueue(*buf, v19)) == 0)
    {
      if (*buf)
      {
        v24 = [a10 serviceRefList];
        [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithPointer:", *buf)}];
      }

      if (!AddrInfo)
      {
        return;
      }
    }

    else
    {
      v26 = v25;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gkDiscoveryResolveCallback_cold_2();
        }
      }

      if (*buf)
      {
        DNSServiceRefDeallocate(*buf);
        *buf = 0;
      }

      AddrInfo = v26;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
    {
      gkDiscoveryResolveCallback_cold_3();
      if (!v21)
      {
        return;
      }
    }

    else if (!v21)
    {
      return;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __gkDiscoveryResolveCallback_block_invoke_133;
    block[3] = &unk_2796832E8;
    block[4] = v21;
    v29 = AddrInfo;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      gkDiscoveryResolveCallback_cold_4();
    }
  }
}

void sub_24E5746F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void gkDiscoveryRegisterCallback(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v34 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136317186;
      v17 = v14;
      v18 = 2080;
      v19 = "gkDiscoveryRegisterCallback";
      v20 = 1024;
      v21 = 738;
      v22 = 1024;
      v23 = a1;
      v24 = 1024;
      v25 = a2;
      v26 = 1024;
      v27 = v11;
      v28 = 2080;
      v29 = a4;
      v30 = 2080;
      v31 = a5;
      v32 = 2080;
      v33 = a6;
      _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bonjour register callback - sdRef=%x, flags=%x, errorCode=%d, name=%s, regtype=%s, domain=%s", &v16, 0x4Cu);
    }
  }

  if (v11)
  {
    if (v11 == -65548)
    {
      (*(a7 + 16))(a7);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gkDiscoveryRegisterCallback_cold_1();
      }
    }
  }
}

void *__gkDiscoveryBrowseCallback_block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) browseCallback];
  if (result)
  {
    v3 = *([*(*(*(a1 + 40) + 8) + 40) browseCallback] + 16);

    return v3();
  }

  return result;
}

void gkDiscoveryTxtCallback(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, const void *a9, int a10, void (**a11)(void, void))
{
  v15 = a4;
  v45 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = "gkDiscoveryTxtCallback";
      *&buf[22] = 1024;
      *&buf[24] = 190;
      *&buf[28] = 1024;
      *&buf[30] = a1;
      *&buf[34] = 1024;
      *&buf[36] = a2;
      *&buf[40] = 1024;
      *&buf[42] = a3;
      *&buf[46] = 1024;
      LODWORD(v32) = v15;
      WORD2(v32) = 2080;
      *(&v32 + 6) = a5;
      HIWORD(v32) = 1024;
      LODWORD(v33) = a6;
      WORD2(v33) = 1024;
      *(&v33 + 6) = a7;
      WORD5(v33) = 1024;
      HIDWORD(v33) = a8;
      LOWORD(v34) = 1024;
      *(&v34 + 2) = a10;
      _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bonjour txt callback - sdRef=%x, flags=%x, interfaceIndex=%d, errorCode=%d, fullname=%s, rrtype=%u, rrclass=%u, rdlen=%u, ttl=%u", buf, 0x56u);
    }
  }

  if (a11)
  {
    if (v15)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gkDiscoveryTxtCallback_cold_1();
        }
      }
    }

    v20 = [MEMORY[0x277CBEB38] dictionary];
    if (TXTRecordGetCount(a8, a9))
    {
      v21 = 0;
      do
      {
        *&v22 = 0xAAAAAAAAAAAAAAAALL;
        *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v43 = v22;
        v44 = v22;
        v41 = v22;
        v42 = v22;
        v39 = v22;
        v40 = v22;
        v37 = v22;
        v38 = v22;
        v35 = v22;
        v36 = v22;
        v33 = v22;
        v34 = v22;
        *&buf[32] = v22;
        v32 = v22;
        *buf = v22;
        *&buf[16] = v22;
        valueLen = -86;
        value = 0xAAAAAAAAAAAAAAAALL;
        TXTRecordGetItemAtIndex(a8, a9, v21, 0x100u, buf, &valueLen, &value);
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
        v24 = objc_alloc(MEMORY[0x277CCACA8]);
        v25 = [v24 initWithBytes:value length:valueLen encoding:4];
        if (v23)
        {
          v26 = v25;
          if ([v23 length])
          {
            if (v26)
            {
              [v20 setObject:v26 forKeyedSubscript:v23];
            }
          }
        }

        ++v21;
      }

      while (TXTRecordGetCount(a8, a9) > v21);
    }

    (a11)[2](a11, v20);
    if ((a2 & 1) == 0)
    {
      if (sdRef)
      {
        DNSServiceRefDeallocate(sdRef);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      gkDiscoveryTxtCallback_cold_2();
    }
  }
}

void gkDiscoveryGetAddrCallback(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, int a7, void (**a8)(void, void, void, void))
{
  v45 = *MEMORY[0x277D85DE8];
  if (a8)
  {
    if (a4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gkDiscoveryGetAddrCallback_cold_1();
        }
      }

      a8[2](a8, 0, 0, a4);
      return;
    }

    *v43 = 0u;
    memset(v44, 0, sizeof(v44));
    v16 = a6[1];
    if (v16 == 30)
    {
      v17 = v43;
      v18 = a6 + 8;
      v19 = 30;
      v20 = 46;
    }

    else
    {
      if (v16 != 2)
      {
        v17 = "unknown address";
LABEL_16:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v23 = 136317442;
            v24 = v21;
            v25 = 2080;
            v26 = "gkDiscoveryGetAddrCallback";
            v27 = 1024;
            v28 = 378;
            v29 = 1024;
            v30 = a1;
            v31 = 1024;
            v32 = a2;
            v33 = 1024;
            v34 = a3;
            v35 = 1024;
            v36 = 0;
            v37 = 2080;
            v38 = a5;
            v39 = 2080;
            v40 = v17;
            v41 = 1024;
            v42 = a7;
            _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bonjour getAddr callback - sdRef=%x, flags=%x, interfaceIndex=%d, errorCode=%d, hostname=%s, sockaddr=%s, ttl=%d", &v23, 0x4Eu);
          }
        }

        (a8)[2](a8, a3, a6, 0);
        if ((a2 & 1) == 0)
        {
        }

        return;
      }

      v17 = v43;
      v18 = a6 + 4;
      v19 = 2;
      v20 = 16;
    }

    inet_ntop(v19, v18, v43, v20);
    goto LABEL_16;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      gkDiscoveryGetAddrCallback_cold_2();
    }
  }
}

void OUTLINED_FUNCTION_9_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x22u);
}

void *copysockaddr(unsigned __int8 *a1)
{
  v2 = a1[1];
  if (v2 == 2)
  {
    v3 = 16;
  }

  else
  {
    if (v2 != 30)
    {
      return 0;
    }

    v3 = 28;
  }

  v4 = malloc_type_malloc(v3, 0x11069132uLL);
  if (!v4)
  {
    return 0;
  }

  return memcpy(v4, a1, v3);
}

void OUTLINED_FUNCTION_9_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x3Au);
}

void AGPSendingSetElement::remove(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "remove";
  v6 = 1024;
  v7 = 802;
  _os_log_error_impl(&dword_24E50C000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d ERROR: CAN'T UPDATE (BAD TIMESTAMP) !!!!!!!!!!!!", &v2, 0x1Cu);
}

void GCKSessionInitiateRelay(uint64_t a1, int a2, const void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  error = 0;
  OUTLINED_FUNCTION_30();
  CheckInHandleDebug();
}

void GCKSessionUpdateRelay(uint64_t a1, int a2, const void *a3)
{
  error = 0;
  OUTLINED_FUNCTION_30();
  CheckInHandleDebug();
}

uint64_t GCKInvalidateOneCList(void *a1, int *a2)
{
  if (*a2 != -1)
  {
    close(*a2);
    *a2 = -1;
  }

  v4 = a2[18];
  if (v4 != -1)
  {
    close(v4);
    a2[18] = -1;
  }

  ICERemoveOneInterface();
  v5 = a1 + 986;
  do
  {
    v6 = v5;
    v7 = *v5;
    v5 = (*v5 + 728);
    if (v7)
    {
      v8 = v7 == a2;
    }

    else
    {
      v8 = 1;
    }
  }

  while (!v8);
  if (!v7)
  {
    return 0;
  }

  *v6 = *(v7 + 91);
  *(v7 + 91) = a1[987];
  a1[987] = v7;
  return 1;
}

void TracePrintChanStats_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Eu);
}

void TracePrintChanStats_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Eu);
}

void TracePrintChanStats_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x36u);
}

void TracePrintChanStats_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x28u);
}

void TracePrintChanStats_cold_5()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void TracePrintChanStats_cold_6()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x30u);
}

void TracePrintChanStats_cold_7()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void GCKSession_TrimLocalInterfaceList_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, " [%s] %s:%d InterfaceFilter got 2 or more interfaces already. skip the rest of the list.", v2, v3, v4, v5);
}

void GCKSession_TrimLocalInterfaceList_cold_2(char a1, char a2, _BYTE *a3, _BYTE *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = v8;
      OUTLINED_FUNCTION_10();
      v12 = 331;
      _os_log_error_impl(&dword_24E50C000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d InterfaceFilter found an invalid number after actions done. We should not update the interface list.", &v10, 0x1Cu);
    }
  }

  *a4 = a2 & 1;
  *a3 = a1 & 1;
}

void GCKSession_TrimLocalInterfaceList_cold_3(uint64_t a1, _BYTE *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = v3;
      OUTLINED_FUNCTION_10();
      v7 = 313;
      _os_log_error_impl(&dword_24E50C000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d ipPortList must not be nil and ipPortListCount must not be nil. Skip interface list trimming.", &v5, 0x1Cu);
    }
  }

  *a2 = 0;
  OUTLINED_FUNCTION_21_0();
}

void GCKSession_TrimLocalInterfaceList_cold_4()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, " [%s] %s:%d InterfaceFilter not trimming interfaces for local gaming.", v2, v3, v4, v5);
}

void _GCKSession_AddOneIPPortToInterfaceList_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_29())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_14_0(&dword_24E50C000, v0, v1, " [%s] %s:%d Bailing due to: failed to reallocate ipPorts.", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void _GCKSession_AddOneIPPortToInterfaceList_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void _GCKSession_AddOneIPPortToInterfaceList_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_29())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_14_0(&dword_24E50C000, v0, v1, " [%s] %s:%d Bailing due to: failed to calloc ipPorts.", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void _GCKSession_AddOneIPPortToInterfaceList_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_19_0();
        _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_19_0();
      _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void _GCKSession_AddOneIPPortToInterfaceList_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_29())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_14_0(&dword_24E50C000, v0, v1, " [%s] %s:%d ipPortList must not be nil. Skip interface list trimming.", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void _GCKSession_AddOneIPPortToInterfaceList_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_29())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_14_0(&dword_24E50C000, v0, v1, " [%s] %s:%d ipPortListCount must not be nil. Skip interface list trimming.", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void _GCKSession_AddOneIPPortToInterfaceList_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_29())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_14_0(&dword_24E50C000, v0, v1, " [%s] %s:%d newIPPortToAdd must not be nil. Skip interface list trimming.", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void GCKSessionCreate_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void GCKSessionCreate_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void GCKSessionCreate_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void GCKSessionCreate_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void GCKSessionCreate_cold_5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void GCKSessionCreate_cold_6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void GCKSessionRelease_cold_1()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x38u);
}

void gckSessionRecvProc_cold_1(double *a1, pthread_mutex_t *a2, int *a3, uint64_t a4)
{
  v8 = micro(a1, a2);
  if (v8 - *a1 > 15.0)
  {
    pthread_mutex_lock(a2);
    *a1 = v8;
    TracePrintNodesX(*a3, a4);
    pthread_mutex_unlock(a2);
  }
}

void gckSessionRecvProc_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionRecvProc_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionRecvProc_cold_4()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void gckSessionLocalClientProc_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void gckSessionSendDD_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void GCKSessionPrepareConnectionWithRelayInfo_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void GCKSessionPrepareConnectionWithRelayInfo_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void GCKSessionPrepareConnectionWithRelayInfo_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void gckSessionCreateSocketAndBind_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionCreateSocketAndBind_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionCreateSocketAndBind_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionCreateSocketAndBind_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionCreateSocketAndBind_cold_5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionCreateSocketAndBind_cold_6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void gckSessionCreateSocketAndBind_cold_7()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void GCKGetNAT64Prefix_cold_1(uint64_t a1, uint64_t a2)
{
  micro(a1, a2);
  LODWORD(v9) = 136316162;
  *(&v9 + 4) = a1;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_23(&dword_24E50C000, v3, v4, " [%s] %s:%d GCKGetNAT64Prefix: start NAT64 prefix resolution for %s at %f", v5, v6, v7, v8, v9, DWORD2(v9));
}

void GCKGetNAT64Prefix_cold_2(uint64_t a1, uint64_t a2)
{
  micro(a1, a2);
  LODWORD(v9) = 136316162;
  *(&v9 + 4) = a1;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_23(&dword_24E50C000, v3, v4, " [%s] %s:%d GCKGetNAT64Prefix: no NAT64 prefix discovered for %s at %f", v5, v6, v7, v8, v9, DWORD2(v9));
}

void GCKGetNAT64Prefix_cold_3(uint64_t a1, uint64_t a2)
{
  micro(a1, a2);
  LODWORD(v9) = 136316162;
  *(&v9 + 4) = a1;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_23(&dword_24E50C000, v3, v4, " [%s] %s:%d GCKGetNAT64Prefix: NAT64 prefix resolved for %s at %f", v5, v6, v7, v8, v9, DWORD2(v9));
}

void GCKSessionEstablishConnectionWithRelayInfo_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void GCKSessionPrepareRetryICE_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void GCKSessionStartEventCallbacks_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionSendHello_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionWaitForHello_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void SendUDPPacketCList_cold_1(uint64_t a1, uint64_t a2)
{
  ++_MergedGlobals;
  *algn_27F20E504 += a1;
  v2 = micro(a1, a2);
  if (v2 - *&qword_27F20E510 > 1.0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_20_0();
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_16_0(v4, v5);
          OUTLINED_FUNCTION_19_0();
          _os_log_impl(v6, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 0x38u);
        }
      }

      else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_16_0(v10, v11);
        OUTLINED_FUNCTION_19_0();
        _os_log_debug_impl(v12, v13, OS_LOG_TYPE_DEBUG, v14, v15, 0x38u);
      }
    }

    qword_27F20E510 = *&v2;
    dword_27F20E508 = _MergedGlobals;
    unk_27F20E50C = *algn_27F20E504;
  }
}

void __SendUDPPacketCList_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  __error();
  v4 = 136315906;
  v5 = a1;
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  _os_log_error_impl(&dword_24E50C000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d sendmsg error: errno = %d", &v4, 0x22u);
}

void attempt_failover_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionLocalServerProc_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionLocalServerProc_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionLocalServerProc_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionLocalServerProc_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionLocalServerProc_cold_5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionLocalServerProc_cold_6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionLocalServerProc_cold_7()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void gckSessionLocalServerProc_cold_8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void gckSessionProcessHello_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void gckSessionProcessHello_cold_2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, " [%s] %s:%d FLOW CONTROL enabled.", v2, v3, v4, v5);
}