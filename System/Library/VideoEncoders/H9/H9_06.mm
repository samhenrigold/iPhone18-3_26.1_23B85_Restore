void AVE_PrepareVideoAndSequenceHeader(uint64_t a1, __CVBuffer *a2)
{
  v319 = *MEMORY[0x29EDCA608];
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareVideoAndSequenceHeader\n", CurrTime, 12, LevelStr);
      v7 = AVE_GetCurrTime();
      v287 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareVideoAndSequenceHeader", v7, 12, v287);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareVideoAndSequenceHeader", CurrTime, 12, LevelStr);
    }
  }

  if (!a2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v11 = AVE_Log_CheckConsole(3u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.\n", v12, 3, v13, "AVE_PrepareVideoAndSequenceHeader", 1995, "imageBuffer != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.");
    }

    goto LABEL_267;
  }

  v8 = *(a1 + 10808);
  v9 = *(a1 + 1336);
  v10 = a1 + 31332;
  memset(v318, 0, sizeof(v318));
  if (v8 > 7)
  {
    if (v8 == 8)
    {
      if ((v9 & 0x8000000) != 0)
      {
        v314 = xmmword_29565E270;
        v315 = unk_29565E280;
        v316 = xmmword_29565E290;
        v317 = unk_29565E2A0;
        v310 = xmmword_29565E230;
        v311 = unk_29565E240;
        v312 = xmmword_29565E250;
        v313 = unk_29565E260;
        v306 = ExplicitStillHEVCHighGainScalingList4x4_PQ;
        v307 = unk_29565E200;
        v308 = xmmword_29565E210;
        v309 = unk_29565E220;
        v14 = &ExplicitStillHEVCHighGainScalingList_PQ;
      }

      else
      {
        v314 = xmmword_29565EC30;
        v315 = unk_29565EC40;
        v316 = xmmword_29565EC50;
        v317 = unk_29565EC60;
        v310 = xmmword_29565EBF0;
        v311 = unk_29565EC00;
        v312 = xmmword_29565EC10;
        v313 = unk_29565EC20;
        v306 = ExplicitStillHEVCHighGainScalingList4x4;
        v307 = unk_29565EBC0;
        v308 = xmmword_29565EBD0;
        v309 = unk_29565EBE0;
        v14 = &ExplicitStillHEVCHighGainScalingList;
      }

      goto LABEL_16;
    }

    if (v8 != 9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v8 == 1)
    {
      *(a1 + 24856) = 1;
      goto LABEL_107;
    }

    if (v8 != 2)
    {
LABEL_9:
      *(a1 + 24856) = 0;
      goto LABEL_107;
    }
  }

  v314 = xmmword_29565F5F0;
  v315 = unk_29565F600;
  v316 = xmmword_29565F610;
  v317 = unk_29565F620;
  v310 = xmmword_29565F5B0;
  v311 = unk_29565F5C0;
  v312 = xmmword_29565F5D0;
  v313 = unk_29565F5E0;
  v306 = ExplicitScalingList4x4;
  v307 = unk_29565F580;
  v308 = xmmword_29565F590;
  v309 = unk_29565F5A0;
  v14 = &ExplicitScalingList;
LABEL_16:
  memcpy(__dst, v14, sizeof(__dst));
  v15 = 0;
  *(a1 + 24856) = 257;
  v16 = a1 + 24908;
  v17 = a1 + 25004;
  do
  {
    for (i = 0; i != 6; ++i)
    {
      *(v16 + 4 * i) = 0;
      *(v17 + i) = 1;
    }

    ++v15;
    v17 += 6;
    v16 += 24;
  }

  while (v15 != 4);
  v19 = 0;
  v20 = 1;
  do
  {
    v21 = 0;
    v22 = v20;
    v23 = a1 + 25028 + (v19 << 7);
    do
    {
      v24 = 0;
      v25 = v21 + v19;
      v26 = &byte_29565E151;
      do
      {
        v27 = *(v26 - 1);
        v28 = *v26;
        v26 += 2;
        *(v318 + v24++) = *(&v306 + 16 * v21 + 16 * v19 + 4 * v28 + v27);
      }

      while (v24 != 16);
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v318 + v29);
        v32 = v31 - v30;
        if ((v31 - v30) <= 0)
        {
          v33 = 256;
        }

        else
        {
          v33 = -256;
        }

        v34 = v33 + v32;
        if ((v31 - v30) != v32)
        {
          v32 = v34;
        }

        *(v23 + 2 * v29) = v32;
        v35 = (v30 + v32);
        if (v35 != v31)
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v84 = AVE_Log_CheckConsole(3u);
            v85 = AVE_GetCurrTime();
            v86 = AVE_Log_GetLevelStr(4);
            if (v84)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v85, 3, v86, "AVE_HEVC_set_default_scaling_lists", 1744, "nextCoef == ScalingList[i]", v35, v29, v31);
              v85 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d", v85, 3);
          }

          goto LABEL_107;
        }

        if (v31 <= 5)
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v87 = AVE_Log_CheckConsole(3u);
            v88 = AVE_GetCurrTime();
            v89 = AVE_Log_GetLevelStr(4);
            if (v87)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v88, 3, v89, "AVE_HEVC_set_default_scaling_lists", 1745, "(nextCoef >= 6 && nextCoef <= 255)", v31);
              v88 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)", v88);
          }

          goto LABEL_107;
        }

        if (v32 != v32)
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v90 = AVE_Log_CheckConsole(3u);
            v91 = AVE_GetCurrTime();
            v92 = AVE_Log_GetLevelStr(4);
            if (v90)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v91, 3, v92, "AVE_HEVC_set_default_scaling_lists", 1746, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 0, v25, v29, *(v23 + 2 * v29));
              v91 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v91, 3);
          }

          goto LABEL_107;
        }

        ++v29;
        v30 = v31;
      }

      while (v29 != 16);
      ++v21;
      v23 += 128;
    }

    while (v21 != 3);
    v20 = 0;
    v19 = 3;
  }

  while ((v22 & 1) != 0);
  v36 = 0;
  v37 = 1;
  do
  {
    v38 = 0;
    v39 = v37;
    v40 = a1 + 25796 + (v36 << 7);
    do
    {
      v41 = 0;
      v42 = v38 + v36;
      v43 = &byte_29565E171;
      do
      {
        v44 = *(v43 - 1);
        v45 = *v43;
        v43 += 2;
        *(v318 + v41++) = *&__dst[128 * v38 + 128 * v36 + 16 * v45 + 2 * v44];
      }

      while (v41 != 64);
      v46 = 0;
      v47 = 8;
      do
      {
        v48 = *(v318 + v46);
        v49 = v48 - v47;
        if ((v48 - v47) <= 0)
        {
          v50 = 256;
        }

        else
        {
          v50 = -256;
        }

        v51 = v50 + v49;
        if ((v48 - v47) != v49)
        {
          v49 = v51;
        }

        *(v40 + 2 * v46) = v49;
        v52 = (v47 + v49);
        if (v52 != v48)
        {
          v10 = a1 + 31332;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_107;
          }

          v248 = AVE_Log_CheckConsole(3u);
          v249 = AVE_GetCurrTime();
          v250 = AVE_Log_GetLevelStr(4);
          if (v248)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v249, 3, v250, "AVE_HEVC_set_default_scaling_lists", 1783, "nextCoef == ScalingList[i]", v52, v46, v48);
            v249 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

LABEL_373:
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d", v249, 3);
          goto LABEL_383;
        }

        if (v48 <= 5)
        {
          v10 = a1 + 31332;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_107;
          }

          v251 = AVE_Log_CheckConsole(3u);
          v252 = AVE_GetCurrTime();
          v253 = AVE_Log_GetLevelStr(4);
          if (v251)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v252, 3, v253, "AVE_HEVC_set_default_scaling_lists", 1784, "(nextCoef >= 6 && nextCoef <= 255)", v48);
            v254 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)", v254);
            goto LABEL_383;
          }

          goto LABEL_392;
        }

        if (v49 != v49)
        {
          v10 = a1 + 31332;
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v255 = AVE_Log_CheckConsole(3u);
            v256 = AVE_GetCurrTime();
            v257 = AVE_Log_GetLevelStr(4);
            if (!v255)
            {
              goto LABEL_382;
            }

            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v256, 3, v257, "AVE_HEVC_set_default_scaling_lists", 1785, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 1, v42, v46, *(v40 + 2 * v46));
            v258 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v258, 3);
LABEL_383:
            v10 = a1 + 31332;
          }

          goto LABEL_107;
        }

        ++v46;
        v47 = v48;
      }

      while (v46 != 64);
      ++v38;
      v40 += 128;
    }

    while (v38 != 3);
    v37 = 0;
    v36 = 3;
  }

  while ((v39 & 1) != 0);
  v53 = 0;
  v54 = 1;
  while (2)
  {
    v55 = 0;
    v56 = v54;
    v57 = a1 + 26564 + (v53 << 7);
    while (2)
    {
      v58 = v55 + v53;
      v59 = *&__dst[128 * (v55 + v53) + 768];
      v60 = *&__dst[128 * (v55 + v53) + 768];
      *(a1 + 24860 + 4 * (v55 + v53)) = v60 - 8;
      if (v59 != v59)
      {
        v10 = a1 + 31332;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v268 = AVE_Log_CheckConsole(3u);
          v269 = AVE_GetCurrTime();
          v270 = AVE_Log_GetLevelStr(4);
          if (v268)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d\n", v269, 3, v270, "AVE_HEVC_set_default_scaling_lists", 1807, "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]", v59, 1, v58, v60);
            v271 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d", v271, 3);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d", v269, 3);
          }

          goto LABEL_383;
        }

        goto LABEL_107;
      }

      if ((v60 - 6) > 0xF9)
      {
        v10 = a1 + 31332;
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_107;
        }

        v272 = AVE_Log_CheckConsole(3u);
        v252 = AVE_GetCurrTime();
        v273 = AVE_Log_GetLevelStr(4);
        if (v272)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v252, 3, v273, "AVE_HEVC_set_default_scaling_lists", 1808, "(nextCoef >= 6 && nextCoef <= 255)", v60);
          v252 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

LABEL_392:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)", v252);
        goto LABEL_383;
      }

      v61 = 0;
      v62 = &byte_29565E171;
      do
      {
        v63 = *(v62 - 1);
        v64 = *v62;
        v62 += 2;
        *(v318 + v61++) = *&__dst[128 * v58 + 768 + 16 * v64 + 2 * v63];
      }

      while (v61 != 64);
      for (j = 0; j != 64; ++j)
      {
        v66 = *(v318 + j);
        v67 = v66 - v60;
        if ((v66 - v60) <= 0)
        {
          v68 = 256;
        }

        else
        {
          v68 = -256;
        }

        if ((v66 - v60) != v67)
        {
          v67 = v68 + v66 - v60;
        }

        *(v57 + 2 * j) = v67;
        v69 = (v67 + v60);
        if (v69 != v66)
        {
          v10 = a1 + 31332;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_107;
          }

          v259 = AVE_Log_CheckConsole(3u);
          v249 = AVE_GetCurrTime();
          v260 = AVE_Log_GetLevelStr(4);
          if (v259)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v249, 3, v260, "AVE_HEVC_set_default_scaling_lists", 1831, "nextCoef == ScalingList[i]", v69, j, v66);
LABEL_387:
            v249 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          goto LABEL_373;
        }

        if (v66 <= 5)
        {
          v10 = a1 + 31332;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_107;
          }

          v261 = AVE_Log_CheckConsole(3u);
          v252 = AVE_GetCurrTime();
          v262 = AVE_Log_GetLevelStr(4);
          if (v261)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v252, 3, v262, "AVE_HEVC_set_default_scaling_lists", 1832, "(nextCoef >= 6 && nextCoef <= 255)", v66);
LABEL_391:
            v252 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          goto LABEL_392;
        }

        if (v67 != v67)
        {
          v10 = a1 + 31332;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_107;
          }

          v263 = AVE_Log_CheckConsole(3u);
          v264 = AVE_GetCurrTime();
          v265 = AVE_Log_GetLevelStr(4);
          if (v263)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v264, 3, v265, "AVE_HEVC_set_default_scaling_lists", 1833, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 2, v58, j, *(v57 + 2 * j));
            v266 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v266, 3);
            goto LABEL_383;
          }

          v303 = j;
          v304 = *(v57 + 2 * j);
          v300 = 2;
          v302 = v58;
          v296 = 1833;
          v298 = "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)";
          v294 = v265;
          v267 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)";
          goto LABEL_399;
        }

        LOWORD(v60) = v66;
      }

      ++v55;
      v57 += 128;
      if (v55 != 3)
      {
        continue;
      }

      break;
    }

    v54 = 0;
    v53 = 3;
    if (v56)
    {
      continue;
    }

    break;
  }

  v70 = 0;
  v71 = 1;
  v10 = a1 + 31332;
LABEL_71:
  v72 = *&__dst[128 * v70 + 1536];
  v73 = v71;
  v74 = *&__dst[128 * v70 + 1536];
  *(a1 + 24884 + 4 * v70) = v74 - 8;
  if (v72 == v72)
  {
    if ((v74 - 6) <= 0xF9)
    {
      v75 = 0;
      v76 = &byte_29565E171;
      do
      {
        v77 = *(v76 - 1);
        v78 = *v76;
        v76 += 2;
        *(v318 + v75++) = *&__dst[128 * v70 + 1536 + 16 * v78 + 2 * v77];
      }

      while (v75 != 64);
      v79 = 0;
      while (1)
      {
        v80 = *(v318 + v79);
        v81 = v80 - v74;
        if ((v80 - v74) <= 0)
        {
          v82 = 256;
        }

        else
        {
          v82 = -256;
        }

        if ((v80 - v74) != v81)
        {
          v81 = v82 + v80 - v74;
        }

        *(a1 + 27332 + (v70 << 7) + 2 * v79) = v81;
        v83 = (v81 + v74);
        if (v83 != v80)
        {
          v10 = a1 + 31332;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_107;
          }

          v274 = AVE_Log_CheckConsole(3u);
          v249 = AVE_GetCurrTime();
          v275 = AVE_Log_GetLevelStr(4);
          if (v274)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v249, 3, v275, "AVE_HEVC_set_default_scaling_lists", 1878, "nextCoef == ScalingList[i]", v83, v79, v80);
            goto LABEL_387;
          }

          goto LABEL_373;
        }

        if (v80 <= 5)
        {
          v10 = a1 + 31332;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_107;
          }

          v276 = AVE_Log_CheckConsole(3u);
          v252 = AVE_GetCurrTime();
          v277 = AVE_Log_GetLevelStr(4);
          if (v276)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v252, 3, v277, "AVE_HEVC_set_default_scaling_lists", 1879, "(nextCoef >= 6 && nextCoef <= 255)", v80);
            goto LABEL_391;
          }

          goto LABEL_392;
        }

        if (v81 != v81)
        {
          break;
        }

        ++v79;
        LOWORD(v74) = v80;
        if (v79 == 64)
        {
          v71 = 0;
          v70 = 3;
          if (v73)
          {
            goto LABEL_71;
          }

          goto LABEL_107;
        }
      }

      v10 = a1 + 31332;
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_107;
      }

      v278 = AVE_Log_CheckConsole(3u);
      v256 = AVE_GetCurrTime();
      v279 = AVE_Log_GetLevelStr(4);
      if (v278)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v256, 3, v279, "AVE_HEVC_set_default_scaling_lists", 1880, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 3, v70, v79, *(a1 + (v70 << 7) + 27332 + 2 * v79));
        v280 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v280, 3);
        goto LABEL_383;
      }

LABEL_382:
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v256, 3);
      goto LABEL_383;
    }

    v10 = a1 + 31332;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v285 = AVE_Log_CheckConsole(3u);
      v264 = AVE_GetCurrTime();
      v286 = AVE_Log_GetLevelStr(4);
      if (v285)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v264, 3, v286, "AVE_HEVC_set_default_scaling_lists", 1855, "(nextCoef >= 6 && nextCoef <= 255)", v74);
        v283 = AVE_GetCurrTime();
        v299 = "(nextCoef >= 6 && nextCoef <= 255)";
        v301 = v74;
        v297 = 1855;
        v295 = AVE_Log_GetLevelStr(4);
        v284 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)";
        goto LABEL_426;
      }

      v298 = "(nextCoef >= 6 && nextCoef <= 255)";
      v300 = v74;
      v296 = 1855;
      v294 = v286;
      v267 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)";
      goto LABEL_399;
    }
  }

  else
  {
    v10 = a1 + 31332;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v281 = AVE_Log_CheckConsole(3u);
      v264 = AVE_GetCurrTime();
      v282 = AVE_Log_GetLevelStr(4);
      if (v281)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d\n", v264, 3, v282, "AVE_HEVC_set_default_scaling_lists", 1854, "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]", v72, 2, v70, v74);
        v283 = AVE_GetCurrTime();
        v303 = v70;
        v304 = v74;
        v301 = v72;
        v302 = 2;
        v297 = 1854;
        v299 = "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]";
        v295 = AVE_Log_GetLevelStr(4);
        v284 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d";
LABEL_426:
        syslog(3, v284, v283, 3, v295, "AVE_HEVC_set_default_scaling_lists", v297, v299, v301, v302, v303, v304);
        goto LABEL_383;
      }

      v303 = v70;
      v304 = v74;
      v300 = v72;
      v302 = 2;
      v296 = 1854;
      v298 = "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]";
      v294 = v282;
      v267 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d";
LABEL_399:
      syslog(3, v267, v264, 3, v294, "AVE_HEVC_set_default_scaling_lists", v296, v298, v300, v302, v303, v304);
      goto LABEL_383;
    }
  }

