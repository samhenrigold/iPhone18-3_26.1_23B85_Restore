uint64_t AVE_Session_AVC_Stop(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_Stop", a1);
      v5 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v19, "AVE_Session_AVC_Stop", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_Stop", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 12000);
    v7 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v6, 4u, v7);
    if (*(a1 + 16464) == 30568)
    {
      v21 = AVE_GetCurrTime();
      v8 = AVE_USL_Drv_Complete(*(a1 + 120), &v21);
    }

    else
    {
      v8 = 0;
    }

    v12 = *(a1 + 12000);
    v13 = AVE_GetCurrTime();
    AVE_TimeStats_AddEndTime(v12, 4u, v13);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v9 = AVE_Log_CheckConsole(0xCu);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v10, 12, v11, "AVE_Session_AVC_Stop", 429, "pINS != __null", 0);
        v10 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v10);
    }

    v8 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v14 = AVE_Log_CheckConsole(0xCu);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v15, 12, v16, "AVE_Session_AVC_Stop", a1, v8);
      v17 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v17, 12, v20, "AVE_Session_AVC_Stop", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 12, v16, "AVE_Session_AVC_Stop", a1, v8);
    }
  }

  return v8;
}

uint64_t AVE_Session_AVC_Destroy(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v41, "AVE_Session_AVC_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_Destroy", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 12000);
    v7 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v6, 1u, v7);
    if (*(a1 + 16464) == 30568)
    {
      v43 = AVE_GetCurrTime();
      AVE_USL_Drv_Stop(*(a1 + 120), &v43, 0);
    }

    if (AVE_Log_CheckLevel(2u, 0))
    {
      v8 = AVE_Log_CheckConsole(2u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(0);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = *(a1 + 10772);
      v14 = *(a1 + 16468);
      ProcCnt = AVE_USL_Drv_GetProcCnt(*(a1 + 120));
      DropCnt = AVE_USL_Drv_GetDropCnt(*(a1 + 120));
      if (v8)
      {
        printf("%lld %d AVE %s: ID: %lld Type: %d Enc: %d | Input: %d Proc: %lld Drop: %lld\n", v9, 2, v10, v11, v12, v13, v14, ProcCnt, DropCnt);
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(0);
        AVE_USL_Drv_GetProcCnt(*(a1 + 120));
        AVE_USL_Drv_GetDropCnt(*(a1 + 120));
      }

      syslog(3, "%lld %d AVE %s: ID: %lld Type: %d Enc: %d | Input: %d Proc: %lld Drop: %lld", v9, 2, v10);
    }

    v20 = AVE_USL_Drv_Destroy(*(a1 + 120));
    *(a1 + 120) = 0;
    v21 = *(a1 + 12000);
    v22 = AVE_GetCurrTime();
    AVE_TimeStats_AddEndTime(v21, 1u, v22);
    AVE_TimeStats_Calc(*(a1 + 12000));
    AVE_TimeStats_Print(*(a1 + 12000), 16, 6, 0, 0);
    AVE_DW_Uninit();
    v23 = *(a1 + 12000);
    if (v23)
    {
      AVE_TimeStats_Destroy(v23);
      *(a1 + 12000) = 0;
    }

    v24 = *(a1 + 18064);
    if (v24)
    {
      AVE_Dump_Uninit(v24);
      AVE_Dump_Destroy(*(a1 + 18064));
      *(a1 + 18064) = 0;
    }

    v25 = *(a1 + 16480);
    if (v25)
    {
      AVE_VCP::~AVE_VCP(v25);
      MEMORY[0x29C24DA40]();
      *(a1 + 16480) = 0;
    }

    v26 = *(a1 + 16488);
    if (v26)
    {
      AVE_SEI::~AVE_SEI(v26);
      MEMORY[0x29C24DA40]();
      *(a1 + 16488) = 0;
    }

    v27 = *(a1 + 16496);
    if (v27)
    {
      CFRelease(v27);
      *(a1 + 16496) = 0;
    }

    v28 = 0;
    v29 = a1 + 80;
    do
    {
      v30 = *(v29 + v28);
      if (v30)
      {
        CFRelease(v30);
        *(v29 + v28) = 0;
      }

      v28 += 8;
    }

    while (v28 != 24);
    v31 = *(a1 + 104);
    if (v31)
    {
      CFRelease(v31);
      *(a1 + 104) = 0;
    }

    v32 = *(a1 + 18072);
    if (v32)
    {
      CFRelease(v32);
      *(a1 + 18072) = 0;
    }

    v33 = *(a1 + 112);
    if (v33)
    {
      CFRelease(v33);
      *(a1 + 112) = 0;
    }

    v34 = *(a1 + 16560);
    if (v34)
    {
      CFRelease(v34);
      *(a1 + 16560) = 0;
    }

    v35 = *(a1 + 16568);
    if (v35)
    {
      CFRelease(v35);
      *(a1 + 16568) = 0;
    }

    AVE_Prop_Cfg_AVC_Uninit((a1 + 16592));
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v17 = AVE_Log_CheckConsole(0xCu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v18, 12, v19, "AVE_Session_AVC_Destroy", 462, "pINS != __null", 0);
        v18 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v18);
    }

    AVE_DW_Uninit();
    v20 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v36 = AVE_Log_CheckConsole(0xCu);
    v37 = AVE_GetCurrTime();
    v38 = AVE_Log_GetLevelStr(6);
    if (v36)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v37, 12, v38, "AVE_Session_AVC_Destroy", a1, v20);
      v39 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v39, 12, v42, "AVE_Session_AVC_Destroy", a1, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v37, 12, v38, "AVE_Session_AVC_Destroy", a1, v20);
    }
  }

  return v20;
}

uint64_t AVE_Session_AVC_StartSession(uint64_t a1, _DWORD *a2)
{
  v4 = AVE_DW_Get();
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v5 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_StartSession", a1, a2);
      v8 = AVE_GetCurrTime();
      v53 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 12, v53, "AVE_Session_AVC_StartSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_StartSession", a1, a2);
    }
  }

  if (a1 && a2)
  {
    if (*a2 < 1 || a2[1] <= 0)
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v19 = AVE_Log_CheckConsole(0xCu);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_AVC_StartSession", 4740, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
        }

        goto LABEL_29;
      }

LABEL_30:
      v20 = 4294965295;
      goto LABEL_31;
    }

    v9 = *(a1 + 12000);
    v10 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v9, 3u, v10);
    v11 = *a2;
    v12 = a2[1];
    *(a1 + 1440) = *a2;
    *(a1 + 1444) = v12;
    *(a1 + 11452) = v11;
    *(a1 + 11456) = v12;
    *(a1 + 764) = 1;
    AVE_PrepareCropParams(a1);
    if (AVE_Enc_CheckResolution(*(a1 + 68), 1, 1, *(a1 + 1440), *(a1 + 1444), 0))
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v13 = AVE_Log_CheckConsole(0xCu);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_AVC_StartSession", 4759, "ret == 0", a1, *(a1 + 56), *(a1 + 1440), *(a1 + 1444));
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
        }

LABEL_29:
        syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v14, 12, v15);
        goto LABEL_30;
      }

      goto LABEL_30;
    }

    AVE_SetEncoderDefault(a1);
    v21 = *(a1 + 12052) + 8;
    if (v21 <= *(a1 + 12056) + 8)
    {
      v21 = *(a1 + 12056) + 8;
    }

    updated = AVE_UpdatePixelBufferDict(*(a1 + 68), *(a1 + 64), 62, 1, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v21, 0, 0x1414C4C20, *(a1 + 16));
    if (updated)
    {
      v20 = updated;
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v23 = AVE_Log_CheckConsole(0x1Eu);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        if (v23)
        {
          v26 = 30;
          printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed %d\n", v24, 30, v25, "AVE_Session_AVC_StartSession", 4778, "ret == 0", v20);
          v27 = AVE_GetCurrTime();
          v59 = v20;
          v57 = 4778;
          v54 = AVE_Log_GetLevelStr(4);
          v28 = "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed %d";
LABEL_49:
          syslog(3, v28, v27, v26, v54, "AVE_Session_AVC_StartSession", v57, "ret == 0", v59, v61);
          goto LABEL_31;
        }

        v60 = v20;
        v58 = 4778;
        v55 = v25;
        v41 = 30;
        v42 = "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed %d";
        goto LABEL_65;
      }
    }

    else
    {
      *(a1 + 16464) = 30566;
      *(a1 + 712) = v4[103];
      if (*(a1 + 10892) == 1)
      {
        operator new();
      }

      if (*(a1 + 16) == 1)
      {
        v36 = 1;
      }

      else
      {
        v36 = 3;
      }

      v37 = AVE_SEI::Init(*(a1 + 16488), *(a1 + 56), 0, 0, 1, v36);
      if (v37)
      {
        v20 = v37;
        if (!AVE_Log_CheckLevel(0xCu, 4))
        {
          goto LABEL_31;
        }

        v38 = AVE_Log_CheckConsole(0xCu);
        v24 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(4);
        if (v38)
        {
          v26 = 12;
          printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v24, 12, v39, "AVE_Session_AVC_StartSession", 4811, "ret == 0", a1, *(a1 + 56));
          v27 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(4);
          v59 = a1;
          v61 = *(a1 + 56);
          v57 = 4811;
          v54 = v40;
          v28 = "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu";
          goto LABEL_49;
        }

        v60 = a1;
        v61 = *(a1 + 56);
        v58 = 4811;
        v55 = v39;
        v41 = 12;
        v42 = "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu";
LABEL_65:
        syslog(3, v42, v24, v41, v55, "AVE_Session_AVC_StartSession", v58, "ret == 0", v60, v61, v62);
        goto LABEL_31;
      }

      SupportedPresetDictionary = AVE_Prop_AVC_CreateSupportedPresetDictionary(a1);
      if (!SupportedPresetDictionary)
      {
        v47 = v4[30];
        if (v47)
        {
          *(a1 + 11468) = v47;
        }

        v48 = v4[29];
        if (v48 < 1)
        {
          v20 = 0;
        }

        else
        {
          v49 = (v4 + 32);
          v50 = (a1 + 11476);
          do
          {
            v52 = *v49;
            v49 += 12;
            v51 = v52;
            if ((v52 & 0x80000000) == 0)
            {
              *v50 = v51;
            }

            v20 = 0;
            v50 += 12;
            --v48;
          }

          while (v48);
        }

        goto LABEL_31;
      }

      v20 = SupportedPresetDictionary;
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v44 = AVE_Log_CheckConsole(0xCu);
        v24 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d\n", v24, 12, v45, "AVE_Session_AVC_StartSession", 4818, "ret == 0", a1, *(a1 + 56), v20);
          v46 = AVE_GetCurrTime();
          v56 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d", v46, 12, v56);
          goto LABEL_31;
        }

        v61 = *(a1 + 56);
        v62 = v20;
        v60 = a1;
        v58 = 4818;
        v55 = v45;
        v41 = 12;
        v42 = "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d";
        goto LABEL_65;
      }
    }

LABEL_31:
    v29 = *(a1 + 12000);
    v30 = AVE_GetCurrTime();
    AVE_TimeStats_AddEndTime(v29, 3u, v30);
    if (v20)
    {
      v31 = *(a1 + 16480);
      if (v31)
      {
        AVE_VCP::~AVE_VCP(v31);
        MEMORY[0x29C24DA40]();
        *(a1 + 16480) = 0;
      }
    }

    goto LABEL_34;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v16 = AVE_Log_CheckConsole(0xCu);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(4);
    if (v16)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v17, 12, v18, "AVE_Session_AVC_StartSession", 4736, "pINS != __null && pDim != __null", a1, a2);
      v17 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v17, 12);
  }

  v20 = 4294966295;
LABEL_34:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v32 = AVE_Log_CheckConsole(0xCu);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(6);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v33, 12, v34, "AVE_Session_AVC_StartSession", a1, a2, v20);
      v33 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v33);
  }

  return v20;
}

void AVE_PrepareCropParams(uint64_t a1)
{
  v2 = a1 + 13184;
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v3 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v3)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams\n", CurrTime, 12, LevelStr);
      v6 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", v6, 12, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", CurrTime, 12, LevelStr);
    }
  }

  v7 = *(a1 + 1440);
  v8 = *(a1 + 1444);
  *v2 = 0;
  *(a1 + 13188) = 0u;
  MinResolution = AVE_Enc_GetMinResolution(*(a1 + 68), 1, 1);
  v10 = *(a1 + 1444);
  if ((v10 & 0xF) != 0 || v10 < MinResolution[1])
  {
    if (*(a1 + 76) >= 12)
    {
      *(v2 + 3364) = v10;
    }

    v11 = (v10 + 15) & 0xFFFFFFF0;
    if (v11 <= MinResolution[1])
    {
      v11 = MinResolution[1];
    }

    *(a1 + 1444) = v11;
    *v2 = 1;
    *(a1 + 13200) = v11 - v8;
  }

  v12 = *(a1 + 1440);
  if ((v12 & 0xF) != 0 || v12 < *MinResolution)
  {
    if (*(a1 + 76) >= 12)
    {
      *(v2 + 3360) = v12;
    }

    v13 = (v12 + 15) & 0xFFFFFFF0;
    if (v13 <= *MinResolution)
    {
      v13 = *MinResolution;
    }

    *(a1 + 1440) = v13;
    *v2 = 1;
    *(a1 + 13192) = v13 - v7;
  }

  if (AVE_Log_CheckLevel(0x10u, 7))
  {
    v14 = AVE_Log_CheckConsole(0x10u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(7);
    if (v14)
    {
      printf("%lld %d AVE %s: FIG: input -> %dx%d\n", v15, 16, v16, v7, v8);
      v17 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v17, 16, v31, v7, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v15, 16, v16, v7, v8);
    }
  }

  if (AVE_Log_CheckLevel(0x10u, 7))
  {
    v18 = AVE_Log_CheckConsole(0x10u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(7);
    v21 = *(a1 + 1444);
    if (v18)
    {
      printf("%lld %d AVE %s: FIG: input multiple -> %dx%d\n", v19, 16, v20, *(a1 + 1440), v21);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v22, 16, v23, *(a1 + 1440), *(a1 + 1444));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v19, 16, v20, *(a1 + 1440), v21);
    }
  }

  if (AVE_Log_CheckLevel(0x10u, 7))
  {
    v24 = AVE_Log_CheckConsole(0x10u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(7);
    v27 = *(a1 + 13192);
    if (v24)
    {
      printf("%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d\n", v25, 16, v26, *(a1 + 13200), v27);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v28, 16, v29, *(a1 + 13200), *(a1 + 13192));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v25, 16, v26, *(a1 + 13200), v27);
    }
  }
}

double AVE_SetEncoderDefault(uint64_t a1)
{
  v2 = a1 + 14572;
  v3 = a1 + 10168;
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault\n", CurrTime, 12, LevelStr);
      v7 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", v7, 12, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", CurrTime, 12, LevelStr);
    }
  }

  v8 = 0;
  *(v3 + 588) = 0;
  *(a1 + 1308) = 1;
  *(v3 + 596) = 1;
  *(a1 + 1096) = 0x39D00000000;
  *(a1 + 1296) &= ~1u;
  *(v3 + 613) = 0;
  *(a1 + 10792) = 0x300000006;
  *(a1 + 10844) = 0x10000;
  *(v3 + 684) = 0;
  *(a1 + 10864) = 0;
  *(a1 + 10880) = 0;
  *(a1 + 10872) = 0;
  *(a1 + 10888) = 0;
  *(a1 + 10860) = -1;
  *(v3 + 687) = 0;
  *(a1 + 688) &= ~2u;
  v9 = *(a1 + 1336);
  *(v3 + 688) = 0;
  *(a1 + 11744) = 0u;
  *(a1 + 11728) = 0u;
  *(a1 + 11712) = 0u;
  *(a1 + 11696) = 0u;
  *(a1 + 11680) = 0u;
  *(a1 + 11664) = 0u;
  *(a1 + 11648) = 0u;
  *(a1 + 11632) = 0u;
  *(a1 + 11616) = 0u;
  *(a1 + 11600) = 0u;
  *(a1 + 11584) = 0u;
  *(a1 + 11568) = 0u;
  *(a1 + 11552) = 0u;
  *(a1 + 11536) = 0u;
  *(a1 + 11520) = 0u;
  *(a1 + 11504) = 0u;
  *(a1 + 11488) = 0u;
  *(a1 + 11472) = 0u;
  *(a1 + 10776) = 0;
  do
  {
    *(a1 + 11472 + v8) = 0xFFFFFFFF00000001;
    v8 += 48;
  }

  while (v8 != 288);
  *(a1 + 11464) = 0x100000006;
  *(a1 + 11760) = 1;
  *(v3 + 344) = 0;
  *(v3 + 1642) = 0;
  *(a1 + 11812) = -1;
  *(a1 + 11772) = 0;
  *(a1 + 11792) = 0;
  *(v3 + 1632) = 0;
  *(a1 + 11804) = 0;
  *(a1 + 1472) = 0;
  *(a1 + 1464) = 1;
  *(a1 + 1256) = 0x300000003;
  v10 = *(a1 + 1240);
  *(a1 + 10536) = 0;
  *(a1 + 1240) = v10 & 0xFFFFF8FF | 0x600;
  if (*(a1 + 76) <= 29)
  {
    v11 = 0;
  }

  else
  {
    v11 = 3;
  }

  *v3 = v11;
  *(v3 + 2) = 0;
  *(a1 + 10176) = 2;
  *(v3 + 5) = 0;
  *(a1 + 10244) = 1;
  *(v3 + 80) = 0;
  *(a1 + 10252) = 1;
  v12 = *(a1 + 1444);
  *(a1 + 10260) = v12;
  *(a1 + 10516) = 4;
  *(a1 + 10524) = 0;
  *(a1 + 1288) = 1;
  *(v3 + 354) = 0;
  *(v3 + 363) = 0;
  *(a1 + 1336) = v9 & 0xFBFEFDFF | 0x200;
  *(v3 + 372) = 0;
  *(a1 + 10604) = 0x1000000001;
  *(a1 + 10744) = 8;
  *(a1 + 1392) = -1;
  *(v3 + 12) = 3;
  *(v3 + 16) = 0;
  *(a1 + 1356) &= ~4u;
  *(a1 + 10188) = 0x800000001;
  *(v3 + 3) = 1;
  *(a1 + 1448) &= ~0x2000000uLL;
  *(a1 + 10544) = 21;
  *(a1 + 1136) = ((*(a1 + 1440) * v12) * 1.5 * 0.15 * 30.0);
  *(a1 + 1112) = 30;
  *(a1 + 11968) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0xBFF0000000000000;
  *(a1 + 1280) = 0xBFF0000000000000;
  *(a1 + 1132) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = xmmword_2954EAAD0;
  *(a1 + 1120) = 0;
  *(a1 + 1352) = 30;
  *(a1 + 1088) &= ~2uLL;
  *(a1 + 1252) = 1;
  *(a1 + 720) = 0;
  if (!*(v3 + 612))
  {
    *(a1 + 10892) = 0;
  }

  *(a1 + 11460) = 0;
  *(a1 + 692) = -1;
  *(a1 + 1232) = 0xC0000000CLL;
  *(a1 + 1344) = 0xC0000000CLL;
  *(a1 + 1336) = v9 & 0xFBFE7DAD | 0x8202;
  *(a1 + 1144) = 0x1A0000001ALL;
  *(a1 + 1152) = 26;
  *(a1 + 1192) = 0;
  *(a1 + 1160) = 0uLL;
  *(a1 + 1176) = 0uLL;
  *(a1 + 1324) = 1;
  *(a1 + 1328) = 0x100000001;
  *(a1 + 1128) = 0;
  *(a1 + 11448) = 30;
  *(a1 + 1296) &= ~2u;
  *(a1 + 11964) = 0;
  *(v3 + 1648) = 0;
  *(a1 + 11952) = 0;
  *(a1 + 11936) = 0uLL;
  *(a1 + 11920) = 0uLL;
  *(a1 + 11904) = 0uLL;
  *(a1 + 11888) = 0uLL;
  *(a1 + 11872) = 0uLL;
  *(a1 + 11856) = 0uLL;
  *(a1 + 11840) = 0uLL;
  *(a1 + 11824) = 0uLL;
  *(a1 + 12008) = 6;
  *(a1 + 12028) = 0;
  *(a1 + 12012) = 0uLL;
  *(a1 + 12036) = 1;
  *(a1 + 12040) = 0x100000000;
  *(a1 + 12064) = 0;
  *(a1 + 12048) = 0;
  *(a1 + 12054) = 0;
  *(a1 + 13056) = xmmword_2954EAAE0;
  *(a1 + 13072) = 1;
  *(v3 + 2908) = 0;
  *(a1 + 13088) = 0x100000001;
  *(a1 + 13096) = 0x1000000;
  *(a1 + 13100) = 5;
  *(v3 + 2940) = 1;
  *(a1 + 13112) = 0x200000002;
  *(a1 + 13120) = 2;
  *(v3 + 2956) = 0;
  *(v3 + 2968) = 0;
  *(v3 + 2981) = 0;
  *(v3 + 2983) = 0;
  *(a1 + 1104) = 24;
  v13 = *(a1 + 10892);
  if (v13 == 37 || v13 == 20)
  {
    *(a1 + 1104) = 152;
  }

  *(a1 + 13724) = 0;
  *(a1 + 13728) = 0x100000000;
  *(v3 + 3568) = 0;
  result = 0.0;
  *(a1 + 13760) = 0;
  *(a1 + 13768) = 0;
  *(a1 + 13740) = 0u;
  *(a1 + 13756) = 0;
  *(v3 + 3604) = xmmword_2954EAAF0;
  *(v3 + 3644) = xmmword_2954EAAF0;
  *&v15 = 0xC0000000CLL;
  *(&v15 + 1) = 0xC0000000CLL;
  *(v3 + 3620) = v15;
  *(v3 + 3660) = v15;
  *(a1 + 13804) = 16777217;
  *(v3 + 3640) = 0;
  *(a1 + 14108) = 1;
  *(a1 + 14116) = 0x200000000;
  *(a1 + 14124) = 0;
  *(a1 + 14131) = 0;
  *(a1 + 14140) = 0u;
  *(a1 + 14156) = 0;
  *(v3 + 3996) = 1;
  *(v3 + 4020) = 0;
  *(v3 + 4060) = 0;
  *(v3 + 4062) = 0;
  *v2 = 0;
  *(a1 + 14168) = 0u;
  *(a1 + 14208) = 0;
  *(a1 + 14192) = 0u;
  *(v2 + 1872) = -1;
  *(a1 + 696) = 0;
  *(a1 + 716) = 0;
  return result;
}

void AVE_UpdateCropParams(uint64_t a1, __CVBuffer *a2)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams\n", CurrTime, 12, LevelStr);
      v7 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", v7, 12, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", CurrTime, 12, LevelStr);
    }
  }

  if (*(a1 + 13184))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    v9 = AVE_PixelFmt_FindByType(PixelFormatType);
    if (v9)
    {
      v10 = *(v9 + 3);
      *(a1 + 12044) = v10;
    }

    else
    {
      v10 = *(a1 + 12044);
    }

    v12 = v10 != 3 && v10 != 0;
    v13 = v10 == 1;
    v14 = *(a1 + 13196);
    if (v14)
    {
      if (v10 == 1)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      *(a1 + 13196) = ((v14 + v15 - 1) & ~v13) >> v13;
    }

    v16 = *(a1 + 13200);
    if (v16)
    {
      *(a1 + 13200) = ((v16 + v13) & ~v13) >> v13;
    }

    v17 = *(a1 + 13188);
    if (v17)
    {
      *(a1 + 13188) = ((v17 + v12) & ~v12) >> v12;
    }

    v18 = *(a1 + 13192);
    if (v18)
    {
      *(a1 + 13192) = ((v18 + v12) & ~v12) >> v12;
    }

    if (AVE_Log_CheckLevel(0x10u, 7))
    {
      v19 = AVE_Log_CheckConsole(0x10u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(7);
      if (v19)
      {
        printf("%lld %d AVE %s: FIG: frame_crop_top_offset = %d frame_crop_bottom_offset %d frame_crop_left_offset = %d frame_crop_right_offset %d\n", v20, 16, v21, *(a1 + 13196), *(a1 + 13200), *(a1 + 13188), *(a1 + 13192));
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: FIG: frame_crop_top_offset = %d frame_crop_bottom_offset %d frame_crop_left_offset = %d frame_crop_right_offset %d", v20);
    }
  }
}

void AVE_SetEncoderBasedOnFirstFrame()
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v0 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v0)
    {
      printf("%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame\n", CurrTime, 12, LevelStr);
      v3 = AVE_GetCurrTime();
      v4 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", v3, 12, v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", CurrTime, 12, LevelStr);
    }
  }
}

