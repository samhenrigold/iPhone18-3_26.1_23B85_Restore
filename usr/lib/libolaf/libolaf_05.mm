unsigned __int16 *Gnm02_12ReqAssistInstn(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a3;
  v7 = a1;
  v24 = *MEMORY[0x29EDCA608];
  InstnFromAssistId = Gnm02_33GetInstnFromAssistId(a1, a3);
  if (InstnFromAssistId)
  {
    v9 = InstnFromAssistId;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MODIFY %s GNMInstn,%u,AssistInstn,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm02_12ReqAssistInstn", 2057, a2, *v9, **(v9 + 1));
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
    }

    if (a4)
    {
      *a4 = 1;
    }

    return v9;
  }

  v12 = Gnm02_11ReqNewInstn();
  if (v12)
  {
    v9 = v12;
    v13 = 2u;
    while (*&g_GnmInstances[v13] != v12)
    {
      v13 += 2;
      if (v13 == 8)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n");
          goto LABEL_20;
        }

LABEL_21:
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NewAssistInstn %s\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 87, "Gnm02_12ReqAssistInstn", 2049, a2);
          LbsOsaTrace_WriteLog(0xBu, __str, v18, 2, 1);
        }

        Gnm02_21DeleteInstn(v9);
        return 0;
      }
    }

    if (*(v12 + 2))
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        goto LABEL_21;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType\n");
LABEL_20:
      LbsOsaTrace_WriteLog(0xBu, __str, v14, 2, 1);
      goto LABEL_21;
    }

    if (*(v12 + 1))
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        goto LABEL_21;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_20;
    }

    v20 = gnssOsa_Calloc("Gnm02_03AddAssistParams", 107, 1, 0x50uLL);
    *(v9 + 1) = v20;
    if (!v20)
    {
      goto LABEL_21;
    }

    *(v9 + 2) = 2;
    *v20 = v7;
    *(*(v9 + 1) + 5) = v5;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SETUP %s GNMInstn,%u,AssistInstn,%u\n", (*&g_MacClockTicksToMsRelation * v21), "GNM", 73, "Gnm02_12ReqAssistInstn", 2057, a2, *v9, **(v9 + 1));
      LbsOsaTrace_WriteLog(0xBu, __str, v22, 4, 1);
    }

    if (a4)
    {
      *a4 = 0;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NewInstn %s\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 87, "Gnm02_12ReqAssistInstn", 2049, a2);
      LbsOsaTrace_WriteLog(0xBu, __str, v16, 2, 1);
    }

    return 0;
  }

  return v9;
}

uint64_t Gnm02_33GetInstnFromAssistId(int a1, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = 2u;
  while (1)
  {
    v4 = *&g_GnmInstances[v3];
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        if (*(v4 + 2) == 2 && *(v5 + 5) == a2 && *v5 == a1)
        {
          break;
        }
      }
    }

    v3 += 2;
    if (v3 == 8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AsstId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm02_33GetInstnFromAssistId", 2052, a1);
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
      }

      return 0;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNMInstn,%u,AsstId,%u found\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm02_33GetInstnFromAssistId", **&g_GnmInstances[v3], a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
  }

  return *&g_GnmInstances[v3];
}

BOOL Gnm02_21DeleteInstn(unsigned __int16 *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
LABEL_5:
    v3 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm02_21DeleteInstn", 2050);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
      return 0;
    }

    return v3;
  }

  v2 = 2u;
  while (*&g_GnmInstances[v2] != a1)
  {
    v2 += 2;
    if (v2 == 8)
    {
      goto LABEL_5;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Deleted GNMInstn,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm02_21DeleteInstn", *a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  v8 = *(a1 + 1);
  if (v8)
  {
    v9 = *(a1 + 2);
    if ((v9 - 2) >= 2)
    {
      if (v9 == 1)
      {
        v12 = *(v8 + 72);
        if (v12)
        {
          free(v12);
        }

        *(v8 + 72) = 0;
        v3 = (*(v8 + 4) & 7) != 0;
      }

      else
      {
        v3 = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm02_21DeleteInstn", 2050, *(a1 + 2));
          LbsOsaTrace_WriteLog(0xBu, __str, v14, 2, 1);
          v3 = 0;
        }
      }

      v8 = *(a1 + 1);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v3 = 1;
    }

    free(v8);
LABEL_22:
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    goto LABEL_23;
  }

  v3 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnInfo\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm02_21DeleteInstn", 2050);
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 2, 1);
    v3 = 0;
  }

LABEL_23:
  v15 = 2u;
  while (*&g_GnmInstances[v15] != a1)
  {
    v15 += 2;
    if (v15 == 8)
    {
      return v3;
    }
  }

  free(a1);
  *&g_GnmInstances[v15] = 0;
  if (HIWORD(g_GnmInstances[0]))
  {
    --HIWORD(g_GnmInstances[0]);
  }

  return v3;
}

unsigned __int16 *Gnm02_13ReqNewNafInstn(int a1, const char *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  if (Gnm02_32GetInstnFromNafId(a1))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx %s\n", v15);
LABEL_4:
    LbsOsaTrace_WriteLog(0xBu, __str, v4, 2, 1);
    return 0;
  }

  v5 = Gnm02_11ReqNewInstn();
  if (!v5)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NewInstn %s\n", v16);
    goto LABEL_4;
  }

  v6 = v5;
  v7 = 2u;
  while (*&g_GnmInstances[v7] != v5)
  {
    v7 += 2;
    if (v7 == 8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n");
        goto LABEL_19;
      }

LABEL_20:
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NewNafInst %s\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm02_13ReqNewNafInstn", 2049, a2);
        LbsOsaTrace_WriteLog(0xBu, __str, v10, 2, 1);
      }

      Gnm02_21DeleteInstn(v6);
      return 0;
    }
  }

  if (*(v5 + 2))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType\n");
LABEL_19:
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    goto LABEL_20;
  }

  if (*(v5 + 1))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_19;
  }

  v12 = gnssOsa_Calloc("Gnm02_04AddNafParams", 147, 1, 0x50uLL);
  *(v6 + 1) = v12;
  if (!v12)
  {
    goto LABEL_20;
  }

  *(v6 + 2) = 1;
  *v12 = a1;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx %s GNMInstn,%u,NaftInstn,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 73, "Gnm02_13ReqNewNafInstn", 2057, a2, *v6, a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v14, 4, 1);
  }

  return v6;
}

uint64_t Gnm02_32GetInstnFromNafId(int a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = 2u;
  while (1)
  {
    v3 = *&g_GnmInstances[v2];
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        if (*(v3 + 2) == 1 && *v4 == a1)
        {
          break;
        }
      }
    }

    v2 += 2;
    if (v2 == 8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NafId,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 68, "Gnm02_32GetInstnFromNafId", 2052, a1);
        LbsOsaTrace_WriteLog(0xBu, __str, v6, 5, 1);
      }

      return 0;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNMInstn,%u,NafInstn,%u found\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm02_32GetInstnFromNafId", **&g_GnmInstances[v2], a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  return *&g_GnmInstances[v2];
}

uint64_t Gnm02_15AddEarlyStartParams(unsigned __int16 *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
LABEL_5:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n");
LABEL_13:
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 2, 1);
    }

    return 0;
  }

  v2 = 2u;
  while (*&g_GnmInstances[v2] != a1)
  {
    v2 += 2;
    if (v2 == 8)
    {
      goto LABEL_5;
    }
  }

  if (*(a1 + 2))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType\n");
      goto LABEL_13;
    }

    return 0;
  }

  if (*(a1 + 1))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_13;
    }

    return 0;
  }

  v6 = gnssOsa_Calloc("Gnm02_15AddEarlyStartParams", 361, 1, 0x50uLL);
  *(a1 + 1) = v6;
  if (!v6)
  {
    return 0;
  }

  *(a1 + 2) = 3;
  *v6 = *a1;
  v7 = byte_2A192082E;
  if ((dword_2A1920820 & 0x400) == 0)
  {
    v7 = 30;
  }

  *(*(a1 + 1) + 4) = v7;
  *(*(a1 + 1) + 5) = 0;
  if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v8 = mach_continuous_time();
  v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNMInstn,%u,EarlyStartInstn,%u,Timeout,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm02_15AddEarlyStartParams", *a1, **(a1 + 1), *(*(a1 + 1) + 4));
  v4 = 1;
  LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  return v4;
}

BOOL Gnm02_23StopNafSession(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Clearing Instance NafID,%u,PosnType,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm02_23StopNafSession", *v2, *(v2 + 4));
    LbsOsaTrace_WriteLog(0xBu, __str, v4, 4, 1);
  }

  v5 = *(v2 + 4);
  v6 = v5 > 4;
  v7 = (1 << v5) & 0x16;
  if (!v6 && v7 != 0)
  {
    return Gnm10_28StopPositioning(a1);
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosnType,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm02_23StopNafSession", 770, *(v2 + 4));
    LbsOsaTrace_WriteLog(0xBu, __str, v12, 2, 1);
    return 0;
  }

  return result;
}

uint64_t Gnm02_24AbortAllNafSessions(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Aborting all NAF sessions\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm02_24AbortAllNafSessions");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  v4 = 2u;
  do
  {
    result = *&g_GnmInstances[v4];
    if (result)
    {
      v6 = *(result + 8);
      if (v6)
      {
        if (*(result + 2) == 1)
        {
          if ((v6[1] & 7) != 0 && *(v6 + 64) == 1)
          {
            v7 = *(v6 + 7);
            v8 = *v6;
            *__str = 0;
            v10 = 0;
            v11 = 0;
            v12 = 1;
            v7(a1, v8, __str);
            result = *&g_GnmInstances[v4];
          }

          Gnm02_23StopNafSession(result);
          result = Gnm02_21DeleteInstn(*&g_GnmInstances[v4]);
        }
      }
    }

    v4 += 2;
  }

  while (v4 != 8);
  return result;
}

uint64_t Gnm02_26AbortAllAssistSessions(void)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Aborting all assist sessions\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 73, "Gnm02_26AbortAllAssistSessions");
    LbsOsaTrace_WriteLog(0xBu, __str, v1, 4, 1);
  }

  v2 = 2u;
  do
  {
    result = *&g_GnmInstances[v2];
    if (result)
    {
      v4 = *(result + 8);
      if (v4)
      {
        if (*(result + 2) == 2 && *(v4 + 5) == 1)
        {
          if ((*(v4 + 6) & 4) != 0)
          {
            result = Gnm13_09SendAsstGadData(result, 0, 1);
          }

          else if ((*(v4 + 6) & 2) != 0)
          {
            result = Gnm13_11SendAsstGnssMeas(result, 0, 1);
          }

          else
          {
            result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v5 = mach_continuous_time();
              v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqType,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm02_26AbortAllAssistSessions", 770, *(v4 + 6));
              result = LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
            }
          }
        }
      }
    }

    v2 += 2;
  }

  while (v2 != 8);
  return result;
}

unsigned __int16 *Gnm02_31GetInstnFromInstnId(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = 2u;
  while (1)
  {
    result = *&g_GnmInstances[v2];
    if (result)
    {
      if (*result == a1)
      {
        break;
      }
    }

    v2 += 2;
    if (v2 == 8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 68, "Gnm02_31GetInstnFromInstnId", 2052, a1);
        LbsOsaTrace_WriteLog(0xBu, __str, v5, 5, 1);
      }

      return 0;
    }
  }

  return result;
}

uint64_t Gnm02_37GetInstnAssistReq(void)
{
  v0 = 2u;
  v15 = *MEMORY[0x29EDCA608];
  do
  {
    v1 = *&g_GnmInstances[v0];
    if (v1)
    {
      v2 = *(v1 + 8);
      if (v2)
      {
        v3 = *(v1 + 2);
        if (v3 != 3)
        {
          if (v3 == 2)
          {
            if (*(v2 + 59) == 1)
            {
              if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
              {
                return *&g_GnmInstances[v0];
              }

              bzero(__str, 0x410uLL);
              v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNMInstn,%u,AsstInstn,%u found requiring Asst\n", v13);
              goto LABEL_22;
            }
          }

          else if (v3 == 1)
          {
            if (*(v2 + 5) == 1)
            {
              if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
              {
                return *&g_GnmInstances[v0];
              }

              bzero(__str, 0x410uLL);
              v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNMInstn,%u,NafInstn,%u found requiring Asst\n", v12);
LABEL_22:
              LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
              return *&g_GnmInstances[v0];
            }
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v4 = mach_continuous_time();
            v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm02_37GetInstnAssistReq", 770, *(*&g_GnmInstances[v0] + 2));
            LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
          }
        }
      }
    }

    v0 += 2;
  }

  while (v0 != 8);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm02_37GetInstnAssistReq", 2052);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
  }

  return 0;
}

uint64_t Gnm02_39GetEarlyStartInstn(void)
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = 2u;
  while (1)
  {
    v1 = *&g_GnmInstances[v0];
    if (v1)
    {
      if (*(v1 + 8) && *(v1 + 2) == 3)
      {
        break;
      }
    }

    v0 += 2;
    if (v0 == 8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v2 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm02_39GetEarlyStartInstn", 2052);
        LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
      }

      return 0;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ECALL:GNMInstn,%u,EarlyStartInstn,%u found\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm02_39GetEarlyStartInstn", **&g_GnmInstances[v0], **(*&g_GnmInstances[v0] + 8));
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 4, 1);
  }

  return *&g_GnmInstances[v0];
}

uint64_t BaseBufInitBufWithMemory(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    return 6;
  }

  v6 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x470uLL);
  *a1 = v6;
  if (!v6)
  {
    v8 = 1;
    v9 = 1;
LABEL_13:
    CUCFErrorHandler(v6, v9);
    return v8;
  }

  if (a2 == 1)
  {
    v7 = &UserBuffer;
    goto LABEL_9;
  }

  if (a2)
  {
    v6[196] = 0;
    v8 = 3;
    v9 = 3;
    goto LABEL_13;
  }

  v7 = &SmallBuffer;
LABEL_9:
  memcpy(v6 + 752, v7, 0x120uLL);
  v10 = *(*a1 + 824);

  return v10(a1, a3);
}

double GAL_EphReal2Kep(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = 3;
  *(a2 + 12) = *(a1 + 14);
  v2 = *(a1 + 15);
  if (v2 <= 0x31)
  {
    if (!*(a1 + 15))
    {
      v3 = -14;
      goto LABEL_41;
    }

    if (v2 <= 4)
    {
      v3 = v2 - 15;
LABEL_41:
      *(a2 + 15) = v3;
      goto LABEL_42;
    }

    if (v2 <= 6)
    {
      v3 = -11;
      goto LABEL_41;
    }

    if (v2 <= 8)
    {
      v3 = -10;
      goto LABEL_41;
    }

    if (v2 <= 0xB)
    {
      v3 = -9;
      goto LABEL_41;
    }

    if (v2 <= 0xF)
    {
      v3 = -8;
      goto LABEL_41;
    }

    if (v2 <= 0x15)
    {
      v3 = -7;
      goto LABEL_41;
    }

    if (v2 <= 0x1E)
    {
      v3 = -6;
      goto LABEL_41;
    }

    if (v2 <= 0x2B)
    {
      v3 = -5;
      goto LABEL_41;
    }

LABEL_7:
    v3 = -4;
    goto LABEL_41;
  }

  if (v2 <= 0x4A)
  {
    if (v2 <= 0x37)
    {
      goto LABEL_7;
    }

    if (v2 <= 0x43)
    {
      v3 = -3;
      goto LABEL_41;
    }

LABEL_20:
    v3 = -2;
    goto LABEL_41;
  }

  if (v2 > 0x63)
  {
    if (v2 > 0x7D)
    {
      if (v2 == 255)
      {
        v3 = 15;
      }

      else
      {
        v3 = 14;
      }

      goto LABEL_41;
    }

    if (v2 > 0x66)
    {
      if (v2 > 0x6C)
      {
        if (v2 > 0x75)
        {
          v3 = 3;
        }

        else
        {
          v3 = 2;
        }
      }

      else
      {
        v3 = 1;
      }

      goto LABEL_41;
    }
  }

  else
  {
    if (v2 <= 0x50)
    {
      goto LABEL_20;
    }

    if (v2 <= 0x5C)
    {
      v3 = -1;
      goto LABEL_41;
    }
  }

  *(a2 + 15) = 0;
LABEL_42:
  *(a2 + 14) = 0;
  v4 = v2 == 255;
  *(a2 + 13) = v4 << 6;
  *(a2 + 13) = *(a1 + 201) | (4 * *(a1 + 198)) | (8 * *(a1 + 200)) | (32 * *(a1 + 197)) | (v4 << 6);
  *(a2 + 16) = *(a1 + 194);
  *(a2 + 18) = *(a1 + 12) + 1024;
  v5 = *(a1 + 16);
  *(a2 + 20) = *(a1 + 144);
  *(a2 + 24) = v5;
  *(a2 + 32) = *(a1 + 152);
  *(a2 + 48) = *(a1 + 168);
  *(a2 + 64) = *(a1 + 184);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = *(a1 + 88);
  *(a2 + 104) = *(a1 + 112);
  *(a2 + 120) = *(a1 + 96);
  *(a2 + 136) = *(a1 + 128);
  v6 = *(a1 + 24);
  *(a2 + 152) = *(a1 + 80);
  *(a2 + 160) = v6;
  *(a2 + 168) = *(a1 + 40);
  *(a2 + 184) = *(a1 + 56);
  result = *(a1 + 32);
  v8 = *(a1 + 72);
  *(a2 + 200) = result;
  *(a2 + 208) = v8;
  return result;
}

double *NK_Comp_DOPS(uint64_t a1, _DWORD *a2)
{
  v42 = *MEMORY[0x29EDCA608];
  v33 = 0u;
  v35 = 0;
  memset(&v32[1], 0, 32);
  v34 = 0u;
  v37 = 0u;
  v38 = 0u;
  v32[0] = 20000.0;
  *&v33 = 0x40D3880000000000;
  v36 = 0x40D3880000000000;
  v39 = 0x40D3880000000000;
  memset(&v25[1], 0, 32);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = 1.99960002e14;
  if (*(a1 + 7174) == 1)
  {
    v4 = *(a1 + 7200) + fabs((*a2 - *(a1 + 7192)) * 0.001);
  }

  *&v26 = v4;
  v25[0] = v4;
  v5 = 1.99960002e14;
  if (*(a1 + 7175) == 1)
  {
    v5 = *(a1 + 7216) + fabs((*a2 - *(a1 + 7208)) * 0.001);
  }

  *(&v28 + 1) = v5;
  v6 = 1.99960002e14;
  if (*(a1 + 7173) == 1)
  {
    v6 = *(a1 + 7184) + fabs((*a2 - *(a1 + 7176)) * 0.001);
  }

  v7 = 0;
  v31 = v6;
  do
  {
    if (v25[v7] > 1.99960002e14)
    {
      v25[v7] = 1.99960002e14;
    }

    v7 += 5;
  }

  while (v7 != 20);
  v24 = a1 + 4096;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0.0;
  v12 = (a1 + 2096);
  do
  {
    if (*(a1 + 6696 + v8) == 1)
    {
      v13 = v12->f64[0];
      v14 = vmulq_n_f64(v12[120], v12->f64[1]);
      v40 = vextq_s8(v14, v14, 8uLL);
      v41 = v13;
      v15 = *(a2 + v8 + 1176) ? a2 + 414 : (a1 + 6312);
      v16 = *&v15[2 * v8] >= 0.0001 ? *&v15[2 * v8] : 0.0001;
      DOP4_Upd_W_Meas(v40.i64, v16, v25);
      if (v16 < 800000.0)
      {
        ++v9;
        v11 = v11 + v16;
        if (*(a2 + v8 + 2960) == 1)
        {
          DOP4_Upd_U_Meas(&v40, v32);
          ++v10;
        }
      }
    }

    ++v8;
    v12 = (v12 + 40);
  }

  while (v8 != 48);
  if (v10 <= 3)
  {
    DOP4_Upd_U_Elem(2, v32);
  }

  result = DOP4_Calc_U(v32, a2 + 3075);
  if (v9)
  {
    v18 = v11 / v9;
  }

  else
  {
    v18 = 0.0;
  }

  *(a1 + 6744) = v18;
  v19 = v31 * 8.0;
  *(a1 + 7248) = v31 * 8.0;
  v20.f64[0] = *(&v28 + 1);
  v21 = *&v26;
  v22 = v25[0] + v25[0];
  *(a1 + 7256) = v25[0] + v25[0];
  *(a1 + 7264) = v21 + v21;
  v20.f64[1] = v25[1];
  v23 = vmulq_f64(v20, xmmword_2997290E0);
  *(v24 + 3176) = v23;
  if (v19 > 3600.0)
  {
    *(a1 + 7248) = 0x40AC200000000000;
  }

  if (v23.f64[0] > 3600.0)
  {
    *(v24 + 3176) = 0x40AC200000000000;
  }

  if (v22 > 900.0 || v21 + v21 > 900.0)
  {
    *(v24 + 3160) = vdupq_n_s64(0x408C200000000000uLL);
    *(a1 + 7280) = 0;
  }

  return result;
}

BOOL NK_Get_Ext_Time(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = a2 + 20480;
  *(a2 + 22776) = 0;
  *(a2 + 22792) = 0;
  *(a2 + 22848) = 0;
  *(a2 + 22864) = 0;
  v4 = *(a2 + 24);
  if (v4 > 3.0 && v4 < 604797.0)
  {
    v7 = result;
    v23 = 0;
    result = Get_FSP_Time(result, (a2 + 22758), (a2 + 22760), (a2 + 22768), &v23);
    if (result)
    {
      v8 = *(a2 + 22760);
      v9 = *(a2 + 632);
      v10 = v8 - (v9 - *(a2 + 736));
      *(a2 + 26152) = v10;
      v11 = *(a2 + 22768);
      v12 = *(a2 + 12);
      if (v11 < g_TOW_Stat_Var99_Table[v12])
      {
        v13 = v10 * 1000.0;
        v14 = -0.5;
        if (v13 > 0.0)
        {
          v14 = 0.5;
        }

        v15 = v13 + v14;
        v16 = 2147483650.0;
        if (v15 <= 2147483650.0)
        {
          v16 = -2147483650.0;
          if (v15 >= -2147483650.0)
          {
            v16 = v15;
          }
        }

        *(v3 + 2296) = 1;
        *(v3 + 2300) = 1;
        *(v3 + 2316) = v7;
        *(a2 + 22800) = v16;
        *(a2 + 22808) = v11 * 1000000.0;
        v17 = *(a3 + 233);
        v18 = 36.0;
        if (*(a3 + 233))
        {
          v18 = 1.0e20;
        }

        *(a2 + 22832) = v18;
        v19 = v23;
        *(v3 + 2308) = v23;
        if (v11 <= 0.00000025 || v12 <= 8)
        {
          *(v3 + 2368) = 1;
          *(v3 + 2372) = 1;
          *(v3 + 2388) = v7;
          *(a2 + 22872) = (v9 + v16 * 0.001 - v8) * 299792458.0;
          *(a2 + 22880) = v11 * 8.98755179e16;
          v20 = 16.0;
          if (v17)
          {
            v20 = 1.0e20;
          }

          *(a2 + 22904) = v20;
          *(v3 + 2380) = v19;
        }

        v21 = *(v3 + 2278);
        *(a2 + 646) = v21;
        *(a2 + 18) = v21;
      }
    }

    if (*(v3 + 2368) == 1 && (v22 = *(a2 + 22880), v22 < 2.25e10))
    {
      *(a3 + 7173) = 1;
      *(a3 + 7176) = *(v3 + 2388);
      *(a3 + 7184) = v22;
    }

    else if (*(a3 + 7173) == 1 && (v7 - *(a3 + 7176)) >= 0x1D4C1)
    {
      *(a3 + 7173) = 0;
    }
  }

  return result;
}

uint64_t NK_Prop_Cov_Mat(double a1, double *a2)
{
  v10[11] = *MEMORY[0x29EDCA608];
  v3 = 1;
  v10[0] = a1;
  v10[1] = a1;
  v4 = 16843009;
  v5 = 1;
  v10[2] = a1;
  v10[3] = a1;
  *v6 = 100860417;
  *v8 = 151258116;
  v7 = 2055;
  v9 = 2826;
  v10[4] = a1;
  v10[5] = a1;
  return stphiu(a2, 0xBu, v10, v8, 6, v6, &v3);
}

void *Cyc_Record_Write(uint64_t a1, const void *a2)
{
  result = memcpy(*a1, a2, *(a1 + 72));
  v4 = *a1 + *(a1 + 72);
  *a1 = v4;
  if (v4 >= *(a1 + 64))
  {
    v4 = *(a1 + 56);
    *a1 = v4;
  }

  for (i = 0; i != 6; ++i)
  {
    *(a1 + 84 + i) = v4 == *(a1 + 84 + 8 * i - 76);
  }

  return result;
}

void *Cyc_Record_Read(uint64_t a1, unsigned int a2, void *__dst)
{
  if (a2 >= 6)
  {
    __assert_rtn("Cyc_Record_Read", "cyc_record_buf.cpp", 144, "Consumer_Idx < MAX_READER_NUM");
  }

  v4 = a1 + 8;
  v5 = a2;
  v6 = *(a1 + 8 + 8 * a2);
  if (v6 == *a1 && (*(a1 + v5 + 84) & 1) == 0)
  {
    __assert_rtn("Cyc_Record_Read", "cyc_record_buf.cpp", 148, "p_CRB->Next_Read[Consumer_Idx] != p_CRB->Next_Write || p_CRB->Full_Flag[Consumer_Idx]");
  }

  *(a1 + v5 + 84) = 0;
  result = memcpy(__dst, v6, *(a1 + 72));
  v8 = *(v4 + 8 * v5) + *(a1 + 72);
  *(v4 + 8 * v5) = v8;
  if (v8 >= *(a1 + 64))
  {
    *(v4 + 8 * v5) = *(a1 + 56);
  }

  return result;
}