LABEL_107:
  if (*(a1 + 24836) == 3)
  {
    v93 = 63;
  }

  else
  {
    v93 = 31;
  }

  if (*(a1 + 24836) == 3)
  {
    v94 = 6;
  }

  else
  {
    v94 = 5;
  }

  v95 = *(a1 + 1440);
  *(a1 + 24696) = v95;
  *(a1 + 24704) = vshl_u32(vadd_s32(v95, vdup_n_s32(v93)), vneg_s32(vdup_n_s32(v94)));
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v97 = AVE_PixelFmt_FindByType(PixelFormatType);
  v98 = v97;
  if (v97 && (*(a1 + 1104) & 8) != 0)
  {
    v102 = *(v97 + 7);
    v103 = 1;
    if (v102 != 1)
    {
      v103 = *v10;
    }

    *v10 = v103 & 1;
    *(v10 + 24) = v102 == 1;
    *(v10 + 17) = 1;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v104 = AVE_Log_CheckConsole(0x1Eu);
      v105 = AVE_GetCurrTime();
      v106 = AVE_Log_GetLevelStr(6);
      if (v104)
      {
        printf("%lld %d AVE %s: FIG: video_full_range_flag %d\n", v105, 30, v106, *(v98 + 7) == 1);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: FIG: video_full_range_flag %d");
    }
  }

  else if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v99 = AVE_Log_CheckConsole(0x1Eu);
    v100 = AVE_GetCurrTime();
    v101 = AVE_Log_GetLevelStr(6);
    if (v99)
    {
      printf("%lld %d AVE %s: FIG: Unknown dynamic range\n", v100, 30, v101);
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: FIG: Unknown dynamic range");
  }

  if ((*(a1 + 1104) & 0x40) != 0)
  {
    if (*(a1 + 1112) >= 1)
    {
      v109 = *(a1 + 1112);
    }

    else
    {
      v109 = 30;
    }

    v108 = 1;
    *(a1 + 14424) = 1;
    *(a1 + 14432) = 27000000;
    v110 = 0x19BFCC0 / v109;
    *(a1 + 14428) = v110;
    *(v10 + 80) = v110;
    *(v10 + 84) = 27000000;
    *(v10 + 76) = 1;
  }

  else
  {
    v107 = *(a1 + 14424);
    *(v10 + 76) = 0;
    if (v107)
    {
      v108 = 1;
    }

    else
    {
      v108 = *v10;
    }
  }

  *v10 = *(v10 + 141) | *(v10 + 44) | *(v10 + 1) | v108 & 1;
  v111 = CVBufferCopyAttachment(a2, *MEMORY[0x29EDB9568], 0);
  v112 = MEMORY[0x29EDB9588];
  if (v111)
  {
    v113 = v111;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v114 = AVE_Log_CheckConsole(0x1Eu);
      v115 = AVE_GetCurrTime();
      v116 = AVE_Log_GetLevelStr(6);
      if (v114)
      {
        printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!\n", v115, 30, v116);
        v117 = AVE_GetCurrTime();
        v288 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v117, 30, v288);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v115, 30, v116);
      }
    }

    if (CFEqual(v113, *v112))
    {
LABEL_139:
      v118 = 0;
    }

    else if (CFEqual(v113, *MEMORY[0x29EDB9580]))
    {
      v118 = 1;
    }

    else if (CFEqual(v113, *MEMORY[0x29EDB9598]))
    {
      v118 = 2;
    }

    else if (CFEqual(v113, *MEMORY[0x29EDB9590]))
    {
      v118 = 3;
    }

    else if (CFEqual(v113, *MEMORY[0x29EDB9578]))
    {
      v118 = 4;
    }

    else
    {
      if (!CFEqual(v113, *MEMORY[0x29EDB9570]))
      {
        if (AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v240 = AVE_Log_CheckConsole(0x1Eu);
          v241 = AVE_GetCurrTime();
          v242 = AVE_Log_GetLevelStr(5);
          if (v240)
          {
            printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v241, 30, v242);
            v243 = AVE_GetCurrTime();
            v292 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v243, 30, v292);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v241, 30, v242);
          }
        }

        goto LABEL_139;
      }

      v118 = 5;
    }

    *(v10 + 48) = v118;
    *(v10 + 52) = v118;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v119 = AVE_Log_CheckConsole(0x1Eu);
      v120 = AVE_GetCurrTime();
      v121 = AVE_Log_GetLevelStr(6);
      v122 = *(v10 + 52);
      if (v119)
      {
        printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v120, 30, v121, *(v10 + 48), v122);
        v123 = AVE_GetCurrTime();
        v124 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v123, 30, v124, *(v10 + 48), *(v10 + 52));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v120, 30, v121, *(v10 + 48), v122);
      }
    }

    CFRelease(v113);
  }

  v125 = CVBufferCopyAttachment(a2, *MEMORY[0x29EDB9560], 0);
  if (v125)
  {
    v126 = v125;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v127 = AVE_Log_CheckConsole(0x1Eu);
      v128 = AVE_GetCurrTime();
      v129 = AVE_Log_GetLevelStr(6);
      if (v127)
      {
        printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!\n", v128, 30, v129);
        v130 = AVE_GetCurrTime();
        v289 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v130, 30, v289);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v128, 30, v129);
      }
    }

    if (CFEqual(v126, *v112))
    {
LABEL_161:
      v131 = 0;
    }

    else if (CFEqual(v126, *MEMORY[0x29EDB9580]))
    {
      v131 = 1;
    }

    else if (CFEqual(v126, *MEMORY[0x29EDB9598]))
    {
      v131 = 2;
    }

    else if (CFEqual(v126, *MEMORY[0x29EDB9590]))
    {
      v131 = 3;
    }

    else if (CFEqual(v126, *MEMORY[0x29EDB9578]))
    {
      v131 = 4;
    }

    else
    {
      if (!CFEqual(v126, *MEMORY[0x29EDB9570]))
      {
        if (AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v244 = AVE_Log_CheckConsole(0x1Eu);
          v245 = AVE_GetCurrTime();
          v246 = AVE_Log_GetLevelStr(5);
          if (v244)
          {
            printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v245, 30, v246);
            v247 = AVE_GetCurrTime();
            v293 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v247, 30, v293);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v245, 30, v246);
          }
        }

        goto LABEL_161;
      }

      v131 = 5;
    }

    *(v10 + 52) = v131;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v132 = AVE_Log_CheckConsole(0x1Eu);
      v133 = AVE_GetCurrTime();
      v134 = AVE_Log_GetLevelStr(6);
      v135 = *(v10 + 52);
      if (v132)
      {
        printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v133, 30, v134, *(v10 + 48), v135);
        v136 = AVE_GetCurrTime();
        v137 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v136, 30, v137, *(v10 + 48), *(v10 + 52));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v133, 30, v134, *(v10 + 48), v135);
      }
    }

    CFRelease(v126);
  }

  if ((*(v10 + 48) || *(v10 + 52)) && (*(a1 + 1104) & 0x10) != 0)
  {
    *v10 = 1;
    *(v10 + 44) = 1;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v138 = AVE_Log_CheckConsole(0x1Eu);
      v139 = AVE_GetCurrTime();
      v140 = AVE_Log_GetLevelStr(6);
      if (v138)
      {
        printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE\n", v139, 30, v140);
        v141 = AVE_GetCurrTime();
        v290 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v141, 30, v290);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v139, 30, v140);
      }
    }
  }

  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v142 = AVE_Log_CheckConsole(0x1Eu);
    v143 = AVE_GetCurrTime();
    v144 = AVE_Log_GetLevelStr(6);
    v145 = *(v10 + 44);
    v146 = *(v10 + 52);
    if (v142)
    {
      printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v143, 30, v144, v145, *(v10 + 48), v146);
      v147 = AVE_GetCurrTime();
      v148 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v147, 30, v148, *(v10 + 44), *(v10 + 48), *(v10 + 52));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v143, 30, v144, v145, *(v10 + 48), v146);
    }
  }

  if (!*(a1 + 104628) && *(a1 + 12028) == 1 && *(v98 + 1) == 10)
  {
    *(a1 + 12028) = 2;
    *(a1 + 24264) = 2;
    *(v10 + 736) = 2;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v149 = AVE_Log_CheckConsole(0x1Eu);
    v150 = AVE_GetCurrTime();
    v151 = AVE_Log_GetLevelStr(6);
    if (v149)
    {
      printf("%lld %d AVE %s: %s %d: pINS->eProfile=%d pINS->VPSHevcParams.PTL.eProfile=%d\n", v150, 30, v151, "AVE_PrepareVideoAndSequenceHeader", 2178, *(a1 + 104628), *(a1 + 12028));
      v150 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s %d: pINS->eProfile=%d pINS->VPSHevcParams.PTL.eProfile=%d", v150);
  }

  v152 = *(a1 + 104628);
  if (!v152)
  {
    v152 = *(a1 + 12028);
  }

  if (v152 <= 5)
  {
    switch(v152)
    {
      case 1:
        if (*(a1 + 24688) == 1)
        {
          *(a1 + 12033) = 257;
          *(a1 + 24269) = 257;
          v153 = 1;
          goto LABEL_274;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_267;
        }

        v167 = AVE_Log_CheckConsole(3u);
        v155 = AVE_GetCurrTime();
        v168 = AVE_Log_GetLevelStr(4);
        if (!v167)
        {
          goto LABEL_266;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v155, 3, v168, "AVE_PrepareVideoAndSequenceHeader", 2199, "false", *(a1 + 24688), *(a1 + 12028));
        goto LABEL_255;
      case 2:
        v153 = *(a1 + 24688);
        if (v153 == 1)
        {
          *(a1 + 12034) = 1;
          *(a1 + 24270) = 1;
          goto LABEL_274;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_267;
        }

        v171 = AVE_Log_CheckConsole(3u);
        v155 = AVE_GetCurrTime();
        v172 = AVE_Log_GetLevelStr(4);
        if (!v171)
        {
          goto LABEL_266;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v155, 3, v172, "AVE_PrepareVideoAndSequenceHeader", 2213, "false", *(a1 + 24688), *(a1 + 12028));
        goto LABEL_255;
      case 3:
        *(a1 + 13308) = 0;
        *(a1 + 24748) = 0;
        v153 = *(a1 + 24688);
        if (v153 == 1)
        {
          *(a1 + 24271) = 1;
          *(a1 + 12033) = 1;
          *(a1 + 24269) = 257;
          *(a1 + 12034) = 257;
          goto LABEL_274;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_267;
        }

        v169 = AVE_Log_CheckConsole(3u);
        v155 = AVE_GetCurrTime();
        v170 = AVE_Log_GetLevelStr(4);
        if (!v169)
        {
          goto LABEL_266;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v155, 3, v170, "AVE_PrepareVideoAndSequenceHeader", 2235, "false", *(a1 + 24688), *(a1 + 12028));
        goto LABEL_255;
    }

    goto LABEL_231;
  }

  if (v152 > 8)
  {
    if (v152 == 9)
    {
      if (!*(a1 + 24732) && !*(a1 + 24736))
      {
        *(a1 + 12036) = 1;
        *(a1 + 24272) = 1;
        *(a1 + 12076) = 1;
        *(a1 + 24312) = 1;
        *(a1 + 24264) = 4;
        *(a1 + 12028) = 4;
        v153 = *(a1 + 24688);
        if ((v153 - 1) >= 3)
        {
          if (v153)
          {
            if (!AVE_Log_CheckLevel(3u, 4))
            {
              goto LABEL_267;
            }

            v238 = AVE_Log_CheckConsole(3u);
            v155 = AVE_GetCurrTime();
            v239 = AVE_Log_GetLevelStr(4);
            if (!v238)
            {
              goto LABEL_266;
            }

            printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v155, 3, v239, "AVE_PrepareVideoAndSequenceHeader", 2302, "false", *(a1 + 24688), *(a1 + 12028));
            goto LABEL_255;
          }

          *(a1 + 12068) = 16843009;
          *(a1 + 12072) = 257;
          *(a1 + 12074) = 0;
          *(a1 + 24304) = 16843009;
          *(a1 + 24308) = 257;
          *(a1 + 24310) = 0;
        }

        else
        {
          *(a1 + 12068) = 257;
          *(a1 + 12070) = 1;
          *(a1 + 12071) = 0;
          *(a1 + 12075) = 0;
          *(a1 + 24304) = 257;
          *(a1 + 24306) = 1;
          *(a1 + 24307) = 0;
          *(a1 + 24311) = 0;
        }

LABEL_274:
        v182 = (a1 + 15574);
        if (*(a1 + 10928) != 1)
        {
          goto LABEL_293;
        }

        v183 = *(a1 + 1136);
        if (v183)
        {
          v184 = -1;
          v185 = 33;
          do
          {
            v186 = v183 & (v184 >> 1);
            v184 >>= 1;
            --v185;
          }

          while (v186);
          if (v185 < 8)
          {
            *(v10 + 104) = 0;
            v187 = 6;
            goto LABEL_285;
          }

          v190 = -1;
          v189 = 26;
          do
          {
            v191 = v183 & (v190 >> 1);
            v190 >>= 1;
            --v189;
          }

          while (v191);
        }

        else
        {
          v189 = 26;
        }

        *(v10 + 104) = v189;
        v187 = v189 + 6;
        if (!v183)
        {
          v188 = 28;
          goto LABEL_291;
        }

LABEL_285:
        v192 = -1;
        v193 = 33;
        do
        {
          v194 = v183 & (v192 >> 1);
          v192 >>= 1;
          --v193;
        }

        while (v194);
        if (v193 < 6)
        {
          *(v10 + 108) = 0;
          v195 = 4;
LABEL_292:
          *(v10 + 132) = v183 / (1 << v187) - 1;
          *(v10 + 136) = v183 / (1 << v195) - 1;
LABEL_293:
          v198 = *(a1 + 10556);
          if (v198 < 2)
          {
            v210 = *(a1 + 10896);
            if (v210 && !*(a1 + 10900))
            {
              *(a1 + 12008) = 1;
              *(a1 + 14528) = 1;
              *(a1 + 14531) = 0;
              *(a1 + 14532) |= 8u;
              *(a1 + 14534) = 0;
              *(a1 + 14566) = 1;
              *v182 = 1;
              *(a1 + 15576) = v210;
              *(a1 + 13392) = v210;
              *(a1 + 15639) = 0;
              *(a1 + 19738) = 1;
              *(a1 + 19740) = 1;
              *(a1 + 23835) = 0x100000001000000;
              *(a1 + 23843) = 1;
              *(a1 + 23908) = 0;
              *(a1 + 23912) = 0;
              *(a1 + 23914) = *(a1 + 1440);
              *(a1 + 23916) = *(a1 + 1444);
              *(a1 + 23918) = 1;
              v211 = *(a1 + 10916);
              if (v211 == -1)
              {
                v211 = v153;
              }

              *(a1 + 23920) = v211;
              *(a1 + 23928) = 0;
              v212 = *(a1 + 10908);
              if (v212 == -1)
              {
                v213 = *(a1 + 24732);
                v214 = *(a1 + 24736);
              }

              else
              {
                v213 = v212 - 8;
                v214 = v213;
              }

              *(a1 + 23932) = v213;
              *(a1 + 23940) = v214;
            }

            if (v153 >= 1 && (*(a1 + 10904) & 1) != 0)
            {
              *(v10 + 56) = 1;
            }

            goto LABEL_267;
          }

          v199 = *(a1 + 10900);
          v200 = v198 - 1;
          if (v199)
          {
            v201 = 3;
          }

          else
          {
            v201 = v198 - 1;
          }

          *(a1 + 12008) = v201;
          *(a1 + 12012) = 0;
          *(a1 + 12016) = 1;
          memcpy((a1 + 12448), (a1 + 12020), 0x1ACuLL);
          memcpy((a1 + 12876), (a1 + 12020), 0x1ACuLL);
          *(a1 + 12508) = *(a1 + 12080);
          *(a1 + 12884) = 5;
          *(a1 + 12889) = 0;
          *(a1 + 12894) = 1;
          if (v199)
          {
            v202 = *(a1 + 15575);
            v203 = *(a1 + 15576);
            v204 = *(a1 + 10896);
            if (v202 <= v203)
            {
              v205 = *(a1 + 15576);
            }

            else
            {
              v205 = *(a1 + 15575);
            }

            v206 = a1 + 13464;
            *(v206 + v202) = 1;
            *(v206 + v203) = 1;
            v207 = a1 + 13528;
            *(v207 + v204) = 1;
            *(v207 + v199) = 1;
            v208 = a1 + 13592;
            *(a1 + 13592 + v202) = 1;
            if (v204 <= v199)
            {
              LOBYTE(v209) = v199;
            }

            else
            {
              LOBYTE(v209) = v204;
            }

            *(v208 + v203) = 1;
            if (v205 <= v209)
            {
              v209 = v209;
            }

            else
            {
              v209 = v205;
            }

            *(a1 + 13392) = v209;
            *(a1 + 13396) = 3;
            *(v208 + v204) = 1;
            *(v208 + v199) = 1;
          }

          else
          {
            v215 = 0;
            v216 = *(a1 + 15575 + v200);
            *(a1 + 13392) = v216;
            *(a1 + 13396) = v200;
            v217 = v216 + 1;
            if ((v201 + 1) > 1)
            {
              v218 = (v201 + 1);
            }

            else
            {
              v218 = 1;
            }

            do
            {
              v219 = 0;
              do
              {
                if (v219 == *(a1 + 15575 + v215))
                {
                  *(a1 + 13464 + v219) = 1;
                }

                ++v219;
              }

              while (v217 != v219);
              ++v215;
            }

            while (v215 != v218);
          }

          *(a1 + 14528) = 1;
          v220 = *(a1 + 14532);
          *(a1 + 14532) = v220 | 2;
          *(a1 + 14534) = 2;
          *v182 = 1;
          *(a1 + 14566) = 1;
          *(a1 + 15706) = 1;
          if (!v199)
          {
            LOBYTE(v222) = *(a1 + 15576);
LABEL_330:
            *(a1 + 23920) = *(a1 + 24688);
            *(a1 + 23837) = 513;
            *(a1 + 14530) = 1;
            *(a1 + 23914) = *(a1 + 1440);
            *(a1 + 23916) = *(a1 + 1444);
            *(a1 + 23932) = *(a1 + 24732);
            *(a1 + 23918) = 1;
            *(a1 + 23940) = *(a1 + 24736);
            *(a1 + 23842) = 257;
            *(a1 + 23910) = 16777472;
            *(a1 + 24248) = 0;
            *(a1 + 24252) = 1;
            v224 = *(v10 + 1156);
            memcpy((v10 + 708), (a1 + 24236), 0x1E7CuLL);
            *(v10 + 708) = v222;
            *(v10 + 709) = 7;
            if (v224 <= 1)
            {
              v225 = 1;
            }

            else
            {
              v225 = v224;
            }

            *(v10 + 1156) = v225;
            *(v10 + 712) = 0;
            *(a1 + 39304) = 1;
            *(a1 + 39306) = 1;
            *(a1 + 39153) = 0;
            v226 = *(a1 + 10904);
            if (v226 == 1)
            {
              v227 = *(a1 + 10924);
              if (v227 != -1)
              {
                *(v10 + 710) = 1;
                *(v10 + 711) = v227;
              }
            }

            if (v199)
            {
              v228 = 0;
              v229 = 1;
              do
              {
                v230 = v229;
                v231 = *(a1 + 10916 + 4 * v228);
                if (v231 != -1)
                {
                  *(a1 + 23920 + 4 * v228) = v231;
                }

                v232 = *(a1 + 10908 + 4 * v228);
                if (v232 != -1)
                {
                  v233 = v232 - 8;
                  *(a1 + 23932 + 4 * v228) = v233;
                  *(a1 + 23940 + 4 * v228) = v233;
                }

                v229 = 0;
                v228 = 1;
              }

              while ((v230 & 1) != 0);
              if (*(a1 + 10920) != -1 && *(a1 + 10912) != -1)
              {
                *(a1 + 23841) = 1;
              }
            }

            if (v226)
            {
              v234 = 0;
              v235 = 1;
              do
              {
                v236 = v235;
                v237 = a1 + 24236 + 7804 * v234;
                if (*(v237 + 452) >= 1)
                {
                  *(v237 + 7152) = 1;
                }

                v235 = 0;
                v234 = 1;
              }

              while ((v236 & 1) != 0);
            }

            goto LABEL_267;
          }

          v221 = *(a1 + 15576);
          if (*(a1 + 15575))
          {
            v222 = *(a1 + 10896);
            v223 = (a1 + 19738);
          }

          else
          {
            v222 = *(a1 + 10896);
            v223 = (a1 + 19738);
            if (v221 == 1)
            {
              *(a1 + 15577) = v222;
              *(a1 + 15578) = v199;
              *(a1 + 14582) = 256;
              *(a1 + 14598) = 257;
              *(a1 + 14567) = 0;
              LOBYTE(v222) = 1;
              *(a1 + 15836) = 1;
LABEL_329:
              *(a1 + 14532) = v220 | 0xA;
              *(a1 + 14535) = 2;
              *v223 = 0;
              *(a1 + 23839) = 0;
              goto LABEL_330;
            }
          }

          *(a1 + 15577) = v221;
          *(a1 + 15576) = v222;
          *(a1 + 15578) = v199;
          *(a1 + 14566) = 256;
          *(a1 + 14582) = 1;
          *(a1 + 14598) = 257;
          *(a1 + 15706) = 0;
          *(a1 + 15770) = 1;
          *(a1 + 15835) = 1;
          goto LABEL_329;
        }

        v196 = -1;
        v188 = 28;
        do
        {
          v197 = v183 & (v196 >> 1);
          v196 >>= 1;
          --v188;
        }

        while (v197);
LABEL_291:
        *(v10 + 108) = v188;
        v195 = v188 + 4;
        goto LABEL_292;
      }

      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_267;
      }

      v157 = AVE_Log_CheckConsole(3u);
      v158 = AVE_GetCurrTime();
      v159 = AVE_Log_GetLevelStr(4);
      if (v157)
      {
        printf("%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)\n", v158, 3, v159, "AVE_PrepareVideoAndSequenceHeader", 2243, "((pINS->saSPS[0].bit_depth_luma_minus8 == 0) && (pINS->saSPS[0].bit_depth_chroma_minus8 == 0))", *(a1 + 12028), *(a1 + 24732), *(a1 + 24736));
LABEL_238:
        v165 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)", v165, 3);
        goto LABEL_267;
      }
    }

    else
    {
      if (v152 != 10)
      {
        goto LABEL_231;
      }

      if (*(a1 + 24732) == 2 && *(a1 + 24736) == 2)
      {
        *(a1 + 12036) = 1;
        *(a1 + 24272) = 1;
        *(a1 + 12076) = 1;
        *(a1 + 24312) = 1;
        *(a1 + 24264) = 4;
        *(a1 + 12028) = 4;
        v153 = *(a1 + 24688);
        if (!v153)
        {
LABEL_250:
          *(a1 + 12068) = 0x10101000001;
          *(a1 + 24304) = 0x10101000001;
          goto LABEL_274;
        }

        if (v153 == 3 || v153 == 1)
        {
          *(a1 + 12068) = 257;
          *(a1 + 12070) = 0;
          *(a1 + 12074) = 0;
          *(a1 + 24304) = 257;
          *(a1 + 24306) = 0;
          *(a1 + 24310) = 0;
          goto LABEL_274;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_267;
        }

        v176 = AVE_Log_CheckConsole(3u);
        v155 = AVE_GetCurrTime();
        v177 = AVE_Log_GetLevelStr(4);
        if (!v176)
        {
          goto LABEL_266;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v155, 3, v177, "AVE_PrepareVideoAndSequenceHeader", 2369, "false", *(a1 + 24688), *(a1 + 12028));
LABEL_255:
        v175 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported", v175);
        goto LABEL_267;
      }

      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_267;
      }

      v163 = AVE_Log_CheckConsole(3u);
      v158 = AVE_GetCurrTime();
      v164 = AVE_Log_GetLevelStr(4);
      if (v163)
      {
        printf("%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)\n", v158, 3, v164, "AVE_PrepareVideoAndSequenceHeader", 2311, "((pINS->saSPS[0].bit_depth_luma_minus8 == 2) && (pINS->saSPS[0].bit_depth_chroma_minus8 == 2))", *(a1 + 12028), *(a1 + 24732), *(a1 + 24736));
        goto LABEL_238;
      }
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)", v158, 3);
    goto LABEL_267;
  }

  if ((v152 - 6) >= 2)
  {
    if (v152 == 8)
    {
      *(a1 + 12036) = 1;
      *(a1 + 24272) = 1;
      *(a1 + 12076) = 1;
      *(a1 + 24312) = 1;
      *(a1 + 24264) = 4;
      *(a1 + 12028) = 4;
      v153 = *(a1 + 24688);
      if ((v153 - 1) < 2)
      {
        *(a1 + 12068) = 16777473;
        *(a1 + 12072) = 0;
        *(a1 + 24304) = 16777473;
        *(a1 + 24308) = 0;
        goto LABEL_274;
      }

      if (!v153)
      {
        goto LABEL_250;
      }

      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_267;
      }

      v173 = AVE_Log_CheckConsole(3u);
      v155 = AVE_GetCurrTime();
      v174 = AVE_Log_GetLevelStr(4);
      if (!v173)
      {
        goto LABEL_266;
      }

      printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v155, 3, v174, "AVE_PrepareVideoAndSequenceHeader", 2432, "false", *(a1 + 24688), *(a1 + 12028));
      goto LABEL_255;
    }

LABEL_231:
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v160 = AVE_Log_CheckConsole(3u);
      v161 = AVE_GetCurrTime();
      v162 = AVE_Log_GetLevelStr(4);
      if (v160)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: profile (%d) nit supported\n", v161, 3, v162, "AVE_PrepareVideoAndSequenceHeader", 2486, "false", *(a1 + 12028));
        v161 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: profile (%d) nit supported", v161);
    }

    goto LABEL_267;
  }

  *(a1 + 12036) = 1;
  *(a1 + 24272) = 1;
  *(a1 + 12076) = 1;
  *(a1 + 24312) = 1;
  *(a1 + 24264) = 4;
  *(a1 + 12028) = 4;
  v153 = *(a1 + 24688);
  if (!v153)
  {
    *(a1 + 12068) = 257;
    v166 = v152 == 6;
    *(a1 + 12070) = v166;
    *(a1 + 12071) = 65793;
    *(a1 + 12075) = 0;
    *(a1 + 24304) = 257;
    *(a1 + 24306) = v166;
    *(a1 + 24307) = 65793;
    *(a1 + 24311) = 0;
    goto LABEL_274;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v154 = AVE_Log_CheckConsole(3u);
    v155 = AVE_GetCurrTime();
    v156 = AVE_Log_GetLevelStr(4);
    if (v154)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v155, 3, v156, "AVE_PrepareVideoAndSequenceHeader", 2479, "false", *(a1 + 24688), *(a1 + 12028));
      goto LABEL_255;
    }

LABEL_266:
    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported", v155);
  }

LABEL_267:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v178 = AVE_Log_CheckConsole(0xCu);
    v179 = AVE_GetCurrTime();
    v180 = AVE_Log_GetLevelStr(7);
    if (v178)
    {
      printf("%lld %d AVE %s: FIG: EXIT AVE_PrepareVideoAndSequenceHeader\n", v179, 12, v180);
      v181 = AVE_GetCurrTime();
      v291 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PrepareVideoAndSequenceHeader", v181, 12, v291);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PrepareVideoAndSequenceHeader", v179, 12, v180);
    }
  }
}

void AVE_PreparePictureHeader(_DWORD *a1)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PreparePictureHeader\n", CurrTime, 12, LevelStr);
      v5 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PreparePictureHeader", v5, 12, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PreparePictureHeader", CurrTime, 12, LevelStr);
    }
  }

  v6 = a1[2693];
  if (v6 == 1)
  {
    goto LABEL_11;
  }

  if (v6 == 2)
  {
    a1[9970] = a1[286] - 26;
    if (a1[6209] == 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    a1[9972] = v7;
LABEL_11:
    v8 = a1[2639];
    if (v8 >= 2)
    {
      v9 = a1 + 9961;
      v10 = a1 + 15575;
      v11 = 1;
      v12 = 1;
      do
      {
        v13 = &v9[2408 * v12];
        v14 = *(v13 + 8);
        memcpy(v13, v9, 0x25A0uLL);
        *v13 = v10[v12];
        v13[8512] = 1;
        v13[8515] = 1;
        v13[8517] = 1;
        *(v13 + 1) = vbsl_s8(vceqz_s32(v14), vdup_n_s32(v11), v14);
        v11 = ++v12;
        *(v13 + 1) = 0;
        v13[5] = 0;
      }

      while (v8 > v12);
    }

    goto LABEL_19;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v15 = AVE_Log_CheckConsole(3u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: encode type unrecognized\n", v16, 3, v17, "AVE_PreparePictureHeader", 1605, "false");
      v18 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: encode type unrecognized", v18, 3, v24, "AVE_PreparePictureHeader", 1605, "false");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: encode type unrecognized", v16, 3, v17, "AVE_PreparePictureHeader", 1605, "false");
    }
  }

LABEL_19:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v19 = AVE_Log_CheckConsole(0xCu);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(7);
    if (v19)
    {
      printf("%lld %d AVE %s: FIG: EXIT AVE_PreparePictureHeader\n", v20, 12, v21);
      v22 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PreparePictureHeader", v22, 12, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PreparePictureHeader", v20, 12, v21);
    }
  }
}

uint64_t AVE_ManageSessionSettings(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings\n", CurrTime, 12, LevelStr);
      v5 = AVE_GetCurrTime();
      v226 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings", v5, 12, v226);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings", CurrTime, 12, LevelStr);
    }
  }

  if (*(a1 + 1132) == 4 && !*(a1 + 10892))
  {
    *(a1 + 10892) = 10000;
  }

  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v6 = AVE_Log_CheckConsole(0xCu);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters\n", v7, 12, v8);
      v9 = AVE_GetCurrTime();
      v227 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v9, 12, v227);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v7, 12, v8);
    }
  }

  v10 = (a1 + 10168);
  v11 = AVE_DW_Get();
  v12 = v11[20];
  if (v12 >= -1)
  {
    *(a1 + 692) = v12;
  }

  if (AVE_Log_CheckLevel(0x10u, 8))
  {
    v13 = AVE_Log_CheckConsole(0x10u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d\n", v14, 16, v15, "AVE_PrepareRealTimeParameters", 2830, *(a1 + 10892), *(a1 + 692), *(a1 + 10784), *(a1 + 1132));
      v14 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d", v14, 16);
  }

  if ((*(a1 + 1123) & 0x80) == 0 && *(a1 + 1132) == 8)
  {
    *(a1 + 10784) = 0;
  }

  if (*(a1 + 692) == 1)
  {
    if ((v16 = *(a1 + 1256)) == 0 && (v17 = *(a1 + 1132), v17 != 20) && v17 != 3 || *(a1 + 106464) > 0 || v16 >= 3 && *(a1 + 1260) >= 3)
    {
      if (*(a1 + 10752) != 2 && !*(a1 + 10892))
      {
        if ((*(a1 + 10784) & 1) == 0)
        {
          *(a1 + 1132) = 1;
        }

        *(a1 + 10764) = 1;
        *(a1 + 1464) = 0;
        v18 = *(a1 + 1336);
        *(a1 + 1336) = v18 | 0x30;
        v19 = *(a1 + 688);
        v20 = v19 & 0xFFFFFFFD;
        if (v11[190] < 1)
        {
          goto LABEL_46;
        }

        v21 = *(a1 + 1444) + 15;
        v22 = v21 >> 4;
        v23 = *(a1 + 1440) + 15;
        v24 = (v23 >> 4) + 31;
        v25 = v24 & 0x1FFFFFE0;
        v26 = v19 & 0xFFFFFEFD;
        v20 |= 0x100u;
        if (*(a1 + 1112) * (v21 >> 4) * (v23 >> 4) <= 0xAFC80)
        {
          v20 = v26;
        }

        *(a1 + 688) = v20;
        v27 = v18 | 0x70;
        *(a1 + 1336) = v27;
        if (v25 > 0x80 || v25 * v22 >= 0x2D01)
        {
          if (v21 > 0x44F || v23 >= 0x790)
          {
            v28 = ((((v23 >> 4) + 1) >> 1) + 31) >> 5;
            v22 = (v22 + 1) >> 1;
          }

          else
          {
            v28 = v24 >> 5;
          }

          v29 = v28 * v22;
          if (v21 <= 0xC0F && v25 <= 0x100 && v29 <= 0x120)
          {
LABEL_46:
            *(a1 + 688) = v20 | 0x100;
            goto LABEL_48;
          }

          *(a1 + 1336) = v27 & 0xFFFFFFBF;
        }
      }
    }
  }

LABEL_48:
  v30 = v11[19];
  if (v30 >= 1)
  {
    *(a1 + 11968) = v30;
  }

  v31 = (*(a1 + 1336) | v11[237] & 0x30) & (~*(v11 + 952) | 0xFFFFFFCF);
  *(a1 + 1336) = v31;
  if ((*(v11 + 769) & 0x80) != 0)
  {
    v31 |= 0x8000u;
    *(a1 + 1336) = v31;
  }

  if ((*(v11 + 777) & 0x80) != 0)
  {
    *(a1 + 1336) = v31 & 0xFFFF7FFF;
  }

  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v32 = AVE_Log_CheckConsole(0xCu);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(7);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v33, 12, v34, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
      v35 = AVE_GetCurrTime();
      v228 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v35, 12, v228, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v33, 12, v34, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }
  }

  v239 = (a1 + 104624);
  v36 = AVE_DW_Get();
  Profile = HEVC_FindProfile(v36[186]);
  if (Profile)
  {
    *(a1 + 104628) = Profile;
  }

  Level = HEVC_FindLevel(v36[187]);
  if (Level)
  {
    *(a1 + 104632) = Level;
  }

  v238 = (a1 + 39884);
  v237 = (a1 + 31332);
  v39 = (a1 + 24252);
  Tier = HEVC_FindTier(v36[188]);
  v41 = a1 + 104624;
  if (Tier)
  {
    *v239 = Tier;
  }

  v42 = *(a1 + 104628);
  if (!v42)
  {
LABEL_72:
    if (*(a1 + 10772) == 2)
    {
      if (*v239)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 6))
        {
          v53 = AVE_Log_CheckConsole(0x1Eu);
          v54 = AVE_GetCurrTime();
          v55 = AVE_Log_GetLevelStr(6);
          if (v53)
          {
            printf("%lld %d AVE %s: %s:%d tier %d -> change the default %d\n", v54, 30, v55, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 5702, *v239, *(a1 + 24260));
            v54 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
            v41 = a1 + 104624;
          }

          syslog(3, "%lld %d AVE %s: %s:%d tier %d -> change the default %d", v54);
        }

        *(a1 + 24260) = *v41;
      }

      v60 = vshr_n_u32(vadd_s32(*(a1 + 1440), 0xF0000000FLL), 4uLL);
      if ((*(a1 + 1112) * v60.i32[0] * v60.i32[1]) >= 0x1DA9C0)
      {
        *(a1 + 24260) = 2;
        *(a1 + 12024) = 2;
      }
    }

    v61 = *(a1 + 1308) > 1 || *(a1 + 1256) || (*v10 & 0xFFFE) == 4 || *(a1 + 1324) > 1 || (*(a1 + 716) & 0x3C0) != 0;
    *(a1 + 10173) = v61;
    v62 = *(a1 + 1132);
    if (v62 == 4 || v62 == 2)
    {
      v63 = *(a1 + 10892);
      if (v63 == 37 || !v63)
      {
        *(a1 + 10892) = 10000;
        *(a1 + 688) &= ~0x100u;
        *(a1 + 10520) = 1;
        *(a1 + 1464) = 0;
        *(a1 + 1336) &= ~0x40u;
      }
    }

    v64 = v36[395];
    if (v64 <= 19)
    {
      if (!v64)
      {
        *(a1 + 10892) = 0;
        goto LABEL_174;
      }

      if (v64 == 1)
      {
        *(a1 + 10892) = 1;
LABEL_125:
        *(a1 + 1336) = 0x10000;
        *(a1 + 1132) = 20;
        *(a1 + 10784) = 1;
        *(a1 + 10764) = 0;
        *(a1 + 10205) = 0;
        *(a1 + 1240) &= ~0x100u;
        if (*(a1 + 1256) >= 1)
        {
          *(a1 + 1256) = 0x200000001;
          *(a1 + 13336) = 1;
          *(a1 + 24776) = 1;
          *(a1 + 48356) = 1;
        }

        *(a1 + 10808) = 0;
        *(a1 + 42027) = 1;
        *(a1 + 60061) = 1;
        if (*(a1 + 1296))
        {
          *(a1 + 39957) = 1;
        }

        if ((*(a1 + 1104) & 0x80) != 0)
        {
          v74 = 1;
          *v237 = 1;
          *(a1 + 31474) = 257;
          *(a1 + 31476) = 1;
          *(a1 + 31480) = xmmword_295650BB0;
          *(a1 + 31496) = 15;
        }

        else
        {
          v74 = 0;
        }

        v59 = 0;
        *(a1 + 31473) = v74;
        *(a1 + 1096) &= 0xFFFFFC40FFFFFCBFLL;
        *(a1 + 39886) = 1;
        goto LABEL_188;
      }
    }

    else
    {
      switch(v64)
      {
        case 20:
          *(a1 + 10892) = 20;
          goto LABEL_132;
        case 37:
          *(a1 + 10892) = 37;
LABEL_157:
          if ((*(a1 + 1104) & 0x80) != 0)
          {
            *v237 = 1;
            *(a1 + 31473) = 1;
            *(a1 + 31475) = 1;
            *(a1 + 31484) = xmmword_295650BA0;
          }

          *(a1 + 1112) = 60;
          *(a1 + 1264) = 0x7FFFFFFFLL;
          *(a1 + 1272) = 0xBFF0000000000000;
          *(a1 + 1280) = 0xBFF0000000000000;
          *(a1 + 1088) |= 2uLL;
          *(a1 + 1336) &= ~0x40u;
          *(a1 + 1296) |= 2u;
          if (*(v41 + 1676) <= 0 && *(v41 + 16) == 1)
          {
            v83 = *(a1 + 1160);
            if (v83 >= 1)
            {
              v84 = 0;
              v85 = (a1 + 1176);
              v86 = 0x7FFFFFFF;
              do
              {
                if (v86 > (*(v85 - 1) * 8.0 / *v85))
                {
                  if (AVE_Log_CheckLevel(0x1Eu, 6))
                  {
                    v87 = AVE_Log_CheckConsole(0x1Eu);
                    v88 = AVE_GetCurrTime();
                    v89 = AVE_Log_GetLevelStr(6);
                    v90 = *(v85 - 1);
                    v91 = *v85;
                    if (v87)
                    {
                      printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v88, 30, v89, v84, *(v85 - 1), v91);
                      v88 = AVE_GetCurrTime();
                      v89 = AVE_Log_GetLevelStr(6);
                      v90 = *(v85 - 1);
                      v91 = *v85;
                    }

                    syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v88, 30, v89, v84, v90, v91);
                    v41 = a1 + 104624;
                  }

                  v86 = (*(v85 - 1) * 8.0 / *v85);
                  v83 = *(a1 + 1160);
                }

                ++v84;
                v85 += 2;
              }

              while (v84 < v83);
              if (v86 != 0x7FFFFFFF)
              {
                *(a1 + 1136) = v86;
              }
            }
          }

          v59 = 0;
          *(a1 + 1240) &= ~0x100u;
          goto LABEL_188;
        case 10000:
          *(a1 + 10892) = 10000;
          goto LABEL_103;
      }
    }

    v95 = *(a1 + 10892);
    if (v95 <= 36)
    {
      if (v95 != 1)
      {
        if (v95 != 20)
        {
          goto LABEL_174;
        }

LABEL_132:
        AVE_NewDefaultsBasedOnProfileUsageDefault(a1);
        if ((*(a1 + 1104) & 0x80) != 0)
        {
          *v237 = 1;
          *(a1 + 31473) = 1;
          *(a1 + 31475) = 1;
          *(a1 + 31484) = xmmword_295650BA0;
        }

        *(a1 + 1296) &= ~2u;
        *(a1 + 1464) = 0;
        *(a1 + 1336) &= ~0x40u;
        *(a1 + 10520) = 1;
        *(a1 + 1240) &= ~0x100u;
        *(a1 + 1088) = *(a1 + 1088) & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(a1 + 692) == 1));
        if (*(a1 + 1348) <= -13)
        {
          *(a1 + 1348) = 51;
        }

        if (*(a1 + 1236) <= -13)
        {
          *(a1 + 1236) = 51;
        }

        if (*(v41 + 1804) <= 0 && *(v41 + 1816) <= 0.0 && (*(v41 + 1808) & 0x80000000) != 0 && *(v41 + 1824) <= 0.0)
        {
          *(a1 + 1264) = 0x7FFFFFFFLL;
          *(a1 + 1272) = 0xBFF0000000000000;
          *(a1 + 1280) = 0xBFF0000000000000;
        }

        if (*(v41 + 1676) <= 0 && *(v41 + 16) == 1)
        {
          v75 = *(a1 + 1160);
          if (v75 >= 1)
          {
            v76 = 0;
            v77 = (a1 + 1176);
            v68 = 0x7FFFFFFF;
            do
            {
              if (v68 > (*(v77 - 1) * 8.0 / *v77))
              {
                if (AVE_Log_CheckLevel(0x1Eu, 6))
                {
                  v78 = AVE_Log_CheckConsole(0x1Eu);
                  v79 = AVE_GetCurrTime();
                  v80 = AVE_Log_GetLevelStr(6);
                  v81 = *(v77 - 1);
                  v82 = *v77;
                  if (v78)
                  {
                    printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v79, 30, v80, v76, *(v77 - 1), v82);
                    v79 = AVE_GetCurrTime();
                    v80 = AVE_Log_GetLevelStr(6);
                    v81 = *(v77 - 1);
                    v82 = *v77;
                  }

                  syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v79, 30, v80, v76, v81, v82);
                  v41 = a1 + 104624;
                }

                v68 = (*(v77 - 1) * 8.0 / 1.5 / *v77);
                v75 = *(a1 + 1160);
              }

              ++v76;
              v77 += 2;
            }

            while (v76 < v75);