uint64_t AVE_ValidateEncoderParameters(uint64_t a1)
{
  v2 = AVE_DW_Get();
  v320 = 0;
  v319 = 0.0;
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v3 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v3)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters\n", CurrTime, 12, LevelStr);
      v6 = AVE_GetCurrTime();
      v289 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", v6, 12, v289);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", CurrTime, 12, LevelStr);
    }
  }

  v7 = *(a1 + 16856);
  if (v7 >= 0.0 && AVE_AVC_SetCQFactor(a1, v7) && AVE_Log_CheckLevel(0x1Eu, 5))
  {
    v8 = AVE_Log_CheckConsole(0x1Eu);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(5);
    if (v8)
    {
      printf("%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]\n", v9, 30, v10);
      v11 = AVE_GetCurrTime();
      v290 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v11, 30, v290);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v9, 30, v10);
    }
  }

  v12 = *(a1 + 16848);
  if (v12 >= 0.0 && AVE_AVC_SetQuality(a1, v12) && AVE_Log_CheckLevel(0x1Eu, 5))
  {
    v13 = AVE_Log_CheckConsole(0x1Eu);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(5);
    if (v13)
    {
      printf("%lld %d AVE %s: FIG: kVTCompressionPropertyKey_Quality property supports values only in the range of [0,1]\n", v14, 30, v15);
      v16 = AVE_GetCurrTime();
      v291 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: FIG: kVTCompressionPropertyKey_Quality property supports values only in the range of [0,1]", v16, 30, v291);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: kVTCompressionPropertyKey_Quality property supports values only in the range of [0,1]", v14, 30, v15);
    }
  }

  if ((*(a1 + 1132) & 0xFFFFFFFE) == 6)
  {
    v17 = AVE_RC_DecideVBVMaxBitRate(*(v2 + 206), *(a1 + 16828), &v320);
    if (v17)
    {
      v18 = v17;
      if (AVE_Log_CheckLevel(0x10u, 4))
      {
        v19 = AVE_Log_CheckConsole(0x10u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d\n", v20, 16, v21, "AVE_ValidateEncoderParameters", 1921, "ret == 0", a1, *(a1 + 56), *(v2 + 206), *(a1 + 16828));
          v22 = AVE_GetCurrTime();
          v292 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d", v22, 16, v292);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d", v20, 16, v21);
        }
      }

      return v18;
    }

    *(a1 + 1208) = v320;
  }

  v23 = AVE_RC_DecideVBVBufferSize(v2[104], *(a1 + 17864), *(a1 + 16832), *(a1 + 1120), &v319);
  if (v23)
  {
    v18 = v23;
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v24 = AVE_Log_CheckConsole(0x10u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx\n", v25, 16, v26, "AVE_ValidateEncoderParameters", 1932, "ret == 0", a1, *(a1 + 56), v2[104], *(a1 + 17864), *(a1 + 16832), *(a1 + 1120));
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx", v25, 16, v26);
    }

    return v18;
  }

  v27 = v319;
  *(a1 + 1216) = v319;
  v28 = AVE_RC_DecideVBVInitialDelay(v2[105], *(a1 + 17872), *(a1 + 16840), v27, *(a1 + 1120), &v319);
  if (!v28)
  {
    v33 = (a1 + 10168);
    *(a1 + 1224) = v319;
    v34 = *(a1 + 76);
    if (v34 >= 30)
    {
      v35 = *(a1 + 1336);
      if ((v35 & 0x200) != 0)
      {
        if (AVE_Log_CheckLevel(0x10u, 5))
        {
          v36 = AVE_Log_CheckConsole(0x10u);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(5);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d current SoC doesn't support ANFD.\n", v37, 16, v38, "AVE_ValidateEncoderParameters", 1956);
            v39 = AVE_GetCurrTime();
            v294 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support ANFD.", v39, 16, v294, "AVE_ValidateEncoderParameters", 1956);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support ANFD.", v37, 16, v38, "AVE_ValidateEncoderParameters", 1956);
          }
        }

        v35 = *(a1 + 1336) & 0xFFFFFDFF;
        *(a1 + 1336) = v35;
      }

      if ((v35 & 0x40) != 0)
      {
        if (AVE_Log_CheckLevel(0x10u, 5))
        {
          v41 = AVE_Log_CheckConsole(0x10u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(5);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA.\n", v42, 16, v43, "AVE_ValidateEncoderParameters", 1963);
            v44 = AVE_GetCurrTime();
            v295 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA.", v44, 16, v295, "AVE_ValidateEncoderParameters", 1963);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA.", v42, 16, v43, "AVE_ValidateEncoderParameters", 1963);
          }
        }

        *(a1 + 1336) &= ~0x40u;
      }

      if (*(a1 + 10248) == 1)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v45 = AVE_Log_CheckConsole(3u);
          v46 = AVE_GetCurrTime();
          v47 = AVE_Log_GetLevelStr(4);
          if (v45)
          {
            printf("%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.\n", v46, 3, v47, "AVE_ValidateEncoderParameters", 1968, "!pINS->VideoParams.bSliceEncodingMode");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.");
        }

        return 4294966295;
      }

      v34 = *(a1 + 76);
    }

    if (v34 >= 17)
    {
      v48 = *(a1 + 716);
      if (*(a1 + 10752) == 2)
      {
        v48 &= 0xFFFFFC3F;
        *(a1 + 716) = v48;
      }

      if ((v48 & 0x3C0) != 0)
      {
        *(a1 + 716) = v48 & 0xFFFFFC3F;
        if (AVE_Log_CheckLevel(0x10u, 5))
        {
          v49 = AVE_Log_CheckConsole(0x10u);
          v50 = AVE_GetCurrTime();
          v51 = AVE_Log_GetLevelStr(5);
          if (v49)
          {
            printf("%lld %d AVE %s: FIG: MCTF for AVC is not supported yet!\n", v50, 16, v51);
            v52 = AVE_GetCurrTime();
            v296 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: FIG: MCTF for AVC is not supported yet!", v52, 16, v296);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: MCTF for AVC is not supported yet!", v50, 16, v51);
          }
        }
      }
    }

    else
    {
      *(a1 + 716) &= 0xFFFFFC3F;
    }

    v53 = *(a1 + 1132);
    if (v53 == 4)
    {
      if (*(a1 + 16496))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v57 = AVE_Log_CheckConsole(3u);
          v58 = AVE_GetCurrTime();
          v59 = AVE_Log_GetLevelStr(4);
          if (v57)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail\n", v58, 3, v59, "AVE_ValidateEncoderParameters", 2010, "false", *(a1 + 10892));
            v58 = AVE_GetCurrTime();
            v59 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail", v58, 3, v59, "AVE_ValidateEncoderParameters", 2010, "false", *(a1 + 10892));
        }

        return 4294966296;
      }
    }

    else if (v53 == 20 && *(a1 + 10892) != 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v54 = AVE_Log_CheckConsole(3u);
        v55 = AVE_GetCurrTime();
        v56 = AVE_Log_GetLevelStr(4);
        if (v54)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = %d. Fail.\n", v55, 3, v56, "AVE_ValidateEncoderParameters", 2001, "false", *(a1 + 10892), *(a1 + 1132));
          v55 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = %d. Fail.", v55);
      }

      return 4294966295;
    }

    v60 = *(a1 + 1120);
    if ((v60 & 0x80000000) == 0)
    {
      v61 = *(a1 + 1256);
      goto LABEL_83;
    }

    *(a1 + 1120) = v60 | 4;
    v61 = *(a1 + 1256);
    if (v61 == 2)
    {
      v61 = 3;
      *(a1 + 1256) = 3;
    }

    if (v53 != 4)
    {
LABEL_83:
      if (v61)
      {
        if (*(a1 + 76) >= 3)
        {
          if (v61 > 3)
          {
            if (AVE_Log_CheckLevel(0x10u, 5))
            {
              v72 = AVE_Log_CheckConsole(0x10u);
              v73 = AVE_GetCurrTime();
              v74 = AVE_Log_GetLevelStr(5);
              if (v72)
              {
                printf("%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!\n", v73, 16, v74, "AVE_ValidateEncoderParameters", 2061, *(a1 + 1256), 3);
                v73 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(5);
              }

              syslog(3, "%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!", v73);
            }

            *(a1 + 1256) = 3;
            v75 = *(a1 + 1240);
LABEL_110:
            v80 = *(a1 + 1264);
            if (v80 == 1)
            {
              *(a1 + 1268) = 0;
              *(a1 + 1272) = 0xBFF0000000000000;
              *(a1 + 1280) = 0xBFF0000000000000;
              *(a1 + 1252) = 0;
              *(a1 + 1260) = 1;
              v75 &= ~0x400u;
              *(a1 + 1240) = v75;
              *(a1 + 1288) = 1;
            }

            else if (v80 <= 0 && *(a1 + 1268) <= 0 && *(a1 + 1272) <= 0.0 && *(a1 + 1280) <= 0.0)
            {
              *(a1 + 1264) = 30;
            }

            if (!*(a1 + 1256))
            {
              v75 &= ~0x400u;
              *(a1 + 1240) = v75;
            }

            if (((*(a1 + 17884) | *(a1 + 17880)) & 0x400) == 0 && (v75 & 0x400) != 0 && (*(a1 + 1123) & 0x80) != 0)
            {
              *(a1 + 1240) = v75 & 0xFFFFFBFF;
            }

            if (*(a1 + 1232) <= -13)
            {
              *(a1 + 1232) = -6 * *(a1 + 12052);
            }

            if (*(a1 + 1236) <= -13)
            {
              if (*(a1 + 1132) == 20)
              {
                v81 = 51;
              }

              else
              {
                v81 = 48;
              }

              *(a1 + 1236) = v81;
            }

            if (*(a1 + 1344) <= -13)
            {
              *(a1 + 1344) = -6 * *(a1 + 12052);
            }

            v82 = (a1 + 1344);
            if (*(a1 + 1348) <= -13)
            {
              if (*(a1 + 1132) == 20)
              {
                v83 = 51;
              }

              else
              {
                v83 = 48;
              }

              *(a1 + 1348) = v83;
            }

            if (AVE_CheckQPRange((a1 + 1344), *(a1 + 12052) + 8))
            {
              if (AVE_Log_CheckLevel(3u, 4))
              {
                v84 = AVE_Log_CheckConsole(3u);
                v85 = AVE_GetCurrTime();
                v86 = AVE_Log_GetLevelStr(4);
                if (v84)
                {
                  printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]\n", v85, 3, v86, "AVE_ValidateEncoderParameters", 2148, "false", *(a1 + 1344), *(a1 + 1348));
                  v85 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]", v85);
              }

              return 4294966295;
            }

            v87 = (a1 + 1232);
            if (AVE_CheckQPRange((a1 + 1232), *(a1 + 12052) + 8))
            {
              if (AVE_Log_CheckLevel(3u, 4))
              {
                v88 = AVE_Log_CheckConsole(3u);
                v89 = AVE_GetCurrTime();
                v90 = AVE_Log_GetLevelStr(4);
                if (v88)
                {
                  printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]\n", v89, 3, v90, "AVE_ValidateEncoderParameters", 2156, "false", *(a1 + 1232), *(a1 + 1236));
                  v89 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]", v89);
              }

              return 4294966295;
            }

            if (*v87 < *v82)
            {
              *v87 = *v82;
            }

            v91 = *(a1 + 1348);
            if (*(a1 + 1236) > v91)
            {
              *(a1 + 1236) = v91;
            }

            v92 = *(a1 + 10252);
            if (v92 >= 33)
            {
              if (!AVE_Log_CheckLevel(3u, 4))
              {
                return 4294966295;
              }

              v99 = AVE_Log_CheckConsole(3u);
              v100 = AVE_GetCurrTime();
              v101 = AVE_Log_GetLevelStr(4);
              if (v99)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)\n", v100, 3, v101, "AVE_ValidateEncoderParameters", 2178, "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))", *(v33 + 21), 32);
                v100 = AVE_GetCurrTime();
                v101 = AVE_Log_GetLevelStr(4);
              }

              v317 = *(v33 + 21);
              v318 = 32;
              v315 = 2178;
              v316 = "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))";
              v299 = v101;
              v102 = "%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)";
            }

            else
            {
              if (v92)
              {
                v93 = *(a1 + 12008);
                if (v93 != 4)
                {
                  if (v93 != 2)
                  {
                    goto LABEL_196;
                  }

                  if (*(a1 + 13732))
                  {
                    if (AVE_Log_CheckLevel(0x10u, 5))
                    {
                      v94 = AVE_Log_CheckConsole(0x10u);
                      v95 = AVE_GetCurrTime();
                      v96 = AVE_Log_GetLevelStr(5);
                      v97 = *(a1 + 12008);
                      if (v94)
                      {
                        printf("%lld %d AVE %s: profile %d and entropy_coding_mode_flag is not EntropyModeCAVLC. setting it to EntropyModeCAVLC.\n", v95, 16, v96, v97);
                        v98 = AVE_GetCurrTime();
                        v298 = AVE_Log_GetLevelStr(5);
                        syslog(3, "%lld %d AVE %s: profile %d and entropy_coding_mode_flag is not EntropyModeCAVLC. setting it to EntropyModeCAVLC.", v98, 16, v298, *(a1 + 12008));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: profile %d and entropy_coding_mode_flag is not EntropyModeCAVLC. setting it to EntropyModeCAVLC.", v95, 16, v96, v97);
                      }
                    }

                    *(a1 + 13732) = 0;
                  }
                }

                if (*(a1 + 13807) == 1)
                {
                  if (AVE_Log_CheckLevel(0x10u, 5))
                  {
                    v105 = AVE_Log_CheckConsole(0x10u);
                    v106 = AVE_GetCurrTime();
                    v107 = AVE_Log_GetLevelStr(5);
                    v108 = *(a1 + 12008);
                    if (v105)
                    {
                      printf("%lld %d AVE %s: FIG: profile %d and transform_8x8_mode_flag is true. setting it to false.\n", v106, 16, v107, v108);
                      v109 = AVE_GetCurrTime();
                      v300 = AVE_Log_GetLevelStr(5);
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and transform_8x8_mode_flag is true. setting it to false.", v109, 16, v300, *(a1 + 12008));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and transform_8x8_mode_flag is true. setting it to false.", v106, 16, v107, v108);
                    }
                  }

                  *(a1 + 13807) = 0;
                  *(a1 + 10176) = 0;
                }

                if (*(a1 + 13808) == 1)
                {
                  if (AVE_Log_CheckLevel(0x10u, 5))
                  {
                    v110 = AVE_Log_CheckConsole(0x10u);
                    v111 = AVE_GetCurrTime();
                    v112 = AVE_Log_GetLevelStr(5);
                    v113 = *(a1 + 12008);
                    if (v110)
                    {
                      printf("%lld %d AVE %s: FIG: profile %d and pic_scaling_matrix_present_flag is true. setting it to false.\n", v111, 16, v112, v113);
                      v114 = AVE_GetCurrTime();
                      v301 = AVE_Log_GetLevelStr(5);
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and pic_scaling_matrix_present_flag is true. setting it to false.", v114, 16, v301, *(a1 + 12008));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and pic_scaling_matrix_present_flag is true. setting it to false.", v111, 16, v112, v113);
                    }
                  }

                  *(a1 + 13808) = 0;
                }

                v115 = 0;
                v116 = a1 + 13812;
                do
                {
                  if (*(v116 + v115) >= 1)
                  {
                    if (AVE_Log_CheckLevel(0x10u, 5))
                    {
                      v117 = AVE_Log_CheckConsole(0x10u);
                      v118 = AVE_GetCurrTime();
                      v119 = AVE_Log_GetLevelStr(5);
                      v120 = *(a1 + 12008);
                      if (v117)
                      {
                        printf("%lld %d AVE %s: FIG: profile %d and second_chroma_qp_index_offset is > 0. setting it to 0.\n", v118, 16, v119, v120);
                        v118 = AVE_GetCurrTime();
                        v119 = AVE_Log_GetLevelStr(5);
                        v120 = *(a1 + 12008);
                      }

                      syslog(3, "%lld %d AVE %s: FIG: profile %d and second_chroma_qp_index_offset is > 0. setting it to 0.", v118, 16, v119, v120);
                    }

                    *(v116 + v115) = 0;
                  }

                  v115 += 4;
                }

                while (v115 != 32);
                v93 = *(a1 + 12008);