void *Cyc_Record_Peek(uint64_t a1, unsigned int a2, int a3, void *__dst)
{
  if (a2 >= 6)
  {
    __assert_rtn("Cyc_Record_Peek", "cyc_record_buf.cpp", 182, "Consumer_Idx < MAX_READER_NUM");
  }

  v5 = *(a1 + 8 * a2 + 8);
  if (v5 == *a1 && (*(a1 + a2 + 84) & 1) == 0)
  {
    __assert_rtn("Cyc_Record_Peek", "cyc_record_buf.cpp", 186, "p_CRB->Next_Read[Consumer_Idx] != p_CRB->Next_Write || p_CRB->Full_Flag[Consumer_Idx]");
  }

  v6 = *(a1 + 72);
  v7 = (v5 + (v6 * a3));
  v8 = *(a1 + 56);
  if (v7 < v8)
  {
    v7 += *(a1 + 80);
  }

  v9 = *(a1 + 64);
  if (v7 >= v9)
  {
    v7 -= *(a1 + 80);
  }

  if (v7 < v8 || v7 > v9)
  {
    __assert_rtn("Cyc_Record_Peek", "cyc_record_buf.cpp", 202, "p_Rec_Peek >= p_CRB->Start_Buf && p_Rec_Peek <= p_CRB->End_Buf");
  }

  return memcpy(__dst, v7, v6);
}

uint64_t Cyc_Record_IsEmpty(void *a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    __assert_rtn("Cyc_Record_IsEmpty", "cyc_record_buf.cpp", 225, "Consumer_Idx < MAX_READER_NUM");
  }

  v2 = a1[a2 + 1];
  v3 = *a1;
  if (((*(a1 + a2 + 84) ^ 1) & 1) == 0 && v2 != v3)
  {
    __assert_rtn("Cyc_Record_IsEmpty", "cyc_record_buf.cpp", 231, "p_CRB->Next_Read[Consumer_Idx] == p_CRB->Next_Write");
  }

  return (*(a1 + a2 + 84) ^ 1u) & (v2 == v3);
}

uint64_t Cyc_Record_Count_Occupied(_DWORD *a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    __assert_rtn("Cyc_Record_Count_Occupied", "cyc_record_buf.cpp", 270, "Consumer_Idx < MAX_READER_NUM");
  }

  v2 = a1[2 * a2 + 2];
  v3 = *a1 - v2;
  if (*a1 == v2)
  {
    if ((*(a1 + a2 + 84) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3 >= 1)
  {
    v4 = a1[20];
    goto LABEL_7;
  }

  v4 = a1[20];
  v3 += v4;
  if (v3 < 1)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v3 > v4)
  {
LABEL_11:
    __assert_rtn("Cyc_Record_Count_Occupied", "cyc_record_buf.cpp", 290, "Diff > 0 && Diff <= (I4)p_CRB->Buf_Len");
  }

  v5 = a1[18];
  result = v3 / v5;
  if (v3 % v5)
  {
    __assert_rtn("Cyc_Record_Count_Occupied", "cyc_record_buf.cpp", 293, "( Diff % p_CRB->Rec_Size) == 0");
  }

  return result;
}

uint64_t Cyc_Record_Count_Free(_DWORD *a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    __assert_rtn("Cyc_Record_Count_Free", "cyc_record_buf.cpp", 311, "Consumer_Idx < MAX_READER_NUM");
  }

  v3 = Cyc_Record_Count_Occupied(a1, a2);
  v4 = a1[19];
  v5 = v4 >= v3;
  result = v4 - v3;
  if (!v5)
  {
    __assert_rtn("Cyc_Record_Count_Free", "cyc_record_buf.cpp", 317, "Occupied_Records <= p_CRB->Rec_Num");
  }

  return result;
}

float *ltl_least_squares_polynom(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v6 = 0;
  v135 = *MEMORY[0x29EDCA608];
  memset(v134, 0, 100);
  v132[0] = 0;
  v132[1] = 0;
  v133 = 0;
  v131[0] = 0x100000001;
  v129[0] = 0;
  v129[1] = 0;
  v126[0] = xmmword_299729130;
  v126[1] = xmmword_299729140;
  v127 = 0x2000000D3;
  v130 = 0;
  do
  {
    *(v129 + v6) = *(v126 + v6) * 0.000061035;
    v6 += 4;
  }

  while (v6 != 20);
  memset_pattern16(&v131[1], &unk_299729150, 0xCuLL);
  if (a2)
  {
    v7 = 0;
    v8 = vcvtq_f32_s32(*(v131 + 4));
    do
    {
      v9 = (vcvts_n_f32_u32(v7, 1uLL) + -30.0) + -30.0;
      v10 = a1 + 8 * v7;
      v11 = *(v10 + 4);
      v12 = *v10;
      __s = 1065353216;
      v13 = 1.0;
      for (i = 4; i != 20; i += 4)
      {
        v13 = v9 * v13;
        *(&__s + i) = v13;
      }

      v15 = 0;
      v16 = v12;
      v121 = vmulq_f32(v121, v8);
      v17 = v11 * 0.000005421;
      v18 = v134;
      v19 = 1;
      do
      {
        v20 = 0;
        v21 = *(&__s + v15);
        do
        {
          *&v18[v20] = *&v18[v20] + ((v21 * *(&__s + v20)) * v17);
          ++v20;
        }

        while (v19 != v20);
        *(v132 + v15) = *(v132 + v15) + ((v17 * v21) * v16);
        ++v15;
        ++v19;
        v18 += 5;
      }

      while (v15 != 5);
      ++v7;
    }

    while (v7 != a2);
  }

  v22 = 0;
  v23 = v134;
  do
  {
    v24 = *(&v126[1] + v22 + 4) * 0.000061035;
    v25 = 1.0 / (v24 * v24);
    *v23 = *v23 + v25;
    v23 += 6;
    *(v132 + v22) = *(v132 + v22) + (v25 * *(v129 + v22));
    v22 += 4;
  }

  while (v22 != 20);
  v26 = 0;
  v27 = v134;
  do
  {
    v28 = *v27;
    v27 += 6;
    v29 = 1.0 / sqrtf(v28);
    v128[v26] = v29;
    *(v132 + v26 * 4) = *(v132 + v26 * 4) * v29;
    ++v26;
  }

  while (v26 != 5);
  v30 = 0;
  v31 = v134;
  v32 = 1;
  do
  {
    v33 = 0;
    v34 = v128[v30];
    do
    {
      *&v31[v33] = *&v31[v33] * (v34 * v128[v33]);
      ++v33;
    }

    while (v32 != v33);
    ++v30;
    ++v32;
    v31 += 5;
  }

  while (v30 != 5);
  v35 = 0;
  v36 = &v134[1];
  v37 = &v134[5];
  v38 = 4;
  do
  {
    if (v35 <= 3)
    {
      v39 = v37;
      v40 = v36;
      v41 = v38;
      do
      {
        v42 = *v39;
        v39 += 5;
        *v40++ = v42;
        --v41;
      }

      while (v41);
    }

    ++v35;
    --v38;
    v36 += 6;
    v37 += 6;
  }

  while (v35 != 5);
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  __s = 1065353216;
  v122 = 1065353216;
  v123 = 1065353216;
  v124 = 1065353216;
  v43 = 1;
  v125 = 1065353216;
  do
  {
    v44 = 0;
    v45 = 0;
    result = v134;
    p_s = &__s;
    v48 = &v121;
    v49 = &v134[2];
    v51 = &v134[7];
    v50 = &v134[6];
    v52 = &v134[1];
    v53 = &v134[1];
    v54 = 1;
    do
    {
      v55 = 0;
      v56 = &v134[5 * v44 + v44];
      v57 = v48;
      v58 = v49;
      v59 = v51;
      v60 = v44;
      v61 = v50;
      v62 = v53;
      v63 = v54;
      do
      {
        v64 = &v134[5 * v44 + v63];
        v65 = *v64;
        if (*v64 != 0.0)
        {
          v66 = &v134[5 * v63];
          v67 = *&v66[v63];
          v68 = *v56;
          v69 = (v67 - *v56) / (v65 + v65);
          if (v69 <= 0.0)
          {
            v70 = -1.0;
          }

          else
          {
            v70 = 1.0;
          }

          v71 = v70 / (fabsf(v69) + sqrtf((v69 * v69) + 1.0));
          v72 = 1.0 / sqrtf((v71 * v71) + 1.0);
          v73 = v71 * v72;
          v74 = (v71 * v72) / (v72 + 1.0);
          *v56 = v68 - (v71 * v65);
          v75 = *&v66[v63] + (v71 * v65);
          *&v66[v63] = v75;
          if (vabds_f32(*v56, v68) > 0.00000011921)
          {
            ++v45;
          }

          *v64 = 0.0;
          v66[v44] = 0;
          if (vabds_f32(v75, v67) > 0.00000011921)
          {
            ++v45;
          }

          v76 = -(v71 * v72);
          v77 = -v74;
          v78 = result;
          v79 = v62;
          for (j = v44; j; --j)
          {
            v81 = *v78;
            v82 = *v79;
            *v78 = *v78 + (v76 * (*v79 + (v74 * *v78)));
            v78 += 5;
            *v79 = *v79 + (v73 * (v81 + (v77 * v82)));
            v79 += 5;
          }

          v83 = v52;
          v84 = v61;
          v85 = v55;
          if (v54 < v63)
          {
            do
            {
              v86 = *v83;
              v87 = *v84;
              *v83 = *v83 + (v76 * (*v84 + (v74 * *v83)));
              ++v83;
              *v84 = *v84 + (v73 * (v86 + (v77 * v87)));
              v84 += 5;
              --v85;
            }

            while (v85);
          }

          v88 = v58;
          v89 = v59;
          v90 = v60;
          if (v63 <= 3)
          {
            do
            {
              v91 = *v88;
              v92 = *v89;
              *v88 = *v88 + (v76 * (*v89 + (v74 * *v88)));
              ++v88;
              *v89 = *v89 + (v73 * (v91 + (v77 * v92)));
              ++v89;
              ++v90;
            }

            while (v90 < 3);
          }

          for (k = 0; k != 25; k += 5)
          {
            v94 = *&p_s[k];
            v95 = v57->f32[k];
            *&p_s[k] = v94 + (v76 * (v95 + (v74 * v94)));
            v57->f32[k] = v57->f32[k] + (v73 * (v94 + (v77 * v95)));
          }
        }

        ++v63;
        ++v62;
        ++v55;
        ++v61;
        ++v60;
        v59 += 6;
        ++v58;
        v57 = (v57 + 4);
      }

      while (v63 != 5);
      ++v54;
      ++v44;
      ++v53;
      ++result;
      v50 += 6;
      v52 += 6;
      v51 += 6;
      v49 += 6;
      v48 = (v48 + 4);
      ++p_s;
    }

    while (v44 != 4);
    if (!v45)
    {
      break;
    }

    ++v43;
  }

  while (v43 != 11);
  v96 = 0;
  v97 = 0.0;
  v98 = v134;
  do
  {
    v99 = *v98;
    v98 += 6;
    *&v119[v96 + 20] = v99;
    v100 = fabsf(v99);
    if (v100 > v97)
    {
      v97 = v100;
    }

    v96 += 4;
  }

  while (v96 != 20);
  v101 = 0;
  v102 = v97 * 0.000001;
  do
  {
    v103 = *&v119[v101 + 20];
    v104 = fabsf(v103);
    v105 = 1.0 / v103;
    if (v104 < v102)
    {
      v105 = 0.0;
    }

    *&v119[v101 + 20] = v105;
    v101 += 4;
  }

  while (v101 != 20);
  v106 = 0;
  v107 = &__s;
  do
  {
    v108 = 0;
    v109 = 0.0;
    v110 = v107;
    do
    {
      v111 = *v110;
      v110 += 5;
      v109 = v109 + (v111 * *(v132 + v108));
      v108 += 4;
    }

    while (v108 != 20);
    *&v119[4 * v106++] = v109;
    ++v107;
  }

  while (v106 != 5);
  for (m = 0; m != 20; m += 4)
  {
    *&v119[m] = *&v119[m + 20] * *&v119[m];
  }

  if (a4)
  {
    v113 = 0;
    v114 = &__s;
    do
    {
      v115 = 0;
      v116 = 0.0;
      do
      {
        v116 = v116 + (*&v114[v115] * *&v119[v115 * 4]);
        ++v115;
      }

      while (v115 != 5);
      *(a3 + 4 * v113) = vcvtms_s32_f32(((v116 * v128[v113]) * 16384.0) + 0.5);
      ++v113;
      v114 += 5;
    }

    while (v113 != a4);
  }

  return result;
}

uint64_t ltl_least_squares_set(uint64_t result, int a2, int *a3, unsigned int a4)
{
  if (a2)
  {
    for (i = 0; i != a2; *(result + 8 * i++) = vcvtms_s32_f32((v6 * 0.000061035) + 0.5))
    {
      v5 = (vcvts_n_f32_u32(i, 1uLL) + -30.0) + -30.0;
      v6 = *a3 + (v5 * a3[1]);
      v7 = a3 + 2;
      v8 = a4 - 2;
      v9 = v5;
      if (a4 >= 3)
      {
        do
        {
          v9 = v5 * v9;
          v10 = *v7++;
          v6 = v6 + (v9 * v10);
          --v8;
        }

        while (v8);
      }
    }
  }

  return result;
}

void PEREncVal(uint64_t a1, unsigned __int8 *a2, unsigned int *a3)
{
  v40 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v5 = *(a1 + 1040);
    *(a1 + 1040) = a2;
    v6 = *a2;
    if (v6 <= 0x30)
    {
      switch(*a2)
      {
        case 1u:
          PERPutBit(a1, *a3 != 0);
          goto LABEL_108;
        case 2u:
          PEREncodeINTEGER(a1, *(*(a2 + 1) + 8), a3);
          goto LABEL_108;
        case 3u:
          PEREncodeBIT_STRING(a1, a3);
          goto LABEL_108;
        case 4u:
          PEREncodeOCTET_STRING(a1, a3);
          goto LABEL_108;
        case 5u:
          goto LABEL_108;
        case 6u:
          PEREncodeOBJECT_IDENTIFIER(a1, a3);
          goto LABEL_108;
        case 7u:
        case 8u:
        case 9u:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
        case 0xFu:
        case 0x14u:
        case 0x15u:
        case 0x19u:
        case 0x1Bu:
        case 0x1Cu:
        case 0x1Du:
        case 0x1Eu:
        case 0x1Fu:
          goto LABEL_81;
        case 0xAu:
          PEREncodeENUMERATED(a1, a2, *a3);
          goto LABEL_108;
        case 0x10u:
        case 0x11u:
          PEREncodeStruct(a1, a2, a3);
          goto LABEL_108;
        case 0x12u:
        case 0x13u:
        case 0x16u:
        case 0x17u:
        case 0x18u:
        case 0x1Au:
          *(&v35 + 1) = 0;
          if (v6 <= 0x1A && ((1 << v6) & 0x5CC0000) != 0)
          {
            v8 = *a3;
            if (*a3)
            {
              v9 = strnlen(*a3, 0x400uLL);
              v10 = v9 - 1;
              if (v9 == 1)
              {
                goto LABEL_90;
              }
            }

            else
            {
              v10 = -2;
            }

            *&v34 = v8 + 1;
            *(&v34 + 1) = v10;
            if (v6 == 18)
            {
              v16 = 4;
              v17 = 1;
              v18 = 11;
              v19 = " 0123456789";
            }

            else
            {
              v17 = 0;
              v19 = 0;
              v18 = 0;
              if ((*(a1 + 1056) & 0x40) != 0)
              {
                v16 = 8;
              }

              else
              {
                v16 = 7;
              }
            }

            BYTE9(v35) = v17;
            *&v36 = v19;
            *(&v36 + 1) = v18;
            BYTE8(v35) = v16;
            *&v35 = PEREncodePrimCHARACTER_STRING;
            PERConstructedEncode(a1, &v34);
            goto LABEL_108;
          }

          CUCFErrorHandler(a1, 15);
LABEL_90:
          if ((*(a1 + 1056) & 0x40) != 0)
          {
            v26 = *(a1 + 1105);
            if (v26 != 7)
            {
              *(*(a1 + 1096))++ &= 510 << v26;
              *(a1 + 1105) = 7;
            }
          }

          PERPutByte(a1, 0);
          goto LABEL_108;
        case 0x20u:
          PEREncodeCHOICE(a1, a2, a3);
          goto LABEL_108;
        default:
          if (v6 != 48)
          {
            goto LABEL_81;
          }

          PEREncodeSEQUENCE_OF(a1, a2, a3);
          goto LABEL_108;
      }
    }

    if (*a2 <= 0x59u)
    {
      if (*a2 <= 0x43u)
      {
        if (*a2 > 0x41u)
        {
          if (v6 == 66)
          {
            PEREncodeConstrainedINTEGER(a1, a2, a3);
          }

          else
          {
            PEREncodeConstrainedBIT_STRING(a1, a2, *a3, *(a3 + 1));
          }

          goto LABEL_108;
        }

        if (v6 == 49)
        {
          PEREncodeSET_OF(a1, a2, a3);
          goto LABEL_108;
        }

        if (v6 == 64)
        {
          PEREncodeOPEN(a1, a2, a3);
LABEL_108:
          *(a1 + 1040) = v5;
          return;
        }

        goto LABEL_81;
      }

      if (v6 - 82 >= 2)
      {
        if (v6 == 68)
        {
          PEREncodeConstrainedOCTET_STRING(a1, a2, *a3, *(a3 + 1));
          goto LABEL_108;
        }

        if (v6 != 86)
        {
          goto LABEL_81;
        }
      }

LABEL_30:
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v11 = v6 & 0x1F;
      v12 = a2[40];
      if (v11 > 22)
      {
        if (v11 != 23 && v11 != 24 && v11 != 26)
        {
          goto LABEL_119;
        }
      }

      else if (v11 != 18 && v11 != 19 && v11 != 22)
      {
LABEL_119:
        CUCFErrorHandler(a1, 15);
        v14 = 0;
        v15 = 0;
        goto LABEL_56;
      }

      v13 = *a3;
      v14 = (*a3 + 1);
      v37 = v14;
      if (v13)
      {
        v15 = strnlen(v13, 0x400uLL) - 1;
      }

      else
      {
        v15 = -2;
      }

      v38 = v15;
      LOBYTE(v39) = 1;
LABEL_56:
      if (a2[41] == 1)
      {
        if (v15 < *(a2 + 6) || a2[40] < 0 && *(a2 + 7) < v15)
        {
          PERPutBit(a1, 1);
          v12 = 0;
          *&v34 = v14;
          *(&v34 + 1) = v15;
          goto LABEL_77;
        }

        PERPutBit(a1, 0);
      }

      else
      {
        CUCFCheckCHARACTER_STRINGConstraint(a1, a2, &v37);
        v14 = v37;
        v15 = v38;
      }

      *&v34 = v14;
      *(&v34 + 1) = v15;
      v20 = *(a2 + 4);
      if (v20)
      {
        v21 = *(a2 + 3);
        *&v36 = v21;
        *(&v36 + 1) = v20;
        v22 = v20 - 1;
        if (v20 == 1)
        {
          BYTE8(v35) = 0;
          if ((*(a1 + 1056) & 0x40) == 0)
          {
            goto LABEL_99;
          }

          v23 = 0;
          LODWORD(v22) = 1;
        }

        else
        {
          LOBYTE(v23) = 64 - __clz(v22);
          BYTE8(v35) = v23;
          LOBYTE(v22) = v23;
          if ((*(a1 + 1056) & 0x40) == 0)
          {
            goto LABEL_99;
          }

          v24 = v23;
          LOBYTE(v22) = 1;
          do
          {
            LOBYTE(v22) = 2 * v22;
            v25 = v24 > 1;
            v24 >>= 1;
          }

          while (v25);
          LODWORD(v22) = v22;
          v23 = v23;
        }

        if (v22 >> 1 >= v23)
        {
          LOBYTE(v22) = v22 >> 1;
        }

        BYTE8(v35) = v22;
LABEL_99:
        if (*(v21 + v20 - 1) > ~(-1 << v22))
        {
          BYTE9(v35) = 1;
          goto LABEL_102;
        }

LABEL_101:
        BYTE9(v35) = 0;
LABEL_102:
        if ((v12 & 0x80) == 0)
        {
LABEL_103:
          *&v35 = PEREncodePrimCHARACTER_STRING;
          PERConstructedEncode(a1, &v34);
LABEL_104:
          if (!v39 && v38 && v37)
          {
            free(v37);
          }

          goto LABEL_108;
        }

        if ((v12 & 2) != 0)
        {
          v30 = *(a2 + 6);
          if (!v30)
          {
            goto LABEL_104;
          }

          if (v30 > 2)
          {
            if (v30 >> 16)
            {
              goto LABEL_103;
            }

            if ((*(a1 + 1056) & 0x40) != 0 && v30 * v22 >= 0x11)
            {
              v31 = *(a1 + 1105);
              if (v31 != 7)
              {
                *(*(a1 + 1096))++ &= 510 << v31;
                *(a1 + 1105) = 7;
                v30 = *(a2 + 6);
              }
            }
          }
        }

        else
        {
          v27 = *(a2 + 6);
          v28 = *(a2 + 7) - v27;
          if ((v28 + 1) >> 16)
          {
            goto LABEL_103;
          }

          v32 = v15 - v27;
          v33 = v28;
          PEREncodeConstrainedWholeNumberFunc(a1, &v33, &v32);
          if ((*(a1 + 1056) & 0x40) != 0)
          {
            v29 = *(a1 + 1105);
            if (v29 != 7)
            {
              *(*(a1 + 1096))++ &= 510 << v29;
              *(a1 + 1105) = 7;
            }
          }

          v30 = v38;
        }

        PEREncodePrimCHARACTER_STRING(a1, v30, &v34);
        goto LABEL_104;
      }

      if ((*a2 & 0x1F) == 0x12)
      {
        *&v36 = " 0123456789";
        *(&v36 + 1) = 11;
        WORD4(v35) = 260;
        LOBYTE(v22) = 4;
        goto LABEL_102;
      }

LABEL_77:
      v36 = 0uLL;
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        LOBYTE(v22) = 8;
      }

      else
      {
        LOBYTE(v22) = 7;
      }

      BYTE8(v35) = v22;
      goto LABEL_101;
    }

    if (*a2 <= 0x70u)
    {
      if (v6 == 90)
      {
        goto LABEL_30;
      }

      if (v6 != 96)
      {
        if (v6 == 112)
        {
          PEREncodeConstrainedSEQUENCE_OF(a1, a2, a3);
          goto LABEL_108;
        }

LABEL_81:
        CUCFErrorHandler(a1, 16);
        goto LABEL_108;
      }
    }

    else if (*a2 > 0x9Fu)
    {
      if (v6 != 160)
      {
        if (v6 == 162)
        {
          PEREncodeSizeConstrainedINTEGER(a1, a2[24], a3);
          goto LABEL_108;
        }

        goto LABEL_81;
      }
    }

    else
    {
      if (v6 == 113)
      {
        PEREncodeConstrainedSET_OF(a1, a2, a3);
        goto LABEL_108;
      }

      if (v6 != 128)
      {
        goto LABEL_81;
      }
    }

    PEREncVal(a1, *(a2 + 3), a3);
    goto LABEL_108;
  }
}

uint64_t PEREncodeINTEGER(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *a3;
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v4 = *(a1 + 1105);
    if (v4 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v4;
      *(a1 + 1105) = 7;
    }
  }

  v6[0] = v3 < 0;
  v6[1] = v3 ^ (v3 >> 31);
  return PEREncodeUnconstrainedWholeNumberFunc(a1, v6);
}

uint64_t PEREncodeConstrainedINTEGER(uint64_t a1, uint64_t a2, int *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 24);
  v6 = *a3;
  v12 = *a3;
  if (*(a2 + 25) != 1)
  {
    CUCFCheckINTEGERConstraint(a1, a2, &v12);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (v5 < 0)
    {
      v9 = *(a2 + 32);
      v11 = v12 - v9;
      v10[0] = *(a2 + 40) - v9;
      return PEREncodeConstrainedWholeNumberFunc(a1, v10, &v11);
    }

    else
    {
      v10[0] = v12 - *(a2 + 32);
      return PEREncodeSemiConstrainedWholeNumberFunc(a1, v10);
    }
  }

  if (((v5 & 0x20) == 0 || *(a2 + 32) <= v6) && ((v5 & 8) == 0 || *(a2 + 40) >= v6))
  {
    PERPutBit(a1, 0);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  PERPutBit(a1, 1);
LABEL_11:
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v8 = *(a1 + 1105);
    if (v8 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v8;
      *(a1 + 1105) = 7;
    }
  }

  v10[0] = v12 < 0;
  v10[1] = v12 ^ (v12 >> 31);
  return PEREncodeUnconstrainedWholeNumberFunc(a1, v10);
}

