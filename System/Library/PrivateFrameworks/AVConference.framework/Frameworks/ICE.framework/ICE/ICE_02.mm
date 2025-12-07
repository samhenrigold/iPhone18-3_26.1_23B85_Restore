uint64_t ProcessBindingResponse(uint64_t a1, uint64_t a2, __int128 *a3, double a4)
{
  v149 = *MEMORY[0x277D85DE8];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __dst[23] = v8;
  __dst[24] = v8;
  __dst[21] = v8;
  __dst[22] = v8;
  __dst[19] = v8;
  __dst[20] = v8;
  __dst[17] = v8;
  __dst[18] = v8;
  __dst[15] = v8;
  __dst[16] = v8;
  __dst[13] = v8;
  __dst[14] = v8;
  __dst[11] = v8;
  __dst[12] = v8;
  __dst[9] = v8;
  __dst[10] = v8;
  __dst[7] = v8;
  __dst[8] = v8;
  __dst[5] = v8;
  __dst[6] = v8;
  __dst[3] = v8;
  __dst[4] = v8;
  __dst[1] = v8;
  __dst[2] = v8;
  __dst[0] = v8;
  v147 = -1431655766;
  v145 = v8;
  v146 = v8;
  v143 = v8;
  v144 = v8;
  v141 = v8;
  v142 = v8;
  *&v139[16] = v8;
  v140 = v8;
  *v139 = v8;
  *&v138[16] = 0xAAAAAAAAAAAAAAAALL;
  v137 = v8;
  *v138 = v8;
  *(v134 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v133[1] = v8;
  v134[0] = v8;
  v133[0] = v8;
  *(v132 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v131[1] = v8;
  v132[0] = v8;
  v130[3] = v8;
  v131[0] = v8;
  v130[1] = v8;
  v130[2] = v8;
  v130[0] = v8;
  memset(v129, 170, sizeof(v129));
  memset(v128, 170, 25);
  STUNAttr = GetSTUNAttr(a2, 6);
  if (!STUNAttr)
  {
    v26 = 2148859938;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessBindingResponse_cold_7();
      }
    }

    return v26;
  }

  v10 = STUNAttr;
  v11 = *(STUNAttr + 2);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      TransID = MakeTransID(v128, (a2 + 12));
      v15 = IPPORTToStringWithSize(v131, a3, 0x36uLL);
      v16 = ICEUNToString(v130, *(v10 + 2));
      *buf = 136316418;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = "ProcessBindingResponse";
      v120 = 1024;
      v121 = 1676;
      v122 = 2080;
      v123 = TransID;
      v124 = 2080;
      v125 = v15;
      v126 = 2080;
      v127 = v16;
      _os_log_impl(&dword_23D497000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** BINDING_RESPONSE [%s] from [%s] USERNAME[%s]", buf, 0x3Au);
    }
  }

  v17 = GetSTUNAttr(a2, 1);
  if (!v17)
  {
    v26 = 2148859938;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessBindingResponse_cold_6();
      }
    }

    return v26;
  }

  v18 = *(v17 + 6);
  v19 = *(v17 + 14);
  *&v136[16] = *(v17 + 22);
  v135 = v18;
  *v136 = v19;
  v20 = GetSTUNAttr(a2, 32769);
  if (!v20)
  {
    v26 = 2148859938;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessBindingResponse_cold_5();
      }
    }

    return v26;
  }

  v21 = *(v20 + 2);
  if ((v21 & 0x100) != 0 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      *&buf[14] = "ProcessBindingResponse";
      v120 = 1024;
      v121 = 1696;
      v122 = 1024;
      LODWORD(v123) = v21;
      _os_log_impl(&dword_23D497000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tRemote added DRIVED-REMOTE candidate, create DERIVED-LOCAL candidate (proto=%d).", buf, 0x22u);
    }
  }

  v24 = GetSTUNAttr(a2, 32771);
  if (v24)
  {
    v25 = *(v24 + 2);
  }

  else
  {
    v25 = 105;
  }

  *(a2 + 24) = v25;
  v27 = GetSTUNAttr(a2, 32775);
  if (v27)
  {
    *(a1 + 884) = *(v27 + 2);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 884);
        *buf = 136315906;
        *&buf[4] = v28;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessBindingResponse";
        v120 = 1024;
        v121 = 1710;
        v122 = 1024;
        LODWORD(v123) = v30;
        _os_log_impl(&dword_23D497000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote cellular technology:[%d]", buf, 0x22u);
      }
    }
  }

  MatchCP = FindMatchCP(*(a1 + 184), *(a1 + 200), v11, 0);
  if (MatchCP == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      v54 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v53;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessBindingResponse";
        v120 = 1024;
        v121 = 1715;
        v122 = 1024;
        LODWORD(v123) = 1715;
        _os_log_impl(&dword_23D497000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Candidate pair not found.", buf, 0x22u);
      }
    }

    return 0;
  }

  v32 = MatchCP;
  v33 = *(a1 + 184) + 400 * MatchCP;
  v34 = *a3;
  v35 = a3[1];
  *(v33 + 344) = *(a3 + 4);
  *(v33 + 312) = v34;
  *(v33 + 328) = v35;
  v36 = *(a1 + 184) + 400 * MatchCP;
  memcpy(__dst, v36, sizeof(__dst));
  v37 = *(v36 + 40);
  v137 = *(v36 + 24);
  *v138 = v37;
  *&v138[16] = *(v36 + 56);
  if (v25 >= 0x6A && (v38 = GetSTUNAttr(a2, 32772)) != 0)
  {
    v39 = *(v38 + 2);
    v40 = GetSTUNAttr(a2, 32773);
    if (!v40)
    {
      v26 = 2148859938;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ProcessBindingResponse_cold_1();
        }
      }

      return v26;
    }

    v117 = v25 - 106;
    v42 = *(v40 + 2);
    v43 = MicroToMiddle32_zero_wide;
    if (!MicroToMiddle32_zero_wide)
    {
      memset(buf, 170, 16);
      v118.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      *&v118.tv_usec = 0xAAAAAAAAAAAAAAAALL;
      v44 = micro(v40, v41);
      v45 = gettimeofday(buf, 0);
      v47 = micro(v45, v46);
      v48 = gettimeofday(&v118, 0);
      if (micro(v48, v49) - v47 < v47 - v44)
      {
        *buf = v118;
        v44 = v47;
      }

      v43 = vcvtd_n_u64_f64(*buf + *&buf[8] * 0.000001 + 2208988800.0 - v44, 0x20uLL);
      MicroToMiddle32_zero_wide = v43;
    }

    v116 = ((v43 + a4 * 4294967300.0) >> 16) - (v42 + v39);
    *(*(a1 + 184) + 400 * v32 + 352) = v116;
  }

  else
  {
    v116 = 0;
    v117 = v25 - 106;
  }

  v51 = DWORD1(__dst[0]) == 5 && DWORD2(__dst[9]) == 5;
  if ((v135 & 1) == (v137 & 1))
  {
    if (v135)
    {
      if (*&v136[4] == *&v138[4] && *&v136[12] == *&v138[12])
      {
        goto LABEL_46;
      }
    }

    else if (*&v136[4] == *&v138[4])
    {
LABEL_46:
      v52 = *&v136[20] != *&v138[20] && v25 >= 0x6A;
      goto LABEL_57;
    }
  }

  v52 = v25 >= 0x6A;
LABEL_57:
  v56 = !v52;
  if (((v56 | v51) & 1) == 0)
  {
    goto LABEL_99;
  }

  v57 = *(a1 + 184);
  if (*(a1 + 840) == 1 && (v58 = v57 + 400 * v32, *(v58 + 356)))
  {
    v59 = (v58 + 296);
    v60 = 7;
  }

  else
  {
    v59 = (v57 + 400 * v32 + 296);
    v60 = 4;
  }

  UpdateICEState(v59, v60);
  v61 = *(a1 + 184) + 400 * v32;
  if (*(v61 + 296) == 6)
  {
    if (*(a1 + 840) != 2)
    {
      goto LABEL_95;
    }

    if (*(v61 + 356) && *(a1 + 856) == 554869826 && *(a2 + 8) == 554869826 && *(a1 + 860) == *(a2 + 12) && *(a1 + 868) == *(a2 + 20))
    {
      UpdateICEState((v61 + 296), 6);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v63 = VRTraceErrorLogLevelToCSTR();
        v64 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v63;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessBindingResponse";
          v120 = 1024;
          v121 = 1764;
          _os_log_impl(&dword_23D497000, v64, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Nomination accepted by controlled agent.", buf, 0x1Cu);
        }
      }
    }
  }

  if (*(a1 + 840) == 2)
  {
    v65 = GetSTUNAttr(a2, 32777);
    if (v65)
    {
      v66 = v65;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v115 = VRTraceErrorLogLevelToCSTR();
        v67 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v68 = *(v66 + 4);
          *buf = 136315906;
          *&buf[4] = v115;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessBindingResponse";
          v120 = 1024;
          v121 = 1770;
          v122 = 1024;
          LODWORD(v123) = v68;
          _os_log_impl(&dword_23D497000, v67, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Binding response has remote connection blob (%d).", buf, 0x22u);
        }
      }

      ICEProcessRemoteInterfaceChange(*a1, *(a1 + 148), *(v66 + 3), *(v66 + 4), v66[4], 0);
    }

    pthread_mutex_lock((a1 + 16));
    if (*(a1 + 896))
    {
      v69 = GetSTUNAttr(a2, 32778);
      if (v69)
      {
        v70 = v69;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v71 = VRTraceErrorLogLevelToCSTR();
          v72 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v73 = *(v70 + 2);
            *buf = 136315906;
            *&buf[4] = v71;
            *&buf[12] = 2080;
            *&buf[14] = "ProcessBindingResponse";
            v120 = 1024;
            v121 = 1782;
            v122 = 1024;
            LODWORD(v123) = v73;
            _os_log_impl(&dword_23D497000, v72, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Binding response has SKEMessage of length %d", buf, 0x22u);
          }
        }

        v74 = CFDataCreateWithBytesNoCopy(0, *(v70 + 2), *(v70 + 2), *MEMORY[0x277CBED00]);
        if (SKEState_SetBlob())
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ProcessBindingResponse_cold_2();
            }
          }
        }

        CFRelease(v74);
      }
    }

    pthread_mutex_unlock((a1 + 16));
  }

LABEL_95:
  v75 = v117 < 3 || v51;
  if (v75)
  {
    return 0;
  }

LABEL_99:
  GetICECandidate(v139, 6, SDWORD2(__dst[0]), v21, &v135, SWORD2(__dst[1]), &__dst[4], __dst[4]);
  v76 = *(a1 + 168);
  v77 = *(a1 + 192);
  v78 = *(a1 + 192);
  if (!IsNewCandidate(v76, v78, v139))
  {
    v93 = 0;
    if ((v21 & 0x100) == 0 || v25 < 0x6D)
    {
      goto LABEL_105;
    }

    *&v139[12] = HIDWORD(__dst[0]);
    *&v139[16] = __dst[10];
    if (v77 >= 1)
    {
      v98 = v76 + 12;
      while (*&v139[12] != *v98)
      {
        v98 = (v98 + 148);
        if (!--v77)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_104;
    }

LABEL_115:
    v99 = malloc_type_realloc(v76, 148 * (v78 + 1), 0x1000040C185D105uLL);
    *(a1 + 168) = v99;
    if (v99)
    {
      v100 = &v99[148 * *(a1 + 192)];
      v101 = *&v139[16];
      *v100 = *v139;
      *(v100 + 1) = v101;
      v102 = v140;
      v103 = v141;
      v104 = v143;
      *(v100 + 4) = v142;
      *(v100 + 5) = v104;
      *(v100 + 2) = v102;
      *(v100 + 3) = v103;
      v105 = v144;
      v106 = v145;
      v107 = v146;
      *(v100 + 36) = v147;
      *(v100 + 7) = v106;
      *(v100 + 8) = v107;
      *(v100 + 6) = v105;
      ++*(a1 + 192);
      ++*(a1 + 204);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v108 = VRTraceErrorLogLevelToCSTR();
        v109 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v110 = IPPORTToStringWithSize(v133, &v135, 0x36uLL);
          v111 = CANIDToString(v129, v100 + 3);
          v112 = *(a1 + 204);
          *buf = 136316418;
          *&buf[4] = v108;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessBindingResponse";
          v120 = 1024;
          v121 = 1847;
          v122 = 2080;
          v123 = v110;
          v124 = 2080;
          v125 = v111;
          v126 = 1024;
          LODWORD(v127) = v112;
          _os_log_impl(&dword_23D497000, v109, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tadd DERIVED-LOCAL candidate[%s] ID[%s], iLCVersion[%d] with duplicate IPPort.", buf, 0x36u);
        }
      }

      v93 = 1;
      goto LABEL_105;
    }

    return *__error() | 0xC0150000;
  }

  v79 = malloc_type_realloc(v76, 148 * v78 + 148, 0x1000040C185D105uLL);
  *(a1 + 168) = v79;
  if (!v79)
  {
    return *__error() | 0xC0150000;
  }

  *&v139[12] = HIDWORD(__dst[0]);
  *&v139[16] = __dst[10];
  v80 = &v79[148 * *(a1 + 192)];
  v81 = v144;
  v82 = v145;
  v83 = v146;
  *(v80 + 36) = v147;
  *(v80 + 7) = v82;
  *(v80 + 8) = v83;
  *(v80 + 6) = v81;
  v84 = v140;
  v85 = v141;
  v86 = v143;
  *(v80 + 4) = v142;
  *(v80 + 5) = v86;
  *(v80 + 2) = v84;
  *(v80 + 3) = v85;
  v87 = *&v139[16];
  *v80 = *v139;
  *(v80 + 1) = v87;
  ++*(a1 + 192);
  ++*(a1 + 204);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v88 = VRTraceErrorLogLevelToCSTR();
    v89 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v90 = IPPORTToStringWithSize(v133, &v135, 0x36uLL);
      v91 = CANIDToString(v129, v80 + 3);
      v92 = *(a1 + 204);
      *buf = 136316418;
      *&buf[4] = v88;
      *&buf[12] = 2080;
      *&buf[14] = "ProcessBindingResponse";
      v120 = 1024;
      v121 = 1824;
      v122 = 2080;
      v123 = v90;
      v124 = 2080;
      v125 = v91;
      v126 = 1024;
      LODWORD(v127) = v92;
      _os_log_impl(&dword_23D497000, v89, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tadd DERIVED-LOCAL candidate[%s] ID[%s], iLCVersion[%d].", buf, 0x36u);
    }
  }

LABEL_104:
  v93 = 0;
LABEL_105:
  v94 = *(a1 + 184);
  v95 = *(a1 + 200);
  v96 = IsNewCandidatePair(v94, v95, v139, &__dst[9] + 4);
  if ((v93 & 1) == 0 && !v96)
  {
    return 0;
  }

  v113 = malloc_type_realloc(v94, 400 * v95 + 400, 0x10200402E010713uLL);
  *(a1 + 184) = v113;
  if (!v113)
  {
    return 2148859907;
  }

  v114 = v113 + 400 * *(a1 + 200);
  *buf = 0;
  v26 = PairUpCandidate(v139, 1, (&__dst[9] + 4), 1, v114, 3, buf, __dst[23]);
  if ((v26 & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessBindingResponse_cold_4();
      }
    }
  }

  else if (*buf == 1)
  {
    *(v114 + 352) = v116;
    ++*(a1 + 200);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ProcessBindingResponse_cold_3();
    }
  }

  return v26;
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x28u);
}

uint64_t EQInit(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 1;
    pthread_mutex_init(a1, 0);
    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        EQInit_cold_1();
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t EQPush(uint64_t a1, double *a2, int a3)
{
  pthread_mutex_lock(a1);
  if (a2)
  {
    v7 = (a1 + 64);
    v6 = *(a1 + 64);
    v8 = *(a1 + 72);
    if (a3 == -1)
    {
      v9 = *(a1 + 72);
    }

    else
    {
      v9 = a3;
    }

    *a2 = v9;
    *(a1 + 72) = v8 + 1;
    if (v6)
    {
      v10 = a2[1];
      if (v10 < *(v6 + 8))
      {
LABEL_10:
        *(a2 + 3) = v6;
        *v7 = a2;
LABEL_18:
        pthread_mutex_unlock(a1);
        return *a2;
      }

      while (1)
      {
        v11 = v6;
        v6 = *(v6 + 24);
        if (!v6)
        {
          break;
        }

        if (v10 < *(v6 + 8))
        {
          v7 = (v11 + 24);
          goto LABEL_10;
        }
      }

      *(v11 + 24) = a2;
    }

    else
    {
      *(a1 + 64) = a2;
    }

    a2[3] = 0.0;
    goto LABEL_18;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      EQPush_cold_1();
    }
  }

  pthread_mutex_unlock(a1);
  return 0xFFFFFFFFLL;
}

uint64_t EQPop(pthread_mutex_t *a1, uint64_t *a2)
{
  pthread_mutex_lock(a1);
  sig = a1[1].__sig;
  if (sig)
  {
    *a2 = sig;
    a1[1].__sig = *(a1[1].__sig + 24);
  }

  else
  {
    *a2 = 0;
  }

  return pthread_mutex_unlock(a1);
}

double EQNextExpire(pthread_mutex_t *a1)
{
  pthread_mutex_lock(a1);
  sig = a1[1].__sig;
  pthread_mutex_unlock(a1);
  if (sig)
  {
    return *(a1[1].__sig + 8);
  }

  else
  {
    return 2147483650.0;
  }
}

double EQLastExpire(pthread_mutex_t *a1)
{
  pthread_mutex_lock(a1);
  sig = a1[1].__sig;
  if (sig)
  {
    do
    {
      v3 = sig;
      sig = *(sig + 24);
    }

    while (sig);
    pthread_mutex_unlock(a1);
    return *(v3 + 8);
  }

  else
  {
    pthread_mutex_unlock(a1);
    return 2147483650.0;
  }
}

pthread_mutex_t *FreeEventsMatchingPredicate(pthread_mutex_t *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    pthread_mutex_lock(result);
    v5 = v3 + 1;
    sig = v3[1].__sig;
    if (sig)
    {
      do
      {
        if ((*(a2 + 16))(a2, sig))
        {
          v5->__sig = sig[3];
          FreeEvent(sig);
        }

        else
        {
          v5 = (sig + 3);
        }

        sig = v5->__sig;
      }

      while (v5->__sig);
    }

    return pthread_mutex_unlock(v3);
  }

  return result;
}

void FreeEvent(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

void FreeEQ(pthread_mutex_t *a1)
{
  if (a1)
  {
    pthread_mutex_lock(a1);
    sig = a1[1].__sig;
    if (sig)
    {
      do
      {
        v3 = sig[3];
        FreeEvent(sig);
        sig = v3;
      }

      while (v3);
    }

    pthread_mutex_unlock(a1);
    pthread_mutex_destroy(a1);

    free(a1);
  }
}

uint64_t MakeAllocateRequest(_DWORD *a1, int a2, int a3, uint64_t a4, const char *a5, const void *a6)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v32[0] = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30 = v12;
  v31 = v12;
  v29 = -1431655766;
  v27 = 0;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  bzero(a1, 0x480uLL);
  *a1 = 196608;
  *(a1 + 3) = 1;
  a1[2] = 554869826;
  RelayTransIDFromDict = GetRelayTransIDFromDict(a6, &v28);
  if ((RelayTransIDFromDict & 0x80000000) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = &v28;
  }

  STUNGetTransID((a1 + 3), 3u, v14);
  if (a2 == 2)
  {
    a1[8] = 262159;
    v16 = a1 + 8;
    a1[10] = 1925598150;
    if (a5)
    {
      v17 = strlen(a5);
      v18 = 4 - (v17 & 3u);
      *(a1 + 44) = 6;
      *(a1 + 45) = 4 - (v17 & 3) + v17;
      v19 = malloc_type_calloc(1uLL, v18 + v17 + 1, 0x100004077774924uLL);
      *(a1 + 13) = v19;
      a1[24] = v18 + v17;
      memcpy(v19, a5, v17);
      memset((*(a1 + 13) + v18 + v17 - v18), 32, v18);
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v24 = &v16[14 * v20];
    *v24 = 262157;
    v24[2] = a3;
    v25 = &v16[14 * v20 + 14];
    *v25 = 1310728;
    v25[2] = 20;
    v21 = v20 + 2;
  }

  else if (a2 == 1)
  {
    a1[8] = 262169;
    a1[10] = 285212672;
    a1[22] = 524322;
    if ((GetReservationTokenFromDict(a6, &v27) & 0x80000000) != 0)
    {
      v15 = 1;
      v27 = 1;
    }

    else
    {
      v15 = v27;
    }

    *(a1 + 12) = v15;
    a1[36] = 2883606;
    *(a1 + 152) = 1;
    RelayTransIDFromDict = GetIPPortFromDict(a6, @"GKSRelayPeerRelayIP", @"GKSRelayPeerRelayPort", &v30);
    if ((RelayTransIDFromDict & 0x80000000) == 0)
    {
      v22 = v32 + 2;
      v23 = bswap32(DWORD1(v31));
LABEL_16:
      a1[44] = v23;
      *(a1 + 96) = *v22;
      a1[50] = 262157;
      a1[52] = a3;
      a1[64] = 1310728;
      a1[66] = 20;
      v21 = 5;
      goto LABEL_19;
    }

    if (a4)
    {
      v22 = (a4 + 36);
      v23 = *(a4 + 20);
      goto LABEL_16;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        MakeAllocateRequest_cold_1();
      }
    }

    v21 = 2;
  }

  else
  {
    v21 = 0;
    RelayTransIDFromDict = 2148859925;
  }

LABEL_19:
  a1[7] = v21;
  return RelayTransIDFromDict;
}

uint64_t MakeChannelBindRequest(_DWORD *a1, int a2, uint64_t a3, const void *a4)
{
  v35[3] = *MEMORY[0x277D85DE8];
  memset(v35, 170, 20);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = v8;
  v34 = v8;
  bzero(a1, 0x480uLL);
  *a1 = 589824;
  *(a1 + 3) = 1;
  a1[2] = 554869826;
  if ((GetRelayTransIDFromDict(a4, &v35[1]) & 0x80000000) != 0)
  {
    v9 = a1 + 3;
    v10 = 0;
  }

  else
  {
    v9 = a1 + 3;
    v10 = &v35[1];
  }

  STUNGetTransID(v9, 9u, v10);
  a1[8] = 262156;
  a1[10] = a2 << 16;
  a1[22] = 2883602;
  *(a1 + 96) = 1;
  IPPortFromDict = GetIPPortFromDict(a4, @"GKSRelayPeerRelayNatIP", @"GKSRelayPeerRelayNatPort", &v33);
  if ((IPPortFromDict & 0x80000000) == 0)
  {
    DWORD1(v34) = bswap32(DWORD1(v34));
    *&v32[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v31 = v12;
    *v32 = v12;
    v30 = v12;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315906;
        v23 = v13;
        v24 = 2080;
        v25 = "MakeChannelBindRequest";
        v26 = 1024;
        v27 = 160;
        v28 = 2080;
        v29 = IPPORTToStringWithSize(&v30, &v33, 0x36uLL);
        _os_log_impl(&dword_23D497000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Dictionary Peer [%s]", &v22, 0x26u);
      }
    }

    a1[30] = DWORD1(v34);
    v15 = WORD2(v35[0]);
LABEL_14:
    *(a1 + 68) = v15;
    v19 = 0;
    a1[36] = 1310728;
    a1[38] = 20;
    v20 = 3;
    goto LABEL_15;
  }

  if (a3)
  {
    *&v32[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v31 = v16;
    *v32 = v16;
    v30 = v16;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315906;
        v23 = v17;
        v24 = 2080;
        v25 = "MakeChannelBindRequest";
        v26 = 1024;
        v27 = 166;
        v28 = 2080;
        v29 = IPPORTToStringWithSize(&v30, a3, 0x36uLL);
        _os_log_impl(&dword_23D497000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Parameter Peer [%s]", &v22, 0x26u);
      }
    }

    a1[30] = *(a3 + 20);
    v15 = *(a3 + 36);
    goto LABEL_14;
  }

  v19 = IPPortFromDict;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      MakeChannelBindRequest_cold_1();
    }
  }

  v20 = 1;