LABEL_196:
                if (v93 != 6 && v93 != 0)
                {
                  goto LABEL_219;
                }

                v122 = *(a1 + 12044);
                v123 = AVE_Log_CheckLevel(0x10u, 6);
                if (v122 == 3)
                {
                  if (v123)
                  {
                    v127 = AVE_Log_CheckConsole(0x10u);
                    v128 = AVE_GetCurrTime();
                    v129 = AVE_Log_GetLevelStr(6);
                    if (v127)
                    {
                      printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v128, 16, v129, "AVE_ValidateEncoderParameters", 2245, *(a1 + 12008), 9);
                      v128 = AVE_GetCurrTime();
                      AVE_Log_GetLevelStr(6);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v128);
                  }

                  v133 = 9;
                }

                else
                {
                  if (v122 != 2)
                  {
                    if (v123)
                    {
                      v130 = AVE_Log_CheckConsole(0x10u);
                      v131 = AVE_GetCurrTime();
                      v132 = AVE_Log_GetLevelStr(6);
                      if (v130)
                      {
                        printf("%lld %d AVE %s: %s:%d chroma format idc %d profile %d\n", v131, 16, v132, "AVE_ValidateEncoderParameters", 2251, *(a1 + 12044), *(a1 + 12008));
                        v131 = AVE_GetCurrTime();
                        AVE_Log_GetLevelStr(6);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d chroma format idc %d profile %d", v131);
                    }

LABEL_219:
                    *(a1 + 1368) = AVE_Enc_DecideThroughputMode(*(v2 + 256), *(a1 + 18004), *(a1 + 68), *(a1 + 76), *(a1 + 64), 1, *(a1 + 12044), *(a1 + 16628), *(a1 + 10892), *(a1 + 692), *(a1 + 1112) * ((*(a1 + 1440) + 15) >> 4) * ((*(a1 + 1444) + 15) >> 4), *(a1 + 1440), *(a1 + 1444));
                    if (*(a1 + 76) >= 30 && !*(a1 + 692) && *(a1 + 16628) >= 1)
                    {
                      *(a1 + 688) |= 0x100u;
                      *(a1 + 1256) = 0;
                      *(a1 + 1240) &= 0xFFFFFAFF;
                    }

                    if (*(a1 + 1308) > 1)
                    {
                      if ((v134 = *(a1 + 10892), v134 <= 0x26) && ((1 << v134) & 0x6000100000) != 0 || v134 == 10000)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v135 = AVE_Log_CheckConsole(0x10u);
                          v136 = AVE_GetCurrTime();
                          v137 = AVE_Log_GetLevelStr(5);
                          v138 = *(a1 + 1308);
                          if (v135)
                          {
                            printf("%lld %d AVE %s: FIG: usageMode = %d and reference number of P %d -> 1\n", v136, 16, v137, *(a1 + 10892), v138);
                            v139 = AVE_GetCurrTime();
                            v140 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and reference number of P %d -> 1", v139, 16, v140, *(a1 + 10892), *(a1 + 1308));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and reference number of P %d -> 1", v136, 16, v137, *(a1 + 10892), v138);
                          }
                        }

                        *(a1 + 1308) = 1;
                      }
                    }

                    if (*(a1 + 12060) == 1)
                    {
                      v141 = *(a1 + 10892);
                      if (v141 <= 0x26 && ((1 << v141) & 0x6000100002) != 0 || v141 == 10000)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v142 = AVE_Log_CheckConsole(0x10u);
                          v143 = AVE_GetCurrTime();
                          v144 = AVE_Log_GetLevelStr(5);
                          v145 = *(a1 + 10892);
                          if (v142)
                          {
                            printf("%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.\n", v143, 16, v144, v145);
                            v146 = AVE_GetCurrTime();
                            v302 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.", v146, 16, v302, *(a1 + 10892));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.", v143, 16, v144, v145);
                          }
                        }

                        *(a1 + 12060) = 0;
                      }

                      if (*(a1 + 12008) != 9)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v147 = AVE_Log_CheckConsole(0x10u);
                          v148 = AVE_GetCurrTime();
                          v149 = AVE_Log_GetLevelStr(5);
                          v150 = *(a1 + 12008);
                          if (v147)
                          {
                            printf("%lld %d AVE %s: profile %d and bIsLossless is true not supported. Set to High444P.\n", v148, 16, v149, v150);
                            v151 = AVE_GetCurrTime();
                            v303 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: profile %d and bIsLossless is true not supported. Set to High444P.", v151, 16, v303, *(a1 + 12008));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: profile %d and bIsLossless is true not supported. Set to High444P.", v148, 16, v149, v150);
                          }
                        }

                        *(a1 + 12008) = 9;
                        *(a1 + 12036) = 17;
                      }

                      if (*(a1 + 1132) != 3)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v152 = AVE_Log_CheckConsole(0x10u);
                          v153 = AVE_GetCurrTime();
                          v154 = AVE_Log_GetLevelStr(5);
                          v155 = *(a1 + 1132);
                          if (v152)
                          {
                            printf("%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.\n", v153, 16, v154, v155);
                            v156 = AVE_GetCurrTime();
                            v304 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.", v156, 16, v304, *(a1 + 1132));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.", v153, 16, v154, v155);
                          }
                        }

                        *(a1 + 1132) = 3;
                      }

                      if (*(a1 + 1336))
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v157 = AVE_Log_CheckConsole(0x10u);
                          v158 = AVE_GetCurrTime();
                          v159 = AVE_Log_GetLevelStr(5);
                          v160 = *(a1 + 1336);
                          if (v157)
                          {
                            printf("%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0.\n", v158, 16, v159, "AVE_ValidateEncoderParameters", 2350, v160);
                            v161 = AVE_GetCurrTime();
                            v162 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0.", v161, 16, v162, "AVE_ValidateEncoderParameters", 2350, *(a1 + 1336));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0.", v158, 16, v159, "AVE_ValidateEncoderParameters", 2350, v160);
                          }
                        }

                        *(a1 + 1336) = 0;
                      }

                      if ((*(a1 + 1352) & 0x1E) != 0)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v163 = AVE_Log_CheckConsole(0x10u);
                          v164 = AVE_GetCurrTime();
                          v165 = AVE_Log_GetLevelStr(5);
                          v166 = *(a1 + 1352);
                          if (v163)
                          {
                            printf("%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0\n", v164, 16, v165, v166);
                            v167 = AVE_GetCurrTime();
                            v305 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0", v167, 16, v305, *(a1 + 1352));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0", v164, 16, v165, v166);
                          }
                        }

                        *(a1 + 1352) = 0;
                      }

                      v168 = -6 * *(a1 + 12052);
                      *(a1 + 1348) = v168;
                      *(a1 + 1344) = v168;
                      *(a1 + 1236) = v168;
                      *(a1 + 1232) = v168;
                      *(a1 + 1152) = v168;
                      *(a1 + 1148) = v168;
                      *(a1 + 1144) = v168;
                      if (*(a1 + 13732) == 1)
                      {
                        v169 = ((*(a1 + 1440) >> 4) + 31) & 0x1FFFFFE0;
                        if (v169 > 0x100 || (*(a1 + 1444) >> 4) * v169 > 0xC000)
                        {
                          if (AVE_Log_CheckLevel(0x10u, 5))
                          {
                            v170 = AVE_Log_CheckConsole(0x10u);
                            v171 = AVE_GetCurrTime();
                            v172 = AVE_Log_GetLevelStr(5);
                            v173 = *(a1 + 1440);
                            v174 = *(a1 + 13732);
                            if (v170)
                            {
                              printf("%lld %d AVE %s: FIG: ui32Width and ui32Height = (%d,%d), bIsLossless is true and entropy_coding_mode_flag = %d not supported. Set it to cavlc.\n", v171, 16, v172, v173, *(a1 + 1444), v174);
                              v175 = AVE_GetCurrTime();
                              v176 = AVE_Log_GetLevelStr(5);
                              syslog(3, "%lld %d AVE %s: FIG: ui32Width and ui32Height = (%d,%d), bIsLossless is true and entropy_coding_mode_flag = %d not supported. Set it to cavlc.", v175, 16, v176, *(a1 + 1440), *(a1 + 1444), *(a1 + 13732));
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: FIG: ui32Width and ui32Height = (%d,%d), bIsLossless is true and entropy_coding_mode_flag = %d not supported. Set it to cavlc.", v171, 16, v172, v173, *(a1 + 1444), v174);
                            }
                          }

                          *(a1 + 13732) = 0;
                        }
                      }

                      if (*(a1 + 1464))
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v177 = AVE_Log_CheckConsole(0x10u);
                          v178 = AVE_GetCurrTime();
                          v179 = AVE_Log_GetLevelStr(5);
                          v180 = *(a1 + 1464);
                          if (v177)
                          {
                            printf("%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.\n", v178, 16, v179, v180);
                            v181 = AVE_GetCurrTime();
                            v306 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.", v181, 16, v306, *(a1 + 1464));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.", v178, 16, v179, v180);
                          }
                        }

                        *(a1 + 1464) = 0;
                      }

                      if ((*(a1 + 1336) & 0x40) != 0)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v182 = AVE_Log_CheckConsole(0x10u);
                          v183 = AVE_GetCurrTime();
                          v184 = AVE_Log_GetLevelStr(5);
                          v185 = *(a1 + 1336);
                          if (v182)
                          {
                            printf("%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.\n", v183, 16, v184, v185);
                            v186 = AVE_GetCurrTime();
                            v307 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.", v186, 16, v307, *(a1 + 1336));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.", v183, 16, v184, v185);
                          }
                        }

                        *(a1 + 1336) &= ~0x40u;
                      }
                    }

                    v187 = *(a1 + 11460);
                    if (v187 >= *(a1 + 1112))
                    {
                      *(a1 + 11460) = 0;
                      *(a1 + 1288) = 1;
                      v192 = *(a1 + 1256) == 0;
                    }

                    else if (*(a1 + 1256))
                    {
                      if (v187 < 1)
                      {
                        v192 = 0;
                      }

                      else
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v188 = AVE_Log_CheckConsole(0x10u);
                          v189 = AVE_GetCurrTime();
                          v190 = AVE_Log_GetLevelStr(5);
                          if (v188)
                          {
                            printf("%lld %d AVE %s: FIG: Disable B frames (and honor the iAverageNonDroppableFrameRate request)\n", v189, 16, v190);
                            v191 = AVE_GetCurrTime();
                            v308 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: Disable B frames (and honor the iAverageNonDroppableFrameRate request)", v191, 16, v308);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: Disable B frames (and honor the iAverageNonDroppableFrameRate request)", v189, 16, v190);
                          }
                        }

                        *(a1 + 1256) = 0x100000000;
                        v192 = 1;
                        *(a1 + 1288) = 1;
                        *(a1 + 1240) &= ~0x400u;
                      }
                    }

                    else
                    {
                      v192 = 1;
                    }

                    if ((*(a1 + 10764) & 1) == 0)
                    {
                      if (*(a1 + 1132) == 20)
                      {
                        v192 = 1;
                      }

                      if (!v192)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v193 = AVE_Log_CheckConsole(0x10u);
                          v194 = AVE_GetCurrTime();
                          v195 = AVE_Log_GetLevelStr(5);
                          v196 = *(a1 + 1256);
                          if (v193)
                          {
                            printf("%lld %d AVE %s: FIG: eRCMode %d bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true\n", v194, 16, v195, *(a1 + 1132), v196);
                            v197 = AVE_GetCurrTime();
                            v198 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode %d bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true", v197, 16, v198, *(a1 + 1132), *(a1 + 1256));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode %d bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true", v194, 16, v195, *(a1 + 1132), v196);
                          }
                        }

                        *(a1 + 10764) = 1;
                      }
                    }

                    if (*(a1 + 16496))
                    {
                      *(a1 + 10540) = 1;
                    }

                    if (*(a1 + 1256) && *(a1 + 1476) == 1)
                    {
                      if (AVE_Log_CheckLevel(0x10u, 5))
                      {
                        v199 = AVE_Log_CheckConsole(0x10u);
                        v200 = AVE_GetCurrTime();
                        v201 = AVE_Log_GetLevelStr(5);
                        v202 = *(a1 + 1256);
                        if (v199)
                        {
                          printf("%lld %d AVE %s: FIG: BFrames = %d and LowDelay is true. Default to regular BFrames case.\n", v200, 16, v201, v202);
                          v203 = AVE_GetCurrTime();
                          v309 = AVE_Log_GetLevelStr(5);
                          syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and LowDelay is true. Default to regular BFrames case.", v203, 16, v309, *(a1 + 1256));
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and LowDelay is true. Default to regular BFrames case.", v200, 16, v201, v202);
                        }
                      }

                      *(a1 + 1476) = 0;
                    }

                    if (!AVE_DevCap_FindSearchRangeMode(*(a1 + 68), 1, 1, *v33))
                    {
                      if (AVE_Log_CheckLevel(3u, 4))
                      {
                        v213 = AVE_Log_CheckConsole(3u);
                        v214 = AVE_GetCurrTime();
                        v215 = AVE_Log_GetLevelStr(4);
                        if (v213)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | FIG: invalid search_range\n", v214, 3, v215, "AVE_ValidateEncoderParameters", 2473, "pEntry != __null");
                          AVE_GetCurrTime();
                          AVE_Log_GetLevelStr(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: invalid search_range");
                      }

                      return 4294966295;
                    }

                    if (*(a1 + 10857) == 1 && (*(a1 + 10783) & 1) == 0 && *(a1 + 1132) != 4 && !*(a1 + 16496) && (*(a1 + 10858) & 1) == 0)
                    {
                      if (*(a1 + 10904) == 1)
                      {
                        *(a1 + 1352) = 0;
                        *(a1 + 1336) = 0;
                      }

                      *(a1 + 10764) = 1;
                    }

                    if ((*(a1 + 10904) & 1) != 0 || (*(a1 + 716) & 0x3C0) != 0 || *(a1 + 16496))
                    {
                      *(a1 + 1128) = 0;
                      *(a1 + 1120) &= ~0x80000000uLL;
                    }

                    else if ((*(a1 + 1123) & 0x80) != 0)
                    {
                      *(a1 + 11460) = 0;
                      *(a1 + 1104) |= 0x40uLL;
                    }

                    v204 = *(a1 + 1336);
                    if ((v204 & 0x40) != 0)
                    {
                      v205 = *(a1 + 1440) >> 4;
                      v206 = *(a1 + 1444) >> 4;
                      v207 = (v205 + 31) & 0x1FFFFFE0;
                      if (v207 > 0x80 || v207 * v206 >= 0x2D01)
                      {
                        v208 = (((v205 + 1) >> 1) + 31) & 0x1FFFFFE0;
                        if (v208 > 0x80 || v208 * ((v206 + 1) >> 1) >= 0x2D01)
                        {
                          v204 &= ~0x40u;
                          *(a1 + 1336) = v204;
                        }
                      }
                    }

                    if (*(a1 + 11792) >= 0x1Fu)
                    {
                      if (AVE_Log_CheckLevel(0x10u, 5))
                      {
                        v209 = AVE_Log_CheckConsole(0x10u);
                        v210 = AVE_GetCurrTime();
                        v211 = AVE_Log_GetLevelStr(5);
                        if (v209)
                        {
                          printf("%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM\n", v210, 16, v211, 30);
                          v212 = AVE_GetCurrTime();
                          v310 = AVE_Log_GetLevelStr(5);
                          syslog(3, "%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM", v212, 16, v310, 30);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM", v210, 16, v211, 30);
                        }
                      }

                      *(a1 + 11792) = 30;
                      v204 = *(a1 + 1336);
                    }

                    if ((v204 & 0x10) != 0)
                    {
                      v216 = *(a1 + 1132);
                      if (v216 <= 0x14 && ((1 << v216) & 0x100009) != 0)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v217 = AVE_Log_CheckConsole(0x10u);
                          v218 = AVE_GetCurrTime();
                          v219 = AVE_Log_GetLevelStr(5);
                          if (v217)
                          {
                            printf("%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x (!= 0) is not supported. set QPMod feature to 0\n", v218, 16, v219, "AVE_ValidateEncoderParameters", 2560, *(a1 + 1132), *(a1 + 1336));
                            v218 = AVE_GetCurrTime();
                            AVE_Log_GetLevelStr(5);
                          }

                          syslog(3, "%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x (!= 0) is not supported. set QPMod feature to 0", v218);
                        }

                        v204 = 0;
                        *(a1 + 1336) = 0;
                        v216 = *(a1 + 1132);
                      }

                      if (v216 == 100)
                      {
                        if (AVE_Log_CheckLevel(3u, 4))
                        {
                          v220 = AVE_Log_CheckConsole(3u);
                          v221 = AVE_GetCurrTime();
                          v222 = AVE_Log_GetLevelStr(4);
                          if (v220)
                          {
                            printf("%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.\n", v221, 3, v222, "AVE_ValidateEncoderParameters", 2569, "pINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_HwVal", "AVE_ValidateEncoderParameters", 2569, *(a1 + 1132), *(a1 + 1336));
                            v221 = AVE_GetCurrTime();
                            v222 = AVE_Log_GetLevelStr(4);
                          }

                          syslog(3, "%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.", v221, 3, v222);
                        }

                        return 4294966295;
                      }
                    }

                    if ((v204 & 0x8010) == 0x8000 && *(a1 + 1132) == 1)
                    {
                      v204 &= 0xFFFF7FEF;
                      *(a1 + 1336) = v204;
                    }

                    if ((*(a1 + 1123) & 0x80) != 0)
                    {
                      v223 = *(a1 + 1240) | 0x30000;
                      v224 = v204 & 0xFFFFFFAF;
                      v225 = *(a1 + 1132);
                      if (v225 == 8 || v225 == 6)
                      {
                        v224 |= 0x30u;
                      }

                      *(a1 + 1336) = (v224 | *(v2 + 237)) & ~*(v2 + 238);
                      *(a1 + 1240) = (*(v2 + 218) | v223) & ~*(v2 + 219);
                      if (AVE_Log_CheckLevel(0x10u, 6))
                      {
                        v226 = AVE_Log_CheckConsole(0x10u);
                        v227 = AVE_GetCurrTime();
                        v228 = AVE_Log_GetLevelStr(6);
                        if (v226)
                        {
                          printf("%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled\n", v227, 16, v228);
                          v229 = AVE_GetCurrTime();
                          v311 = AVE_Log_GetLevelStr(6);
                          syslog(3, "%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled", v229, 16, v311);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled", v227, 16, v228);
                        }
                      }
                    }

                    v230 = *(a1 + 10244);
                    if (v230 != 1)
                    {
                      v231 = *(a1 + 1132);
                      if (v231 && v231 != 20)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v232 = AVE_Log_CheckConsole(0x10u);
                          v233 = AVE_GetCurrTime();
                          v234 = AVE_Log_GetLevelStr(5);
                          v235 = *(a1 + 1132);
                          if (v232)
                          {
                            printf("%lld %d AVE %s: FIG: Multiple PPSs and eRCMode %d is not supported. Forcing the PPS count to 1\n", v233, 16, v234, v235);
                            v236 = AVE_GetCurrTime();
                            v312 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: Multiple PPSs and eRCMode %d is not supported. Forcing the PPS count to 1", v236, 16, v312, *(a1 + 1132));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: Multiple PPSs and eRCMode %d is not supported. Forcing the PPS count to 1", v233, 16, v234, v235);
                          }
                        }

                        v230 = 1;
                        *(a1 + 10244) = 1;
                      }

                      v237.i64[0] = 0xC0000000CLL;
                      v237.i64[1] = 0xC0000000CLL;
                      v238.i64[0] = 0x100000001;
                      v238.i64[1] = 0x100000001;
                      v239 = vaddvq_s32(vsubq_s32(vbicq_s8(v238, vceqq_s32(*(a1 + 13772), v237)), vmvnq_s8(vceqq_s32(*(a1 + 13788), v237))));
                      if (v230 != v239)
                      {
                        if (AVE_Log_CheckLevel(3u, 4))
                        {
                          v244 = AVE_Log_CheckConsole(3u);
                          v245 = AVE_GetCurrTime();
                          v246 = AVE_Log_GetLevelStr(4);
                          if (v244)
                          {
                            printf("%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail\n", v245, 3, v246, "AVE_ValidateEncoderParameters", 2642, "pINS->VideoParams.i32PPSsCount == ch_qp_index_offset_cnt", *(a1 + 10244), v239);
                            v245 = AVE_GetCurrTime();
                            AVE_Log_GetLevelStr(4);
                          }

                          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail", v245);
                        }

                        return 4294966295;
                      }
                    }

                    if ((*(a1 + 1308) > 1 || *(a1 + 1256) || (*(a1 + 716) & 0x3C0) != 0) && (*(a1 + 10173) & 1) == 0)
                    {
                      *(a1 + 10173) = 1;
                    }

                    v240 = *(a1 + 76);
                    if (v240 >= 4)
                    {
                      *(a1 + 10205) = 1;
                    }

                    v241 = *(a1 + 692);
                    if (v241 == 1)
                    {
                      *(a1 + 688) &= ~2u;
                    }

                    if ((*(a1 + 712) & 8) != 0 || *(a1 + 10776))
                    {
                      *(a1 + 1464) = 0x8000000;
                    }

                    v242 = *(a1 + 1120);
                    if ((v242 & 0x10) != 0)
                    {
                      *(a1 + 1112) = *(a1 + 11448);
                      *(a1 + 1240) &= ~0x400u;
                    }

                    if ((*(a1 + 716) & 0x3C0) == 0)
                    {
LABEL_431:
                      if ((v242 & 0x80000000) != 0 && *(a1 + 76) >= 9)
                      {
                        *(a1 + 10172) = 1;
                        *(a1 + 10530) = 1;
                      }

                      if (*(a1 + 10531) && !*(a1 + 10172))
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v258 = AVE_Log_CheckConsole(0x10u);
                          v259 = AVE_GetCurrTime();
                          v260 = AVE_Log_GetLevelStr(5);
                          if (v258)
                          {
                            printf("%lld %d AVE %s: FIG: LRMERC enabled -> must run in LRME-pipe async.\n", v259, 16, v260);
                            v261 = AVE_GetCurrTime();
                            v313 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: LRMERC enabled -> must run in LRME-pipe async.", v261, 16, v313);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: LRMERC enabled -> must run in LRME-pipe async.", v259, 16, v260);
                          }
                        }

                        *(a1 + 10172) = 1;
                      }

                      else if ((*(a1 + 10172) & 1) == 0)
                      {
                        v257 = *(a1 + 1240) & 0xFFFEFFFF;
LABEL_444:
                        *(a1 + 1240) = v257;
                        if (*(a1 + 10248) == 1)
                        {
                          v262 = *(a1 + 10252);
                          if (v262 == 1)
                          {
                            if (AVE_Log_CheckLevel(0x10u, 5))
                            {
                              v263 = AVE_Log_CheckConsole(0x10u);
                              v264 = AVE_GetCurrTime();
                              v265 = AVE_Log_GetLevelStr(5);
                              if (v263)
                              {
                                printf("%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode\n", v264, 16, v265);
                                v266 = AVE_GetCurrTime();
                                v314 = AVE_Log_GetLevelStr(5);
                                syslog(3, "%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode", v266, 16, v314);
                              }

                              else
                              {
                                syslog(3, "%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode", v264, 16, v265);
                              }
                            }

                            *(a1 + 10248) = 0;
                            v262 = *(a1 + 10252);
                          }

                          if (v262)
                          {
                            v267 = 0;
                            v268 = (v262 - 1);
                            v269 = (a1 + 10260);
                            while (1)
                            {
                              if (v268 == v267)
                              {
                                v270 = *(a1 + 10260 + 8 * v268);
                                if (v270 < 96)
                                {
                                  break;
                                }
                              }

                              else
                              {
                                v270 = *v269;
                                if (*v269 < 128)
                                {
                                  break;
                                }
                              }

                              if ((v270 + *(v269 - 1)) > *(a1 + 1444))
                              {
                                break;
                              }

                              ++v267;
                              v269 += 2;
                              if (v262 == v267)
                              {
                                goto LABEL_466;
                              }
                            }

                            if (AVE_Log_CheckLevel(0x10u, 5))
                            {
                              v271 = AVE_Log_CheckConsole(0x10u);
                              v272 = AVE_GetCurrTime();
                              v273 = AVE_Log_GetLevelStr(5);
                              if (v271)
                              {
                                printf("%lld %d AVE %s: FIG: Slice Parameters Invalid slice[%d] %d iY: %d, iHeight: %d. %d Force to Frame Encoding\n", v272, 16, v273, v267, *(a1 + 10252), *(v269 - 1), *v269, *(a1 + 1444));
                                v272 = AVE_GetCurrTime();
                                AVE_Log_GetLevelStr(5);
                              }

                              syslog(3, "%lld %d AVE %s: FIG: Slice Parameters Invalid slice[%d] %d iY: %d, iHeight: %d. %d Force to Frame Encoding", v272);
                            }

                            *(a1 + 10248) = 0;
                            *(a1 + 10252) = 1;
                            *(a1 + 10260) = *(a1 + 1444);
                          }
                        }

LABEL_466:
                        v274 = *(a1 + 716) | 0x3E;
                        *(a1 + 716) = v274;
                        if (!*(a1 + 10531))
                        {
                          *(a1 + 716) = v274 & 0xFFFFFFF7;
                        }

                        *(a1 + 1096) = (*(v2 + 123) | *(a1 + 1096) & ~*(a1 + 17968)) & ~*(v2 + 124);
                        if (AVE_CheckQP(*(a1 + 1144), *(a1 + 12052) + 8))
                        {
                          if (AVE_Log_CheckLevel(3u, 4))
                          {
                            v275 = AVE_Log_CheckConsole(3u);
                            v276 = AVE_GetCurrTime();
                            v277 = AVE_Log_GetLevelStr(4);
                            if (v275)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d\n", v276, 3, v277, "AVE_ValidateEncoderParameters", 2850, "false", *(a1 + 1144));
                              v276 = AVE_GetCurrTime();
                              AVE_Log_GetLevelStr(4);
                            }

                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d", v276);
                          }
                        }

                        else if (AVE_CheckQP(*(a1 + 1148), *(a1 + 12052) + 8))
                        {
                          if (AVE_Log_CheckLevel(3u, 4))
                          {
                            v278 = AVE_Log_CheckConsole(3u);
                            v279 = AVE_GetCurrTime();
                            v280 = AVE_Log_GetLevelStr(4);
                            if (v278)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d\n", v279, 3, v280, "AVE_ValidateEncoderParameters", 2855, "false", *(a1 + 1148));
                              v279 = AVE_GetCurrTime();
                              AVE_Log_GetLevelStr(4);
                            }

                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d", v279);
                          }
                        }

                        else if (AVE_CheckQP(*(a1 + 1152), *(a1 + 12052) + 8))
                        {
                          if (AVE_Log_CheckLevel(3u, 4))
                          {
                            v281 = AVE_Log_CheckConsole(3u);
                            v282 = AVE_GetCurrTime();
                            v283 = AVE_Log_GetLevelStr(4);
                            if (v281)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d\n", v282, 3, v283, "AVE_ValidateEncoderParameters", 2860, "false", *(a1 + 1152));
                              v282 = AVE_GetCurrTime();
                              AVE_Log_GetLevelStr(4);
                            }

                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d", v282);
                          }
                        }

                        else
                        {
                          if (!AVE_Enc_CheckResolution(*(a1 + 68), 1, 1, *(a1 + 1440), *(a1 + 1444), *(a1 + 1264) != 1))
                          {
                            if (*(a1 + 16932) < 1)
                            {
                              return 0;
                            }

                            v287 = *(a1 + 11460);
                            if (v287 < 1)
                            {
                              return 0;
                            }

                            v288 = *(a1 + 1112);
                            if (v287 > v288)
                            {
                              return 0;
                            }

                            v18 = 0;
                            *(a1 + 1248) = 0;
                            *(a1 + 1252) = v288 / v287;
                            *(a1 + 1256) = 0x200000000;
                            *(a1 + 1288) = 1;
                            return v18;
                          }

                          if (AVE_Log_CheckLevel(3u, 4))
                          {
                            v284 = AVE_Log_CheckConsole(3u);
                            v285 = AVE_GetCurrTime();
                            v286 = AVE_Log_GetLevelStr(4);
                            if (v284)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.\n", v285, 3, v286, "AVE_ValidateEncoderParameters", 2872, "false", *(a1 + 1440), *(a1 + 1444), *(a1 + 1264));
                              v285 = AVE_GetCurrTime();
                              AVE_Log_GetLevelStr(4);
                            }

                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.", v285, 3);
                          }
                        }

                        return 4294966295;
                      }

                      v257 = *(a1 + 1240) | 0x10000;
                      goto LABEL_444;
                    }

                    *(a1 + 688) |= 0x100u;
                    if (!*(a1 + 10531))
                    {
                      *(a1 + 10531) = 3;
                    }

                    *(a1 + 10172) = 1;
                    *(a1 + 10530) = 1;
                    if (*(a1 + 12044) != 1)
                    {
                      if (AVE_Log_CheckLevel(3u, 4))
                      {
                        v247 = AVE_Log_CheckConsole(3u);
                        v248 = AVE_GetCurrTime();
                        v249 = AVE_Log_GetLevelStr(4);
                        if (v247)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail\n", v248, 3, v249, "AVE_ValidateEncoderParameters", 2710, "(pINS->SPSParams.chroma_format_idc == ChromaFmt_420)", *(a1 + 12044));
                          v248 = AVE_GetCurrTime();
                          AVE_Log_GetLevelStr(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail", v248);
                      }

                      return 4294966295;
                    }

                    v243 = *(a1 + 11812);
                    if (v240 < 30)
                    {
                      if (v243 < 0)
                      {
                        *(a1 + 1392) = 1;
                        if (*(a1 + 1396) < 1)
                        {
                          goto LABEL_431;
                        }

LABEL_426:
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v250 = AVE_Log_CheckConsole(0x10u);
                          v251 = AVE_GetCurrTime();
                          v252 = AVE_Log_GetLevelStr(5);
                          v253 = *(a1 + 16);
                          v254 = *(a1 + 1396);
                          if (v250)
                          {
                            printf("%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)\n", v251, 16, v252, v253, *(a1 + 1392), v254);
                            v255 = AVE_GetCurrTime();
                            v256 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)", v255, 16, v256, *(a1 + 16), *(a1 + 1392), *(a1 + 1396));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)", v251, 16, v252, v253, *(a1 + 1392), v254);
                          }
                        }

                        *(a1 + 1396) = -1;
                        v242 = *(a1 + 1120);
                        goto LABEL_431;
                      }

                      *(a1 + 1392) = v243;
LABEL_424:
                      if (*(a1 + 1396) < 1 || v243 != 1)
                      {
                        goto LABEL_431;
                      }

                      goto LABEL_426;
                    }

                    if (v243 < 0)
                    {
                      if (v241 >= 1 && *(a1 + 10804) == 2)
                      {
                        v243 = 0;
                        *(a1 + 1392) = 0;
LABEL_420:
                        if (*(a1 + 1396) == -1 && v241 >= 1 && *(a1 + 10804) == 2)
                        {
                          *(a1 + 1396) = 5;
                        }

                        goto LABEL_424;
                      }

                      v243 = 1;
                    }

                    *(a1 + 1392) = v243;
                    goto LABEL_420;
                  }

                  if (v123)
                  {
                    v124 = AVE_Log_CheckConsole(0x10u);
                    v125 = AVE_GetCurrTime();
                    v126 = AVE_Log_GetLevelStr(6);
                    if (v124)
                    {
                      printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v125, 16, v126, "AVE_ValidateEncoderParameters", 2239, *(a1 + 12008), 8);
                      v125 = AVE_GetCurrTime();
                      AVE_Log_GetLevelStr(6);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v125);
                  }

                  v133 = 8;
                }

                *(a1 + 12008) = v133;
                goto LABEL_219;
              }

              if (!AVE_Log_CheckLevel(3u, 4))
              {
                return 4294966295;
              }

              v103 = AVE_Log_CheckConsole(3u);
              v100 = AVE_GetCurrTime();
              v104 = AVE_Log_GetLevelStr(4);
              if (v103)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d\n", v100, 3, v104, "AVE_ValidateEncoderParameters", 2179, "pINS->VideoParams.sSliceMap.iNum != 0", *(v33 + 21));
                v100 = AVE_GetCurrTime();
                v104 = AVE_Log_GetLevelStr(4);
                v316 = "pINS->VideoParams.sSliceMap.iNum != 0";
                v317 = *(v33 + 21);
                v315 = 2179;
              }

              else
              {
                v317 = *(v33 + 21);
                v315 = 2179;
                v316 = "pINS->VideoParams.sSliceMap.iNum != 0";
              }

              v299 = v104;
              v102 = "%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d";
            }

            syslog(3, v102, v100, 3, v299, "AVE_ValidateEncoderParameters", v315, v316, v317, v318);
            return 4294966295;
          }

          v71 = 0;
        }

        else
        {
          if (AVE_Log_CheckLevel(0x10u, 5))
          {
            v65 = AVE_Log_CheckConsole(0x10u);
            v66 = AVE_GetCurrTime();
            v67 = AVE_Log_GetLevelStr(5);
            v68 = *(a1 + 76);
            if (v65)
            {
              printf("%lld %d AVE %s: FIG: BFrames = %d and DeviceType = %d. Not supported, set BFrames to 0.\n", v66, 16, v67, *(a1 + 1256), v68);
              v69 = AVE_GetCurrTime();
              v70 = AVE_Log_GetLevelStr(5);
              syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and DeviceType = %d. Not supported, set BFrames to 0.", v69, 16, v70, *(a1 + 1256), *(a1 + 76));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and DeviceType = %d. Not supported, set BFrames to 0.", v66, 16, v67, *(a1 + 1256), v68);
            }
          }

          *(a1 + 1256) = 0x100000000;
          v71 = 1;
          *(a1 + 1288) = 1;
          *(a1 + 1240) &= ~0x400u;
        }
      }

      else
      {
        v71 = 1;
      }

      v75 = *(a1 + 1240);
      if (v75 & 0x400) != 0 && (v71)
      {
        if (AVE_Log_CheckLevel(0x10u, 5))
        {
          v76 = AVE_Log_CheckConsole(0x10u);
          v77 = AVE_GetCurrTime();
          v78 = AVE_Log_GetLevelStr(5);
          if (v76)
          {
            printf("%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB\n", v77, 16, v78);
            v79 = AVE_GetCurrTime();
            v297 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB", v79, 16, v297);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB", v77, 16, v78);
          }
        }

        v75 = *(a1 + 1240) & 0xFFFFFBFF;
        *(a1 + 1240) = v75;
      }

      goto LABEL_110;
    }

    if (AVE_Log_CheckLevel(3u, 4))
    {
      v62 = AVE_Log_CheckConsole(3u);
      v63 = AVE_GetCurrTime();
      v64 = AVE_Log_GetLevelStr(4);
      if (v62)
      {
        printf("%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature\n", v63, 3, v64, "AVE_ValidateEncoderParameters", 2030, "false");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature");
    }

    return 4294966296;
  }

  v18 = v28;
  if (AVE_Log_CheckLevel(0x10u, 4))
  {
    v29 = AVE_Log_CheckConsole(0x10u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx\n", v30, 16, v31, "AVE_ValidateEncoderParameters", 1944, "ret == 0", a1, *(a1 + 56), v2[105], *(a1 + 17872), *(a1 + 16840), *(a1 + 1216), *(a1 + 1120));
      v32 = AVE_GetCurrTime();
      v293 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx", v32, 16, v293);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx", v30, 16, v31);
    }
  }

  return v18;
}

