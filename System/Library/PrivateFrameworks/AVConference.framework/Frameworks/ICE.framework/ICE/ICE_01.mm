void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x22u);
}

uint64_t UpdateICEState(unsigned int *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!a2)
  {
    v4 = 0;
    *a1 = 0;
    return v4 - v3;
  }

  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      if (a2 == 1)
      {
        v5 = 2;
        goto LABEL_23;
      }
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_24;
      }

      if (a2 == 4)
      {
        v5 = 3;
LABEL_23:
        *a1 = v5;
        goto LABEL_24;
      }
    }

    if (a2 != 5)
    {
      goto LABEL_24;
    }

    v5 = 4;
    goto LABEL_23;
  }

  if (v3 != 3)
  {
    if (v3 != 4)
    {
      if (v3 != 6 || a2 != 6)
      {
        goto LABEL_24;
      }

LABEL_17:
      v5 = 9;
      goto LABEL_23;
    }

    if (a2 != 4)
    {
      if (a2 != 7)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

LABEL_21:
    v5 = 6;
    goto LABEL_23;
  }

  if (a2 == 2)
  {
    goto LABEL_21;
  }

LABEL_24:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = (&g_aICEState)[2 * v3];
      v9 = (&g_aICEState)[2 * *a1];
      v11 = 136316162;
      v12 = v6;
      v13 = 2080;
      v14 = "UpdateICEState";
      v15 = 1024;
      v16 = 122;
      v17 = 2080;
      v18 = v8;
      v19 = 2080;
      v20 = v9;
      _os_log_impl(&dword_23D497000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tOLD STATE(%s)->NEW STATE(%s)", &v11, 0x30u);
    }
  }

  v4 = *a1;
  return v4 - v3;
}

uint64_t FindMatchCP(uint64_t a1, unsigned int a2, void *a3, int a4)
{
  if (a4)
  {
    v4 = (a3 + 10);
  }

  else
  {
    v4 = a3;
  }

  if (a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = (a3 + 10);
  }

  if (a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = 0;
  v8 = a2;
  while (!MatchCandidatePairWithIDs(a1, v4, v5))
  {
    ++v7;
    a1 += 400;
    if (v8 == v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

BOOL MatchCandidatePairWithIDs(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2 && a3)
    {
      if (*a2 == *(a1 + 12) && *a3 == *(a1 + 160))
      {
        return 1;
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v8 = 136316162;
      v9 = v6;
      v10 = 2080;
      v11 = "MatchCandidatePairWithIDs";
      v12 = 1024;
      v13 = 135;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = a3;
      _os_log_error_impl(&dword_23D497000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d pszLocalID(%p) or pszRemoteID(%p) is NULL!", &v8, 0x30u);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    MatchCandidatePairWithIDs_cold_1();
  }

  return 0;
}

uint64_t SaveSTUNRequest(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, __int128 *a5, int a6)
{
  v11 = malloc_type_calloc(1uLL, 0x638uLL, 0x102004070FB87F4uLL);
  if (v11)
  {
    v12 = v11;
    *v11 = *a4 & 4;
    v11[2] = 2;
    *(v11 + 6) = 0;
    *(v11 + 370) = a6;
    *(v11 + 373) = a3;
    v13 = __memcpy_chk();
    v14 = *(a4 + 32);
    v15 = *(a4 + 16);
    *(v12 + 1496) = *a4;
    *(v12 + 1512) = v15;
    *(v12 + 1528) = v14;
    v17 = *a5;
    v16 = a5[1];
    *(v12 + 1568) = *(a5 + 4);
    *(v12 + 1536) = v17;
    *(v12 + 1552) = v16;
    *(v12 + 1576) = micro(v13, v18);
    v19 = *a1;
    if (*a1)
    {
      do
      {
        v20 = v19;
        v19 = *(v19 + 1584);
      }

      while (v19);
      v21 = 0;
      *(v20 + 1584) = v12;
    }

    else
    {
      v21 = 0;
      *a1 = v12;
    }
  }

  else
  {
    v21 = 2148859907;
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          SaveSTUNRequest_cold_2();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_FAULT))
      {
        SaveSTUNRequest_cold_1();
      }
    }
  }

  return v21;
}

uint64_t ProcessEvent(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v145 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  memset(v143, 170, sizeof(v143));
  *&v142[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v141[1] = v11;
  *v142 = v11;
  v141[0] = v11;
  *(v140 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v139[1] = v11;
  v140[0] = v11;
  v139[0] = v11;
  v138[3] = v11;
  v138[2] = v11;
  v138[1] = v11;
  v138[0] = v11;
  memset(v137, 170, 25);
  v136 = 0xAAAAAAAAAAAAAAAALL;
  v135 = v11;
  v134 = v11;
  v124 = 1472;
  v123 = 0;
  v122 = 0;
  cf = 0;
  v12 = *(v9 + 184);
  v13 = v5[2];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v9;
      v17 = v3;
      v18 = v5;
      v19 = v10;
      v20 = IPPORTToStringWithSize(v141, v13 + 68, 0x36uLL);
      v21 = IPPORTToStringWithSize(v139, v13 + 108, 0x36uLL);
      v22 = *(v13 + 148);
      v23 = "(relay) ";
      *buf = 136316418;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      if (!v22)
      {
        v23 = " ";
      }

      *&buf[14] = "ProcessEvent";
      *&buf[22] = 1024;
      *&buf[24] = 968;
      *&buf[28] = 2080;
      *&buf[30] = v20;
      v10 = v19;
      v5 = v18;
      v3 = v17;
      v9 = v16;
      *&buf[38] = 2080;
      *&buf[40] = v21;
      *&buf[48] = 2080;
      *&buf[50] = v23;
      _os_log_impl(&dword_23D497000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ***** event (%s->%s) fired %s*****", buf, 0x3Au);
    }
  }

  if (!IsIPPORTValid(v13 + 108) || (*(v13 + 108) & 1) == 0 && ((v24 = *(v13 + 128), v24 == -1408237568) || v24 == 167772160 || v24 == -1062731776))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v25;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessEvent";
        *&buf[22] = 1024;
        *&buf[24] = 974;
        v27 = " [%s] %s:%d ** skip invalid remote IPPort.";
        goto LABEL_14;
      }
    }

    goto LABEL_16;
  }

  if (*(v9 + 764) && !*(v13 + 148) && (*(v13 + 28) & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v31;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessEvent";
        *&buf[22] = 1024;
        *&buf[24] = 980;
        v27 = " [%s] %s:%d *** skip IPv4 P2P event.";
        goto LABEL_14;
      }
    }

    goto LABEL_16;
  }

  v119 = v7;
  v32 = *(v9 + 200);
  if (v32 < 1)
  {
LABEL_27:
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v36;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessEvent";
        *&buf[22] = 1024;
        *&buf[24] = 988;
        *&buf[28] = 1024;
        *&buf[30] = 988;
        _os_log_impl(&dword_23D497000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEConnCheck.c:%d: candidate pair not found", buf, 0x22u);
      }
    }

    FreeEvent(v5);
    return 2148859926;
  }

  v33 = 0;
  v34 = 0;
  v35 = 400 * v32;
  while (!MatchCandidatePairWithIDs(v12 + v33, (v13 + 14), (v13 + 4)))
  {
    ++v34;
    v33 += 400;
    if (v35 == v33)
    {
      goto LABEL_27;
    }
  }

  v118 = v10;
  v39 = *(v9 + 200);
  if (v39 < 1)
  {
    goto LABEL_112;
  }

  v40 = 0;
  v41 = 0;
  v42 = v12 + v33;
  v43 = 400 * v39;
  v44 = -1;
  v45 = -1;
  do
  {
    if (v34 == v41 || *(v12 + v40 + 296) != 9 || (*(v12 + v40 + 24) & 1) != (*(v42 + 24) & 1))
    {
      goto LABEL_63;
    }

    v46 = v12 + v40;
    if (*(v12 + v40 + 24))
    {
      v47 = *(v46 + 44);
      v48 = *(v46 + 52);
      if (v47 != *(v42 + 44) || v48 != *(v42 + 52))
      {
        goto LABEL_63;
      }
    }

    else if (*(v46 + 44) != *(v42 + 44))
    {
      goto LABEL_63;
    }

    if (*(v12 + v40 + 60) != *(v42 + 60) || (*(v12 + v40 + 172) & 1) != (*(v42 + 172) & 1))
    {
      goto LABEL_63;
    }

    v50 = v12 + v40;
    if (*(v12 + v40 + 172))
    {
      v51 = *(v50 + 192);
      v52 = *(v50 + 200);
      if (v51 != *(v42 + 192) || v52 != *(v42 + 200))
      {
        goto LABEL_63;
      }
    }

    else if (*(v50 + 192) != *(v42 + 192))
    {
      goto LABEL_63;
    }

    if (*(v12 + v40 + 208) == *(v42 + 208))
    {
      v54 = *(v12 + v40 + 4) == 5 && *(v12 + v40 + 152) == 5;
      v55 = *(v42 + 4) == 5 && *(v42 + 152) == 5;
      if (v54 == v55)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v111 = VRTraceErrorLogLevelToCSTR();
          v112 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = v111;
            *&buf[12] = 2080;
            *&buf[14] = "ProcessEvent";
            *&buf[22] = 1024;
            *&buf[24] = 999;
            *&buf[28] = 1024;
            *&buf[30] = v34;
            *&buf[34] = 1024;
            *&buf[36] = v41;
            _os_log_impl(&dword_23D497000, v112, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Candidate pair [%d] is treated as duplicate of [%d]", buf, 0x28u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v113 = VRTraceErrorLogLevelToCSTR();
          v114 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v115 = IPPORTToStringWithSize(v141, v42 + 24, 0x36uLL);
            v116 = IPPORTToStringWithSize(v139, v42 + 172, 0x36uLL);
            *buf = 136316162;
            *&buf[4] = v113;
            *&buf[12] = 2080;
            *&buf[14] = "ProcessEvent";
            *&buf[22] = 1024;
            *&buf[24] = 1016;
            *&buf[28] = 2080;
            *&buf[30] = v115;
            *&buf[38] = 2080;
            *&buf[40] = v116;
            _os_log_impl(&dword_23D497000, v114, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** flush all duplicated BINDING_REQUEST: %s -> %s", buf, 0x30u);
          }
        }

        v117 = *(v9 + 160);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 0x40000000;
        *&buf[16] = __FlushEventsForCandidatePair_block_invoke;
        *&buf[24] = &__block_descriptor_tmp_0;
        *&buf[32] = v42;
        FreeEventsMatchingPredicate(v117, buf);
        goto LABEL_16;
      }
    }

LABEL_63:
    if (*(v12 + v40 + 356))
    {
      if (*(v12 + v40 + 376))
      {
        v44 = v41;
      }

      else
      {
        v45 = v41;
      }
    }

    ++v41;
    v40 += 400;
  }

  while (v43 != v40);
  if (v44 == -1)
  {
    goto LABEL_112;
  }

  v56 = *(v42 + 24) & 1;
  v57 = v12 + 400 * v44;
  if (v56 != (*(v57 + 24) & 1))
  {
    goto LABEL_89;
  }

  if (v56)
  {
    if (*(v42 + 44) == *(v57 + 44) && *(v42 + 52) == *(v57 + 52))
    {
      goto LABEL_78;
    }

    goto LABEL_89;
  }

  if (*(v42 + 44) != *(v57 + 44))
  {
    goto LABEL_89;
  }

LABEL_78:
  if (*(v42 + 60) != *(v57 + 60) || (*(v42 + 172) & 1) != (*(v57 + 172) & 1))
  {
LABEL_89:
    if (v45 == -1)
    {
      goto LABEL_112;
    }

    v60 = v12 + 400 * v45;
    if (v56 != (*(v60 + 24) & 1))
    {
      goto LABEL_110;
    }

    if (v56)
    {
      if (*(v42 + 44) != *(v60 + 44) || *(v42 + 52) != *(v60 + 52))
      {
        goto LABEL_110;
      }
    }

    else if (*(v42 + 44) != *(v60 + 44))
    {
      goto LABEL_110;
    }

    if (*(v42 + 60) != *(v60 + 60) || (*(v42 + 172) & 1) != (*(v60 + 172) & 1))
    {
      goto LABEL_110;
    }

    if (*(v42 + 172))
    {
      if (*(v42 + 192) != *(v60 + 192) || *(v42 + 200) != *(v60 + 200))
      {
        goto LABEL_110;
      }
    }

    else if (*(v42 + 192) != *(v60 + 192))
    {
LABEL_110:
      v63 = *(v118 + 88);
      if ((IsBetterCandidatePair(v9, v63, 1, v34, v44) & 1) != 0 || (IsBetterCandidatePair(v9, v63, 0, v34, v45) & 1) != 0 || *(v42 + 4) == 5 && *(v42 + 152) == 5)
      {
        goto LABEL_112;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_16;
      }

      v80 = VRTraceErrorLogLevelToCSTR();
      v81 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v82 = IPPORTToStringWithSize(v141, v42 + 24, 0x36uLL);
      v83 = IPPORTToStringWithSize(v139, v42 + 172, 0x36uLL);
      *buf = 136316162;
      *&buf[4] = v80;
      *&buf[12] = 2080;
      *&buf[14] = "ProcessEvent";
      *&buf[22] = 1024;
      *&buf[24] = 1032;
      *&buf[28] = 2080;
      *&buf[30] = v82;
      *&buf[38] = 2080;
      *&buf[40] = v83;
      v27 = " [%s] %s:%d ** skip inferior BINDING_REQUEST: %s -> %s";
      v28 = v81;
      v29 = 48;
      goto LABEL_15;
    }

    if (*(v42 + 208) == *(v60 + 208))
    {
      goto LABEL_112;
    }

    goto LABEL_110;
  }

  if (*(v42 + 172))
  {
    if (*(v42 + 192) == *(v57 + 192) && *(v42 + 200) == *(v57 + 200))
    {
      goto LABEL_88;
    }

    goto LABEL_89;
  }

  if (*(v42 + 192) != *(v57 + 192))
  {
    goto LABEL_89;
  }

LABEL_88:
  if (*(v42 + 208) != *(v57 + 208))
  {
    goto LABEL_89;
  }

LABEL_112:
  v64 = (v12 + 400 * v34);
  v65 = v64[74];
  v66 = v65 == 3 || v65 >= 6;
  if (v66 && !v64[89])
  {
LABEL_123:
    if (*(v13 + 180))
    {
      v67 = *(v9 + 840);
      goto LABEL_125;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_16;
    }

    v73 = VRTraceErrorLogLevelToCSTR();
    v74 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v75 = ICEUNToString(v138, v13 + 4);
    v76 = *(v9 + 840);
    v77 = (&g_aICEState)[2 * v64[74]];
    v78 = *(v13 + 148);
    v79 = *(v13 + 152) > 0;
    *buf = 136316930;
    *&buf[4] = v73;
    *&buf[12] = 2080;
    *&buf[14] = "ProcessEvent";
    *&buf[22] = 1024;
    *&buf[24] = 1045;
    *&buf[28] = 2080;
    *&buf[30] = v75;
    *&buf[38] = 1024;
    *&buf[40] = v76;
    *&buf[44] = 2080;
    *&buf[46] = v77;
    *&buf[54] = 1024;
    *&buf[56] = v79;
    *&buf[60] = 1024;
    *&buf[62] = v78;
    v27 = " [%s] %s:%d ** skip BINDING_REQUEST for [%s], role [%d], state [%s], nominate [%d], relay [%d]";
    v28 = v74;
    v29 = 66;
LABEL_15:
    _os_log_impl(&dword_23D497000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
    goto LABEL_16;
  }

  v67 = *(v9 + 840);
  if (v67 != 2 && (v67 != 1 || v65 != 9))
  {
    goto LABEL_136;
  }

  if (v64[89] && !*(v13 + 152))
  {
    goto LABEL_123;
  }

LABEL_125:
  if (v67 != 2)
  {
    goto LABEL_136;
  }

  if (v65 > 5)
  {
    if (v65 != 9 || *(v13 + 152) < 1)
    {
      goto LABEL_136;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_16;
    }

    v69 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315650;
    *&buf[4] = v69;
    *&buf[12] = 2080;
    *&buf[14] = "ProcessEvent";
    *&buf[22] = 1024;
    *&buf[24] = 1061;
    v27 = " [%s] %s:%d ** skip nomination request for selected candidate pair.";
    goto LABEL_14;
  }

  if (*(v13 + 152) >= 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v68 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v68;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessEvent";
        *&buf[22] = 1024;
        *&buf[24] = 1053;
        v27 = " [%s] %s:%d ** skip old nomination request.";
        goto LABEL_14;
      }
    }

LABEL_16:
    FreeEvent(v5);
    return 0;
  }

LABEL_136:
  if (!*(v13 + 148))
  {
    goto LABEL_168;
  }

  pthread_mutex_lock((v118 + 568));
  v70 = *(v118 + 632);
  if (!v70)
  {
LABEL_150:
    pthread_mutex_unlock((v118 + 568));
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_16;
    }

    v72 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315650;
    *&buf[4] = v72;
    *&buf[12] = 2080;
    *&buf[14] = "ProcessEvent";
    *&buf[22] = 1024;
    *&buf[24] = 1078;
    v27 = " [%s] %s:%d ** skip BINDING_REQUEST over relay connection.";
    goto LABEL_14;
  }

  while (2)
  {
    if (*(v70 + 36) != *(v9 + 148) || (*(v70 + 124) & 1) != (*(v13 + 28) & 1))
    {
LABEL_149:
      v70 = *(v70 + 328);
      if (!v70)
      {
        goto LABEL_150;
      }

      continue;
    }

    break;
  }

  if (*(v70 + 124))
  {
    if (*(v70 + 144) == *(v13 + 48) && *(v70 + 152) == *(v13 + 56))
    {
      goto LABEL_148;
    }

    goto LABEL_149;
  }

  if (*(v70 + 144) != *(v13 + 48))
  {
    goto LABEL_149;
  }

LABEL_148:
  if (*(v70 + 160) != *(v13 + 64))
  {
    goto LABEL_149;
  }

  v84 = pthread_mutex_unlock((v118 + 568));
  if (v3)
  {
    *v3 = 1;
  }

  if (!*(v9 + 232))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_16;
    }

    v102 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315650;
    *&buf[4] = v102;
    *&buf[12] = 2080;
    *&buf[14] = "ProcessEvent";
    *&buf[22] = 1024;
    *&buf[24] = 1103;
    v27 = " [%s] %s:%d ** skip BINDING_REQUEST, relay server not found.";
LABEL_14:
    v28 = v26;
    v29 = 28;
    goto LABEL_15;
  }

  if (*(v9 + 232) == 1)
  {
    v86 = micro(v84, v85);
    if (!*(v9 + 400))
    {
      v87 = v86;
      if (v86 - *(v9 + 408) > 0.5)
      {
        SendRelayChannelBindRequest(v9, *(v118 + 16), *(v118 + 8), v13 + 28, (v13 + 108), v119, *(v9 + 744));
        pthread_mutex_lock((v118 + 568));
        *(v70 + 32) = 1;
        v88 = *(v13 + 140);
        v89 = *(v13 + 124);
        *(v70 + 272) = *(v13 + 108);
        *(v70 + 288) = v89;
        *(v70 + 304) = v88;
        pthread_mutex_unlock((v118 + 568));
        *(v9 + 408) = v87;
      }
    }

LABEL_168:
    bzero(__b, 0x480uLL);
    __b[6] = 1010;
    if (*(v13 + 172))
    {
      v90 = *(v9 + 880);
      if ((*(v9 + 888) < 0x6Du || *(v9 + 840) != 2 || *(v13 + 152) <= 0) && v90 > 6)
      {
        v90 = 1;
      }
    }

    else
    {
      v90 = 0;
    }

    if (*(v9 + 840) != 2)
    {
      goto LABEL_191;
    }

    if (*(v13 + 148))
    {
      ICEGetCandidatesForPeer(v9, 1, &v123, &v122);
    }

    if (*(v13 + 152) < 1)
    {
      goto LABEL_191;
    }

    pthread_mutex_lock((v9 + 16));
    if (*(v9 + 896))
    {
      *buf = 0;
      dispatch_time(0, 5000000000);
      SKEState_CopyBlobSync();
      if (!cf)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessEvent_cold_2();
          }
        }

        pthread_mutex_unlock((v9 + 16));
        v30 = 2148859927;
        goto LABEL_246;
      }

LABEL_190:
      pthread_mutex_unlock((v9 + 16));
LABEL_191:
      if (*(v13 + 172))
      {
        v91 = *(v9 + 872) != 0;
      }

      else
      {
        v91 = 0;
      }

      BindingRequest = MakeBindingRequest((v13 + 4), *v13, __b, *(v9 + 840), *(v9 + 848), (v13 + 152), (v9 + 856), v91, v90, v64[92], v123, v122, *(v9 + 204), cf);
      if ((BindingRequest & 0x80000000) != 0)
      {
        v30 = BindingRequest;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessEvent_cold_8();
          }
        }
      }

      else
      {
        v30 = STUNEncodeMessage(__b, v143, &v124, 0, v93);
        if ((v30 & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ProcessEvent_cold_7();
            }
          }
        }

        else if (*(v13 + 148))
        {
          memset(buf, 170, sizeof(buf));
          v94 = v119;
          if (*(v9 + 232))
          {
            if (*(v9 + 232) == 1)
            {
              v120 = v124;
              v95 = EncodeChannelDataMessage(*(v9 + 234), v143, &v120, 1472, buf);
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v96 = VRTraceErrorLogLevelToCSTR();
                v97 = *MEMORY[0x277CE5818];
                v98 = *MEMORY[0x277CE5818];
                if (*MEMORY[0x277CE5808] == 1)
                {
                  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                  {
                    *v125 = 136315906;
                    v126 = v96;
                    v127 = 2080;
                    v128 = "ProcessEvent";
                    v129 = 1024;
                    v130 = 1182;
                    v131 = 1024;
                    v132 = v95;
                    _os_log_impl(&dword_23D497000, v97, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d EncodeChannelDataMessage returns error (%08X)", v125, 0x22u);
                  }
                }

                else if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
                {
                  ProcessEvent_cold_4();
                }
              }

              v134 = *(v9 + 236);
              v135 = *(v9 + 252);
              v136 = *(v9 + 268);
              v99 = (*(v118 + 16))(*(v118 + 8), *(v9 + 148), buf, v120, v13 + 28, &v134, 1, 0);
LABEL_228:
              v30 = v99;
              if ((v99 & 0x80000000) == 0)
              {
                goto LABEL_229;
              }

              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                {
                  ProcessEvent_cold_6();
                }
              }
            }

            else
            {
              v30 = 2148859920;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                {
                  ProcessEvent_cold_5();
                }
              }
            }
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v100 = VRTraceErrorLogLevelToCSTR();
            v101 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *v125 = 136315650;
              v126 = v100;
              v127 = 2080;
              v128 = "ProcessEvent";
              v129 = 1024;
              v130 = 1184;
              _os_log_impl(&dword_23D497000, v101, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** skip BINDING_REQUEST, relay server not found.", v125, 0x1Cu);
            }
          }
        }

        else
        {
          v134 = *(v13 + 108);
          v135 = *(v13 + 124);
          v136 = *(v13 + 140);
          v94 = v119;
          if ((_os_feature_enabled_impl() & 1) == 0 && !*(v9 + 760))
          {
            v99 = (*(v118 + 16))(*(v118 + 8), *(v9 + 148), v143, v124, v13 + 28, &v134, 1, 0);
            goto LABEL_228;
          }

LABEL_229:
          v103 = SaveSTUNRequest(v94, v143, v124, v13 + 28, (v13 + 108), 0);
          if ((v103 & 0x80000000) != 0)
          {
            v30 = v103;
          }

          else
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v104 = VRTraceErrorLogLevelToCSTR();
              v105 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                if (*(v13 + 152) <= 0)
                {
                  v106 = &unk_23D4C9CFB;
                }

                else
                {
                  v106 = "NOMINATION ";
                }

                TransID = MakeTransID(v137, &__b[3]);
                v108 = IPPORTToStringWithSize(v139, &v134, 0x36uLL);
                v109 = ICEUNToString(v138, v13 + 4);
                *buf = 136316674;
                *&buf[4] = v104;
                *&buf[12] = 2080;
                *&buf[14] = "ProcessEvent";
                *&buf[22] = 1024;
                *&buf[24] = 1222;
                *&buf[28] = 2080;
                *&buf[30] = v106;
                *&buf[38] = 2080;
                *&buf[40] = TransID;
                *&buf[48] = 2080;
                *&buf[50] = v108;
                *&buf[58] = 2080;
                *&buf[60] = v109;
                _os_log_impl(&dword_23D497000, v105, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** %sBINDING_REQUEST [%s] to [%s] USERNAME[%s]", buf, 0x44u);
              }
            }

            v110 = *(v9 + 200);
            if (v110 >= 1)
            {
              while (!MatchCandidatePairWithIDs(v12, (v13 + 14), (v13 + 4)))
              {
                v12 += 400;
                if (!--v110)
                {
                  goto LABEL_245;
                }
              }

              UpdateICEState((v12 + 296), 1);
            }

LABEL_245:
            v30 = 0;
          }
        }
      }
    }

    else
    {
      if (!*(v9 + 904))
      {
        goto LABEL_190;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ProcessEvent_cold_3();
        }
      }

      pthread_mutex_unlock((v9 + 16));
      v30 = 2148859937;
    }

LABEL_246:
    if (v123)
    {
      free(v123);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    FreeEvent(v5);
    FreeSTUNMessage(__b);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessEvent_cold_1();
      }
    }

    v30 = 2148859920;
    FreeEvent(v5);
  }

  return v30;
}