LABEL_154:
            if (v68 != 0x7FFFFFFF)
            {
              v59 = 0;
              *(a1 + 1136) = v68;
              goto LABEL_188;
            }
          }
        }

LABEL_181:
        v59 = 0;
        goto LABEL_188;
      }

      goto LABEL_125;
    }

    if (v95 != 37)
    {
      if (v95 == 10000)
      {
LABEL_103:
        AVE_NewDefaultsBasedOnProfileUsageDefault(a1);
        *(a1 + 1296) &= ~2u;
        *(a1 + 1464) = 0;
        *(a1 + 1336) &= ~0x40u;
        *(a1 + 10520) = 1;
        *(a1 + 1240) &= ~0x100u;
        *(a1 + 1088) = *(a1 + 1088) & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(a1 + 692) == 1));
        if (*(a1 + 1348) <= -13)
        {
          *(a1 + 1348) = 51;
        }

        if (*(a1 + 1236) <= -13)
        {
          *(a1 + 1236) = 51;
        }

        if (*(v41 + 1804) <= 0 && *(v41 + 1816) <= 0.0)
        {
          *(a1 + 1264) = 120;
          *(a1 + 1272) = 0xBFF0000000000000;
          *(a1 + 1280) = 0xBFF0000000000000;
        }

        if (*(v41 + 1676) <= 0 && *(v41 + 16) == 1)
        {
          v65 = *(a1 + 1160);
          if (v65 >= 1)
          {
            v66 = 0;
            v67 = (a1 + 1176);
            v68 = 0x7FFFFFFF;
            do
            {
              if (v68 > (*(v67 - 1) * 8.0 / *v67))
              {
                if (AVE_Log_CheckLevel(0x1Eu, 6))
                {
                  v69 = AVE_Log_CheckConsole(0x1Eu);
                  v70 = AVE_GetCurrTime();
                  v71 = AVE_Log_GetLevelStr(6);
                  v72 = *(v67 - 1);
                  v73 = *v67;
                  if (v69)
                  {
                    printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v70, 30, v71, v66, *(v67 - 1), v73);
                    v70 = AVE_GetCurrTime();
                    v71 = AVE_Log_GetLevelStr(6);
                    v72 = *(v67 - 1);
                    v73 = *v67;
                  }

                  syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v70, 30, v71, v66, v72, v73);
                  v41 = a1 + 104624;
                }

                v68 = (*(v67 - 1) * 8.0 / 1.5 / *v67);
                v65 = *(a1 + 1160);
              }

              ++v66;
              v67 += 2;
            }

            while (v66 < v65);
            goto LABEL_154;
          }
        }

        goto LABEL_181;
      }

LABEL_174:
      v92 = *(a1 + 76);
      if (v92 <= 0x1D && ((1 << v92) & 0x2679CC00) != 0)
      {
        v93 = *(a1 + 10248);
        *(a1 + 10172) = v93 ^ 1;
        if ((v93 & 1) == 0)
        {
          *(a1 + 688) |= 0x100u;
          v94 = *(a1 + 1296);
          if ((v94 & 1) == 0 && (*(a1 + 1123) & 0x80) == 0)
          {
            *(a1 + 10200) = 1;
            *(a1 + 1296) = v94 | 1;
            *(a1 + 39957) = 1;
            *(a1 + 48356) = 1;
          }
        }
      }

      AVE_NewDefaultsBasedOnProfileUsageDefault(a1);
      goto LABEL_181;
    }

    goto LABEL_157;
  }

  *(a1 + 10800) = v42;
  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v43 = AVE_Log_CheckConsole(0x1Eu);
    v44 = AVE_GetCurrTime();
    v45 = AVE_Log_GetLevelStr(6);
    v46 = *(a1 + 24264);
    if (v43)
    {
      printf("%lld %d AVE %s: profile = %d -> change the default %d\n", v44, 30, v45, *(a1 + 104628), v46);
      v47 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v47, 30, v48, *(a1 + 104628), *(a1 + 24264));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v44, 30, v45, *(a1 + 104628), v46);
    }
  }

  v49 = *(a1 + 104628) - 1;
  if (v49 < 0xA && ((0x3E7u >> v49) & 1) != 0)
  {
    v50 = qword_295650D10[v49];
    v51 = dword_295650D60[v49];
    v52 = qword_295650D88[v49];
    *(a1 + v50) = v51;
    *(a1 + v52) = v51;
    goto LABEL_72;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v56 = AVE_Log_CheckConsole(3u);
    v57 = AVE_GetCurrTime();
    v58 = AVE_Log_GetLevelStr(4);
    if (v56)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed. profile (%d) unrecognized\n", v57, 3, v58, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 5689, "false", *(a1 + 104628));
      v57 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed. profile (%d) unrecognized", v57);
  }

  v59 = -12902;
LABEL_188:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v96 = AVE_Log_CheckConsole(0xCu);
    v97 = AVE_GetCurrTime();
    v98 = AVE_Log_GetLevelStr(7);
    if (v96)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v97, 12, v98, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v59);
      v99 = AVE_GetCurrTime();
      v229 = AVE_Log_GetLevelStr(7);
      v41 = a1 + 104624;
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v99, 12, v229, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v59);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v97, 12, v98, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v59);
    }
  }

  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v100 = AVE_Log_CheckConsole(0xD1u);
    v101 = AVE_GetCurrTime();
    v102 = AVE_Log_GetLevelStr(6);
    if (v100)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v101, 209, v102, "AVE_PrepareHEVCLevel", a1);
      v103 = AVE_GetCurrTime();
      v230 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v103, 209, v230, "AVE_PrepareHEVCLevel", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v101, 209, v102, "AVE_PrepareHEVCLevel", a1);
    }
  }

  if (AVE_Log_CheckLevel(0xD1u, 7))
  {
    v104 = AVE_Log_CheckConsole(0xD1u);
    v105 = AVE_GetCurrTime();
    v106 = AVE_Log_GetLevelStr(7);
    if (v104)
    {
      printf("%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d\n", v105, 209, v106, "AVE_PrepareHEVCLevel", 2970, *(a1 + 24264), *(a1 + 24316), *(v41 + 4), *(v41 + 8));
      v105 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v41 = a1 + 104624;
    }

    syslog(3, "%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d", v105, 209);
  }

  if (AVE_Log_CheckLevel(0xD1u, 7))
  {
    v107 = AVE_Log_CheckConsole(0xD1u);
    v108 = AVE_GetCurrTime();
    v109 = AVE_Log_GetLevelStr(7);
    if (v107)
    {
      printf("%lld %d AVE %s: %s:%d starting with %dx%d bitrate %d (RCMode %d) FrameRate %d USAGE %d\n", v108, 209, v109, "AVE_PrepareHEVCLevel", 2974, *(a1 + 1440), *(a1 + 1444), *(a1 + 1136), *(a1 + 1132), *(a1 + 1112), *(a1 + 10892));
      v110 = AVE_GetCurrTime();
      v231 = AVE_Log_GetLevelStr(7);
      v41 = a1 + 104624;
      syslog(3, "%lld %d AVE %s: %s:%d starting with %dx%d bitrate %d (RCMode %d) FrameRate %d USAGE %d", v110, 209, v231);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d starting with %dx%d bitrate %d (RCMode %d) FrameRate %d USAGE %d", v108, 209, v109);
    }
  }

  v111 = *(a1 + 1132);
  if (v111 < 1)
  {
    v112 = 0;
  }

  else
  {
    v112 = 0;
    if (v111 != 3 && v111 != 8)
    {
      v112 = *(a1 + 1136);
    }
  }

  v113 = HEVC_FindLevel(*(a1 + 24264), *(a1 + 24260), *(a1 + 1440), *(a1 + 1444), *(a1 + 1112), v112);
  if (v113)
  {
    v114 = v113;
    v115 = *(a1 + 24316);
    if (v115 <= v113)
    {
      v115 = v113;
    }

    *(a1 + 24316) = v115;
    *(a1 + 12080) = v115;
    v116 = *(v41 + 8);
    if (v116)
    {
      if (v116 < v115 && *(a1 + 1112) >= 1)
      {
        if (AVE_Log_CheckLevel(0xD1u, 5))
        {
          v117 = AVE_Log_CheckConsole(0xD1u);
          v118 = AVE_GetCurrTime();
          v119 = AVE_Log_GetLevelStr(5);
          if (v117)
          {
            printf("%lld %d AVE %s: %s:%d level %d incompatible with other settings (min should be %d)\n", v118, 209, v119, "AVE_PrepareHEVCLevel", 3005, *(v41 + 8), *(a1 + 24316));
            v118 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(5);
            v41 = a1 + 104624;
          }

          syslog(3, "%lld %d AVE %s: %s:%d level %d incompatible with other settings (min should be %d)", v118);
        }

        v124 = 4294966295;
        goto LABEL_238;
      }

      if (v115 != v116)
      {
        if (AVE_Log_CheckLevel(0xD1u, 6))
        {
          v125 = AVE_Log_CheckConsole(0xD1u);
          v126 = AVE_GetCurrTime();
          v127 = AVE_Log_GetLevelStr(6);
          if (v125)
          {
            printf("%lld %d AVE %s: %s:%d level received (%d) is too high... consider lowering it with these settings (min should be %d)\n", v126, 209, v127, "AVE_PrepareHEVCLevel", 3013, *(v41 + 8), *(a1 + 24316));
            v126 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
          }

          syslog(3, "%lld %d AVE %s: %s:%d level received (%d) is too high... consider lowering it with these settings (min should be %d)", v126);
        }

        v124 = 0;
        v128 = *(v41 + 8);
        *(a1 + 24316) = v128;
        *(a1 + 12080) = v128;
        goto LABEL_239;
      }
    }

    v124 = 0;
LABEL_238:
    v128 = *(a1 + 24316);
LABEL_239:
    if (v128 == 18)
    {
      *(a1 + 12024) = 2;
      *(a1 + 24260) = 2;
      *(a1 + 12120) = 16843009;
      *(a1 + 12124) = 257;
      *(a1 + 24356) = 16843009;
      *(a1 + 24360) = 257;
    }

    if (AVE_Log_CheckLevel(0xD1u, 7))
    {
      v129 = AVE_Log_CheckConsole(0xD1u);
      v130 = AVE_GetCurrTime();
      v131 = AVE_Log_GetLevelStr(7);
      if (v129)
      {
        printf("%lld %d AVE %s: %s:%d end with level %d (min %d)\n", v130, 209, v131, "AVE_PrepareHEVCLevel", 3034, *(a1 + 24316), v114);
        v130 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %s:%d end with level %d (min %d)", v130);
      v41 = a1 + 104624;
    }

    goto LABEL_245;
  }

  if (AVE_Log_CheckLevel(0xD1u, 4))
  {
    v120 = AVE_Log_CheckConsole(0xD1u);
    v121 = AVE_GetCurrTime();
    v122 = AVE_Log_GetLevelStr(4);
    if (v120)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level\n", v121, 209, v122, "AVE_PrepareHEVCLevel", 2990, "eLevel != HEVC_Level_Invalid");
      v123 = AVE_GetCurrTime();
      v232 = AVE_Log_GetLevelStr(4);
      v41 = a1 + 104624;
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v123, 209, v232, "AVE_PrepareHEVCLevel", 2990, "eLevel != HEVC_Level_Invalid");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v121, 209, v122, "AVE_PrepareHEVCLevel", 2990, "eLevel != HEVC_Level_Invalid");
    }
  }

  v124 = 4294966295;
LABEL_245:
  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v132 = AVE_Log_CheckConsole(0xD1u);
    v133 = AVE_GetCurrTime();
    v134 = AVE_Log_GetLevelStr(6);
    if (v132)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v133, 209, v134, "AVE_PrepareHEVCLevel", a1, v124);
      v135 = AVE_GetCurrTime();
      v233 = AVE_Log_GetLevelStr(6);
      v41 = a1 + 104624;
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v135, 209, v233, "AVE_PrepareHEVCLevel", a1, v124);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v133, 209, v134, "AVE_PrepareHEVCLevel", a1, v124);
    }
  }

  if (v124)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v136 = AVE_Log_CheckConsole(3u);
      v137 = AVE_GetCurrTime();
      v138 = AVE_Log_GetLevelStr(4);
      if (v136)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareHEVCLevel failed\n", v137, 3, v138, "AVE_ManageSessionSettings", 7340, "err == 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareHEVCLevel failed");
    }

    return v124;
  }

  v139 = AVE_DW_Get();
  v140 = v139;
  v141 = *(v139 + 224);
  if ((v141 & 0x80000000) == 0)
  {
    *(a1 + 1264) = v141;
    if (v141 == 1)
    {
      *(a1 + 1252) = 0;
    }
  }

  v142 = *(v139 + 225);
  if ((v142 & 0x80000000) == 0)
  {
    *(a1 + 1268) = v142;
  }

  v143 = v139[113];
  if (v143 >= 0.0)
  {
    *(a1 + 1272) = v143;
  }

  v144 = v139[114];
  if (v144 >= 0.0)
  {
    *(a1 + 1280) = v144;
  }

  v145 = *(a1 + 716);
  v146 = *(v139 + 7);
  v147 = *(a1 + 1456) | *(v139 + 6);
  v149 = *(v139 + 4);
  v148 = *(v139 + 5);
  v150 = (*(a1 + 1448) | v149) & ~v148;
  *(a1 + 1448) = v150;
  *(a1 + 1456) = v147 & ~v146;
  v151 = v150 | v149 & 0x20;
  v152 = v150 & 0xFFFFFFFFFFFFFFDFLL;
  if ((v148 & 0x20) == 0)
  {
    v152 = v151;
  }

  if (((v148 | v149) & 0x20) != 0)
  {
    *(a1 + 1448) = v152;
  }

  if ((v152 & 0x20) == 0)
  {
    v153 = v145;
    if ((v148 & 0x20) == 0)
    {
      goto LABEL_282;
    }

LABEL_281:
    *(a1 + 716) = v153 & 0xFFFFFC3F;
    goto LABEL_282;
  }

  if (*(v139 + 1) == 1)
  {
    v154 = AVE_MCTF_Validate(*(a1 + 68), *(a1 + 64), v145, *(a1 + 10772), *(v41 + 3376));
    v155 = *(a1 + 716);
    if (v154)
    {
      v153 = v155 & 0xFFFFFC3F;
    }

    else
    {
      v153 = v155 | 0x3C0;
    }
  }

  else
  {
    v153 = v145 | 0x3C0;
  }

  *(a1 + 716) = v153;
  v152 = *(a1 + 1448);
  if ((v152 & 0x1000000) != 0)
  {
    *(a1 + 11810) = 1;
  }

  v148 = *(v140 + 5);
  if ((v148 & 0x1000000) != 0)
  {
    *(a1 + 11810) = 0;
    if ((v152 & 0x4000000) == 0)
    {
LABEL_279:
      if ((v148 & 0x4000000) == 0)
      {
        goto LABEL_280;
      }

      goto LABEL_373;
    }
  }

  else if ((v152 & 0x4000000) == 0)
  {
    goto LABEL_279;
  }

  *(a1 + 10552) = 1;
  if ((v148 & 0x4000000) == 0)
  {
LABEL_280:
    if ((v148 & 0x20) == 0)
    {
      goto LABEL_282;
    }

    goto LABEL_281;
  }

LABEL_373:
  *(a1 + 10552) = 2;
  if ((v148 & 0x20) != 0)
  {
    goto LABEL_281;
  }

LABEL_282:
  v156 = *(v140 + 272);
  if ((v156 & 0x80000000) == 0)
  {
    *(a1 + 11812) = v156;
  }

  v157 = *(v140 + 273);
  if ((v157 & 0x80000000) == 0)
  {
    *(a1 + 1396) = v157;
  }

  if ((v152 & 0x40) != 0)
  {
    *v238 = 1;
    if ((v148 & 0x40) == 0)
    {
LABEL_288:
      if ((v152 & 0x200) == 0)
      {
        goto LABEL_289;
      }

      goto LABEL_328;
    }
  }

  else if ((v148 & 0x40) == 0)
  {
    goto LABEL_288;
  }

  *v238 = 0;
  if ((v152 & 0x200) == 0)
  {
LABEL_289:
    if ((v148 & 0x200) == 0)
    {
      goto LABEL_290;
    }

    goto LABEL_329;
  }

LABEL_328:
  *(a1 + 39959) = 1;
  if ((v148 & 0x200) == 0)
  {
LABEL_290:
    if ((v152 & 0x400) == 0)
    {
      goto LABEL_291;
    }

    goto LABEL_330;
  }

LABEL_329:
  *(a1 + 39959) = 0;
  if ((v152 & 0x400) == 0)
  {
LABEL_291:
    if ((v148 & 0x400) == 0)
    {
      goto LABEL_292;
    }

    goto LABEL_331;
  }

LABEL_330:
  *(a1 + 12016) = 1;
  *v39 = 1;
  if ((v148 & 0x400) == 0)
  {
LABEL_292:
    if ((v152 & 0x20000) == 0)
    {
      goto LABEL_293;
    }

    goto LABEL_332;
  }

LABEL_331:
  *(a1 + 12016) = 0;
  *v39 = 0;
  if ((v152 & 0x20000) == 0)
  {
LABEL_293:
    if ((v148 & 0x20000) == 0)
    {
      goto LABEL_294;
    }

    goto LABEL_333;
  }

LABEL_332:
  *(a1 + 10205) = 1;
  if ((v148 & 0x20000) == 0)
  {
LABEL_294:
    if ((v152 & 0x40000) == 0)
    {
      goto LABEL_295;
    }

    goto LABEL_334;
  }

LABEL_333:
  *(a1 + 10205) = 0;
  if ((v152 & 0x40000) == 0)
  {
LABEL_295:
    if ((v148 & 0x40000) == 0)
    {
      goto LABEL_296;
    }

    goto LABEL_335;
  }

LABEL_334:
  *(a1 + 10206) = 1;
  if ((v148 & 0x40000) == 0)
  {
LABEL_296:
    if ((v152 & 0x80000) == 0)
    {
      goto LABEL_297;
    }

    goto LABEL_336;
  }