void AVE_PrepareSequenceHeader(uint64_t a1, __CVBuffer *a2)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareSequenceHeader\n", CurrTime, 12, LevelStr);
      v7 = AVE_GetCurrTime();
      v105 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareSequenceHeader", v7, 12, v105);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareSequenceHeader", CurrTime, 12, LevelStr);
    }
  }

  if (a2)
  {
    if (*(a1 + 12060) == 1)
    {
      *(a1 + 12061) = 1;
    }

    v8 = *(a1 + 12064);
    if (v8 <= 4)
    {
      if (v8 == 1)
      {
        v38 = 0;
        v39 = (a1 + 12254);
        *(a1 + 12076) = 0x101010101010101;
        *(a1 + 12084) = 0x101010101010101;
        *(a1 + 12068) = 0x101010101010101;
        *(a1 + 12092) = 1;
        do
        {
          v40 = vuzp1q_s16(*(&g_saAVC_Default_4x4_Intra + v38), *(&g_saAVC_Default_4x4_Intra + v38 + 16));
          v39[-6] = v40;
          v39[-8] = v40;
          v39[-10] = v40;
          v41 = vuzp1q_s16(*(&g_saAVC_Default_4x4_Inter + v38), *(&g_saAVC_Default_4x4_Inter + v38 + 16));
          *v39 = v41;
          v39[-2] = v41;
          v39[-4] = v41;
          v38 += 32;
          ++v39;
        }

        while (v38 != 64);
        v42 = 0;
        v43 = (a1 + 12286);
        do
        {
          v44 = vuzp1q_s16(*(&g_saAVC_Default_8x8_Intra + v42), *(&g_saAVC_Default_8x8_Intra + v42 + 16));
          v43[32] = v44;
          v43[16] = v44;
          *v43 = v44;
          v45 = vuzp1q_s16(*(&g_saAVC_Default_8x8_Inter + v42), *(&g_saAVC_Default_8x8_Inter + v42 + 16));
          v43[40] = v45;
          v43[24] = v45;
          v43[8] = v45;
          v42 += 32;
          ++v43;
        }

        while (v42 != 256);
      }

      else
      {
        if (v8 != 2)
        {
LABEL_42:
          v46 = (a1 + 12286);
          v47 = (a1 + 12094);
          *(a1 + 12071) = 0;
          *(a1 + 12068) = 0;
          v48 = (a1 + 12075);
          v49 = 6;
          do
          {
            v48[6] = 0;
            memset_pattern16(v47, &unk_2954EAB30, 0x20uLL);
            *v48 = 0;
            v48[12] = 0;
            memset_pattern16(v46, &unk_2954EAB30, 0x80uLL);
            v46 += 128;
            ++v48;
            v47 += 32;
            --v49;
          }

          while (v49);
          goto LABEL_44;
        }

        v17 = 0;
        v18 = (a1 + 12081);
        v19 = (a1 + 12286);
        *(a1 + 12073) = 0x101010101010101;
        *(a1 + 12068) = 0x101010101010101;
        v20 = ScalingListExpl8x8;
        do
        {
          v21 = (a1 + 12094 + v17);
          *v18 = 0;
          *v21 = *(&ScalingListExpl4x4 + v17);
          v21[1] = *(&ScalingListExpl4x4 + v17 + 16);
          v18[6] = 0;
          v19[3] = *(v20 + 3);
          v19[2] = *(v20 + 2);
          v19[1] = *(v20 + 1);
          *v19 = *v20;
          v19[7] = *(v20 + 7);
          v19[6] = *(v20 + 6);
          v19[5] = *(v20 + 5);
          v17 += 32;
          v19[4] = *(v20 + 4);
          v19 += 8;
          ++v18;
          v20 += 64;
        }

        while (v17 != 192);
      }
    }

    else
    {
      switch(v8)
      {
        case 5:
          v22 = 0;
          *(a1 + 12068) = 1;
          v23 = a1 + 12069;
          v24 = a1 + 12094;
          v25 = a1 + 12286;
          v26 = &ScalingListExpl4x4_LowGain;
          v27 = &ScalingListExpl8x8_LowGain;
          do
          {
            v28 = 0;
            *(v23 + v22) = 1;
            *(a1 + 12081 + v22) = 0;
            do
            {
              *(v24 + v28) = vshlq_n_s16(*&v26[v28], 3uLL);
              v28 += 16;
            }

            while (v28 != 32);
            v29 = 0;
            *(v22 + v23 + 6) = 1;
            *(a1 + 12087 + v22) = 0;
            do
            {
              *(v25 + v29) = vshlq_n_s16(*&v27[v29], 3uLL);
              v29 += 16;
            }

            while (v29 != 128);
            ++v22;
            v26 += 32;
            v24 += 32;
            v27 += 128;
            v25 += 128;
          }

          while (v22 != 6);
          break;
        case 6:
          v30 = 0;
          *(a1 + 12068) = 1;
          v31 = a1 + 12069;
          v32 = a1 + 12094;
          v33 = a1 + 12286;
          v34 = &ScalingListExpl4x4_HighGain;
          v35 = &ScalingListExpl8x8_HighGain;
          do
          {
            v36 = 0;
            *(v31 + v30) = 1;
            *(a1 + 12081 + v30) = 0;
            do
            {
              *(v32 + v36) = vshlq_n_s16(*&v34[v36], 3uLL);
              v36 += 16;
            }

            while (v36 != 32);
            v37 = 0;
            *(v30 + v31 + 6) = 1;
            *(a1 + 12087 + v30) = 0;
            do
            {
              *(v33 + v37) = vshlq_n_s16(*&v35[v37], 3uLL);
              v37 += 16;
            }

            while (v37 != 128);
            ++v30;
            v34 += 32;
            v32 += 32;
            v35 += 128;
            v33 += 128;
          }

          while (v30 != 6);
          break;
        case 7:
          v9 = 0;
          v10 = (a1 + 12081);
          v11 = (a1 + 12286);
          *(a1 + 12073) = 0x101010101010101;
          *(a1 + 12068) = 0x101010101010101;
          v12 = &ScalingListExpl8x8_HighComp;
          do
          {
            v13 = (a1 + 12094 + v9);
            *v10 = 0;
            *v13 = *(&ScalingListExpl4x4_HighComp + v9);
            v13[1] = *(&ScalingListExpl4x4_HighComp + v9 + 16);
            v10[6] = 0;
            v11[3] = v12[3];
            v11[2] = v12[2];
            v11[1] = v12[1];
            *v11 = *v12;
            v11[7] = v12[7];
            v11[6] = v12[6];
            v11[5] = v12[5];
            v9 += 32;
            v11[4] = v12[4];
            v11 += 8;
            ++v10;
            v12 += 8;
          }

          while (v9 != 192);
          break;
        default:
          goto LABEL_42;
      }
    }

LABEL_44:
    *(a1 + 13080) = vsra_n_u32(-1, *(a1 + 1440), 4uLL);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    v51 = AVE_PixelFmt_FindByType(PixelFormatType);
    if (v51 && (*(a1 + 1104) & 8) != 0)
    {
      v55 = v51;
      v56 = *(v51 + 7) == 1;
      *(a1 + 13104) = v56;
      if (v56)
      {
        v57 = 1;
      }

      else
      {
        v57 = *(a1 + 13096);
      }

      *(a1 + 13096) = v57 & 1;
      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v58 = AVE_Log_CheckConsole(0x1Eu);
        v59 = AVE_GetCurrTime();
        v60 = AVE_Log_GetLevelStr(6);
        if (v58)
        {
          printf("%lld %d AVE %s: FIG: video_full_range_flag %d\n", v59, 30, v60, *(v55 + 7) == 1);
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(6);
        }

        syslog(3, "%lld %d AVE %s: FIG: video_full_range_flag %d");
      }
    }

    else if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v52 = AVE_Log_CheckConsole(0x1Eu);
      v53 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(6);
      if (v52)
      {
        printf("%lld %d AVE %s: FIG: Unknown dynamic range\n", v53, 30, v54);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: FIG: Unknown dynamic range");
    }

    if ((*(a1 + 1104) & 0x40) != 0)
    {
      if (*(a1 + 1112) >= 1)
      {
        v62 = *(a1 + 1112);
      }

      else
      {
        v62 = 30;
      }

      v61 = 1;
      *(a1 + 13096) = 1;
      *(a1 + 13144) = 27000000;
      *(a1 + 13140) = 0x19BFCC0 / v62;
      *(a1 + 13148) = 0;
    }

    else
    {
      v61 = 0;
    }

    *(a1 + 13136) = v61;
    v63 = CVBufferCopyAttachment(a2, *MEMORY[0x29EDB9568], 0);
    v64 = MEMORY[0x29EDB9588];
    if (!v63)
    {
LABEL_86:
      v77 = CVBufferCopyAttachment(a2, *MEMORY[0x29EDB9560], 0);
      if (!v77)
      {
LABEL_108:
        if ((*(a1 + 13128) || *(a1 + 13132)) && (*(a1 + 1104) & 0x10) != 0)
        {
          *(a1 + 13096) = 1;
          *(a1 + 13124) = 1;
          if (AVE_Log_CheckLevel(0x1Eu, 6))
          {
            v90 = AVE_Log_CheckConsole(0x1Eu);
            v91 = AVE_GetCurrTime();
            v92 = AVE_Log_GetLevelStr(6);
            if (v90)
            {
              printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE\n", v91, 30, v92);
              v93 = AVE_GetCurrTime();
              v108 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v93, 30, v108);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v91, 30, v92);
            }
          }
        }

        if (AVE_Log_CheckLevel(0x1Eu, 6))
        {
          v94 = AVE_Log_CheckConsole(0x1Eu);
          v95 = AVE_GetCurrTime();
          v96 = AVE_Log_GetLevelStr(6);
          if (v94)
          {
            printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v95, 30, v96, *(a1 + 13124), *(a1 + 13128), *(a1 + 13132));
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
          }

          syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d");
        }

        return;
      }

      v78 = v77;
      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v79 = AVE_Log_CheckConsole(0x1Eu);
        v80 = AVE_GetCurrTime();
        v81 = AVE_Log_GetLevelStr(6);
        if (v79)
        {
          printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!\n", v80, 30, v81);
          v82 = AVE_GetCurrTime();
          v107 = AVE_Log_GetLevelStr(6);
          syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v82, 30, v107);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v80, 30, v81);
        }
      }

      if (!CFEqual(v78, *v64))
      {
        if (CFEqual(v78, *MEMORY[0x29EDB9580]))
        {
          v83 = 1;
          goto LABEL_103;
        }

        if (CFEqual(v78, *MEMORY[0x29EDB9598]))
        {
          v83 = 2;
          goto LABEL_103;
        }

        if (CFEqual(v78, *MEMORY[0x29EDB9590]))
        {
          v83 = 3;
          goto LABEL_103;
        }

        if (CFEqual(v78, *MEMORY[0x29EDB9578]))
        {
          v83 = 4;
          goto LABEL_103;
        }

        if (CFEqual(v78, *MEMORY[0x29EDB9570]))
        {
          v83 = 5;
          goto LABEL_103;
        }

        if (AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v101 = AVE_Log_CheckConsole(0x1Eu);
          v102 = AVE_GetCurrTime();
          v103 = AVE_Log_GetLevelStr(5);
          if (v101)
          {
            printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v102, 30, v103);
            v104 = AVE_GetCurrTime();
            v110 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v104, 30, v110);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v102, 30, v103);
          }
        }
      }

      v83 = 0;
LABEL_103:
      *(a1 + 13132) = v83;
      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v84 = AVE_Log_CheckConsole(0x1Eu);
        v85 = AVE_GetCurrTime();
        v86 = AVE_Log_GetLevelStr(6);
        v87 = *(a1 + 13132);
        if (v84)
        {
          printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v85, 30, v86, *(a1 + 13128), v87);
          v88 = AVE_GetCurrTime();
          v89 = AVE_Log_GetLevelStr(6);
          syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v88, 30, v89, *(a1 + 13128), *(a1 + 13132));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v85, 30, v86, *(a1 + 13128), v87);
        }
      }

      CFRelease(v78);
      goto LABEL_108;
    }

    v65 = v63;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v66 = AVE_Log_CheckConsole(0x1Eu);
      v67 = AVE_GetCurrTime();
      v68 = AVE_Log_GetLevelStr(6);
      if (v66)
      {
        printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!\n", v67, 30, v68);
        v69 = AVE_GetCurrTime();
        v106 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v69, 30, v106);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v67, 30, v68);
      }
    }

    if (!CFEqual(v65, *v64))
    {
      if (CFEqual(v65, *MEMORY[0x29EDB9580]))
      {
        v70 = 1;
        goto LABEL_81;
      }

      if (CFEqual(v65, *MEMORY[0x29EDB9598]))
      {
        v70 = 2;
        goto LABEL_81;
      }

      if (CFEqual(v65, *MEMORY[0x29EDB9590]))
      {
        v70 = 3;
        goto LABEL_81;
      }

      if (CFEqual(v65, *MEMORY[0x29EDB9578]))
      {
        v70 = 4;
        goto LABEL_81;
      }

      if (CFEqual(v65, *MEMORY[0x29EDB9570]))
      {
        v70 = 5;
        goto LABEL_81;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 5))
      {
        v97 = AVE_Log_CheckConsole(0x1Eu);
        v98 = AVE_GetCurrTime();
        v99 = AVE_Log_GetLevelStr(5);
        if (v97)
        {
          printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v98, 30, v99);
          v100 = AVE_GetCurrTime();
          v109 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v100, 30, v109);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v98, 30, v99);
        }
      }
    }

    v70 = 0;
LABEL_81:
    *(a1 + 13128) = v70;
    *(a1 + 13132) = v70;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v71 = AVE_Log_CheckConsole(0x1Eu);
      v72 = AVE_GetCurrTime();
      v73 = AVE_Log_GetLevelStr(6);
      v74 = *(a1 + 13132);
      if (v71)
      {
        printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v72, 30, v73, *(a1 + 13128), v74);
        v75 = AVE_GetCurrTime();
        v76 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v75, 30, v76, *(a1 + 13128), *(a1 + 13132));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v72, 30, v73, *(a1 + 13128), v74);
      }
    }

    CFRelease(v65);
    goto LABEL_86;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v14 = AVE_Log_CheckConsole(3u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.\n", v15, 3, v16, "AVE_PrepareSequenceHeader", 1325, "imageBuffer != __null");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.");
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
      v210 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings", v5, 12, v210);
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
      v211 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v9, 12, v211);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v7, 12, v8);
    }
  }

  v10 = (a1 + 16448);
  v11 = AVE_DW_Get();
  v12 = v11[20];
  if (v12 <= -2)
  {
    v12 = *(a1 + 692);
  }

  else
  {
    *(a1 + 692) = v12;
  }

  if (v12 == 1 && (!*(a1 + 1256) || *v10 == 2))
  {
    v13 = *(a1 + 1132);
    if (v13 != 3 && v13 != 20)
    {
      AVE_EnableH264FWRCSettings(a1);
    }
  }

  v14 = v11[19];
  if (v14 >= 1)
  {
    *(a1 + 11968) = v14;
  }

  v15 = (*(a1 + 1336) | v11[237] & 0x10) & (~*(v11 + 952) | 0xFFFFFFEF);
  *(a1 + 1336) = v15;
  if ((*(v11 + 769) & 0x80) != 0)
  {
    v15 |= 0x8000u;
    *(a1 + 1336) = v15;
  }

  if ((*(v11 + 777) & 0x80) != 0)
  {
    *(a1 + 1336) = v15 & 0xFFFF7FFF;
  }

  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v16 = AVE_Log_CheckConsole(0xCu);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v17, 12, v18, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
      v19 = AVE_GetCurrTime();
      v212 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v19, 12, v212, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v17, 12, v18, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }
  }

  v20 = AVE_DW_Get();
  Profile = AVC_FindProfile(v20[186]);
  if (Profile)
  {
    *v10 = Profile;
  }

  Level = AVC_FindLevel(v20[187]);
  if (Level)
  {
    *(a1 + 16452) = Level;
  }

  v23 = (a1 + 10168);
  if (*v10)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v24 = AVE_Log_CheckConsole(0x1Eu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(6);
      v27 = *(a1 + 12008);
      if (v24)
      {
        printf("%lld %d AVE %s: profile = %d -> change the default %d\n", v25, 30, v26, *v10, v27);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v28, 30, v29, *v10, *(a1 + 12008));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v25, 30, v26, *v10, v27);
      }
    }

    *(a1 + 12008) = *v10;
  }

  v30 = *(a1 + 1308) > 1 || *(a1 + 1256) || *(a1 + 1324) > 1;
  *(a1 + 10173) = v30;
  v31 = *(a1 + 1132);
  if ((v31 == 4 || v31 == 2) && !*(a1 + 10892))
  {
    *(a1 + 10892) = 10000;
  }

  v32 = v20[395];
  if (v32 > 36)
  {
    switch(v32)
    {
      case 37:
        *(a1 + 10892) = 37;
        *(a1 + 1104) |= 0x80uLL;
        goto LABEL_74;
      case 38:
        *(a1 + 10892) = 38;
        goto LABEL_90;
      case 10000:
        *(a1 + 10892) = 10000;
        goto LABEL_57;
    }
  }

  else
  {
    switch(v32)
    {
      case 0:
        *(a1 + 10892) = 0;
        goto LABEL_64;
      case 1:
        *(a1 + 10892) = 1;
        goto LABEL_84;
      case 20:
        *(a1 + 10892) = 20;
        *(a1 + 1104) |= 0x80uLL;
        goto LABEL_91;
    }
  }

  v47 = *(a1 + 10892);
  if (v47 <= 36)
  {
    if (v47 != 1)
    {
      if (v47 != 20)
      {
        goto LABEL_64;
      }

      goto LABEL_116;
    }

LABEL_84:
    *(a1 + 1336) = 0x10000;
    *(a1 + 1132) = 20;
    *(a1 + 10784) = 1;
    *(a1 + 10764) = 0;
    if (*(a1 + 1256) >= 1 && AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v48 = AVE_Log_CheckConsole(0x1Eu);
      v49 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(6);
      if (v48)
      {
        printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v49, 30, v50, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 3876, *(a1 + 1256), *(a1 + 17892));
        v49 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v49);
    }

    if (*(a1 + 1296))
    {
      *(a1 + 13756) = 1;
      *(a1 + 13760) = 0;
    }

    if (*(a1 + 16456) == 2)
    {
      goto LABEL_154;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v79 = AVE_Log_CheckConsole(0x1Eu);
      v80 = AVE_GetCurrTime();
      v81 = AVE_Log_GetLevelStr(6);
      v82 = *(a1 + 13732);
      if (v79)
      {
        printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v80, 30, v81, *(a1 + 16456), v82);
        v83 = AVE_GetCurrTime();
        v84 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v83, 30, v84, *(a1 + 16456), *(a1 + 13732));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v80, 30, v81, *(a1 + 16456), v82);
      }
    }

    if (*(a1 + 16456))
    {
LABEL_154:
      *(a1 + 13732) = 1;
    }

    else
    {
      *(a1 + 13732) = 0;
    }

    if ((*(a1 + 1104) & 0x80) != 0)
    {
      v85 = 1;
      *(a1 + 13096) = 1;
      *(a1 + 13156) = xmmword_2954EAB00;
      *(a1 + 13172) = 15;
      *(a1 + 13176) = 0x1000000000;
    }

    else
    {
      v85 = 0;
    }

    v78 = 0;
    *(a1 + 13152) = v85;
    *(a1 + 1096) &= 0xFFFFFC00FFFFFCBFLL;
    goto LABEL_184;
  }

  if (v47 != 10000)
  {
    if (v47 != 38)
    {
      if (v47 != 37)
      {
LABEL_64:
        v36 = *(a1 + 76);
        if (v36 <= 0x1D && ((1 << v36) & 0x2679CC00) != 0)
        {
          v37 = *(a1 + 10248);
          *(a1 + 10172) = v37 ^ 1;
          if ((v37 & 1) == 0)
          {
            *(a1 + 688) |= 0x100u;
          }
        }

        if (!AVE_NewDefaultsBasedOnProfileUsageDefault(a1))
        {
          goto LABEL_183;
        }

        if (AVE_Log_CheckLevel(3u, 4))
        {
          v38 = AVE_Log_CheckConsole(3u);
          v39 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(4);
          if (v38)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed\n", v39, 3, v40, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4197, "err == noErr");
            v39 = AVE_GetCurrTime();
            v40 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed", v39, 3, v40, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4197, "err == noErr");
        }

LABEL_144:
        v78 = -12902;
        goto LABEL_184;
      }

LABEL_116:
      *(a1 + 1104) |= 0x80uLL;
      if (v47 != 20)
      {
LABEL_74:
        if (*(a1 + 16456) == 2)
        {
          goto LABEL_162;
        }

        if (AVE_Log_CheckLevel(0x1Eu, 6))
        {
          v41 = AVE_Log_CheckConsole(0x1Eu);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(6);
          v44 = *(a1 + 13732);
          if (v41)
          {
            printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v42, 30, v43, *(a1 + 16456), v44);
            v45 = AVE_GetCurrTime();
            v46 = AVE_Log_GetLevelStr(6);
            syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v45, 30, v46, *(a1 + 16456), *(a1 + 13732));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v42, 30, v43, *(a1 + 16456), v44);
          }
        }

        if (*(a1 + 16456))
        {
LABEL_162:
          *(a1 + 13732) = 1;
        }

        else
        {
          *(a1 + 13732) = 0;
        }

        v86 = *(a1 + 12008);
        if (v86 == 2)
        {
          *(a1 + 13732) = 0;
          v87 = 1;
        }

        else
        {
          v87 = v86 == 4;
        }

        v88 = !v87;
        *(a1 + 13807) = v88;
        *(a1 + 13772) = xmmword_2954EAB10;
        *(a1 + 13812) = xmmword_2954EAB10;
        *&v89 = 0xC0000000CLL;
        *(&v89 + 1) = 0xC0000000CLL;
        *(a1 + 13788) = v89;
        *(a1 + 13828) = v89;
        *(a1 + 10176) = 2;
        if ((*(a1 + 1104) & 0x80) != 0)
        {
          *(a1 + 13096) = 1;
          *(a1 + 13152) = 1;
          *(a1 + 13156) = xmmword_2954EAB20;
          *(a1 + 13172) = 15;
          *(a1 + 13176) = 0x400000000;
        }

        *(a1 + 1112) = 60;
        *(a1 + 1264) = 60;
        *(a1 + 1272) = 0xBFF0000000000000;
        *(a1 + 1280) = 0xBFF0000000000000;
        *(a1 + 1088) |= 2uLL;
        *(a1 + 1336) &= ~0x40u;
        *(a1 + 10764) = 0;
        *(a1 + 1296) |= 2u;
        *(a1 + 10170) = 1;
        if (*(a1 + 16776) > 0)
        {
          goto LABEL_183;
        }

        if (*(a1 + 16460) != 1)
        {
          goto LABEL_183;
        }

        v90 = *(a1 + 1160);
        if (v90 < 1)
        {
          goto LABEL_183;
        }

        v91 = 0;
        v92 = (a1 + 1176);
        v60 = 0x7FFFFFFF;
        do
        {
          if (v60 > (*(v92 - 1) * 8.0 / *v92))
          {
            if (AVE_Log_CheckLevel(0x1Eu, 6))
            {
              v93 = AVE_Log_CheckConsole(0x1Eu);
              v94 = AVE_GetCurrTime();
              v95 = AVE_Log_GetLevelStr(6);
              v96 = *(v92 - 1);
              v97 = *v92;
              if (v93)
              {
                printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v94, 30, v95, v91, *(v92 - 1), v97);
                v94 = AVE_GetCurrTime();
                v95 = AVE_Log_GetLevelStr(6);
                v96 = *(v92 - 1);
                v97 = *v92;
              }

              syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v94, 30, v95, v91, v96, v97);
            }

            v60 = (*(v92 - 1) * 8.0 / *v92);
            v90 = *(a1 + 1160);
          }

          ++v91;
          v92 += 2;
        }

        while (v91 < v90);
        goto LABEL_182;
      }