LABEL_15:
  a1[7] = v20;
  return v19;
}

uint64_t MakeRefreshRequest(_DWORD *a1, int a2)
{
  bzero(a1, 0x480uLL);
  *a1 = 0x40000;
  *(a1 + 3) = 1;
  a1[2] = 554869826;
  STUNGetTransID((a1 + 3), 4u, 0);
  a1[10] = a2;
  *(a1 + 7) = 0x4000D00000001;
  return 0;
}

uint64_t RelayRefreshProc(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v140[145] = *MEMORY[0x277D85DE8];
  v117 = 0;
  bzero(v121, 0x5C0uLL);
  bzero(v120, 0x5C0uLL);
  bzero(v119, 0x5C0uLL);
  v4 = micro(v2, v3);
  v115 = 0;
  pthread_setname_np("com.apple.avconference.relay.refreshproc");
  if (!v1)
  {
    return 0;
  }

  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return -2146107390;
  }

  v6 = v5;
  v127 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v125 = v7;
  v126 = v7;
  v122 = v7;
  v123 = v7;
  v124 = 0xAAAAAAAAAAAAAAAALL;
  v116 = -1;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v10 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *v10;
    ErrorLogLevelForModule = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (ErrorLogLevelForModule)
    {
      v13 = *(v1 + 66);
      v14 = *(v1 + 9);
      v15 = *(v1 + 312);
      LODWORD(v140[0]) = 136316418;
      *(v140 + 4) = v11;
      WORD2(v140[1]) = 2080;
      *(&v140[1] + 6) = "RelayRefreshProc";
      HIWORD(v140[2]) = 1024;
      LODWORD(v140[3]) = 365;
      WORD2(v140[3]) = 1024;
      *(&v140[3] + 6) = v13;
      WORD1(v140[4]) = 1024;
      HIDWORD(v140[4]) = v14;
      LOWORD(v140[5]) = 1024;
      *(&v140[5] + 2) = v15;
      _os_log_impl(&dword_23D497000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RelayRefreshProc thread with pRB(%04X) started, call(%d), refresh(%04X).", v140, 0x2Eu);
    }
  }

  v16 = 0;
  v17 = 0;
  v18 = (v1[39] & 1) == 0;
  v19 = ((*(v1 + 78) >> 1) & 1) == 0;
  v20 = (v1 + 33);
  v21 = 0.0;
  v22 = 1472;
  v23 = 0.0;
  v24 = 1472;
LABEL_7:
  v26 = v18 && v19;
  v111 = v26;
  while (1)
  {
    v27 = micro(ErrorLogLevelForModule, v9);
    if (*(v6 + 448) || !*(v1 + 16))
    {
      goto LABEL_132;
    }

    v28 = v27;
    pthread_mutex_lock((v6 + 568));
    v29 = *(v6 + 632);
    if (!v29)
    {
LABEL_121:
      pthread_mutex_unlock((v6 + 568));
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_132;
      }

      v80 = VRTraceErrorLogLevelToCSTR();
      v81 = MEMORY[0x277CE5818];
      v82 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_133;
      }

      LODWORD(v140[0]) = 136315650;
      *(v140 + 4) = v80;
      WORD2(v140[1]) = 2080;
      *(&v140[1] + 6) = "RelayRefreshProc";
      HIWORD(v140[2]) = 1024;
      LODWORD(v140[3]) = 396;
      v83 = " [%s] %s:%d RelayRefreshProc: Already discarded";
      v84 = v140;
LABEL_124:
      _os_log_impl(&dword_23D497000, v82, OS_LOG_TYPE_DEFAULT, v83, v84, 0x1Cu);
      goto LABEL_133;
    }

    while (*(v29 + 36) != *(v1 + 9) || *(v29 + 264) != *v20)
    {
      v29 = *(v29 + 328);
      if (!v29)
      {
        goto LABEL_121;
      }
    }

    pthread_mutex_unlock((v6 + 568));
    if (v111)
    {
      *(v1 + 31) = v28;
      goto LABEL_132;
    }

    if (!v18 && v23 < v28)
    {
      v130 = v22;
      v30 = v22;
      if (v22 != 1472)
      {
LABEL_31:
        v36 = (v1[40])(*v1, *(v1 + 9), v121, v30, v1 + 124, v1 + 164, 0, 0);
        if ((v36 & 0x80000000) == 0)
        {
          *&v129[46] = 0xAAAAAAAAAAAAAAAALL;
          *&v37 = 0xAAAAAAAAAAAAAAAALL;
          *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v129[16] = v37;
          *&v129[32] = v37;
          *v129 = v37;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v38 = VRTraceErrorLogLevelToCSTR();
            v39 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v40 = IPPORTToStringWithSize(v129, v1 + 164, 0x36uLL);
              LODWORD(v140[0]) = 136315906;
              *(v140 + 4) = v38;
              WORD2(v140[1]) = 2080;
              *(&v140[1] + 6) = "RefreshAllocation";
              HIWORD(v140[2]) = 1024;
              LODWORD(v140[3]) = 263;
              WORD2(v140[3]) = 2080;
              *(&v140[3] + 6) = v40;
              _os_log_impl(&dword_23D497000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Send REFRESH_REQUEST to [%s].", v140, 0x26u);
            }
          }

          goto LABEL_48;
        }

        v41 = v36;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v106 = VRTraceErrorLogLevelToCSTR();
          v42 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            LODWORD(v140[0]) = 136316162;
            *(v140 + 4) = v106;
            WORD2(v140[1]) = 2080;
            *(&v140[1] + 6) = "RefreshAllocation";
            HIWORD(v140[2]) = 1024;
            LODWORD(v140[3]) = 257;
            WORD2(v140[3]) = 1024;
            *(&v140[3] + 6) = 257;
            WORD1(v140[4]) = 1024;
            HIDWORD(v140[4]) = v41;
            _os_log_error_impl(&dword_23D497000, v42, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: UDPSENDCALLBACK failed (%08X)", v140, 0x28u);
          }
        }

LABEL_47:
        if (v41 != -1072037876)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v107 = VRTraceErrorLogLevelToCSTR();
            v51 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v140[0]) = 136316162;
              *(v140 + 4) = v107;
              WORD2(v140[1]) = 2080;
              *(&v140[1] + 6) = "RelayRefreshProc";
              HIWORD(v140[2]) = 1024;
              LODWORD(v140[3]) = 408;
              WORD2(v140[3]) = 1024;
              *(&v140[3] + 6) = 408;
              WORD1(v140[4]) = 1024;
              HIDWORD(v140[4]) = v41;
              _os_log_error_impl(&dword_23D497000, v51, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: RefreshAllocation failed (%08X)", v140, 0x28u);
            }
          }

          v16 = 1;
          goto LABEL_53;
        }

LABEL_48:
        v16 = 8;
LABEL_53:
        RecordRelayDetailedCode(v6, *(v1 + 9), v16);
        v23 = v28 + 0.5;
        goto LABEL_54;
      }

      bzero(v140, 0x480uLL);
      v31 = *(v1 + 16);
      if (v31 == 1)
      {
        WORD1(v140[0]) = 4;
        HIWORD(v140[0]) = 1;
        LODWORD(v140[1]) = 554869826;
        STUNGetTransID(&v140[1] + 4, 4u, 0);
        LODWORD(v140[5]) = 60;
        *(&v140[3] + 4) = 0x4000D00000001;
      }

      else
      {
        Request = MakeAllocateRequest(v140, v31, 60, v1 + 164, v1 + 57, 0);
        if (Request < 0)
        {
          v41 = Request;
          FreeSTUNMessage(v140);
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_46;
          }

          v49 = VRTraceErrorLogLevelToCSTR();
          v50 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_46;
          }

          *v128 = 136316162;
          *&v128[4] = v49;
          *&v128[12] = 2080;
          *&v128[14] = "RefreshAllocation";
          *&v128[22] = 1024;
          *&v128[24] = 230;
          *&v128[28] = 1024;
          *&v128[30] = 230;
          *&v128[34] = 1024;
          *&v128[36] = v41;
          v45 = v50;
          v46 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: MakeAllocateRequest failed (%08X)";
          goto LABEL_92;
        }
      }

      v34 = STUNEncodeMessage(v140, v121, &v130, 0, v32);
      if (v34 < 0)
      {
        v41 = v34;
        FreeSTUNMessage(v140);
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_46;
        }

        v43 = VRTraceErrorLogLevelToCSTR();
        v44 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        *v128 = 136316162;
        *&v128[4] = v43;
        *&v128[12] = 2080;
        *&v128[14] = "RefreshAllocation";
        *&v128[22] = 1024;
        *&v128[24] = 238;
        *&v128[28] = 1024;
        *&v128[30] = 238;
        *&v128[34] = 1024;
        *&v128[36] = v41;
        v45 = v44;
        v46 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: STUNEncodeMessage failed (%08X)";
      }

      else
      {
        v35 = SaveSTUNRequest(&v117, v121, v130, v1 + 124, (v1 + 164), 1);
        if ((v35 & 0x80000000) == 0)
        {
          v22 = v130;
          FreeSTUNMessage(v140);
          v30 = v130;
          goto LABEL_31;
        }

        v41 = v35;
        FreeSTUNMessage(v140);
        if (VRTraceGetErrorLogLevelForModule() < 3 || (v47 = VRTraceErrorLogLevelToCSTR(), v48 = *MEMORY[0x277CE5818], !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
        {
LABEL_46:
          v22 = 1472;
          goto LABEL_47;
        }

        *v128 = 136316162;
        *&v128[4] = v47;
        *&v128[12] = 2080;
        *&v128[14] = "RefreshAllocation";
        *&v128[22] = 1024;
        *&v128[24] = 246;
        *&v128[28] = 1024;
        *&v128[30] = 246;
        *&v128[34] = 1024;
        *&v128[36] = v41;
        v45 = v48;
        v46 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: SaveSTUNRequest failed (%08X)";
      }

LABEL_92:
      _os_log_error_impl(&dword_23D497000, v45, OS_LOG_TYPE_ERROR, v46, v128, 0x28u);
      goto LABEL_46;
    }

LABEL_54:
    if (!v19 && v21 < v28)
    {
      v52 = v1[32];
      v118 = v24;
      v53 = v24;
      if (v24 != 1472)
      {
LABEL_61:
        v58 = (v1[40])(*v1, *(v1 + 9), v120, v53, v1 + 124, v1 + 164, 0, 0);
        if ((v58 & 0x80000000) == 0)
        {
          *&v129[46] = 0xAAAAAAAAAAAAAAAALL;
          *&v59 = 0xAAAAAAAAAAAAAAAALL;
          *(&v59 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v129[16] = v59;
          *&v129[32] = v59;
          *v129 = v59;
          *v128 = v59;
          *&v128[16] = v59;
          *&v128[32] = v59;
          *&v128[46] = 0xAAAAAAAAAAAAAAAALL;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v60 = VRTraceErrorLogLevelToCSTR();
            v61 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v108 = IPPORTToStringWithSize(v128, (v1 + 34), 0x36uLL);
              v62 = IPPORTToStringWithSize(v129, v1 + 164, 0x36uLL);
              LODWORD(v140[0]) = 136316162;
              *(v140 + 4) = v60;
              WORD2(v140[1]) = 2080;
              *(&v140[1] + 6) = "RefreshChannelBind";
              HIWORD(v140[2]) = 1024;
              LODWORD(v140[3]) = 316;
              WORD2(v140[3]) = 2080;
              *(&v140[3] + 6) = v108;
              HIWORD(v140[4]) = 2080;
              v140[5] = v62;
              _os_log_impl(&dword_23D497000, v61, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Send CHANNELBIND_REQUEST [%s] to [%s].", v140, 0x30u);
            }
          }

          goto LABEL_80;
        }

        v63 = v58;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v109 = VRTraceErrorLogLevelToCSTR();
          v64 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            LODWORD(v140[0]) = 136316162;
            *(v140 + 4) = v109;
            WORD2(v140[1]) = 2080;
            *(&v140[1] + 6) = "RefreshChannelBind";
            HIWORD(v140[2]) = 1024;
            LODWORD(v140[3]) = 306;
            WORD2(v140[3]) = 1024;
            *(&v140[3] + 6) = 306;
            WORD1(v140[4]) = 1024;
            HIDWORD(v140[4]) = v63;
            _os_log_error_impl(&dword_23D497000, v64, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: UDPSENDCALLBACK failed (%08X)", v140, 0x28u);
          }
        }

LABEL_79:
        if (v63 != -1072037876)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v110 = VRTraceErrorLogLevelToCSTR();
            v73 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v140[0]) = 136316162;
              *(v140 + 4) = v110;
              WORD2(v140[1]) = 2080;
              *(&v140[1] + 6) = "RelayRefreshProc";
              HIWORD(v140[2]) = 1024;
              LODWORD(v140[3]) = 422;
              WORD2(v140[3]) = 1024;
              *(&v140[3] + 6) = 422;
              WORD1(v140[4]) = 1024;
              HIDWORD(v140[4]) = v63;
              _os_log_error_impl(&dword_23D497000, v73, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: RefreshChannelBind failed (%08X)", v140, 0x28u);
            }
          }

          v16 = 2;
          goto LABEL_85;
        }

LABEL_80:
        v16 = 9;
LABEL_85:
        RecordRelayDetailedCode(v6, *(v1 + 9), v16);
        v21 = v28 + 0.5;
        goto LABEL_86;
      }

      bzero(v140, 0x480uLL);
      ChannelBindRequest = MakeChannelBindRequest(v140, *v20, (v1 + 34), v52);
      if (ChannelBindRequest < 0)
      {
        v63 = ChannelBindRequest;
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_78;
        }

        v65 = VRTraceErrorLogLevelToCSTR();
        v66 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_78;
        }

        v130 = 136316162;
        v131 = v65;
        v132 = 2080;
        v133 = "RefreshChannelBind";
        v134 = 1024;
        v135 = 281;
        v136 = 1024;
        v137 = 281;
        v138 = 1024;
        v139 = v63;
        v67 = v66;
        v68 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: MakeChannelBindRequest failed (%08X)";
      }

      else
      {
        v56 = STUNEncodeMessage(v140, v120, &v118, v52, v55);
        if (v56 < 0)
        {
          v63 = v56;
          FreeSTUNMessage(v140);
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_78;
          }

          v69 = VRTraceErrorLogLevelToCSTR();
          v70 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_78;
          }

          v130 = 136316162;
          v131 = v69;
          v132 = 2080;
          v133 = "RefreshChannelBind";
          v134 = 1024;
          v135 = 288;
          v136 = 1024;
          v137 = 288;
          v138 = 1024;
          v139 = v63;
          v67 = v70;
          v68 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: STUNEncodeMessage failed (%08X)";
        }

        else
        {
          v57 = SaveSTUNRequest(&v117, v120, v118, v1 + 124, (v1 + 164), 1);
          if ((v57 & 0x80000000) == 0)
          {
            v24 = v118;
            FreeSTUNMessage(v140);
            v53 = v118;
            goto LABEL_61;
          }

          v63 = v57;
          if (VRTraceGetErrorLogLevelForModule() < 3 || (v71 = VRTraceErrorLogLevelToCSTR(), v72 = *MEMORY[0x277CE5818], !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
          {
LABEL_78:
            v24 = 1472;
            goto LABEL_79;
          }

          v130 = 136316162;
          v131 = v71;
          v132 = 2080;
          v133 = "RefreshChannelBind";
          v134 = 1024;
          v135 = 295;
          v136 = 1024;
          v137 = 295;
          v138 = 1024;
          v139 = v63;
          v67 = v72;
          v68 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: SaveSTUNRequest failed (%08X)";
        }
      }

      _os_log_error_impl(&dword_23D497000, v67, OS_LOG_TYPE_ERROR, v68, &v130, 0x28u);
      goto LABEL_78;
    }

LABEL_86:
    v127 = 0;
    v125 = 0u;
    v126 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0;
    ErrorLogLevelForModule = ICERecvUDPPacketWithTimeout(v6, v117, *(v1 + 9), v119, &v115, &v125, &v122, &v116, 500);
    if ((ErrorLogLevelForModule & 0x80000000) == 0)
    {
      memset(v140, 170, 0x480uLL);
      v17 = ParseSTUNMessage(v119, v115, v140);
      if ((v17 & 0x80000000) == 0)
      {
        if (LOWORD(v140[0]) != 272)
        {
          if (LOWORD(v140[0]) == 256)
          {
            if (WORD1(v140[0]) == 9)
            {
              if (v16 == 5)
              {
                v16 = 7;
              }

              else
              {
                v16 = 6;
              }

              RecordRelayDetailedCode(v6, *(v1 + 9), v16);
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v114 = VRTraceErrorLogLevelToCSTR();
                v77 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v78 = *v20;
                  *v129 = 136315906;
                  *&v129[4] = v114;
                  *&v129[12] = 2080;
                  *&v129[14] = "RelayRefreshProc";
                  *&v129[22] = 1024;
                  *&v129[24] = 491;
                  *&v129[28] = 1024;
                  *&v129[30] = v78;
                  _os_log_impl(&dword_23D497000, v77, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received CHANNELBIND_RESPONSE for %04X, channelbind refresh done!\n", v129, 0x22u);
                }
              }

              v19 = 1;
            }

            else if (WORD1(v140[0]) == 4)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v112 = VRTraceErrorLogLevelToCSTR();
                v74 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v75 = *v20;
                  *v129 = 136315906;
                  *&v129[4] = v112;
                  *&v129[12] = 2080;
                  *&v129[14] = "RelayRefreshProc";
                  *&v129[22] = 1024;
                  *&v129[24] = 473;
                  *&v129[28] = 1024;
                  *&v129[30] = v75;
                  _os_log_impl(&dword_23D497000, v74, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received REFRESH_RESPONSE for %04X, allocation refresh done!\n", v129, 0x22u);
                }
              }

              if (v16 == 6)
              {
                v16 = 7;
              }

              else
              {
                v16 = 5;
              }

              RecordRelayDetailedCode(v6, *(v1 + 9), v16);
              v18 = 1;
            }
          }

          goto LABEL_119;
        }

        if (WORD1(v140[0]) == 9)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v99 = VRTraceErrorLogLevelToCSTR();
            v100 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              v105 = *v20;
              *v129 = 136316162;
              *&v129[4] = v99;
              *&v129[12] = 2080;
              *&v129[14] = "RelayRefreshProc";
              *&v129[22] = 1024;
              *&v129[24] = 514;
              *&v129[28] = 1024;
              *&v129[30] = 514;
              *&v129[34] = 1024;
              *&v129[36] = v105;
              _os_log_error_impl(&dword_23D497000, v100, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: Received CHANNEL_BIND_ERROR_RESPONSE! Tear down channel#[%04X]", v129, 0x28u);
            }
          }

          v97 = 12;
          v98 = 11;
        }

        else
        {
          if (WORD1(v140[0]) != 4)
          {
LABEL_119:
            FreeSTUNMessage(v140);
            goto LABEL_7;
          }

          v94 = VRTraceGetErrorLogLevelForModule();
          if (v94 >= 3)
          {
            v95 = VRTraceErrorLogLevelToCSTR();
            v96 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              v104 = *v20;
              *v129 = 136316162;
              *&v129[4] = v95;
              *&v129[12] = 2080;
              *&v129[14] = "RelayRefreshProc";
              *&v129[22] = 1024;
              *&v129[24] = 502;
              *&v129[28] = 1024;
              *&v129[30] = 502;
              *&v129[34] = 1024;
              *&v129[36] = v104;
              _os_log_error_impl(&dword_23D497000, v96, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: Received REFRESH_ERROR_RESPONSE! Tear down channel#[%04X]", v129, 0x28u);
            }
          }

          v97 = 11;
          v98 = 12;
        }

        if (v16 == v98)
        {
          v101 = 13;
        }

        else
        {
          v101 = v97;
        }

        RecordRelayDetailedCode(v6, *(v1 + 9), v101);
        DiscardOneRelayBindingWithChannelNumber(v6, *(v1 + 9), *(v1 + 66));
        FreeSTUNMessage(v140);
        v102 = VRTraceGetErrorLogLevelForModule();
        v81 = MEMORY[0x277CE5818];
        if (v102 <= 6)
        {
          goto LABEL_133;
        }

        v103 = VRTraceErrorLogLevelToCSTR();
        v82 = *v81;
        if (!os_log_type_enabled(*v81, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_133;
        }

        *v129 = 136315650;
        *&v129[4] = v103;
        *&v129[12] = 2080;
        *&v129[14] = "RelayRefreshProc";
        *&v129[22] = 1024;
        *&v129[24] = 536;
        v83 = " [%s] %s:%d RelayRefreshProc ended with error response from the relay server";
        v84 = v129;
        goto LABEL_124;
      }

      v16 = 4;
      RecordRelayDetailedCode(v6, *(v1 + 9), 4);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 3)
      {
        v113 = VRTraceErrorLogLevelToCSTR();
        v76 = *MEMORY[0x277CE5818];
        ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
        if (ErrorLogLevelForModule)
        {
          *v129 = 136315906;
          *&v129[4] = v113;
          *&v129[12] = 2080;
          *&v129[14] = "RelayRefreshProc";
          *&v129[22] = 1024;
          *&v129[24] = 463;
          *&v129[28] = 1024;
          *&v129[30] = 463;
          _os_log_error_impl(&dword_23D497000, v76, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: RelayRefreshProc: Parse STUN message error", v129, 0x22u);
        }

        v16 = 4;
      }

      goto LABEL_7;
    }

    v17 = ErrorLogLevelForModule;
    if (ErrorLogLevelForModule > 0x1Eu || ((1 << ErrorLogLevelForModule) & 0x40801000) == 0)
    {
      break;
    }

    if ((v28 - v4) >= 10)
    {
      RecordRelayDetailedCode(v6, *(v1 + 9), 10);
      v85 = VRTraceGetErrorLogLevelForModule();
      v81 = MEMORY[0x277CE5818];
      if (v85 >= 3)
      {
        v86 = VRTraceErrorLogLevelToCSTR();
        v87 = *v81;
        if (os_log_type_enabled(*v81, OS_LOG_TYPE_ERROR))
        {
          RelayRefreshProc_cold_1(v86, (v1 + 33), v87);
        }
      }

      ICERemoveOneRelayBeat(v6, v1);
      v17 = -2146107369;
      goto LABEL_133;
    }
  }

  RecordRelayDetailedCode(v6, *(v1 + 9), 14);
LABEL_132:
  v81 = MEMORY[0x277CE5818];
LABEL_133:
  v88 = v117;
  if (v117)
  {
    do
    {
      v89 = v88[198];
      free(v88);
      v117 = v89;
      v88 = v89;
    }

    while (v89);
  }

  v117 = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v90 = VRTraceErrorLogLevelToCSTR();
    v91 = *v81;
    if (os_log_type_enabled(*v81, OS_LOG_TYPE_DEFAULT))
    {
      v92 = *v20;
      LODWORD(v140[0]) = 136316162;
      *(v140 + 4) = v90;
      WORD2(v140[1]) = 2080;
      *(&v140[1] + 6) = "RelayRefreshProc";
      HIWORD(v140[2]) = 1024;
      LODWORD(v140[3]) = 549;
      WORD2(v140[3]) = 1024;
      *(&v140[3] + 6) = v92;
      WORD1(v140[4]) = 1024;
      HIDWORD(v140[4]) = v17;
      _os_log_impl(&dword_23D497000, v91, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RelayRefreshProc thread with pRB(%04X) ended(%08X).", v140, 0x28u);
    }
  }

  CheckOutHandleDebug();
  v93 = v1[32];
  if (v93)
  {
    CFRelease(v93);
  }

  free(v1);
  return v17;
}