uint64_t IsBetterCandidatePair(uint64_t a1, int a2, int a3, signed int a4, signed int a5)
{
  if (a2)
  {
    return 1;
  }

  if (a4 < 0)
  {
    return 0;
  }

  v7 = *(a1 + 200);
  if (v7 < a4)
  {
    return 0;
  }

  result = 1;
  if ((a5 & 0x80000000) == 0 && v7 >= a5)
  {
    v8 = *(a1 + 184);
    v9 = (v8 + 400 * a4);
    v10 = (v8 + 400 * a5);
    v11 = v10[6];
    v12 = v11 & 4;
    v13 = (v11 >> 2) & 1;
    v14 = v10[43];
    v15 = v10[1];
    v16 = v9[6];
    v17 = v16 & 4;
    v18 = (v16 >> 2) & 1;
    v19 = v9[43];
    v20 = v9[1];
    v21 = v19 & 4;
    if (a3)
    {
      if (!(v17 | v21))
      {
        v23 = v20 != 5 && v15 == 5;
        result = 1;
        if ((v11 & 4) != 0 || (v14 & 4) != 0)
        {
          return result;
        }

        goto LABEL_59;
      }

      if ((v16 & 4) != 0 && v21 != 0)
      {
        if ((v11 & 4) == 0 || (v14 & 4) == 0)
        {
          return 0;
        }

        if (v20 != 5 && v15 == 5)
        {
          return 1;
        }

LABEL_60:
        if (v15 == 5 || v20 == 5)
        {
          return 0;
        }

        return ((v16 & 1) == 0) & v11;
      }

      v28 = v14 & 4;
      if (!(v12 | v28))
      {
        return 0;
      }

      if ((v11 & 4) != 0 && v28 != 0)
      {
        return 1;
      }

      if (v13 != v18)
      {
        return 0;
      }

      if (v20 != 5 && v15 == 5)
      {
        return 1;
      }

LABEL_83:
      result = 0;
      if (v15 == 5 || v20 == 5)
      {
        return result;
      }

      return ((v16 & 1) == 0) & v11;
    }

    if ((v16 & 4) == 0 || v21 == 0)
    {
      if (v17 | v21)
      {
        v35 = v14 & 4;
        if ((v11 & 4) != 0 && v35 != 0)
        {
          return 0;
        }

        if (v12 | v35)
        {
          if (v13 != v18)
          {
            return 0;
          }

          if (v20 == 5 || v15 != 5)
          {
            goto LABEL_83;
          }
        }
      }

      else
      {
        if (v12 | v14 & 4)
        {
          return 0;
        }

        if (v20 == 5 || v15 != 5)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v23 = v20 != 5 && v15 == 5;
      if ((v11 & 4) != 0 && (v14 & 4) != 0)
      {
LABEL_59:
        if (v23)
        {
          return result;
        }

        goto LABEL_60;
      }
    }
  }

  return result;
}

uint64_t RemoveConnectivityCheckResult(uint64_t a1, int a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  *&v38[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37[1] = v6;
  *v38 = v6;
  v37[0] = v6;
  *(v36 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v35[1] = v6;
  v36[0] = v6;
  v35[0] = v6;
  *&v34[14] = 0xAAAAAAAAAAAAAAAALL;
  v33[1] = v6;
  *v34 = v6;
  v33[0] = v6;
  pthread_rwlock_wrlock((a1 + 240));
  v18 = a1;
  v7 = *(a1 + 440);
  if (v7)
  {
    v8 = &unk_23D4C9CFB;
    v9 = MEMORY[0x277CE5818];
    v10 = (v18 + 440);
    do
    {
      if (*v7 == a2 && matchOneConnectedResultWithOneCP(v7, a3))
      {
        *(a3 + 364) = 0;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v13 = IPPORTToStringWithSize(v37, a3 + 24, 0x36uLL);
            v14 = v8;
            v15 = IPPORTToStringWithSize(v35, a3 + 24, 0x36uLL);
            v16 = IPPORTToStringWithSize(v33, a3 + 172, 0x36uLL);
            *buf = 136316674;
            v20 = v11;
            v21 = 2080;
            v22 = "RemoveConnectivityCheckResult";
            v23 = 1024;
            v24 = 1442;
            v25 = 1024;
            v26 = a2;
            v27 = 2080;
            v28 = v13;
            v29 = 2080;
            v30 = v15;
            v8 = v14;
            v31 = 2080;
            v32 = v16;
            _os_log_impl(&dword_23D497000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Removed one result [call:%u local:%s src:%s dst:%s].", buf, 0x40u);
          }
        }

        *v10 = v7[38];
        free(v7);
      }

      else
      {
        v10 = v7 + 38;
      }

      v7 = *v10;
    }

    while (*v10);
  }

  pthread_rwlock_unlock((v18 + 240));
  return 0;
}

BOOL matchOneConnectedResultWithOneCP(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *a2 || (*(a1 + 28) & 1) != (*(a2 + 64) & 1))
  {
    return 0;
  }

  if (*(a1 + 28))
  {
    if (*(a1 + 48) != *(a2 + 84) || *(a1 + 56) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if (*(a1 + 48) != *(a2 + 84))
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 100) || (*(a1 + 108) & 1) != (*(a2 + 24) & 1))
  {
    return 0;
  }

  if (*(a1 + 108))
  {
    if (*(a1 + 128) != *(a2 + 44) || *(a1 + 136) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if (*(a1 + 128) != *(a2 + 44))
  {
    return 0;
  }

  if (*(a1 + 144) != *(a2 + 60))
  {
    return 0;
  }

  v4 = *(a1 + 20);
  if (v4 != (*(a2 + 4) == 5))
  {
    return 0;
  }

  if (!v4)
  {
    v5 = *(a2 + 172) & 1;
    goto LABEL_36;
  }

  v5 = *(a2 + 172) & 1;
  if ((*(a1 + 68) & 1) != v5)
  {
    goto LABEL_36;
  }

  if (*(a1 + 68))
  {
    if (*(a1 + 88) != *(a2 + 192) || *(a1 + 96) != *(a2 + 200))
    {
      goto LABEL_36;
    }
  }

  else if (*(a1 + 88) != *(a2 + 192))
  {
    goto LABEL_36;
  }

  if (*(a1 + 104) == *(a2 + 208))
  {
    return 1;
  }

LABEL_36:
  if ((*(a1 + 148) & 1) == v5)
  {
    if (*(a1 + 148))
    {
      if (*(a1 + 168) != *(a2 + 192) || *(a1 + 176) != *(a2 + 200))
      {
        return 0;
      }

      return *(a1 + 184) == *(a2 + 208);
    }

    if (*(a1 + 168) == *(a2 + 192))
    {
      return *(a1 + 184) == *(a2 + 208);
    }
  }

  return 0;
}

uint64_t DemoteConnectivityCheckResult(uint64_t a1, int a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  *&v33[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[1] = v6;
  *v33 = v6;
  v32[0] = v6;
  *(v31 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v30[1] = v6;
  v31[0] = v6;
  v30[0] = v6;
  *&v29[14] = 0xAAAAAAAAAAAAAAAALL;
  v28[1] = v6;
  *v29 = v6;
  v28[0] = v6;
  pthread_rwlock_wrlock((a1 + 240));
  v7 = *(a1 + 440);
  if (v7)
  {
    while (*v7 != a2 || !matchOneConnectedResultWithOneCP(v7, a3))
    {
      v7 = *(v7 + 304);
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v7 + 296);
        v12 = 136316930;
        v13 = v8;
        v14 = 2080;
        v15 = "DemoteConnectivityCheckResult";
        v16 = 1024;
        v17 = 1469;
        v18 = 1024;
        v19 = v10;
        v20 = 1024;
        v21 = a2;
        v22 = 2080;
        v23 = IPPORTToStringWithSize(v32, a3 + 24, 0x36uLL);
        v24 = 2080;
        v25 = IPPORTToStringWithSize(v30, a3 + 24, 0x36uLL);
        v26 = 2080;
        v27 = IPPORTToStringWithSize(v28, a3 + 172, 0x36uLL);
        _os_log_impl(&dword_23D497000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Demote one result %d [call:%u local:%s src:%s dst:%s].", &v12, 0x46u);
      }
    }

    if (*(v7 + 296))
    {
      *(v7 + 296) = 0;
    }
  }

LABEL_11:
  pthread_rwlock_unlock((a1 + 240));
  return 0;
}

uint64_t InsertEvent(pthread_mutex_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v90 = *MEMORY[0x277D85DE8];
  *&v89[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v88[1] = v12;
  *v89 = v12;
  v88[0] = v12;
  *(v87 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v86[1] = v12;
  v87[0] = v12;
  v86[0] = v12;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1 && a2 && a3 > 0)
  {
    v67 = a6;
    if (ErrorLogLevelForModule >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315650;
        *(buf + 4) = v14;
        WORD6(buf[0]) = 2080;
        *(buf + 14) = "InsertEvent";
        WORD3(buf[1]) = 1024;
        DWORD2(buf[1]) = 1957;
        _os_log_impl(&dword_23D497000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ***** Insert conn check events *****", buf, 0x1Cu);
      }
    }

    v16 = EQLastExpire(a1);
    v19 = micro(v17, v18);
    if (!a7 && v16 != 0x7FFFFFFF)
    {
      v19 = a4 / 1000.0 + v19;
    }

    v20 = 0;
    v21 = v67;
    do
    {
      memset(&buf[6] + 8, 0, 80);
      memset(&buf[3] + 8, 0, 44);
      v22 = a2 + 400 * v20;
      v23 = *(v22 + 4);
      LODWORD(buf[0]) = *v22;
      *(buf + 4) = *(v22 + 160);
      *(buf + 14) = *(v22 + 12);
      *(&buf[3] + 12) = *(v22 + 96);
      *(&buf[6] + 4) = *(v22 + 56);
      *(&buf[8] + 12) = *(v22 + 204);
      *(&buf[2] + 8) = 0u;
      *(&buf[1] + 8) = 0u;
      WORD6(buf[0]) = 256;
      WORD3(buf[1]) = 256;
      v24 = *(v22 + 80);
      *(&buf[1] + 12) = *(v22 + 64);
      *(&buf[2] + 12) = v24;
      v25 = *(v22 + 24);
      *(&buf[5] + 4) = *(v22 + 40);
      *(&buf[4] + 4) = v25;
      v26 = *(v22 + 172);
      *(&buf[7] + 12) = *(v22 + 188);
      *(&buf[6] + 12) = v26;
      v27 = v23 == 5 && *(v22 + 152) == 5;
      memset(&buf[9] + 8, 0, 20);
      v28 = *(v22 + 384);
      DWORD1(buf[9]) = v27;
      LODWORD(buf[11]) = v28;
      if (v21)
      {
        *(&buf[9] + 8) = *v21;
        DWORD2(buf[10]) = *(v21 + 16);
      }

      HIDWORD(buf[10]) = *(v22 + 64) & 4;
      v29 = *a5;
      if (*a5 == 30000.0)
      {
        DWORD1(buf[11]) = 1;
      }

      v30 = (BYTE12(buf[1]) & 1);
      v31 = *(a5 + 72);
      if (v31 >= v30)
      {
        v32 = *(a5 + 16);
        v70 = *(a5 + 8);
        v33 = *(a5 + 24);
        v34 = *(a5 + 40);
        v71 = *(a5 + 56);
        v72 = *(a5 + 48);
        if (v34)
        {
          v35 = v34 + 1;
        }

        else
        {
          v35 = 0;
        }

        do
        {
          v36 = malloc_type_malloc(0x20uLL, 0x10A0040D8B55D2AuLL);
          if (v36)
          {
            v37 = v36;
            v36[1] = v19 + v30;
            v38 = vcvtd_n_f64_u32(arc4random() & 0x7FFFFFFF, 0x1FuLL);
            if (v35)
            {
              v39 = v72 + v38 * v71;
              --v35;
            }

            else
            {
              v39 = v29 + v38 * v33;
              v29 = v70 * v29;
              if (v29 > v32)
              {
                v29 = v32 + vcvtd_n_f64_u32(arc4random() & 0x7FFFFFFF, 0x1FuLL) * v33;
              }

              v35 = v34;
            }

            v30 = v30 + v39;
            v43 = malloc_type_calloc(1uLL, 0xB8uLL, 0x1000040D0D3326AuLL);
            *(v37 + 2) = v43;
            if (v43)
            {
              v44 = buf[0];
              v45 = buf[1];
              v46 = buf[3];
              v43[2] = buf[2];
              v43[3] = v46;
              *v43 = v44;
              v43[1] = v45;
              v47 = buf[4];
              v48 = buf[5];
              v49 = buf[7];
              v43[6] = buf[6];
              v43[7] = v49;
              v43[4] = v47;
              v43[5] = v48;
              v50 = buf[8];
              v51 = buf[9];
              v52 = buf[10];
              *(v43 + 22) = *&buf[11];
              v43[9] = v51;
              v43[10] = v52;
              v43[8] = v50;
              EQPush(a1, v37, -1);
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v53 = VRTraceErrorLogLevelToCSTR();
                v54 = *MEMORY[0x277CE5818];
                v55 = *MEMORY[0x277CE5818];
                if (*MEMORY[0x277CE5808] == 1)
                {
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                  {
                    v56 = IPPORTToStringWithSize(v88, &buf[4] + 4, 0x36uLL);
                    v57 = IPPORTToStringWithSize(v86, &buf[6] + 12, 0x36uLL);
                    v58 = *(v37 + 1);
                    *v73 = 136316418;
                    v74 = v53;
                    v75 = 2080;
                    v76 = "InsertEvent";
                    v77 = 1024;
                    v78 = 2041;
                    v79 = 2080;
                    v80 = v56;
                    v21 = v67;
                    v81 = 2080;
                    v82 = v57;
                    v83 = 2048;
                    v84 = v58;
                    _os_log_impl(&dword_23D497000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tevent %s->%s expires %f", v73, 0x3Au);
                  }
                }

                else if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                {
                  v62 = IPPORTToStringWithSize(v88, &buf[4] + 4, 0x36uLL);
                  v63 = IPPORTToStringWithSize(v86, &buf[6] + 12, 0x36uLL);
                  v64 = *(v37 + 1);
                  *v73 = 136316418;
                  v74 = v53;
                  v75 = 2080;
                  v76 = "InsertEvent";
                  v77 = 1024;
                  v78 = 2041;
                  v79 = 2080;
                  v80 = v62;
                  v21 = v67;
                  v81 = 2080;
                  v82 = v63;
                  v83 = 2048;
                  v84 = v64;
                  _os_log_debug_impl(&dword_23D497000, v54, OS_LOG_TYPE_DEBUG, " [%s] %s:%d \tevent %s->%s expires %f", v73, 0x3Au);
                }
              }
            }

            else
            {
              if (VRTraceGetErrorLogLevelForModule() >= 2)
              {
                v59 = VRTraceErrorLogLevelToCSTR();
                IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
                v61 = *MEMORY[0x277CE5818];
                if (IsOSFaultDisabled)
                {
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                  {
                    *v73 = 136315650;
                    v74 = v59;
                    v75 = 2080;
                    v76 = "InsertEvent";
                    v77 = 1024;
                    v78 = 2030;
                    _os_log_error_impl(&dword_23D497000, v61, OS_LOG_TYPE_ERROR, " [%s] %s:%d calloc payload failed", v73, 0x1Cu);
                  }
                }

                else if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_FAULT))
                {
                  *v73 = 136315650;
                  v74 = v59;
                  v75 = 2080;
                  v76 = "InsertEvent";
                  v77 = 1024;
                  v78 = 2030;
                  _os_log_fault_impl(&dword_23D497000, v61, OS_LOG_TYPE_FAULT, " [%s] %s:%d calloc payload failed", v73, 0x1Cu);
                }
              }

              free(v37);
            }
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 2)
          {
            v40 = VRTraceErrorLogLevelToCSTR();
            v41 = VRTraceIsOSFaultDisabled();
            v42 = *MEMORY[0x277CE5818];
            if (v41)
            {
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                *v73 = 136315650;
                v74 = v40;
                v75 = 2080;
                v76 = "InsertEvent";
                v77 = 1024;
                v78 = 2011;
                _os_log_error_impl(&dword_23D497000, v42, OS_LOG_TYPE_ERROR, " [%s] %s:%d malloc event failed", v73, 0x1Cu);
              }
            }

            else if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_FAULT))
            {
              *v73 = 136315650;
              v74 = v40;
              v75 = 2080;
              v76 = "InsertEvent";
              v77 = 1024;
              v78 = 2011;
              _os_log_fault_impl(&dword_23D497000, v42, OS_LOG_TYPE_FAULT, " [%s] %s:%d malloc event failed", v73, 0x1Cu);
            }
          }
        }

        while (v30 <= v31);
      }

      v19 = a4 / 1000.0 + v19;
      ++v20;
    }

    while (v20 != a3);
    return 0;
  }

  else
  {
    v65 = 2148859905;
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        InsertEvent_cold_1();
      }
    }
  }

  return v65;
}

uint64_t ConnectivityCheckProc(void *a1)
{
  v228 = *MEMORY[0x277D85DE8];
  v2 = -2146107390;
  v201 = 0;
  v202 = 0;
  pthread_setname_np("com.apple.ICE.ConnCheckProc");
  if (!a1)
  {
    return -2146107391;
  }

  v203 = 0xAAAAAAAAAAAAAAAALL;
  v3 = *a1;
  v4 = a1[1];
  v5 = CheckInHandleDebug();
  free(a1);
  if (v5)
  {
    pthread_mutex_lock((v5 + 168));
    v6 = *(v5 + 232);
    if (!v6)
    {
LABEL_7:
      pthread_mutex_unlock((v5 + 168));
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ConnectivityCheckProc_cold_6();
        }
      }

      CheckOutHandleDebug();
      return -2146107370;
    }

    while (*(v6 + 148) != v3 || !ICERetainICEList(v6))
    {
      v6 = *(v6 + 912);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    pthread_mutex_unlock((v5 + 168));
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = "ConnectivityCheckProc";
        *&buf[22] = 1024;
        *&buf[24] = 2138;
        _os_log_impl(&dword_23D497000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectivity-check-thread-started", buf, 0x1Cu);
      }
    }

    v9 = *(v6 + 184);
    if (!v9 || (v10 = *(v6 + 200), v10 < 0))
    {
      LODWORD(v2) = -2146107391;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          v186 = *(v6 + 184);
          v187 = *(v6 + 200);
          *buf = 136316418;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = "ConnectivityCheckProc";
          *&buf[22] = 1024;
          *&buf[24] = 2142;
          *&buf[28] = 1024;
          *&buf[30] = 0;
          *&buf[34] = 2048;
          *&buf[36] = v186;
          *&buf[44] = 1024;
          *&buf[46] = v187;
          _os_log_error_impl(&dword_23D497000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d ConnectivityCheckProc failed (%08X)[%p, %d]", buf, 0x32u);
        }
      }

      goto LABEL_28;
    }

    if (v10)
    {
      inserted = InsertEvent(*(v6 + 160), v9, v10, 50, v5 + 640, 0, 0);
      if ((inserted & 0x80000000) != 0)
      {
        LODWORD(v2) = inserted;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ConnectivityCheckProc_cold_1();
          }
        }

LABEL_28:
        v15 = 1;
        goto LABEL_36;
      }
    }

    else
    {
      inserted = VRTraceGetErrorLogLevelForModule();
      if (inserted >= 6)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x277CE5818];
        inserted = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
        if (inserted)
        {
          *buf = 136315650;
          *&buf[4] = v16;
          *&buf[12] = 2080;
          *&buf[14] = "ConnectivityCheckProc";
          *&buf[22] = 1024;
          *&buf[24] = 2158;
          _os_log_impl(&dword_23D497000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No candidate pairs yet. Continue with 0 candidate pair.", buf, 0x1Cu);
        }
      }
    }

    *(v6 + 216) = micro(inserted, v12);
    pthread_mutex_lock((v6 + 16));
    if (*(v6 + 136))
    {
      v200 = 0;
LABEL_34:
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      pthread_mutex_unlock((v6 + 16));
      v15 = 1;
LABEL_35:
      LODWORD(v2) = v200;
LABEL_36:
      pthread_mutex_lock((v5 + 96));
      v18 = *(v5 + 160);
      if (v18)
      {
        v19 = 0;
        do
        {
          if (*(v6 + 148) == *(v18 + 4))
          {
            ++v19;
          }

          v18 = *(v18 + 240);
        }

        while (v18);
        if (v19)
        {
          v20 = malloc_type_malloc(40 * v19, 0x100004053E81896uLL);
          if (v20)
          {
            v21 = v20;
            v22 = *(v5 + 160);
            if (v22)
            {
              LODWORD(v23) = 0;
              do
              {
                if (*(v6 + 148) == *(v22 + 4))
                {
                  v24 = &v20[40 * v23];
                  LODWORD(v23) = v23 + 1;
                  v25 = *(v22 + 8);
                  v26 = *(v22 + 24);
                  *(v24 + 4) = *(v22 + 40);
                  *v24 = v25;
                  *(v24 + 1) = v26;
                }

                v22 = *(v22 + 240);
              }

              while (v22);
              pthread_mutex_unlock((v5 + 96));
              if (v23 >= 1)
              {
                v23 = v23;
                v27 = v21;
                do
                {
                  (*(v5 + 16))(*(v5 + 8), *(v6 + 148), 0, 0, v27, 0, 0, 0);
                  v27 += 40;
                  --v23;
                }

                while (v23);
              }
            }

            else
            {
              pthread_mutex_unlock((v5 + 96));
            }

            free(v21);
            goto LABEL_293;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 2)
          {
            VRTraceErrorLogLevelToCSTR();
            if (VRTraceIsOSFaultDisabled())
            {
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                ConnectivityCheckProc_cold_3();
              }
            }

            else if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_FAULT))
            {
              ConnectivityCheckProc_cold_2();
            }
          }

          LODWORD(v2) = -2146107389;
        }
      }

      pthread_mutex_unlock((v5 + 96));
LABEL_293:
      if ((v2 & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ConnectivityCheckProc_cold_4();
        }
      }

      pthread_mutex_lock((v5 + 168));
      pthread_mutex_lock((v6 + 16));
      *(v6 + 128) = 0;
      *(v6 + 420) = 6;
      v170 = *(v6 + 168);
      if (v170)
      {
        *(v6 + 168) = 0;
        free(v170);
      }

      v171 = *(v6 + 176);
      if (v171)
      {
        *(v6 + 176) = 0;
        free(v171);
      }

      v172 = *(v6 + 184);
      if (v172)
      {
        *(v6 + 184) = 0;
        free(v172);
      }

      v173 = *(v6 + 160);
      if (v173)
      {
        *(v6 + 160) = 0;
        FreeEQ(v173);
      }

      v174 = *(v6 + 776);
      if (v174)
      {
        free(v174);
        *(v6 + 768) = 0u;
      }

      v175 = *(v6 + 792);
      if (v175)
      {
        free(v175);
        *(v6 + 784) = 0u;
      }

      v176 = *(v6 + 816);
      if (v176)
      {
        free(v176);
        *(v6 + 808) = 0u;
      }

      v177 = *(v6 + 832);
      if (v177)
      {
        free(v177);
        *(v6 + 824) = 0u;
      }

      *(v6 + 192) = 0;
      *(v6 + 200) = 0;
      pthread_cond_signal((v6 + 80));
      pthread_mutex_unlock((v6 + 16));
      --*(v6 + 416);
      if ((v15 & 1) == 0)
      {
        if (v2 == -2146107369)
        {
          pthread_rwlock_wrlock((v5 + 240));
          if (*(v5 + 440))
          {
            LODWORD(v2) = 0;
          }

          else
          {
            LODWORD(v2) = -2146107369;
          }

          (*(v5 + 32))(*(v5 + 8), *(v6 + 148));
          while (1)
          {
            v178 = *(v5 + 440);
            if (!v178)
            {
              break;
            }

            *(v5 + 440) = v178[38];
            free(v178);
          }

          pthread_rwlock_unlock((v5 + 240));
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ConnectivityCheckProc_cold_5();
            }
          }

          (*(v5 + 32))(*(v5 + 8), *(v6 + 148), 0, &v201 + 4, v201, 0, 0);
        }
      }

      ICEReleaseAndFreeICEList(v6, v5, 1, v4);