uint64_t PEREncodeSizeConstrainedINTEGER(uint64_t a1, unsigned __int8 a2, int *a3)
{
  if (a2 == 3)
  {
    v6 = *a3;
    if ((*a3 - 0x100000000) < 0xFFFFFFFE00000000)
    {
      EPErrorHandler(a1, 18);
    }

    v5 = v6 + 0x100000000;
    if ((*(a1 + 1056) & 0x40) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v5 = *a3 + 0x80000000;
      goto LABEL_6;
    }

    v5 = *a3;
    if (a2 == 4 && v5 >> 33 || a2 == 16 && v5 >> 39)
    {
      EPErrorHandler(a1, 18);
    }

    if ((*(a1 + 1056) & 0x40) != 0)
    {
      goto LABEL_24;
    }

    if (a2 < 3u)
    {
LABEL_23:
      v8 = a1;
      v9 = v5;
      v10 = 32;
      goto LABEL_40;
    }

LABEL_19:
    if (a2 == 16)
    {
      v7 = 7;
    }

    else
    {
      v7 = 1;
    }

    PERPutBits(a1, v5 >> 32, v7);
    goto LABEL_23;
  }

  v5 = *a3;
LABEL_6:
  if ((*(a1 + 1056) & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (a2 < 3u)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  if (v5 < 1)
  {
    v17 = 0;
    v16 = 1;
  }

  else
  {
    v12 = 0;
    v13 = v5;
    do
    {
      v14 = v12++;
      v15 = v13 > 1;
      v13 >>= 1;
    }

    while (v15);
    if ((v12 & 7) != 0)
    {
      v16 = (v12 >> 3) + 1;
    }

    else
    {
      v16 = v12 >> 3;
    }

    v17 = v14 > 0x1Fu;
  }

  PERPutBits(a1, v16 - 1, v11);
  v18 = *(a1 + 1105);
  if (v18 != 7)
  {
    *(*(a1 + 1096))++ &= 510 << v18;
    *(a1 + 1105) = 7;
  }

  if (v17)
  {
    PERPutBits(a1, v5 >> 32, 8u);
    --v16;
  }

  v10 = 8 * (v16 & 0x1F);
  v8 = a1;
  v9 = v5;
LABEL_40:

  return PERPutBits(v8, v9, v10);
}

uint64_t PEREncodeBIT_STRING(uint64_t a1, unsigned int *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (v2)
  {
    v5[0] = *(a2 + 1);
    v5[1] = v2;
    v5[2] = PEREncodePrimBIT_STRING;
    return PERConstructedEncode(a1, v5);
  }

  else
  {
    if ((*(a1 + 1056) & 0x40) != 0)
    {
      v4 = *(a1 + 1105);
      if (v4 != 7)
      {
        *(*(a1 + 1096))++ &= 510 << v4;
        *(a1 + 1105) = 7;
      }
    }

    return PERPutByte(a1, 0);
  }
}

void PEREncodeConstrainedBIT_STRING(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v8 = *(a2 + 24);
  v9 = a3;
  if (*(a2 + 25) == 1)
  {
    if (*(a2 + 32) > a3 || (*(a2 + 24) & 0x80) != 0 && *(a2 + 40) < a3)
    {
      PERPutBit(a1, 1);
      v18 = a4;
      v19 = v9;
LABEL_9:
      v20 = PEREncodePrimBIT_STRING;
      PERConstructedEncode(a1, &v18);
      return;
    }

    PERPutBit(a1, 0);
  }

  else
  {
    CUCFCheckStringConstraint(a1, a2, a3);
  }

  v18 = a4;
  v19 = v9;
  if ((v8 & 0x80) == 0)
  {
    goto LABEL_9;
  }

  if ((v8 & 2) == 0)
  {
    v10 = *(a2 + 40);
    if (v10 >> 16)
    {
      goto LABEL_9;
    }

    v11 = *(a2 + 32);
    v16 = a3 - v11;
    v17 = v10 - v11;
    PEREncodeConstrainedWholeNumberFunc(a1, &v17, &v16);
    if ((*(a1 + 1056) & 0x40) != 0)
    {
      v12 = *(a1 + 1105);
      if (v12 != 7)
      {
        *(*(a1 + 1096))++ &= 510 << v12;
        *(a1 + 1105) = 7;
      }
    }

    v13 = a1;
    v14 = v9;
LABEL_20:
    PEREncodePrimBIT_STRING(v13, v14, &v18);
    return;
  }

  v14 = *(a2 + 32);
  if (v14)
  {
    if (v14 > 0x10)
    {
      if (v14 >> 16)
      {
        goto LABEL_9;
      }

      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v15 = *(a1 + 1105);
        if (v15 != 7)
        {
          *(*(a1 + 1096))++ &= 510 << v15;
          *(a1 + 1105) = 7;
          v14 = *(a2 + 32);
        }
      }
    }

    v13 = a1;
    goto LABEL_20;
  }
}

uint64_t PEREncodeOCTET_STRING(uint64_t a1, unsigned int *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (v2)
  {
    v5[0] = *(a2 + 1);
    v5[1] = v2;
    v5[2] = PEREncodePrimOCTET_STRING;
    return PERConstructedEncode(a1, v5);
  }

  else
  {
    if ((*(a1 + 1056) & 0x40) != 0)
    {
      v4 = *(a1 + 1105);
      if (v4 != 7)
      {
        *(*(a1 + 1096))++ &= 510 << v4;
        *(a1 + 1105) = 7;
      }
    }

    return PERPutByte(a1, 0);
  }
}

void PEREncodeConstrainedOCTET_STRING(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v8 = *(a2 + 24);
  v9 = a3;
  if (*(a2 + 25) == 1)
  {
    if (*(a2 + 32) > a3 || (*(a2 + 24) & 0x80) != 0 && *(a2 + 40) < a3)
    {
      PERPutBit(a1, 1);
      v19 = a4;
      v20 = v9;
LABEL_9:
      v21 = PEREncodePrimOCTET_STRING;
      PERConstructedEncode(a1, &v19);
      return;
    }

    PERPutBit(a1, 0);
  }

  else
  {
    CUCFCheckStringConstraint(a1, a2, a3);
  }

  v19 = a4;
  v20 = v9;
  if ((v8 & 0x80) == 0)
  {
    goto LABEL_9;
  }

  if ((v8 & 2) != 0)
  {
    v14 = *(a2 + 32);
    if (!v14)
    {
      return;
    }

    if (v14 > 2)
    {
      if (v14 >> 16)
      {
        goto LABEL_9;
      }

      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v16 = *(a1 + 1105);
        if (v16 != 7)
        {
          *(*(a1 + 1096))++ &= 510 << v16;
          *(a1 + 1105) = 7;
          v14 = *(a2 + 32);
          a4 = v19;
        }
      }
    }

    v15 = a1;
    v13 = a4;
  }

  else
  {
    v10 = *(a2 + 40);
    if (v10 >> 16)
    {
      goto LABEL_9;
    }

    v11 = *(a2 + 32);
    v17 = a3 - v11;
    v18 = v10 - v11;
    PEREncodeConstrainedWholeNumberFunc(a1, &v18, &v17);
    if ((*(a1 + 1056) & 0x40) != 0)
    {
      v12 = *(a1 + 1105);
      if (v12 != 7)
      {
        *(*(a1 + 1096))++ &= 510 << v12;
        *(a1 + 1105) = 7;
      }
    }

    v13 = v19;
    v14 = v20;
    v15 = a1;
  }

  PERPutSeg(v15, v13, v14);
}

void *PEREncodeOBJECT_IDENTIFIER(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v4 = *(a1 + 1105);
    if (v4 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v4;
      *(a1 + 1105) = 7;
    }
  }

  v5 = *(a1 + 1096);
  v6 = *(a1 + 1088);
  PERSkipBytes(a1, 1uLL);
  v7 = *(a2 + 4);
  v8 = *a2;
  if (*a2)
  {
    v8 = *(v8 + 8);
  }

  v9 = 0;
  v10 = v5 - v6;
  v11 = 40 * v8;
  v12 = a2;
  while (1)
  {
    v12 = *v12;
    if (!v12)
    {
      break;
    }

    v13 = v9;
    v9 = 1;
    if (v13)
    {
      v8 = *(v12 + 2);
      break;
    }
  }

  v14 = v8 + v11;
  if (((v8 + v11) & 0xFFFFFF80) != 0)
  {
    EPErrorHandler(a1, 28);
  }

  result = PERPutByte(a1, v14);
  if (v7 >= 3)
  {
    v16 = 2;
    v17 = 3;
    do
    {
      v18 = *a2;
      v19 = v17;
      if (*a2)
      {
        while (--v19)
        {
          v18 = *v18;
          if (!v18)
          {
            goto LABEL_19;
          }
        }

        v14 = *(v18 + 8);
      }

LABEL_19:
      if (v14 >= 0x80)
      {
        v21 = 0;
        v22 = v14;
        do
        {
          v21 += 7;
          v23 = v22 >= 0x4000;
          v22 >>= 7;
        }

        while (v23);
        for (; v21; v21 -= 7)
        {
          PERPutByte(a1, (v14 >> v21) | 0x80);
        }

        v20 = v14 & 0x7F;
      }

      else
      {
        v20 = v14;
      }

      result = PERPutByte(a1, v20);
      ++v16;
      ++v17;
    }

    while (v16 != v7);
  }

  v24 = *(a1 + 1088);
  v25 = *(a1 + 1096) - v24 + ~v10;
  if (v25 > 0x7F)
  {
    if (*(a1 + 1105) == 7)
    {

      return PEROctetsFragmentation(a1, v25);
    }

    else
    {

      return PEROctetsFragmentationWithOffset(a1, v25);
    }
  }

  else
  {
    v26 = (v24 + v10);
    v27 = *(a1 + 1105);
    if (v27 == 7)
    {
      *v26 = v25;
    }

    else
    {
      *v26 |= v25 >> (7 - v27);
      v26[1] |= v25 << (*(a1 + 1105) + 1);
    }
  }

  return result;
}

uint64_t PEREncodeENUMERATED(uint64_t a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a2 + 40) <= a3)
  {
    EPErrorHandler(a1, 21);
  }

  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    v10 = a3;
    v7 = *(a2 + 40);
    goto LABEL_7;
  }

  if (v6 > a3)
  {
    PERPutBit(a1, 0);
    v10 = a3;
    v7 = *(a2 + 24);
LABEL_7:
    v11 = v7 - 1;
    return PEREncodeConstrainedWholeNumberFunc(a1, &v11, &v10);
  }

  PERPutBit(a1, 1);
  v9 = a3 - *(a2 + 24);

  return PEREncodeNormallySmallNonNegativeWholeNumber(a1, v9);
}

void PEREncodeStruct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v75 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 48) & 1) == 0)
  {
    v6 = *(a2 + 80);
    if (v6)
    {
      v72 = 0;
      v73 = 0;
      v74 = 0;
      if (v6 >> 16)
      {
        PERSkipConsBitField(a1, &v72, v6);
      }

      else
      {
        PERSkipPrimBitField(a1, &v72, v6);
      }

      PEREncodeStructRootWithOptDef(a1, &v72, v4, a3);
    }

    else
    {

      PEREncodeStructRoot(a1, a2, a3);
    }

    return;
  }

  v7 = *(a1 + 1096);
  v8 = *(a1 + 1088);
  v9 = *(a1 + 1105);
  PERPutBit(a1, 0);
  v10 = v4[10];
  if (v10)
  {
    v72 = 0;
    v73 = 0;
    v74 = 0;
    if (v10 >> 16)
    {
      PERSkipConsBitField(a1, &v72, v10);
    }

    else
    {
      PERSkipPrimBitField(a1, &v72, v10);
    }

    PEREncodeStructRootWithOptDef(a1, &v72, v4, a3);
  }

  else
  {
    PEREncodeStructRoot(a1, v4, a3);
  }

  v11 = v4[11];
  if (!v11)
  {
    return;
  }

  memset(v71, 0, sizeof(v71));
  v12 = *(a1 + 1096);
  v13 = *(a1 + 1105);
  v64 = *(a1 + 1088);
  if (v11 < 0x41)
  {
    PERPutBits(a1, v11 - 1, 7u);
    PERSkipPrimBitField(a1, v71, v4[11]);
  }

  else
  {
    PERPutBit(a1, 1);
    PERSkipConsBitField(a1, v71, v4[11]);
  }

  v14 = v4[8];
  if (!v14)
  {
LABEL_99:
    v59 = *(a1 + 1088);
    *(a1 + 1096) = v59 + v12 - v64;
    *(a1 + 1105) = v13;
    *(v59 + v12 - v64) &= -2 << v13;
    return;
  }

  v62 = v13;
  v63 = v9;
  v15 = 0;
  v16 = 0;
  v60 = v7 - v8;
  v61 = v12;
  v17 = v4[4];
  v69 = a1 + 200;
  v70 = v4;
  do
  {
    v18 = *(v17 + 16);
    if (v18 <= 2)
    {
      if (v18 < 2)
      {
        v19 = *(v4[1] + 24) + 24 * *(v17 + 24);
        if (*(a3 + **(v19 + 16)) == 1)
        {
          v20 = *(v19 + 8);
          PERSetBitToBitField(a1, v71, 1);
          v21 = *(a1 + 712);
          if (v21 >= 0x40)
          {
            CUCFErrorHandler(a1, 15);
            v21 = *(a1 + 712);
          }

          *(v69 + 8 * v21) = v17;
          *(a1 + 712) = v21 + 1;
          PEREncodeOPENTypeField(a1, *v17, (a3 + v20));
          --*(a1 + 712);
          ++v15;
          goto LABEL_39;
        }

LABEL_40:
        PERSetBitToBitField(a1, v71, 0);
        goto LABEL_97;
      }

      v22 = *(v4[1] + 24) + 24 * *(v17 + 24);
      if (*(a3 + **(v22 + 16)) != 1)
      {
        goto LABEL_40;
      }

      v23 = *(v22 + 8);
      PERSetBitToBitField(a1, v71, 1);
      v24 = *(a1 + 712);
      if (v24 >= 0x40)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (v18 == 3)
    {
      v25 = *(v4[1] + 24) + 24 * *(v17 + 24);
      if (*(a3 + **(v25 + 16)) != 1)
      {
        goto LABEL_40;
      }

      v23 = *(v25 + 8);
      PERSetBitToBitField(a1, v71, 1);
      v24 = *(a1 + 712);
      if (v24 >= 0x40)
      {
LABEL_37:
        CUCFErrorHandler(a1, 15);
        v24 = *(a1 + 712);
      }

LABEL_38:
      *(v69 + 8 * v24) = v17;
      *(a1 + 712) = v24 + 1;
      PEREncodeOPENTypeField(a1, *v17, (a3 + v23));
      --*(a1 + 712);
      ++v16;
LABEL_39:
      v4 = v70;
      goto LABEL_97;
    }

    if (v18 != 4)
    {
      if (v18 != 5)
      {
        CUCFErrorHandler(a1, 15);
        goto LABEL_97;
      }

      goto LABEL_40;
    }

    v26 = *(v17 + 24);
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v27 = 0;
    if (v26)
    {
      v28 = (v17 + 48);
      v29 = v26;
      do
      {
        v30 = *v28;
        v28 += 32;
        if (v30)
        {
          ++v27;
        }

        --v29;
      }

      while (v29);
    }

    if ((*(a1 + 1056) & 0x40) != 0)
    {
      v32 = *(a1 + 1105);
      v31 = *(a1 + 1096);
      v68 = 7;
      if (v32 != 7)
      {
        *v31 &= 510 << v32;
        v31 = (*(a1 + 1096) + 1);
        *(a1 + 1096) = v31;
        *(a1 + 1105) = 7;
      }
    }

    else
    {
      v31 = *(a1 + 1096);
      v68 = *(a1 + 1105);
    }

    v33 = *(a1 + 1088);
    PERSkipBytes(a1, 1uLL);
    v67 = v16;
    if (v27 >> 16)
    {
      PERSkipConsBitField(a1, &v72, v27);
    }

    else
    {
      PERSkipPrimBitField(a1, &v72, v27);
    }

    v14 -= v26;
    v34 = &v31[-v33];
    if (!*(v17 + 24))
    {
      v4 = v70;
LABEL_85:
      v16 = v67;
      v55 = *(a1 + 1088);
      *(a1 + 1096) = v55 + v34;
      *(a1 + 1105) = v68;
      *(v55 + v34) &= -2 << v68;
      PERSetBitToBitField(a1, v71, 0);
      goto LABEL_97;
    }

    v65 = &v31[-v33];
    v66 = v15;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = v17 + 32;
    v4 = v70;
    do
    {
      v40 = *(v39 + 16);
      if (v40 > 2)
      {
        if (v40 == 3)
        {
          v47 = *(v4[1] + 24) + 24 * *(v39 + 24);
          if (*(a3 + **(v47 + 16)) == 1)
          {
            v45 = *(v47 + 8);
            PERSetBitToBitField(a1, &v72, 1);
            v46 = *(a1 + 712);
            if (v46 >= 0x40)
            {
              goto LABEL_72;
            }

            goto LABEL_73;
          }
        }

        else if (v40 != 5)
        {
          CUCFErrorHandler(a1, 15);
          goto LABEL_76;
        }
      }

      else
      {
        if (v40 < 2)
        {
          v41 = *(v4[1] + 24) + 24 * *(v39 + 24);
          if (*(a3 + **(v41 + 16)) != 1)
          {
            ++v37;
            goto LABEL_76;
          }

          v42 = *(v41 + 8);
          v43 = *(a1 + 712);
          if (v43 >= 0x40)
          {
            CUCFErrorHandler(a1, 15);
            v43 = *(a1 + 712);
          }

          *(v69 + 8 * v43) = v39;
          *(a1 + 712) = v43 + 1;
          PEREncVal(a1, *v39, (a3 + v42));
          --*(a1 + 712);
          if (*(v39 + 16) == 1)
          {
            PERSetBitToBitField(a1, &v72, 1);
          }

          ++v36;
          goto LABEL_74;
        }

        v44 = *(v4[1] + 24) + 24 * *(v39 + 24);
        if (*(a3 + **(v44 + 16)) == 1)
        {
          v45 = *(v44 + 8);
          PERSetBitToBitField(a1, &v72, 1);
          v46 = *(a1 + 712);
          if (v46 >= 0x40)
          {
LABEL_72:
            CUCFErrorHandler(a1, 15);
            v46 = *(a1 + 712);
          }

LABEL_73:
          *(v69 + 8 * v46) = v39;
          *(a1 + 712) = v46 + 1;
          PEREncVal(a1, *v39, (a3 + v45));
          --*(a1 + 712);
          ++v35;
LABEL_74:
          v4 = v70;
          goto LABEL_76;
        }
      }

      PERSetBitToBitField(a1, &v72, 0);
LABEL_76:
      ++v38;
      v39 += 32;
    }

    while (v38 < *(v17 + 24));
    v17 = v39 - 32;
    if (v37 && v35)
    {
      EPErrorHandler(a1, 33);
      v34 = v65;
      v15 = v66;
      goto LABEL_82;
    }

    v48 = v36 | v35;
    v34 = v65;
    v15 = v66;
    if (!v48)
    {
      goto LABEL_85;
    }

LABEL_82:
    v49 = *(a1 + 1096);
    v50 = (v49 - *(a1 + 1088));
    v51 = *(a1 + 1105);
    v52 = v51 >= v68;
    v53 = v51 - v68;
    if (v52)
    {
      v54 = &v50[~v34];
      if (v54)
      {
        PERPutBits(a1, 0, v53);
        goto LABEL_88;
      }

LABEL_91:
      v4 = v70;
      *(a1 + 1096) = v49 - 1;
      PERPutBits(a1, 0x100uLL, 0x10u);
    }

    else
    {
      PERPutBits(a1, 0, (v53 + 8));
      v54 = &v50[-v34];
      if (v50 == v34)
      {
        v49 = *(a1 + 1096);
        goto LABEL_91;
      }

LABEL_88:
      v4 = v70;
      if (v54 > 0x7F)
      {
        if (*(a1 + 1105) == 7)
        {
          PEROctetsFragmentation(a1, v54);
        }

        else
        {
          PEROctetsFragmentationWithOffset(a1, v54);
        }
      }

      else
      {
        v56 = (*(a1 + 1088) + v34);
        v57 = *(a1 + 1105);
        if (v57 == 7)
        {
          *v56 = v54;
        }

        else
        {
          *v56 |= v54 >> (7 - v57);
          v56[1] |= v54 << (*(a1 + 1105) + 1);
        }
      }
    }

    PERSetBitToBitField(a1, v71, 1);
    v16 = v67 + 1;
LABEL_97:
    v17 += 32;
    --v14;
  }

  while (v14);
  v58 = v15 | v16;
  v13 = v62;
  v12 = v61;
  if (!v58)
  {
    goto LABEL_99;
  }

  *(*(a1 + 1088) + v60) |= 1 << v63;
}

uint64_t PEREncodeSEQUENCE_OF(uint64_t a1, uint64_t a2, int *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v6 = **(a2 + 8);
  if (v6 == 181)
  {
    v7 = a3[4];
    goto LABEL_5;
  }

  if (v6 == 182)
  {
    v7 = *a3;
LABEL_5:
    *&v11 = v7;
    goto LABEL_7;
  }

  CUCFErrorHandler(a1, 15);
LABEL_7:
  v10 = a3;
  *&v12 = 0;
  *(&v12 + 1) = a2;
  v8 = *(a1 + 712);
  if (v8 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v8 = *(a1 + 712);
  }

  *(a1 + 8 * v8 + 200) = &v12;
  *(a1 + 712) = v8 + 1;
  *(&v11 + 1) = PEREncodePrimSEQUENCE_OF;
  result = PERConstructedEncode(a1, &v10);
  --*(a1 + 712);
  return result;
}

void PEREncodeConstrainedSEQUENCE_OF(uint64_t a1, uint64_t a2, int *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a2 + 32);
  v7 = **(a2 + 8);
  if (v7 == 181)
  {
    v8 = a3[4];
    goto LABEL_5;
  }

  if (v7 == 182)
  {
    v8 = *a3;
LABEL_5:
    *&v16 = v8;
    goto LABEL_7;
  }

  CUCFErrorHandler(a1, 15);
  v8 = 0;
LABEL_7:
  v15 = a3;
  *&v17 = 0;
  *(&v17 + 1) = a2;
  if (*(a2 + 33) == 1)
  {
    if (v8 < *(a2 + 40) || *(a2 + 32) < 0 && *(a2 + 48) < v8)
    {
      PERPutBit(a1, 1);
      v6 = 0;
    }

    else
    {
      PERPutBit(a1, 0);
    }
  }

  else
  {
    CUCFCheckStructOfConstraint(a1, a2, v8);
  }

  v9 = *(a1 + 712);
  if (v9 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v9 = *(a1 + 712);
  }

  *(a1 + 200 + 8 * v9) = &v17;
  *(a1 + 712) = v9 + 1;
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  if ((v6 & 2) != 0)
  {
    v12 = *(a2 + 40);
    if (!v12)
    {
      goto LABEL_18;
    }

    if (!(v12 >> 16))
    {
LABEL_24:
      PEREncodePrimSEQUENCE_OF(a1, v12, &v15);
      goto LABEL_18;
    }
  }

  else
  {
    v10 = *(a2 + 48);
    if (!(v10 >> 16))
    {
      v11 = *(a2 + 40);
      v13 = v8 - v11;
      v14 = v10 - v11;
      PEREncodeConstrainedWholeNumberFunc(a1, &v14, &v13);
      v12 = v16;
      goto LABEL_24;
    }
  }

LABEL_17:
  *(&v16 + 1) = PEREncodePrimSEQUENCE_OF;
  PERConstructedEncode(a1, &v15);
LABEL_18:
  --*(a1 + 712);
}

uint64_t PEREncodeSET_OF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = *MEMORY[0x29EDCA608];
  v8[1] = a2;
  v8[2] = 0;
  v4 = *(a3 + 16);
  v7[0] = a3;
  v7[1] = v4;
  v8[0] = 0;
  v5 = *(a1 + 712);
  if (v5 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v5 = *(a1 + 712);
  }

  *(a1 + 8 * v5 + 200) = v8;
  *(a1 + 712) = v5 + 1;
  v7[2] = PEREncodePrimSET_OF;
  result = PERConstructedEncode(a1, v7);
  --*(a1 + 712);
  return result;
}