LABEL_335:
  *(a1 + 10206) = 0;
  if ((v152 & 0x80000) == 0)
  {
LABEL_297:
    if ((v148 & 0x80000) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_337;
  }

LABEL_336:
  *(a1 + 1336) |= 0x200u;
  if ((v148 & 0x80000) == 0)
  {
LABEL_298:
    if ((v152 & 0x100000) == 0)
    {
      goto LABEL_299;
    }

    goto LABEL_338;
  }

LABEL_337:
  *(a1 + 1336) &= ~0x200u;
  if ((v152 & 0x100000) == 0)
  {
LABEL_299:
    if ((v148 & 0x100000) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_300;
  }

LABEL_338:
  *(a1 + 10855) = 1;
  if ((v148 & 0x100000) != 0)
  {
LABEL_300:
    *(a1 + 10855) = 0;
  }

LABEL_301:
  v158 = *(v140 + 96);
  v159 = *(v140 + 97);
  *(a1 + 1120) = (*(a1 + 1120) | v158) & ~v159;
  if ((v158 & 0x40) != 0)
  {
    *(a1 + 1476) = 1;
    if ((v159 & 0x40) == 0)
    {
LABEL_303:
      if ((v158 & 0x10000) == 0)
      {
        goto LABEL_304;
      }

      goto LABEL_342;
    }
  }

  else if ((v159 & 0x40) == 0)
  {
    goto LABEL_303;
  }

  *(a1 + 1476) = 0;
  if ((v158 & 0x10000) == 0)
  {
LABEL_304:
    if ((v159 & 0x10000) == 0)
    {
      goto LABEL_305;
    }

    goto LABEL_343;
  }

LABEL_342:
  *(a1 + 10847) = 1;
  if ((v159 & 0x10000) == 0)
  {
LABEL_305:
    if ((v158 & 0x40000) == 0)
    {
      goto LABEL_306;
    }

    goto LABEL_344;
  }

LABEL_343:
  *(a1 + 10847) = 0;
  if ((v158 & 0x40000) == 0)
  {
LABEL_306:
    if ((v159 & 0x40000) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_345;
  }

LABEL_344:
  *(a1 + 10851) = 1;
  if ((v159 & 0x40000) == 0)
  {
LABEL_307:
    if ((v158 & 0x80000) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_346;
  }

LABEL_345:
  *(a1 + 10851) = 0;
  if ((v158 & 0x80000) == 0)
  {
LABEL_308:
    if ((v159 & 0x80000) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_347;
  }

LABEL_346:
  *(a1 + 10852) = 1;
  if ((v159 & 0x80000) == 0)
  {
LABEL_309:
    if ((v158 & 0x100000) == 0)
    {
      goto LABEL_310;
    }

    goto LABEL_348;
  }

LABEL_347:
  *(a1 + 10852) = 0;
  if ((v158 & 0x100000) == 0)
  {
LABEL_310:
    if ((v159 & 0x100000) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_349;
  }

LABEL_348:
  *(a1 + 10853) = 1;
  *(a1 + 10849) = 1;
  if ((v159 & 0x100000) == 0)
  {
LABEL_311:
    if ((v158 & 0x800000) == 0)
    {
      goto LABEL_312;
    }

LABEL_350:
    *(a1 + 1336) |= 0x4000000u;
    if ((v159 & 0x800000) == 0)
    {
      goto LABEL_314;
    }

    goto LABEL_313;
  }

LABEL_349:
  *(a1 + 10853) = 0;
  *(a1 + 10849) = 0;
  if ((v158 & 0x800000) != 0)
  {
    goto LABEL_350;
  }

LABEL_312:
  if ((v159 & 0x800000) != 0)
  {
LABEL_313:
    *(a1 + 1336) &= ~0x4000000u;
  }

LABEL_314:
  v160 = *(v140 + 242);
  if (v160)
  {
    *(a1 + 1352) |= v160;
  }

  v161 = *(v140 + 243);
  if (v161)
  {
    *(a1 + 1352) &= ~v161;
  }

  if ((v158 & 0x2000000) != 0)
  {
    *(a1 + 10846) = 1;
  }

  if ((v159 & 0x2000000) != 0)
  {
    *(a1 + 10846) = 0;
  }

  v162 = *(v140 + 230);
  if (v162)
  {
    *(a1 + 10200) = 1;
    *(a1 + 1296) |= 1u;
    *(a1 + 39957) = 1;
    *(a1 + 48356) = 1;
  }

  v163 = *(v140 + 231);
  if (v163)
  {
    *(a1 + 10200) = 0;
    v164 = *(a1 + 1296) & 0xFFFFFFFE;
    *(a1 + 39957) = 0;
    *(a1 + 48356) = 0;
  }

  else
  {
    v164 = *(a1 + 1296);
  }

  *(a1 + 1336) = ((*(a1 + 1336) | *(v140 + 237)) & ~*(v140 + 238) | *(v140 + 237) & 0x106) & (~*(v140 + 238) | 0xFFFFFEF9);
  *(a1 + 1240) = (*(a1 + 1240) | *(v140 + 218)) & ~*(v140 + 219);
  *(a1 + 1296) = (v164 | v162) & ~v163;
  v166 = *(v140 + 16);
  v165 = *(v140 + 17);
  *(a1 + 688) = (*(a1 + 688) | v166) & ~v165;
  if ((v166 & 0x400) != 0)
  {
    *(a1 + 10172) = 1;
  }

  if ((v165 & 0x400) != 0)
  {
    *(a1 + 10172) = 0;
  }

  if ((*(v140 + 412) & 8) != 0)
  {
    *(a1 + 1464) = 0x8000000;
  }

  v167 = *(v140 + 200);
  if (v167 >= 1)
  {
    *(a1 + 1136) = v167;
  }

  v168 = *(v140 + 18);
  if ((v168 - 1) <= 0x2F)
  {
    *(a1 + 11772) = v168;
  }

  v169 = *(v140 + 256);
  if (v169 >= 1)
  {
    *(a1 + 1368) = v169;
  }

  v170 = *(v140 + 259);
  if ((v170 & 0x80000000) == 0)
  {
    *(a1 + 10788) = v170;
    if (v170 >= 5)
    {
      if (AVE_Log_CheckLevel(0x10u, 4))
      {
        v173 = AVE_Log_CheckConsole(0x10u);
        v174 = AVE_GetCurrTime();
        v175 = AVE_Log_GetLevelStr(4);
        if (v173)
        {
          printf("%lld %d AVE %s: FIG: SetProperty AVE_kVTCompressionPropertyKey_SAOMode not supported (%d)\n", v174, 16, v175, v170);
          v176 = AVE_GetCurrTime();
          v234 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: FIG: SetProperty AVE_kVTCompressionPropertyKey_SAOMode not supported (%d)", v176, 16, v234, v170);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: SetProperty AVE_kVTCompressionPropertyKey_SAOMode not supported (%d)", v174, 16, v175, v170);
        }
      }

      LOBYTE(v171) = 0;
      LOBYTE(v172) = 0;
    }

    else
    {
      v171 = 0x101000100uLL >> (8 * v170);
      v172 = 0x101010000uLL >> (8 * v170);
    }

    *(a1 + 59393) = v171;
    *(a1 + 59394) = v172;
  }

  v177 = *(v140 + 255);
  if (AVE_DevCap_FindSearchRangeMode(*(a1 + 68), 1, 2, v177))
  {
    *v10 = v177;
  }

  v178 = *(v140 + 223);
  if (v178 >= 1)
  {
    *(a1 + 1288) = v178;
  }

  if ((*v140 & 0x80000000) == 0)
  {
    *(a1 + 11460) = *v140;
  }

  v179 = *(v140 + 190);
  if (v179 >= 1)
  {
    *(a1 + 1112) = v179;
  }

  v180 = *(v140 + 196);
  if (v180 != -13)
  {
    *(a1 + 1232) = v180;
  }

  v181 = *(v140 + 197);
  if (v181 != -13)
  {
    *(a1 + 1236) = v181;
  }

  v182 = *(v140 + 240);
  if (v182 != -13)
  {
    *(a1 + 1344) = v182;
  }

  v183 = *(v140 + 241);
  if (v183 != -13)
  {
    *(a1 + 1348) = v183;
  }

  v184 = *(v140 + 201);
  if (v184 != -13)
  {
    *(a1 + 1144) = v184;
  }

  v185 = *(v140 + 202);
  if (v185 != -13)
  {
    *(a1 + 1148) = v185;
  }

  v186 = *(v140 + 203);
  if (v186 != -13)
  {
    *(a1 + 1152) = v186;
  }

  v187 = *(v140 + 260);
  if (v187 <= 4)
  {
    *(a1 + 10860) = v187;
  }

  if (*(v140 + 262))
  {
    v188 = 0;
    v189 = a1 + 10544;
    v190 = 1;
    do
    {
      v191 = v190;
      v192 = *(v189 + 4 * v188);
      v193 = (*(v140 + 262) / 100.0 + 1.0) * v192;
      if (v193 >= 25.0 || v193 < 0.0)
      {
        v193 = v192;
      }

      *(v189 + 4 * v188) = v193;
      v188 = 1;
      v190 = 0;
    }

    while ((v191 & 1) != 0);
  }

  v195 = *(v140 + 261);
  if ((v195 & 0x80000000) == 0)
  {
    *(a1 + 10544) = v195;
    *(a1 + 10548) = v195;
  }

  v196 = *(v140 + 400);
  if (v196 >= 1)
  {
    *(a1 + 11792) = v196;
  }

  v197 = *(v140 + 401);
  if (v197 >= 1)
  {
    *(a1 + 11796) = v197;
  }

  v198 = *(v140 + 189);
  if ((v198 & 0x80000000) == 0)
  {
    *(a1 + 10808) = v198;
    *(a1 + 10845) = 1;
  }

  v199 = *(v140 + 254);
  if (v199 >= 1)
  {
    *(a1 + 10252) = v199;
  }

  v200 = *(v140 + 258);
  if (v200 <= 2)
  {
    *(a1 + 60062) = v200 != 0;
  }

  v201 = *(v140 + 123);
  if (v201)
  {
    *(a1 + 1096) |= v201;
  }

  v202 = *(v140 + 124);
  if (v202)
  {
    *(a1 + 1096) &= ~v202;
  }

  if (*(a1 + 1450))
  {
    *(a1 + 10928) = 1;
    *(a1 + 14424) = 1;
    *(a1 + 31408) = 1;
    *(a1 + 1096) |= 0x1EuLL;
  }

  if ((v202 & 0x80000000) != 0)
  {
    *(a1 + 10928) = 0;
    *(a1 + 1096) &= 0xFFFFFFFFFFFFFFE1;
  }

  v203 = *(v140 + 199);
  if (v203 >= 1)
  {
    *(a1 + 1132) = v203;
  }

  v204 = *(v140 + 200);
  if (v204 >= 1)
  {
    *(a1 + 1136) = v204;
  }

  v205 = *(v140 + 198);
  if ((v205 & 0x80000000) == 0)
  {
    *(a1 + 1128) = v205;
    *(a1 + 1120) |= 0x80000000uLL;
  }

  v206 = v140[102];
  if (v206 >= 0.0)
  {
    *(a1 + 1200) = v206;
  }

  v207 = *(v140 + 397);
  if (v207 >= 1)
  {
    *(a1 + 720) = v207;
  }

  v208 = *(a1 + 716);
  if (v145 != v208)
  {
    v209 = *(a1 + 24732) + 8;
    if (v209 <= *(a1 + 24736) + 8)
    {
      v209 = *(a1 + 24736) + 8;
    }

    if (AVE_UpdatePixelBufferDict(*(a1 + 68), *(a1 + 64), v208, 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v209, 0, 0x1414C4C20, *(a1 + 16)) && AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v210 = AVE_Log_CheckConsole(0x1Eu);
      v211 = AVE_GetCurrTime();
      v212 = AVE_Log_GetLevelStr(4);
      if (v210)
      {
        printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.\n", v211, 30, v212, "AVE_HEVC_ApplyDW", 6799, "ret == 0");
        v213 = AVE_GetCurrTime();
        v235 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v213, 30, v235, "AVE_HEVC_ApplyDW", 6799, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v211, 30, v212, "AVE_HEVC_ApplyDW", 6799, "ret == 0");
      }
    }
  }

  if ((*(a1 + 688) & 4) != 0)
  {
    v214 = *(a1 + 1112);
    if (v214 >= 1)
    {
      v215 = v214;
    }

    else
    {
      v215 = 30.0;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v216 = AVE_Log_CheckConsole(0x1Eu);
      v217 = AVE_GetCurrTime();
      v218 = AVE_Log_GetLevelStr(6);
      v219 = *(a1 + 1444);
      v220 = *(a1 + 1136);
      if (v216)
      {
        printf("%lld %d AVE %s: FIG: PrepareMemoryUsage - br %d, thr %f\n", v217, 30, v218, v220, v215 * ((v219 * *(a1 + 1440)) * 1.5) * 0.2);
        v221 = AVE_GetCurrTime();
        v236 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: PrepareMemoryUsage - br %d, thr %f", v221, 30, v236, *(a1 + 1136), v215 * ((*(a1 + 1444) * *(a1 + 1440)) * 1.5) * 0.2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: PrepareMemoryUsage - br %d, thr %f", v217, 30, v218, v220, v215 * ((v219 * *(a1 + 1440)) * 1.5) * 0.2);
      }
    }

    if (v215 * ((*(a1 + 1444) * *(a1 + 1440)) * 1.5) * 0.2 > *(a1 + 1136))
    {
      *(a1 + 11804) = 50;
    }
  }

  v124 = AVE_ValidateEncoderParameters(a1);
  if (v124 && AVE_Log_CheckLevel(3u, 4))
  {
    v222 = AVE_Log_CheckConsole(3u);
    v223 = AVE_GetCurrTime();
    v224 = AVE_Log_GetLevelStr(4);
    if (v222)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v223, 3, v224, "AVE_ManageSessionSettings", 7360, "err == 0");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
  }

  return v124;
}

uint64_t AVE_GetPerFrameData(uint64_t a1, const __CFDictionary *a2, unint64_t *a3, int *a4, unsigned int *a5)
{
  v291 = *MEMORY[0x29EDCA608];
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v10 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_GetPerFrameData", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v258 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v13, 12, v258);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", CurrTime, 12, LevelStr);
    }
  }

  if (a4)
  {
    v14 = a1 + 104640;
    *(a3 + 216) = *(a1 + 1136);
    *(a3 + 212) = *(a1 + 1112);
    v15 = *(a1 + 1160);
    v16 = *(a1 + 1176);
    a3[113] = *(a1 + 1192);
    *(a3 + 109) = v15;
    *(a3 + 111) = v16;
    *(a1 + 104640) = 0;
    *(a4 + 1357) = *(a1 + 10788) == 4;
    *(a4 + 1358) = *(a1 + 10848);
    *(a4 + 1359) = *(a1 + 10849);
    *(a3 + 28) = *(a1 + 688) & 2;
    a4[342] = *(a1 + 10808);
    *(a4 + 1362) = *(a1 + 10204);
    v17 = *(a1 + 106088);
    if (!v17)
    {
      v17 = *(a1 + 1440);
    }

    v18 = a4 + 133;
    a4[140] = v17;
    v19 = *(a1 + 106092);
    if (!v19)
    {
      v19 = *(a1 + 1444);
    }

    a4[141] = v19;
    *(a4 + 1356) = 0;
    if ((*(a1 + 716) & 0x3C0) == 0)
    {
      *a3 &= ~4uLL;
      goto LABEL_58;
    }

    v20 = *(a1 + 1444);
    v21 = *(a1 + 1440);
    *(a3 + 242) = *(a1 + 4 * a5[47] + 108008);
    if (*(a1 + 11810) == 1)
    {
      v22 = AVE_DW_Get()[263];
      if (v22 >= 1)
      {
        v23 = *(a1 + 104648);
        if (v23 <= 3)
        {
          v24 = *a3 | 4;
          *a3 = v24;
          *(a1 + 108016) |= 4uLL;
          goto LABEL_22;
        }

        v61 = v23 % v22;
        v24 = *(a1 + 108016);
        if (!v61)
        {
          v24 = (*a3 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v24 >> 2) & 1))) ^ 4;
          *a3 = v24;
          *(a1 + 108016) = v24;
LABEL_22:
          v30 = *(a5 + 17);
          v31 = *(v30 + 56);
          v32 = 1.0;
          if (v31 == 0.0)
          {
            v31 = 1.0;
          }

          *(a4 + 175) = v31;
          v33 = *(v30 + 80);
          a4[352] = v33;
          v34 = *(a1 + 76);
          if (v34 <= 26)
          {
            if (v33 != 1)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v35 = *(v30 + 64);
            v38 = v35 == 2418 && v33 == 2 || v33 == 1;
            if (v34 < 0x1E)
            {
              if (!v38)
              {
                goto LABEL_47;
              }
            }

            else if (v35 != 2419 && !v38)
            {
              goto LABEL_47;
            }
          }

          v39 = ((v21 + 15) >> 4) * ((v20 + 15) >> 4);
          if (v39 > 3600)
          {
            if (v39 > 0x1FE0)
            {
LABEL_46:
              *(a4 + 175) = v32;
              goto LABEL_47;
            }

            if (v31 > 0.5)
            {
              goto LABEL_47;
            }
          }

          else if (v31 >= 0.39)
          {
LABEL_47:
            if (*(a1 + 104648) <= 5u)
            {
              *a3 = v24 | 4;
            }

            if (AVE_Log_CheckLevel(0x10u, 8))
            {
              v40 = AVE_Log_CheckConsole(0x10u);
              v41 = AVE_GetCurrTime();
              v42 = AVE_Log_GetLevelStr(8);
              v43 = *(a1 + 104648);
              v44 = *a3;
              if (v40)
              {
                printf("%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx\n", v41, 16, v42, v43, *(*(a5 + 17) + 72), v44);
                v45 = AVE_GetCurrTime();
                v46 = AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v45, 16, v46, *(a1 + 104648), *(*(a5 + 17) + 72), *a3);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v41, 16, v42, v43, *(*(a5 + 17) + 72), v44);
              }
            }

            v47 = a1 + 108024;
            v48 = a5[47];
            v49 = *(a1 + 108024 + 4 * v48);
            if ((*a3 & 4) == 0)
            {
              if ((v49 - 1) > 4)
              {
                *(v47 + 4 * v48) = 0;
LABEL_58:
                *a4 = 0;
                *(a4 + 1392) = 0;
                *(a4 + 2374) = 0;
                *(a4 + 3) = 0;
                *(a4 + 30) = 0;
                v288 = a5;
                *(a5 + 8) = 0;
                *(a4 + 48) = 0;
                a4[13] = -1;
                *(a4 + 5) = 0xFFFFFFF3FFFFFFFFLL;
                *&v50 = -1;
                *(&v50 + 1) = -1;
                *(a4 + 17) = v50;
                v51 = a4 + 17;
                *(a4 + 15) = 0;
                *(a4 + 21) = v50;
                *v18 = 0;
                a4[135] = -1;
                *(a4 + 343) = v50;
                if (!a2)
                {
                  v57 = 0;
                  a5 = v288;
                  goto LABEL_272;
                }

                v284 = a4 + 343;
                if (AVE_Log_CheckLevel(0x1Du, 6))
                {
                  v52 = AVE_Log_CheckConsole(0x1Du);
                  v53 = AVE_GetCurrTime();
                  v54 = AVE_Log_GetLevelStr(6);
                  v55 = *(a1 + 104648);
                  if (v52)
                  {
                    printf("%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d\n", v53, 29, v54, v55);
                    v56 = AVE_GetCurrTime();
                    v260 = AVE_Log_GetLevelStr(6);
                    syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v56, 29, v260, *(a1 + 104648));
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v53, 29, v54, v55);
                  }
                }

                Value = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCED0]);
                v59 = MEMORY[0x29EDB8F00];
                if (Value && CFEqual(Value, *MEMORY[0x29EDB8F00]))
                {
                  if (*(a1 + 10532))
                  {
                    v60 = 3;
                  }

                  else
                  {
                    v60 = (*(a1 + 1241) & 1) != 0 ? 1 : 2;
                  }

                  *a4 = v60;
                  *(a3 + 230) |= 1u;
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v62 = AVE_Log_CheckConsole(0x1Du);
                    v63 = AVE_GetCurrTime();
                    v64 = AVE_Log_GetLevelStr(6);
                    v65 = *(a3 + 230);
                    if (v62)
                    {
                      printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x\n", v63, 29, v64, *a4, v65);
                      v66 = AVE_GetCurrTime();
                      v67 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v66, 29, v67, *a4, *(a3 + 230));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v63, 29, v64, *a4, v65);
                    }
                  }
                }

                v68 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEC8]);
                if (v68)
                {
                  v69 = v68;
                  TypeID = CFDataGetTypeID();
                  if (TypeID == CFGetTypeID(v69))
                  {
                    *(a3 + 232) |= 0x10u;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v71 = AVE_Log_CheckConsole(0x1Du);
                      v72 = AVE_GetCurrTime();
                      v73 = AVE_Log_GetLevelStr(6);
                      if (v71)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices\n", v72, 29, v73);
                        v74 = AVE_GetCurrTime();
                        v261 = AVE_Log_GetLevelStr(6);
                        v59 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v74, 29, v261);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v72, 29, v73);
                      }
                    }
                  }
                }

                v75 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCED8]);
                if (v75)
                {
                  if (CFEqual(v75, *v59))
                  {
                    *(a3 + 232) |= 0x10u;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v76 = AVE_Log_CheckConsole(0x1Du);
                      v77 = AVE_GetCurrTime();
                      v78 = AVE_Log_GetLevelStr(6);
                      v79 = *(a3 + 232);
                      if (v76)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x\n", v77, 29, v78, v79);
                        v80 = AVE_GetCurrTime();
                        v262 = AVE_Log_GetLevelStr(6);
                        v59 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v80, 29, v262, *(a3 + 232));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v77, 29, v78, v79);
                      }
                    }
                  }
                }

                v81 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEF8]);
                if (v81)
                {
                  if (CFEqual(v81, *v59))
                  {
                    *a3 |= 8uLL;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v82 = AVE_Log_CheckConsole(0x1Du);
                      v83 = AVE_GetCurrTime();
                      v84 = AVE_Log_GetLevelStr(6);
                      v85 = *a3;
                      if (v82)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx\n", v83, 29, v84, v85);
                        v86 = AVE_GetCurrTime();
                        v263 = AVE_Log_GetLevelStr(6);
                        v59 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v86, 29, v263, *a3);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v83, 29, v84, v85);
                      }
                    }
                  }
                }

                v87 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF18]);
                a4[8] = 0;
                *(a4 + 3) = 0;
                *(a3 + 234) &= ~0x10000u;
                if (*(a1 + 1338))
                {
                  v88 = v87;
                  if (v87)
                  {
                    a4[8] = CFDataGetLength(v87);
                    *(a4 + 3) = CFDataGetBytePtr(v88);
                    *(a3 + 234) |= 0x10000u;
                  }
                }

                v89 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF20]);
                if (v89)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v89, kCFNumberSInt32Type, &valuePtr);
                  v90 = valuePtr;
                  a4[2] = WORD1(valuePtr);
                  a4[3] = v90;
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v91 = AVE_Log_CheckConsole(0x1Du);
                    v92 = AVE_GetCurrTime();
                    v93 = AVE_Log_GetLevelStr(6);
                    v94 = a4[3];
                    if (v91)
                    {
                      printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d\n", v92, 29, v93, a4[2], v94);
                      v95 = AVE_GetCurrTime();
                      v96 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v95, 29, v96, a4[2], a4[3]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v92, 29, v93, a4[2], v94);
                    }
                  }
                }

                v97 = CFDictionaryGetValue(a2, @"AttachDPB");
                if (v97 && CFEqual(v97, *v59))
                {
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v98 = AVE_Log_CheckConsole(0x1Du);
                    v99 = AVE_GetCurrTime();
                    v100 = AVE_Log_GetLevelStr(6);
                    v101 = *(a1 + 104648);
                    if (v98)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)\n", v99, 29, v100, v101);
                      v102 = AVE_GetCurrTime();
                      v264 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v102, 29, v264, *(a1 + 104648));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v99, 29, v100, v101);
                    }
                  }

                  *(a4 + 36) = 1;
                }

                v103 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF08]);
                if (v103)
                {
                  if (*(a1 + 104648))
                  {
                    v104 = v103;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v105 = AVE_Log_CheckConsole(0x1Du);
                      v106 = AVE_GetCurrTime();
                      v107 = AVE_Log_GetLevelStr(6);
                      v108 = *(a1 + 104648);
                      if (v105)
                      {
                        printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)\n", v106, 29, v107, v108);
                        v109 = AVE_GetCurrTime();
                        v265 = AVE_Log_GetLevelStr(6);
                        v59 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v109, 29, v265, *(a1 + 104648));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v106, 29, v107, v108);
                      }

                      v14 = a1 + 104640;
                      v18 = a4 + 133;
                    }

                    *(a4 + 37) = 1;
                    *(v288 + 8) = v104;
                  }

                  else
                  {
                    if (AVE_Log_CheckLevel(0x10u, 5))
                    {
                      v110 = AVE_Log_CheckConsole(0x10u);
                      v111 = AVE_GetCurrTime();
                      v112 = AVE_Log_GetLevelStr(5);
                      if (v110)
                      {
                        printf("%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true\n", v111, 16, v112);
                        v113 = AVE_GetCurrTime();
                        v266 = AVE_Log_GetLevelStr(5);
                        v59 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v113, 16, v266);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v111, 16, v112);
                      }
                    }

                    if (AVE_Log_CheckLevel(0x10u, 5))
                    {
                      v114 = AVE_Log_CheckConsole(0x10u);
                      v115 = AVE_GetCurrTime();
                      v116 = AVE_Log_GetLevelStr(5);
                      if (v114)
                      {
                        printf("%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag\n", v115, 16, v116);
                        v117 = AVE_GetCurrTime();
                        v267 = AVE_Log_GetLevelStr(5);
                        v59 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v117, 16, v267);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v115, 16, v116);
                      }
                    }
                  }
                }

                v118 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEB8]);
                if (v118 && CFEqual(v118, *v59))
                {
                  *a3 |= 0x8000uLL;
                }

                v119 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCE08]);
                if (v119)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v119, kCFNumberSInt32Type, &valuePtr);
                  if (valuePtr)
                  {
                    *a3 |= 0x10000uLL;
                  }
                }

                v120 = CFDictionaryGetValue(a2, @"MarkCurrentFrameAsLTR");
                if (v120)
                {
                  if (CFEqual(v120, *v59))
                  {
                    *(a4 + 48) = 1;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v121 = AVE_Log_CheckConsole(0x1Du);
                      v122 = AVE_GetCurrTime();
                      v123 = AVE_Log_GetLevelStr(6);
                      if (v121)
                      {
                        printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE\n", v122, 29, v123);
                        v124 = AVE_GetCurrTime();
                        v268 = AVE_Log_GetLevelStr(6);
                        v59 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v124, 29, v268);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v122, 29, v123);
                      }
                    }
                  }
                }

                v125 = CFDictionaryGetValue(a2, @"RVRADimension");
                if (v125)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v125, kCFNumberSInt32Type, &valuePtr);
                  v126 = valuePtr;
                  a4[15] = WORD1(valuePtr);
                  a4[16] = v126;
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v127 = AVE_Log_CheckConsole(0x1Du);
                    v128 = AVE_GetCurrTime();
                    v129 = AVE_Log_GetLevelStr(6);
                    v130 = a4[16];
                    if (v127)
                    {
                      printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d\n", v128, 29, v129, a4[15], v130);
                      v131 = AVE_GetCurrTime();
                      v132 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v131, 29, v132, a4[15], a4[16]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v128, 29, v129, a4[15], v130);
                    }
                  }
                }

                v133 = CFDictionaryGetValue(a2, @"FrameNumForLTRToReplace");
                if (v133)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v133, kCFNumberSInt32Type, &valuePtr);
                  a4[13] = valuePtr;
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v134 = AVE_Log_CheckConsole(0x1Du);
                    v135 = AVE_GetCurrTime();
                    v136 = AVE_Log_GetLevelStr(6);
                    v137 = a4[13];
                    if (v134)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)\n", v135, 29, v136, v137);
                      v138 = AVE_GetCurrTime();
                      v269 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v138, 29, v269, a4[13]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v135, 29, v136, v137);
                    }
                  }
                }

                v139 = CFDictionaryGetValue(a2, @"UserFrameType");
                if (v139)
                {
                  LODWORD(valuePtr) = 5;
                  CFNumberGetValue(v139, kCFNumberSInt32Type, &valuePtr);
                  a4[10] = valuePtr;
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v140 = AVE_Log_CheckConsole(0x1Du);
                    v141 = AVE_GetCurrTime();
                    v142 = AVE_Log_GetLevelStr(6);
                    v143 = a4[10];
                    if (v140)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)\n", v141, 29, v142, v143);
                      v144 = AVE_GetCurrTime();
                      v270 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v144, 29, v270, a4[10]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v141, 29, v142, v143);
                    }
                  }
                }

                v145 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEF0]);
                v286 = v14;
                v287 = a3;
                if (v145)
                {
                  v146 = v145;
                  v147 = CFArrayGetTypeID();
                  if (v147 == CFGetTypeID(v146))
                  {
                    LODWORD(valuePtr) = 4;
                    AVE_Ref_RetrieveArray(v146, a4 + 17, &valuePtr);
                    *(a4 + 56) = valuePtr;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v148 = AVE_Log_CheckConsole(0x1Du);
                      v149 = AVE_GetCurrTime();
                      v150 = AVE_Log_GetLevelStr(6);
                      v151 = *(a4 + 56);
                      if (v148)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncoderFrameOptionKey_ReferenceL0, count = %d\n", v149, 29, v150, v151);
                        v152 = AVE_GetCurrTime();
                        v271 = AVE_Log_GetLevelStr(6);
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v152, 29, v271, *(a4 + 56));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v149, 29, v150, v151);
                      }
                    }

                    if (*(a4 + 56))
                    {
                      v153 = 0;
                      do
                      {
                        if ((*v51 & 0x80000000) == 0 && AVE_Log_CheckLevel(0x1Eu, 6))
                        {
                          v154 = AVE_Log_CheckConsole(0x1Eu);
                          v155 = AVE_GetCurrTime();
                          v156 = AVE_Log_GetLevelStr(6);
                          v157 = *v51;
                          if (v154)
                          {
                            printf("%lld %d AVE %s: AVE Fig: userRefInfo_[%d].userRefFrameNumDriver = %d\n", v155, 30, v156, v153, v157);
                            v155 = AVE_GetCurrTime();
                            v156 = AVE_Log_GetLevelStr(6);
                            v157 = *v51;
                          }

                          syslog(3, "%lld %d AVE %s: AVE Fig: userRefInfo_[%d].userRefFrameNumDriver = %d", v155, 30, v156, v153, v157);
                          v14 = v286;
                          a3 = v287;
                        }

                        ++v153;
                        v51 += 2;
                      }

                      while (v153 < *(a4 + 56));
                    }

                    v59 = MEMORY[0x29EDB8F00];
                  }
                }

                v158 = CFDictionaryGetValue(a2, @"SliceTcOffsetDiv2");
                if (v158)
                {
                  v159 = a4 + 134;
                  CFNumberGetValue(v158, kCFNumberSInt32Type, a4 + 134);
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v160 = AVE_Log_CheckConsole(0x1Du);
                    v161 = AVE_GetCurrTime();
                    v162 = AVE_Log_GetLevelStr(6);
                    v163 = *v159;
                    if (v160)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceTcOffsetDiv2 found (%d)\n", v161, 29, v162, v163);
                      v164 = AVE_GetCurrTime();
                      v272 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceTcOffsetDiv2 found (%d)", v164, 29, v272, *v159);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceTcOffsetDiv2 found (%d)", v161, 29, v162, v163);
                    }
                  }
                }

                v165 = CFDictionaryGetValue(a2, @"SliceBetaOffsetDiv2");
                if (v165)
                {
                  CFNumberGetValue(v165, kCFNumberSInt32Type, v18);
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v166 = AVE_Log_CheckConsole(0x1Du);
                    v167 = AVE_GetCurrTime();
                    v168 = AVE_Log_GetLevelStr(6);
                    v169 = *v18;
                    if (v166)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)\n", v167, 29, v168, v169);
                      v170 = AVE_GetCurrTime();
                      v273 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v170, 29, v273, *v18);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v167, 29, v168, v169);
                    }
                  }
                }

                if ((*(a1 + 1296) & 1) != 0 && a4[10] == 1)
                {
                  Info = AVE_WtPred_GetInfo(a2, *(a4 + 56), a4 + 25);
                  if (Info)
                  {
                    goto LABEL_187;
                  }

                  valuePtr = 0u;
                  v290 = 0u;
                  AVE_SNPrintf(&valuePtr, 32, "%llu %d", *(a1 + 56), *(v14 + 8));
                  AVE_WtPred_PrintInfo(a4 + 25, 0xD7u, 6, &valuePtr, 0);
                }

                Info = 0;
LABEL_187:
                v171 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEC0]);
                if (v171)
                {
                  if (CFEqual(v171, *v59))
                  {
                    *a3 |= 2uLL;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v172 = AVE_Log_CheckConsole(0x1Du);
                      v173 = AVE_GetCurrTime();
                      v174 = AVE_Log_GetLevelStr(6);
                      if (v172)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE\n", v173, 29, v174);
                        v175 = AVE_GetCurrTime();
                        v274 = AVE_Log_GetLevelStr(6);
                        v59 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v175, 29, v274);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v173, 29, v174);
                      }
                    }
                  }
                }

                v176 = CFDictionaryGetValue(a2, @"ResetRCState");
                if (v176)
                {
                  v177 = CFEqual(v176, *v59);
                  *(a4 + 4) = v177 != 0;
                  if (v177)
                  {
                    v178 = *(a1 + 1132);
                    if (v178 == 1)
                    {
                      AVE_FPS::Reset(*(v14 + 64));
                      *a4 = 2;
                      if (AVE_Log_CheckLevel(0x1Du, 6))
                      {
                        v182 = AVE_Log_CheckConsole(0x1Du);
                        v183 = AVE_GetCurrTime();
                        v184 = AVE_Log_GetLevelStr(6);
                        if (v182)
                        {
                          printf("%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR\n", v183, 29, v184, *(a4 + 4));
                          AVE_GetCurrTime();
                          AVE_Log_GetLevelStr(6);
                          v59 = MEMORY[0x29EDB8F00];
                        }

                        syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR");
                      }
                    }

                    else if (v178 == 20)
                    {
                      *(a4 + 4) = 0;
                      if (AVE_Log_CheckLevel(0x1Du, 5))
                      {
                        v179 = AVE_Log_CheckConsole(0x1Du);
                        v180 = AVE_GetCurrTime();
                        v181 = AVE_Log_GetLevelStr(5);
                        if (v179)
                        {
                          printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.\n", v180, 29, v181);
                          AVE_GetCurrTime();
                          AVE_Log_GetLevelStr(5);
                          v59 = MEMORY[0x29EDB8F00];
                        }

                        syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.");
                      }
                    }

                    else
                    {
                      *(a4 + 4) = 0;
                      if (AVE_Log_CheckLevel(0x1Du, 5))
                      {
                        v185 = AVE_Log_CheckConsole(0x1Du);
                        v186 = AVE_GetCurrTime();
                        v187 = AVE_Log_GetLevelStr(5);
                        if (v185)
                        {
                          printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.\n", v186, 29, v187);
                          AVE_GetCurrTime();
                          AVE_Log_GetLevelStr(5);
                          v59 = MEMORY[0x29EDB8F00];
                        }

                        syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.");
                      }
                    }
                  }
                }

                v188 = CFDictionaryGetValue(a2, @"RPSInfo");
                if (v188)
                {
                  v189 = v188;
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v190 = AVE_Log_CheckConsole(0x1Du);
                    v191 = AVE_GetCurrTime();
                    v192 = AVE_Log_GetLevelStr(6);
                    if (v190)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kRPSInfo found \n", v191, 29, v192);
                      v193 = AVE_GetCurrTime();
                      v275 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kRPSInfo found ", v193, 29, v275);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kRPSInfo found ", v191, 29, v192);
                    }
                  }

                  v194 = a4[10];
                  if (v194 <= 6 && ((1 << v194) & 0x47) != 0)
                  {
                    AVE_HEVC_Slice_ST_RPS_Retrieve(v189, a4 + 568);
                  }
                }

                v195 = *MEMORY[0x29EDBCF10];
                v196 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF10]);
                if (v196 && (v197 = v196, v198 = CFNumberGetTypeID(), v198 == CFGetTypeID(v197)))
                {
                  CFNumberGetValue(v197, kCFNumberSInt32Type, a4 + 11);
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v199 = AVE_Log_CheckConsole(0x1Du);
                    v200 = AVE_GetCurrTime();
                    v201 = AVE_Log_GetLevelStr(6);
                    v202 = a4[11];
                    if (v199)
                    {
                      printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)\n", v200, 29, v201, v202);
                      v203 = AVE_GetCurrTime();
                      v276 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v203, 29, v276, a4[11]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v200, 29, v201, v202);
                    }
                  }
                }

                else
                {
                  v204 = CFDictionaryGetValue(a2, v195);
                  if (v204)
                  {
                    v205 = v204;
                    v206 = CFArrayGetTypeID();
                    if (v206 == CFGetTypeID(v205))
                    {
                      Count = CFArrayGetCount(v205);
                      LODWORD(valuePtr) = 0;
                      if (Count >= 1)
                      {
                        v208 = Count;
                        for (i = 0; i < v208; i = (i + 1))
                        {
                          AVE_CFArray_GetSInt32(v205, i, &valuePtr);
                          if (!i)
                          {
                            a4[11] = valuePtr;
                          }

                          if (AVE_Log_CheckLevel(0x1Du, 6))
                          {
                            v210 = AVE_Log_CheckConsole(0x1Du);
                            v211 = AVE_GetCurrTime();
                            v212 = AVE_Log_GetLevelStr(6);
                            if (v210)
                            {
                              printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)\n", v211, 29, v212, i, valuePtr);
                              v211 = AVE_GetCurrTime();
                              v212 = AVE_Log_GetLevelStr(6);
                            }

                            syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)", v211, 29, v212, i, valuePtr);
                          }
                        }
                      }

                      v14 = v286;
                      a3 = v287;
                      v59 = MEMORY[0x29EDB8F00];
                    }
                  }
                }

                v213 = CFDictionaryGetValue(a2, @"POCLsb");
                a5 = v288;
                if (v213)
                {
                  CFNumberGetValue(v213, kCFNumberSInt32Type, v284);
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v214 = AVE_Log_CheckConsole(0x1Du);
                    v215 = AVE_GetCurrTime();
                    v216 = AVE_Log_GetLevelStr(6);
                    v217 = *v284;
                    if (v214)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)\n", v215, 29, v216, v217);
                      v218 = AVE_GetCurrTime();
                      v277 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v218, 29, v277, *v284);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v215, 29, v216, v217);
                    }
                  }
                }

                v219 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEE0]);
                if (v219)
                {
                  v220 = a4 + 135;
                  CFNumberGetValue(v219, kCFNumberSInt32Type, a4 + 135);
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v221 = AVE_Log_CheckConsole(0x1Du);
                    v222 = AVE_GetCurrTime();
                    v223 = AVE_Log_GetLevelStr(6);
                    v224 = *v220;
                    if (v221)
                    {
                      printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)\n", v222, 29, v223, v224);
                      v225 = AVE_GetCurrTime();
                      v278 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v225, 29, v278, *v220);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v222, 29, v223, v224);
                    }
                  }
                }

                v226 = CFDictionaryGetValue(a2, @"UserSaoMap");
                if (v226)
                {
                  *(a4 + 1356) = CFEqual(v226, *v59) != 0;
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v227 = AVE_Log_CheckConsole(0x1Du);
                    v228 = AVE_GetCurrTime();
                    v229 = AVE_Log_GetLevelStr(6);
                    v230 = *(a4 + 1356);
                    if (v227)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_UserSaoMap found (%d)\n", v228, 29, v229, v230);
                      v231 = AVE_GetCurrTime();
                      v279 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_UserSaoMap found (%d)", v231, 29, v279, *(a4 + 1356));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_UserSaoMap found (%d)", v228, 29, v229, v230);
                    }
                  }
                }

                v232 = CFDictionaryGetValue(a2, @"NaluType");
                if (v232)
                {
                  v233 = a4 + 344;
                  CFNumberGetValue(v232, kCFNumberSInt32Type, a4 + 344);
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v234 = AVE_Log_CheckConsole(0x1Du);
                    v235 = AVE_GetCurrTime();
                    v236 = AVE_Log_GetLevelStr(6);
                    v237 = *v233;
                    if (v234)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_NaluType found (%d)\n", v235, 29, v236, v237);
                      v238 = AVE_GetCurrTime();
                      v280 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_NaluType found (%d)", v238, 29, v280, *v233);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_NaluType found (%d)", v235, 29, v236, v237);
                    }
                  }
                }

                v239 = CFDictionaryGetValue(a2, @"TemporalID");
                if (v239)
                {
                  v240 = a4 + 345;
                  CFNumberGetValue(v239, kCFNumberSInt32Type, a4 + 345);
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v241 = AVE_Log_CheckConsole(0x1Du);
                    v242 = AVE_GetCurrTime();
                    v243 = AVE_Log_GetLevelStr(6);
                    v244 = *v240;
                    if (v241)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_TemporalID found (%d)\n", v242, 29, v243, v244);
                      v245 = AVE_GetCurrTime();
                      v281 = AVE_Log_GetLevelStr(6);
                      v59 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_TemporalID found (%d)", v245, 29, v281, *v240);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_TemporalID found (%d)", v242, 29, v243, v244);
                    }
                  }
                }

                v246 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF00]);
                if (v246)
                {
                  if (CFEqual(v246, *v59))
                  {
                    *(a4 + 1392) = 1;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v247 = AVE_Log_CheckConsole(0x1Du);
                      v248 = AVE_GetCurrTime();
                      v249 = AVE_Log_GetLevelStr(6);
                      v250 = *(a4 + 1392);
                      if (v247)
                      {
                        printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)\n", v248, 29, v249, v250);
                        v251 = AVE_GetCurrTime();
                        v282 = AVE_Log_GetLevelStr(6);
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v251, 29, v282, *(a4 + 1392));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v248, 29, v249, v250);
                      }
                    }
                  }
                }

                v252 = a3 + 100;
                if ((*(a1 + 1337) & 4) != 0)
                {
                  if (!AVE_PIP_GetInfo(a2, a3 + 200))
                  {
                    valuePtr = 0u;
                    v290 = 0u;
                    AVE_SNPrintf(&valuePtr, 32, "%llu %d %d", *(a1 + 56), *(v14 + 8), *v252);
                    AVE_PIP_PrintInfo(a3 + 200, 50, 6, &valuePtr, 0);
                  }
                }

                else
                {
                  *v252 = 0;
                }

                v57 = Info;
                goto LABEL_272;
              }

              *a3 |= 4uLL;
            }

            *(v47 + 4 * v48) = v49 + 1;
            goto LABEL_58;
          }

          v32 = v31 + v31;
          goto LABEL_46;
        }