LABEL_327:
      v179 = v202;
      if (v202)
      {
        do
        {
          v180 = v179[198];
          free(v179);
          v202 = v180;
          v179 = v180;
        }

        while (v180);
      }

      v202 = 0;
      pthread_mutex_unlock((v5 + 168));
      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v181 = VRTraceErrorLogLevelToCSTR();
        v182 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v181;
          *&buf[12] = 2080;
          *&buf[14] = "ConnectivityCheckProc";
          *&buf[22] = 1024;
          *&buf[24] = 2390;
          *&buf[28] = 1024;
          *&buf[30] = v2;
          _os_log_impl(&dword_23D497000, v182, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ConnectivityCheckProc thread ended(%08X)", buf, 0x22u);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v183 = VRTraceErrorLogLevelToCSTR();
        v184 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v183;
          *&buf[12] = 2080;
          *&buf[14] = "ConnectivityCheckProc";
          *&buf[22] = 1024;
          *&buf[24] = 2392;
          _os_log_impl(&dword_23D497000, v184, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectivity-check-thread-stopped", buf, 0x1Cu);
        }
      }

      CheckOutHandleDebug();
      return v2;
    }

    v200 = 0;
    while (1)
    {
      if (*(v5 + 448))
      {
        goto LABEL_34;
      }

      v28 = pthread_mutex_unlock((v6 + 16));
      v29 = *(v6 + 224);
      if (v29 < micro(v28, v30))
      {
        break;
      }

LABEL_85:
      v52 = EQNextExpire(*(v6 + 160));
      if (v52 == 0x7FFFFFFF)
      {
        v53 = 1000;
LABEL_91:
        v54 = v202;
        LODWORD(v204) = 0;
        v55 = *(v6 + 148);
        memset(v227, 0, 40);
        memset(v226, 0, 40);
        v56 = pthread_mutex_lock((v6 + 16));
        if (*(v6 + 420) == 1)
        {
          v58 = micro(v56, v57);
          v59 = *(v6 + 440);
          if (v58 - *(v6 + 432) <= 1.0)
          {
            if (v59 < 30)
            {
              goto LABEL_100;
            }
          }

          else if (v59 <= 29)
          {
            if (v59)
            {
              ReXmitCollectionRequest(*(v5 + 8), *(v5 + 720), v54, *(v5 + 16));
            }

            else
            {
              SendCollectionRequest(v5, &v202, v55, (v6 + 316), *(v6 + 744));
            }

            *(v6 + 432) = v58;
            ++*(v6 + 440);
            goto LABEL_100;
          }

          *(v6 + 420) = 3;
          pthread_cond_signal((v6 + 80));
        }

LABEL_100:
        memset(buf, 170, sizeof(buf));
        v211[0] = NAN;
        LODWORD(v221) = -1431655766;
        pthread_mutex_unlock((v6 + 16));
        v60 = ICERecvUDPPacketWithTimeout(v5, v54, v55, buf, &v221, v227, v226, v211, v53);
        if (v60 < 0)
        {
          v200 = v60;
          if (v60 > 0x1Eu || ((1 << v60) & 0x40801000) == 0)
          {
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              v65 = 0;
            }

            else
            {
              v63 = VRTraceErrorLogLevelToCSTR();
              v64 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                *v213 = 136315906;
                *v214 = v63;
                *&v214[8] = 2080;
                *&v214[10] = "RecvAndProcess";
                v215 = 1024;
                v216 = 806;
                v217 = 1024;
                LODWORD(v218) = v200;
                _os_log_error_impl(&dword_23D497000, v64, OS_LOG_TYPE_ERROR, " [%s] %s:%d UDPRECVCALLBACK failed (%08X)", v213, 0x22u);
              }

              v65 = 0;
            }

            goto LABEL_130;
          }

          pthread_mutex_lock((v5 + 168));
          pthread_mutex_lock((v6 + 16));
          if (*(v6 + 420) != 5)
          {
            goto LABEL_117;
          }
        }

        else
        {
          HIDWORD(v201) = 1;
          ProcessConnCheckMessage(v5, v6, v211[0], v54, buf, v221, v227, v226, &v204);
          pthread_mutex_lock((v5 + 168));
          pthread_mutex_lock((v6 + 16));
          v61 = *(v6 + 420);
          if (v61 != 5)
          {
            if (v61 == 1)
            {
              if (v204 == 2)
              {
                v62 = 4;
LABEL_116:
                *(v6 + 420) = v62;
                pthread_cond_signal((v6 + 80));
              }

              else if (v204 == 1)
              {
                v62 = 2;
                goto LABEL_116;
              }
            }

LABEL_117:
            if (*(v6 + 768) < 1)
            {
              v65 = 0;
            }

            else
            {
              v66 = *(v6 + 192);
              ProcessNewCandidates(v5, v6, 1);
              v65 = v66 != *(v6 + 192);
            }

            if (*(v6 + 784) >= 1)
            {
              ProcessNewCandidates(v5, v6, 0);
            }

            if (*(v6 + 808) >= 1)
            {
              v67 = *(v6 + 192);
              ProcessRemovedLocalIPPort(v5, v6);
              v68 = *(v6 + 192);
              v65 = v67 != v68;
              if (*(v6 + 200))
              {
                if (v67 != v68)
                {
                  ICEConnectivityRecheck(v5, v6);
                }
              }
            }

            if (*(v6 + 824) >= 1)
            {
              ProcessRemovedRemoteIPPort(v5, v6);
              if (*(v6 + 200))
              {
                ICEConnectivityRecheck(v5, v6);
              }
            }

            pthread_mutex_unlock((v6 + 16));
            pthread_mutex_unlock((v5 + 168));
            v200 = 0;
LABEL_130:
            pthread_mutex_lock((v5 + 168));
            v69 = (v5 + 232);
            do
            {
              v70 = *v69;
              v69 = (*v69 + 912);
              if (v70)
              {
                v71 = v70 == v6;
              }

              else
              {
                v71 = 1;
              }
            }

            while (!v71);
            if (!v70)
            {
              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                LODWORD(v2) = v200;
              }

              else
              {
                v188 = VRTraceErrorLogLevelToCSTR();
                v189 = *MEMORY[0x277CE5818];
                LODWORD(v2) = v200;
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  *&buf[4] = v188;
                  *&buf[12] = 2080;
                  *&buf[14] = "ConnectivityCheckProc";
                  *&buf[22] = 1024;
                  *&buf[24] = 2210;
                  *&buf[28] = 1024;
                  *&buf[30] = v3;
                  _os_log_impl(&dword_23D497000, v189, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ConnectivityCheckProc: ABORT -- ICEList for call (%d) no longer exists!!!", buf, 0x22u);
                }
              }

              goto LABEL_327;
            }

            pthread_mutex_unlock((v5 + 168));
            if (v200 < 0)
            {
              v15 = 0;
              goto LABEL_35;
            }

            if (v65)
            {
              if (*(v5 + 64))
              {
                *v227 = 0;
                *v226 = -1431655766;
                v200 = CompressCandidateList(v227, v226, *(v6 + 168), *(v6 + 192));
                if ((v200 & 0x80000000) == 0)
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v72 = VRTraceErrorLogLevelToCSTR();
                    v73 = *MEMORY[0x277CE5818];
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315650;
                      *&buf[4] = v72;
                      *&buf[12] = 2080;
                      *&buf[14] = "ConnectivityCheckProc";
                      *&buf[22] = 1024;
                      *&buf[24] = 2228;
                      _os_log_impl(&dword_23D497000, v73, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ConnectivityCheckProc: local candidate list updated, calling back to call session.", buf, 0x1Cu);
                    }
                  }

                  (*(v5 + 64))(*(v5 + 8), v3, *v227, *v226, *(v6 + 204));
                  free(*v227);
                }
              }
            }

            memset(v211, 255, sizeof(v211));
            v212 = -1;
            if (*(v6 + 200) < 1)
            {
              v199 = 0;
            }

            else
            {
              v74 = 0;
              v75 = 0;
              do
              {
                v76 = *(*(v6 + 184) + v74);
                if (v76 < 7)
                {
                  *(v211 + v76) = 255;
                }

                else if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v77 = VRTraceErrorLogLevelToCSTR();
                  v78 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                  {
                    v79 = *(v6 + 200);
                    *buf = 136316418;
                    *&buf[4] = v77;
                    *&buf[12] = 2080;
                    *&buf[14] = "IfConnectivityCheckDone";
                    *&buf[22] = 1024;
                    *&buf[24] = 1856;
                    *&buf[28] = 1024;
                    *&buf[30] = v76;
                    *&buf[34] = 1024;
                    *&buf[36] = v75;
                    *&buf[40] = 1024;
                    *&buf[42] = v79;
                    _os_log_error_impl(&dword_23D497000, v78, OS_LOG_TYPE_ERROR, " [%s] %s:%d Bad proto value (%d) (i=%d iCPCount=%d), skip!", buf, 0x2Eu);
                  }
                }

                ++v75;
                v80 = *(v6 + 200);
                v74 += 400;
              }

              while (v75 < v80);
              if (v80 >= 1)
              {
                v81 = 0;
                v199 = 0;
                while (1)
                {
                  v82 = *(v6 + 184);
                  v83 = (v82 + 400 * v81);
                  v84 = *v83;
                  v85 = v83[74];
                  switch(v85)
                  {
                    case 9u:
                      if (v84 < 7)
                      {
                        v94 = *(v211 + v84);
                        if (v94 == 255)
                        {
                          v94 = v81;
                        }

                        *(v211 + v84) = v94;
                        if (!*(v82 + 400 * v81 + 364))
                        {
                          v199 = AddConnectivityCheckResult(v5, v6, v81);
                        }

                        break;
                      }

                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        v92 = VRTraceErrorLogLevelToCSTR();
                        v93 = *MEMORY[0x277CE5818];
                        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315906;
                          *&buf[4] = v92;
                          *&buf[12] = 2080;
                          *&buf[14] = "IfConnectivityCheckDone";
                          *&buf[22] = 1024;
                          *&buf[24] = 1907;
                          *&buf[28] = 1024;
                          *&buf[30] = v84;
                          v89 = v93;
                          v90 = " [%s] %s:%d Bad proto value (%d), skip!";
                          v91 = 34;
                          goto LABEL_170;
                        }
                      }

                      break;
                    case 7u:
                      *(v211 + v84) = v81;
                      break;
                    case 6u:
                      v86 = *(v6 + 840);
                      if (v86 == 2)
                      {
                        v95 = v80;
                        if (*(v6 + 888) >= 0x3F2u && !*(v5 + 88))
                        {
                          *&v227[46] = 0xAAAAAAAAAAAAAAAALL;
                          *&v117 = 0xAAAAAAAAAAAAAAAALL;
                          *(&v117 + 1) = 0xAAAAAAAAAAAAAAAALL;
                          *&v227[16] = v117;
                          *&v227[32] = v117;
                          *v227 = v117;
                          *&v226[46] = 0xAAAAAAAAAAAAAAAALL;
                          *&v226[32] = v117;
                          *&v226[16] = v117;
                          *v226 = v117;
                          v118 = *(v6 + 192);
                          if (v118 < 1)
                          {
                            v119 = 0;
                          }

                          else
                          {
                            v119 = 0;
                            v120 = (*(v6 + 168) + 64);
                            do
                            {
                              v121 = *v120;
                              v120 += 148;
                              if ((v121 & 4) != 0)
                              {
                                v122 = 2;
                              }

                              else
                              {
                                v122 = 1;
                              }

                              v119 |= v122;
                              --v118;
                            }

                            while (v118);
                          }

                          v126 = *(v6 + 196);
                          if (v126 >= 1)
                          {
                            v127 = (*(v6 + 176) + 24);
                            do
                            {
                              v128 = *v127;
                              v127 += 148;
                              if ((v128 & 4) != 0)
                              {
                                v129 = 8;
                              }

                              else
                              {
                                v129 = 4;
                              }

                              v119 |= v129;
                              --v126;
                            }

                            while (v126);
                          }

                          v130 = 0;
                          v131 = (v82 + 376);
                          v132 = -1;
                          v133 = -1;
                          do
                          {
                            if (*(v131 - 5))
                            {
                              if (*v131)
                              {
                                v132 = v130;
                              }

                              else
                              {
                                v133 = v130;
                              }
                            }

                            ++v130;
                            v131 += 100;
                          }

                          while (v95 != v130);
                          v209 = 0;
                          v207 = -1;
                          v208 = 0;
                          if (v81 != v132 && v81 != v133)
                          {
                            v134 = *(v5 + 72);
                            if (v134)
                            {
                              v134(*(v5 + 8), *(v6 + 148));
                              v82 = *(v6 + 184);
                            }

                            else
                            {
                              HIDWORD(v209) = 1;
                              v207 = 2;
                              v208 = 0;
                              if ((v132 & 0x80000000) == 0 && v132 < v95)
                              {
                                LODWORD(v209) = 1;
                              }
                            }
                          }

                          v135 = 0;
                          if (v132 != -1 && v81 != v132)
                          {
                            v135 = *(v82 + 400 * v132 + 296) == 9;
                          }

                          v136 = v207;
                          v137 = v208;
                          v138 = v207 > 1;
                          v204 = 0;
                          v205 = 0;
                          v206 = 0;
                          if (HIDWORD(v209) && (v139 = v82 + 400 * v81, !*(v139 + 356)))
                          {
                            v146 = *(v139 + 360) + 1;
                            *(v139 + 360) = v146;
                            v147 = *(v6 + 800);
                            if (v136 >= 2)
                            {
                              *(v6 + 800) = ++v147;
                            }

                            v204 = __PAIR64__(v147, v146);
                            LODWORD(v205) = v138;
                            HIDWORD(v205) = v209 != 0 && v135;
                            v196 = v137;
                            if (v136 >= 2 && v207 == 3)
                            {
                              v206 = 1;
                              v138 = 2;
                            }

                            v148 = InsertEvent(*(v6 + 160), v139, 1, 50, v5 + 640, &v204, 1);
                            if (v148 < 0)
                            {
                              v161 = v148;
                              if (VRTraceGetErrorLogLevelForModule() >= 3)
                              {
                                v197 = VRTraceErrorLogLevelToCSTR();
                                v162 = *MEMORY[0x277CE5818];
                                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136316162;
                                  *&buf[4] = v197;
                                  *&buf[12] = 2080;
                                  *&buf[14] = "NominateCandidatePair";
                                  *&buf[22] = 1024;
                                  *&buf[24] = 1749;
                                  *&buf[28] = 1024;
                                  *&buf[30] = 1749;
                                  *&buf[34] = 1024;
                                  *&buf[36] = v161;
                                  _os_log_error_impl(&dword_23D497000, v162, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEConnCheck.c:%d: InsertEvent failed (%08X)", buf, 0x28u);
                                }
                              }
                            }

                            else
                            {
                              v149 = *(v6 + 184) + 400 * v81;
                              *(v149 + 356) = 1;
                              *(v149 + 376) = v138;
                              *(v149 + 380) = v209;
                              v225 = -86;
                              *&v150 = 0xAAAAAAAAAAAAAAAALL;
                              *(&v150 + 1) = 0xAAAAAAAAAAAAAAAALL;
                              *&buf[32] = v150;
                              *&buf[48] = v150;
                              *buf = v150;
                              *&buf[16] = v150;
                              v221 = *(v149 + 160);
                              v222 = 256;
                              v223 = *(v149 + 12);
                              v224 = 256;
                              if (VRTraceGetErrorLogLevelForModule() >= 7)
                              {
                                v191 = VRTraceErrorLogLevelToCSTR();
                                v193 = *MEMORY[0x277CE5818];
                                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                                {
                                  v151 = ICEUNToString(buf, &v221);
                                  v152 = *(*(v6 + 184) + 400 * v81 + 360);
                                  *v213 = 136316162;
                                  *v214 = v191;
                                  *&v214[8] = 2080;
                                  *&v214[10] = "NominateCandidatePair";
                                  v215 = 1024;
                                  v216 = 1711;
                                  v217 = 2080;
                                  v218 = v151;
                                  v219 = 1024;
                                  LODWORD(v220) = v152;
                                  _os_log_impl(&dword_23D497000, v193, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Nominating candidate pair [%s] to controlled agent, count(%d).", v213, 0x2Cu);
                                }
                              }

                              v153 = v196;
                              if ((v196 & 0xFFFFFFFE) == 2)
                              {
                                v154 = *(v6 + 184) + 400 * v132;
                                DemoteCandidatePair(v154, *(v154 + 296), 1, *(v154 + 364));
                                DemoteConnectivityCheckResult(v5, *(v6 + 148), *(v6 + 184) + 400 * v132);
                                v153 = v196;
                                v155 = *(v5 + 48);
                                if (v155)
                                {
                                  v156 = *(v6 + 184) + 400 * v81;
                                  if (*(v156 + 4) == 5 && *(v156 + 152) == 5)
                                  {
                                    v157 = *(v5 + 8);
                                    v158 = *(v6 + 148);
                                    v159 = v156 + 64;
                                    v160 = v6 + 236;
                                  }

                                  else
                                  {
                                    v157 = *(v5 + 8);
                                    v158 = *(v6 + 148);
                                    v159 = v156 + 64;
                                    v160 = v156 + 172;
                                  }

                                  v155(v157, v158, v159, v160);
                                  v153 = v196;
                                }
                              }

                              if (v138 && v209)
                              {
                                DemoteCandidatePair(*(v6 + 184) + 400 * v132, 2, 0, 0);
                                RemoveConnectivityCheckResult(v5, *(v6 + 148), *(v6 + 184) + 400 * v132);
                                v153 = v196;
                              }

                              if ((v153 & 0xFFFFFFFD) == 1)
                              {
                                v163 = *(v6 + 184);
                                v164 = v133;
                                if (*(v163 + 400 * v133 + 4) == 5)
                                {
                                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                                  {
                                    v165 = VRTraceErrorLogLevelToCSTR();
                                    v166 = *MEMORY[0x277CE5818];
                                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                                    {
                                      v198 = IPPORTToStringWithSize(v227, *(v6 + 184) + 400 * v164 + 64, 0x36uLL);
                                      v167 = IPPORTToStringWithSize(v226, *(v6 + 184) + 400 * v164 + 172, 0x36uLL);
                                      *v213 = 136316162;
                                      *v214 = v165;
                                      *&v214[8] = 2080;
                                      *&v214[10] = "NominateCandidatePair";
                                      v215 = 1024;
                                      v216 = 1742;
                                      v217 = 2080;
                                      v218 = v198;
                                      v219 = 2080;
                                      v220 = v167;
                                      _os_log_impl(&dword_23D497000, v166, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: tear down removed secondary TURN candidate %s - %s", v213, 0x30u);
                                    }
                                  }

                                  DiscardOneRelayBindingWithChannelNumber(v5, *(v6 + 148), *(*(v6 + 184) + 400 * v164 + 384));
                                  v163 = *(v6 + 184);
                                }

                                DemoteCandidatePair(v163 + 400 * v164, 2, 0, 0);
                                RemoveConnectivityCheckResult(v5, *(v6 + 148), *(v6 + 184) + 400 * v164);
                              }
                            }
                          }

                          else
                          {
                            v140 = (v82 + 400 * v81);
                            if (v140[74] == 6 && !v140[89])
                            {
                              if (v140[1] == 5)
                              {
                                if (VRTraceGetErrorLogLevelForModule() >= 7)
                                {
                                  v195 = VRTraceErrorLogLevelToCSTR();
                                  v141 = *MEMORY[0x277CE5818];
                                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                                  {
                                    v142 = HIDWORD(v209);
                                    v143 = *(v6 + 184) + 400 * v81;
                                    v144 = *(v143 + 356);
                                    v192 = IPPORTToStringWithSize(v227, v143 + 64, 0x36uLL);
                                    v145 = IPPORTToStringWithSize(v226, *(v6 + 184) + 400 * v81 + 172, 0x36uLL);
                                    *buf = 136316930;
                                    *&buf[4] = v195;
                                    *&buf[12] = 2080;
                                    *&buf[14] = "NominateCandidatePair";
                                    *&buf[22] = 1024;
                                    *&buf[24] = 1757;
                                    *&buf[28] = 1024;
                                    *&buf[30] = v81;
                                    *&buf[34] = 1024;
                                    *&buf[36] = v142;
                                    *&buf[40] = 1024;
                                    *&buf[42] = v144;
                                    *&buf[46] = 2080;
                                    *&buf[48] = v192;
                                    *&buf[56] = 2080;
                                    *&buf[58] = v145;
                                    _os_log_impl(&dword_23D497000, v141, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: tear down unnominated TURN candidate pair %d, needCandidateChange %d, bIfNominated %d, %s - %s", buf, 0x42u);
                                  }
                                }

                                DiscardOneRelayBindingWithChannelNumber(v5, *(v6 + 148), *(*(v6 + 184) + 400 * v81 + 384));
                                v82 = *(v6 + 184);
                              }

                              DemoteCandidatePair(v82 + 400 * v81, 2, 0, 0);
                            }
                          }

                          break;
                        }

                        v96 = 0;
                        *&v214[8] = 0;
                        *v214 = 0;
                        v97 = 1;
                        v98 = 356;
                        while (v81 == v96 || !*(v82 + v98))
                        {
                          v97 = ++v96 < v95;
                          v98 += 400;
                          if (v95 == v96)
                          {
                            v97 = 0;
                            goto LABEL_191;
                          }
                        }

                        if (!IsBetterCandidatePair(v6, *(v5 + 88), 1, v81, v96))
                        {
                          break;
                        }

                        *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
                        *&v100 = 0xAAAAAAAAAAAAAAAALL;
                        *(&v100 + 1) = 0xAAAAAAAAAAAAAAAALL;
                        *&buf[16] = v100;
                        *&buf[32] = v100;
                        *buf = v100;
                        *&v227[46] = 0xAAAAAAAAAAAAAAAALL;
                        *&v227[16] = v100;
                        *&v227[32] = v100;
                        *v227 = v100;
                        if (VRTraceGetErrorLogLevelForModule() >= 7)
                        {
                          v194 = VRTraceErrorLogLevelToCSTR();
                          v101 = *MEMORY[0x277CE5818];
                          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                          {
                            v190 = IPPORTToStringWithSize(buf, *(v6 + 184) + 400 * v81 + 24, 0x36uLL);
                            v102 = IPPORTToStringWithSize(v227, *(v6 + 184) + 400 * v81 + 172, 0x36uLL);
                            *v226 = 136316162;
                            *&v226[4] = v194;
                            *&v226[12] = 2080;
                            *&v226[14] = "NominateCandidatePairOld";
                            *&v226[22] = 1024;
                            *&v226[24] = 1786;
                            *&v226[28] = 2080;
                            *&v226[30] = v190;
                            *&v226[38] = 2080;
                            *&v226[40] = v102;
                            _os_log_impl(&dword_23D497000, v101, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICE found a better candidate pair [%s:%s].", v226, 0x30u);
                          }
                        }

                        v82 = *(v6 + 184);
                        LODWORD(v95) = v96;
LABEL_191:
                        if (*(v82 + 400 * v81 + 356))
                        {
                          break;
                        }

                        v103 = *(v6 + 800) + 1;
                        *(v6 + 800) = v103;
                        *v213 = v103;
                        *&v214[4] = 0x100000001;
                        v104 = InsertEvent(*(v6 + 160), v82 + 400 * v81, 1, 50, v5 + 640, v213, 1);
                        if ((v104 & 0x80000000) == 0)
                        {
                          v105 = *(v6 + 184) + 400 * v81;
                          *(v105 + 356) = 1;
                          *(v105 + 376) = 1;
                          v226[20] = -86;
                          *&v106 = 0xAAAAAAAAAAAAAAAALL;
                          *(&v106 + 1) = 0xAAAAAAAAAAAAAAAALL;
                          *&buf[32] = v106;
                          *&buf[48] = v106;
                          *buf = v106;
                          *&buf[16] = v106;
                          *v226 = *(v105 + 160);
                          *&v226[8] = 256;
                          *&v226[10] = *(v105 + 12);
                          *&v226[18] = 256;
                          if (VRTraceGetErrorLogLevelForModule() >= 7)
                          {
                            v107 = VRTraceErrorLogLevelToCSTR();
                            v108 = *MEMORY[0x277CE5818];
                            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                            {
                              v109 = ICEUNToString(buf, v226);
                              v110 = *(v6 + 800);
                              *v227 = 136316162;
                              *&v227[4] = v107;
                              *&v227[12] = 2080;
                              *&v227[14] = "NominateCandidatePairOld";
                              *&v227[22] = 1024;
                              *&v227[24] = 1813;
                              *&v227[28] = 2080;
                              *&v227[30] = v109;
                              *&v227[38] = 1024;
                              *&v227[40] = v110;
                              _os_log_impl(&dword_23D497000, v108, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Nominating candidate pair [%s] to controlled agent, count(%d).", v227, 0x2Cu);
                            }
                          }

                          if (*(v5 + 88) == 0 && v97)
                          {
                            DemoteCandidatePair(*(v6 + 184) + 400 * v95, 2, 0, 0);
                            RemoveConnectivityCheckResult(v5, *(v6 + 148), *(v6 + 184) + 400 * v95);
                            v111 = *(v5 + 48);
                            if (v111)
                            {
                              v112 = *(v6 + 184) + 400 * v81;
                              if (*(v112 + 4) == 5 && *(v112 + 152) == 5)
                              {
                                v113 = *(v5 + 8);
                                v114 = *(v6 + 148);
                                v115 = v112 + 64;
                                v116 = v6 + 236;
                              }

                              else
                              {
                                v113 = *(v5 + 8);
                                v114 = *(v6 + 148);
                                v115 = v112 + 64;
                                v116 = v112 + 172;
                              }

                              v111(v113, v114, v115, v116);
                            }
                          }

                          break;
                        }

                        v123 = v104;
                        if (VRTraceGetErrorLogLevelForModule() >= 3)
                        {
                          v124 = VRTraceErrorLogLevelToCSTR();
                          v125 = *MEMORY[0x277CE5818];
                          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136316162;
                            *&buf[4] = v124;
                            *&buf[12] = 2080;
                            *&buf[14] = "NominateCandidatePairOld";
                            *&buf[22] = 1024;
                            *&buf[24] = 1836;
                            *&buf[28] = 1024;
                            *&buf[30] = 1836;
                            *&buf[34] = 1024;
                            *&buf[36] = v123;
                            v89 = v125;
                            v90 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEConnCheck.c:%d: InsertEvent failed (%08X)";
LABEL_164:
                            v91 = 40;
LABEL_170:
                            _os_log_error_impl(&dword_23D497000, v89, OS_LOG_TYPE_ERROR, v90, buf, v91);
                          }
                        }
                      }

                      else if (!v86)
                      {
                        if (v84 < 7)
                        {
                          v99 = *(v211 + v84);
                          if (v99 == 255)
                          {
                            v99 = v81;
                          }

                          *(v211 + v84) = v99;
                          if (!v83[91])
                          {
                            v83[94] = 1;
                            v199 = AddConnectivityCheckResult(v5, v6, v81);
                            *(*(v6 + 184) + 400 * v81 + 296) = 7;
                          }

                          break;
                        }

                        if (VRTraceGetErrorLogLevelForModule() >= 3)
                        {
                          v87 = VRTraceErrorLogLevelToCSTR();
                          v88 = *MEMORY[0x277CE5818];
                          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136316162;
                            *&buf[4] = v87;
                            *&buf[12] = 2080;
                            *&buf[14] = "IfConnectivityCheckDone";
                            *&buf[22] = 1024;
                            *&buf[24] = 1867;
                            *&buf[28] = 1024;
                            *&buf[30] = 1867;
                            *&buf[34] = 1024;
                            *&buf[36] = v84;
                            v89 = v88;
                            v90 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEConnCheck.c:%d: Bad proto value (%d), skip!";
                            goto LABEL_164;
                          }
                        }
                      }

                      break;
                  }

                  ++v81;
                  v80 = *(v6 + 200);
                  if (v81 >= v80)
                  {
                    goto LABEL_279;
                  }
                }
              }

              v199 = 0;
            }

LABEL_279:
            v168 = *(v6 + 212);
            if (v199 >= v168)
            {
              v169 = 0;
              while (*(v211 + v169) != 255)
              {
                v169 += 4;
                if (v169 == 28)
                {
                  if (v199 < v168)
                  {
                    goto LABEL_88;
                  }

                  pthread_mutex_lock((v6 + 16));
                  if (*(v6 + 140))
                  {
                    pthread_mutex_unlock((v6 + 16));
                    goto LABEL_88;
                  }

                  goto LABEL_34;
                }
              }
            }

            goto LABEL_88;
          }
        }

        AddRelayCandidatePair(v5, v6);
        *(v6 + 420) = 0;
        goto LABEL_117;
      }

      v53 = ((v52 - micro(v50, v51)) * 1000.0);
      if (v53 > 0)
      {
        goto LABEL_91;
      }

      EQPop(*(v6 + 160), &v203);
      ProcessEvent(v5);
LABEL_88:
      pthread_mutex_lock((v6 + 16));
      if (*(v6 + 136))
      {
        goto LABEL_34;
      }
    }

    if (*(v6 + 224) == 0.0)
    {
      v33 = micro(v31, v32);
LABEL_84:
      *(v6 + 224) = v33 + 30.0;
      goto LABEL_85;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x277CE5818];
      v36 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
      if (v36)
      {
        v38 = *(v6 + 224);
        v39 = micro(v36, v37);
        *buf = 136316162;
        *&buf[4] = v34;
        *&buf[12] = 2080;
        *&buf[14] = "ConnectivityCheckProc";
        *&buf[22] = 1024;
        *&buf[24] = 2178;
        *&buf[28] = 2048;
        *&buf[30] = v38;
        *&buf[38] = 2048;
        *&buf[40] = v39;
        _os_log_impl(&dword_23D497000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: refresh secondary connection(scheduled ts[%f] < current ts[%f])", buf, 0x30u);
      }
    }

    if (*(v6 + 840) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_83;
      }

      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_83;
      }

      *buf = 136315650;
      *&buf[4] = v40;
      *&buf[12] = 2080;
      *&buf[14] = "insertSecondaryConnectionRefreshEvent";
      *&buf[22] = 1024;
      *&buf[24] = 2053;
      v42 = v41;
      v43 = " [%s] %s:%d HandoverReport: Callee skips refresh.";
    }

    else
    {
      v44 = *(v6 + 200);
      if (v44 < 1)
      {
LABEL_73:
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_83;
        }

        v46 = VRTraceErrorLogLevelToCSTR();
        v47 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_83;
        }

        *buf = 136315650;
        *&buf[4] = v46;
        *&buf[12] = 2080;
        *&buf[14] = "insertSecondaryConnectionRefreshEvent";
        *&buf[22] = 1024;
        *&buf[24] = 2065;
        v42 = v47;
        v43 = " [%s] %s:%d HandoverReport: No secondary connection, skip refresh.";
      }

      else
      {
        v45 = *(v6 + 184);
        while (!v45[89] || v45[94])
        {
          v45 += 100;
          if (!--v44)
          {
            goto LABEL_73;
          }
        }

        if (v45[1] != 5 || v45[38] != 5)
        {
          memset(&buf[24], 0, 48);
          *buf = xmmword_23D4C9C20;
          *&buf[16] = 0x40ED4C0000000000;
          *&buf[72] = 0x40CD4C0000000000;
          InsertEvent(*(v6 + 160), v45, 1, 30000, buf, 0, 2);
          goto LABEL_83;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_83;
        }

        v48 = VRTraceErrorLogLevelToCSTR();
        v49 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_83;
        }

        *buf = 136315650;
        *&buf[4] = v48;
        *&buf[12] = 2080;
        *&buf[14] = "insertSecondaryConnectionRefreshEvent";
        *&buf[22] = 1024;
        *&buf[24] = 2071;
        v42 = v49;
        v43 = " [%s] %s:%d HandoverReport: secondary connection is on relay, skip refresh";
      }
    }

    _os_log_impl(&dword_23D497000, v42, OS_LOG_TYPE_DEFAULT, v43, buf, 0x1Cu);
LABEL_83:
    v33 = *(v6 + 224);
    goto LABEL_84;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ConnectivityCheckProc_cold_7();
    }
  }

  return v2;
}

void AddRelayCandidatePair(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v41 = 0;
  memset(v56, 170, sizeof(v56));
  v4 = malloc_type_realloc(*(a2 + 168), 148 * *(a2 + 192) + 148, 0x1000040C185D105uLL);
  v5 = malloc_type_realloc(*(a2 + 176), 148 * *(a2 + 196) + 148, 0x1000040C185D105uLL);
  v6 = malloc_type_realloc(*(a2 + 184), 400 * *(a2 + 200) + 400, 0x10200402E010713uLL);
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v6 == 0)
  {
    free(v4);
    free(v5);

    free(v7);
  }

  else
  {
    *&v58[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v58 = v10;
    v57[0] = v10;
    v57[1] = v10;
    *(a2 + 168) = v4;
    v11 = &v4[148 * *(a2 + 192)];
    v12 = *(a2 + 540);
    v13 = *(a2 + 556);
    v14 = *(a2 + 572);
    *(v11 + 36) = *(a2 + 588);
    *(v11 + 7) = v13;
    *(v11 + 8) = v14;
    *(v11 + 6) = v12;
    v15 = *(a2 + 476);
    v16 = *(a2 + 492);
    v17 = *(a2 + 524);
    *(v11 + 4) = *(a2 + 508);
    *(v11 + 5) = v17;
    *(v11 + 2) = v15;
    *(v11 + 3) = v16;
    v18 = *(a2 + 460);
    *v11 = *(a2 + 444);
    *(v11 + 1) = v18;
    ++*(a2 + 192);
    ++*(a2 + 204);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (ErrorLogLevelForModule >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v22 = CANIDToString(v56, (a2 + 456));
        v23 = IPPORTToStringWithSize(v57, a2 + 468, 0x36uLL);
        v24 = *(a2 + 448);
        v25 = *(a2 + 192);
        *buf = 136316674;
        v43 = v20;
        v44 = 2080;
        v45 = "AddRelayCandidatePair";
        v46 = 1024;
        v47 = 240;
        v48 = 2080;
        v49 = v22;
        v50 = 2080;
        v51 = v23;
        v52 = 1024;
        v53 = v24;
        v54 = 1024;
        v55 = v25;
        _os_log_impl(&dword_23D497000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add local relay candidate\tID[%s] [%s], Type[%d], Count[%d].", buf, 0x3Cu);
      }
    }

    *(a2 + 176) = v5;
    v26 = &v5[148 * *(a2 + 196)];
    v27 = *(a2 + 688);
    v28 = *(a2 + 704);
    v29 = *(a2 + 720);
    *(v26 + 36) = *(a2 + 736);
    *(v26 + 7) = v28;
    *(v26 + 8) = v29;
    *(v26 + 6) = v27;
    v30 = *(a2 + 624);
    v31 = *(a2 + 640);
    v32 = *(a2 + 672);
    *(v26 + 4) = *(a2 + 656);
    *(v26 + 5) = v32;
    *(v26 + 2) = v30;
    *(v26 + 3) = v31;
    v33 = *(a2 + 608);
    *v26 = *(a2 + 592);
    *(v26 + 1) = v33;
    ++*(a2 + 196);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v36 = CANIDToString(v56, (a2 + 604));
        v37 = IPPORTToStringWithSize(v57, a2 + 616, 0x36uLL);
        v38 = *(a2 + 596);
        v39 = *(a2 + 196);
        *buf = 136316674;
        v43 = v34;
        v44 = 2080;
        v45 = "AddRelayCandidatePair";
        v46 = 1024;
        v47 = 250;
        v48 = 2080;
        v49 = v36;
        v50 = 2080;
        v51 = v37;
        v52 = 1024;
        v53 = v38;
        v54 = 1024;
        v55 = v39;
        _os_log_impl(&dword_23D497000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add remote relay candidate\tID[%s] [%s], Type[%d], Count[%d].", buf, 0x3Cu);
      }
    }

    *(a2 + 184) = v7;
    v40 = v7 + 400 * *(a2 + 200);
    if ((PairUpCandidate(a2 + 444, 1, (a2 + 592), 1, v40, 1, &v41, 0) & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          AddRelayCandidatePair_cold_2();
        }
      }
    }

    else
    {
      *(v40 + 384) = *(a2 + 234);
      if (v41 == 1)
      {
        ++*(a2 + 200);
        InsertEvent(*(a2 + 160), v40, 1, 50, a1 + 640, 0, 1);
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          AddRelayCandidatePair_cold_1();
        }
      }
    }
  }
}