void PEREncodeConstrainedSET_OF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v16 = 0u;
  v15 = 0u;
  v5 = *(a2 + 32);
  v6 = *(a3 + 16);
  v13 = a3;
  v14 = v6;
  *&v16 = a2;
  if (*(a2 + 33) == 1)
  {
    if (*(a2 + 40) > v6 || v5 < 0 && *(a2 + 48) < v6)
    {
      PERPutBit(a1, 1);
      v5 = 0;
    }

    else
    {
      PERPutBit(a1, 0);
    }
  }

  else
  {
    CUCFCheckStructOfConstraint(a1, a2, v6);
  }

  v7 = *(a1 + 712);
  if (v7 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v7 = *(a1 + 712);
  }

  *(a1 + 200 + 8 * v7) = &v15 + 8;
  *(a1 + 712) = v7 + 1;
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  if ((v5 & 2) != 0)
  {
    v10 = *(a2 + 40);
    if (!(v10 >> 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = *(a2 + 48);
    if (!(v8 >> 16))
    {
      v9 = *(a2 + 40);
      v11 = v6 - v9;
      v12 = v8 - v9;
      PEREncodeConstrainedWholeNumberFunc(a1, &v12, &v11);
      v10 = v14;
LABEL_17:
      PEREncodePrimSET_OF(a1, v10, &v13);
      goto LABEL_12;
    }
  }

LABEL_11:
  *&v15 = PEREncodePrimSET_OF;
  PERConstructedEncode(a1, &v13);
LABEL_12:
  --*(a1 + 712);
}

void PEREncodeCHOICE(uint64_t a1, void *a2, __int16 *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = a2[1];
  v6 = *(v5 + 40);
  if (v6 > 3)
  {
LABEL_5:
    v7 = *a3;
    goto LABEL_7;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      v7 = *a3;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v7 = *a3;
LABEL_7:
  v8 = a2[5];
  if (v8)
  {
    v9 = a2[5];
    v10 = a2[4];
    while (*(v10 + 16) == 5 || *(v10 + 24) != v7)
    {
      v10 += 32;
      if (!--v9)
      {
        v10 = a2[4];
        break;
      }
    }

    v11 = (a3 + *(v5 + 36));
    v12 = v10 - a2[4];
    v14 = a2 + 3;
    v13 = a2[3];
    if (v13 == -1)
    {
      if (v8 != 1)
      {
        v20 = v12 >> 5;
        v16 = v8 - 1;
        goto LABEL_27;
      }

LABEL_29:
      v17 = (a1 + 712);
      v19 = *(a1 + 712);
      if (v19 >= 0x40)
      {
        CUCFErrorHandler(a1, 15);
        v19 = *(a1 + 712);
      }

      *(a1 + 200 + 8 * v19) = v10;
      *(a1 + 712) = v19 + 1;
      PEREncVal(a1, *v10, v11);
      goto LABEL_32;
    }

    v15 = v12 >> 5;
  }

  else
  {
    v11 = (a3 + *(v5 + 36));
    v14 = a2 + 3;
    v13 = a2[3];
    if (v13 == -1)
    {
      v10 = a2[4];
      goto LABEL_29;
    }

    v15 = 0;
    v10 = a2[4];
  }

  if (v15 < v13)
  {
    PERPutBit(a1, 0);
    if (a2[5] >= 2uLL)
    {
      v20 = v15;
      v16 = *v14 - 1;
LABEL_27:
      v21 = v16;
      PEREncodeConstrainedWholeNumberFunc(a1, &v21, &v20);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  PERPutBit(a1, 1);
  if (a2[5] >= 2uLL)
  {
    PEREncodeNormallySmallNonNegativeWholeNumber(a1, v15 - *v14);
  }

  v17 = (a1 + 712);
  v18 = *(a1 + 712);
  if (v18 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v18 = *(a1 + 712);
  }

  *(a1 + 200 + 8 * v18) = v10;
  *(a1 + 712) = v18 + 1;
  PEREncodeOPENTypeField(a1, *v10, v11);
LABEL_32:
  --*v17;
}

uint64_t PEREncodeOPEN(uint64_t result, void *a2, __int16 *a3)
{
  v4 = result;
  v5 = a2[1];
  v6 = a2[5];
  v7 = *(v5 + 40);
  if (v7 > 3)
  {
    goto LABEL_6;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v8 = *a3;
      if (!v6)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

LABEL_6:
    v8 = *a3;
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v8 = *a3;
  if (!v6)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

LABEL_9:
  v9 = a2[4];
  while (*(v9 + 24) != v8)
  {
    v9 += 32;
    if (!--v6)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v10 = *(v5 + 36);
  v11 = *(result + 712);
  if (v11 >= 0x40)
  {
    result = CUCFErrorHandler(result, 15);
    v11 = *(v4 + 712);
  }

  *(v4 + 200 + 8 * v11) = v9;
  *(v4 + 712) = v11 + 1;
  if (v9)
  {
    result = PEREncodeOPENTypeField(v4, *v9, (a3 + v10));
    v11 = *(v4 + 712) - 1;
  }

  *(v4 + 712) = v11;
  return result;
}

void PERDecVal(unint64_t a1, unsigned __int8 *a2, _DWORD *a3, void **a4)
{
  v44 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v8 = *(a1 + 1040);
    *(a1 + 1040) = a2;
    v9 = *a2;
    if (v9 <= 0x30)
    {
      switch(*a2)
      {
        case 1u:
          *a3 = PERGetBit(a1);
          goto LABEL_125;
        case 2u:
          PERDecodeINTEGER(a1, a2, a3);
          goto LABEL_125;
        case 3u:
          PERDecodeBIT_STRING(a1, a3);
          goto LABEL_125;
        case 4u:
          PERDecodeOCTET_STRING(a1, a3);
          goto LABEL_125;
        case 5u:
          *a3 = 0;
          goto LABEL_125;
        case 6u:
          PERDecodeOBJECT_IDENTIFIER(a1, a3);
          goto LABEL_125;
        case 7u:
        case 8u:
        case 9u:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
        case 0xFu:
        case 0x14u:
        case 0x15u:
        case 0x19u:
        case 0x1Bu:
        case 0x1Cu:
        case 0x1Du:
        case 0x1Eu:
        case 0x1Fu:
          goto LABEL_74;
        case 0xAu:
          PERDecodeENUMERATED(a1, a2, a3);
          goto LABEL_125;
        case 0x10u:
        case 0x11u:
          v22 = *(*(a2 + 1) + 8);
          memset_s(a3, v22, 0, v22);
          PERDecodeStruct(a1, a2, a3, a4);
          goto LABEL_125;
        case 0x12u:
        case 0x13u:
        case 0x16u:
        case 0x17u:
        case 0x18u:
        case 0x1Au:
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          if (v9 == 18)
          {
            BYTE8(v40) = 4;
            *&v40 = PERDecodePrimCHARACTER_STRING;
            PERConstructedDecode(a1, &v39);
            v10 = *(&v39 + 1);
            if (*(&v39 + 1))
            {
              v11 = v39;
              do
              {
                if (*v11)
                {
                  v12 = *v11 + 47;
                }

                else
                {
                  v12 = 32;
                }

                *v11++ = v12;
                --v10;
              }

              while (v10);
            }
          }

          else
          {
            if ((*(a1 + 1056) & 0x40) != 0)
            {
              v19 = 8;
            }

            else
            {
              v19 = 7;
            }

            BYTE8(v40) = v19;
            *&v40 = PERDecodePrimCHARACTER_STRING;
            PERConstructedDecode(a1, &v39);
          }

          v20 = v39;
          *(a1 + 1112) = 0;
          v21 = *a2 & 0x1F;
          if (v21 > 0x16)
          {
            if (v21 != 23 && v21 != 24 && v21 != 26)
            {
LABEL_83:
              CUCFErrorHandler(a1, 15);
              if (*(&v20 + 1) && v20)
              {
                v24 = v20;
                goto LABEL_124;
              }

              goto LABEL_125;
            }
          }

          else if (v21 != 18 && v21 != 19 && v21 != 22)
          {
            goto LABEL_83;
          }

          if (*(&v20 + 1))
          {
            *(v20 + *(&v20 + 1)) = 0;
            *a3 = v20 - 1;
          }

          else
          {
            v23 = gnssOsa_Calloc("posp_alloc", 18, 1, 2uLL);
            *a3 = v23;
            *v23 = 86;
            *(*a3 + 1) = 0;
          }

          goto LABEL_125;
        case 0x20u:
          PERDecodeCHOICE(a1, a2, a3, a4);
          goto LABEL_125;
        default:
          if (v9 != 48)
          {
            goto LABEL_74;
          }

          PERDecodeSEQUENCE_OF(a1, a2, a3, a4);
          goto LABEL_125;
      }
    }

    if (*a2 > 0x59u)
    {
      if (*a2 > 0x70u)
      {
        if (*a2 > 0x9Fu)
        {
          if (v9 != 160)
          {
            if (v9 == 162)
            {
              PERDecodeSizeConstrainedINTEGER(a1, a2, a3);
              goto LABEL_125;
            }

            goto LABEL_74;
          }
        }

        else
        {
          if (v9 == 113)
          {
            PERDecodeConstrainedSET_OF(a1, a2, a3, a4);
            goto LABEL_125;
          }

          if (v9 != 128)
          {
            goto LABEL_74;
          }
        }

        PERDecVal(a1, *(a2 + 3), a3, a4);
        goto LABEL_125;
      }

      if (v9 != 90)
      {
        if (v9 == 96)
        {
          PERDecodeOPEN_ID(a1, a2, a3, a4);
          goto LABEL_125;
        }

        if (v9 == 112)
        {
          PERDecodeConstrainedSEQUENCE_OF(a1, a2, a3, a4);
          goto LABEL_125;
        }

LABEL_74:
        CUCFErrorHandler(a1, 16);
        goto LABEL_125;
      }
    }

    else
    {
      if (*a2 <= 0x43u)
      {
        if (*a2 > 0x41u)
        {
          if (v9 == 66)
          {
            PERDecodeConstrainedINTEGER(a1, a2, a3);
          }

          else
          {
            PERDecodeConstrainedBIT_STRING(a1, a2, a3);
          }

          goto LABEL_125;
        }

        if (v9 == 49)
        {
          PERDecodeSET_OF(a1, a2, a3, a4);
          goto LABEL_125;
        }

        if (v9 == 64)
        {
          PERDecodeOPEN(a1, a2, a3, a4);
LABEL_125:
          *(a1 + 1040) = v8;
          return;
        }

        goto LABEL_74;
      }

      if (v9 - 82 >= 2)
      {
        if (v9 == 68)
        {
          PERDecodeConstrainedOCTET_STRING(a1, a2, a3);
          goto LABEL_125;
        }

        if (v9 != 86)
        {
          goto LABEL_74;
        }
      }
    }

    v43 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    if (a2[41] == 1 && PERGetBit(a1))
    {
      *(&v41 + 1) = 0;
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v13 = 8;
      }

      else
      {
        v13 = 7;
      }

      BYTE8(v40) = v13;
      goto LABEL_96;
    }

    v14 = *(a2 + 4);
    if (v14)
    {
      *&v41 = *(a2 + 3);
      *(&v41 + 1) = v14;
      v15 = v14 - 1;
      if (v15)
      {
        LOBYTE(v15) = 64 - __clz(v15);
        BYTE8(v40) = v15;
        if ((*(a1 + 1056) & 0x40) == 0)
        {
          goto LABEL_95;
        }

        v16 = v15;
        LOBYTE(v17) = 1;
        do
        {
          LOBYTE(v17) = 2 * v17;
          v18 = v16 > 1;
          v16 >>= 1;
        }

        while (v18);
        v17 = v17;
        LODWORD(v15) = v15;
      }

      else
      {
        BYTE8(v40) = 0;
        if ((*(a1 + 1056) & 0x40) == 0)
        {
          goto LABEL_95;
        }

        LODWORD(v15) = 0;
        v17 = 1;
      }

      if (v17 >> 1 >= v15)
      {
        LOBYTE(v15) = v17 >> 1;
      }

      else
      {
        LOBYTE(v15) = v17;
      }
    }

    else if ((*a2 & 0x1F) == 0x12)
    {
      *&v41 = " 0123456789";
      *(&v41 + 1) = 11;
      LOBYTE(v15) = 4;
    }

    else
    {
      *(&v41 + 1) = 0;
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        LOBYTE(v15) = 8;
      }

      else
      {
        LOBYTE(v15) = 7;
      }
    }

    BYTE8(v40) = v15;
LABEL_95:
    v25 = a2[40];
    if ((v25 & 0x80000000) == 0)
    {
LABEL_96:
      *&v40 = PERDecodePrimCHARACTER_STRING;
      PERConstructedDecode(a1, &v39);
LABEL_97:
      if (*(&v41 + 1))
      {
        if (*(v41 + *(&v41 + 1) - 1) > ~(-1 << SBYTE8(v40)))
        {
          v26 = *(&v39 + 1);
          if (*(&v39 + 1))
          {
            v27 = v39;
            do
            {
              *v27 = *(v41 + *v27);
              ++v27;
              --v26;
            }

            while (v26);
          }
        }
      }

      v29 = *(&v39 + 1);
      v28 = v39;
      v42 = v39;
      *(a1 + 1112) = 0;
      v30 = *a2 & 0x1F;
      if (v30 > 0x16)
      {
        if (v30 != 23 && v30 != 24 && v30 != 26)
        {
          goto LABEL_118;
        }
      }

      else if (v30 != 18 && v30 != 19 && v30 != 22)
      {
LABEL_118:
        CUCFErrorHandler(a1, 15);
        v31 = 0;
LABEL_119:
        if (!a2[41])
        {
          CUCFCheckCHARACTER_STRINGConstraint(a1, a2, &v42);
          v31 = v43;
          v29 = *(&v42 + 1);
        }

        if (!v31)
        {
          if (v29)
          {
            v24 = v42;
            if (v42)
            {
LABEL_124:
              free(v24);
            }
          }
        }

        goto LABEL_125;
      }

      if (v29)
      {
        *(v28 + v29) = 0;
        *a3 = v28 - 1;
        v31 = 1;
        LOBYTE(v43) = 1;
      }

      else
      {
        v32 = gnssOsa_Calloc("posp_alloc", 18, 1, 2uLL);
        v31 = 0;
        *a3 = v32;
        *v32 = 86;
        *(*a3 + 1) = 0;
        LOBYTE(v43) = 0;
      }

      goto LABEL_119;
    }

    if ((v25 & 2) != 0)
    {
      v34 = *(a2 + 6);
      if (!v34)
      {
        goto LABEL_97;
      }

      if (v34 > 2)
      {
        if (v34 >> 16)
        {
          goto LABEL_96;
        }

        if ((*(a1 + 1056) & 0x40) != 0 && v34 * v15 >= 0x11)
        {
          v36 = *(a1 + 1105);
          if (v36 != 7)
          {
            *(*(a1 + 1096))++ &= 510 << v36;
            *(a1 + 1105) = 7;
            v34 = *(a2 + 6);
          }
        }
      }
    }

    else
    {
      v33 = *(a2 + 7) - *(a2 + 6);
      if ((v33 + 1) >> 16)
      {
        goto LABEL_96;
      }

      v37 = 0;
      v38 = v33;
      PERDecodeConstrainedWholeNumberFunc(a1, &v38, &v37);
      v34 = (v37 + *(a2 + 12));
      *(&v39 + 1) = v34;
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v35 = *(a1 + 1105);
        if (v35 != 7)
        {
          *(*(a1 + 1096))++ &= 510 << v35;
          *(a1 + 1105) = 7;
          v34 = *(&v39 + 1);
        }
      }
    }

    PERDecodePrimCHARACTER_STRING(a1, v34, &v39);
    goto LABEL_97;
  }
}

unint64_t PERDecodeINTEGER(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7[1] = *MEMORY[0x29EDCA608];
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v5 = *(a1 + 1105);
    if (v5 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v5;
      *(a1 + 1105) = 7;
    }
  }

  v7[0] = 0;
  result = PERDecodeUnconstrainedWholeNumberFunc(a1, v7);
  if (*(*(a2 + 8) + 8) == 4)
  {
    *a3 = HIDWORD(v7[0]);
  }

  else
  {
    *a3 = SHIDWORD(v7[0]);
  }

  return result;
}

void PERDecodeConstrainedINTEGER(uint64_t a1, uint64_t a2, int *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = *(a2 + 24);
  v7 = v6;
  if (*(a2 + 25) == 1)
  {
    if (PERGetBit(a1))
    {
      goto LABEL_5;
    }

    v7 = *(a2 + 24);
  }

  if ((v7 & 0x20) != 0)
  {
    if (v7 < 0)
    {
      v12 = *(a2 + 40) - *(a2 + 32);
      v14 = 0;
      v15[0] = v12;
      PERDecodeConstrainedWholeNumberFunc(a1, v15, &v14);
      v10 = *(a2 + 32);
      v11 = v14;
    }

    else
    {
      v15[0] = 0;
      PERDecodeSemiConstrainedWholeNumberFunc(a1, v15);
      v10 = *(a2 + 32);
      v11 = v15[0];
    }

    v9 = v11 + v10;
    goto LABEL_13;
  }

LABEL_5:
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v8 = *(a1 + 1105);
    if (v8 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v8;
      *(a1 + 1105) = 7;
    }
  }

  *v15 = 0;
  PERDecodeUnconstrainedWholeNumberFunc(a1, v15);
  v9 = v15[1];
LABEL_13:
  v16 = v9;
  v13 = *(*(a2 + 8) + 8);
  if ((v6 & 1) == 0)
  {
    if (v13 != 4)
    {
      goto LABEL_18;
    }

LABEL_17:
    *a3 = v9;
    goto LABEL_19;
  }

  if (v13 == 4)
  {
    goto LABEL_17;
  }

LABEL_18:
  *a3 = v9;
LABEL_19:
  if (!*(a2 + 25))
  {
    CUCFCheckINTEGERConstraint(a1, a2, &v16);
  }
}

void PERDecodeSizeConstrainedINTEGER(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a2 + 24);
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    if (v6 < 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    v10 = PERGetBits(a1, v9);
    v11 = v10;
    v12 = *(a1 + 1105);
    if (v12 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v12;
      *(a1 + 1105) = 7;
    }

    if (v10 == 4)
    {
      PERGetByte(a1);
      v11 = 3;
    }

    v8 = 8 * v11 + 8;
  }

  else
  {
    if (v6 >= 3)
    {
      if (v6 == 16)
      {
        v7 = 7;
      }

      else
      {
        v7 = 1;
      }

      PERGetBits(a1, v7);
    }

    v8 = 32;
  }

  v13 = PERGetBits(a1, v8);
  v14 = v13;
  if (v6 == 1)
  {
    v14 = v13 - 0x80000000;
  }

  if (v6 == 3)
  {
    v14 = *&v13 | 0xFFFFFFFF00000000;
  }

  v15 = *(a2 + 24);
  if (v15 != 3 && (v15 == 2 || v15 == 1))
  {
    *a3 = v14;
  }

  else
  {
    *a3 = v14;
  }

  if (v6 == 4 && v14 >> 33 || v6 == 16 && v14 >> 39)
  {
    EPErrorHandler(a1, 18);
  }
}

uint64_t PERDecodeBIT_STRING(uint64_t a1, _DWORD *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v7 = 0;
  v8 = 0;
  v9 = PERDecodePrimBIT_STRING;
  result = PERConstructedDecode(a1, &v7);
  v6 = v7;
  v5 = v8;
  *(a1 + 1112) = 0;
  if (!v5)
  {
    return memset_s(a2, 0x10uLL, 0, 0x10uLL);
  }

  *(a2 + 1) = v6;
  *a2 = v5;
  *(a2 + 4) = 8;
  return result;
}

void PERDecodeConstrainedBIT_STRING(uint64_t result, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (*(a2 + 25) == 1 && PERGetBit(result))
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 24);
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  if ((v6 & 2) == 0)
  {
    v9 = *(a2 + 40);
    if (!(v9 >> 16))
    {
      v10 = v9 - *(a2 + 32);
      v14 = 0;
      v15 = v10;
      PERDecodeConstrainedWholeNumberFunc(result, &v15, &v14);
      v11 = (v14 + *(a2 + 32));
      v17 = v11;
      if ((*(result + 1056) & 0x40) != 0)
      {
        v12 = *(result + 1105);
        if (v12 != 7)
        {
          *(*(result + 1096))++ &= 510 << v12;
          *(result + 1105) = 7;
          v11 = v17;
        }
      }

      goto LABEL_18;
    }

LABEL_4:
    v18 = PERDecodePrimBIT_STRING;
    PERConstructedDecode(result, &v16);
    goto LABEL_5;
  }

  v11 = *(a2 + 32);
  if (!v11)
  {
    goto LABEL_5;
  }

  if (v11 > 0x10)
  {
    if (!(v11 >> 16))
    {
      if ((*(result + 1056) & 0x40) != 0)
      {
        v13 = *(result + 1105);
        if (v13 != 7)
        {
          *(*(result + 1096))++ &= 510 << v13;
          *(result + 1105) = 7;
          v11 = *(a2 + 32);
        }
      }

      goto LABEL_18;
    }

    goto LABEL_4;
  }

LABEL_18:
  PERDecodePrimBIT_STRING(result, v11, &v16);
LABEL_5:
  v7 = v16;
  v8 = v17;
  *(result + 1112) = 0;
  if (v8)
  {
    a3[1] = v7;
    *a3 = v8;
    *(a3 + 4) = 8;
  }

  else
  {
    memset_s(a3, 0x10uLL, 0, 0x10uLL);
  }

  if (!*(a2 + 25))
  {
    CUCFCheckStringConstraint(result, a2, v8);
  }
}

uint64_t PERDecodeOCTET_STRING(uint64_t a1, _DWORD *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v7 = 0;
  v8 = 0;
  v9 = PERDecodePrimOCTET_STRING;
  result = PERConstructedDecode(a1, &v7);
  v6 = v7;
  v5 = v8;
  *(a1 + 1112) = 0;
  if (!v5)
  {
    return memset_s(a2, 0x10uLL, 0, 0x10uLL);
  }

  *(a2 + 1) = v6;
  *a2 = v5;
  *(a2 + 4) = 8;
  return result;
}

void PERDecodeConstrainedOCTET_STRING(uint64_t result, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (*(a2 + 25) == 1 && PERGetBit(result))
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 24);
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  if ((v6 & 2) == 0)
  {
    v9 = *(a2 + 40);
    if (!(v9 >> 16))
    {
      v10 = v9 - *(a2 + 32);
      v14 = 0;
      v15 = v10;
      PERDecodeConstrainedWholeNumberFunc(result, &v15, &v14);
      v11 = (v14 + *(a2 + 32));
      v17 = v11;
      if ((*(result + 1056) & 0x40) != 0)
      {
        v12 = *(result + 1105);
        if (v12 != 7)
        {
          *(*(result + 1096))++ &= 510 << v12;
          *(result + 1105) = 7;
          v11 = v17;
        }
      }

      goto LABEL_18;
    }

LABEL_4:
    v18 = PERDecodePrimOCTET_STRING;
    PERConstructedDecode(result, &v16);
    goto LABEL_5;
  }

  v11 = *(a2 + 32);
  if (!v11)
  {
    goto LABEL_5;
  }

  if (v11 > 2)
  {
    if (!(v11 >> 16))
    {
      if ((*(result + 1056) & 0x40) != 0)
      {
        v13 = *(result + 1105);
        if (v13 != 7)
        {
          *(*(result + 1096))++ &= 510 << v13;
          *(result + 1105) = 7;
          v11 = *(a2 + 32);
        }
      }

      goto LABEL_18;
    }

    goto LABEL_4;
  }

LABEL_18:
  PERDecodePrimOCTET_STRING(result, v11, &v16);
LABEL_5:
  v7 = v16;
  v8 = v17;
  *(result + 1112) = 0;
  if (v8)
  {
    a3[1] = v7;
    *a3 = v8;
    *(a3 + 4) = 8;
  }

  else
  {
    memset_s(a3, 0x10uLL, 0, 0x10uLL);
  }

  if (!*(a2 + 25))
  {
    CUCFCheckStringConstraint(result, a2, v8);
  }
}

void PERDecodeOBJECT_IDENTIFIER(uint64_t a1, void *__s)
{
  memset_s(__s, 0x18uLL, 0, 0x18uLL);
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v4 = *(a1 + 1105);
    if (v4 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v4;
      *(a1 + 1105) = 7;
    }
  }

  v5 = PERGetByte(a1);
  if (v5 >= 0xC1)
  {
    --*(a1 + 1096);
    v6 = *(a1 + 1105);
    if (v6 == 7)
    {
      v7 = PEROctetsDefragmentation(a1);
      PERDecodeOBJECT_IDENTIFIERComps(a1, v7, __s);
      if (*(a1 + 1105) <= 6u)
      {
        ++*(a1 + 1096);
        *(a1 + 1105) = 7;
      }

      PEROctetsFragmentation(a1, v7);
    }

    else
    {
      v10 = PEROctetsDefragmentationWithOffset(a1);
      PERDecodeOBJECT_IDENTIFIERComps(a1, v10, __s);
      if (*(a1 + 1105) < v6)
      {
        ++*(a1 + 1096);
      }

      *(a1 + 1105) = v6;

      PEROctetsFragmentationWithOffset(a1, v10);
    }

    return;
  }

  v8 = v5;
  if ((v5 & 0xC0) == 0x80)
  {
    v9 = PERGetByte(a1) & 0xFFFFC0FF | ((v5 & 0x3F) << 8);
LABEL_22:

    PERDecodeOBJECT_IDENTIFIERComps(a1, v9, __s);
    return;
  }

  if ((v5 & 0x80) == 0)
  {
    if (!v5)
    {
      EPErrorHandler(a1, 26);
    }

    v9 = v8;
    goto LABEL_22;
  }

  EPErrorHandler(a1, 26);
}

void PERDecodeENUMERATED(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v8 = 0;
  if (*(a2 + 24) == -1)
  {
    v7 = 0;
    v9 = *(a2 + 40) - 1;
    PERDecodeConstrainedWholeNumberFunc(a1, &v9, &v7);
    v6 = v7;
    if (*(a2 + 40) <= v7)
    {
      EPErrorHandler(a1, 21);
    }
  }

  else if (PERGetBit(a1))
  {
    PERDecodeNormallySmallNonNegativeWholeNumber(a1, &v8);
    v6 = v8 + *(a2 + 24);
  }

  else
  {
    v7 = 0;
    v9 = *(a2 + 24) - 1;
    PERDecodeConstrainedWholeNumberFunc(a1, &v9, &v7);
    v6 = v7;
    if (*(a2 + 40) <= v7)
    {
      EPErrorHandler(a1, 21);
    }
  }

  *a3 = v6;
}