LABEL_91:
      if (*(a1 + 16456) == 2)
      {
        goto LABEL_120;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v51 = AVE_Log_CheckConsole(0x1Eu);
        v52 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(6);
        v54 = *(a1 + 13732);
        if (v51)
        {
          printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v52, 30, v53, *(a1 + 16456), v54);
          v55 = AVE_GetCurrTime();
          v56 = AVE_Log_GetLevelStr(6);
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v55, 30, v56, *(a1 + 16456), *(a1 + 13732));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v52, 30, v53, *(a1 + 16456), v54);
        }
      }

      if (*(a1 + 16456))
      {
LABEL_120:
        *(a1 + 13732) = 1;
      }

      else
      {
        *(a1 + 13732) = 0;
      }

      v66 = *(a1 + 12008);
      if (v66 == 2)
      {
        *(a1 + 13732) = 0;
        v67 = 1;
      }

      else
      {
        v67 = v66 == 4;
      }

      v68 = !v67;
      *(a1 + 13807) = v68;
      *(a1 + 13772) = xmmword_2954EAB10;
      *(a1 + 13812) = xmmword_2954EAB10;
      *&v69 = 0xC0000000CLL;
      *(&v69 + 1) = 0xC0000000CLL;
      *(a1 + 13788) = v69;
      *(a1 + 13828) = v69;
      *(a1 + 10176) = 2;
      if ((*(a1 + 1104) & 0x80) != 0)
      {
        *(a1 + 13096) = 1;
        *(a1 + 13152) = 1;
        *(a1 + 13156) = xmmword_2954EAB20;
        *(a1 + 13172) = 15;
        *(a1 + 13176) = 0x400000000;
      }

      *(a1 + 1112) = 60;
      *(a1 + 1264) = 0x7FFFFFFFLL;
      *(a1 + 1272) = 0xBFF0000000000000;
      *(a1 + 1280) = 0xBFF0000000000000;
      *(a1 + 1088) |= 2uLL;
      *(a1 + 1336) &= ~0x40u;
      *(a1 + 10764) = 0;
      *(a1 + 1296) |= 2u;
      if (*(a1 + 16776) > 0)
      {
        goto LABEL_183;
      }

      if (*(a1 + 16460) != 1)
      {
        goto LABEL_183;
      }

      v70 = *(a1 + 1160);
      if (v70 < 1)
      {
        goto LABEL_183;
      }

      v71 = 0;
      v72 = (a1 + 1176);
      v60 = 0x7FFFFFFF;
      do
      {
        if (v60 > (*(v72 - 1) * 8.0 / *v72))
        {
          if (AVE_Log_CheckLevel(0x1Eu, 6))
          {
            v73 = AVE_Log_CheckConsole(0x1Eu);
            v74 = AVE_GetCurrTime();
            v75 = AVE_Log_GetLevelStr(6);
            v76 = *(v72 - 1);
            v77 = *v72;
            if (v73)
            {
              printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v74, 30, v75, v71, *(v72 - 1), v77);
              v74 = AVE_GetCurrTime();
              v75 = AVE_Log_GetLevelStr(6);
              v76 = *(v72 - 1);
              v77 = *v72;
            }

            syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v74, 30, v75, v71, v76, v77);
          }

          v60 = (*(v72 - 1) * 8.0 / *v72);
          v70 = *(a1 + 1160);
        }

        ++v71;
        v72 += 2;
      }

      while (v71 < v70);
      goto LABEL_182;
    }

LABEL_90:
    *(a1 + 1352) |= 0x1Eu;
    *(a1 + 1336) &= ~0x40u;
    goto LABEL_91;
  }

LABEL_57:
  if (AVE_NewDefaultsBasedOnProfileUsageDefault(a1))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v33 = AVE_Log_CheckConsole(3u);
      v34 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      if (v33)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed\n", v34, 3, v35, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4122, "err == noErr");
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed", v34, 3, v35, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4122, "err == noErr");
    }

    goto LABEL_144;
  }

  *(a1 + 1296) &= ~2u;
  *(a1 + 1088) &= ~2uLL;
  *(a1 + 1336) &= ~0x40u;
  if (*(a1 + 1348) <= -13)
  {
    *(a1 + 1348) = 51;
  }

  if (*(a1 + 1236) <= -13)
  {
    *(a1 + 1236) = 51;
  }

  if (*(a1 + 16900) <= 0 && *(a1 + 16912) <= 0.0)
  {
    *(a1 + 1264) = 120;
    *(a1 + 1272) = 0xBFF0000000000000;
    *(a1 + 1280) = 0xBFF0000000000000;
  }

  if (*(a1 + 16776) > 0)
  {
    goto LABEL_183;
  }

  if (*(a1 + 16460) != 1)
  {
    goto LABEL_183;
  }

  v57 = *(a1 + 1160);
  if (v57 < 1)
  {
    goto LABEL_183;
  }

  v58 = 0;
  v59 = (a1 + 1176);
  v60 = 0x7FFFFFFF;
  do
  {
    if (v60 > (*(v59 - 1) * 8.0 / *v59))
    {
      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v61 = AVE_Log_CheckConsole(0x1Eu);
        v62 = AVE_GetCurrTime();
        v63 = AVE_Log_GetLevelStr(6);
        v64 = *(v59 - 1);
        v65 = *v59;
        if (v61)
        {
          printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v62, 30, v63, v58, *(v59 - 1), v65);
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(6);
          v64 = *(v59 - 1);
          v65 = *v59;
        }

        syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v62, 30, v63, v58, v64, v65);
      }

      v60 = (*(v59 - 1) * 8.0 / 1.5 / *v59);
      v57 = *(a1 + 1160);
    }

    ++v58;
    v59 += 2;
  }

  while (v58 < v57);
LABEL_182:
  if (v60 == 0x7FFFFFFF)
  {
LABEL_183:
    v78 = 0;
    goto LABEL_184;
  }

  v78 = 0;
  *(a1 + 1136) = v60;
LABEL_184:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v98 = AVE_Log_CheckConsole(0xCu);
    v99 = AVE_GetCurrTime();
    v100 = AVE_Log_GetLevelStr(7);
    if (v98)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v99, 12, v100, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v78);
      v101 = AVE_GetCurrTime();
      v213 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v101, 12, v213, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v78);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v99, 12, v100, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v78);
    }
  }

  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v102 = AVE_Log_CheckConsole(0xD1u);
    v103 = AVE_GetCurrTime();
    v104 = AVE_Log_GetLevelStr(6);
    if (v102)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v103, 209, v104, "AVE_PrepareH264Level", a1);
      v105 = AVE_GetCurrTime();
      v214 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v105, 209, v214, "AVE_PrepareH264Level", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v103, 209, v104, "AVE_PrepareH264Level", a1);
    }
  }

  v106 = *(a1 + 1132);
  if (v106 < 1)
  {
    v107 = 0;
  }

  else
  {
    v107 = 0;
    if (v106 != 3 && v106 != 8)
    {
      v107 = *(a1 + 1136);
    }
  }

  if (AVE_Log_CheckLevel(0xD1u, 7))
  {
    v108 = AVE_Log_CheckConsole(0xD1u);
    v109 = AVE_GetCurrTime();
    v110 = AVE_Log_GetLevelStr(7);
    if (v108)
    {
      printf("%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d\n", v109, 209, v110, "AVE_PrepareH264Level", 1823, *(a1 + 12008), *(a1 + 12036), *(a1 + 16448), *(a1 + 16452));
      v109 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d", v109, 209);
  }

  if (AVE_Log_CheckLevel(0xD1u, 7))
  {
    v111 = AVE_Log_CheckConsole(0xD1u);
    v112 = AVE_GetCurrTime();
    v113 = AVE_Log_GetLevelStr(7);
    if (v111)
    {
      printf("%lld %d AVE %s: %s:%d starting with bitrate %d (RCMode %d) FrameRate %d USAGE %d\n", v112, 209, v113, "AVE_PrepareH264Level", 1827, *(a1 + 1136), *(a1 + 1132), *(a1 + 1112), *(a1 + 10892));
      v112 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s:%d starting with bitrate %d (RCMode %d) FrameRate %d USAGE %d", v112, 209);
  }

  v114 = *(a1 + 1256);
  if (*(a1 + 1260) < 3 || v114 <= 2)
  {
    if (v114)
    {
      v115 = 2;
    }

    else if (*(a1 + 1476))
    {
      v115 = 2;
    }

    else
    {
      v115 = 1;
    }
  }

  else
  {
    v115 = 4;
  }

  v116 = AVC_FindLevel(*(a1 + 12008), *(a1 + 1440), *(a1 + 1444), *(a1 + 1112), v107, v115);
  if (v116)
  {
    v117 = v116;
    v118 = *(a1 + 12036);
    if (v118 <= v116)
    {
      v118 = v116;
    }

    *(a1 + 12036) = v118;
    v119 = *(a1 + 16452);
    if (v119)
    {
      if (v119 < v118)
      {
        if (AVE_Log_CheckLevel(0xD1u, 4))
        {
          v120 = AVE_Log_CheckConsole(0xD1u);
          v121 = AVE_GetCurrTime();
          v122 = AVE_Log_GetLevelStr(4);
          if (v120)
          {
            printf("%lld %d AVE %s: %s:%d H264Level %d incompatible with other settings (min should be %d)\n", v121, 209, v122, "AVE_PrepareH264Level", 1858, *(a1 + 16452), *(a1 + 12036));
            v121 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d H264Level %d incompatible with other settings (min should be %d)", v121);
        }

        v130 = 4294966295;
        goto LABEL_241;
      }

      if (v119 > v118)
      {
        if (AVE_Log_CheckLevel(0xD1u, 6))
        {
          v127 = AVE_Log_CheckConsole(0xD1u);
          v128 = AVE_GetCurrTime();
          v129 = AVE_Log_GetLevelStr(6);
          if (v127)
          {
            printf("%lld %d AVE %s: %s:%d H264Level received (%d) is too high... consider lowering it with these settings (min should be %d)\n", v128, 209, v129, "AVE_PrepareH264Level", 1865, *(a1 + 16452), *(a1 + 12036));
            v128 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
          }

          syslog(3, "%lld %d AVE %s: %s:%d H264Level received (%d) is too high... consider lowering it with these settings (min should be %d)", v128);
        }

        v130 = 0;
        *(a1 + 12036) = *(a1 + 16452);
        goto LABEL_241;
      }
    }

    v130 = 0;
LABEL_241:
    if (AVE_Log_CheckLevel(0xD1u, 7))
    {
      v131 = AVE_Log_CheckConsole(0xD1u);
      v132 = AVE_GetCurrTime();
      v133 = AVE_Log_GetLevelStr(7);
      if (v131)
      {
        printf("%lld %d AVE %s: %s:%d end with level %d (min %d)\n", v132, 209, v133, "AVE_PrepareH264Level", 1871, *(a1 + 12036), v117);
        v132 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %s:%d end with level %d (min %d)", v132);
    }

    goto LABEL_246;
  }

  if (AVE_Log_CheckLevel(0xD1u, 4))
  {
    v123 = AVE_Log_CheckConsole(0xD1u);
    v124 = AVE_GetCurrTime();
    v125 = AVE_Log_GetLevelStr(4);
    if (v123)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level\n", v124, 209, v125, "AVE_PrepareH264Level", 1847, "eLevel != AVC_Level_Invalid");
      v126 = AVE_GetCurrTime();
      v215 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v126, 209, v215, "AVE_PrepareH264Level", 1847, "eLevel != AVC_Level_Invalid");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v124, 209, v125, "AVE_PrepareH264Level", 1847, "eLevel != AVC_Level_Invalid");
    }
  }

  v130 = 4294966295;
LABEL_246:
  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v134 = AVE_Log_CheckConsole(0xD1u);
    v135 = AVE_GetCurrTime();
    v136 = AVE_Log_GetLevelStr(6);
    if (v134)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v135, 209, v136, "AVE_PrepareH264Level", a1, v130);
      v137 = AVE_GetCurrTime();
      v216 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v137, 209, v216, "AVE_PrepareH264Level", a1, v130);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v135, 209, v136, "AVE_PrepareH264Level", a1, v130);
    }
  }

  if (v130)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v138 = AVE_Log_CheckConsole(3u);
      v139 = AVE_GetCurrTime();
      v140 = AVE_Log_GetLevelStr(4);
      if (v138)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareH264Level failed\n", v139, 3, v140, "AVE_ManageSessionSettings", 5016, "err == 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareH264Level failed");
    }

    return v130;
  }

  v141 = AVE_DW_Get();
  v142 = v141;
  v143 = *(v141 + 224);
  if ((v143 & 0x80000000) == 0)
  {
    *(a1 + 1264) = v143;
    if (v143 == 1)
    {
      *(a1 + 1252) = 0;
    }
  }

  v144 = *(v141 + 225);
  if ((v144 & 0x80000000) == 0)
  {
    *(a1 + 1268) = v144;
  }

  v145 = v141[113];
  if (v145 >= 0.0)
  {
    *(a1 + 1272) = v145;
  }

  v146 = v141[114];
  if (v146 >= 0.0)
  {
    *(a1 + 1280) = v146;
  }

  v147 = *(a1 + 716);
  v148 = *(v141 + 7);
  v149 = *(a1 + 1456) | *(v141 + 6);
  v151 = *(v141 + 4);
  v150 = *(v141 + 5);
  v152 = (*(a1 + 1448) | v151) & ~v150;
  *(a1 + 1448) = v152;
  *(a1 + 1456) = v149 & ~v148;
  v153 = v152 | v151 & 0x20;
  v154 = v152 & 0xFFFFFFFFFFFFFFDFLL;
  if ((v150 & 0x20) == 0)
  {
    v154 = v153;
  }

  if (((v150 | v151) & 0x20) != 0)
  {
    *(a1 + 1448) = v154;
  }

  if ((v154 & 0x20) != 0)
  {
    if (*(v141 + 1) == 1)
    {
      v156 = AVE_MCTF_Validate(*(a1 + 68), *(a1 + 64), v147, *(a1 + 10772), *(a1 + 18080));
      v157 = *(a1 + 716);
      if (v156)
      {
        v155 = v157 & 0xFFFFFC3F;
      }

      else
      {
        v155 = v157 | 0x3C0;
      }
    }

    else
    {
      v155 = v147 | 0x3C0;
    }

    *(a1 + 716) = v155;
    v154 = *(a1 + 1448);
    if ((v154 & 0x1000000) != 0)
    {
      *(a1 + 11810) = 1;
    }

    v150 = *(v142 + 5);
    if ((v150 & 0x1000000) != 0)
    {
      *(a1 + 11810) = 0;
    }
  }

  else
  {
    v155 = v147;
  }

  if ((v150 & 0x20) != 0)
  {
    *(a1 + 716) = v155 & 0xFFFFFC3F;
  }

  v158 = *(v142 + 272);
  if ((v158 & 0x80000000) == 0)
  {
    *(a1 + 11812) = v158;
  }

  v159 = *(v142 + 273);
  if ((v159 & 0x80000000) == 0)
  {
    *(a1 + 1396) = v159;
  }

  if ((v154 & 0x40) != 0)
  {
    *(a1 + 13805) = 1;
    if ((v150 & 0x40) == 0)
    {
LABEL_287:
      if ((v154 & 0x80) == 0)
      {
        goto LABEL_288;
      }

      goto LABEL_295;
    }
  }

  else if ((v150 & 0x40) == 0)
  {
    goto LABEL_287;
  }

  *(a1 + 13805) = 0;
  if ((v154 & 0x80) == 0)
  {
LABEL_288:
    if ((v150 & 0x80) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_296;
  }

LABEL_295:
  *(a1 + 13807) = 1;
  *(a1 + 10176) = 2;
  if ((v150 & 0x80) == 0)
  {
LABEL_289:
    if ((v154 & 0x100) == 0)
    {
      goto LABEL_290;
    }

    goto LABEL_297;
  }

LABEL_296:
  *(a1 + 13807) = 0;
  *(a1 + 10176) = 0;
  if ((v154 & 0x100) == 0)
  {
LABEL_290:
    if ((v150 & 0x100) == 0)
    {
      goto LABEL_291;
    }

LABEL_298:
    *(a1 + 14164) = 0;
    if ((v154 & 0x200) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_299;
  }

LABEL_297:
  *(a1 + 14164) = 1;
  if ((v150 & 0x100) != 0)
  {
    goto LABEL_298;
  }

LABEL_291:
  if ((v154 & 0x200) == 0)
  {
    goto LABEL_301;
  }

LABEL_299:
  if (*(a1 + 10892) != 1)
  {
    *(a1 + 12060) = 1;
  }

LABEL_301:
  if ((v150 & 0x200) != 0 && *(a1 + 10892) != 1)
  {
    *(a1 + 12060) = 0;
  }

  if ((v154 & 0x20000) != 0)
  {
    *(a1 + 10205) = 1;
    if ((v150 & 0x20000) == 0)
    {
LABEL_306:
      if ((v154 & 0x40000) == 0)
      {
        goto LABEL_307;
      }

      goto LABEL_391;
    }
  }

  else if ((v150 & 0x20000) == 0)
  {
    goto LABEL_306;
  }

  *(a1 + 10205) = 0;
  if ((v154 & 0x40000) == 0)
  {
LABEL_307:
    if ((v150 & 0x40000) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_392;
  }

LABEL_391:
  *(a1 + 10206) = 1;
  if ((v150 & 0x40000) == 0)
  {
LABEL_308:
    if ((v154 & 0x80000) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_393;
  }

LABEL_392:
  *(a1 + 10206) = 0;
  if ((v154 & 0x80000) == 0)
  {
LABEL_309:
    if ((v150 & 0x80000) == 0)
    {
      goto LABEL_310;
    }

    goto LABEL_394;
  }

LABEL_393:
  *(a1 + 1336) |= 0x200u;
  if ((v150 & 0x80000) == 0)
  {
LABEL_310:
    if ((v154 & 0x100000) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_395;
  }

LABEL_394:
  *(a1 + 1336) &= ~0x200u;
  if ((v154 & 0x100000) == 0)
  {
LABEL_311:
    if ((v150 & 0x100000) == 0)
    {
      goto LABEL_313;
    }

    goto LABEL_312;
  }

LABEL_395:
  *(a1 + 10855) = 1;
  if ((v150 & 0x100000) != 0)
  {
LABEL_312:
    *(a1 + 10855) = 0;
  }

LABEL_313:
  v160 = *(v142 + 123);
  if (v160)
  {
    *(a1 + 1096) |= v160;
  }

  v161 = *(v142 + 124);
  if (v161)
  {
    *(a1 + 1096) &= ~v161;
  }

  v162 = *(v142 + 96);
  v163 = *(v142 + 97);
  *(a1 + 1120) = (*(a1 + 1120) | v162) & ~v163;
  if ((v162 & 0x40) != 0)
  {
    *(a1 + 1476) = 1;
    if ((v163 & 0x40) == 0)
    {
LABEL_319:
      if ((v162 & 0x80000) == 0)
      {
        goto LABEL_320;
      }

      goto LABEL_399;
    }
  }

  else if ((v163 & 0x40) == 0)
  {
    goto LABEL_319;
  }

  *(a1 + 1476) = 0;
  if ((v162 & 0x80000) == 0)
  {
LABEL_320:
    if ((v163 & 0x80000) == 0)
    {
      goto LABEL_321;
    }

    goto LABEL_400;
  }

LABEL_399:
  *(a1 + 10852) = 1;
  if ((v163 & 0x80000) == 0)
  {
LABEL_321:
    if ((v162 & 0x800000) == 0)
    {
      goto LABEL_322;
    }

LABEL_401:
    *(a1 + 1336) |= 0x4000000u;
    if ((v163 & 0x800000) == 0)
    {
      goto LABEL_324;
    }

    goto LABEL_323;
  }

LABEL_400:
  *(a1 + 10852) = 0;
  if ((v162 & 0x800000) != 0)
  {
    goto LABEL_401;
  }

LABEL_322:
  if ((v163 & 0x800000) != 0)
  {
LABEL_323:
    *(a1 + 1336) &= ~0x4000000u;
  }

LABEL_324:
  v164 = *(v142 + 242);
  if (v164)
  {
    *(a1 + 1352) |= v164;
  }

  v165 = *(v142 + 243);
  if (v165)
  {
    *(a1 + 1352) &= ~v165;
  }

  *(a1 + 1336) = ((*(a1 + 1336) | *(v142 + 237)) & ~*(v142 + 238) | *(v142 + 237) & 4) & (~*(v142 + 238) | 0xFFFFFFFB);
  *(a1 + 1240) = (*(a1 + 1240) | *(v142 + 218)) & ~*(v142 + 219);
  *(a1 + 1296) = (*(a1 + 1296) | *(v142 + 230)) & ~*(v142 + 231);
  v167 = *(v142 + 16);
  v166 = *(v142 + 17);
  *(a1 + 688) = (*(a1 + 688) | v167) & ~v166;
  if ((v167 & 0x400) != 0)
  {
    *(a1 + 10172) = 1;
  }

  if ((v166 & 0x400) != 0)
  {
    *(a1 + 10172) = 0;
  }

  if ((*(v142 + 412) & 8) != 0)
  {
    *(a1 + 1464) = 0x8000000;
  }

  v168 = *(v142 + 200);
  if (v168 >= 1)
  {
    *(a1 + 1136) = v168;
  }

  v169 = *(v142 + 18);
  if ((v169 - 1) <= 0x2F)
  {
    *(a1 + 11772) = v169;
  }

  v170 = *(v142 + 256);
  if (v170 >= 1)
  {
    *(a1 + 1368) = v170;
  }

  v171 = *(v142 + 255);
  if (AVE_DevCap_FindSearchRangeMode(*(a1 + 68), 1, 1, v171))
  {
    *v23 = v171;
  }

  v172 = *(v142 + 189);
  if ((v172 & 0x80000000) == 0)
  {
    *(a1 + 12064) = v172;
    *(a1 + 10845) = 1;
  }

  v173 = *(v142 + 260);
  if (v173 <= 4)
  {
    *(a1 + 10860) = v173;
  }

  v174 = *(v142 + 400);
  if (v174 >= 1)
  {
    *(a1 + 11792) = v174;
  }

  v175 = *(v142 + 240);
  if (v175 != -13)
  {
    *(a1 + 1344) = v175;
  }

  v176 = *(v142 + 241);
  if (v176 != -13)
  {
    *(a1 + 1348) = v176;
  }

  v177 = *(v142 + 196);
  if (v177 != -13)
  {
    *(a1 + 1232) = v177;
  }

  v178 = *(v142 + 197);
  if (v178 != -13)
  {
    *(a1 + 1236) = v178;
  }

  v179 = *(v142 + 201);
  if (v179 != -13)
  {
    *(a1 + 1144) = v179;
  }

  v180 = *(v142 + 202);
  if (v180 != -13)
  {
    *(a1 + 1148) = v180;
  }

  v181 = *(v142 + 203);
  if (v181 != -13)
  {
    *(a1 + 1152) = v181;
  }

  v182 = *(v142 + 401);
  if (v182 >= 1)
  {
    *(a1 + 11796) = v182;
  }

  if (*v142 >= 1)
  {
    *(a1 + 11460) = *v142;
  }

  v183 = *(v142 + 190);
  if (v183 >= 1)
  {
    *(a1 + 1112) = v183;
  }

  v184 = *(v142 + 199);
  if (v184 >= 1)
  {
    *(a1 + 1132) = v184;
  }

  v185 = *(v142 + 200);
  if (v185 >= 1)
  {
    *(a1 + 1136) = v185;
  }

  v186 = *(v142 + 198);
  if ((v186 & 0x80000000) == 0)
  {
    *(a1 + 1128) = v186;
    *(a1 + 1120) |= 0x80000000uLL;
  }

  v187 = v142[102];
  if (v187 >= 0.0)
  {
    *(a1 + 1200) = v187;
  }

  v188 = *(v142 + 397);
  if (v188 >= 1)
  {
    *(a1 + 720) = v188;
  }

  v189 = *(v142 + 258);
  if (v189 <= 2)
  {
    *(a1 + 14196) = v189;
  }

  v190 = *(v142 + 254);
  if (v190 >= 1)
  {
    *(a1 + 10252) = v190;
  }

  v191 = *(a1 + 716);
  if (v147 != v191)
  {
    v192 = *(a1 + 12052) + 8;
    if (v192 <= *(a1 + 12056) + 8)
    {
      v192 = *(a1 + 12056) + 8;
    }

    if (AVE_UpdatePixelBufferDict(*(a1 + 68), *(a1 + 64), v191, 1, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v192, 0, 0x1414C4C20, *(a1 + 16)) && AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v193 = AVE_Log_CheckConsole(0x1Eu);
      v194 = AVE_GetCurrTime();
      v195 = AVE_Log_GetLevelStr(4);
      if (v193)
      {
        printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.\n", v194, 30, v195, "AVE_AVC_ApplyDW", 4719, "ret == 0");
        v196 = AVE_GetCurrTime();
        v217 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v196, 30, v217, "AVE_AVC_ApplyDW", 4719, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v194, 30, v195, "AVE_AVC_ApplyDW", 4719, "ret == 0");
      }
    }
  }

  v197 = *(a1 + 12036);
  if (v197 <= 2 && *(a1 + 10892) != 1)
  {
    if (*(a1 + 76) <= 29)
    {
      v198 = 1;
    }

    else
    {
      v198 = 2;
    }

    *v23 = v198;
  }

  *(a1 + 1468) = AVC_FindMaxMvsPer2Mb(v197);
  if (*(a1 + 12008) == 2)
  {
    MaxSubMbRectSize = AVC_FindMaxSubMbRectSize(*(a1 + 12036));
  }

  else
  {
    MaxSubMbRectSize = 0;
  }

  *(a1 + 1472) = MaxSubMbRectSize;
  if (AVE_Log_CheckLevel(0x10u, 7))
  {
    v200 = AVE_Log_CheckConsole(0x10u);
    v201 = AVE_GetCurrTime();
    v202 = AVE_Log_GetLevelStr(7);
    v203 = *(a1 + 1472);
    if (v200)
    {
      printf("%lld %d AVE %s: FIG: MaxMvsPer2Mb = %d MaxSubMbRectSize = %d\n", v201, 16, v202, *(a1 + 1468), v203);
      v204 = AVE_GetCurrTime();
      v205 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: MaxMvsPer2Mb = %d MaxSubMbRectSize = %d", v204, 16, v205, *(a1 + 1468), *(a1 + 1472));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: MaxMvsPer2Mb = %d MaxSubMbRectSize = %d", v201, 16, v202, *(a1 + 1468), v203);
    }
  }

  v130 = AVE_ValidateEncoderParameters(a1);
  if (v130 && AVE_Log_CheckLevel(3u, 4))
  {
    v206 = AVE_Log_CheckConsole(3u);
    v207 = AVE_GetCurrTime();
    v208 = AVE_Log_GetLevelStr(4);
    if (v206)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v207, 3, v208, "AVE_ManageSessionSettings", 5031, "err == 0");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
  }

  return v130;
}

uint64_t AVE_H264MultipassDataFetch(uint64_t a1, void *a2, _DWORD *a3)
{
  v3 = a1 + 0x4000;
  if (!*(a1 + 16468))
  {
    v9 = a2[2];
    *(a1 + 16516) = *a2;
    *(a1 + 16524) = a2[1];
    *(a1 + 16532) = v9;
    if (AVE_Log_CheckLevel(0xD8u, 6))
    {
      v10 = AVE_Log_CheckConsole(0xD8u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      if (v10)
      {
        printf("%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld\n", CurrTime, 216, LevelStr, *a2, *(a2 + 2), *(a2 + 3), a2[2]);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", CurrTime);
    }

    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v18 = AVE_Log_CheckConsole(3u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d\n", v19, 3, v20, "AVE_H264MultipassDataFetch", 4877, "err == noErr", *(v3 + 84), *a2, *(a2 + 2));
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        v35 = *a2;
        v36 = *(a2 + 2);
        v33 = "err == noErr";
        v34 = *(v3 + 84);
        v32 = 4877;
      }

      else
      {
        v35 = *a2;
        v36 = *(a2 + 2);
        v34 = *(v3 + 84);
        v32 = 4877;
        v33 = "err == noErr";
      }

      v31 = v20;
      v21 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d";
    }

    else
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v22 = AVE_Log_CheckConsole(3u);
      v19 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d\n", v19, 3, v23, "AVE_H264MultipassDataFetch", 4878, "data != __null", *(v3 + 84), *a2, *(a2 + 2));
        v19 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        v35 = *a2;
        v36 = *(a2 + 2);
        v33 = "data != __null";
        v34 = *(v3 + 84);
        v32 = 4878;
      }

      else
      {
        v35 = *a2;
        v36 = *(a2 + 2);
        v34 = *(v3 + 84);
        v32 = 4878;
        v33 = "data != __null";
      }

      v31 = v23;
      v21 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d";
    }

    syslog(3, v21, v19, 3, v31, "AVE_H264MultipassDataFetch", v32, v33, v34, v35, v36);
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
LABEL_21:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.");
        return 4294954394;
      }

      v7 = 4932;
LABEL_6:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.\n", v5, 3, v6, "AVE_H264MultipassDataFetch", v7, "err == noErr");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      goto LABEL_21;
    }

    return 4294954394;
  }

  if ((*(v3 + 144) & 0x1D) == 1)
  {
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v13 = AVE_Log_CheckConsole(3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        v16 = 4937;
LABEL_16:
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.\n", v14, 3, v15, "AVE_H264MultipassDataFetch", v16, "err == noErr");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        goto LABEL_41;
      }

      goto LABEL_41;
    }

    if (!AVE_Log_CheckLevel(3u, 4))
    {
      return 4294954394;
    }

    v25 = AVE_Log_CheckConsole(3u);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(4);
    if (v25)
    {
      v28 = 4938;
LABEL_46:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.\n", v26, 3, v27, "AVE_H264MultipassDataFetch", v28, "d != __null");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  if (!VTMultiPassStorageGetTimeStamp())
  {
    if ((*(v3 + 144) & 0x1D) != 1)
    {
      return 0;
    }

    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v24 = AVE_Log_CheckConsole(3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        v16 = 4962;
        goto LABEL_16;
      }

LABEL_41:
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.");
      return 4294954394;
    }

    if (!AVE_Log_CheckLevel(3u, 4))
    {
      return 4294954394;
    }

    v30 = AVE_Log_CheckConsole(3u);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(4);
    if (v30)
    {
      v28 = 4963;
      goto LABEL_46;
    }

LABEL_50:
    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.");
    return 4294954394;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v17 = AVE_Log_CheckConsole(3u);
    v5 = AVE_GetCurrTime();
    v6 = AVE_Log_GetLevelStr(4);
    if (!v17)
    {
      goto LABEL_21;
    }

    v7 = 4957;
    goto LABEL_6;
  }

  return 4294954394;
}