void ProcessNewCandidates(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v159 = *MEMORY[0x277D85DE8];
  memset(v156, 170, sizeof(v156));
  v5 = 196;
  v6 = 176;
  if (a3)
  {
    v6 = 168;
  }

  v7 = 784;
  if (a3)
  {
    v7 = 768;
  }

  v8 = 792;
  if (a3)
  {
    v8 = 776;
    v9 = 192;
  }

  else
  {
    v9 = 196;
  }

  v134 = *(a2 + v8);
  v129 = *(a2 + v6);
  v10 = *(a2 + v7);
  if (!a3)
  {
    v5 = 192;
  }

  v11 = *(a2 + v9);
  v12 = *(a2 + v5);
  v13 = malloc_type_calloc(1uLL, v10, 0x100004077774924uLL);
  if (v13)
  {
    v14 = v13;
    v126 = v12;
    *&v158[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v157[1] = v15;
    *v158 = v15;
    v157[0] = v15;
    v135 = v10;
    v136 = v4;
    v137 = v3;
    if (v10 < 1)
    {
      v37 = 0;
      v17 = v10;
    }

    else
    {
      v16 = 0;
      v132 = 0;
      v17 = v10;
      do
      {
        v14[v16] = 2;
        if (v11 >= 1)
        {
          v18 = v134 + 148 * v16;
          v19 = v11;
          v20 = v129 + 12;
          while (*(v18 + 12) != *v20)
          {
            v20 += 148;
            if (!--v19)
            {
              goto LABEL_22;
            }
          }

          --v17;
          if (IsIPPORTValid((v20 + 12)) || !IsIPPORTValid(v18 + 24))
          {
            v14[v16] = 0;
          }

          else
          {
            v21 = *(v18 + 16);
            *(v20 - 12) = *v18;
            *(v20 + 4) = v21;
            v22 = *(v18 + 32);
            v23 = *(v18 + 48);
            v24 = *(v18 + 80);
            *(v20 + 52) = *(v18 + 64);
            *(v20 + 68) = v24;
            *(v20 + 20) = v22;
            *(v20 + 36) = v23;
            v25 = *(v18 + 96);
            v26 = *(v18 + 112);
            v27 = *(v18 + 128);
            *(v20 + 33) = *(v18 + 144);
            *(v20 + 100) = v26;
            *(v20 + 116) = v27;
            *(v20 + 84) = v25;
            v14[v16] = 1;
            ++v132;
          }
        }

LABEL_22:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v28 = VRTraceErrorLogLevelToCSTR();
          v29 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v30 = (v134 + 148 * v16);
            v31 = CANIDToString(v156, v30 + 3);
            v32 = IPPORTToStringWithSize(v157, (v30 + 6), 0x36uLL);
            v33 = v30[6];
            v34 = *v30;
            v35 = v30[1];
            v36 = v14[v16];
            *buf = 136317186;
            *&buf[4] = v28;
            *&buf[12] = 2080;
            *&buf[14] = "ProcessNewCandidates";
            *&buf[22] = 1024;
            *&buf[24] = 330;
            *&buf[28] = 2080;
            *&buf[30] = v31;
            v10 = v135;
            *&buf[38] = 2080;
            *&buf[40] = v32;
            *&buf[48] = 1024;
            *&buf[50] = v33;
            *&buf[54] = 1024;
            *&buf[56] = v34;
            *v154 = 1024;
            *&v154[2] = v35;
            *v155 = 1024;
            *&v155[2] = v36;
            _os_log_impl(&dword_23D497000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d checking candidate: ID[%s], [%s], iFlag [%04X], proto[%d], Type[%d], OP[%u].", buf, 0x48u);
          }
        }

        ++v16;
      }

      while (v16 != v10);
      v37 = v132 > 0;
      v3 = v137;
    }

    v130 = v11;
    v128 = v17;
    v38 = v17 > 0 || v37;
    if (v3)
    {
      if (v38)
      {
        ++*(v4 + 204);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v39 = VRTraceErrorLogLevelToCSTR();
          v40 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v41 = *(v4 + 204);
            *buf = 136315906;
            *&buf[4] = v39;
            *&buf[12] = 2080;
            *&buf[14] = "ProcessNewCandidates";
            *&buf[22] = 1024;
            *&buf[24] = 337;
            *&buf[28] = 1024;
            *&buf[30] = v41;
            _os_log_impl(&dword_23D497000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Update local candidate version (%d)", buf, 0x22u);
          }
        }
      }
    }

    if (v37)
    {
      v133 = malloc_type_malloc(400 * *(v4 + 200), 0x10200402E010713uLL);
      if (!v133)
      {
        v82 = 0;
        goto LABEL_89;
      }

      v131 = v14;
      if (v10 >= 1)
      {
        v42 = 0;
        v138 = 0;
        v43 = v137;
        while (v131[v42] != 1 || *(v4 + 200) < 1)
        {
LABEL_66:
          ++v42;
          LODWORD(v10) = v135;
          if (v42 == v135)
          {
            goto LABEL_70;
          }
        }

        v44 = 0;
        v45 = 0;
        v46 = v134 + 148 * v42;
        while (1)
        {
          v47 = *(v4 + 184);
          v48 = v47 + v44;
          if (v43)
          {
            if (*(v48 + 12) == *(v46 + 12))
            {
              v49 = *(v46 + 16);
              *v48 = *v46;
              *(v48 + 16) = v49;
              v50 = *(v46 + 32);
              v51 = *(v46 + 48);
              v52 = *(v46 + 80);
              *(v48 + 64) = *(v46 + 64);
              *(v48 + 80) = v52;
              *(v48 + 32) = v50;
              *(v48 + 48) = v51;
              v53 = *(v46 + 96);
              v54 = *(v46 + 112);
              v55 = *(v46 + 128);
              *(v48 + 144) = *(v46 + 144);
              *(v48 + 112) = v54;
              *(v48 + 128) = v55;
              *(v48 + 96) = v53;
              if (VRTraceGetErrorLogLevelForModule() >= 6)
              {
                v56 = VRTraceErrorLogLevelToCSTR();
                v57 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v58 = CANIDToString(v156, (v48 + 12));
                  *buf = 136315906;
                  *&buf[4] = v56;
                  *&buf[12] = 2080;
                  *&buf[14] = "ProcessNewCandidates";
                  *&buf[22] = 1024;
                  *&buf[24] = 364;
                  *&buf[28] = 2080;
                  *&buf[30] = v58;
                  _os_log_impl(&dword_23D497000, v57, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Updated candidate pair with local candidate [%s]", buf, 0x26u);
                }
              }

              if (IsValidCandidatePair(v47 + v44, v47 + v44 + 148, 0, 0))
              {
                *(v47 + v44 + 368) = 1;
                memcpy(&v133[400 * v138++], v48, 0x190uLL);
LABEL_64:
                v43 = v137;
                goto LABEL_65;
              }

              *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
              *&v69 = 0xAAAAAAAAAAAAAAAALL;
              *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *&buf[16] = v69;
              *&buf[32] = v69;
              *buf = v69;
              *&v152[14] = 0xAAAAAAAAAAAAAAAALL;
              v151 = v69;
              *v152 = v69;
              v150 = v69;
              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                goto LABEL_64;
              }

              v70 = VRTraceErrorLogLevelToCSTR();
              v71 = *MEMORY[0x277CE5818];
              if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_64;
              }

              v72 = v47 + v44;
              v73 = IPPORTToStringWithSize(buf, v72 + 24, 0x36uLL);
              v74 = IPPORTToStringWithSize(&v150, v72 + 172, 0x36uLL);
              *v140 = 136316162;
              v141 = v70;
              v142 = 2080;
              v143 = "ProcessNewCandidates";
              v144 = 1024;
              v145 = 374;
              v146 = 2080;
              v147 = v73;
              v148 = 2080;
              v149 = v74;
              v75 = v71;
              goto LABEL_63;
            }
          }

          else
          {
            if (*(v48 + 160) == *(v46 + 12))
            {
              v59 = *(v46 + 16);
              *(v48 + 148) = *v46;
              *(v48 + 164) = v59;
              v60 = *(v46 + 32);
              v61 = *(v46 + 48);
              v62 = *(v46 + 80);
              *(v48 + 212) = *(v46 + 64);
              *(v48 + 228) = v62;
              *(v48 + 180) = v60;
              *(v48 + 196) = v61;
              v63 = *(v46 + 96);
              v64 = *(v46 + 112);
              v65 = *(v46 + 128);
              *(v48 + 292) = *(v46 + 144);
              *(v48 + 260) = v64;
              *(v48 + 276) = v65;
              *(v48 + 244) = v63;
              if (VRTraceGetErrorLogLevelForModule() >= 6)
              {
                v66 = VRTraceErrorLogLevelToCSTR();
                v67 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v68 = CANIDToString(v156, (v48 + 160));
                  *buf = 136315906;
                  *&buf[4] = v66;
                  *&buf[12] = 2080;
                  *&buf[14] = "ProcessNewCandidates";
                  *&buf[22] = 1024;
                  *&buf[24] = 381;
                  *&buf[28] = 2080;
                  *&buf[30] = v68;
                  _os_log_impl(&dword_23D497000, v67, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Updated candidate pair with remote candidate [%s]", buf, 0x26u);
                }
              }

              if (IsValidCandidatePair(v47 + v44, v48 + 148, 0, 0))
              {
                *(v47 + v44 + 368) = 1;
                memcpy(&v133[400 * v138++], v48, 0x190uLL);
                v4 = v136;
                goto LABEL_64;
              }

              *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
              *&v76 = 0xAAAAAAAAAAAAAAAALL;
              *(&v76 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *&buf[16] = v76;
              *&buf[32] = v76;
              *buf = v76;
              *&v152[14] = 0xAAAAAAAAAAAAAAAALL;
              v151 = v76;
              *v152 = v76;
              v150 = v76;
              v4 = v136;
              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                goto LABEL_64;
              }

              v77 = VRTraceErrorLogLevelToCSTR();
              v78 = *MEMORY[0x277CE5818];
              if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_64;
              }

              v79 = v47 + v44;
              v80 = IPPORTToStringWithSize(buf, v79 + 24, 0x36uLL);
              v81 = IPPORTToStringWithSize(&v150, v79 + 172, 0x36uLL);
              *v140 = 136316162;
              v141 = v77;
              v142 = 2080;
              v143 = "ProcessNewCandidates";
              v144 = 1024;
              v145 = 391;
              v146 = 2080;
              v147 = v80;
              v148 = 2080;
              v149 = v81;
              v75 = v78;
LABEL_63:
              _os_log_impl(&dword_23D497000, v75, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Existing candidate pair [%s-%s] is invalid, skip.", v140, 0x30u);
              goto LABEL_64;
            }

            v4 = v136;
          }

LABEL_65:
          ++v45;
          v44 += 400;
          if (v45 >= *(v4 + 200))
          {
            goto LABEL_66;
          }
        }
      }

      v138 = 0;
LABEL_70:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v83 = VRTraceErrorLogLevelToCSTR();
        v84 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v83;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessNewCandidates";
          *&buf[22] = 1024;
          *&buf[24] = 399;
          *&buf[28] = 1024;
          *&buf[30] = v138;
          _os_log_impl(&dword_23D497000, v84, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Insert events for %d update candidate pair(s).", buf, 0x22u);
        }
      }

      InsertEvent(*(v4 + 160), v133, v138, 50, a1 + 640, 0, 1);
      free(v133);
      v14 = v131;
    }

    v82 = v128;
    if (v128 >= 1)
    {
      v85 = malloc_type_realloc(v129, 148 * (v128 + v130), 0x1000040C185D105uLL);
      v86 = v137;
      if (!v85)
      {
        v82 = 0;
        v87 = v129;
        goto LABEL_92;
      }

      v87 = v85;
      if (v10 >= 1)
      {
        v88 = 0;
        v89 = "remote";
        if (v137)
        {
          v89 = "local";
        }

        v139 = v89;
        v90 = v134 + 12;
        v91 = MEMORY[0x277CE5818];
        v92 = v14;
        do
        {
          v93 = *v92++;
          if (v93 == 2)
          {
            v94 = &v87[148 * v88 + 148 * v130];
            v95 = *(v90 + 4);
            *v94 = *(v90 - 12);
            *(v94 + 1) = v95;
            v96 = *(v90 + 20);
            v97 = *(v90 + 36);
            v98 = *(v90 + 68);
            *(v94 + 4) = *(v90 + 52);
            *(v94 + 5) = v98;
            *(v94 + 2) = v96;
            *(v94 + 3) = v97;
            v99 = *(v90 + 84);
            v100 = *(v90 + 100);
            v101 = *(v90 + 116);
            *(v94 + 36) = *(v90 + 132);
            *(v94 + 7) = v100;
            *(v94 + 8) = v101;
            *(v94 + 6) = v99;
            ++v88;
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v102 = VRTraceErrorLogLevelToCSTR();
              v103 = *v91;
              if (os_log_type_enabled(*v91, OS_LOG_TYPE_DEFAULT))
              {
                v104 = v91;
                v105 = CANIDToString(v156, v90);
                v106 = IPPORTToStringWithSize(v157, v90 + 12, 0x36uLL);
                v108 = *(v90 - 12);
                v107 = *(v90 - 8);
                *buf = 136316930;
                *&buf[4] = v102;
                *&buf[12] = 2080;
                *&buf[14] = "ProcessNewCandidates";
                *&buf[22] = 1024;
                *&buf[24] = 428;
                *&buf[28] = 2080;
                *&buf[30] = v139;
                *&buf[38] = 2080;
                *&buf[40] = v105;
                v91 = v104;
                *&buf[48] = 2080;
                *&buf[50] = v106;
                *&buf[58] = 1024;
                *v154 = v107;
                *&v154[4] = 1024;
                *v155 = v108;
                _os_log_impl(&dword_23D497000, v103, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add new %s candidate [%s] [%s], type [%d], proto [%d].", buf, 0x46u);
              }

              v4 = v136;
              v86 = v137;
            }
          }

          v90 += 148;
          --v135;
        }

        while (v135);
      }

      v82 = v128;
      v109 = malloc_type_malloc(400 * v126 * v128, 0x10200402E010713uLL);
      if (!v109)
      {
        goto LABEL_92;
      }

      v110 = v109;
      LODWORD(v150) = 0;
      if (v86)
      {
        v111 = &v87[148 * v130];
        v112 = *(v4 + 176);
        v113 = *(v4 + 196);
        v114 = v128;
      }

      else
      {
        v111 = *(v4 + 168);
        v114 = *(v4 + 192);
        v112 = &v87[148 * v130];
        v113 = v128;
      }

      if ((PairUpCandidate(v111, v114, v112, v113, v110, 1, &v150, 1) & 0x80000000) != 0)
      {
        free(v110);
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessNewCandidates_cold_1();
          }
        }
      }

      else if (v150 >= 1)
      {
        v118 = malloc_type_realloc(*(v4 + 184), 400 * (*(v4 + 200) + v150), 0x10200402E010713uLL);
        if (v118)
        {
          *(v4 + 184) = v118;
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          v120 = MEMORY[0x277CE5818];
          if (ErrorLogLevelForModule >= 7)
          {
            v121 = VRTraceErrorLogLevelToCSTR();
            v122 = *v120;
            if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
            {
              v123 = *(v4 + 200);
              *buf = 136316418;
              *&buf[4] = v121;
              *&buf[12] = 2080;
              *&buf[14] = "ProcessNewCandidates";
              *&buf[22] = 1024;
              *&buf[24] = 466;
              *&buf[28] = 1024;
              *&buf[30] = v150;
              *&buf[34] = 1024;
              *&buf[36] = v123;
              *&buf[40] = 1024;
              *&buf[42] = v123 + v150;
              _os_log_impl(&dword_23D497000, v122, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ProcessNewCandidates: added %d new candidate pair(s), total [%d->%d].", buf, 0x2Eu);
            }
          }

          memcpy((*(v4 + 184) + 400 * *(v4 + 200)), v110, 400 * v150);
          *(v4 + 200) += v150;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v124 = VRTraceErrorLogLevelToCSTR();
            v125 = *v120;
            if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              *&buf[4] = v124;
              *&buf[12] = 2080;
              *&buf[14] = "ProcessNewCandidates";
              *&buf[22] = 1024;
              *&buf[24] = 471;
              *&buf[28] = 1024;
              *&buf[30] = v150;
              _os_log_impl(&dword_23D497000, v125, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Insert events for %d new candidate pair(s).", buf, 0x22u);
            }
          }

          InsertEvent(*(v4 + 160), v110, v150, 50, a1 + 640, 0, 1);
        }

        free(v110);
      }

LABEL_90:
      v86 = v137;
LABEL_92:
      v115 = v82 + v130;
      if (v86)
      {
        *(v4 + 192) = v115;
        v116 = 768;
        v117 = 168;
      }

      else
      {
        *(v4 + 196) = v115;
        v116 = 784;
        v117 = 176;
      }

      *(v4 + v117) = v87;
      *(v4 + v116) = 0;
      free(v14);
      return;
    }

LABEL_89:
    v87 = v129;
    goto LABEL_90;
  }
}

void ProcessRemovedLocalIPPort(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = malloc_type_malloc(148 * *(a2 + 192), 0x1000040C185D105uLL);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  *&v70[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69[1] = v6;
  *v70 = v6;
  v69[0] = v6;
  v67[0] = v6;
  v67[1] = v6;
  v68[0] = v6;
  *(v68 + 14) = 0xAAAAAAAAAAAAAAAALL;
  if (*(a2 + 192) >= 1)
  {
    v7 = a1;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(a2 + 808);
      if (v10 < 1)
      {
        LODWORD(v10) = 0;
        goto LABEL_23;
      }

      v11 = 0;
      v12 = *(a2 + 168) + 148 * v8;
      v14 = *(v12 + 64);
      v13 = v12 + 64;
      v15 = v14 & 1;
      v16 = *(a2 + 816) + 20;
      while (1)
      {
        if (v15 == (*(v16 - 20) & 1))
        {
          if (v15)
          {
            if (*(v13 + 20) != *v16 || *(v13 + 28) != *(v16 + 8))
            {
              goto LABEL_16;
            }
          }

          else if (*(v13 + 20) != *v16)
          {
            goto LABEL_16;
          }

          if (*(v13 + 36) == *(v16 + 16))
          {
            break;
          }
        }

LABEL_16:
        ++v11;
        v16 += 40;
        if (v10 == v11)
        {
          goto LABEL_23;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v20 = IPPORTToStringWithSize(v69, *(a2 + 168) + 148 * v8 + 24, 0x36uLL);
          *buf = 136315906;
          *&buf[4] = v18;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessRemovedLocalIPPort";
          *&buf[22] = 1024;
          LODWORD(v63) = 537;
          WORD2(v63) = 2080;
          *(&v63 + 6) = v20;
          _os_log_impl(&dword_23D497000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove LC [%s].", buf, 0x26u);
        }
      }

      LODWORD(v10) = v11;
LABEL_23:
      if (v10 == *(a2 + 808))
      {
        v21 = &v5[148 * v9];
        v22 = *(a2 + 168) + 148 * v8;
        v23 = *(v22 + 16);
        *v21 = *v22;
        *(v21 + 1) = v23;
        v24 = *(v22 + 32);
        v25 = *(v22 + 48);
        v26 = *(v22 + 80);
        *(v21 + 4) = *(v22 + 64);
        *(v21 + 5) = v26;
        *(v21 + 2) = v24;
        *(v21 + 3) = v25;
        v27 = *(v22 + 96);
        v28 = *(v22 + 112);
        v29 = *(v22 + 128);
        *(v21 + 36) = *(v22 + 144);
        *(v21 + 7) = v28;
        *(v21 + 8) = v29;
        *(v21 + 6) = v27;
        ++v9;
      }

      ++v8;
      v30 = *(a2 + 192);
      if (v8 >= v30)
      {
        a1 = v7;
        if (v9 >= 1 && v9 < v30)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v31 = VRTraceErrorLogLevelToCSTR();
            v32 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v33 = *(a2 + 192);
              *buf = 136316162;
              *&buf[4] = v31;
              *&buf[12] = 2080;
              *&buf[14] = "ProcessRemovedLocalIPPort";
              *&buf[22] = 1024;
              LODWORD(v63) = 549;
              WORD2(v63) = 1024;
              *(&v63 + 6) = v33;
              WORD5(v63) = 1024;
              HIDWORD(v63) = v9;
              _os_log_impl(&dword_23D497000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reduce #LC (%d->%d).", buf, 0x28u);
            }
          }

          *(a2 + 192) = v9;
          ++*(a2 + 204);
          memcpy(*(a2 + 168), v5, 148 * v9);
        }

        break;
      }
    }
  }

  free(v5);
  v34 = malloc_type_malloc(400 * *(a2 + 200), 0x10200402E010713uLL);
  if (!v34)
  {
    return;
  }

  v35 = v34;
  if (*(a2 + 200) < 1)
  {
    v37 = 0;
    v56 = 1;
    goto LABEL_73;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  do
  {
    v39 = *(a2 + 808);
    if (v39 < 1)
    {
      v41 = 0;
      goto LABEL_61;
    }

    v40 = 0;
    v41 = 0;
    v42 = *(a2 + 184) + 400 * v36;
    v43 = *(v42 + 64) & 1;
    v44 = *(a2 + 816);
    v45 = 40 * v39;
    while (1)
    {
      if (v43 == (*v44 & 1))
      {
        if (v43)
        {
          if (*(v42 + 84) != *(v44 + 20) || *(v42 + 92) != *(v44 + 28))
          {
            goto LABEL_47;
          }
        }

        else if (*(v42 + 84) != *(v44 + 20))
        {
          goto LABEL_47;
        }

        if (*(v42 + 100) == *(v44 + 36))
        {
          break;
        }
      }

LABEL_47:
      ++v41;
      v40 -= 40;
      v44 += 40;
      if (!(v45 + v40))
      {
        goto LABEL_62;
      }
    }

    if (v38)
    {
      v47 = 1;
      goto LABEL_54;
    }

    if (*(v42 + 356))
    {
      v47 = *(v42 + 376) != 0;
LABEL_54:
      v61 = v47;
    }

    else
    {
      v61 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v48 = VRTraceErrorLogLevelToCSTR();
      v49 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v60 = IPPORTToStringWithSize(v69, *(a2 + 184) + 400 * v36 + 24, 0x36uLL);
        v50 = IPPORTToStringWithSize(v67, *(a2 + 184) + 400 * v36 + 172, 0x36uLL);
        v51 = *(*(a2 + 184) + 400 * v36 + 376);
        *buf = 136316418;
        *&buf[4] = v48;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessRemovedLocalIPPort";
        *&buf[22] = 1024;
        LODWORD(v63) = 572;
        WORD2(v63) = 2080;
        *(&v63 + 6) = v60;
        HIWORD(v63) = 2080;
        v64 = v50;
        v65 = 1024;
        v66 = v51;
        _os_log_impl(&dword_23D497000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove CP [%s-%s], bIfPrimary [%d]", buf, 0x36u);
      }
    }

    v52 = *(a2 + 184);
    if (*(v52 + 400 * v36 + 4) == 5)
    {
      ICERemoveOneRelayBeatForLocal(a1, *(a2 + 148), *(a2 + 816) - v40);
      v52 = *(a2 + 184);
    }

    RemoveConnectivityCheckResult(a1, *(a2 + 148), v52 + 400 * v36);
    v53 = *(a2 + 184) + 400 * v36;
    v54 = *(a2 + 160);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 0x40000000;
    *&buf[16] = __FlushEventsForCandidatePair_block_invoke;
    *&v63 = &__block_descriptor_tmp_0;
    *(&v63 + 1) = v53;
    FreeEventsMatchingPredicate(v54, buf);
    LODWORD(v39) = *(a2 + 808);
    v38 = v61;
LABEL_61:
    if (v41 == v39)
    {
LABEL_62:
      memcpy(&v35[400 * v37++], (*(a2 + 184) + 400 * v36), 0x190uLL);
    }

    ++v36;
    v55 = *(a2 + 200);
  }

  while (v36 < v55);
  v56 = !v38;
  if (v37 >= 1 && v37 < v55)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v57 = VRTraceErrorLogLevelToCSTR();
      v58 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v59 = *(a2 + 200);
        *buf = 136316162;
        *&buf[4] = v57;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessRemovedLocalIPPort";
        *&buf[22] = 1024;
        LODWORD(v63) = 594;
        WORD2(v63) = 1024;
        *(&v63 + 6) = v59;
        WORD5(v63) = 1024;
        HIDWORD(v63) = v37;
        _os_log_impl(&dword_23D497000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reduce #CP (%d->%d).", buf, 0x28u);
      }
    }

    memcpy(*(a2 + 184), v35, 400 * v37);
  }

LABEL_73:
  free(v35);
  *(a2 + 200) = v37;
  *(a2 + 808) = 0;
  if (!v56)
  {
    if (v37)
    {
      PromoteSecondaryConnection(a2);
    }
  }
}

void ICEConnectivityRecheck(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = v4;
      v12 = 2080;
      v13 = "ICEConnectivityRecheck";
      v14 = 1024;
      v15 = 703;
      _os_log_impl(&dword_23D497000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: check current pairs for new connectivity due to removed interfaces", &v10, 0x1Cu);
    }
  }

  v6 = *(a2 + 200);
  if (v6 >= 1)
  {
    v7 = 0;
    for (i = 0; i < v6; ++i)
    {
      v9 = *(a2 + 184) + v7;
      if (*(v9 + 296) != 9)
      {
        *(v9 + 296) = 2;
        InsertEvent(*(a2 + 160), v9, 1, 50, a1 + 640, 0, 1);
        v6 = *(a2 + 200);
      }

      v7 += 400;
    }
  }
}