void PERDecodeStruct(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v178 = *MEMORY[0x29EDCA608];
  v173 = 0;
  v174 = 0;
  v7 = *(a2 + 48);
  v8 = a4;
  if ((v7 & 0x10) != 0)
  {
    if (a4)
    {
      v173 = *a4;
    }

    v8 = &v173;
  }

  v168 = (v7 & 1) != 0 && PERGetBit(a1) != 0;
  v9 = *(a2 + 80);
  if (v9)
  {
    v175 = 0;
    v176 = 0;
    v177 = 0;
    if (v9 >> 16)
    {
      PERGetConsBitField(a1, &v175);
    }

    else
    {
      v175 = *(a1 + 1096);
      LOWORD(v176) = *(a1 + 1105);
      v177 = v9 + 1;
      PERGetSkipBytes(a1, v9 >> 3);
      PERGetBits(a1, v9 & 7);
    }

    v24 = *(a2 + 56);
    if (v24)
    {
      v25 = *(a2 + 24);
      while (1)
      {
        v26 = *(v25 + 16);
        if (v26 <= 1)
        {
          break;
        }

        if (v26 == 2)
        {
          v29 = *v175;
          v30 = v176;
          if (v176)
          {
            v31 = v176 - 1;
          }

          else
          {
            ++v175;
            v31 = 7;
          }

          LOBYTE(v176) = v31;
          --v177;
          v35 = *(*(a2 + 8) + 24);
          v36 = *(v25 + 24);
          if (((v29 >> v30) & 1) == 0)
          {
            *(a3 + **(v35 + 24 * v36 + 16)) = 0;
            goto LABEL_56;
          }

          v37 = v35 + 24 * v36;
          v38 = *(v37 + 8);
          *(a3 + **(v37 + 16)) = 1;
          v39 = *(a1 + 712);
          if (v39 < 0x40)
          {
            goto LABEL_55;
          }

LABEL_54:
          CUCFErrorHandler(a1, 15);
          v39 = *(a1 + 712);
          goto LABEL_55;
        }

        if (v26 != 3)
        {
          if (v26 == 5)
          {
            if (v176)
            {
              v27 = v176 - 1;
            }

            else
            {
              ++v175;
              v27 = 7;
            }

            LOBYTE(v176) = v27;
            --v177;
          }

          goto LABEL_56;
        }

        v32 = *v175;
        v33 = v176;
        if (v176)
        {
          v34 = v176 - 1;
        }

        else
        {
          ++v175;
          v34 = 7;
        }

        LOBYTE(v176) = v34;
        --v177;
        v40 = *(a2 + 8);
        v41 = *(v40 + 24);
        v42 = *(v25 + 24);
        if (((v32 >> v33) & 1) == 0)
        {
          *(a3 + **(v41 + 24 * v42 + 16)) = 0;
          v44 = *(v40 + 24) + 24 * *(v25 + 24);
          GenericAssignSort((a3 + *(v44 + 8)), *(*(v44 + 16) + 8), 10, *v44);
          goto LABEL_56;
        }

        v43 = v41 + 24 * v42;
        v38 = *(v43 + 8);
        *(a3 + **(v43 + 16)) = 1;
        v39 = *(a1 + 712);
        if (v39 >= 0x40)
        {
          goto LABEL_54;
        }

LABEL_55:
        *(a1 + 200 + 8 * v39) = v25;
        *(a1 + 712) = v39 + 1;
        PERDecVal(a1, *v25, (a3 + v38), v8);
        --*(a1 + 712);
LABEL_56:
        if (!v177 && BYTE1(v176) == 1)
        {
          PERSetBitFieldLength(&v175);
        }

        v25 += 32;
        if (!--v24)
        {
          goto LABEL_60;
        }
      }

      if (*(v25 + 16))
      {
        if (v26 != 1)
        {
          goto LABEL_56;
        }

        if (v176)
        {
          v28 = v176 - 1;
        }

        else
        {
          ++v175;
          v28 = 7;
        }

        LOBYTE(v176) = v28;
        --v177;
      }

      v38 = *(*(*(a2 + 8) + 24) + 24 * *(v25 + 24) + 8);
      v39 = *(a1 + 712);
      if (v39 < 0x40)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

LABEL_60:
    v45 = *(a2 + 72);
    if (v45)
    {
      v46 = *(a2 + 40);
      while (1)
      {
        v47 = *(v46 + 16);
        if (v47 <= 1)
        {
          break;
        }

        if (v47 == 2)
        {
          v50 = *v175;
          v51 = v176;
          if (v176)
          {
            v52 = v176 - 1;
          }

          else
          {
            ++v175;
            v52 = 7;
          }

          LOBYTE(v176) = v52;
          --v177;
          v56 = *(*(a2 + 8) + 24);
          v57 = *(v46 + 24);
          if (((v50 >> v51) & 1) == 0)
          {
            *(a3 + **(v56 + 24 * v57 + 16)) = 0;
            goto LABEL_93;
          }

          v58 = v56 + 24 * v57;
          v59 = *(v58 + 8);
          *(a3 + **(v58 + 16)) = 1;
          v60 = *(a1 + 712);
          if (v60 < 0x40)
          {
            goto LABEL_92;
          }

LABEL_91:
          CUCFErrorHandler(a1, 15);
          v60 = *(a1 + 712);
          goto LABEL_92;
        }

        if (v47 != 3)
        {
          if (v47 == 5)
          {
            if (v176)
            {
              v48 = v176 - 1;
            }

            else
            {
              ++v175;
              v48 = 7;
            }

            LOBYTE(v176) = v48;
            --v177;
          }

          goto LABEL_93;
        }

        v53 = *v175;
        v54 = v176;
        if (v176)
        {
          v55 = v176 - 1;
        }

        else
        {
          ++v175;
          v55 = 7;
        }

        LOBYTE(v176) = v55;
        --v177;
        v61 = *(a2 + 8);
        v62 = *(v61 + 24);
        v63 = *(v46 + 24);
        if (((v53 >> v54) & 1) == 0)
        {
          *(a3 + **(v62 + 24 * v63 + 16)) = 0;
          v65 = *(v61 + 24) + 24 * *(v46 + 24);
          GenericAssignSort((a3 + *(v65 + 8)), *(*(v65 + 16) + 8), 10, *v65);
          goto LABEL_93;
        }

        v64 = v62 + 24 * v63;
        v59 = *(v64 + 8);
        *(a3 + **(v64 + 16)) = 1;
        v60 = *(a1 + 712);
        if (v60 >= 0x40)
        {
          goto LABEL_91;
        }

LABEL_92:
        *(a1 + 200 + 8 * v60) = v46;
        *(a1 + 712) = v60 + 1;
        PERDecVal(a1, *v46, (a3 + v59), v8);
        --*(a1 + 712);
LABEL_93:
        if (!v177 && BYTE1(v176) == 1)
        {
          PERSetBitFieldLength(&v175);
        }

        v46 += 32;
        if (!--v45)
        {
          goto LABEL_97;
        }
      }

      if (*(v46 + 16))
      {
        if (v47 != 1)
        {
          goto LABEL_93;
        }

        if (v176)
        {
          v49 = v176 - 1;
        }

        else
        {
          ++v175;
          v49 = 7;
        }

        LOBYTE(v176) = v49;
        --v177;
      }

      v59 = *(*(*(a2 + 8) + 24) + 24 * *(v46 + 24) + 8);
      v60 = *(a1 + 712);
      if (v60 < 0x40)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }

LABEL_97:
    v10 = a2;
  }

  else
  {
    v10 = a2;
    v11 = *(a2 + 56);
    v12 = v8;
    if (v11)
    {
      v13 = *(v10 + 24);
      v14 = *(a1 + 712);
      do
      {
        v15 = *(*(*(v10 + 8) + 24) + 24 * *(v13 + 24) + 8);
        if (v14 >= 0x40)
        {
          CUCFErrorHandler(a1, 15);
          v14 = *(a1 + 712);
        }

        *(a1 + 200 + 8 * v14) = v13;
        *(a1 + 712) = v14 + 1;
        v16 = *v13;
        v13 += 32;
        v17 = (a3 + v15);
        v8 = v12;
        PERDecVal(a1, v16, v17, v12);
        v14 = *(a1 + 712) - 1;
        *(a1 + 712) = v14;
        --v11;
      }

      while (v11);
    }

    v18 = *(v10 + 72);
    if (v18)
    {
      v19 = *(v10 + 40);
      v20 = *(a1 + 712);
      do
      {
        v21 = *(*(*(v10 + 8) + 24) + 24 * *(v19 + 24) + 8);
        if (v20 >= 0x40)
        {
          CUCFErrorHandler(a1, 15);
          v20 = *(a1 + 712);
        }

        *(a1 + 200 + 8 * v20) = v19;
        *(a1 + 712) = v20 + 1;
        v22 = *v19;
        v19 += 32;
        v23 = (a3 + v21);
        v8 = v12;
        PERDecVal(a1, v22, v23, v12);
        v20 = *(a1 + 712) - 1;
        *(a1 + 712) = v20;
        --v18;
      }

      while (v18);
    }
  }

  if (!v168)
  {
    v66 = *(v10 + 64);
    v67 = a4;
    if (v66)
    {
      PERInitAbsentStructExtAdd(a1, v10, v66, a3);
    }

    goto LABEL_242;
  }

  v170 = 0;
  v171 = 0;
  v172 = 0;
  if (PERGetBit(a1))
  {
    PERGetConsBitField(a1, &v170);
  }

  else
  {
    v68 = PERGetBits(a1, 6u);
    v170 = *(a1 + 1096);
    LOWORD(v171) = *(a1 + 1105);
    v172 = v68 + 1;
    PERGetSkipBytes(a1, v172 >> 3);
    PERGetBits(a1, v172 & 7);
  }

  if (!*(v10 + 88))
  {
    goto LABEL_228;
  }

  v69 = *(v10 + 64);
  if (!v69)
  {
    goto LABEL_228;
  }

  v165 = 0;
  v70 = *(v10 + 32);
  v167 = 0;
  v169 = a1 + 200;
  while (2)
  {
    v71 = *(v70 + 16);
    if (v71 <= 2)
    {
      if (v71 < 2)
      {
        v72 = v170;
        v73 = v171;
        if (v171)
        {
          v74 = v171 - 1;
        }

        else
        {
          ++v170;
          v74 = 7;
        }

        v86 = *v72;
        LOBYTE(v171) = v74;
        v82 = --v172;
        v87 = *(*(v10 + 8) + 24);
        v88 = *(v70 + 24);
        if ((v86 >> v73))
        {
          v89 = v87 + 24 * v88;
          v90 = *(v89 + 8);
          *(a3 + **(v89 + 16)) = 1;
          v91 = *(a1 + 712);
          if (v91 >= 0x40)
          {
            CUCFErrorHandler(a1, 15);
            v91 = *(a1 + 712);
          }

          *(v169 + 8 * v91) = v70;
          *(a1 + 712) = v91 + 1;
          PERDecodeOPENTypeField(a1, *v70, (a3 + v90), v8);
          --*(a1 + 712);
        }

        else
        {
          *(a3 + **(v87 + 24 * v88 + 16)) = 0;
          ++v165;
        }

        goto LABEL_217;
      }

      v76 = v170;
      v77 = v171;
      if (v171)
      {
        v78 = v171 - 1;
      }

      else
      {
        ++v170;
        v78 = 7;
      }

      v100 = *v76;
      LOBYTE(v171) = v78;
      v82 = --v172;
      v101 = *(*(v10 + 8) + 24);
      v102 = *(v70 + 24);
      if (((v100 >> v77) & 1) == 0)
      {
        *(a3 + **(v101 + 24 * v102 + 16)) = 0;
        goto LABEL_217;
      }

      v103 = v101 + 24 * v102;
      v97 = *(v103 + 8);
      *(a3 + **(v103 + 16)) = 1;
      v98 = *(a1 + 712);
      if (v98 >= 0x40)
      {
        goto LABEL_137;
      }

      goto LABEL_138;
    }

    if (v71 == 3)
    {
      v79 = v170;
      v80 = v171;
      if (v171)
      {
        v81 = v171 - 1;
      }

      else
      {
        ++v170;
        v81 = 7;
      }

      v92 = *v79;
      LOBYTE(v171) = v81;
      v82 = --v172;
      v93 = *(v10 + 8);
      v94 = *(v93 + 24);
      v95 = *(v70 + 24);
      if (((v92 >> v80) & 1) == 0)
      {
        *(a3 + **(v94 + 24 * v95 + 16)) = 0;
        v99 = *(v93 + 24) + 24 * *(v70 + 24);
        GenericAssignSort((a3 + *(v99 + 8)), *(*(v99 + 16) + 8), 10, *v99);
        goto LABEL_217;
      }

      v96 = v94 + 24 * v95;
      v97 = *(v96 + 8);
      *(a3 + **(v96 + 16)) = 1;
      v98 = *(a1 + 712);
      if (v98 >= 0x40)
      {
LABEL_137:
        CUCFErrorHandler(a1, 15);
        v98 = *(a1 + 712);
      }

LABEL_138:
      *(v169 + 8 * v98) = v70;
      *(a1 + 712) = v98 + 1;
      PERDecodeOPENTypeField(a1, *v70, (a3 + v97), v8);
      --*(a1 + 712);
      goto LABEL_216;
    }

    if (v71 != 4)
    {
      if (v71 == 5)
      {
        if (v171)
        {
          v75 = v171 - 1;
        }

        else
        {
          ++v170;
          v75 = 7;
        }

        LOBYTE(v171) = v75;
        v82 = --v172;
      }

      else
      {
        CUCFErrorHandler(a1, 15);
        v82 = v172;
      }

      goto LABEL_217;
    }

    v83 = v170;
    v84 = v171;
    if (v171)
    {
      v85 = v171 - 1;
    }

    else
    {
      ++v170;
      v85 = 7;
    }

    v104 = *(v70 + 24);
    v69 -= v104;
    v105 = *v83;
    LOBYTE(v171) = v85;
    v82 = --v172;
    if (((v105 >> v84) & 1) == 0)
    {
      for (; v104; --v104)
      {
        v111 = *(v70 + 48);
        if (v111 >= 3)
        {
          if (v111 == 3)
          {
            v112 = *(v10 + 8);
            *(a3 + **(*(v112 + 24) + 24 * *(v70 + 56) + 16)) = 0;
            v113 = *(v112 + 24) + 24 * *(v70 + 56);
            GenericAssignSort((a3 + *(v113 + 8)), *(*(v113 + 16) + 8), 10, *v113);
          }

          else if (v111 != 5)
          {
            CUCFErrorHandler(a1, 15);
          }
        }

        else
        {
          *(a3 + **(*(*(v10 + 8) + 24) + 24 * *(v70 + 56) + 16)) = 0;
        }

        v70 += 32;
      }

      goto LABEL_217;
    }

    v175 = 0;
    v176 = 0;
    v177 = 0;
    v106 = 0;
    if (v104)
    {
      v107 = (v70 + 48);
      do
      {
        v108 = *v107;
        v107 += 32;
        if (v108)
        {
          ++v106;
        }

        --v104;
      }

      while (v104);
    }

    if ((*(a1 + 1056) & 0x40) != 0)
    {
      v109 = *(a1 + 1105);
      if (v109 != 7)
      {
        *(*(a1 + 1096))++ &= 510 << v109;
        *(a1 + 1105) = 7;
      }
    }

    v110 = PERGetByte(a1);
    if (v110 < 0xC1)
    {
      if ((v110 & 0xC0) == 0x80)
      {
        v164 = 0;
        v162 = PERGetByte(a1) & 0xFFFFC0FF | ((v110 & 0x3F) << 8);
        v114 = *(a1 + 1096) + v162;
      }

      else
      {
        if ((v110 & 0x80) != 0)
        {
          v163 = v110;
          EPErrorHandler(a1, 26);
          v164 = 0;
          v161 = 0;
          v162 = 0;
          goto LABEL_170;
        }

        v164 = 0;
        v162 = v110;
        v114 = *(a1 + 1096) + v110;
      }

      v161 = v114;
      v163 = *(a1 + 1105);
    }

    else
    {
      --*(a1 + 1096);
      v163 = v110;
      v164 = *(a1 + 1105);
      if (v164 == 7)
      {
        v161 = 0;
        v162 = PEROctetsDefragmentation(a1);
        v164 = 255;
      }

      else
      {
        v161 = 0;
        v162 = PEROctetsDefragmentationWithOffset(a1);
      }
    }

LABEL_170:
    if (v106 >> 16)
    {
      PERGetConsBitField(a1, &v175);
    }

    else
    {
      v175 = *(a1 + 1096);
      LOWORD(v176) = *(a1 + 1105);
      v177 = v106 + 1;
      PERGetSkipBytes(a1, v106 >> 3);
      PERGetBits(a1, v106 & 7);
    }

    v115 = *(v70 + 24);
    if (!v115)
    {
      goto LABEL_211;
    }

    v116 = v70 + 32;
    do
    {
      v117 = *(v116 + 16);
      if (v117 <= 1)
      {
        if (!*(v116 + 16))
        {
          goto LABEL_203;
        }

        if (v117 == 1)
        {
          if (v176)
          {
            v119 = v176 - 1;
          }

          else
          {
            ++v175;
            v119 = 7;
          }

          LOBYTE(v176) = v119;
          --v177;
LABEL_203:
          v136 = *(*(v10 + 8) + 24) + 24 * *(v116 + 24);
          v129 = *(v136 + 8);
          *(a3 + **(v136 + 16)) = 1;
          v130 = *(a1 + 712);
          if (v130 >= 0x40)
          {
LABEL_204:
            CUCFErrorHandler(a1, 15);
            v130 = *(a1 + 712);
          }

LABEL_205:
          *(v169 + 8 * v130) = v116;
          *(a1 + 712) = v130 + 1;
          PERDecVal(a1, *v116, (a3 + v129), v8);
          --*(a1 + 712);
        }
      }

      else
      {
        switch(v117)
        {
          case 2u:
            v120 = *v175;
            v121 = v176;
            if (v176)
            {
              v122 = v176 - 1;
            }

            else
            {
              ++v175;
              v122 = 7;
            }

            LOBYTE(v176) = v122;
            --v177;
            v126 = *(*(v10 + 8) + 24);
            v127 = *(v116 + 24);
            if ((v120 >> v121))
            {
              v128 = v126 + 24 * v127;
              v129 = *(v128 + 8);
              *(a3 + **(v128 + 16)) = 1;
              v130 = *(a1 + 712);
              if (v130 >= 0x40)
              {
                goto LABEL_204;
              }

              goto LABEL_205;
            }

            *(a3 + **(v126 + 24 * v127 + 16)) = 0;
            break;
          case 3u:
            v123 = *v175;
            v124 = v176;
            if (v176)
            {
              v125 = v176 - 1;
            }

            else
            {
              ++v175;
              v125 = 7;
            }

            LOBYTE(v176) = v125;
            --v177;
            v131 = *(v10 + 8);
            v132 = *(v131 + 24);
            v133 = *(v116 + 24);
            if ((v123 >> v124))
            {
              v134 = v132 + 24 * v133;
              v129 = *(v134 + 8);
              *(a3 + **(v134 + 16)) = 1;
              v130 = *(a1 + 712);
              if (v130 >= 0x40)
              {
                goto LABEL_204;
              }

              goto LABEL_205;
            }

            *(a3 + **(v132 + 24 * v133 + 16)) = 0;
            v135 = *(v131 + 24) + 24 * *(v116 + 24);
            GenericAssignSort((a3 + *(v135 + 8)), *(*(v135 + 16) + 8), 10, *v135);
            break;
          case 5u:
            if (v176)
            {
              v118 = v176 - 1;
            }

            else
            {
              ++v175;
              v118 = 7;
            }

            LOBYTE(v176) = v118;
            --v177;
            break;
        }
      }

      if (!v177 && BYTE1(v176) == 1)
      {
        PERSetBitFieldLength(&v175);
      }

      v116 += 32;
      --v115;
    }

    while (v115);
    v70 = v116 - 32;
LABEL_211:
    if (v164)
    {
      if (*(a1 + 1105) < v164)
      {
        ++*(a1 + 1096);
      }

      *(a1 + 1105) = v164;
      PEROctetsFragmentationWithOffset(a1, v162);
    }

    else
    {
      *(a1 + 1096) = v161;
      *(a1 + 1105) = v163;
    }

LABEL_216:
    ++v167;
LABEL_217:
    --v69;
    if (v82)
    {
LABEL_220:
      v70 += 32;
      if (!v69)
      {
        goto LABEL_223;
      }

      continue;
    }

    break;
  }

  if (BYTE1(v171) == 1)
  {
    PERSetBitFieldLength(&v170);
    goto LABEL_220;
  }

LABEL_223:
  if (v165 && v167)
  {
    EPErrorHandler(a1, 33);
  }

  if (v69)
  {
    PERInitAbsentStructExtAdd(a1, v10, v69, a3);
    goto LABEL_241;
  }

LABEL_228:
  v137 = v172;
  if (v172)
  {
    if (!BYTE1(v171))
    {
LABEL_230:
      v138 = v170;
      v139 = v171;
      do
      {
        v140 = *v138;
        if (v139)
        {
          v141 = v139 - 1;
        }

        else
        {
          ++v138;
          v141 = 7;
        }

        if ((v140 >> v139))
        {
          PERSkipOPENTypeField(a1);
        }

        v139 = v141;
        --v137;
      }

      while (v137);
    }
  }

  else if (BYTE1(v171) == 1)
  {
    PERSetBitFieldLength(&v170);
    v137 = v172;
    if (v172)
    {
      if (!BYTE1(v171))
      {
        goto LABEL_230;
      }
    }
  }

LABEL_241:
  v67 = a4;
LABEL_242:
  if ((*(v10 + 48) & 0x10) == 0)
  {
    return;
  }

  v142 = v174;
  if (!v174)
  {
    if (v67)
    {
      goto LABEL_280;
    }

    goto LABEL_285;
  }

  v143 = 0;
  v144 = v174;
  do
  {
    do
    {
LABEL_245:
      v145 = v173;
      v146 = v142[2];
      do
      {
        v146 = *(v146 + 3);
      }

      while (*v146 == 128);
      if (!v173)
      {
        goto LABEL_264;
      }

      while (v146 != *v145)
      {
LABEL_251:
        v145 = *(v145 + 2);
        if (!v145)
        {
          goto LABEL_264;
        }
      }

      v175 = 0;
      v147 = CUCFGetOpenTypeObject(a1, v142[2], *(v145 + 1), &v175);
      if (!v147)
      {
        EPErrorHandler(a1, 39);
        goto LABEL_251;
      }

      v148 = v147;
      v149 = *(a1 + 1096);
      v150 = *(a1 + 1105);
      *(a1 + 1096) = *v142;
      *(a1 + 1105) = *(v142 + 8);
      v151 = v142[3];
      v152 = *(v142[2] + 1);
      v153 = *(v152 + 40);
      v154 = *(v147 + 24);
      if (v153 > 3)
      {
        if (v153 != 8)
        {
          goto LABEL_259;
        }

        *v151 = v154;
      }

      else if (v153 == 1)
      {
        *v151 = v154;
        v151 = v142[3];
      }

      else
      {
        if (v153 == 2)
        {
          *v151 = v154;
          goto LABEL_261;
        }

LABEL_259:
        *v151 = v154;
      }

LABEL_261:
      v155 = *(v152 + 36);
      v156 = *(a1 + 712);
      if (v156 >= 0x40)
      {
        CUCFErrorHandler(a1, 15);
        v156 = *(a1 + 712);
      }

      *(a1 + 200 + 8 * v156) = v148;
      *(a1 + 712) = v156 + 1;
      PERDecodeOPENTypeField(a1, *v148, v151 + v155, 0);
      --*(a1 + 712);
      *(a1 + 1096) = v149;
      *(a1 + 1105) = v150;
      *v142 = 0;
LABEL_264:
      if (*v142)
      {
        v144 = v142;
        v142 = v142[4];
        if (!v142)
        {
          break;
        }

        goto LABEL_245;
      }

      if (v142 != v174)
      {
        *(v144 + 4) = v142[4];
        MMSFree(a1, v142, 0x28);
        v142 = *(v144 + 4);
        v143 = 1;
        if (!v142)
        {
          break;
        }

        goto LABEL_245;
      }

      v174 = v142[4];
      MMSFree(a1, v142, 0x28);
      v143 = 1;
      v144 = v174;
      v142 = v174;
    }

    while (v174);
    v142 = v174;
    if (!v143)
    {
      break;
    }

    v143 = 0;
    v144 = v174;
  }

  while (v174);
  v67 = a4;
  if (!a4)
  {
    if (v174)
    {
      EPErrorHandler(a1, 38);
    }

LABEL_285:
    while (1)
    {
      v160 = v173;
      if (!v173)
      {
        break;
      }

      v173 = *(v173 + 2);
      MMSFree(a1, v160, 0x18);
    }

    return;
  }

  if (v174)
  {
    v157 = a4 + 1;
    v158 = a4[1];
    if (v158)
    {
      do
      {
        v159 = v158;
        v158 = v158[4];
      }

      while (v158);
      v157 = (v159 + 4);
    }

    *v157 = v174;
  }

LABEL_280:
  if (!*v67)
  {
    *v67 = v173;
  }
}

uint64_t PERDecodeSEQUENCE_OF(uint64_t a1, uint64_t a2, void *__s, uint64_t a4)
{
  v12[3] = *MEMORY[0x29EDCA608];
  v11[1] = 0;
  v8 = *(*(a2 + 8) + 8);
  memset_s(__s, v8, 0, v8);
  v11[0] = __s;
  v12[0] = 0;
  v12[1] = a2;
  v12[2] = a4;
  v9 = *(a1 + 712);
  if (v9 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v9 = *(a1 + 712);
  }

  *(a1 + 8 * v9 + 200) = v12;
  *(a1 + 712) = v9 + 1;
  v11[2] = PERDecodePrimSEQUENCE_OF;
  result = PERConstructedDecode(a1, v11);
  --*(a1 + 712);
  return result;
}

void PERDecodeConstrainedSEQUENCE_OF(uint64_t a1, uint64_t a2, void *__s, unint64_t a4)
{
  v19[3] = *MEMORY[0x29EDCA608];
  v17 = 0;
  v18 = 0;
  v8 = *(*(a2 + 8) + 8);
  memset_s(__s, v8, 0, v8);
  v16 = __s;
  v19[0] = 0;
  v19[1] = a2;
  v19[2] = a4;
  v9 = *(a1 + 712);
  if (v9 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v9 = *(a1 + 712);
  }

  *(a1 + 200 + 8 * v9) = v19;
  *(a1 + 712) = v9 + 1;
  if (*(a2 + 33) == 1 && PERGetBit(a1))
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 32);
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  if ((v10 & 2) == 0)
  {
    v11 = *(a2 + 48);
    if (!(v11 >> 16))
    {
      v12 = v11 - *(a2 + 40);
      v14 = 0;
      v15 = v12;
      PERDecodeConstrainedWholeNumberFunc(a1, &v15, &v14);
      v13 = (v14 + *(a2 + 40));
      v17 = v13;
      goto LABEL_15;
    }

LABEL_6:
    v18 = PERDecodePrimSEQUENCE_OF;
    PERConstructedDecode(a1, &v16);
    goto LABEL_7;
  }

  v13 = *(a2 + 40);
  if (!v13)
  {
    goto LABEL_7;
  }

  if (v13 >> 16)
  {
    goto LABEL_6;
  }

LABEL_15:
  PERDecodePrimSEQUENCE_OF(a1, v13, &v16);
LABEL_7:
  --*(a1 + 712);
  if (!*(a2 + 33))
  {
    CUCFCheckStructOfConstraint(a1, a2, v19[0]);
  }
}