uint64_t AVE_Session_AVC_GetPropertyDict(uint64_t a1, void *a2)
{
  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_GetPropertyDict", a1, a2);
      v7 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v23, "AVE_Session_AVC_GetPropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_GetPropertyDict", a1, a2);
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
          printf("%lld %d AVE %s: %s:%d property dictionary ref count %p %lld %d\n", v13, 12, v14, "AVE_Session_AVC_GetPropertyDict", 5518, a1, *(a1 + 56), v11);
          v13 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(5);
        }

        syslog(3, "%lld %d AVE %s: %s:%d property dictionary ref count %p %lld %d", v13, 12);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v16, 12, v17, "AVE_Session_AVC_GetPropertyDict", 5498, "pINS != __null && ppDict != __null", a1, a2);
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
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v20, 12, v21, "AVE_Session_AVC_GetPropertyDict", a1, a2, v18);
      v20 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v20);
  }

  return v18;
}

uint64_t AVE_Session_AVC_GetProperty(const void *a1, const void *a2, __CFString *a3, const void *a4)
{
  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v8 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_GetProperty", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", CurrTime, 12);
  }

  if (a1 && a3 && a4)
  {
    Property = AVE_Prop_AVC_GetProperty(a1, a2, a3, a4);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v13, 12, v14, "AVE_Session_AVC_GetProperty", 5545, "pINS != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v15 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 12, v21, "AVE_Session_AVC_GetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 12, v14, "AVE_Session_AVC_GetProperty");
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
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v17, 12, v18, "AVE_Session_AVC_GetProperty", a1, a2, a3, a4, Property);
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

uint64_t AVE_Session_AVC_Prepare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v44 = *MEMORY[0x29EDCA608];
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v9 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_Prepare", v8);
      v12 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v12, 12, v37, "AVE_Session_AVC_Prepare", v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_Prepare", v8);
    }
  }

  if (v8)
  {
    if (*(v8 + 16464) != 30566)
    {
      goto LABEL_20;
    }

    bzero(v41, 0x1058uLL);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld\n", v16, 12, v17, "AVE_Session_AVC_Prepare", 5577, "err == 0", v8, *(v8 + 56));
          v16 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld", v16, 12);
      }

      goto LABEL_26;
    }

    *(v8 + 10760) = 1;
    v21 = AVE_GetCurrTime();
    v39[0] = v8 + 672;
    v39[1] = v8 + 1440;
    v22 = *(v8 + 12000);
    v39[2] = v8 + 10752;
    v39[3] = v22;
    v39[4] = *(v8 + 18064);
    v23 = *(v8 + 16480);
    v41[94] = v8 + 12008;
    v41[95] = v8 + 13724;
    v41[96] = v8 + 14108;
    v40 = v23;
    memcpy(v42, (v8 + 16592), sizeof(v42));
    v43 = v21;
    if (!AVE_USL_Drv_Prepare(*(v8 + 120), v39, v8 + 160, v24, v25, v26, v27, v28))
    {
LABEL_20:
      v14 = 0;
      *(v8 + 16464) = 30567;
      goto LABEL_26;
    }

    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v29 = AVE_Log_CheckConsole(0xCu);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld\n", v30, 12, v31, "AVE_Session_AVC_Prepare", 5586, "err == noErr", v8, *(v8 + 56));
        v30 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld", v30, 12);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v19, 12, v20, "AVE_Session_AVC_Prepare", 5567, "pINS != __null", 0);
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
    v32 = AVE_Log_CheckConsole(0xCu);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(6);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v33, 12, v34, "AVE_Session_AVC_Prepare", v8, v14);
      v35 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v35, 12, v38, "AVE_Session_AVC_Prepare", v8, v14);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v33, 12, v34, "AVE_Session_AVC_Prepare", v8, v14);
    }
  }

  return v14;
}

uint64_t AVE_Session_AVC_BeginPass(uint64_t a1, int a2)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%x\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_BeginPass", a1, a2);
      v7 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", v7, 12, v37, "AVE_Session_AVC_BeginPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", CurrTime, 12, LevelStr, "AVE_Session_AVC_BeginPass", a1, a2);
    }
  }

  if (a1)
  {
    if (AVE_Log_CheckLevel(0xD8u, 7))
    {
      v8 = AVE_Log_CheckConsole(0xD8u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(7);
      v11 = *(a1 + 16508);
      if (v8)
      {
        printf("%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)\n", v9, 216, v10, a2, *(a1 + 16504), v11);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v12, 216, v13, a2, *(a1 + 16504), *(a1 + 16508));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v9, 216, v10, a2, *(a1 + 16504), v11);
      }
    }

    if (!*(a1 + 16496))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v22 = AVE_Log_CheckConsole(3u);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.\n", v23, 3, v24, "AVE_Session_AVC_BeginPass", 5616, "pINS->multiPassStorage != __null");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.");
      }

      goto LABEL_40;
    }

    v17 = *(a1 + 16504);
    if (v17 != *(a1 + 16508))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v25 = AVE_Log_CheckConsole(3u);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v26, 3, v27, "AVE_Session_AVC_BeginPass", 5617, "pINS->multiPassBeginPassCounter == pINS->multiPassEndPassCounter", *(a1 + 16504), *(a1 + 16508));
          v26 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d", v26);
      }

      goto LABEL_40;
    }

    if (v17)
    {
      v18 = v17 + 1;
      *(a1 + 16504) = v18;
      if (v18 >= 3)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v19 = AVE_Log_CheckConsole(3u);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          if (v19)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d\n", v20, 3, v21, "AVE_Session_AVC_BeginPass", 5626, "false", *(a1 + 16504));
            v20 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d", v20);
        }

LABEL_40:
        v28 = 4294966296;
        goto LABEL_41;
      }
    }

    else
    {
      if (*(a1 + 16464) == 30568)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v29 = AVE_Log_CheckConsole(3u);
          v30 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run\n", v30, 3, v31, "AVE_Session_AVC_BeginPass", 5620, "pINS->SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run");
        }

        goto LABEL_40;
      }

      *(a1 + 16504) = 1;
    }

    v28 = 0;
    *(a1 + 16512) = a2;
    goto LABEL_41;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v14 = AVE_Log_CheckConsole(0xCu);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x\n", v15, 12, v16, "AVE_Session_AVC_BeginPass", 5611, "pINS != __null", 0, a2);
      v15 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x", v15, 12);
  }

  v28 = 4294966295;
LABEL_41:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v32 = AVE_Log_CheckConsole(0xCu);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(6);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%x %d\n", v33, 12, v34, "AVE_Session_AVC_BeginPass", a1, a2, v28);
      v35 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v35);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v33);
    }
  }

  return v28;
}

uint64_t AVE_Session_AVC_EndPass(uint64_t a1, int *a2)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_EndPass", a1, a2);
      v7 = AVE_GetCurrTime();
      v96 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v96, "AVE_Session_AVC_EndPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_EndPass", a1, a2);
    }
  }

  if (a1)
  {
    if (AVE_Log_CheckLevel(0xD8u, 7))
    {
      v8 = AVE_Log_CheckConsole(0xD8u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(7);
      if (v8)
      {
        printf("%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)\n", v9, 216, v10, "AVE_Session_AVC_EndPass", *(a1 + 16512), *(a1 + 16504), *(a1 + 16508));
        v9 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)", v9);
    }

    if (*(a1 + 16464) != 30568)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v24 = AVE_Log_CheckConsole(3u);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run\n", v25, 3, v26, "AVE_Session_AVC_EndPass", 5665, "pINS->SessionStatus == AVE_CommonWrapper_SessionStatus_Run");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
      }

      goto LABEL_57;
    }

    if (!*(a1 + 16496))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v27 = AVE_Log_CheckConsole(3u);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.\n", v28, 3, v29, "AVE_Session_AVC_EndPass", 5667, "pINS->multiPassStorage != __null");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.");
      }

      goto LABEL_57;
    }

    v14 = *(a1 + 16504);
    v15 = *(a1 + 16508);
    if (v14 != v15 + 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v30 = AVE_Log_CheckConsole(3u);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v31, 3, v32, "AVE_Session_AVC_EndPass", 5672, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 16504), *(a1 + 16508));
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d", v31, 3, v32, "AVE_Session_AVC_EndPass", 5672, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 16504), *(a1 + 16508));
      }

      goto LABEL_57;
    }

    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = *(a1 + 16512) == 1;
    }

    v17 = !v16;
    *(a1 + 16508) = v14;
    if (a2)
    {
      *a2 = v17;
    }

    if (!v17)
    {
      v33 = 0;
      goto LABEL_58;
    }

    if (AVE_Log_CheckLevel(0xD8u, 6))
    {
      v18 = AVE_Log_CheckConsole(0xD8u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(6);
      v21 = *(a1 + 16468);
      if (v18)
      {
        printf("%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d\n", v19, 216, v20, "AVE_Session_AVC_EndPass", *(a1 + 16508), v21);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v22, 216, v23, "AVE_Session_AVC_EndPass", *(a1 + 16508), *(a1 + 16468));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v19, 216, v20, "AVE_Session_AVC_EndPass", *(a1 + 16508), v21);
      }
    }

    if (AVE_USL_Drv_Reset(*(a1 + 120), *(a1 + 16508)))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v34 = AVE_Log_CheckConsole(3u);
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        if (v34)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Reset failed.\n", v35, 3, v36, "AVE_Session_AVC_EndPass", 5707, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Reset failed.");
      }

LABEL_57:
      v33 = 4294966296;
      goto LABEL_58;
    }

    if (*(a1 + 16) == 1)
    {
      goto LABEL_122;
    }

    v37 = MEMORY[0x29EDB9398];
    v102 = **&MEMORY[0x29EDB9398];
    start = v102;
    v100 = v102;
    v38 = *MEMORY[0x29EDB8ED8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v40 = Mutable;
      *&v98.start.value = *v37;
      v98.start.epoch = *(v37 + 16);
      if (VTMultiPassStorageGetTimeStamp())
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v41 = AVE_Log_CheckConsole(3u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp kVTMultiPassStorageStep_GetFirstTimeStamp failed.\n", v42, 3, v43, "AVE_Session_AVC_EndPass", 5723, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp kVTMultiPassStorageStep_GetFirstTimeStamp failed.");
        }

        goto LABEL_57;
      }

      if (AVE_Log_CheckLevel(0xD8u, 7))
      {
        v51 = AVE_Log_CheckConsole(0xD8u);
        v52 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(7);
        if (v51)
        {
          printf("%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d\n", v52, 216, v53, "AVE_Session_AVC_EndPass", v102.value, v102.timescale, v102.flags);
          v52 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d", v52);
      }

      *&v98.start.value = *v37;
      v98.start.epoch = *(v37 + 16);
      if (VTMultiPassStorageGetTimeStampAndDuration())
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v54 = AVE_Log_CheckConsole(3u);
          v55 = AVE_GetCurrTime();
          v56 = AVE_Log_GetLevelStr(4);
          if (v54)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStampAndDuration kVTMultiPassStorageStep_GetLastTimeStamp failed.\n", v55, 3, v56, "AVE_Session_AVC_EndPass", 5739, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStampAndDuration kVTMultiPassStorageStep_GetLastTimeStamp failed.");
        }

        goto LABEL_57;
      }

      if (AVE_Log_CheckLevel(0xD8u, 7))
      {
        v57 = AVE_Log_CheckConsole(0xD8u);
        v58 = AVE_GetCurrTime();
        v59 = AVE_Log_GetLevelStr(7);
        if (v57)
        {
          printf("%lld %d AVE %s: %s lastTimeInTimeRange value %lld timescale %d flags %d\n", v58, 216, v59, "AVE_Session_AVC_EndPass", start.value, start.timescale, start.flags);
          v58 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s lastTimeInTimeRange value %lld timescale %d flags %d", v58);
      }

      if (AVE_Log_CheckLevel(0xD8u, 7))
      {
        v60 = AVE_Log_CheckConsole(0xD8u);
        v61 = AVE_GetCurrTime();
        v62 = AVE_Log_GetLevelStr(7);
        if (v60)
        {
          printf("%lld %d AVE %s: %s duration value %lld timescale %d flags %d\n", v61, 216, v62, "AVE_Session_AVC_EndPass", v100.value, v100.timescale, v100.flags);
          v61 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s duration value %lld timescale %d flags %d", v61);
      }

      lhs.start = start;
      rhs = v100;
      CMTimeAdd(&v98.start, &lhs.start, &rhs);
      start = v98.start;
      if (AVE_Log_CheckLevel(0xD8u, 7))
      {
        v63 = AVE_Log_CheckConsole(0xD8u);
        v64 = AVE_GetCurrTime();
        v65 = AVE_Log_GetLevelStr(7);
        if (v63)
        {
          printf("%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d\n", v64, 216, v65, "AVE_Session_AVC_EndPass", start.value, start.timescale, start.flags);
          v64 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d", v64);
      }

      if (*(a1 + 16468) <= 1u && !start.flags)
      {
        v66 = *(a1 + 1112);
        if (v66 < 1)
        {
          v66 = 30;
        }

        *&start.timescale = *&v102.timescale;
        start.epoch = v102.epoch;
        start.value = v102.value + v102.timescale / v66;
      }

      if (!v102.flags)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v70 = AVE_Log_CheckConsole(3u);
          v71 = AVE_GetCurrTime();
          v72 = AVE_Log_GetLevelStr(4);
          if (v70)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: firstTimeInTimeRange invalid.\n", v71, 3, v72, "AVE_Session_AVC_EndPass", 5765, "firstTimeInTimeRange.flags != 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: firstTimeInTimeRange invalid.");
        }

        goto LABEL_57;
      }

      if (!start.flags)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v73 = AVE_Log_CheckConsole(3u);
          v74 = AVE_GetCurrTime();
          v75 = AVE_Log_GetLevelStr(4);
          if (v73)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: lastTimeInTimeRange invalid.\n", v74, 3, v75, "AVE_Session_AVC_EndPass", 5767, "lastTimeInTimeRange.flags != 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: lastTimeInTimeRange invalid.");
        }

        goto LABEL_57;
      }

      memset(&v98, 0, sizeof(v98));
      lhs.start = v102;
      rhs = start;
      CMTimeRangeFromTimeToTime(&v98, &lhs.start, &rhs);
      if (AVE_Log_CheckLevel(0xD8u, 6))
      {
        v67 = AVE_Log_CheckConsole(0xD8u);
        v68 = AVE_GetCurrTime();
        v69 = AVE_Log_GetLevelStr(6);
        if (v67)
        {
          printf("%lld %d AVE %s: Start %lld, %d, %d; Duration %lld, %d, %d\n", v68, 216, v69, v98.start.value, v98.start.timescale, v98.start.flags, v98.duration.value, v98.duration.timescale, v98.duration.flags);
          v68 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(6);
        }

        syslog(3, "%lld %d AVE %s: Start %lld, %d, %d; Duration %lld, %d, %d", v68, 216);
      }

      lhs = v98;
      v76 = CMTimeRangeCopyAsDictionary(&lhs, v38);
      if (!v76)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v90 = AVE_Log_CheckConsole(3u);
          v91 = AVE_GetCurrTime();
          v92 = AVE_Log_GetLevelStr(4);
          if (v90)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: CMTimeRangeCopyAsDictionary failed.\n", v91, 3, v92, "AVE_Session_AVC_EndPass", 5776, "currentTimeRangeDictionary != __null");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CMTimeRangeCopyAsDictionary failed.");
        }

        goto LABEL_57;
      }

      v77 = v76;
      CFArrayAppendValue(v40, v76);
      CFRelease(v77);
      Count = CFArrayGetCount(v40);
      v79 = malloc_type_malloc(48 * Count, 0x1000040EED21634uLL);
      if (v79)
      {
        v80 = v79;
        if (Count >= 1)
        {
          v81 = 0;
          v82 = v79;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v40, v81);
            CMTimeRangeMakeFromDictionary(&lhs, ValueAtIndex);
            v84 = *&lhs.start.value;
            v85 = *&lhs.duration.timescale;
            v82[1] = *&lhs.start.epoch;
            v82[2] = v85;
            *v82 = v84;
            v82 += 3;
            ++v81;
          }

          while (Count != v81);
        }

        Pass = VTEncoderSessionSetTimeRangesForNextPass();
        free(v80);
        CFRelease(v40);
        if (Pass)
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v87 = AVE_Log_CheckConsole(3u);
            v88 = AVE_GetCurrTime();
            v89 = AVE_Log_GetLevelStr(4);
            if (v87)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.\n", v88, 3, v89, "AVE_Session_AVC_EndPass", 5810, "err == noErr");
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.");
          }

          goto LABEL_57;
        }

LABEL_122:
        v33 = 0;
        *(a1 + 16540) = *(a1 + 16468);
        *(a1 + 16468) = 0;
        goto LABEL_58;
      }

      if (AVE_Log_CheckLevel(3u, 4))
      {
        v93 = AVE_Log_CheckConsole(3u);
        v94 = AVE_GetCurrTime();
        v95 = AVE_Log_GetLevelStr(4);
        if (v93)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: malloc timeRanges failed.\n", v94, 3, v95, "AVE_Session_AVC_EndPass", 5788, "timeRanges != __null");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: malloc timeRanges failed.");
      }
    }

    else if (AVE_Log_CheckLevel(3u, 4))
    {
      v48 = AVE_Log_CheckConsole(3u);
      v49 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(4);
      if (v48)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: CFArrayCreateMutable failed.\n", v49, 3, v50, "AVE_Session_AVC_EndPass", 5720, "timeRangeArray != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFArrayCreateMutable failed.");
    }

    v33 = 4294966293;
    goto LABEL_58;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v11 = AVE_Log_CheckConsole(0xCu);
    v12 = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v12, 12, v13, "AVE_Session_AVC_EndPass", 5654, "pINS != __null", 0, a2);
      v12 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v12, 12);
  }

  v33 = 4294966295;