LABEL_21:
        *a3 = v24;
        goto LABEL_22;
      }

      v29 = *a3;
      if (*(*(a5 + 17) + 72) > 254)
      {
        v24 = v29 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_21;
      }
    }

    else
    {
      v29 = *a3;
    }

    v24 = v29 | 4;
    goto LABEL_21;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v25 = AVE_Log_CheckConsole(0xCu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | PerFrameData = NULL\n", v26, 12, v27, "AVE_GetPerFrameData", 542, "PerFrameData != __null");
      v28 = AVE_GetCurrTime();
      v259 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v28, 12, v259, "AVE_GetPerFrameData", 542, "PerFrameData != __null");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v26, 12, v27, "AVE_GetPerFrameData", 542, "PerFrameData != __null");
    }
  }

  v57 = 4294966295;
LABEL_272:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v253 = AVE_Log_CheckConsole(0xCu);
    v254 = AVE_GetCurrTime();
    v255 = AVE_Log_GetLevelStr(7);
    if (v253)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %d\n", v254, 12, v255, "AVE_GetPerFrameData", a1, a2, a3, a4, a5, v57);
      v256 = AVE_GetCurrTime();
      v283 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v256, 12, v283, "AVE_GetPerFrameData");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v254, 12, v255, "AVE_GetPerFrameData");
    }
  }

  return v57;
}

void AVE_UpdateSettingsBasedOnSNR(uint64_t a1, uint64_t a2, _DWORD *a3, double a4)
{
  v8 = AVE_DW_Get();
  if (*(a1 + 10892))
  {
    return;
  }

  v10 = (a1 + 104648);
  if (*(a1 + 76) >= 4)
  {
    v11 = v8[402];
    if (*(a1 + 10804) == 2)
    {
      if ((*(a1 + 10853) & 1) == 0 && v11 <= 0)
      {
        goto LABEL_84;
      }
    }

    else if (v11 < 1)
    {
      goto LABEL_84;
    }

    v12 = a4;
    if (*v10)
    {
      v9 = 0.25;
      v12 = (a4 + *(a1 + 104744) * 3.0) * 0.25;
    }

    v13 = *(a2 + 864);
    *(a1 + 104744) = v12;
    if (v11 >= 1)
    {
      v12 = v11;
      *(a1 + 104744) = v11;
      if (v11 <= 0x19)
      {
        *a2 |= 0x10uLL;
      }
    }

    v14 = *(a1 + 1440);
    v15 = *(a1 + 1444);
    v16 = *(a1 + 1112);
    v17 = v16;
    v18 = v15 * v14;
    v19 = (v15 * v14) >> 12 > 0x7E8;
    v20 = v16 > 120 || (v15 * v14) >> 12 > 0x7E8;
    if (v16 <= 90)
    {
      v19 = 0;
    }

    v21 = v14;
    v22 = v15;
    if (v18 > 0x8CA00)
    {
      v26 = v21 * v22;
      if (v18 > 0x15F900)
      {
        if (v18 > 0x473100)
        {
          v23 = v26 / 8294400.0;
          if (v16 < 28)
          {
            v24 = 24.0;
            v25 = 18000000.0;
            goto LABEL_43;
          }

          if (v16 < 0x2E)
          {
            v24 = 30.0;
            v25 = 22500000.0;
            goto LABEL_43;
          }

          v27 = v16 >= 0x5B;
          v25 = dbl_295650BC0[v16 < 0x5B];
          v24 = 120.0;
          v30 = 60.0;
LABEL_41:
          if (!v27)
          {
            v24 = v30;
          }

LABEL_43:
          v31 = (v25 * v17 / v24);
          if (*(a1 + 10772) == 2)
          {
            v32 = *(a1 + 24732) == 2;
            v33 = 1.1;
            if (*(a1 + 24732) != 2)
            {
              v33 = 1.0;
            }
          }

          else
          {
            v32 = 0;
            v33 = 1.0;
          }

          v34 = v23 * v31 * v33;
          if (v20)
          {
            if (v19)
            {
              if (v12 <= 8.0)
              {
                v43 = 125.0;
              }

              else
              {
                if (v12 > 18.0)
                {
                  if (v12 <= 22.0)
                  {
                    v35 = v34 * 125.0;
LABEL_102:
                    v58 = v35 / 100.0;
                    if (v58 <= v13)
                    {
                      v58 = v13;
                    }

                    v39 = v58;
                    v38 = 1;
                    goto LABEL_77;
                  }

                  goto LABEL_62;
                }

                v43 = 150.0;
              }

              v44 = v34 * v43;
            }

            else
            {
              if (v12 > 18.0)
              {
                if (v12 <= 23.0)
                {
                  v57 = 125.0;
                  if (v32)
                  {
                    v57 = 150.0;
                  }

                  v35 = v57 * v34;
                  goto LABEL_102;
                }

LABEL_62:
                v38 = 0;
                v39 = v13;
LABEL_77:
                a3[5] = v38;
                if (v39 >= 2 * v13)
                {
                  v39 = 2 * v13;
                }

                *(a2 + 864) = v39;
                *(a1 + 104760) = v39;
                if (AVE_Log_CheckLevel(0x30u, 6))
                {
                  v47 = AVE_Log_CheckConsole(0x30u);
                  CurrTime = AVE_GetCurrTime();
                  LevelStr = AVE_Log_GetLevelStr(6);
                  if (v47)
                  {
                    printf("%lld %d AVE %s: FIG: F %d SNR %f filteredSNR[%d] %f targetBitrate %d NewtargetBitrate %d\n", CurrTime, 48, LevelStr, *v10, a4, 0, *(a1 + 104744), v13, *(a2 + 864));
                    CurrTime = AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(6);
                  }

                  syslog(3, "%lld %d AVE %s: FIG: F %d SNR %f filteredSNR[%d] %f targetBitrate %d NewtargetBitrate %d", CurrTime);
                }

                goto LABEL_84;
              }

              v45 = 175.0;
              if (v32)
              {
                v45 = 200.0;
              }

              v44 = v45 * v34;
            }
          }

          else
          {
            LODWORD(v9) = *(a1 + 10560);
            v36 = v9;
            if (v12 <= 20.0)
            {
              v40 = !v32;
              v41 = 175.0;
              v42 = 200.0;
            }

            else
            {
              if (v12 > 23.0)
              {
                if (v12 <= 25.0)
                {
                  v37 = 125.0;
                  if (v32)
                  {
                    v37 = 150.0;
                  }

                  v35 = v37 * (v34 * v36);
                  goto LABEL_102;
                }

                goto LABEL_62;
              }

              v40 = !v32;
              v41 = 150.0;
              v42 = 175.0;
            }

            if (!v40)
            {
              v41 = v42;
            }

            v44 = v41 * (v34 * v36);
          }

          v46 = v44 / 100.0;
          if (v46 <= v13)
          {
            v46 = v13;
          }

          v39 = v46;
          v38 = 2;
          goto LABEL_77;
        }

        v23 = v26 / 2073600.0;
        if (v16 < 46)
        {
          v24 = 30.0;
          v25 = 7700000.0;
          goto LABEL_43;
        }

        if (v16 < 0x5B)
        {
          v24 = 60.0;
          v25 = 11700000.0;
          goto LABEL_43;
        }

        v27 = v16 >= 0xB5;
        v28 = v16 < 0xB5;
        v29 = &unk_295650BD0;
      }

      else
      {
        v23 = v26 / 921600.0;
        if (v16 < 46)
        {
          v24 = 30.0;
          v25 = 4900000.0;
          goto LABEL_43;
        }

        if (v16 < 0x5B)
        {
          v24 = 60.0;
          v25 = 8600000.0;
          goto LABEL_43;
        }

        v27 = v16 >= 0xB5;
        v28 = v16 < 0xB5;
        v29 = &unk_295650BE0;
      }
    }

    else
    {
      v23 = v21 * v22 / 307200.0;
      if (v16 < 46)
      {
        v24 = 30.0;
        v25 = 2500000.0;
        goto LABEL_43;
      }

      if (v16 < 0x5B)
      {
        v24 = 60.0;
        v25 = 4400000.0;
        goto LABEL_43;
      }

      v27 = v16 >= 0xB5;
      v28 = v16 < 0xB5;
      v29 = &unk_295650BF0;
    }

    v25 = v29[v28];
    v24 = 240.0;
    v30 = 120.0;
    goto LABEL_41;
  }

LABEL_84:
  if (AVE_Log_CheckLevel(0x30u, 6))
  {
    v50 = AVE_Log_CheckConsole(0x30u);
    v51 = AVE_GetCurrTime();
    v52 = AVE_Log_GetLevelStr(6);
    v53 = *v10;
    if (v50)
    {
      printf("%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f\n", v51, 48, v52, v53, 25.0, a4);
      v54 = AVE_GetCurrTime();
      v55 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", v54, 48, v55, *v10, 25.0, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", v51, 48, v52, v53, 25.0, a4);
    }
  }

  v56 = *(a1 + 10804);
  if (*(a1 + 692) == 1)
  {
    if (v56 != 2)
    {
      goto LABEL_94;
    }

    if (*(a1 + 10847) == 1)
    {
      a3[135] = a4 <= 25.0;
      a3[342] = *(a1 + 4 * (a4 <= 25.0) + 10808);
    }
  }

  else if (v56 != 2)
  {
    goto LABEL_94;
  }

  if ((*(a1 + 10851) & 1) == 0)
  {
LABEL_94:
    if (*(a1 + 10852) != 1)
    {
      return;
    }
  }

  if (a4 <= 25.0 || *(a1 + 10852) == 1)
  {
    *a2 |= 0x10uLL;
  }
}

uint64_t AVE_MultipassDataFetch(uint64_t a1, void *a2, _DWORD *a3)
{
  v3 = a1 + 102400;
  if (!*(a1 + 104648))
  {
    v9 = a2[2];
    *(a1 + 104676) = *a2;
    *(a1 + 104684) = a2[1];
    *(a1 + 104692) = v9;
    if (AVE_Log_CheckLevel(0xD8u, 6))
    {
      v10 = AVE_Log_CheckConsole(0xD8u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v13 = *(v3 + 2248);
      if (v10)
      {
        printf("%lld %d AVE %s: AVE_MultipassDataFetch : Frame %d\n", CurrTime, 216, LevelStr, v13);
        v14 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: AVE_MultipassDataFetch : Frame %d", v14, 216, v36, *(v3 + 2248));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE_MultipassDataFetch : Frame %d", CurrTime, 216, LevelStr, v13);
      }
    }

    if (AVE_Log_CheckLevel(0xD8u, 6))
    {
      v20 = AVE_Log_CheckConsole(0xD8u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(6);
      if (v20)
      {
        printf("%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld\n", v21, 216, v22, *a2, *(a2 + 2), *(a2 + 3), a2[2]);
        v21 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v21);
    }

    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v23 = AVE_Log_CheckConsole(3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d\n", v24, 3, v25, "AVE_MultipassDataFetch", 6975, "err == noErr", *(v3 + 2248), *a2, *(a2 + 2));
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        v41 = *a2;
        v42 = *(a2 + 2);
        v39 = "err == noErr";
        v40 = *(v3 + 2248);
        v38 = 6975;
      }

      else
      {
        v41 = *a2;
        v42 = *(a2 + 2);
        v40 = *(v3 + 2248);
        v38 = 6975;
        v39 = "err == noErr";
      }

      v37 = v25;
      v26 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d";
    }

    else
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v27 = AVE_Log_CheckConsole(3u);
      v24 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d\n", v24, 3, v28, "AVE_MultipassDataFetch", 6976, "data != __null", *(v3 + 2248), *a2, *(a2 + 2));
        v24 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        v41 = *a2;
        v42 = *(a2 + 2);
        v39 = "data != __null";
        v40 = *(v3 + 2248);
        v38 = 6976;
      }

      else
      {
        v41 = *a2;
        v42 = *(a2 + 2);
        v40 = *(v3 + 2248);
        v38 = 6976;
        v39 = "data != __null";
      }

      v37 = v28;
      v26 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d";
    }

    syslog(3, v26, v24, 3, v37, "AVE_MultipassDataFetch", v38, v39, v40, v41, v42);
    return 4294954394;
  }

  if (VTMultiPassStorageGetTimeStamp())
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v4 = AVE_Log_CheckConsole(3u);
      v5 = AVE_GetCurrTime();
      v6 = AVE_Log_GetLevelStr(4);
      if (!v4)
      {
LABEL_20:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.");
        return 4294954394;
      }

      v7 = 7030;
LABEL_6:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.\n", v5, 3, v6, "AVE_MultipassDataFetch", v7, "err == noErr");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      goto LABEL_20;
    }

    return 4294954394;
  }

  if ((*(v3 + 2288) & 0x1D) == 1)
  {
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v15 = AVE_Log_CheckConsole(3u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        v18 = 7035;
LABEL_15:
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.\n", v16, 3, v17, "AVE_MultipassDataFetch", v18, "err == noErr");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        goto LABEL_45;
      }

      goto LABEL_45;
    }

    if (!AVE_Log_CheckLevel(3u, 4))
    {
      return 4294954394;
    }

    v30 = AVE_Log_CheckConsole(3u);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(4);
    if (v30)
    {
      v33 = 7036;
LABEL_50:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.\n", v31, 3, v32, "AVE_MultipassDataFetch", v33, "d != __null");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  if (!VTMultiPassStorageGetTimeStamp())
  {
    if ((*(v3 + 2288) & 0x1D) != 1)
    {
      return 0;
    }

    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v29 = AVE_Log_CheckConsole(3u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        v18 = 7060;
        goto LABEL_15;
      }

LABEL_45:
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.");
      return 4294954394;
    }

    if (!AVE_Log_CheckLevel(3u, 4))
    {
      return 4294954394;
    }

    v35 = AVE_Log_CheckConsole(3u);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(4);
    if (v35)
    {
      v33 = 7061;
      goto LABEL_50;
    }

LABEL_54:
    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.");
    return 4294954394;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v19 = AVE_Log_CheckConsole(3u);
    v5 = AVE_GetCurrTime();
    v6 = AVE_Log_GetLevelStr(4);
    if (!v19)
    {
      goto LABEL_20;
    }

    v7 = 7055;
    goto LABEL_6;
  }

  return 4294954394;
}

uint64_t AVE_Session_HEVC_Process(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const __CFDictionary *a7)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v14 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Process", a1, a2, a3, a4, a5, a6, a7);
      v17 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v17, 12, v36, "AVE_Session_HEVC_Process", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Process", a1);
    }
  }

  if (a1 && a3 && a4 && a5 && a6)
  {
    if (a7 && CFDictionaryContainsKey(a7, @"SessionIndicator"))
    {
      AVE_TimeStats_Restart(*(a1 + 104712));
    }

    if (*(a1 + 104648))
    {
      goto LABEL_14;
    }

    v23 = AVE_SEI::SetSEIBits(*(a1 + 104736), *(a1 + 1096));
    if (!v23)
    {
      v33 = *(a1 + 104712);
      v34 = AVE_GetCurrTime();
      AVE_TimeStats_AddStartTime(v33, 5u, v34);
      if (*(a1 + 1112) >= 1)
      {
        v35 = *(a1 + 1112);
      }

      else
      {
        v35 = 30;
      }

      AVE_FPS::Update(*(a1 + 104704), v35, 0, 0);
LABEL_14:
      v18 = AVE_HEVC_Encode(a1, a2, a3, a4, a5, a6, a7, 0);
      goto LABEL_24;
    }

    v18 = v23;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v24 = AVE_Log_CheckConsole(3u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v25, 3, v26, "AVE_Session_HEVC_Process", 8159, "ret == 0");
        v27 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v27, 3, v38, "AVE_Session_HEVC_Process", 8159, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v25, 3, v26, "AVE_Session_HEVC_Process", 8159, "ret == 0");
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v19 = AVE_Log_CheckConsole(0xCu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v20, 12, v21, "AVE_Session_HEVC_Process", 8145, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null", a1, a2, a3, a4, a5, a6, a7);
        v22 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v22, 12, v37, "AVE_Session_HEVC_Process", 8145, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v20, 12, v21, "AVE_Session_HEVC_Process", 8145, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }
    }

    v18 = 4294966295;
  }

LABEL_24:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v28 = AVE_Log_CheckConsole(0xCu);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(7);
    if (v28)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v29, 12, v30, "AVE_Session_HEVC_Process", a1, a2, a3, a4, a5, a6, a7, v18);
      v31 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v31, 12, v39, "AVE_Session_HEVC_Process", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v29, 12, v30, "AVE_Session_HEVC_Process", a1, a2);
    }
  }

  return v18;
}

uint64_t AVE_Session_HEVC_ProcessMultiFrame(uint64_t a1, const void *a2, OpaqueCMTaggedBufferGroup *a3, const void *a4, const void *a5, const void *a6, const __CFDictionary *a7)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v12 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2, a3, a4, a5, a6, a7);
      v15 = AVE_GetCurrTime();
      v80 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v15, 12, v80, "AVE_Session_HEVC_ProcessMultiFrame", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_ProcessMultiFrame", a1);
    }
  }

  v91 = a7;
  v92 = a6;
  if (a1 && a3 && a4 && a5 && a6)
  {
    if (a7 && CFDictionaryContainsKey(a7, @"SessionIndicator"))
    {
      AVE_TimeStats_Restart(*(a1 + 104712));
    }

    if (!*(a1 + 104648))
    {
      v32 = AVE_SEI::SetSEIBits(*(a1 + 104736), *(a1 + 1096));
      if (v32)
      {
        v33 = v32;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v34 = AVE_Log_CheckConsole(3u);
          v35 = AVE_GetCurrTime();
          v36 = AVE_Log_GetLevelStr(4);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v35, 3, v36, "AVE_Session_HEVC_ProcessMultiFrame", 8210, "ret == 0");
            v37 = AVE_GetCurrTime();
            v82 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v37, 3, v82, "AVE_Session_HEVC_ProcessMultiFrame", 8210, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v35, 3, v36, "AVE_Session_HEVC_ProcessMultiFrame", 8210, "ret == 0");
          }
        }

        goto LABEL_79;
      }

      v55 = *(a1 + 104712);
      v56 = AVE_GetCurrTime();
      AVE_TimeStats_AddStartTime(v55, 5u, v56);
      if (*(a1 + 1112) >= 1)
      {
        v57 = *(a1 + 1112);
      }

      else
      {
        v57 = 30;
      }

      AVE_FPS::Update(*(a1 + 104704), v57, 0, 0);
    }

    if (*(a1 + 10556) == 2)
    {
      v90 = a2;
      Count = CMTaggedBufferGroupGetCount(a3);
      v17 = Count;
      if (*(a1 + 10556) > Count)
      {
        if (AVE_Log_CheckLevel(0xCu, 4))
        {
          v18 = AVE_Log_CheckConsole(0xCu);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          if (v18)
          {
            printf("%lld %d AVE %s: %s:%d %s | no enough buffers %d %d\n", v19, 12, v20, "AVE_Session_HEVC_ProcessMultiFrame", 8225, "num >= pINS->VideoParams.iLayerNum", v17, *(a1 + 10556));
            v21 = AVE_GetCurrTime();
            v22 = AVE_Log_GetLevelStr(4);
            v87 = v17;
            v88 = *(a1 + 10556);
            v85 = 8225;
            v86 = "num >= pINS->VideoParams.iLayerNum";
            v81 = v22;
            v23 = "%lld %d AVE %s: %s:%d %s | no enough buffers %d %d";
LABEL_74:
            syslog(3, v23, v21, 12, v81, "AVE_Session_HEVC_ProcessMultiFrame", v85, v86, v87, v88, p_tagBuffer);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | no enough buffers %d %d", v19);
          }
        }

LABEL_77:
        v33 = 4294965288;
        goto LABEL_78;
      }

      if (Count < 1)
      {
        v33 = 0;
LABEL_78:
        a2 = v90;
        goto LABEL_79;
      }

      v38 = 0;
      v39 = a1 + 15575;
      v40 = Count & 0x7FFFFFFF;
      v41 = MEMORY[0x29EDB9390];
      while (2)
      {
        v42 = 0;
        v43 = v41;
        v96 = *v41;
        tagBuffer = v96;
        numberOfTagsCopied = 0;
        do
        {
          TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(a3, v42);
          TagsWithCategory = CMTagCollectionGetTagsWithCategory(TagCollectionAtIndex, kCMTagCategory_VideoLayerID, &tagBuffer, 1, &numberOfTagsCopied);
          if (TagsWithCategory || numberOfTagsCopied != 1)
          {
            if (!AVE_Log_CheckLevel(0xCu, 4))
            {
              goto LABEL_77;
            }

            v58 = AVE_Log_CheckConsole(0xCu);
            v59 = AVE_GetCurrTime();
            v60 = AVE_Log_GetLevelStr(4);
            if (v58)
            {
              printf("%lld %d AVE %s: %s:%d %s | invalid VideoLayerID in taggedBuffer %d %d %p\n", v59, 12, v60, "AVE_Session_HEVC_ProcessMultiFrame", 8245, "ret == 0 && numOfTags == 1", TagsWithCategory, numberOfTagsCopied, &tagBuffer);
              v21 = AVE_GetCurrTime();
              v61 = AVE_Log_GetLevelStr(4);
              v88 = numberOfTagsCopied;
              p_tagBuffer = &tagBuffer;
              v86 = "ret == 0 && numOfTags == 1";
              v87 = TagsWithCategory;
              v85 = 8245;
              v81 = v61;
              v23 = "%lld %d AVE %s: %s:%d %s | invalid VideoLayerID in taggedBuffer %d %d %p";
              goto LABEL_74;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | invalid VideoLayerID in taggedBuffer %d %d %p", v59, 12);
            goto LABEL_77;
          }

          ++v42;
        }

        while (CMTagGetSInt64Value(tagBuffer) != *(v39 + v38) && v42 < v40);
        if (!*(a1 + 10556))
        {
LABEL_71:
          if (!AVE_Log_CheckLevel(0xCu, 4))
          {
            goto LABEL_77;
          }

          v62 = AVE_Log_CheckConsole(0xCu);
          v63 = AVE_GetCurrTime();
          v64 = AVE_Log_GetLevelStr(4);
          SInt64Value = CMTagGetSInt64Value(tagBuffer);
          if (v62)
          {
            printf("%lld %d AVE %s: %s:%d %s | mismatch VideoLayerID %lld in taggedBuffer\n", v63, 12, v64, "AVE_Session_HEVC_ProcessMultiFrame", 8279, "storedLayerID != -1", SInt64Value);
            v21 = AVE_GetCurrTime();
            v66 = AVE_Log_GetLevelStr(4);
            v86 = "storedLayerID != -1";
            v87 = CMTagGetSInt64Value(tagBuffer);
            v85 = 8279;
            v81 = v66;
            v23 = "%lld %d AVE %s: %s:%d %s | mismatch VideoLayerID %lld in taggedBuffer";
            goto LABEL_74;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | mismatch VideoLayerID %lld in taggedBuffer", v63);
          goto LABEL_77;
        }

        v47 = 0;
        while (1)
        {
          v48 = *(a1 + 10900) ? v47 << (*(a1 + 15770) == 1) : v47;
          v49 = *(v39 + v48);
          if (CMTagGetSInt64Value(tagBuffer) == v49)
          {
            break;
          }

          if (++v47 >= *(a1 + 10556))
          {
            goto LABEL_71;
          }
        }

        v50 = *(a1 + 15640 + v47);
        if (!CMTagCollectionGetTagsWithCategory(TagCollectionAtIndex, kCMTagCategory_StereoView, &v96, 1, &numberOfTagsCopied) && numberOfTagsCopied == 1)
        {
          FlagsValue = CMTagGetFlagsValue(v96);
          v52 = 11808;
          if (FlagsValue != 1)
          {
            v52 = 11809;
          }

          v53 = *(a1 + v52);
          if (v50 != v53)
          {
            if (AVE_Log_CheckLevel(0xCu, 4))
            {
              v76 = AVE_Log_CheckConsole(0xCu);
              v77 = AVE_GetCurrTime();
              v78 = AVE_Log_GetLevelStr(4);
              if (v76)
              {
                printf("%lld %d AVE %s: %s:%d %s | left/right ViewID not matching in taggedBuffer %d %d %d\n", v77, 12, v78, "AVE_Session_HEVC_ProcessMultiFrame", 8294, "storedViewID == curViewID", 0, v50, v53);
                v79 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | left/right ViewID not matching in taggedBuffer %d %d %d", v79, 12);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | left/right ViewID not matching in taggedBuffer %d %d %d", v77, 12);
              }
            }

            v33 = 4294965287;
            goto LABEL_78;
          }
        }

        CVPixelBufferForTag = CMTaggedBufferGroupGetCVPixelBufferForTag(a3, tagBuffer, 0);
        if (CVPixelBufferForTag)
        {
          a2 = v90;
          v33 = AVE_HEVC_Encode(a1, v90, CVPixelBufferForTag, a4, a5, v92, v91, v38);
          if (!v33)
          {
            ++v38;
            v41 = v43;
            if (v38 != v40)
            {
              continue;
            }
          }
        }

        else
        {
          a2 = v90;
          if (AVE_Log_CheckLevel(0xCu, 4))
          {
            v72 = AVE_Log_CheckConsole(0xCu);
            v73 = AVE_GetCurrTime();
            v74 = AVE_Log_GetLevelStr(4);
            if (v72)
            {
              printf("%lld %d AVE %s: %s:%d %s | failed to get CVPixelBuffer in taggedBuffer\n", v73, 12, v74, "AVE_Session_HEVC_ProcessMultiFrame", 8302, "pBuf != __null");
              v75 = AVE_GetCurrTime();
              v84 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get CVPixelBuffer in taggedBuffer", v75, 12, v84, "AVE_Session_HEVC_ProcessMultiFrame", 8302, "pBuf != __null");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get CVPixelBuffer in taggedBuffer", v73, 12, v74, "AVE_Session_HEVC_ProcessMultiFrame", 8302, "pBuf != __null");
            }
          }

          v33 = 4294965288;
        }

        break;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v29 = AVE_Log_CheckConsole(0xCu);
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid number of video layers %d\n", v30, 12, v31, "AVE_Session_HEVC_ProcessMultiFrame", 8220, "pINS->VideoParams.iLayerNum > 1 && pINS->VideoParams.iLayerNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", *(a1 + 10556));
          v30 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid number of video layers %d", v30);
      }

      v33 = 4294965291;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v24 = AVE_Log_CheckConsole(0xCu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v25, 12, v26, "AVE_Session_HEVC_ProcessMultiFrame", 8195, "pINS != __null && taggedBufferGroup != __null && pRect != __null && pPTS != __null && pDuration != __null", a1, a2, a3, a4, a5, a6, a7);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v27, 12, v28, "AVE_Session_HEVC_ProcessMultiFrame", 8195, "pINS != __null && taggedBufferGroup != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v25, 12, v26, "AVE_Session_HEVC_ProcessMultiFrame", 8195, "pINS != __null && taggedBufferGroup != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }
    }

    v33 = 4294966295;
  }