uint64_t RecordRelayDetailedCode(uint64_t a1, int a2, int a3)
{
  pthread_mutex_lock((a1 + 568));
  v6 = *(a1 + 632);
  if (v6)
  {
    while (*(v6 + 36) != a2)
    {
      v6 = *(v6 + 328);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    *(v6 + 268) = a3;
  }

LABEL_6:

  return pthread_mutex_unlock((a1 + 568));
}

uint64_t RelayDiscardProc(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v83 = *MEMORY[0x277D85DE8];
  v64 = 0;
  bzero(v67, 0x5C0uLL);
  bzero(v66, 0x5C0uLL);
  v4 = micro(v2, v3);
  pthread_setname_np("com.apple.avconference.relay.discardproc");
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return -2146107390;
  }

  v6 = v5;
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v71 = v7;
  v72 = v7;
  v68 = v7;
  v69 = v7;
  v70 = 0xAAAAAAAAAAAAAAAALL;
  v63 = -1;
  v62 = -1431655766;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (ErrorLogLevelForModule >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
    if (ErrorLogLevelForModule)
    {
      v12 = *(v1 + 3);
      *buf = 136315906;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = "RelayDiscardProc";
      *&buf[22] = 1024;
      *&buf[24] = 638;
      *&buf[28] = 2048;
      *&buf[30] = v12;
      _os_log_impl(&dword_23D497000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RelayDiscardProc thread(%p) started.", buf, 0x26u);
    }
  }

  v13 = micro(ErrorLogLevelForModule, v9);
  if (!*(v6 + 448))
  {
    v25 = v13;
    v14 = 0;
    v26 = 0.0;
    v27 = 1472;
    while (1)
    {
      if (*(v1 + 16) != 1)
      {
        goto LABEL_7;
      }

      if (v26 < v25)
      {
        break;
      }

LABEL_44:
      v73 = 0;
      v71 = 0u;
      v72 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0;
      v48 = ICERecvUDPPacketWithTimeout(v6, v64, v1[9], v66, &v62, &v71, &v68, &v63, ((v26 - v25) * 1000.0));
      if ((v48 & 0x80000000) != 0)
      {
        v14 = v48;
        if (v48 > 0x1Eu || ((1 << v48) & 0x40801000) == 0)
        {
          goto LABEL_7;
        }

        if ((micro(v48, v49) - v4) >= 10)
        {
          v14 = -2146107369;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              RelayDiscardProc_cold_1();
            }
          }

          goto LABEL_7;
        }
      }

      else
      {
        memset(buf, 170, 0x480uLL);
        v50 = ParseSTUNMessage(v66, v62, buf);
        v14 = v50;
        if ((v50 & 0x80000000) == 0)
        {
          if (*buf == 272)
          {
            if (*&buf[2] == 4 && VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v58 = VRTraceErrorLogLevelToCSTR();
              v59 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                *v74 = 136315906;
                v75 = v58;
                v76 = 2080;
                v77 = "RelayDiscardProc";
                v78 = 1024;
                v79 = 710;
                v80 = 1024;
                *v81 = 710;
                _os_log_error_impl(&dword_23D497000, v59, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: Received REFRESH_ERROR_RESPONSE!", v74, 0x22u);
              }
            }
          }

          else if (*buf == 256 && *&buf[2] == 4)
          {
            STUNAttr = GetSTUNAttr(buf, 13);
            if (STUNAttr)
            {
              if (!*(STUNAttr + 2))
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v53 = VRTraceErrorLogLevelToCSTR();
                  v54 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    *v74 = 136315650;
                    v75 = v53;
                    v76 = 2080;
                    v77 = "RelayDiscardProc";
                    v78 = 1024;
                    v79 = 697;
                    _os_log_impl(&dword_23D497000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received REFRESH_RESPONSE, allocation discarded!\n", v74, 0x1Cu);
                  }
                }

                v55 = 0;
LABEL_66:
                FreeSTUNMessage(buf);
                v57 = micro(v60, v61);
                if ((v55 & 1) == 0)
                {
                  goto LABEL_7;
                }

                goto LABEL_67;
              }
            }
          }

          v55 = 1;
          goto LABEL_66;
        }
      }

      v57 = micro(v50, v51);
LABEL_67:
      v25 = v57;
      if (*(v6 + 448))
      {
        goto LABEL_7;
      }
    }

    v65 = v27;
    if (v27 != 1472)
    {
      goto LABEL_26;
    }

    bzero(buf, 0x480uLL);
    *&buf[2] = 4;
    *&buf[6] = 1;
    *&buf[8] = 554869826;
    STUNGetTransID(&buf[12], 4u, 0);
    *&buf[40] = 0;
    *&buf[28] = 0x4000D00000001;
    v29 = STUNEncodeMessage(buf, v67, &v65, 0, v28);
    if (v29 < 0)
    {
      v37 = v29;
      FreeSTUNMessage(buf);
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_39;
      }

      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *v74 = 136316162;
      v75 = v38;
      v76 = 2080;
      v77 = "DiscardAllocation";
      v78 = 1024;
      v79 = 583;
      v80 = 1024;
      *v81 = 583;
      *&v81[4] = 1024;
      *&v81[6] = v37;
      v40 = v39;
      v41 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: STUNEncodeMessage failed (%08X)";
    }

    else
    {
      v30 = SaveSTUNRequest(&v64, v67, v65, (v1 + 31), (v1 + 41), 1);
      if ((v30 & 0x80000000) == 0)
      {
        v27 = v65;
        FreeSTUNMessage(buf);
LABEL_26:
        v31 = *(v1 + 40);
        if (!v31)
        {
LABEL_43:
          v26 = v25 + 1.0;
          goto LABEL_44;
        }

        v32 = v31(*v1, v1[9], v67, v65, v1 + 31, v1 + 41, 0, 0);
        if ((v32 & 0x80000000) == 0)
        {
          *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
          *&v33 = 0xAAAAAAAAAAAAAAAALL;
          *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&buf[16] = v33;
          *&buf[32] = v33;
          *buf = v33;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v34 = VRTraceErrorLogLevelToCSTR();
            v35 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v36 = IPPORTToStringWithSize(buf, (v1 + 41), 0x36uLL);
              *v74 = 136315906;
              v75 = v34;
              v76 = 2080;
              v77 = "DiscardAllocation";
              v78 = 1024;
              v79 = 607;
              v80 = 2080;
              *v81 = v36;
              _os_log_impl(&dword_23D497000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Send REFRESH_REQUEST with LT 0 to [%s].", v74, 0x26u);
            }
          }

          goto LABEL_43;
        }

        v37 = v32;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v42 = VRTraceErrorLogLevelToCSTR();
          v43 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *&buf[4] = v42;
            *&buf[12] = 2080;
            *&buf[14] = "DiscardAllocation";
            *&buf[22] = 1024;
            *&buf[24] = 601;
            *&buf[28] = 1024;
            *&buf[30] = 601;
            *&buf[34] = 1024;
            *&buf[36] = v37;
            _os_log_error_impl(&dword_23D497000, v43, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: UDPSENDCALLBACK failed (%08X)", buf, 0x28u);
          }
        }

LABEL_40:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v46 = VRTraceErrorLogLevelToCSTR();
          v47 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *&buf[4] = v46;
            *&buf[12] = 2080;
            *&buf[14] = "RelayDiscardProc";
            *&buf[22] = 1024;
            *&buf[24] = 656;
            *&buf[28] = 1024;
            *&buf[30] = 656;
            *&buf[34] = 1024;
            *&buf[36] = v37;
            _os_log_error_impl(&dword_23D497000, v47, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: DiscardAllocation failed (%08X)", buf, 0x28u);
          }
        }

        goto LABEL_43;
      }

      v37 = v30;
      if (VRTraceGetErrorLogLevelForModule() < 3 || (v44 = VRTraceErrorLogLevelToCSTR(), v45 = *MEMORY[0x277CE5818], !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
      {
LABEL_39:
        v27 = 1472;
        goto LABEL_40;
      }

      *v74 = 136316162;
      v75 = v44;
      v76 = 2080;
      v77 = "DiscardAllocation";
      v78 = 1024;
      v79 = 590;
      v80 = 1024;
      *v81 = 590;
      *&v81[4] = 1024;
      *&v81[6] = v37;
      v40 = v45;
      v41 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: SaveSTUNRequest failed (%08X)";
    }

    _os_log_error_impl(&dword_23D497000, v40, OS_LOG_TYPE_ERROR, v41, v74, 0x28u);
    goto LABEL_39;
  }

  v14 = 0;
LABEL_7:
  v15 = v64;
  if (v64)
  {
    do
    {
      v16 = v15[198];
      free(v15);
      v64 = v16;
      v15 = v16;
    }

    while (v16);
  }

  v64 = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v1[66];
      *buf = 136315906;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = "RelayDiscardProc";
      *&buf[22] = 1024;
      *&buf[24] = 732;
      *&buf[28] = 1024;
      *&buf[30] = v19;
      _os_log_impl(&dword_23D497000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Relay channel [%04X] torn down", buf, 0x22u);
    }
  }

  v20 = *(v1 + 32);
  if (v20)
  {
    CFRelease(v20);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v1 + 3);
      *buf = 136316162;
      *&buf[4] = v21;
      *&buf[12] = 2080;
      *&buf[14] = "RelayDiscardProc";
      *&buf[22] = 1024;
      *&buf[24] = 736;
      *&buf[28] = 2048;
      *&buf[30] = v23;
      *&buf[38] = 1024;
      *&buf[40] = v14;
      _os_log_impl(&dword_23D497000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RelayDiscardProc thread(%p) ended(%08X).", buf, 0x2Cu);
    }
  }

  free(v1);
  CheckOutHandleDebug();
  return v14;
}

uint64_t ProcessAllocateResponse(uint64_t a1, int a2, _DWORD *a3, uint64_t a4, uint64_t a5, __CFDictionary *a6, int a7)
{
  v43 = *MEMORY[0x277D85DE8];
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a5 + 32) = 0;
  v13 = 2148859938;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  STUNAttr = GetSTUNAttr(a1, 13);
  v15 = 2148859938;
  if (STUNAttr)
  {
    v15 = 0;
    *a3 = *(STUNAttr + 2);
  }

  if (a2 == 1)
  {
    v16 = GetSTUNAttr(a1, 32);
    if (v16)
    {
      v17 = *(v16 + 6);
      v18 = *(v16 + 14);
      *(a4 + 32) = *(v16 + 22);
      *a4 = v17;
      *(a4 + 16) = v18;
      *&v42[14] = 0xAAAAAAAAAAAAAAAALL;
      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v41[1] = v17;
      *v42 = v17;
      v41[0] = v17;
      valuePtr = *(a4 + 36);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v34 = v19;
          v35 = 2080;
          v36 = "ProcessAllocateResponse";
          v37 = 1024;
          v38 = 779;
          v39 = 2080;
          v40 = IPPORTToStringWithSize(v41, a4, 0x36uLL);
          _os_log_impl(&dword_23D497000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ProcessAllocateResponse: external addr [%s]", buf, 0x26u);
        }
      }

      if (!a7)
      {
        return v15;
      }

      v21 = CFDataCreate(0, (a4 + 20), 4);
      if (v21)
      {
        v22 = v21;
        CFDictionarySetValue(a6, @"GKSRelaySelfRelayNatIP", v21);
        CFRelease(v22);
      }

      v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v23)
      {
        v24 = v23;
        CFDictionarySetValue(a6, @"GKSRelaySelfRelayNatPort", v23);
        CFRelease(v24);
      }

      v25 = GetSTUNAttr(a1, 8);
      if (v25)
      {
        v26 = CFDataCreate(0, *(v25 + 2), *(v25 + 2));
        if (v26)
        {
          v27 = v26;
          CFDictionarySetValue(a6, @"GKRelayToken", v26);
          CFRelease(v27);
        }

        return v15;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ProcessAllocateResponse_cold_1();
        }
      }

      return 0;
    }
  }

  else
  {
    v28 = GetSTUNAttr(a1, 1);
    if (v28)
    {
      v29 = *(v28 + 6);
      v30 = *(v28 + 14);
      *(a4 + 32) = *(v28 + 22);
      *a4 = v29;
      *(a4 + 16) = v30;
      return v15;
    }
  }

  return v13;
}

uint64_t ProcessSendResponse(uint64_t a1)
{
  v2 = 2148859938;
  if (GetSTUNAttr(a1, 15))
  {
    if (GetSTUNAttr(a1, 8))
    {
      return 0;
    }

    else
    {
      return 2148859938;
    }
  }

  return v2;
}

uint64_t ProcessSetActiveDstResponse(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = 2148859938;
  if (GetSTUNAttr(a1, 15) && GetSTUNAttr(a1, 8))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v3;
        v8 = 2080;
        v9 = "ProcessSetActiveDstResponse";
        v10 = 1024;
        v11 = 861;
        _os_log_impl(&dword_23D497000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** SET_ACTIVE_DESTINATION_RESPONSE", &v6, 0x1Cu);
      }
    }

    return 0;
  }

  return v2;
}

uint64_t ProcessCreatePermissionResponse()
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315650;
      v4 = v0;
      v5 = 2080;
      v6 = "ProcessCreatePermissionResponse";
      v7 = 1024;
      v8 = 868;
      _os_log_impl(&dword_23D497000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** CREATE_PERMISSION_RESPONSE", &v3, 0x1Cu);
    }
  }

  return 0;
}

uint64_t ProcessAllocateErrorResponse(uint64_t a1, _WORD *a2)
{
  v3 = ProcessErrorResponse(a1, a2);
  if (*a2 == 437 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ProcessAllocateErrorResponse_cold_1();
    }
  }

  return v3;
}

uint64_t ProcessErrorResponse(uint64_t a1, _WORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  STUNAttr = GetSTUNAttr(a1, 9);
  if (!STUNAttr)
  {
    return 2148859938;
  }

  v4 = STUNAttr;
  v5 = *(STUNAttr + 9) + 100 * *(STUNAttr + 8);
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = " - may happen during relay teardown";
      v9 = *(v4 + 2);
      if (v5 != 437)
      {
        v8 = &unk_23D4C9CFB;
      }

      v11 = 136316674;
      v12 = v6;
      v13 = 2080;
      v14 = "ProcessErrorResponse";
      v15 = 1024;
      v16 = 889;
      v17 = 1024;
      v18 = 889;
      v19 = 1024;
      v20 = v5;
      v21 = 2080;
      v22 = v9;
      v23 = 2080;
      v24 = v8;
      _os_log_impl(&dword_23D497000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: Error (%d): %s%s", &v11, 0x3Cu);
    }
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t ProcessSendErrorResponse(uint64_t a1, _WORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v4;
      v9 = 2080;
      v10 = "ProcessSendErrorResponse";
      v11 = 1024;
      v12 = 907;
      _os_log_impl(&dword_23D497000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** SET_SEND_ERROR_RESPONSE", &v7, 0x1Cu);
    }
  }

  return ProcessErrorResponse(a1, a2);
}

uint64_t ProcessSetActiveDstErrorResponse(uint64_t a1, _WORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v4;
      v9 = 2080;
      v10 = "ProcessSetActiveDstErrorResponse";
      v11 = 1024;
      v12 = 913;
      _os_log_impl(&dword_23D497000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** SET_ACTIVE_DESTINATION_ERROR_RESPONSE", &v7, 0x1Cu);
    }
  }

  return ProcessErrorResponse(a1, a2);
}

uint64_t ProcessPermissionErrorResponse(uint64_t a1, _WORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v4;
      v9 = 2080;
      v10 = "ProcessPermissionErrorResponse";
      v11 = 1024;
      v12 = 919;
      _os_log_impl(&dword_23D497000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** CREATE_PERMISSION_ERROR_RESPONSE", &v7, 0x1Cu);
    }
  }

  return ProcessErrorResponse(a1, a2);
}

uint64_t ProcessChannelBindErrorResponse(uint64_t a1, _WORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v4;
      v9 = 2080;
      v10 = "ProcessChannelBindErrorResponse";
      v11 = 1024;
      v12 = 925;
      _os_log_impl(&dword_23D497000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** CHANNEL_BIND_ERROR_RESPONSE", &v7, 0x1Cu);
    }
  }

  return ProcessErrorResponse(a1, a2);
}

uint64_t EncodeChannelDataMessage(unsigned int a1, const void *a2, unsigned int *a3, int a4, _WORD *a5)
{
  result = 2148794369;
  if (a5)
  {
    v8 = *a3;
    if ((*a3 + 4) <= a4)
    {
      memmove(a5 + 2, a2, *a3);
      result = 0;
      *a5 = __rev16(a1);
      a5[1] = bswap32(v8) >> 16;
      *a3 += 4;
    }

    else
    {
      return 2148794371;
    }
  }

  return result;
}

double machTimeScale(uint64_t a1, uint64_t a2)
{
  if ((_MergedGlobals & 1) == 0)
  {
    machTimeScale_cold_1();
  }

  return *&qword_27E2DC7C8;
}

uint64_t GetStringForKeyFromDict(const void *a1, const void *a2, UInt8 *a3, int a4)
{
  value = 0;
  v4 = 2148859905;
  if (a1 && a3)
  {
    CFRetain(a1);
    v4 = 2148859926;
    if (CFDictionaryGetValueIfPresent(a1, a2, &value))
    {
      if (value)
      {
        Length = CFDataGetLength(value);
        v4 = 2148859905;
        if (Length == a4)
        {
          v12.length = Length;
          v12.location = 0;
          CFDataGetBytes(value, v12, a3);
          v4 = 0;
        }
      }
    }

    CFRelease(a1);
  }

  return v4;
}

uint64_t GetIPPortFromDict(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  number = 0;
  value = 0;
  v4 = 2148859905;
  if (a1 && a4)
  {
    valuePtr = -1431655766;
    CFRetain(a1);
    CFDictionaryGetValueIfPresent(a1, a2, &value);
    CFDictionaryGetValueIfPresent(a1, a3, &number);
    v4 = 2148859926;
    if (value)
    {
      if (number)
      {
        v4 = 2148859905;
        if (CFDataGetLength(value) <= 16)
        {
          *(a4 + 32) = 0;
          *a4 = 0u;
          *(a4 + 16) = 0u;
          v13.location = 0;
          v13.length = 4;
          CFDataGetBytes(value, v13, (a4 + 20));
          CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
          v4 = 0;
          *(a4 + 36) = valuePtr;
        }
      }
    }

    CFRelease(a1);
  }

  return v4;
}

uint64_t STUNEncodeAttrAddress(_WORD *a1, unint64_t a2, unsigned int a3, unsigned __int8 *a4, unint64_t *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*a4 == 1)
  {
    v6 = 12;
  }

  else
  {
    v6 = 24;
  }

  if (v6 > a2)
  {
    v8 = 2148794376;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v16 = 136316418;
        v17 = v9;
        v18 = 2080;
        v19 = "STUNEncodeAttrAddress";
        v20 = 1024;
        v21 = 45;
        v22 = 1024;
        v23 = a3;
        v24 = 2048;
        v25 = a2;
        v26 = 2048;
        v27 = v6;
        _os_log_error_impl(&dword_23D497000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer is too short. type=%d, bufferLength=%zu requiredLength=%zu", &v16, 0x36u);
      }
    }

    return v8;
  }

  *a1 = __rev16(a3);
  v11 = a1 + 1;
  v12 = *a4;
  if (v12 == 1)
  {
    v13 = 2048;
    goto LABEL_12;
  }

  if (v12 == 2)
  {
    v13 = 5120;
LABEL_12:
    a1[1] = v13;
    v11 = a1 + 2;
  }

  *v11 = 0;
  *(v11 + 1) = *a4;
  v11[1] = bswap32(*(a4 + 20)) >> 16;
  v14 = *a4;
  if (v14 == 2)
  {
    *(v11 + 2) = *(a4 + 24);
  }

  else if (v14 == 1)
  {
    *(v11 + 1) = bswap32(*(a4 + 6));
  }

  v8 = 0;
  *a5 = v6;
  return v8;
}

uint64_t STUNEncodeAttrMI(_WORD *a1, unint64_t a2, unsigned int *a3, void *__src, unint64_t *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = 2148794376;
  v6 = *a3 + (-*a3 & 3) + 4;
  if (v6 <= a2)
  {
    if (__src)
    {
      *a1 = 2048;
      a1[1] = bswap32(*a3) >> 16;
      memcpy(a1 + 2, __src, *a3);
      v5 = 0;
      *a5 = v6;
    }

    else
    {
      return 2148794369;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = v8;
      v14 = 2080;
      v15 = "STUNEncodeAttrMI";
      v16 = 1024;
      v17 = 215;
      v18 = 2048;
      v19 = a2;
      v20 = 2048;
      v21 = v6;
      _os_log_error_impl(&dword_23D497000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer is too short. bufferLength=%zu requiredLength=%zu", &v12, 0x30u);
    }
  }

  return v5;
}

uint64_t STUNEncodeAttrU32(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 > 7)
  {
    v7 = 0;
    *a1 = __rev16(a3);
    *(a1 + 2) = 1024;
    *(a1 + 4) = bswap32(a4);
    *a5 = 8;
  }

  else
  {
    v7 = 2148794376;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v11 = 136316418;
        v12 = v8;
        v13 = 2080;
        v14 = "STUNEncodeAttrU32";
        v15 = 1024;
        v16 = 302;
        v17 = 1024;
        v18 = a3;
        v19 = 2048;
        v20 = a2;
        v21 = 2048;
        v22 = 8;
        _os_log_error_impl(&dword_23D497000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer is too short. type=%d, bufferLength=%zu requiredLength=%zu", &v11, 0x36u);
      }
    }
  }

  return v7;
}

uint64_t STUNEncodeAttr(_WORD *a1, unint64_t a2, unsigned int a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2 > 3)
  {
    v6 = 0;
    *a1 = __rev16(a3);
    a1[1] = 0;
    *a4 = 4;
  }

  else
  {
    v6 = 2148794376;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v10 = 136316418;
        v11 = v7;
        v12 = 2080;
        v13 = "STUNEncodeAttr";
        v14 = 1024;
        v15 = 330;
        v16 = 1024;
        v17 = a3;
        v18 = 2048;
        v19 = a2;
        v20 = 2048;
        v21 = 4;
        _os_log_error_impl(&dword_23D497000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer is too short. type=%d, bufferLength=%zu requiredLength=%zu", &v10, 0x36u);
      }
    }
  }

  return v6;
}

uint64_t STUNEncodeAttrU64(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 > 0xB)
  {
    v7 = 0;
    *a1 = __rev16(a3);
    *(a1 + 2) = 2048;
    *(a1 + 4) = a4;
    *a5 = 12;
  }

  else
  {
    v7 = 2148794376;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v11 = 136316418;
        v12 = v8;
        v13 = 2080;
        v14 = "STUNEncodeAttrU64";
        v15 = 1024;
        v16 = 316;
        v17 = 1024;
        v18 = a3;
        v19 = 2048;
        v20 = a2;
        v21 = 2048;
        v22 = 12;
        _os_log_error_impl(&dword_23D497000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer is too short. type=%d, bufferLength=%zu requiredLength=%zu", &v11, 0x36u);
      }
    }
  }

  return v7;
}

uint64_t STUNEncodeAttrXORAddress(_WORD *a1, unint64_t a2, unsigned int a3, unsigned __int8 *a4, uint64_t a5, unint64_t *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*a4 == 1)
  {
    v7 = 12;
  }

  else
  {
    v7 = 24;
  }

  if (v7 > a2)
  {
    v9 = 2148794376;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v19 = 136316418;
        v20 = v10;
        v21 = 2080;
        v22 = "STUNEncodeAttrXORAddress";
        v23 = 1024;
        v24 = 72;
        v25 = 1024;
        v26 = a3;
        v27 = 2048;
        v28 = a2;
        v29 = 2048;
        v30 = v7;
        _os_log_error_impl(&dword_23D497000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer is too short. type=%d, bufferLength=%zu requiredLength=%zu", &v19, 0x36u);
      }
    }

    return v9;
  }

  *a1 = __rev16(a3);
  v12 = a1 + 1;
  v13 = *a4;
  if (v13 == 1)
  {
    v14 = 2048;
    goto LABEL_12;
  }

  if (v13 == 2)
  {
    v14 = 5120;
LABEL_12:
    a1[1] = v14;
    v12 = a1 + 2;
  }

  *v12 = 0;
  *(v12 + 1) = *a4;
  v12[1] = bswap32(*(a4 + 20) ^ 0x2112) >> 16;
  v15 = v12 + 2;
  v16 = *a4;
  if (v16 == 1)
  {
    *v15 = bswap32(*(a4 + 6) ^ 0x2112A442);
  }

  else if (v16 == 2)
  {
    for (i = 0; i != 16; ++i)
    {
      *(v15 + i) = *(a5 + i) ^ a4[i + 24];
    }
  }

  v9 = 0;
  *a6 = v7;
  return v9;
}