LABEL_58:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v44 = AVE_Log_CheckConsole(0xCu);
    v45 = AVE_GetCurrTime();
    v46 = AVE_Log_GetLevelStr(6);
    if (v44)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v45, 12, v46, "AVE_Session_AVC_EndPass", a1, a2, v33);
      v45 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v45);
  }

  return v33;
}

uint64_t AVE_Session_AVC_StartTileSession(uint64_t a1, unsigned int *a2)
{
  v70 = *MEMORY[0x29EDCA608];
  cf = 0;
  memset(v69, 0, sizeof(v69));
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_StartTileSession", a1, a2);
      v7 = AVE_GetCurrTime();
      v63 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v63, "AVE_Session_AVC_StartTileSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_StartTileSession", a1, a2);
    }
  }

  if (a1 && a2)
  {
    if (*a2 < 1 || a2[1] <= 0)
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v19 = AVE_Log_CheckConsole(0xCu);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_AVC_StartTileSession", 6039, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
        }

        goto LABEL_32;
      }

LABEL_33:
      v28 = 0;
      v20 = 4294965295;
LABEL_34:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v28)
      {
        CFRelease(v28);
      }

      goto LABEL_38;
    }

    v8 = *(a1 + 12000);
    v9 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v8, 3u, v9);
    v10 = *a2;
    v11 = a2[1];
    *(a1 + 1440) = *a2;
    *(a1 + 1444) = v11;
    *(a1 + 11452) = v10;
    *(a1 + 11456) = v11;
    *(a1 + 764) = 2;
    MinResolution = AVE_Enc_GetMinResolution(*(a1 + 68), 1, 1);
    AVE_PrepareCropParams(a1);
    if (AVE_Enc_CheckResolution(*(a1 + 68), 1, 1, *(a1 + 1440), *(a1 + 1444), 0))
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v13 = AVE_Log_CheckConsole(0xCu);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_AVC_StartTileSession", 6060, "ret == 0", a1, *(a1 + 56), *(a1 + 1440), *(a1 + 1444));
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
        }

LABEL_32:
        syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v14, 12, v15);
        goto LABEL_33;
      }

      goto LABEL_33;
    }

    v21 = MinResolution[1];
    if (*(a1 + 1440) <= *MinResolution)
    {
      v22 = *MinResolution;
    }

    else
    {
      v22 = *(a1 + 1440);
    }

    if (*(a1 + 1444) <= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = *(a1 + 1444);
    }

    AVE_SetEncoderDefault(a1);
    if (AVE_Log_CheckLevel(0xCu, 7))
    {
      v24 = AVE_Log_CheckConsole(0xCu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(7);
      if (v24)
      {
        printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault\n", v25, 12, v26);
        v27 = AVE_GetCurrTime();
        v64 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v27, 12, v64);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v25, 12, v26);
      }
    }

    *(a1 + 10752) = 2;
    *(a1 + 1464) = 0;
    *(a1 + 1252) = 1;
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    *(a1 + 1240) &= ~0x400u;
    if (*(a1 + 1132) != 3)
    {
      *(a1 + 1132) = 3;
      if ((*(a1 + 10844) & 1) == 0)
      {
        *(a1 + 1144) = 0xC0000000CLL;
        *(a1 + 1152) = 12;
      }

      *(a1 + 1112) = 30;
      *(a1 + 1352) = 30;
      *(a1 + 10764) = 1;
    }

    *(a1 + 10184) = 1;
    *(a1 + 10176) = 2;
    *(a1 + 14196) = 1;
    *(a1 + 12064) = 6;
    *(a1 + 1448) |= 0x10000000uLL;
    v33 = *(a1 + 1336);
    *(a1 + 1120) |= 0x200000000uLL;
    *(a1 + 1356) |= 2u;
    *(a1 + 1336) = v33 & 0xFEFFFFBF | 0x1000000;
    *(a1 + 1096) = 0;
    AVE_NewDefaultsBasedOnProfileUsageDefault(a1);
    *(a1 + 10522) = 0;
    *(a1 + 1240) &= ~0x100u;
    *(a1 + 10855) = 0;
    if (AVE_Log_CheckLevel(0xCu, 7))
    {
      v34 = AVE_Log_CheckConsole(0xCu);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(7);
      if (v34)
      {
        printf("%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault\n", v35, 12, v36);
        v37 = AVE_GetCurrTime();
        v65 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v37, 12, v65);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v35, 12, v36);
      }
    }

    if (AVE_PixelBuf_CreateAttrDict(*(a1 + 68), *(a1 + 64), 62, 1, *a2, a2[1], v22, v23, 0x414C4C20u, 1, v69, &cf))
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v38 = AVE_Log_CheckConsole(0xCu);
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d\n", v39, 12, v40, "AVE_Session_AVC_StartTileSession", 6078, "err == noErr", a1, *(a1 + 56), 0);
          v39 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d", v39, 12, v40, "AVE_Session_AVC_StartTileSession", 6078, "err == noErr", a1, *(a1 + 56), 0);
      }

LABEL_63:
      v28 = 0;
LABEL_64:
      v20 = 4294966296;
      goto LABEL_34;
    }

    if (*(a1 + 16) == 1)
    {
      if (AVE_Log_CheckLevel(0xCu, 7))
      {
        v44 = AVE_Log_CheckConsole(0xCu);
        v45 = AVE_GetCurrTime();
        v46 = AVE_Log_GetLevelStr(7);
        if (v44)
        {
          printf("%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK\n", v45, 12, v46);
          v47 = AVE_GetCurrTime();
          v66 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v47, 12, v66);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v45, 12, v46);
        }
      }

      v28 = 0;
    }

    else
    {
      if (VTTileEncoderSessionSetTileAttributes())
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v41 = AVE_Log_CheckConsole(3u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.\n", v42, 3, v43, "AVE_Session_AVC_StartTileSession", 6092, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.");
        }

        goto LABEL_63;
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (!Mutable)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v59 = AVE_Log_CheckConsole(3u);
          v60 = AVE_GetCurrTime();
          v61 = AVE_Log_GetLevelStr(4);
          if (v59)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.\n", v60, 3, v61, "AVE_Session_AVC_StartTileSession", 6096, "TileRequirements");
            v62 = AVE_GetCurrTime();
            v67 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v62, 3, v67, "AVE_Session_AVC_StartTileSession", 6096, "TileRequirements");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v60, 3, v61, "AVE_Session_AVC_StartTileSession", 6096, "TileRequirements");
          }
        }

        v28 = 0;
        v20 = 4294966293;
        goto LABEL_34;
      }

      v28 = Mutable;
      if (*(a1 + 76) >= 12)
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBD1C0], *MEMORY[0x29EDB8F00]);
      }

      if (VTTileEncoderSessionSetTileEncodeRequirements())
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v49 = AVE_Log_CheckConsole(3u);
          v50 = AVE_GetCurrTime();
          v51 = AVE_Log_GetLevelStr(4);
          if (v49)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.\n", v50, 3, v51, "AVE_Session_AVC_StartTileSession", 6102, "err == noErr", "AVE_Session_AVC_StartTileSession", 6102);
            v50 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.", v50, 3);
        }

        goto LABEL_64;
      }
    }

    *(a1 + 16464) = 30566;
    if (*(a1 + 16) == 1)
    {
      v52 = 1;
    }

    else
    {
      v52 = 3;
    }

    v53 = AVE_SEI::Init(*(a1 + 16488), *(a1 + 56), 0, 0, 1, v52);
    if (v53)
    {
      v20 = v53;
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v54 = AVE_Log_CheckConsole(0xCu);
        v55 = AVE_GetCurrTime();
        v56 = AVE_Log_GetLevelStr(4);
        if (v54)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v55, 12, v56, "AVE_Session_AVC_StartTileSession", 6120, "ret == 0", a1, *(a1 + 56));
          v55 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu", v55, 12);
      }
    }

    else
    {
      v57 = *(a1 + 12000);
      v58 = AVE_GetCurrTime();
      AVE_TimeStats_AddEndTime(v57, 3u, v58);
      v20 = 0;
    }

    goto LABEL_34;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v16 = AVE_Log_CheckConsole(0xCu);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(4);
    if (v16)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v17, 12, v18, "AVE_Session_AVC_StartTileSession", 6035, "pINS != __null && pDim != __null", a1, a2);
      v17 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v17, 12);
  }

  v20 = 4294966295;
LABEL_38:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v29 = AVE_Log_CheckConsole(0xCu);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(6);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v30, 12, v31, "AVE_Session_AVC_StartTileSession", a1, a2, v20);
      v30 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v30);
  }

  return v20;
}

uint64_t AVE_Session_AVC_ProcessTile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  theDict = v10;
  v119 = v9;
  v120 = v11;
  v121 = v8;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v157 = *MEMORY[0x29EDCA608];
  pixelBuffer = v14;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v18 = AVE_DW_Get();
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v19 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_ProcessTile", v121, v17, v15, v13, v119, v120, theDict);
      v22 = AVE_GetCurrTime();
      v106 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v22, 12, v106, "AVE_Session_AVC_ProcessTile", v121);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_ProcessTile", v121);
    }
  }

  if (v120 && v119 && v121 && pixelBuffer)
  {
    v23 = (v121 + 16464);
    if (!*(v121 + 16468))
    {
      v34 = AVE_SEI::SetSEIBits(*(v121 + 16488), *(v121 + 1096));
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
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v37, 3, v38, "AVE_Session_AVC_ProcessTile", 6176, "ret == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration");
        }

        goto LABEL_90;
      }

      v58 = *(v121 + 12000);
      v59 = AVE_GetCurrTime();
      AVE_TimeStats_AddStartTime(v58, 5u, v59);
    }

    v24 = AVE_GetCurrTime();
    if (*(v121 + 1112) >= 1)
    {
      v25 = *(v121 + 1112);
    }

    else
    {
      v25 = 30;
    }

    AVE_Time_Gen(v25, v121 + 16576);
    if (AVE_Log_CheckLevel(0x33u, 7))
    {
      v26 = AVE_Log_CheckConsole(0x33u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(7);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d\n", v27, 51, v28, "AVE_Session_AVC_ProcessTile", 6188, *(v121 + 56), *(v121 + 16468), *(v121 + 16576), *(v121 + 16584));
        v29 = AVE_GetCurrTime();
        v107 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v29, 51, v107);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v27, 51, v28);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v121 + 18080) = PixelFormatType;
    if (!*(v121 + 16468))
    {
      v145 = *(v121 + 1440);
      v40 = AVE_PixelFmt_FindByType(PixelFormatType);
      if (!v40)
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_89;
        }

        v60 = AVE_Log_CheckConsole(3u);
        v55 = AVE_GetCurrTime();
        v61 = AVE_Log_GetLevelStr(4);
        if (v60)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v55, 3, v61, "AVE_Session_AVC_ProcessTile", 6202, "pPixelFmt != __null", v121, *(v121 + 56), *(v121 + 18080));
          v55 = AVE_GetCurrTime();
          v61 = AVE_Log_GetLevelStr(4);
        }

        v116 = *(v121 + 56);
        v117 = *(v121 + 18080);
        v114 = "pPixelFmt != __null";
        v115 = v121;
        v113 = 6202;
        v109 = v61;
        v57 = "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x";
        goto LABEL_74;
      }

      if (*(v18 + 420))
      {
        v41 = (v18 + 105);
      }

      else
      {
        v41 = 0;
      }

      AVE_Dump_Init(*(v121 + 18064), v41, *(v121 + 64), *(v121 + 10772), v18[103], v18[104], &v145, 1, *(v40 + 3), *(v40 + 1), *(v121 + 1136));
      AVE_Dump_WriteInput(*(v121 + 18064), -1, pixelBuffer);
    }

    v42 = *v23;
    if (*v23 == 30566)
    {
      if (AVE_ISP_CheckMetadata(pixelBuffer))
      {
        v49 = 1;
      }

      else
      {
        v49 = 2;
      }

      *(v121 + 10804) = v49;
      v50 = AVE_ManageSessionSettings(v121);
      if (v50)
      {
        v35 = v50;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v51 = AVE_Log_CheckConsole(3u);
          v52 = AVE_GetCurrTime();
          v53 = AVE_Log_GetLevelStr(4);
          if (v51)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v52, 3, v53, "AVE_Session_AVC_ProcessTile", 6287, "err == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed");
        }

        goto LABEL_90;
      }

      AVE_UpdateCropParams(v121, pixelBuffer);
      if (AVE_AVC_VerifyImageBuffer(v121, &pixelBuffer, &v139, &v138, &v137 + 1, &v137, 1))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v66 = AVE_Log_CheckConsole(3u);
          v44 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(4);
          if (!v66)
          {
LABEL_88:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.");
            goto LABEL_89;
          }

          v46 = 6297;
LABEL_70:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.\n", v44, 3, v45, "AVE_Session_AVC_ProcessTile", v46, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_88;
        }

LABEL_89:
        v35 = 4294966296;
LABEL_90:
        if (v139 == 1 && pixelBuffer)
        {
          CVPixelBufferRelease(pixelBuffer);
        }

        ++*(v121 + 16468);
        goto LABEL_94;
      }

      AVE_SetEncoderBasedOnFirstFrame();
      if (AVE_ValidateEncoderParameters(v121))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_89;
        }

        v74 = AVE_Log_CheckConsole(3u);
        v63 = AVE_GetCurrTime();
        v64 = AVE_Log_GetLevelStr(4);
        if (v74)
        {
          v65 = 6307;
          goto LABEL_86;
        }

LABEL_142:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        goto LABEL_89;
      }

      v67 = v17;
      AVE_PrepareSequenceHeader(v121, pixelBuffer);
      bzero(v151, 0x1058uLL);
      v145 = v121 + 672;
      v146 = v121 + 1440;
      v80 = *(v121 + 12000);
      v147 = v121 + 10752;
      BytePtr = v80;
      v81 = *(v121 + 16480);
      v149 = *(v121 + 18064);
      v152 = v121 + 12008;
      v153 = v121 + 13724;
      v154 = v121 + 14108;
      v150 = v81;
      memcpy(v155, (v121 + 16592), sizeof(v155));
      v156 = v24;
      if (AVE_USL_Drv_Start(*(v121 + 120), &v145, v121 + 128, *(v121 + 16), *(v121 + 112), *(v121 + 16472), *(v121 + 16496), v121 + 160, (v121 + 11772), (v121 + 11464)))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_89;
        }

        v82 = AVE_Log_CheckConsole(3u);
        v71 = AVE_GetCurrTime();
        v72 = AVE_Log_GetLevelStr(4);
        if (v82)
        {
          v73 = 6331;
          goto LABEL_103;
        }

LABEL_145:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.");
        goto LABEL_89;
      }
    }

    else
    {
      if (v42 != 30567)
      {
        if (v42 == 30568)
        {
          if (AVE_AVC_VerifyImageBuffer(v121, &pixelBuffer, &v139, &v138, &v137 + 1, &v137, 0))
          {
            if (AVE_Log_CheckLevel(3u, 4))
            {
              v43 = AVE_Log_CheckConsole(3u);
              v44 = AVE_GetCurrTime();
              v45 = AVE_Log_GetLevelStr(4);
              if (!v43)
              {
                goto LABEL_88;
              }

              v46 = 6221;
              goto LABEL_70;
            }

            goto LABEL_89;
          }

LABEL_105:
          *v23 = 30568;
          bzero(v142, 0x1738uLL);
          v135 = 0u;
          v136 = 0u;
          *&v132[16] = 0u;
          v133 = 0;
          v131 = 0u;
          *v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v128 = 0u;
          v127 = 0u;
          v126 = 0u;
          memset(v122, 0, sizeof(v122));
          *v123 = 0u;
          v124 = 0;
          bzero(&v145, 0x4A40uLL);
          v125[0] = v17;
          v125[1] = pixelBuffer;
          v134 = v142;
          *&v135 = v24;
          v83 = *(v121 + 16576);
          DWORD2(v135) = *(v121 + 16508);
          *&v132[8] = v83;
          v133 = &v145;
          if (*(v121 + 10804) == 2)
          {
            AVE_ISP_GetMetadata(pixelBuffer, v122);
            AVE_Dump_WriteISPMetadata(*(v121 + 18064), *(v121 + 16508), *(v121 + 16468), v122);
          }

          *&v132[24] = v122;
          if ((*(v121 + 1337) & 2) != 0 && *(v121 + 76) >= 4 && !AVE_ANFD_GetInfo(theDict, v143))
          {
            memset(v141, 0, sizeof(v141));
            AVE_SNPrintf(v141, 32, "%llu %d %d", *(v121 + 56), *(v121 + 16468), v143[0]);
            AVE_ANFD_PrintInfo(v143, 47, 6, v141, 0);
            v144 = v144 & 0xFFFFFDFF | ((v143[0] > 0) << 9);
          }

          v84 = CMGetAttachment(pixelBuffer, *MEMORY[0x29EDBFF98], 0);
          if (v84)
          {
            AVE_SEI::SetISPMetadata(*(v121 + 16488), *(v121 + 16468), v84);
          }

          AVE_SEI::SetDriverVersion(*(v121 + 16488), *(v121 + 16468));
          AVE_SEI::SetSessionID(*(v121 + 16488), *(v121 + 16468), *(v121 + 56));
          AVE_SEI::SetExposureTime(*(v121 + 16488), *(v121 + 16468), *&v122[1]);
          AVE_SEI::SetSNR(*(v121 + 16488), *(v121 + 16468), *v122);
          AVE_SEI::SetLuxLevel(*(v121 + 16488), *(v121 + 16468), v123[1]);
          AVE_SEI::SetPTS(*(v121 + 16488), *(v121 + 16468), v119[2], *v119);
          if (AVE_Log_CheckLevel(0xCu, 7))
          {
            v85 = AVE_Log_CheckConsole(0xCu);
            v86 = AVE_GetCurrTime();
            v87 = AVE_Log_GetLevelStr(7);
            if (v85)
            {
              printf("%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData\n", v86, 12, v87);
              v88 = AVE_GetCurrTime();
              v111 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v88, 12, v111);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v86, 12, v87);
            }
          }

          v155[530] = *(v121 + 10204);
          LODWORD(v149) = 0;
          BytePtr = 0;
          if (theDict)
          {
            Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCF18]);
            v144 &= ~0x10000u;
            if (*(v121 + 1338))
            {
              v90 = Value;
              if (Value)
              {
                LODWORD(v149) = CFDataGetLength(Value);
                BytePtr = CFDataGetBytePtr(v90);
                v144 |= 0x10000u;
              }
            }
          }

          if (AVE_Log_CheckLevel(0xCu, 7))
          {
            v91 = AVE_Log_CheckConsole(0xCu);
            v92 = AVE_GetCurrTime();
            v93 = AVE_Log_GetLevelStr(7);
            if (v91)
            {
              printf("%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData\n", v92, 12, v93);
              v94 = AVE_GetCurrTime();
              v112 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v94, 12, v112);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v92, 12, v93);
            }
          }

          if (AVE_GetTileInfo(v121, &v145, v13))
          {
            if (AVE_Log_CheckLevel(3u, 4))
            {
              v95 = AVE_Log_CheckConsole(3u);
              v96 = AVE_GetCurrTime();
              v97 = AVE_Log_GetLevelStr(4);
              if (v95)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.\n", v96, 3, v97, "AVE_Session_AVC_ProcessTile", 6433, "err == noErr");
                AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.");
            }
          }

          else
          {
            if (v138)
            {
              v98 = pixelBuffer;
            }

            else
            {
              v98 = 0;
            }

            *(&v128 + 1) = v98;
            v99 = AVE_USL_Drv_Process(*(v121 + 120), v125);
            v35 = v99;
            if (!v99)
            {
              goto LABEL_90;
            }

            if (v99 == -536870173)
            {
              if (AVE_Log_CheckLevel(0x10u, 5))
              {
                v100 = AVE_Log_CheckConsole(0x10u);
                v101 = AVE_GetCurrTime();
                v102 = AVE_Log_GetLevelStr(5);
                if (v100)
                {
                  printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v101, 16, v102);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame");
              }
            }

            else if (AVE_Log_CheckLevel(3u, 4))
            {
              v103 = AVE_Log_CheckConsole(3u);
              v104 = AVE_GetCurrTime();
              v105 = AVE_Log_GetLevelStr(4);
              if (v103)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v104, 3, v105, "AVE_Session_AVC_ProcessTile", 6456, "err == noErr");
                AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
            }
          }

          goto LABEL_89;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_89;
        }

        v54 = AVE_Log_CheckConsole(3u);
        v55 = AVE_GetCurrTime();
        v56 = AVE_Log_GetLevelStr(4);
        if (v54)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v55, 3, v56, "AVE_Session_AVC_ProcessTile", 6339, "false", *v23);
          v55 = AVE_GetCurrTime();
          v56 = AVE_Log_GetLevelStr(4);
          v114 = "false";
          v115 = *v23;
          v113 = 6339;
        }

        else
        {
          v115 = *v23;
          v113 = 6339;
          v114 = "false";
        }

        v109 = v56;
        v57 = "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.";
LABEL_74:
        syslog(3, v57, v55, 3, v109, "AVE_Session_AVC_ProcessTile", v113, v114, v115, v116, v117);
        goto LABEL_89;
      }

      if (AVE_ISP_CheckMetadata(pixelBuffer))
      {
        v47 = 1;
      }

      else
      {
        v47 = 2;
      }

      *(v121 + 10804) = v47;
      AVE_UpdateCropParams(v121, pixelBuffer);
      if (AVE_AVC_VerifyImageBuffer(v121, &pixelBuffer, &v139, &v138, &v137 + 1, &v137, 1))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v48 = AVE_Log_CheckConsole(3u);
          v44 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(4);
          if (!v48)
          {
            goto LABEL_88;
          }

          v46 = 6238;
          goto LABEL_70;
        }

        goto LABEL_89;
      }

      AVE_SetEncoderBasedOnFirstFrame();
      if (AVE_ValidateEncoderParameters(v121))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_89;
        }

        v62 = AVE_Log_CheckConsole(3u);
        v63 = AVE_GetCurrTime();
        v64 = AVE_Log_GetLevelStr(4);
        if (v62)
        {
          v65 = 6248;
LABEL_86:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v63, 3, v64, "AVE_Session_AVC_ProcessTile", v65, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_142;
        }

        goto LABEL_142;
      }

      v67 = v17;
      AVE_PrepareSequenceHeader(v121, pixelBuffer);
      bzero(v151, 0x1058uLL);
      v145 = v121 + 672;
      v146 = v121 + 1440;
      v68 = *(v121 + 12000);
      v147 = v121 + 10752;
      BytePtr = v68;
      v69 = *(v121 + 16480);
      v149 = *(v121 + 18064);
      v152 = v121 + 12008;
      v153 = v121 + 13724;
      v154 = v121 + 14108;
      v150 = v69;
      memcpy(v155, (v121 + 16592), sizeof(v155));
      v156 = v24;
      if (AVE_USL_Drv_Start(*(v121 + 120), &v145, v121 + 128, *(v121 + 16), *(v121 + 112), *(v121 + 16472), *(v121 + 16496), v121 + 160, (v121 + 11772), (v121 + 11464)))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_89;
        }

        v70 = AVE_Log_CheckConsole(3u);
        v71 = AVE_GetCurrTime();
        v72 = AVE_Log_GetLevelStr(4);
        if (v70)
        {
          v73 = 6272;
LABEL_103:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v71, 3, v72, "AVE_Session_AVC_ProcessTile", v73, "err == noErr");
          AVE_GetCurrTime();
          v17 = v67;
          AVE_Log_GetLevelStr(4);
          goto LABEL_145;
        }

        goto LABEL_145;
      }
    }

    v17 = v67;
    goto LABEL_105;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v30 = AVE_Log_CheckConsole(0xCu);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(4);
    if (v30)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v31, 12, v32, "AVE_Session_AVC_ProcessTile", 6170, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v121, v17, pixelBuffer, v13, v119, v120, theDict);
      v33 = AVE_GetCurrTime();
      v108 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v33, 12, v108, "AVE_Session_AVC_ProcessTile", 6170, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v121);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v31, 12, v32, "AVE_Session_AVC_ProcessTile", 6170, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v121);
    }
  }

  v35 = 4294966295;
LABEL_94:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v75 = AVE_Log_CheckConsole(0xCu);
    v76 = AVE_GetCurrTime();
    v77 = AVE_Log_GetLevelStr(7);
    if (v75)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v76, 12, v77, "AVE_Session_AVC_ProcessTile", v121, v17, pixelBuffer, v13, v119, v120, theDict, v35);
      v78 = AVE_GetCurrTime();
      v110 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v78, 12, v110, "AVE_Session_AVC_ProcessTile", v121, v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v76, 12, v77, "AVE_Session_AVC_ProcessTile", v121, v17);
    }
  }

  return v35;
}