void ProcessRemovedRemoteIPPort(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = malloc_type_malloc(148 * *(a2 + 196), 0x1000040C185D105uLL);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  *&v70[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69[1] = v6;
  *v70 = v6;
  v69[0] = v6;
  v67[0] = v6;
  v67[1] = v6;
  v68[0] = v6;
  *(v68 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v60 = a1;
  if (*(a2 + 196) >= 1)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(a2 + 824);
      if (v9 < 1)
      {
        LODWORD(v9) = 0;
        goto LABEL_21;
      }

      v10 = 0;
      v11 = *(a2 + 176) + 148 * v7;
      v13 = *(v11 + 24);
      v12 = v11 + 24;
      v14 = v13 & 1;
      v15 = *(a2 + 832) + 20;
      while (1)
      {
        if (v14 != (*(v15 - 20) & 1))
        {
          goto LABEL_14;
        }

        if (v14)
        {
          break;
        }

        if (*(v12 + 20) == *v15)
        {
          goto LABEL_17;
        }

LABEL_14:
        ++v10;
        v15 += 40;
        if (v9 == v10)
        {
          goto LABEL_21;
        }
      }

      if (*(v12 + 20) != *v15 || *(v12 + 28) != *(v15 + 8))
      {
        goto LABEL_14;
      }

LABEL_17:
      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v19 = IPPORTToStringWithSize(v69, *(a2 + 176) + 148 * v7 + 24, 0x36uLL);
          *buf = 136315906;
          *&buf[4] = v17;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessRemovedRemoteIPPort";
          *&buf[22] = 1024;
          LODWORD(v63) = 632;
          WORD2(v63) = 2080;
          *(&v63 + 6) = v19;
          _os_log_impl(&dword_23D497000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove RC [%s].", buf, 0x26u);
        }
      }

      LODWORD(v9) = v10;
LABEL_21:
      if (v9 == *(a2 + 824))
      {
        v20 = &v5[148 * v8];
        v21 = *(a2 + 176) + 148 * v7;
        v22 = *(v21 + 16);
        *v20 = *v21;
        *(v20 + 1) = v22;
        v23 = *(v21 + 32);
        v24 = *(v21 + 48);
        v25 = *(v21 + 80);
        *(v20 + 4) = *(v21 + 64);
        *(v20 + 5) = v25;
        *(v20 + 2) = v23;
        *(v20 + 3) = v24;
        v26 = *(v21 + 96);
        v27 = *(v21 + 112);
        v28 = *(v21 + 128);
        *(v20 + 36) = *(v21 + 144);
        *(v20 + 7) = v27;
        *(v20 + 8) = v28;
        *(v20 + 6) = v26;
        ++v8;
      }

      ++v7;
      v29 = *(a2 + 196);
      if (v7 >= v29)
      {
        a1 = v60;
        if (v8 >= 1 && v8 < v29)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v30 = VRTraceErrorLogLevelToCSTR();
            v31 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v32 = *(a2 + 196);
              *buf = 136316162;
              *&buf[4] = v30;
              *&buf[12] = 2080;
              *&buf[14] = "ProcessRemovedRemoteIPPort";
              *&buf[22] = 1024;
              LODWORD(v63) = 644;
              WORD2(v63) = 1024;
              *(&v63 + 6) = v32;
              WORD5(v63) = 1024;
              HIDWORD(v63) = v8;
              _os_log_impl(&dword_23D497000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reduce #RC (%d->%d).", buf, 0x28u);
            }
          }

          *(a2 + 196) = v8;
          memcpy(*(a2 + 176), v5, 148 * v8);
        }

        break;
      }
    }
  }

  free(v5);
  __src = malloc_type_malloc(400 * *(a2 + 200), 0x10200402E010713uLL);
  if (!__src)
  {
    return;
  }

  if (*(a2 + 200) < 1)
  {
    v34 = 0;
    v56 = 1;
    goto LABEL_67;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  do
  {
    v36 = *(a2 + 824);
    if (v36 < 1)
    {
      LODWORD(v37) = 0;
      goto LABEL_57;
    }

    v37 = 0;
    v38 = *(a2 + 184);
    v39 = v38 + 400 * v33;
    v41 = *(v39 + 172);
    v40 = v39 + 172;
    v42 = v41 & 1;
    v43 = *(a2 + 832) + 20;
    while (1)
    {
      if (v42 != (*(v43 - 20) & 1))
      {
        goto LABEL_43;
      }

      if (v42)
      {
        break;
      }

      if (*(v40 + 20) == *v43)
      {
        goto LABEL_46;
      }

LABEL_43:
      ++v37;
      v43 += 40;
      if (v36 == v37)
      {
        goto LABEL_58;
      }
    }

    if (*(v40 + 20) != *v43 || *(v40 + 28) != *(v43 + 8))
    {
      goto LABEL_43;
    }

LABEL_46:
    if (v35)
    {
      v35 = 1;
    }

    else
    {
      v45 = v38 + 400 * v33;
      if (*(v45 + 356))
      {
        v35 = *(v45 + 376) != 0;
      }

      else
      {
        v35 = 0;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v46 = VRTraceErrorLogLevelToCSTR();
      v47 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v48 = IPPORTToStringWithSize(v69, *(a2 + 184) + 400 * v33 + 24, 0x36uLL);
        v49 = IPPORTToStringWithSize(v67, *(a2 + 184) + 400 * v33 + 172, 0x36uLL);
        v50 = *(*(a2 + 184) + 400 * v33 + 376);
        *buf = 136316418;
        *&buf[4] = v46;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessRemovedRemoteIPPort";
        *&buf[22] = 1024;
        LODWORD(v63) = 663;
        WORD2(v63) = 2080;
        *(&v63 + 6) = v48;
        a1 = v60;
        HIWORD(v63) = 2080;
        v64 = v49;
        v65 = 1024;
        v66 = v50;
        _os_log_impl(&dword_23D497000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove CP [%s-%s], bIfPrimary [%d]", buf, 0x36u);
      }
    }

    v51 = *(a2 + 184);
    v52 = v51 + 400 * v33;
    if (*(v52 + 4) == 5)
    {
      ICEDiscardOneRelayBindingForRemote(a1, a2, v52 + 172);
      v51 = *(a2 + 184);
    }

    RemoveConnectivityCheckResult(a1, *(a2 + 148), v51 + 400 * v33);
    v53 = *(a2 + 184) + 400 * v33;
    v54 = *(a2 + 160);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 0x40000000;
    *&buf[16] = __FlushEventsForCandidatePair_block_invoke;
    *&v63 = &__block_descriptor_tmp_0;
    *(&v63 + 1) = v53;
    FreeEventsMatchingPredicate(v54, buf);
    LODWORD(v36) = *(a2 + 824);
LABEL_57:
    if (v37 == v36)
    {
LABEL_58:
      memcpy(&__src[400 * v34++], (*(a2 + 184) + 400 * v33), 0x190uLL);
    }

    ++v33;
    v55 = *(a2 + 200);
  }

  while (v33 < v55);
  v56 = !v35;
  if (v34 >= 1 && v34 < v55)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v57 = VRTraceErrorLogLevelToCSTR();
      v58 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v59 = *(a2 + 200);
        *buf = 136316162;
        *&buf[4] = v57;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessRemovedRemoteIPPort";
        *&buf[22] = 1024;
        LODWORD(v63) = 685;
        WORD2(v63) = 1024;
        *(&v63 + 6) = v59;
        WORD5(v63) = 1024;
        HIDWORD(v63) = v34;
        _os_log_impl(&dword_23D497000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reduce #CP (%d->%d).", buf, 0x28u);
      }
    }

    memcpy(*(a2 + 184), __src, 400 * v34);
  }

LABEL_67:
  free(__src);
  *(a2 + 200) = v34;
  *(a2 + 824) = 0;
  if (!v56)
  {
    if (v34)
    {
      PromoteSecondaryConnection(a2);
    }
  }
}

void PromoteSecondaryConnection(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 200);
  if (v1 >= 1)
  {
    v3 = 0;
    *&v25[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24[1] = v4;
    *v25 = v4;
    v24[0] = v4;
    v22[0] = v4;
    v22[1] = v4;
    v23[0] = v4;
    *(v23 + 14) = 0xAAAAAAAAAAAAAAAALL;
    v5 = (*(a1 + 184) + 376);
    v6 = -1;
    v7 = -1;
    do
    {
      if (*(v5 - 5))
      {
        if (*v5)
        {
          v6 = v3;
        }

        else
        {
          v7 = v3;
        }
      }

      ++v3;
      v5 += 100;
    }

    while (v1 != v3);
    if (v6 == -1 && v7 != -1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v10 = IPPORTToStringWithSize(v24, *(a1 + 184) + 400 * v7 + 24, 0x36uLL);
          v11 = IPPORTToStringWithSize(v22, *(a1 + 184) + 400 * v7 + 172, 0x36uLL);
          v12 = 136316162;
          v13 = v8;
          v14 = 2080;
          v15 = "PromoteSecondaryConnection";
          v16 = 1024;
          v17 = 513;
          v18 = 2080;
          v19 = v10;
          v20 = 2080;
          v21 = v11;
          _os_log_impl(&dword_23D497000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: promote secondary [%s - %s] to primary", &v12, 0x30u);
        }
      }

      *(*(a1 + 184) + 400 * v7 + 376) = 1;
    }
  }
}

uint64_t AddConnectivityCheckResult(uint64_t a1, uint64_t a2, int a3)
{
  v97 = *MEMORY[0x277D85DE8];
  *&v96[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v95[1] = v6;
  *v96 = v6;
  v95[0] = v6;
  *(v94 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v93[1] = v6;
  v94[0] = v6;
  v93[0] = v6;
  v69 = 1;
  v7 = *(*(a2 + 168) + 8);
  v8 = *(*(a2 + 176) + 8);
  v9 = *(a2 + 184) + 400 * a3;
  v10 = *v9;
  pthread_rwlock_rdlock((a1 + 240));
  v12 = *(a1 + 440);
  if (!v12)
  {
    pthread_rwlock_unlock((a1 + 240));
    v14 = 0;
    goto LABEL_37;
  }

  v13 = 0;
  LODWORD(v14) = 0;
  *&v11 = 136316162;
  do
  {
    if (*v12 != v7 || *(v12 + 16) != v10 || (*(v12 + 28) & 1) != (*(v9 + 64) & 1))
    {
      goto LABEL_33;
    }

    if (*(v12 + 28))
    {
      if (*(v12 + 48) != *(v9 + 84) || *(v12 + 56) != *(v9 + 92))
      {
        goto LABEL_33;
      }
    }

    else if (*(v12 + 48) != *(v9 + 84))
    {
      goto LABEL_33;
    }

    if (*(v12 + 64) != *(v9 + 100) || (*(v12 + 148) & 1) != (*(v9 + 172) & 1))
    {
      goto LABEL_33;
    }

    if (*(v12 + 148))
    {
      if (*(v12 + 168) != *(v9 + 192) || *(v12 + 176) != *(v9 + 200))
      {
        goto LABEL_33;
      }
    }

    else if (*(v12 + 168) != *(v9 + 192))
    {
      goto LABEL_33;
    }

    if (*(v12 + 184) == *(v9 + 208))
    {
      v17 = *(v9 + 4) == 5 && *(v9 + 152) == 5;
      if (*(v12 + 20) == v17)
      {
        v66 = v11;
        if (VRTraceGetErrorLogLevelForModule() >= 7 && (v65 = VRTraceErrorLogLevelToCSTR(), v18 = *MEMORY[0x277CE5818], os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT)))
        {
          *buf = v66;
          *&buf[4] = v65;
          *&buf[12] = 2080;
          *&buf[14] = "AddConnectivityCheckResult";
          *&buf[22] = 1024;
          LODWORD(v71) = 1275;
          WORD2(v71) = 1024;
          *(&v71 + 6) = v7;
          WORD5(v71) = 1024;
          HIDWORD(v71) = v10;
          _os_log_impl(&dword_23D497000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connectivity check result found (id:%d proto:%d)\n", buf, 0x28u);
          v11 = v66;
          v13 = 1;
        }

        else
        {
          v13 = 1;
          v11 = v66;
        }
      }
    }

LABEL_33:
    v12 = *(v12 + 304);
    v14 = (v14 + 1);
  }

  while (v12);
  pthread_rwlock_unlock((a1 + 240));
  if (v13)
  {
    goto LABEL_74;
  }

LABEL_37:
  v19 = *(v9 + 4) == 5 && *(v9 + 152) == 5;
  v20 = malloc_type_calloc(1uLL, 0x140uLL, 0x1020040A6FBA1A4uLL);
  if (v20)
  {
    v21 = v20;
    v22 = *(a2 + 804) + 1;
    *(a2 + 804) = v22;
    *v20 = v7;
    *(v20 + 1) = v22;
    *(v20 + 2) = *(a2 + 840);
    *(v20 + 3) = v8;
    *(v20 + 4) = v10;
    *(v20 + 67) = *(v9 + 352);
    *(v20 + 17) = *(a2 + 872);
    v23 = *(v9 + 64);
    v24 = *(v9 + 80);
    *(v20 + 60) = *(v9 + 96);
    *(v20 + 44) = v24;
    *(v20 + 28) = v23;
    if (IsIPPORTValid(v9 + 212))
    {
      v25 = v9 + 212;
    }

    else
    {
      v25 = v9 + 172;
    }

    v26 = *(v25 + 32);
    v27 = *(v25 + 16);
    *(v21 + 68) = *v25;
    *(v21 + 84) = v27;
    *(v21 + 100) = v26;
    v28 = *(v9 + 40);
    v29 = *(v9 + 24);
    *(v21 + 140) = *(v9 + 56);
    *(v21 + 108) = v29;
    *(v21 + 124) = v28;
    if (v19 && (v30 = (a2 + 236), IsIPPORTValid(a2 + 236)))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v67 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v67;
          *&buf[12] = 2080;
          *&buf[14] = "AddConnectivityCheckResult";
          *&buf[22] = 1024;
          LODWORD(v71) = 1312;
          _os_log_impl(&dword_23D497000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Relay server used", buf, 0x1Cu);
        }
      }

      v32 = *v30;
      v33 = *(a2 + 252);
      *(v21 + 180) = *(a2 + 268);
      *(v21 + 164) = v33;
      *(v21 + 148) = v32;
      v34 = *v30;
      v35 = *(a2 + 252);
      *(v21 + 260) = *(a2 + 268);
      *(v21 + 244) = v35;
      *(v21 + 228) = v34;
      *(v21 + 12) = *(a2 + 232);
      v36 = *(a2 + 234);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v68 = VRTraceErrorLogLevelToCSTR();
        v37 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v68;
          *&buf[12] = 2080;
          *&buf[14] = "AddConnectivityCheckResult";
          *&buf[22] = 1024;
          LODWORD(v71) = 1319;
          _os_log_impl(&dword_23D497000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No relay server used", buf, 0x1Cu);
        }
      }

      v36 = 0;
      v38 = *(v9 + 172);
      v39 = *(v9 + 188);
      *(v21 + 180) = *(v9 + 204);
      *(v21 + 164) = v39;
      *(v21 + 148) = v38;
      *(v21 + 12) = 0;
    }

    v40 = (a1 + 440);
    *(v21 + 13) = v36;
    v41 = *(v9 + 312);
    v42 = *(v9 + 328);
    *(v21 + 220) = *(v9 + 344);
    *(v21 + 204) = v42;
    *(v21 + 188) = v41;
    *(v21 + 5) = v19;
    v43 = *(a2 + 184) + 400 * a3;
    *(v21 + 73) = *(v43 + 368);
    *(v21 + 37) = *(v43 + 376);
    IPPORTToStringWithSize(v95, (v21 + 108), 0x36uLL);
    IPPORTToStringWithSize(v93, (v21 + 148), 0x36uLL);
    *(*(a2 + 184) + 400 * a3 + 364) = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v46 = *v21;
        if (*(v21 + 74))
        {
          v47 = "primary";
        }

        else
        {
          v47 = "secondary";
        }

        v48 = *(v21 + 3);
        v49 = *(v21 + 4);
        v50 = *(v21 + 73);
        v51 = *(v9 + 360);
        v52 = *(a2 + 804);
        v53 = *(v21 + 12);
        v54 = *(v21 + 13);
        v55 = *(v21 + 5);
        *buf = 136318978;
        *&buf[4] = v44;
        *&buf[12] = 2080;
        *&buf[14] = "AddConnectivityCheckResult";
        *&buf[22] = 1024;
        LODWORD(v71) = 1342;
        WORD2(v71) = 2080;
        *(&v71 + 6) = v47;
        HIWORD(v71) = 1024;
        *v72 = v46;
        *&v72[4] = 1024;
        *&v72[6] = v48;
        v73 = 1024;
        v74 = v49;
        v75 = 2080;
        v76 = v21 + 32;
        v77 = 1024;
        v78 = v50;
        v79 = 1024;
        v80 = v51;
        v81 = 1024;
        v82 = v52;
        v83 = 2080;
        v84 = v95;
        v85 = 2080;
        v86 = v93;
        v87 = 1024;
        v88 = v53;
        v89 = 1024;
        v90 = v54;
        v91 = 1024;
        v92 = v55;
        _os_log_impl(&dword_23D497000, v45, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Add ICE result %s (callid:%08X remoteid:%08X proto:%d if=[%s] upgrade:%d nominate#:%d result#:%d): %s-%s, %d, %x, %d", buf, 0x7Au);
      }
    }

    pthread_rwlock_wrlock((a1 + 240));
    v56 = *v40;
    if (*v40)
    {
      do
      {
        v57 = v56;
        v56 = *(v56 + 38);
      }

      while (v56);
      v40 = (v57 + 304);
    }

    *v40 = v21;
    pthread_rwlock_unlock((a1 + 240));
    pthread_mutex_lock((a2 + 16));
    if (*(a2 + 896))
    {
      dispatch_time(0, 5000000000);
      v58 = SKEState_CopySecretKeySync();
      if (v58)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            AddConnectivityCheckResult_cold_1();
          }
        }
      }
    }

    else
    {
      v58 = 0;
    }

    pthread_mutex_unlock((a2 + 16));
    (*(a1 + 32))(*(a1 + 8), v7, v21, &v69, *(v21 + 5), 0, v58);
    v59 = *(a2 + 160);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 0x40000000;
    *&buf[16] = __FlushEventsForSelectedCandidatePair_block_invoke;
    *&v71 = &__block_descriptor_tmp_22;
    *(&v71 + 1) = v9;
    *v72 = a2;
    FreeEventsMatchingPredicate(v59, buf);
LABEL_74:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v60 = VRTraceErrorLogLevelToCSTR();
      v61 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v62 = *(a2 + 804);
        v63 = *(a2 + 212);
        *buf = 136316162;
        *&buf[4] = v60;
        *&buf[12] = 2080;
        *&buf[14] = "AddConnectivityCheckResult";
        *&buf[22] = 1024;
        LODWORD(v71) = 1409;
        WORD2(v71) = 1024;
        *(&v71 + 6) = v62;
        WORD5(v71) = 1024;
        HIDWORD(v71) = v63;
        _os_log_impl(&dword_23D497000, v61, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ACCR: result count %d max count :%d", buf, 0x28u);
      }
    }
  }

  else
  {
    v14 = 2148859907;
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          AddConnectivityCheckResult_cold_3();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_FAULT))
      {
        AddConnectivityCheckResult_cold_2();
      }
    }
  }

  return v14;
}

uint64_t __FlushEventsForSelectedCandidatePair_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (MatchCandidatePairWithIDs(*(a1 + 32), (v3 + 14), (v3 + 4)) || !IsIPPORTValid(v3 + 108))
  {
    return 1;
  }

  if ((*(v3 + 108) & 1) == 0)
  {
    v5 = *(v3 + 128);
    v6 = v5 == -1408237568 || v5 == -1062731776;
    if (v6 || v5 == 167772160)
    {
      return 1;
    }
  }

  v8 = *(a1 + 40);
  v9 = *(v8 + 200);
  if (v9 < 1)
  {
    return 0;
  }

  for (i = *(v8 + 184); !MatchCandidatePairWithIDs(i, (v3 + 14), (v3 + 4)); i += 400)
  {
    if (!--v9)
    {
      return 0;
    }
  }

  v11 = *(i + 296);
  v12 = v11 == 3 || v11 >= 6;
  if (v12 && !*(i + 356))
  {
    return 1;
  }

  if (((v13 = *(*(a1 + 40) + 840), v13 == 2) || (v13 == 1 ? (v14 = v11 == 9) : (v14 = 0), v14)) && *(i + 356) && !*(v3 + 152))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_12_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0x22u);
}

uint64_t IsSTUNIDValid(uint64_t a1, uint64_t a2, int a3, double a4)
{
  if (*a2 == 554869826)
  {
    if (a1)
    {
      while (1)
      {
        if ((*(a1 + 4) & 0xFFFE) == 2 && *(a1 + 1492) >= 20 && *(a1 + 15) == *(a2 + 4) && *(a1 + 23) == *(a2 + 12))
        {
          if (!a3)
          {
            goto LABEL_24;
          }

          if (*(a1 + 1576) <= a4)
          {
            break;
          }
        }

        a1 = *(a1 + 1584);
        if (!a1)
        {
          return 0;
        }
      }

      if (*(a1 + 6) != 1)
      {
LABEL_24:
        v5 = 1;
        *(a1 + 6) = 1;
        return v5;
      }
    }
  }

  else
  {
    while (a1)
    {
      if ((*(a1 + 4) & 0xFFFE) == 2 && *(a1 + 1492) >= 20 && *(a1 + 11) == *a2 && *(a1 + 19) == *(a2 + 8))
      {
        goto LABEL_24;
      }

      a1 = *(a1 + 1584);
    }
  }

  return 0;
}

uint64_t FindSNATMAPRequest(uint64_t a1, uint64_t a2, int a3)
{
  for (i = a1; i; i = *(i + 1584))
  {
    if (*(i + 4) == 1 && SNATMAP_IsEqualNonce() && *(i + 6) == a3)
    {
      break;
    }
  }

  return i;
}

uint64_t MakeSNATMAPRequest(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  while (1)
  {
    v7 = *a4;
    result = SNATMAP_MakeRequest();
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = SNATMAP_GetNonceValue();
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = FindSNATMAPRequest(a1, 2863311530, 0);
    if (!result)
    {
      *a4 = v7;
      return result;
    }
  }

  return result;
}

uint64_t ProcessMessageType(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 1492), v1 > 1))
  {
    v2 = 0;
    if (v1 == 16 && *(a1 + 7) == 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    *(a1 + 4) = v4;
  }

  else
  {
    v2 = 2148859905;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessMessageType_cold_1();
      }
    }
  }

  return v2;
}

uint64_t ProcessCollectionResponse(uint64_t a1, uint64_t a2, int a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, _WORD *a8, __CFDictionary *a9, int *a10, _DWORD *a11)
{
  v65 = *MEMORY[0x277D85DE8];
  v61 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60[0] = v12;
  v60[1] = v12;
  v44 = -1431655766;
  *(v59 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v58[1] = v12;
  v59[0] = v12;
  v58[0] = v12;
  if (a5 <= 3)
  {
    v13 = 2148859912;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessCollectionResponse_cold_4();
      }
    }

    return v13;
  }

  v20 = *a4;
  v62 = 0u;
  v63 = 0u;
  v64 = 0;
  if (a5 == 16 && v20 == 0x2000000)
  {
    NonceValue = SNATMAP_GetNonceValue();
    if ((NonceValue & 0x80000000) != 0)
    {
      return NonceValue;
    }

    SNATMAPRequest = FindSNATMAPRequest(a2, v44, 1);
    if (SNATMAPRequest)
    {
      v23 = SNATMAPRequest;
      LODWORD(v60[0]) = 0;
      *(v60 + 4) = *"external";
      v13 = ProcessSNATMAPResponse();
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if ((v13 & 0x80000000) != 0)
      {
        if (ErrorLogLevelForModule >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessCollectionResponse_cold_3();
          }
        }
      }

      else
      {
        if (ErrorLogLevelForModule >= 6)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v25;
            *&buf[12] = 2080;
            *&buf[14] = "ProcessCollectionResponse";
            *&buf[22] = 1024;
            *&buf[24] = 194;
            *&buf[28] = 2080;
            *&buf[30] = IPPORTToStringWithSize(v58, v60, 0x36uLL);
            _os_log_impl(&dword_23D497000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SNATMAP mapping [%s]", buf, 0x26u);
          }
        }

        v62 = v60[0];
        v63 = v60[1];
        v64 = v61;
        v13 = ICEUpdateSMSTUNIPPort(a1, a6, &v62, a3, 3, a11);
        *(v23 + 6) = 1;
      }

      return v13;
    }

    v13 = 2148859916;
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return v13;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return v13;
    }

    *buf = 136315906;
    *&buf[4] = v35;
    *&buf[12] = 2080;
    *&buf[14] = "ProcessCollectionResponse";
    *&buf[22] = 1024;
    *&buf[24] = 182;
    *&buf[28] = 1024;
    *&buf[30] = 182;
    v31 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: SNATMAP nonce not match.";
    v32 = buf;
    v33 = v36;
    v34 = 34;
LABEL_31:
    _os_log_impl(&dword_23D497000, v33, OS_LOG_TYPE_DEFAULT, v31, v32, v34);
    return v13;
  }

  memset(buf, 170, sizeof(buf));
  v56 = 0xAAAAAAAAAAAAAAAALL;
  *&v27 = 0xAAAAAAAAAAAAAAAALL;
  *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55[0] = v27;
  v55[1] = v27;
  v43 = 0;
  v13 = ParseSTUNMessage(a4, a5, buf);
  if ((v13 & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessCollectionResponse_cold_2();
      }
    }

    return v13;
  }

  if (!IsSTUNIDValid(a2, &buf[8], 0, 0.0))
  {
    v13 = 2148859916;
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return v13;
    }

    v29 = VRTraceErrorLogLevelToCSTR();
    v30 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return v13;
    }

    *v45 = 136315650;
    v46 = v29;
    v47 = 2080;
    v48 = "ProcessCollectionResponse";
    v49 = 1024;
    v50 = 216;
    v31 = " [%s] %s:%d recv old STUN response, ignored";
    v32 = v45;
    v33 = v30;
    v34 = 28;
    goto LABEL_31;
  }

  if (*&buf[2] != 3)
  {
    goto LABEL_44;
  }

  if (*buf == 272)
  {
    ProcessAllocateErrorResponse(buf, a8);
    v13 = 2148859955;
    goto LABEL_44;
  }

  if (*buf != 256)
  {
LABEL_44:
    FreeSTUNMessage(buf);
    return v13;
  }

  if (a10)
  {
    v28 = *a10;
  }

  else
  {
    v28 = 1;
  }

  v13 = ProcessAllocateResponse(buf, 1, &v43, v60, v55, a9, v28);
  v37 = VRTraceGetErrorLogLevelForModule();
  if ((v13 & 0x80000000) == 0)
  {
    if (v37 >= 7)
    {
      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v40 = IPPORTToStringWithSize(v58, v60, 0x36uLL);
        *v45 = 136316162;
        v46 = v38;
        v47 = 2080;
        v48 = "ProcessCollectionResponse";
        v49 = 1024;
        v50 = 229;
        v51 = 2080;
        v52 = v40;
        v53 = 1024;
        v54 = v43;
        _os_log_impl(&dword_23D497000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RELAY mapping [%s] lifetime [%d]", v45, 0x2Cu);
      }
    }

    v41 = ICEUpdateRelayIPPort(a1, a6, v60, v55, a3);
    v13 = v41;
    if (a10 && (v41 & 0x80000000) == 0)
    {
      *a10 = 0;
    }

    goto LABEL_44;
  }

  if (v37 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ProcessCollectionResponse_cold_1();
    }
  }

  return v13;
}

uint64_t SendCollectionRequest(uint64_t a1, uint64_t *a2, int a3, const char *a4, const void *a5)
{
  v124 = a2;
  v141 = *MEMORY[0x277D85DE8];
  v140 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v139 = v9;
  v138 = v9;
  v137 = 0;
  v136 = 0u;
  v135 = 0u;
  memset(v134, 170, sizeof(v134));
  *(v133 + 14) = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v132[1] = v10;
  v133[0] = v10;
  v132[0] = v10;
  v127 = 0;
  SNATMAPServer = GetSNATMAPServer();
  v12 = (a1 + 452);
  if (SNATMAPServer < 0)
  {
    *(a1 + 484) = 0;
    *v12 = 0u;
    *(a1 + 468) = 0u;
    if (!a4)
    {
LABEL_16:
      v122 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v13 = *(a1 + 468);
    v138 = *v12;
    v139 = v13;
    v140 = *(a1 + 484);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v131[0]) = 136315906;
        *(v131 + 4) = v14;
        WORD2(v131[1]) = 2080;
        *(&v131[1] + 6) = "SendCollectionRequest";
        HIWORD(v131[2]) = 1024;
        LODWORD(v131[3]) = 366;
        WORD2(v131[3]) = 2080;
        *(&v131[3] + 6) = IPPORTToStringWithSize(v132, &v138, 0x36uLL);
        _os_log_impl(&dword_23D497000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Resolved SNATMAP server [%s]", v131, 0x26u);
      }
    }

    if (!a4)
    {
      goto LABEL_16;
    }
  }

  IPPortFromDict = GetIPPortFromDict(a5, @"GKSRelaySelfRelayIP", @"GKSRelaySelfRelayPort", &v135);
  DWORD1(v136) = bswap32(DWORD1(v136));
  if (IPPortFromDict < 0 || !IsIPPORTValid(&v135))
  {
    goto LABEL_16;
  }

  *v128 = 0xAAAAAAAAAAAAAAAALL;
  if (GetRemotePrimaryCID(a5, v128) < 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v122 = v17;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v20 = IPPORTToStringWithSize(v132, &v135, 0x36uLL);
      LODWORD(v131[0]) = 136315906;
      *(v131 + 4) = v18;
      WORD2(v131[1]) = 2080;
      *(&v131[1] + 6) = "SendCollectionRequest";
      HIWORD(v131[2]) = 1024;
      LODWORD(v131[3]) = 378;
      WORD2(v131[3]) = 2080;
      *(&v131[3] + 6) = v20;
      _os_log_impl(&dword_23D497000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Resolved relay server [%s]", v131, 0x26u);
    }
  }