uint64_t PERDecodeSET_OF(uint64_t a1, uint64_t a2, void *__s, uint64_t a4)
{
  v11[3] = *MEMORY[0x29EDCA608];
  v10[1] = 0;
  memset_s(__s, 0x18uLL, 0, 0x18uLL);
  v10[0] = __s;
  v11[0] = 0;
  v11[1] = a2;
  v11[2] = a4;
  v8 = *(a1 + 712);
  if (v8 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v8 = *(a1 + 712);
  }

  *(a1 + 8 * v8 + 200) = v11;
  *(a1 + 712) = v8 + 1;
  v10[2] = PERDecodePrimSET_OF;
  result = PERConstructedDecode(a1, v10);
  --*(a1 + 712);
  return result;
}

void PERDecodeConstrainedSET_OF(uint64_t a1, uint64_t a2, void *__s, unint64_t a4)
{
  v18[3] = *MEMORY[0x29EDCA608];
  v16 = 0;
  v17 = 0;
  memset_s(__s, 0x18uLL, 0, 0x18uLL);
  v15 = __s;
  v18[0] = 0;
  v18[1] = a2;
  v18[2] = a4;
  v8 = *(a1 + 712);
  if (v8 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v8 = *(a1 + 712);
  }

  *(a1 + 200 + 8 * v8) = v18;
  *(a1 + 712) = v8 + 1;
  if (*(a2 + 33) == 1 && PERGetBit(a1))
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 32);
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  if ((v9 & 2) == 0)
  {
    v10 = *(a2 + 48);
    if (!(v10 >> 16))
    {
      v11 = v10 - *(a2 + 40);
      v13 = 0;
      v14 = v11;
      PERDecodeConstrainedWholeNumberFunc(a1, &v14, &v13);
      v12 = (v13 + *(a2 + 40));
      v16 = v12;
      goto LABEL_15;
    }

LABEL_6:
    v17 = PERDecodePrimSET_OF;
    PERConstructedDecode(a1, &v15);
    goto LABEL_7;
  }

  v12 = *(a2 + 40);
  if (!v12)
  {
    goto LABEL_7;
  }

  if (v12 >> 16)
  {
    goto LABEL_6;
  }

LABEL_15:
  PERDecodePrimSET_OF(a1, v12, &v15);
LABEL_7:
  --*(a1 + 712);
  if (!*(a2 + 33))
  {
    CUCFCheckStructOfConstraint(a1, a2, v18[0]);
  }
}

void PERDecodeCHOICE(uint64_t a1, void *a2, char *__s, uint64_t a4)
{
  v32[1] = *MEMORY[0x29EDCA608];
  v8 = a2[4];
  v32[0] = 0;
  v9 = *(a2[1] + 8);
  memset_s(__s, v9, 0, v9);
  if (a2[3] == -1)
  {
    v13 = a2[5];
    if (v13 >= 2)
    {
      v30 = 0;
      v14 = v13 - 1;
LABEL_9:
      v31 = v14;
      PERDecodeConstrainedWholeNumberFunc(a1, &v31, &v30);
      v15 = v30;
      goto LABEL_11;
    }

LABEL_10:
    v15 = 0;
LABEL_11:
    v16 = v15;
    if (a2[5] <= v15)
    {
      EPErrorHandler(a1, 37);
    }

    v17 = v8 + 32 * v16;
    if (*(v17 + 16) == 5)
    {
      goto LABEL_21;
    }

    v18 = a2[1];
    v19 = *(v18 + 40);
    v20 = *(v17 + 24);
    if (v19 > 3)
    {
      if (v19 == 8)
      {
        *__s = v20;
        goto LABEL_37;
      }
    }

    else
    {
      if (v19 == 1)
      {
        *__s = v20;
        goto LABEL_37;
      }

      if (v19 == 2)
      {
        *__s = v20;
LABEL_37:
        v26 = *(v18 + 36);
        v27 = *(a1 + 712);
        if (v27 >= 0x40)
        {
          CUCFErrorHandler(a1, 15);
          v27 = *(a1 + 712);
        }

        *(a1 + 200 + 8 * v27) = v17;
        *(a1 + 712) = v27 + 1;
        PERDecVal(a1, *v17, &__s[v26], a4);
        goto LABEL_47;
      }
    }

    *__s = v20;
    goto LABEL_37;
  }

  v10 = PERGetBit(a1);
  v11 = a2[5];
  if (!v10)
  {
    if (v11 >= 2)
    {
      v30 = 0;
      v14 = *(a2 + 6) - 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v11 < 2)
  {
    v12 = 0;
  }

  else
  {
    PERDecodeNormallySmallNonNegativeWholeNumber(a1, v32);
    v11 = a2[5];
    v12 = v32[0];
  }

  v21 = a2[3] + v12;
  if (v21 < v11)
  {
    v22 = v8 + 32 * v21;
    if (*(v22 + 16) == 5)
    {
LABEL_21:

      EPErrorHandler(a1, 37);
      return;
    }

    v23 = a2[1];
    v24 = *(v23 + 40);
    v25 = *(v22 + 24);
    if (v24 > 3)
    {
      if (v24 == 8)
      {
        *__s = v25;
        goto LABEL_44;
      }
    }

    else
    {
      if (v24 == 1)
      {
        *__s = v25;
        goto LABEL_44;
      }

      if (v24 == 2)
      {
        *__s = v25;
LABEL_44:
        v28 = *(v23 + 36);
        v29 = *(a1 + 712);
        if (v29 >= 0x40)
        {
          CUCFErrorHandler(a1, 15);
          v29 = *(a1 + 712);
        }

        *(a1 + 200 + 8 * v29) = v22;
        *(a1 + 712) = v29 + 1;
        PERDecodeOPENTypeField(a1, *v22, &__s[v28], a4);
LABEL_47:
        --*(a1 + 712);
        return;
      }
    }

    *__s = v25;
    goto LABEL_44;
  }

  if (v11 == 1)
  {
    PERDecodeNormallySmallNonNegativeWholeNumber(a1, v32);
  }

  PERSkipOPENTypeField(a1);
}

void *PERDecodeOPEN_ID(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  PERDecVal(a1, *(a2 + 24), a3, 0);
  result = MMSAlloc(a1, 0x18uLL);
  *result = a2;
  result[1] = a3;
  result[2] = *a4;
  *a4 = result;
  return result;
}

void PERDecodeOPEN(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t *a4)
{
  v20[1] = *MEMORY[0x29EDCA608];
  if (!a4 || (v8 = *a4) == 0)
  {
LABEL_7:
    v10 = *(a1 + 1096);
    v11 = *(a1 + 1105);
    v12 = MMSAlloc(a1, 0x28uLL);
    *v12 = v10;
    v12[8] = v11;
    *(v12 + 2) = a2;
    *(v12 + 3) = a3;
    *(v12 + 4) = a4[1];
    a4[1] = v12;

    PERSkipOPENTypeField(a1);
    return;
  }

  while (1)
  {
    v9 = a2;
    do
    {
      v9 = *(v9 + 3);
    }

    while (*v9 == 128);
    if (v9 == *v8)
    {
      break;
    }

    v8 = *(v8 + 16);
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v20[0] = 0;
  v13 = CUCFGetOpenTypeObject(a1, a2, *(v8 + 8), v20);
  if (!v13)
  {
    EPErrorHandler(a1, 39);
    return;
  }

  v14 = v13;
  v15 = *(a2 + 1);
  v16 = *(v15 + 40);
  v17 = *(v13 + 24);
  if (v16 > 3)
  {
    if (v16 == 8)
    {
      *a3 = v17;
      goto LABEL_20;
    }

LABEL_18:
    *a3 = v17;
    goto LABEL_20;
  }

  if (v16 == 1)
  {
    *a3 = v17;
    goto LABEL_20;
  }

  if (v16 != 2)
  {
    goto LABEL_18;
  }

  *a3 = v17;
LABEL_20:
  v18 = *(v15 + 36);
  v19 = *(a1 + 712);
  if (v19 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v19 = *(a1 + 712);
  }

  *(a1 + 200 + 8 * v19) = v14;
  *(a1 + 712) = v19 + 1;
  PERDecodeOPENTypeField(a1, *v14, a3 + v18, 0);
  --*(a1 + 712);
}

uint64_t PEREncodeUnconstrainedWholeNumberFunc(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 >= 0x80)
  {
    if (v4 >= 0x8000)
    {
      if (v4 >= 0x800000)
      {
        PERPutByte(a1, 4u);
        v5 = *(a2 + 4);
        if (*a2)
        {
          v5 = ~v5;
          *(a2 + 4) = v5;
        }
      }

      else
      {
        if (*a2)
        {
          v4 = 0xFFFFFF - v4;
          *(a2 + 4) = v4;
        }

        v5 = v4 | 0x3000000;
      }

      v6 = 32;
    }

    else
    {
      if (*a2)
      {
        v4 = 0xFFFF - v4;
        *(a2 + 4) = v4;
      }

      v5 = v4 | 0x20000;
      v6 = 24;
    }
  }

  else
  {
    if (*a2)
    {
      v4 = 255 - v4;
      *(a2 + 4) = v4;
    }

    v5 = v4 | 0x100;
    v6 = 16;
  }

  return PERPutBits(a1, v5, v6);
}

unint64_t PERDecodeUnconstrainedWholeNumberFunc(uint64_t a1, uint64_t a2)
{
  v4 = PERGetByte(a1);
  if ((v4 - 5) <= 0xFFFFFFFB)
  {
    EPErrorHandler(a1, 24);
  }

  v5 = 8 * v4;
  result = PERGetBits(a1, (8 * v4));
  *(a2 + 4) = result;
  if ((v4 - 1) <= 2 && ((result >> (v5 - 8)) & 0x80) != 0)
  {
    *(a2 + 4) = (-1 << v5) | result;
  }

  return result;
}

uint64_t PEREncodeConstrainedWholeNumberFunc(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  v4 = result;
  v5 = *a2;
  if ((*(result + 1056) & 0x40) != 0)
  {
    if (!v5)
    {
      return result;
    }

    if (v5 > 0xFE)
    {
      if (v5 == 255)
      {
        v13 = *(result + 1105);
        if (v13 == 7)
        {
          v14 = *(result + 1096);
        }

        else
        {
          **(result + 1096) &= 510 << v13;
          v14 = (*(result + 1096) + 1);
          *(result + 1096) = v14;
          *(result + 1105) = 7;
        }

        if (v14 == *(result + 1080))
        {
          v17 = *(result + 1072);
          v18 = *(result + 1088) - v17;
          v19 = &v14[-v17];
          result = (*(result + 856))(result, 1);
          *(v4 + 1072) = result;
          v14 = &v19[result];
          *(v4 + 1080) = &v19[result + 1];
          *(v4 + 1088) = result + v18;
          *(v4 + 1096) = &v19[result];
        }

        *v14 = *a3;
      }

      else
      {
        if (HIWORD(v5))
        {
          v20 = *a3;
          v21 = __clz(v5);
          v22 = 32 - v21;
          v23 = v21 - 32;
          do
          {
            v5 >>= 1;
            v9 = __CFADD__(v23++, 1);
          }

          while (!v9);
          *a2 = v5;
          v24 = v22 >> 3;
          if ((v22 & 7) != 0)
          {
            ++v24;
          }

          v25 = 8 - __clz((v24 << 24) - 0x1000000);
          v26 = 32 - __clz(v20);
          if ((v26 & 7) != 0)
          {
            v27 = (v26 >> 3) + 1;
          }

          else
          {
            v27 = v26 >> 3;
          }

          if (v20)
          {
            v28 = v27;
          }

          else
          {
            v28 = 1;
          }

          PERPutBits(result, v28 - 1, v25);
          v29 = *(v4 + 1105);
          if (v29 != 7)
          {
            *(*(v4 + 1096))++ &= 510 << v29;
            *(v4 + 1105) = 7;
          }

          v12 = *a3;
          v7 = 8 * (v28 & 0x1F);
          goto LABEL_14;
        }

        v15 = *(result + 1105);
        if (v15 == 7)
        {
          v16 = *(result + 1096);
        }

        else
        {
          **(result + 1096) &= 510 << v15;
          v16 = (*(result + 1096) + 1);
          *(result + 1096) = v16;
          *(result + 1105) = 7;
        }

        v30 = *(result + 1080);
        if (v30 - v16 <= 1)
        {
          v31 = 2 - (v30 - v16);
          v32 = *(result + 1072);
          v33 = *(result + 1088) - v32;
          v34 = &v16[-v32];
          v35 = v30 - v32;
          result = (*(result + 856))(result, v31);
          *(v4 + 1072) = result;
          *(v4 + 1080) = result + v35 + v31;
          *(v4 + 1088) = result + v33;
          v16 = &v34[result];
          *(v4 + 1096) = &v34[result];
        }

        *v16 = BYTE1(*a3);
        v36 = *(v4 + 1096);
        *(v4 + 1096) = v36 + 1;
        *(v36 + 1) = *a3;
      }

      ++*(v4 + 1096);
      return result;
    }

    v10 = 0;
    do
    {
      v11 = v5;
      ++v10;
      v5 >>= 1;
    }

    while (v11 > 1);
    *a2 = v5;
    v12 = *a3;
    v7 = v10;
  }

  else
  {
    if (v5)
    {
      v6 = __clz(v5);
      v7 = 32 - v6;
      v8 = v6 - 32;
      do
      {
        v5 >>= 1;
        v9 = __CFADD__(v8++, 1);
      }

      while (!v9);
      *a2 = v5;
    }

    else
    {
      v7 = 0;
    }

    v12 = *a3;
  }

LABEL_14:

  return PERPutBits(v4, v12, v7);
}

uint64_t PEREncodeSemiConstrainedWholeNumberFunc(uint64_t a1, unsigned int *a2)
{
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v4 = *(a1 + 1105);
    if (v4 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v4;
      *(a1 + 1105) = 7;
    }
  }

  v5 = *a2;
  if (*a2 >= 0x100)
  {
    if (v5 >= 0x10000)
    {
      if (HIBYTE(v5))
      {
        PERPutByte(a1, 4u);
        v6 = *a2;
      }

      else
      {
        v6 = v5 | 0x3000000;
      }

      v7 = 32;
    }

    else
    {
      v6 = v5 | 0x20000;
      v7 = 24;
    }
  }

  else
  {
    v6 = v5 | 0x100;
    v7 = 16;
  }

  return PERPutBits(a1, v6, v7);
}

void PERDecodeConstrainedWholeNumberFunc(uint64_t result, unsigned int *a2, int *a3)
{
  v4 = result;
  v5 = *a2;
  if ((*(result + 1056) & 0x40) == 0)
  {
    if (v5)
    {
      v6 = __clz(v5);
      v7 = 32 - v6;
      v8 = v6 - 32;
      do
      {
        v5 >>= 1;
        v9 = __CFADD__(v8++, 1);
      }

      while (!v9);
      *a2 = v5;
    }

    else
    {
      v7 = 0;
    }

    v12 = v7;
    goto LABEL_15;
  }

  if (v5)
  {
    if (v5 <= 0xFE)
    {
      v10 = 0;
      do
      {
        v11 = v5;
        ++v10;
        v5 >>= 1;
      }

      while (v11 > 1);
      *a2 = v5;
      v12 = v10;
LABEL_12:
      result = v4;
LABEL_15:
      *a3 = PERGetBits(result, v12);
      return;
    }

    if (v5 == 255)
    {
      v13 = *(result + 1105);
      if (v13 == 7)
      {
        v14 = *(result + 1096);
      }

      else
      {
        **(result + 1096) &= 510 << v13;
        v14 = (*(result + 1096) + 1);
        *(result + 1096) = v14;
        *(result + 1105) = 7;
      }

      if (v14 == *(result + 1088))
      {
        PERAppendData(result, 1uLL);
        v14 = *(v4 + 1096);
      }

      v18 = *v14;
      v17 = v14 + 1;
      *a3 = v18;
    }

    else
    {
      if (HIWORD(v5))
      {
        v19 = __clz(v5);
        v20 = 32 - v19;
        v21 = v19 - 32;
        do
        {
          v5 >>= 1;
          v9 = __CFADD__(v21++, 1);
        }

        while (!v9);
        *a2 = v5;
        if ((v20 & 7) != 0)
        {
          v22 = (v20 >> 3) + 1;
        }

        else
        {
          v22 = v20 >> 3;
        }

        v23 = PERGetBits(result, (8 - __clz((v22 << 24) - 0x1000000)));
        *a3 = v23;
        v24 = *(v4 + 1105);
        if (v24 != 7)
        {
          *(*(v4 + 1096))++ &= 510 << v24;
          *(v4 + 1105) = 7;
          v23 = *a3;
        }

        v12 = (8 * v23 + 8) & 0xF8;
        goto LABEL_12;
      }

      v15 = *(result + 1105);
      if (v15 == 7)
      {
        v16 = *(result + 1096);
      }

      else
      {
        **(result + 1096) &= 510 << v15;
        v16 = (*(result + 1096) + 1);
        *(result + 1096) = v16;
        *(result + 1105) = 7;
      }

      v25 = *(result + 1088) - v16;
      if (v25 <= 1)
      {
        PERAppendData(result, 2 - v25);
        v16 = *(v4 + 1096);
      }

      v26 = *v16;
      *a3 = v26 << 8;
      *(v4 + 1096) = v16 + 1;
      *a3 = v16[1] | (v26 << 8);
      v17 = v16 + 2;
    }

    *(v4 + 1096) = v17;
  }

  else
  {
    *a3 = 0;
  }
}

unint64_t PERDecodeSemiConstrainedWholeNumberFunc(uint64_t a1, _DWORD *a2)
{
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v4 = *(a1 + 1105);
    if (v4 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v4;
      *(a1 + 1105) = 7;
    }
  }

  v5 = PERGetByte(a1);
  if ((v5 - 5) <= 0xFBu)
  {
    EPErrorHandler(a1, 24);
  }

  result = PERGetBits(a1, 8 * (v5 & 0x1Fu));
  *a2 = result;
  return result;
}

uint64_t PEREncodePrimBIT_STRING(uint64_t result, unint64_t a2, unsigned __int8 **a3)
{
  v4 = result;
  v5 = a2 & 7;
  v6 = *a3;
  v7 = *a3;
  if (a2 >= 8)
  {
    v9 = a2 >> 3;
    v10 = *(result + 1105);
    v11 = *(result + 1096);
    v12 = &v11[a2 >> 3];
    if (v10 == 7)
    {
      v13 = *(result + 1080);
      if (v12 > v13)
      {
        v14 = &v11[v9 - v13];
        v15 = *(result + 1072);
        v16 = *(result + 1088) - v15;
        v17 = &v11[-v15];
        v18 = v13 - v15;
        result = (*(result + 856))(result, v14);
        *(v4 + 1072) = result;
        *(v4 + 1080) = &v14[v18 + result];
        *(v4 + 1088) = result + v16;
        v11 = &v17[result];
        *(v4 + 1096) = &v17[result];
      }

      v19 = 0;
      if (v9 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = a2 >> 3;
      }

      do
      {
        v21 = 0;
        *v11 = 0;
        do
        {
          **(v4 + 1096) |= v7[v21] << (7 - v21);
          ++v21;
        }

        while (v21 != 8);
        ++v19;
        v11 = (*(v4 + 1096) + 1);
        *(v4 + 1096) = v11;
        v7 += 8;
      }

      while (v19 != v20);
    }

    else
    {
      v22 = *(result + 1080);
      if ((v12 + 1) > v22)
      {
        v23 = &v11[v9 - v22 + 1];
        v24 = *(result + 1072);
        v25 = *(result + 1088) - v24;
        v41 = &v11[-v24];
        v26 = v22 - v24;
        result = (*(result + 856))(result, v23);
        *(v4 + 1072) = result;
        *(v4 + 1080) = result + v26 + v23;
        *(v4 + 1088) = result + v25;
        v11 = &v41[result];
        *(v4 + 1096) = &v41[result];
        v10 = *(v4 + 1105);
      }

      v27 = 0;
      v28 = 7;
      v29 = (v10 + 1);
      do
      {
        v30 = *v7++;
        v27 |= v30 << v28--;
        --v29;
      }

      while (v29);
      v7 = &v6[v10 + 1];
      *v11 |= v27 >> (7 - v10);
      v31 = (*(v4 + 1096) + 1);
      *(v4 + 1096) = v31;
      if (v9 != 1)
      {
        v32 = 0;
        do
        {
          v33 = 0;
          *v31 = 0;
          do
          {
            **(v4 + 1096) |= v7[v33] << (7 - v33);
            ++v33;
          }

          while (v33 != 8);
          ++v32;
          v31 = (*(v4 + 1096) + 1);
          *(v4 + 1096) = v31;
          v7 += 8;
        }

        while (v32 != v9 - 1);
      }

      *v31 = 0;
      if (*(v4 + 1105) != 7)
      {
        v34 = 0;
        v35 = 7;
        do
        {
          **(v4 + 1096) |= v7[v34++] << v35--;
        }

        while (v34 < 7 - *(v4 + 1105));
        v7 += v34;
      }
    }

    v36 = &a3[1][-a2];
    *a3 += a2;
    a3[1] = v36;
  }

  if (v5)
  {
    v37 = 0;
    v38 = a2 & 7;
    if ((a2 & 7) != 0)
    {
      v39 = 7;
      do
      {
        v40 = *v7++;
        v37 |= (v40 << v39--);
        --v38;
      }

      while (v38);
    }

    return PERPutBits(v4, v37 >> (8 - v5), v5);
  }

  return result;
}

uint64_t PERDecodePrimBIT_STRING(uint64_t result, size_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result;
    v6 = *(result + 1104);
    if (v6 == 7)
    {
      v7 = *(result + 1105) + 8 * (*(result + 1088) - *(result + 1096)) - 7;
    }

    else
    {
      v7 = *(result + 1105) - v6 + 8 * (~*(result + 1096) + *(result + 1088));
    }

    v8 = a2 >= v7;
    v9 = a2 - v7;
    if (v9 != 0 && v8)
    {
      if ((v9 & 7) != 0)
      {
        v10 = (v9 >> 3) + 1;
      }

      else
      {
        v10 = v9 >> 3;
      }

      PERAppendData(result, v10);
    }

    v11 = *a3;
    if (*a3)
    {
      v12 = gnssOsa_Calloc("posp_alloc", 18, 1, *(a3 + 8) + a2);
      *a3 = v12;
      memcpy_s("posp_memcpy", 29, v12, *(a3 + 8), v11, *(a3 + 8));
      free(v11);
      result = *a3;
      v13 = *(a3 + 8);
      v14 = (*a3 + v13);
      v15 = v13 + a2;
    }

    else
    {
      result = gnssOsa_Calloc("posp_alloc", 18, 1, a2);
      *a3 = result;
      v15 = a2;
      v14 = result;
    }

    *(a3 + 8) = v15;
    *(v5 + 1112) = result;
    if (a2 >= 8)
    {
      v16 = a2 >> 3;
      v17 = *(v5 + 1105);
      if (v17 == 7)
      {
        do
        {
          for (i = 0; i != 8; ++i)
          {
            *v14++ = (**(v5 + 1096) >> (7 - i)) & 1;
          }

          ++*(v5 + 1096);
          --v16;
        }

        while (v16);
      }

      else
      {
        v19 = 7;
        v20 = (**(v5 + 1096) << (7 - v17));
        v21 = -1;
        do
        {
          *v14++ = (v20 >> v19) & 1;
          v22 = *(v5 + 1105);
          ++v21;
          --v19;
        }

        while (v21 < v22);
        ++*(v5 + 1096);
        if (a2 >= 0x10)
        {
          do
          {
            for (j = 0; j != 8; ++j)
            {
              *v14++ = (**(v5 + 1096) >> (7 - j)) & 1;
            }

            --v16;
            ++*(v5 + 1096);
          }

          while (v16 > 1);
          LODWORD(v22) = *(v5 + 1105);
        }

        if (v22 != 7)
        {
          v24 = 0;
          v25 = 7;
          do
          {
            *v14++ = (**(v5 + 1096) >> v25) & 1;
            ++v24;
            --v25;
          }

          while (v24 < 7 - *(v5 + 1105));
        }
      }
    }

    if ((a2 & 7) != 0)
    {
      result = PERGetBits(v5, a2 & 7);
      v26 = vdupq_n_s64((a2 & 7) - 1);
      v27 = vmovn_s64(vcgeq_u64(v26, xmmword_299728F20));
      if (vuzp1_s8(vuzp1_s16(v27, *v26.i8), *v26.i8).u8[0])
      {
        *v14 = ((result << (8 - (a2 & 7))) & 0x80) != 0;
      }

      if (vuzp1_s8(vuzp1_s16(v27, *&v26), *&v26).i8[1])
      {
        v14[1] = ((result << (8 - (a2 & 7))) & 0x40) != 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, xmmword_299729020))), *&v26).i8[2])
      {
        v14[2] = ((result << (8 - (a2 & 7))) & 0x20) != 0;
        v14[3] = ((result << (8 - (a2 & 7))) & 0x10) != 0;
      }

      v28 = vmovn_s64(vcgeq_u64(v26, xmmword_299729170));
      if (vuzp1_s8(*&v26, vuzp1_s16(v28, *&v26)).i32[1])
      {
        v14[4] = ((result << (8 - (a2 & 7))) & 8) != 0;
      }

      if (vuzp1_s8(*&v26, vuzp1_s16(v28, *&v26)).i8[5])
      {
        v14[5] = ((result << (8 - (a2 & 7))) & 4) != 0;
      }

      v29 = vmovn_s64(vcgeq_u64(v26, xmmword_299729180));
      if (vuzp1_s8(*&v29, vuzp1_s16(v29, v29)).i8[6])
      {
        v14[6] = ((result << (8 - (a2 & 7))) & 2) != 0;
      }

      v30 = vuzp1_s16(v29, v29);
      if (vuzp1_s8(v30, v30).i8[7])
      {
        v14[7] = 0;
      }
    }
  }

  return result;
}