LABEL_79:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v67 = AVE_Log_CheckConsole(0xCu);
    v68 = AVE_GetCurrTime();
    v69 = AVE_Log_GetLevelStr(7);
    if (v67)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v68, 12, v69, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2, a3, a4, a5, v92, v91, v33);
      v70 = AVE_GetCurrTime();
      v83 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v70, 12, v83, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v68, 12, v69, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2);
    }
  }

  return v33;
}

uint64_t AVE_Session_HEVC_Complete(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: Enter %s %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Complete", a1);
      v5 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: Enter %s %p", v5, 12, v23, "AVE_Session_HEVC_Complete", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Enter %s %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Complete", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 104712);
    v7 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v6, 6u, v7);
    if (*(a1 + 104644) == 30568)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d\n", v10, 12, v11, "AVE_Session_HEVC_Complete", 8341, "ret == 0", a1, *(a1 + 56), v8);
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

    v16 = *(a1 + 104712);
    v17 = AVE_GetCurrTime();
    AVE_TimeStats_AddEndTime(v16, 6u, v17);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v14, 12, v15, "AVE_Session_HEVC_Complete", 8329, "pINS != __null", 0);
        v14 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v14);
    }

    v8 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v18 = AVE_Log_CheckConsole(0xCu);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(7);
    if (v18)
    {
      printf("%lld %d AVE %s: Exit %s %p %d\n", v19, 12, v20, "AVE_Session_HEVC_Complete", a1, v8);
      v21 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v21, 12, v25, "AVE_Session_HEVC_Complete", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v19, 12, v20, "AVE_Session_HEVC_Complete", a1, v8);
    }
  }

  return v8;
}

uint64_t AVE_Session_HEVC_GetPropertyDict(uint64_t a1, void *a2)
{
  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_GetPropertyDict", a1, a2);
      v7 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v23, "AVE_Session_HEVC_GetPropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_GetPropertyDict", a1, a2);
    }
  }

  if (a1 && a2)
  {
    *a2 = 0;
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = (a1 + 8 * v8 + 80);
    }

    else
    {
      v9 = (a1 + 88);
    }

    v10 = *v9;
    if (*v9)
    {
      v11 = CFGetRetainCount(*v9);
      if (v11 != 1 && AVE_Log_CheckLevel(0xCu, 5))
      {
        v12 = AVE_Log_CheckConsole(0xCu);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(5);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d property dictionary reference count %p %lld %d\n", v13, 12, v14, "AVE_Session_HEVC_GetPropertyDict", 8384, a1, *(a1 + 56), v11);
          v13 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(5);
        }

        syslog(3, "%lld %d AVE %s: %s:%d property dictionary reference count %p %lld %d", v13, 12);
      }

      CFRetain(v10);
      v18 = 0;
    }

    else
    {
      v18 = 4294966288;
    }

    *a2 = v10;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v15 = AVE_Log_CheckConsole(0xCu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v16, 12, v17, "AVE_Session_HEVC_GetPropertyDict", 8364, "pINS != __null && ppDict != __null", a1, a2);
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v16, 12);
    }

    v18 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v19 = AVE_Log_CheckConsole(0xCu);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v20, 12, v21, "AVE_Session_HEVC_GetPropertyDict", a1, a2, v18);
      v20 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v20);
  }

  return v18;
}

uint64_t AVE_Session_HEVC_GetProperty(const void *a1, const void *a2, __CFString *a3, const void *a4)
{
  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v8 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_GetProperty", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", CurrTime, 12);
  }

  if (a1 && a3 && a4)
  {
    Property = AVE_Prop_HEVC_GetProperty(a1, a2, a3, a4);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v12 = AVE_Log_CheckConsole(0xCu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v13, 12, v14, "AVE_Session_HEVC_GetProperty", 8411, "pINS != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v15 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 12, v21, "AVE_Session_HEVC_GetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 12, v14, "AVE_Session_HEVC_GetProperty");
      }
    }

    Property = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v16 = AVE_Log_CheckConsole(0xCu);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(8);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v17, 12, v18, "AVE_Session_HEVC_GetProperty", a1, a2, a3, a4, Property);
      v19 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v19, 12, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v17, 12, v18);
    }
  }

  return Property;
}

uint64_t AVE_Session_HEVC_Prepare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v43 = *MEMORY[0x29EDCA608];
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v9 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Prepare", v8);
      v12 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v12, 12, v35, "AVE_Session_HEVC_Prepare", v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Prepare", v8);
    }
  }

  if (v8)
  {
    if (*(v8 + 104644) != 30566)
    {
      goto LABEL_20;
    }

    bzero(v40, 0x8C8uLL);
    v13 = AVE_ManageSessionSettings(v8);
    if (v13)
    {
      v14 = v13;
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v15 = AVE_Log_CheckConsole(0xCu);
        v16 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld\n", v16, 12, v17, "AVE_Session_HEVC_Prepare", 8443, "err == 0", v8, *(v8 + 56));
          v16 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld", v16, 12);
      }

      goto LABEL_26;
    }

    *(v8 + 10760) = 1;
    v21 = AVE_GetCurrTime();
    v37[0] = v8 + 672;
    v37[1] = v8 + 1440;
    v37[2] = v8 + 10752;
    v38 = *(v8 + 104712);
    v39 = *(v8 + 104728);
    v40[281] = v8 + 12000;
    v40[282] = v8 + 24236;
    v40[284] = v8 + 39844;
    v40[283] = v8 + 32040;
    v40[285] = v8 + 49476;
    v40[286] = v8 + 59112;
    v40[287] = v8 + 80600;
    memcpy(v41, (v8 + 106112), sizeof(v41));
    v42 = v21;
    if (!AVE_USL_Drv_Prepare(*(v8 + 120), v37, v8 + 160, v22, v23, v24, v25, v26))
    {
LABEL_20:
      v14 = 0;
      *(v8 + 104644) = 30567;
      goto LABEL_26;
    }

    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v27 = AVE_Log_CheckConsole(0xCu);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld\n", v28, 12, v29, "AVE_Session_HEVC_Prepare", 8455, "err == noErr", v8, *(v8 + 56));
        v28 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld", v28, 12);
    }

    v14 = 4294966296;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v18 = AVE_Log_CheckConsole(0xCu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v19, 12, v20, "AVE_Session_HEVC_Prepare", 8432, "pINS != __null", 0);
        v19 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v19);
    }

    v14 = 4294966295;
  }

LABEL_26:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v30 = AVE_Log_CheckConsole(0xCu);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(6);
    if (v30)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v31, 12, v32, "AVE_Session_HEVC_Prepare", v8, v14);
      v33 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v33, 12, v36, "AVE_Session_HEVC_Prepare", v8, v14);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v31, 12, v32, "AVE_Session_HEVC_Prepare", v8, v14);
    }
  }

  return v14;
}

uint64_t AVE_Session_HEVC_StartTileSession(uint64_t a1, unsigned int *a2)
{
  v80 = *MEMORY[0x29EDCA608];
  cf = 0;
  memset(v79, 0, sizeof(v79));
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_StartTileSession", a1, a2);
      v7 = AVE_GetCurrTime();
      v69 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v69, "AVE_Session_HEVC_StartTileSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_StartTileSession", a1, a2);
    }
  }

  if (a1 && a2)
  {
    if (*a2 < 1 || a2[1] <= 0)
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v24 = AVE_Log_CheckConsole(0xCu);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v25, 12, v26, "AVE_Session_HEVC_StartTileSession", 8842, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v27 = AVE_GetCurrTime();
          v71 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v27, 12, v71);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v25, 12, v26);
        }
      }

      Mutable = 0;
      v28 = 4294965295;
      goto LABEL_48;
    }

    v8 = a1 + 104644;
    v9 = *(a1 + 104712);
    v10 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v9, 3u, v10);
    v11 = *a2;
    v12 = a2[1];
    *(a1 + 1440) = *a2;
    *(a1 + 1444) = v12;
    *(a1 + 11452) = v11;
    *(a1 + 11456) = v12;
    *(a1 + 764) = 2;
    MinResolution = AVE_Enc_GetMinResolution(*(a1 + 68), 1, 2);
    AVE_PrepareCropParams(a1);
    v14 = MinResolution[1];
    if (*(a1 + 1440) <= *MinResolution)
    {
      v15 = *MinResolution;
    }

    else
    {
      v15 = *(a1 + 1440);
    }

    if (*(a1 + 1444) <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = *(a1 + 1444);
    }

    AVE_SetEncoderDefault(a1);
    if (AVE_Log_CheckLevel(0xCu, 7))
    {
      v75 = v16;
      v17 = AVE_Log_CheckConsole(0xCu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(7);
      if (v17)
      {
        printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault\n", v18, 12, v19);
        v20 = AVE_GetCurrTime();
        v70 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v20, 12, v70);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v18, 12, v19);
      }

      v8 = a1 + 104644;
      v16 = v75;
    }

    *(a1 + 10752) = 2;
    *(a1 + 10764) = 1;
    *(a1 + 10855) = *(a1 + 76) > 3;
    *(a1 + 10788) = 4;
    *(a1 + 59393) = 257;
    *(a1 + 39892) = 2;
    *(a1 + 39924) = 2;
    *(a1 + 10808) = 1;
    *(a1 + 1464) = 0;
    *(a1 + 1252) = 1;
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    v30 = *(a1 + 1240);
    *(a1 + 10176) = 2;
    *(a1 + 1132) = 3;
    *(a1 + 1144) = 0xF0000000FLL;
    *(a1 + 1152) = 15;
    *(a1 + 1112) = 0;
    *(a1 + 1352) = 30;
    *(a1 + 1448) |= 0x10000000uLL;
    v31 = *(a1 + 1336);
    *(a1 + 1120) |= 0x200000000uLL;
    *(a1 + 1356) |= 2u;
    *(a1 + 1336) = v31 & 0xFEFF7E89 | 0x1000000;
    *(a1 + 688) |= 0x100u;
    *(a1 + 10796) = 0x100000000;
    *(a1 + 1096) = 0;
    *(a1 + 42028) = 0;
    *(a1 + 60062) = 1;
    *(a1 + 39886) = 1;
    *(a1 + 10522) = 0;
    *(a1 + 1240) = v30 & 0xFFFFFAFF;
    if (AVE_Log_CheckLevel(0xCu, 7))
    {
      v32 = v16;
      v33 = v15;
      v34 = v8;
      v35 = AVE_Log_CheckConsole(0xCu);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(7);
      if (v35)
      {
        printf("%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault\n", v36, 12, v37);
        v38 = AVE_GetCurrTime();
        v72 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v38, 12, v72);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v36, 12, v37);
      }

      v8 = v34;
      v15 = v33;
      v16 = v32;
    }

    if (AVE_PixelBuf_CreateAttrDict(*(a1 + 68), *(a1 + 64), 62, 2, *a2, a2[1], v15, v16, 0x414C4C20u, 1, v79, &cf))
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v39 = AVE_Log_CheckConsole(0xCu);
        v40 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(4);
        if (v39)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d\n", v40, 12, v41, "AVE_Session_HEVC_StartTileSession", 8878, "err == noErr", a1, *(a1 + 56), 0);
          v40 = AVE_GetCurrTime();
          v41 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d", v40, 12, v41, "AVE_Session_HEVC_StartTileSession", 8878, "err == noErr", a1, *(a1 + 56), 0);
      }

LABEL_46:
      Mutable = 0;
LABEL_47:
      v28 = 4294966296;
LABEL_48:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_52;
    }

    if (*(a1 + 16) == 1)
    {
      if (AVE_Log_CheckLevel(0xCu, 7))
      {
        v49 = AVE_Log_CheckConsole(0xCu);
        v50 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(7);
        if (v49)
        {
          printf("%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK\n", v50, 12, v51);
          v52 = AVE_GetCurrTime();
          v73 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v52, 12, v73);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v50, 12, v51);
        }
      }
    }

    else
    {
      if (VTTileEncoderSessionSetTileAttributes())
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v42 = AVE_Log_CheckConsole(3u);
          v43 = AVE_GetCurrTime();
          v44 = AVE_Log_GetLevelStr(4);
          if (v42)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.\n", v43, 3, v44, "AVE_Session_HEVC_StartTileSession", 8895, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.");
        }

        goto LABEL_46;
      }

      if (*(a1 + 76) >= 4)
      {
        v76 = 2;
        valuePtr = 2;
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (!Mutable)
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v65 = AVE_Log_CheckConsole(3u);
            v66 = AVE_GetCurrTime();
            v67 = AVE_Log_GetLevelStr(4);
            if (v65)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.\n", v66, 3, v67, "AVE_Session_HEVC_StartTileSession", 8905, "TileRequirements");
              v68 = AVE_GetCurrTime();
              v74 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v68, 3, v74, "AVE_Session_HEVC_StartTileSession", 8905, "TileRequirements");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v66, 3, v67, "AVE_Session_HEVC_StartTileSession", 8905, "TileRequirements");
            }
          }

          v28 = 4294966293;
          goto LABEL_48;
        }

        v53 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBD1C8], v53);
        if (v53)
        {
          CFRelease(v53);
        }

        v54 = CFNumberCreate(0, kCFNumberSInt32Type, &v76);
        CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBD1D0], v54);
        if (v54)
        {
          CFRelease(v54);
        }

        if (*(a1 + 76) >= 12)
        {
          CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBD1C0], *MEMORY[0x29EDB8F00]);
        }

        if (VTTileEncoderSessionSetTileEncodeRequirements())
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v55 = AVE_Log_CheckConsole(3u);
            v56 = AVE_GetCurrTime();
            v57 = AVE_Log_GetLevelStr(4);
            if (v55)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.\n", v56, 3, v57, "AVE_Session_HEVC_StartTileSession", 8930, "err == noErr", "AVE_Session_HEVC_StartTileSession", 8930);
              v56 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.", v56, 3);
          }

          goto LABEL_47;
        }

LABEL_76:
        *v8 = 30566;
        if (*(a1 + 16) == 1)
        {
          v58 = 1;
        }

        else
        {
          v58 = 3;
        }

        v59 = AVE_SEI::Init(*(v8 + 92), *(a1 + 56), 0, 0, 2, v58);
        if (v59)
        {
          v28 = v59;
          if (AVE_Log_CheckLevel(0xCu, 4))
          {
            v60 = AVE_Log_CheckConsole(0xCu);
            v61 = AVE_GetCurrTime();
            v62 = AVE_Log_GetLevelStr(4);
            if (v60)
            {
              printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v61, 12, v62, "AVE_Session_HEVC_StartTileSession", 8948, "ret == 0", a1, *(a1 + 56));
              v61 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu", v61, 12);
          }
        }

        else
        {
          v63 = *(v8 + 68);
          v64 = AVE_GetCurrTime();
          AVE_TimeStats_AddEndTime(v63, 3u, v64);
          v28 = 0;
        }

        goto LABEL_48;
      }
    }

    Mutable = 0;
    goto LABEL_76;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v21 = AVE_Log_CheckConsole(0xCu);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v22, 12, v23, "AVE_Session_HEVC_StartTileSession", 8838, "pINS != __null && pDim != __null", a1, a2);
      v22 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v22, 12);
  }

  v28 = 4294966295;
LABEL_52:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v45 = AVE_Log_CheckConsole(0xCu);
    v46 = AVE_GetCurrTime();
    v47 = AVE_Log_GetLevelStr(6);
    if (v45)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v46, 12, v47, "AVE_Session_HEVC_StartTileSession", a1, a2, v28);
      v46 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v46);
  }

  return v28;
}

uint64_t AVE_Session_HEVC_ProcessTile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v140 = v9;
  theDict = v10;
  v12 = v11;
  v139 = v13;
  v15 = v14;
  v17 = v16;
  v142 = v8;
  v183 = *MEMORY[0x29EDCA608];
  pixelBuffer = v14;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v18 = AVE_DW_Get();
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v19 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_ProcessTile", v142, v17, v15, v139, v140, v12, theDict);
      v22 = AVE_GetCurrTime();
      v125 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v22, 12, v125, "AVE_Session_HEVC_ProcessTile", v142);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_ProcessTile", v142);
    }
  }

  if (v12 && v140 && v142 && pixelBuffer)
  {
    v23 = (v142 + 104644);
    if (theDict && CFDictionaryContainsKey(theDict, @"SessionIndicator"))
    {
      AVE_TimeStats_Restart(*(v142 + 104712));
    }

    if (!*(v142 + 104648))
    {
      v34 = AVE_SEI::SetSEIBits(*(v142 + 104736), *(v142 + 1096));
      if (v34)
      {
        v35 = v34;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v36 = AVE_Log_CheckConsole(3u);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(4);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v37, 3, v38, "AVE_Session_HEVC_ProcessTile", 9013, "ret == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration");
        }

        goto LABEL_97;
      }

      v62 = *(v142 + 104712);
      v63 = AVE_GetCurrTime();
      AVE_TimeStats_AddStartTime(v62, 5u, v63);
    }

    v138 = AVE_GetCurrTime();
    if (*(v142 + 1112) >= 1)
    {
      v24 = *(v142 + 1112);
    }

    else
    {
      v24 = 30;
    }

    v25 = (v142 + 106096);
    AVE_Time_Gen(v24, v142 + 106096);
    if (AVE_Log_CheckLevel(0x33u, 7))
    {
      v26 = AVE_Log_CheckConsole(0x33u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(7);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d\n", v27, 51, v28, "AVE_Session_HEVC_ProcessTile", 9025, *(v142 + 56), *(v142 + 104648), *v25, *(v142 + 106104));
        v29 = AVE_GetCurrTime();
        v126 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v29, 51, v126);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v27, 51, v28);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v142 + 108000) = PixelFormatType;
    if (!*(v142 + 104648))
    {
      v166 = *(v142 + 1440);
      v40 = AVE_PixelFmt_FindByType(PixelFormatType);
      if (!v40)
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_96;
        }

        v64 = AVE_Log_CheckConsole(3u);
        v59 = AVE_GetCurrTime();
        v65 = AVE_Log_GetLevelStr(4);
        if (v64)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v59, 3, v65, "AVE_Session_HEVC_ProcessTile", 9040, "pPixelFmt != __null", v142, *(v142 + 56), *(v142 + 108000));
          v59 = AVE_GetCurrTime();
          v65 = AVE_Log_GetLevelStr(4);
        }

        v136 = *(v142 + 56);
        v137 = *(v142 + 108000);
        v134 = "pPixelFmt != __null";
        v135 = v142;
        v133 = 9040;
        v128 = v65;
        v61 = "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x";
        goto LABEL_77;
      }

      if (*(v18 + 420))
      {
        v41 = (v18 + 105);
      }

      else
      {
        v41 = 0;
      }

      AVE_Dump_Init(*(v142 + 104720), v41, *(v142 + 64), *(v142 + 10772), v18[103], v18[104], &v166, 1, *(v40 + 3), *(v40 + 1), *(v142 + 1136));
      AVE_Dump_WriteInput(*(v142 + 104720), -1, pixelBuffer);
    }

    v42 = *v23;
    if (*v23 == 30566)
    {
      if (AVE_ISP_CheckMetadata(pixelBuffer))
      {
        v53 = 1;
      }

      else
      {
        v53 = 2;
      }

      *(v142 + 10804) = v53;
      v54 = AVE_ManageSessionSettings(v142);
      if (v54)
      {
        v35 = v54;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v55 = AVE_Log_CheckConsole(3u);
          v56 = AVE_GetCurrTime();
          v57 = AVE_Log_GetLevelStr(4);
          if (v55)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v56, 3, v57, "AVE_Session_HEVC_ProcessTile", 9134, "err == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed");
        }

        goto LABEL_97;
      }

      v49 = (v142 + 106096);
      v50 = v17;
      AVE_UpdateCropParams(v142, pixelBuffer);
      if (AVE_HEVC_VerifyImageBuffer(v142, &pixelBuffer, &v160, &v159, &v158 + 1, &v158, 1))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v72 = AVE_Log_CheckConsole(3u);
          v44 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(4);
          if (!v72)
          {
LABEL_95:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.");
            goto LABEL_96;
          }

          v46 = v12;
          v47 = v17;
          v48 = 9144;
LABEL_73:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.\n", v44, 3, v45, "AVE_Session_HEVC_ProcessTile", v48, "err == noErr");
          AVE_GetCurrTime();
          v12 = v46;
          v17 = v47;
          AVE_Log_GetLevelStr(4);
          goto LABEL_95;
        }

LABEL_93:
        v35 = 4294966296;
        v17 = v50;
        goto LABEL_97;
      }

      AVE_SetEncoderBasedOnFirstFrame(v142, *(v142 + 10804) == 2);
      if (AVE_ValidateEncoderParameters(v142))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_93;
        }

        v78 = AVE_Log_CheckConsole(3u);
        v67 = AVE_GetCurrTime();
        v68 = AVE_Log_GetLevelStr(4);
        if (v78)
        {
          v69 = v12;
          v70 = v17;
          v71 = 9154;
          goto LABEL_92;
        }

LABEL_139:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        goto LABEL_96;
      }

      v73 = v12;
      AVE_PrepareVideoAndSequenceHeader(v142, pixelBuffer);
      AVE_PreparePictureHeader(v142);
      bzero(v171, 0x8C8uLL);
      v166 = v142 + 672;
      v167 = v142 + 1440;
      v169 = *(v142 + 104712);
      v170 = *(v142 + 104728);
      v168 = v142 + 10752;
      v173 = v142 + 12000;
      v174 = v142 + 24236;
      v176 = v142 + 39844;
      v175 = v142 + 32040;
      v177 = v142 + 49476;
      v178 = v142 + 59112;
      v179 = v142 + 80600;
      memcpy(v180, (v142 + 106112), sizeof(v180));
      v181 = v138;
      if (theDict && CFDictionaryContainsKey(theDict, @"ReconstructedPixelBuffer"))
      {
        *(v166 + 624) |= 0x100u;
      }

      if (AVE_USL_Drv_Start(*(v142 + 120), &v166, v142 + 128, *(v142 + 16), *(v142 + 112), *(v142 + 104652), *(v142 + 104656), v142 + 160, (v142 + 11772), (v142 + 11464)))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_96;
        }

        v84 = AVE_Log_CheckConsole(3u);
        v75 = AVE_GetCurrTime();
        v76 = AVE_Log_GetLevelStr(4);
        if (v84)
        {
          v77 = 9189;
          goto LABEL_113;
        }

LABEL_181:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.");
        goto LABEL_96;
      }
    }

    else
    {
      if (v42 != 30567)
      {
        if (v42 == 30568)
        {
          if (AVE_HEVC_VerifyImageBuffer(v142, &pixelBuffer, &v160, &v159, &v158 + 1, &v158, 0))
          {
            if (AVE_Log_CheckLevel(3u, 4))
            {
              v43 = AVE_Log_CheckConsole(3u);
              v44 = AVE_GetCurrTime();
              v45 = AVE_Log_GetLevelStr(4);
              if (!v43)
              {
                goto LABEL_95;
              }

              v46 = v12;
              v47 = v17;
              v48 = 9059;
              goto LABEL_73;
            }

LABEL_96:
            v35 = 4294966296;
LABEL_97:
            if (v160 == 1 && pixelBuffer)
            {
              CVPixelBufferRelease(pixelBuffer);
            }

            ++*(v142 + 104648);
            goto LABEL_101;
          }

LABEL_115:
          *v23 = 30568;
          bzero(v162, 0x1738uLL);
          v156 = 0u;
          v157 = 0u;
          *&v153[16] = 0u;
          v154 = 0;
          v152 = 0u;
          *v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          v149 = 0u;
          v148 = 0u;
          v147 = 0u;
          memset(v143, 0, sizeof(v143));
          *v144 = 0u;
          v145 = 0;
          bzero(&v166, 0x4A40uLL);
          v85 = pixelBuffer;
          v146[0] = v17;
          v146[1] = pixelBuffer;
          v155 = v162;
          *&v156 = v138;
          DWORD2(v156) = *(v142 + 104668);
          *&v153[8] = *v25;
          v154 = &v166;
          if (*(v142 + 10804) == 2)
          {
            AVE_ISP_GetMetadata(pixelBuffer, v143);
            AVE_Dump_WriteISPMetadata(*(v142 + 104720), *(v142 + 104668), *(v142 + 104648), v143);
            v85 = pixelBuffer;
          }

          *&v153[24] = v143;
          v86 = CMGetAttachment(v85, *MEMORY[0x29EDBFF98], 0);
          if (v86)
          {
            AVE_SEI::SetISPMetadata(*(v142 + 104736), *(v142 + 104648), v86);
          }

          AVE_SEI::SetDriverVersion(*(v142 + 104736), *(v142 + 104648));
          AVE_SEI::SetSessionID(*(v142 + 104736), *(v142 + 104648), *(v142 + 56));
          AVE_SEI::SetExposureTime(*(v142 + 104736), *(v142 + 104648), *&v143[1]);
          AVE_SEI::SetSNR(*(v142 + 104736), *(v142 + 104648), *v143);
          AVE_SEI::SetLuxLevel(*(v142 + 104736), *(v142 + 104648), v144[1]);
          AVE_SEI::SetPTS(*(v142 + 104736), *(v142 + 104648), v140[2], *v140);
          if (AVE_Log_CheckLevel(0xCu, 7))
          {
            v87 = AVE_Log_CheckConsole(0xCu);
            v88 = AVE_GetCurrTime();
            v89 = AVE_Log_GetLevelStr(7);
            if (v87)
            {
              printf("%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData\n", v88, 12, v89);
              v90 = AVE_GetCurrTime();
              v130 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v90, 12, v130);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v88, 12, v89);
            }
          }

          v171[1301] = *(v142 + 10788) == 4;
          v91 = *(v142 + 10808);
          v171[1305] = *(v142 + 10845);
          *(v142 + 10845) = 0;
          v171[1306] = *(v142 + 10204);
          v172 = v91;
          DWORD2(v169) = 0;
          *&v169 = 0;
          if (theDict)
          {
            if (CFDictionaryContainsKey(theDict, @"SessionIndicator"))
            {
              AVE_TimeStats_Restart(*(v142 + 104712));
            }

            Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCF18]);
            DWORD2(v169) = 0;
            *&v169 = 0;
            v165 &= ~0x10000u;
            if (*(v142 + 1338))
            {
              v93 = Value;
              if (Value)
              {
                DWORD2(v169) = CFDataGetLength(Value);
                *&v169 = CFDataGetBytePtr(v93);
                v165 |= 0x10000u;
              }
            }

            v94 = CFDictionaryGetValue(theDict, @"ForceNonRefFrame");
            v95 = MEMORY[0x29EDB8F00];
            if (v94 && CFEqual(v94, *MEMORY[0x29EDB8F00]))
            {
              v164 |= 2u;
            }

            else
            {
              v96 = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCED0]);
              if (v96 && CFEqual(v96, *v95))
              {
                if (*(v142 + 10532))
                {
                  v97 = 3;
                }

                else
                {
                  v97 = (*(v142 + 1241) & 1) != 0 ? 1 : 2;
                }

                LODWORD(v166) = v97;
                v163 |= 1u;
                if (AVE_Log_CheckLevel(0x1Du, 6))
                {
                  v98 = AVE_Log_CheckConsole(0x1Du);
                  v99 = AVE_GetCurrTime();
                  v100 = AVE_Log_GetLevelStr(6);
                  if (v98)
                  {
                    printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x\n", v99, 29, v100, v166, v163);
                    v99 = AVE_GetCurrTime();
                    v100 = AVE_Log_GetLevelStr(6);
                  }

                  syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v99, 29, v100, v166, v163);
                }
              }
            }

            if (*(v142 + 1297))
            {
              v101 = CFDictionaryGetValue(theDict, @"ReconstructedPixelBuffer");
              if (!v101)
              {
                if (AVE_Log_CheckLevel(3u, 4))
                {
                  v119 = AVE_Log_CheckConsole(3u);
                  v120 = AVE_GetCurrTime();
                  v121 = AVE_Log_GetLevelStr(4);
                  if (v119)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | AVE ERR: failed to get ReconstructedPixelBuffer %p\n", v120, 3, v121, "AVE_GetPerTileData", 8560, "pUseReconBuffer != __null", 0);
                    v120 = AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: failed to get ReconstructedPixelBuffer %p", v120);
                }

                v102 = 0;
LABEL_150:
                if (AVE_Log_CheckLevel(0xCu, 7))
                {
                  v103 = AVE_Log_CheckConsole(0xCu);
                  v104 = AVE_GetCurrTime();
                  v105 = AVE_Log_GetLevelStr(7);
                  if (v103)
                  {
                    printf("%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData\n", v104, 12, v105);
                    v106 = AVE_GetCurrTime();
                    v131 = AVE_Log_GetLevelStr(7);
                    syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v106, 12, v131);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v104, 12, v105);
                  }
                }

                if (v102)
                {
                  if (AVE_GetTileInfo(v142, &v166, v139))
                  {
                    if (AVE_Log_CheckLevel(3u, 4))
                    {
                      v107 = AVE_Log_CheckConsole(3u);
                      v108 = AVE_GetCurrTime();
                      v109 = AVE_Log_GetLevelStr(4);
                      if (v107)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.\n", v108, 3, v109, "AVE_Session_HEVC_ProcessTile", 9266, "err == noErr");
                        AVE_GetCurrTime();
                        AVE_Log_GetLevelStr(4);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.");
                    }
                  }

                  else
                  {
                    *(&v157 + 1) = *(v142 + 104648);
                    if (v159)
                    {
                      v113 = pixelBuffer;
                    }

                    else
                    {
                      v113 = 0;
                    }

                    *(&v149 + 1) = v113;
                    v114 = AVE_USL_Drv_Process(*(v142 + 120), v146);
                    v35 = v114;
                    if (!v114)
                    {
                      goto LABEL_97;
                    }

                    if (v114 == -536870173)
                    {
                      if (AVE_Log_CheckLevel(0x10u, 5))
                      {
                        v115 = AVE_Log_CheckConsole(0x10u);
                        v116 = AVE_GetCurrTime();
                        v117 = AVE_Log_GetLevelStr(5);
                        if (v115)
                        {
                          printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v116, 16, v117);
                          v118 = AVE_GetCurrTime();
                          v132 = AVE_Log_GetLevelStr(5);
                          syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame", v118, 16, v132);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame", v116, 16, v117);
                        }
                      }

                      v35 = 0;
                      goto LABEL_97;
                    }

                    if (AVE_Log_CheckLevel(3u, 4))
                    {
                      v122 = AVE_Log_CheckConsole(3u);
                      v123 = AVE_GetCurrTime();
                      v124 = AVE_Log_GetLevelStr(4);
                      if (v122)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v123, 3, v124, "AVE_Session_HEVC_ProcessTile", 9290, "err == noErr");
                        AVE_GetCurrTime();
                        AVE_Log_GetLevelStr(4);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
                    }
                  }
                }

                else if (AVE_Log_CheckLevel(3u, 4))
                {
                  v110 = AVE_Log_CheckConsole(3u);
                  v111 = AVE_GetCurrTime();
                  v112 = AVE_Log_GetLevelStr(4);
                  if (v110)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_GetPerTileData failed.\n", v111, 3, v112, "AVE_Session_HEVC_ProcessTile", 9261, "err == noErr");
                    AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_GetPerTileData failed.");
                }

                goto LABEL_96;
              }

              v182 = v101;
            }
          }

          v102 = 1;
          goto LABEL_150;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_96;
        }

        v58 = AVE_Log_CheckConsole(3u);
        v59 = AVE_GetCurrTime();
        v60 = AVE_Log_GetLevelStr(4);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v59, 3, v60, "AVE_Session_HEVC_ProcessTile", 9196, "false", *v23);
          v59 = AVE_GetCurrTime();
          v60 = AVE_Log_GetLevelStr(4);
          v134 = "false";
          v135 = *v23;
          v133 = 9196;
        }

        else
        {
          v135 = *v23;
          v133 = 9196;
          v134 = "false";
        }

        v128 = v60;
        v61 = "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.";