LABEL_17:
  v117 = a5;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v131[0]) = 136316418;
      *(v131 + 4) = v21;
      WORD2(v131[1]) = 2080;
      *(&v131[1] + 6) = "SendCollectionRequest";
      HIWORD(v131[2]) = 1024;
      LODWORD(v131[3]) = 381;
      WORD2(v131[3]) = 2080;
      *(&v131[3] + 6) = a4;
      HIWORD(v131[4]) = 1024;
      LODWORD(v131[5]) = DWORD1(v136);
      WORD2(v131[5]) = 1024;
      *(&v131[5] + 6) = WORD2(v137);
      _os_log_impl(&dword_23D497000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SendCollectionRequest: [%s], relayserver:%08X:%u", v131, 0x32u);
    }
  }

  pthread_mutex_lock((a1 + 96));
  v23 = *(a1 + 160);
  if (!v23)
  {
    goto LABEL_83;
  }

  v24 = 0;
  do
  {
    v25 = (*(v23 + 8) & 1) != 0 && *(v23 + 232) == 0;
    if (*v23)
    {
      v26 = *v23 == 5;
    }

    else
    {
      v26 = 1;
    }

    if (v26 || *(v23 + 4) == a3)
    {
      v24 += *(v23 + 30) << 16 != -1442971648 && !v25;
    }

    v23 = *(v23 + 240);
  }

  while (v23);
  if (!v24)
  {
LABEL_83:
    pthread_mutex_unlock((a1 + 96));
    return 0;
  }

  v27 = malloc_type_malloc(40 * v24, 0x100004053E81896uLL);
  v126 = v27;
  if (v27)
  {
    v112 = &v111;
    MEMORY[0x28223BE20](v27);
    v28 = &v111 - ((4 * v24 + 15) & 0x7FFFFFFF0);
    v29 = memset(v28, 170, 4 * v24);
    MEMORY[0x28223BE20](v29);
    memset(v28, 170, 4 * v24);
    if (v24 >= 1)
    {
      bzero(v28, 4 * v24);
      bzero(v28, 4 * v24);
    }

    v123 = &v111 - ((4 * v24 + 15) & 0x7FFFFFFF0);
    v125 = v123;
    v31 = *(a1 + 160);
    v116 = 1;
    v115 = a4;
    if (v31)
    {
      *&v111 = a1;
      v120 = 0;
      v121 = 0;
      LODWORD(v118) = 0;
      v32 = 0;
      v34 = SNATMAPServer >= 0 && v122 == 0;
      v119 = v34;
      *&v30 = 136316418;
      v114 = v30;
      v35 = v125;
      while (1)
      {
        v36 = (v31 + 8);
        v37 = (*(v31 + 8) & 1) != 0 && *(v31 + 232) == 0;
        if (*v31)
        {
          v38 = *v31 == 5;
        }

        else
        {
          v38 = 1;
        }

        if (!v38 && *(v31 + 4) != a3 || *(v31 + 30) << 16 == -1442971648 || v37)
        {
          goto LABEL_81;
        }

        if (IsIPPORTValid(v31 + 96))
        {
          *&v123[4 * v32] = 1;
          if ((*v36 & 4) != 0)
          {
            v39 = 1;
          }

          else
          {
            v39 = v120;
          }

          v40 = v121;
          if ((*v36 & 4) == 0)
          {
            v40 = 1;
          }

          v120 = v39;
          v121 = v40;
          *&v128[46] = 0xAAAAAAAAAAAAAAAALL;
          *&v41 = 0xAAAAAAAAAAAAAAAALL;
          *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v128[16] = v41;
          *&v128[32] = v41;
          *v128 = v41;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v42 = VRTraceErrorLogLevelToCSTR();
            v43 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v44 = &unk_23D4C9CFB;
              if ((*v36 & 4) == 0)
              {
                v44 = "non-";
              }

              *&v118 = v44;
              *&v113 = IPPORTToStringWithSize(v132, v31 + 8, 0x36uLL);
              v45 = IPPORTToStringWithSize(v128, v31 + 96, 0x36uLL);
              LODWORD(v131[0]) = v114;
              *(v131 + 4) = v42;
              WORD2(v131[1]) = 2080;
              *(&v131[1] + 6) = "SendCollectionRequest";
              HIWORD(v131[2]) = 1024;
              LODWORD(v131[3]) = 452;
              WORD2(v131[3]) = 2080;
              *(&v131[3] + 6) = v118;
              HIWORD(v131[4]) = 2080;
              v131[5] = v113;
              LOWORD(v131[6]) = 2080;
              *(&v131[6] + 2) = v45;
              _os_log_impl(&dword_23D497000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found %scellular interface [%s] with external mapping [%s].", v131, 0x3Au);
            }
          }

          LODWORD(v118) = 1;
        }

        v46 = &v126[40 * v32];
        v47 = *v36;
        v48 = *(v31 + 24);
        *(v46 + 4) = *(v31 + 40);
        *v46 = v47;
        *(v46 + 1) = v48;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v49 = VRTraceErrorLogLevelToCSTR();
          v50 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v51 = IPPORTToStringWithSize(v132, v46, 0x36uLL);
            v52 = *(v31 + 30);
            LODWORD(v131[0]) = v114;
            *(v131 + 4) = v49;
            WORD2(v131[1]) = 2080;
            *(&v131[1] + 6) = "SendCollectionRequest";
            HIWORD(v131[2]) = 1024;
            LODWORD(v131[3]) = 460;
            WORD2(v131[3]) = 2080;
            *(&v131[3] + 6) = v51;
            HIWORD(v131[4]) = 1024;
            LODWORD(v131[5]) = v52 << 16 == -1442971648;
            WORD2(v131[5]) = 1024;
            *(&v131[5] + 6) = v122;
            _os_log_impl(&dword_23D497000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d interface list: local (%s) - self_assigned = %d, useRelay = %d\n", v131, 0x32u);
          }
        }

        if (!v119)
        {
          break;
        }

        v35 = v125;
        if (*(v31 + 228) != 8)
        {
          v53 = 1;
LABEL_79:
          *&v35[4 * v32] = v53;
        }

LABEL_80:
        ++v32;
LABEL_81:
        v31 = *(v31 + 240);
        if (!v31)
        {
          LODWORD(v114) = v120 == 0;
          v116 = v118 == 0;
          v121 = !v121;
          a1 = v111;
          goto LABEL_88;
        }
      }

      v35 = v125;
      if (!v122 || (*(v31 + 228) & 0xFFFFFFFE) == 8)
      {
        goto LABEL_80;
      }

      v53 = 2;
      goto LABEL_79;
    }

    LODWORD(v114) = 1;
    v121 = 1;
    v35 = v125;
LABEL_88:
    pthread_mutex_unlock((a1 + 96));
    v58 = v117;
    if (v122 == 2)
    {
      pthread_rwlock_rdlock((a1 + 240));
      v59 = *(a1 + 440);
      if (v59)
      {
        v60 = -1;
        v61 = -1;
        do
        {
          if (*v59 == a3)
          {
            if (*(v59 + 296))
            {
              v60 = ((*(v59 + 28) >> 1) & 2 | (*(v59 + 68) >> 2) & 1) ^ 3;
            }

            else
            {
              v61 = ((*(v59 + 28) >> 1) & 2 | (*(v59 + 68) >> 2) & 1) ^ 3;
            }
          }

          v59 = *(v59 + 304);
        }

        while (v59);
      }

      else
      {
        v61 = -1;
        v60 = -1;
      }

      pthread_rwlock_unlock((a1 + 240));
      v63 = v60 == -1;
      v64 = v61 >= 0;
      v65 = !v63 || !v64;
      if (v63 && v64)
      {
        v66 = -1;
      }

      else
      {
        v66 = v61;
      }

      v119 = v66;
      if (v65)
      {
        v62 = v60;
      }

      else
      {
        v62 = v61;
      }
    }

    else
    {
      v62 = -1;
      v119 = -1;
    }

    v120 = v62;
    if (v24 >= 1)
    {
      v67 = 0;
      v68 = v24;
      v70 = v120 == 2 && v119 >= 0;
      v122 = v70;
      *&v57 = 136316162;
      v118 = v57;
      *&v57 = 136316674;
      v111 = v57;
      *&v57 = 136316418;
      v113 = v57;
      do
      {
        v71 = *&v35[4 * v67];
        if (v71 != 2)
        {
          if (v71 != 1)
          {
            goto LABEL_166;
          }

          v127 = 1472;
          v72 = &v126[40 * v67];
          if ((MakeSNATMAPRequest(*v124, v72, v134, &v127) & 0x80000000) != 0)
          {
            goto LABEL_166;
          }

          v73 = a1;
          v74 = (*(a1 + 16))(*(a1 + 8), 0, v134, v127, v72, &v138, 0, 0);
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          if (v74 < 0)
          {
            if (ErrorLogLevelForModule >= 3)
            {
              v92 = VRTraceErrorLogLevelToCSTR();
              v93 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                v109 = IPPORTToStringWithSize(v132, v72, 0x36uLL);
                LODWORD(v131[0]) = v113;
                *(v131 + 4) = v92;
                WORD2(v131[1]) = 2080;
                *(&v131[1] + 6) = "SendCollectionRequest";
                HIWORD(v131[2]) = 1024;
                LODWORD(v131[3]) = 509;
                WORD2(v131[3]) = 1024;
                *(&v131[3] + 6) = 509;
                WORD1(v131[4]) = 2080;
                *(&v131[4] + 4) = v109;
                WORD2(v131[5]) = 1024;
                *(&v131[5] + 6) = v74;
                _os_log_error_impl(&dword_23D497000, v93, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: HandoverReport: failed to send SNATMAP request for [%s], error(%08X). Save message for retry", v131, 0x32u);
              }
            }
          }

          else if (ErrorLogLevelForModule >= 6)
          {
            v76 = VRTraceErrorLogLevelToCSTR();
            v77 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v78 = IPPORTToStringWithSize(v132, v72, 0x36uLL);
              v79 = "YES";
              if ((*v72 & 4) == 0)
              {
                v79 = "NO";
              }

              LODWORD(v131[0]) = v118;
              *(v131 + 4) = v76;
              WORD2(v131[1]) = 2080;
              *(&v131[1] + 6) = "SendCollectionRequest";
              HIWORD(v131[2]) = 1024;
              LODWORD(v131[3]) = 512;
              WORD2(v131[3]) = 2080;
              *(&v131[3] + 6) = v78;
              HIWORD(v131[4]) = 2080;
              v131[5] = v79;
              _os_log_impl(&dword_23D497000, v77, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sent SNATMAP request for [%s], cellular [%s].", v131, 0x30u);
            }
          }

          v94 = v127;
          if (v127 > 0x5C0)
          {
            goto LABEL_144;
          }

          v95 = malloc_type_calloc(1uLL, 0x638uLL, 0x102004070FB87F4uLL);
          v35 = v125;
          if (v95)
          {
            v96 = v95;
            *v95 = *v72 & 4;
            v95[2] = 1;
            *(v95 + 6) = 0;
            *(v95 + 370) = 1;
            *(v95 + 373) = v94;
            __memcpy_chk();
            v97 = *v72;
            v98 = *(v72 + 1);
            *(v96 + 1528) = *(v72 + 4);
            *(v96 + 1496) = v97;
            *(v96 + 1512) = v98;
            *(v96 + 1536) = v138;
            *(v96 + 1552) = v139;
            *(v96 + 1568) = v140;
            v99 = *v124;
            if (*v124)
            {
              do
              {
                v100 = v99;
                v99 = *(v99 + 1584);
              }

              while (v99);
              *(v100 + 1584) = v96;
            }

            else
            {
              *v124 = v96;
            }
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v103 = VRTraceErrorLogLevelToCSTR();
            v104 = *MEMORY[0x277CE5818];
            a1 = v73;
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v131[0]) = v118;
              *(v131 + 4) = v103;
              WORD2(v131[1]) = 2080;
              *(&v131[1] + 6) = "SaveSMRequest";
              HIWORD(v131[2]) = 1024;
              LODWORD(v131[3]) = 288;
              WORD2(v131[3]) = 1024;
              *(&v131[3] + 6) = 288;
              WORD1(v131[4]) = 1024;
              HIDWORD(v131[4]) = 1592;
              _os_log_error_impl(&dword_23D497000, v104, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: calloc(%d) failed", v131, 0x28u);
            }

            goto LABEL_166;
          }

          a1 = v73;
          goto LABEL_166;
        }

        memset(v131, 170, sizeof(v131));
        v80 = v123;
        if ((v122 & 1) != 0 || (v120 + 1) <= 2)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v81 = VRTraceErrorLogLevelToCSTR();
            v82 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *v128 = v118;
              *&v128[4] = v81;
              *&v128[12] = 2080;
              *&v128[14] = "SendCollectionRequest";
              *&v128[22] = 1024;
              *&v128[24] = 532;
              *&v128[28] = 1024;
              *&v128[30] = v120;
              *&v128[34] = 1024;
              *&v128[36] = v119;
              _os_log_impl(&dword_23D497000, v82, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: prefer WIFI %d, %d", v128, 0x28u);
            }
          }

          if (!v121)
          {
            if ((v126[40 * v67] & 4) != 0)
            {
              goto LABEL_166;
            }

            goto LABEL_131;
          }
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v101 = VRTraceErrorLogLevelToCSTR();
            v102 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *v128 = v118;
              *&v128[4] = v101;
              *&v128[12] = 2080;
              *&v128[14] = "SendCollectionRequest";
              *&v128[22] = 1024;
              *&v128[24] = 543;
              *&v128[28] = 1024;
              *&v128[30] = v120;
              *&v128[34] = 1024;
              *&v128[36] = v119;
              _os_log_impl(&dword_23D497000, v102, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: prefer Cell %d, %d", v128, 0x28u);
            }
          }

          if ((v114 & 1) == 0)
          {
            if ((v126[40 * v67] & 4) == 0)
            {
              goto LABEL_166;
            }

LABEL_131:
            if (!*&v80[4 * v67])
            {
              goto LABEL_166;
            }

            goto LABEL_132;
          }
        }

        if (!v116)
        {
          goto LABEL_131;
        }

LABEL_132:
        v83 = 1;
        if ((MakeAllocateRequest(v131, 1, 60, &v135, v115, v58) & 0x80000000) != 0)
        {
          goto LABEL_166;
        }

        v127 = 1472;
        v85 = STUNEncodeMessage(v131, v134, &v127, v58, v84);
        FreeSTUNMessage(v131);
        if (v85 < 0)
        {
          goto LABEL_166;
        }

        v86 = &v126[40 * v67];
        v87 = (*(a1 + 16))(*(a1 + 8), 0, v134, v127, v86, &v135, 0, 0);
        if (v87 < 0)
        {
          v105 = v87;
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_162;
          }

          v73 = a1;
          v106 = VRTraceErrorLogLevelToCSTR();
          v107 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            v108 = IPPORTToStringWithSize(v132, v86, 0x36uLL);
            *v128 = v111;
            *&v128[4] = v106;
            *&v128[12] = 2080;
            *&v128[14] = "SendCollectionRequest";
            *&v128[22] = 1024;
            *&v128[24] = 574;
            *&v128[28] = 1024;
            *&v128[30] = 574;
            *&v128[34] = 2080;
            *&v128[36] = v108;
            *&v128[44] = 2080;
            *&v128[46] = v115;
            v129 = 1024;
            v130 = v105;
            _os_log_error_impl(&dword_23D497000, v107, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: failed to send ALLOCATE_REQUEST for [%s] username [%s] (%08X)\n", v128, 0x3Cu);
          }

LABEL_144:
          a1 = v73;
          v35 = v125;
          goto LABEL_166;
        }

        v88 = SaveSTUNRequest(v124, v134, v127, v86, &v135, 1);
        v35 = v125;
        if ((v88 & 0x80000000) == 0)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            break;
          }

          v89 = VRTraceErrorLogLevelToCSTR();
          v90 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v91 = IPPORTToStringWithSize(v132, v86, 0x36uLL);
            *v128 = v118;
            *&v128[4] = v89;
            *&v128[12] = 2080;
            *&v128[14] = "SendCollectionRequest";
            *&v128[22] = 1024;
            *&v128[24] = 585;
            *&v128[28] = 2080;
            *&v128[30] = v91;
            *&v128[38] = 2080;
            *&v128[40] = v115;
            _os_log_impl(&dword_23D497000, v90, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sent ALLOCATE_REQUEST for [%s] username [%s]\n", v128, 0x30u);
          }

          v83 = 0;
LABEL_162:
          v35 = v125;
          if (!v83)
          {
            break;
          }
        }

LABEL_166:
        ++v67;
      }

      while (v67 < v68);
    }

    free(v126);
    return 0;
  }

  v54 = 2148859907;
  pthread_mutex_unlock((a1 + 96));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v55 = VRTraceErrorLogLevelToCSTR();
    v56 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v131[0]) = 136315650;
      *(v131 + 4) = v55;
      WORD2(v131[1]) = 2080;
      *(&v131[1] + 6) = "SendCollectionRequest";
      HIWORD(v131[2]) = 1024;
      LODWORD(v131[3]) = 413;
      _os_log_impl(&dword_23D497000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No memory to allocate mbLocal, return", v131, 0x1Cu);
    }
  }

  return v54;
}

uint64_t ReXmitCollectionRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t, void, uint64_t, uint64_t, void, void))
{
  v53 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = a1;
    *&v52[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v52 = v8;
    v9 = &unk_23D4C9CFB;
    v51[0] = v8;
    v51[1] = v8;
    v10 = MEMORY[0x277CE5818];
    v49[0] = v8;
    v49[1] = v8;
    v50[0] = v8;
    *(v50 + 14) = 0xAAAAAAAAAAAAAAAALL;
    alloc = *MEMORY[0x277CBECE8];
    do
    {
      if (!*(v5 + 6) && *(v5 + 1480))
      {
        v11 = v4(v7, 0, v5 + 7, *(v5 + 1492), v5 + 1496, v5 + 1536, 0, 0);
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (v11 < 0)
        {
          if (ErrorLogLevelForModule >= 3)
          {
            v26 = VRTraceErrorLogLevelToCSTR();
            v27 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
            {
              v28 = *(v5 + 4);
              v29 = "SNATMAP_REQUEST";
              if (v28 == 2)
              {
                v29 = "STUN_REQUEST";
              }

              v33 = v29;
              v34 = *(v5 + 6);
              v32 = IPPORTToStringWithSize(v51, v5 + 1496, 0x36uLL);
              v30 = IPPORTToStringWithSize(v49, v5 + 1536, 0x36uLL);
              *buf = 136317442;
              *&buf[4] = v26;
              *&buf[12] = 2080;
              *&buf[14] = "ReXmitCollectionRequest";
              v39 = 1024;
              v40 = 629;
              v41 = 1024;
              *v42 = 629;
              *&v42[4] = 2080;
              *&v42[6] = v33;
              v43 = 1024;
              v44 = v28;
              v45 = 1024;
              *v46 = v34;
              *&v46[4] = 2080;
              *&v46[6] = v32;
              *&v46[14] = 2080;
              *&v46[16] = v30;
              v47 = 1024;
              v48 = v11;
              _os_log_error_impl(&dword_23D497000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: \tReXmit [%s] (%u:%d) from [%s] to [%s] failed (%08X)\n", buf, 0x52u);
            }
          }
        }

        else
        {
          if (ErrorLogLevelForModule >= 7)
          {
            v13 = VRTraceErrorLogLevelToCSTR();
            v14 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v9;
              v16 = a2;
              v17 = *(v5 + 4);
              if (v17 == 2)
              {
                v18 = "STUN_REQUEST";
              }

              else
              {
                v18 = "SNATMAP_REQUEST";
              }

              v19 = v10;
              v20 = *(v5 + 6);
              v21 = IPPORTToStringWithSize(v51, v5 + 1496, 0x36uLL);
              v22 = IPPORTToStringWithSize(v49, v5 + 1536, 0x36uLL);
              *buf = 136316930;
              *&buf[4] = v13;
              *&buf[12] = 2080;
              *&buf[14] = "ReXmitCollectionRequest";
              v39 = 1024;
              v40 = 639;
              v41 = 2080;
              *v42 = v18;
              *&v42[8] = 1024;
              *&v42[10] = v17;
              a2 = v16;
              v9 = v15;
              v4 = a4;
              v7 = a1;
              v43 = 1024;
              v44 = v20;
              v10 = v19;
              v45 = 2080;
              *v46 = v21;
              *&v46[8] = 2080;
              *&v46[10] = v22;
              _os_log_impl(&dword_23D497000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tReXmit [%s] (%u:%d) for [%s] to [%s]\n", buf, 0x46u);
            }
          }

          v23 = *(v5 + 1484);
          *(v5 + 1484) = v23 + 1;
          if (v23 >= 5 && (*(v5 + 1488) & 1) == 0)
          {
            *buf = 0;
            *&buf[8] = 0;
            IPToString(buf, v5 + 1536);
            v24 = CFStringCreateWithCString(alloc, buf, 0x8000100u);
            Mutable = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeyEndpointIP", v24);
            reportingSymptom();
            *(v5 + 1488) = 1;
            CFRelease(v24);
            CFRelease(Mutable);
          }
        }
      }

      v5 = *(v5 + 1584);
    }

    while (v5);
  }

  return 0;
}

uint64_t SendRelayChannelBindRequest(uint64_t a1, uint64_t (*a2)(uint64_t, void, _BYTE *, void, uint64_t, uint64_t, void, void), uint64_t a3, uint64_t a4, __int128 *a5, uint64_t *a6, const void *a7)
{
  v42 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  memset(v40, 170, sizeof(v40));
  v25 = 1472;
  ChannelBindRequest = MakeChannelBindRequest(__b, *(a1 + 234), a5, a7);
  if ((ChannelBindRequest & 0x80000000) != 0)
  {
    v18 = ChannelBindRequest;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        SendRelayChannelBindRequest_cold_4();
      }
    }
  }

  else
  {
    v16 = STUNEncodeMessage(__b, v40, &v25, a7, v15);
    if ((v16 & 0x80000000) != 0)
    {
      v18 = v16;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          SendRelayChannelBindRequest_cold_3();
        }
      }
    }

    else
    {
      v17 = a2(a3, *(a1 + 148), v40, v25, a4, a1 + 236, 0, 0);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = v17;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            SendRelayChannelBindRequest_cold_2();
          }
        }
      }

      else
      {
        v18 = SaveSTUNRequest(a6, v40, v25, a4, a5, 0);
        if ((v18 & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              SendRelayChannelBindRequest_cold_1();
            }
          }
        }

        else
        {
          *&v39[14] = 0xAAAAAAAAAAAAAAAALL;
          *&v19 = 0xAAAAAAAAAAAAAAAALL;
          *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v38[1] = v19;
          *v39 = v19;
          v38[0] = v19;
          v36[0] = v19;
          v36[1] = v19;
          v37[0] = v19;
          *(v37 + 14) = 0xAAAAAAAAAAAAAAAALL;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v20 = VRTraceErrorLogLevelToCSTR();
            v21 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v22 = IPPORTToStringWithSize(v38, a5, 0x36uLL);
              v23 = IPPORTToStringWithSize(v36, a1 + 236, 0x36uLL);
              *buf = 136316162;
              v27 = v20;
              v28 = 2080;
              v29 = "SendRelayChannelBindRequest";
              v30 = 1024;
              v31 = 696;
              v32 = 2080;
              v33 = v22;
              v34 = 2080;
              v35 = v23;
              _os_log_impl(&dword_23D497000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** CHANNELBIND_REQUEST [%s] to [%s]", buf, 0x30u);
            }
          }
        }
      }
    }
  }

  FreeSTUNMessage(__b);
  return v18;
}

uint64_t MakeBindingRequest(__int128 *a1, int a2, uint64_t a3, int a4, uint64_t a5, int *a6, _OWORD *a7, int a8, int a9, int a10, uint64_t a11, int a12, __int16 a13, CFDataRef theData)
{
  v68 = *MEMORY[0x277D85DE8];
  *a3 = 0x10000;
  *(a3 + 6) = 1;
  if (*a6 >= 1 && *a7 == 554869826)
  {
    *(a3 + 8) = *a7;
  }

  else
  {
    *(a3 + 8) = 554869826;
    v22 = (a3 + 8);
    STUNGetTransID(a3 + 12, 1u, 0);
    if (*a6 >= 1)
    {
      *a7 = *v22;
    }
  }

  v23 = malloc_type_malloc(0x14uLL, 0x100004077774924uLL);
  if (v23)
  {
    v25 = *a1;
    v23[4] = *(a1 + 4);
    *v23 = v25;
    v26 = *(a3 + 28);
    v27 = a3 + 32;
    v28 = a3 + 32 + 56 * v26;
    *v28 = 1310726;
    *(v28 + 8) = 20;
    *(v28 + 16) = v23;
    v29 = (a3 + 32 + 56 * (v26 + 1));
    *v29 = 294913;
    v29[2] = a2;
    v30 = v26 + 2;
    v31 = *(a3 + 24);
    if (v31 >= 0x6A)
    {
      v32 = (v27 + 56 * v30);
      *v32 = 294915;
      v32[2] = v31;
      v35 = micro(v23, v24);
      v36 = MicroToMiddle32_zero_wide;
      if (!MicroToMiddle32_zero_wide)
      {
        memset(v63, 170, 32);
        v37 = micro(v33, v34);
        v38 = gettimeofday(&v63[16], 0);
        v40 = micro(v38, v39);
        v41 = gettimeofday(v63, 0);
        if (micro(v41, v42) - v40 < v40 - v37)
        {
          *&v63[16] = *v63;
          v37 = v40;
        }

        v36 = vcvtd_n_u64_f64(*&v63[16] + *&v63[24] * 0.000001 + 2208988800.0 - v37, 0x20uLL);
        MicroToMiddle32_zero_wide = v36;
      }

      v43 = (v27 + 56 * (v26 + 3));
      *v43 = 294916;
      v43[2] = (v36 + v35 * 4294967300.0) >> 16;
      v30 = v26 + 4;
    }

    if (a4 == 2)
    {
      v46 = v27 + 56 * v30;
      *v46 = 557098;
      *(v46 + 8) = a5;
      v47 = *a6;
      if (*a6 < 1)
      {
        ++v30;
      }

      else
      {
        *(v27 + 56 * (v30 + 1)) = 37;
        v48 = v27 + 56 * v30;
        *(v48 + 112) = 294920;
        *(v48 + 120) = v47 | (a10 << 8) | (a6[2] << 9) | (a6[3] << 10) | (a6[4] << 11) | (a6[1] << 12);
        v30 += 3;
      }
    }

    else if (a4 == 1)
    {
      v44 = v27 + 56 * v30;
      *v44 = 557097;
      *(v44 + 8) = a5;
      ++v30;
    }

    if (a8)
    {
      *(v27 + 56 * v30++) = 32774;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v49 = VRTraceErrorLogLevelToCSTR();
        v50 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *&v63[16] = 136315650;
          *&v63[20] = v49;
          *&v63[28] = 2080;
          *&v63[30] = "MakeBindingRequest";
          v64 = 1024;
          v65 = 782;
          _os_log_impl(&dword_23D497000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Local cellular interface supports QoS!", &v63[16], 0x1Cu);
        }
      }
    }

    if (a9)
    {
      v51 = (v27 + 56 * v30);
      *v51 = 294919;
      v51[2] = a9;
      ++v30;
    }

    if (a11 && a12 >= 1)
    {
      *&v63[16] = 0;
      *v63 = 0;
      if ((ICECompressCandidates(&v63[16], v63, 148 * a12, a11, a12) & 0x80000000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            MakeBindingRequest_cold_1();
          }
        }

        goto LABEL_41;
      }

      v52 = *v63;
      v53 = (2 - v63[0]) & 3;
      if (((*v63 + 2) & 3) == 0)
      {
        v53 = 0;
      }

      v54 = v53 + *v63 + 2;
      v55 = v27 + 56 * v30;
      *v55 = -32759;
      *(v55 + 2) = v54;
      *(v55 + 8) = a13;
      *(v55 + 16) = v52;
      *(v55 + 24) = *&v63[16];
      ++v30;
    }

    if (theData)
    {
      Length = CFDataGetLength(theData);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v57 = VRTraceErrorLogLevelToCSTR();
        v58 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *&v63[16] = 136315906;
          *&v63[20] = v57;
          *&v63[28] = 2080;
          *&v63[30] = "MakeBindingRequest";
          v64 = 1024;
          v65 = 821;
          v66 = 2048;
          v67 = Length;
          _os_log_impl(&dword_23D497000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending SKEMessage of length %ld in binding request", &v63[16], 0x26u);
        }
      }

      v59 = (-Length & 3) + Length;
      v60 = v27 + 56 * v30;
      *v60 = -32758;
      if ((Length & 3) == 0)
      {
        LOWORD(v59) = Length;
      }

      *(v60 + 2) = v59;
      *(v60 + 8) = Length;
      v61 = malloc_type_malloc(Length, 0x77AD9519uLL);
      *(v60 + 16) = v61;
      v69.location = 0;
      v69.length = Length;
      CFDataGetBytes(theData, v69, v61);
      ++v30;
    }

LABEL_41:
    v45 = 0;
    *(a3 + 28) = v30;
    return v45;
  }

  v45 = 2148859907;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      MakeBindingRequest_cold_2();
    }
  }

  return v45;
}

void DelayedICEUpdateAfterNominationResponse(int a1, uint64_t a2, const void **a3, int a4, int a5)
{
  v21[2] = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "DelayedICEUpdateAfterNominationResponse";
        *&buf[22] = 1024;
        LODWORD(v21[0]) = 1033;
        WORD2(v21[0]) = 1024;
        *(v21 + 6) = 1033;
        _os_log_impl(&dword_23D497000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Adding delay to ICE update after nomination response", buf, 0x22u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v21[0] = malloc_type_calloc(a5 + 1, 0x190uLL, 0x10200402E010713uLL);
    v13 = *(*&buf[8] + 24);
    if (v13)
    {
      memcpy(v13, *a3, 400 * a5);
      v14 = dispatch_time(0, 1000000000 * a1);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __DelayedICEUpdateAfterNominationResponse_block_invoke;
      block[3] = &unk_278BD3E58;
      v19 = a4;
      block[4] = buf;
      block[5] = a2;
      dispatch_after(v14, MEMORY[0x277D85CD0], block);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        DelayedICEUpdateAfterNominationResponse_cold_1();
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = "DelayedICEUpdateAfterNominationResponse";
        *&buf[22] = 1024;
        LODWORD(v21[0]) = 1024;
        WORD2(v21[0]) = 1024;
        *(v21 + 6) = 1024;
        _os_log_impl(&dword_23D497000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: DO NOT add delay to update ice update after ICE nomination response", buf, 0x22u);
      }
    }

    v17 = (*a3 + 400 * a4);
    if (v17[74] == 6 && *(a2 + 840) == 1 && v17[89])
    {
      UpdateICEState(v17 + 74, 6);
    }
  }
}