unint64_t *PEREncodePrimOCTET_STRING(unint64_t *a1, size_t a2, uint64_t a3)
{
  result = PERPutSeg(a1, *a3, a2);
  v6 = *(a3 + 8) - a2;
  *a3 += a2;
  *(a3 + 8) = v6;
  return result;
}

void PERDecodePrimOCTET_STRING(uint64_t a1, size_t a2, uint64_t a3)
{
  v3 = a2;
  if (a2 - 1 > 0x1FFE)
  {
    if (a2 > 0x2000)
    {

      EPErrorHandler(a1, 28);
    }
  }

  else
  {
    if (*a3)
    {
      v6 = gnssOsa_Calloc("posp_alloc", 18, 1, *(a3 + 8) + a2);
      memcpy_s("posp_memcpy", 29, v6, *(a3 + 8) + v3, *a3, *(a3 + 8));
      if (*a3)
      {
        free(*a3);
      }

      v7 = *(a3 + 8);
      v8 = &v6[v7];
      *a3 = v6;
      *(a3 + 8) = v7 + v3;
    }

    else
    {
      v6 = gnssOsa_Calloc("posp_alloc", 18, 1, a2);
      *a3 = v6;
      *(a3 + 8) = v3;
      v8 = v6;
    }

    *(a1 + 1112) = v6;
    v9 = *(a1 + 1096);
    v10 = *(a1 + 1088) - v9;
    if (*(a1 + 1105) == 7)
    {
      if (v3 > v10)
      {
        PERAppendData(a1, v3 - v10);
        v9 = *(a1 + 1096);
      }

      memcpy_s("posp_memcpy", 29, v8, v3, v9, v3);
      *(a1 + 1096) += v3;
    }

    else
    {
      v11 = v3 >= v10;
      v12 = v3 - v10;
      if (v11)
      {
        PERAppendData(a1, v12 + 1);
      }

      do
      {
        *v8 = **(a1 + 1096) << (7 - *(a1 + 1105));
        v13 = (*(a1 + 1096) + 1);
        *(a1 + 1096) = v13;
        *v8++ |= *v13 >> (*(a1 + 1105) + 1);
        --v3;
      }

      while (v3);
    }
  }
}

_DWORD *PERDecodeOBJECT_IDENTIFIERComps(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = PERGetByte(a1);
  if ((v6 & 0x80) != 0)
  {
    EPErrorHandler(a1, 28);
  }

  v7 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x10uLL);
  v7[2] = v6 / 0x28u;
  *v7 = 0;
  if (*a3)
  {
    **(a3 + 8) = v7;
    ++*(a3 + 16);
  }

  else
  {
    *a3 = v7;
    *(a3 + 16) = 1;
  }

  v8 = a2 - 1;
  *(a3 + 8) = v7;
  *(a3 + 20) = 8;
  result = gnssOsa_Calloc("posp_alloc", 18, 1, 0x10uLL);
  result[2] = v6 % 0x28u;
  *result = 0;
  if (*a3)
  {
    **(a3 + 8) = result;
    ++*(a3 + 16);
  }

  else
  {
    *a3 = result;
    *(a3 + 16) = 1;
  }

  *(a3 + 8) = result;
  *(a3 + 20) = 8;
  if (a2 != 1)
  {
    do
    {
      v10 = PERGetByte(a1);
      v11 = v10 & 0x7F;
      if (v10 < 0)
      {
        v13 = 1;
        do
        {
          v14 = PERGetByte(a1);
          v11 = v14 & 0x7F | (v11 << 7);
          v12 = v13 + 1;
          if ((v14 & 0x80) == 0)
          {
            break;
          }
        }

        while (v13++ < 5);
      }

      else
      {
        v12 = 1;
      }

      result = gnssOsa_Calloc("posp_alloc", 18, 1, 0x10uLL);
      result[2] = v11;
      *result = 0;
      if (*a3)
      {
        **(a3 + 8) = result;
        v16 = *(a3 + 16) + 1;
      }

      else
      {
        *a3 = result;
        v16 = 1;
      }

      *(a3 + 16) = v16;
      *(a3 + 8) = result;
      *(a3 + 20) = 8;
      v8 -= v12;
    }

    while (v8);
  }

  return result;
}

uint64_t PEREncodePrimCHARACTER_STRING(uint64_t result, uint64_t a2, char **a3)
{
  v4 = a2;
  v5 = result;
  if (*(a3 + 25) == 1)
  {
    if (a2)
    {
      v6 = *a3;
      do
      {
        v7 = a3[4];
        v8 = *v6;
        if (*v7 == v8)
        {
          v9 = 0;
        }

        else
        {
          v10 = 0;
          v11 = v7 + 1;
          while (a3[5] != v10)
          {
            v9 = v10 + 1;
            v12 = (v10++)[v11];
            if (v12 == v8)
            {
              goto LABEL_11;
            }
          }

          v9 = a3[5];
        }

LABEL_11:
        result = PERPutBits(v5, v9, *(a3 + 24));
        v6 = *a3 + 1;
        *a3 = v6;
        --v4;
      }

      while (v4);
    }
  }

  else if (a2)
  {
    v13 = *a3;
    do
    {
      result = PERPutBits(v5, *v13, *(a3 + 24));
      v13 = *a3 + 1;
      *a3 = v13;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t PERDecodePrimCHARACTER_STRING(unint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    if (*a3)
    {
      v6 = (*a3 - 1);
      v7 = gnssOsa_Calloc("posp_alloc", 18, 1, a2 + a3[1] + 2);
      *a3 = v7;
      memcpy_s("posp_memcpy", 29, v7, *(a3 + 2) + v4 + 2, v6, *(a3 + 2));
      free(v6);
      v8 = *a3;
      v9 = a3[1];
      v10 = *a3 + 1;
      v11 = (v10 + v9);
      *a3 = v10;
      a3[1] = v9 + v4;
    }

    else
    {
      v12 = gnssOsa_Calloc("posp_alloc", 18, 1, a2 + 2);
      *a3 = v12;
      *v12 = 86;
      v8 = *a3;
      v11 = (*a3 + 1);
      *a3 = v11;
      a3[1] = v4;
    }

    *(v5 + 1112) = v8;
    do
    {
      result = PERGetBits(v5, *(a3 + 24));
      *v11++ = result;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t PEREncodeNormallySmallNonNegativeWholeNumber(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v6 = *MEMORY[0x29EDCA608];
  if (a2 > 0x3E)
  {
    PERPutBit(a1, 1);
    v5 = v2;
    return PEREncodeSemiConstrainedWholeNumberFunc(a1, &v5);
  }

  else
  {

    return PERPutBits(a1, a2, 7u);
  }
}

unint64_t PERDecodeNormallySmallNonNegativeWholeNumber(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (PERGetBit(a1))
  {
    v6 = 0;
    result = PERDecodeSemiConstrainedWholeNumberFunc(a1, &v6);
    v5 = v6;
  }

  else
  {
    result = PERGetBits(a1, 6u);
    v5 = result;
  }

  *a2 = v5;
  return result;
}

uint64_t PERSkipPrimBitField(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  *a2 = *(a1 + 1096) - *(a1 + 1088);
  *(a2 + 8) = *(a1 + 1105);
  *(a2 + 16) = a3 + 1;
  PERSkipBytes(a1, a3 >> 3);

  return PERPutBits(a1, 0, v3 & 7);
}

uint64_t PERSkipConsBitField(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v6 = *(a1 + 1105);
    if (v6 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v6;
      *(a1 + 1105) = 7;
    }
  }

  *(a2 + 16) = 0;
  if (a3 >= 0x10000)
  {
    do
    {
      PERPutByte(a1, 0xC4u);
      if (!*(a2 + 16))
      {
        *a2 = *(a1 + 1096) - *(a1 + 1088);
        *(a2 + 8) = *(a1 + 1105);
        *(a2 + 16) = 0x10000;
      }

      PERSkipBytes(a1, 0x2000uLL);
      v3 -= 0x10000;
    }

    while (v3 >> 16);
  }

  v7 = v3 - 49152;
  if (v3 > 0xC000)
  {
    PERPutByte(a1, 0xC3u);
    if (!*(a2 + 16))
    {
      *a2 = *(a1 + 1096) - *(a1 + 1088);
      *(a2 + 8) = *(a1 + 1105);
      *(a2 + 16) = 49152;
    }

    v8 = a1;
    v9 = 6144;
LABEL_20:
    PERSkipBytes(v8, v9);
    v3 = v7;
    goto LABEL_21;
  }

  if (v3 >= 0x8000)
  {
    PERPutByte(a1, 0xC2u);
    if (!*(a2 + 16))
    {
      *a2 = *(a1 + 1096) - *(a1 + 1088);
      *(a2 + 8) = *(a1 + 1105);
      *(a2 + 16) = 0x8000;
    }

    PERSkipBytes(a1, 0x1000uLL);
    v3 -= 0x8000;
  }

  v7 = v3 - 0x4000;
  if (v3 >= 0x4000)
  {
    PERPutByte(a1, 0xC1u);
    if (!*(a2 + 16))
    {
      *a2 = *(a1 + 1096) - *(a1 + 1088);
      *(a2 + 8) = *(a1 + 1105);
      *(a2 + 16) = 0x4000;
    }

    v8 = a1;
    v9 = 2048;
    goto LABEL_20;
  }

LABEL_21:
  if (v3 > 0x7F)
  {
    PERPutBits(a1, v3 | 0x8000, 0x10u);
  }

  else
  {
    PERPutByte(a1, v3);
  }

  if (!*(a2 + 16))
  {
    *a2 = *(a1 + 1096) - *(a1 + 1088);
    *(a2 + 8) = *(a1 + 1105);
    *(a2 + 16) = v3;
  }

  PERSkipBytes(a1, v3 >> 3);

  return PERPutBits(a1, 0, v3 & 7);
}

void PEREncodeStructRootWithOptDef(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3[7];
  if (v8)
  {
    v9 = a3[3];
    while (1)
    {
      v10 = *(v9 + 16);
      if (v10 > 1)
      {
        break;
      }

      if (!*(v9 + 16))
      {
        goto LABEL_11;
      }

      if (v10 == 1)
      {
        PERSetBitToBitField(a1, a2, 1);
LABEL_11:
        v11 = *(*(a3[1] + 24) + 24 * *(v9 + 24) + 8);
        v12 = *(a1 + 712);
        if (v12 >= 0x40)
        {
LABEL_12:
          CUCFErrorHandler(a1, 15);
          v12 = *(a1 + 712);
        }

LABEL_13:
        *(a1 + 200 + 8 * v12) = v9;
        *(a1 + 712) = v12 + 1;
        PEREncVal(a1, *v9, (a4 + v11));
        --*(a1 + 712);
      }

LABEL_21:
      v9 += 32;
      if (!--v8)
      {
        goto LABEL_22;
      }
    }

    switch(v10)
    {
      case 2u:
        v13 = *(a3[1] + 24) + 24 * *(v9 + 24);
        if (*(a4 + **(v13 + 16)) != 1)
        {
          goto LABEL_20;
        }

        v11 = *(v13 + 8);
        PERSetBitToBitField(a1, a2, 1);
        v12 = *(a1 + 712);
        if (v12 >= 0x40)
        {
          goto LABEL_12;
        }

        break;
      case 3u:
        v14 = *(a3[1] + 24) + 24 * *(v9 + 24);
        if (*(a4 + **(v14 + 16)) != 1)
        {
          goto LABEL_20;
        }

        v11 = *(v14 + 8);
        PERSetBitToBitField(a1, a2, 1);
        v12 = *(a1 + 712);
        if (v12 >= 0x40)
        {
          goto LABEL_12;
        }

        break;
      case 5u:
LABEL_20:
        PERSetBitToBitField(a1, a2, 0);
        goto LABEL_21;
      default:
        goto LABEL_21;
    }

    goto LABEL_13;
  }

LABEL_22:
  v15 = a3[9];
  if (v15)
  {
    for (i = a3[5]; ; i += 32)
    {
      v17 = *(i + 16);
      if (v17 > 1)
      {
        break;
      }

      if (!*(i + 16))
      {
        goto LABEL_32;
      }

      if (v17 == 1)
      {
        PERSetBitToBitField(a1, a2, 1);
LABEL_32:
        v18 = *(*(a3[1] + 24) + 24 * *(i + 24) + 8);
        v19 = *(a1 + 712);
        if (v19 >= 0x40)
        {
LABEL_33:
          CUCFErrorHandler(a1, 15);
          v19 = *(a1 + 712);
        }

LABEL_34:
        *(a1 + 200 + 8 * v19) = i;
        *(a1 + 712) = v19 + 1;
        PEREncVal(a1, *i, (a4 + v18));
        --*(a1 + 712);
      }

LABEL_42:
      if (!--v15)
      {
        return;
      }
    }

    switch(v17)
    {
      case 2u:
        v20 = *(a3[1] + 24) + 24 * *(i + 24);
        if (*(a4 + **(v20 + 16)) != 1)
        {
          goto LABEL_41;
        }

        v18 = *(v20 + 8);
        PERSetBitToBitField(a1, a2, 1);
        v19 = *(a1 + 712);
        if (v19 >= 0x40)
        {
          goto LABEL_33;
        }

        break;
      case 3u:
        v21 = *(a3[1] + 24) + 24 * *(i + 24);
        if (*(a4 + **(v21 + 16)) != 1)
        {
          goto LABEL_41;
        }

        v18 = *(v21 + 8);
        PERSetBitToBitField(a1, a2, 1);
        v19 = *(a1 + 712);
        if (v19 >= 0x40)
        {
          goto LABEL_33;
        }

        break;
      case 5u:
LABEL_41:
        PERSetBitToBitField(a1, a2, 0);
        goto LABEL_42;
      default:
        goto LABEL_42;
    }

    goto LABEL_34;
  }
}

void PEREncodeStructRoot(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[7];
  if (v6)
  {
    v7 = a2[3];
    v8 = *(a1 + 712);
    do
    {
      v9 = *(*(a2[1] + 24) + 24 * *(v7 + 24) + 8);
      if (v8 >= 0x40)
      {
        CUCFErrorHandler(a1, 15);
        v8 = *(a1 + 712);
      }

      *(a1 + 200 + 8 * v8) = v7;
      *(a1 + 712) = v8 + 1;
      v10 = *v7;
      v7 += 32;
      PEREncVal(a1, v10, (a3 + v9));
      v8 = *(a1 + 712) - 1;
      *(a1 + 712) = v8;
      --v6;
    }

    while (v6);
  }

  v11 = a2[9];
  if (v11)
  {
    v12 = a2[5];
    v13 = *(a1 + 712);
    do
    {
      v14 = *(*(a2[1] + 24) + 24 * *(v12 + 24) + 8);
      if (v13 >= 0x40)
      {
        CUCFErrorHandler(a1, 15);
        v13 = *(a1 + 712);
      }

      *(a1 + 200 + 8 * v13) = v12;
      *(a1 + 712) = v13 + 1;
      v15 = *v12;
      v12 += 32;
      PEREncVal(a1, v15, (a3 + v14));
      v13 = *(a1 + 712) - 1;
      *(a1 + 712) = v13;
      --v11;
    }

    while (v11);
  }
}

void PERSetBitToBitField(uint64_t result, uint64_t a2, char a3)
{
  *(*(result + 1088) + *a2) |= a3 << *(a2 + 8);
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = (a2 + 16);
    v5 = *(a2 + 16);
    *(a2 + 8) = v3 - 1;
    *(a2 + 16) = --v5;
    if (v5)
    {
      return;
    }

    v6 = (v3 - 1);
    v7 = *a2;
    if ((v3 - 1) != 7)
    {
      v8 = 0;
      v9 = *(result + 1088);
      v10 = *(v9 + v7) << (8 - v3);
      v11 = v7 + 1;
      *a2 = v11;
      v12 = (*(v9 + v11) >> v3) | v10;
      goto LABEL_7;
    }
  }

  else
  {
    v7 = *a2 + 1;
    *a2 = v7;
    *(a2 + 8) = 7;
    v4 = (a2 + 16);
    v13 = *(a2 + 16) - 1;
    *(a2 + 16) = v13;
    if (v13)
    {
      return;
    }
  }

  v9 = *(result + 1088);
  LOBYTE(v12) = *(v9 + v7);
  v11 = v7 + 1;
  *a2 = v11;
  LOBYTE(v6) = 7;
  v8 = 1;
LABEL_7:
  if (v12 > 0xC2u)
  {
    if (v12 == 195)
    {
      v14 = 49152;
      goto LABEL_23;
    }

    if (v12 == 196)
    {
      v14 = 0x10000;
      goto LABEL_23;
    }
  }

  else
  {
    if (v12 == 193)
    {
      v14 = 0x4000;
      goto LABEL_23;
    }

    if (v12 == 194)
    {
      v14 = 0x8000;
LABEL_23:
      *v4 = v14;
      return;
    }
  }

  if ((v12 & 0xC0) == 0x80)
  {
    v15 = (v12 & 0x3F) << 8;
    *v4 = v15;
    v16 = *(v9 + v11);
    if (v8)
    {
      *a2 = v11 + 1;
    }

    else
    {
      v17 = v11 + 1;
      *a2 = v17;
      v16 = (*(v9 + v17) >> (v6 + 1)) | (v16 << (7 - v6));
    }

    v14 = v16 | v15;
    goto LABEL_23;
  }

  if ((v12 & 0x80) != 0)
  {

    EPErrorHandler(result, 26);
  }

  else
  {
    *v4 = v12;
  }
}

void *PEREncodeOPENTypeField(uint64_t a1, unsigned __int8 *a2, unsigned int *a3)
{
  v6 = *(a1 + 1105);
  v7 = v6;
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v7 = 7;
    if (v6 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v6;
      *(a1 + 1105) = 7;
    }
  }

  v8 = *(a1 + 1096) - *(a1 + 1088);
  PERSkipBytes(a1, 1uLL);
  PEREncVal(a1, a2, a3);
  v9 = *(a1 + 1096);
  v10 = v9 - *(a1 + 1088);
  v11 = *(a1 + 1105);
  v12 = v11 >= v7;
  v13 = v11 - v7;
  if (v12)
  {
    v15 = v10 + ~v8;
    if (!v15)
    {
      goto LABEL_12;
    }

    result = PERPutBits(a1, 0, v13);
  }

  else
  {
    result = PERPutBits(a1, 0, (v13 + 8));
    v15 = v10 - v8;
    if (!v15)
    {
      v9 = *(a1 + 1096);
LABEL_12:
      *(a1 + 1096) = v9 - 1;

      return PERPutBits(a1, 0x100uLL, 0x10u);
    }
  }

  if (v15 > 0x7F)
  {
    if (*(a1 + 1105) == 7)
    {

      return PEROctetsFragmentation(a1, v15);
    }

    else
    {

      return PEROctetsFragmentationWithOffset(a1, v15);
    }
  }

  else
  {
    v16 = (*(a1 + 1088) + v8);
    v17 = *(a1 + 1105);
    if (v17 == 7)
    {
      *v16 = v15;
    }

    else
    {
      *v16 |= v15 >> (7 - v17);
      v16[1] |= v15 << (*(a1 + 1105) + 1);
    }
  }

  return result;
}

void PERGetConsBitField(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v4 = *(a1 + 1105);
    if (v4 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v4;
      *(a1 + 1105) = 7;
    }
  }

  v5 = 0;
  *(a2 + 16) = 0;
  do
  {
    v6 = PERGetByte(a1);
    if ((v6 + 63) >= 4u)
    {
      v7 = v6;
      if ((v6 & 0xC0) == 0x80)
      {
        v8 = PERGetByte(a1);
        v5 = v8 & 0xFFFFC0FF | ((v7 & 0x3F) << 8);
        if (!*(a2 + 16))
        {
          *a2 = *(a1 + 1096);
          *(a2 + 8) = *(a1 + 1105);
          *(a2 + 16) = v5;
        }

        PERGetBits(a1, v8 & 7);
      }

      else if ((v6 & 0x80) != 0)
      {
        EPErrorHandler(a1, 26);
      }

      else
      {
        if (!*(a2 + 16))
        {
          *a2 = *(a1 + 1096);
          *(a2 + 8) = *(a1 + 1105);
          *(a2 + 16) = v6;
        }

        PERGetBits(a1, v6 & 7);
        v5 = v7 >> 3;
      }
    }

    else
    {
      v5 = ((v6 + 63) << 11) + 2048;
    }

    if (!*(a2 + 16))
    {
      *a2 = *(a1 + 1096);
      *(a2 + 8) = *(a1 + 1105);
      *(a2 + 9) = 1;
      *(a2 + 16) = 8 * v5;
    }

    PERGetSkipBytes(a1, v5);
  }

  while (v5 > 0x7FF);
}

uint64_t PERInitAbsentStructExtAdd(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = result;
  v8 = (a2[4] - 32 * a3 + 32 * a2[8] + 24);
  do
  {
    v9 = *(v8 - 8);
    if (v9 < 3)
    {
      *(a4 + **(*(a2[1] + 24) + 24 * *v8 + 16)) = 0;
    }

    else if (v9 - 4 >= 2)
    {
      if (v9 == 3)
      {
        v10 = a2[1];
        *(a4 + **(*(v10 + 24) + 24 * *v8 + 16)) = 0;
        v11 = *(v10 + 24) + 24 * *v8;
        result = GenericAssignSort((a4 + *(v11 + 8)), *(*(v11 + 16) + 8), 10, *v11);
      }

      else
      {
        result = CUCFErrorHandler(v7, 15);
      }
    }

    v8 += 4;
    --v5;
  }

  while (v5);
  return result;
}

unsigned __int8 **PERSetBitFieldLength(unsigned __int8 **result)
{
  v1 = *(result + 8);
  if (v1 == 7)
  {
    v2 = *result + 1;
    LOBYTE(v3) = **result;
    *result = v2;
  }

  else
  {
    v4 = **result << (7 - v1);
    v2 = *result + 1;
    *result = v2;
    v3 = (*v2 >> (v1 + 1)) | v4;
  }

  if (v3 > 0xC2u)
  {
    if (v3 == 195)
    {
      v5 = 49152;
      goto LABEL_16;
    }

    if (v3 == 196)
    {
      v5 = 0x10000;
      goto LABEL_16;
    }
  }

  else
  {
    if (v3 == 193)
    {
      v5 = 0x4000;
      goto LABEL_16;
    }

    if (v3 == 194)
    {
      v5 = 0x8000;
LABEL_16:
      result[2] = v5;
      return result;
    }
  }

  if ((v3 & 0xC0) == 0x80)
  {
    v6 = (v3 & 0x3F) << 8;
    result[2] = v6;
    if (v1 == 7)
    {
      LOBYTE(v7) = *v2;
      *result = v2 + 1;
    }

    else
    {
      v9 = *v2 << (7 - v1);
      *result = v2 + 1;
      v7 = (v2[1] >> (v1 + 1)) | v9;
    }

    v8 = (v7 | v6);
  }

  else
  {
    v8 = (v3 & 0x7F);
  }

  result[2] = v8;
  *(result + 9) = 0;
  return result;
}

void PERDecodeOPENTypeField(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v8 = *(a1 + 1105);
    if (v8 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v8;
      *(a1 + 1105) = 7;
    }
  }

  v9 = PERGetByte(a1);
  if (v9 >= 0xC1)
  {
    --*(a1 + 1096);
    v10 = *(a1 + 1105);
    if (v10 == 7)
    {
      v11 = PEROctetsDefragmentation(a1);
      PERDecVal(a1, a2, a3, a4);
      if (*(a1 + 1105) <= 6u)
      {
        ++*(a1 + 1096);
        *(a1 + 1105) = 7;
      }

      PEROctetsFragmentation(a1, v11);
    }

    else
    {
      v13 = PEROctetsDefragmentationWithOffset(a1);
      PERDecVal(a1, a2, a3, a4);
      if (*(a1 + 1105) < v10)
      {
        ++*(a1 + 1096);
      }

      *(a1 + 1105) = v10;

      PEROctetsFragmentationWithOffset(a1, v13);
    }

    return;
  }

  if ((v9 & 0xC0) == 0x80)
  {
    v12 = *(a1 + 1096) + (PERGetByte(a1) & 0xFFFFC0FF | ((v9 & 0x3F) << 8));
LABEL_20:
    v14 = *(a1 + 1105);
    PERDecVal(a1, a2, a3, a4);
    *(a1 + 1096) = v12;
    *(a1 + 1105) = v14;
    return;
  }

  if ((v9 & 0x80) == 0)
  {
    v12 = *(a1 + 1096) + v9;
    goto LABEL_20;
  }

  EPErrorHandler(a1, 26);
}

void PERSkipOPENTypeField(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    if ((*(a1 + 1056) & 0x40) != 0)
    {
      v3 = *(a1 + 1105);
      if (v3 != 7)
      {
        *(*(a1 + 1096))++ &= 510 << v3;
        *(a1 + 1105) = 7;
      }
    }

    v4 = PERGetByte(a1);
    if ((v4 + 63) >= 4u)
    {
      break;
    }

    v2 = ((v4 + 63) << 14) + 0x4000;
LABEL_10:
    PERGetSkipBytes(a1, v2);
    if (!(v2 >> 14))
    {
      return;
    }
  }

  if ((v4 & 0xC0) == 0x80)
  {
    v5 = PERGetByte(a1) & 0xFFFFC0FF | ((v4 & 0x3F) << 8);
    goto LABEL_14;
  }

  if (v4 < 0)
  {
    EPErrorHandler(a1, 26);
    goto LABEL_10;
  }

  v5 = v4;