BOOL OUTLINED_FUNCTION_8_1()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t STUNGetTransID(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if (!a1)
  {
    return 2148794369;
  }

  if (a3)
  {
    result = 0;
    v5 = *a3;
    *(a1 + 8) = *(a3 + 2);
    *a1 = v5;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = arc4random();
      v9 = a1 + v7;
      *v9 = v8;
      *(v9 + 2) = BYTE2(v8);
      *(v9 + 3) = HIBYTE(v8) & 0x7F;
      v10 = v7 >= 8;
      v7 += 4;
    }

    while (!v10);
    result = 0;
    *a1 = bswap32(a2) >> 16;
  }

  return result;
}

void FreeSTUNMessage(uint64_t result)
{
  if (result && *(result + 28) >= 1)
  {
    v2 = 0;
    v3 = (result + 32);
    do
    {
      v4 = result + 32 + 56 * v2;
      v5 = *v3;
      if (v5 > 0x12)
      {
        if (*v3 <= 0x14u)
        {
          if (v5 != 19 && v5 != 20)
          {
            goto LABEL_24;
          }
        }

        else if (v5 != 21)
        {
          if (v5 == 32777)
          {
            if (!*(v3 + 3))
            {
              goto LABEL_24;
            }

            v6 = (v4 + 24);
            v7 = 8;
            goto LABEL_23;
          }

          if (v5 != 32778)
          {
            goto LABEL_24;
          }
        }
      }

      else if (*v3 <= 7u)
      {
        if (v5 == 6)
        {
          v6 = (v3 + 8);
          if (!*(v3 + 2))
          {
            goto LABEL_24;
          }

LABEL_22:
          v7 = 4;
LABEL_23:
          _STUNMessage_ClearMemoryAndFree(v6, &v3[v7]);
          goto LABEL_24;
        }

        if (v5 != 7)
        {
          goto LABEL_24;
        }
      }

      else if (v5 != 8)
      {
        if (v5 == 9)
        {
          if (!*(v3 + 2))
          {
            goto LABEL_24;
          }

          v6 = (v4 + 16);
          v7 = 6;
          goto LABEL_23;
        }

        if (v5 != 10)
        {
          goto LABEL_24;
        }
      }

      if (*(v3 + 2))
      {
        v6 = (v4 + 16);
        goto LABEL_22;
      }

LABEL_24:
      ++v2;
      v3 += 28;
    }

    while (v2 < *(result + 28));
  }
}

void _STUNMessage_ClearMemoryAndFree(void **a1, _DWORD *a2)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      *a1 = 0;
      if (a2)
      {
        v4 = *a2;
        if (v4 >= 1)
        {
          bzero(v2, v4);
          *a2 = 0;
        }
      }

      free(v2);
    }
  }
}

_BYTE *MakeTransID(_BYTE *a1, unsigned __int8 *a2)
{
  v4 = 0;
  *a1 = 0;
  do
  {
    v5 = *a2++;
    sprintf(&a1[v4], "%02X", v5);
    v4 += 2;
  }

  while (v4 != 24);
  return a1;
}

uint64_t ParseSTUNXORAddr(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + a3;
  if (v5 > a2)
  {
    return 2148794376;
  }

  if (v5 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a1 + a3;
  }

  if (a1 + 2 > v7)
  {
    ParseSTUNXORAddr_cold_4();
  }

  else
  {
    v8 = *(a1 + 1);
    *a4 = v8;
    v9 = (a1 + 4);
    if (a1 + 4 > v7)
    {
      ParseSTUNXORAddr_cold_3();
    }

    else
    {
      *(a4 + 40) = bswap32(*(a1 + 2) ^ 0x1221) >> 16;
      if (v8 != 2)
      {
        if (v8 == 1)
        {
          if (a1 + 8 <= v7)
          {
            result = 0;
            *(a4 + 24) = bswap32(*v9 ^ 0x42A41221);
            return result;
          }

          ParseSTUNXORAddr_cold_2();
          return v11;
        }

        return 0;
      }

      *(a4 + 4) = 1;
      if (a1 + 20 <= v7)
      {
        for (i = 0; i != 16; ++i)
        {
          *(a4 + 24 + i) = *(a5 + i) ^ *(v9 + i);
        }

        return 0;
      }

      ParseSTUNXORAddr_cold_1();
    }
  }

  return v11;
}

uint64_t ParseSTUNMessage(unsigned __int16 *a1, uint64_t a2, char *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  if (a2 <= 0)
  {
    ParseSTUNMessage_cold_9();
    return *buf;
  }

  if (!a1)
  {
    ParseSTUNMessage_cold_8(buf);
    return *buf;
  }

  v5 = a3;
  if (!a3)
  {
    ParseSTUNMessage_cold_7(buf);
    return *buf;
  }

  bzero(a3, 0x480uLL);
  if (a2 == 1)
  {
    ParseSTUNMessage_cold_6(buf);
    return *buf;
  }

  v6 = bswap32(*a1);
  *v5 = HIWORD(v6) & 0x110;
  v7 = (v6 >> 17) & 0x70 | HIWORD(v6) & 0xF | (v6 >> 18) & 0xF80;
  *(v5 + 1) = v7;
  v8 = (v5 + 2);
  if ((v7 - 1) >= 9)
  {
    v13 = 2148859925;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v13;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      return v13;
    }

    v16 = *v8;
    *buf = 136316418;
    v67 = v14;
    v68 = 2080;
    v69 = "ParseSTUNMessage";
    v70 = 1024;
    v71 = 286;
    v72 = 1024;
    v73 = 286;
    v74 = 1024;
    v75 = v16;
    v76 = 1024;
    v77 = a2;
    v17 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/STUNParser.c:%d: Unknow METHOD (0x%04X %dB)";
    goto LABEL_13;
  }

  if (a2 <= 3)
  {
    ParseSTUNMessage_cold_5();
    return *buf;
  }

  v9 = bswap32(a1[1]) >> 16;
  *(v5 + 2) = v9;
  if (a2 <= 0x13)
  {
    ParseSTUNMessage_cold_4();
    return *buf;
  }

  v10 = (a1 + a2);
  *(v5 + 8) = *(a1 + 2);
  v11 = a1 + 10;
  if (*(v5 + 2) == 1118048801)
  {
    *(v5 + 2) = 554869826;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  *(v5 + 3) = v12;
  v20 = v11 + v9;
  if (v20 > v10)
  {
    ParseSTUNMessage_cold_3((v5 + 4), a2, buf);
    return *buf;
  }

  if (v20 < v10 && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v67 = v21;
      v68 = 2080;
      v69 = "ParseSTUNMessage";
      v70 = 1024;
      v71 = 309;
      _os_log_impl(&dword_23D497000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Additional bytes after end of message", buf, 0x1Cu);
    }
  }

  if (a2 == 20)
  {
    LODWORD(v23) = 0;
LABEL_88:
    v13 = 0;
    *(v5 + 7) = v23;
    return v13;
  }

  v63 = (v5 + 2);
  v64 = a2;
  v23 = 0;
  v65 = v5;
  v24 = v5 + 32;
  while (1)
  {
    if (v11 + 1 > v10)
    {
      ParseSTUNMessage_cold_2();
      return *buf;
    }

    v25 = v23;
    v26 = &v24[56 * v23];
    v27 = v11 + 2;
    *v26 = bswap32(*v11) >> 16;
    if (v11 + 2 > v10)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 2148794376;
      }

      v55 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      v13 = 2148794376;
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        return v13;
      }

      v56 = *v63;
      v57 = *v26;
      *buf = 136316418;
      v67 = v55;
      v68 = 2080;
      v69 = "ParseSTUNMessage";
      v70 = 1024;
      v71 = 322;
      v72 = 1024;
      v73 = v56;
      v74 = 1024;
      v75 = v57;
      v76 = 1024;
      v77 = v64;
      v17 = " [%s] %s:%d Unable to read attribute length (method=0x%04X attribute=0x%04X len=%d)";
LABEL_13:
      v18 = v15;
      v19 = 46;
      goto LABEL_14;
    }

    v28 = v11[1];
    v29 = bswap32(v28);
    if ((v29 & 0x30000) != 0)
    {
      v30 = 4 - (HIWORD(v29) & 3);
    }

    else
    {
      v30 = 0;
    }

    *(v26 + 1) = v30 + HIWORD(v29);
    if ((v29 & 0x30000) != 0 && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v33 = *v26;
        *buf = 136316162;
        v67 = v31;
        v68 = 2080;
        v69 = "ParseSTUNMessage";
        v70 = 1024;
        v71 = 336;
        v72 = 1024;
        v73 = v30;
        v74 = 1024;
        v75 = v33;
        _os_log_impl(&dword_23D497000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %d byte padding added for attrib %04X", buf, 0x28u);
      }
    }

    if (v27 + *(v26 + 1) > v10)
    {
      break;
    }

    v34 = __rev16(v28);
    v35 = *v26;
    if (v35 <= 0x8000)
    {
      switch(*v26)
      {
        case 1:
        case 2:
        case 4:
        case 5:
        case 0xB:
        case 0x11:
          v36 = ParseSTUNAddr((v11 + 2), v10, v34, (v26 + 8));
          goto LABEL_52;
        case 3:
          v39 = v27 + v34;
          if (v39 >= v10)
          {
            v39 = v10;
          }

          if ((v11 + 4) > v39)
          {
            ParseSTUNMessage_cold_1();
            v13 = *buf;
            goto LABEL_92;
          }

          v26[8] = (*(v11 + 7) & 4) != 0;
          v26[9] = (*(v11 + 7) & 2) != 0;
          break;
        case 6:
        case 7:
        case 8:
        case 0x13:
        case 0x14:
        case 0x15:
          goto LABEL_46;
        case 9:
        case 0x21:
          v36 = ParseErrorCode(v11 + 4, v10, v34, (v26 + 8));
          goto LABEL_52;
        case 0xA:
          if ((v34 & 3) != 0 || v27 + v34 > v10)
          {
            goto LABEL_90;
          }

          v40 = v34 >> 1;
          *(v26 + 2) = v40;
          v41 = malloc_type_malloc(v34, 0x1000040BDFB0063uLL);
          *(v26 + 2) = v41;
          if (!v41)
          {
            goto LABEL_91;
          }

          if (v28)
          {
            v42 = v11 + 2;
            do
            {
              v43 = *v42++;
              *v41++ = bswap32(v43) >> 16;
              --v40;
            }

            while (v40);
          }

          goto LABEL_53;
        case 0xC:
        case 0xD:
        case 0xF:
        case 0x10:
        case 0x18:
        case 0x19:
        case 0x24:
          goto LABEL_51;
        case 0x12:
        case 0x16:
        case 0x20:
          v36 = ParseSTUNXORAddr((v11 + 2), v10, v34, (v26 + 8), (v65 + 8));
          goto LABEL_52;
        case 0x22:
          goto LABEL_62;
        case 0x25:
          goto LABEL_53;
        default:
          goto LABEL_80;
      }

      goto LABEL_53;
    }

    if (*v26 <= 0x8007u)
    {
      if (*v26 > 0x8004u)
      {
        if (v35 == 32773)
        {
          goto LABEL_51;
        }

        if (v35 != 32774)
        {
          v37 = 32775;
          goto LABEL_50;
        }

        goto LABEL_53;
      }

      if (v35 != 32769 && v35 != 32771)
      {
        v37 = 32772;
LABEL_50:
        if (v35 == v37)
        {
          goto LABEL_51;
        }

        goto LABEL_80;
      }

LABEL_51:
      v36 = ParseSTUNU32(v11 + 1, v10, v34, v26 + 2);
LABEL_52:
      v13 = v36;
      if ((v36 & 0x80000000) != 0)
      {
        goto LABEL_92;
      }

      goto LABEL_53;
    }

    if (*v26 > 0x8021u)
    {
      if (v35 == 32802)
      {
        goto LABEL_53;
      }

      if (v35 != 32809 && v35 != 32810)
      {
        goto LABEL_80;
      }

LABEL_62:
      v36 = ParseSTUNU64(v11 + 2, v10, v34, v26 + 1);
      goto LABEL_52;
    }

    if (v35 == 32776)
    {
      goto LABEL_51;
    }

    if (v35 != 32777)
    {
      if (v35 == 32778)
      {
LABEL_46:
        v36 = ParseBinaryData(v11 + 2, v10, v34, (v26 + 8));
        goto LABEL_52;
      }

LABEL_80:
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v46 = VRTraceErrorLogLevelToCSTR();
        v47 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v48 = *v26;
          *buf = 136316162;
          v67 = v46;
          v68 = 2080;
          v69 = "ParseSTUNMessage";
          v70 = 1024;
          v71 = 506;
          v72 = 1024;
          v73 = 506;
          v74 = 1024;
          v75 = v48;
          _os_log_impl(&dword_23D497000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/STUNParser.c:%d: \tUNKNOWN-ATTR(%04X)", buf, 0x28u);
        }
      }

      goto LABEL_53;
    }

    v44 = (v34 - 2);
    if (v34 >= 2)
    {
      if (v27 + v34 > v10)
      {
LABEL_90:
        v13 = 2148794376;
      }

      else
      {
        *(v26 + 4) = bswap32(*v27) >> 16;
        *(v26 + 4) = v44;
        v45 = malloc_type_malloc((v34 - 1), 0x100004077774924uLL);
        *(v26 + 3) = v45;
        if (v45)
        {
          v45[v44] = 0;
          memcpy(*(v26 + 3), v11 + 3, v44);
          goto LABEL_53;
        }

LABEL_91:
        v13 = 2148794371;
      }

LABEL_92:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v52 = VRTraceErrorLogLevelToCSTR();
        v53 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          v54 = *v26;
          *buf = 136316162;
          v67 = v52;
          v68 = 2080;
          v69 = "ParseSTUNMessage";
          v70 = 1024;
          v71 = 510;
          v72 = 1024;
          v73 = v54;
          v74 = 1024;
          v75 = v13;
          v17 = " [%s] %s:%d Invalid attribute. Type=%d error=%X";
          v18 = v53;
          v19 = 40;
          goto LABEL_14;
        }
      }

      return v13;
    }

LABEL_53:
    v11 = (v27 + *(v26 + 1));
    v23 = v25 + 1;
    if (v11 >= v10 || v25 >= 0x13)
    {
      if (v25 < 0x13)
      {
        v5 = v65;
      }

      else
      {
        v5 = v65;
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v49 = VRTraceErrorLogLevelToCSTR();
          v50 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v67 = v49;
            v68 = 2080;
            v69 = "ParseSTUNMessage";
            v70 = 1024;
            v71 = 517;
            v72 = 1024;
            v73 = 20;
            _os_log_impl(&dword_23D497000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tAttribute count reached MAX_STUNATTR(%d)", buf, 0x22u);
          }
        }
      }

      goto LABEL_88;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 2148794376;
  }

  v58 = VRTraceErrorLogLevelToCSTR();
  v59 = *MEMORY[0x277CE5818];
  v13 = 2148794376;
  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
  {
    v60 = *(v26 + 1);
    v61 = *v63;
    v62 = *v26;
    *buf = 136316674;
    v67 = v58;
    v68 = 2080;
    v69 = "ParseSTUNMessage";
    v70 = 1024;
    v71 = 339;
    v72 = 1024;
    v73 = v60;
    v74 = 1024;
    v75 = v61;
    v76 = 1024;
    v77 = v62;
    v78 = 1024;
    v79 = v64;
    v17 = " [%s] %s:%d Attribute (len=%d) doesn't fit in packet (method=0x%04X attribute=0x%04X len=%d)";
    v18 = v59;
    v19 = 52;
LABEL_14:
    _os_log_error_impl(&dword_23D497000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
  }

  return v13;
}

uint64_t ParseSTUNAddr(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + a3;
  if (v4 > a2)
  {
    return 2148794376;
  }

  if (v4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1 + a3;
  }

  if (a1 + 2 > v6)
  {
    ParseSTUNAddr_cold_4();
    return v9;
  }

  v7 = *(a1 + 1);
  *a4 = v7;
  v8 = (a1 + 4);
  if (a1 + 4 > v6)
  {
    ParseSTUNAddr_cold_3();
    return v9;
  }

  *(a4 + 40) = bswap32(*(a1 + 2)) >> 16;
  if (v7 == 2)
  {
    if (a1 + 20 <= v6)
    {
      result = 0;
      *(a4 + 4) = 1;
      *(a4 + 24) = *v8;
      return result;
    }

    ParseSTUNAddr_cold_1();
    return v9;
  }

  if (v7 == 1)
  {
    if (a1 + 8 <= v6)
    {
      result = 0;
      *(a4 + 24) = bswap32(*v8);
      return result;
    }

    ParseSTUNAddr_cold_2();
    return v9;
  }

  return 0;
}

uint64_t ParseBinaryData(const void *a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = 2148794371;
  if (a1 + a3 > a2)
  {
    return 2148794376;
  }

  v8 = malloc_type_malloc(a3 + 1, 0x100004077774924uLL);
  *(a4 + 8) = v8;
  if (v8)
  {
    v8[a3] = 0;
    *a4 = a3;
    memcpy(*(a4 + 8), a1, a3);
    return 0;
  }

  return v4;
}

uint64_t ParseErrorCode(_BYTE *a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  result = 2148794376;
  v6 = a3 - 4;
  if (a3 >= 4 && &a1[a3] <= a2)
  {
    *a4 = a1[2];
    *(a4 + 1) = a1[3];
    if (a3 >= 5)
    {
      v8 = malloc_type_malloc(a3 - 3, 0x100004077774924uLL);
      *(a4 + 8) = v8;
      if (!v8)
      {
        return 2148794371;
      }

      v8[v6] = 0;
      *(a4 + 4) = v6;
      memcpy(*(a4 + 8), a1 + 4, v6);
    }

    return 0;
  }

  return result;
}

uint64_t ParseSTUNU32(unsigned int *a1, unsigned int *a2, uint64_t a3, _DWORD *a4)
{
  v4 = (a1 + a3);
  if (v4 >= a2)
  {
    v4 = a2;
  }

  if (a1 + 1 > v4)
  {
    ParseSTUNU32_cold_1();
    return v7;
  }

  else
  {
    result = 0;
    *a4 = bswap32(*a1);
  }

  return result;
}

uint64_t ParseSTUNU64(void *a1, char *a2, uint64_t a3, void *a4)
{
  v4 = a1 + a3;
  if (v4 >= a2)
  {
    v4 = a2;
  }

  if (a1 + 1 > v4)
  {
    ParseSTUNU64_cold_1();
    return v7;
  }

  else
  {
    result = 0;
    *a4 = *a1;
  }

  return result;
}

unsigned __int16 *GetSTUNAttr(uint64_t a1, int a2)
{
  v2 = *(a1 + 28);
  if (v2 < 1)
  {
    return 0;
  }

  for (result = (a1 + 32); *result != a2; result += 28)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

BOOL OUTLINED_FUNCTION_9_1()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t MakeIPPORTWithHostnameIPv4Only(uint64_t a1, const char *a2, int a3)
{
  v26 = *MEMORY[0x277D85DE8];
  memset(v11, 170, 6);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  memset(&v10.ai_socktype, 0, 40);
  *&v10.ai_flags = 0x200000100;
  v10.ai_socktype = 2;
  __sprintf_chk(v11, 0, 6uLL, "%u", a3);
  v5 = getaddrinfo(a2, v11, &v10, &v9);
  if (v5 || !v9)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v13 = v6;
        v14 = 2080;
        v15 = "MakeIPPORTWithHostnameIPv4Only";
        v16 = 1024;
        v17 = 94;
        v18 = 1024;
        v19 = 94;
        v20 = 2080;
        v21 = a2;
        v22 = 2080;
        v23 = v11;
        v24 = 1024;
        v25 = v5;
        _os_log_error_impl(&dword_23D497000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/IPAddr.c:%d: getaddrinfo(%s,%s) failed(%d)", buf, 0x3Cu);
      }
    }

    return 0;
  }

  else
  {
    SAToIPPORTWithInterfaceIndexToNameCallback(v9->ai_addr, a1, DefaultInterfaceIndexToNameCallback, 0);
    freeaddrinfo(v9);
  }

  return a1;
}

uint64_t MakeIPPORT(uint64_t a1, const char *a2, int a3)
{
  v26 = *MEMORY[0x277D85DE8];
  memset(v11, 170, 6);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  memset(&v10.ai_socktype, 0, 40);
  *&v10.ai_flags = 1028;
  v10.ai_socktype = 2;
  __sprintf_chk(v11, 0, 6uLL, "%u", a3);
  v5 = getaddrinfo(a2, v11, &v10, &v9);
  if (v5 || !v9)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v13 = v6;
        v14 = 2080;
        v15 = "MakeIPPORTGeneric";
        v16 = 1024;
        v17 = 69;
        v18 = 1024;
        v19 = 69;
        v20 = 2080;
        v21 = a2;
        v22 = 2080;
        v23 = v11;
        v24 = 1024;
        v25 = v5;
        _os_log_error_impl(&dword_23D497000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/IPAddr.c:%d: getaddrinfo(%s,%s) failed(%d)", buf, 0x3Cu);
      }
    }

    return 0;
  }

  else
  {
    SAToIPPORTWithInterfaceIndexToNameCallback(v9->ai_addr, a1, DefaultInterfaceIndexToNameCallback, 0);
    freeaddrinfo(v9);
  }

  return a1;
}

uint64_t InterpretAddressX(const char *a1, uint64_t a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = inet_addr(a1);
  if (v6 != -1)
  {
    return bswap32(v6);
  }

  v7 = gethostbyname(a1);
  if (v7)
  {
    v6 = **v7->h_addr_list;
    return bswap32(v6);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316674;
      v12 = v9;
      v13 = 2080;
      v14 = "InterpretAddressX";
      v15 = 1024;
      v16 = 120;
      v17 = 1024;
      v18 = 120;
      v19 = 2080;
      v20 = a2;
      v21 = 1024;
      v22 = a3;
      v23 = 2080;
      v24 = a1;
      _os_log_impl(&dword_23D497000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/IPAddr.c:%d: %s:%d: Cannot resolve address [%s]", &v11, 0x3Cu);
    }
  }

  return 0;
}

char *IPPORTToStringWithSize(char *a1, uint64_t a2, size_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v6;
  v11 = v6;
  *__dst = v6;
  if (*a2)
  {
    v7 = "[%s]:%u";
  }

  else
  {
    v7 = "%s:%u";
  }

  IPToString(__dst, a2);
  snprintf(a1, a3, v7, __dst, *(a2 + 36));
  return a1;
}

char *IPToString(char *__dst, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*a2 & 1) == 0)
  {
    sprintf(__dst, "%u.%u.%u.%u", HIBYTE(*(a2 + 20)), BYTE2(*(a2 + 20)), BYTE1(*(a2 + 20)), *(a2 + 20));
    return __dst;
  }

  v4 = 0;
  v5 = (a2 + 20);
  *__source = 0xAAAAAAAAAAAAAAAALL;
  *__dst = 0;
  v6 = 1;
  while (1)
  {
    if (!v6 || *&v5[2 * v4])
    {
      if (v4)
      {
        strlcat(__dst, ":", 0x30uLL);
      }

      __sprintf_chk(__source, 0, 8uLL, "%x", bswap32(*&v5[2 * v4]) >> 16);
      strlcat(__dst, __source, 0x30uLL);
      goto LABEL_14;
    }

    v7 = v4;
    strlcat(__dst, ":", 0x30uLL);
    --v4;
    do
    {
      v8 = v7 + 1;
      ++v4;
      if (v7 > 6)
      {
        break;
      }
    }

    while (!*(a2 + 22 + 2 * v7++));
    if (v8 == 8)
    {
      break;
    }

    v6 = 0;
LABEL_14:
    if (v4++ >= 7)
    {
      goto LABEL_15;
    }
  }

  strlcat(__dst, ":", 0x30uLL);