LABEL_77:
        syslog(3, v61, v59, 3, v128, "AVE_Session_HEVC_ProcessTile", v133, v134, v135, v136, v137);
        goto LABEL_96;
      }

      v49 = (v142 + 106096);
      v50 = v17;
      if (AVE_ISP_CheckMetadata(pixelBuffer))
      {
        v51 = 1;
      }

      else
      {
        v51 = 2;
      }

      *(v142 + 10804) = v51;
      AVE_UpdateCropParams(v142, pixelBuffer);
      if (AVE_HEVC_VerifyImageBuffer(v142, &pixelBuffer, &v160, &v159, &v158 + 1, &v158, 1))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v52 = AVE_Log_CheckConsole(3u);
          v44 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(4);
          if (!v52)
          {
            goto LABEL_95;
          }

          v46 = v12;
          v47 = v17;
          v48 = 9076;
          goto LABEL_73;
        }

        goto LABEL_93;
      }

      AVE_SetEncoderBasedOnFirstFrame(v142, *(v142 + 10804) == 2);
      if (AVE_ValidateEncoderParameters(v142))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_93;
        }

        v66 = AVE_Log_CheckConsole(3u);
        v67 = AVE_GetCurrTime();
        v68 = AVE_Log_GetLevelStr(4);
        if (v66)
        {
          v69 = v12;
          v70 = v17;
          v71 = 9084;
LABEL_92:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v67, 3, v68, "AVE_Session_HEVC_ProcessTile", v71, "err == noErr");
          AVE_GetCurrTime();
          v12 = v69;
          v17 = v70;
          AVE_Log_GetLevelStr(4);
          goto LABEL_139;
        }

        goto LABEL_139;
      }

      v73 = v12;
      AVE_PrepareVideoAndSequenceHeader(v142, pixelBuffer);
      AVE_PreparePictureHeader(v142);
      bzero(v171, 0x8C8uLL);
      v166 = v142 + 672;
      v167 = v142 + 1440;
      v169 = *(v142 + 104712);
      v170 = *(v142 + 104728);
      v168 = v142 + 10752;
      v173 = v142 + 12000;
      v174 = v142 + 24236;
      v176 = v142 + 39844;
      v175 = v142 + 32040;
      v177 = v142 + 49476;
      v178 = v142 + 59112;
      v179 = v142 + 80600;
      memcpy(v180, (v142 + 106112), sizeof(v180));
      v181 = v138;
      if (theDict && CFDictionaryContainsKey(theDict, @"ReconstructedPixelBuffer"))
      {
        *(v166 + 624) |= 0x100u;
      }

      if (AVE_USL_Drv_Start(*(v142 + 120), &v166, v142 + 128, *(v142 + 16), *(v142 + 112), *(v142 + 104652), *(v142 + 104656), v142 + 160, (v142 + 11772), (v142 + 11464)))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_96;
        }

        v74 = AVE_Log_CheckConsole(3u);
        v75 = AVE_GetCurrTime();
        v76 = AVE_Log_GetLevelStr(4);
        if (v74)
        {
          v77 = 9120;
LABEL_113:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v75, 3, v76, "AVE_Session_HEVC_ProcessTile", v77, "err == noErr");
          AVE_GetCurrTime();
          v12 = v73;
          v17 = v50;
          AVE_Log_GetLevelStr(4);
          goto LABEL_181;
        }

        goto LABEL_181;
      }
    }

    v25 = v49;
    goto LABEL_115;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v30 = AVE_Log_CheckConsole(0xCu);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(4);
    if (v30)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v31, 12, v32, "AVE_Session_HEVC_ProcessTile", 8999, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v142, v17, pixelBuffer, v139, v140, v12, theDict);
      v33 = AVE_GetCurrTime();
      v127 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v33, 12, v127, "AVE_Session_HEVC_ProcessTile", 8999, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v142);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v31, 12, v32, "AVE_Session_HEVC_ProcessTile", 8999, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v142);
    }
  }

  v35 = 4294966295;
LABEL_101:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v79 = AVE_Log_CheckConsole(0xCu);
    v80 = AVE_GetCurrTime();
    v81 = AVE_Log_GetLevelStr(7);
    if (v79)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v80, 12, v81, "AVE_Session_HEVC_ProcessTile", v142, v17, pixelBuffer, v139, v140, v12, theDict, v35);
      v82 = AVE_GetCurrTime();
      v129 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v82, 12, v129, "AVE_Session_HEVC_ProcessTile", v142, v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v80, 12, v81, "AVE_Session_HEVC_ProcessTile", v142, v17);
    }
  }

  return v35;
}

uint64_t AVE_GetTileInfo(int32x2_t *a1, uint64_t a2, unsigned int *a3)
{
  v6 = &a1[1271] + 3;
  v7 = *a3;
  v8 = *(a3 + 2);
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v9 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v12 = a1[1359].i32[0];
    if (v9)
    {
      printf("%lld %d AVE %s: FIG: Pixelbuffer width %d height %d\n", CurrTime, 12, LevelStr, a1[1358].i32[1], v12);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: Pixelbuffer width %d height %d", v13, 12, v14, a1[1358].i32[1], a1[1359].i32[0]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: Pixelbuffer width %d height %d", CurrTime, 12, LevelStr, a1[1358].i32[1], v12);
    }
  }

  v15 = v6[684];
  v16 = *a3;
  if (v6[684])
  {
    v17 = a3[1];
    goto LABEL_7;
  }

  if (v16 != ((v16 + 63) & 0xFFFFFFC0))
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      return 4294966296;
    }

    v28 = AVE_Log_CheckConsole(3u);
    v25 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(4);
    if (v28)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned\n", v25, 3, v29, "AVE_GetTileInfo", 8588, "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))", *a3);
      v25 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      v99 = "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))";
      v101 = *a3;
      v97 = 8588;
    }

    else
    {
      v101 = *a3;
      v97 = 8588;
      v99 = "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))";
    }

    v92 = v29;
    v27 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned";
    goto LABEL_66;
  }

  v17 = a3[1];
  if (v17 != ((v17 + 15) & 0xFFFFFFF0))
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      return 4294966296;
    }

    v24 = AVE_Log_CheckConsole(3u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(4);
    if (v24)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned\n", v25, 3, v26, "AVE_GetTileInfo", 8591, "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))", a3[1]);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      v99 = "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))";
      v101 = a3[1];
      v97 = 8591;
    }

    else
    {
      v101 = a3[1];
      v97 = 8591;
      v99 = "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))";
    }

    v92 = v26;
    v27 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned";
LABEL_66:
    syslog(3, v27, v25, 3, v92, "AVE_GetTileInfo", v97, v99, v101);
    return 4294966296;
  }

LABEL_7:
  v18 = vadd_s32(v8, v7);
  v19 = *&vadd_s32(v8, 0xF0000000FLL) & 0xFFFFFFF0FFFFFFF0;
  *(a2 + 552) = v16;
  *(a2 + 556) = v17;
  v108 = v19;
  if (a1[9].i32[1] < 12)
  {
    *(a2 + 560) = *(v6 + 697);
    v23 = v18.i32[0];
    v22 = v18.u32[1];
  }

  else if (v15)
  {
    v20 = vceq_s32(a1[180], v19);
    v21 = *(v6 + 697);
    *(a2 + 560) = vbsl_s8(v20, v21, vmin_u32(v18, v21));
    v22 = v21.u32[1];
    v23 = v21.i32[0];
  }

  else
  {
    v30 = a1[1358].u32[1];
    if (v18.i32[0] <= v30)
    {
      v31 = a3[2];
    }

    else
    {
      v31 = v30 - v16;
    }

    *(a2 + 560) = v31;
    v23 = v31 + v16;
    v32 = a1[1359].u32[0];
    if (v18.i32[1] <= v32)
    {
      v33 = a3[3];
    }

    else
    {
      v33 = v32 - v17;
    }

    *(a2 + 564) = v33;
    v22 = v33 + v17;
  }

  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v34 = AVE_Log_CheckConsole(0xCu);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(7);
    v37 = a1[180].u32[0];
    if (v34)
    {
      printf("%lld %d AVE %s: FIG: Tile: %d %d | %u %u | %d %d | %d %d | %d %d\n\n", v35, 12, v36, v37, a1[180].i32[1], a1[1358].i32[1], a1[1359].i32[0], v108, HIDWORD(v108), *(a2 + 560), *(a2 + 564), v23, v22);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: Tile: %d %d | %u %u | %d %d | %d %d | %d %d\n", v38, 12, v39, a1[180].u32[0]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: Tile: %d %d | %u %u | %d %d | %d %d | %d %d\n", v35, 12, v36, v37);
    }
  }

  if (v6[33] != 1)
  {
    if (*v6)
    {
      v51 = a1[1274].i32[0] == 10;
      if ((v23 << v51) > a1[1358].i32[0])
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          return 4294966296;
        }

        v52 = AVE_Log_CheckConsole(3u);
        v53 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(4);
        if (v52)
        {
          v55 = 8711;
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)\n", v53, 3, v54, "AVE_GetTileInfo", 8711, "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride", *a3, a3[2], a1[1358].i32[0]);
LABEL_47:
          v53 = AVE_GetCurrTime();
          v57 = AVE_Log_GetLevelStr(4);
          v103 = a3[2];
          v104 = a1[1358].u32[0];
          v100 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
          v102 = *a3;
          v98 = v55;
          v94 = v57;
          v58 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)";
          goto LABEL_98;
        }

        v103 = a3[2];
        v104 = a1[1358].u32[0];
        v102 = *a3;
        v91 = 8711;
        goto LABEL_97;
      }

      if (v22 > a1[1359].i32[0])
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          return 4294966296;
        }

        v62 = AVE_Log_CheckConsole(3u);
        v53 = AVE_GetCurrTime();
        v63 = AVE_Log_GetLevelStr(4);
        if (v62)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)\n", v53, 3, v63, "AVE_GetTileInfo", 8716, "height <= pINS->VideoParamsDriver.pixelBuffer.Height", a3[1], a3[3], a1[1359].i32[0]);
          v53 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(4);
          v103 = a3[3];
          v104 = a1[1359].u32[0];
          v100 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
          v102 = a3[1];
          v98 = 8716;
        }

        else
        {
          v103 = a3[3];
          v104 = a1[1359].u32[0];
          v102 = a3[1];
          v98 = 8716;
          v100 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
        }

        v94 = v63;
        v58 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)";
LABEL_98:
        syslog(3, v58, v53, 3, v94, "AVE_GetTileInfo", v98, v100, v102, v103, v104, v105, v106, v107);
        return 4294966296;
      }

      result = 0;
      v67 = a3[1];
      v68 = *a3 << v51;
    }

    else
    {
      if (((2 * ((2863311531u * (v23 + 2)) >> 32)) & 0xFFFFFFFC) > a1[1358].i32[0])
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          return 4294966296;
        }

        v56 = AVE_Log_CheckConsole(3u);
        v53 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(4);
        if (v56)
        {
          v55 = 8691;
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)\n", v53, 3, v54, "AVE_GetTileInfo", 8691, "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride", *a3, a3[2], a1[1358].i32[0]);
          goto LABEL_47;
        }

        v103 = a3[2];
        v104 = a1[1358].u32[0];
        v102 = *a3;
        v91 = 8691;
LABEL_97:
        v98 = v91;
        v100 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
        v94 = v54;
        v58 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)";
        goto LABEL_98;
      }

      if (v22 > a1[1359].i32[0])
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          return 4294966296;
        }

        v64 = AVE_Log_CheckConsole(3u);
        v53 = AVE_GetCurrTime();
        v65 = AVE_Log_GetLevelStr(4);
        if (v64)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height(%u)\n", v53, 3, v65, "AVE_GetTileInfo", 8696, "height <= pINS->VideoParamsDriver.pixelBuffer.Height", a3[1], a3[3], a1[1359].i32[0]);
          v53 = AVE_GetCurrTime();
          v65 = AVE_Log_GetLevelStr(4);
          v103 = a3[3];
          v104 = a1[1359].u32[0];
          v100 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
          v102 = a3[1];
          v98 = 8696;
        }

        else
        {
          v103 = a3[3];
          v104 = a1[1359].u32[0];
          v102 = a3[1];
          v98 = 8696;
          v100 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
        }

        v94 = v65;
        v58 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height(%u)";
        goto LABEL_98;
      }

      result = 0;
      v67 = a3[1];
      v68 = (*a3 / 48) << 6;
    }

    *(a2 + 544) = v68;
    *(a2 + 548) = v67;
    return result;
  }

  if (a1[9].i32[1] < 12)
  {
LABEL_103:
    result = 0;
    *(a2 + 544) = 0;
    return result;
  }

  v40.i32[0] = a1[1358].i32[1];
  v40.i32[1] = *(a2 + 560);
  v41 = vadd_s32(v40, 0x1F0000001FLL);
  v42.i32[0] = a1[1359].i32[0];
  v42.i32[1] = *(a2 + 564);
  v43 = vadd_s32(v42, 0x1F0000001FLL);
  v44 = vand_s8(vmin_u32(vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v43, 5uLL))), vbic_s8(vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v41, 5uLL))), vcgt_u32(0x4000000040, v41))), vcgt_u32(v43, 0x3F0000003FLL));
  v45 = v44.i32[1];
  v46 = v44.i32[0];
  if (v44.i32[0] == v44.i32[1])
  {
    if (AVE_Log_CheckLevel(0xCu, 7))
    {
      v47 = AVE_Log_CheckConsole(0xCu);
      v48 = AVE_GetCurrTime();
      v49 = AVE_Log_GetLevelStr(7);
      if (v47)
      {
        printf("%lld %d AVE %s: uiPixelBufferTwiddleBitsLuma %d uiEncodedRegionTwiddleBitsLuma %d\n", v48, 12, v49, v46, v46);
        v50 = AVE_GetCurrTime();
        v93 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsLuma %d uiEncodedRegionTwiddleBitsLuma %d", v50, 12, v93, v46, v46);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsLuma %d uiEncodedRegionTwiddleBitsLuma %d", v48, 12, v49, v46, v46);
      }
    }

    v69 = a1[3086].i32[0];
    if (v69 > 3)
    {
      v72 = 0;
      v71 = 0;
    }

    else
    {
      v70 = (&gc_iaAVE_SubC + 8 * v69);
      v72 = *v70;
      v71 = v70[1];
    }

    v73 = a1[1358].i32[1] / v72 + 15;
    v74 = 32 - __clz((v73 >> 4) - 1);
    if (v73 >= 0x20)
    {
      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    v76 = a1[1359].i32[0] / v71 + 15;
    v77 = 32 - __clz((v76 >> 4) - 1);
    if (v77 < v75)
    {
      v75 = v77;
    }

    if (v76 <= 0x1F)
    {
      v78 = 0;
    }

    else
    {
      v78 = v75;
    }

    v79 = *(a2 + 560) / v72 + 15;
    v80 = 32 - __clz((v79 >> 4) - 1);
    if (v79 >= 0x20)
    {
      v81 = v80;
    }

    else
    {
      v81 = 0;
    }

    v82 = *(a2 + 564) / v71 + 15;
    v83 = 32 - __clz((v82 >> 4) - 1);
    if (v83 < v81)
    {
      v81 = v83;
    }

    if (v82 <= 0x1F)
    {
      v84 = 0;
    }

    else
    {
      v84 = v81;
    }

    if (v78 == v84)
    {
      if (AVE_Log_CheckLevel(0xCu, 7))
      {
        v85 = AVE_Log_CheckConsole(0xCu);
        v86 = AVE_GetCurrTime();
        v87 = AVE_Log_GetLevelStr(7);
        if (v85)
        {
          printf("%lld %d AVE %s: uiPixelBufferTwiddleBitsChroma %d uiEncodedRegionTwiddleBitsChroma %d\n", v86, 12, v87, v78, v78);
          v88 = AVE_GetCurrTime();
          v95 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsChroma %d uiEncodedRegionTwiddleBitsChroma %d", v88, 12, v95, v78, v78);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsChroma %d uiEncodedRegionTwiddleBitsChroma %d", v86, 12, v87, v78, v78);
        }
      }

      goto LABEL_103;
    }

    if (AVE_Log_CheckLevel(3u, 4))
    {
      v89 = AVE_Log_CheckConsole(3u);
      v60 = AVE_GetCurrTime();
      v61 = AVE_Log_GetLevelStr(4);
      if (v89)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d \n", v60, 3, v61, "AVE_GetTileInfo", 8677, "uiPixelBufferTwiddleBitsChroma == uiEncodedRegionTwiddleBitsChroma", a1[1358].i32[1], a1[1359].i32[0], v78, *(a2 + 560), *(a2 + 564), v84);
        goto LABEL_94;
      }

      goto LABEL_104;
    }
  }

  else if (AVE_Log_CheckLevel(3u, 4))
  {
    v59 = AVE_Log_CheckConsole(3u);
    v60 = AVE_GetCurrTime();
    v61 = AVE_Log_GetLevelStr(4);
    if (v59)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d \n", v60, 3, v61, "AVE_GetTileInfo", 8663, "uiPixelBufferTwiddleBitsLuma == uiEncodedRegionTwiddleBitsLuma", a1[1358].i32[1], a1[1359].i32[0], v46, *(a2 + 560), *(a2 + 564), v45);
LABEL_94:
      v90 = AVE_GetCurrTime();
      v96 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d ", v90, 3, v96);
      return 4294966296;
    }

LABEL_104:
    syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d ", v60, 3, v61);
  }

  return 4294966296;
}

uint64_t AVE_Session_HEVC_Create(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 104636;
  v5 = (a1 + 760);
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v7 = AVE_Log_CheckConsole(0xCu);
    v8 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%llx\n", v8, 12, LevelStr, "AVE_Session_HEVC_Create", a1, a2);
      v10 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v10, 12, v26, "AVE_Session_HEVC_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v8, 12, LevelStr, "AVE_Session_HEVC_Create", a1, a2);
    }
  }

  v11 = AVE_DW_Get();
  *(a1 + 64) = 1;
  *v4 = 2;
  *(a1 + 1256) = -1;
  *(a1 + 10772) = 2;
  *(a1 + 10556) = 0x100000001;
  *(a1 + 776) = 1;
  *v5 = xmmword_295650C00;
  *(a1 + 712) = v11[103];
  v12 = AVE_USL_Drv_Create(1, 2, (a1 + 120));
  if (!v12)
  {
    *(a1 + 68) = AVE_USL_Drv_GetDevID(*(a1 + 120));
    *(a1 + 72) = AVE_USL_Drv_GetDevRevision(*(a1 + 120));
    *(a1 + 56) = AVE_USL_Drv_GetClientID(*(a1 + 120));
    *(a1 + 76) = *(AVE_DevCap_Find(*(a1 + 68)) + 1);
    AVE_Prop_Cfg_HEVC_Init(a1 + 106112, *(a1 + 56));
    operator new();
  }

  v13 = v12;
  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v14 = AVE_Log_CheckConsole(0xCu);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to open HEVC %p %lld %d\n", v15, 12, v16, "AVE_Session_HEVC_Create", 9358, "ret == 0", a1, 0, v13);
      v17 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open HEVC %p %lld %d", v17, 12, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open HEVC %p %lld %d", v15, 12, v16);
    }
  }

  v18 = *(v4 + 68);
  if (v18)
  {
    AVE_FPS::~AVE_FPS(v18);
    MEMORY[0x29C24E920]();
    *(v4 + 68) = 0;
  }

  v19 = *(v4 + 100);
  if (v19)
  {
    AVE_SEI::~AVE_SEI(v19);
    MEMORY[0x29C24E920]();
    *(v4 + 100) = 0;
  }

  v20 = AVE_GetCurrTime() - CurrTime;
  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v21 = AVE_Log_CheckConsole(0xCu);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d\n", v22, 12, v23, "AVE_Session_HEVC_Create", a1, a2, 0, v20, v13);
      v24 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v24, 12, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v22, 12, v23);
    }
  }

  return v13;
}

void AVE_NewDefaultsBasedOnProfileUsageDefault(uint64_t a1)
{
  v2 = AVE_DW_Get();
  v3 = v2[221];
  if (v3 <= 3)
  {
    *(a1 + 1256) = v3;
  }

  v4 = v2[220];
  if ((v4 & 0x80000000) == 0)
  {
    *(a1 + 1252) = v4;
  }

  v5 = v2[223];
  if (v5 >= 1)
  {
    *(a1 + 1288) = v5;
  }

  v6 = v2[232];
  if (v6 >= 1)
  {
    *(a1 + 1308) = v6;
  }

  v7 = v2[233];
  if (v7 >= 1)
  {
    *(a1 + 1312) = v7;
  }

  if (*(a1 + 1256) < 1)
  {
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    *(a1 + 1240) &= ~0x400u;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v11 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      if (v11)
      {
        printf("%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF\n", CurrTime, 30, LevelStr);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF");
    }
  }

  else
  {
    if (*(a1 + 1132) != 20)
    {
      *(a1 + 10764) = 1;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v8 = AVE_Log_CheckConsole(0x1Eu);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(6);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v9, 30, v10, "AVE_HEVCNewDefaultsBasedOnProfileUsageDefault", 5512, *(a1 + 1256), *(a1 + 107716));
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v9, 30, v10, "AVE_HEVCNewDefaultsBasedOnProfileUsageDefault", 5512, *(a1 + 1256), *(a1 + 107716));
    }
  }

  *(a1 + 39880) = *(a1 + 1144) - 26;
  if (*(a1 + 1338))
  {
    *(a1 + 39886) = 1;
    *(a1 + 10205) = 0;
  }

  if (*(a1 + 39959) == 1)
  {
    *(a1 + 1132) = 3;
    *(a1 + 10764) = 1;
    *(a1 + 1464) = 0;
    *(a1 + 1352) = 0;
    *(a1 + 1240) &= ~0x400u;
    v14 = *(a1 + 24732);
    *(a1 + 39886) = 0;
    v14 *= -6;
    *(a1 + 1348) = v14;
    *(a1 + 1344) = v14;
    *(a1 + 1152) = v14;
    *(a1 + 1148) = v14;
    *(a1 + 1144) = v14;
    *(a1 + 1232) = *(a1 + 1344);
    *(a1 + 1336) = 0;
    *(a1 + 10604) = 0;
  }
}

void H9EncoderRegister()
{
  v0 = AVE_UC_Verify();
  if (!v0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v2 = Mutable;
      v3 = *MEMORY[0x29EDB8F00];
      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBD1E0], *MEMORY[0x29EDB8F00]);
      CFDictionaryAddValue(v2, *MEMORY[0x29EDBD1E8], v3);
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v2);
      if (MutableCopy)
      {
        v5 = MutableCopy;
        CFDictionaryAddValue(v2, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.hevc");
        v0 = VTRegisterVideoEncoderWithInfo();
        if (!v0)
        {
          CFDictionaryAddValue(v5, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.ohvc");
          CFDictionaryAddValue(v5, *MEMORY[0x29EDBD1D8], v3);
          v0 = VTRegisterVideoEncoderWithInfo();
        }

        CFRelease(v2);
      }

      else
      {
        v0 = 0;
        v5 = v2;
      }

      CFRelease(v5);
    }

    else
    {
      v0 = 0;
    }
  }

  if (AVE_Log_CheckLevel(2u, 5))
  {
    v6 = AVE_Log_CheckConsole(2u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(5);
    if (v6)
    {
      printf("%lld %d AVE %s: Register HEVC video encoder of AVE %d\n", CurrTime, 2, LevelStr, v0);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: Register HEVC video encoder of AVE %d", v9, 2, v10, v0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Register HEVC video encoder of AVE %d", CurrTime, 2, LevelStr, v0);
    }
  }
}

uint64_t AVE_MCTF_Retrieve(const __CFArray *a1, _DWORD *a2)
{
  v56[0] = 0;
  v55 = 0;
  v54 = 0;
  Count = CFArrayGetCount(a1);
  if (a1 && a2)
  {
    v5 = 0;
    v6 = Count >> 1;
    *(a2 + 6) = 0u;
    *(a2 + 7) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    v7 = 1;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    while (1)
    {
      v8 = v7;
      v9 = v5 * v6;
      if (!AVE_CFArray_GetChar(a1, (v5 * v6), &v54))
      {
        break;
      }

      *a2 = v54;
      if (!AVE_CFArray_GetChar(a1, (v9 + 1), &v54))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v38 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 94, "ret != 0", a1, a2, v54);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[1] = v54;
      if (!AVE_CFArray_GetChar(a1, (v9 + 2), &v54))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v39 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v39)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 99, "ret != 0", a1, a2, v54);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[2] = v54;
      if (!AVE_CFArray_GetChar(a1, (v9 + 3), &v54))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v40 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v40)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 104, "ret != 0", a1, a2, v54);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[3] = v54;
      if (!AVE_CFArray_GetChar(a1, (v9 + 4), &v54))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v41 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v41)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 109, "ret != 0", a1, a2, v54);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[4] = v54;
      if (!AVE_CFArray_GetChar(a1, (v9 + 5), &v54))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v42 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v42)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 114, "ret != 0", a1, a2, v54);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[5] = v54;
      if (!AVE_CFArray_GetChar(a1, (v9 + 6), &v54))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v43 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 119, "ret != 0", a1, a2, v54);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[6] = v54;
      if (!AVE_CFArray_GetChar(a1, (v9 + 7), &v54))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v44 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 124, "ret != 0", a1, a2, v54);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[7] = v54;
      if (!AVE_CFArray_GetSInt16(a1, (v9 + 8), &v55))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v45 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 129, "ret != 0", a1, a2, v55);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
        }

        goto LABEL_81;
      }

      a2[8] = v55;
      if (!AVE_CFArray_GetChar(a1, (v9 + 9), &v54))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v46 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v46)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 134, "ret != 0", a1, a2, v54);