uint64_t AVE_GetTileInfo(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = *a3;
  if (*a3 != ((*a3 + 63) & 0xFFFFFFC0))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v8 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned\n", CurrTime, 3, LevelStr, "AVE_GetTileInfo", 5876, "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))", *a3);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned", CurrTime);
    }

    return 4294966296;
  }

  v5 = a3[1];
  if (v5 != ((v5 + 15) & 0xFFFFFFF0))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v11 = AVE_Log_CheckConsole(3u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned\n", v12, 3, v13, "AVE_GetTileInfo", 5879, "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))", a3[1]);
        v12 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned", v12);
    }

    return 4294966296;
  }

  *(a2 + 552) = v4;
  *(a2 + 556) = v5;
  if (*(a1 + 10204) == 1)
  {
    result = 0;
    *(a2 + 544) = 0;
    return result;
  }

  if (*(a1 + 10171) != 1)
  {
    return 4294966296;
  }

  v14 = a3[3];
  v15 = a3[2] + v4;
  v16 = v14 + v5;
  if (*(a1 + 76) >= 12)
  {
    v17 = *(a1 + 10868);
    if (*(a1 + 10855) == 1)
    {
      if (v15 >= v17)
      {
        v15 = *(a1 + 10868);
      }

      *(a2 + 560) = v15;
      v18 = *(a1 + 10872);
      if (v16 >= v18)
      {
        v16 = *(a1 + 10872);
      }

      *(a2 + 564) = v16;
      v15 = v17;
      v16 = v18;
    }

    else
    {
      if (v15 <= v17)
      {
        v19 = a3[2];
      }

      else
      {
        v19 = v17 - v4;
      }

      *(a2 + 560) = v19;
      v15 = v19 + v4;
      v20 = *(a1 + 10872);
      if (v16 <= v20)
      {
        v21 = v14;
      }

      else
      {
        v21 = v20 - v5;
      }

      *(a2 + 564) = v21;
      v16 = v21 + v5;
    }
  }

  if (v15 > *(a1 + 10864))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v22 = AVE_Log_CheckConsole(3u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)\n", v23, 3, v24, "AVE_GetTileInfo", 5927, "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride", *a3, a3[2], *(a1 + 10864));
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        v32 = a3[2];
        v33 = *(a1 + 10864);
        v30 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
        v31 = *a3;
        v29 = 5927;
      }

      else
      {
        v32 = a3[2];
        v33 = *(a1 + 10864);
        v31 = *a3;
        v29 = 5927;
        v30 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
      }

      v28 = v24;
      v25 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)";
LABEL_44:
      syslog(3, v25, v23, 3, v28, "AVE_GetTileInfo", v29, v30, v31, v32, v33);
      return 4294966296;
    }

    return 4294966296;
  }

  if (v16 > *(a1 + 10872))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v26 = AVE_Log_CheckConsole(3u);
      v23 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)\n", v23, 3, v27, "AVE_GetTileInfo", 5932, "height <= pINS->VideoParamsDriver.pixelBuffer.Height", a3[1], a3[3], *(a1 + 10872));
        v23 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        v32 = a3[3];
        v33 = *(a1 + 10872);
        v30 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
        v31 = a3[1];
        v29 = 5932;
      }

      else
      {
        v32 = a3[3];
        v33 = *(a1 + 10872);
        v31 = a3[1];
        v29 = 5932;
        v30 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
      }

      v28 = v27;
      v25 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)";
      goto LABEL_44;
    }

    return 4294966296;
  }

  result = 0;
  *(a2 + 544) = v4;
  *(a2 + 548) = v5;
  return result;
}

uint64_t AVE_Session_AVC_Create(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16456);
  v5 = (a1 + 760);
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v7 = AVE_Log_CheckConsole(0xCu);
    v8 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%llx\n", v8, 12, LevelStr, "AVE_Session_AVC_Create", a1, a2);
      v10 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v10, 12, v43, "AVE_Session_AVC_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v8, 12, LevelStr, "AVE_Session_AVC_Create", a1, a2);
    }
  }

  v11 = AVE_DW_Get();
  *(a1 + 64) = 1;
  *v4 = 2;
  *(a1 + 1256) = -1;
  *(a1 + 10556) = 0x100000001;
  *(a1 + 10772) = 1;
  *(a1 + 776) = 1;
  *&v12 = 0x100000001;
  *(&v12 + 1) = 0x100000001;
  *v5 = v12;
  *(a1 + 712) = v11[103];
  v13 = AVE_USL_Drv_Create(1, 1, (a1 + 120));
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
        printf("%lld %d AVE %s: %s:%d %s | fail to open AVC %p %lld %d\n", v16, 12, v17, "AVE_Session_AVC_Create", 6526, "ret == 0", a1, 0, v14);
        v18 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open AVC %p %lld %d", v18, 12, v44);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open AVC %p %lld %d", v16, 12, v17);
      }
    }

    v19 = 0;
LABEL_15:
    v25 = *(a1 + 16488);
    if (v25)
    {
      AVE_SEI::~AVE_SEI(v25);
      MEMORY[0x29C24DA40]();
      v26 = 0;
      *(a1 + 16488) = 0;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_20;
  }

  *(a1 + 68) = AVE_USL_Drv_GetDevID(*(a1 + 120));
  *(a1 + 72) = AVE_USL_Drv_GetDevRevision(*(a1 + 120));
  *(a1 + 56) = AVE_USL_Drv_GetClientID(*(a1 + 120));
  *(a1 + 76) = *(AVE_DevCap_Find(*(a1 + 68)) + 1);
  v19 = *(a1 + 56);
  AVE_Prop_Cfg_AVC_Init((a1 + 16592), v19);
  AVE_TimeStats_Create(*(a1 + 56), v11[403], (a1 + 12000));
  AVE_TimeStats_AddStartTime(*(a1 + 12000), 0, CurrTime);
  AVE_Dump_Create(*(a1 + 56), (a1 + 18064));
  v4[2] = 30565;
  PropertyDict = AVE_Session_AVC_CreatePropertyDict(a1);
  if (PropertyDict)
  {
    v14 = PropertyDict;
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v21 = AVE_Log_CheckConsole(0xCu);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d\n", v22, 12, v23, "AVE_Session_AVC_Create", 6553, "ret == 0", a1, v19, v14);
        v24 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d", v24, 12, v45);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d", v22, 12, v23);
      }
    }

    goto LABEL_15;
  }

  v27 = operator new(0x50uLL, MEMORY[0x29EDC9418]);
  if (!v27)
  {
    *(a1 + 16488) = 0;
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v40 = AVE_Log_CheckConsole(0xCu);
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create SEI instance %p %llu\n", v41, 12, v42, "AVE_Session_AVC_Create", 6558, "pINS->pcSEI != __null", a1, *(a1 + 56));
        v41 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create SEI instance %p %llu", v41, 12);
    }

    v14 = 4294966296;
    goto LABEL_15;
  }

  v29 = v27;
  AVE_SEI::AVE_SEI(v27, v28);
  *(a1 + 16488) = v29;
  v30 = *(a1 + 12000);
  v31 = AVE_GetCurrTime();
  AVE_TimeStats_AddEndTime(v30, 0, v31);
  v14 = 0;
  v26 = 1;
LABEL_20:
  v32 = AVE_GetCurrTime() - CurrTime;
  if (v32 >= 1000000)
  {
    v33 = 5;
  }

  else
  {
    v33 = 6;
  }

  if (v26)
  {
    v34 = v33;
  }

  else
  {
    v34 = 4;
  }

  if (AVE_Log_CheckLevel(0xCu, v34))
  {
    v35 = AVE_Log_CheckConsole(0xCu);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(v34);
    if (v35)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d\n", v36, 12, v37, "AVE_Session_AVC_Create", a1, a2, v19, v32, v14);
      v38 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(v34);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v38, 12, v46);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v36, 12, v37);
    }
  }

  return v14;
}

void AVE_EnableH264FWRCSettings(int32x2_t *a1)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_EnableH264FWRCSettings", a1);
      v5 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v37, "AVE_EnableH264FWRCSettings", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_EnableH264FWRCSettings", a1);
    }
  }

  if (AVE_Log_CheckLevel(0x10u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x10u);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d\n", v7, 16, v8, "AVE_EnableH264FWRCSettings", 1680, a1[1361].i32[1], a1[86].i32[1], a1[1348].u8[0], a1[141].i32[1]);
      v7 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d", v7, 16);
  }

  if ((a1[140].i8[3] & 0x80) == 0 && a1[141].i32[1] == 8)
  {
    a1[1348].i8[0] = 0;
  }

  if (a1[1361].i32[1])
  {
    if ((a1[1348].i8[0] & 1) == 0)
    {
      a1[141].i32[1] = 1;
    }

    a1[1345].i8[4] = 1;
    goto LABEL_58;
  }

  if (a1[86].i32[1] == 1)
  {
    if ((a1[1348].i8[0] & 1) == 0)
    {
      a1[141].i32[1] = 1;
    }

    a1[1345].i8[4] = 1;
    a1[183].i32[0] = 0;
    a1[86].i32[0] &= ~2u;
    if (AVE_Log_CheckLevel(0xCu, 7))
    {
      v9 = AVE_Log_CheckConsole(0xCu);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(7);
      if (v9)
      {
        printf("%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnWorkload\n", v10, 12, v11);
        v12 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnWorkload", v12, 12, v38);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnWorkload", v10, 12, v11);
      }
    }

    v13 = vshr_n_u32(vadd_s32(a1[180], 0xF0000000FLL), 4uLL);
    v14 = a1[139].i32[0] * v13.i32[1] * v13.i32[0];
    if (v14 >= 0x13C681)
    {
      a1[86].i32[0] |= 0x100u;
    }

    v15 = (v13.i32[0] + 31) & 0x1FFFFFE0;
    v16 = a1[167].i32[0];
    if ((v16 & 0x40) != 0)
    {
      a1[86].i32[0] = a1[86].i32[0] & 0xFFFFFEFF | ((v14 > 0xAFC80) << 8);
    }

    if (v15 > 0x80 || v15 * v13.i32[1] >= 0x2D01)
    {
      v17 = (((v13.i32[0] + 1) >> 1) + 31) & 0x1FFFFFE0;
      if (v17 > 0x80 || (v17 * ((v13.i32[1] + 1) >> 1) <= 0x2D00 ? (v18 = (v16 & 0x40) == 0) : (v18 = 1), v18))
      {
        v16 &= ~0x40u;
      }

      else
      {
        a1[86].i32[0] |= 0x100u;
      }

      a1[167].i32[0] = v16;
    }
  }

  else if ((a1[1348].i8[0] & 1) == 0)
  {
    a1[141].i32[1] = 1;
    a1[1345].i8[4] = 1;
    a1[183].i32[0] = 0;
  }

  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v19 = AVE_Log_CheckConsole(0xCu);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(7);
    if (v19)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnBPP\n", v20, 12, v21);
      v22 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnBPP", v22, 12, v39);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnBPP", v20, 12, v21);
    }
  }

  v23 = a1[180].i32[1] + 15;
  v24 = a1[180].i32[0] + 15;
  v25 = ((v24 & 0xFFFFFF0) * (v23 & 0xFFFFFFF0));
  v26 = (v24 >> 4) * (v23 >> 4);
  v27 = a1[139].i32[0];
  v28 = v27 * v25;
  if (v26 < 0xE11)
  {
    if (v27 <= 60 && v28 * 0.26 > a1[142].i32[0])
    {
      a1[167].i32[0] &= ~0x10u;
    }

    if (AVE_Log_CheckLevel(0xDCu, 7))
    {
      v30 = AVE_Log_CheckConsole(0xDCu);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(7);
      v29 = v28 * 0.26;
      goto LABEL_54;
    }
  }

  else
  {
    v29 = v28 * 0.17;
    if (v28 * 0.17 > a1[142].i32[0])
    {
      a1[167].i32[0] &= ~0x10u;
    }

    if (AVE_Log_CheckLevel(0xDCu, 7))
    {
      v30 = AVE_Log_CheckConsole(0xDCu);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(7);
LABEL_54:
      if (v30)
      {
        printf("%lld %d AVE %s: BPP: BPP %f, BPP Scaled %f, iBitrate %d, AVE_QPMOD_FEATURE_FLAT_AREA %d\n", v31, 220, v32, v28, v29, a1[142].i32[0], a1[167].i32[0] & 0x10);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: BPP: BPP %f, BPP Scaled %f, iBitrate %d, AVE_QPMOD_FEATURE_FLAT_AREA %d");
    }
  }

LABEL_58:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v33 = AVE_Log_CheckConsole(0xCu);
    v34 = AVE_GetCurrTime();
    v35 = AVE_Log_GetLevelStr(7);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p\n", v34, 12, v35, "AVE_EnableH264FWRCSettings", a1);
      v36 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p", v36, 12, v40, "AVE_EnableH264FWRCSettings", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p", v34, 12, v35, "AVE_EnableH264FWRCSettings", a1);
    }
  }
}

uint64_t AVE_NewDefaultsBasedOnProfileUsageDefault(int32x2_t *a1)
{
  v2 = AVE_DW_Get();
  v3 = v2[221];
  if (v3 <= 3)
  {
    a1[157].i32[0] = v3;
  }

  v4 = v2[220];
  if ((v4 & 0x80000000) == 0)
  {
    a1[156].i32[1] = v4;
  }

  v5 = v2[223];
  if (v5 >= 1)
  {
    a1[161].i32[0] = v5;
  }

  v6 = v2[232];
  if (v6 >= 1)
  {
    a1[163].i32[1] = v6;
  }

  v7 = v2[233];
  if (v7 >= 1)
  {
    a1[164].i32[0] = v7;
  }

  v8 = a1[1501].i32[0];
  if (AVE_Log_CheckLevel(0x10u, 6))
  {
    v9 = AVE_Log_CheckConsole(0x10u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %d\n", CurrTime, 16, LevelStr, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8);
      v12 = AVE_GetCurrTime();
      v80 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v12, 16, v80, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", CurrTime, 16, LevelStr, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8);
    }
  }

  v13 = a1 + 2057;
  AVE_EnableH264FWRCSettings(a1);
  v14 = a1[167].i32[0];
  if ((v14 & 0x40) != 0)
  {
    v15 = a1[180].i32[0] >> 4;
    v16 = a1[180].i32[1] >> 4;
    v17 = (v15 + 31) & 0x1FFFFFE0;
    if (v17 > 0x80 || v17 * v16 >= 0x2D01)
    {
      v18 = (((v15 + 1) >> 1) + 31) & 0x1FFFFFE0;
      if (v18 > 0x80 || v18 * ((v16 + 1) >> 1) >= 0x2D01)
      {
        a1[167].i32[0] = v14 & 0xFFFFFFBF;
      }
    }
  }

  if (v8 > 7)
  {
    if ((v8 - 8) > 1)
    {
LABEL_25:
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v19 = AVE_Log_CheckConsole(3u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: profile not understood\n", v20, 3, v21, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3632, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: profile not understood");
      }

      goto LABEL_109;
    }

LABEL_29:
    if (v13->i32[0] == 2)
    {
      goto LABEL_43;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v22 = AVE_Log_CheckConsole(0x1Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(6);
      v25 = a1[1716].i32[1];
      if (v22)
      {
        printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v23, 30, v24, v13->i32[0], v25);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v26, 30, v27, v13->i32[0], a1[1716].i32[1]);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v23, 30, v24, v13->i32[0], v25);
      }
    }

    if (v13->i32[0])
    {
LABEL_43:
      a1[1716].i32[1] = 1;
    }

    else
    {
      a1[1716].i32[1] = 0;
    }

    a1[1725].i8[7] = 1;
    a1[1272].i32[0] = 2;
    if (a1[157].i32[0] < 1)
    {
      a1[157] = 0x100000000;
      a1[161].i32[0] = 1;
      a1[155].i32[0] &= ~0x400u;
      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v43 = AVE_Log_CheckConsole(0x1Eu);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(6);
        if (v43)
        {
          printf("%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF\n", v44, 30, v45);
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(6);
        }

        syslog(3, "%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF");
      }
    }

    else
    {
      if (a1[141].i32[1] != 20)
      {
        a1[1345].i8[4] = 1;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v40 = AVE_Log_CheckConsole(0x1Eu);
        v41 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(6);
        if (v40)
        {
          printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v41, 30, v42, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3512, a1[157].i32[0], a1[2236].i32[1]);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(6);
        }

        syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v41, 30, v42, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3512, a1[157].u32[0], a1[2236].u32[1]);
      }
    }

    if (a1[162].i8[0])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v46 = AVE_Log_CheckConsole(3u);
        v47 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        if (!v46)
        {
          goto LABEL_87;
        }

        v49 = 3530;
        goto LABEL_86;
      }

      goto LABEL_109;
    }

    goto LABEL_95;
  }

  if (v8 == 2)
  {
    if (v13->i32[0] != 2)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v28 = AVE_Log_CheckConsole(0x1Eu);
        v29 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(6);
        v31 = a1[1716].i32[1];
        if (v28)
        {
          printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v29, 30, v30, v13->i32[0], v31);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(6);
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v32, 30, v33, v13->i32[0], a1[1716].i32[1]);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v29, 30, v30, v13->i32[0], v31);
        }
      }

      if (v13->i32[0] == 1 && AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v50 = AVE_Log_CheckConsole(0x1Eu);
        v51 = AVE_GetCurrTime();
        v52 = AVE_Log_GetLevelStr(4);
        if (v50)
        {
          printf("%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_H264EntropyMode = CABAC and baseline profile. out of spec. set entropy to CAVLC\n", v51, 30, v52);
          v53 = AVE_GetCurrTime();
          v81 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_H264EntropyMode = CABAC and baseline profile. out of spec. set entropy to CAVLC", v53, 30, v81);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_H264EntropyMode = CABAC and baseline profile. out of spec. set entropy to CAVLC", v51, 30, v52);
        }
      }
    }

    a1[1716].i32[1] = 0;
    a1[1725].i8[7] = 0;
    a1[1272].i32[0] = 0;
    a1[157] = 0x100000000;
    a1[161].i32[0] = 1;
    a1[155].i32[0] &= ~0x400u;
    if (v13->i32[0] == 1)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v61 = AVE_Log_CheckConsole(0x1Eu);
        v62 = AVE_GetCurrTime();
        v63 = AVE_Log_GetLevelStr(4);
        if (v61)
        {
          printf("%lld %d AVE %s: %s:%d %s | profile %d but CABAC is on\n", v62, 30, v63, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3622, "pINS->FIGEntropyMode != EntropyModeCABAC", 2);
          v62 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | profile %d but CABAC is on", v62);
      }

      goto LABEL_109;
    }

    if (a1[162].i8[0])
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v69 = AVE_Log_CheckConsole(0x1Eu);
        v70 = AVE_GetCurrTime();
        v71 = AVE_Log_GetLevelStr(4);
        if (v69)
        {
          printf("%lld %d AVE %s: %s:%d %s | profile %d but bWeightedPrediction is on\n", v70, 30, v71, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3625, "(pINS->sSessionCfg.sEnc.sAlgCfg.sRef.iFeature & (1U<<0)) == 0", 2);
          v70 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | profile %d but bWeightedPrediction is on", v70);
      }

      goto LABEL_109;
    }

    goto LABEL_95;
  }

  if (v8 != 4)
  {
    if (v8 != 6)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if (v13->i32[0] == 2)
  {
    goto LABEL_69;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v34 = AVE_Log_CheckConsole(0x1Eu);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(6);
    v37 = a1[1716].i32[1];
    if (v34)
    {
      printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v35, 30, v36, v13->i32[0], v37);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v38, 30, v39, v13->i32[0], a1[1716].i32[1]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v35, 30, v36, v13->i32[0], v37);
    }
  }

  if (v13->i32[0])
  {
LABEL_69:
    a1[1716].i32[1] = 1;
  }

  else
  {
    a1[1716].i32[1] = 0;
  }

  a1[1725].i8[7] = 0;
  a1[1272].i32[0] = 0;
  if (a1[157].i32[0] < 1)
  {
    a1[157] = 0x100000000;
    a1[161].i32[0] = 1;
    a1[155].i32[0] &= ~0x400u;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v57 = AVE_Log_CheckConsole(0x1Eu);
      v58 = AVE_GetCurrTime();
      v59 = AVE_Log_GetLevelStr(6);
      if (v57)
      {
        printf("%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF\n", v58, 30, v59);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF");
    }
  }

  else
  {
    if (a1[141].i32[1] != 20)
    {
      a1[1345].i8[4] = 1;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v54 = AVE_Log_CheckConsole(0x1Eu);
      v55 = AVE_GetCurrTime();
      v56 = AVE_Log_GetLevelStr(6);
      if (v54)
      {
        printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v55, 30, v56, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3580, a1[157].i32[0], a1[2236].i32[1]);
        v55 = AVE_GetCurrTime();
        v56 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v55, 30, v56, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3580, a1[157].u32[0], a1[2236].u32[1]);
    }
  }

  if (a1[162].i8[0])
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v60 = AVE_Log_CheckConsole(3u);
      v47 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(4);
      if (!v60)
      {
LABEL_87:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: bWeightedPredictionis true and usage is default. not yet supported...");
        goto LABEL_109;
      }

      v49 = 3597;
LABEL_86:
      printf("%lld %d AVE %s: %s:%d %s | FIG: bWeightedPredictionis true and usage is default. not yet supported...\n", v47, 3, v48, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", v49, "false");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      goto LABEL_87;
    }

LABEL_109:
    v66 = 0;
    v68 = -12902;
    goto LABEL_110;
  }

LABEL_95:
  if (a1[141].i32[1] == 3)
  {
    v64 = 0;
    v65 = 0;
    a1[1345].i8[4] = 1;
    a1[183].i32[0] = 0;
    if (a1[1344].i32[0] == 2)
    {
      v65 = a1[167].i32[0] & 0xFFFF7FAF;
      v64 = a1[169].i32[0] & 0x1E;
    }

    a1[167].i32[0] = v65;
    a1[169].i32[0] = v64;
  }

  v66 = 1;
  if (a1[1507].i8[4] == 1 && (a1[141].i32[1] = 3, a1[1345].i8[4] = 1, a1[183].i32[0] = 0, a1[169].i32[0] = 0, a1[155].i32[0] &= ~0x400u, v67 = -6 * a1[1506].i32[1], a1[168].i32[1] = v67, a1[168].i32[0] = v67, a1[154].i32[1] = v67, a1[154].i32[0] = v67, a1[144].i32[0] = v67, a1[143].i32[1] = v67, a1[143].i32[0] = v67, a1[1501].i32[0] = 9, a1[1504].i32[1] = 17, a1[1716].i32[1] = 0, a1[167].i32[0] = 0, a1[1325].i32[1] = 0, a1[9].i32[1] >= 30))
  {
    v68 = 0;
    a1[1271].i8[2] = 1;
  }

  else
  {
    v68 = 0;
  }

LABEL_110:
  if (AVE_Log_CheckLevel(0x10u, 6))
  {
    v72 = AVE_Log_CheckConsole(0x10u);
    v73 = AVE_GetCurrTime();
    v74 = AVE_Log_GetLevelStr(6);
    if (v72)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v73, 16, v74, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8, v68);
      v73 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v73);
  }

  if (v66)
  {
    return 0;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v76 = AVE_Log_CheckConsole(3u);
    v77 = AVE_GetCurrTime();
    v78 = AVE_Log_GetLevelStr(4);
    if (v76)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264NewDefaultsBasedOnProfileUsageDefault failed\n", v77, 3, v78, "AVE_NewDefaultsBasedOnProfileUsageDefault", 3736, "err == noErr");
      v79 = AVE_GetCurrTime();
      v82 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264NewDefaultsBasedOnProfileUsageDefault failed", v79, 3, v82, "AVE_NewDefaultsBasedOnProfileUsageDefault", 3736, "err == noErr");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264NewDefaultsBasedOnProfileUsageDefault failed", v77, 3, v78, "AVE_NewDefaultsBasedOnProfileUsageDefault", 3736, "err == noErr");
    }
  }

  return 4294954394;
}

void H264H9EncoderRegister()
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
      CFDictionaryAddValue(v2, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.h264");
      v0 = VTRegisterVideoEncoderWithInfo();
      CFRelease(v2);
    }

    else
    {
      v0 = 0;
    }
  }

  if (AVE_Log_CheckLevel(2u, 5))
  {
    v4 = AVE_Log_CheckConsole(2u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(5);
    if (v4)
    {
      printf("%lld %d AVE %s: Register AVC video encoder of AVE %d\n", CurrTime, 2, LevelStr, v0);
      v7 = AVE_GetCurrTime();
      v8 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: Register AVC video encoder of AVE %d", v7, 2, v8, v0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Register AVC video encoder of AVE %d", CurrTime, 2, LevelStr, v0);
    }
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