LABEL_15:
  if (*v5 == 254 && (*(a2 + 21) & 0xC0) == 0x80)
  {
    v12 = *(a2 + 4);
    v11 = (a2 + 4);
    if (v12)
    {
      memset(v14, 170, 17);
      __sprintf_chk(v14, 0, 0x11uLL, "%%%s", v11);
      strlcat(__dst, v14, 0x30uLL);
    }
  }

  return __dst;
}

uint64_t GetLocalIFFunctionalTypeForBoundSocket(uint64_t a1)
{
  v1 = a1;
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0u;
  v5 = 0u;
  memset(v3, 170, sizeof(v3));
  result = GetLocalIFIndexForBoundSocket(a1);
  if (result)
  {
    if_indextoname(result, v3);
    __strlcpy_chk();
    if (ioctl(v1, 0xC02069ADuLL, &v4) != -1)
    {
      return v5;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      GetLocalIFFunctionalTypeForBoundSocket_cold_1();
    }

    return 0;
  }

  return result;
}

uint64_t GetLocalIFIndexForBoundSocket(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *&v1.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v1.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  v19 = v1;
  v20 = v1;
  v17 = v1;
  v18 = v1;
  v15 = v1;
  v16 = v1;
  v13 = v1;
  v14 = v1;
  *&v12[16] = 0xAAAAAAAAAAAAAAAALL;
  v11 = v1;
  *v12 = v1;
  v8 = 128;
  if (getsockname(a1, &v13, &v8))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalIFIndexForBoundSocket_cold_1();
      }
    }

    return 0;
  }

  SAToIPPORTWithInterfaceIndexToNameCallback(&v13, &v11, DefaultInterfaceIndexToNameCallback, 0);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (getifaddrs(&v7) == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalIFIndexForBoundSocket_cold_3();
      }
    }

    return 0;
  }

  v3 = v7;
  if (!v7)
  {
LABEL_17:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalIFIndexForBoundSocket_cold_2();
      }
    }

    v2 = 0;
    goto LABEL_21;
  }

  while (1)
  {
    *&v10[16] = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9 = v4;
    *v10 = v4;
    SAToIPPORTWithInterfaceIndexToNameCallback(v3->ifa_addr, &v9, DefaultInterfaceIndexToNameCallback, 0);
    if ((v11.sa_len & 1) != (v9 & 1))
    {
      goto LABEL_16;
    }

    if (v11.sa_len)
    {
      break;
    }

    if (*&v12[4] == *&v10[4])
    {
      goto LABEL_26;
    }

LABEL_16:
    v3 = v3->ifa_next;
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  if (*&v12[4] != *&v10[4] || *&v12[12] != *&v10[12])
  {
    goto LABEL_16;
  }

LABEL_26:
  v2 = if_nametoindex(v3->ifa_name);
  if (!v2)
  {
    goto LABEL_17;
  }

LABEL_21:
  MEMORY[0x23EEE25D0](v7);
  return v2;
}

uint64_t GetLocalIFNameForBoundSocket(uint64_t a1, char *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = GetLocalIFIndexForBoundSocket(a1);
  if (result)
  {
    return if_indextoname(result, a2) != 0;
  }

  return result;
}

uint64_t GetLocalInterfaceListWithOptionsAndCellInterfaceName(void *a1, int a2, char *a3)
{
  v193 = *MEMORY[0x277D85DE8];
  v173 = 0;
  if (!a1)
  {
    return 0;
  }

  v5 = a1;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    v8 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = " IFLIST_DISALLOW_2G";
        *buf = 136317186;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        if ((a2 & 4) == 0)
        {
          v9 = &unk_23D4C9CFB;
        }

        *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
        v10 = " IFLIST_EXCLUDE_CELL";
        *&buf[22] = 1024;
        *&buf[24] = 691;
        v11 = " IFLIST_CELL_ONLY";
        *&buf[28] = 1024;
        if ((a2 & 1) == 0)
        {
          v10 = &unk_23D4C9CFB;
        }

        *&buf[30] = 691;
        *&buf[34] = 2080;
        if ((a2 & 2) == 0)
        {
          v11 = &unk_23D4C9CFB;
        }

        *&buf[36] = v9;
        if ((a2 & 8) != 0)
        {
          v12 = " IFLIST_INCLUDE_LINKLOCAL";
        }

        else
        {
          v12 = &unk_23D4C9CFB;
        }

        *&buf[44] = 2080;
        *&buf[46] = v10;
        *&buf[54] = 2080;
        *&buf[56] = v11;
        *&buf[64] = 2080;
        *&buf[66] = v12;
        *&buf[74] = 1024;
        *&buf[76] = a2;
        _os_log_impl(&dword_23D497000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/IPAddr.c:%d: interfaceFilterOptions =%s%s%s%s 0x%X", buf, 0x50u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_1(v6, a2, v7);
    }
  }

  v172 = 0;
  if (VCCTServiceMonitor_GetDataIndicatorStatus(&v172) || v172 - 1 > 1)
  {
    v17 = 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
        *&buf[22] = 1024;
        *&buf[24] = 699;
        _os_log_impl(&dword_23D497000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CT indicates cellular as 2G or 2.5G", buf, 0x1Cu);
      }
    }

    if ((a2 & 1) == 0 && ((a2 & 4) != 0 || CFPreferencesGetAppBooleanValue(@"AlwaysDisallow2GCellular", @"com.apple.VideoConference", 0)))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
          *&buf[22] = 1024;
          *&buf[24] = 717;
          _os_log_impl(&dword_23D497000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d IFLIST_DISALLOW_2G is set and RAT is 2G or 2.5G, disallowing cellular interfaces", buf, 0x1Cu);
        }
      }

      LOBYTE(a2) = a2 | 1;
    }

    v17 = 1;
  }

  if (getifaddrs(&v173))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_2();
      }
    }

    return 0;
  }

  v18 = &v173;
  v19 = -40;
  v20 = 1;
  do
  {
    v18 = *v18;
    v19 += 40;
    --v20;
  }

  while (v18);
  if (!v20)
  {
    if (v173)
    {
      MEMORY[0x23EEE25D0](v173, v19);
    }

    return 0;
  }

  v167 = malloc_type_calloc(1uLL, v19, 0x100004053E81896uLL);
  if (!v167)
  {
    if (v173)
    {
      MEMORY[0x23EEE25D0]();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_8();
      }
    }

    return 0;
  }

  v168 = socket(2, 2, 0);
  v169 = socket(30, 2, 0);
  *&localAddress.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&remoteAddress.sa_len = 0;
  *v175 = xmmword_23D4C9CB0;
  *&v175[16] = 1;
  __s = a3;
  v164 = v17;
  if ((reliableSysctl(v175, &localAddress, &remoteAddress.sa_len) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_4();
      }

      v171 = 0;
      v170 = 0;
      goto LABEL_127;
    }

LABEL_119:
    v171 = 0;
    v170 = 0;
    goto LABEL_127;
  }

  v21 = *&localAddress.sa_len;
  if (*&remoteAddress.sa_len < 1)
  {
LABEL_118:
    free(v21);
    goto LABEL_119;
  }

  v22 = 0;
  v23 = *&localAddress.sa_len + *&remoteAddress.sa_len;
  do
  {
    v21 = (v21 + *v21);
    v22 += 4;
  }

  while (v21 < v23);
  v24 = malloc_type_malloc(v22, 0x100004052888210uLL);
  if (!v24)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_3();
      }
    }

    v21 = *&localAddress.sa_len;
    goto LABEL_118;
  }

  v171 = v24;
  v25 = v5;
  v26 = nwi_state_copy();
  v27 = if_nametoindex("pdp_ip0");
  v28 = *&localAddress.sa_len;
  if (*&localAddress.sa_len < v23)
  {
    v29 = v27;
    v170 = 0;
    v30 = MEMORY[0x277D85EE8];
    while (1)
    {
      v31 = *(v28 + 93);
      if (v31 == 30)
      {
        if ((v28[6] & 1) != 0 && *(v28 + 92) == 28)
        {
          v37 = *(v28 + 50) == *v30 && *(v28 + 54) == v30[1];
          if (v37)
          {
            v45 = v28[2];
            if (v29 == v45 || IsInterfaceRoutable(v45, 30, v26))
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v46 = VRTraceErrorLogLevelToCSTR();
                v47 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v48 = v28[2];
                  *buf = 136315906;
                  *&buf[4] = v46;
                  *&buf[12] = 2080;
                  *&buf[14] = "GetReachableInterfaceListWithOptions";
                  *&buf[22] = 1024;
                  *&buf[24] = 470;
                  *&buf[28] = 1024;
                  *&buf[30] = v48;
                  v35 = v47;
                  v36 = " [%s] %s:%d IPv6 DEFAULT route, if_idx:%d";
                  goto LABEL_77;
                }
              }

LABEL_78:
              if (v170 < 1)
              {
                LODWORD(v49) = 0;
              }

              else
              {
                v49 = 0;
                v50 = v28[2];
                while (v171[v49] != v50)
                {
                  if (v170 == ++v49)
                  {
                    goto LABEL_86;
                  }
                }
              }

              if (v49 == v170)
              {
                v50 = v28[2];
LABEL_86:
                v171[v170++] = v50;
              }

              goto LABEL_87;
            }
          }

          if ((a2 & 8) != 0)
          {
            if (IsAWDLInterface(v28[2], v169))
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v38 = VRTraceErrorLogLevelToCSTR();
                v39 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v40 = v28[2];
                  *buf = 136315906;
                  *&buf[4] = v38;
                  *&buf[12] = 2080;
                  *&buf[14] = "GetReachableInterfaceListWithOptions";
                  *&buf[22] = 1024;
                  *&buf[24] = 478;
                  *&buf[28] = 1024;
                  *&buf[30] = v40;
                  v35 = v39;
                  v36 = " [%s] %s:%d IPv6 AWDL, if_idx:%d";
                  goto LABEL_77;
                }
              }

              goto LABEL_78;
            }

            if (IsBluetoothInterface(v28[2]))
            {
              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                goto LABEL_78;
              }

              v54 = VRTraceErrorLogLevelToCSTR();
              v55 = *MEMORY[0x277CE5818];
              if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_78;
              }

              v56 = v28[2];
              *buf = 136315906;
              *&buf[4] = v54;
              *&buf[12] = 2080;
              *&buf[14] = "GetReachableInterfaceListWithOptions";
              *&buf[22] = 1024;
              *&buf[24] = 484;
              *&buf[28] = 1024;
              *&buf[30] = v56;
              v35 = v55;
              v36 = " [%s] %s:%d IPv6 BT, if_idx:%d";
LABEL_77:
              _os_log_impl(&dword_23D497000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0x22u);
              goto LABEL_78;
            }
          }
        }
      }

      else if (v31 == 2 && (v28[6] & 1) != 0 && *(v28 + 92) == 16)
      {
        if (!*(v28 + 24))
        {
          v41 = v28[2];
          if (v29 == v41 || IsInterfaceRoutable(v41, 2, v26))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v42 = VRTraceErrorLogLevelToCSTR();
              v43 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v44 = v28[2];
                *buf = 136315906;
                *&buf[4] = v42;
                *&buf[12] = 2080;
                *&buf[14] = "GetReachableInterfaceListWithOptions";
                *&buf[22] = 1024;
                *&buf[24] = 432;
                *&buf[28] = 1024;
                *&buf[30] = v44;
                v35 = v43;
                v36 = " [%s] %s:%d IPv4 DEFAULT route, if_idx:%d";
                goto LABEL_77;
              }
            }

            goto LABEL_78;
          }
        }

        if ((a2 & 8) != 0)
        {
          if (IsAWDLInterface(v28[2], v168))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v32 = VRTraceErrorLogLevelToCSTR();
              v33 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v34 = v28[2];
                *buf = 136315906;
                *&buf[4] = v32;
                *&buf[12] = 2080;
                *&buf[14] = "GetReachableInterfaceListWithOptions";
                *&buf[22] = 1024;
                *&buf[24] = 442;
                *&buf[28] = 1024;
                *&buf[30] = v34;
                v35 = v33;
                v36 = " [%s] %s:%d IPv4 AWDL, if_idx:%d";
                goto LABEL_77;
              }
            }

            goto LABEL_78;
          }

          if (IsBluetoothInterface(v28[2]))
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              goto LABEL_78;
            }

            v51 = VRTraceErrorLogLevelToCSTR();
            v52 = *MEMORY[0x277CE5818];
            if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_78;
            }

            v53 = v28[2];
            *buf = 136315906;
            *&buf[4] = v51;
            *&buf[12] = 2080;
            *&buf[14] = "GetReachableInterfaceListWithOptions";
            *&buf[22] = 1024;
            *&buf[24] = 448;
            *&buf[28] = 1024;
            *&buf[30] = v53;
            v35 = v52;
            v36 = " [%s] %s:%d IPv4 BT, if_idx:%d";
            goto LABEL_77;
          }

          if (v28[48] == -343)
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              goto LABEL_78;
            }

            v57 = VRTraceErrorLogLevelToCSTR();
            v58 = *MEMORY[0x277CE5818];
            if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_78;
            }

            v59 = v28[2];
            *buf = 136315906;
            *&buf[4] = v57;
            *&buf[12] = 2080;
            *&buf[14] = "GetReachableInterfaceListWithOptions";
            *&buf[22] = 1024;
            *&buf[24] = 454;
            *&buf[28] = 1024;
            *&buf[30] = v59;
            v35 = v58;
            v36 = " [%s] %s:%d IPv4 Ad-Hoc, if_idx:%d";
            goto LABEL_77;
          }
        }
      }

LABEL_87:
      v28 = (v28 + *v28);
      if (v28 >= v23)
      {
        goto LABEL_121;
      }
    }
  }

  v170 = 0;
LABEL_121:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v62 = VRTraceErrorLogLevelToCSTR();
    v63 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v62;
      *&buf[12] = 2080;
      *&buf[14] = "GetReachableInterfaceListWithOptions";
      *&buf[22] = 1024;
      *&buf[24] = 508;
      *&buf[28] = 1024;
      *&buf[30] = v170;
      _os_log_impl(&dword_23D497000, v63, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d found %d reachable interface(s).", buf, 0x22u);
    }
  }

  free(*&localAddress.sa_len);
  if (v26)
  {
    nwi_state_release();
  }

  v5 = v25;
LABEL_127:
  *&localAddress.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&remoteAddress.sa_len = 0;
  *v175 = xmmword_23D4C9CB0;
  *&v175[16] = 3;
  if ((reliableSysctl(v175, &localAddress, &remoteAddress.sa_len) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v76 = v167;
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_6();
      }

      v77 = 0;
      v166 = 0;
      goto LABEL_165;
    }

LABEL_159:
    v77 = 0;
    v166 = 0;
    v76 = v167;
    goto LABEL_165;
  }

  v64 = *&localAddress.sa_len;
  if (*&remoteAddress.sa_len < 1)
  {
LABEL_158:
    free(v64);
    goto LABEL_159;
  }

  v65 = 0;
  v66 = *&localAddress.sa_len + *&remoteAddress.sa_len;
  do
  {
    v64 = (v64 + *v64);
    v65 += 4;
  }

  while (v64 < v66);
  v67 = malloc_type_malloc(v65, 0x100004052888210uLL);
  if (!v67)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_5();
      }
    }

    v64 = *&localAddress.sa_len;
    goto LABEL_158;
  }

  v68 = *&localAddress.sa_len;
  v69 = v67;
  if (*&localAddress.sa_len >= v66)
  {
    v166 = 0;
  }

  else
  {
    v166 = 0;
    do
    {
      if (*(v68 + 3) == 14 && *(v68 + 116) == 255)
      {
        if (v166 < 1)
        {
          LODWORD(v70) = 0;
        }

        else
        {
          v70 = 0;
          v71 = v68[57];
          while (v67[v70] != v71)
          {
            if (v166 == ++v70)
            {
              v72 = v166;
              goto LABEL_144;
            }
          }
        }

        if (v70 == v166)
        {
          v72 = v166;
          v71 = v68[57];
LABEL_144:
          v67[v72] = v71;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v73 = VRTraceErrorLogLevelToCSTR();
            v74 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v75 = v68[57];
              *buf = 136316162;
              *&buf[4] = v73;
              *&buf[12] = 2080;
              *&buf[14] = "GetCellularInterfaceList";
              *&buf[22] = 1024;
              *&buf[24] = 568;
              *&buf[28] = 1024;
              *&buf[30] = v75;
              *&buf[34] = 2080;
              *&buf[36] = v68 + 60;
              _os_log_impl(&dword_23D497000, v74, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Added cellular interface index: %u name: %s\n", buf, 0x2Cu);
            }
          }

          ++v166;
          v67 = v69;
        }
      }

      v68 = (v68 + *v68);
    }

    while (v68 < v66);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v78 = VRTraceErrorLogLevelToCSTR();
    v79 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v78;
      *&buf[12] = 2080;
      *&buf[14] = "GetCellularInterfaceList";
      *&buf[22] = 1024;
      *&buf[24] = 576;
      *&buf[28] = 1024;
      *&buf[30] = v166;
      _os_log_impl(&dword_23D497000, v79, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GetCellularInterfaceList: found %d cellular interface(s).", buf, 0x22u);
    }
  }

  free(*&localAddress.sa_len);
  v76 = v167;
  v77 = v69;
LABEL_165:
  v80 = v173;
  v165 = v77;
  v60 = 0;
  if (v173)
  {
    v161 = v76 - 40;
    v162 = *MEMORY[0x277CBED10];
    while (1)
    {
      v81 = if_nametoindex(v80->ifa_name);
      if (!v81)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v100 = VRTraceErrorLogLevelToCSTR();
          v101 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ifa_name = v80->ifa_name;
            *buf = 136315906;
            *&buf[4] = v100;
            *&buf[12] = 2080;
            *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
            *&buf[22] = 1024;
            *&buf[24] = 760;
            *&buf[28] = 2080;
            *&buf[30] = ifa_name;
            _os_log_error_impl(&dword_23D497000, v101, OS_LOG_TYPE_ERROR, " [%s] %s:%d if_name:%s not found", buf, 0x26u);
          }
        }

        goto LABEL_312;
      }

      v82 = v81;
      v83 = &v76[40 * v60];
      SAToIPPORTWithInterfaceIndexToNameCallback(v80->ifa_addr, v83, DefaultInterfaceIndexToNameCallback, 0);
      v84 = 0;
      *(v83 + 36) = 0;
      *v83 |= 8u;
      v85 = v80->ifa_name;
      if (*v85 == 108)
      {
        v84 = v85[1] == 111;
      }

      sa_family = v80->ifa_addr->sa_family;
      v88 = sa_family != 30 && sa_family != 2 || v170 < 1;
      v89 = v171;
      v90 = v170;
      if (v88)
      {
LABEL_179:
        if (!v84)
        {
          goto LABEL_312;
        }
      }

      else
      {
        while (1)
        {
          v91 = *v89++;
          if (v91 == v82)
          {
            break;
          }

          if (!--v90)
          {
            goto LABEL_179;
          }
        }
      }

      if (sa_family == 2)
      {
        v92 = v168;
      }

      else
      {
        v92 = v169;
      }

      if (IsAWDLInterface(v82, v92))
      {
        *v83 |= 0x100u;
      }

      if (IsBluetoothInterface(v82) && (*v83 & 1) != 0)
      {
        *v83 |= 0x200u;
      }

      v93 = v80->ifa_name;
      if (!v93)
      {
        goto LABEL_208;
      }

      v94 = v80->ifa_addr->sa_family;
      if (v94 != 30 && v94 != 2)
      {
        goto LABEL_208;
      }

      v96 = if_nametoindex(v80->ifa_name);
      if (!v96)
      {
        break;
      }

      v98 = v166;
      v97 = v165;
      if (v166 < 1)
      {
        goto LABEL_208;
      }

      while (1)
      {
        v99 = *v97++;
        if (v99 == v96)
        {
          break;
        }

        if (!--v98)
        {
          goto LABEL_208;
        }
      }

      v106 = v80->ifa_name;
      if (!v106)
      {
LABEL_214:
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_312;
        }

        v108 = VRTraceErrorLogLevelToCSTR();
        v109 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_312;
        }

        v110 = v80->ifa_name;
        *buf = 136315906;
        *&buf[4] = v108;
        *&buf[12] = 2080;
        *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
        *&buf[22] = 1024;
        *&buf[24] = 799;
        *&buf[28] = 2080;
        *&buf[30] = v110;
        v111 = v109;
        v112 = " [%s] %s:%d Cellular interface [%s] doesn't support data, skip.";
        v113 = 38;
LABEL_261:
        _os_log_impl(&dword_23D497000, v111, OS_LOG_TYPE_DEFAULT, v112, buf, v113);
        goto LABEL_312;
      }

      if (!__s)
      {
        v105 = 1;
        goto LABEL_206;
      }

      v107 = strlen(__s);
      v76 = v167;
      if (strncmp(v106, __s, v107))
      {
        goto LABEL_214;
      }

      v105 = 1;
      if (!v84)
      {
LABEL_219:
        if ((a2 & 2) != 0)
        {
          v114 = v105;
        }

        else
        {
          v114 = 1;
        }

        if ((a2 & v105 & 1) != 0 || !v114)
        {
          goto LABEL_312;
        }

        if (v105)
        {
          *v83 |= 4u;
        }

        goto LABEL_226;
      }

LABEL_209:
      if ((a2 & 2) != 0)
      {
        goto LABEL_312;
      }