void __DelayedICEUpdateAfterNominationResponse_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 32) + 8) + 24) + 400 * *(a1 + 48);
  if (*(v2 + 296) == 6 && *(*(a1 + 40) + 840) == 1 && *(v2 + 356))
  {
    UpdateICEState((v2 + 296), 6);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "DelayedICEUpdateAfterNominationResponse_block_invoke";
      v9 = 1024;
      v10 = 1049;
      v11 = 1024;
      v12 = 1049;
      _os_log_impl(&dword_23D497000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Delayed ICE update after nomination process complete", &v5, 0x22u);
    }
  }

  free(*(*(*(a1 + 32) + 8) + 24));
}

uint64_t ProcessBindingRequest(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v264 = *MEMORY[0x277D85DE8];
  v259 = -1431655766;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v258 = v11;
  v257 = v11;
  v256 = v11;
  v255 = v11;
  v254 = v11;
  *&v253[16] = v11;
  *v253 = v11;
  *&v252[16] = v11;
  *v252 = v11;
  __dst[24] = v11;
  __dst[23] = v11;
  __dst[22] = v11;
  __dst[21] = v11;
  __dst[20] = v11;
  __dst[19] = v11;
  __dst[18] = v11;
  __dst[17] = v11;
  __dst[16] = v11;
  __dst[15] = v11;
  __dst[14] = v11;
  __dst[13] = v11;
  __dst[12] = v11;
  __dst[11] = v11;
  __dst[10] = v11;
  __dst[9] = v11;
  __dst[8] = v11;
  __dst[7] = v11;
  __dst[6] = v11;
  __dst[5] = v11;
  __dst[4] = v11;
  __dst[3] = v11;
  __dst[2] = v11;
  __dst[1] = v11;
  __dst[0] = v11;
  v250 = 0xAAAAAAAAAAAAAAAALL;
  v249 = v11;
  v248 = v11;
  *&v247[16] = 0xAAAAAAAAAAAAAAAALL;
  *v247 = v11;
  v246 = v11;
  v245 = 0xAAAAAAAAAAAAAAAALL;
  v244 = v11;
  v243 = v11;
  memset(__b, 170, sizeof(__b));
  *(v241 + 14) = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v240[1] = v12;
  v241[0] = v12;
  v240[0] = v12;
  *(v239 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v238[1] = v12;
  v239[0] = v12;
  v237[3] = v12;
  v238[0] = v12;
  v237[1] = v12;
  v237[2] = v12;
  v237[0] = v12;
  memset(v236, 170, sizeof(v236));
  memset(v235, 170, 25);
  v223 = 0;
  v224 = -1431655766;
  cf = 0;
  v13 = *(v9 + 160);
  bzero(v262, 0x480uLL);
  bzero(v260, 0x480uLL);
  STUNAttr = GetSTUNAttr(v5, 6);
  if (!STUNAttr)
  {
    BindingResponse = 2148859938;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessBindingRequest_cold_20();
      }
    }

    goto LABEL_283;
  }

  v15 = *(STUNAttr + 2);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      TransID = MakeTransID(v235, (v5 + 12));
      v19 = IPPORTToStringWithSize(v240, v3, 0x36uLL);
      v20 = v3;
      v21 = v13;
      v22 = v15;
      v23 = v10;
      v24 = v19;
      v25 = ICEUNToString(v237, v22);
      *buf = 136316418;
      v226 = v16;
      v227 = 2080;
      v228 = "ProcessBindingRequest";
      v229 = 1024;
      v230 = 1104;
      v231 = 2080;
      *v232 = TransID;
      *&v232[8] = 2080;
      v233 = v24;
      v10 = v23;
      v15 = v22;
      v13 = v21;
      v3 = v20;
      LOWORD(v234[0]) = 2080;
      *(v234 + 2) = v25;
      _os_log_impl(&dword_23D497000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** BINDING_REQUEST [%s] from [%s] USERNAME [%s]", buf, 0x3Au);
    }
  }

  v26 = GetSTUNAttr(v5, 32769);
  if (!v26)
  {
    BindingResponse = 2148859938;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessBindingRequest_cold_19();
      }
    }

    goto LABEL_283;
  }

  v217 = *(v26 + 8);
  v27 = GetSTUNAttr(v5, 32771);
  if (v27)
  {
    v28 = *(v27 + 2);
  }

  else
  {
    v28 = 105;
  }

  *(v5 + 24) = v28;
  *(v9 + 888) = v28;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v226 = v30;
      v227 = 2080;
      v228 = "ProcessBindingRequest";
      v229 = 1024;
      v230 = 1121;
      v231 = 1024;
      *v232 = v28;
      _os_log_impl(&dword_23D497000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote ICE Version: %d", buf, 0x22u);
    }
  }

  v32 = GetSTUNAttr(v5, 32809);
  v33 = GetSTUNAttr(v5, 32810);
  if (v32 | v33)
  {
    if (v32)
    {
      if (*(v9 + 840) == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessBindingRequest_cold_1();
          }
        }

        v37 = *(v9 + 848);
        if (v37 >= *(v32 + 1))
        {
          *(v9 + 840) = 2;
          if (v37 == *(v32 + 1))
          {
            *(v9 + 848) = arc4random() & 0x7FFFFFFF;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v38 = VRTraceErrorLogLevelToCSTR();
            v35 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v226 = v38;
              v227 = 2080;
              v228 = "ProcessBindingRequest";
              v229 = 1024;
              v230 = 1140;
              v36 = " [%s] %s:%d Resolved role conflict, new role: ICE_ROLE_CONTROLLING.";
              goto LABEL_23;
            }
          }
        }
      }
    }

    else
    {
      v39 = v33;
      if (v33 && *(v9 + 840) == 2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessBindingRequest_cold_2();
          }
        }

        v40 = *(v9 + 848);
        if (v40 <= *(v39 + 1))
        {
          *(v9 + 840) = 1;
          if (v40 == *(v39 + 1))
          {
            *(v9 + 848) = arc4random() & 0x7FFFFFFF;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v41 = VRTraceErrorLogLevelToCSTR();
            v35 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v226 = v41;
              v227 = 2080;
              v228 = "ProcessBindingRequest";
              v229 = 1024;
              v230 = 1156;
              v36 = " [%s] %s:%d Resolved role conflict, new role: ICE_ROLE_CONTROLLED.";
              goto LABEL_23;
            }
          }
        }
      }
    }
  }

  else if (*(v9 + 840))
  {
    *(v9 + 840) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v226 = v34;
        v227 = 2080;
        v228 = "ProcessBindingRequest";
        v229 = 1024;
        v230 = 1129;
        v36 = " [%s] %s:%d REMOTE SIDE HAS NO ICE_ROLE SET, FALL BACK TO ICE_ROLE_UNKNOWN!";
LABEL_23:
        _os_log_impl(&dword_23D497000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0x1Cu);
      }
    }
  }

  if (GetSTUNAttr(v5, 32774))
  {
    *(v9 + 876) = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v226 = v42;
        v227 = 2080;
        v228 = "ProcessBindingRequest";
        v229 = 1024;
        v230 = 1165;
        _os_log_impl(&dword_23D497000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove cellular interface supports QoS.", buf, 0x1Cu);
      }
    }
  }

  v44 = GetSTUNAttr(v5, 32775);
  if (v44)
  {
    *(v9 + 884) = *(v44 + 2);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v45 = VRTraceErrorLogLevelToCSTR();
      v46 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v47 = *(v9 + 884);
        *buf = 136315906;
        v226 = v45;
        v227 = 2080;
        v228 = "ProcessBindingRequest";
        v229 = 1024;
        v230 = 1173;
        v231 = 1024;
        *v232 = v47;
        _os_log_impl(&dword_23D497000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote cellular technology:[%d]", buf, 0x22u);
      }
    }
  }

  MatchCP = FindMatchCP(*(v9 + 184), *(v9 + 200), v15, 0);
  if (MatchCP == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v73 = VRTraceErrorLogLevelToCSTR();
      v74 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v226 = v73;
        v227 = 2080;
        v228 = "ProcessBindingRequest";
        v229 = 1024;
        v230 = 1178;
        v231 = 1024;
        *v232 = 1178;
        _os_log_impl(&dword_23D497000, v74, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Candidate pair not found.", buf, 0x22u);
      }
    }

    goto LABEL_282;
  }

  v49 = MatchCP;
  v218 = MatchCP;
  v50 = *(v9 + 184) + 400 * MatchCP;
  v51 = *v3;
  v52 = *(v3 + 16);
  *(v50 + 344) = *(v3 + 32);
  *(v50 + 312) = v51;
  *(v50 + 328) = v52;
  v53 = *(v9 + 184) + 400 * MatchCP;
  memcpy(__dst, v53, sizeof(__dst));
  v54 = *(v53 + 188);
  v246 = *(v53 + 172);
  *v247 = v54;
  *&v247[16] = *(v53 + 204);
  v55 = *(v53 + 64);
  v56 = *(v53 + 80);
  v250 = *(v53 + 96);
  v249 = v56;
  v248 = v55;
  if (*(v9 + 840) == 1)
  {
    v57 = GetSTUNAttr(v5, 32777);
    if (v57)
    {
      v58 = v57;
      v59 = v3;
      v60 = v13;
      v61 = v15;
      v62 = v10;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v213 = VRTraceErrorLogLevelToCSTR();
        v63 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v64 = *(v58 + 4);
          *buf = 136315906;
          v226 = v213;
          v227 = 2080;
          v228 = "ProcessBindingRequest";
          v229 = 1024;
          v230 = 1190;
          v231 = 1024;
          *v232 = v64;
          _os_log_impl(&dword_23D497000, v63, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Binding request has remote connection blob (%d).", buf, 0x22u);
        }
      }

      ICEProcessRemoteInterfaceChange(*v9, *(v9 + 148), *(v58 + 3), *(v58 + 4), v58[4], 0);
      v10 = v62;
      v15 = v61;
      v13 = v60;
      v3 = v59;
    }
  }

  v65 = GetSTUNAttr(v5, 37);
  v66 = *(v9 + 840);
  if (v65)
  {
    if (v66 != 1)
    {
      goto LABEL_165;
    }

    LODWORD(v219) = 0;
    v220 = -1431655766;
    v221 = 0;
    v223 = 1;
    v67 = GetSTUNAttr(v5, 32776);
    v68 = *(v9 + 888);
    if (v67)
    {
      v69 = *(v67 + 2);
      v70 = v69;
      v71 = (v69 >> 8) & 1;
      LODWORD(v219) = (v69 >> 10) & 1;
      if (v68 >= 0x3F2 && !*(v10 + 88))
      {
        v72 = (v69 >> 9) & 1;
        goto LABEL_86;
      }

      v72 = 1;
      LODWORD(v219) = 1;
    }

    else
    {
      v72 = 0;
      v71 = 0;
      v70 = 0;
    }

    if (v68 <= 0x3F1)
    {
      if (v68 != 109)
      {
        v214 = v71;
        goto LABEL_88;
      }

      if (*(v9 + 800) < v70)
      {
        v214 = v71;
        if (!*(v10 + 88))
        {
          v202 = v72;
          v205 = v70;
          v208 = v28;
          v75 = v10;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v76 = VRTraceErrorLogLevelToCSTR();
            v77 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v78 = *(v9 + 800);
              *buf = 136316674;
              v226 = v76;
              v227 = 2080;
              v228 = "ProcessBindingRequest";
              v229 = 1024;
              v230 = 1293;
              v231 = 1024;
              *v232 = v70;
              *&v232[4] = 1024;
              *&v232[6] = v78;
              LOWORD(v233) = 1024;
              *(&v233 + 2) = v49;
              HIWORD(v233) = 2080;
              v234[0] = "is";
              _os_log_impl(&dword_23D497000, v77, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Receive new NOMINATION [count:%d>%d] for candidate pair %d, it %s nominated.", buf, 0x38u);
            }
          }

          *(v9 + 800) = v70;
          v79 = *(v9 + 200);
          if (v79 < 1)
          {
            v10 = v75;
            v28 = v208;
LABEL_142:
            v85 = v202;
LABEL_143:
            v114 = (*(v9 + 184) + 400 * v218);
            v114[90] = v70;
            v114[89] = v223;
            v114[92] = v214;
            v114[94] = v85;
            v114[95] = v219;
LABEL_144:
            v66 = *(v9 + 840);
            goto LABEL_145;
          }

          v80 = 0;
          v81 = 400 * v79;
          v10 = v75;
          v28 = v208;
          while (1)
          {
            if (400 * v49 != v80)
            {
              v82 = *(v9 + 184) + v80;
              if (*(v82 + 356))
              {
                break;
              }
            }

            v80 += 400;
            if (v81 == v80)
            {
              goto LABEL_142;
            }
          }

          DemoteCandidatePair(v82, 2, 0, 0);
          RemoveConnectivityCheckResult(v10, *(v9 + 148), *(v9 + 184) + v80);
LABEL_141:
          v70 = v205;
          goto LABEL_142;
        }

        goto LABEL_88;
      }

      goto LABEL_92;
    }

LABEL_86:
    v83 = *(v9 + 184);
    if (*(v83 + 400 * v218 + 360) < v70)
    {
      v214 = v71;
      if (!*(v10 + 88))
      {
        v205 = v70;
        v88 = *(v9 + 192);
        if (v88 < 1)
        {
          v89 = 0;
        }

        else
        {
          LODWORD(v89) = 0;
          v90 = (*(v9 + 168) + 64);
          do
          {
            v91 = *v90;
            v90 += 148;
            if ((v91 & 4) != 0)
            {
              v92 = 2;
            }

            else
            {
              v92 = 1;
            }

            v89 = v92 | v89;
            --v88;
          }

          while (v88);
        }

        v93 = *(v9 + 196);
        if (v93 >= 1)
        {
          v94 = (*(v9 + 176) + 24);
          do
          {
            v95 = *v94;
            v94 += 148;
            if ((v95 & 4) != 0)
            {
              v96 = 8;
            }

            else
            {
              v96 = 4;
            }

            v89 = v96 | v89;
            --v93;
          }

          while (v93);
        }

        v97 = *(v10 + 72);
        if (v97)
        {
          v98 = v72;
          v97(*(v10 + 8), *(v9 + 148), v83 + 400 * v218, v89, &v223, &v221, &v220, &v219);
          v72 = v98;
          v99 = v221;
        }

        else
        {
          v99 = 0;
          v223 = 1;
          v220 = 2;
          v221 = 0;
          LODWORD(v219) = 1;
        }

        v203 = v10;
        v100 = *(v9 + 200);
        if (v100 < 1)
        {
          v104 = -1;
          v103 = -1;
        }

        else
        {
          v101 = 0;
          v102 = (*(v9 + 184) + 376);
          v103 = -1;
          v104 = -1;
          do
          {
            if (*(v102 - 5))
            {
              if (*v102)
              {
                v103 = v101;
              }

              else
              {
                v104 = v101;
              }
            }

            ++v101;
            v102 += 100;
          }

          while (v100 != v101);
        }

        v210 = v28;
        if (v220 == 3)
        {
          v72 = 2;
        }

        if ((v99 & 0xFFFFFFFE) == 2)
        {
          v105 = v72;
          v106 = *(v9 + 184) + 400 * v103;
          v107 = v99;
          DemoteCandidatePair(v106, 9, 1, *(v106 + 364));
          DemoteConnectivityCheckResult(v203, *(v9 + 148), *(v9 + 184) + 400 * v103);
          v99 = v107;
          v72 = v105;
        }

        v108 = v99 & 0xFFFFFFFD;
        v202 = v72;
        if (v72)
        {
          v109 = v219 == 0;
        }

        else
        {
          v109 = 1;
        }

        if (!v109)
        {
          RemoveNominatedCandidatePair(v203, v9, v103, 1);
        }

        v10 = v203;
        if (v108 == 1)
        {
          RemoveNominatedCandidatePair(v203, v9, v104, 0);
        }

        v28 = v210;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v110 = VRTraceErrorLogLevelToCSTR();
          v111 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v112 = *(*(v9 + 184) + 400 * v218 + 360);
            if (v223)
            {
              v113 = "is";
            }

            else
            {
              v113 = "is not";
            }

            *buf = 136316674;
            v226 = v110;
            v227 = 2080;
            v228 = "ProcessBindingRequest";
            v229 = 1024;
            v230 = 1288;
            v231 = 1024;
            v70 = v205;
            *v232 = v205;
            *&v232[4] = 1024;
            *&v232[6] = v112;
            LOWORD(v233) = 1024;
            *(&v233 + 2) = v49;
            HIWORD(v233) = 2080;
            v234[0] = v113;
            _os_log_impl(&dword_23D497000, v111, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Receive new NOMINATION [count:%d>%d] for candidate pair %d, it %s nominated.", buf, 0x38u);
            v10 = v203;
            goto LABEL_142;
          }

          v10 = v203;
        }

        goto LABEL_141;
      }

LABEL_88:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v209 = VRTraceErrorLogLevelToCSTR();
        v84 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v226 = v209;
          v227 = 2080;
          v228 = "ProcessBindingRequest";
          v229 = 1024;
          v230 = 1308;
          v231 = 1024;
          *v232 = v49;
          _os_log_impl(&dword_23D497000, v84, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Receive new NOMINATION for candidate pair %d, it is nominated.", buf, 0x22u);
        }
      }

      v85 = 1;
      LODWORD(v219) = 1;
      goto LABEL_143;
    }

LABEL_92:
    v206 = v70;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v86 = VRTraceErrorLogLevelToCSTR();
      v87 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v226 = v86;
        v227 = 2080;
        v228 = "ProcessBindingRequest";
        v229 = 1024;
        v230 = 1321;
        v231 = 1024;
        *v232 = v206;
        *&v232[4] = 1024;
        *&v232[6] = v49;
        _os_log_impl(&dword_23D497000, v87, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Receive old NOMINATION [count:%d] for candidate pair %d.", buf, 0x28u);
      }
    }

    goto LABEL_144;
  }

LABEL_145:
  if (v66 == 1 && v223 != 0)
  {
    pthread_mutex_lock((v9 + 16));
    if (*(v9 + 896))
    {
      v116 = GetSTUNAttr(v5, 32778);
      if (!v116)
      {
        goto LABEL_164;
      }

      v117 = v116;
      LODWORD(v219) = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v118 = VRTraceErrorLogLevelToCSTR();
        v119 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v120 = *(v117 + 2);
          *buf = 136315906;
          v226 = v118;
          v227 = 2080;
          v228 = "ProcessBindingRequest";
          v229 = 1024;
          v230 = 1333;
          v231 = 1024;
          *v232 = v120;
          _os_log_impl(&dword_23D497000, v119, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Binding request has SKEMessage of length %d", buf, 0x22u);
        }
      }

      v121 = CFDataCreateWithBytesNoCopy(0, *(v117 + 2), *(v117 + 2), *MEMORY[0x277CBED00]);
      if (SKEState_SetBlob())
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessBindingRequest_cold_3();
          }
        }
      }

      CFRelease(v121);
      dispatch_time(0, 5000000000);
      SKEState_CopyBlobSync();
      if (cf)
      {
        goto LABEL_164;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ProcessBindingRequest_cold_4();
        }
      }
    }

    else
    {
      if (!*(v9 + 904))
      {
LABEL_164:
        pthread_mutex_unlock((v9 + 16));
        goto LABEL_165;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v122 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ProcessBindingRequest_cold_5(v122);
        }
      }
    }

    pthread_mutex_unlock((v9 + 16));
LABEL_282:
    BindingResponse = 0;
    goto LABEL_283;
  }

LABEL_165:
  v123 = DWORD1(__dst[0]) == 5 && DWORD2(__dst[9]) == 5;
  v124 = v9 + 236;
  if (!v123)
  {
    v124 = v3;
  }

  v125 = *(v124 + 16);
  v243 = *v124;
  v244 = v125;
  v245 = *(v124 + 32);
  if ((v246 & 1) == (*v3 & 1))
  {
    if (v246)
    {
      if (*&v247[4] == *(v3 + 20) && *&v247[12] == *(v3 + 28))
      {
LABEL_170:
        v127 = *&v247[20] == *(v3 + 36) || v28 < 0x6A;
        if ((DWORD1(__dst[0]) != 5 || DWORD2(__dst[9]) != 5) && !v127)
        {
          goto LABEL_222;
        }

        goto LABEL_183;
      }
    }

    else if (*&v247[4] == *(v3 + 20))
    {
      goto LABEL_170;
    }
  }

  if (v28 > 0x69 && (DWORD1(__dst[0]) != 5 || DWORD2(__dst[9]) != 5))
  {
LABEL_222:
    v216 = v13;
    GetICECandidate(v252, 6, SHIDWORD(__dst[9]), v217, v3, SWORD4(__dst[10]), (&__dst[13] + 4), SHIDWORD(__dst[10]));
    v145 = *(v9 + 176);
    v146 = *(*(v9 + 184) + 400 * v218 + 372);
    v147 = *(v9 + 196);
    if (IsNewCandidate(v145, *(v9 + 196), v252))
    {
      v148 = malloc_type_realloc(v145, 148 * v147 + 148, 0x1000040C185D105uLL);
      *(v9 + 176) = v148;
      if (!v148)
      {
        BindingResponse = 2148859907;
        goto LABEL_283;
      }

      v212 = v15;
      v149 = v10;
      *&v252[12] = __dst[10];
      *&v252[16] = HIDWORD(__dst[0]);
      v150 = &v148[148 * *(v9 + 196)];
      v151 = v256;
      v152 = v257;
      v153 = v258;
      *(v150 + 36) = v259;
      *(v150 + 7) = v152;
      *(v150 + 8) = v153;
      *(v150 + 6) = v151;
      v154 = *v253;
      v155 = *&v253[16];
      v156 = v255;
      *(v150 + 4) = v254;
      *(v150 + 5) = v156;
      *(v150 + 2) = v154;
      *(v150 + 3) = v155;
      v157 = *&v252[16];
      *v150 = *v252;
      *(v150 + 1) = v157;
      ++*(v9 + 196);
      v146 = 1;
      *(*(v9 + 184) + 400 * v218 + 372) = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v158 = VRTraceErrorLogLevelToCSTR();
        v159 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v160 = v123;
          v161 = IPPORTToStringWithSize(v240, v3, 0x36uLL);
          v162 = CANIDToString(v236, v150 + 3);
          *buf = 136316162;
          v226 = v158;
          v227 = 2080;
          v228 = "ProcessBindingRequest";
          v229 = 1024;
          v230 = 1471;
          v231 = 2080;
          *v232 = v161;
          v123 = v160;
          *&v232[8] = 2080;
          v233 = v162;
          _os_log_impl(&dword_23D497000, v159, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tadd DERIVED-REMOTE candidate[%s] ID[%s]", buf, 0x30u);
        }
      }

      goto LABEL_240;
    }

    v212 = v15;
    v149 = v10;
    if (v147 < 1)
    {
LABEL_240:
      if (IsNewCandidatePair(*(v9 + 184), *(v9 + 200), __dst, v252))
      {
        v165 = v149;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v166 = VRTraceErrorLogLevelToCSTR();
          v167 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v168 = v123;
            v169 = IPPORTToStringWithSize(v238, &__dst[1] + 8, 0x36uLL);
            v170 = IPPORTToStringWithSize(v240, &v252[24], 0x36uLL);
            *buf = 136316162;
            v226 = v166;
            v227 = 2080;
            v228 = "ProcessBindingRequest";
            v229 = 1024;
            v230 = 1485;
            v231 = 2080;
            *v232 = v169;
            v123 = v168;
            *&v232[8] = 2080;
            v233 = v170;
            _os_log_impl(&dword_23D497000, v167, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tadd new candidate pair [%s->%s].", buf, 0x30u);
          }
        }

        v171 = malloc_type_realloc(*(v9 + 184), 400 * *(v9 + 200) + 400, 0x10200402E010713uLL);
        *(v9 + 184) = v171;
        if (v171)
        {
          v172 = v171 + 400 * *(v9 + 200);
          v221 = 0;
          BindingResponse = PairUpCandidate(__dst, 1, v252, 1, v172, 4, &v221, __dst[23]);
          if ((BindingResponse & 0x80000000) != 0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                ProcessBindingRequest_cold_11();
              }
            }
          }

          else if (v221 == 1)
          {
            ++*(v9 + 200);
            inserted = InsertEvent(v216, v172, 1, 50, v165 + 640, 0, 1);
            if ((inserted & 0x80000000) != 0)
            {
              BindingResponse = inserted;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                {
                  ProcessBindingRequest_cold_10();
                }
              }
            }

            else
            {
              v219 = 0;
              v220 = 0;
              if (*(v9 + 840) != 1 || !v123)
              {
                v175 = 0;
                v174 = 0;
              }

              else
              {
                ICEGetCandidatesForPeer(v9, 1, &v219, &v220);
                v174 = v219;
                v175 = v220;
              }

              BindingResponse = MakeBindingResponse(v5, v3, v217, v260, 0, v174, v175, *(v9 + 204), v7, *(v9 + 888), v146, cf);
              if (v219)
              {
                free(v219);
              }

              if ((BindingResponse & 0x80000000) != 0)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                  {
                    ProcessBindingRequest_cold_9();
                  }
                }
              }

              else
              {
                v224 = 1472;
                v191 = STUNEncodeMessage(v260, __b, &v224, 0, v190);
                if ((v191 & 0x80000000) != 0)
                {
                  BindingResponse = v191;
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                    {
                      ProcessBindingRequest_cold_8();
                    }
                  }
                }

                else
                {
                  BindingResponse = (*(v165 + 16))(*(v165 + 8), *(v9 + 148), __b, v224, &v248, &v243, 1, 0);
                  if ((BindingResponse & 0x80000000) != 0)
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                      {
                        ProcessBindingRequest_cold_7();
                      }
                    }
                  }

                  else
                  {
                    v192 = GetSTUNAttr(v260, 6);
                    if (v192)
                    {
                      v193 = v192;
                      if (VRTraceGetErrorLogLevelForModule() >= 7)
                      {
                        v194 = VRTraceErrorLogLevelToCSTR();
                        v195 = *MEMORY[0x277CE5818];
                        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                        {
                          v196 = MakeTransID(v235, v261);
                          v197 = IPPORTToStringWithSize(v240, &v243, 0x36uLL);
                          v198 = ICEUNToString(v237, *(v193 + 2));
                          *buf = 136316418;
                          v226 = v194;
                          v227 = 2080;
                          v228 = "ProcessBindingRequest";
                          v229 = 1024;
                          v230 = 1553;
                          v231 = 2080;
                          *v232 = v196;
                          *&v232[8] = 2080;
                          v233 = v197;
                          LOWORD(v234[0]) = 2080;
                          *(v234 + 2) = v198;
                          _os_log_impl(&dword_23D497000, v195, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tBINDING_RESPONSE [%s] to [%s] USERNAME[%s]\n", buf, 0x3Au);
                        }
                      }
                    }

                    UpdateICEState((*(v9 + 184) + 400 * v218 + 296), 5);
                    v199 = *(v9 + 184) + 400 * v218;
                    if (*(v199 + 296) == 6 && *(v9 + 840) == 1 && *(v199 + 356))
                    {
                      UpdateICEState((v199 + 296), 6);
                    }
                  }
                }
              }
            }
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ProcessBindingRequest_cold_6();
            }
          }
        }

        else
        {
          BindingResponse = *__error() | 0xC0150000;
        }
      }

      else
      {
        v219 = 0;
        v221 = 0;
        if (*(v9 + 840) != 1 || !v123)
        {
          v177 = 0;
          v176 = 0;
        }

        else
        {
          ICEGetCandidatesForPeer(v9, 1, &v219, &v221);
          v176 = v219;
          v177 = v221;
        }

        BindingResponse = MakeBindingResponse(v5, v3, v217, v260, 0, v176, v177, *(v9 + 204), v7, *(v9 + 888), v146, cf);
        if (v219)
        {
          free(v219);
        }

        if ((BindingResponse & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ProcessBindingRequest_cold_14();
            }
          }
        }

        else
        {
          v224 = 1472;
          v179 = STUNEncodeMessage(v260, __b, &v224, 0, v178);
          if ((v179 & 0x80000000) != 0)
          {
            BindingResponse = v179;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                ProcessBindingRequest_cold_13();
              }
            }
          }

          else
          {
            BindingResponse = (*(v149 + 16))(*(v149 + 8), *(v9 + 148), __b, v224, &v248, &v243, 1, 0);
            if ((BindingResponse & 0x80000000) != 0)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                {
                  ProcessBindingRequest_cold_12();
                }
              }
            }

            else
            {
              v180 = GetSTUNAttr(v260, 6);
              if (v180)
              {
                v181 = v180;
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v182 = VRTraceErrorLogLevelToCSTR();
                  v183 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    v184 = MakeTransID(v235, v261);
                    v185 = IPPORTToStringWithSize(v240, &v243, 0x36uLL);
                    v186 = ICEUNToString(v237, *(v181 + 2));
                    *buf = 136316418;
                    v226 = v182;
                    v227 = 2080;
                    v228 = "ProcessBindingRequest";
                    v229 = 1024;
                    v230 = 1612;
                    v231 = 2080;
                    *v232 = v184;
                    *&v232[8] = 2080;
                    v233 = v185;
                    LOWORD(v234[0]) = 2080;
                    *(v234 + 2) = v186;
                    _os_log_impl(&dword_23D497000, v183, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tBINDING_RESPONSE [%s] to [%s] USERNAME[%s]", buf, 0x3Au);
                  }
                }
              }

              v187 = FindMatchCP(*(v9 + 184), *(v9 + 200), v212, 0);
              if (v187 == -1)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 5)
                {
                  v200 = VRTraceErrorLogLevelToCSTR();
                  v201 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315906;
                    v226 = v200;
                    v227 = 2080;
                    v228 = "ProcessBindingRequest";
                    v229 = 1024;
                    v230 = 1617;
                    v231 = 1024;
                    *v232 = 1617;
                    _os_log_impl(&dword_23D497000, v201, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Candidate pair not found.", buf, 0x22u);
                  }
                }
              }

              else
              {
                v188 = v187;
                UpdateICEState((*(v9 + 184) + 400 * v187 + 296), 5);
                DelayedICEUpdateAfterNominationResponse(5, v9, (v9 + 184), v188, *(v9 + 200));
              }
            }
          }
        }
      }

      goto LABEL_283;
    }

    v163 = v145 + 44;
    while (1)
    {
      if ((v252[24] & 1) == (*(v163 - 5) & 1))
      {
        if (v252[24])
        {
          if (*&v253[12] != *v163 || *&v253[20] != *(v163 + 1))
          {
            goto LABEL_239;
          }
        }

        else if (*&v253[12] != *v163)
        {
          goto LABEL_239;
        }

        if (*&v253[28] == *(v163 + 8))
        {
          *&v252[12] = *(v163 - 4);
          goto LABEL_240;
        }
      }

LABEL_239:
      v163 += 148;
      if (!--v147)
      {
        goto LABEL_240;
      }
    }
  }