LABEL_80:
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        goto LABEL_81;
      }

      a2[9] = v54;
      if (!AVE_CFArray_GetChar(a1, (v9 + 10), &v54))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v47 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v47)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 139, "ret != 0", a1, a2, v54);
        goto LABEL_80;
      }

      a2[10] = v54;
      if (!AVE_CFArray_GetChar(a1, (v9 + 11), &v54))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v48 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v48)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 144, "ret != 0", a1, a2, v54);
        goto LABEL_80;
      }

      a2[11] = v54;
      if (!AVE_CFArray_GetChar(a1, (v9 + 12), &v54))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v49 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v49)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 149, "ret != 0", a1, a2, v54);
        goto LABEL_80;
      }

      a2[12] = v54;
      if (!AVE_CFArray_GetSInt32(a1, (v9 + 13), v56))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v50 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v50)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 154, "ret != 0", a1, a2, v56[0]);
        goto LABEL_80;
      }

      a2[13] = v56[0];
      if (!AVE_CFArray_GetSInt32(a1, (v9 + 14), v56))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v51 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v51)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 159, "ret != 0", a1, a2, v56[0]);
        goto LABEL_80;
      }

      a2[14] = v56[0];
      SInt32 = AVE_CFArray_GetSInt32(a1, (v9 + 15), v56);
      if (!SInt32)
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v52 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 164, "ret != 0", a1, a2, v56[0]);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      v11 = SInt32;
      a2[15] = v56[0];
      if (AVE_Log_CheckLevel(0x10u, 7))
      {
        v12 = AVE_Log_CheckConsole(0x10u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(7);
        v15 = *a2;
        v16 = a2[1];
        v17 = a2[2];
        v18 = a2[3];
        v19 = a2[4];
        v20 = a2[5];
        v21 = a2[6];
        v22 = a2[7];
        v23 = a2[8];
        v24 = a2[9];
        v25 = a2[10];
        v26 = a2[11];
        v27 = a2[12];
        v28 = a2[13];
        v29 = a2[15];
        if (v12)
        {
          printf("%lld %d AVE %s: MCTF Pop [%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d\n", v13, 16, v14, v5, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, a2[14], v29);
          v30 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: MCTF Pop [%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v30, 16, v31, v5, *a2, a2[1], a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], a2[10], a2[11], a2[12], a2[13], a2[14], a2[15]);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: MCTF Pop [%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v13, 16, v14, v5, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, a2[14], v29);
        }
      }

      v7 = 0;
      a2 += 16;
      v5 = 1;
      if ((v8 & 1) == 0)
      {
        return v11;
      }
    }

    if (!AVE_Log_CheckLevel(0x10u, 4))
    {
      return 0;
    }

    v35 = AVE_Log_CheckConsole(0x10u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v35)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 89, "ret != 0", a1, a2, v54);
      goto LABEL_80;
    }

LABEL_81:
    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 16, LevelStr);
    return 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v32 = AVE_Log_CheckConsole(0x10u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v33, 16, v34, "AVE_MCTF_Retrieve", 81, "pArray != __null && pMCTF != __null", a1, a2);
        v33 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v33, 16);
    }

    return 4294966295;
  }
}

uint64_t AVE_MCTF_Make(char *a1, __CFArray *a2)
{
  if (a1 && a2)
  {
    v4 = 0;
    v5 = a1 + 32;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = AVE_CFArray_AddChar(*(v5 - 32), a2);
      v9 = AVE_CFArray_AddChar(*(v5 - 28), a2);
      v10 = AVE_CFArray_AddChar(*(v5 - 24), a2);
      v11 = AVE_CFArray_AddChar(*(v5 - 20), a2);
      v12 = AVE_CFArray_AddChar(*(v5 - 16), a2);
      v13 = AVE_CFArray_AddChar(*(v5 - 12), a2);
      v53 = AVE_CFArray_AddChar(*(v5 - 8), a2);
      v52 = AVE_CFArray_AddChar(*(v5 - 4), a2);
      v51 = AVE_CFArray_AddSInt16(*v5, a2);
      v50 = AVE_CFArray_AddChar(v5[4], a2);
      v49 = AVE_CFArray_AddChar(v5[8], a2);
      v48 = AVE_CFArray_AddChar(v5[12], a2);
      v47 = AVE_CFArray_AddChar(v5[16], a2);
      v46 = AVE_CFArray_AddSInt32(*(v5 + 5), a2);
      v45 = AVE_CFArray_AddSInt32(*(v5 + 6), a2);
      v44 = AVE_CFArray_AddSInt32(*(v5 + 7), a2);
      if (AVE_Log_CheckLevel(0x10u, 7))
      {
        v42 = v13;
        v43 = v11;
        v14 = v12;
        v15 = v10;
        v16 = v9;
        v17 = v8;
        v18 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v21 = *(v5 - 8);
        v22 = *(v5 - 7);
        v23 = *(v5 - 6);
        v24 = *(v5 - 5);
        v25 = *(v5 - 4);
        v26 = *(v5 - 3);
        v27 = *(v5 - 2);
        v28 = *(v5 - 1);
        v29 = *v5;
        v30 = *(v5 + 1);
        v31 = *(v5 + 2);
        v32 = *(v5 + 3);
        v33 = *(v5 + 4);
        v34 = *(v5 + 5);
        v35 = *(v5 + 7);
        if (v18)
        {
          printf("%lld %d AVE %s: MCTF Make Ref[%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d\n", CurrTime, 16, LevelStr, v4, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, *(v5 + 6), v35);
          v36 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: MCTF Make Ref[%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v36, 16, v37, v4, *(v5 - 8), *(v5 - 7), *(v5 - 6), *(v5 - 5), *(v5 - 4), *(v5 - 3), *(v5 - 2), *(v5 - 1), *v5, *(v5 + 1), *(v5 + 2), *(v5 + 3), *(v5 + 4), *(v5 + 5), *(v5 + 6), *(v5 + 7));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: MCTF Make Ref[%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", CurrTime, 16, LevelStr, v4, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, *(v5 + 6), v35);
        }

        v8 = v17;
        v9 = v16;
        v10 = v15;
        v12 = v14;
        v13 = v42;
        v11 = v43;
      }

      v6 = 0;
      v5 += 64;
      v4 = 1;
    }

    while ((v7 & 1) != 0);
    return (v9 + v8 + v10 + v11 + v12 + v13 + v53 + v52 + v51 + v50 + v49 + v48 + v47 + v46 + v45 + v44);
  }

  else
  {
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v39 = AVE_Log_CheckConsole(0x10u);
      v40 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(4);
      if (v39)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v40, 16, v41, "AVE_MCTF_Make", 196, "pMCTF != __null && pArray != __null", a1, a2);
        v40 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v40, 16);
    }

    return 4294966295;
  }
}

uint64_t H264VideoEncoderFrameReceiver::H264VideoEncoderFrameReceiver(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 137792;
  v5 = a1 + 25784;
  AVE_MultiPass::AVE_MultiPass((a1 + 16));
  *(a1 + 29328) = *(a2 + 16);
  *(v5 + 3552) = *a2;
  *(a1 + 29352) = *(a2 + 32);
  *(a1 + 29312) = *(a2 + 72);
  *(v4 + 16) = *(a2 + 204);
  *(v4 + 12) = *(a2 + 200);
  *(v4 + 24) = *(a2 + 208);
  *a1 = 0;
  *(a1 + 8) = 0;
  *v4 = *(a2 + 216);
  v6 = *(a2 + 40);
  *(a1 + 29296) = *(a2 + 56);
  *(a1 + 29280) = v6;
  v7 = *(a2 + 80);
  if (v7)
  {
    memcpy((a1 + 29368), v7, 0x300uLL);
  }

  v8 = *(a2 + 88);
  if (v8)
  {
    memcpy((a1 + 30136), v8, 0x2460uLL);
  }

  memcpy((a1 + 39448), *(a2 + 96), 0x4E0uLL);
  v9 = *(a2 + 96);
  *(a1 + 40696) = *(a2 + 104);
  v10 = *(v9 + 20);
  if (v10 == 2)
  {
    v16 = *(a2 + 144);
    if (v16)
    {
      memcpy((a1 + 45152), v16, 0x2FCCuLL);
    }

    v17 = 0;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = *(a2 + 152 + 8 * v17);
      if (v20)
      {
        memcpy((a1 + 57388 + 7804 * v17), v20, 0x1E7CuLL);
      }

      v21 = *(a2 + 168 + 8 * v17);
      if (v21)
      {
        memcpy((a1 + 72996 + 9632 * v17), v21, 0x25A0uLL);
      }

      v18 = 0;
      v17 = 1;
    }

    while ((v19 & 1) != 0);
    v22 = *(a2 + 184);
    if (v22)
    {
      memcpy((a1 + 92264), v22, 0x53F0uLL);
    }

    v13 = *(a2 + 192);
    if (v13)
    {
      v14 = (a1 + 113752);
      v15 = 24024;
      goto LABEL_25;
    }
  }

  else if (v10 == 1)
  {
    v11 = *(a2 + 120);
    if (v11)
    {
      memcpy((a1 + 40712), v11, 0x6B4uLL);
    }

    v12 = *(a2 + 128);
    if (v12)
    {
      memcpy((a1 + 42428), v12, 0x180uLL);
    }

    v13 = *(a2 + 136);
    if (v13)
    {
      v14 = (a1 + 42812);
      v15 = 2340;
LABEL_25:
      memcpy(v14, v13, v15);
    }
  }

  else if (AVE_Log_CheckLevel(0x2Eu, 4))
  {
    if (AVE_Log_CheckConsole(0x2Eu))
    {
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      printf("%lld %d AVE %s: codectype not recognized! %d\n", CurrTime, 46, LevelStr, *(*(a2 + 96) + 20));
    }

    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: codectype not recognized! %d", v25, 46, v26, *(*(a2 + 96) + 20));
  }

  *(a1 + 29100) = 0;
  *(a1 + 29084) = 0u;
  *(a1 + 29112) = 0u;
  bzero((a1 + 28032), 0x418uLL);
  *(v5 + 3488) = -1;
  *(v5 + 3492) = 0;
  *(a1 + 29360) = 0;
  *v5 = 0;
  *(a1 + 143688) = 0;
  *(a1 + 25792) = 0u;
  *(a1 + 25808) = 0u;
  *(a1 + 25824) = 0u;
  *(a1 + 25840) = 0u;
  *(a1 + 25856) = 0u;
  *(a1 + 25872) = 0u;
  *(a1 + 25888) = 0u;
  *(a1 + 25904) = 0u;
  *(a1 + 25920) = 0u;
  *(a1 + 25936) = 0u;
  *(a1 + 25952) = 0u;
  *(a1 + 25968) = 0u;
  *(a1 + 25984) = 0u;
  *(a1 + 26000) = 0u;
  *(a1 + 26016) = 0u;
  *(a1 + 26032) = 0u;
  *(a1 + 26048) = 0u;
  *(a1 + 26064) = 0u;
  *(a1 + 26080) = 0u;
  *(a1 + 26096) = 0u;
  *(a1 + 26112) = 0u;
  *(a1 + 26128) = 0u;
  *(a1 + 26144) = 0u;
  *(a1 + 26160) = 0u;
  *(a1 + 26176) = 0u;
  *(a1 + 26192) = 0u;
  *(a1 + 26208) = 0u;
  *(a1 + 26224) = 0u;
  *(a1 + 26240) = 0u;
  *(a1 + 26256) = 0u;
  *(a1 + 26920) = 0u;
  *(a1 + 26936) = 0u;
  *(a1 + 26888) = 0u;
  *(a1 + 26904) = 0u;
  *(a1 + 26856) = 0u;
  *(a1 + 26872) = 0u;
  *(a1 + 26824) = 0u;
  *(a1 + 26840) = 0u;
  *(a1 + 26792) = 0u;
  *(a1 + 26808) = 0u;
  *(a1 + 26760) = 0u;
  *(a1 + 26776) = 0u;
  *(a1 + 26728) = 0u;
  *(a1 + 26744) = 0u;
  *(a1 + 26696) = 0u;
  *(a1 + 26712) = 0u;
  *(a1 + 26664) = 0u;
  *(a1 + 26680) = 0u;
  *(a1 + 26632) = 0u;
  *(a1 + 26648) = 0u;
  *(a1 + 26600) = 0u;
  *(a1 + 26616) = 0u;
  *(a1 + 26568) = 0u;
  *(a1 + 26584) = 0u;
  *(a1 + 26536) = 0u;
  *(a1 + 26552) = 0u;
  *(a1 + 26504) = 0u;
  *(a1 + 26520) = 0u;
  *(a1 + 26472) = 0u;
  *(a1 + 26488) = 0u;
  bzero((a1 + 27072), 0x3C0uLL);
  *(a1 + 143680) = 0;
  *(a1 + 143664) = 0u;
  *(a1 + 143696) = *(a2 + 232);
  return a1;
}

void H264VideoEncoderFrameReceiver::~H264VideoEncoderFrameReceiver(H264VideoEncoderFrameReceiver *this)
{
  v2 = -240;
  do
  {
    v3 = this + v2;
    v4 = *(this + v2 + 26272);
    if (v4)
    {
      IOSurfaceUnlock(v4, 0, 0);
      CFRelease(*(v3 + 3284));
      *(v3 + 3284) = 0;
    }

    v5 = *(v3 + 3369);
    if (v5)
    {
      IOSurfaceUnlock(v5, 0, 0);
      CFRelease(*(v3 + 3369));
      *(v3 + 3369) = 0;
    }

    v6 = this + v2;
    v7 = *(this + v2 + 27552);
    if (v7)
    {
      IOSurfaceUnlock(v7, 0, 0);
      CFRelease(*(v6 + 3444));
      *(v6 + 3444) = 0;
    }

    v8 = *(v6 + 3504);
    if (v8)
    {
      IOSurfaceUnlock(v8, 0, 0);
      CFRelease(*(v6 + 3504));
      *(v6 + 3504) = 0;
    }

    v2 += 8;
  }

  while (v2);
  if (*(this + 3670))
  {
    FigFormatDescriptionRelease();
    *(this + 3670) = 0;
  }

  v9 = *(this + 3639);
  if (v9)
  {
    free(v9);
    *(this + 3639) = 0;
    *(this + 7280) = 0;
  }

  std::deque<_S_AVE_MultiPassStats *>::~deque[abi:ne200100](this + 3181);
  std::deque<_S_AVE_MultiPassStats *>::~deque[abi:ne200100](this + 3175);
  v10 = *(this + 3171);
  if (v10)
  {
    *(this + 3172) = v10;
    operator delete(v10);
  }
}

uint64_t H264VideoEncoderFrameReceiver::CreateVideoFormatDesc(uint64_t a1, const void *a2, char *a3, unsigned int *a4, int *a5)
{
  v136[0] = 0;
  v134 = 0;
  v135 = 0;
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v9 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %p %p %p\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "CreateVideoFormatDesc", a2, a3, a4, a5);
      v12 = AVE_GetCurrTime();
      v115 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %p %p %p", v12, 46, v115);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %p %p %p", CurrTime, 46, LevelStr);
    }
  }

  if (a5 && *a5)
  {
    v129 = a1 + 39252;
    if (AVE_Log_CheckLevel(0x2Eu, 8))
    {
      v13 = AVE_Log_CheckConsole(0x2Eu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(8);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d sPSInfo.iNum %d\n", v14, 46, v15, "AVE_FrameRecv", "CreateVideoFormatDesc", 244, *a5);
        v14 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d sPSInfo.iNum %d", v14);
    }

    v131 = a2;
    v127 = (a1 + 30136);
    v128 = a1;
    v133 = a5;
    if (*a5 >= 1)
    {
      v26 = 0;
      v27 = a5 + 4;
      do
      {
        if (AVE_Log_CheckLevel(0x2Eu, 8))
        {
          v28 = AVE_Log_CheckConsole(0x2Eu);
          v29 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(8);
          v31 = *(v27 - 3);
          v32 = *(v27 - 2);
          v33 = *(v27 - 1);
          v34 = *v27;
          if (v28)
          {
            printf("%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d\n", v29, 46, v30, "AVE_FrameRecv", "CreateVideoFormatDesc", 249, v26, v31, v32, *(v27 - 1), v34);
            v29 = AVE_GetCurrTime();
            v30 = AVE_Log_GetLevelStr(8);
            v31 = *(v27 - 3);
            v32 = *(v27 - 2);
            v33 = *(v27 - 1);
            v34 = *v27;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d", v29, 46, v30, "AVE_FrameRecv", "CreateVideoFormatDesc", 249, v26, v31, v32, v33, v34);
          a5 = v133;
        }

        ++v26;
        v27 += 4;
      }

      while (v26 < *a5);
    }

    v35 = (a1 + 39448);
    v36 = *(a1 + 39468);
    if (v36 == 1)
    {
      v45 = (a1 + 40712);
      avcC_Dict = AVE_PS_Make_avcC_Dict(0, a3, a5, (a1 + 40712), &v135);
      a2 = v131;
      if (v135)
      {
        if (*(a1 + 41808))
        {
          CFDictionarySetValue(v135, *MEMORY[0x29EDB92C0], *MEMORY[0x29EDB8F00]);
        }

        v46 = *v127;
        v47 = *(a1 + 40748);
        if (v47 > 3)
        {
          v49 = 0;
        }

        else
        {
          v48 = (&gc_iaAVE_SubC + 8 * v47);
          v50 = *v48;
          v49 = v48[1];
          v46 -= v50 * *(a1 + 41896);
        }

        v58 = *(a1 + 30140) - *(a1 + 41904) * v49;
        if (AVE_Log_CheckLevel(0x2Eu, 8))
        {
          v59 = AVE_Log_CheckConsole(0x2Eu);
          v60 = AVE_GetCurrTime();
          v61 = AVE_Log_GetLevelStr(8);
          if (v59)
          {
            printf("%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d\n", v60, 46, v61, "AVE_FrameRecv", "CreateVideoFormatDesc", 277, *(a1 + 30136), *(a1 + 30140), v46, v58, *(a1 + 41896), *(a1 + 41904));
            v62 = AVE_GetCurrTime();
            v118 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v62, 46, v118);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v60, 46, v61);
          }

          a2 = v131;
        }

        if (*v35 == 2)
        {
          VideoFormatDescription = VTTileEncoderSessionCreateVideoFormatDescription();
        }

        else
        {
          VideoFormatDescription = VTEncoderSessionCreateVideoFormatDescription();
        }

        v67 = VideoFormatDescription;
        if (!VideoFormatDescription)
        {
          v19 = 0;
LABEL_137:
          a5 = v133;
          goto LABEL_17;
        }

        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v68 = AVE_Log_CheckConsole(0x2Eu);
          v69 = AVE_GetCurrTime();
          v70 = AVE_Log_GetLevelStr(4);
          if (v68)
          {
            a2 = v131;
            printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d\n", v69, 46, v70, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr", *v35, v131, v46, v58, v135, (a1 + 29360), v67);
            v71 = AVE_GetCurrTime();
            v119 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d", v71, 46, v119, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr");
          }

          else
          {
            a2 = v131;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d", v69, 46, v70, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr");
          }
        }

        v19 = 0;
LABEL_108:
        avcC_Dict = 4294966296;
        goto LABEL_137;
      }

      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v54 = AVE_Log_CheckConsole(0x2Eu);
        v55 = AVE_GetCurrTime();
        v56 = AVE_Log_GetLevelStr(4);
        if (v54)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d\n", v55, 46, v56, "AVE_FrameRecv", "CreateVideoFormatDesc", 261, "pCFDict != __null", a3, a5, v45, &v135, avcC_Dict);
          v57 = AVE_GetCurrTime();
          v117 = AVE_Log_GetLevelStr(4);
          a5 = v133;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d", v57, 46, v117, "AVE_FrameRecv", "CreateVideoFormatDesc", 261);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d", v55, 46, v56, "AVE_FrameRecv", "CreateVideoFormatDesc", 261);
        }
      }

      v19 = 0;
    }

    else
    {
      a2 = v131;
      v37 = a1;
      if (v36 == 2)
      {
        v38 = *(a1 + 30144);
        v39 = AVE_SEI::EstimateSEISize(*(v128 + 143696), a4[10], 64);
        if (v39 >= 1)
        {
          v40 = v39;
          v41 = malloc_type_malloc(v39, 0x100004077774924uLL);
          if (!v41)
          {
            if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v63 = AVE_Log_CheckConsole(0x2Eu);
              v64 = AVE_GetCurrTime();
              v65 = AVE_Log_GetLevelStr(4);
              if (v63)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | failed to allocate SEI buffer %d\n", v64, 46, v65, "AVE_FrameRecv", "CreateVideoFormatDesc", 323, "piSEIData != __null", v40);
                v64 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to allocate SEI buffer %d", v64, 46);
            }

            v19 = 0;
            goto LABEL_114;
          }

          v19 = v41;
          if (AVE_Log_CheckLevel(0x2Eu, 7))
          {
            v42 = AVE_Log_CheckConsole(0x2Eu);
            v43 = AVE_GetCurrTime();
            v44 = AVE_Log_GetLevelStr(7);
            if (v42)
            {
              printf("%lld %d AVE %s: %s::%s:%d allocated %d bytes for ambient viewing environment\n", v43, 46, v44, "AVE_FrameRecv", "CreateVideoFormatDesc", 326, v40);
              v43 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v37 = v128;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d allocated %d bytes for ambient viewing environment", v43);
            a5 = v133;
          }

          v72 = AVE_SEI::Generate(*(v37 + 143696), a4[10], 64, v19, v40, v136);
          if (v72)
          {
            avcC_Dict = v72;
            if (!AVE_Log_CheckLevel(0x2Eu, 4))
            {
              goto LABEL_17;
            }

            v73 = AVE_Log_CheckConsole(0x2Eu);
            v74 = AVE_GetCurrTime();
            v75 = AVE_Log_GetLevelStr(4);
            if (v73)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d\n", v74, 46, v75, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0", v40, v19, v35, a4, v136, avcC_Dict);
              v76 = AVE_GetCurrTime();
              a2 = v131;
              v120 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d", v76, 46, v120, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d", v74, 46, v75, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0");
            }

            goto LABEL_137;
          }

          if (v136[0])
          {
LABEL_83:
            if (*v129 >= 2u)
            {
              MVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults = VTEncoderSessionCreateMVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults();
              if (AVE_Log_CheckLevel(0x2Eu, 4))
              {
                v92 = AVE_Log_CheckConsole(0x2Eu);
                v93 = AVE_GetCurrTime();
                v94 = AVE_Log_GetLevelStr(4);
                if (v92)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d\n", v93, 46, v94, "AVE_FrameRecv", "CreateVideoFormatDesc", 354, "pSEI3D != __null", v131, *(v129 + 1252), *(v129 + 1253), &v134, MVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults);
                  v95 = AVE_GetCurrTime();
                  v124 = AVE_Log_GetLevelStr(4);
                  a5 = v133;
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d", v95, 46, v124, "AVE_FrameRecv", "CreateVideoFormatDesc");
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d", v93, 46, v94, "AVE_FrameRecv", "CreateVideoFormatDesc");
                }
              }

LABEL_114:
              avcC_Dict = 4294966293;
              goto LABEL_17;
            }

            avcC_Dict = AVE_PS_Make_hvcC_Dict(0, a3, v133, v19, v136[0], 0, 0, (v37 + 57388), &v135);
            v78 = v135;
            if (v135)
            {
              if (*v129 < 2u)
              {
                a2 = v131;
                a5 = v133;
              }

              else
              {
                a5 = v133;
                avcC_Dict = AVE_PS_Add_lhvC_Dict(1, a3, v133, (v37 + 57388), v135);
                v78 = v135;
                a2 = v131;
                if (!v135)
                {
                  if (AVE_Log_CheckLevel(0x2Eu, 4))
                  {
                    v79 = AVE_Log_CheckConsole(0x2Eu);
                    v80 = AVE_GetCurrTime();
                    v81 = AVE_Log_GetLevelStr(4);
                    if (v79)
                    {
                      a5 = v133;
                      printf("%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d\n", v80, 46, v81, "AVE_FrameRecv", "CreateVideoFormatDesc", 373, "pCFDict != __null", a3, v133, (v37 + 57388), v135, avcC_Dict);
                      v82 = AVE_GetCurrTime();
                      v121 = AVE_Log_GetLevelStr(4);
                      a2 = v131;
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d", v82, 46, v121, "AVE_FrameRecv", "CreateVideoFormatDesc", 373);
                    }

                    else
                    {
                      a5 = v133;
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d", v80, 46, v81, "AVE_FrameRecv", "CreateVideoFormatDesc", 373);
                    }
                  }

                  goto LABEL_17;
                }
              }

              if (*(v37 + 64508))
              {
                CFDictionarySetValue(v78, *MEMORY[0x29EDB92C0], *MEMORY[0x29EDB8F00]);
              }

              if ((v38 & 0x800) != 0)
              {
                avcC_Dict = AVE_Crypto_MakeSINF(a2, (v37 + 40676), *(v129 + 216), v135);
                if (avcC_Dict)
                {
                  if (!AVE_Log_CheckLevel(0x2Eu, 4))
                  {
                    goto LABEL_17;
                  }

                  v88 = AVE_Log_CheckConsole(0x2Eu);
                  v89 = AVE_GetCurrTime();
                  v90 = AVE_Log_GetLevelStr(4);
                  if (v88)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d\n", v89, 46, v90, "AVE_FrameRecv", "CreateVideoFormatDesc", 392, "ret == 0", a2, (v37 + 40676), *(v129 + 216), v135, avcC_Dict);
                    v91 = AVE_GetCurrTime();
                    v123 = AVE_Log_GetLevelStr(4);
                    a2 = v131;
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d", v91, 46, v123, "AVE_FrameRecv", "CreateVideoFormatDesc", 392);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d", v89, 46, v90, "AVE_FrameRecv", "CreateVideoFormatDesc", 392);
                  }

                  goto LABEL_137;
                }

                v87 = 1902671459;
              }

              else
              {
                v87 = 1752589105;
              }

              v130 = v87;
              v96 = *v127;
              v97 = *(v37 + 57840);
              if (v97 > 3)
              {
                v99 = 0;
              }

              else
              {
                v98 = (&gc_iaAVE_SubC + 8 * v97);
                v100 = *v98;
                v99 = v98[1];
                v96 -= v100 * *(v37 + 57872);
              }

              v101 = v127[1] - *(v37 + 57880) * v99;
              if (AVE_Log_CheckLevel(0x2Eu, 8))
              {
                v102 = AVE_Log_CheckConsole(0x2Eu);
                v126 = AVE_GetCurrTime();
                v103 = AVE_Log_GetLevelStr(8);
                if (v102)
                {
                  printf("%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d\n", v126, 46, v103, "AVE_FrameRecv", "CreateVideoFormatDesc", 403, *v127, v127[1], v96, v101, *(v37 + 57872), *(v37 + 57880));
                  v104 = AVE_GetCurrTime();
                  v105 = AVE_Log_GetLevelStr(8);
                  v37 = v128;
                  syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v104, 46, v105);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v126, 46, v103);
                }
              }

              v106 = (v37 + 29360);
              if (*v35 == 2)
              {
                v107 = VTTileEncoderSessionCreateVideoFormatDescription();
              }

              else
              {
                v107 = VTEncoderSessionCreateVideoFormatDescription();
              }

              v108 = v107;
              if (v107)
              {
                if (AVE_Log_CheckLevel(0x2Eu, 4))
                {
                  v109 = AVE_Log_CheckConsole(0x2Eu);
                  v110 = AVE_GetCurrTime();
                  v111 = AVE_Log_GetLevelStr(4);
                  v112 = *v35;
                  if (v109)
                  {
                    v125 = v96;
                    a2 = v131;
                    printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d\n", v110, 46, v111, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", v112, v131, v130, v125, v101, v135, v106, v108);
                    v113 = AVE_GetCurrTime();
                    v114 = AVE_Log_GetLevelStr(4);
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d", v113, 46, v114, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", *v35);
                  }

                  else
                  {
                    a2 = v131;
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d", v110, 46, v111, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", v112);
                  }

                  goto LABEL_108;
                }

                avcC_Dict = 4294966296;
              }
            }

            else if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v83 = AVE_Log_CheckConsole(0x2Eu);
              v84 = AVE_GetCurrTime();
              v85 = AVE_Log_GetLevelStr(4);
              if (v83)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d\n", v84, 46, v85, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v133, v19, v136[0], 0, 0, (v37 + 57388), &v135, avcC_Dict);
                v86 = AVE_GetCurrTime();
                a5 = v133;
                v122 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d", v86, 46, v122, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v133, v19);
              }

              else
              {
                a5 = v133;
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d", v84, 46, v85, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v133, v19);
              }

              a2 = v131;
              goto LABEL_17;
            }

            a2 = v131;
            goto LABEL_137;
          }

          free(v19);
        }

        v19 = 0;
        goto LABEL_83;
      }

      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v51 = AVE_Log_CheckConsole(0x2Eu);
        v52 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(4);
        if (v51)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | encode type %d not recognized.\n", v52, 46, v53, "AVE_FrameRecv", "CreateVideoFormatDesc", 437, "false", *(a1 + 39468));
          v52 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | encode type %d not recognized.", v52, 46);
      }

      v19 = 0;
      avcC_Dict = 4294966281;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x2Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p\n", v17, 46, v18, "AVE_FrameRecv", "CreateVideoFormatDesc", 241, "(psInfo != __null) && (psInfo->iNum != 0)", a5);
        v17 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p", v17, 46);
    }

    v19 = 0;
    avcC_Dict = 4294966295;
  }

LABEL_17:
  if (v135)
  {
    CFRelease(v135);
    v135 = 0;
  }

  if (v19)
  {
    free(v19);
  }

  if (v134)
  {
    CFRelease(v134);
    v134 = 0;
  }

  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v21 = AVE_Log_CheckConsole(0x2Eu);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(7);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %p %p %p %d\n", v22, 46, v23, "AVE_FrameRecv", "CreateVideoFormatDesc", a2, a3, a4, a5, avcC_Dict);
      v24 = AVE_GetCurrTime();
      v116 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %p %p %p %d", v24, 46, v116, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %p %p %p %d", v22, 46, v23, "AVE_FrameRecv");
    }
  }

  return avcC_Dict;
}