LABEL_226:
      v115 = v80->ifa_addr->sa_family;
      if (v115 == 30)
      {
        if (_os_feature_enabled_impl() && (a2 & 0x10) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_312;
          }

          v126 = VRTraceErrorLogLevelToCSTR();
          v127 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_312;
          }

          *buf = 136315650;
          *&buf[4] = v126;
          *&buf[12] = 2080;
          *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
          *&buf[22] = 1024;
          *&buf[24] = 866;
          v111 = v127;
          v112 = " [%s] %s:%d IFLIST_EXCLUDE_IPV6 is set, skipping one IPV6 interface";
          v113 = 28;
          goto LABEL_261;
        }

        if ((a2 & 8) == 0)
        {
          ifa_addr = v80->ifa_addr;
          if (ifa_addr->sa_data[6] == 254 && (ifa_addr->sa_data[7] & 0xC0) == 0x80)
          {
            goto LABEL_312;
          }
        }

        v189 = 0u;
        v190 = 0u;
        v187 = 0u;
        v188 = 0u;
        v185 = 0u;
        v186 = 0u;
        v183 = 0u;
        v184 = 0u;
        v181 = 0u;
        v182 = 0u;
        v179 = 0u;
        v180 = 0u;
        v178 = 0u;
        memset(buf, 0, sizeof(buf));
        v129 = v80->ifa_addr;
        v130 = *v129;
        *&buf[28] = *&v129->sa_data[10];
        *&buf[16] = v130;
        if (GetLocalInterfaceListWithOptionsAndCellInterfaceName_dontForceRFC3041AddrIfAvailable == -1)
        {
          GetLocalInterfaceListWithOptionsAndCellInterfaceName_dontForceRFC3041AddrIfAvailable = CFPreferencesGetAppBooleanValue(@"dontForceRFC3041AddrIfAvailable", @"com.apple.VideoConference", 0);
        }

        v131 = v60;
        strncpy(buf, v80->ifa_name, 0x10uLL);
        if (ioctl(v169, 0xC1206949uLL, buf) == -1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v138 = VRTraceErrorLogLevelToCSTR();
            v139 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              v152 = v80->ifa_name;
              v153 = __error();
              v154 = strerror(*v153);
              *v175 = 136316162;
              *&v175[4] = v138;
              *&v175[12] = 2080;
              *&v175[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
              *&v175[22] = 1024;
              *&v175[24] = 892;
              *&v175[28] = 2080;
              *&v175[30] = v152;
              *&v175[38] = 2080;
              *&v175[40] = v154;
              _os_log_error_impl(&dword_23D497000, v139, OS_LOG_TYPE_ERROR, " [%s] %s:%d ioctl(SIOCGIFAFLAG_IN6) failed for %s: %s", v175, 0x30u);
            }
          }
        }

        else
        {
          v132 = buf[16];
          if ((buf[16] & 6) != 0)
          {
            goto LABEL_311;
          }

          if ((buf[16] & 0x80) != 0)
          {
            *v83 |= 0x10u;
            v132 = buf[16];
          }

          if ((v132 & 0x10) != 0)
          {
            *v83 |= 0x40u;
          }

          if (!GetLocalInterfaceListWithOptionsAndCellInterfaceName_dontForceRFC3041AddrIfAvailable && v60)
          {
            v133 = 1 - v60;
            v134 = &v161[40 * v60];
            v135 = v60 - 1;
            do
            {
              if (!strcmp(v80->ifa_name, v134 + 4) && (*v134 & 1) != 0)
              {
                v136 = &v167[40 * v60];
                v137 = *v136 & 0x50;
                if (v137 == 16)
                {
                  if ((*v134 & 0x50) != 0x10)
                  {
                    if (VRTraceGetErrorLogLevelForModule() > 6)
                    {
                      v158 = VRTraceErrorLogLevelToCSTR();
                      v159 = *MEMORY[0x277CE5818];
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                      {
                        *v175 = 136315906;
                        *&v175[4] = v158;
                        *&v175[12] = 2080;
                        *&v175[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
                        *&v175[22] = 1024;
                        *&v175[24] = 950;
                        *&v175[28] = 1024;
                        *&v175[30] = v135;
                        _os_log_impl(&dword_23D497000, v159, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ┗━▶ Pruning interface %d in favor of rfc3041-compliant interface.", v175, 0x22u);
                      }
                    }

                    memmove(v134, v134 + 40, 40 * (v60 + v133));
                    *v136 = 0u;
                    *(v136 + 1) = 0u;
                    v60 = (v60 - 1);
                    *(v136 + 4) = 0;
                  }
                }

                else if ((*v134 & 0x10) != 0 || v137 == 80)
                {
                  goto LABEL_311;
                }
              }

              ++v133;
              v134 -= 40;
              --v135;
              --v131;
            }

            while (v131);
            LODWORD(v131) = v60;
          }
        }

        v140 = &v167[40 * v131];
        v76 = v167;
        __strlcpy_chk();
        if ((v80->ifa_flags & 0x10) != 0)
        {
          *v140 |= 2u;
        }

        if (v164 && (*v140 & 4) != 0)
        {
          *v140 |= 0x20u;
        }
      }

      else
      {
        if (v115 != 2)
        {
          goto LABEL_297;
        }

        if ((v80->ifa_flags & 0x10) == 0)
        {
          LOBYTE(v105) = 1;
        }

        if ((v105 & 1) == 0)
        {
          *&localAddress.sa_len = 0xAAAAAAAAAAAAAAAALL;
          *&localAddress.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
          if ((*v83 & 1) == 0)
          {
            *&localAddress.sa_data[6] = 0;
            *&localAddress.sa_len = 528;
            *&localAddress.sa_data[2] = bswap32(*(v83 + 20));
            *localAddress.sa_data = bswap32(*(v83 + 36)) >> 16;
          }

          *&v116 = 0xAAAAAAAAAAAAAAAALL;
          *(&v116 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&buf[16] = v116;
          *&buf[32] = v116;
          *buf = v116;
          *&remoteAddress.sa_len = 528;
          *&remoteAddress.sa_data[6] = 0;
          v117 = SCNetworkReachabilityCreateWithAddressPair(0, &localAddress, &remoteAddress);
          flags = -1431655766;
          if (SCNetworkReachabilityGetFlags(v117, &flags) && (flags & 0x40000) != 0)
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              v118 = 1;
            }

            else
            {
              v150 = VRTraceErrorLogLevelToCSTR();
              v151 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                IPToString(buf, v83);
                *v175 = 136315906;
                *&v175[4] = v150;
                *&v175[12] = 2080;
                *&v175[14] = "IsPPPOver3G";
                *&v175[22] = 1024;
                *&v175[24] = 658;
                *&v175[28] = 2080;
                *&v175[30] = buf;
                _os_log_impl(&dword_23D497000, v151, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PPP address [%s] is over cellular network", v175, 0x26u);
              }

              v118 = 1;
            }
          }

          else
          {
            v118 = 0;
          }

          CFRelease(v117);
          if ((a2 & 2) != 0)
          {
            v119 = v118;
          }

          else
          {
            v119 = 1;
          }

          if ((a2 & v118 & 1) != 0 || !v119)
          {
            goto LABEL_311;
          }

          v120 = *v83;
          if (v118)
          {
            v120 = *v83 | 4;
          }

          *v83 = v120 | 2;
          v121 = GetLocalInterfaceListWithOptionsAndCellInterfaceName_s_iAllowVPN;
          if (GetLocalInterfaceListWithOptionsAndCellInterfaceName_s_iAllowVPN == -1)
          {
            GetLocalInterfaceListWithOptionsAndCellInterfaceName_s_iAllowVPN = 1;
            v122 = CFPreferencesCopyAppValue(@"allowVPN", @"com.apple.VideoConference");
            if (v122)
            {
              v123 = v122;
              if (CFEqual(v122, v162))
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v124 = VRTraceErrorLogLevelToCSTR();
                  v125 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    *&buf[4] = v124;
                    *&buf[12] = 2080;
                    *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
                    *&buf[22] = 1024;
                    *&buf[24] = 844;
                    _os_log_impl(&dword_23D497000, v125, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found allowVPN NO. Exclusing PPP interfaces", buf, 0x1Cu);
                  }
                }

                GetLocalInterfaceListWithOptionsAndCellInterfaceName_s_iAllowVPN = 0;
              }

              CFRelease(v123);
            }

            v121 = GetLocalInterfaceListWithOptionsAndCellInterfaceName_s_iAllowVPN;
          }

          v76 = v167;
          if (!v121)
          {
            goto LABEL_312;
          }
        }

        __strlcpy_chk();
        if (v164 && (*v83 & 4) != 0)
        {
          *v83 |= 0x20u;
        }
      }

      v60 = (v60 + 1);
LABEL_297:
      if (v60)
      {
        v141 = &v76[40 * v60 - 40];
        if (*(v141 + 4))
        {
          *&v142 = 0xAAAAAAAAAAAAAAAALL;
          *(&v142 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v175[32] = v142;
          v176 = v142;
          *v175 = v142;
          *&v175[16] = v142;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v143 = VRTraceErrorLogLevelToCSTR();
            v144 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v160 = v5;
              if (*v141)
              {
                v145 = 54;
              }

              else
              {
                v145 = 52;
              }

              IPToString(v175, v141);
              v146 = *v141;
              v147 = " DEPRECATED";
              if ((*v141 & 0x40) == 0)
              {
                v147 = &unk_23D4C9CFB;
              }

              *buf = 136317442;
              v148 = " TEMPORARY";
              if ((v146 & 0x10) == 0)
              {
                v148 = &unk_23D4C9CFB;
              }

              v37 = (v146 & 0x20) == 0;
              *&buf[4] = v143;
              v149 = " 2G";
              if (v37)
              {
                v149 = &unk_23D4C9CFB;
              }

              *&buf[12] = 2080;
              *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
              *&buf[22] = 1024;
              *&buf[24] = 989;
              *&buf[28] = 1024;
              *&buf[30] = v60 - 1;
              *&buf[34] = 1024;
              *&buf[36] = v145;
              v5 = v160;
              *&buf[40] = 2080;
              *&buf[42] = v141 + 4;
              *&buf[50] = 2080;
              *&buf[52] = v175;
              *&buf[60] = 2080;
              *&buf[62] = v147;
              *&buf[70] = 2080;
              *&buf[72] = v148;
              LOWORD(v178) = 2080;
              *(&v178 + 2) = v149;
              _os_log_impl(&dword_23D497000, v144, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %d: v%c interface %s %s%s%s%s", buf, 0x5Au);
            }
          }
        }

LABEL_311:
        v76 = v167;
      }

LABEL_312:
      v80 = v80->ifa_next;
      if (!v80)
      {
        goto LABEL_319;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v103 = VRTraceErrorLogLevelToCSTR();
      v104 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v103;
        *&buf[12] = 2080;
        *&buf[14] = "IsPDPInterface";
        *&buf[22] = 1024;
        *&buf[24] = 612;
        *&buf[28] = 1024;
        *&buf[30] = 612;
        *&buf[34] = 2080;
        *&buf[36] = v93;
        _os_log_error_impl(&dword_23D497000, v104, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/IPAddr.c:%d: if_name:%s not found", buf, 0x2Cu);
      }

      v105 = 0;
LABEL_206:
      v76 = v167;
      if (!v84)
      {
        goto LABEL_219;
      }

      goto LABEL_209;
    }

LABEL_208:
    v105 = 0;
    if (!v84)
    {
      goto LABEL_219;
    }

    goto LABEL_209;
  }

LABEL_319:
  if (v169 >= 3)
  {
    close(v169);
  }

  if (v168 != -1)
  {
    close(v168);
  }

  if (v173)
  {
    MEMORY[0x23EEE25D0]();
  }

  if (v171)
  {
    free(v171);
  }

  if (v165)
  {
    free(v165);
  }

  *v5 = v76;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v155 = VRTraceErrorLogLevelToCSTR();
    v156 = *MEMORY[0x277CE5818];
    v157 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v155;
        *&buf[12] = 2080;
        *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
        *&buf[22] = 1024;
        *&buf[24] = 1012;
        *&buf[28] = 1024;
        *&buf[30] = v60;
        _os_log_impl(&dword_23D497000, v156, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Interfaces count=%d.", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
    {
      GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_7();
    }
  }

  return v60;
}

BOOL IsAWDLInterface(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 0u;
  v6 = 0u;
  memset(v4, 170, sizeof(v4));
  if_indextoname(a1, v4);
  __strlcpy_chk();
  if (!ioctl(a2, 0xC020698EuLL, &v5))
  {
    return (v6 >> 20) & 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    IsAWDLInterface_cold_1();
  }

  return 0;
}

uint64_t IsBluetoothInterface(unsigned int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(cStr, 170, sizeof(cStr));
  if (!if_indextoname(a1, cStr))
  {
    IsBluetoothInterface_cold_3(&v7);
    return v7;
  }

  v1 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (!v1)
  {
    IsBluetoothInterface_cold_2(&v7);
    return v7;
  }

  v2 = v1;
  v3 = _SCNetworkInterfaceCreateWithBSDName();
  if (v3)
  {
    v4 = v3;
    v5 = _SCNetworkInterfaceIsBluetoothP2P() != 0;
    CFRelease(v2);
    CFRelease(v4);
  }

  else
  {
    IsBluetoothInterface_cold_1(v2);
    return 0;
  }

  return v5;
}

void FreeLocalInterfaceList(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t Get80211BSSID(uint64_t a1, char *a2)
{
  v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a1 + 4), 0x8000100u);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  if (Apple80211Open())
  {
LABEL_6:
    CFRelease(v4);
    return 0xFFFFFFFFLL;
  }

  if (Apple80211BindToInterface() || Apple80211CopyValue())
  {
LABEL_5:
    Apple80211Close();
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(0xAAAAAAAAAAAAAAAALL, @"BSSID");
  if (!Value)
  {
    CFRelease(0xAAAAAAAAAAAAAAAALL);
    goto LABEL_5;
  }

  CString = CFStringGetCString(Value, a2, 18, 0x8000100u);
  CFRelease(0xAAAAAAAAAAAAAAAALL);
  Apple80211Close();
  CFRelease(v4);
  if (CString)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t IPPORTToSA(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*a1)
  {
    return 0;
  }

  if (!a3)
  {
LABEL_6:
    *a2 = 0;
    *(a2 + 8) = 0;
    *a2 = 528;
    *(a2 + 4) = bswap32(*(a1 + 20));
    *(a2 + 2) = bswap32(*(a1 + 36)) >> 16;
    return a2;
  }

  if (*a3 >= 0x10u)
  {
    *a3 = 16;
    goto LABEL_6;
  }

  return 0;
}

uint64_t IPPORTToSA6(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = a2;
  if (a3)
  {
    if (*a3 < 0x1Cu)
    {
      return 0;
    }

    *a3 = 28;
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *a2 = 7708;
  *(a2 + 2) = bswap32(*(a1 + 36)) >> 16;
  if (*a1)
  {
    *(a2 + 8) = *(a1 + 20);
  }

  else
  {
    *(a2 + 18) = -1;
    *(a2 + 20) = bswap32(*(a1 + 20));
  }

  if (*(a1 + 20) == 254 && (*(a1 + 21) & 0xC0) == 0x80)
  {
    *(a2 + 24) = if_nametoindex((a1 + 4));
  }

  return v3;
}

uint64_t SAToIPPORTWithInterfaceIndexToNameCallback(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (*(a1 + 1) != 30)
  {
    *a2 = 0;
    v5 = *(a1 + 4);
    goto LABEL_7;
  }

  if (!*(a1 + 8) && !*(a1 + 12) && *(a1 + 16) == -65536)
  {
    *a2 = 0;
    v5 = *(a1 + 20);
LABEL_7:
    *(a2 + 20) = bswap32(v5);
    *(a2 + 36) = bswap32(*(a1 + 2)) >> 16;
    return a2;
  }

  *a2 = 1;
  *(a2 + 20) = *(a1 + 8);
  *(a2 + 36) = bswap32(*(a1 + 2)) >> 16;
  if (a3)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      a3(a4, v6, a2 + 4);
    }
  }

  return a2;
}

BOOL IsIPPORTValid(uint64_t a1)
{
  if (*a1)
  {
    if (*(a1 + 20) != *MEMORY[0x277D85EE8] || *(a1 + 28) != *(MEMORY[0x277D85EE8] + 8))
    {
      return *(a1 + 36) != 0;
    }
  }

  else if (*(a1 + 20))
  {
    return *(a1 + 36) != 0;
  }

  return 0;
}

uint64_t htonIPPORT(uint64_t result)
{
  v1 = *result;
  if ((*result & 1) == 0)
  {
    *(result + 20) = bswap32(*(result + 20));
  }

  *result = bswap32(v1);
  *(result + 36) = bswap32(*(result + 36)) >> 16;
  return result;
}

uint64_t ntohIPPORT(uint64_t result)
{
  v1 = bswap32(*result);
  *result = v1;
  if ((v1 & 1) == 0)
  {
    *(result + 20) = bswap32(*(result + 20));
  }

  *(result + 36) = bswap32(*(result + 36)) >> 16;
  return result;
}

uint64_t GetLocalIFIndexForDstIPPort(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*a1 & 1) != 0 && *(a1 + 20) == 254)
  {
    v2 = *(a1 + 21);
    if ((v2 & 0xC0) == 0x80 || v2 >= 0xC0)
    {
      if (*(a1 + 22))
      {
        return __rev16(*(a1 + 22));
      }
    }
  }

  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = xmmword_23D4C9CB0;
  v8 = 1;
  if ((reliableSysctl(&v7, &v5, &v6) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalIFIndexForDstIPPort_cold_1();
      }
    }

    return 0;
  }

  else
  {
    LocalIFIndexForDstIPPortFromBuffer = GetLocalIFIndexForDstIPPortFromBuffer(a1, v5, v6);
    free(v5);
  }

  return LocalIFIndexForDstIPPortFromBuffer;
}

uint64_t reliableSysctl(int *a1, void *a2, size_t *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = 0;
  if (!a1)
  {
    reliableSysctl_cold_6(buf);
    return *buf;
  }

  if (!a2)
  {
    reliableSysctl_cold_5(buf);
    return *buf;
  }

  if (!a3)
  {
    reliableSysctl_cold_4(buf);
    return *buf;
  }

  v6 = sysctl(a1, 6u, 0, &v17, 0, 0);
  if (!v6)
  {
    v7 = MEMORY[0x277CE5818];
    while (1)
    {
      v17 += v17 >> 2;
      v8 = malloc_type_malloc(v17, 0x100004077774924uLL);
      if (!v8)
      {
        reliableSysctl_cold_3(&v17, buf);
        return *buf;
      }

      v9 = v8;
      v10 = sysctl(a1, 6u, v8, &v17, 0, 0);
      if (v10)
      {
        v11 = v10;
        if (v10 != -1 || *__error() != 12)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
            {
              reliableSysctl_cold_2();
            }
          }

          goto LABEL_21;
        }

        free(v9);
        v17 = 0;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v19 = v12;
            v20 = 2080;
            v21 = "reliableSysctl";
            v22 = 1024;
            v23 = 361;
            v24 = 1024;
            v25 = 361;
            _os_log_error_impl(&dword_23D497000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/IPAddr.c:%d: buffer size has changed, trying again", buf, 0x22u);
          }
        }

        v9 = 0;
      }

      v14 = v17;
      if (v17)
      {
        v11 = 0;
        *a2 = v9;
        *a3 = v14;
        return v11;
      }

      v15 = sysctl(a1, 6u, 0, &v17, 0, 0);
      if (v15)
      {
        v11 = v15;
        goto LABEL_26;
      }
    }
  }

  v11 = v6;
  v9 = 0;
LABEL_26:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      reliableSysctl_cold_1();
    }
  }

  if (v9)
  {
LABEL_21:
    free(v9);
  }

  return v11;
}

uint64_t GetLocalIFIndexForDstIPPortFromBuffer(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v64 = *MEMORY[0x277D85DE8];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59 = v3;
  v60 = v3;
  v57 = v3;
  v58 = v3;
  if (a3 < 1)
  {
    HIDWORD(v55) = 0;
    return HIDWORD(v55);
  }

  v4 = a2;
  v54 = 0;
  v55 = 0;
  v5 = &a2[a3];
  v6 = a1 + 20;
  v7 = MEMORY[0x277D85DF8];
  while (2)
  {
    v8 = v4 + 92;
    if (v4 + 92 > v5)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return HIDWORD(v55);
      }

      v43 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        return HIDWORD(v55);
      }

      *buf = 136315650;
      *&buf[4] = v43;
      *&buf[12] = 2080;
      *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
      *&buf[22] = 1024;
      *&buf[24] = 1388;
      v41 = " [%s] %s:%d Unable to read message header";
      goto LABEL_135;
    }

    v9 = v4;
    v10 = *v4;
    if (v10 <= 0x5B)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return HIDWORD(v55);
      }

      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        return HIDWORD(v55);
      }

      v46 = *v9;
      *buf = 136315906;
      *&buf[4] = v44;
      *&buf[12] = 2080;
      *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
      *&buf[22] = 1024;
      *&buf[24] = 1389;
      *&buf[28] = 1024;
      *&buf[30] = v46;
      v41 = " [%s] %s:%d Message length too small: %d";
      v47 = v45;
      v48 = 34;
LABEL_136:
      _os_log_error_impl(&dword_23D497000, v47, OS_LOG_TYPE_ERROR, v41, buf, v48);
      return HIDWORD(v55);
    }

    v4 += v10;
    if (&v9[v10] > v5)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return HIDWORD(v55);
      }

      v49 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        return HIDWORD(v55);
      }

      *buf = 136315650;
      *&buf[4] = v49;
      *&buf[12] = 2080;
      *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
      *&buf[22] = 1024;
      *&buf[24] = 1392;
      v41 = " [%s] %s:%d Message is too short";
LABEL_135:
      v47 = v40;
      v48 = 28;
      goto LABEL_136;
    }

    v11 = 0;
    v12 = 0;
    v13 = *(v9 + 3);
    while (((v13 >> v11) & 1) == 0)
    {
      *(&v57 + v11) = 0;
LABEL_18:
      v12 = v11++ > 6;
      if (v11 == 8)
      {
        goto LABEL_26;
      }
    }

    if (v8 + 1 > v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = "get_rtaddrs";
          *&buf[22] = 1024;
          *&buf[24] = 1215;
          v17 = v16;
          v18 = " [%s] %s:%d Failed to retrieve address length";
          v19 = 28;
          goto LABEL_120;
        }
      }

LABEL_25:
      if (v12)
      {
        goto LABEL_26;
      }

LABEL_121:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = v39;
          *&buf[12] = 2080;
          *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
          *&buf[22] = 1024;
          *&buf[24] = 1398;
          v41 = " [%s] %s:%d Failed to parse addresses";
          goto LABEL_135;
        }
      }

      return HIDWORD(v55);
    }

    v14 = *v8;
    if (!*v8)
    {
      if (v8 + 4 > v4)
      {
        goto LABEL_23;
      }

      v14 = 4;
      goto LABEL_17;
    }

    if ((v14 & 3) != 0)
    {
      v14 = (v14 | 3) + 1;
    }

    if (&v8[v14] <= v4)
    {
LABEL_17:
      *(&v57 + v11) = v8;
      v8 += v14;
      goto LABEL_18;
    }

LABEL_23:
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_25;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v38 = *v8;
    if (*v8)
    {
      if ((v38 & 3) != 0)
      {
        v38 = (v38 | 3) + 1;
      }
    }

    else
    {
      v38 = 4;
    }

    *buf = 136316162;
    *&buf[4] = v20;
    *&buf[12] = 2080;
    *&buf[14] = "get_rtaddrs";
    *&buf[22] = 1024;
    *&buf[24] = 1219;
    *&buf[28] = 1024;
    *&buf[30] = v38;
    *&buf[34] = 1024;
    *&buf[36] = v4 - v8;
    v17 = v21;
    v18 = " [%s] %s:%d Address is too short. Expected=%d Available=%d";
    v19 = 40;
LABEL_120:
    _os_log_error_impl(&dword_23D497000, v17, OS_LOG_TYPE_ERROR, v18, buf, v19);
    if (!v12)
    {
      goto LABEL_121;
    }

LABEL_26:
    if ((v9[8] & 1) == 0 || (v22 = v57) == 0)
    {
LABEL_113:
      if (v4 < v5)
      {
        continue;
      }

      return HIDWORD(v55);
    }

    break;
  }

  v23 = *(v57 + 1);
  if (*a1)
  {
    if (v23 != 30)
    {
      goto LABEL_113;
    }
  }

  else if (v23 != 2)
  {
    goto LABEL_113;
  }

  if (v57 + 16 > v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v50 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = v50;
        *&buf[12] = 2080;
        *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
        *&buf[22] = 1024;
        *&buf[24] = 1408;
        v41 = " [%s] %s:%d IP address extends past the end of the message";
        goto LABEL_135;
      }
    }
  }

  else if (*v57 <= 0xFu)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v51 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = v51;
        *&buf[12] = 2080;
        *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
        *&buf[22] = 1024;
        *&buf[24] = 1409;
        v41 = " [%s] %s:%d IP address struct is larger than it's stored length";
        goto LABEL_135;
      }
    }
  }

  else
  {
    fwrite("=======================\n", 0x18uLL, 1uLL, *v7);
    fprintf(*v7, "index = %d\n", *(v9 + 2));
    fwrite("flags =", 7uLL, 1uLL, *v7);
    v24 = *(v9 + 2);
    if (v24)
    {
      fwrite(" UP", 3uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 2) != 0)
      {
        goto LABEL_61;
      }

LABEL_36:
      if ((v24 & 4) == 0)
      {
        goto LABEL_37;
      }

LABEL_62:
      fwrite(" HOST", 5uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 8) != 0)
      {
        goto LABEL_63;
      }

LABEL_38:
      if ((v24 & 0x10) == 0)
      {
        goto LABEL_39;
      }