LABEL_183:
  v129 = DWORD1(__dst[0]) == 5 && DWORD2(__dst[9]) == 5;
  UpdateICEState((*(v9 + 184) + 400 * v218 + 296), 2);
  v130 = *(v9 + 184) + 400 * v218;
  v131 = *(v9 + 840);
  if (*(v130 + 296) == 6 && v131 == 1)
  {
    if (!*(v130 + 356))
    {
      if ((v248 & 4) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_197;
    }

    UpdateICEState((v130 + 296), 6);
    v131 = *(v9 + 840);
  }

  if ((v248 & 4) == 0)
  {
    v133 = 0;
    v134 = 0;
    v135 = 0;
    v219 = 0;
    v221 = 0;
    if (v131 != 1)
    {
      goto LABEL_204;
    }

    if (v123)
    {
      goto LABEL_203;
    }

    goto LABEL_202;
  }

  if (v131 != 1)
  {
    v134 = 0;
    v135 = 0;
    v133 = 0;
    v219 = 0;
    v221 = 0;
    goto LABEL_204;
  }

LABEL_197:
  if (*(*(v9 + 184) + 400 * v218 + 356) && *(v9 + 888) >= 0x6Du)
  {
    v133 = *(v9 + 880);
    goto LABEL_201;
  }

LABEL_200:
  v133 = 0;
LABEL_201:
  v219 = 0;
  v221 = 0;
  if (v123)
  {
LABEL_203:
    ICEGetCandidatesForPeer(v9, 1, &v219, &v221);
    v135 = v219;
    v134 = v221;
    goto LABEL_204;
  }

LABEL_202:
  if (*(*(v9 + 184) + 400 * v218 + 356))
  {
    goto LABEL_203;
  }

  v134 = 0;
  v135 = 0;
LABEL_204:
  BindingResponse = MakeBindingResponse(v5, v3, v217, v262, v133, v135, v134, *(v9 + 204), v7, *(v9 + 888), 0, cf);
  if (v219)
  {
    free(v219);
  }

  if ((BindingResponse & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessBindingRequest_cold_18();
      }
    }
  }

  else
  {
    v224 = 1472;
    v137 = STUNEncodeMessage(v262, __b, &v224, 0, v136);
    if ((v137 & 0x80000000) != 0)
    {
      BindingResponse = v137;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ProcessBindingRequest_cold_17();
        }
      }
    }

    else
    {
      if (!v123)
      {
        goto LABEL_211;
      }

      if (*(v9 + 232) != 1)
      {
        BindingResponse = 2148859920;
        goto LABEL_283;
      }

      v138 = EncodeChannelDataMessage(*(v9 + 234), __b, &v224, 1472, __b);
      if ((v138 & 0x80000000) != 0)
      {
        BindingResponse = v138;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessBindingRequest_cold_16();
          }
        }
      }

      else
      {
LABEL_211:
        BindingResponse = (*(v10 + 16))(*(v10 + 8), *(v9 + 148), __b, v224, &v248, &v243, 1, 0);
        if ((BindingResponse & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ProcessBindingRequest_cold_15();
            }
          }
        }

        else
        {
          v211 = v15;
          v139 = v10;
          v140 = GetSTUNAttr(v262, 6);
          if (v140)
          {
            v141 = v140;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v215 = VRTraceErrorLogLevelToCSTR();
              v142 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v207 = MakeTransID(v235, v263);
                v204 = IPPORTToStringWithSize(v240, &v243, 0x36uLL);
                v143 = ICEUNToString(v237, *(v141 + 2));
                *buf = 136316418;
                v226 = v215;
                v227 = 2080;
                v228 = "ProcessBindingRequest";
                v229 = 1024;
                v230 = 1429;
                v231 = 2080;
                *v232 = v207;
                *&v232[8] = 2080;
                v233 = v204;
                LOWORD(v234[0]) = 2080;
                *(v234 + 2) = v143;
                _os_log_impl(&dword_23D497000, v142, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** BINDING_RESPONSE [%s] to [%s] USERNAME[%s]", buf, 0x3Au);
              }
            }
          }

          UpdateICEState((*(v9 + 184) + 400 * v218 + 296), 5);
          v144 = *(v9 + 184) + 400 * v218;
          if (*(v144 + 296) == 6 && *(v9 + 840) == 1 && *(v144 + 356))
          {
            UpdateICEState((v144 + 296), 6);
          }

          if (v28 < 0x6A && !v129)
          {
            v123 = v129;
            v10 = v139;
            v15 = v211;
            goto LABEL_222;
          }
        }
      }
    }
  }

LABEL_283:
  if (cf)
  {
    CFRelease(cf);
  }

  FreeSTUNMessage(v262);
  FreeSTUNMessage(v260);
  return BindingResponse;
}

void RemoveNominatedCandidatePair(uint64_t a1, uint64_t a2, signed int a3, int a4)
{
  v42 = *MEMORY[0x277D85DE8];
  *&v41[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[1] = v6;
  *v41 = v6;
  v40[0] = v6;
  *&v39[14] = 0xAAAAAAAAAAAAAAAALL;
  v38[1] = v6;
  *v39 = v6;
  v38[0] = v6;
  if (a3 < 0 || *(a2 + 200) <= a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v22 = *(a2 + 200);
        v27 = 136316162;
        v28 = v20;
        v29 = 2080;
        v30 = "RemoveNominatedCandidatePair";
        v31 = 1024;
        v32 = 983;
        v33 = 1024;
        *v34 = a3;
        *&v34[4] = 1024;
        *&v34[6] = v22;
        _os_log_error_impl(&dword_23D497000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d failed with invalid index input: %d, candidate pair count: %d", &v27, 0x28u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (a4)
        {
          v11 = "primary";
        }

        else
        {
          v11 = "secondary";
        }

        v12 = IPPORTToStringWithSize(v38, *(a2 + 184) + 400 * a3 + 24, 0x36uLL);
        v13 = IPPORTToStringWithSize(v40, *(a2 + 184) + 400 * a3 + 172, 0x36uLL);
        v27 = 136316674;
        v28 = v9;
        v29 = 2080;
        v30 = "RemoveNominatedCandidatePair";
        v31 = 1024;
        v32 = 989;
        v33 = 2080;
        *v34 = v11;
        *&v34[8] = 1024;
        *v35 = a3;
        *&v35[4] = 2080;
        *&v35[6] = v12;
        v36 = 2080;
        v37 = v13;
        _os_log_impl(&dword_23D497000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Remove current %s[%d %s-%s]", &v27, 0x40u);
      }
    }

    v14 = a3;
    if (*(*(a2 + 184) + 400 * a3 + 4) == 5)
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (a4)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v18 = IPPORTToStringWithSize(v38, *(a2 + 184) + 400 * v14 + 64, 0x36uLL);
            v19 = IPPORTToStringWithSize(v40, *(a2 + 184) + 400 * v14 + 172, 0x36uLL);
            v27 = 136316162;
            v28 = v16;
            v29 = 2080;
            v30 = "RemoveNominatedCandidatePair";
            v31 = 1024;
            v32 = 995;
            v33 = 2080;
            *v34 = v18;
            *&v34[8] = 2080;
            *v35 = v19;
            _os_log_impl(&dword_23D497000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: let VCCallSession tear down removed primary TURN candidate %s - %s", &v27, 0x30u);
          }
        }
      }

      else
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v25 = IPPORTToStringWithSize(v38, *(a2 + 184) + 400 * v14 + 24, 0x36uLL);
            v26 = IPPORTToStringWithSize(v40, *(a2 + 184) + 400 * v14 + 172, 0x36uLL);
            v27 = 136316162;
            v28 = v23;
            v29 = 2080;
            v30 = "RemoveNominatedCandidatePair";
            v31 = 1024;
            v32 = 999;
            v33 = 2080;
            *v34 = v25;
            *&v34[8] = 2080;
            *v35 = v26;
            _os_log_impl(&dword_23D497000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: tear down removed secondary TURN candidate %s - %s", &v27, 0x30u);
          }
        }

        DiscardOneRelayBindingWithChannelNumber(a1, *(a2 + 148), *(*(a2 + 184) + 400 * v14 + 384));
      }
    }

    DemoteCandidatePair(*(a2 + 184) + 400 * v14, 2, 0, 0);
    RemoveConnectivityCheckResult(a1, *(a2 + 148), *(a2 + 184) + 400 * v14);
  }
}

uint64_t MakeBindingResponse(uint64_t a1, __int128 *a2, int a3, char *a4, int a5, uint64_t a6, int a7, __int16 a8, double a9, unsigned int a10, int a11, CFDataRef theData)
{
  v76 = *MEMORY[0x277D85DE8];
  bzero(a4, 0x480uLL);
  *a4 = 65792;
  *(a4 + 6) = 1010;
  *(a4 + 3) = *(a1 + 6);
  *(a4 + 8) = *(a1 + 8);
  *(a4 + 7) = 0;
  STUNAttr = GetSTUNAttr(a1, 6);
  if (STUNAttr)
  {
    v22 = *(STUNAttr + 2);
    v23 = malloc_type_malloc(0x14uLL, 0x100004077774924uLL);
    if (v23)
    {
      v24 = *(v22 + 10);
      *(v23 + 4) = *(v22 + 9);
      *v23 = v24;
      v25 = *v22;
      *(v23 + 9) = *(v22 + 4);
      *(v23 + 10) = v25;
      *(a4 + 8) = 1310726;
      v26 = a4 + 32;
      *(a4 + 10) = 20;
      *(a4 + 6) = v23;
      *(a4 + 22) = 2883585;
      if (*a2)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      a4[96] = v27;
      v28 = *a2;
      v29 = a2[1];
      *(a4 + 132) = *(a2 + 4);
      *(a4 + 116) = v29;
      *(a4 + 100) = v28;
      *(a4 + 36) = 294913;
      if (a10 >= 0x6D && a11)
      {
        *(a4 + 38) = a3 | 0x100;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v30 = VRTraceErrorLogLevelToCSTR();
          v31 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a4 + 38);
            *buf = 136315906;
            *&buf[4] = v30;
            *&buf[12] = 2080;
            *&buf[14] = "MakeBindingResponse";
            v72 = 1024;
            v73 = 889;
            v74 = 1024;
            LODWORD(v75) = v32;
            _os_log_impl(&dword_23D497000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tadd DERIVED-REMOTE candidate indication (%08X).", buf, 0x22u);
          }
        }
      }

      else
      {
        *(a4 + 38) = a3;
      }

      if (*(a1 + 24) < 0x6Au)
      {
        v41 = 3;
      }

      else
      {
        *(a4 + 50) = 294915;
        *(a4 + 52) = *(a4 + 6);
        v34 = GetSTUNAttr(a1, 32772);
        if (v34)
        {
          *(a4 + 64) = 294916;
          *(a4 + 66) = *(v34 + 2);
          v38 = micro(v34, v35);
          if (MicroToMiddle32_zero_wide)
          {
            v39 = MicroToMiddle32_zero_wide;
            v40 = MicroToMiddle32_zero_wide + v38 * 4294967300.0;
          }

          else
          {
            memset(buf, 170, 16);
            v70.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            *&v70.tv_usec = 0xAAAAAAAAAAAAAAAALL;
            v42 = micro(v36, v37);
            v43 = gettimeofday(buf, 0);
            v45 = micro(v43, v44);
            v46 = gettimeofday(&v70, 0);
            if (micro(v46, v47) - v45 < v45 - v42)
            {
              *buf = v70;
              v42 = v45;
            }

            v50 = *buf + *&buf[8] * 0.000001 + 2208988800.0 - v42;
            MicroToMiddle32_zero_wide = vcvtd_n_u64_f64(v50, 0x20uLL);
            v39 = (v50 * 4294967300.0);
            v40 = v39 + v38 * 4294967300.0;
            if (!MicroToMiddle32_zero_wide)
            {
              memset(buf, 170, 16);
              v70.tv_sec = 0xAAAAAAAAAAAAAAAALL;
              *&v70.tv_usec = 0xAAAAAAAAAAAAAAAALL;
              v51 = micro(v48, v49);
              v52 = gettimeofday(buf, 0);
              v54 = micro(v52, v53);
              v55 = gettimeofday(&v70, 0);
              if (micro(v55, v56) - v54 < v54 - v51)
              {
                *buf = v70;
                v51 = v54;
              }

              v57 = *buf + *&buf[8] * 0.000001 + 2208988800.0 - v51;
              MicroToMiddle32_zero_wide = vcvtd_n_u64_f64(v57, 0x20uLL);
              v39 = (v57 * 4294967300.0);
            }
          }

          *(a4 + 78) = 294917;
          *(a4 + 80) = (v40 >> 16) - ((v39 + a9 * 4294967300.0) >> 16);
          v41 = 6;
        }

        else
        {
          v41 = 4;
        }
      }

      if (a5)
      {
        v58 = &v26[56 * v41];
        *v58 = 294919;
        *(v58 + 2) = a5;
        ++v41;
      }

      v33 = 0;
      if (a6 && a7 >= 1)
      {
        *buf = 0;
        LODWORD(v70.tv_sec) = 0;
        v33 = ICECompressCandidates(buf, &v70, 148 * a7, a6, a7);
        if ((v33 & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              MakeBindingResponse_cold_1();
            }
          }

          goto LABEL_46;
        }

        tv_sec = v70.tv_sec;
        v60 = (2 - LOBYTE(v70.tv_sec)) & 3;
        if (((LODWORD(v70.tv_sec) + 2) & 3) == 0)
        {
          v60 = 0;
        }

        v61 = v60 + LOWORD(v70.tv_sec) + 2;
        v62 = &v26[56 * v41];
        *v62 = -32759;
        *(v62 + 1) = v61;
        *(v62 + 4) = a8;
        *(v62 + 4) = tv_sec;
        *(v62 + 3) = *buf;
        ++v41;
      }

      if (theData)
      {
        Length = CFDataGetLength(theData);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v64 = VRTraceErrorLogLevelToCSTR();
          v65 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v64;
            *&buf[12] = 2080;
            *&buf[14] = "MakeBindingResponse";
            v72 = 1024;
            v73 = 959;
            v74 = 2048;
            v75 = Length;
            _os_log_impl(&dword_23D497000, v65, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending SKEMessage of length %ld in binding response", buf, 0x26u);
          }
        }

        v66 = (-Length & 3) + Length;
        v67 = &v26[56 * v41];
        *v67 = -32758;
        if ((Length & 3) == 0)
        {
          LOWORD(v66) = Length;
        }

        *(v67 + 1) = v66;
        *(v67 + 2) = Length;
        v68 = malloc_type_malloc(Length, 0xF25144ABuLL);
        *(v67 + 2) = v68;
        v77.location = 0;
        v77.length = Length;
        CFDataGetBytes(theData, v77, v68);
        ++v41;
      }

LABEL_46:
      *(a4 + 7) = v41;
      return v33;
    }

    v33 = 2148859907;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        MakeBindingResponse_cold_2();
      }
    }
  }

  else
  {
    v33 = 2148859938;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        MakeBindingResponse_cold_3();
        return 2148859938;
      }
    }
  }

  return v33;
}

uint64_t IsNewCandidate(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 < 1)
  {
    return 1;
  }

  v3 = *(a3 + 24) & 1;
  v4 = a2;
  for (i = a1 + 44; ; i += 148)
  {
    if (v3 == (*(i - 20) & 1))
    {
      if (v3)
      {
        if (*(a3 + 44) != *i || *(a3 + 52) != *(i + 8))
        {
          goto LABEL_13;
        }
      }

      else if (*(a3 + 44) != *i)
      {
        goto LABEL_13;
      }

      if (*(a3 + 60) == *(i + 16))
      {
        break;
      }
    }

LABEL_13:
    if (!--v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t IsNewCandidatePair(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 1)
  {
    return 1;
  }

  v4 = *(a3 + 24) & 1;
  v5 = a2;
  for (i = a1 + 172; ; i += 400)
  {
    if (v4 == (*(i - 148) & 1))
    {
      if (v4)
      {
        if (*(a3 + 44) != *(i - 128) || *(a3 + 52) != *(i - 120))
        {
          goto LABEL_23;
        }
      }

      else if (*(a3 + 44) != *(i - 128))
      {
        goto LABEL_23;
      }

      if (*(a3 + 60) != *(i - 112) || (*(a4 + 24) & 1) != (*i & 1))
      {
        goto LABEL_23;
      }

      if (*(a4 + 24))
      {
        if (*(a4 + 44) != *(i + 20) || *(a4 + 52) != *(i + 28))
        {
          goto LABEL_23;
        }
      }

      else if (*(a4 + 44) != *(i + 20))
      {
        goto LABEL_23;
      }

      if (*(a4 + 60) == *(i + 36))
      {
        break;
      }
    }

LABEL_23:
    if (!--v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t ProcessBindingErrorResponse(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *&v16[14] = 0xAAAAAAAAAAAAAAAALL;
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v15[1] = v5;
      *v16 = v5;
      v15[0] = v5;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "ProcessBindingErrorResponse";
      v11 = 1024;
      v12 = 1893;
      v13 = 2080;
      v14 = IPPORTToStringWithSize(v15, a2, 0x36uLL);
      _os_log_impl(&dword_23D497000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** BINDING_ERROR_RESPONSE from (%s)", &v7, 0x26u);
    }
  }

  return 0;
}

uint64_t ProcessConnCheckMessage(uint64_t a1, uint64_t a2, double a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, __int128 *a8, _DWORD *a9)
{
  v60 = *MEMORY[0x277D85DE8];
  v43 = 0;
  v42 = 0;
  v9 = 2148859905;
  if (a5 && a6)
  {
    memset(__b, 170, sizeof(__b));
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v57[0] = v18;
    v57[1] = v18;
    v58 = 0xAAAAAAAAAAAAAAAALL;
    v55[0] = v18;
    v55[1] = v18;
    v56 = 0xAAAAAAAAAAAAAAAALL;
    v53[0] = v18;
    v53[1] = v18;
    v54[0] = v18;
    *(v54 + 14) = 0xAAAAAAAAAAAAAAAALL;
    v19 = ParseSTUNMessage(a5, a6, __b);
    v9 = v19;
    if ((v19 & 0x80000000) == 0)
    {
      if (__b[0] <= 0xFFu)
      {
        if (__b[0])
        {
          if (__b[0] == 16)
          {
            if (VRTraceGetErrorLogLevelForModule() < 5)
            {
              goto LABEL_55;
            }

            v21 = VRTraceErrorLogLevelToCSTR();
            v22 = *MEMORY[0x277CE5818];
            if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_55;
            }

            *buf = 136316162;
            v45 = v21;
            v46 = 2080;
            v47 = "ProcessConnCheckMessage";
            v48 = 1024;
            v49 = 2066;
            v50 = 1024;
            *v51 = 2066;
            *&v51[4] = 1024;
            *&v51[6] = __b[1];
            v23 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: UNKNOWN Indication method(%04X)";
LABEL_54:
            _os_log_impl(&dword_23D497000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0x28u);
LABEL_55:
            v9 = 2148859938;
            goto LABEL_75;
          }

LABEL_20:
          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_55;
          }

          v25 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_55;
          }

          *buf = 136316162;
          v45 = v25;
          v46 = 2080;
          v47 = "ProcessConnCheckMessage";
          v48 = 1024;
          v49 = 2071;
          v50 = 1024;
          *v51 = 2071;
          *&v51[4] = 1024;
          *&v51[6] = __b[0];
          v23 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: UNKNOWN MESSAGE Class(%04X)";
          goto LABEL_54;
        }

        if (__b[1] != 1)
        {
          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_55;
          }

          v26 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_55;
          }

          *buf = 136316162;
          v45 = v26;
          v46 = 2080;
          v47 = "ProcessConnCheckMessage";
          v48 = 1024;
          v49 = 1937;
          v50 = 1024;
          *v51 = 1937;
          *&v51[4] = 1024;
          *&v51[6] = __b[1];
          v23 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: UNKNOWN Request method(%04X)";
          goto LABEL_54;
        }

        PermissionResponse = ProcessBindingRequest(a1);
LABEL_74:
        v9 = PermissionResponse;
        goto LABEL_75;
      }

      if (__b[0] == 256)
      {
        if (__b[1] > 5u)
        {
          switch(__b[1])
          {
            case 6:
              PermissionResponse = ProcessSendResponse(__b);
              goto LABEL_74;
            case 8:
              *(a2 + 392) = micro(v19, v20);
              PermissionResponse = ProcessCreatePermissionResponse();
              goto LABEL_74;
            case 9:
              *(a2 + 400) = 1;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v27 = VRTraceErrorLogLevelToCSTR();
                v28 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v29 = IPPORTToStringWithSize(v53, a8, 0x36uLL);
                  v30 = *(a2 + 148);
                  *buf = 136316162;
                  v45 = v27;
                  v46 = 2080;
                  v47 = "ProcessConnCheckMessage";
                  v48 = 1024;
                  v49 = 1984;
                  v50 = 2080;
                  *v51 = v29;
                  *&v51[8] = 1024;
                  v52 = v30;
                  _os_log_impl(&dword_23D497000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** CHANNELBIND_RESPONSE from [%s] for call id (%d)\n", buf, 0x2Cu);
                }
              }

              PermissionResponse = ProcessChannelBindResponse();
              goto LABEL_74;
          }
        }

        else
        {
          switch(__b[1])
          {
            case 1:
              PermissionResponse = ProcessBindingResponse(a2, __b, a8, a3);
              goto LABEL_74;
            case 3:
              if (!*(a2 + 752))
              {
                ProcessAllocateResponse(__b, *(a2 + 232), &v42, v57, v55, *(a2 + 744), *(a2 + 756));
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v34 = VRTraceErrorLogLevelToCSTR();
                  v35 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    v36 = IPPORTToStringWithSize(v53, a8, 0x36uLL);
                    v37 = *(a2 + 148);
                    *buf = 136316162;
                    v45 = v34;
                    v46 = 2080;
                    v47 = "ProcessConnCheckMessage";
                    v48 = 1024;
                    v49 = 1954;
                    v50 = 2080;
                    *v51 = v36;
                    *&v51[8] = 1024;
                    v52 = v37;
                    _os_log_impl(&dword_23D497000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** ALLOCATE_RESPONSE from [%s] for call id (%d)\n", buf, 0x2Cu);
                  }
                }

                v9 = ICEUpdateRelayIPPort(a1, a7, v57, v55, *(a2 + 148));
                if ((v9 & 0x80000000) == 0)
                {
                  *(a2 + 756) = 0;
                }

                *a9 = 1;
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v38 = VRTraceErrorLogLevelToCSTR();
                  v39 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    v40 = IPPORTToStringWithSize(v53, v57, 0x36uLL);
                    *buf = 136316162;
                    v45 = v38;
                    v46 = 2080;
                    v47 = "ProcessConnCheckMessage";
                    v48 = 1024;
                    v49 = 1964;
                    v50 = 2080;
                    *v51 = v40;
                    *&v51[8] = 1024;
                    v52 = v42;
                    _os_log_impl(&dword_23D497000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RELAY mapping [%s] lifetime [%d]", buf, 0x2Cu);
                  }
                }
              }

              goto LABEL_75;
            case 5:
              PermissionResponse = ProcessSetActiveDstResponse(__b);
              goto LABEL_74;
          }
        }

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_55;
        }

        v32 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        *buf = 136316162;
        v45 = v32;
        v46 = 2080;
        v47 = "ProcessConnCheckMessage";
        v48 = 1024;
        v49 = 1988;
        v50 = 1024;
        *v51 = 1988;
        *&v51[4] = 1024;
        *&v51[6] = __b[1];
        v23 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: UNKNOWN Response method(%04X)";
        goto LABEL_54;
      }

      if (__b[0] != 272)
      {
        goto LABEL_20;
      }

      if (__b[1] > 5u)
      {
        switch(__b[1])
        {
          case 6:
            PermissionResponse = ProcessSendErrorResponse(__b, &v43);
            goto LABEL_74;
          case 8:
            PermissionResponse = ProcessPermissionErrorResponse(__b, &v43);
            goto LABEL_74;
          case 9:
            PermissionResponse = ProcessChannelBindErrorResponse(__b, &v43);
            goto LABEL_74;
        }

        goto LABEL_48;
      }

      if (__b[1] == 1)
      {
        ProcessBindingErrorResponse(v19, a8);
        v9 = 0;
LABEL_75:
        FreeSTUNMessage(__b);
        return v9;
      }

      if (__b[1] != 3)
      {
        if (__b[1] == 5)
        {
          PermissionResponse = ProcessSetActiveDstErrorResponse(__b, &v43);
          goto LABEL_74;
        }

LABEL_48:
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_55;
        }

        v31 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        *buf = 136316162;
        v45 = v31;
        v46 = 2080;
        v47 = "ProcessConnCheckMessage";
        v48 = 1024;
        v49 = 2060;
        v50 = 1024;
        *v51 = 2060;
        *&v51[4] = 1024;
        *&v51[6] = __b[1];
        v23 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: UNKNOWN Error Response method(%04X)";
        goto LABEL_54;
      }

      *a9 = 2;
      PermissionResponse = ProcessAllocateErrorResponse(__b, &v43);
      if ((PermissionResponse & 0x80000000) != 0)
      {
        goto LABEL_74;
      }

      if (v43 > 0x1B4u)
      {
        if (v43 > 0x1B9u)
        {
          switch(v43)
          {
            case 0x1BAu:
              v33 = 28;
              goto LABEL_99;
            case 0x1E6u:
              v33 = 29;
              goto LABEL_99;
            case 0x1FCu:
              v33 = 30;
              goto LABEL_99;
          }
        }

        else
        {
          switch(v43)
          {
            case 0x1B5u:
              v33 = 25;
              goto LABEL_99;
            case 0x1B6u:
              v33 = 26;
              goto LABEL_99;
            case 0x1B9u:
              v33 = 27;
              goto LABEL_99;
          }
        }
      }

      else if (v43 > 0x191u)
      {
        switch(v43)
        {
          case 0x192u:
            v33 = 22;
            goto LABEL_99;
          case 0x193u:
            v33 = 23;
            goto LABEL_99;
          case 0x1A4u:
            v33 = 24;
            goto LABEL_99;
        }
      }

      else
      {
        switch(v43)
        {
          case 0x12Cu:
            v33 = 19;
            goto LABEL_99;
          case 0x190u:
            v33 = 20;
            goto LABEL_99;
          case 0x191u:
            v33 = 21;
LABEL_99:
            *(a2 + 424) = v33;
            v9 = 2148859955;
            goto LABEL_75;
        }
      }

      v33 = 35;
      goto LABEL_99;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessConnCheckMessage_cold_1();
      }
    }
  }

  return v9;
}