LABEL_14:

  PERGetSkipBytes(a1, v5);
}

void PEREncodePrimSEQUENCE_OF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  for (i = v5 + a2; v5 < i; *(a3 + 24) = v5)
  {
    v8 = *(a3 + 32);
    v9 = *(v8 + 8);
    if (*v9 == 181)
    {
      v11 = **a3;
      if (v11)
      {
        v12 = v5 + 1;
        while (--v12)
        {
          v11 = *v11;
          if (!v11)
          {
            goto LABEL_9;
          }
        }

        v10 = (v11 + *(v9 + 36));
      }

      else
      {
LABEL_9:
        v10 = 0;
      }
    }

    else if (*v9 == 182)
    {
      v10 = (*a3 + *(v9 + 36) + v5 * *(*(v9 + 24) + 8));
    }

    else
    {
      CUCFErrorHandler(a1, 15);
      v10 = 0;
      v8 = *(a3 + 32);
    }

    PEREncVal(a1, *(v8 + 24), v10);
    v5 = *(a3 + 24) + 1;
  }

  *(a3 + 8) -= a2;
}

void PERDecodePrimSEQUENCE_OF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 24);
  v6 = v5 + a2;
  v7 = *(a3 + 40);
  if (v7)
  {
    v27 = 0;
    v26 = *v7;
    if (v5 < v6)
    {
      do
      {
        v8 = *(*(a3 + 32) + 8);
        if (*v8 == 181)
        {
          v11 = gnssOsa_Calloc("posp_alloc", 18, 1, *(v8 + 32));
          *v11 = 0;
          v12 = *(*(v8 + 24) + 8);
          memset_s(v11 + *(v8 + 36), v12, 0, v12);
          v13 = *a3;
          if (**a3)
          {
            *v13[1] = v11;
            ++*(v13 + 4);
          }

          else
          {
            *v13 = v11;
            *(v13 + 4) = 1;
          }

          v13[1] = v11;
          v10 = v11 + *(v8 + 36);
          *(v13 + 20) = 8;
        }

        else if (*v8 == 182)
        {
          v9 = *a3;
          *v9 = **a3 + 1;
          v10 = v9 + *(v8 + 36) + v5 * *(*(v8 + 24) + 8);
        }

        else
        {
          CUCFErrorHandler(a1, 15);
          v10 = 0;
        }

        PERDecVal(a1, *(*(a3 + 32) + 24), v10, &v26);
        while (1)
        {
          v14 = v26;
          v15 = *(a3 + 40);
          if (v26 == *v15)
          {
            break;
          }

          v26 = *(v26 + 2);
          MMSFree(a1, v14, 0x18);
        }

        v5 = *(a3 + 24) + 1;
        *(a3 + 24) = v5;
      }

      while (v5 < v6);
      if (v27)
      {
        v18 = *(v15 + 8);
        v16 = (v15 + 8);
        v17 = v18;
        if (v18)
        {
          do
          {
            v19 = v17;
            v17 = *(v17 + 32);
          }

          while (v17);
          v16 = (v19 + 32);
        }

        *v16 = v27;
      }
    }
  }

  else
  {
    for (; v5 < v6; *(a3 + 24) = v5)
    {
      v20 = *(*(a3 + 32) + 8);
      if (*v20 == 181)
      {
        v23 = gnssOsa_Calloc("posp_alloc", 18, 1, *(v20 + 32));
        *v23 = 0;
        v24 = *(*(v20 + 24) + 8);
        memset_s(v23 + *(v20 + 36), v24, 0, v24);
        v25 = *a3;
        if (**a3)
        {
          *v25[1] = v23;
          ++*(v25 + 4);
        }

        else
        {
          *v25 = v23;
          *(v25 + 4) = 1;
        }

        v25[1] = v23;
        v22 = v23 + *(v20 + 36);
        *(v25 + 20) = 8;
      }

      else if (*v20 == 182)
      {
        v21 = *a3;
        *v21 = **a3 + 1;
        v22 = v21 + *(v20 + 36) + v5 * *(*(v20 + 24) + 8);
      }

      else
      {
        CUCFErrorHandler(a1, 15);
        v22 = 0;
      }

      PERDecVal(a1, *(*(a3 + 32) + 24), v22, 0);
      v5 = *(a3 + 24) + 1;
    }
  }
}

void PEREncodePrimSET_OF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  for (i = v5 + a2; v5 < i; *(a3 + 24) = v5)
  {
    v8 = *(a3 + 32);
    v9 = **a3;
    if (v9)
    {
      v10 = 0;
      while (1)
      {
        v11 = v9[1];
        if (v11 >= 1)
        {
          break;
        }

LABEL_9:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_10;
        }
      }

      v12 = v11 + v10;
      v13 = v5 - v10;
      while (v13)
      {
        --v13;
        if (!--v11)
        {
          v10 = v12;
          goto LABEL_9;
        }
      }

      v14 = (v9 + *(*(v8 + 8) + 36));
    }

    else
    {
LABEL_10:
      v14 = 0;
    }

    PEREncVal(a1, *(v8 + 24), v14);
    v5 = *(a3 + 24) + 1;
  }

  *(a3 + 8) -= a2;
}

void PERDecodePrimSET_OF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 24);
  v6 = v5 + a2;
  v7 = *(a3 + 40);
  if (v7)
  {
    v25 = 0;
    v24 = *v7;
    if (v5 < v6)
    {
      do
      {
        v8 = *(*(a3 + 32) + 8);
        v9 = gnssOsa_Calloc("posp_alloc", 18, 1, *(*(v8 + 24) + 8) + 20);
        *v9 = 0;
        v9[1] = 1;
        v10 = *(*(v8 + 24) + 8);
        memset_s(v9 + *(v8 + 36), v10, 0, v10);
        v11 = *a3;
        if (**a3)
        {
          *v11[1] = v9;
          ++*(v11 + 4);
        }

        else
        {
          *v11 = v9;
          *(v11 + 4) = 1;
        }

        v11[1] = v9;
        PERDecVal(a1, *(*(a3 + 32) + 24), v9 + *(v8 + 36), &v24);
        while (1)
        {
          v12 = v24;
          v13 = *(a3 + 40);
          if (v24 == *v13)
          {
            break;
          }

          v24 = *(v24 + 2);
          MMSFree(a1, v12, 0x18);
        }

        v14 = *(a3 + 24) + 1;
        *(a3 + 24) = v14;
      }

      while (v14 < v6);
      if (v25)
      {
        v17 = *(v13 + 8);
        v15 = (v13 + 8);
        v16 = v17;
        if (v17)
        {
          do
          {
            v18 = v16;
            v16 = *(v16 + 32);
          }

          while (v16);
          v15 = (v18 + 32);
        }

        *v15 = v25;
      }
    }
  }

  else if (v5 < v6)
  {
    do
    {
      v19 = *(*(a3 + 32) + 8);
      v20 = gnssOsa_Calloc("posp_alloc", 18, 1, *(*(v19 + 24) + 8) + 20);
      *v20 = 0;
      v20[1] = 1;
      v21 = *(*(v19 + 24) + 8);
      memset_s(v20 + *(v19 + 36), v21, 0, v21);
      v22 = *a3;
      if (**a3)
      {
        *v22[1] = v20;
        ++*(v22 + 4);
      }

      else
      {
        *v22 = v20;
        *(v22 + 4) = 1;
      }

      v22[1] = v20;
      PERDecVal(a1, *(*(a3 + 32) + 24), v20 + *(v19 + 36), 0);
      v23 = *(a3 + 24) + 1;
      *(a3 + 24) = v23;
    }

    while (v23 < v6);
  }
}

void Gnm14_03SendPosEstimateReq(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("Gnm14_03SendPosEstimateReq", 64, 1, 0xCuLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NO_COST_POS_REQ =>GNCS\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm14_03SendPosEstimateReq");
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(128, 130, 8521216, v1);
  }
}

uint64_t Gnm14_11HandleStartPosResp(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_START_POS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm14_11HandleStartPosResp");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm14_11HandleStartPosResp", 517);
    v13 = 0;
LABEL_16:
    LbsOsaTrace_WriteLog(0xBu, __str, v12, v13, 1);
    return 0;
  }

  v4 = *(a1 + 14);
  v5 = *(a1 + 12);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessId,%u,RespCode,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm14_11HandleStartPosResp", v5, *(a1 + 14));
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v5);
  if (!InstnFromInstnId)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn SessId,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "Gnm14_11HandleStartPosResp", 2052, v5);
    v13 = 2;
    goto LABEL_16;
  }

  v9 = InstnFromInstnId;
  if (!*(InstnFromInstnId + 1))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnInfo SessId,%u\n", v17);
LABEL_23:
      LbsOsaTrace_WriteLog(0xBu, __str, v15, 2, 1);
    }

LABEL_24:
    Gnm02_21DeleteInstn(v9);
    return 0;
  }

  v10 = *(InstnFromInstnId + 2);
  if (v10 == 1)
  {
    Gnm11_07StartPosResp(InstnFromInstnId, v4 == 255);
    return 0;
  }

  if (v10 == 3)
  {
    Gnm51_05StartPosResp(InstnFromInstnId, v4 == 255);
    return 0;
  }

  if (v10 != 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", v18);
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  Gnm13_15StartPosResp(InstnFromInstnId, v4 == 255);
  return 0;
}

uint64_t Gnm14_12HandleStopPosResp(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_STOP_POS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm14_12HandleStopPosResp");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm14_12HandleStopPosResp", 517);
    v13 = 0;
LABEL_16:
    LbsOsaTrace_WriteLog(0xBu, __str, v12, v13, 1);
    return 0;
  }

  v4 = *(a1 + 14);
  v5 = *(a1 + 12);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessId,%u,RespCode,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm14_12HandleStopPosResp", v5, *(a1 + 14));
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v5);
  if (!InstnFromInstnId)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn SessId,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "Gnm14_12HandleStopPosResp", 2052, v5);
    v13 = 2;
    goto LABEL_16;
  }

  v9 = InstnFromInstnId;
  if (*(InstnFromInstnId + 1))
  {
    v10 = *(InstnFromInstnId + 2);
    switch(v10)
    {
      case 1:
        Gnm11_08StopPosResp(InstnFromInstnId, v4 == 255);
        break;
      case 3:
        Gnm51_06StopPosResp(InstnFromInstnId, v4 == 255);
        break;
      case 2:
        Gnm13_16StopPosResp(InstnFromInstnId, v4 == 255);
        break;
      default:
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 87, "Gnm14_12HandleStopPosResp", 770, *(v9 + 2));
          LbsOsaTrace_WriteLog(0xBu, __str, v18, 2, 1);
        }

        Gnm02_21DeleteInstn(v9);
        break;
    }

    gnssOsa_flushNv();
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnInfo SessId,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 87, "Gnm14_12HandleStopPosResp", 2052, v5);
      LbsOsaTrace_WriteLog(0xBu, __str, v16, 2, 1);
    }

    Gnm02_21DeleteInstn(v9);
  }

  return 0;
}

uint64_t Gnm14_13HandleClearGNSSRsp(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CLEAR_GNSS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm14_13HandleClearGNSSRsp");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 12);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v6 = 78;
      if (v4)
      {
        v6 = 89;
      }

      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%c,Mask0x%X\n", v5, "GNM", 73, "Gnm14_13HandleClearGNSSRsp", v6, *(a1 + 16));
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
    }

    if (v4 && ((Gnm13_17SendClearCacheInd(*(a1 + 16)), (*(a1 + 17) & 0x401) == 0) || (Gnm53_26ClearVarMENv() & 1) != 0))
    {
      if (byte_2A1938EB9 == 1)
      {
        byte_2A1938EB9 = 0;
        v8 = 0;
LABEL_15:
        Gnm11_00ApiStatusCB(v8, 0, 0, 16);
      }
    }

    else if (byte_2A1938EB9 == 1)
    {
      byte_2A1938EB9 = 0;
      v8 = 11;
      goto LABEL_15;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm14_13HandleClearGNSSRsp", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v10, 0, 1);
  }

  return 0;
}

uint64_t gnssdbg_GetLogSeverityCP(int a1, int a2)
{
  if (a2 != 1)
  {
    return 2;
  }

  result = 0;
  if (a1 > 1791)
  {
    if (a1 > 1900)
    {
      if ((a1 - 1901) <= 0x16 && ((1 << (a1 - 109)) & 0x620001) != 0 || a1 == 2048 || a1 == 2057)
      {
        return result;
      }
    }

    else if ((a1 - 1792) < 0x54)
    {
      return result;
    }

    return 2;
  }

  if (a1 <= 1051)
  {
    if ((a1 - 768) <= 0x31)
    {
      if (((1 << a1) & 0x287A00404FFFFLL) != 0)
      {
        return result;
      }

      if (((1 << a1) & 0x404188000000) != 0)
      {
        return 1;
      }
    }

    v5 = (a1 - 258);
    if (v5 <= 0x27)
    {
      if (((1 << (a1 - 2)) & 0x363FA6A8F7) != 0)
      {
        return result;
      }

      if (v5 == 39)
      {
        return 1;
      }
    }

    v6 = a1 - 512;
    if (v6 <= 0xA)
    {
      v7 = 1 << v6;
      if ((v7 & 0x7C6) != 0)
      {
        return result;
      }

      if ((v7 & 0x11) != 0)
      {
        return 1;
      }
    }

    return 2;
  }

  if ((a1 - 1280) <= 0x19)
  {
    if (((1 << a1) & 0x22C01F7) != 0)
    {
      return result;
    }

    if (a1 == 1283)
    {
      return 1;
    }
  }

  v4 = a1 - 7;
  if ((a1 - 1543) > 0x34)
  {
    goto LABEL_26;
  }

  if (((1 << v4) & 0xCC0400000101) != 0)
  {
    return 1;
  }

  if (((1 << v4) & 0x18204000C00000) == 0)
  {
LABEL_26:
    v8 = a1 - 1052;
    if (v8 <= 0x1E)
    {
      if (((1 << v8) & 0x70020081) != 0)
      {
        return result;
      }

      if (v8 == 19)
      {
        return 1;
      }
    }

    return 2;
  }

  return result;
}

double Comp_AzEl(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _WORD *a5, void *a6, void *a7)
{
  v35[3] = *MEMORY[0x29EDCA608];
  v31 = 0;
  result = 0.0;
  v32 = 0u;
  v33 = 0u;
  v28 = 0;
  v29 = 0u;
  v30 = 0u;
  if (*(a3 + 120))
  {
    for (i = 0; i != 3; ++i)
    {
      *&v35[i] = *(a3 + 8 + i * 8) - *(a1 + i * 8);
    }

    v13 = 0.0;
    v14 = 2;
    do
    {
      v13 = v13 + *&v35[v14] * *&v35[v14];
      v15 = v14-- + 1;
    }

    while (v15 > 1);
    v16 = 0;
    v17 = sqrt(v13);
    do
    {
      *&v35[v16] = *&v35[v16] / v17;
      ++v16;
    }

    while (v16 != 3);
    v18 = 0;
    v19 = *v35;
    v20 = *&v35[1];
    v21 = (a2 + 16);
    v22 = *&v35[2];
    do
    {
      v23 = *(v21 - 1) * v20 + *(v21 - 2) * v19;
      v24 = *v21;
      v21 += 3;
      v34[v18++] = v23 + v24 * v22;
    }

    while (v18 != 3);
    AzEl_SinCos(v34, &v28, &v31);
    AzEl_RadDeg(&v28, &v31);
    v25 = v28;
    if ((v28 & 0x80000000) != 0)
    {
      v26 = -360 - v28;
      if (v28 > 0xFFFFFE98)
      {
        v26 = 0;
      }

      v27 = ((__PAIR64__(v26, v28) - 4294966936u) >> 32) / 0x168;
      if (v28 < 0xFFFFFE98)
      {
        LOWORD(v27) = v27 + 1;
      }

      v25 = v28 + 360 * v27 + 360;
    }

    *a4 = v31;
    *a5 = v25;
    *a6 = v33;
    result = *&v30;
    *a7 = v30;
  }

  return result;
}

int8x8_t Decode_GPS_Health_From_AS_Subfr(const unsigned int *a1, int8x8_t *a2)
{
  v2 = a1[8];
  v3 = a1[9];
  v4.i8[0] = a1[7] & 0x1F;
  v4.i8[1] = (v2 >> 18) & 0x1F;
  v4.i8[2] = (v2 >> 12) & 0x1F;
  v4.i8[3] = (v2 >> 6) & 0x1F;
  v4.i8[4] = v2 & 0x1F;
  v4.i8[5] = (v3 >> 18) & 0x1F;
  v4.i8[6] = (v3 >> 12) & 0x1F;
  v4.i8[7] = (v3 >> 6) & 0x1F;
  v5 = vmovl_u8(v4);
  v6 = vmovl_high_u16(v5);
  v7.i64[0] = v6.u32[0];
  v7.i64[1] = v6.u32[1];
  v8 = v7;
  v9 = vmovl_u16(*v5.i8);
  v7.i64[0] = v9.u32[0];
  v7.i64[1] = v9.u32[1];
  v10 = vdupq_n_s64(0xE4FE7F3uLL);
  result = vand_s8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v10, vnegq_s64(v7)), vshlq_u64(v10, vsubw_high_u32(0, v9))), vuzp1q_s32(vshlq_u64(v10, vnegq_s64(v8)), vshlq_u64(v10, vsubw_high_u32(0, v6))))), 0x101010101010101);
  *a2 = result;
  return result;
}

uint64_t Comp_AGNSS_PR_Sigma(unsigned int a1)
{
  if (a1 <= 0x1116FF)
  {
    if (a1 >> 3 < 0x271)
    {
      LOBYTE(v1) = 0;
    }

    else
    {
      v2 = 9375;
      if (a1 >= 0x249F)
      {
        v3 = 0;
        do
        {
          v2 *= 2;
          ++v3;
        }

        while (v2 <= a1);
      }

      else
      {
        v3 = 0;
      }

      return (8 * v3 - (v2 - a1) / (625 << v3) + 7);
    }
  }

  else
  {
    LOBYTE(v1) = 63;
  }

  return v1;
}

double *Comp_Track_velLOS(double a1, double a2, double *result, double *a4)
{
  if (fabs(a1) > 0.0001 || fabs(a2) > 0.0001)
  {
    v10 = 57.2957795 / (a1 * a1 + a2 * a2);
    *a4 = v10 * (result[3] * a1 - *result * a2);
    a4[1] = v10 * (result[4] * a1 - result[1] * a2);
    v9 = v10 * -(result[2] * a2);
  }

  else
  {
    __asm { FMOV            V0.2D, #1.0 }

    *a4 = _Q0;
    v9 = 1.0;
  }

  a4[2] = v9;
  return result;
}

uint64_t GN_ABDS_Set_Eph_El(unsigned __int16 *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ABDS_Set_Eph_El"))
  {
    return 0;
  }

  if (g_Enable_Event_Log >= 5u)
  {
    EvLog_ABDS_Eph_El(a1);
  }

  v2 = *a1;
  if (v2 >= 0x2000)
  {
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: Week = %d >=8191, Out of range!");
    return 0;
  }

  v3 = *(a1 + 1);
  if (v3 > 0x1274F)
  {
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: toc = %d > 75599, Out of range!");
    return 0;
  }

  v4 = *(a1 + 2);
  if (v4 > 0x1274F)
  {
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: toe = %d > 75599, Out of range!");
    return 0;
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x20)
  {
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: AODE = %d >31, Out of range!");
    return 0;
  }

  v6 = *(a1 + 13);
  if (v6 >= 0x20)
  {
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: AODC = %d >31, Out of range!");
    return 0;
  }

  if (*(a1 + 14) - 38 <= 0xFFFFFFDA)
  {
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: SVid = %d < 1 or >37, Out of range!");
    return 0;
  }

  v7 = *(a1 + 15);
  if (v7 >= 0x10)
  {
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: URA = %d >15, Out of range!");
    return 0;
  }

  v8 = a1[22];
  if (((v8 - 0x2000) >> 14) <= 2u)
  {
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: IDot = %d < -2^13 or >= 2^13, Out of range!");
    return 0;
  }

  v9 = *(a1 + 12);
  if ((v9 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: OmegaDot = %d <-2^23 or >=2^23, Out of range!");
    return 0;
  }

  v10 = *(a1 + 19);
  if ((v10 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: af0 = %d <-2^23 or >=2^23, Out of range!");
    return 0;
  }

  v11 = *(a1 + 20);
  if ((v11 - 0x200000) >> 22 != 1023)
  {
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: af1 = %d <-2^21 or >=2^21, Out of range!");
    return 0;
  }

  v12 = a1[42];
  if (((v12 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: af2 = %d <-2^10 or >=2^10, Out of range!");
    return 0;
  }

  v13 = a1[43];
  if (((v13 - 512) >> 10) <= 0x3Eu)
  {
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: TGD1 = %d <-2^9 or >=2^9, Out of range!");
    return 0;
  }

  v27 = *(a1 + 14);
  v14 = a1[44];
  if (((v14 - 512) >> 10) <= 0x3Eu)
  {
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: TGD2 = %d <-2^9 or >=2^9, Out of range!");
    return 0;
  }

  v17 = (v27 - 1);
  v18 = p_NA;
  v19 = p_NA + 9884;
  if (*(a1 + 90))
  {
    v20 = 5;
  }

  else
  {
    v20 = 3;
  }

  v21 = v19 + 100 * v17;
  *(v21 + 8) = v3;
  *(v21 + 12) = v4;
  *(v21 + 16) = v2;
  *(v21 + 18) = v5;
  *(v21 + 19) = v6;
  *(v21 + 20) = v27;
  *(v21 + 21) = v7;
  *(v21 + 22) = *(a1 + 16);
  *(v21 + 24) = *(a1 + 10);
  *(v21 + 40) = *(a1 + 18);
  *(v21 + 48) = v8;
  *(v21 + 50) = a1[23];
  *(v21 + 52) = v9;
  *(v21 + 56) = *(a1 + 26);
  *(v21 + 72) = *(a1 + 34);
  *(v21 + 80) = v10;
  *(v21 + 84) = v11;
  *(v21 + 88) = v12;
  *(v21 + 90) = v13;
  *(v21 + 92) = v14;
  *(v21 + 4) = v20;
  if (v27 <= 5)
  {
    v22 = -1;
  }

  else
  {
    v22 = 0x7FFFFFF;
  }

  *(v21 + 96) = v22;
  *(v18 + v17 + 223) = 1;
  v23 = *(p_api + 48);
  if (*(v23 + 5) == 1 && *v23 >= 3)
  {
    v24 = *(v23 + 24) + 604800 * *(v23 + 16);
  }

  else
  {
    v24 = 0;
  }

  v25 = (v19 + 100 * v17);
  *v25 = v24;
  v15 = 1;
  Debug_Log_BDS_Eph(1, v25);
  if (g_Enable_Event_Log >= 3u)
  {
    EvLog_nd("GN_ABDS_Set_Eph: ", 2, v26, v27, *(p_NA + 100 * v17 + 9884));
  }

  return v15;
}

uint64_t GN_ABDS_Set_BGTO(__int16 *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ABDS_Set_BGTO"))
  {
    return 0;
  }

  v3 = *a1;
  if (v3 != 0x7FFF && ((*a1 - 0x2000) >> 14) <= 2u)
  {
    EvCrt_v("GN_ABDS_Set_BGTO: FAILED: A0G = %d < -2^13 or >= 2^13, Out of range!");
    return 0;
  }

  LODWORD(v5) = a1[4];
  if (v5 != 0x7FFF && ((v5 - 0x2000) >> 14) <= 2u)
  {
    EvCrt_v("GN_ABDS_Set_BGTO: FAILED: A0R = %d < -2^13 or >= 2^13, Out of range!");
    return 0;
  }

  v8 = a1[2];
  if (v8 != 0x7FFF && ((v8 - 0x2000) >> 14) <= 2u)
  {
    EvCrt_v("GN_ABDS_Set_BGTO: FAILED: A0E = %d < -2^13 or >= 2^13, Out of range!");
    return 0;
  }

  v9 = *a1;
  v10 = *(p_api + 48);
  if (*(v10 + 5) == 1 && *v10 >= 3)
  {
    v11 = *(v10 + 24) + 604800 * *(v10 + 16);
  }

  else
  {
    v11 = 0;
  }

  v12 = p_NA;
  v13 = (p_NA + 0x2000);
  *(p_NA + 9864) = v11;
  if (v9 != 0x7FFF)
  {
    v14 = a1[1];
    if (v14 != 0x7FFF)
    {
      v13[840] = v3;
      v5 = 9874;
      goto LABEL_29;
    }
  }

  if (v8 != 0x7FFF)
  {
    v14 = a1[3];
    if (v14 != 0x7FFF)
    {
      v13[842] = v8;
      v5 = 9878;
      goto LABEL_29;
    }
  }

  if (v5 != 0x7FFF)
  {
    v14 = a1[5];
    if (v14 == 0x7FFF)
    {
      goto LABEL_30;
    }

    v13[844] = v5;
    v5 = 9882;
LABEL_29:
    *(v12 + v5) = v14;
    LOWORD(v8) = a1[2];
    LOWORD(v5) = a1[4];
    goto LABEL_30;
  }

  LOWORD(v5) = 0x7FFF;
LABEL_30:
  if (*(a1 + 12))
  {
    v15 = 5;
  }

  else
  {
    v15 = 3;
  }

  *(v12 + 9868) = v15;
  v6 = 1;
  *(v12 + 222) = 1;
  EvLog_nd("GN_ABDS_Set_BGTO: ", 6, v2, v3, a1[1], v8, a1[3], v5, a1[5]);
  return v6;
}