LABEL_64:
      fwrite(" DYNAMIC", 8uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x20) != 0)
      {
        goto LABEL_65;
      }

LABEL_40:
      if ((v24 & 0x40) == 0)
      {
        goto LABEL_41;
      }

LABEL_66:
      fwrite(" DONE", 5uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x80) != 0)
      {
        goto LABEL_67;
      }

LABEL_42:
      if ((v24 & 0x100) == 0)
      {
        goto LABEL_43;
      }

LABEL_68:
      fwrite(" CLONING", 8uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x200) != 0)
      {
        goto LABEL_69;
      }

LABEL_44:
      if ((v24 & 0x400) == 0)
      {
        goto LABEL_45;
      }

LABEL_70:
      fwrite(" LLINFO", 7uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x800) != 0)
      {
        goto LABEL_71;
      }

LABEL_46:
      if ((v24 & 0x1000) == 0)
      {
        goto LABEL_47;
      }

LABEL_72:
      fwrite(" BLACKHOLE", 0xAuLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x4000) != 0)
      {
        goto LABEL_73;
      }

LABEL_48:
      if ((v24 & 0x8000) == 0)
      {
        goto LABEL_49;
      }

LABEL_74:
      fwrite(" PROTO1", 7uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x10000) != 0)
      {
        goto LABEL_75;
      }

LABEL_50:
      if ((v24 & 0x20000) == 0)
      {
        goto LABEL_51;
      }

LABEL_76:
      fwrite(" WASCLONED", 0xAuLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x40000) != 0)
      {
        goto LABEL_77;
      }

LABEL_52:
      if ((v24 & 0x100000) == 0)
      {
        goto LABEL_53;
      }

LABEL_78:
      fwrite(" PINNED", 7uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x200000) != 0)
      {
        goto LABEL_79;
      }

LABEL_54:
      if ((v24 & 0x400000) == 0)
      {
        goto LABEL_55;
      }

LABEL_80:
      fwrite(" BROADCAST", 0xAuLL, 1uLL, *v7);
      if ((*(v9 + 2) & 0x800000) != 0)
      {
LABEL_56:
        fwrite(" MULTICAST", 0xAuLL, 1uLL, *v7);
      }
    }

    else
    {
      if ((v24 & 2) == 0)
      {
        goto LABEL_36;
      }

LABEL_61:
      fwrite(" GATEWAY", 8uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 4) != 0)
      {
        goto LABEL_62;
      }

LABEL_37:
      if ((v24 & 8) == 0)
      {
        goto LABEL_38;
      }

LABEL_63:
      fwrite(" REJECT", 7uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x10) != 0)
      {
        goto LABEL_64;
      }

LABEL_39:
      if ((v24 & 0x20) == 0)
      {
        goto LABEL_40;
      }

LABEL_65:
      fwrite(" MODIFIED", 9uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x40) != 0)
      {
        goto LABEL_66;
      }

LABEL_41:
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_67:
      fwrite(" DELCLONE", 9uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x100) != 0)
      {
        goto LABEL_68;
      }

LABEL_43:
      if ((v24 & 0x200) == 0)
      {
        goto LABEL_44;
      }

LABEL_69:
      fwrite(" XRESOLVE", 9uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x400) != 0)
      {
        goto LABEL_70;
      }

LABEL_45:
      if ((v24 & 0x800) == 0)
      {
        goto LABEL_46;
      }

LABEL_71:
      fwrite(" STATIC", 7uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x1000) != 0)
      {
        goto LABEL_72;
      }

LABEL_47:
      if ((v24 & 0x4000) == 0)
      {
        goto LABEL_48;
      }

LABEL_73:
      fwrite(" PROTO2", 7uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x8000) != 0)
      {
        goto LABEL_74;
      }

LABEL_49:
      if ((v24 & 0x10000) == 0)
      {
        goto LABEL_50;
      }

LABEL_75:
      fwrite(" PRCLONING", 0xAuLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x20000) != 0)
      {
        goto LABEL_76;
      }

LABEL_51:
      if ((v24 & 0x40000) == 0)
      {
        goto LABEL_52;
      }

LABEL_77:
      fwrite(" PROTO3", 7uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x100000) != 0)
      {
        goto LABEL_78;
      }

LABEL_53:
      if ((v24 & 0x200000) == 0)
      {
        goto LABEL_54;
      }

LABEL_79:
      fwrite(" LOCAL", 6uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x400000) != 0)
      {
        goto LABEL_80;
      }

LABEL_55:
      if ((v24 & 0x800000) != 0)
      {
        goto LABEL_56;
      }
    }

    fputc(10, *v7);
    fprintf(*v7, "addrs = %d\n", *(v9 + 3));
    v25 = *(&v57 + 1);
    if (*(&v57 + 1))
    {
      *&v26 = 0xAAAAAAAAAAAAAAAALL;
      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&buf[16] = v26;
      *&buf[32] = v26;
      *buf = v26;
      v61[0] = v26;
      v61[1] = v26;
      v62 = 0xAAAAAAAAAAAAAAAALL;
      SAToIPPORTWithInterfaceIndexToNameCallback(*(&v57 + 1), v61, DefaultInterfaceIndexToNameCallback, 0);
      if (*(v25 + 1) == 18)
      {
        fprintf(*v7, "GATEWAY(%d) = LLADDR\n");
      }

      else
      {
        v27 = *v7;
        IPToString(buf, v61);
        fprintf(v27, "GATEWAY(%d) = %s\n");
      }
    }

    v28 = v22[1];
    if (v28 != 30)
    {
      if (v28 == 2)
      {
        if (v58)
        {
          *buf = 0;
          __memcpy_chk();
          v29 = bswap32(*buf);
        }

        else
        {
          v29 = -1;
        }

        if ((*v6 & v29) == bswap32(*(v22 + 1)) && v29 >= v55)
        {
          LODWORD(v55) = v29;
          HIDWORD(v55) = *(v9 + 2);
        }
      }

      goto LABEL_113;
    }

    if (v22 + 28 > v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v52 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = v52;
          *&buf[12] = 2080;
          *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
          *&buf[22] = 1024;
          *&buf[24] = 1441;
          v41 = " [%s] %s:%d IPv6 address extends past the end of the message";
          goto LABEL_135;
        }
      }
    }

    else
    {
      if (*v22 > 0x1Bu)
      {
        if (v22[8] == 254)
        {
          v30 = v22[9];
          if ((v30 & 0xC0) == 0x80 || v30 >= 0xC0)
          {
            *(v22 + 6) = bswap32(*(v22 + 5)) >> 16;
            *(v22 + 5) = 0;
          }
        }

        memset(buf, 170, 16);
        if (v58)
        {
          *buf = 0;
          *&buf[8] = 0;
          __memcpy_chk();
        }

        else
        {
          *buf = -1;
          *&buf[8] = -1;
        }

        v31 = 0;
        while ((buf[v31] & *(v6 + v31)) == v22[v31 + 8])
        {
          if (++v31 == 16)
          {
            v32 = 0;
            v33 = buf;
            while (1)
            {
              v35 = *v33++;
              v34 = v35;
              if (v35 != 255)
              {
                break;
              }

              v32 += 8;
              if (v32 == 128)
              {
                goto LABEL_111;
              }
            }

            v36 = v32 + 8;
            v37 = 7;
            while (((v34 >> v37) & 1) != 0)
            {
              LODWORD(v32) = v32 + 1;
              if (--v37 == -1)
              {
                LODWORD(v32) = v36;
                break;
              }
            }

LABEL_111:
            if (v32 >= v54)
            {
              HIDWORD(v55) = *(v9 + 2);
              v54 = v32;
            }

            goto LABEL_113;
          }
        }

        goto LABEL_113;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v53 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = v53;
          *&buf[12] = 2080;
          *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
          *&buf[22] = 1024;
          *&buf[24] = 1442;
          v41 = " [%s] %s:%d IPv6 struct is larger than it's stored length";
          goto LABEL_135;
        }
      }
    }
  }

  return HIDWORD(v55);
}

uint64_t GetConnectionTypeFromCellTech(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_23D4C9CC0[a1 - 1];
  }
}

BOOL IsConnectionDowngrading(int a1, int a2)
{
  v2 = (a2 + 1) < 3;
  v3 = (a2 + 1) < 4;
  if (a1 != 6)
  {
    v3 = 1;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  v4 = a1 != 1 || (a2 + 1) < 2;
  if (!a1)
  {
    v4 = a2 == -1;
  }

  if (a1 > 1)
  {
    v4 = v2;
  }

  return a1 != a2 && v4;
}

uint64_t CompareWithFlippedIP(uint64_t a1, uint64_t a2)
{
  v2 = vandq_s8(*(a2 + 20), *(a1 + 20));
  *v2.i8 = vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  return (v2.i32[0] | v2.i32[1]);
}

_DWORD *FlipIP(_DWORD *result, _DWORD *a2)
{
  result[5] = ~a2[5];
  result[6] = ~a2[6];
  result[7] = ~a2[7];
  result[8] = ~a2[8];
  return result;
}

const char *CelltechToStr(int a1, unsigned int a2)
{
  if (!a1)
  {
    return "NonCellular";
  }

  if (a2 > 9)
  {
    return "Invalid";
  }

  return off_278BD3F30[a2];
}

uint64_t FillSockAddrStorage(uint64_t result, unsigned int *a2, unsigned int a3, int a4, uint64_t a5)
{
  if (a4)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = 7708;
    *(result + 2) = __rev16(a3);
    if (a5)
    {
      return nw_nat64_synthesize_v6();
    }

    else
    {
      if (a2)
      {
        v6 = *a2;
      }

      else
      {
        v6 = *MEMORY[0x277D85EE8];
      }

      *(result + 8) = v6;
    }
  }

  else
  {
    *result = 0;
    *(result + 8) = 0;
    *result = 528;
    if (a2)
    {
      v5 = bswap32(*a2);
    }

    else
    {
      v5 = 0;
    }

    *(result + 4) = v5;
    *(result + 2) = __rev16(a3);
  }

  return result;
}

BOOL IsSameAddressAndPort(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  if (v2 != *(a2 + 1))
  {
    return 0;
  }

  if (v2 == 30)
  {
    if (*(a1 + 2) == *(a2 + 2))
    {
      return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
    }

    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  return *(a1 + 2) == *(a2 + 2);
}

uint64_t IsInterfaceRoutable(int a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (nwi_state_get_first_ifstate())
    {
      do
      {
        ifname = nwi_ifstate_get_ifname();
        v5 = if_nametoindex(ifname);
        v6 = v5 == a1;
      }

      while (v5 != a1 && nwi_ifstate_get_next());
    }

    else
    {
      return 0;
    }
  }

  else
  {
    IsInterfaceRoutable_cold_1(&v8);
    return v8;
  }

  return v6;
}

uint64_t VCCTServiceMonitor_GetIsInHomeCountry(unsigned __int8 *a1)
{
  if (a1)
  {
    if ([+[VCCTServiceMonitor supportsCellular] sharedInstance]
    {
      os_unfair_lock_lock([+[VCCTServiceMonitor statusLock] sharedInstance];
      v2 = [+[VCCTServiceMonitor sharedInstance](VCCTServiceMonitor dataStatus];
      if (v2)
      {
        v3 = v2;
        if (objc_opt_respondsToSelector())
        {
          v4 = [(CTDataStatus *)v3 inHomeCountry];
          v5 = 0;
          *a1 = v4;
        }

        else
        {
          v5 = 0xFFFFFFFFLL;
        }

        os_unfair_lock_unlock([+[VCCTServiceMonitor statusLock] sharedInstance];
      }

      else
      {
        VCCTServiceMonitor_GetIsInHomeCountry_cold_2();
        return v8;
      }
    }

    else
    {
      VCCTServiceMonitor_GetIsInHomeCountry_cold_1();
      return v7;
    }
  }

  else
  {
    VCCTServiceMonitor_GetIsInHomeCountry_cold_3();
    return v9;
  }

  return v5;
}

uint64_t VCCTServiceMonitor_GetDataIndicatorStatus(unsigned int *a1)
{
  if (a1)
  {
    if ([+[VCCTServiceMonitor supportsCellular] sharedInstance]
    {
      os_unfair_lock_lock([+[VCCTServiceMonitor statusLock] sharedInstance];
      v2 = [+[VCCTServiceMonitor sharedInstance](VCCTServiceMonitor dataStatus];
      if (v2)
      {
        v3 = v2;
        if (objc_opt_respondsToSelector())
        {
          v4 = [(CTDataStatus *)v3 indicator];
          v5 = 0;
          *a1 = v4;
        }

        else
        {
          v5 = 0xFFFFFFFFLL;
        }

        os_unfair_lock_unlock([+[VCCTServiceMonitor statusLock] sharedInstance];
      }

      else
      {
        VCCTServiceMonitor_GetDataIndicatorStatus_cold_2();
        return v8;
      }
    }

    else
    {
      VCCTServiceMonitor_GetDataIndicatorStatus_cold_1();
      return v7;
    }
  }

  else
  {
    VCCTServiceMonitor_GetDataIndicatorStatus_cold_3();
    return v9;
  }

  return v5;
}

uint64_t VCCTServiceMonitor_GetDataIndicatorStatusOverride(unsigned int *a1)
{
  if (a1)
  {
    if ([+[VCCTServiceMonitor supportsCellular] sharedInstance]
    {
      os_unfair_lock_lock([+[VCCTServiceMonitor statusLock] sharedInstance];
      v2 = [+[VCCTServiceMonitor sharedInstance](VCCTServiceMonitor dataStatus];
      if (v2)
      {
        v3 = v2;
        if (objc_opt_respondsToSelector())
        {
          v4 = [(CTDataStatus *)v3 indicatorOverride];
          v5 = 0;
          *a1 = v4;
        }

        else
        {
          v5 = 0xFFFFFFFFLL;
        }

        os_unfair_lock_unlock([+[VCCTServiceMonitor statusLock] sharedInstance];
      }

      else
      {
        VCCTServiceMonitor_GetDataIndicatorStatusOverride_cold_2();
        return v8;
      }
    }

    else
    {
      VCCTServiceMonitor_GetDataIndicatorStatusOverride_cold_1();
      return v7;
    }
  }

  else
  {
    VCCTServiceMonitor_GetDataIndicatorStatusOverride_cold_3();
    return v9;
  }

  return v5;
}

uint64_t VCCTServiceMonitor_GetRadioAccessTechnology(unsigned int *a1)
{
  if (a1)
  {
    if ([+[VCCTServiceMonitor supportsCellular] sharedInstance]
    {
      os_unfair_lock_lock([+[VCCTServiceMonitor statusLock] sharedInstance];
      v2 = [+[VCCTServiceMonitor sharedInstance](VCCTServiceMonitor dataStatus];
      if (v2)
      {
        v3 = v2;
        if (objc_opt_respondsToSelector())
        {
          v4 = [(CTDataStatus *)v3 radioTechnology];
          v5 = 0;
          *a1 = v4;
        }

        else
        {
          v5 = 0xFFFFFFFFLL;
        }

        os_unfair_lock_unlock([+[VCCTServiceMonitor statusLock] sharedInstance];
      }

      else
      {
        VCCTServiceMonitor_GetRadioAccessTechnology_cold_2();
        return v8;
      }
    }

    else
    {
      VCCTServiceMonitor_GetRadioAccessTechnology_cold_1();
      return v7;
    }
  }

  else
  {
    VCCTServiceMonitor_GetRadioAccessTechnology_cold_3();
    return v9;
  }

  return v5;
}

uint64_t VCCTServiceMonitor_CopyConnectionStatusInterfaceName(void *a1)
{
  if (a1)
  {
    if ([+[VCCTServiceMonitor supportsCellular] sharedInstance]
    {
      v2 = [+[VCCTServiceMonitor sharedInstance](VCCTServiceMonitor connectionStatus];
      if (v2)
      {
        v3 = [(CTDataConnectionStatus *)v2 interfaceName];
        result = 0;
        *a1 = v3;
      }

      else
      {
        VCCTServiceMonitor_CopyConnectionStatusInterfaceName_cold_2();
        return v6;
      }
    }

    else
    {
      VCCTServiceMonitor_CopyConnectionStatusInterfaceName_cold_1();
      return v5;
    }
  }

  else
  {
    VCCTServiceMonitor_CopyConnectionStatusInterfaceName_cold_3();
    return v7;
  }

  return result;
}

uint64_t VCCTServiceMonitor_GetSignalStrength(_DWORD *a1, _DWORD *a2, unsigned int *a3)
{
  if (!a1)
  {
    VCCTServiceMonitor_GetSignalStrength_cold_7();
    return v10;
  }

  if (!a2)
  {
    VCCTServiceMonitor_GetSignalStrength_cold_6();
    return v10;
  }

  if (!a3)
  {
    VCCTServiceMonitor_GetSignalStrength_cold_5();
    return v10;
  }

  if (![+[VCCTServiceMonitor supportsCellular] sharedInstance]
  {
    VCCTServiceMonitor_GetSignalStrength_cold_1();
    return v10;
  }

  if (![+[VCCTServiceMonitor connectionStatus] sharedInstance]
  {
    VCCTServiceMonitor_GetSignalStrength_cold_4();
    return v10;
  }

  if ([(CTDataConnectionStatus *)[+[VCCTServiceMonitor sharedInstance](VCCTServiceMonitor connectionStatus] state]
  {
    VCCTServiceMonitor_GetSignalStrength_cold_2();
    return v10;
  }

  v6 = [+[VCCTServiceMonitor sharedInstance](VCCTServiceMonitor signalStrength];
  if (!v6)
  {
    VCCTServiceMonitor_GetSignalStrength_cold_3();
    return v10;
  }

  v7 = v6;
  *a1 = [-[CTSignalStrengthInfo bars](v6 "bars")];
  *a2 = [-[CTSignalStrengthInfo displayBars](v7 "displayBars")];
  v8 = [-[CTSignalStrengthInfo maxDisplayBars](v7 "maxDisplayBars")];
  result = 0;
  *a3 = v8;
  return result;
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

void OUTLINED_FUNCTION_6_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void CompressCandidateList_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "CompressCandidateList";
  v4 = 1024;
  v5 = 290;
  v6 = 1024;
  v7 = v0;
  _os_log_error_impl(&dword_23D497000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d malloc (%d) bytes failed", v2, 0x22u);
}

void UncompressCandidateList_cold_1()
{
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "UncompressCandidateList";
  v4 = 1024;
  v5 = 337;
  v6 = 1024;
  v7 = 337;
  v8 = 1024;
  v9 = v0;
  _os_log_error_impl(&dword_23D497000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Candidate.c:%d: malloc(%d) failed", v2, 0x28u);
}

void ICECompressCandidates_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICECompressCandidates_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICECompressCandidates_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICECompressCandidates_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetCandidatesForPeer_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: malloc failed.", v2, v3, v4, v5);
}

void ICEGetCandidates_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetCandidates_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: PE candidate collection failed due to termination of existing ICE check!\n", v2, v3, v4, v5);
}

void ICEGetCandidates_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: PE candidate collection timed out\n", v2, v3, v4, v5);
}

void ICEGetCandidates_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: PE candidate collection failed", v2, v3, v4, v5);
}

void ICEGetCandidates_cold_5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: PE candidate collection failed due totermination of existing ICE check!\n", v2, v3, v4, v5);
}

void ICEGetCandidates_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetCandidates_cold_7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: Relay Allocate request failed.", v2, v3, v4, v5);
}

void ICEGetCandidates_cold_8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetCandidates_cold_9()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetCandidates_cold_10()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetCandidates_cold_11()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetCandidates_cold_12()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICECompressCandidates failed", v2, v3, v4, v5);
}

void ICEGetCandidates_cold_13()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetCandidates_cold_14()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetCandidates_cold_15()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetCandidates_cold_16()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: No candidate is collected!", v2, v3, v4, v5);
}

void ICERetainICEList_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetNewCandidates_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: malloc failed.", v2, v3, v4, v5);
}

void AddOneICEList_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AddOneICEList_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AddOneICEList_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEReleaseAndFreeICEList_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEUpdateNAT64FlagForInterface_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEUpdateNAT64FlagForInterface: failed due to invalid handle.", v2, v3, v4, v5);
}

void ICEAddOneInterfaceWithPriorityHints_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEAddOneInterfaceWithPriorityHints_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEAddOneInterface failed due to invalid handle.", v2, v3, v4, v5);
}

void ICERemoveOneInterface_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICERemoveOneInterface failed due to invalid handle.", v2, v3, v4, v5);
}

void ICECreateHandleWithCallback_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICECreateHandle:pthread_mutexattr_init failed...", v2, v3, v4, v5);
}

void ICECreateHandleWithCallback_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICECreateHandleWithCallback_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEStartConnectivityCheckN_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: UpdateRBRefreshTypeAndDictionary: Can't get transactionID", v2, v3, v4, v5);
}

void ICEStartConnectivityCheckN_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEStartConnectivityCheckN_cold_3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEStartConnectivityCheckN_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEStartConnectivityCheckN_cold_5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEStartConnectivityCheckN_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEStartConnectivityCheckN_cold_7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEStartConnectivityCheckN_cold_8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEStartConnectivityCheckN_cold_9()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEStartConnectivityCheckN_cold_10()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEStartConnectivityCheckN_cold_11()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEStartConnectivityCheckN_cold_12()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEStartConnectivityCheckN_cold_13()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEProcessRemoteInterfaceChange_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEProcessRemoteInterfaceChange_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetRemoteCIDForDstIPPort_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEGetRemoteCIDForDstIPPort found no match.", v2, v3, v4, v5);
}

void ICEAddRemovedLocalIPPort_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: realloc failed.", v2, v3, v4, v5);
}

void ICEAddRemovedRemoteIPPort_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: realloc failed.", v2, v3, v4, v5);
}

void ICEAddRemovedRemoteIPPort_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEDiscardResult_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEDiscardResult failed due to invalid handle.", v2, v3, v4, v5);
}

void ICECloseHandle_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICECloseHandle failed due to invalid handle.", v2, v3, v4, v5);
}

void DiscardOneRelayBindingWithChannelNumber_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void ICEStopConnectivityCheck_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ICESetSKEState_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ICEGetExtIPPorts_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEGetExtIPPorts timed out...", v2, v3, v4, v5);
}

void ICEGetExtIPPorts_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetExtIPPorts_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetExtIPPorts_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEGetExtIPPorts failed due to invalid handle.", v2, v3, v4, v5);
}

void ICEGetExtIPIndex_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICESetForceRelay_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ICEUpdateRole_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEUpdateRole_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEUpdateRole failed due to invalid handle.", v2, v3, v4, v5);
}

void ICEUpdateServingNetworkInfo_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEUpdateServingNetworkInfo_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEUpdateRole failed due to invalid handle.", v2, v3, v4, v5);
}

void ICEUpdateCellTech_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEUpdateCellTech_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEUpdateCellTech failed due to invalid handle.", v2, v3, v4, v5);
}

void ICEGetCellTech_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetCellTech_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEGetRemoteCellTech failed due to invalid handle.", v2, v3, v4, v5);
}

void ICEGetConnErrorCode_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ICEGetConnErrorCode_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEUpdateRole failed due to invalid handle.", v2, v3, v4, v5);
}

void ICEDisableCandidatePairFilter_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEDisableCandidatePairFilter failed due to invalid handle.", v2, v3, v4, v5);
}

void ICEInterfaceNeedsUpdateExternalMapping_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEInterfaceNeedsUpdateExternalMapping failed due to invalid handle", v2, v3, v4, v5);
}

void ICEInterfaceNeedsUpdateExternalMapping_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEInterfaceNeedsUpdateExternalMapping failed due to invalid pointer", v2, v3, v4, v5);
}

void MatchCandidatePairWithIDs_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void SaveSTUNRequest_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_12_0(&dword_23D497000, v0, v1, " [%s] %s:%d calloc(%d) failed", v2, v3, v4, v5);
}

void SaveSTUNRequest_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ProcessEvent_cold_1()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ProcessEvent_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ProcessEvent_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void ProcessEvent_cold_4()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(&dword_23D497000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d EncodeChannelDataMessage returns error (%08X)", v1, 0x22u);
}

void ProcessEvent_cold_5()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ProcessEvent_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ProcessEvent_cold_7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ProcessEvent_cold_8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void InsertEvent_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void ConnectivityCheckProc_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ConnectivityCheckProc_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_12_0(&dword_23D497000, v0, v1, " [%s] %s:%d malloc failed(%08X)", v2, v3, v4, v5);
}

void ConnectivityCheckProc_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ConnectivityCheckProc_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ConnectivityCheckProc_cold_5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ConnectivityCheckProc_cold_6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void ConnectivityCheckProc_cold_7()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void AddRelayCandidatePair_cold_1()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void AddRelayCandidatePair_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ProcessNewCandidates_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AddConnectivityCheckResult_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AddConnectivityCheckResult_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_12_0(&dword_23D497000, v0, v1, " [%s] %s:%d calloc(%d) failed", v2, v3, v4, v5);
}

void AddConnectivityCheckResult_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ProcessMessageType_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ProcessMessageType failed due to invalid parameter.", v2, v3, v4, v5);
}

void ProcessCollectionResponse_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ProcessAllocateResponse failed", v2, v3, v4, v5);
}

void ProcessCollectionResponse_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ParseSTUNMessage failed (%08X)", v2, v3, v4, v5, v6);
}

void ProcessCollectionResponse_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ProcessSNATMAPResponse failed (%08X)\n", v2, v3, v4, v5, v6);
}

void ProcessCollectionResponse_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Unable to read message type. Packet is too short:%d", v2, v3, v4, v5, v6);
}

void SendRelayChannelBindRequest_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: SaveSTUNRequest failed (%08X)", v2, v3, v4, v5, v6);
}

void SendRelayChannelBindRequest_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: \tUDPSENDCALLBACK failed(%08X).", v2, v3, v4, v5, v6);
}

void SendRelayChannelBindRequest_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: STUNEncodeMessage failed (%08X)", v2, v3, v4, v5, v6);
}

void SendRelayChannelBindRequest_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: MakeChannelBindRequest failed (%08X)", v2, v3, v4, v5, v6);
}

void MakeBindingRequest_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ICECompressCandidates failed (%08X)", v2, v3, v4, v5, v6);
}

void MakeBindingRequest_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: malloc failed", v2, v3, v4, v5);
}

void DelayedICEUpdateAfterNominationResponse_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Failed while allocating a copy of candidate pair...", v2, v3, v4, v5);
}

void ProcessBindingRequest_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ICE_ROLE_CONTORLLED CONFLICT!", v2, v3, v4, v5);
}

void ProcessBindingRequest_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ICE_ROLE_CONTORLLING CONFLICT!", v2, v3, v4, v5);
}

void ProcessBindingRequest_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: SKEState_SetBlob(1) failed with error %d", v2, v3, v4, v5, v6);
}

void ProcessBindingRequest_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: SKEState_CopyBlobSync(1) failed with error %d", v2, v3, v4, v5, v6);
}

void ProcessBindingRequest_cold_5(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = 136316162;
  v4 = a1;
  v5 = 2080;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_0();
  v6 = v1;
  v7 = "HRESULT ProcessBindingRequest(PICEINFO, PICELIST, PSTUNMSG, PIPPORT, double)";
  _os_log_error_impl(&dword_23D497000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: %s: Callee - SKEOptimization enabled but pSKEState = NULL. Call is disconnecting", &v3, 0x2Cu);
}

void ProcessBindingRequest_cold_6()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_0();
  HIWORD(v7) = v0;
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v1, v2, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: PairUpCandidate returned invalid pair (%d)", v3, v4, v5, v6, v7);
}

void ProcessBindingRequest_cold_7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: \tUDPSENDCALLBACK failed (%08X)", v2, v3, v4, v5, v6);
}

void ProcessBindingRequest_cold_8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: STUNEncodeMessage failed (%08X)", v2, v3, v4, v5, v6);
}

void ProcessBindingRequest_cold_9()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: MakeBindingResponse failed(%08X)", v2, v3, v4, v5, v6);
}

void ProcessBindingRequest_cold_10()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: InsertEvent failed (%08X)", v2, v3, v4, v5, v6);
}

void ProcessBindingRequest_cold_11()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: PairUpCandidate failed (%08X)", v2, v3, v4, v5, v6);
}

void ProcessBindingRequest_cold_12()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: \tUDPSENDCALLBACK failed (%08X)", v2, v3, v4, v5, v6);
}

void ProcessBindingRequest_cold_13()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: STUNEncodeMessage failed (%08X)", v2, v3, v4, v5, v6);
}

void ProcessBindingRequest_cold_14()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: MakeBindingResponse failed(%08X)", v2, v3, v4, v5, v6);
}

void ProcessBindingRequest_cold_15()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: \tUDPSENDCALLBACK failed (%08X)", v2, v3, v4, v5, v6);
}

void ProcessBindingRequest_cold_16()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: \tError encoding the channel data message.", v2, v3, v4, v5);
}

void ProcessBindingRequest_cold_17()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: STUNEncodeMessage failed (%08X)", v2, v3, v4, v5, v6);
}

void ProcessBindingRequest_cold_18()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: MakeBindingResponse failed (%08X)", v2, v3, v4, v5, v6);
}

void ProcessBindingRequest_cold_19()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Invalid PROTO-TYPE in BINDING_REQUEST.", v2, v3, v4, v5);
}

void ProcessBindingRequest_cold_20()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Invalid USENAME in BINDING_REQUEST.", v2, v3, v4, v5);
}

void MakeBindingResponse_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ICECompressCandidates failed (%08X)", v2, v3, v4, v5, v6);
}

void MakeBindingResponse_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: malloc failed.", v2, v3, v4, v5);
}

void MakeBindingResponse_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Invalid USERNAME in BINDING-REQUEST.", v2, v3, v4, v5);
}

void ProcessConnCheckMessage_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ParseSTUNMessage failed (%08X)", v2, v3, v4, v5, v6);
}

void ProcessBindingResponse_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: missing attribute NTP_DELAY", v2, v3, v4, v5);
}

void ProcessBindingResponse_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: SKEState_SetBlob(1) failed with error %d", v2, v3, v4, v5, v6);
}

void ProcessBindingResponse_cold_3()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_0();
  HIWORD(v7) = v0;
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v1, v2, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: PairUpCandidate returned invalid pair (%d)", v3, v4, v5, v6, v7);
}

void ProcessBindingResponse_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: PairUpCandidate failed (%08X)", v2, v3, v4, v5, v6);
}

void ProcessBindingResponse_cold_5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Invalid PROTO-TYPE in BINDING_RESPONSE.", v2, v3, v4, v5);
}

void ProcessBindingResponse_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Invalid MAPPED-ADDRESS in BINDING_RESPONSE.", v2, v3, v4, v5);
}

void ProcessBindingResponse_cold_7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Invalid USENAME in BINDING_RESPONSE.", v2, v3, v4, v5);
}

void EQInit_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "EQInit";
  v3 = 1024;
  v4 = 9;
  v5 = 1024;
  v6 = 9;
  _os_log_error_impl(&dword_23D497000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/peq.c:%d: fail to initialize event queue.", v1, 0x22u);
}

void EQPush_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "EQPush";
  v3 = 1024;
  v4 = 23;
  v5 = 1024;
  v6 = 23;
  _os_log_error_impl(&dword_23D497000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/peq.c:%d: event is empty!", v1, 0x22u);
}

void MakeAllocateRequest_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  HIWORD(v7) = v0;
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v1, v2, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: MakeAllocateRequest: get server addr failed (%08X)", v3, v4, v5, v6, v7);
}

void MakeChannelBindRequest_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  HIWORD(v7) = v0;
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v1, v2, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: MakeChannelBindRequest: get peer addr failed (%08X)", v3, v4, v5, v6, v7);
}

void RelayRefreshProc_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136316162;
  *&v3[4] = a1;
  *&v3[12] = 2080;
  *&v3[14] = "RelayRefreshProc";
  OUTLINED_FUNCTION_4_0(&dword_23D497000, a2, a3, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: RelayRefreshProc timed out...tear down channel#[%04X]", *v3, *&v3[8], "RelayRefreshProc" >> 16, 445, 0x4000000);
}

void RelayDiscardProc_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: RelayDiscardProc timed out.", v2, v3, v4, v5);
}

void ProcessAllocateResponse_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: No MESSAGE_INTEGRITY in allocate response!", v2, v3, v4, v5);
}

void ProcessAllocateErrorResponse_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: Allocation Mismatch, server is not ready?", v2, v3, v4, v5);
}

double machTimeScale_cold_1()
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  qword_27E2DC7C8 = *&result;
  __dmb(0xBu);
  _MergedGlobals = 1;
  return result;
}

uint64_t STUNEncodeMessage(unsigned __int16 *a1, uint64_t a2, int *a3, const void *a4, __n128 a5)
{
  v102 = *MEMORY[0x277D85DE8];
  result = 2148794376;
  if (!a2)
  {
    return 2148794369;
  }

  v8 = *a3;
  if (v8 >= 0x14)
  {
    v9 = bswap32(a1[1] & 0xF | *a1 | (2 * a1[1]) & 0xE0 | (4 * a1[1]) & 0x3E00);
    v10 = HIWORD(v9);
    *a2 = HIWORD(v9);
    *(a2 + 2) = 0;
    if (a1[3])
    {
      *(a2 + 4) = 1118048801;
      v11 = *(a1 + 6);
      *(a2 + 16) = *(a1 + 5);
      *(a2 + 8) = v11;
    }

    else
    {
      a5 = *(a1 + 4);
      *(a2 + 4) = a5;
    }

    v12 = a2 + 20;
    if (*(a1 + 7) < 1)
    {
LABEL_87:
      result = 0;
      *(a2 + 2) = bswap32(v12 - a2 - 20) >> 16;
      *a3 = v12 - a2;
      return result;
    }

    HIDWORD(v90) = v10;
    v13 = 0;
    v14 = v8 - 20;
    a5.n128_u64[0] = 136316162;
    v91 = a5;
    while (1)
    {
      v15 = &a1[28 * v13 + 16];
      v16 = *v15;
      v17 = 0;
      switch(*v15)
      {
        case 1u:
          v44 = OUTLINED_FUNCTION_3_0();
          v48 = 1;
          goto LABEL_47;
        case 2u:
          v44 = OUTLINED_FUNCTION_3_0();
          v48 = 2;
          goto LABEL_47;
        case 3u:
          if (v14 <= 7)
          {
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              return 2148794376;
            }

            v82 = VRTraceErrorLogLevelToCSTR();
            v73 = *MEMORY[0x277CE5818];
            if (!OUTLINED_FUNCTION_8_1())
            {
              return 2148794376;
            }

            v96 = v82;
            v97 = 2080;
            *buf = v91;
            OUTLINED_FUNCTION_4_1();
            v98 = 106;
            v99 = 2048;
            *v100 = v14;
            *&v100[8] = 2048;
            *&v100[10] = 8;
            v83 = " [%s] %s:%d Buffer is too short. bufferLength=%zu requiredLength=%zu";
            goto LABEL_113;
          }

          *v12 = 67109632;
          *(v12 + 4) = ((*(v15 + 9) << 25) | (*(v15 + 8) << 26)) & 0x6000000;
          v17 = 8;
LABEL_9:
          v12 += v17;
          v14 -= v17;
          goto LABEL_82;
        case 4u:
          v44 = OUTLINED_FUNCTION_3_0();
          v48 = 4;
          goto LABEL_47;
        case 5u:
          v44 = OUTLINED_FUNCTION_3_0();
          v48 = 5;
          goto LABEL_47;
        case 6u:
          OUTLINED_FUNCTION_7_0();
          if (!v39 & v38)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v73 = *MEMORY[0x277CE5818];
              v74 = OUTLINED_FUNCTION_8_1();
              if (v74)
              {
                goto LABEL_112;
              }
            }

            return 2148794376;
          }

          v40 = 1536;
          goto LABEL_24;
        case 7u:
          OUTLINED_FUNCTION_7_0();
          if (!v39 & v38)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v73 = *MEMORY[0x277CE5818];
              v74 = OUTLINED_FUNCTION_8_1();
              if (v74)
              {
                goto LABEL_112;
              }
            }

            return 2148794376;
          }

          v40 = 1792;
          goto LABEL_24;
        case 8u:
          qmemcpy(v101, "ABCDEFGHIJABCDEFGHIJ", 20);
          if (a4)
          {
            MessageIntegrityFromDict = GetMessageIntegrityFromDict(a4, v101);
            if (MessageIntegrityFromDict < 0)
            {
              v50 = MessageIntegrityFromDict;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                v51 = *MEMORY[0x277CE5818];
                v52 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
                if (v52)
                {
                  OUTLINED_FUNCTION_2_0(v52, v53, v54, v55, v56, v57, v58, v59, v89, v90, v91);
                  OUTLINED_FUNCTION_4_1();
                  OUTLINED_FUNCTION_9_0();
                  *&v100[6] = v50;
                  _os_log_error_impl(&dword_23D497000, v51, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/STUNEncoder.c:%d: GetMessageIntegrityFromDict failed (%08X)\n", buf, 0x28u);
                }
              }
            }
          }

          v60 = OUTLINED_FUNCTION_3_0();
          result = STUNEncodeAttrMI(v60, v61, v62, v63, v64);
          goto LABEL_44;
        case 9u:
          v5 = *(v15 + 3) + 8;
          if (v5 > v14)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v73 = *MEMORY[0x277CE5818];
              v74 = OUTLINED_FUNCTION_8_1();
              if (v74)
              {
                goto LABEL_112;
              }
            }

            return 2148794376;
          }

          *v12 = 2304;
          OUTLINED_FUNCTION_6_1(v15[6] + 4);
          *(v12 + 4) = 0;
          *(v12 + 6) = *(v15 + 8);
          *(v12 + 7) = *(v15 + 9);
          v41 = *(v15 + 2);
          v42 = *(v15 + 3);
          v43 = (v12 + 8);
          goto LABEL_32;
        case 0xAu:
          v5 = 2 * (*(v15 + 2) / 2) + 4;
          if (v5 > v14)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v73 = *MEMORY[0x277CE5818];
              v74 = OUTLINED_FUNCTION_8_1();
              if (v74)
              {
                goto LABEL_112;
              }
            }

            return 2148794376;
          }

          *v12 = 2560;
          OUTLINED_FUNCTION_6_1(v15[4]);
          if (*(v15 + 2) >= 2)
          {
            v65 = 0;
            do
            {
              *(v12 + 4 + 2 * v65) = bswap32(*(*(v15 + 2) + 2 * v65)) >> 16;
              ++v65;
            }

            while (v65 < *(v15 + 2) / 2);
          }

          goto LABEL_79;
        case 0xBu:
        case 0x14u:
        case 0x15u:
        case 0x20u:
          goto LABEL_9;
        case 0xCu:
          v18 = OUTLINED_FUNCTION_1_0();
          v22 = 12;
          goto LABEL_77;
        case 0xDu:
          v18 = OUTLINED_FUNCTION_1_0();
          v22 = 13;
          goto LABEL_77;
        case 0xEu:
        case 0x17u:
        case 0x1Bu:
        case 0x1Cu:
        case 0x1Du:
        case 0x1Eu:
        case 0x1Fu:
        case 0x21u:
        case 0x23u:
          goto LABEL_15;
        case 0xFu:
          v18 = OUTLINED_FUNCTION_1_0();
          v22 = 15;
          goto LABEL_77;
        case 0x10u:
          v18 = OUTLINED_FUNCTION_1_0();
          v22 = 16;
          goto LABEL_77;
        case 0x11u:
          v44 = OUTLINED_FUNCTION_3_0();
          v48 = 17;
LABEL_47:
          result = STUNEncodeAttrAddress(v44, v45, v48, v46, v47);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_78;
        case 0x12u:
          v66 = OUTLINED_FUNCTION_5_1();
          v71 = 18;
          goto LABEL_62;
        case 0x13u:
          OUTLINED_FUNCTION_7_0();
          if (!v39 & v38)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v73 = *MEMORY[0x277CE5818];
              v74 = OUTLINED_FUNCTION_8_1();
              if (v74)
              {
                goto LABEL_112;
              }
            }

            return 2148794376;
          }

          v40 = 4864;
          goto LABEL_24;
        case 0x16u:
          v66 = OUTLINED_FUNCTION_5_1();
          v71 = 22;
LABEL_62:
          result = STUNEncodeAttrXORAddress(v66, v67, v71, v68, v69, v70);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_78;
        case 0x18u:
          v18 = OUTLINED_FUNCTION_1_0();
          v22 = 24;
          goto LABEL_77;
        case 0x19u:
          v18 = OUTLINED_FUNCTION_1_0();
          v22 = 25;
          goto LABEL_77;
        case 0x1Au:
          v34 = OUTLINED_FUNCTION_5_1();
          v37 = 26;
          goto LABEL_70;
        case 0x22u:
          v23 = OUTLINED_FUNCTION_3_0();
          v27 = 34;
          goto LABEL_85;
        case 0x24u:
          v18 = OUTLINED_FUNCTION_1_0();
          v22 = 36;
LABEL_77:
          result = STUNEncodeAttrU32(v18, v19, v22, v20, v21);
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_78;
          }

          return result;
        case 0x25u:
          v34 = OUTLINED_FUNCTION_5_1();
          v37 = 37;
LABEL_70:
          result = STUNEncodeAttr(v34, v35, v37, v36);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_78;
        default:
          switch(*v15)
          {
            case 0x8001u:
              v18 = OUTLINED_FUNCTION_1_0();
              v22 = 32769;
              goto LABEL_77;
            case 0x8002u:
              goto LABEL_15;
            case 0x8003u:
              v18 = OUTLINED_FUNCTION_1_0();
              v22 = 32771;
              goto LABEL_77;
            case 0x8004u:
              v18 = OUTLINED_FUNCTION_1_0();
              v22 = 32772;
              goto LABEL_77;
            case 0x8005u:
              v18 = OUTLINED_FUNCTION_1_0();
              v22 = 32773;
              goto LABEL_77;
            case 0x8006u:
              v34 = OUTLINED_FUNCTION_5_1();
              v37 = 32774;
              goto LABEL_70;
            case 0x8007u:
              v18 = OUTLINED_FUNCTION_1_0();
              v22 = 32775;
              goto LABEL_77;
            case 0x8008u:
              v18 = OUTLINED_FUNCTION_1_0();
              v22 = 32776;
              goto LABEL_77;
            case 0x8009u:
              v72 = *(v15 + 4);
              v5 = v72 + 6;
              if (v72 + 6 > v14)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  v73 = *MEMORY[0x277CE5818];
                  v74 = OUTLINED_FUNCTION_8_1();
                  if (v74)
                  {
                    goto LABEL_112;
                  }
                }

                return 2148794376;
              }

              *v12 = 2432;
              OUTLINED_FUNCTION_6_1(v72 + 2);
              *(v12 + 4) = bswap32(v15[4]) >> 16;
              v41 = *(v15 + 3);
              v42 = *(v15 + 4);
              v43 = (v12 + 6);
              goto LABEL_32;
            case 0x800Au:
              OUTLINED_FUNCTION_7_0();
              if (!v39 & v38)
              {
                if (VRTraceGetErrorLogLevelForModule() < 3)
                {
                  return 2148794376;
                }

                VRTraceErrorLogLevelToCSTR();
                v73 = *MEMORY[0x277CE5818];
                v74 = OUTLINED_FUNCTION_8_1();
                if (!v74)
                {
                  return 2148794376;
                }

LABEL_112:
                OUTLINED_FUNCTION_2_0(v74, v75, v76, v77, v78, v79, v80, v81, v89, v90, v91);
                OUTLINED_FUNCTION_4_1();
                OUTLINED_FUNCTION_0_1();
                v83 = " [%s] %s:%d Buffer is too short. bufferLength=%zu requiredLength=%zu";
LABEL_113:
                v84 = v73;
                v85 = 48;
                goto LABEL_114;
              }

              v40 = 2688;
LABEL_24:
              *v12 = v40;
              OUTLINED_FUNCTION_6_1(v15[4]);
              v41 = *(v15 + 2);
              v42 = *(v15 + 2);
              v43 = (v12 + 4);
LABEL_32:
              memcpy(v43, v41, v42);
              goto LABEL_79;
            default:
              if (v16 == 32809)
              {
                v23 = OUTLINED_FUNCTION_3_0();
                v27 = 32809;
LABEL_85:
                result = STUNEncodeAttrU64(v23, v24, v27, v25, v26);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                goto LABEL_78;
              }

              if (v16 == 32810)
              {
                v23 = OUTLINED_FUNCTION_3_0();
                v27 = 32810;
                goto LABEL_85;
              }

LABEL_15:
              if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                v28 = VRTraceErrorLogLevelToCSTR();
                v29 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v91;
                  v96 = v28;
                  v97 = 2080;
                  OUTLINED_FUNCTION_4_1();
                  OUTLINED_FUNCTION_9_0();
                  *&v100[6] = v16;
                  _os_log_impl(&dword_23D497000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/STUNEncoder.c:%d: Attrib %d not encoded correctly", buf, 0x28u);
                }
              }

              v30 = OUTLINED_FUNCTION_3_0();
              result = STUNEncodeAttrAddress(v30, v31, v32, v15 + 8, v33);
LABEL_44:
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

LABEL_78:
              v5 = 0;
LABEL_79:
              v12 += v5;
              v14 -= v5;
              if ((v5 & 3) != 0)
              {
                v5 = -v5 & 3;
                if (v14 < v5)
                {
                  if (VRTraceGetErrorLogLevelForModule() < 3)
                  {
                    return 2148794376;
                  }

                  v86 = VRTraceErrorLogLevelToCSTR();
                  v87 = *MEMORY[0x277CE5818];
                  if (!OUTLINED_FUNCTION_8_1())
                  {
                    return 2148794376;
                  }

                  *buf = 136316418;
                  v96 = v86;
                  v97 = 2080;
                  OUTLINED_FUNCTION_4_1();
                  v98 = 559;
                  v99 = v88;
                  *v100 = HIDWORD(v90);
                  *&v100[4] = 2048;
                  *&v100[6] = v5;
                  *&v100[14] = 2048;
                  *&v100[16] = v14;
                  v83 = " [%s] %s:%d Failed to add padding. type=%d, padding=%zu remainingLength=%zu";
                  v84 = v87;
                  v85 = 54;
LABEL_114:
                  _os_log_error_impl(&dword_23D497000, v84, OS_LOG_TYPE_ERROR, v83, buf, v85);
                  return 2148794376;
                }

                v12 += v5;
                v14 -= v5;
              }

LABEL_82:
              if (++v13 >= *(a1 + 7))
              {
                goto LABEL_87;
              }

              break;
          }

          break;
      }
    }
  }

  return result;
}

void ParseSTUNXORAddr_cold_1()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_3_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12_1();
}

void ParseSTUNXORAddr_cold_2()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_3_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12_1();
}

void ParseSTUNXORAddr_cold_3()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_3_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12_1();
}

void ParseSTUNXORAddr_cold_4()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_3_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12_1();
}

void ParseSTUNMessage_cold_1()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_3_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12_1();
}

void ParseSTUNMessage_cold_2()
{
  OUTLINED_FUNCTION_13_0();
  v1 = v0;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
    }
  }

  *v1 = -2146172920;
  OUTLINED_FUNCTION_12_1();
}

void ParseSTUNMessage_cold_3(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Eu);
    }
  }

  *a3 = -2146172920;
}

void ParseSTUNMessage_cold_4()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_3_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12_1();
}

void ParseSTUNMessage_cold_5()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_3_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12_1();
}

void ParseSTUNMessage_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_11_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_10_1();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
    }
  }

  *a1 = v1;
}

void ParseSTUNMessage_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_11_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_10_1();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  *a1 = v1;
}

void ParseSTUNMessage_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_11_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_10_1();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  *a1 = v1;
}